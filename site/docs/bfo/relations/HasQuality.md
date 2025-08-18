---
title: Has Quality
sidebar_label: Has Quality
iri: bfo:BFO_0000086
---

# Has Quality

**Definition:** A relation between a material entity and a quality that inheres in it, representing characteristics or attributes of the entity.

**Parent:** [BFO Relations](/bfo/relations)

**See also:** [Bearer Of](/bfo/relations/BearerOf), [Quality](/bfo/continuant/Quality)

## Modeling Notes

- Fundamental relation connecting entities to their qualities
- Only material entities can have qualities in BFO
- Qualities are dependent on their bearers
- Essential for modeling AI system performance characteristics
- Used extensively in AI capability and performance modeling

## Usage Examples

### AI System Performance
```turtle
# AI system with performance qualities
abi:claude_system a abi:AISystem ;
    rdfs:label "Claude AI System"@en ;
    bfo:BFO_0000086 abi:high_accuracy,
                    abi:low_latency,
                    abi:constitutional_safety .

# Performance qualities
abi:high_accuracy a abi:ModelAccuracy ;
    rdfs:label "High Model Accuracy"@en ;
    abi:accuracyValue "0.94"^^xsd:decimal .

abi:low_latency a abi:ResponseLatency ;
    rdfs:label "Low Response Latency"@en ;
    abi:latencyValue "150"^^xsd:integer . # milliseconds
```

### AI Agent Capabilities
```turtle
# AI agent with capability qualities
abi:research_agent a abi:AIAgent ;
    rdfs:label "Research AI Agent"@en ;
    bfo:BFO_0000086 abi:analytical_capability,
                    abi:reasoning_quality,
                    abi:truth_seeking_disposition .

# Capability qualities
abi:analytical_capability a abi:AnalyticalCapability ;
    rdfs:label "Strong Analytical Capability"@en ;
    abi:capabilityStrength "high"^^xsd:string .
```

### Data Source Quality
```turtle
# Data source with quality characteristics
abi:customer_database a abi:DataSource ;
    rdfs:label "Customer Database"@en ;
    bfo:BFO_0000086 abi:data_freshness,
                    abi:data_completeness,
                    abi:data_accuracy .

# Data quality attributes
abi:data_freshness a abi:DataFreshness ;
    rdfs:label "High Data Freshness"@en ;
    abi:freshnessScore "0.92"^^xsd:decimal .
```

## Formal Properties

- **Functional for some quality types** - Some entities can have only one instance of certain quality types
- **Domain restricted** - Only material entities can have qualities
- **Existentially dependent** - Qualities cannot exist without their bearers

## AI Applications

### Performance Monitoring
- Tracking AI system performance metrics
- Monitoring model accuracy and latency
- Assessing capability strengths and weaknesses

### Quality Assurance
- Evaluating data source quality
- Measuring AI output quality
- Tracking system reliability metrics

### Capability Assessment
- Modeling AI agent capabilities
- Representing skill levels and competencies
- Tracking capability development over time

## Quality Types in AI Systems

### Performance Qualities
- **Model Accuracy** - Correctness of AI predictions
- **Response Latency** - Speed of AI responses
- **Token Capacity** - Processing capacity limits

### Capability Qualities
- **Reasoning Capability** - Logical reasoning strength
- **Creative Capability** - Creative output quality
- **Analytical Capability** - Analysis depth and accuracy

### System Qualities
- **Reliability** - System uptime and consistency
- **Scalability** - Ability to handle increased load
- **Security** - Protection against threats and vulnerabilities
