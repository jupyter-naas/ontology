---
title: Bearer Of
sidebar_label: Bearer Of
iri: bfo:BFO_0000101
---

# Bearer Of

**Definition:** A relation between a material entity and a realizable entity (disposition, function, or role) that inheres in it, indicating what the entity can potentially do or become.

**Parent:** [BFO Relations](/bfo/relations)

**See also:** [Has Quality](/bfo/relations/HasQuality), [Disposition](/bfo/continuant/Disposition), [Role](/bfo/continuant/Role)

## Modeling Notes

- Connects material entities to their realizable entities
- Realizable entities include dispositions, functions, and roles
- Essential for modeling AI agent capabilities and roles
- Different from "has quality" - focuses on potential rather than actual characteristics
- Critical for process-centric AI reasoning

## Usage Examples

### AI Agent Roles
```turtle
# AI agent with specialized roles
abi:claude_agent a abi:AIAgent ;
    rdfs:label "Claude AI Agent"@en ;
    bfo:BFO_0000101 abi:research_assistant_role,
                    abi:creative_writer_role,
                    abi:code_reviewer_role .

# Specialized roles
abi:research_assistant_role a abi:ResearchAssistantRole ;
    rdfs:label "Research Assistant Role"@en ;
    skos:definition "Role of providing research support and analysis."@en .

abi:creative_writer_role a abi:CreativeWriterRole ;
    rdfs:label "Creative Writer Role"@en ;
    skos:definition "Role of generating creative content and narratives."@en .
```

### AI System Functions
```turtle
# AI system with functional capabilities
abi:translation_system a abi:AISystem ;
    rdfs:label "Translation AI System"@en ;
    bfo:BFO_0000101 abi:translation_function,
                    abi:language_detection_function,
                    abi:quality_assessment_function .

# System functions
abi:translation_function a abi:TranslationFunction ;
    rdfs:label "Translation Function"@en ;
    skos:definition "Function of translating text between languages."@en .
```

### AI Agent Dispositions
```turtle
# AI agent with learning dispositions
abi:adaptive_agent a abi:AIAgent ;
    rdfs:label "Adaptive AI Agent"@en ;
    bfo:BFO_0000101 abi:learning_disposition,
                    abi:adaptation_disposition,
                    abi:improvement_disposition .

# Learning dispositions
abi:learning_disposition a abi:LearningDisposition ;
    rdfs:label "Learning Disposition"@en ;
    skos:definition "Disposition to acquire new knowledge and skills."@en .
```

## Formal Properties

- **Domain restricted** - Only material entities can be bearers
- **Range specific** - Only realizable entities can be borne
- **Existentially dependent** - Realizable entities depend on their bearers

## AI Applications

### Role-Based Agent Selection
- Selecting appropriate AI agents based on their roles
- Matching agent capabilities to task requirements
- Implementing role-based access control

### Functional System Design
- Designing AI systems based on required functions
- Decomposing complex capabilities into functional components
- Implementing modular AI architectures

### Capability-Driven Processes
- Routing processes based on agent dispositions
- Matching process requirements to agent capabilities
- Implementing adaptive AI workflows

## Realizable Entity Types

### Roles
- **Research Assistant Role** - Supporting research activities
- **Creative Writer Role** - Generating creative content
- **Code Reviewer Role** - Reviewing and improving code
- **Truth Seeker Role** - Analyzing and validating information

### Functions
- **Translation Function** - Converting between languages
- **Analysis Function** - Examining and interpreting data
- **Generation Function** - Creating new content
- **Validation Function** - Checking accuracy and quality

### Dispositions
- **Learning Disposition** - Tendency to acquire knowledge
- **Adaptation Disposition** - Ability to adjust to new conditions
- **Collaboration Disposition** - Tendency to work with others
- **Innovation Disposition** - Propensity for creative solutions

## Process Realization

Realizable entities are realized through processes:

```turtle
# Role realization through process
abi:research_process a abi:ResearchProcess ;
    rdfs:label "AI Research Process"@en ;
    bfo:BFO_0000055 abi:research_assistant_role . # realizes

# Agent participates in realizing process
abi:claude_agent bfo:BFO_0000056 abi:research_process . # participates in
```
