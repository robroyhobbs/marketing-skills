# Vibe Marketing Skills — Agent Instructions

You have access to a complete marketing skill system in this repository.
Each skill is a SKILL.md file containing deep marketing methodology — not prompts,
but executable frameworks you follow step by step.

## Available Skills

When the user asks for marketing help, load and follow the relevant skill:

| Task | Skill File | What It Does |
|------|-----------|--------------|
| "Get started" / "scan my project" | `start-here/SKILL.md` | Orchestrator — scans project, builds brand foundation, routes to right skill |
| "Define my voice" / "brand voice" | `brand-voice/SKILL.md` | Extracts or builds a voice profile from existing content or interviews |
| "Find my angle" / "positioning" | `positioning-angles/SKILL.md` | Competitive research + market angle discovery |
| "Write copy" / "landing page" | `direct-response-copy/SKILL.md` | High-conversion copywriting with 7 proven frameworks |
| "Keyword research" / "content strategy" | `keyword-research/SKILL.md` | Data-backed keyword clustering and content planning |
| "Write an article" / "SEO content" | `seo-content/SKILL.md` | Search-optimized long-form content with SERP analysis |
| "Email sequence" / "welcome emails" | `email-sequences/SKILL.md` | Build complete email automation sequences |
| "Lead magnet" / "freebie" / "opt-in" | `lead-magnet/SKILL.md` | Concept and build lead magnets (checklists, templates, guides) |
| "Newsletter" / "weekly email" | `newsletter/SKILL.md` | Newsletter edition creation modeled on top creators |
| "Repurpose" / "distribute" / "social posts" | `content-atomizer/SKILL.md` | Transform content into platform-optimized posts across 8 platforms |
| "Product photo" / "video" / "graphics" | `creative/SKILL.md` | AI image, video, and graphic generation (requires Replicate API) |

## How to Use

1. Read the relevant `SKILL.md` file for the user's request
2. Follow its instructions exactly — each skill contains complete methodology
3. Read `_system/brand-memory.md` to understand how brand context is shared
4. Read `_system/output-format.md` for the visual design system all output follows

## Brand Memory

Skills read from and write to a `./brand/` directory in the user's project.
This persists brand identity across sessions. See `_system/brand-memory.md` for the protocol.

## Multi-Skill Workflows

For complex requests, chain skills in sequence:
- "Launch my product" → positioning-angles → direct-response-copy → email-sequences → content-atomizer
- "Build a lead gen system" → lead-magnet → direct-response-copy → email-sequences
- "Start a content system" → keyword-research → seo-content → newsletter → content-atomizer

## Installation

Run `bash install.sh` to install skills for your AI CLI tool (Claude Code, OpenAI Codex, or GitHub Copilot CLI).
