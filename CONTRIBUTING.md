# Contributing

## Purpose

Public contributions should improve dataset card structure, data review discipline, privacy exclusion language, provenance standards, maintenance rules, and cross-links to safety and transparency documentation.

## Contribution Rules

| Area | Rule |
| --- | --- |
| Data | Do not submit raw data, private data, donor private data, student data, school private data, volunteer private data, customer data, private telemetry, or unapproved sanitized samples. |
| Claims | Do not add collection, sanitation, licensing, row count, coverage, release, or maintenance claims unless public release documentation exists. |
| PII | Do not publish PII examples or private review records. |
| Safety | Link to `civic-ai-safety-notes` for limitations and public reliance language. |
| Transparency | Link to `foundation-transparency-reports` when a reviewed public release report exists. |
| Graphs | Update Mermaid maps when release workflow, boundary, or status behavior changes. |

## Pull Request Checklist

- [ ] The change is public-safe.
- [ ] No raw, private, donor, student, school, volunteer, customer, telemetry, partner, sealed, or secret material is included.
- [ ] Planned datasets remain marked planned unless release evidence exists.
- [ ] PII and privacy exclusions remain explicit.
- [ ] Affected graphs and quality gates are updated.
- [ ] `scripts/validate-dataset-cards.sh` passes.

## Security And Privacy

Do not report secrets, private records, raw data, private telemetry, or sensitive operational details in public issues. Use the private security path in `SECURITY.md`.
