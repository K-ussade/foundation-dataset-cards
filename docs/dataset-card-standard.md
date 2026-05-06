# Dataset Card Standard

## Purpose

This standard defines required public dataset card sections for Foundation civic data releases.

## Required Sections

| Section | Required Detail |
| --- | --- |
| YAML metadata | Hugging Face metadata with license, language, tags, display name, size, and task categories. |
| Dataset summary | Owner, release status, intended value, and non-claims. |
| Data source | Public source categories and approved collection sources. |
| Collection process | Collection, review, sanitation, aggregation, labeling, or synthetic generation process. |
| Allowed uses | Public analysis, documentation, civic reference, demo, or evaluation uses. |
| Forbidden uses | Re-identification, targeting, surveillance, eligibility, enforcement, or safety-critical use restrictions. |
| Privacy exclusions | Explicit private, sensitive, sealed, telemetry, and PII exclusions. |
| PII statement | Whether PII is present, excluded, removed, aggregated, synthetic, or unknown. |
| Bias and limitations | Source coverage, demographic/geographic skew, freshness, labeling uncertainty, and gaps. |
| Governance review status | Source, privacy, PII, licensing, safety, governance, and maintenance review. |
| Maintenance plan | Update cadence, correction, takedown, deprecation, and contact path. |
| GitHub companion | Link to companion repository. |
| Hugging Face link | Link to released HF dataset only when public. |
| Foundation context | Link to public Foundation context. |

## Claim Rules

- Do not claim a dataset exists until a public artifact exists.
- Do not claim release until dataset card, privacy review, maintenance plan, governance review, and Hugging Face repository exist.
- Do not claim row counts, source coverage, sanitation, licensing, or update cadence without public review status.
- Do not expose raw data, private review records, PII, or unapproved sanitized samples.
