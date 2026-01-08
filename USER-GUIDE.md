# Marketing & Creative Suite - User Guide

**A non-technical guide to using your marketing and creative plugins**

## What Are These Plugins?

Think of these as your personal marketing team in Claude Code:

- **Marketing Suite** = Your marketing strategist, copywriter, and content planner
- **Creative Suite** = Your creative director and design team

You tell them what you need, they guide you through creating professional marketing and creative assets.

---

## Getting Started: The Right Mindset

### Don't Think "Tools" - Think "Team Members"

Instead of:
- ❌ "I need to use the positioning tool"

Think:
- ✅ "I need to talk to my marketing strategist about positioning"

### The Plugins Know What to Do Next

You don't need to memorize skills or commands. Just:
1. Tell them what you're trying to achieve
2. Answer their questions
3. They'll suggest what to do next

---

## Your First Time: Start Here

When you have a marketing or creative need, ask yourself:

**"Do I know what I need to create?"**

- **YES** → Jump to the specific scenario below
- **NO** → Start with `/orchestrator` (marketing) or `/ai-creative-strategist` (creative)

These are your "smart routers" - they'll ask questions and recommend exactly what to do.

---

## Common Scenarios & Step-by-Step Workflows

### Scenario 1: "I'm Launching a New Product"

**Goal:** Create all the marketing for a product launch

**Estimated Time:** 2-4 weeks (depending on timeline)

#### Week 1: Foundation (4-6 hours)

**Step 1: Get Your Marketing Plan**
```
Type: /marketing-suite:launch

It will ask you:
- What are you launching?
- When is your launch date?
- Do you have an audience?
- What assets do you already have?

Based on your answers, it creates a custom launch plan.
```

**What You Get:** A complete timeline with exact skills to run

**Step 2: Define How You're Different**
```
Type: /positioning-angles

It will ask you:
- What's your product?
- Who's it for?
- Who are your competitors?

Then it gives you 3-5 positioning options.
```

**What You Get:** Different ways to position your launch (pick the best one)

**Step 3: Create Your Visual Strategy** (Optional but recommended)
```
Type: /ai-creative-strategist

It will:
- Research competitor visuals
- Generate creative direction
- Show you visual preview examples
```

**What You Get:** A creative brief with visual direction

#### Week 2: Create Your Assets (8-12 hours)

**Step 4: Write Your Landing Page**
```
Type: /direct-response-copy

Tell it:
- I need landing page copy for [your product]
- Use the positioning from Step 2
- Target audience is [your audience]

It will write:
- Headline
- Subheadline
- Body copy
- Bullet points
- Call-to-action
```

**What You Get:** Complete landing page copy

**Step 5: Create Your Visuals**
```
Type: /ai-product-photo

Tell it:
- I need hero images for [your product]
- Use the creative direction from Step 3
```

**What You Get:** Professional product photography

**Step 6: Build Your Launch Emails**
```
Type: /email-sequences

Tell it:
- I need a launch sequence
- For [your product]
- With the positioning from Step 2

It will create:
- 7-10 emails
- Complete subject lines
- Full email copy
- Sending schedule
```

**What You Get:** Complete email launch sequence

#### Week 3-4: Distribution (4-6 hours)

**Step 7: Create Social Content**
```
Type: /content-atomizer

Give it:
- Your landing page copy (from Step 4)
- Or your launch emails (from Step 6)

It will create:
- LinkedIn posts
- Twitter threads
- Instagram carousels
- Platform-optimized content
```

**What You Get:** Social content for all platforms

**Step 8: Make Social Graphics**
```
Type: /ai-social-graphics

Tell it:
- Platform: Instagram (or LinkedIn, Twitter, etc.)
- Purpose: Product launch announcement
- Visual direction from Step 3
```

**What You Get:** Platform-optimized graphics

---

### Scenario 2: "I Need to Generate Leads"

**Goal:** Build an email list and convert subscribers to customers

**Estimated Time:** 1-2 weeks

#### The Quick Path

**Step 1: Get Your Lead Gen Plan**
```
Type: /marketing-suite:leads

It will diagnose:
- What you have
- What's missing
- What to do first
```

