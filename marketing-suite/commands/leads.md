---
name: leads
description: Complete lead generation workflow from opt-in to conversion
---

# Lead Generation Workflow

Build a complete lead generation system that captures emails and converts subscribers to customers.

## What This Command Does

Creates a systematic lead generation funnel:

1. **Lead Magnet** - Compelling opt-in offer
2. **Landing Page** - High-converting opt-in page
3. **Thank You Page** - First impression after signup
4. **Welcome Sequence** - Nurture and convert new subscribers
5. **Ongoing Nurture** - Keep subscribers engaged

## Before You Start

Ask the user:

```
What's your business model?
□ Service/consulting
□ Info products/courses
□ SaaS/software
□ E-commerce/physical products
□ Agency
□ Other: _______

What's your paid offer?
(What will you eventually sell to these leads?)
_______________________________________

Do you currently have:
□ Email list (size: ____)
□ Landing page
□ Lead magnet
□ Email sequences
□ None of the above

What's your biggest lead gen challenge?
□ No traffic to offer
□ Low opt-in conversion rate
□ Getting subscribers but no sales
□ Don't know what to offer for free
□ All of the above
```

## The Lead Gen Workflow

### Phase 1: Foundation (If Missing)

**Check positioning:**
```
Do you know what makes you different from competitors?

If NO → Run `/positioning-angles` first
If YES → Continue to Phase 2
```

Positioning is critical because:
- Your lead magnet needs a unique angle
- Your landing page needs differentiated messaging
- Your emails need to stand out

### Phase 2: Lead Magnet Creation

**Run `/lead-magnet`** with this context:

```markdown
## Context for Lead Magnet Skill

**Business:** [from user input]
**Paid Offer:** [from user input]
**Current Challenge:** [from user input]

**Goal:** Create 3-5 lead magnet concepts that:
1. Deliver immediate value
2. Build trust and authority
3. Naturally lead to paid offer
4. Are easy to deliver
```

**Output:** 3-5 lead magnet concepts with hooks and formats

**User selects the best one** → Continue with selected concept

### Phase 3: Landing Page Copy

**Run `/direct-response-copy`** for opt-in page:

```markdown
## Context for Landing Page

**Type:** Lead magnet opt-in page
**Lead Magnet:** [selected concept from Phase 2]
**Positioning:** [if available from positioning-angles]

**Copy Needed:**
- Headline
- Subhead
- Bullet points (what they'll get)
- CTA button copy
- Privacy/spam reassurance

**Goal:** 40%+ opt-in rate
```

**Output:** Complete landing page copy

### Phase 4: Thank You Page

**Run `/direct-response-copy`** for thank you page:

```markdown
## Context for Thank You Page

**Type:** Post-opt-in thank you page
**Lead Magnet:** [selected concept]

**Copy Needed:**
- Confirmation message
- What to expect next
- Where to check (inbox, spam folder)
- Optional: One-time offer (OTO)
- Optional: Social proof

**Goal:** Set expectations and increase engagement
```

**Output:** Thank you page copy

### Phase 5: Email Welcome Sequence

**Run `/email-sequences`** for welcome:

```markdown
## Context for Welcome Sequence

**Lead Magnet:** [selected concept]
**Paid Offer:** [what you're selling]
**Sequence Type:** Welcome + soft conversion

**Goals:**
1. Deliver lead magnet
2. Build relationship
3. Introduce paid offer
4. Make first sale to 5-10% of new subscribers

**Length:** 5-7 emails over 2 weeks
```

**Output:** Complete welcome sequence

### Phase 6: Traffic Strategy

Now that the funnel exists, get traffic:

```markdown
## How to Get People Into Your Funnel

Based on your business, recommend:

**For Service/Consulting:**
- Guest content on platforms your clients read
- LinkedIn content → CTA to lead magnet
- Podcast interviews
- Joint ventures with complementary businesses

**For Info Products/Courses:**
- SEO content → inline CTAs to lead magnet
- YouTube → pinned comment + description
- Guest posts on relevant blogs
- Reddit/niche communities (value-first)

**For SaaS:**
- Product-led content (how-to guides)
- Free tools that lead to paid product
- Integration partners
- Comparison pages (SEO)

**For E-commerce:**
- Pinterest → product collections
- Instagram → link in bio
- Influencer partnerships
- Google Shopping + retargeting

**Quick Win:** /seo-content + /content-atomizer
1. Create SEO content with lead magnet CTAs
2. Atomize to social platforms
3. Drive traffic from multiple channels
```

## Lead Gen System Checklist

