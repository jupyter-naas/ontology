---
title: Part Of
sidebar_label: Part Of
iri: bfo:BFO_0000050
---

# Part Of

**Definition:** A relation between a part and its whole, where the part is a constituent component of the whole.

**Parent:** [BFO Relations](/bfo/relations)

**See also:** [Has Part](/bfo/relations/HasPart), [Material Entity](/bfo/continuant/MaterialEntity)

## Modeling Notes

- Fundamental mereological relation in BFO
- Inverse of the "has part" relation
- Applies to both continuants and occurrents
- Essential for modeling hierarchical structures
- Critical for AI system component relationships

## Usage Examples

### AI Model Components
```turtle
# AI model instance as part of system
abi:gpt4_instance a abi:AIModelInstance ;
    rdfs:label "GPT-4 Model Instance"@en ;
    bfo:BFO_0000050 abi:openai_system . # part of

# System contains the model
abi:openai_system a abi:AISystem ;
    rdfs:label "OpenAI System"@en ;
    bfo:BFO_0000051 abi:gpt4_instance . # has part
```

### Process Hierarchy
```turtle
# Sub-process as part of larger process
abi:token_generation a abi:TextGenerationProcess ;
    rdfs:label "Token Generation Process"@en ;
    bfo:BFO_0000050 abi:conversation_process . # part of

# Conversation includes token generation
abi:conversation_process a abi:ConversationProcess ;
    rdfs:label "AI Conversation Process"@en ;
    bfo:BFO_0000051 abi:token_generation . # has part
```

### Organizational Membership
```turtle
# Department as part of organization
abi:ai_research_dept a abi:ResearchDepartment ;
    rdfs:label "AI Research Department"@en ;
    bfo:BFO_0000050 abi:tech_company . # part of

# Company contains department
abi:tech_company a abi:TechnologyCompany ;
    rdfs:label "Technology Company"@en ;
    bfo:BFO_0000051 abi:ai_research_dept . # has part
```

## Formal Properties

- **Asymmetric** - If A is part of B, then B is not part of A
- **Transitive** - If A is part of B and B is part of C, then A is part of C
- **Irreflexive** - Nothing is a proper part of itself

## AI Applications

### Component Architecture
- Modeling how AI components fit into larger systems
- Representing agent-system relationships
- Structuring modular AI architectures

### Process Decomposition
- Representing how complex AI processes break down
- Modeling workflow hierarchies
- Structuring cognitive process chains

### Knowledge Organization
- Organizing domain concepts hierarchically
- Representing taxonomic relationships
- Structuring information architectures

## Relationship with Other Relations

- **Inverse of has-part** - Complementary mereological relationship
- **Supports participates-in** - Parts can participate in processes
- **Enables quality inheritance** - Parts may inherit qualities from wholes
