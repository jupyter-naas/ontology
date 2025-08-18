---
title: Has Part
sidebar_label: Has Part
iri: bfo:BFO_0000051
---

# Has Part

**Definition:** A relation between a whole and its parts, where the whole contains or includes the part as a constituent component.

**Parent:** [BFO Relations](/bfo/relations)

**See also:** [Part Of](/bfo/relations/PartOf), [Material Entity](/bfo/continuant/MaterialEntity)

## Modeling Notes

- Fundamental mereological relation in BFO
- Inverse of the "part of" relation
- Applies to both continuants and occurrents
- Essential for modeling compositional structures
- Used extensively in AI system architecture modeling

## Usage Examples

### AI System Composition
```turtle
# AI system with components
abi:chatgpt_system a abi:AISystem ;
    rdfs:label "ChatGPT System"@en ;
    bfo:BFO_0000051 abi:language_model,
                    abi:inference_engine,
                    abi:safety_filter .

# Language model as part
abi:language_model a abi:AIModelInstance ;
    rdfs:label "GPT-4 Language Model"@en ;
    bfo:BFO_0000050 abi:chatgpt_system . # part of
```

### Process Decomposition
```turtle
# Complex AI process with sub-processes
abi:document_analysis_process a abi:TextAnalysisProcess ;
    rdfs:label "Document Analysis Process"@en ;
    bfo:BFO_0000051 abi:text_extraction_process,
                    abi:semantic_analysis_process,
                    abi:summary_generation_process .
```

### Organizational Structure
```turtle
# Organization with departments
abi:ai_research_org a abi:AIResearchOrganization ;
    rdfs:label "AI Research Organization"@en ;
    bfo:BFO_0000051 abi:nlp_department,
                    abi:computer_vision_department,
                    abi:robotics_department .
```

## Formal Properties

- **Asymmetric** - If A has part B, then B does not have part A
- **Transitive** - If A has part B and B has part C, then A has part C
- **Irreflexive** - Nothing has itself as a proper part

## AI Applications

### System Architecture
- Modeling how AI systems are composed of subsystems
- Representing hierarchical agent architectures
- Decomposing complex AI workflows

### Knowledge Representation
- Structuring domain knowledge hierarchically
- Representing concept taxonomies
- Modeling information object composition

### Process Modeling
- Breaking down complex AI processes into manageable components
- Representing workflow decomposition
- Modeling parallel and sequential process structures
