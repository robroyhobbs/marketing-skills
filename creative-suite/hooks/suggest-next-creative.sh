#!/bin/bash
# Suggests next skill in creative workflow based on completed skill

COMPLETED_SKILL="$1"

case "$COMPLETED_SKILL" in
  "ai-creative-strategist")
    echo "✓ Creative strategy complete!"
    echo ""
    echo "Your creative brief is ready. Execute with:"
    echo "  • /ai-product-photo - Professional product photography"
    echo "  • /ai-social-graphics - Social media graphics"
    echo "  • /ai-product-video - Product video content"
    echo "  • /ai-talking-head - Presenter/UGC style videos"
    echo "  • /ai-image-generation - Custom visuals and illustrations"
    ;;

  "ai-image-generation")
    echo "✓ Images generated!"
    echo ""
    echo "Next steps:"
    echo "  • Refine prompts and regenerate if needed"
    echo "  • /ai-social-graphics - Adapt for social platforms"
    echo "  • /ai-product-video - Create video versions"
    ;;

  "ai-product-photo")
    echo "✓ Product photos ready!"
    echo ""
    echo "Suggested next steps:"
    echo "  • /ai-product-video - Add product reveal videos"
    echo "  • /ai-social-graphics - Create social variants"
    echo "  • /direct-response-copy - Write landing page copy (from marketing-suite)"
    ;;

  "ai-product-video")
    echo "✓ Product video complete!"
    echo ""
    echo "Next steps:"
    echo "  • /ai-social-graphics - Create thumbnail and social cutdowns"
    echo "  • /ai-talking-head - Add presenter intro/outro"
    echo "  • /content-atomizer - Distribute across platforms (from marketing-suite)"
    ;;

  "ai-social-graphics")
    echo "✓ Social graphics ready to post!"
    echo ""
    echo "Maximize reach:"
    echo "  • /ai-talking-head - Add video versions for higher engagement"
    echo "  • /content-atomizer - Optimize for each platform (from marketing-suite)"
    echo "  • Create more variants for A/B testing"
    ;;

  "ai-talking-head")
    echo "✓ Talking head video complete!"
    echo ""
    echo "Next steps:"
    echo "  • /ai-social-graphics - Create thumbnails and preview cards"
    echo "  • /content-atomizer - Repurpose across platforms (from marketing-suite)"
    echo "  • Generate additional takes with different scripts"
    ;;

  *)
    echo "✓ Creative skill complete!"
    echo ""
    echo "Not sure what's next? Run /ai-creative-strategist for a comprehensive creative strategy."
    ;;
esac
