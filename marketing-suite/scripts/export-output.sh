#!/bin/bash
# Export Marketing Suite Outputs
# Organizes skill outputs into structured files

EXPORT_DIR="$HOME/marketing-suite-exports"

# Create export directory structure
setup_dirs() {
  mkdir -p "$EXPORT_DIR"/{foundation,strategy,execution,distribution}
  mkdir -p "$EXPORT_DIR/execution"/{landing-pages,email-sequences,content,newsletters}
  mkdir -p "$EXPORT_DIR/distribution/social"
}

# Function to export with metadata
export_file() {
  category=$1
  type=$2
  filename=$3
  content=$4

  # Determine target directory
  case $category in
    "foundation")
      target_dir="$EXPORT_DIR/foundation"
      ;;
    "strategy")
      target_dir="$EXPORT_DIR/strategy"
      ;;
    "execution")
      target_dir="$EXPORT_DIR/execution/$type"
      ;;
    "distribution")
      target_dir="$EXPORT_DIR/distribution/$type"
      ;;
    *)
      target_dir="$EXPORT_DIR"
      ;;
  esac

  # Create filename with timestamp
  timestamp=$(date +%Y%m%d)
  filepath="$target_dir/${timestamp}-${filename}.md"

  # Add metadata header
  cat > "$filepath" <<EOF
---
title: $filename
category: $category
type: $type
created: $(date)
---

$content
EOF

  echo "✅ Exported to: $filepath"

  # Also update assets tracker if available
  if command -v jq &> /dev/null; then
    if [ -f "$HOME/.marketing-suite-assets.json" ]; then
      case $type in
        "brand-voice"|"positioning")
          cat "$HOME/.marketing-suite-assets.json" | \
          jq ".foundation.$(echo $type | tr '-' '_') = true | .last_updated = \"$(date)\"" \
          > /tmp/assets.json && mv /tmp/assets.json "$HOME/.marketing-suite-assets.json"
          ;;
        "keyword-research"|"lead-magnet")
          cat "$HOME/.marketing-suite-assets.json" | \
          jq ".strategy.$(echo $type | tr '-' '_') = true | .last_updated = \"$(date)\"" \
          > /tmp/assets.json && mv /tmp/assets.json "$HOME/.marketing-suite-assets.json"
          ;;
        "landing-pages"|"email-sequences"|"content"|"newsletters")
          cat "$HOME/.marketing-suite-assets.json" | \
          jq ".execution.$(echo $type | tr '-' '_') += [\"$filename\"] | .last_updated = \"$(date)\"" \
          > /tmp/assets.json && mv /tmp/assets.json "$HOME/.marketing-suite-assets.json"
          ;;
        "social")
          cat "$HOME/.marketing-suite-assets.json" | \
          jq ".execution.social_content += [\"$filename\"] | .last_updated = \"$(date)\"" \
          > /tmp/assets.json && mv /tmp/assets.json "$HOME/.marketing-suite-assets.json"
          ;;
      esac
    fi
  fi
}

# Export brand voice
export_brand_voice() {
  echo "Export Brand Voice"
  echo "Paste your brand voice content (Ctrl+D when done):"
  content=$(cat)
  export_file "foundation" "brand-voice" "brand-voice-profile" "$content"
}

# Export positioning
export_positioning() {
  echo "Export Positioning Angles"
  echo "Paste your positioning content (Ctrl+D when done):"
  content=$(cat)
  export_file "foundation" "positioning" "positioning-angles" "$content"
}

# Export keyword research
export_keywords() {
  echo "Export Keyword Research"
  echo "Paste your keyword research (Ctrl+D when done):"
  content=$(cat)
  export_file "strategy" "keyword-research" "keyword-strategy" "$content"
}

# Export lead magnet
export_lead_magnet() {
  echo "Export Lead Magnet"
  echo "Enter lead magnet name:"
  read -r name
  echo "Paste your lead magnet content (Ctrl+D when done):"
  content=$(cat)
  export_file "strategy" "lead-magnet" "$name" "$content"
}

# Export landing page
export_landing_page() {
  echo "Export Landing Page"
  echo "Enter landing page name:"
  read -r name
  echo "Paste your landing page copy (Ctrl+D when done):"
  content=$(cat)
  export_file "execution" "landing-pages" "$name" "$content"
}