**What You Get:** Exact steps to build your lead gen system

**Step 2: Create a Lead Magnet**
```
Type: /lead-magnet

It will ask:
- What's your business?
- What do you sell?
- Who's your audience?

Then gives you 3-5 lead magnet ideas.
```

**What You Get:** Lead magnet concepts (pick one)

**Step 3: Write the Opt-In Page**
```
Type: /direct-response-copy

Tell it:
- I need an opt-in page for [your lead magnet]
- Target audience is [your audience]
```

**What You Get:** Landing page copy for your opt-in

**Step 4: Write Welcome Emails**
```
Type: /email-sequences

Tell it:
- I need a welcome sequence
- Lead magnet is [what you created]
- Paid offer is [what you sell]
```

**What You Get:** 5-7 email welcome sequence that sells

**Step 5: Drive Traffic**
```
Type: /seo-content

Tell it:
- I need content about [your topic]
- With CTAs to my lead magnet

Then:

Type: /content-atomizer

Give it your SEO content
```

**What You Get:**
- SEO article with lead magnet CTAs
- Social posts to promote it

---

### Scenario 3: "I Don't Know Where to Start"

**Goal:** Figure out what marketing you actually need

#### Start Here

**Step 1: Run an Audit**
```
Type: /marketing-suite:audit

It will ask about:
- Your brand voice (defined or not?)
- Your positioning (clear or unclear?)
- Your marketing assets (what exists?)
- Your channels (where you publish)
```

**What You Get:**
- Asset inventory
- Gap analysis
- Marketing maturity score (X/10)
- Prioritized action plan

**Step 2: Follow the Plan**

The audit will tell you exactly what to do first, second, third.

Example output:
```
Marketing Maturity Score: 3/10

Next Step: Run /brand-voice - everything builds on this

Then: /positioning-angles
Then: /keyword-research
```

Just follow the recommendations in order.

---

### Scenario 4: "I Need Content for Social Media"

**Goal:** Create scroll-stopping social content

#### For General Social Content

**Option A: Start with Strategy**
```
Type: /ai-creative-strategist

Tell it:
- I need social media content
- For [Instagram/LinkedIn/Twitter]
- About [your topic]
```

**What You Get:** Creative direction and visual examples

**Then:**
```
Type: /ai-social-graphics

Use the creative direction
```

**What You Get:** Platform-optimized graphics

#### For Product Content

```
Type: /ai-product-photo

Tell it:
- Product: [your product]
- Style: [lifestyle/clean/dramatic]
```

**What You Get:** Product shots optimized for social

**Then:**
```
Type: /ai-product-video

Make it a video version
```

**What You Get:** Short product reveal videos

---

### Scenario 5: "My Marketing Isn't Working"

**Goal:** Figure out what's broken and fix it

**Step 1: Launch the Copy Editor**
```
In Claude Code, type:
"Launch the copy-editor agent to review my landing page"

Paste your current copy
```

**What the Agent Does:**
- Reviews your copy
- Identifies specific problems
- Suggests improvements
- Provides multiple options
- Explains why changes will work

**Step 2: Launch the Marketing Strategist**
```
In Claude Code, type:
"Launch the marketing-strategist agent to help me fix my funnel"

Tell it:
- What's not working (traffic, conversions, sales)
- Current metrics
- What you've tried
```

**What the Agent Does:**
- Analyzes your situation
- Identifies the real problem
- Creates optimization plan
- Recommends skill sequence
- Sets success metrics

---

## The "I Need This NOW" Emergency Guide

### Product Launch in 1 Week

**Day 1:**
1. `/positioning-angles` - 2 hours
2. `/direct-response-copy` (landing page) - 3 hours

**Day 2:**
3. `/email-sequences` (3-email minimum) - 2 hours
4. `/ai-product-photo` - 1 hour

**Day 3:**
5. `/content-atomizer` - 1 hour
6. `/ai-social-graphics` - 1 hour

**Days 4-7:** Test, refine, prep

