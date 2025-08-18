---
title: Person Ontology
sidebar_label: Person
iri: cco:ont00001262
---

# Person Ontology

**Definition:** Domain ontology for persons and individuals, extending CCO person concepts with AI-focused professional relationships and skills.

**Parent:** [CCO Person](/cco/agent)

**See also:** [Organization](/abi/organization), [Skill](/abi/skill)

## Modeling Notes

- Extends CCO person concepts for AI and enterprise contexts
- Models professional skills and competencies
- Supports foundry curation for enterprise and personal AI contexts
- Integrates with LinkedIn professional presence
- Includes personal data properties (names, dates)

## Core Person Concepts

### Personal Identity
- **First Name** - Given name of the person
- **Last Name** - Family name of the person  
- **Date of Birth** - Birth date information
- **Legal Name** - Formal registered name

### Professional Skills
- **Skill Relationship** - Connection between person and professional capabilities
- **Skill Competency** - Level of expertise in specific skills
- **Professional Experience** - Work history and background

### Social Presence
- **LinkedIn Profile** - Professional social media presence
- **Website** - Personal or professional web presence
- **Professional Network** - Connections and relationships

## Implementation Example

```turtle
# Person with professional skills
abi:john_doe a cco:ont00001262 ; # Person
    rdfs:label "John Doe"@en ;
    abi:first_name "John" ;
    abi:last_name "Doe" ;
    abi:date_of_birth "1985-03-15"^^xsd:date ;
    abi:hasSkill abi:python_programming, abi:machine_learning ;
    abi:hasLinkedInPage abi:john_doe_linkedin ;
    abi:is_curated_in_foundry "enterprise_management_foundry", "personal_ai_foundry" .

# Professional skills
abi:python_programming a cco:ont00000089 ; # Skill
    rdfs:label "Python Programming"@en ;
    abi:isSkillOf abi:john_doe ;
    abi:is_curated_in_foundry "enterprise_management_foundry" .

abi:machine_learning a cco:ont00000089 ; # Skill
    rdfs:label "Machine Learning"@en ;
    abi:isSkillOf abi:john_doe ;
    abi:is_curated_in_foundry "ai_development_foundry" .

# LinkedIn integration
abi:john_doe_linkedin a abi:LinkedInProfilePage ;
    rdfs:label "John Doe LinkedIn Profile"@en ;
    abi:isLinkedInPageOf abi:john_doe ;
    abi:linkedin_public_url "https://www.linkedin.com/in/johndoe" .
```

## Foundry Integration

Person concepts are curated across multiple foundries:

- **Enterprise Management Foundry** - Professional roles, organizational relationships
- **Personal AI Foundry** - Individual productivity, personal assistance contexts
- **AI Development Foundry** - Technical skills, AI research capabilities

## Key Properties

### Object Properties
- **abi:hasSkill** / **abi:isSkillOf** - Person-skill relationships
- **abi:hasLinkedInPage** / **abi:isLinkedInPageOf** - Social media presence
- **abi:hasLegalName** / **abi:isLegalNameOf** - Formal name relationships

### Data Properties
- **abi:first_name** - Given name (xsd:string)
- **abi:last_name** - Family name (xsd:string)  
- **abi:date_of_birth** - Birth date (xsd:date)

## Integration with Organization

```turtle
# Person in organizational context
abi:jane_smith a cco:ont00001262 ; # Person
    rdfs:label "Jane Smith"@en ;
    cco:ont00001226 abi:acme_employment ; # Act of Employment
    abi:hasSkill abi:ai_research, abi:team_leadership .

# Employment relationship
abi:acme_employment a cco:ont00001226 ; # Act of Employment
    rdfs:label "Jane Smith at Acme Corp"@en ;
    cco:ont00000217 abi:jane_smith ; # has agent
    cco:ont00000217 abi:acme_corp . # has agent
```
