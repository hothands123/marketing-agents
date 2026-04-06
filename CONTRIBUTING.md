# Contributing

Thanks for your interest in improving Marketing Agents.

## How to Contribute

### Report Bugs
Open an issue using the **Bug Report** template. Include:
- Which agent/command you were using
- What you expected to happen
- What actually happened
- Your Claude Code version

### Request Features
Open an issue using the **Feature Request** template. Describe:
- What capability is missing
- Which channel/agent it relates to
- How it would improve your workflow

### Share Brain Insights
If you've discovered a marketing insight through the system, open an issue with the **Brain Insight** template. If it's validated, we'll add it to the starter brain.

### Submit a PR
1. Fork the repo
2. Create a branch (`git checkout -b feature/my-improvement`)
3. Make your changes
4. Test by running `bash install.sh` and verifying the agents work
5. Submit a PR with a clear description

### Agent Contributions
Want to add a new agent? Follow this structure:
```markdown
---
name: marketing-[channel]-[name]
description: "One-line description"
---

# Agent Name — Subtitle

## Role
2-3 sentences.

## Inputs
What data/tables this agent reads.

## Process
Numbered steps.

## Output
What it produces.

## Important Rules
3-5 bullets.
```

## Code of Conduct

Be helpful, be constructive, be kind. We're all here to build better marketing tools.
