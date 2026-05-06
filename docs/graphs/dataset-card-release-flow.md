# Dataset Card Release Flow

## Purpose

This graph shows how a planned dataset moves through scope, source review, privacy review, dataset card documentation, maintenance planning, Hugging Face release, and monitoring.

## Mermaid Diagram

```mermaid
flowchart TB
  subgraph authority["Foundation Authority"]
    human["Human data governance authority"]:::authority
    governance["foundation-governance"]:::foundation
    safety["civic-ai-safety-notes"]:::foundation
    transparency["foundation-transparency-reports"]:::foundation
  end

  subgraph planning["Planned Dataset Documentation"]
    planned["Planned dataset name"]:::release
    scope["Purpose and intended use"]:::workflow
    sourceReview["Source and licensing review"]:::risk
    privacyReview["Privacy and PII review"]:::risk
    sanitation["Sanitation or synthetic-data review"]:::risk
    maintenancePlan["Maintenance plan"]:::workflow
  end

  subgraph publicDocs["Public Release Documentation"]
    datasetCard["Dataset card"]:::public
    safetyNote["Safety note or limitation language"]:::public
    releaseNotes["Release notes"]:::public
    transparencyPath["Transparency report path"]:::foundation
  end

  subgraph release["Release Surface"]
    hfDataset["Hugging Face dataset<br/>only after approval"]:::release
    monitoring["Correction, takedown, deprecation"]:::workflow
  end

  human ==> scope
  governance --> scope
  planned --> scope
  scope --> sourceReview
  sourceReview --> privacyReview
  privacyReview --> sanitation
  sanitation --> maintenancePlan
  maintenancePlan --> datasetCard
  safety --> safetyNote
  datasetCard --> releaseNotes
  safetyNote --> releaseNotes
  transparency --> transparencyPath
  releaseNotes ==> hfDataset
  transparencyPath --> hfDataset
  hfDataset --> monitoring
  monitoring -. review update .-> human

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef foundation fill:#fff3d7,stroke:#9a6b00,color:#463100;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Planned dataset names do not imply dataset artifacts exist.
- Dataset cards are release prerequisites, not post-release decoration.
- Hugging Face release is downstream from source, licensing, privacy, sanitation, safety, maintenance, and governance review.

## Boundary Notes

- Raw data, private data, unapproved sanitized samples, private telemetry, and sensitive infrastructure details stay outside public docs.
- Dataset cards must include privacy exclusions, PII statements, provenance, limitations, and maintenance paths.
- Monitoring can trigger correction, takedown, pause, or deprecation.

## Follow-Up Actions

- Add dataset-specific cards only after human review.
- Link Hugging Face dataset repositories only after they exist with approved cards.
- Update transparency reports after any release.
