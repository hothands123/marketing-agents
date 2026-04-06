#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="${HOME}/.claude/skills"
AGENT_DIR="${HOME}/.claude/agents"
CMD_DIR="${HOME}/.claude/commands"

echo "══════════════════════════════════════"
echo "║  Marketing Agents - Uninstaller    ║"
echo "══════════════════════════════════════"
echo ""

# Remove skills
echo "→ Removing skills..."
rm -rf "${SKILL_DIR}/marketing"
rm -rf "${SKILL_DIR}/marketing-meta"
rm -rf "${SKILL_DIR}/marketing-seo"
rm -rf "${SKILL_DIR}/marketing-social"
rm -rf "${SKILL_DIR}/marketing-infra"

# Remove agents
echo "→ Removing agents..."
rm -f "${AGENT_DIR}"/marketing-*.md

# Remove commands
echo "→ Removing commands..."
rm -f "${CMD_DIR}/marketing-setup.md"
rm -f "${CMD_DIR}/marketing-run.md"
rm -f "${CMD_DIR}/marketing-learn.md"
rm -f "${CMD_DIR}/marketing-report.md"

echo ""
echo "✓ Marketing Agents uninstalled."
echo ""
echo "Note: Your .marketing-profile.json and Supabase data are untouched."
