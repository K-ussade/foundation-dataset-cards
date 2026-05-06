# Data Boundary Review Map

## Purpose

This graph separates public-safe dataset documentation from raw, private, sensitive, and sealed material that must not enter public dataset cards.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph blocked["Blocked Or High-Risk Material"]
    raw["Raw datasets"]:::sealed
    privateData["Private datasets"]:::sealed
    donor["Donor private data"]:::sealed
    student["Student data"]:::sealed
    school["School private data"]:::sealed
    telemetry["Private telemetry"]:::sealed
    locations["Exact sensitive infrastructure locations"]:::sealed
    neurona["Security-sensitive NEURONA details"]:::sealed
    sealedIP["Sealed YOSO-YAi LLC IP"]:::sealed
    samples["Unapproved sanitized samples"]:::risk
  end

  subgraph review["Data Review Gate"]
    source["Source review"]:::risk
    privacy["Privacy and PII review"]:::risk
    security["Security review"]:::risk
    license["Licensing review"]:::risk
    governance["Governance review"]:::authority
  end

  subgraph allowed["Allowed Public Documentation"]
    planned["Planned dataset names"]:::public
    template["Dataset card template"]:::public
    provenance["Public provenance summary"]:::public
    exclusions["Privacy exclusions"]:::public
    maintenance["Maintenance plan"]:::public
  end

  subgraph surfaces["Public Surfaces"]
    github["GitHub dataset-card docs"]:::release
    hf["Hugging Face dataset release<br/>only after approval"]:::release
    reports["Transparency report"]:::foundation
  end

  raw -. blocked .-> privacy
  privateData -. blocked .-> privacy
  donor -. blocked .-> privacy
  student -. blocked .-> privacy
  school -. blocked .-> privacy
  telemetry -. blocked unless approved sanitation .-> security
  locations -. blocked .-> security
  neurona -. blocked .-> security
  sealedIP -. blocked .-> governance
  samples -. review required .-> privacy
  source --> governance
  privacy --> governance
  security --> governance
  license --> governance
  governance --> planned
  governance --> template
  governance --> provenance
  governance --> exclusions
  governance --> maintenance
  planned --> github
  template --> github
  provenance --> github
  exclusions --> github
  maintenance --> github
  github --> hf
  github --> reports

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef foundation fill:#fff3d7,stroke:#9a6b00,color:#463100;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef release fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
  classDef risk fill:#fff1f2,stroke:#be123c,stroke-width:2px,color:#5f0715;
```

## Interpretation Notes

- Public dataset-card docs can define standards, planned names, and release gates without publishing data.
- Unapproved sanitized samples are high-risk and require review before any public use.
- Hugging Face dataset release is downstream from approved GitHub documentation and governance review.

## Boundary Notes

- Raw datasets, donor data, student data, school private data, private telemetry, and exact sensitive locations are blocked from public docs.
- Public provenance summaries must not expose private source locations or sensitive operations.
- Dataset previews and generated examples inherit source boundaries until reviewed.

## Follow-Up Actions

- Add release approval records before first dataset release.
- Define dataset-specific exclusions in each reviewed dataset card.
- Revisit this map if any dataset moves to experimental status.
