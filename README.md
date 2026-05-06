# Foundation Dataset Cards

## Purpose

This repository is the public dataset-card scaffold for future 218 Network Foundation civic data releases. It defines dataset card standards, privacy and PII exclusion rules, data review checklist, provenance and maintenance standards, planned dataset companions, and dataset release workflow maps.

This repository does not contain raw data, private data, sanitized samples, dataset exports, private telemetry, private review records, or claims that any planned dataset exists.

## Repository Status

| Field | Value |
| --- | --- |
| Status | Scaffolded |
| Entity owner | 218 Network Foundation |
| Authority | Foundation data governance authority with human privacy, source, safety, and release review |
| Canonical source | GitHub public scaffold for approved dataset-card documentation; private data review stays outside this repo |
| GitHub role | Public dataset-card companion and release documentation |
| Hugging Face role | Companion documentation for future reviewed `218-network/*` dataset repositories |
| Public surface | Dataset cards, privacy exclusions, provenance summaries, maintenance standards, and release status documentation |

## Related Public Repositories

| Repository | Relationship |
| --- | --- |
| [`foundation-governance`](https://github.com/K-ussade/foundation-governance) | Governance authority and publication boundary. |
| [`foundation-transparency-reports`](https://github.com/K-ussade/foundation-transparency-reports) | Public release reporting after reviewed dataset releases exist. |
| [`civic-ai-safety-notes`](https://github.com/K-ussade/civic-ai-safety-notes) | Safety notes, limitations, public reliance boundaries, and review gates. |
| [`foundation-model-cards`](https://github.com/K-ussade/foundation-model-cards) | Model-card companion path for future models that depend on released datasets. |

## Planned Dataset Companions

These names are planned release targets only. They are not released datasets and do not imply public Hugging Face dataset repositories, downloadable data, sanitized samples, or approved data releases.

| Planned Hugging Face Dataset | Status | GitHub Companion Status |
| --- | --- | --- |
| `218-network/cleanup-public-reports` | Planned | Dataset card scaffold only. |
| `218-network/municipio-civic-reference` | Planned | Dataset card scaffold only. |
| `218-network/foundation-public-docs` | Planned | Dataset card scaffold only. |
| `218-network/neurona-public-telemetry-samples` | Planned | Dataset card scaffold only. |
| `218-network/school-public-resource-index` | Planned | Dataset card scaffold only. |

## First Files

| Path | Role |
| --- | --- |
| `cards/README.md` | Dataset card index and planned/released status rules. |
| `templates/dataset-card.md` | Hugging Face compatible dataset card template. |
| `data-review-checklist.md` | Required checks before a dataset can be reported as released. |
| `docs/dataset-card-standard.md` | Required dataset card sections and claim rules. |
| `docs/privacy-exclusion-standard.md` | Privacy and PII exclusion requirements. |
| `docs/provenance-standard.md` | Source, collection, licensing, and provenance documentation standard. |
| `docs/maintenance-standard.md` | Update, correction, takedown, and deprecation standard. |
| `docs/planned-dataset-companions.md` | Planned dataset companion registry. |
| `docs/release-status-policy.md` | Planned/scaffolded/experimental/released/deprecated dataset status rules. |
| `docs/public-private-boundary.md` | Explicit allowed and forbidden material. |
| `docs/quality-gate.md` | Required checks before publication. |
| `docs/graphs/` | Mermaid maps for dataset-card release flow and data boundary review. |

## Public Boundary

Allowed:

- public dataset card templates;
- public dataset card standards;
- public planned dataset companion names marked planned;
- public data review checklist;
- public privacy exclusion and PII statement standards;
- public provenance and maintenance standards;
- reviewed public dataset cards after release approval.

Forbidden:

- raw datasets;
- private datasets;
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
- secrets, tokens, and API keys;
- unapproved sanitized samples;
- dataset exports not approved for public release.

## Non-Claims

This scaffold does not claim that any dataset has been collected, sanitized, reviewed, uploaded, released, or approved for public use.

## Validation

Run:

```bash
scripts/validate-dataset-cards.sh
```

## First Milestone

Dataset cards v0.1 is complete when the template, data review checklist, privacy exclusion standard, provenance standard, maintenance standard, planned dataset companion registry, boundary document, quality gate, and Mermaid maps are reviewed by human Foundation authority.
