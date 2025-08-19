# Naas Ontology

BFO-based semantic framework incorporating Common Core Ontologies, extended through domain-specific and application-level ontologies for AI-powered knowledge management.

[![Node.js](https://img.shields.io/badge/Node.js->=20.0-green.svg)](https://nodejs.org/)
[![Docusaurus](https://img.shields.io/badge/Docusaurus-3.8.1-blue.svg)](https://docusaurus.io/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**🚀 [Live Documentation](https://ontology.naas.ai)** | **🧠 [ABI Repository](https://github.com/jupyter-naas/abi)** | **💬 [Community](https://join.slack.com/t/naas-club/shared_invite/zt-1970s5rie-dXXkigAdEJYc~LPdQIEaLA)**

## Table of Contents

- [Overview](#overview)
- [Quick Start](#quick-start)
- [Project Structure](#project-structure)
- [Available Scripts](#available-scripts)
- [Contributing](#contributing)
- [Support](#support)

## Overview

This repository contains the official documentation for the **Naas Ontology**, a comprehensive semantic framework that incorporates **Basic Formal Ontology (BFO)** and **Common Core Ontologies (CCO)**, extending them through domain-specific and application-level ontologies for AI-powered knowledge management.

The Naas Ontology provides the foundational semantic structure for the **Agentic Brain Infrastructure (ABI)**, enabling process-centric AI routing and intelligent knowledge graph management.

## Ontological Architecture

The Naas Ontology follows a principled 4-level hierarchy:

- **Top-Level** - BFO Slim (essential foundational classes for AI systems)
- **Mid-Level** - CCO extensions (Agent, Event, Quality, Organization ontologies)  
- **Domain-Level** - ABI concepts (AI Agent, Workflow, Trigger, Capability ontologies)
- **Application-Level** - Third-party integrations (LinkedIn, Microsoft Office, Google Workspace)

### Key Features

- **BFO-Grounded** - All concepts properly grounded in formal ontological principles
- **Process-Centric** - AI routing based on BFO's 7 Buckets framework
- **Enhanced Code Highlighting** - Proper Turtle and SPARQL syntax highlighting
- **Comprehensive Coverage** - 74+ documented concepts across all ontological levels
- **Application Integrations** - Third-party system ontologies (Office, Google Workspace, LinkedIn)
- **Design Patterns** - Reusable CCO modeling patterns for consistent development
- **Production Ready** - Used in the Agentic Brain Infrastructure (ABI)

## Quick Start

### Prerequisites

- **Node.js** >= 20.0
- **npm** or **yarn**
- **Docker** (optional, for containerized development across multiple codebases)


### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/jupyter-naas/ontology.git
   cd ontology
   ```

2. **Install dependencies**
   ```bash
   cd site
   npm install
   ```

3. **Start development server** (from the `site/` directory)
   ```bash
   cd site
   npm start
   ```

4. **Open your browser**
   
   [http://localhost:3004](http://localhost:3004)

The site will automatically reload when you make changes to the documentation files.

## Development

The development server from the installation steps above provides hot reloading - changes are reflected live without restarting the server.

### Building for Production

```bash
cd site
npm run build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.

### Testing the Build

```bash
cd site
npm run serve
```

Serves the production build locally for testing purposes.

## Project Structure

This ontology documentation site is built with Docusaurus and focuses on explaining the complete Naas Ontology framework.

```
ontology/
├── site/                           # Docusaurus application
│   ├── docs/                      # Documentation content
│   │   ├── ontology-essentials/   # Complete ontology framework
│   │   │   ├── introduction.md    # Overview and architecture
│   │   │   ├── top-level.md       # BFO Slim foundation
│   │   │   ├── mid-level.md       # CCO extensions
│   │   │   ├── domain-level.md    # ABI domain concepts
│   │   │   ├── application-level.md # Application integrations
│   │   │   └── process-routing.md # Process-centric AI routing
│   │   ├── bfo/                   # BFO Slim documentation
│   │   ├── cco/                   # CCO documentation
│   │   ├── abi/                   # ABI domain documentation
│   │   ├── applications/          # Third-party integrations
│   │   ├── design-patterns/       # CCO modeling patterns
│   │   ├── guides/                # Modeling conventions
│   │   └── reference/             # Prefixes and glossary
│   ├── src/               # Custom React components
│   └── static/            # Static assets
├── resources/             # ABI repository analysis
├── scripts/               # Build and deployment scripts
└── README.md             # This file
```

### Key Directories

- **`site/docs/ontology-essentials/`** - Complete ontology framework documentation
- **`site/docs/bfo/`** - BFO Slim classes and relations
- **`site/docs/cco/`** - CCO foundational concepts
- **`site/docs/abi/`** - ABI domain-specific concepts
- **`site/docs/applications/`** - Third-party system integrations
- **`site/docs/design-patterns/`** - Reusable CCO modeling patterns
- **`site/src/`** - Custom React components and pages
- **`site/static/`** - Images, assets, and downloadable files
- **`site/docusaurus.config.js`** - Docusaurus configuration

## Available Scripts

| Command | Description |
|---------|-------------|
| `npm start` | Start development server on port 3004 |
| `npm run build` | Build for production |
| `npm run serve` | Serve production build locally |
| `npm run clear` | Clear Docusaurus cache |
| `npm run swizzle` | Customize Docusaurus components |
| `npm run deploy` | Deploy to GitHub Pages |

## Documentation Structure

The documentation is organized into comprehensive sections covering all ontological levels:

### Core Framework
1. **Ontology Essentials** - Complete architectural overview and principles
2. **BFO** - Basic Formal Ontology Slim (essential foundational classes)
3. **CCO** - Common Core Ontologies (Agent, Event, Quality, Organization)
4. **ABI** - Agentic Brain Infrastructure domain concepts
5. **Applications** - Third-party system integrations (Office, Google, LinkedIn)

### Supporting Documentation
6. **Design Patterns** - Reusable CCO modeling patterns
7. **Guides** - Modeling conventions and best practices
8. **Reference** - Prefixes, glossary, and technical specifications

### Features
- **Enhanced Code Highlighting** - Proper Turtle and SPARQL syntax highlighting
- **Mermaid Diagrams** - Visual representations of ontological structures
- **Interactive Examples** - Real Turtle/RDF code with line highlighting
- **Cross-References** - Comprehensive linking between concepts
- **Search Integration** - Algolia-powered semantic search

## Contributing

We welcome contributions to improve the documentation!

### Making Changes

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/improve-docs
   ```
3. **Make your changes**
4. **Test locally**
   ```bash
   cd site
   npm start
   ```
5. **Submit a pull request**

### Writing Guidelines

- Use clear, concise language with ontological precision
- Include Turtle code examples for all ontological concepts
- Follow BFO and CCO principles in all examples
- Use standardized Mermaid diagrams with proper styling
- Ground all concepts in formal ontological categories
- Test all links and references
- Use PascalCase for all markdown file names to match ontology conventions

### File Organization

- **Ontology Essentials**: Place framework docs in `docs/ontology-essentials/`
- **BFO Documentation**: Place in `docs/bfo/` with proper hierarchy
- **CCO Documentation**: Place in `docs/cco/` following CCO structure
- **ABI Documentation**: Place in `docs/abi/` for domain concepts
- **Applications**: Place in `docs/applications/` for third-party integrations
- Follow the 4-level ontological hierarchy (Top → Mid → Domain → Application)
- Include proper BFO grounding in all new concepts
- Update navigation in `sidebars.js` when adding new sections

## Support

- **Ontology Documentation**: [ontology.naas.ai](https://ontology.naas.ai)
- **Platform Documentation**: [docs.naas.ai](https://docs.naas.ai)
- **ABI Repository**: [github.com/jupyter-naas/abi](https://github.com/jupyter-naas/abi)
- **Community Slack**: [Join Here](https://join.slack.com/t/naas-club/shared_invite/zt-1970s5rie-dXXkigAdEJYc~LPdQIEaLA)
- **GitHub Issues**: [Report bugs or request features](https://github.com/jupyter-naas/ontology/issues)

---

**Built with ❤️ using [Docusaurus](https://docusaurus.io/)**