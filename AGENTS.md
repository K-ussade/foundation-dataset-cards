# AGENTS.md

This file governs Codex work inside `foundation-dataset-cards`.

## Repository Role

`foundation-dataset-cards` is a public standards and template repository for future reviewed dataset cards and companion release documentation. It is not a dataset repository and is not a place for raw data, private data, sanitized samples, dataset exports, private telemetry, private review records, or release claims.

## Authority

- The 218 Network Foundation owns Foundation dataset-card standards for Foundation-owned releases.
- Human Foundation data governance, privacy, source, safety, and release authority remains upstream of publication.
- Codex may draft templates, examples, graphs, and validation checks.
- Codex is not data, release, governance, safety, legal, privacy, or publication authority.

## Entity Boundary Rules

- The Foundation is independent from YOSO-YAi LLC.
- The Foundation is not a company marketing arm, CSR project, or product line.
- YOSOR is a product of YOSO-YAi LLC.
- Do not use Foundation data documentation to sell company products.
- Do not present planned dataset names as released artifacts.

## Public Boundary

Allowed:

- Hugging Face-style dataset-card templates;
- public sanitation and governance checklist templates;
- synthetic examples clearly labeled synthetic/public-safe;
- provenance, maintenance, and release-readiness standards;
- GitHub and Hugging Face companion linking rules.

Forbidden:

- dataset files;
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
- unapproved sanitized samples.

## Writing Rules

- Use precise data-governance language.
- Mark examples as synthetic and non-release examples.
- Keep dataset status explicit.
- Include data source, collection process, allowed uses, forbidden uses, privacy exclusions, PII statement, bias/limitations, governance status, maintenance plan, GitHub companion link, and `218.network` placeholder in dataset-card templates.
- Do not claim a dataset exists unless the public Hugging Face repository, dataset card, release notes, governance review, and maintenance plan exist.
- Do not write final Upwork profile text, active offer copy, pricing, turnaround promises, or client-facing claims.

## Validation

Before final response after edits:

1. Run `scripts/validate-dataset-cards.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
