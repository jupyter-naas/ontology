---
sidebar_position: 1
slug: /
---

# Introduction

The **Naas Ontology** is a comprehensive semantic framework that systematically incorporates **Basic Formal Ontology (BFO)** and **Common Core Ontologies (CCO)**, extending them through domain-specific and application-level ontologies for AI-powered knowledge management.

## Ontological Architecture

The Naas Ontology follows a principled 4-level hierarchy based on ontological abstraction:

```mermaid
%%{init: {'theme':'base', 'themeVariables': {'primaryColor': '#f8fafc', 'primaryTextColor': '#1e293b', 'primaryBorderColor': '#e2e8f0', 'lineColor': '#64748b'}}}%%
graph TD
    subgraph "Top-Level"
        A[BFO - Basic Formal Ontology]
        A2[bfo-core.ttl<br/>owl.ttl]
    end
    
    subgraph "Mid-Level"
        B[CCO - Common Core Ontologies]
        B2[AgentOntology.ttl<br/>EventOntology.ttl<br/>QualityOntology.ttl<br/>ArtifactOntology.ttl]
    end
    
    subgraph "Domain-Level"
        C[Domain-Level Ontologies]
        C2[AIAgentOntology.ttl<br/>OrganizationOntology.ttl<br/>CapabilityOntology.ttl<br/>PersonOntology.ttl]
    end
    
    subgraph "Application-Level"
        D[Application-Level Ontologies]
        D2[FoundryOntology.ttl<br/>DataSourceOntology.ttl]
    end
    
    A --> B
    B --> C
    C --> D
    
    classDef userExp fill:#e8f5e8,stroke:#4caf50,stroke-width:2px,color:#2e7d32
    classDef platform fill:#e3f2fd,stroke:#2196f3,stroke-width:1px,color:#1565c0
    classDef aiEngine fill:#fff3e0,stroke:#ff9800,stroke-width:2px,color:#e65100
    classDef dataLayer fill:#f3e5f5,stroke:#9c27b0,stroke-width:1px,color:#4a148c
    
    class A,A2 userExp
    class B,B2 platform
    class C,C2 aiEngine
    class D,D2 dataLayer
```

## Core Principles

### 1. BFO Foundation
All concepts are grounded in Basic Formal Ontology's systematic categorization:

```turtle
@prefix bfo: <http://purl.obolibrary.org/obo/> .
@prefix abi: <http://ontology.naas.ai/abi/> .

# Everything starts with BFO Entity
bfo:BFO_0000001 a owl:Class ;
    rdfs:label "Entity"@en ;
    skos:definition "An entity is anything that exists or has existed or will exist"@en .
```

### 2. Systematic Extension
Each level builds systematically on the previous, maintaining ontological rigor:

- **BFO** provides the foundational categories
- **CCO** adds common-sense concepts
- **Domain** ontologies specify particular domains
- **Application** ontologies handle implementation details

### 3. Process-Centric AI Routing
The ontology enables intelligent routing based on BFO's process categorization rather than specific AI models.

## Modular AI Integration

Each AI module in the ABI system extends the core ontological framework:

```mermaid
%%{init: {'theme':'base', 'themeVariables': {'primaryColor': '#f8fafc', 'primaryTextColor': '#1e293b', 'primaryBorderColor': '#e2e8f0', 'lineColor': '#64748b'}}}%%
graph LR
    subgraph "Core Framework"
        A[Core Ontology Module]
        A1[ontology/ontologies/<br/>├── top-level/<br/>├── mid-level/<br/>├── domain-level/<br/>└── application-level/]
    end
    
    subgraph "AI Module Extensions"
        B[Claude Module]
        C[Gemini Module]
        D[Gemma Module]
        E[Qwen Module]
    end
    
    subgraph "Module Ontologies"
        B1[claude/ontologies/]
        C1[gemini/ontologies/]
        D1[gemma/ontologies/]
        E1[qwen/ontologies/]
    end
    
    A --> B
    A --> C
    A --> D
    A --> E
    
    B --> B1
    C --> C1
    D --> D1
    E --> E1
    
    classDef userExp fill:#e8f5e8,stroke:#4caf50,stroke-width:2px,color:#2e7d32
    classDef platform fill:#e3f2fd,stroke:#2196f3,stroke-width:1px,color:#1565c0
    classDef aiEngine fill:#fff3e0,stroke:#ff9800,stroke-width:2px,color:#e65100
    
    class A,A1 userExp
    class B,C,D,E platform
    class B1,C1,D1,E1 aiEngine
```

## Implementation in ABI

The Naas Ontology is operationalized through the **Agentic Brain Infrastructure (ABI)**:

### Ontology Engineering Agents
- **OntologyEngineerAgent** - BFO expert for ontology development
- **EntitytoSPARQLAgent** - Extract entities and generate SPARQL
- **KnowledgeGraphBuilderAgent** - Manage knowledge graphs

### Processing Infrastructure
- **Pipelines** - SPARQL operations, workflow management
- **Workflows** - Complex multi-step processes
- **Validation** - Ensure BFO compliance and consistency

## Next Steps

Explore each level of the ontological hierarchy:

1. **[Top-Level](/ontology-essentials/top-level)** - Understanding the 7 Buckets framework
2. **[Mid-Level](/ontology-essentials/mid-level)** - Common Core Ontologies integration
3. **[Domain-Level](/ontology-essentials/domain-level)** - AI Agent, Organization, and other domains
4. **[Application-Level](/ontology-essentials/application-level)** - Foundry integration and data sources
5. **[Process-Centric Routing](/ontology-essentials/process-routing)** - AI routing based on cognitive processes

---

*The Naas Ontology provides a principled foundation for AI-powered knowledge management, systematically building from formal ontological principles to practical implementation.*
