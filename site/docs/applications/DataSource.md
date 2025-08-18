---
title: Data Source Ontology
sidebar_label: Data Source
iri: abi:DataSource
---

# Data Source Ontology

**Definition:** An entity that provides access to data or information, representing the origin or provider of data that can be consumed by other systems or processes.

**Parent:** [Generically Dependent Continuant](/bfo/continuant/GenericallyDependentContinuant)

**See also:** [Data Source Component](/abi/data-source-component), [Backing Data Source](/abi/backing-data-source)

:::note
This application ontology is not fully vetted and is subject to changes as we refine the modeling approach for third-party integrations.
:::

## Modeling Notes

- Application-level ontology for managing data sources and relationships
- Provides systematic data source hierarchy and component structure
- Includes data quality and metadata management concepts
- Supports backing relationships between entities and their data sources
- Essential for AI system data integration and quality monitoring

## Data Source Hierarchy

### Core Data Source Types
- **Database Source** - Structured data in database systems
- **API Source** - Data through Application Programming Interfaces
- **File System Source** - Data stored in files within file systems
- **Stream Source** - Real-time data streams

### Data Source Components
- **Database Table** - Specific tables within databases
- **API Endpoint Component** - Specific endpoints within APIs
- **File Directory** - Directories containing data files
- **Data Stream** - Individual data streams

## Data Quality Framework

### Quality Concepts
- **Data Quality** - Reliability, accuracy, and completeness characteristics
- **Data Freshness** - How recently data was updated or refreshed
- **Data Accuracy** - How correctly data represents real-world entities

### Metadata Management
- **Data Schema** - Structure and format definitions
- **Source Type** - Technology categorization (REST_API, SQL_DATABASE, etc.)
- **Source Path** - Location or path information
- **Extracted At** - Timestamp of data extraction

## Implementation Example

```turtle
# Enterprise data source with quality metrics
abi:customer_database a abi:DatabaseSource ;
    rdfs:label "Customer Database"@en ;
    abi:hasComponent abi:customer_table, abi:orders_table ;
    abi:source_type "SQL_DATABASE" ;
    bfo:BFO_0000086 abi:high_data_quality . # has quality

# Data source component
abi:customer_table a abi:DatabaseTable ;
    rdfs:label "Customer Table"@en ;
    abi:isComponentOf abi:customer_database ;
    abi:hasDataSchema abi:customer_schema .

# Data quality assessment
abi:high_data_quality a abi:DataQuality ;
    rdfs:label "High Data Quality"@en ;
    abi:hasAccuracyScore "0.95"^^xsd:decimal ;
    abi:hasFreshnessScore "0.90"^^xsd:decimal .

# Backing relationship
abi:customer_report abi:hasBackingDataSource abi:customer_database .
```

## Key Properties

- **abi:hasComponent** / **abi:isComponentOf** - Data source composition
- **abi:hasBackingDataSource** - Entity to data source relationships
- **abi:dependsOn** - Data source dependencies
- **abi:hasDataSchema** - Schema definitions
- **abi:extracted_at** - Extraction timestamps
