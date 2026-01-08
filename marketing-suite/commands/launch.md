---
name: launch
description: Complete launch workflow for products, offers, or campaigns
---

# Launch Workflow

Orchestrated workflow for launching products, offers, or campaigns with all marketing assets.

## What This Command Does

Guides you through creating a complete launch marketing system:

1. **Launch Positioning** - Find the right angle for launch
2. **Pre-Launch Assets** - Waitlist, early access, lead magnet
3. **Launch Copy** - Landing pages, sales pages, ad copy
4. **Launch Emails** - Complete launch sequence
5. **Launch Content** - Announcement content across channels

## Before You Start

This command assumes you have:
- A product/offer to launch
- Understanding of your target audience
- Launch timeline (even if approximate)

If you don't have these, start with `/positioning-angles` first.

## The Launch Workflow

### Step 1: Launch Assessment

Ask the user:

```
What are you launching?
□ New product/service
□ New offer/package
□ Course/program
□ Event
□ Other: _______

What's your launch timeline?
□ Launching this week (emergency mode)
□ Launching in 2-4 weeks (standard)
□ Launching in 1-3 months (ideal)
□ Pre-launch/building waitlist

Do you have an audience?
□ Yes - existing email list (size: ____)
□ Yes - social following (size: ____)
□ No - cold launch
□ Building from scratch

What assets do you already have?
□ Product positioning/messaging
□ Landing page
□ Sales page
□ Email list
□ Launch sequence emails
□ Social announcement content
```

### Step 2: Route Based on Timeline

**Emergency (Launching This Week)**
```markdown
⚠️ Emergency Launch Mode

You need the essentials only:

**Today:**
1. `/positioning-angles` - Find your launch angle (2 hours)
2. `/direct-response-copy` - Write landing page (3 hours)

**Tomorrow:**
3. `/email-sequences` - 3-email launch sequence (2 hours)
4. `/newsletter` - Launch announcement (1 hour)

**Day 3:**
5. `/content-atomizer` - Social announcements (1 hour)

This is bare minimum. Expect to iterate post-launch.
```

**Standard (2-4 Weeks)**
```markdown
✅ Standard Launch Timeline

**Week 1: Foundation**
Day 1-2: `/positioning-angles` - Nail the launch angle
Day 3-4: `/lead-magnet` - Create pre-launch opt-in (if building list)
Day 5-7: `/direct-response-copy` - Landing page + sales page

**Week 2-3: Sequences**
Day 8-10: `/email-sequences` - Launch sequence (6-10 emails)
Day 11-12: `/newsletter` - Announcement content
Day 13-14: `/content-atomizer` - Social + distribution

**Week 4: Polish & Prep**
Day 15+: Test, refine, prepare launch logistics
```

**Ideal (1-3 Months)**
```markdown
🚀 Optimal Launch Build

**Month 1: Foundation + Pre-Launch**
Week 1: `/brand-voice` (if not defined) + `/positioning-angles`
Week 2: `/lead-magnet` - Pre-launch waitlist offer
Week 3: `/direct-response-copy` - Waitlist landing page
Week 4: `/email-sequences` - Waitlist nurture sequence

Build your list while you build the product.

**Month 2: Launch Assets**
Week 5-6: `/direct-response-copy` - Sales page + ad copy
Week 7: `/email-sequences` - Launch email sequence
Week 8: `/newsletter` + `/seo-content` - Supporting content

**Month 3: Distribution Prep**
Week 9: `/content-atomizer` - Multi-platform content
Week 10-11: Guest content, partnerships, press
Week 12: Final polish, test all systems

This builds anticipation and validates demand before launch.
```

### Step 3: Execute the Workflow

For each skill in the sequence:

1. **Load the skill** with launch context
2. **Wait for completion** before moving to next
3. **Pass outputs forward** (positioning → copy, copy → emails, etc.)
4. **Track progress** with checkboxes

### Step 4: Launch Checklist

Before launch day:

