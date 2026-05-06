# Dataset Release Data Review Checklist

## Purpose

This checklist defines the minimum requirements before a Foundation dataset can be described as released.

## Required Before Release

| Gate | Required Outcome |
| --- | --- |
| Scope review | Dataset purpose, audience, source class, geography, and use cases are explicit. |
| Governance review | Foundation data governance authority approves public release. |
| Source review | Public source categories, collection method, dates, and provenance are documented. |
| Licensing review | Public license posture and source terms are reviewed. |
| Privacy review | Donor, student, school, volunteer, customer, private telemetry, and private operational data are excluded. |
| PII review | PII statement is complete and public-safe. |
| Sanitation review | Sanitized samples or aggregations are approved before public use. |
| Security review | Sensitive infrastructure, NEURONA operational detail, and exact sensitive locations are excluded. |
| Safety review | Safety note or limitation language exists for public use and downstream models or demos. |
| Dataset card review | Dataset card is complete and links to safety, governance, transparency, and Foundation context. |
| Maintenance review | Update cadence, correction process, takedown path, and deprecation conditions are documented. |
| Hugging Face review | Hugging Face repo, metadata, card, and links are consistent. |

## Release Refusal Conditions

Refuse release if any of the following are present:

- raw private data;
- donor private data;
- student data;
- school private data;
- volunteer private data;
- customer data;
- private telemetry;
- private partner records;
- exact sensitive infrastructure locations;
- security-sensitive NEURONA operational details;
- private training corpora;
- sealed YOSO-YAi LLC IP;
- secrets, tokens, or API keys;
- unapproved sanitized samples;
- unreviewed dataset exports.

## Status Rule

Until every required release gate passes, keep dataset status as planned, scaffolded, or experimental. Do not use released language.
