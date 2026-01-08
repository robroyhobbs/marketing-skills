# AI Marketing & Creative Suite

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/robroyhobbs/marketing-skills?style=social)](https://github.com/robroyhobbs/marketing-skills/stargazers)

**Your complete marketing and creative team in Claude Code**

This repository contains two professional-grade plugins that give you a complete marketing and creative production system.

> Built for [AIGNE CLI](https://www.aigne.io/framework) - [Claude Code](https://claude.com/code) - AI-powered CLI tools from AIGNE and Anthropic

## 📦 What's Included

### 🎯 Marketing Suite
**Your Marketing Team**
- 10 specialized marketing skills
- 3 workflow commands
- 3 strategic agents
- Utility scripts for tracking and exporting

[View Marketing Suite Details →](marketing-suite/README.md)

### 🎨 Creative Suite
**Your Creative Team**
- 6 AI-powered creative skills
- Strategic creative direction
- Image, video, and social graphics generation

[View Creative Suite Details →](creative-suite/README.md)

---

## 🚀 Quick Start

### Installation

```bash
# 1. Add the marketplace from GitHub
/plugin marketplace add github:robroyhobbs/marketing-skills

# 2. Install both plugins
/plugin install marketing-suite@marketing-skills
/plugin install creative-suite@marketing-skills

# 3. Verify installation
/help
```

You should see all the skills and commands available!

### First Time User?

**Not sure where to start?**

```bash
/orchestrator
```

Tell it what you're trying to achieve. It'll recommend exactly what to do.

**Read the guides:**
- **[USER-GUIDE.md](USER-GUIDE.md)** - Complete non-technical guide with real examples
- **[QUICK-START.md](QUICK-START.md)** - Quick reference cheat sheet

---

## 🎯 Common Use Cases

### Launching a Product

```bash
/marketing-suite:launch
```

Creates your complete launch plan with timeline and assets.

**Then execute with:**
- `/positioning-angles` - Find your launch angle
- `/ai-creative-strategist` - Visual direction
- `/direct-response-copy` - Landing page copy
- `/ai-product-photo` - Product visuals
- `/email-sequences` - Launch emails
- `/content-atomizer` - Social distribution

**Time:** 2-4 weeks | **Result:** Complete launch campaign

---

### Building a Lead Generation System

```bash
/marketing-suite:leads
```

Builds your email list and conversion funnel.

**Includes:**
- `/lead-magnet` - Create opt-in offer
- `/direct-response-copy` - Opt-in page
- `/email-sequences` - Welcome sequence
- `/seo-content` - Traffic content
- `/content-atomizer` - Social promotion

**Time:** 1-2 weeks | **Result:** Automated lead gen system

---

### Creating Social Media Content

**Strategic approach:**
```bash
/ai-creative-strategist
```

Research competitors, get creative direction, then execute.

**Quick execution:**
```bash
/ai-social-graphics
/ai-product-photo
/ai-product-video
```

**Time:** 30 min - 2 hours | **Result:** Professional social content

---

### Content Marketing

```bash
/keyword-research      # What to write about
/seo-content          # Create optimized content
/content-atomizer     # Distribute everywhere
```

**Or plan it systematically:**
```bash
Launch content-planner agent
```

**Time:** 1-2 hours per piece | **Result:** SEO content + multi-platform distribution

---

## 🤖 The Three Agents

### Marketing Strategist
**Use for:** Complex campaign planning, annual strategy, growth planning

```
"Launch the marketing-strategist agent"
```

### Copy Editor
**Use for:** Improving existing copy, A/B test variations, conversion optimization

```
"Launch the copy-editor agent"
```

### Content Planner
**Use for:** Monthly content calendars, multi-channel coordination

```
"Launch the content-planner agent"
```

---

## 📊 Track Your Progress

### Marketing Assets
```bash
~/agent-skills/marketing-suite/scripts/track-assets.sh show
```

See what you've built, what's missing, and your marketing maturity score (X/10).

### Weekly Metrics
```bash
~/agent-skills/marketing-suite/scripts/track-metrics.sh add
```

Track traffic, subscribers, conversions, revenue week-over-week.

### Export Outputs
```bash
~/agent-skills/marketing-suite/scripts/export-output.sh list
```

Save all skill outputs to organized files.

---

## 🎓 Learning Path

### Complete Beginner

1. **Read:** [USER-GUIDE.md](USER-GUIDE.md)
2. **Run:** `/marketing-suite:audit`
3. **Follow:** The recommendations it gives you
4. **Track:** Your progress with the scripts

### Have Some Marketing

1. **Audit:** `/marketing-suite:audit`
2. **Fill Gaps:** Based on audit recommendations
3. **Optimize:** Use agents for strategic improvements
4. **Scale:** Create systems for consistent output

### Advanced User

1. **Strategic Planning:** Use `marketing-strategist` agent
2. **Content Calendar:** Use `content-planner` agent
3. **Systematic Creation:** Batch content production
4. **Data-Driven:** Track metrics, optimize based on results

---

## 📚 Documentation

### For Non-Technical Users
- **[USER-GUIDE.md](USER-GUIDE.md)** - Complete guide with scenarios and examples
- **[QUICK-START.md](QUICK-START.md)** - Quick reference cheat sheet

### For Technical Users
- **[marketing-suite/README.md](marketing-suite/README.md)** - Marketing plugin technical docs
- **[creative-suite/README.md](creative-suite/README.md)** - Creative plugin technical docs

### Plugin Structure
```
marketing-suite/
├── skills/          # 10 marketing skills
├── commands/        # 3 workflow commands
├── agents/          # 3 specialized agents
├── hooks/           # Workflow automation
└── scripts/         # Utility scripts

creative-suite/
├── skills/          # 6 AI creative skills
└── hooks/           # Creative workflow
```

---

## 🔄 How They Work Together

### Complete Campaign Workflow

**Foundation:**
```bash
/brand-voice              # How you sound
/positioning-angles       # What makes you different
```

**Strategy:**
```bash
/keyword-research         # What to write about
/lead-magnet             # What to give away
/ai-creative-strategist  # Visual direction
```

**Execution:**
```bash
/direct-response-copy    # Write the copy
/ai-product-photo        # Create the visuals
/email-sequences         # Build automation
/seo-content            # Create content
```

**Distribution:**
```bash
/content-atomizer        # Multi-platform content
/ai-social-graphics      # Social graphics
/ai-product-video        # Video content
```

Each piece makes the others more effective. You're building a **system**, not using scattered tools.

---

## 💡 Philosophy

### Systems Over Tactics

These plugins don't just help you create one landing page or one social post. They help you build **marketing and creative systems** that compound over time.

### Foundation First

Good marketing starts with:
1. **Brand Voice** - How you sound
2. **Positioning** - What makes you different

Everything else builds on this foundation.

### Quality Over Quantity

Better to have:
- 1 great lead magnet than 5 mediocre ones
- 1 converting landing page than 10 that don't work
- 1 email sequence that sells than 100 one-off blasts

### Measure Everything

Track:
- What you've built (assets)
- How it's performing (metrics)
- What's working (analytics)

Optimize based on data, not guesses.

---

## 🎯 Success Stories (Template)

### Sarah's Course Launch
**Before:** 500 email subscribers, no launch experience
**After:** 47 sales, $14,100 revenue, 9.4% conversion
**Time:** 25 hours over 4 weeks
**Tools Used:** launch workflow, positioning, copy, visuals, emails

### Your Story Here
What will you build with these plugins?

---

## 🔧 Technical Details

### Requirements
- Claude Code CLI
- For AI image/video generation: Replicate API key
- For scripts: bash, jq (optional but recommended)

### Installation
See [QUICK-START.md](QUICK-START.md) for installation instructions.

### Updates
```bash
# Uninstall old version
/plugin uninstall marketing-suite@dev-marketplace
/plugin uninstall creative-suite@dev-marketplace

# Reinstall updated version
/plugin install marketing-suite@dev-marketplace
/plugin install creative-suite@dev-marketplace
```

---

## 📞 Support

### Questions?

1. **Check the guides first:** [USER-GUIDE.md](USER-GUIDE.md)
2. **Use the orchestrator:** `/orchestrator`
3. **Run an audit:** `/marketing-suite:audit`

### Feature Requests

This is an open development process. Suggest improvements or new features by updating the plugins directly.

---

## 📄 License

MIT License - Use freely for personal and commercial projects.

---

## 🚀 Get Started Now

**Don't overthink it. Just start:**

```bash
# Install the plugins
/plugin marketplace add dev-marketplace
/plugin install marketing-suite@dev-marketplace
/plugin install creative-suite@dev-marketplace

# Then run:
/orchestrator
```

**Tell it what you're trying to achieve. It'll handle the rest.**

---

## Remember

**You're not learning "tools" - you're building systems.**

Every piece you create makes the next piece easier:
- Good positioning → Better copy
- Good copy → Better conversions
- Good content → More traffic
- Good visuals → Higher engagement

**Start building your marketing system today.**
