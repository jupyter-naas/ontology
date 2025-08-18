---
title: CCO Overview
sidebar_label: CCO Overview
sidebar_position: 1
---

# Common Core Ontologies (CCO)

The **Common Core Ontologies (CCO)** extend BFO with mid-level concepts that are common across many domains. The Naas Ontology incorporates and extends CCO with AI-specific concepts.

## CCO Architecture

CCO provides systematic extensions of BFO with practical, reusable concepts:

```mermaid
%%{init: {'theme':'base', 'themeVariables': {'primaryColor': '#f8fafc', 'primaryTextColor': '#1e293b', 'primaryBorderColor': '#e2e8f0', 'lineColor': '#64748b'}}}%%
graph TD
    subgraph "Foundation"
        BFO[BFO Foundation]
    end
    
    subgraph "Common Core Ontologies"
        CCO[CCO Framework]
        Agent[Agent Ontology<br/>Agents & Organizations]
        Event[Event Ontology<br/>Acts & Processes]
        Quality[Quality Ontology<br/>Measurements & Units]
        Artifact[Artifact Ontology<br/>Systems & Components]
        Info[Information Ontology<br/>Documents & Data]
    end
    
    BFO --> CCO
    CCO --> Agent
    CCO --> Event
    CCO --> Quality
    CCO --> Artifact
    CCO --> Info
    
    classDef userExp fill:#e8f5e8,stroke:#4caf50,stroke-width:2px,color:#2e7d32
    classDef platform fill:#e3f2fd,stroke:#2196f3,stroke-width:1px,color:#1565c0
    classDef aiEngine fill:#fff3e0,stroke:#ff9800,stroke-width:2px,color:#e65100
    
    class BFO userExp
    class CCO,Agent,Event platform
    class Quality,Artifact,Info aiEngine
```

## Core CCO Concepts

### Agents and Organizations
- **[Agent](/cco/Agent)** - Entities capable of performing actions
- **[Organization](/cco/Organization)** - Collective agents with shared goals

### Information and Planning
- **[Information Object](/cco/InformationObject)** - Information-bearing entities and content
- **[Plan](/cco/Plan)** - Specifications for achieving objectives
- **[Process Regulation](/cco/ProcessRegulation)** - Governance and control directives

### Capabilities and Roles
- **[Capability](/cco/Capability)** - Agent capabilities and competencies
- **[Role](/cco/Role)** - Context-dependent agent responsibilities

### Events and Activities
- **[Event](/cco/Event)** - Bounded processes of significance
- **[Act](/cco/Act)** - Agent-driven events and activities
- **[Social Act](/cco/SocialAct)** - Multi-agent social interactions
- **[Act of Association](/cco/ActOfAssociation)** - Agent partnerships and collaborations
- **[Act of Employment](/cco/ActOfEmployment)** - Employment relationship establishment

### Qualities and Artifacts
- **[Quality](/cco/Quality)** - Properties and characteristics of entities
- **[Artifact](/cco/Artifact)** - Human-made objects and systems

## See Also

- [Ontology Essentials - Mid-Level](/ontology-essentials/mid-level) - Detailed CCO implementation
- [BFO Foundation](/bfo) - Underlying ontological framework
- [ABI](/abi) - AI-specific extensions of CCO concepts
