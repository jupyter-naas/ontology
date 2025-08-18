---
title: Top-Level
sidebar_label: Top-Level
sidebar_position: 2
---

# Top-Level

The **Basic Formal Ontology (BFO)** provides the foundational framework for the Naas Ontology. BFO is a top-level ontology that systematically categorizes all entities that exist or can exist.

## BFO 7 Buckets Framework

BFO organizes all entities into seven fundamental categories, captured in the mnemonic: *"What and who are the materials, how-they-are their qualities, why they can do something are realizable, how-it-happens is the process, when and where give time and space, and how-we-know is the information."*

```mermaid
%%{init: {'theme':'base', 'themeVariables': {'primaryColor': '#f8fafc', 'primaryTextColor': '#1e293b', 'primaryBorderColor': '#e2e8f0', 'lineColor': '#64748b'}}}%%
graph TD
    subgraph "BFO Entity Hierarchy"
        Entity[BFO Entity<br/>BFO_0000001]
    end
    
    subgraph "Continuants (Persist through time)"
        Continuant[Continuant<br/>BFO_0000002]
        IC[Independent Continuant<br/>BFO_0000004<br/>WHAT/WHO - Materials]
        DC[Dependent Continuant<br/>BFO_0000020]
        GDC[Generically Dependent<br/>BFO_0000031<br/>HOW-WE-KNOW - Information]
        SDC[Specifically Dependent<br/>BFO_0000019]
        Quality[Quality<br/>BFO_0000019<br/>HOW-IT-IS - Qualities]
        Realizable[Realizable Entity<br/>BFO_0000017<br/>WHY-POTENTIAL - Realizable]
    end
    
    subgraph "Occurrents (Happen in time)"
        Occurrent[Occurrent<br/>BFO_0000003]
        Process[Process<br/>BFO_0000015<br/>HOW-IT-HAPPENS - Process]
        TR[Temporal Region<br/>BFO_0000008<br/>WHEN - Time]
        SR[Spatial Region<br/>BFO_0000006<br/>WHERE - Space]
    end
    
    Entity --> Continuant
    Entity --> Occurrent
    
    Continuant --> IC
    Continuant --> DC
    DC --> GDC
    DC --> SDC
    SDC --> Quality
    SDC --> Realizable
    
    Occurrent --> Process
    Occurrent --> TR
    Occurrent --> SR
    
    classDef userExp fill:#e8f5e8,stroke:#4caf50,stroke-width:2px,color:#2e7d32
    classDef platform fill:#e3f2fd,stroke:#2196f3,stroke-width:1px,color:#1565c0
    classDef aiEngine fill:#fff3e0,stroke:#ff9800,stroke-width:2px,color:#e65100
    classDef dataLayer fill:#f3e5f5,stroke:#9c27b0,stroke-width:1px,color:#4a148c
    
    class Entity userExp
    class Continuant,IC,DC platform
    class Quality,Realizable,GDC aiEngine
    class Occurrent,Process,TR,SR dataLayer
```

## Core BFO Classes in Naas Ontology

### 1. Material Entities (WHAT/WHO)
Independent continuants that exist in their own right:

```turtle
@prefix bfo: <http://purl.obolibrary.org/obo/> .
@prefix abi: <http://ontology.naas.ai/abi/> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix skos: <http://www.w3.org/2004/02/skos/core#> .

# AI Systems as material entities
abi:AISystem a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000040 ; # Material Entity
    rdfs:label "AI System"@en ;
    skos:definition "A material entity that implements artificial intelligence capabilities."@en ;
    skos:example "ChatGPT server infrastructure, Claude API endpoints, Gemini model instances."@en .

abi:AIModelInstance a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000040 ; # Material Entity
    rdfs:label "AI Model Instance"@en ;
    skos:definition "A material entity that is a specific instantiation of an AI model running on hardware."@en .
```

### 2. Qualities (HOW-IT-IS)
Properties that inhere in material entities:

```turtle
# Performance qualities of AI systems
abi:IntelligenceScore a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000019 ; # Quality
    rdfs:label "Intelligence Score"@en ;
    skos:definition "A quality that measures the cognitive capability of an AI system."@en .

abi:ResponseSpeed a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000019 ; # Quality
    rdfs:label "Response Speed"@en ;
    skos:definition "A quality that measures how quickly an AI system responds to queries."@en .

abi:CostPerToken a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000019 ; # Quality
    rdfs:label "Cost Per Token"@en ;
    skos:definition "A quality that measures the financial cost per token processed."@en .
```

### 3. Realizable Entities (WHY-POTENTIAL)
Capabilities and roles that can be realized:

```turtle
# Agent roles and capabilities
abi:AgentRole a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000017 ; # Realizable Entity
    rdfs:label "Agent Role"@en ;
    skos:definition "A realizable entity that defines the specialized function or role of an AI agent."@en ;
    skos:example "Primary responder, fallback handler, specialized task executor."@en .

abi:CognitiveCapability a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000017 ; # Realizable Entity
    rdfs:label "Cognitive Capability"@en ;
    skos:definition "A realizable entity that represents a cognitive ability of an AI system."@en ;
    skos:example "Truth-seeking analysis, ethical reasoning, multimodal processing."@en .
```

