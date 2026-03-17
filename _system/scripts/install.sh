#!/usr/bin/env bash
# ============================================================================
# install.sh - Vibe Marketing Skills v2.1 Multi-Platform Installer
# ============================================================================
# Installs the Vibe Marketing skill suite for Claude Code, OpenAI Codex,
# and/or GitHub Copilot CLI.
#
# Usage:
#   ./install.sh                         Auto-detect and install for all found platforms
#   ./install.sh --platform claude-code  Install for Claude Code only
#   ./install.sh --platform codex        Install for OpenAI Codex only
#   ./install.sh --platform copilot      Install for GitHub Copilot CLI only
#   ./install.sh --platform all          Install for all platforms
#   ./install.sh --claude-only           Exclude creative skill (no Replicate)
#
# Environment:
#   TVM_INSTALL_HOME  Override the install root (default: auto-detected per platform)
# ============================================================================
set -euo pipefail

# ---------------------------------------------------------------------------
# Configuration
# ---------------------------------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
CLAUDE_ONLY=false
PLATFORM=""
VERSION="2.1"

# ---------------------------------------------------------------------------
# Parse arguments
# ---------------------------------------------------------------------------
while [[ $# -gt 0 ]]; do
  case "$1" in
    --platform)
      PLATFORM="$2"
      shift 2
      ;;
    --claude-only)
      CLAUDE_ONLY=true
      shift
      ;;
    --help|-h)
      echo "Usage: $0 [--platform <target>] [--claude-only]"
      echo ""
      echo "Platforms:"
      echo "  claude-code  Install to ~/.claude/skills/ (Claude Code)"
      echo "  codex        Install to ~/.agents/skills/ (OpenAI Codex)"
      echo "  copilot      Install to ~/.copilot/skills/ + generate AGENTS.md (GitHub Copilot CLI)"
      echo "  all          Install for all platforms"
      echo "  (omit)       Auto-detect installed platforms"
      echo ""
      echo "Options:"
      echo "  --claude-only  Skip the creative skill (requires Replicate API)"
      echo "  --help         Show this help message"
      exit 0
      ;;
    *)
      echo "Error: Unknown option '$1'"
      echo "Run '$0 --help' for usage."
      exit 1
      ;;
  esac
done

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------
BOLD="\033[1m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
CYAN="\033[0;36m"
RED="\033[0;31m"
RESET="\033[0m"

info()    { echo -e "${CYAN}[info]${RESET}  $1"; }
success() { echo -e "${GREEN}[done]${RESET}  $1"; }
warn()    { echo -e "${YELLOW}[warn]${RESET}  $1"; }
error()   { echo -e "${RED}[err]${RESET}   $1"; }

# ---------------------------------------------------------------------------
# Platform detection
# ---------------------------------------------------------------------------
detect_platforms() {
  local platforms=()

  # Claude Code: check for ~/.claude/ or claude command
  if [[ -d "$HOME/.claude" ]] || command -v claude &>/dev/null; then
    platforms+=("claude-code")
  fi

  # OpenAI Codex: check for ~/.agents/ or ~/.codex/ or codex command
  if [[ -d "$HOME/.agents" ]] || [[ -d "$HOME/.codex" ]] || command -v codex &>/dev/null; then
    platforms+=("codex")
  fi

  # GitHub Copilot CLI: check for gh copilot extension or ~/.copilot/
  if gh copilot --help &>/dev/null 2>&1 || [[ -d "$HOME/.copilot" ]]; then
    platforms+=("copilot")
  fi

  if [[ ${#platforms[@]} -eq 0 ]]; then
    # Default to Claude Code if nothing detected
    warn "No AI CLI platforms detected. Defaulting to Claude Code."
    platforms+=("claude-code")
  fi

  echo "${platforms[@]}"
}

# ---------------------------------------------------------------------------
# Platform-specific install paths
# ---------------------------------------------------------------------------
get_skills_dir() {
  local platform="$1"
  case "$platform" in
    claude-code)
      echo "${TVM_INSTALL_HOME:-$HOME/.claude}/skills"
      ;;
    codex)
      echo "$HOME/.agents/skills"
      ;;
    copilot)
      echo "$HOME/.copilot/skills"
      ;;
  esac
}

