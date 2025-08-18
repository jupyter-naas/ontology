---
title: Foundry Ontology
sidebar_label: Foundry
iri: abi:FoundryOntology
---

# Foundry Ontology

**Definition:** Application-level ontology providing infrastructure for organizing and curating ontological concepts across different foundries (organizational contexts).

**Parent:** [Application-Level Ontology](/ontology-essentials/application-level)

**See also:** [Organization](/abi/organization), [Access Control](/abi/access-control)

:::note
This application ontology is not fully vetted and is subject to changes as we refine the modeling approach for third-party integrations.
:::

## Modeling Notes

- Provides foundry-based curation system for ontological concepts
- Enables organizational management of concept access and permissions
- Supports systematic foundry mappings of CCO and ABI concepts
- Includes access control mechanisms with different permission levels
- Essential for enterprise deployment and multi-tenant ontology management

## Foundry Categories

### Core Foundry Types
- **Enterprise Management Foundry** - Enterprise management and operations concepts
- **Personal AI Foundry** - Personal AI assistance and productivity concepts
- **AI Development Foundry** - AI system development and research concepts
- **Knowledge Management Foundry** - Knowledge organization and semantic systems

## Foundry Curation System

### Curation Property
The core foundry curation property relates entities to their foundries:

```turtle
abi:is_curated_in_foundry a owl:DatatypeProperty ;
    rdfs:label "is curated in foundry"@en ;
    skos:definition "Relates a class to the foundry it is curated in."@en ;
    rdfs:domain bfo:BFO_0000001 ; # Entity
    rdfs:range xsd:string .
```

### Systematic Foundry Mappings
CCO concepts are systematically mapped to appropriate foundries:

```turtle
# Organization concepts
cco:ont00001180 abi:is_curated_in_foundry "enterprise_management_foundry", "personal_ai_foundry" .
cco:ont00000443 abi:is_curated_in_foundry "enterprise_management_foundry", "personal_ai_foundry" .

# Person and role concepts  
cco:ont00001262 abi:is_curated_in_foundry "enterprise_management_foundry", "personal_ai_foundry" .

# AI-specific concepts
abi:AIAgent abi:is_curated_in_foundry "ai_development_foundry", "personal_ai_foundry" .
```

## Access Control Framework

### Access Control Concepts
- **Foundry Access** - Realizable entity representing access permissions
- **Read Only Access** - Basic viewing permissions
- **Curator Access** - Content management permissions  
- **Admin Access** - Full administrative permissions

### Access Control Implementation

```turtle
# Access control concepts
abi:FoundryAccess a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000017 ; # Realizable Entity
    rdfs:label "Foundry Access"@en .

# Access levels
abi:ReadOnlyAccess rdfs:subClassOf abi:FoundryAccess .
abi:CuratorAccess rdfs:subClassOf abi:FoundryAccess .
abi:AdminAccess rdfs:subClassOf abi:FoundryAccess .

# Person with foundry access
abi:john_smith a abi:Person ;
    abi:hasFoundryAccess abi:enterprise_curator_access .

abi:enterprise_curator_access a abi:CuratorAccess ;
    abi:grantsAccessToFoundry "enterprise_management_foundry" .
```

## Integration Example

Complete foundry integration with organizational context:

```turtle
# Enterprise scenario with foundry organization
abi:acme_corp a abi:AIServiceProvider ;
    rdfs:label "Acme Corporation"@en ;
    abi:is_curated_in_foundry "enterprise_management_foundry" ;
    abi:operates abi:acme_ai_system .

# AI system with foundry curation
abi:acme_ai_system a abi:AISystem ;
    rdfs:label "Acme AI System"@en ;
    abi:hasBackingDataSource abi:acme_customer_db ;
    abi:is_curated_in_foundry "enterprise_management_foundry", "ai_development_foundry" .
```

## Key Properties

- **abi:is_curated_in_foundry** - Core foundry curation property
- **abi:hasFoundryAccess** - Person to access relationship
- **abi:grantsAccessToFoundry** - Access to foundry relationship
