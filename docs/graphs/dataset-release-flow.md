# Dataset Release Flow

## Purpose

This graph shows the release-documentation flow from planned dataset scope to reviewed public Hugging Face dataset release.

## Mermaid Diagram

```mermaid
flowchart TB
  planned["Planned dataset scope"]:::workflow

  subgraph review["Review Gates"]
    source["Source and licensing review"]:::risk
    sanitation["Sanitation and PII review"]:::risk
    security["Security and sensitive-location review"]:::risk
    governance["Governance release approval"]:::authority
    maintenance["Maintenance plan review"]:::risk
  end

  subgraph docs["Public Documentation"]
    card["Dataset card"]:::public
    checklist["Sanitation checklist"]:::public
    notes["Release notes"]:::public
    companion["GitHub companion README"]:::release
  end

  subgraph release["Release Surface"]
    hf["Hugging Face dataset repository"]:::release
    monitor["Correction, takedown, deprecation"]:::workflow
  end

  planned --> source
  source --> sanitation
  sanitation --> security
  security --> governance
  governance --> maintenance
  maintenance --> card
  maintenance --> checklist
  card --> notes
  checklist --> notes
  notes --> companion
  companion --> hf
  hf --> monitor

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Planned dataset scope is not a release claim.
- Dataset cards and sanitation checklists are prerequisites for public release.
- Monitoring can trigger correction, takedown, pause, deprecation, or removal.

## Boundary Notes

- Raw data, private data, donor data, student data, volunteer data, customer data, private telemetry, and exact sensitive infrastructure locations do not enter public documentation.
- No dataset files are stored in this repository.
- Hugging Face links appear only after release approval.

## Follow-Up Actions

- Add release approval records outside this public repo when sensitive.
- Create dataset-specific companion docs only after review.
- Update status tables when a dataset changes state.
