# Marketing Suite Plugin

**Your complete marketing team in Claude Code**

A comprehensive marketing toolkit that provides orchestrated workflows for brand development, content strategy, lead generation, and conversion optimization.

## What This Does

Think of this as hiring a complete marketing team:
- **Marketing Strategist** - Plans campaigns and strategy
- **Copywriter** - Writes all your marketing copy
- **Content Strategist** - Plans what to write about
- **Email Marketer** - Builds email sequences
- **Social Media Manager** - Creates multi-platform content

Except instead of hiring 5 people, you have one plugin with 15 skills, 3 commands, and 3 specialized agents.

## Installation

```bash
# Add to your local marketplace
claude-code plugin install /path/to/marketing-suite
```

## What's Included

### 📋 Commands (Workflow Shortcuts)
- **`/marketing-suite:audit`** - Comprehensive marketing asset audit with maturity scoring
- **`/marketing-suite:launch`** - Complete product/offer launch workflow
- **`/marketing-suite:leads`** - Lead generation system builder

### 🤖 Agents (Complex Tasks)
- **`marketing-strategist`** - Strategic planning, campaign design, annual planning
- **`copy-editor`** - Iterative copy refinement and A/B test variations
- **`content-planner`** - Monthly content calendar creation

### 🛠️ Utility Scripts
- **`track-assets.sh`** - Track marketing assets with maturity scoring
- **`export-output.sh`** - Export skill outputs to organized files
- **`track-metrics.sh`** - Weekly marketing metrics tracking

### 🎯 Skills - Strategy & Foundation
- **`/orchestrator`** - Smart router that diagnoses your situation and recommends the right skill sequence
- **`/brand-voice`** - Define or extract your consistent brand voice
- **`/matt-mckinney-voice`** - Write content in Matt McKinney's authentic voice (NEW in v1.3)
- **`/positioning-angles`** - Find differentiated positioning that makes you stand out

### 📊 Research & Planning
- **`/keyword-research`** - Strategic keyword research and content planning
- **`/lead-magnet`** - Generate compelling lead magnet concepts

### ✍️ Content Creation
- **`/direct-response-copy`** - Write conversion-focused copy (landing pages, emails, ads)
- **`/seo-content`** - Create SEO-optimized content that ranks and converts
- **`/newsletter`** - Build newsletter formats and editions
- **`/email-sequences`** - Design email sequences that convert subscribers

### 📢 Distribution & Product-Shaped Marketing
- **`/content-atomizer`** - Transform one piece into platform-optimized social assets
- **`/viral-artifact-generator`** - Create shareable proof-points from product usage (NEW in v1.1)
- **`/founder-led-social`** - Convert product updates into authentic founder-voice social posts (NEW in v1.1)

## Quick Start

### 🆘 Not Sure Where to Start?

```bash
/orchestrator
```
The orchestrator will ask questions about your business and goals, then recommend exactly what to do.

### 🚀 Common Scenarios

**Launching a Product:**
```bash
/marketing-suite:launch
```

**Getting More Leads:**
```bash
/marketing-suite:leads
```

**Check What's Missing:**
```bash
/marketing-suite:audit
```

### 📖 Complete Guide

**New to these plugins?** Read the [USER-GUIDE.md](../USER-GUIDE.md) for detailed, non-technical instructions and real-world examples.

**Need quick reference?** See [QUICK-START.md](../QUICK-START.md) for a cheat sheet.

### Common Workflows

**"I Need Leads"**
```bash
/positioning-angles  # Find your differentiated hook
/lead-magnet        # Create compelling opt-in offer
/direct-response-copy  # Write landing page
/email-sequences    # Build welcome sequence
```

**"I Need Content Strategy"**
```bash
/brand-voice        # Define how you sound
/keyword-research   # Identify priority topics
/seo-content       # Create optimized content
```

**"I'm Launching Something"**
```bash
/positioning-angles    # Find launch angle
/direct-response-copy  # Landing page + ad copy
/email-sequences      # Launch sequence
/newsletter          # Announcement edition
```

**"I'm Building in Public" (NEW)**
```bash
/founder-led-social          # Daily shipping updates for Twitter/LinkedIn
/viral-artifact-generator    # Turn product usage into shareable proof
# Every feature ship becomes a distribution opportunity
```

## Skill Dependencies

```
FOUNDATION (start here)
├── brand-voice (how you sound)
├── matt-mckinney-voice (personal voice profile - NEW v1.3)
└── positioning-angles (how you're different)

STRATEGY (builds on foundation)
├── keyword-research (what to write about)
└── lead-magnet (what to give away)

EXECUTION (requires strategy)
├── seo-content
├── direct-response-copy
├── newsletter
└── email-sequences

DISTRIBUTION
├── content-atomizer
├── viral-artifact-generator (NEW)
└── founder-led-social (NEW)
```

**New in v1.1:** Product-shaped marketing skills turn your product usage and shipping activity into distribution engines.

**New in v1.3:** Personal voice profiles for authentic thought leadership content.

## Features

- **Intelligent Orchestration** - Get personalized recommendations based on your goals and current assets
- **Context Awareness** - Skills pass relevant context to each other (with smart compression to avoid overload)
- **Workflow Automation** - Hooks automatically suggest next steps after completing each skill
- **Progress Tracking** - Track assets, metrics, and marketing maturity over time
- **Complete System** - From brand foundation to content distribution in one package

