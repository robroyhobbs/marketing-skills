#!/bin/bash
# Marketing Assets Tracker
# Helps track what marketing assets you've created

ASSETS_FILE="$HOME/.marketing-suite-assets.json"

# Initialize assets file if it doesn't exist
if [ ! -f "$ASSETS_FILE" ]; then
  cat > "$ASSETS_FILE" <<EOF
{
  "foundation": {
    "brand_voice": false,
    "positioning": false
  },
  "strategy": {
    "keyword_research": false,
    "lead_magnet": false
  },
  "execution": {
    "landing_pages": [],
    "email_sequences": [],
    "content_pieces": [],
    "newsletters": []
  },
  "distribution": {
    "social_content": []
  },
  "last_updated": ""
}
EOF
fi

# Function to display current assets
show_assets() {
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "📊 Marketing Assets Inventory"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo ""

  # Foundation
  echo "🏗️  FOUNDATION"
  brand_voice=$(jq -r '.foundation.brand_voice' "$ASSETS_FILE")
  positioning=$(jq -r '.foundation.positioning' "$ASSETS_FILE")

  if [ "$brand_voice" = "true" ]; then
    echo "  ✅ Brand Voice Defined"
  else
    echo "  ❌ Brand Voice (Run /brand-voice)"
  fi

  if [ "$positioning" = "true" ]; then
    echo "  ✅ Positioning Defined"
  else
    echo "  ❌ Positioning (Run /positioning-angles)"
  fi
  echo ""

  # Strategy
  echo "🎯 STRATEGY"
  keyword_research=$(jq -r '.strategy.keyword_research' "$ASSETS_FILE")
  lead_magnet=$(jq -r '.strategy.lead_magnet' "$ASSETS_FILE")

  if [ "$keyword_research" = "true" ]; then
    echo "  ✅ Keyword Research Done"
  else
    echo "  ❌ Keyword Research (Run /keyword-research)"
  fi

  if [ "$lead_magnet" = "true" ]; then
    echo "  ✅ Lead Magnet Created"
  else
    echo "  ❌ Lead Magnet (Run /lead-magnet)"
  fi
  echo ""

  # Execution
  echo "✍️  EXECUTION"
  landing_pages_count=$(jq '.execution.landing_pages | length' "$ASSETS_FILE")
  sequences_count=$(jq '.execution.email_sequences | length' "$ASSETS_FILE")
  content_count=$(jq '.execution.content_pieces | length' "$ASSETS_FILE")
  newsletters_count=$(jq '.execution.newsletters | length' "$ASSETS_FILE")

  echo "  📄 Landing Pages: $landing_pages_count"
  echo "  📧 Email Sequences: $sequences_count"
  echo "  📝 Content Pieces: $content_count"
  echo "  📰 Newsletters: $newsletters_count"
  echo ""

  # Distribution
  echo "📢 DISTRIBUTION"
  social_count=$(jq '.execution.social_content | length' "$ASSETS_FILE")
  echo "  📱 Social Content: $social_count pieces"
  echo ""

  # Maturity Score
  calculate_score

  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

  last_updated=$(jq -r '.last_updated' "$ASSETS_FILE")
  if [ "$last_updated" != "" ]; then
    echo "Last updated: $last_updated"
  fi
}

