# Sanitation Review Flow

## Purpose

This graph shows how source material moves through sanitation review before a public dataset card or dataset release can be approved.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph inputs["Potential Inputs"]
    publicSource["Public source"]:::public
    synthetic["Synthetic source"]:::public
    privateSource["Private or mixed source"]:::sealed
    telemetry["Telemetry or operational source"]:::sealed
  end

  subgraph checks["Sanitation Checks"]
    pii["PII review"]:::risk
    donor["Donor/student/volunteer review"]:::risk
    security["Security and location review"]:::risk
    license["License and provenance review"]:::risk
    governance["Governance review"]:::authority
  end

  subgraph output["Public Output"]
    card["Dataset card"]:::public
    notes["Privacy exclusions"]:::public
    release["Release readiness status"]:::release
  end

  publicSource --> pii
  synthetic --> pii
  privateSource -. blocked unless reviewed .-> pii
  telemetry -. high review .-> security
  pii --> donor
  donor --> security
  security --> license
  license --> governance
  governance --> card
  governance --> notes
  notes --> release

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Public and synthetic sources still require review before release.
- Private or mixed sources remain blocked unless a public-safe release path is approved.
- Privacy exclusions are public documentation, not proof that a dataset exists.

## Boundary Notes

- Do not publish raw records, private records, telemetry, sensitive locations, or samples from private sources in this repo.
- Unapproved sanitized samples are blocked.
- NEURONA operational details require security review and are excluded by default.

## Follow-Up Actions

- Keep sanitation checklist templates aligned to this flow.
- Add dataset-specific sanitation summaries only after review.
- Revisit high-review telemetry rules before any telemetry sample release.