## Using the Utility Scripts

### Track Your Marketing Assets

See what you've built and what's missing:
```bash
~/agent-skills/marketing-suite/scripts/track-assets.sh show
```

Add assets as you create them:
```bash
# Mark foundation complete
~/agent-skills/marketing-suite/scripts/track-assets.sh add foundation brand_voice
~/agent-skills/marketing-suite/scripts/track-assets.sh add foundation positioning

# Track execution assets
~/agent-skills/marketing-suite/scripts/track-assets.sh add execution landing_pages "Product Launch Page"
~/agent-skills/marketing-suite/scripts/track-assets.sh add execution email_sequences "Welcome Sequence"
```

### Track Weekly Metrics

Monitor your marketing performance:
```bash
# Add this week's metrics
~/agent-skills/marketing-suite/scripts/track-metrics.sh add

# View recent performance
~/agent-skills/marketing-suite/scripts/track-metrics.sh show
```

### Export Your Work

Save skill outputs to organized files:
```bash
# See all exports
~/agent-skills/marketing-suite/scripts/export-output.sh list

# Export specific outputs
~/agent-skills/marketing-suite/scripts/export-output.sh landing-page
~/agent-skills/marketing-suite/scripts/export-output.sh email-sequence
~/agent-skills/marketing-suite/scripts/export-output.sh content
```

All exports are saved to `~/marketing-suite-exports/` organized by category.

## What's New in v1.1

### Product-Shaped Marketing

Two new skills focused on turning product usage and shipping activity into marketing fuel:

#### `/viral-artifact-generator`
**Create shareable proof-points from product usage**

Instead of writing content ABOUT your product, create artifacts FROM your product that prove it works.

**Use cases:**
- AI agents: Generate "ghost replay" videos showing agents at work
- Data tools: Before/after visualizations of transformations
- Design tools: Public galleries of user creations
- Productivity tools: Time-saved metrics and accomplishment sharing

**Triggers:**
- "create viral artifact from [feature]"
- "generate shareable proof for [product]"
- "product-shaped marketing for [update]"

**Outputs:** Specifications for replay videos, public galleries, collaboration loops, and platform-optimized sharing mechanics.

**Based on:** Manus's replay mechanics, Loom's video sharing, Notion's template gallery, Figma's multiplayer loops.

---

#### `/founder-led-social`
**Convert product updates into authentic founder-voice social posts**

Turn every feature ship into a founder story for Twitter and LinkedIn. Build in public, share the journey, grow your audience.

**Use cases:**
- Daily "build in public" updates
- Feature launch announcements
- Milestone celebrations
- Technical deep-dives
- Lessons learned threads

**Triggers:**
- "founder post from [feature]"
- "build-in-public update for [launch]"
- "ship announcement thread"
- "turn this into a social post"

**Outputs:** Platform-optimized posts (Twitter threads, LinkedIn stories), engagement tactics, visual recommendations, 30-second "vibe check" video scripts.

**Based on:** How Pieter Levels, Sahil Lavingia, Guillermo Rauch, and other successful founders market through authentic social presence.

---

### Why These Skills Matter

**The insight:** The best AI product companies (Manus, Lovable) win through product-shaped marketing, not ads.

**Key learnings:**
1. **Marketing as compute**: Give away credits/usage for marketing, not COGS
2. **Observable labor**: Show AI working (replays, time-lapses) = trust
3. **Founder-led**: Personal accounts > company pages (3-5x engagement)
4. **Daily shipping**: Consistent progress posts build audience
5. **Viral loops**: Every usage generates shareable artifacts

**The compounding effect:**
```
Ship feature
→ Generate viral artifact
→ Create founder post
→ Post drives views
→ Viewers sign up
→ New users generate artifacts
→ Cycle repeats
```

This is how you build a marketing engine that scales with product usage, not ad spend.

---

## What's New in v1.3

### Personal Voice Profiles

New skill for capturing and writing in individual voices:

#### `/matt-mckinney-voice`
**Write content in Matt McKinney's authentic voice**

An interview-driven workflow that extracts insights before writing, then produces articles in Matt's direct, problem-focused style.

**Voice characteristics:**
- Direct and real - no hedging or marketing fluff
- Problem-solver's voice - issue → fix → impact
- Grounded in experience - practitioner, not theorist
- Concise - short sentences, get to the point

**Use cases:**
- Blog posts and thought leadership articles
- Industry commentary
- Product marketing content
- Technical translation pieces

**Triggers:**
- "write article in matt's voice"
- "draft post mckinney style"
- "write in my voice"

**Workflow:**
1. Interview phase - 6 questions to extract the specific angle
2. Template selection - Problem/Solution or Comparison format
3. Voice application - Direct tone, signature frameworks
4. Quality check - Against anti-fluff checklist

**This is a reference implementation.** Use the brand-voice skill to create your own personal voice profile.

---

## Philosophy

This plugin follows a systems-first approach:
- Build foundation before execution
- Sequence skills logically
- Compress context between skills (essentials only)
- Track progress and assets
- Focus on what works, not what's trendy

## License

MIT
