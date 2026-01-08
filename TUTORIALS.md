# Product-Shaped Marketing Tutorials

**Learn by doing: Real examples you can run today**

---

## Tutorial 1: Your First Viral Artifact (15 minutes)

### What You'll Learn
Turn a product feature into a shareable replay that drives signups.

### Prerequisites
- A product with visible functionality
- One impressive feature to showcase

### Step-by-Step

**1. Identify Your Observable Labor**

Think: What does your product DO that looks impressive when you watch it?

Examples:
- AI agent: Researching 100 papers in 5 minutes
- Design tool: Generating 50 logo variations
- Data tool: Merging 500 spreadsheets instantly
- Writing tool: Auto-improving a document in real-time

**Your turn:** Write down one thing your product does that would make someone say "wow" if they watched it happen.

---

**2. Run the Skill**

```bash
/viral-artifact-generator

Prompt: "Create viral artifact from [YOUR FEATURE]

Context:
- Product: [Your product name and what it does]
- Feature: [The impressive capability]
- Audience: [Who would care about this]
- Goal: Generate 50 user shares
"
```

**Example:**
```bash
/viral-artifact-generator

Create viral artifact from ArcSphere's parallel task execution

Context:
- Product: AI agent platform for automating workflows
- Feature: Agents can now process 100 tasks simultaneously
- Audience: Developers, technical founders
- Goal: Generate 50 user shares showing speed improvements
```

---

**3. Review the Output**

The skill will give you:
- ✅ Artifact type (Replay, Gallery, or Collaboration Loop)
- ✅ Observable labor definition (what to capture)
- ✅ Auto-generation trigger (when to create it)
- ✅ Platform-optimized formats (Twitter, LinkedIn, etc.)
- ✅ Share mechanics (how users will spread it)
- ✅ Success metrics (viral coefficient targets)

---

**4. Implement One Element**

Don't try to build everything at once. Pick ONE:

**Option A: Manual Replay (1 hour)**
- Record 30-second screen recording of feature working
- Add before/after metrics overlay
- Post to Twitter with caption from the skill output
- Track shares manually

**Option B: Public Gallery (2 hours)**
- Create `/showcase` page on your site
- Add latest 10 user examples
- Include "Share your build" CTA
- Track gallery visitors → signups

**Option C: Share Incentive (1 hour)**
- Add "Share this result" button in product
- Pre-fill tweet using skill's share copy
- Track UTM params for attribution

---

**5. Measure & Iterate**

Track for 7 days:
- Shares generated: ___
- Views per share: ___
- Signups from shares: ___
- Viral coefficient: Shares ÷ Users = ___

If K < 0.5: Strengthen the share incentive
If K 0.5-0.9: You're on the right track
If K > 1.0: Scale aggressively!

---

## Tutorial 2: Daily Shipping Updates (30 minutes setup)

### What You'll Learn
Automate "What we shipped today" posts from your git commits.

### Prerequisites
- Git repository with regular commits
- Twitter and/or LinkedIn account
- 15 minutes daily to review/post

### Step-by-Step

**1. Collect Today's Commits**

```bash
cd /path/to/your/repo
git log --since="24 hours ago" --pretty=format:"%s" --no-merges
```

Copy the output.

---

**2. Run the Skill**

```bash
/nightly-build-narrator

Generate nightly build summary for [YOUR PRODUCT] [TODAY'S DATE]

Recent commits:
[PASTE YOUR GIT LOG OUTPUT HERE]

Audience: [Developers / End users / Fellow founders]
Style: [Technical / User Benefit / Build-in-Public]
```

**Example:**
```bash
/nightly-build-narrator

Generate nightly build summary for ArcSphere January 8, 2025

Recent commits:
feat: add parallel task execution for agents
perf: reduce agent startup time from 3s to 400ms
fix: resolve memory leak in long-running agents
feat: add progress streaming for multi-step tasks
docs: update API documentation
chore: bump dependencies

Audience: Technical founders and developers
Style: Build-in-Public
```

---

**3. Review the Output**

You'll get:
- ✅ Filtered commits (meaningful changes only)
- ✅ Twitter thread (280 char optimized)
- ✅ LinkedIn post (professional framing)
- ✅ Slack message (community update)
- ✅ Visual recommendations

