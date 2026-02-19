#!/usr/bin/env bash
# Vibe Marketing Skills — Installer
# Installs all 11 skills to ~/.claude/skills/vibe-marketing/
# Usage: bash install.sh [--claude-only]

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec bash "$SCRIPT_DIR/_system/scripts/install.sh" "$@"