```markdown
## Pre-Launch Checklist

### Messaging
□ Launch positioning defined
□ Key messaging points documented
□ Value proposition clear

### Assets
□ Landing page live and tested
□ Sales page complete (if applicable)
□ Email sequence loaded in ESP
□ Social content scheduled
□ Ad creative ready (if running ads)

### Technical
□ Payment processing tested
□ Email deliverability checked
□ Analytics/tracking set up
□ Links all working

### Audience
□ Email list warmed up
□ Social followers prepped
□ Partners/affiliates briefed

### Backup Plans
□ FAQ prepared for common objections
□ Support system ready
□ Refund/guarantee policy clear
```

## Launch Sequence Template

Provide this as reference:

```markdown
## Standard Launch Email Sequence

**Email 1: Launch Day (Open Cart)**
- Announce availability
- Lead with biggest benefit
- Clear CTA to sales page

**Email 2: Day 1 (The Why)**
- Why this matters now
- Transformation/outcome
- Case study or proof

**Email 3: Day 2 (The How)**
- How it works
- What's included
- Address key objection

**Email 4: Day 3 (Social Proof)**
- Testimonials
- Results
- Who it's for

**Email 5: Day 4 (Objection Crusher)**
- Address biggest hesitation
- Guarantee/risk reversal
- Comparison to alternatives

**Email 6: Day 5 (Urgency - 2 Days Left)**
- Reminder of deadline
- What they'll miss
- FOMO angle

**Email 7: Day 6 (Final Hours)**
- Last chance
- Simple, direct
- One clear CTA

**Email 8: Day 7 (Cart Closing)**
- 6 hours left
- 2 hours left
- Final email
```

## Post-Launch

After launch completes:

```markdown
✅ Launch Complete!

**Immediate Next Steps:**

1. **Review Performance**
   - Open rates, click rates, conversion rates
   - What messaging worked best?
   - Where did people drop off?

2. **Optimize Based on Data**
   - A/B test landing page elements
   - Refine email copy based on engagement
   - Double down on what worked

3. **Evergreen the Launch**
   - `/email-sequences` - Convert to evergreen funnel
   - `/seo-content` - Create supporting content
   - `/content-atomizer` - Repurpose launch content

4. **Plan Next Launch**
   - What would you do differently?
   - Document lessons learned
   - Build better for next time
```

## Launch Type Variations

### Product Launch
- Focus on transformation and outcomes
- Heavy on social proof
- Demo/trial offers work well

### Course/Program Launch
- Focus on curriculum and what they'll learn
- Case studies crucial
- Early-bird pricing effective

### Service/Offer Launch
- Focus on done-for-you benefits
- Authority and credibility key
- Limited spots create urgency

### Event Launch
- Focus on experience and networking
- Speaker lineup matters
- Early-bird + tiered pricing

## Tips for Successful Launches

1. **Build the list first** - Launch to an audience, not into the void
2. **Sequence matters** - Don't skip positioning to jump to copy
3. **More pre-launch = better launch** - Waitlists build momentum
4. **Email is king** - Social is nice, email converts
5. **Urgency is real** - Deadlines make people decide
6. **Follow up matters** - Most sales come in final 48 hours

## Example Launch Timeline (2-Week)

```
Day 1: Run /positioning-angles
       Output: Launch angle + key messages

Day 2-3: Run /direct-response-copy (landing page)
         Input: Positioning from day 1
         Output: Launch landing page

Day 4-6: Run /email-sequences (launch sequence)
         Input: Positioning + landing page copy
         Output: 7-email launch sequence

Day 7-8: Run /newsletter (announcement)
         Input: Positioning
         Output: Newsletter edition announcing launch

Day 9-10: Run /content-atomizer
          Input: Launch copy + newsletter
          Output: Social content for all platforms

Day 11-14: Load emails, test systems, prep for launch day
```

## After Running This Command

User should have:
- Clear launch timeline
- Skill sequence to follow
- Checklist of assets needed
- Template for launch emails
- Understanding of what to do post-launch

Route them to the first skill in their sequence based on timeline selected.
