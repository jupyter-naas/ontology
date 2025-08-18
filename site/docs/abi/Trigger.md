---
title: Trigger
sidebar_label: Trigger
iri: abi:Trigger
---

# Trigger

**Definition:** An event or condition that initiates AI system processes, workflows, or agent actions.

**Parent:** [Process Boundary](/bfo/occurrent/process-boundary)

**See also:** [Event](/abi/event), [Workflow](/abi/workflow)

## Modeling Notes

- Triggers are temporal boundaries that mark the initiation of AI processes
- They can be event-driven, scheduled, or condition-based
- Important for reactive AI systems and automated workflows
- Can cascade to trigger additional processes and workflows
- Foundation for event-driven architecture in AI systems

## Examples

- User request submission triggers
- Scheduled workflow execution triggers
- System alert and notification triggers
- Data availability triggers for processing
- Performance threshold triggers for scaling

## Key Properties

- **Trigger Condition** - The specific event or condition that activates the trigger
- **Target Process** - The workflow or process that gets initiated
- **Trigger Frequency** - How often the trigger can be activated
- **Priority Level** - Relative importance for trigger processing
- **Timeout Settings** - Maximum wait time before trigger expires
