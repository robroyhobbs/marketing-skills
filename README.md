# Vibe Marketing Skills v2.1

Your marketing team in a terminal. 11 skills that build on each other,
remember your brand, and get sharper every time you use them.

Works with **Claude Code**, **OpenAI Codex**, and **GitHub Copilot CLI**.
Designed for founders, solo marketers, and small teams who need senior-level
marketing output without the senior-level headcount.

---

## Quick Start

### Install

```bash
git clone https://github.com/robroyhobbs/marketing-skills.git
cd marketing-skills
bash install.sh
```

The installer auto-detects which AI CLI tools you have and installs for all of them.
To target a specific platform:

```bash
bash install.sh --platform claude-code   # Claude Code only
bash install.sh --platform codex         # OpenAI Codex only
bash install.sh --platform copilot       # GitHub Copilot CLI only
bash install.sh --platform all           # All platforms
```

### Run

| Platform | Command |
|----------|---------|
| Claude Code | `/start-here` |
| OpenAI Codex | `$start-here` |
| Copilot CLI | Copy `AGENTS.md` to your project root, then ask Copilot for marketing help |

That's it. The orchestrator scans your project, asks two questions, builds your
brand foundation, and routes you to the right skill.

---

## What Is in the Package

### Foundation Skills

| Skill | What it does |
|-------|-------------|
| `start-here` | Scans your project, builds your brand foundation, routes you to the right skill |
| `brand-voice` | Extracts or builds a voice profile so every piece of content sounds like you |
| `positioning-angles` | Finds the market angle that makes your offer stand out and sell |

### Strategy Skills

| Skill | What it does |
|-------|-------------|
| `keyword-research` | Maps your content territory with data-backed keyword clusters and priorities |
| `lead-magnet` | Generates lead magnet concepts and builds the actual content (checklists, guides, templates) |

### Execution Skills

| Skill | What it does |
|-------|-------------|
| `direct-response-copy` | Writes landing pages, sales copy, headlines, and CTAs that convert |
| `seo-content` | Produces long-form articles optimized for search that read like a human wrote them |
| `email-sequences` | Builds welcome, nurture, launch, and re-engagement email sequences |
| `newsletter` | Creates newsletter editions and format templates modeled on top creators |
| `creative` | AI-powered image, video, and graphic generation across five production modes |

### Distribution Skills

| Skill | What it does |
|-------|-------------|
| `content-atomizer` | Repurposes one piece of content into platform-optimized posts across 8 platforms |

### Creative Engine Modes

The `creative` skill includes five specialized production modes:

| Mode | What it produces |
|------|-----------------|
| Product Photo | Studio-quality product photography with controlled lighting and composition |
| Product Video | Short-form product videos, demos, and motion content |
| Social Graphics | Platform-sized graphics for feeds, stories, covers, and carousels |
| Talking Head | Presenter-style video with lip sync from text or audio |
| Ad Creative | Performance ad variants with hook-format testing matrices |

---

## Platform Support

### Claude Code

Skills install to `~/.claude/skills/` and are available immediately. Invoke
any skill with a slash command:

```
/start-here
/brand-voice
/positioning-angles
/direct-response-copy
/keyword-research
/seo-content
/email-sequences
/lead-magnet
/newsletter
/content-atomizer
/creative
```

### OpenAI Codex

Skills install to `~/.agents/skills/` using the same SKILL.md format. Codex
loads them automatically. Invoke with `$` prefix or describe your task and
Codex matches the right skill by description:

```
$start-here
$brand-voice
$direct-response-copy
```

Or just say what you need — "write a landing page for my SaaS" triggers
`direct-response-copy` automatically.

Codex also reads the repo-level `AGENTS.md` when you clone this repo and
work inside it directly.

### GitHub Copilot CLI

The installer creates two integration layers:

**1. AGENTS.md** — installed alongside skills so Copilot's coding agent
can discover and follow the marketing methodology. Copilot natively reads
`AGENTS.md` files for custom instructions. The simplest approach is to
copy the `AGENTS.md` to your project root:

