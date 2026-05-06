# Architecture

## Purpose

This repository separates dataset-card templates, sanitation standards, governance review checklists, synthetic examples, Mermaid maps, and validation checks for future reviewed Hugging Face dataset releases.

## Structure

| Path | Responsibility |
| --- | --- |
| `README.md` | Public entry point, status, links, and non-claims. |
| `docs/` | Standards for dataset cards, sanitation, governance review, release readiness, and linking. |
| `docs/graphs/` | Mermaid maps for release flow, sanitation review, boundaries, and GitHub/Hugging Face relationships. |
| `templates/` | Hugging Face-style dataset-card and companion documentation templates. |
| `examples/` | Synthetic public-safe examples only. |
| `scripts/` | Validation checks. |

## Authority Model

Human Foundation data governance authority remains upstream. Codex may draft templates and validators, but it cannot approve data release, infer that datasets exist, or move planned artifacts to released status.

## Release Surface Model

GitHub holds public standards and companion documentation. Hugging Face is a release surface only after dataset-card, sanitation, privacy, source, governance, and maintenance review.

## No-Data Posture

This repository must not contain dataset files, raw records, private data, sanitized samples, dataset exports, telemetry, or real Foundation data.