---

**4. Post to Your Channels**

**Copy the Twitter version → Post it**
**Copy the LinkedIn version → Post it**

⏱️ Time: 2 minutes

---

**5. Automate It (Optional)**

Create a daily script:

```bash
#!/bin/bash
# daily-ship-post.sh

cd /path/to/your/repo
COMMITS=$(git log --since="24 hours ago" --pretty=format:"%s" --no-merges)

echo "Generate nightly build summary from these commits: $COMMITS" | your-ai-cli

# Output gets copied to clipboard, just paste to social
```

Run it every evening at 6pm:
```bash
crontab -e
0 18 * * * /path/to/daily-ship-post.sh
```

---

**6. Consistency is Key**

Ship daily for 30 days:
- Week 1: Building habit, low engagement
- Week 2: Audience notices consistency
- Week 3: People start following along
- Week 4: Anticipation built, reactions faster

Track:
- Day 1 impressions: ___
- Day 30 impressions: ___ (should be 3-5x higher)

---

## Tutorial 3: Your First Credit Campaign (2 hours)

### What You'll Learn
Design and launch a "Vibe Grant" campaign that turns compute into customers.

### Prerequisites
- Product with consumable usage (API calls, credits, generations)
- $1,000-5,000 budget
- Way to track signups from campaign

### Step-by-Step

**1. Calculate Your Unit Economics**

Fill this out:
- Cost per usage unit: $___
- Average user consumption: ___ units/month
- Current paid CAC: $___
- Free → Paid conversion: ___%

**Example:**
- Cost per API call: $0.01
- Average user: 100 calls/month = $1
- Current paid CAC: $120
- Conversion: 5%

---

**2. Run the Skill**

```bash
/credit-campaign-builder

Design a Vibe Grant campaign for [YOUR PRODUCT]

Product: [1-sentence description]
Audience: [Who uses it]
Budget: $[AMOUNT]
Goal: [Number] users creating public projects
Timeline: [When you want to run it]

Current metrics:
- Paid CAC: $[AMOUNT]
- Free trial → paid: [X]%
- Monthly signups: [NUMBER]
```

**Example:**
```bash
/credit-campaign-builder

Design a Vibe Grant campaign for ArcSphere

Product: AI agent platform for automating complex workflows
Audience: Developers, technical founders, automation enthusiasts
Budget: $3,000
Goal: 50 users building and sharing agent workflows publicly
Timeline: 2 weeks (Feb 1-14, 2025)

Current metrics:
- Paid CAC: $150
- Free trial → paid: 8%
- Monthly signups: 200
```

---

**3. Review the Campaign Design**

The skill will give you:
- ✅ Campaign structure (duration, credits per user)
- ✅ Qualification criteria (who gets access)
- ✅ Viral loop mechanics (how users will share)
- ✅ Success metrics (target viral coefficient, CAC)
- ✅ Implementation checklist

---

**4. Set Up the Minimum Viable Campaign**

**Week 1: Preparation**
- [ ] Create landing page: `/vibe-grant`
- [ ] Add application form: Name, Email, Twitter, "What will you build?"
- [ ] Set up credit distribution (manual is fine for first campaign)
- [ ] Create tracking spreadsheet: Signups, shares, builds

**Week 2: Launch**
- [ ] Announce on Twitter/LinkedIn
- [ ] Email your existing users
- [ ] Accept first 50 applications (or whatever budget allows)
- [ ] Distribute credits

**Week 3-4: Campaign Period**
- [ ] Send midpoint check-in: "How's your build going?"
- [ ] Share early builds on your social accounts
- [ ] Encourage public sharing

**Week 5: Showcase**
- [ ] Feature top 10 builds
- [ ] Write case study blog post
- [ ] Thank all participants
- [ ] Calculate viral coefficient

---

**5. Measure Success**

Track these metrics:

**Viral Coefficient:**
- Applications received: ___
- Credits distributed: ___
- Public builds shared: ___
- Signups from shares: ___
- K = Signups ÷ Applications: ___

**Economic Efficiency:**
- Total spent: $___
- New signups: ___
- Effective CAC: $___
- vs Paid CAC: $___

