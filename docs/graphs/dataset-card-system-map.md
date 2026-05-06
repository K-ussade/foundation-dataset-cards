# Dataset Card System Map

## Purpose

This graph shows how dataset-card templates, sanitation standards, governance review, synthetic examples, validation, GitHub companions, and Hugging Face release surfaces relate.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph authority["Foundation Data Authority"]
    human["Human data governance review"]:::authority
    privacy["Privacy review"]:::risk
    source["Source/licensing review"]:::risk
    security["Security review"]:::risk
  end

  subgraph repo["foundation-dataset-cards"]
    standard["Dataset-card standard"]:::public
    sanitation["Sanitation standard"]:::public
    templates["HF-style templates"]:::public
    examples["Synthetic examples"]:::public
    validator["Validation script"]:::workflow
  end

  subgraph surfaces["Public Release Surfaces"]
    github["GitHub companion docs"]:::release
    hf["Hugging Face dataset repo"]:::release
    web["218.network context page"]:::public
  end

  human --> standard
  privacy --> sanitation
  source --> templates
  security --> sanitation
  standard --> templates
  sanitation --> templates
  templates --> examples
  templates --> validator
  examples --> validator
  validator --> github
  github --> hf
  github --> web

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Dataset-card templates are public documentation infrastructure, not data releases.
- Hugging Face is downstream from GitHub companion docs and human data review.
- Synthetic examples do not imply a dataset exists.

## Boundary Notes

- Dataset files, raw data, private data, unapproved sanitized samples, private telemetry, and sealed IP are excluded.
- Planned links stay placeholders until public artifacts exist.
- `218.network` context pages require separate public review.

## Follow-Up Actions

- Add dataset-specific cards only after data release review.
- Link public Hugging Face repositories only after they exist.
- Update this map when release gates change.
