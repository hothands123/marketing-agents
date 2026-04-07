# Marketing Agents

**30 AI agents that run your marketing across Meta Ads, SEO, and Social Media — with a shared brain that gets smarter every cycle.**

```
                         ┌───────────────────────────────────────────┐
                         │                                           │
                         │     marketing_knowledge (shared brain)    │
                         │                                           │
                         │  Fed by: Performance Learning agents      │
                         │          from all 3 channels, /learn      │
                         │  Read by: Analysis, Strategy, Creation    │
                         │           agents across all channels      │
                         │                                           │
                         └──────┬──────────┬──────────┬──────────────┘
                                │          │          │
                    ┌───────────┘          │          └───────────┐
                    │                      │                      │
                    ▼                      ▼                      ▼
     ┌──────────────────────┐ ┌──────────────────────┐ ┌──────────────────────┐
     │    META ADS (PAID)   │ │     SEO (ORGANIC)    │ │ SOCIAL MEDIA (ORG.)  │
     │    8 Agents          │ │    8 Agents          │ │    8 Agents          │
     │                      │ │                      │ │                      │
     │  Discovery           │ │  Query Classifier    │ │  Audience Discovery  │
     │  Collection          │ │  Discovery Monitor   │ │  Content Monitor     │
     │  Analysis            │ │  Mention Hunter      │ │  Analysis            │
     │  Strategy            │ │  Analysis            │ │  Content Strategist  │
     │  Creation            │ │  Content Strategist  │ │  Content Creator     │
     │  Campaign Deploy     │ │  Content Creator     │ │  Publishing          │
     │  Performance Learn   │ │  Outreach            │ │  Engagement          │
     │  Creative Intel      │ │  Performance Learn   │ │  Performance Learn   │
     └──────────────────────┘ └──────────────────────┘ └──────────────────────┘

     ┌──────────────────────────────────────────────────────────────────────────┐
     │                    INFRASTRUCTURE (6 Agents)                             │
     │                                                                          │
     │  Tool Scanner ──→ System Auditor ──→ Upgrade Deployer                   │
     │  Strategy Monitor ──→ marketing_knowledge + System Auditor              │
     │  Cost Optimizer ──→ System Auditor                                      │
     │  Reporting Agent ──→ Daily + Weekly Reports                             │
     └──────────────────────────────────────────────────────────────────────────┘
```

## Why This Exists

Code is commoditized. Distribution is the moat. This system handles distribution.

Every channel has 8 specialized agents. They research, analyze, strategize, create, deploy, and learn. Performance data feeds back into a shared `marketing_knowledge` brain, so every channel benefits from what the others learn.

6 Infrastructure agents continuously scan for new tools, monitor industry changes, optimize costs, audit the system, deploy upgrades, and generate reports.

## Install

```bash
git clone https://github.com/hothands123/marketing-agents.git
cd marketing-agents && bash install.sh
```

## Quick Start

```
/marketing-setup              # Configure your business
/marketing-run seo            # Run SEO pipeline
/marketing-run meta           # Run Meta Ads pipeline
/marketing-run social         # Run Social Media pipeline
/marketing-learn <url>        # Feed insights into the brain
/marketing-report weekly      # Generate performance report
```

## The 30 Agents

### Meta Ads (8 agents)

| # | Agent | Job |
|---|-------|-----|
| 01 | Discovery | Find competitors and generate search terms for the Meta Ads Library |
| 02 | Collection | Search Meta Ads Library and capture structured ad data |
| 03 | Analysis | Find patterns: longevity winners, format shifts, dominant offers/hooks |
| 04 | Strategy | Produce prioritized creative briefs backed by evidence |
| 05 | Creation | Write finished ad copy, video scripts, and creative direction |
| 06 | Campaign Deploy | Deploy ads to Meta via Marketing API (all campaigns launch PAUSED) |
| 07 | Performance Learning | Pull results from live campaigns, extract insights into shared brain |
| 08 | Creative Intel | Screenshot ads, auto-tag visuals, detect ad fatigue |

### SEO (8 agents)

| # | Agent | Job |
|---|-------|-----|
| 01 | Query Classifier | Classify keywords by AI satisfiability (traditional SEO vs brand mention) |
| 02 | Discovery Monitor | Track which domains AI assistants cite for niche queries |
| 03 | Mention Hunter | Find exact pages worth getting your brand mentioned on |
| 04 | Analysis | Find patterns in AI citations, competitor shifts, platform opportunities |
| 05 | Content Strategist | Plan content briefs across blog, YouTube, Reddit, Quora |
| 06 | Content Creator | Generate full content pieces from approved briefs |
| 07 | Outreach | Execute brand mention campaigns with personalized outreach |
| 08 | Performance Learning | Track rankings, traffic, AI citations — extract insights into shared brain |

### Social Media (8 agents)

| # | Agent | Job |
|---|-------|-----|
| 01 | Audience Discovery | Identify target segments, find competitor accounts, map communities |
| 02 | Content Monitor | Track competitor posts, trending formats, viral content in niche |
| 03 | Analysis | Identify what content types, formats, and topics perform best |
| 04 | Content Strategist | Create content calendar with platform-specific plans and A/B tests |
| 05 | Content Creator | Write platform-native posts, captions, scripts, carousel copy |
| 06 | Publishing | Schedule and publish content across platforms |
| 07 | Engagement | Monitor comments, DMs, mentions — respond and engage |
| 08 | Performance Learning | Track engagement, reach, follower growth — extract insights into shared brain |

