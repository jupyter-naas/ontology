---
title: ABI Overview
sidebar_label: ABI Overview
sidebar_position: 1
---

# Agentic Brain Infrastructure (ABI)

**ABI** provides AI-specific ontological concepts that extend BFO and CCO for artificial intelligence systems, agents, and workflows.

## ABI Architecture

ABI extends the ontological hierarchy with AI-focused concepts:

```mermaid
%%{init: {'theme':'base', 'themeVariables': {'primaryColor': '#f8fafc', 'primaryTextColor': '#1e293b', 'primaryBorderColor': '#e2e8f0', 'lineColor': '#64748b'}}}%%
graph TD
    subgraph "Foundation Layers"
        BFO[BFO Foundation]
        CCO[CCO Mid-Level]
    end
    
    subgraph "ABI AI Extensions"
        ABI[ABI Framework]
        Agent[AI Agent Concepts]
        Workflow[Workflow & Process]
        Trigger[Event & Trigger]
        Event[AI Event Handling]
    end
    
    subgraph "Implementation"
        System[AI Systems]
        Routing[Process-Centric Routing]
        Knowledge[Knowledge Graphs]
    end
    
    BFO --> CCO
    CCO --> ABI
    ABI --> Agent
    ABI --> Workflow
    ABI --> Trigger
    ABI --> Event
    
    Agent --> System
    Workflow --> Routing
    Event --> Knowledge
    
    classDef userExp fill:#e8f5e8,stroke:#4caf50,stroke-width:2px,color:#2e7d32
    classDef platform fill:#e3f2fd,stroke:#2196f3,stroke-width:1px,color:#1565c0
    classDef aiEngine fill:#fff3e0,stroke:#ff9800,stroke-width:2px,color:#e65100
    
    class BFO,CCO userExp
    class ABI,Agent,Workflow,Trigger,Event platform
    class System,Routing,Knowledge aiEngine
```

## Domain-Level Ontologies

- **[AIAgent](/abi/AIAgent)** - AI systems, agents, model instances, and capabilities
- **[Capability](/abi/Capability)** - Cognitive capabilities following Smith & Beverley framework
- **[Message](/abi/Message)** - Communication processes and messaging roles (BFO-based)
- **[Offering](/abi/Offering)** - Products, services, solutions, and market segments
- **[Organization](/abi/Organization)** - Commercial entities, strategic alliances, and partnerships
- **[Person](/abi/Person)** - Individual persons, skills, and professional relationships

## Process-Level Ontologies

- **[Templatable SPARQL](/abi/SparqlQueries)** - Query templates and intent mapping system

## Key Features

### Process-Centric Routing
ABI enables intelligent agent selection based on cognitive processes rather than specific AI models.

### Ontological Grounding
All AI concepts are systematically grounded in BFO categories for consistency and interoperability.

### Modular Architecture
Each AI module extends the core framework with specialized capabilities.

## See Also

- [Applications](/applications) - Specific application integrations extending ABI concepts
- [Ontology Essentials - Domain-Level](/ontology-essentials/domain-level) - Detailed ABI implementation
- [Process-Centric Routing](/ontology-essentials/process-routing) - AI routing based on cognitive processes
- [CCO Extensions](/cco) - Mid-level concepts that ABI extends
