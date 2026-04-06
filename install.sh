#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="${HOME}/.claude/skills"
AGENT_DIR="${HOME}/.claude/agents"
CMD_DIR="${HOME}/.claude/commands"

echo "══════════════════════════════════════"
echo "║  Marketing Agents - Installer      ║"
echo "║  30-Agent AI Marketing System      ║"
echo "══════════════════════════════════════"
echo ""

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Create directories
mkdir -p "${SKILL_DIR}" "${AGENT_DIR}" "${CMD_DIR}"

# Copy skills
echo "→ Installing skills..."
for skill_dir in "${SCRIPT_DIR}/skills"/*/; do
  skill_name=$(basename "${skill_dir}")
  target="${SKILL_DIR}/${skill_name}"
  mkdir -p "${target}"
  cp -r "${skill_dir}"* "${target}/"
done

# Copy agents
echo "→ Installing agents..."
cp "${SCRIPT_DIR}/agents/"*.md "${AGENT_DIR}/"

# Copy commands
echo "→ Installing commands..."
cp "${SCRIPT_DIR}/commands/"*.md "${CMD_DIR}/"

echo ""
echo "✓ Installed: 5 skills, 30 agents, 4 commands"
echo ""
echo "Get started:"
echo "  /marketing-setup    Set up your business profile"
echo "  /marketing-run      Run a marketing channel"
echo "  /marketing-learn    Feed insights into the brain"
echo "  /marketing-report   Generate performance report"
echo ""
echo "Docs: https://github.com/hugodrummon/marketing-agents"
