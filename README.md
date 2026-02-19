# Vibe Marketing Skills v2.0

**11 marketing skills for Claude Code. Built on real methodology. Remembers your brand.**

Claude gives generic output when you give it generic prompts. These skills give Claude 100+ years of direct-response methodology, live SERP analysis, competitive intelligence, and a brand memory system — so it stops being a generic chatbot and starts being your marketing team.

One command to start:

```
/start-here
```

---

## The Problem This Solves

Most people use Claude for marketing like this:

> "Write me a landing page for my SaaS tool."

Claude produces something. It's fine. It sounds like every other AI-generated landing page.

The issue isn't Claude. It's that Claude has no methodology, no memory of your brand, and no understanding of your competitive position.

These skills fix that. Each one embeds a complete discipline — copywriting, SEO, positioning, email — into an executable framework Claude follows every time.

---

## What's Included

### Foundation
| Skill | What it does |
|-------|-------------|
| `/start-here` | Scans your project, builds your brand foundation, routes you to the right skill |
| `/brand-voice` | Extracts or builds a voice profile so every piece of content sounds like you |
| `/positioning-angles` | Finds the market angle that makes your offer stand out |

### Strategy
| Skill | What it does |
|-------|-------------|
| `/keyword-research` | Maps your content territory with data-backed keyword clusters |
| `/lead-magnet` | Generates lead magnet concepts and builds the actual content |

### Execution
| Skill | What it does |
|-------|-------------|
| `/direct-response-copy` | Writes landing pages, sales copy, headlines, and CTAs that convert |
| `/seo-content` | Long-form articles optimized for search that read like a human wrote them |
| `/email-sequences` | Welcome, nurture, launch, and re-engagement sequences |
| `/newsletter` | Newsletter editions and format templates modeled on top creators |
| `/creative` | AI image, video, and graphic generation across five production modes |

### Distribution
| Skill | What it does |
|-------|-------------|
| `/content-atomizer` | Repurposes one piece of content into platform-optimized posts across 8 platforms |

---

## Quick Start

### Option 1: Install Script (recommended)

```bash
curl -sSL https://raw.githubusercontent.com/robroyhobbs/marketing-skills/add-marketing-skills/_system/scripts/install.sh | bash
```

### Option 2: Manual Install

```bash
git clone https://github.com/robroyhobbs/marketing-skills.git
bash marketing-skills/_system/scripts/install.sh
```

After install, open any project in Claude Code and run:

```
/start-here
```

The orchestrator takes over from there.

---

## How It Works

### Brand Memory

Every skill reads from and writes to a `./brand/` directory in your project. This is how the system remembers who you are across sessions.

First time you run `/start-here`, it creates your brand foundation:
- `voice-profile.md` — How your brand sounds
- `positioning.md` — Your market angle and differentiators
- `stack.md` — Your connected tools
- `assets.md` — Registry of everything produced
- `learnings.md` — Performance data that sharpens future output

### Skill Chaining

Skills build on each other in layers:

```
Foundation   /brand-voice + /positioning-angles
     |
Strategy     /keyword-research, /lead-magnet
     |
Execution    /direct-response-copy, /seo-content, /email-sequences,
             /newsletter, /creative
     |
Distribution /content-atomizer
```

The orchestrator handles routing and chains skills into complete workflows. Tell it "build me a lead magnet funnel" and it runs `/lead-magnet` → `/direct-response-copy` → `/email-sequences` → `/content-atomizer` in sequence, passing context between each step.

### Works Without Any Setup

Every skill works standalone with zero prior context. No brand directory? No problem. The system asks what it needs and produces solid output. Brand memory enhances output — it does not gate it.

---

## Common Workflows

### Launch a Product
```
/positioning-angles   → Find your angle
/direct-response-copy → Write the landing page
/email-sequences      → Build the launch sequence
/content-atomizer     → Distribute everywhere
```

### Build a Lead Gen System
```
/lead-magnet          → Create your opt-in offer
/direct-response-copy → Write the opt-in page
/email-sequences      → Build the welcome sequence
/seo-content          → Drive organic traffic
```

### Start a Content System
```
/keyword-research     → Map your content territory
/seo-content          → Write the articles
/newsletter           → Repurpose into newsletter
/content-atomizer     → Distribute across platforms
```

Or just run `/start-here` and tell it what you're trying to do.

---

## System Requirements

**Required:**
- Claude Code (Claude's official CLI)

**Optional — unlocks the creative engine:**
- Replicate API key (`REPLICATE_API_TOKEN` in your `.env`)

**Optional — enables direct publishing:**
- Email ESP API key (Mailchimp, ConvertKit, HubSpot)
- Buffer or Hootsuite API key for social scheduling

Skills detect connected tools automatically. Every skill produces portable markdown output you can use anywhere.

---

## Health Check

After installing, verify everything is in place:

```bash
bash ~/.claude/skills/vibe-marketing/doctor.sh
```

29 checks across system files, schemas, skills, and API keys.

---

## File Structure

```
marketing-skills/
├── README.md
├── ARCHITECTURE.md          ← Full system design documentation
├── _system/                 ← Shared infrastructure
│   ├── brand-memory.md
│   ├── output-format.md
│   ├── schemas/             ← 6 JSON Schema contracts
│   └── scripts/             ← install.sh, doctor.sh, package.sh
├── start-here/SKILL.md      ← Orchestrator
├── brand-voice/
├── positioning-angles/
├── keyword-research/
├── lead-magnet/
├── direct-response-copy/
├── seo-content/
├── email-sequences/
├── newsletter/
├── content-atomizer/
└── creative/
    ├── SKILL.md
    ├── modes/               ← 5 production mode playbooks
    └── references/          ← MODEL_REGISTRY.md, VISUAL_INTELLIGENCE.md
```

---

## FAQ

**Do I need a brand profile to start?**
No. Every skill works standalone. Brand memory improves output over time — it does not block you from starting.

**How do I update my brand voice?**
Run `/brand-voice` again. It detects the existing profile and offers targeted update options.

**How do I use the creative engine?**
Add `REPLICATE_API_TOKEN=your-token` to your `.env` file, then run `/creative`. Without the token, the skill generates detailed prompts you can use with any image or video tool.

**What if I want a multi-step workflow?**
Tell `/start-here` what you want — "build me a lead magnet funnel," "launch my product," "start a newsletter." It recognizes these as workflows and chains the right skills automatically.

**Can I edit the output files?**
Yes. Every file is human-readable markdown. Skills show a diff before replacing anything.

---

## License

MIT — use freely for personal and commercial projects.

---

*Built for Claude Code. Designed for founders, solo marketers, and small teams who need senior-level marketing output without the senior-level headcount.*
