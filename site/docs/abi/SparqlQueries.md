---
title: Templatable SPARQL Queries
sidebar_label: SPARQL Queries
iri: intentMapping:TemplatableSparqlQuery
---

# Templatable SPARQL Queries

**Definition:** Application-level ontology providing templatable SPARQL query infrastructure for intent mapping and semantic search across ontological knowledge bases.

**Parent:** [Application-Level Ontology](/ontology-essentials/application-level)

**See also:** [Intent Mapping](/abi/IntentMapping), [Query Arguments](/abi/QueryArguments)

## Modeling Notes

- Provides systematic query template framework for ontological search
- Enables intent-driven query generation and execution
- Supports parameterized queries with validation patterns
- Essential for AI agent knowledge base interaction
- Includes pre-built queries for common ontological patterns

## Core Query Framework

### Query Components
- **Templatable SPARQL Query** - Parameterized query templates
- **Query Argument** - Template parameters with validation
- **Intent Description** - Natural language query purpose
- **SPARQL Template** - Parameterized SPARQL query string

### Validation Framework
- **Validation Pattern** - Regex patterns for argument validation
- **Validation Format** - Semantic format specifications
- **Optional Arguments** - Non-required template parameters

## Pre-Built Query Templates

### Ontology Schema Queries
```sparql
# Search for ontology classes
intentMapping:searchClassQuery a intentMapping:TemplatableSparqlQuery ;
    rdfs:label "search_class"@en ;
    intentMapping:intentDescription "Search for ontology classes based on their labels, definitions, examples, and comments" ;
    intentMapping:sparqlTemplate """
        SELECT DISTINCT ?class ?label ?score ?definition ?example ?comment
        WHERE {
            # Exact match with rdfs:label gets highest score (10)
            ?class rdfs:label ?label .
            FILTER(LCASE(STR(?label)) = LCASE("{{ search_label }}"))
            BIND(10 AS ?score)
        }
        ORDER BY DESC(?score)
        LIMIT 10
    """ .
```

### Instance Queries
```sparql
# Count instances by class
intentMapping:countInstancesByClassQuery a intentMapping:TemplatableSparqlQuery ;
    rdfs:label "count_instances_by_class"@en ;
    intentMapping:intentDescription "Get all classes that have owl:NamedIndividual instances and return a count of instances by class" ;
    intentMapping:sparqlTemplate """
        SELECT DISTINCT ?class_uri ?class_label (COUNT(?individual) AS ?instance_count)
        WHERE {
            ?individual a ?class_uri ;
                        a owl:NamedIndividual .
            ?class_uri a owl:Class .
            OPTIONAL { ?class_uri rdfs:label ?class_label . }
        }
        GROUP BY ?class_uri ?class_label
        ORDER BY DESC(?instance_count) ?class_label
    """ .
```

### Domain-Specific Queries

#### Person Queries
```sparql
# Search for persons
intentMapping:searchPersonQuery a intentMapping:TemplatableSparqlQuery ;
    rdfs:label "search_person"@en ;
    intentMapping:intentDescription "Search for persons in the ontology based on their name, with exact and partial matching" ;
    intentMapping:sparqlTemplate """
        SELECT DISTINCT ?class_uri ?individual_uri ?label (MAX(?temp_score) AS ?score)
        WHERE {
            ?individual_uri a ?class_uri ;
                            a owl:NamedIndividual ;
                            rdfs:label ?label .
            FILTER(?class_uri = <https://www.commoncoreontologies.org/ont00001262>)
            
            BIND(IF(LCASE(STR(?label)) = LCASE("{{ search_label }}"), 10, 0) AS ?perfect_score)
            BIND(IF(CONTAINS(LCASE(STR(?label)), LCASE("{{ search_label }}")), 8, 0) AS ?partial_score)
            BIND(IF(?perfect_score > ?partial_score, ?perfect_score, ?partial_score) AS ?temp_score)
            
            FILTER(?temp_score > 0)
        }
        GROUP BY ?class_uri ?individual_uri ?label
        ORDER BY DESC(?score) ?label
    """ .
```

#### Skill Queries
```sparql
# Get skills associated with person
intentMapping:getSkillsAssociatedWithPersonQuery a intentMapping:TemplatableSparqlQuery ;
    rdfs:label "get_skills_associated_with_person"@en ;
    intentMapping:intentDescription "Get all skills associated with a specific person" ;
    intentMapping:sparqlTemplate """
        SELECT DISTINCT ?skill_label
        WHERE {
            ?person a owl:NamedIndividual ;
                    rdfs:label "{{ person_name }}" ;
                    abi:hasSkill ?skill .
            ?skill rdfs:label ?skill_label .
        }
    """ .
```

## Query Argument Framework

### Argument Types
```turtle
# Class search argument
intentMapping:classSearchLabelArg a intentMapping:QueryArgument ;
    intentMapping:argumentName "search_label" ;
    intentMapping:argumentDescription "Class label to search for in the ontology schema" ;
    intentMapping:validationPattern "." ;
    intentMapping:validationFormat "class_label" .

# Person name argument
intentMapping:personNameArg a intentMapping:QueryArgument ;
    intentMapping:argumentName "person_name" ;
    intentMapping:argumentDescription "Name of the person to search skills of" ;
    intentMapping:validationPattern "^.{3,100}$" ;
    intentMapping:validationFormat "person_name" .

# Optional search string
intentMapping:searchStringClassArg a intentMapping:QueryArgument ;
    intentMapping:argumentName "search_string" ;
    intentMapping:argumentDescription "Optional string to filter individuals by their starting characters" ;
    intentMapping:validationPattern "^[A-Za-z0-9\\s]*$" ;
    intentMapping:validationFormat "string" ;
    intentMapping:isOptional true .
```

## AI Agent Integration

### Query Execution Framework
- **Intent Recognition** - Mapping natural language to query templates
- **Parameter Extraction** - Extracting query arguments from user input
- **Query Generation** - Instantiating templates with extracted parameters
- **Result Processing** - Formatting and presenting query results

### Knowledge Base Interaction
- **Schema Discovery** - Finding relevant classes and properties
- **Instance Retrieval** - Locating specific individuals and data
- **Relationship Exploration** - Discovering connections between entities
- **Validation and Quality** - Ensuring data consistency and accuracy

## Implementation Example

```turtle
# AI agent using query templates
abi:knowledge_agent a abi:AIAgent ;
    rdfs:label "Knowledge Agent"@en ;
    abi:hasCapability capability:QueryExecutionCapability ;
    abi:utilizesQueryTemplate intentMapping:searchPersonQuery,
                             intentMapping:searchSkillQuery .

# Query execution process
abi:person_search_process a abi:QueryExecutionProcess ;
    rdfs:label "Person Search Process"@en ;
    abi:hasParticipant abi:knowledge_agent ;
    abi:utilizesTemplate intentMapping:searchPersonQuery ;
    abi:hasQueryArgument [ 
        intentMapping:argumentName "search_label" ;
        intentMapping:argumentValue "John Smith" 
    ] .
```

## Query Categories

### Schema Queries
- Class and property discovery
- Hierarchy exploration
- Definition and documentation retrieval

### Instance Queries
- Individual entity search
- Data retrieval and filtering
- Relationship traversal

### Analytics Queries
- Statistical analysis and counting
- Trend identification and analysis
- Quality assessment and validation

### Integration Queries
- Cross-ontology mapping
- Data synchronization
- Consistency checking
