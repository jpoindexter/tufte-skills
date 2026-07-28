#!/usr/bin/env bash
# Install Tufte skills into every agent skills directory.
# Usage: ./install.sh [--dry-run]
# Override targets: TUFTE_SKILLS_DIRS="/path/one:/path/two" ./install.sh
set -euo pipefail
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
DRY_RUN=false
[[ "${1:-}" == "--dry-run" ]] && DRY_RUN=true

# Default targets: Claude Code, Codex CLI, agentskills-spec agents (Copilot CLI etc.)
if [[ -n "${TUFTE_SKILLS_DIRS:-}" ]]; then
  IFS=':' read -r -a TARGETS <<< "$TUFTE_SKILLS_DIRS"
else
  TARGETS=("$HOME/.claude/skills" "$HOME/.codex/skills" "$HOME/.agents/skills")
fi

for SKILLS_DIR in "${TARGETS[@]}"; do
  count=0
  $DRY_RUN || mkdir -p "$SKILLS_DIR"
  for src in "$REPO_DIR"/skills/*/; do
    skill_name=$(basename "$src")
    dest="$SKILLS_DIR/$skill_name"
    if $DRY_RUN; then
      echo "[dry-run] $skill_name → $dest"
    else
      mkdir -p "$dest"
      cp -R "$src". "$dest/"
    fi
    count=$((count + 1))
  done
  $DRY_RUN || echo "installed $count skills → $SKILLS_DIR"
done
echo ""
echo "Done. Restart your agent (Claude Code, Codex, Copilot, ...) to pick up new skills."
