# Foundation Dataset Cards

## Purpose

This repository is a public template and standards repo for Hugging Face dataset cards, dataset release readiness, sanitation checklists, governance review, and public/private data boundaries for future reviewed Foundation-aligned dataset releases.

It contains templates, standards, synthetic examples, Mermaid maps, and validation checks only. It does not contain dataset files, raw data, sanitized samples, private data, dataset exports, private telemetry, private review records, donor data, student data, volunteer data, customer data, or claims that any real Foundation dataset is released.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded / published |
| Entity owner | 218 Network Foundation |
| Authority | Human Foundation data governance authority with privacy, source, safety, and release review |
| Canonical source | GitHub public standards and template source; private data review stays outside this repo |
| GitHub role | Public dataset-card companion standards and release documentation |
| Hugging Face role | Template source for future reviewed `218-network/*` dataset cards |
| Portfolio role | Future proof surface for dataset-card and data-boundary discipline after Alexandra review |
| Public boundary | Templates, synthetic examples, release gates, and public-safe diagrams only |

## Related Public Repositories

| Repository | Relationship |
| --- | --- |
| [`K-ussade`](https://github.com/K-ussade/K-ussade) | Alexandra's public GitHub profile and status vocabulary. |
| [`foundation-graph-kit`](https://github.com/K-ussade/foundation-graph-kit) | Mermaid graph classes and public-safe diagram rules. |
| [`foundation-public-roadmap`](https://github.com/K-ussade/foundation-public-roadmap) | Public status ledger for planned and scaffolded release surfaces. |
| [`foundation-doc-templates`](https://github.com/K-ussade/foundation-doc-templates) | General documentation templates and review gates. |
| [`foundation-model-cards`](https://github.com/K-ussade/foundation-model-cards) | Model-card standards for future reviewed models. |

## Template Inventory

| Path | Role |
| --- | --- |
| `templates/dataset-card.base.md` | Base Hugging Face dataset card template. |
| `templates/dataset-card.public-reports.md` | Public reports dataset-card variant. |
| `templates/dataset-card.civic-reference.md` | Civic reference dataset-card variant. |
| `templates/dataset-card.telemetry-sample.md` | High-review telemetry sample card variant for synthetic or approved public samples only. |
| `templates/sanitation-checklist.template.md` | Sanitation review checklist template. |
| `templates/governance-review-checklist.template.md` | Governance review checklist template. |
| `templates/release-notes.template.md` | Dataset release notes template. |
| `templates/github-companion-readme.template.md` | GitHub companion README template. |
| `templates/release-checklist.template.md` | Dataset release checklist template. |

## Required Dataset Card Sections

Every dataset-card template includes:

- Status
- Dataset summary
- Data source
- Collection process
- Allowed uses
- Forbidden uses
- Privacy exclusions
- PII statement
- Bias/limitations
- Governance review status
- Maintenance plan
- GitHub companion link placeholder
- `218.network` placeholder

## Public Boundary

Allowed:

- dataset-card templates;
- sanitation checklist templates;
- governance review checklist templates;
- release-readiness standards;
- synthetic examples clearly labeled synthetic;
- public-safe Mermaid diagrams;
- planned status language without release claims.

Forbidden:

- dataset files;
- raw datasets;
- private datasets;
- unapproved sanitized samples;
- donor private data;
- student data;
- school private data;
- volunteer private data;
- customer data;
- private Foundation operations;
- private partner records;
- private telemetry;
- exact sensitive infrastructure locations;
- security-sensitive NEURONA operational details;
- private training corpora;
- sealed YOSO-YAi LLC IP;
- secrets, tokens, and API keys.

## Non-Claims

This repository does not claim that any dataset has been collected, sanitized, reviewed, uploaded, released, deployed, or approved for public use.

## Validation

Run:

```bash
scripts/validate-dataset-cards.sh
```

## First Milestone

Dataset cards v0.1 is complete when the templates, synthetic example, standards, release checklist, sanitation checks, linking rules, validation script, and Mermaid maps are reviewed by human Foundation authority.
