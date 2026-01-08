---
name: nightly-build-narrator
description: "Auto-generates 'What shipped today' summaries from git commits and product activity for founder-led social posts. Use when you want to turn daily shipping into consistent social content without manual work. Triggers on: nightly build summary, what shipped today, daily ship post, generate shipping update, ArcSphere Nightly for [date]. Outputs platform-ready social posts with commit summaries, feature highlights, and build-in-public narrative."
---

# Nightly Build Narrator

Turn every git push into a social media post.

This skill auto-generates "What we shipped today" content from your development activity, enabling Lovable's "daily shipping = marketing" strategy without manual effort.

---

## Core Philosophy

**Ship Every Day > Ship Big Once**

**The Lovable Insight:**

Traditional SaaS: Ship quarterly → Big launch → Marketing blitz → Silence for 3 months

AI-native approach: Ship daily → Daily posts → Constant visibility → Compound attention

**Why daily shipping wins:**

1. **Algorithm advantage**: Social algorithms favor consistent posters (daily > weekly)
2. **Audience expectation**: People follow accounts that show up regularly
3. **Momentum > magnitude**: 30 small posts > 1 big announcement (attention compounds)
4. **Transparency builds trust**: Showing progress, not just outcomes
5. **No pressure for perfection**: Small updates can be rough, builds authenticity

**The problem this solves:**

Engineers ship code daily, but translating commits into marketing content is manual work. Most founders skip it because it's tedious.

**This skill automates the translation**: Git activity → Social-ready narrative.

---

## What It Does

### Input Sources

The skill can pull from multiple sources to generate shipping updates:

**1. Git commits (primary source)**
- Parse commit messages from last 24 hours
- Group by feature/area
- Extract meaningful changes (ignore deps, formatting)
- Generate narrative summary

**2. Pull requests merged**
- PR titles and descriptions
- Linked issues (what problem was solved)
- Contributor attribution

**3. Product analytics (if integrated)**
- Features deployed to production
- User-facing changes
- Performance improvements

**4. Manual additions**
- Founder can add context: "Why this matters"
- Customer quotes related to the feature
- Screenshots or demos

### Output Formats

**Platform-optimized posts for:**
- Twitter/X (280 char + thread)
- LinkedIn (professional framing)
- Email (newsletter snippet)
- Slack/Discord (community update)

---

## The Three Narration Styles

### Style 1: Technical Detail (for developer audiences)

**When to use:** Your audience is developers, technical founders, or engineers.

**Tone:** Specific, technical, shows the work.

**Format:**
```
Shipped today:

- Rewrote the caching layer (Redis → in-memory)
  → 230ms → 12ms query time

- Added batch processing for API calls
  → Handles 10K requests/sec now (was 800)

- Fixed edge case in auth flow
  → No more duplicate session tokens

GitHub activity: 47 commits, 8 PRs merged, 2 contributors

https://github.com/yourco/product/commits/main
```

**Why it works:**
- Developers respect technical depth
- Showing actual metrics builds credibility
- Links to GitHub for transparency

---

### Style 2: User Benefit (for customer/user audiences)

**When to use:** Your audience is end users, not developers.

**Tone:** Outcome-focused, benefit-driven, "here's what you get."

**Format:**
```
What's new today:

✨ Pages load 18x faster
   (Rewrote our caching—you'll notice the speed)

🚀 Handles bigger projects
   (10K+ API calls/sec, no slowdown)

🔐 Login is smoother
   (Fixed a bug where sessions expired randomly)

Try the faster version: [link]
```

**Why it works:**
- Users care about outcomes, not implementation
- Emojis make it scannable
- Benefit-first language (what they get, not what you did)

---

### Style 3: Build-in-Public Story (for founder audiences)

**When to use:** You're building an audience of fellow founders, indie hackers, or aspiring builders.

**Tone:** Transparent, vulnerable, educational.

**Format:**
```
Day 47 of building ArcSphere.

Today's focus: Speed.

Our caching was killing us. Pages took 230ms to load.
Not terrible, but not great. Users were commenting.

So we rewrote it. Ripped out Redis, went in-memory.

Result: 12ms. 18x faster.

The lesson: Sometimes the "right" architecture
(external cache) is the wrong choice for your scale.

Know when to simplify.

Tomorrow: Tackling the API rate limits.
```

