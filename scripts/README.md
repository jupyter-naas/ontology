# Scripts Directory

This directory contains automation scripts for maintaining the Naas Ontology documentation.

## sync-abi-docs.sh

**Purpose:** Synchronizes ontology documentation from the ABI repository source to the documentation site.

### What it does

- Syncs markdown files from `resources/.abi/docs/ontology/reference/` to `site/docs/`
- Preserves existing `_category_.json` and `index.md` files in each ontology directory
- Updates all other markdown files with the latest versions from the ABI source
- **Maintains the hierarchical directory structure** from the source (e.g., `Continuant/Material entity/`, `Occurrent/Process/`)
- Sanitizes files for MDX compatibility by:
  - Escaping curly braces `{}` that could be interpreted as JSX
  - Replacing empty markdown links `[]()` with dashes to prevent build errors
  - Transforming ABI repository links to local documentation paths (e.g., `/docs/ontology/reference/full/Entity/Continuant` → `/bfo/Continuant`)

### Prerequisites

1. The ABI repository must be cloned/updated in `resources/.abi/`
2. The destination directories must exist with their preserved files:
   - `site/docs/abi/_category_.json` and `site/docs/abi/index.md`
   - `site/docs/bfo/_category_.json` and `site/docs/bfo/index.md`
   - `site/docs/cco/_category_.json` and `site/docs/cco/index.md`

### Usage

```bash
# From the project root
./scripts/sync-abi-docs.sh
```

### What gets synced

| Source | Destination | Files Preserved |
|--------|-------------|-----------------|
| `resources/.abi/docs/ontology/reference/abi/` | `site/docs/abi/` | `_category_.json`, `index.md` |
| `resources/.abi/docs/ontology/reference/bfo/` | `site/docs/bfo/` | `_category_.json`, `index.md` |
| `resources/.abi/docs/ontology/reference/cco/` | `site/docs/cco/` | `_category_.json`, `index.md` |

### Output

The script provides colored output showing:
- 🔄 Sync start information
- 📁 Progress for each ontology
- ✓ Preserved files confirmation
- 📄 File copy progress (every 10 files)
- ✅ Completion summary
- 💡 Next steps guidance

### Example Output

```
🔄 Starting ABI Documentation Sync
📁 Syncing abi ontology...
  ✓ Preserved _category_.json
  ✓ Preserved index.md
  📄 Copied 10 files...
  ✅ Synced 63 files for abi
📊 Sync Summary
✅ Successfully synced: 3 ontologies
🎉 All ontologies synced successfully!
```

### After Running

1. **Review changes:** `git status`
2. **Test documentation:** `cd site && npm start`
3. **Commit changes:** `git add . && git commit -m "Update ontology docs from ABI source"`

### Troubleshooting

**Error: Source directory not found**
- Ensure the ABI repository is properly cloned to `resources/.abi/`
- Run `git pull` in the ABI repository to get the latest changes

**Missing preserved files**
- The script will work without preserved files, but you may want to create them
- `_category_.json` files define the sidebar structure in Docusaurus
- `index.md` files provide overview content for each ontology section

### Script Features

- **Safe operation:** Preserves critical configuration files
- **Progress tracking:** Shows real-time progress for large syncs
- **Error handling:** Exits on errors with clear messages
- **Colored output:** Easy-to-read status information
- **Atomic operations:** Uses temporary directories to ensure consistency
