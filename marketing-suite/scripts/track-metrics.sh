#!/bin/bash
# Marketing Metrics Tracker
# Simple weekly metrics tracking

METRICS_FILE="$HOME/.marketing-suite-metrics.csv"

# Initialize metrics file if it doesn't exist
if [ ! -f "$METRICS_FILE" ]; then
  echo "date,website_visits,email_subscribers,email_open_rate,lead_magnet_signups,content_pieces,social_followers,revenue" > "$METRICS_FILE"
  echo "📊 Metrics tracker initialized at $METRICS_FILE"
fi

# Add weekly metrics
add_metrics() {
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "📊 Add Weekly Metrics"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo ""

  # Get date (default to today)
  echo "Date (YYYY-MM-DD) [$(date +%Y-%m-%d)]:"
  read -r date
  date=${date:-$(date +%Y-%m-%d)}

  echo ""
  echo "Enter metrics (press Enter to skip):"
  echo ""

  echo "Website Visits:"
  read -r visits
  visits=${visits:-0}

  echo "Email Subscribers (total):"
  read -r subscribers
  subscribers=${subscribers:-0}

  echo "Email Open Rate (%):"
  read -r open_rate
  open_rate=${open_rate:-0}

  echo "Lead Magnet Signups:"
  read -r signups
  signups=${signups:-0}

  echo "Content Pieces Published:"
  read -r content
  content=${content:-0}

  echo "Social Followers (total):"
  read -r followers
  followers=${followers:-0}

  echo "Revenue ($):"
  read -r revenue
  revenue=${revenue:-0}

  # Add to CSV
  echo "$date,$visits,$subscribers,$open_rate,$signups,$content,$followers,$revenue" >> "$METRICS_FILE"

  echo ""
  echo "✅ Metrics saved for $date"
}

# Show recent metrics
show_metrics() {
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "📊 Marketing Metrics"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo ""

  if [ ! -f "$METRICS_FILE" ] || [ $(wc -l < "$METRICS_FILE") -eq 1 ]; then
    echo "No metrics yet. Run '$0 add' to add metrics."
    return
  fi

  # Show last 4 weeks
  echo "Last 4 Weeks:"
  echo ""
  tail -n 4 "$METRICS_FILE" | while IFS=, read -r date visits subscribers open_rate signups content followers revenue; do
    if [ "$date" != "date" ]; then
      echo "Week of $date"
      echo "  🌐 Website: $visits visits"
      echo "  📧 Email List: $subscribers subscribers (${open_rate}% open rate)"
      echo "  🎁 Lead Magnets: $signups signups"
      echo "  📝 Content: $content pieces"
      echo "  📱 Social: $followers followers"
      echo "  💰 Revenue: \$${revenue}"
      echo ""
    fi
  done

  # Calculate growth
  calculate_growth
}

# Calculate week-over-week growth
calculate_growth() {
  if [ $(wc -l < "$METRICS_FILE") -lt 3 ]; then
    echo "Need at least 2 weeks of data to calculate growth."
    return
  fi

  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "📈 Week-over-Week Growth"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo ""

  # Get last two weeks
  current=$(tail -n 1 "$METRICS_FILE")
  previous=$(tail -n 2 "$METRICS_FILE" | head -n 1)

  # Parse values
  IFS=, read -r c_date c_visits c_subs c_open c_signups c_content c_followers c_revenue <<< "$current"
  IFS=, read -r p_date p_visits p_subs p_open p_signups p_content p_followers p_revenue <<< "$previous"

  # Calculate changes
  if [ "$p_visits" -ne 0 ]; then
    visits_growth=$(( (c_visits - p_visits) * 100 / p_visits ))
    echo "🌐 Website Visits: $visits_growth%"
  fi

  if [ "$p_subs" -ne 0 ]; then
    subs_growth=$(( (c_subs - p_subs) * 100 / p_subs ))
    new_subs=$(( c_subs - p_subs ))
    echo "📧 Email List: $subs_growth% (+$new_subs new subscribers)"
  fi

  if [ "$p_signups" -ne 0 ]; then
    signups_growth=$(( (c_signups - p_signups) * 100 / p_signups ))
    echo "🎁 Lead Magnet Signups: $signups_growth%"
  fi

  if [ "$p_followers" -ne 0 ]; then
    followers_growth=$(( (c_followers - p_followers) * 100 / p_followers ))
    echo "📱 Social Followers: $followers_growth%"
  fi

  if [ "$p_revenue" -ne 0 ]; then
    revenue_growth=$(( (c_revenue - p_revenue) * 100 / p_revenue ))
    echo "💰 Revenue: $revenue_growth%"
  fi

  echo ""
}

# Export to CSV for analysis
export_csv() {
  echo "Metrics exported to: $METRICS_FILE"
  echo ""
  echo "Import this file into:"
  echo "  • Google Sheets"
  echo "  • Excel"
  echo "  • Your analytics tool"
  echo ""
  echo "File location: $METRICS_FILE"
}

# Main script logic
case ${1:-show} in
  "add")
    add_metrics
    ;;
  "show")
    show_metrics
    ;;
  "export")
    export_csv
    ;;
  "reset")
    rm -f "$METRICS_FILE"
    echo "🗑️  Metrics tracker reset"
    ;;
  *)
    echo "Marketing Metrics Tracker"
    echo ""
    echo "Usage:"
    echo "  $0 add      - Add weekly metrics"
    echo "  $0 show     - Show recent metrics"
    echo "  $0 export   - Export to CSV"
    echo "  $0 reset    - Reset tracker"
    echo ""
    echo "Track your marketing performance week-over-week"
    ;;
esac