**Why it works:**
- Story arc (problem → attempt → solution → lesson)
- Vulnerability (admitting mistakes)
- Educational value (teaches readers something)
- Serialized (people tune in for tomorrow's update)

---

## Auto-Generation Process

### Step 1: Parse Git Activity

**Input:** Git log from last 24 hours

**Command:**
```bash
git log --since="24 hours ago" --pretty=format:"%h|%an|%s" --no-merges
```

**Example raw output:**
```
a3f21c9|Jane Doe|feat: add batch API processing
7b2d4e1|Jane Doe|perf: replace Redis cache with in-memory
9c4e8a2|John Smith|fix: resolve duplicate session token bug
1d5f7b3|Jane Doe|chore: update dependencies
2e6g9c4|John Smith|docs: update README with new API limits
```

**Processing:**
1. **Filter noise:**
   - Ignore: `chore:`, `docs:`, `style:`, `refactor:` (unless significant)
   - Keep: `feat:`, `fix:`, `perf:`

2. **Group by type:**
   - Features: `feat:` commits
   - Fixes: `fix:` commits
   - Performance: `perf:` commits

3. **Extract meaning:**
   - "feat: add batch API processing" → "Batch processing for API calls"
   - "perf: replace Redis cache" → "Faster page loads (caching rewrite)"
   - "fix: resolve duplicate session token" → "Login bug fixed"

---

### Step 2: Enrich with Context

**Pull from:**

1. **Pull request descriptions** (if commits reference PRs)
   - Why was this needed?
   - What problem does it solve?
   - Any metrics/benchmarks?

2. **Linked issues** (if commits close issues)
   - User-reported problems
   - Feature requests from community

3. **Commit comments** (if devs added context)
   - Performance before/after
   - Edge cases handled

**Example enriched data:**
```
Commit: perf: replace Redis cache with in-memory
PR #234: "Page load performance improvement"
Description: "Users reported slow page loads (230ms avg).
Switched from external Redis to in-memory caching.
Result: 12ms avg load time (18x improvement)."
Issue #156: "Pages feel sluggish"
```

---

### Step 3: Generate Narrative

**Apply narration style** (Technical / User Benefit / Build-in-Public)

**For Technical style:**
```
Shipped today:

- In-memory caching (PR #234)
  → 230ms → 12ms page loads (18x faster)

- Batch API processing (PR #235)
  → Now handles 10K req/sec (was 800)

- Auth flow fix (Issue #156)
  → Duplicate session tokens resolved

GitHub: 47 commits, 8 PRs merged
```

**For User Benefit style:**
```
Today's updates:

✨ 18x faster page loads
   You'll notice the speed—we rebuilt our caching

🚀 Handles 10K+ requests per second
   No more slowdowns during peak usage

🔐 Smoother login experience
   Fixed the random logout bug

Updates live now: [link]
```

**For Build-in-Public Story:**
```
Day 47 building ArcSphere.

Users were complaining: "Pages feel slow."

They were right. 230ms load time. Not awful, but not snappy.

The culprit: Our fancy external cache (Redis).
Sometimes the "right" architecture is wrong for your scale.

Ripped it out. Went simple: in-memory caching.

Result: 12ms. 18x improvement. Users noticed immediately.

Lesson: Profile before you architect.
We assumed external cache = better.
For our traffic, simpler = faster.

Tomorrow: API rate limits. We're hitting scaling issues at 10K req/sec.
```

---

### Step 4: Add Visual Elements (Optional)

**Enhance the post with:**

1. **Screenshots:**
   - Before/after performance metrics
   - New UI elements
   - Demo GIFs

2. **Charts:**
   - Performance graphs (response time over time)
   - Usage metrics (requests per second)

3. **Code snippets:**
   - Interesting implementation detail
   - Clever solution to a problem

4. **Contributor shoutouts:**
   - Tag contributors on social
   - Give credit for significant work

**Example with visuals:**
```
Shipped today: 18x faster page loads

[Screenshot: Performance comparison graph]

Before: 230ms avg
After: 12ms avg

Shoutout to @jane for the caching rewrite 🔥

GitHub: github.com/yourco/product/pull/234
```

---

## Platform-Specific Optimization

### Twitter/X

**Format:**
- First tweet: Hook + key highlight
- Thread: 2-5 tweets with details
- Final tweet: Link to GitHub/changelog

**Character limits:**
- 280 per tweet
- Use line breaks for readability
- Emojis for visual breaks

**Example:**
```
Tweet 1:
Shipped today: ArcSphere is 18x faster ⚡

Rewrote our caching layer.
230ms → 12ms page loads.

Users are noticing.

Thread: What we changed 👇

Tweet 2:
Problem: External cache (Redis) added latency
Solution: In-memory caching
Result: 18x improvement

Sometimes simpler > fancier

Tweet 3:
Also shipped:
- Batch API processing (10K req/sec)
- Auth bug fix (no more random logouts)

47 commits merged today

GitHub: [link]
```

---

### LinkedIn

**Format:**
- Opening: Professional framing
- Body: Story or metrics
- Closing: Lesson or takeaway
- Link in first comment

**Tone:**
- More polished than Twitter
- Educational angle
- Professional insights

**Example:**
```
We just shipped a 18x performance improvement to ArcSphere.

Here's what we learned about scaling caching:

When we started, we used Redis (external cache). Textbook approach.
Industry best practice for scaling apps.

But at our current scale (5K daily users), it was overkill.
The network latency to Redis was adding 200ms+ per request.

So we simplified: in-memory caching.

Result:
- 230ms → 12ms page loads
- Happier users (instant feedback)
- Lower infrastructure costs

The lesson: "Best practice" is context-dependent.

What works at 1M users might be wrong at 5K.
Profile first. Optimize for your reality, not someone else's scale.

If you're building a product and hitting performance issues,
ask: Are you solving today's problem or tomorrow's?

Changelog: [link in comments]
```

---

### Email Newsletter

**Format:**
- Section in weekly newsletter
- "What We Shipped This Week"
- Grouped by theme (performance, features, fixes)

**Tone:**
- Informative
- Benefit-focused
- Links to detailed changelogs

**Example:**
```
=== What We Shipped This Week ===

🚀 Performance

- 18x faster page loads (12ms, down from 230ms)
- Handles 10K+ API requests per second (was 800)

✨ New Features

- Batch processing for bulk operations
- Improved error messaging in API responses

🔧 Bug Fixes

- Resolved duplicate session token issue
- Fixed edge case in file upload handling

See full changelog: [link]
```

---

### Slack/Discord Community

**Format:**
- Casual, conversational
- Daily update in #announcements or #releases
- Encourage community feedback

**Tone:**
- Friendly, informal
- Open to questions
- Transparent about what's next

**Example:**
```
@channel Daily ship 🚢

Today we focused on speed:

• Rewrote caching → 18x faster page loads
• Batch API processing → handles 10K req/sec now
• Fixed that annoying logout bug

Try the faster version and let us know what you think!

Tomorrow: Working on API rate limits (we're hitting scale issues at peak times)

Questions? Drop them below 👇
```

---

## Automation Hooks

### Trigger: Post-Merge Hook

**Setup:** Git hook that runs after PR merge to main

**Script:**
```bash
#!/bin/bash
# .git/hooks/post-merge

# Check if merged to main
if [ "$(git rev-parse --abbrev-ref HEAD)" = "main" ]; then
    # Collect commits from last 24h
    git log --since="24 hours ago" --pretty=format:"%h|%an|%s" > /tmp/daily_commits.txt

    # Trigger nightly-build-narrator skill
    echo "Generate nightly build summary from /tmp/daily_commits.txt" | your-ai-cli
fi
```

---

### Trigger: Scheduled Job (Cron/GitHub Actions)

**Setup:** Daily at 6pm, generate and post shipping update

**GitHub Actions workflow:**
```yaml
name: Daily Ship Post
on:
  schedule:
    - cron: '0 18 * * *'  # 6pm daily
  workflow_dispatch:  # Manual trigger

jobs:
  post-daily-update:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3

      - name: Get today's commits
        run: |
          git log --since="24 hours ago" --pretty=format:"%h|%an|%s" > commits.txt

      - name: Generate post
        run: |
          # Call nightly-build-narrator skill
          your-ai-cli "nightly build summary from commits.txt"

      - name: Post to Twitter
        env:
          TWITTER_API_KEY: ${{ secrets.TWITTER_API_KEY }}
        run: |
          # Post generated content to Twitter
          your-twitter-cli post --file daily_post.txt
```

---

### Trigger: Manual (Founder runs at end of day)

**Setup:** Alias or script for quick generation

**Bash alias:**
```bash
# Add to ~/.bashrc or ~/.zshrc
alias ship-update='git log --since="24 hours ago" --oneline | your-ai-cli "Generate daily shipping post"'
```

**Usage:**
```bash
$ ship-update
[Generates post]
[Copies to clipboard]
Ready to paste!
```

---

## Configuration Options

### 1. Narration Style Preference

**Set default style for your brand:**

```json
{
  "nightly-build-narrator": {
    "default_style": "build-in-public",
    "audience": "founders",
    "tone": "transparent-educational"
  }
}
```

**Styles:**
- `technical`: Developer audience
- `user-benefit`: End-user audience
- `build-in-public`: Founder/builder audience

---

### 2. Commit Filtering Rules

**Customize what gets included:**

```json
{
  "include_types": ["feat", "fix", "perf"],
  "exclude_types": ["chore", "docs", "style"],
  "exclude_keywords": ["deps", "package-lock", "yarn.lock"],
  "minimum_significance": "medium"
}
```

---

### 3. Enrichment Sources

**Where to pull context from:**

```json
{
  "sources": {
    "git_commits": true,
    "pull_requests": true,
    "linear_issues": true,
    "customer_feedback": false,
    "analytics_metrics": true
  }
}
```

---

### 4. Output Platforms

**Which platforms to generate for:**

```json
{
  "platforms": {
    "twitter": true,
    "linkedin": true,
    "email_newsletter": false,
    "slack_community": true
  }
}
```

---

## Advanced: Smart Summarization

### When You Ship a LOT

**Problem:** 100+ commits per day = overwhelming summary.

**Solution:** Intelligent grouping and summarization.

**Approach:**

1. **Group by feature area:**
   - Auth-related commits → "Auth improvements"
   - API commits → "API enhancements"
   - UI commits → "UI polish"

2. **Highlight top 3:**
   - Most impactful (user-facing changes)
   - Biggest performance gains
   - Most-requested features

3. **Summarize the rest:**
   - "Plus 47 other improvements (bug fixes, minor UI tweaks, performance optimizations)"
   - Link to full changelog

**Example output:**
```
Shipped today (highlights):

🚀 18x faster page loads (caching rewrite)
✨ Batch API processing (10K req/sec)
🔐 Auth flow improvements (smoother login)

Plus 47 other updates (bug fixes, UI polish, performance)

Full changelog: [link]
```

---

## Output Format

When generating a nightly build summary, provide:

### 1. Platform Selection
Which platforms to generate for (Twitter, LinkedIn, Email, Slack).

### 2. Narration Style
Which style fits the audience (Technical, User Benefit, Build-in-Public).

### 3. Commit Summary
- Total commits
- Filtered commits (meaningful ones)
- Grouped by type (feat/fix/perf)

### 4. Key Highlights
Top 3-5 changes worth calling out.

### 5. Generated Posts
Platform-specific content ready to copy/paste:
- Twitter thread (with character counts)
- LinkedIn post (with formatting)
- Email snippet
- Slack message

### 6. Visual Recommendations
What screenshots/charts would enhance the post.

### 7. Hashtags/Mentions
Relevant tags for discoverability, contributors to credit.

### 8. Posting Schedule
Best time to post for each platform (based on audience).

---

## Example Workflow

**End of day (6pm):**

1. **Trigger skill:** `nightly-build-narrator for ArcSphere [today's date]`

2. **Skill collects:**
   - 47 commits from last 24 hours
   - 8 merged PRs
   - 3 closed issues
   - 2 performance metrics

3. **Skill filters:**
   - 12 meaningful commits (ignored chores/docs)
   - 3 key highlights (caching, API batch, auth fix)

4. **Skill generates:**
   - Twitter thread (ready to post)
   - LinkedIn post (ready to post)
   - Slack message (ready to post)

5. **You review and post:** 2 minutes total

6. **Result:** Consistent daily presence, zero manual effort

---

## Integration with Other Skills

### Works With: `founder-led-social`

**Combined workflow:**

1. **Nightly Build Narrator** generates daily summary (tactical updates)
2. **Founder-Led Social** generates deeper storytelling (weekly insights)

**Example:**
- Monday-Thursday: Nightly summaries (what shipped)
- Friday: Founder story (why we shipped it, what we learned)

---

### Works With: `viral-artifact-generator`

**Combined workflow:**

1. Ship feature → Nightly summary announces it
2. Feature gains traction → Viral artifact generated (replay/demo)
3. Viral artifact shared → Drives signups

**Example:**
- Day 1: "Shipped batch API processing" (nightly summary)
- Day 3: User shares replay of processing 10K items in 5 seconds (viral artifact)
- Day 4: Replay goes viral, 500 signups

---

## Success Metrics

**Posting consistency:**
- Target: 5-7 posts per week
- Measure: Actual posts / target posts

**Engagement rate:**
- Twitter: Likes + retweets + replies / impressions
- Target: 3-5% (consistent posting improves over time)

**Audience growth:**
- Follower growth rate
- Target: 5-10% monthly from consistent posting

**Time saved:**
- Manual posting: 15-30 min/day
- Automated: 2-5 min/day (review + post)
- Time saved: 10-25 min/day = 3-8 hours/month

---

## Conclusion

Daily shipping is a marketing strategy, not just a development practice.

**The formula:**
- Ship code daily (you're already doing this)
- Auto-generate social posts (this skill)
- Post consistently (becomes habit)
- Build audience (compounds over time)

**The result:**
Consistent visibility → Growing audience → Organic signups

No ads needed. Just ship and tell people about it.

**That's the Lovable playbook.**