# ---------------------------------------------------------------------------
# Banner
# ---------------------------------------------------------------------------
echo ""
echo -e "${BOLD}  Vibe Marketing Skills v${VERSION} Multi-Platform Installer${RESET}"
echo -e "  ──────────────────────────────────────────────────"
echo ""

# ---------------------------------------------------------------------------
# Resolve target platforms
# ---------------------------------------------------------------------------
TARGETS=()
case "$PLATFORM" in
  claude-code|codex|copilot)
    TARGETS+=("$PLATFORM")
    ;;
  all)
    TARGETS+=("claude-code" "codex" "copilot")
    ;;
  "")
    # Auto-detect
    read -ra TARGETS <<< "$(detect_platforms)"
    info "Auto-detected platforms: ${TARGETS[*]}"
    ;;
  *)
    error "Unknown platform: $PLATFORM"
    echo "  Valid: claude-code, codex, copilot, all"
    exit 1
    ;;
esac

info "Source:  $SKILLS_ROOT"
info "Targets: ${TARGETS[*]}"
if $CLAUDE_ONLY; then
  warn "Mode:    Claude-only (creative skill excluded)"
else
  info "Mode:    Full suite"
fi
echo ""

# ---------------------------------------------------------------------------
# Validate source directory
# ---------------------------------------------------------------------------
if [[ ! -f "$SKILLS_ROOT/_system/brand-memory.md" ]]; then
  error "Cannot find skills source at $SKILLS_ROOT"
  echo "  Run this script from inside the marketing-skills/ directory tree."
  exit 1
fi

# ---------------------------------------------------------------------------
# Build list of skills to install
# ---------------------------------------------------------------------------
SKILLS=(
  "start-here"
  "brand-voice"
  "positioning-angles"
  "direct-response-copy"
  "keyword-research"
  "seo-content"
  "email-sequences"
  "lead-magnet"
  "newsletter"
  "content-atomizer"
)

if ! $CLAUDE_ONLY; then
  SKILLS+=("creative")
fi

# ---------------------------------------------------------------------------
# Copy helpers
# ---------------------------------------------------------------------------
copy_tree() {
  local src="$1"
  local dst="$2"
  if command -v rsync &>/dev/null; then
    rsync -a --exclude='.DS_Store' --exclude='.git' "$src/" "$dst/"
  else
    cp -R "$src/" "$dst/"
    find "$dst" -name '.DS_Store' -delete 2>/dev/null || true
  fi
}

copy_file() {
  cp "$1" "$2"
}

# ---------------------------------------------------------------------------
# Install skills to a target directory
# ---------------------------------------------------------------------------
install_skills() {
  local skills_dir="$1"
  local system_dir="$skills_dir/_system"

  # Create directory structure
  mkdir -p "$system_dir/schemas"
  mkdir -p "$system_dir/scripts"
  for skill in "${SKILLS[@]}"; do
    mkdir -p "$skills_dir/$skill"
    if [[ -d "$SKILLS_ROOT/$skill/references" ]]; then
      mkdir -p "$skills_dir/$skill/references"
    fi
    if [[ -d "$SKILLS_ROOT/$skill/modes" ]]; then
      mkdir -p "$skills_dir/$skill/modes"
    fi
  done

  # System files
  copy_file "$SKILLS_ROOT/_system/brand-memory.md"  "$system_dir/brand-memory.md"
  copy_file "$SKILLS_ROOT/_system/output-format.md"  "$system_dir/output-format.md"

  # Schemas
  copy_tree "$SKILLS_ROOT/_system/schemas" "$system_dir/schemas"

  # Scripts
  copy_tree "$SKILLS_ROOT/_system/scripts" "$system_dir/scripts"
  chmod +x "$system_dir/scripts/"*.sh 2>/dev/null || true

  # Individual skills
  local count=0
  for skill in "${SKILLS[@]}"; do
    copy_tree "$SKILLS_ROOT/$skill" "$skills_dir/$skill"
    count=$((count + 1))
  done

  echo "$count"
}