**If K > 1.0:** Campaign is self-sustaining, run it monthly!
**If K 0.5-1.0:** Good start, strengthen viral loops
**If K < 0.5:** Focus more on share incentives

---

**6. Iterate for Campaign #2**

Based on results, test:
- More credits per user (did anyone run out?)
- Stronger share requirements (make sharing required vs optional)
- Better showcase (public gallery with SEO)
- Collaboration bonuses (invite a teammate → more credits)

---

## Tutorial 4: The Complete Founder-Led Social System (Ongoing)

### What You'll Learn
Build consistent founder presence using a 3-tier posting strategy.

### The System

**Tier 1: Daily (Nightly Build Narrator)**
Quick updates, build-in-public momentum

**Tier 2: Weekly (Founder-Led Social)**
Deeper stories, lessons learned, technical insights

**Tier 3: Monthly (Founder-Led Social)**
Major milestones, reflections, big announcements

### Week 1: Set Up Your Rhythm

**Monday:** Plan your week
```bash
/founder-led-social

Create a weekly posting plan for [YOUR PRODUCT]

This week we're shipping:
- [Feature 1]
- [Feature 2]
- [Milestone if any]

Audience: [Your target audience]
Goal: Build anticipation for [upcoming launch/feature]
```

**Tuesday-Thursday:** Daily shipping posts
```bash
# Each evening:
/nightly-build-narrator [with today's commits]
```

**Friday:** Weekly reflection thread
```bash
/founder-led-social

Create a "What I learned this week" thread

Topic: [The biggest challenge or insight from this week]
Style: Build-in-Public
Lesson: [What you learned that others can apply]
```

---

### Week 2-4: Build Consistency

**Keep the rhythm:**
- 3-5 daily posts (nightly narrator)
- 1 weekly thread (founder-led social)
- Respond to comments within first hour

**Track progress:**
- Week 1 avg impressions per post: ___
- Week 4 avg impressions per post: ___ (should increase)
- New followers: ___

---

### Month 2: Add Viral Artifacts

**Week 5:** Pick your best shipped feature
```bash
/viral-artifact-generator [for that feature]
```

**Week 6:** Implement the artifact (replay or gallery)

**Week 7:** Share artifacts in daily posts

**Week 8:** Measure viral coefficient from artifacts

---

### Month 3: Launch Credit Campaign

**Week 9-10:** Design campaign
```bash
/credit-campaign-builder [using what you learned]
```

**Week 11-12:** Run campaign

**End of Month 3:** Evaluate the full system

Track:
- Twitter followers: Month 1 ___ → Month 3 ___
- Organic signups: Month 1 ___ → Month 3 ___
- Viral coefficient from all sources: ___
- Time spent on marketing: ___ hours/week

**Goal:**
- 50%+ of signups organic (not from paid ads)
- 30 minutes/day on marketing (down from 2+ hours)
- K > 1.0 (self-sustaining growth)

---

## Tutorial 5: The Complete Launch Workflow (4 weeks)

### Scenario
You're launching a new product feature. Use all four skills together.

### Week 1: Build & Document

**Daily:** Ship code, post updates
```bash
/nightly-build-narrator [each day]
```

**End of week:** Design the viral artifact
```bash
/viral-artifact-generator [for the new feature]
```

**Deliverable:** 5 shipping updates posted, viral artifact spec ready

---

### Week 2: Build Anticipation

**Monday:** Announce upcoming launch
```bash
/founder-led-social

Create launch teaser thread

Feature: [What's coming]
Problem it solves: [Why people should care]
Launch date: [When]
Teaser: [Hint at the capability without revealing everything]
```

**Tuesday-Thursday:** Continue daily updates

**Friday:** Behind-the-scenes story
```bash
/founder-led-social

Create "How we built [feature]" thread

Challenges: [What was hard]
Breakthroughs: [What worked]
Timeline: [How long it took]
Style: Build-in-Public
```

**Deliverable:** Audience is curious, anticipation built

---

### Week 3: Launch

**Launch Day (Monday):**

```bash
# 1. Launch announcement post
/founder-led-social
Create launch announcement for [FEATURE]

# 2. Share viral artifact
[Post the replay/demo you created in Week 1]

# 3. Continue daily updates
/nightly-build-narrator [showing launch day activity]
```

