---
name: marketing-setup
description: "Configure your business profile for the marketing agents"
---

Ask the user for the following information to set up their business profile:

1. **Business name** — What's your brand/company name?
2. **Niche/industry** — What industry are you in? (e.g., "plumbing", "SaaS", "ecommerce", "fitness", "real estate")
3. **Target regions** — Where are your customers? (e.g., ["United States", "United Kingdom", "Australia"])
4. **Brand description** — Describe your business in 1-2 sentences
5. **Competitors** — List your main competitors (brand names)
6. **Active platforms** — Which marketing platforms do you use or plan to use? (Meta Ads, Google Ads, LinkedIn, Instagram, TikTok, Twitter, Facebook, YouTube, etc.)
7. **Monthly ad budget** — If running paid ads, what's your monthly budget? (enter 0 if organic only)
8. **Website URL** — Your main website

Save the profile to `.marketing-profile.json` in the current directory:

```json
{
  "business_name": "...",
  "niche": "...",
  "regions": ["..."],
  "brand_description": "...",
  "competitors": ["..."],
  "platforms": ["..."],
  "monthly_budget": 0,
  "website_url": "...",
  "created_at": "2026-04-05T00:00:00Z",
  "updated_at": "2026-04-05T00:00:00Z"
}
```

After saving, confirm the profile and suggest next steps:
- `/marketing-run seo` to run the SEO pipeline
- `/marketing-run meta` to run Meta Ads research
- `/marketing-run social` to run Social Media pipeline
- `/marketing-learn <url>` to feed knowledge into the brain

If a `.marketing-profile.json` already exists, show the current profile and ask if the user wants to update it.
