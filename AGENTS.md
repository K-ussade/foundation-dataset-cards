# AGENTS.md

This file governs Codex work inside `foundation-dataset-cards`.

## Repository Role

`foundation-dataset-cards` is the public dataset-card and release documentation scaffold for future Foundation civic data releases. It is not a dataset repository, raw data store, private review workspace, telemetry store, intake system, or sealed development workspace.

## Authority

- The 218 Network Foundation owns Foundation dataset-card documentation.
- Human Foundation data governance, privacy, source, safety, and release authority remains upstream of publication.
- Codex may draft templates, standards, checklists, graphs, and validation checks.
- Codex is not data governance, privacy, legal, release, or publication authority.

## Entity Boundary Rules

- The Foundation is independent from YOSO-YAi LLC.
- The Foundation is not a YOSO-YAi marketing arm, CSR project, or product line.
- YOSOR is a product of YOSO-YAi LLC, not a Foundation product.
- YOSO-YAi LLC and YOSOR references must be boundary context only.

## Public Boundary

Allowed:

- dataset card templates;
- dataset card standards;
- planned dataset companion names marked planned;
- data review checklists;
- privacy exclusion standards;
- provenance and maintenance standards;
- public dataset release workflow maps.

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

## Writing Rules

- Write in a precise data governance and civic data release voice.
- Mark future datasets as planned unless public release evidence exists.
- Do not invent dataset contents, collection status, sanitation status, licensing, row counts, PII review results, releases, or Hugging Face repositories.
- Link to safety notes and transparency reports by status.
- Update graphs when data review workflow, boundary handling, or artifact status changes.

## Validation

Before final response after edits:

1. Run `scripts/validate-dataset-cards.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