### 4. Processes (HOW-IT-HAPPENS)
Temporal occurrents that unfold over time:

```turtle
# AI processing activities
abi:AIProcessing a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000015 ; # Process
    rdfs:label "AI Processing"@en ;
    skos:definition "A process in which an AI system analyzes input and generates output."@en .

abi:AgentRouting a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000015 ; # Process
    rdfs:label "Agent Routing"@en ;
    skos:definition "A process of selecting the appropriate AI agent based on cognitive requirements."@en .

abi:KnowledgeGraphConstruction a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000015 ; # Process
    rdfs:label "Knowledge Graph Construction"@en ;
    skos:definition "A process of building structured knowledge representations from data."@en .
```

### 5. Information Entities (HOW-WE-KNOW)
Generically dependent continuants that carry information:

```turtle
# Information structures
abi:OntologyDefinition a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000031 ; # Generically Dependent Continuant
    rdfs:label "Ontology Definition"@en ;
    skos:definition "An information entity that specifies the structure and meaning of an ontology."@en .

abi:SPARQLQuery a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000031 ; # Generically Dependent Continuant
    rdfs:label "SPARQL Query"@en ;
    skos:definition "An information entity that represents a query in SPARQL language."@en .
```

## BFO Relations

BFO provides fundamental relations that connect entities:

```turtle
# Temporal relations
bfo:BFO_0000108 rdfs:label "exists at"@en ;
    skos:definition "A relation between a particular and some temporal region at which the particular exists"@en .

# Spatial relations  
bfo:BFO_0000124 rdfs:label "location of"@en ;
    skos:definition "A relation between a spatial region and an independent continuant"@en .

# Participation relations
bfo:BFO_0000056 rdfs:label "participates in"@en ;
    skos:definition "A relation between a continuant and a process"@en .

# Quality relations
bfo:BFO_0000086 rdfs:label "has quality"@en ;
    skos:definition "A relation between an independent continuant and a quality"@en .
```

## Process-Centric Routing Logic

The BFO foundation enables process-centric AI routing by categorizing cognitive needs:

```mermaid
%%{init: {'theme':'base', 'themeVariables': {'primaryColor': '#f8fafc', 'primaryTextColor': '#1e293b', 'primaryBorderColor': '#e2e8f0', 'lineColor': '#64748b'}}}%%
graph TD
    subgraph "Process Analysis"
        A[User Request]
        B{Analyze Cognitive Process}
    end
    
    subgraph "Cognitive Processes"
        C[Truth-Seeking Analysis]
        D[Ethical Reasoning]
        E[Multimodal Processing]
        F[Code Generation]
    end
    
    subgraph "Agent Routing"
        C1[Route to Grok<br/>High contrarian analysis capability]
        D1[Route to Claude<br/>Strong ethical reasoning]
        E1[Route to Gemini<br/>Multimodal capabilities]
        F1[Route to Mistral<br/>Code generation optimized]
    end
    
    A --> B
    B --> C
    B --> D
    B --> E
    B --> F
    
    C --> C1
    D --> D1
    E --> E1
    F --> F1
    
    classDef userExp fill:#e8f5e8,stroke:#4caf50,stroke-width:2px,color:#2e7d32
    classDef platform fill:#e3f2fd,stroke:#2196f3,stroke-width:1px,color:#1565c0
    classDef aiEngine fill:#fff3e0,stroke:#ff9800,stroke-width:2px,color:#e65100
    
    class A,B userExp
    class C,D,E,F platform
    class C1,D1,E1,F1 aiEngine
```

## Implementation Example

Here's how BFO categories are applied in the Naas Ontology:

```turtle
# A complete example: Grok AI system
abi:grok_instance a abi:AISystem ;
    rdfs:label "Grok AI Instance"@en ;
    bfo:BFO_0000086 abi:grok_intelligence_score ; # has quality
    bfo:BFO_0000087 abi:contrarian_analysis_role . # has role

abi:grok_intelligence_score a abi:IntelligenceScore ;
    rdfs:label "Grok Intelligence Score"@en ;
    abi:hasNumericValue "73"^^xsd:integer .

abi:contrarian_analysis_role a abi:CognitiveCapability ;
    rdfs:label "Contrarian Analysis Capability"@en ;
    skos:definition "The capability to provide contrarian and truth-seeking analysis"@en .

# Process instance
abi:truth_seeking_process_001 a abi:AIProcessing ;
    rdfs:label "Truth Seeking Analysis Process"@en ;
    bfo:BFO_0000057 abi:grok_instance ; # has participant
    bfo:BFO_0000066 abi:contrarian_analysis_role . # realizes
```

## Next Steps

The BFO foundation provides the systematic basis for:

1. **[Mid-Level](/ontology-essentials/mid-level)** - Common Core Ontologies that build on BFO
2. **[Domain-Level](/ontology-essentials/domain-level)** - Specific domains grounded in BFO categories
3. **[Process-Centric Routing](/ontology-essentials/process-routing)** - AI routing based on BFO process analysis

---

*BFO provides the rigorous ontological foundation that ensures consistency and interoperability across all levels of the Naas Ontology.*