```bash
cp ~/.copilot/skills/AGENTS.md /path/to/your/project/AGENTS.md
```

**2. Native .agent.md files** — installed to `~/.copilot/agents/` for
environments that support custom agent profiles:

```
vibe-start-here.agent.md
vibe-brand-voice.agent.md
vibe-direct-response-copy.agent.md
```

Then describe what you need in natural language when working with Copilot:

```
"scan my project and help me with marketing"
"write a welcome email sequence"
"find positioning angles for my product"
```

Copilot reads the AGENTS.md and loads the appropriate skill methodology.

> **Note:** Copilot CLI integration depends on your Copilot plan and
> version. The AGENTS.md approach works with Copilot coding agent. Check
> [GitHub's docs](https://docs.github.com/en/copilot) for the latest
> on custom agent support.

---

## System Requirements

**Required:**
- At least one supported AI CLI: Claude Code, OpenAI Codex, or GitHub Copilot CLI

**Optional (unlocks creative engine):**
- Replicate API key (`REPLICATE_API_TOKEN` in your `.env` file)
  Enables AI image generation, video production, and all `creative` modes.

**Optional (enhances specific skills):**
- Email ESP API key (Mailchimp, ConvertKit, or HubSpot) for direct email deployment
- Buffer or Hootsuite API key for social post scheduling
- GA4 or PostHog for performance tracking

Skills detect your connected tools automatically and adapt. No tool is
required to start -- every skill produces portable output files you can
use anywhere.

---

## How the Skills Work

### Brand Memory

Every skill reads from and writes to a shared `./brand/` directory at your
project root. This is how the system remembers who you are across sessions.

The first time you run the orchestrator, it creates your brand foundation:
- `voice-profile.md` -- How your brand sounds
- `positioning.md` -- Your market angle and differentiators
- `stack.md` -- Your connected tools and integrations
- `assets.md` -- Registry of everything the system has produced
- `learnings.md` -- Performance data that makes future output sharper

Skills only read the brand files they need. A keyword researcher does not
need your voice profile. A copywriter does not need your keyword plan.
This selective context keeps output focused and specific.

### Skill Chaining

Skills are organized into layers: Foundation, Strategy, Execution, and
Distribution. Each layer builds on the one before it.

```
Foundation    brand-voice + positioning-angles
     |
Strategy      keyword-research, lead-magnet, creative (setup)
     |
Execution     direct-response-copy, seo-content, email-sequences,
              newsletter, creative
     |
Distribution  content-atomizer, creative (ad mode)
```

The orchestrator handles routing and can chain skills into complete
workflows. Ask for "a lead magnet funnel" and it will run the right
skills in sequence, passing context between each step.

### Output Formatting

Every skill uses a consistent visual design system built for terminal
readability. Output follows a four-section structure:

1. **Header** -- What was produced and when
2. **Content** -- The actual deliverable
3. **Files Saved** -- Exactly what was written to disk and where
4. **What's Next** -- Concrete next steps with skill references and time estimates

No markdown rendering, no HTML, no color codes. The visual system uses
Unicode box-drawing characters and a small set of status indicators.

---

## File Structure

```
marketing-skills/
├── README.md                          <- You are here
├── AGENTS.md                          <- Cross-platform agent instructions (Codex + Copilot)
├── ARCHITECTURE.md                    <- Full system design documentation
├── install.sh                         <- Multi-platform installer entry point
├── LICENSE                            <- MIT license
├── _system/                           <- Shared infrastructure
│   ├── brand-memory.md                <- How skills read/write brand context
│   ├── output-format.md               <- Visual design system for all output
│   ├── schemas/                       <- JSON Schema contracts for structured data
│   │   ├── voice-profile.schema.json
│   │   ├── campaign-brief.schema.json
│   │   ├── keyword-plan.schema.json
│   │   ├── email-sequence-summary.schema.json
│   │   ├── ad-matrix.schema.json
│   │   └── content-brief.schema.json
│   └── scripts/                       <- Install, QA, and packaging scripts
│       ├── install.sh                 <- Multi-platform installer (claude-code, codex, copilot)
│       ├── doctor.sh
│       ├── e2e-fresh-install.sh
│       └── package.sh
├── start-here/SKILL.md                <- Orchestrator and router
├── brand-voice/SKILL.md               <- Voice extraction and building
├── positioning-angles/
│   ├── SKILL.md                       <- Market angle discovery
│   └── references/                    <- Positioning frameworks
├── keyword-research/
│   ├── SKILL.md                       <- Keyword strategy and clustering
│   └── references/
├── seo-content/
│   ├── SKILL.md                       <- SEO article production
│   └── references/
├── direct-response-copy/
│   ├── SKILL.md                       <- High-conversion copywriting
│   └── references/
├── email-sequences/SKILL.md           <- Email automation sequences
├── lead-magnet/
│   ├── SKILL.md                       <- Lead magnet concept and build
│   └── references/
├── newsletter/
│   ├── SKILL.md                       <- Newsletter edition creation
│   └── references/
├── content-atomizer/
│   ├── SKILL.md                       <- Cross-platform repurposing
│   └── references/
└── creative/
    ├── SKILL.md                       <- Creative engine router
    ├── modes/                         <- Five production mode playbooks
    └── references/                    <- Model registry and visual intelligence
```

---

## FAQ

**Which AI CLI tools are supported?**

Claude Code, OpenAI Codex, and GitHub Copilot CLI. The skills use the same
SKILL.md format that Claude Code and Codex both read natively. Copilot CLI
uses an AGENTS.md wrapper that points to the same skill files.

**How do I install for multiple platforms at once?**

Run `bash install.sh --platform all` or just `bash install.sh` — the
installer auto-detects which platforms you have installed.

**Do the skills work the same across platforms?**

Yes. The methodology, brand memory system, and output format are identical.
The only difference is invocation syntax (`/skill` vs `$skill` vs natural
language).

**How do I update my brand voice after it is set?**

Run the brand-voice skill again. It detects the existing profile, shows you a
summary, and offers targeted update options -- adjust tone, update
vocabulary, add new samples, or full rebuild.

**How do I connect my email tool (Mailchimp, ConvertKit, etc.)?**

Add your API key to the `.env` file at your project root:
```
MAILCHIMP_API_KEY=your-key-here
```
Skills detect connected tools automatically on their next run.

**How do I connect the creative engine?**

Add your Replicate API token to `.env`:
```
REPLICATE_API_TOKEN=your-token-here
```
Then run the creative skill. Without Replicate, the skill generates detailed
prompts and briefs you can use with any image/video tool.

**How do I run a multi-step workflow?**

Tell the orchestrator what you want in plain language:
- "Build me a lead magnet funnel"
- "Launch my product"
- "Create a content system"
- "Start a newsletter"

It recognizes these as multi-skill workflows and chains the right skills
together automatically.

**Can I edit the output files manually?**

Yes. Every file the system writes is human-readable markdown. Edit freely.
Skills check for existing files before overwriting and will show you a
diff and ask for confirmation before replacing anything.

**How does the system improve over time?**

After major deliverables, skills ask for feedback. Your responses are
logged to `./brand/learnings.md`. Future skill runs read relevant
learnings and adjust their output.

**What if I want to start over?**

Run the orchestrator and tell it you want to reset. It will guide you
through removing the `./brand/` and `./campaigns/` directories. No
files are deleted without your explicit confirmation.

---

## Health Check

After installing, verify everything is in place:

```bash
bash ~/.claude/skills/_system/scripts/doctor.sh    # Claude Code
bash ~/.agents/skills/_system/scripts/doctor.sh    # Codex
bash ~/.copilot/skills/_system/scripts/doctor.sh   # Copilot
```

29 checks across system files, schemas, skills, and API keys.

---

## License

MIT — use freely for personal and commercial projects.

---

## Version

v2.1 -- March 2026

11 marketing skills, 5 creative engine modes, shared brand memory,
selective context passing, pre-built multi-skill workflows, JSON schema
contracts for downstream automation, terminal-native visual design system,
and multi-platform support for Claude Code, OpenAI Codex, and GitHub
Copilot CLI.