# Export email sequence
export_email_sequence() {
  echo "Export Email Sequence"
  echo "Enter sequence name:"
  read -r name
  echo "Paste your email sequence (Ctrl+D when done):"
  content=$(cat)
  export_file "execution" "email-sequences" "$name" "$content"
}

# Export content piece
export_content() {
  echo "Export Content Piece"
  echo "Enter content title:"
  read -r name
  echo "Paste your content (Ctrl+D when done):"
  content=$(cat)
  export_file "execution" "content" "$name" "$content"
}

# Export newsletter
export_newsletter() {
  echo "Export Newsletter"
  echo "Enter newsletter edition name:"
  read -r name
  echo "Paste your newsletter (Ctrl+D when done):"
  content=$(cat)
  export_file "execution" "newsletters" "$name" "$content"
}

# Export social content
export_social() {
  echo "Export Social Content"
  echo "Enter social post name:"
  read -r name
  echo "Paste your social content (Ctrl+D when done):"
  content=$(cat)
  export_file "distribution" "social" "$name" "$content"
}

# List all exports
list_exports() {
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "📁 Marketing Suite Exports"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo ""
  echo "Location: $EXPORT_DIR"
  echo ""

  if [ ! -d "$EXPORT_DIR" ]; then
    echo "No exports yet. Use 'export-output.sh <type>' to create one."
    return
  fi

  echo "🏗️  FOUNDATION"
  find "$EXPORT_DIR/foundation" -type f 2>/dev/null | while read -r file; do
    echo "  - $(basename "$file")"
  done
  echo ""

  echo "🎯 STRATEGY"
  find "$EXPORT_DIR/strategy" -type f 2>/dev/null | while read -r file; do
    echo "  - $(basename "$file")"
  done
  echo ""

  echo "✍️  EXECUTION"
  echo "  Landing Pages:"
  find "$EXPORT_DIR/execution/landing-pages" -type f 2>/dev/null | while read -r file; do
    echo "    - $(basename "$file")"
  done

  echo "  Email Sequences:"
  find "$EXPORT_DIR/execution/email-sequences" -type f 2>/dev/null | while read -r file; do
    echo "    - $(basename "$file")"
  done

  echo "  Content:"
  find "$EXPORT_DIR/execution/content" -type f 2>/dev/null | while read -r file; do
    echo "    - $(basename "$file")"
  done

  echo "  Newsletters:"
  find "$EXPORT_DIR/execution/newsletters" -type f 2>/dev/null | while read -r file; do
    echo "    - $(basename "$file")"
  done
  echo ""

  echo "📢 DISTRIBUTION"
  find "$EXPORT_DIR/distribution" -type f 2>/dev/null | while read -r file; do
    echo "  - $(basename "$file")"
  done
  echo ""
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
}

# Initialize
setup_dirs

# Main script logic
case ${1:-help} in
  "brand-voice")
    export_brand_voice
    ;;
  "positioning")
    export_positioning
    ;;
  "keywords")
    export_keywords
    ;;
  "lead-magnet")
    export_lead_magnet
    ;;
  "landing-page")
    export_landing_page
    ;;
  "email-sequence")
    export_email_sequence
    ;;
  "content")
    export_content
    ;;
  "newsletter")
    export_newsletter
    ;;
  "social")
    export_social
    ;;
  "list")
    list_exports
    ;;
  *)
    echo "Marketing Suite Export Utility"
    echo ""
    echo "Usage: $0 <type>"
    echo ""
    echo "Export Types:"
    echo "  brand-voice      - Export brand voice profile"
    echo "  positioning      - Export positioning angles"
    echo "  keywords         - Export keyword research"
    echo "  lead-magnet      - Export lead magnet"
    echo "  landing-page     - Export landing page copy"
    echo "  email-sequence   - Export email sequence"
    echo "  content          - Export content piece"
    echo "  newsletter       - Export newsletter"
    echo "  social           - Export social content"
    echo ""
    echo "Other Commands:"
    echo "  list             - List all exports"
    echo ""
    echo "Exports are saved to: $EXPORT_DIR"
    ;;
esac