### Infrastructure (6 agents)

| # | Agent | Job |
|---|-------|-----|
| 01 | Tool Scanner | Scan GitHub, Product Hunt, MCP registries for new tools |
| 02 | Strategy Monitor | Track algorithm updates, platform policy changes, industry shifts |
| 03 | Cost Optimizer | Find free alternatives to paid tools, monitor pricing changes |
| 04 | System Auditor | Audit all agents for gaps, produce prioritized upgrade recommendations |
| 05 | Upgrade Deployer | Install approved tools, wire them into agent files |
| 06 | Reporting | Generate daily and weekly performance reports |

## The Shared Brain

The `marketing_knowledge` table is the central intelligence layer. Every channel's Performance Learning agent writes proven insights here, and every channel's Analysis, Strategy, and Creation agents read from it.

This means:
- An insight from a high-performing Meta ad (e.g., "pain-point hooks outperform question hooks") is available to the SEO Content Creator and Social Media Strategist
- SEO keyword research (e.g., "emergency plumber near me has 10x volume") informs ad copy and social captions
- Social media engagement data (e.g., "before/after posts get 3x engagement") informs ad creative direction

```
┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│  Meta Ads    │     │    SEO       │     │   Social     │
│  Performance │     │  Performance │     │  Performance │
│  Learning    │     │  Learning    │     │  Learning    │
└──────┬───────┘     └──────┬───────┘     └──────┬───────┘
       │                    │                    │
       └────────────────────┼────────────────────┘
                            ▼
                 ┌─────────────────────┐
                 │ marketing_knowledge │
                 │   (shared brain)    │
                 └─────────┬───────────┘
                           │
       ┌───────────────────┼───────────────────┐
       │                   │                   │
       ▼                   ▼                   ▼
┌──────────────┐  ┌──────────────┐  ┌──────────────┐
│  Meta Ads    │  │    SEO       │  │   Social     │
│  Analysis    │  │  Analysis    │  │  Analysis    │
│  Strategy    │  │  Strategy    │  │  Strategy    │
│  Creation    │  │  Creation    │  │  Creation    │
└──────────────┘  └──────────────┘  └──────────────┘
```

## How It's Different

|  | Marketing Agents | claude-seo | claude-ads | Marketing skill libraries |
|---|---|---|---|---|
| Agents | 30 | 13 | 6 | 0 |
| Channels | 3 (ads + SEO + social) | SEO only | Ads only | Individual skills |
| Shared brain | Yes | No | No | No |
| Cross-channel learning | Yes | No | No | No |
| End-to-end pipeline | Yes | Audit only | Audit only | No |
| Self-improving | Yes (Infrastructure agents) | No | No | No |

## Works With

Designed to integrate with tools you already have:
- [claude-seo](https://github.com/AgriciDaniel/claude-seo) — technical SEO data
- [claude-ads](https://github.com/AgriciDaniel/claude-ads) — ad auditing
- Adspirer MCP — live Meta/Google/TikTok data
- Playwright MCP — browser automation
- Supabase — database for the shared brain
- Any MCP server in your stack

## Setup the Brain (Optional)

The shared brain uses a Supabase table. To enable cross-session learning:

1. Create a Supabase project (free tier works)
2. Run `schema.sql` in the SQL editor
3. Connect Supabase MCP to Claude Code

Without Supabase, agents still work — they just don't persist learnings across sessions.

## Connecting to Meta Ads (Optional)

If you want the agents to actually deploy ads to Meta, you'll need to set up a Meta App. It sounds more intimidating than it is — took me about 15 minutes.

1) Go to developers.facebook.com and create a new app. Pick "Business" as the type. Give it whatever name you want.

2) Once the app is created, go to App Settings > Basic and grab your App ID and App Secret. You'll need these later.

3) Now go to Business Settings in your Meta Business Suite (business.facebook.com). Under Users > System Users, create a new system user. Give it Admin access.

4) Click "Generate New Token" on that system user. Select your app from the dropdown, then tick these permissions:
   - ads_management
   - ads_read
   - pages_read_engagement
   - pages_manage_posts

5) Copy that token. That's your META_SYSTEM_USER_TOKEN.

6) While you're in Business Settings, go to Accounts > Ad Accounts and grab your ad account ID. It looks like act_123456789.

7) Create a .env file in your project root:

```
META_AD_ACCOUNT_ID=act_123456789
META_SYSTEM_USER_TOKEN=your_long_token_here
META_PAGE_ID=your_facebook_page_id
```

That's it. The Campaign Deployment agent reads from this file. All campaigns deploy PAUSED — nothing spends money until you manually activate it in Ads Manager.

If you don't want to deal with any of this, the Adspirer MCP handles the auth flow for you. You just connect your ad account through their interface and the agents call it as an MCP tool instead.

## Uninstall

```bash
cd marketing-agents && bash uninstall.sh
```

## License

MIT — use it however you want.

---

Built by [Drummond Holdings](https://github.com/hothands123). Star the repo if it's useful.
