# Quality Gate

## Purpose

This quality gate defines the minimum checks before dataset-card documentation changes are merged or published.

## Required Checks

| Gate | Required Outcome |
| --- | --- |
| Entity voice | Foundation data governance voice is preserved and not written as company marketing. |
| Boundary | Raw, private, donor, student, school, volunteer, customer, telemetry, partner, sealed, and secret material is excluded. |
| Dataset status | Planned/scaffolded/experimental/released/deprecated status is accurate. |
| Release claims | No dataset is described as released without complete public release documentation. |
| Privacy and PII | Privacy exclusions and PII statements are explicit for release-facing content. |
| Provenance | Source, licensing, and collection claims are public-safe and reviewed. |
| Maintenance | Update, correction, takedown, and deprecation rules are documented. |
| Human authority | Human Foundation authority remains upstream of release publication. |
| Graph consistency | Mermaid maps match release workflow and boundary behavior. |
| Validation | `scripts/validate-dataset-cards.sh` passes. |

## Done Means

Work is done when:

- required files are present;
- dataset-card docs are public-safe;
- Foundation independence is preserved;
- no private, raw, sealed, or sensitive material is exposed;
- no unreleased dataset artifact is claimed;
- relevant graphs are updated;
- validation passes.
