# Creative Suite Plugin

AI-powered creative toolkit for visual strategy, image generation, product photography, video creation, and social graphics.

## Overview

This plugin provides end-to-end creative production capabilities powered by AI. Start with strategic creative direction, then execute with specialized generation tools for images, product shots, videos, and social graphics.

## Installation

```bash
# Add to your local marketplace
claude-code plugin install /path/to/creative-suite
```

## Skills Included

### 🎯 Strategy
- **`/ai-creative-strategist`** - Research-powered creative strategy with visual previews. Researches competitors, captures references, generates visual direction previews, and outputs comprehensive briefs.

### 🎨 Image Generation
- **`/ai-image-generation`** - Execute AI image generation with optimal quality via Replicate API
- **`/ai-product-photo`** - Professional product photography (hero images, lifestyle shots, e-commerce visuals)
- **`/ai-social-graphics`** - Platform-optimized social media graphics and thumbnails

### 🎬 Video Creation
- **`/ai-product-video`** - Product reveal videos, animated shots, hero video banners
- **`/ai-talking-head`** - AI talking head and lip-sync video generation for presenter videos and UGC content

## Quick Start

### Strategic Approach (Recommended)
```bash
# 1. Start with strategy
/ai-creative-strategist

# This will:
# - Research competitors and visual trends
# - Generate creative direction
# - Output a comprehensive brief with visual previews

# 2. Execute with specialized tools
/ai-product-photo      # For product shots
/ai-social-graphics    # For social media
/ai-product-video      # For video content
/ai-talking-head       # For presenter videos
```

### Direct Execution
```bash
# Jump straight to generation
/ai-image-generation "product shot of minimalist lamp"
/ai-product-photo "hero image of coffee mug on marble"
/ai-social-graphics "Instagram post for product launch"
```

## Common Workflows

### E-commerce Product Launch
```bash
/ai-creative-strategist  # Define visual direction
/ai-product-photo       # Hero images and lifestyle shots
/ai-product-video       # Product reveal video
/ai-social-graphics     # Launch announcement graphics
```

### Social Media Campaign
```bash
/ai-creative-strategist  # Campaign visual strategy
/ai-social-graphics     # Platform-specific graphics
/ai-talking-head        # Creator-style video content
```

### Content Marketing
```bash
/ai-creative-strategist  # Content visual strategy
/ai-image-generation    # Custom illustrations and visuals
/ai-social-graphics     # Social thumbnails and cards
```

## Skill Dependencies

```
STRATEGY (start here for best results)
└── ai-creative-strategist
    ├── Competitor research
    ├── Visual direction
    └── Creative brief with previews

EXECUTION (powered by strategy brief)
├── IMAGES
│   ├── ai-image-generation (general purpose)
│   ├── ai-product-photo (product-specific)
│   └── ai-social-graphics (platform-optimized)
└── VIDEO
    ├── ai-product-video (product reveals)
    └── ai-talking-head (presenter content)
```

## Integration with Marketing Suite

This plugin works seamlessly with the `marketing-suite` plugin:

```bash
# Marketing strategy → Creative execution
/orchestrator              # Marketing strategy (from marketing-suite)
/positioning-angles        # Define messaging
/ai-creative-strategist   # Visual strategy (from creative-suite)
/ai-product-photo         # Execute visuals
/direct-response-copy     # Write landing page copy
```

## Features

- **Strategic Foundation** - Start with research and direction, not random generation
- **Visual Previews** - See direction before full production
- **Platform-Optimized** - Each tool knows platform specs and best practices
- **Quality-First** - Optimized prompts and settings for professional output
- **Replicate Integration** - Access to best-in-class AI models

## Requirements

Some skills require:
- Replicate API key for image/video generation
- Internet connection for competitor research
- Understanding of your brand/product for best results

## Philosophy

Good creative isn't about prompting AI and hoping for the best. It's about:
1. **Research** what's working in your space
2. **Strategy** before execution
3. **Direction** with visual references
4. **Execution** with purpose
5. **Iteration** based on output quality

## License

MIT
