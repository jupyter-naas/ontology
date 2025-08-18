---
title: Organization Ontology
sidebar_label: Organization
iri: abi:Organization
---

# Organization Ontology

**Definition:** Domain ontology extending CCO organization concepts for AI-focused commercial entities and strategic relationships.

**Parent:** [CCO Organization](/cco/organization)

**See also:** [Person](/abi/person), [Offering](/abi/offering)

## Modeling Notes

- Extends CCO organization concepts with AI-specific entities
- Includes strategic alliances, partnerships, and collaborative relationships
- Models organizational capabilities (technological and human)
- Supports foundry curation for enterprise management contexts
- Integrates with LinkedIn and website presence

## Core Organization Types

### Commercial Entities
- **Website** - Organization's web presence and identity
- **Ticker** - Stock exchange identification symbols
- **Industry** - Groups of organizations with common characteristics
- **Brand** - Identity and reputation information entities

### Organizational Capabilities
- **Technological Capabilities** - AI, cloud computing, data analytics expertise
- **Human Capabilities** - Software development, consulting, marketing skills

### Strategic Relationships
- **Strategic Alliance** - Agreements between independent entities
- **Partnership** - Formal profit/loss sharing agreements
- **Joint Venture** - Specific project collaborations
- **Research Collaboration** - Shared R&D initiatives

## Organizational Acts

### Collaboration Acts
- **Act of Partnership** - Entering cooperative agreements
- **Act of Joint Venture** - Undertaking specific projects together
- **Act of Marketing Alliance** - Cooperative promotion activities
- **Act of Research Collaboration** - Shared research initiatives

### Corporate Structure Acts
- **Act of Organizational Merger** - Uniting to form single entity
- **Act of Organizational Acquisition** - Gaining control over another organization
- **Act of Subsidiary Establishment** - Creating controlled legal entities

## Implementation Example

```turtle
# AI Research Organization
abi:anthropic a abi:AIResearchOrganization ;
    rdfs:label "Anthropic"@en ;
    abi:hasWebsite abi:anthropic_website ;
    abi:hasCapability abi:ai_research_capability ;
    abi:is_curated_in_foundry "ai_development_foundry" .

# Strategic Alliance
abi:anthropic_google_alliance a abi:ResearchCollaboration ;
    rdfs:label "Anthropic-Google Research Collaboration"@en ;
    abi:involves abi:anthropic, abi:google ;
    abi:focusArea "Constitutional AI Safety" .
```

## Key Properties

- **abi:hasWebsite** / **abi:isWebsiteOf** - Organization-website relationships
- **abi:hasTickerSymbol** / **abi:isTickerSymbolOf** - Stock symbol relationships
- **abi:hasLegalName** / **abi:isLegalNameOf** - Formal name relationships
