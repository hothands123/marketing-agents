---
name: marketing-infra
description: "Infrastructure agents — 6 agents that scan for tools, monitor industry changes, optimize costs, audit the system, deploy upgrades, and generate reports."
---

# Infrastructure — 6 Agents

## Flow

```
Tool Scanner ──→ System Auditor ──→ [Human Approval] ──→ Upgrade Deployer
Strategy Monitor ──→ marketing_knowledge + System Auditor
Cost Optimizer ──→ System Auditor
Reporting Agent ──→ Daily + Weekly Reports
```

## Agents

| # | Agent File | Role | Cadence |
|---|-----------|------|---------|
| 01 | `marketing-infra-tool-scanner.md` | Scan for new tools, MCP servers, skills | Weekly |
| 02 | `marketing-infra-strategy-monitor.md` | Track algorithm updates, policy changes | Weekly |
| 03 | `marketing-infra-cost-optimizer.md` | Find free alternatives, build-vs-buy analysis | Monthly |
| 04 | `marketing-infra-system-auditor.md` | Audit all agents for gaps, recommend upgrades | Monthly |
| 05 | `marketing-infra-upgrade-deployer.md` | Install approved tools, wire into agents | On demand |
| 06 | `marketing-infra-reporting.md` | Generate daily and weekly performance reports | Daily/Weekly |

## Run Modes

### Full Scan
Run Tool Scanner + Strategy Monitor + Cost Optimizer → System Auditor.

### Quick Audit
Run System Auditor only (reads current agent state).

### Deploy Upgrades
Run Upgrade Deployer with approved recommendations.

### Generate Report
Run Reporting Agent for daily snapshot or weekly deep dive.

## Key Principles

- Tool Scanner does deep safety research on every candidate (author verification, code review, permissions audit).
- Strategy Monitor writes findings directly to marketing_knowledge so all 24 channel agents stay current.
- Cost Optimizer prioritizes free and open-source tools. Every dollar saved goes to ad spend.
- System Auditor is the bridge between findings and action. It cross-references all inputs.
- Upgrade Deployer is the only agent that changes files. It requires human approval.
- Reporting Agent covers all 3 channels plus infrastructure in a single report.