# ---------------------------------------------------------------------------
# Generate AGENTS.md for Copilot/Codex cross-platform discovery
# ---------------------------------------------------------------------------
generate_agents_md() {
  local target_dir="$1"
  local agents_file="$target_dir/AGENTS.md"

  cat > "$agents_file" << 'AGENTS_EOF'
# Vibe Marketing Skills — Agent Instructions

You have access to a complete marketing skill system installed in this directory.
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
AGENTS_EOF

  echo "$agents_file"
}

# ---------------------------------------------------------------------------
# Skill metadata for .agent.md generation
# ---------------------------------------------------------------------------
get_skill_description() {
  case "$1" in
    start-here)         echo "Scans your project, builds your brand foundation, and routes you to the right marketing skill. Use when starting any marketing work or when unsure which skill to use." ;;
    brand-voice)        echo "Extracts or builds a voice profile so every piece of content sounds like you. Three modes: Extract from existing content, Build from scratch, or Auto-Scrape from a URL." ;;
    positioning-angles) echo "Finds the market angle that makes your offer stand out and sell. Performs competitive web searches, maps saturated vs white-space claims, generates 3-5 distinct angles." ;;
    direct-response-copy) echo "Writes landing pages, sales copy, headlines, and CTAs that convert. Embeds methodology from Schwartz, Hopkins, Ogilvy, Halbert, Caples, Sugarman, and Collier." ;;
    keyword-research)   echo "Maps your content territory with data-backed keyword clusters and priorities. Uses the 6 Circles Method, validates with live SERP data, and builds a prioritized content plan." ;;
    seo-content)        echo "Produces long-form articles optimized for search that read like a human wrote them. Performs live SERP analysis, integrates People Also Ask, generates schema markup." ;;
    email-sequences)    echo "Builds welcome, nurture, launch, and re-engagement email sequences with subject line variants, timing, and full copy. Detects Mailchimp, ConvertKit, HubSpot for direct deployment." ;;
    lead-magnet)        echo "Generates lead magnet concepts and builds the actual content — checklists, templates, guides, quizzes. Researches competitor lead magnets to find gaps." ;;
    newsletter)         echo "Creates newsletter editions and format templates modeled on top creators like Lenny Rachitsky, Morning Brew, and Greg Isenberg. Supports multiple formats." ;;
    content-atomizer)   echo "Repurposes one piece of content into platform-optimized posts across LinkedIn, X, Instagram, TikTok, YouTube, Threads, Bluesky, and Reddit." ;;
    creative)           echo "AI-powered image, video, and graphic generation across five production modes: product photo, product video, social graphics, talking head, and ad creative." ;;
    *)                  echo "Vibe Marketing skill: $1" ;;
  esac
}