# Calculate marketing maturity score
calculate_score() {
  score=0

  # Foundation (2 points)
  brand_voice=$(jq -r '.foundation.brand_voice' "$ASSETS_FILE")
  positioning=$(jq -r '.foundation.positioning' "$ASSETS_FILE")
  [ "$brand_voice" = "true" ] && score=$((score + 1))
  [ "$positioning" = "true" ] && score=$((score + 1))

  # Strategy (2 points)
  keyword_research=$(jq -r '.strategy.keyword_research' "$ASSETS_FILE")
  lead_magnet=$(jq -r '.strategy.lead_magnet' "$ASSETS_FILE")
  [ "$keyword_research" = "true" ] && score=$((score + 1))
  [ "$lead_magnet" = "true" ] && score=$((score + 1))

  # Execution (4 points - 1 per category if > 0)
  landing_pages_count=$(jq '.execution.landing_pages | length' "$ASSETS_FILE")
  sequences_count=$(jq '.execution.email_sequences | length' "$ASSETS_FILE")
  content_count=$(jq '.execution.content_pieces | length' "$ASSETS_FILE")
  newsletters_count=$(jq '.execution.newsletters | length' "$ASSETS_FILE")

  [ "$landing_pages_count" -gt 0 ] && score=$((score + 1))
  [ "$sequences_count" -gt 0 ] && score=$((score + 1))
  [ "$content_count" -gt 0 ] && score=$((score + 1))
  [ "$newsletters_count" -gt 0 ] && score=$((score + 1))

  # Distribution (2 points)
  social_count=$(jq '.execution.social_content | length' "$ASSETS_FILE")
  [ "$social_count" -gt 0 ] && score=$((score + 1))
  [ "$social_count" -gt 5 ] && score=$((score + 1))

  echo "📊 Marketing Maturity Score: $score/10"

  if [ $score -lt 4 ]; then
    echo "   Status: Early Stage - Focus on foundation"
  elif [ $score -lt 7 ]; then
    echo "   Status: Growing - Build execution assets"
  else
    echo "   Status: Mature - Optimize and scale"
  fi
}

# Function to add asset
add_asset() {
  category=$1
  type=$2
  name=$3

  case $category in
    "foundation")
      jq ".foundation.$type = true | .last_updated = \"$(date)\"" "$ASSETS_FILE" > tmp.$$.json && mv tmp.$$.json "$ASSETS_FILE"
      echo "✅ Marked $type as complete"
      ;;
    "strategy")
      jq ".strategy.$type = true | .last_updated = \"$(date)\"" "$ASSETS_FILE" > tmp.$$.json && mv tmp.$$.json "$ASSETS_FILE"
      echo "✅ Marked $type as complete"
      ;;
    "execution")
      jq ".execution.$type += [\"$name\"] | .last_updated = \"$(date)\"" "$ASSETS_FILE" > tmp.$$.json && mv tmp.$$.json "$ASSETS_FILE"
      echo "✅ Added $name to $type"
      ;;
    "distribution")
      jq ".execution.$type += [\"$name\"] | .last_updated = \"$(date)\"" "$ASSETS_FILE" > tmp.$$.json && mv tmp.$$.json "$ASSETS_FILE"
      echo "✅ Added $name to $type"
      ;;
  esac
}

# Main script logic
case ${1:-show} in
  "show")
    show_assets
    ;;
  "add")
    if [ -z "$2" ] || [ -z "$3" ]; then
      echo "Usage: $0 add <category> <type> [name]"
      echo ""
      echo "Examples:"
      echo "  $0 add foundation brand_voice"
      echo "  $0 add foundation positioning"
      echo "  $0 add strategy keyword_research"
      echo "  $0 add strategy lead_magnet"
      echo "  $0 add execution landing_pages 'Product Launch Page'"
      echo "  $0 add execution email_sequences 'Welcome Sequence'"
      echo "  $0 add execution content_pieces 'SEO Guide: Email Marketing'"
      echo "  $0 add execution newsletters 'Weekly Newsletter #1'"
      echo "  $0 add distribution social_content 'LinkedIn Post #1'"
      exit 1
    fi
    add_asset "$2" "$3" "$4"
    ;;
  "reset")
    rm -f "$ASSETS_FILE"
    echo "🗑️  Asset tracker reset"
    ;;
  *)
    echo "Marketing Assets Tracker"
    echo ""
    echo "Usage:"
    echo "  $0 show              - Show current assets"
    echo "  $0 add <args>        - Add an asset"
    echo "  $0 reset             - Reset tracker"
    ;;
esac
