---
title: Modeling Conventions
sidebar_label: Modeling Conventions
---

# Modeling Conventions

This guide establishes consistent conventions for modeling concepts in the Naas Ontology.

## Naming Conventions

### Class Names
- Use **PascalCase** for class names: `AIAgent`, `CognitiveCapability`
- Be descriptive and unambiguous: `TruthSeekingCapability` not `TSCapability`
- Include domain context when needed: `AIProcessingAct` not just `ProcessingAct`

### Property Names
- Use **camelCase** for property names: `hasCapability`, `realizesProcess`
- Use verb phrases for object properties: `participatesIn`, `isRealizedBy`
- Use noun phrases for data properties: `hasValue`, `hasScore`

### Individual Names
- Use **snake_case** for individuals: `claude_agent`, `grok_instance`
- Include descriptive context: `ethical_reasoning_capability_001`

## BFO Grounding Requirements

### Systematic Classification
Every concept must be properly grounded in BFO:

```turtle
# Correct: Proper BFO grounding
abi:AIAgent a owl:Class ;
    rdfs:subClassOf cco:ont00001017 ; # Agent (which extends BFO Independent Continuant)
    rdfs:label "AI Agent"@en .

# Incorrect: Direct BFO extension without CCO mediation
abi:AIAgent a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000004 ; # Should use CCO Agent instead
    rdfs:label "AI Agent"@en .
```

### Required Metadata
All classes must include:
- `rdfs:label` - Human-readable name
- `skos:definition` - Clear, precise definition
- `skos:example` - At least one concrete example
- Proper parent class relationship

```turtle
abi:CognitiveCapability a owl:Class ;
    rdfs:subClassOf bfo:BFO_0000017 ; # Realizable Entity
    rdfs:label "Cognitive Capability"@en ;
    skos:definition "A realizable entity that represents a cognitive ability of an AI system."@en ;
    skos:example "Truth-seeking analysis, ethical reasoning, multimodal processing."@en .
```

## Relationship Patterns

### Use BFO Relations When Possible
Prefer standard BFO relations over custom properties:

```turtle
# Preferred: Standard BFO relations
abi:claude_agent bfo:BFO_0000087 abi:ethical_reasoning_role . # has role
abi:ethical_process bfo:BFO_0000066 abi:ethical_reasoning_role . # realizes

# Avoid: Custom relations when BFO relations exist
abi:claude_agent abi:hasRole abi:ethical_reasoning_role .
```

### Property Hierarchies
Organize custom properties under BFO relations:

```turtle
abi:hasCapability a owl:ObjectProperty ;
    rdfs:subPropertyOf bfo:BFO_0000087 ; # has role
    rdfs:label "has capability"@en ;
    rdfs:domain abi:AIAgent ;
    rdfs:range abi:CognitiveCapability .
```

## Documentation Standards

### Definition Quality
Definitions must be:
- **Precise** - Clearly specify the concept boundaries
- **Non-circular** - Don't use the term being defined
- **Differentiating** - Explain how it differs from similar concepts
- **Context-appropriate** - Suitable for the AI domain

### Example Requirements
Examples should be:
- **Concrete** - Specific instances, not abstract descriptions
- **Relevant** - Appropriate to the AI/ontology domain
- **Diverse** - Cover different use cases when possible
- **Current** - Use contemporary AI systems and technologies

## Quality Assurance

### Validation Checklist
- [ ] Proper BFO grounding through appropriate parent classes
- [ ] Complete metadata (label, definition, example)
- [ ] Consistent naming conventions
- [ ] Appropriate use of BFO relations
- [ ] Clear differentiation from similar concepts
- [ ] Concrete, relevant examples

### Common Mistakes to Avoid
1. **Direct BFO extension** - Always use CCO mediation when appropriate
2. **Circular definitions** - Don't use the term in its own definition
3. **Vague examples** - Provide specific, concrete instances
4. **Inconsistent naming** - Follow established conventions
5. **Missing metadata** - Include all required properties

## Integration with Foundries

### Foundry Curation
All concepts should specify their foundry context:

```turtle
abi:AIAgent abi:is_curated_in_foundry "ai_development_foundry", "personal_ai_foundry" .
```

### Access Control Considerations
Consider who needs access to concepts when assigning foundries:
- **Enterprise concepts** → `enterprise_management_foundry`
- **AI development** → `ai_development_foundry`
- **Personal AI** → `personal_ai_foundry`
- **Knowledge management** → `knowledge_management_foundry`