**What You Won't Have Time For:**
- Perfect positioning (but you'll have something)
- Long email sequences
- Extensive content

**But You'll Have Enough To Launch.**

---

## Understanding the Workflow Suggestions

After completing any skill, you'll see suggestions like:

```
✓ Brand voice defined!

Suggested next steps:
  • /positioning-angles - Find what makes you different
  • /keyword-research - Identify content topics
  • /newsletter - Set up newsletter format
```

**These aren't requirements - they're recommendations.**

Think of it like:
- Your marketing strategist saying "here's what typically comes next"
- You can follow them or go your own direction
- They're based on proven marketing workflows

---

## How the Pieces Work Together

### The Foundation Layer

**Do These First (If You Haven't)**

1. **Brand Voice** (`/brand-voice`)
   - How you sound when you write
   - Consistent tone across everything
   - Feeds into all copy skills

2. **Positioning** (`/positioning-angles`)
   - What makes you different
   - Your unique angle
   - Foundation for all messaging

**Why This Matters:**
Without these, your marketing sounds generic and inconsistent.

### The Strategy Layer

**Do These Before Creating Content**

3. **Keyword Research** (`/keyword-research`)
   - What to write about
   - Topics people search for
   - Content calendar planning

4. **Lead Magnet** (`/lead-magnet`)
   - What you give away for emails
   - Entry point to your funnel
   - Bridges to paid offer

**Why This Matters:**
Strategy prevents random, ineffective content creation.

### The Execution Layer

**Create These Assets**

5. **Copy** (`/direct-response-copy`)
   - Landing pages
   - Sales pages
   - Ad copy
   - Email copy

6. **Content** (`/seo-content`, `/newsletter`)
   - Blog posts
   - Articles
   - Newsletter editions

7. **Emails** (`/email-sequences`)
   - Welcome sequences
   - Launch sequences
   - Nurture sequences

**Why This Matters:**
These are the assets that actually drive results.

### The Distribution Layer

**Multiply Your Reach**

8. **Multi-Platform** (`/content-atomizer`)
   - Turn 1 piece into 5+
   - Platform-specific versions
   - Maximize reach

**Why This Matters:**
Create once, distribute everywhere.

### The Creative Layer

**Visual Execution**

9. **Strategy** (`/ai-creative-strategist`)
   - Visual direction
   - Creative brief
   - Examples and references

10. **Visuals** (`/ai-product-photo`, `/ai-social-graphics`, `/ai-product-video`)
    - Product photography
    - Social graphics
    - Video content

**Why This Matters:**
Professional visuals increase conversions and engagement.

---

## The Three Agents: When to Use Each

### Marketing Strategist Agent

**Use When:**
- Planning complex campaigns
- Annual/quarterly marketing planning
- Multi-channel coordination
- You're stuck at a revenue plateau
- Building marketing from scratch

**Example:**
```
"Launch the marketing-strategist agent"

Tell it: "Help me plan Q1 marketing. Currently at $30K MRR,
want to hit $50K by end of quarter."
```

**What You Get:**
- Strategic analysis
- Complete roadmap
- Skill sequences
- Timeline
- Success metrics

### Copy Editor Agent

**Use When:**
- Copy isn't converting
- Need variations to A/B test
- Copy feels "off"
- Want to punch up headlines
- Simplify complex messaging

**Example:**
```
"Launch the copy-editor agent"

Tell it: "My landing page has 10% opt-in rate. Help me improve it."
Paste your current copy.
```

**What You Get:**
- Specific copy improvements
- Multiple headline options
- Before/after examples
- A/B test suggestions

### Content Planner Agent

**Use When:**
- Creating monthly content calendars
- Planning content across channels
- Coordinating campaigns
- Systematic repurposing
- Resource planning

**Example:**
```
"Launch the content-planner agent"

Tell it: "Create a February content calendar. I can write
2 blog posts/week and 1 newsletter/week."
```

**What You Get:**
- Monthly calendar
- Specific content ideas
- Production schedule
- Repurposing map

---

## Tracking Your Progress

### Track Your Assets

```bash
Run this anytime:
~/agent-skills/marketing-suite/scripts/track-assets.sh show

You'll see:
- What you've created
- What's missing
- Marketing maturity score (X/10)
- What to build next
```

**After Creating Something:**
```bash
~/agent-skills/marketing-suite/scripts/track-assets.sh add foundation brand_voice
~/agent-skills/marketing-suite/scripts/track-assets.sh add execution landing_pages "Product Launch Page"
```

### Track Your Metrics

```bash
Every Monday:
~/agent-skills/marketing-suite/scripts/track-metrics.sh add

Enter your weekly metrics:
- Website visits
- Email subscribers
- Lead magnet signups
- Revenue
```

**See Your Growth:**
```bash
~/agent-skills/marketing-suite/scripts/track-metrics.sh show

You'll see:
- Last 4 weeks of data
- Week-over-week growth %
- What's working
```

### Export Your Work

```bash
Save skill outputs:
~/agent-skills/marketing-suite/scripts/export-output.sh landing-page

Then paste your landing page copy when prompted.

Everything gets organized in:
~/marketing-suite-exports/
```

---

## Common Questions

### "Do I have to do all of this?"

**No.** These plugins give you options. Pick what you need:

- **Launching a product?** → Use the launch workflow
- **Just need a landing page?** → Just run `/direct-response-copy`
- **Building a content strategy?** → Start with `/keyword-research`

Think of it like having a full marketing team available. You only talk to who you need when you need them.

### "What order should I do things?"

**Follow this rule:**

1. **Foundation first** (voice, positioning) - if you don't have it
2. **Strategy second** (keywords, lead magnet) - if you need it
3. **Execution third** (copy, content, emails) - when you're ready
4. **Distribution fourth** (atomize, social) - to maximize reach

**Or just run `/orchestrator` and let it tell you.**

### "How do I know if it's working?"

**Track these 4 metrics weekly:**

1. **Traffic** - Are people visiting?
2. **Opt-ins** - Are people joining your email list?
3. **Engagement** - Are they opening emails, reading content?
4. **Revenue** - Are they buying?

If a metric is stuck, focus on that part of the funnel.

### "Can I skip the foundation stuff?"

**You can, but you'll regret it.**

Without brand voice:
- Every piece sounds different
- You'll rewrite constantly
- No consistency

Without positioning:
- You sound like everyone else
- Weak differentiation
- Lower conversions

**The time you "save" skipping foundation gets wasted fixing problems later.**

### "What if I just want to try one thing?"

**Perfect. Start small:**

**Option 1: Just create a lead magnet**
```
/lead-magnet
```

**Option 2: Just improve your landing page copy**
```
Launch copy-editor agent
Paste your current copy
```

**Option 3: Just create social content**
```
/ai-social-graphics
```

**You don't need to use everything to get value.**

### "How long does each skill take?"

**Rough estimates:**

| Skill | Time |
|-------|------|
| Brand voice | 1-2 hours |
| Positioning | 1-2 hours |
| Keyword research | 1 hour |
| Lead magnet | 30 min - 1 hour |
| Landing page copy | 1-2 hours |
| Email sequence | 2-3 hours |
| SEO content | 30 min - 1 hour |
| Newsletter | 30 min - 1 hour |
| Content atomizer | 30 min |
| AI visuals | 15-30 min each |

**Most things take less time than you think.**

---

## Real-World Example Walkthrough

### Meet Sarah: Launching a Course

**Sarah's Situation:**
- Has a course about freelance writing
- Launch date: 4 weeks away
- Email list: 500 people
- Never done a launch before

**Week 1: Foundation**

**Monday Morning:**
```
Sarah: /marketing-suite:launch

Plugin asks: What are you launching?
Sarah: "A course teaching freelance writers how to land clients"

Plugin asks: When?
Sarah: "4 weeks from today"

Plugin asks: Do you have an audience?
Sarah: "500 email subscribers"

Plugin: Here's your 4-week launch plan...
```

**Monday Afternoon:**
```
Sarah: /positioning-angles

Plugin asks: What's your course?
Sarah: "It teaches freelance writers how to land clients
without cold pitching"

Plugin: Here are 5 positioning options:
1. "The Anti-Pitch Approach to Landing Clients"
2. "How to Make Clients Come to You (Not the Other Way Around)"
3. "Inbound Freelancing: The Pitch-Free Client System"
...

Sarah: I like #2
```

**Tuesday:**
```
Sarah: /ai-creative-strategist

Plugin researches competitors, analyzes visual trends...

Plugin: Here's your creative direction:
- Color palette: Deep blue + coral accent
- Photography style: Authentic workspace shots
- Vibe: Professional but approachable
- Example visuals: [shows references]
```

**Week 2: Assets**

**Wednesday:**
```
Sarah: /direct-response-copy

Sarah: "I need sales page copy for my course using positioning #2"

Plugin: [Creates complete sales page with headlines,
bullet points, CTAs, social proof sections]

Sarah gets: Full sales page copy in her brand voice
```

**Thursday:**
```
Sarah: /ai-product-photo

Sarah: "I need a hero image for my course sales page.
Professional workspace, laptop showing course dashboard,
using the creative direction from Tuesday"

Plugin: [Generates product shot]

Sarah gets: Professional hero image
```

**Friday:**
```
Sarah: /email-sequences

Sarah: "I need a 7-email launch sequence for my course"

Plugin creates:
- Email 1: Launch announcement
- Email 2: The problem with cold pitching
- Email 3: How inbound freelancing works
- Email 4: Student success story
- Email 5: What's included in the course
- Email 6: 48 hours left
- Email 7: Final hours

Sarah gets: Complete launch sequence
```

**Week 3: Distribution**

**Monday:**
```
Sarah: /content-atomizer

Sarah: [Gives it her sales page copy]

Plugin creates:
- 5 LinkedIn posts
- 7-tweet Twitter thread
- 5-slide Instagram carousel
- Short video script

Sarah gets: 2 weeks of social content
```

**Tuesday:**
```
Sarah: /ai-social-graphics

Sarah: "Create Instagram carousel announcing my course launch"

Plugin: [Creates 5-slide carousel with course benefits]

Sarah gets: Ready-to-post social graphics
```

**Week 4: Polish & Prep**

Sarah loads emails, schedules social, tests payment, and launches.

**Result:**
- 47 course sales from 500-person list
- $14,100 revenue
- 9.4% conversion rate

**Total time invested:** ~25 hours over 4 weeks

---

## Your Personal Marketing System

Think of these plugins as building blocks:

```
┌─────────────────────────────────────────┐
│         YOUR MARKETING SYSTEM           │
├─────────────────────────────────────────┤
│                                         │
│  🏗️  Foundation                         │
│  └─ Brand Voice + Positioning           │
│                                         │
│  🎯 Strategy                             │
│  └─ Keywords + Lead Magnet              │
│                                         │
│  ✍️  Execution                           │
│  └─ Copy + Content + Emails             │
│                                         │
│  📢 Distribution                         │
│  └─ Multi-platform Content              │
│                                         │
│  🎨 Creative                             │
│  └─ Visuals + Video                     │
│                                         │
└─────────────────────────────────────────┘
```

**You build it once, use it forever.**

Each piece makes the others more effective:
- Good positioning → Better copy
- Good copy → Better conversions
- Good content → More traffic
- Good visuals → Higher engagement
- Good emails → More sales

**You're not using "tools" - you're building a system.**

---

## Next Steps

### If You're Brand New:

1. Run `/marketing-suite:audit`
2. Follow its recommendations
3. Build your foundation first
4. Add execution layer
5. Start getting results

### If You Have a Specific Need:

1. Find your scenario in this guide
2. Follow that workflow
3. Let the plugins guide you
4. Track your results
5. Iterate and improve

### If You're Ready to Go Deep:

1. Build your complete marketing system
2. Use agents for strategic planning
3. Create content calendars
4. Track metrics weekly
5. Optimize based on data

---

## Remember

**You don't need to be a marketer to use these plugins.**

You just need to:
1. Know what you're trying to achieve
2. Answer the questions they ask
3. Follow the recommended next steps

**The plugins know marketing. You know your business.**

**Together, you create marketing that works.**

---

## Getting Help

**Stuck? Not sure what to do?**

Just type:
```
/orchestrator
```

Tell it what you're trying to achieve. It'll figure out the rest.

**That's the point of having a marketing team in a plugin.**
