# Public And Private Boundary

## Purpose

This document defines what can and cannot be published in `foundation-dataset-cards`.

## Allowed Public Material

| Material | Condition |
| --- | --- |
| Dataset card templates | Clearly labeled as templates. |
| Dataset card standards | Public, non-operational release requirements. |
| Planned dataset names | Marked planned and not described as released. |
| Data review checklist | No private review records. |
| Privacy exclusion standards | No PII examples. |
| Provenance standards | Public-safe source categories only. |
| Maintenance standards | General rules only. |
| Reviewed dataset cards | Only after release approval. |
| Mermaid release maps | No sensitive infrastructure or private topology. |

## Forbidden Public Material

| Material | Reason |
| --- | --- |
| Raw datasets | Privacy and release boundary. |
| Private datasets | Privacy and governance boundary. |
| Donor private data | Donor privacy boundary. |
| Student data | Student privacy boundary. |
| School private data | School and student privacy boundary. |
| Volunteer private data | Personal data boundary. |
| Customer data | Company/customer confidentiality boundary. |
| Private Foundation operations | Internal operating boundary. |
| Private partner records | Partner confidentiality boundary. |
| Private telemetry | Privacy and security boundary. |
| Exact sensitive infrastructure locations | Security boundary. |
| Security-sensitive NEURONA operational details | Operational safety boundary. |
| Private training corpora | Privacy and release boundary. |
| Sealed YOSO-YAi LLC IP | Company sealed IP boundary. |
| Unapproved sanitized samples | Privacy review boundary. |
| Dataset exports not approved for public release | Release boundary. |
| Secrets, tokens, and API keys | Security boundary. |

## Generated Output Rule

Generated summaries, examples, screenshots, logs, model outputs, dataset previews, and diagrams inherit the boundary of their inputs until reviewed.
