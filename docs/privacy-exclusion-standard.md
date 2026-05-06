# Privacy Exclusion Standard

## Purpose

This standard defines privacy and PII exclusions required for public Foundation dataset cards.

## Required Exclusion Classes

| Data Class | Public Default |
| --- | --- |
| Donor private data | Forbidden. |
| Student data | Forbidden. |
| School private data | Forbidden. |
| Volunteer private data | Forbidden. |
| Customer data | Forbidden. |
| Private Foundation operations | Forbidden. |
| Private partner records | Forbidden. |
| Private telemetry | Forbidden unless explicitly sanitized and approved for public release. |
| Exact sensitive infrastructure locations | Forbidden. |
| Security-sensitive NEURONA operational details | Forbidden. |
| Private training corpora | Forbidden. |
| Sealed YOSO-YAi LLC IP | Forbidden. |
| Secrets, tokens, and API keys | Forbidden. |

## PII Statement Requirements

Every dataset card must state:

- whether PII is present, excluded, removed, aggregated, synthetic, or unknown;
- what review status supports that statement;
- whether a takedown or correction path exists;
- whether synthetic examples are clearly labeled;
- whether sanitized public samples were approved.

## Sanitized Sample Rule

Sanitized samples are not public by default. They require explicit privacy, security, governance, and source review before publication.
