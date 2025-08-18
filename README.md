# Naas Ontology

BFO-based semantic framework incorporating Common Core Ontologies, extended through domain-specific and application-level ontologies for AI-powered knowledge management.

[![Node.js](https://img.shields.io/badge/Node.js->=20.0-green.svg)](https://nodejs.org/)
[![Docusaurus](https://img.shields.io/badge/Docusaurus-3.6.3-blue.svg)](https://docusaurus.io/)
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

- **Top-Level** - BFO core concepts and OWL definitions
- **Mid-Level** - CCO extensions (Agent, Event, Quality ontologies)  
- **Domain-Level** - Specific domains (AI Agent, Organization, Capability ontologies)
- **Application-Level** - Implementation-specific (Foundry, DataSource ontologies)

### Key Features

- **BFO-Grounded** - All concepts properly grounded in formal ontological principles
- **Process-Centric** - AI routing based on BFO's 7 Buckets framework
- **Modular Design** - Each AI module (Claude, Gemini, Gemma, Qwen) has its own ontologies
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
│   │   ├── index.md               # Landing page
│   │   └── ontology-essentials/   # Complete ontology framework
│   │       ├── introduction.md    # Overview and architecture
│   │       ├── bfo-foundation.md  # BFO 7 Buckets framework
│   │       ├── cco-extensions.md  # Common Core Ontologies
│   │       ├── domain-ontologies.md # Domain-specific concepts
│   │       ├── application-layer.md # Implementation layer
│   │       └── process-routing.md   # Process-centric AI routing
│   ├── src/               # Custom React components
│   └── static/            # Static assets
├── resources/             # ABI repository analysis
│   └── .abi/             # Cloned ABI repository for reference
└── README.md             # This file
```

### Key Directories

- **`site/docs/ontology-essentials/`** - Complete ontology framework documentation
- **`site/src/`** - Custom React components and pages
- **`site/static/`** - Images, assets, and downloadable files
- **`site/docusaurus.config.js`** - Docusaurus configuration
- **`resources/.abi/`** - ABI repository for ontology implementation reference

## Available Scripts

| Command | Description |
|---------|-------------|
| `npm start` | Start development server on port 3004 |
| `npm run build` | Build for production |
| `npm run serve` | Serve production build locally |
| `npm run clear` | Clear Docusaurus cache |
| `npm run swizzle` | Customize Docusaurus components |
| `npm run deploy` | Deploy to GitHub Pages |

## Ontology Documentation Structure

The documentation is organized into six comprehensive sections:

1. **Introduction** - Complete ontological architecture and principles
2. **BFO Foundation** - Basic Formal Ontology's 7 Buckets framework
3. **CCO Extensions** - Common Core Ontologies integration
4. **Domain Ontologies** - AI Agent, Organization, Capability domains
5. **Application Layer** - Foundry and DataSource implementations
6. **Process-Centric Routing** - AI routing based on cognitive processes

Each section includes:
- **Mermaid diagrams** - Visual representations of ontological structures
- **TTL code blocks** - Real Turtle/RDF examples
- **Implementation details** - How concepts are used in ABI

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
- Include TTL code examples for all ontological concepts
- Follow BFO and CCO principles in all examples
- Use standardized Mermaid diagrams with proper styling
- Ground all concepts in formal ontological categories
- Test all links and references

### File Organization

- Place ontology documentation in `docs/ontology-essentials/`
- Use descriptive filenames with hyphens (e.g., `bfo-foundation.md`)
- Follow the 4-level ontological hierarchy (Top → Mid → Domain → Application)
- Include proper BFO grounding in all new concepts
- Update navigation in `sidebars.js` when adding new sections

## Support

- **Ontology Documentation**: [ontology.naas.ai](https://ontology.naas.ai)
- **ABI Repository**: [github.com/jupyter-naas/abi](https://github.com/jupyter-naas/abi)
- **Community Slack**: [Join Here](https://join.slack.com/t/naas-club/shared_invite/zt-1970s5rie-dXXkigAdEJYc~LPdQIEaLA)
- **GitHub Issues**: [Report bugs or request features](https://github.com/jupyter-naas/ontology/issues)

---

**Built with ❤️ using [Docusaurus](https://docusaurus.io/)**