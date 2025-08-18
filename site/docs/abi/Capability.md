---
title: Capability Ontology
sidebar_label: Capability
iri: capability:Capability
---

# Capability Ontology

**Definition:** A disposition in whose realization some organism or group of organisms has or had an interest.

**Parent:** [Realizable Entity](/bfo/continuant/realizable-entity)

**See also:** [AIAgent](/abi/AIAgent), [Interest](/abi/interest)

## Modeling Notes

- Based on Barry Smith and John Beverley's capability framework
- Capabilities are dispositions that realize interests of organisms or groups
- All functions are capabilities (as per Smith & Beverley)
- Capabilities require material entities as bearers
- Realized through processes that have participants

## Core Capability Types

### Cognitive Capabilities
- **Text Generation Capability** - Generate coherent and contextually appropriate text
- **Code Generation Capability** - Generate functional code in various programming languages
- **Truth-Seeking Capability** - Perform contrarian analysis and seek objective truth
- **Reasoning Capability** - Perform logical reasoning and problem-solving

### Technical Capabilities
- **Data Analysis Capability** - Analyze data and extract meaningful insights
- **Image Analysis Capability** - Analyze and understand visual content
- **Web Search Capability** - Search the web and retrieve current information
- **Translation Capability** - Translate text between different languages

## Implementation Example

```turtle
# AI Agent with capabilities
abi:claude_agent a abi:AIAgent ;
    rdfs:label "Claude Agent"@en ;
    abi:hasCapability capability:TextGenerationCapability,
                      capability:ReasoningCapability .

# Capability realization
abi:text_generation_process a capability:CapabilityRealization ;
    rdfs:label "Text Generation Process"@en ;
    capability:realizesCapability capability:TextGenerationCapability ;
    abi:hasParticipant abi:claude_agent .
```

## Key Properties

- **capability:hasInterestIn** - Relates interest to capability
- **capability:bearerOfInterest** - Relates interest to organism/group
- **capability:realizesCapability** - Relates process to capability realized
