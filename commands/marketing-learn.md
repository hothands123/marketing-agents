---
name: marketing-learn
description: "Extract marketing insights from a URL and write to the shared brain"
---

**Usage:** `/marketing-learn <url>`

Take any URL (YouTube video, blog post, article, course page) and extract marketing insights into the shared brain.

## Process

1. **Fetch the content**: Use web fetch to get the page content. For YouTube videos, get the transcript.

2. **Extract insights**: Read the content and extract actionable marketing insights. For each insight, capture:
   - The insight itself (one clear sentence)
   - Context (what conditions make this true)
   - Actionable takeaway (exactly what to do with this knowledge)

3. **Classify**: Determine the category (meta_ads, seo, social_media, copywriting, funnels, content_marketing, general_marketing), platform, channel, and confidence level.

4. **Check for duplicates**: Query existing marketing_knowledge for similar insights. Don't create duplicates.

5. **Write to shared brain**:
   - If Supabase is connected: INSERT into marketing_knowledge table
   - If not: write to `./marketing-knowledge/YYYY-MM-DD-{slug}.json`

## Output Format

```json
{
  "source_url": "<url>",
  "source_type": "youtube|article|course|book",
  "title": "Title of the source",
  "author": "Author name",
  "extracted_insights": [
    {
      "insight": "Clear one-sentence finding",
      "context": "When and where this applies",
      "actionable_takeaway": "What to do with this"
    }
  ],
  "category": "seo",
  "platform": "universal",
  "channel": "cross_channel",
  "confidence": "tested",
  "applies_to": ["local_services", "ecommerce"],
  "written_by": "/learn"
}
```

After writing, report: number of insights extracted, categories covered, and how they'll be used by the agents.
