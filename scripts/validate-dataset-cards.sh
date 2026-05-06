#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "cards/README.md"
  "templates/dataset-card.md"
  "data-review-checklist.md"
  "docs/dataset-card-standard.md"
  "docs/privacy-exclusion-standard.md"
  "docs/provenance-standard.md"
  "docs/maintenance-standard.md"
  "docs/planned-dataset-companions.md"
  "docs/release-status-policy.md"
  "docs/public-private-boundary.md"
  "docs/quality-gate.md"
  "docs/graphs/dataset-card-release-flow.md"
  "docs/graphs/data-boundary-review-map.md"
  "scripts/validate-dataset-cards.sh"
)

required_graph_sections=(
  "## Purpose"
  "## Mermaid Diagram"
  "## Interpretation Notes"
  "## Boundary Notes"
  "## Follow-Up Actions"
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

if [ "$missing" -eq 0 ]; then
  printf "\nResult: PASS - dataset card scaffold is complete.\n"
  exit 0
fi

printf "\nResult: FAIL - %s required check(s) failed.\n" "$missing"
exit 1
