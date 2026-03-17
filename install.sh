#!/usr/bin/env bash
# Vibe Marketing Skills — Installer
# Installs all 11 skills for Claude Code, OpenAI Codex, and/or GitHub Copilot CLI
# Usage: bash install.sh [--platform claude-code|codex|copilot|all] [--claude-only]

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec bash "$SCRIPT_DIR/_system/scripts/install.sh" "$@"
