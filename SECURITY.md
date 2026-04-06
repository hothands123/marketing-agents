# Security

## What This Plugin Does

Marketing Agents is a collection of **markdown files** that install into your Claude Code environment. That's it.

- No executables
- No binaries
- No network calls
- No data collection
- No telemetry
- No phone-home behaviour

## What Gets Installed

```
~/.claude/skills/marketing*/SKILL.md    — 5 markdown skill files
~/.claude/agents/marketing-*.md         — 30 markdown agent files
~/.claude/commands/marketing-*.md       — 4 markdown command files
```

Every file is a `.md` (markdown) text file. You can read every single one before installing. The `install.sh` script only copies files — run `cat install.sh` to verify.

## What This Plugin Does NOT Do

- Does **not** access your ad accounts, APIs, or credentials
- Does **not** send any data anywhere
- Does **not** install any packages, dependencies, or executables
- Does **not** modify your system configuration
- Does **not** run any code — Claude Code interprets the markdown instructions

## Your Data Stays Local

The optional `marketing_knowledge` brain table runs on YOUR Supabase instance. No data is shared with us or anyone else. You own your data completely.

## Reporting Vulnerabilities

If you find a security issue, please open a GitHub issue or email the maintainer directly. We take security seriously and will respond within 48 hours.
