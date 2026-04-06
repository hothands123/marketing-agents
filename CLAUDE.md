# Marketing Agents — Claude Code Plugin

A 30-agent AI marketing system that runs your marketing across Meta Ads, SEO, and Social Media with a shared knowledge brain.

## Architecture

- **3 channels**: Meta Ads (8 agents), SEO (8 agents), Social Media (8 agents)
- **Infrastructure**: 6 agents that scan for tools, monitor industry changes, optimize costs, audit the system, deploy upgrades, and generate reports
- **Shared brain**: `marketing_knowledge` Supabase table where every channel's Performance Learning agent writes proven insights, and every channel's Analysis/Strategy/Creation agents read from it
- **Cross-channel learning**: An insight from Meta Ads (e.g., "pain-point hooks outperform questions") automatically informs SEO content and social media posts

## Commands

- `/marketing-setup` — Configure business profile
- `/marketing-run <channel>` — Run a marketing channel pipeline (meta, seo, social)
- `/marketing-learn <url>` — Extract insights from a URL into the shared brain
- `/marketing-report <type>` — Generate performance report (daily, weekly)

## Skills

- `marketing` — Main orchestrator, routes to the right channel
- `marketing-meta` — Meta Ads pipeline (8 agents)
- `marketing-seo` — SEO pipeline (8 agents)
- `marketing-social` — Social Media pipeline (8 agents)
- `marketing-infra` — Infrastructure agents (6 agents)

## Configuration

Business profile stored in `.marketing-profile.json` in the project root. Created by `/marketing-setup`.

## Database

Optional Supabase integration via `schema.sql`. Without it, agents still work but don't persist learnings across sessions.
