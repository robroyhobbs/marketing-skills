---
name: audit
description: Audit your current marketing assets and identify gaps
---

# Marketing Assets Audit

Run a comprehensive audit of your marketing foundation, strategy, and execution assets.

## What This Command Does

1. **Foundation Check**
   - Brand voice defined?
   - Positioning/differentiation clear?

2. **Strategy Assets**
   - Keyword research done?
   - Lead magnet created?
   - Content calendar exists?

3. **Execution Assets**
   - Landing pages built?
   - Email sequences active?
   - Content published?
   - Newsletter running?

4. **Distribution**
   - Social presence?
   - Content repurposed?

## Instructions

Ask the user about each category:

### Foundation Questions
```
Do you have a defined brand voice?
□ Yes - documented
□ Somewhat - inconsistent
□ No - write differently every time

Do you know what makes you different from competitors?
□ Yes - clear positioning
□ Somewhat - general ideas
□ No - not sure
```

### Strategy Questions
```
Have you done keyword research?
□ Yes - have target keywords
□ No - writing without strategy

Do you have a lead magnet?
□ Yes - active and converting
□ Yes - but not getting signups
□ No - no opt-in offer
```

### Execution Questions
```
What marketing assets do you currently have?
□ Landing page(s)
□ Email welcome sequence
□ Email nurture sequence
□ Blog/SEO content
□ Newsletter
□ Social media presence
□ Other: _______
```

### Distribution Questions
```
Are you repurposing content across platforms?
□ Yes - systematically
□ Sometimes - ad hoc
□ No - one-and-done
```

## Output Format

After gathering responses, provide:

```markdown
# Marketing Audit Results

## ✅ What You Have
[List completed assets]

## ⚠️ What's Missing
[List gaps in priority order]

## 🎯 Recommended Action Plan

**Immediate (Foundation)**
1. [Skill to run] - [Why this matters]

**Next (Strategy)**
2. [Skill to run] - [What this enables]

**Then (Execution)**
3. [Skill to run] - [Expected outcome]

**Finally (Distribution)**
4. [Skill to run] - [How this compounds]

## 📊 Marketing Maturity Score: X/10

Based on:
- Foundation: X/2 (voice + positioning)
- Strategy: X/2 (keywords + lead magnet)
- Execution: X/4 (landing page, sequences, content, newsletter)
- Distribution: X/2 (repurposing + consistency)

**Next Step:** Run `/[recommended-skill]` to fill the biggest gap.
```

## Example Output

```markdown
# Marketing Audit Results

## ✅ What You Have
- Landing page (needs optimization)
- Some blog content (7 posts, no strategy)
- Social media accounts (inconsistent posting)

## ⚠️ What's Missing
- Brand voice definition
- Clear positioning/differentiation
- Keyword research & content strategy
- Lead magnet
- Email sequences
- Newsletter

## 🎯 Recommended Action Plan

**Immediate (Foundation)**
1. `/brand-voice` - You're writing inconsistently. Define your voice first.

**Next (Strategy)**
2. `/positioning-angles` - Figure out what makes you different before creating more content.
3. `/keyword-research` - Stop guessing what to write about. Get strategic.

**Then (Execution)**
4. `/lead-magnet` - You need a way to capture leads, not just traffic.
5. `/email-sequences` - Turn subscribers into customers automatically.

**Finally (Distribution)**
6. `/content-atomizer` - Maximize reach from content you're already creating.

## 📊 Marketing Maturity Score: 3/10

Based on:
- Foundation: 0/2 (no voice, no positioning)
- Strategy: 0/2 (no keyword plan, no lead magnet)
- Execution: 2/4 (have landing page + some content)
- Distribution: 1/2 (social exists but not systematic)

**Next Step:** Run `/brand-voice` - everything else builds on this foundation.
```

## Tips for Running This Audit

- Be honest about quality, not just existence (having a "landing page" doesn't count if it doesn't convert)
- Prioritize foundation before adding more tactics
- Focus on biggest gaps first, not easiest wins
- A focused system beats scattered tactics

## After the Audit

Route user to the highest-priority skill based on gaps identified.
