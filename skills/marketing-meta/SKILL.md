---
name: marketing-meta
description: "Meta Ads channel — 8 agents that research competitors, analyze patterns, create ads, deploy campaigns, and learn from performance."
---

# Meta Ads Channel — 8-Agent Pipeline

## Pipeline

```
Discovery → Collection → Analysis → Strategy → [Human Approval] → Creation → [Human Approval] → Campaign Deploy → Performance Learning
                                                                                                                          ↓
Creative Intel (runs independently)                                                                              marketing_knowledge
```

## Agents

| # | Agent File | Role |
|---|-----------|------|
| 01 | `marketing-meta-discovery.md` | Find competitors + generate search terms |
| 02 | `marketing-meta-collection.md` | Search Meta Ads Library + capture ad data |
| 03 | `marketing-meta-analysis.md` | Find patterns, longevity winners, format shifts |
| 04 | `marketing-meta-strategy.md` | Produce prioritized creative briefs |
| 05 | `marketing-meta-creation.md` | Write finished ad copy, scripts, creative direction |
| 06 | `marketing-meta-campaign.md` | Deploy campaigns to Meta API (always PAUSED) |
| 07 | `marketing-meta-performance.md` | Pull results, extract insights to shared brain |
| 08 | `marketing-meta-creative-intel.md` | Screenshot and visually analyze ad creatives |

## Run Modes

### Full Run (new niche)
Run agents 01 through 04 in sequence. Human reviews briefs. Then 05 through 06.

### Refresh Run (existing niche)
Skip Discovery. Run Collection with existing competitors → Analysis → Strategy.

### Analysis Only
Run Analysis → Strategy against existing data.

### Content Creation
Run Creation agent against approved briefs (status = 'approved').

### Campaign Deploy
Run Campaign agent against approved creatives. All campaigns deploy PAUSED.

### Performance Learning
Run after campaigns have been live. Pulls metrics, extracts insights.

### Creative Intelligence
Run periodically. Screenshots ads, tags visual elements, detects fatigue.

## Inputs Required

Read from `.marketing-profile.json`:
- `niche`, `regions`, `business_name`, `competitors`, `brand_description`

## Key Principles

- Longevity is the strongest signal. An ad running 90+ days is a proven winner.
- Always search bigger markets (NYC, London, LA) — bigger spenders test more aggressively.
- An ad format shift (video to static) is itself a signal worth capturing.
- All campaigns deploy PAUSED. Never activate spending automatically.
- The shared brain gets smarter with each cycle.
