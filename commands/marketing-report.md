---
name: marketing-report
description: "Generate a performance report across all marketing channels"
---

**Usage:** `/marketing-report [daily|weekly]`

Generate a performance report using the Reporting Agent (`marketing-infra-reporting.md`).

## Report Types

### Daily Report (default)
Quick snapshot of the last 24 hours:
- Per-channel performance metrics
- Alerts and anomalies
- Actions taken and recommended
- Tomorrow's priorities

### Weekly Report
Deep analysis of the full week:
- Executive summary (5 key bullets)
- Per-channel deep dive with trends
- Cross-channel insights
- Knowledge brain summary (new insights, contradictions)
- Budget and ROI summary
- Next week plan

## Data Sources

The report pulls from:
- Meta Ads: deployed_campaigns performance data (if Supabase connected)
- SEO: content performance, ranking changes, outreach results
- Social: post metrics, engagement data, follower growth
- Infrastructure: system changes, tools evaluated
- marketing_knowledge: new entries, contradictions found

If Supabase is not connected, the report uses data from `./marketing-knowledge/` directory and any cached performance data.

## Output

Write the report to:
- `./reports/daily/YYYY-MM-DD.md` (daily)
- `./reports/weekly/YYYY-WXX.md` (weekly)

Also display the report summary in the terminal.

If no argument is provided, generate a daily report.
