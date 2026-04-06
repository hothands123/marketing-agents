---
name: marketing-run
description: "Run a marketing channel pipeline"
---

Route to the appropriate channel based on the argument:

**Usage:** `/marketing-run <channel> [mode]`

**Channels:**
- `meta` — Run Meta Ads pipeline (uses `marketing-meta` skill)
- `seo` — Run SEO pipeline (uses `marketing-seo` skill)
- `social` — Run Social Media pipeline (uses `marketing-social` skill)
- `infra` — Run Infrastructure agents (uses `marketing-infra` skill)

**Modes (optional):**
- `full` — Run the full pipeline from start (default)
- `analysis` — Run only analysis + strategy
- `create` — Run only content/ad creation from approved briefs
- `learn` — Run only performance learning
- `audit` — Run system audit (infra only)

**Before running:**
1. Check that `.marketing-profile.json` exists. If not, tell the user to run `/marketing-setup` first.
2. Load the business profile.
3. Load the appropriate skill file.
4. Pass the profile data to the first agent in the pipeline.

**Pipeline execution:**
Run agents in sequence. Each agent's output feeds the next. After each agent completes, report its output summary and ask if the user wants to continue to the next agent or stop.

**Human approval gates:**
- Meta Ads: pause after Strategy (review briefs) and after Creation (review creatives)
- SEO: pause after Content Strategist (review briefs)
- Social: pause after Content Strategist (review calendar)

If no argument is provided, show the usage help.
