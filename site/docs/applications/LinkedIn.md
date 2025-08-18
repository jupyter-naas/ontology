---
title: LinkedIn Ontology
sidebar_label: LinkedIn
iri: abi:LinkedInPage
---

# LinkedIn Ontology

**Definition:** Application ontology for LinkedIn pages and professional presence, representing entities' professional identity and networking on the LinkedIn platform.

**Parent:** [Representational Information Content Entity](/cco/information-object)

**See also:** [Person](/abi/Person), [Organization](/abi/Organization)

:::note
This application ontology is not fully vetted and is subject to changes as we refine the modeling approach for third-party integrations.
:::

## Modeling Notes

- Application-level ontology for LinkedIn professional presence
- Extends CCO information content entities for social media context
- Models different types of LinkedIn pages (profile, company, school)
- Includes LinkedIn-specific identifiers and URLs
- Supports foundry curation for enterprise and personal contexts

## LinkedIn Page Types

### Core Page Types
- **LinkedIn Profile Page** - Individual professional profiles
- **LinkedIn Company Page** - Organization professional presence
- **LinkedIn School Page** - Educational institution presence

### Page Characteristics
- **LinkedIn ID** - Unique internal identifier
- **LinkedIn URL** - Internal LinkedIn URL using ID
- **LinkedIn Public ID** - Human-readable public identifier
- **LinkedIn Public URL** - Public-facing LinkedIn URL

## Implementation Example

```turtle
# Person with LinkedIn presence
abi:john_doe a cco:ont00001262 ; # Person
    rdfs:label "John Doe"@en ;
    abi:hasLinkedInPage abi:john_doe_linkedin ;
    abi:is_curated_in_foundry "personal_ai_foundry" .

# LinkedIn profile page
abi:john_doe_linkedin a abi:LinkedInProfilePage ;
    rdfs:label "John Doe LinkedIn Profile"@en ;
    abi:isLinkedInPageOf abi:john_doe ;
    abi:linkedin_id "ACoAAAa5py0Bzrp5_7OmHIsNP6xxxxxxxx" ;
    abi:linkedin_url "https://www.linkedin.com/in/ACoAAAa5py0Bzrp5_7OmHIsNP6xxxxxxxx" ;
    abi:linkedin_public_id "johndoe" ;
    abi:linkedin_public_url "https://www.linkedin.com/in/johndoe" ;
    abi:is_curated_in_foundry "personal_ai_foundry" .

# Organization with LinkedIn presence
abi:tech_company a abi:CommercialOrganization ;
    rdfs:label "Technology Company"@en ;
    abi:hasLinkedInPage abi:tech_company_linkedin ;
    abi:is_curated_in_foundry "enterprise_management_foundry" .

# Company LinkedIn page
abi:tech_company_linkedin a abi:LinkedInCompanyPage ;
    rdfs:label "Technology Company LinkedIn Page"@en ;
    abi:isLinkedInPageOf abi:tech_company ;
    abi:linkedin_public_url "https://www.linkedin.com/company/tech-company" ;
    abi:is_curated_in_foundry "enterprise_management_foundry" .
```

## LinkedIn Integration Properties

### Object Properties
- **abi:hasLinkedInPage** / **abi:isLinkedInPageOf** - Entity-page relationships
- Domain: Person or Organization
- Range: LinkedIn Page types

### Data Properties
- **abi:linkedin_id** - Internal LinkedIn identifier (xsd:string)
- **abi:linkedin_url** - Internal LinkedIn URL (xsd:string)
- **abi:linkedin_public_id** - Public identifier (xsd:string)
- **abi:linkedin_public_url** - Public LinkedIn URL (xsd:string)

## Professional Networking Framework

### Profile Information
- **Professional History** - Work experience and career progression
- **Skills and Endorsements** - Professional competencies and validations
- **Education Background** - Academic and training credentials
- **Professional Network** - Connections and relationship mapping

### Company Presence
- **Company Overview** - Organization description and mission
- **Products and Services** - Business offerings and capabilities
- **Job Postings** - Employment opportunities and requirements
- **Company Updates** - News, announcements, and thought leadership

### Educational Institution Presence
- **Academic Programs** - Degree and certification offerings
- **Faculty Information** - Academic staff and expertise
- **Student Activities** - Campus life and extracurricular programs
- **Alumni Network** - Graduate connections and achievements

## AI Applications

### Professional Matching
- **Skill-based Matching** - Connecting people with complementary skills
- **Opportunity Matching** - Matching professionals with relevant opportunities
- **Network Analysis** - Understanding professional relationship patterns

### Content Intelligence
- **Profile Analysis** - Extracting insights from professional profiles
- **Content Recommendation** - Suggesting relevant professional content
- **Trend Analysis** - Identifying professional and industry trends

### Recruitment Intelligence
- **Candidate Sourcing** - Finding qualified candidates for positions
- **Skills Gap Analysis** - Identifying missing skills in organizations
- **Market Intelligence** - Understanding talent market dynamics

## Foundry Integration

LinkedIn concepts are curated across multiple foundries:

- **Enterprise Management Foundry** - Company pages, organizational presence
- **Personal AI Foundry** - Individual profiles, personal networking
- **Recruitment Foundry** - Talent acquisition and professional matching
