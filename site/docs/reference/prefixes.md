---
title: Prefixes
sidebar_label: Prefixes
---

# Ontology Prefixes

Standard prefixes used throughout the Naas Ontology documentation and implementation.

## Core Ontology Prefixes

### BFO (Basic Formal Ontology)
```turtle
@prefix bfo: <http://purl.obolibrary.org/obo/> .
```
- **Description:** Basic Formal Ontology - foundational categories
- **Usage:** All fundamental entity types (Entity, Continuant, Occurrent, etc.)
- **Example:** `bfo:BFO_0000001` (Entity), `bfo:BFO_0000015` (Process)

### CCO (Common Core Ontologies)
```turtle
@prefix cco: <https://www.commoncoreontologies.org/> .
```
- **Description:** Common Core Ontologies - mid-level concepts
- **Usage:** Agent, Organization, Information Entity, Artifact concepts
- **Example:** `cco:ont00001017` (Agent), `cco:ont00001180` (Organization)

### ABI (Agentic Brain Infrastructure)
```turtle
@prefix abi: <http://ontology.naas.ai/abi/> .
```
- **Description:** Naas-specific AI and ontology concepts
- **Usage:** AI agents, cognitive capabilities, workflows, triggers
- **Example:** `abi:AIAgent`, `abi:CognitiveCapability`, `abi:Workflow`

## Standard W3C Prefixes

### RDF/RDFS
```turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
```
- **Usage:** Basic RDF constructs, labels, comments
- **Example:** `rdfs:label`, `rdfs:subClassOf`, `rdf:type`

### OWL
```turtle
@prefix owl: <http://www.w3.org/2002/07/owl#> .
```
- **Usage:** OWL ontology constructs
- **Example:** `owl:Class`, `owl:ObjectProperty`, `owl:DatatypeProperty`

### SKOS
```turtle
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
```
- **Usage:** Definitions, examples, concept relationships
- **Example:** `skos:definition`, `skos:example`, `skos:broader`

### XSD
```turtle
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
```
- **Usage:** Data types for literal values
- **Example:** `xsd:string`, `xsd:integer`, `xsd:decimal`, `xsd:boolean`

## Domain-Specific Prefixes

### FOAF (Friend of a Friend)
```turtle
@prefix foaf: <http://xmlns.com/foaf/0.1/> .
```
- **Usage:** Person and social network concepts (when needed)
- **Example:** `foaf:Person`, `foaf:name`, `foaf:knows`

### Dublin Core
```turtle
@prefix dc: <http://purl.org/dc/elements/1.1/> .
@prefix dcterms: <http://purl.org/dc/terms/> .
```
- **Usage:** Metadata about resources
- **Example:** `dc:creator`, `dcterms:created`, `dcterms:modified`

## Usage Examples

### Complete Turtle Header
```turtle
@prefix bfo: <http://purl.obolibrary.org/obo/> .
@prefix cco: <https://www.commoncoreontologies.org/> .
@prefix abi: <http://ontology.naas.ai/abi/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

# Your ontology content here...
```

### Class Definition Example
```turtle
abi:AIAgent a owl:Class ;
    rdfs:subClassOf cco:ont00001017 ; # Agent
    rdfs:label "AI Agent"@en ;
    skos:definition "An agent that is an artificial intelligence system capable of autonomous decision-making and task execution."@en ;
    skos:example "ChatGPT, Claude, Gemini, and other AI systems that can engage in conversations and perform various tasks."@en .
```

### Individual Instance Example
```turtle
abi:claude_agent a abi:AIAgent ;
    rdfs:label "Claude AI Agent"@en ;
    bfo:BFO_0000087 abi:ethical_reasoning_capability ; # has role
    abi:hasIntelligenceScore "64"^^xsd:integer .
```

## Prefix Registration

### Internal Prefixes
- **abi:** - Registered for Naas-specific concepts
- **naas:** - Reserved for future platform-specific concepts

### External Dependencies
- **bfo:** - Maintained by OBO Foundry
- **cco:** - Maintained by CUBRC
- **Standard W3C prefixes** - Maintained by W3C

## Best Practices

1. **Consistency** - Always use the same prefix for the same namespace
2. **Clarity** - Choose prefixes that clearly indicate the source ontology
3. **Standards** - Use established prefixes for well-known ontologies
4. **Documentation** - Document any custom or domain-specific prefixes
5. **Versioning** - Consider version-specific prefixes for major ontology updates