**Tuesday-Friday:** Post user reactions, early wins

**Deliverable:** Launch momentum, early adopters sharing

---

### Week 4: Credit Campaign

**Monday:** Launch Vibe Grant
```bash
/credit-campaign-builder

Design 48-hour Vibe Grant for [NEW FEATURE]

Budget: $2,000
Goal: 50 users try new feature and share results
```

**Tuesday-Wednesday:** Campaign runs, users build

**Thursday:** Share best user builds

**Friday:** Announce winners, wrap up

**Deliverable:**
- 50+ users tried feature
- 20+ public shares
- Viral coefficient measured
- Next month's campaign planned

---

## Common Patterns & Tips

### Pattern 1: The "Weekly Rhythm"
- Mon: Plan (what to ship this week)
- Tue-Thu: Ship + Post (nightly narrator)
- Fri: Reflect (founder-led social thread)

### Pattern 2: The "Monthly Spike"
- Week 1-3: Daily shipping, build momentum
- Week 4: Credit campaign, drive signups

### Pattern 3: The "Feature Launch"
- Pre-launch: Anticipation (founder social)
- Launch: Announcement + Artifact (both skills)
- Post-launch: Campaign (credit builder)

### Tips for Success

**1. Consistency > Perfection**
- Daily rough posts beat weekly polished ones
- Algorithm rewards consistency

**2. Start Simple**
- Week 1: Just nightly narrator
- Week 2: Add weekly thread
- Month 2: Add artifacts
- Month 3: Add campaigns

**3. Measure Weekly**
- Track one metric: Follower growth or organic signups
- Iterate based on what's working

**4. Authenticity Wins**
- Share failures, not just wins
- Show the work, not just outcomes
- Respond to comments personally

---

## Troubleshooting

### "I'm too busy to post daily"

**Solution:** Batch on Friday
- Review the week's commits
- Generate 3-5 posts at once
- Schedule throughout next week
- Time: 30 minutes Friday vs 2 min/day

### "My posts aren't getting engagement"

**Check:**
- [ ] Are you posting consistently? (Need 30 days minimum)
- [ ] Are you responding to comments?
- [ ] Is content valuable or just announcements?
- [ ] Are you using visuals? (Posts with images get 3x engagement)

**Fix:** Add one of these to every post:
- Screenshot showing the change
- Before/after metrics
- Quick video demo
- Ask a question (drives replies)

### "No one is sharing my artifacts"

**Check:**
- [ ] Is sharing required or optional?
- [ ] Is there an incentive to share?
- [ ] Are artifacts impressive enough?
- [ ] Is the share button one-click?

**Fix:** Make sharing worth it:
- Credits for sharing
- Feature shares in your content
- Leaderboard for top sharers

### "Credit campaigns are too expensive"

**Start smaller:**
- Instead of $5K, try $1K
- Instead of 100 users, try 20
- Instead of 48 hours, try weekend only

**Or change model:**
- Referral credits (ongoing)
- Collaboration bonuses (free to you)
- Public gallery (no credits needed)

---

## Next Steps

1. **Pick ONE tutorial** to try this week
2. **Run it completely** (don't just skim)
3. **Measure the results**
4. **Iterate based on data**
5. **Add another tutorial** next month

**Remember:** These aren't one-off tactics. They're systems that compound.

The goal is to build a marketing engine where:
- Daily: Product usage generates content
- Weekly: Founder stories build audience
- Monthly: Credit campaigns drive growth
- Always: Viral artifacts create distribution

**Start with Tutorial 1 or 2 today. Track results for 30 days. You'll see the compounding effect.**

---

## Need Help?

**Stuck on implementation?**
- Re-run the skill with more specific context
- Ask follow-up questions about output
- Start smaller (MVP first, scale later)

**Want to share your results?**
- Tag @[your product] in your updates
- Use hashtag #ProductShapedMarketing
- Share what's working (help others learn)

**Ready for advanced tactics?**
- Stack multiple campaign types
- Cross-promote artifacts across channels
- Build community around top users
- Create content flywheel

**You have the tools. Now build the system.** 🚀
