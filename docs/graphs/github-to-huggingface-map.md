# GitHub To Hugging Face Map

## Purpose

This graph shows how GitHub companion documentation should connect to future reviewed Hugging Face dataset repositories.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph github["GitHub Companion"]
    readme["Companion README"]:::public
    cardStd["Dataset-card standard"]:::public
    sanitation["Sanitation checklist"]:::public
    governance["Governance review status"]:::public
    releaseNotes["Release notes"]:::public
  end

  subgraph hf["Hugging Face Release Surface"]
    datasetCard["HF dataset card"]:::release
    datasetRepo["HF dataset repository"]:::release
  end

  subgraph web["Foundation Context"]
    roadmap["foundation-public-roadmap"]:::workflow
    network["218.network context page"]:::workflow
  end

  readme --> datasetCard
  cardStd --> datasetCard
  sanitation --> datasetCard
  governance --> datasetCard
  releaseNotes --> datasetRepo
  datasetCard --> readme
  datasetRepo --> readme
  roadmap --> readme
  network --> datasetCard

  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef workflow fill:#f8fafc,stroke:#64748b,color:#1f2937;
```

## Interpretation Notes

- GitHub stores companion docs and release notes.
- Hugging Face stores the reviewed public dataset artifact and card.
- Roadmap and `218.network` links provide status and context without replacing release review.

## Boundary Notes

- Placeholder links must not be treated as release evidence.
- Hugging Face must not be used for private data review artifacts.
- GitHub companion docs must not expose raw data, private data, telemetry, or sealed IP.

## Follow-Up Actions

- Add actual Hugging Face links only after public repositories exist.
- Update companion README templates as release requirements mature.
- Keep roadmap status aligned with link status.
