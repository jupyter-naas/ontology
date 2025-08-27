#!/bin/bash

# Sync ABI Documentation Script
# Syncs ontology documentation from resources/.abi/docs/ontology/reference/ to site/docs/
# Preserves _category_.json and index.md files while updating all other content

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script directory and project root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Source and destination paths
ABI_SOURCE="$PROJECT_ROOT/resources/.abi/docs/ontology/reference"
SITE_DOCS="$PROJECT_ROOT/site/docs"

echo -e "${BLUE}🔄 Starting ABI Documentation Sync${NC}"
echo -e "${BLUE}Project Root: $PROJECT_ROOT${NC}"
echo -e "${BLUE}Source: $ABI_SOURCE${NC}"
echo -e "${BLUE}Destination: $SITE_DOCS${NC}"
echo ""

# Check if source directory exists
if [ ! -d "$ABI_SOURCE" ]; then
    echo -e "${RED}❌ Error: Source directory not found: $ABI_SOURCE${NC}"
    echo -e "${YELLOW}💡 Make sure you have pulled the latest ABI repository to resources/.abi/${NC}"
    exit 1
fi

# Function to sanitize markdown files for MDX compatibility
sanitize_mdx_file() {
    local source_file="$1"
    local dest_file="$2"
    local filename=$(basename "$source_file" .md)
    
    # Create temporary file for processing
    local temp_file=$(mktemp)
    
    # Check if file already has frontmatter
    if ! head -1 "$source_file" | grep -q "^---$"; then
        # Add frontmatter if missing
        echo "---" > "$temp_file"
        echo "title: \"$filename\"" >> "$temp_file"
        echo "---" >> "$temp_file"
        echo "" >> "$temp_file"
        cat "$source_file" >> "$temp_file"
    else
        cp "$source_file" "$temp_file"
    fi
    
    # Sanitize markdown content for MDX compatibility:
    # 1. Escape curly braces to prevent JSX interpretation
    # 2. Replace empty markdown links with plain text to avoid MDX errors
    # 3. Escape mathematical expressions that could be interpreted as JSX
    # 4. Transform ABI repository links to local documentation paths
    sed -E \
        -e "s/\{/\\\\{/g" \
        -e "s/\}/\\\\}/g" \
        -e "s/\[\]\(\)/-/g" \
        -e "s/=Def/= Def/g" \
        -e "s/<=/\\\\<=/g" \
        -e "s/>=/\\\\>=/g" \
        -e "s/≠/\\\\≠/g" \
        -e "s|/docs/ontology/reference/full/Entity/Continuant|/bfo/Continuant|g" \
        -e "s|/docs/ontology/reference/full/Entity/Occurrent|/bfo/Occurrent|g" \
        -e "s|/docs/ontology/reference/full/Entity/Entity|/bfo|g" \
        -e "s|/docs/ontology/reference/abi|/abi|g" \
        -e "s|/docs/ontology/reference/bfo|/bfo|g" \
        -e "s|/docs/ontology/reference/cco|/cco|g" \
        "$temp_file" > "$dest_file"
    
    # Cleanup
    rm "$temp_file"
}

# Function to sync a specific ontology folder
sync_ontology() {
    local ontology_name=$1
    local source_dir="$ABI_SOURCE/$ontology_name"
    local dest_dir="$SITE_DOCS/$ontology_name"
    
    echo -e "${YELLOW}📁 Syncing $ontology_name ontology...${NC}"
    
    # Check if source exists
    if [ ! -d "$source_dir" ]; then
        echo -e "${RED}❌ Warning: Source directory not found: $source_dir${NC}"
        return 1
    fi
    
    # Create destination directory if it doesn't exist
    mkdir -p "$dest_dir"
    
    # Backup preserved files
    local temp_dir=$(mktemp -d)
    local preserved_files=()
    
    # Check and backup _category_.json
    if [ -f "$dest_dir/_category_.json" ]; then
        cp "$dest_dir/_category_.json" "$temp_dir/_category_.json"
        preserved_files+=("_category_.json")
        echo -e "  ${GREEN}✓${NC} Preserved _category_.json"
    fi
    
    # Check and backup index.md
    if [ -f "$dest_dir/index.md" ]; then
        cp "$dest_dir/index.md" "$temp_dir/index.md"
        preserved_files+=("index.md")
        echo -e "  ${GREEN}✓${NC} Preserved index.md"
    fi
    
    # Remove all existing markdown files and subdirectories except preserved ones
    find "$dest_dir" -type f -name "*.md" ! -name "index.md" -delete 2>/dev/null || true
    find "$dest_dir" -type d -mindepth 1 -exec rm -rf {} + 2>/dev/null || true
    
    # Copy all markdown files from source, preserving directory structure
    local file_count=0
    while IFS= read -r -d '' file; do
        local filename=$(basename "$file")
        local relative_path="${file#$source_dir/}"
        local dest_file="$dest_dir/$relative_path"
        local dest_subdir=$(dirname "$dest_file")
        
        # Skip if it's an index.md (we preserve the existing one)
        if [ "$filename" = "index.md" ]; then
            continue
        fi
        
        # Create subdirectory if it doesn't exist
        mkdir -p "$dest_subdir"
        
        # Copy and sanitize the file for MDX compatibility
        sanitize_mdx_file "$file" "$dest_file"
        ((file_count++))
        
        # Show progress for every 10 files
        if [ $((file_count % 10)) -eq 0 ]; then
            echo -e "  ${BLUE}📄${NC} Copied $file_count files..."
        fi
    done < <(find "$source_dir" -name "*.md" -type f -print0)
    
    # Restore preserved files
    for preserved_file in "${preserved_files[@]}"; do
        if [ -f "$temp_dir/$preserved_file" ]; then
            cp "$temp_dir/$preserved_file" "$dest_dir/$preserved_file"
        fi
    done
    
    # Cleanup temp directory
    rm -rf "$temp_dir"
    
    echo -e "  ${GREEN}✅ Synced $file_count files for $ontology_name${NC}"
    return 0
}

# Sync each ontology
ontologies=("abi" "bfo" "cco")
total_synced=0
failed_syncs=0

for ontology in "${ontologies[@]}"; do
    if sync_ontology "$ontology"; then
        ((total_synced++))
    else
        ((failed_syncs++))
    fi
    echo ""
done

# Summary
echo -e "${BLUE}📊 Sync Summary${NC}"
echo -e "${GREEN}✅ Successfully synced: $total_synced ontologies${NC}"

if [ $failed_syncs -gt 0 ]; then
    echo -e "${RED}❌ Failed syncs: $failed_syncs ontologies${NC}"
    exit 1
else
    echo -e "${GREEN}🎉 All ontologies synced successfully!${NC}"
fi

echo ""
echo -e "${YELLOW}💡 Next steps:${NC}"
echo -e "  1. Review the synced files: ${BLUE}git status${NC}"
echo -e "  2. Test the documentation: ${BLUE}cd site && npm start${NC}"
echo -e "  3. Commit changes: ${BLUE}git add . && git commit -m 'Update ontology docs from ABI source'${NC}"
