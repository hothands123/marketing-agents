-- Marketing Agents — Shared Brain Schema
-- Run this in your Supabase SQL editor to enable cross-session learning.
-- This is the only required table. Channel-specific tables are optional
-- and can be added as needed for your use case.

-- ============================================================
-- MARKETING KNOWLEDGE — shared brain across all marketing channels
-- Insights from campaign performance, external learning, visual
-- analysis, SEO, and social media all flow here.
-- ============================================================
CREATE TABLE IF NOT EXISTS marketing_knowledge (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at TIMESTAMPTZ DEFAULT NOW(),

  -- Source
  source_url TEXT NOT NULL,                -- URL of the video, article, resource, or internal://campaign-performance/[id]
  source_type TEXT,                        -- "youtube" | "article" | "course" | "book" | "campaign_data" | "creative_analysis"
  title TEXT,                              -- title of the source
  author TEXT,                             -- who created this content

  -- Extracted knowledge
  extracted_insights JSONB,               -- array of insight objects [{insight, context, actionable_takeaway}]

  -- Classification
  category TEXT,                          -- "meta_ads" | "google_ads" | "copywriting" | "funnels" | "seo" | "social_media" | "content_marketing" | "outreach" | "web_design" | "general_marketing"
  platform TEXT,                          -- "meta" | "google" | "tiktok" | "linkedin" | "twitter" | "instagram" | "facebook" | "youtube" | "reddit" | "quora" | "universal"
  channel TEXT,                           -- "paid_ads" | "seo" | "social_media" | "cross_channel"
  written_by TEXT,                        -- which agent wrote the insight (e.g. "meta_performance_learning", "seo_performance_learning", "/learn")
  confidence TEXT,                        -- "proven" (backed by data/results) | "tested" (author tested it) | "theoretical" (concept only)
  applies_to TEXT[],                      -- e.g. {"local_services","ecommerce","saas","trades"}

  -- Validity tracking
  still_valid BOOLEAN DEFAULT TRUE,       -- mark false when outdated
  superseded_by UUID REFERENCES marketing_knowledge(id),  -- points to newer/better insight

  notes TEXT
);

-- Indexes for common queries
CREATE INDEX IF NOT EXISTS idx_mk_category ON marketing_knowledge(category);
CREATE INDEX IF NOT EXISTS idx_mk_platform ON marketing_knowledge(platform);
CREATE INDEX IF NOT EXISTS idx_mk_channel ON marketing_knowledge(channel);
CREATE INDEX IF NOT EXISTS idx_mk_confidence ON marketing_knowledge(confidence);
CREATE INDEX IF NOT EXISTS idx_mk_still_valid ON marketing_knowledge(still_valid) WHERE still_valid = TRUE;
CREATE INDEX IF NOT EXISTS idx_mk_applies_to ON marketing_knowledge USING GIN (applies_to);
CREATE INDEX IF NOT EXISTS idx_mk_written_by ON marketing_knowledge(written_by);