# ---------------------------------------------------------------------------
# Generate individual .agent.md files for Copilot CLI native agents
# ---------------------------------------------------------------------------
generate_copilot_agents() {
  local agents_dir="$HOME/.copilot/agents"
  mkdir -p "$agents_dir"

  local count=0
  for skill in "${SKILLS[@]}"; do
    local desc
    desc="$(get_skill_description "$skill")"
    local skills_dir="$1"
    local agent_file="$agents_dir/vibe-${skill}.agent.md"

    cat > "$agent_file" << AGENT_EOF
---
name: Vibe Marketing — ${skill}
description: ${desc}
---

# Instructions

You are a marketing specialist executing the "${skill}" skill from the Vibe Marketing system.

## Setup

1. Read the full skill methodology from: ${skills_dir}/${skill}/SKILL.md
2. Read the brand memory protocol from: ${skills_dir}/_system/brand-memory.md
3. Read the output format system from: ${skills_dir}/_system/output-format.md

## Execution

Follow the SKILL.md instructions exactly. The skill contains complete methodology
with decision frameworks, examples, and output templates. Do not improvise — the
skill's methodology is battle-tested and produces better results than ad-hoc prompting.

## Brand Memory

Check if a \`./brand/\` directory exists in the user's project. If it does, load the
relevant brand files per the Context Matrix in the skill. If it doesn't, the skill
works standalone — ask what you need as you go.

## Output

Follow the visual design system from \`_system/output-format.md\`. All output uses
terminal-native Unicode formatting with a four-section structure: Header, Content,
Files Saved, and What's Next.
AGENT_EOF

    count=$((count + 1))
  done

  echo "$count"
}

# ---------------------------------------------------------------------------
# Install for each target platform
# ---------------------------------------------------------------------------
TOTAL_PLATFORMS=0

for target in "${TARGETS[@]}"; do
  echo ""
  echo -e "${BOLD}  Installing for: ${CYAN}$target${RESET}"
  echo -e "  ─────────────────────────────"

  SKILLS_DIR="$(get_skills_dir "$target")"
  info "Target directory: $SKILLS_DIR"

  INSTALLED_COUNT=$(install_skills "$SKILLS_DIR")

  # Platform-specific post-install
  case "$target" in
    claude-code)
      # Claude Code uses skills natively — no extra setup needed
      success "$INSTALLED_COUNT skills installed to $SKILLS_DIR"
      info "Invoke skills with: /start-here, /brand-voice, /seo-content, etc."
      ;;
    codex)
      # Codex reads SKILL.md from ~/.agents/skills/ natively
      success "$INSTALLED_COUNT skills installed to $SKILLS_DIR"
      info "Invoke skills with: \$start-here, \$brand-voice, \$seo-content, etc."
      info "Or describe your task — Codex matches skills by description automatically."
      ;;
    copilot)
      # Copilot CLI: AGENTS.md for instruction discovery + .agent.md for native agents
      AGENTS_PATH=$(generate_agents_md "$SKILLS_DIR")
      AGENT_COUNT=$(generate_copilot_agents "$SKILLS_DIR")
      success "$INSTALLED_COUNT skills installed to $SKILLS_DIR"
      success "Generated $AGENTS_PATH"
      success "$AGENT_COUNT native .agent.md files in ~/.copilot/agents/"
      info "Add to your shell: export COPILOT_CUSTOM_INSTRUCTIONS_DIRS=\"$SKILLS_DIR\""
      info "Or invoke directly: gh copilot --agent vibe-brand-voice"
      ;;
  esac

  TOTAL_PLATFORMS=$((TOTAL_PLATFORMS + 1))
done

# ---------------------------------------------------------------------------
# Summary
# ---------------------------------------------------------------------------
echo ""
echo -e "${BOLD}  Installation Complete${RESET}"
echo -e "  ─────────────────────"
echo ""
success "$TOTAL_PLATFORMS platform(s) configured"
success "${#SKILLS[@]} skills per platform"

if ! $CLAUDE_ONLY; then
  if [[ -z "${REPLICATE_API_TOKEN:-}" ]]; then
    echo ""
    warn "Replicate API token not found in environment."
    warn "The creative skill requires REPLICATE_API_TOKEN to generate images."
    warn "Set it with: export REPLICATE_API_TOKEN=r8_your_token_here"
  fi
fi

echo ""
echo -e "  ${CYAN}Quick start:${RESET}"
for target in "${TARGETS[@]}"; do
  case "$target" in
    claude-code) echo -e "    Claude Code:  ${CYAN}/start-here${RESET}" ;;
    codex)       echo -e "    Codex:        ${CYAN}\$start-here${RESET}" ;;
    copilot)     echo -e "    Copilot CLI:  ${CYAN}\"scan my project and get started with marketing\"${RESET}" ;;
  esac
done
echo ""
echo -e "  Run ${CYAN}doctor.sh${RESET} to verify your installation."
echo ""
