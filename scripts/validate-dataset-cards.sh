#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CHANGELOG.md"
  "docs/architecture.md"
  "docs/dataset-card-standard.md"
  "docs/public-private-boundaries.md"
  "docs/sanitation-standard.md"
  "docs/governance-review.md"
  "docs/release-readiness.md"
  "docs/github-huggingface-linking.md"
  "docs/graphs/dataset-card-system-map.md"
  "docs/graphs/dataset-release-flow.md"
  "docs/graphs/sanitation-review-flow.md"
  "docs/graphs/public-private-boundary-map.md"
  "docs/graphs/github-to-huggingface-map.md"
  "templates/dataset-card.base.md"
  "templates/dataset-card.public-reports.md"
  "templates/dataset-card.civic-reference.md"
  "templates/dataset-card.telemetry-sample.md"
  "templates/sanitation-checklist.template.md"
  "templates/governance-review-checklist.template.md"
  "templates/release-notes.template.md"
  "templates/github-companion-readme.template.md"
  "templates/release-checklist.template.md"
  "examples/README.md"
  "examples/synthetic-dataset-card-example.md"
  "scripts/validate-dataset-cards.sh"
)

required_graph_sections=(
  "## Purpose"
  "## Mermaid Diagram"
  "## Interpretation Notes"
  "## Boundary Notes"
  "## Follow-Up Actions"
)

required_dataset_sections=(
  "## Status"
  "## Dataset Summary"
  "## Data Source"
  "## Collection Process"
  "## Allowed Uses"
  "## Forbidden Uses"
  "## Privacy Exclusions"
  "## PII Statement"
  "## Bias/Limitations"
  "## Governance Review Status"
  "## Maintenance Plan"
  "## GitHub Companion Link"
  "## 218.network"
)

missing=0

printf "Foundation Dataset Cards Validation\n"
printf "Root: %s\n\n" "$ROOT_DIR"

for file in "${required_files[@]}"; do
  if [ -f "$ROOT_DIR/$file" ]; then
    printf "PASS  %s\n" "$file"
  else
    printf "FAIL  %s\n" "$file"
    missing=$((missing + 1))
  fi
done

printf "\nGraph Structure Checks\n"

for graph in "$ROOT_DIR"/docs/graphs/*.md; do
  [ -f "$graph" ] || continue
  rel="${graph#$ROOT_DIR/}"
  for section in "${required_graph_sections[@]}"; do
    if grep -qF "$section" "$graph"; then
      printf "PASS  %s contains %s\n" "$rel" "$section"
    else
      printf "FAIL  %s missing %s\n" "$rel" "$section"
      missing=$((missing + 1))
    fi
  done
done

printf "\nDataset Card Template Checks\n"

for template in "$ROOT_DIR"/templates/dataset-card.*.md; do
  [ -f "$template" ] || continue
  rel="${template#$ROOT_DIR/}"
  if head -n 1 "$template" | grep -q -- "---"; then
    printf "PASS  %s starts with YAML metadata block\n" "$rel"
  else
    printf "FAIL  %s missing YAML metadata block\n" "$rel"
    missing=$((missing + 1))
  fi
  for section in "${required_dataset_sections[@]}"; do
    if grep -qF "$section" "$template"; then
      printf "PASS  %s contains %s\n" "$rel" "$section"
    else
      printf "FAIL  %s missing %s\n" "$rel" "$section"
      missing=$((missing + 1))
    fi
  done
done

printf "\nSynthetic Example Checks\n"

if grep -Eiq "synthetic|not a real dataset|not released" "$ROOT_DIR/examples/synthetic-dataset-card-example.md"; then
  printf "PASS  examples/synthetic-dataset-card-example.md is clearly synthetic\n"
else
  printf "FAIL  examples/synthetic-dataset-card-example.md lacks synthetic non-claim language\n"
  missing=$((missing + 1))
fi

printf "\nNo Dataset File Checks\n"

for pattern in "*.csv" "*.tsv" "*.jsonl" "*.parquet" "*.arrow" "*.sqlite" "*.db"; do
  if find "$ROOT_DIR" -path "$ROOT_DIR/.git" -prune -o -type f -name "$pattern" -print | grep -q .; then
    printf "FAIL  found dataset-like files matching %s\n" "$pattern"
    missing=$((missing + 1))
  else
    printf "PASS  no dataset-like files matching %s\n" "$pattern"
  fi
done

printf "\nBoundary Language Checks\n"

for file in "$ROOT_DIR"/README.md "$ROOT_DIR"/docs/public-private-boundaries.md "$ROOT_DIR"/examples/synthetic-dataset-card-example.md; do
  rel="${file#$ROOT_DIR/}"
  if grep -qF "dataset files" "$file" && grep -qF "donor private data" "$file" && grep -qF "sealed YOSO-YAi LLC IP" "$file"; then
    printf "PASS  %s contains required dataset boundary exclusions\n" "$rel"
  else
    printf "FAIL  %s missing required dataset boundary exclusions\n" "$rel"
    missing=$((missing + 1))
  fi
done

if [ "$missing" -eq 0 ]; then
  printf "\nResult: PASS - dataset card repository is complete.\n"
  exit 0
fi

printf "\nResult: FAIL - %s required check(s) failed.\n" "$missing"
exit 1