```markdown
## ✅ Lead Generation System Checklist

### Offer
□ Lead magnet concept finalized
□ Lead magnet delivered (PDF, video, tool, etc.)
□ Value is immediate and obvious

### Landing Page
□ Landing page copy written
□ Page designed and live
□ Opt-in form connected to ESP
□ Thank you page created
□ All links tested

### Email System
□ Email service provider set up
□ Welcome sequence loaded
□ Emails scheduled properly
□ Links in emails tested
□ Unsubscribe working

### Delivery
□ Lead magnet auto-delivered
□ Delivery tested end-to-end
□ Backup delivery method exists

### Traffic
□ At least 2 traffic sources identified
□ Content plan for driving traffic
□ CTAs added to existing content
□ Social bios updated with link

### Optimization
□ Analytics/tracking set up
□ A/B testing plan exists
□ Conversion rate benchmarked
```

## Optimization After Launch

Once the system is running:

```markdown
## Optimization Priority Order

**1. Opt-In Rate (Landing Page)**
Current: ___% → Goal: 40%+

If below 30%:
- Test different headlines
- Simplify bullet points
- Add social proof
- Reduce friction (fewer form fields)

Run `/direct-response-copy` with note to make it punchier.

**2. Email Open Rates (Welcome Sequence)**
Current: ___% → Goal: 40%+

If below 35%:
- Test subject lines
- Send from a person, not company
- Check deliverability/spam score

**3. Click Rates (Email Engagement)**
Current: ___% → Goal: 15%+

If below 10%:
- Clearer CTAs
- Better email copy
- More relevant content

Run `/email-sequences` to rewrite weak emails.

**4. Conversion Rate (Welcome to Paid)**
Current: ___% → Goal: 5-10%

If below 3%:
- Lead magnet → offer disconnect
- Offer not compelling
- Price objection

Run `/positioning-angles` to find better angle.
```

## Lead Gen Benchmarks by Industry

```markdown
## What "Good" Looks Like

**Service/Consulting**
- Opt-in rate: 25-40%
- Welcome conversion: 3-8%
- Avg time to convert: 30-90 days

**Info Products/Courses**
- Opt-in rate: 30-50%
- Welcome conversion: 5-12%
- Avg time to convert: 7-30 days

**SaaS**
- Opt-in rate: 15-30%
- Trial conversion: 10-25%
- Avg time to convert: 14-60 days

**E-commerce**
- Opt-in rate: 20-35%
- First purchase: 8-15%
- Avg time to convert: 3-14 days
```

## Advanced: Segmentation

Once basics work:

```markdown
## Segment Your List for Better Conversion

**By Engagement:**
- Hot (clicked paid offer): Sell harder
- Warm (opened emails): Nurture more
- Cold (no opens): Re-engagement campaign

**By Interest:**
- Tag based on link clicks
- Different sequences for different interests
- Personalized recommendations

**By Stage:**
- New subscribers: Welcome sequence
- Active subscribers: Nurture + occasional pitch
- Customers: Upsell/retention sequence

Use `/email-sequences` to create segment-specific sequences.
```

## Common Lead Gen Mistakes

```markdown
## ❌ What NOT to Do

**Mistake #1: Generic Lead Magnet**
"Sign up for tips and updates"
→ Nobody cares. Be specific.

**Mistake #2: Weak Opt-In Copy**
Just an email field with "Subscribe"
→ Tell them exactly what they'll get.

**Mistake #3: Immediate Hard Sell**
Email 1: "Here's your free thing"
Email 2: "Buy my $2,000 course"
→ Build trust first.

**Mistake #4: No Traffic Plan**
"If you build it, they will come"
→ No they won't. Drive traffic.

**Mistake #5: Set and Forget**
Launch sequence and never optimize
→ Test, measure, improve.
```

## Lead Gen Workflow Example

```markdown
## Complete 2-Week Lead Gen Build

**Week 1: Create the System**

Day 1: Run `/positioning-angles` (if needed)
       → Finalize positioning

Day 2-3: Run `/lead-magnet`
         → Create 3-5 concepts
         → User selects best one
         → Create the deliverable

Day 4: Run `/direct-response-copy` (landing page)
       → Write opt-in page copy
       → Write thank you page copy

Day 5-7: Run `/email-sequences` (welcome)
         → Write 5-7 email sequence
         → Load into ESP
         → Test delivery

**Week 2: Traffic + Optimization**

Day 8-10: Create traffic content
          → Run `/seo-content` (1-2 pieces with CTAs)
          → Run `/content-atomizer` (social promotion)

Day 11-12: Set up tracking
           → Install analytics
           → Set conversion goals
           → Create tracking spreadsheet

Day 13-14: Test and launch
           → Test opt-in flow end-to-end
           → Invite 10 beta testers
           → Collect feedback
           → Fix any issues
           → Launch traffic campaigns
```

## After Running This Command

User should have:
- Clear understanding of lead gen system
- Skill sequence to build it
- Benchmarks to measure success
- Optimization plan for after launch
- Traffic strategy to drive subscribers

Route them to first missing piece:
- No positioning? → `/positioning-angles`
- No lead magnet? → `/lead-magnet`
- Have lead magnet but no page? → `/direct-response-copy`
- Have page but no emails? → `/email-sequences`
- Have system but no traffic? → `/seo-content` + `/content-atomizer`
