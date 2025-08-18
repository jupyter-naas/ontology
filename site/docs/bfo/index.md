---
title: BFO Overview
sidebar_label: BFO Overview
sidebar_position: 1
---

# Basic Formal Ontology (BFO) - Slim

The **BFO Slim** provides the essential foundational framework for the Naas Ontology. This is a focused subset of [BFO 2020](https://github.com/bfo-ontology) containing only the core classes needed for AI agent and system modeling.

## BFO 7 Buckets Framework

BFO organizes reality using the mnemonic: *"What and who are the materials, how-they-are their qualities, why they can do something are realizable, how-it-happens is the process, when and where give time and space, and how-we-know is the information."*

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

## Navigation Guide

- **[Continuant](/bfo/continuant)** - Entities that persist through time
- **[Occurrent](/bfo/occurrent)** - Entities that happen in time (includes spatial & temporal regions)
- **[Relations](/bfo/relations)** - Fundamental connections between entities

## See Also

- [Ontology Essentials - Top-Level](/ontology-essentials/top-level) - Detailed BFO implementation in Naas
- [CCO Extensions](/cco) - Mid-level concepts building on BFO
- [Process-Centric Routing](/ontology-essentials/process-routing) - BFO-based AI routing
