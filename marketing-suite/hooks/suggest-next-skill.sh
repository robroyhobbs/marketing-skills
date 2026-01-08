#!/bin/bash
# Suggests next skill in marketing workflow based on completed skill

COMPLETED_SKILL="$1"

case "$COMPLETED_SKILL" in
  "orchestrator")
    echo "✓ Orchestrator complete. Follow the recommended skill sequence above."
    ;;

  "brand-voice")
    echo "✓ Brand voice defined!"
    echo ""
    echo "Suggested next steps:"
    echo "  • /positioning-angles - Find what makes you different"
    echo "  • /keyword-research - Identify content topics (if building organic traffic)"
    echo "  • /newsletter - Set up newsletter format (if building email audience)"
    ;;

  "positioning-angles")
    echo "✓ Positioning defined!"
    echo ""
    echo "Suggested next steps:"
    echo "  • /lead-magnet - Create opt-in offer (if generating leads)"
    echo "  • /direct-response-copy - Write landing page copy"
    echo "  • /keyword-research - Plan content strategy (if building SEO)"
    ;;

  "keyword-research")
    echo "✓ Keyword strategy complete!"
    echo ""
    echo "Next step:"
    echo "  • /seo-content - Start creating content for priority keywords"
    ;;

  "lead-magnet")
    echo "✓ Lead magnet concept ready!"
    echo ""
    echo "Next steps:"
    echo "  • /direct-response-copy - Write landing page for your lead magnet"
    echo "  • /email-sequences - Build welcome sequence to convert subscribers"
    ;;

  "direct-response-copy")
    echo "✓ Copy written!"
    echo ""
    echo "Suggested next steps:"
    echo "  • /email-sequences - Build conversion sequences (if capturing leads)"
    echo "  • /content-atomizer - Create social assets from this copy"
    ;;

  "seo-content")
    echo "✓ Content piece complete!"
    echo ""
    echo "Suggested next steps:"
    echo "  • /content-atomizer - Turn this into social posts"
    echo "  • /seo-content - Create next content piece from your keyword plan"
    ;;

  "newsletter")
    echo "✓ Newsletter ready!"
    echo ""
    echo "Next step:"
    echo "  • /content-atomizer - Transform this into social posts for distribution"
    ;;

  "email-sequences")
    echo "✓ Email sequence complete!"
    echo ""
    echo "Your marketing system is taking shape. Consider:"
    echo "  • /seo-content - Build organic traffic with content"
    echo "  • /newsletter - Start building thought leadership"
    ;;

  "content-atomizer")
    echo "✓ Content atomized and ready to distribute!"
    echo ""
    echo "Keep the momentum:"
    echo "  • Create more content with /seo-content or /newsletter"
    echo "  • Optimize conversion with /direct-response-copy"
    ;;

  *)
    # Unknown skill, provide general guidance
    echo "✓ Skill complete!"
    echo ""
    echo "Not sure what's next? Run /orchestrator for personalized recommendations."
    ;;
esac
