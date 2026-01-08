---
name: viral-artifact-generator
description: "Creates shareable proof-points from product usage that drive word-of-mouth growth. Use when you need to turn product functionality into viral marketing assets like replay videos, interactive demos, or embeddable widgets showing AI at work. Triggers on: create viral artifact from X, generate shareable proof for X, product-shaped marketing for X, ghost replay for X, make this shareable. Outputs specifications for time-lapse videos, interactive demos, public galleries, or embeddable widgets that showcase observable labor."
---

# Viral Artifact Generator

The best marketing isn't content ABOUT your product. It's artifacts FROM your product that prove it works.

This skill designs shareable proof-points that turn product usage into distribution.

---

## Core Philosophy

**Product-Shaped Marketing > Content Marketing**

Traditional marketing: Write a blog post explaining what the product does.
Product-shaped marketing: Create an artifact that SHOWS the product working.

The difference:
- **Blog post**: "Our AI can analyze 1000 documents in minutes"
- **Viral artifact**: A 30-second time-lapse video of the AI actually doing it, shared by the user who ran it

**Observable labor builds trust faster than claims.**

---

## The Three Types of Viral Artifacts

### Type 1: Replay Mechanics (Manus-style)

**What it is**: A shareable replay of an AI agent completing a task, showing every step it took.

**Why it works**:
- Proves the product works (not a demo, real usage)
- Shows the "magic" of automation
- User gets status by sharing their agent's accomplishment

**Artifact format options**:
1. **Time-lapse video**: 20-60 second sped-up screen recording showing browser navigating, forms filling, tasks completing
2. **Interactive replay**: Embeddable widget that lets viewers scrub through the agent's session
3. **Annotated transcript**: Step-by-step log with timestamps showing agent's reasoning + actions
4. **Before/after comparison**: Split-screen showing manual process vs agent completion

**Implementation requirements**:
- Session recording infrastructure (browser automation, API calls logged)
- Auto-generation trigger (when task completes successfully)
- One-click sharing (copy link, post to X/LinkedIn, embed code)
- Public gallery (showcase page where anyone can browse replays)

**Use cases**:
- AI agents (show the agent working while user slept)
- Data analysis tools (show 1000 spreadsheets processed)
- Design automation (show 50 variations generated)
- Research tools (show 100 papers analyzed)

**Psychological triggers**:
- **Social proof**: "If this worked for them, it'll work for me"
- **Status gain**: User looks smart/productive for having an AI assistant
- **FOMO**: "I need this capability too"

---

### Type 2: Public Proof Galleries

**What it is**: A searchable, public showcase of what users have built/created with your product.

**Why it works**:
- Every user creation becomes a marketing asset
- Buyers can see real-world use cases, not staged demos
- Creators get distribution (so they're incentivized to build publicly)

**Artifact format options**:
1. **Portfolio pages**: Each user gets a public profile showing their creations
2. **Gallery with filters**: Browse by industry, use case, date, popularity
3. **Embeddable cards**: OG image tags that make shares look good on social
4. **Leaderboards**: Most-viewed creations, power users, trending builds

**Implementation requirements**:
- Public/private toggle on user creations
- Metadata capture (tags, description, use case category)
- SEO optimization (each creation is a landing page)
- Social sharing buttons with pre-filled copy
- Creator attribution (links back to user's profile/website)

**Use cases**:
- AI app builders (showcase apps built with your platform)
- Design tools (gallery of designs created)
- No-code tools (directory of sites/apps built)
- Content generators (library of generated content)

**Psychological triggers**:
- **Inspiration**: "I could build that too"
- **Credibility**: "Real people are using this successfully"
- **Community**: "I want to be part of this creator group"

---

### Type 3: Collaboration Loops

**What it is**: Features that require inviting others or make content better when shared.

**Why it works**:
- Product usage directly drives new user acquisition
- Viral coefficient built into core functionality
- Network effects make product more valuable

**Artifact format options**:
1. **Invite gates**: "Unlock [feature] by inviting 3 teammates"
2. **Collaborative artifacts**: Documents/projects that improve when others contribute
3. **Referral rewards**: "You get X credits, they get Y credits"
4. **Challenge mechanics**: "Beat this benchmark and share your score"

**Implementation requirements**:
- Invite tracking system
- Reward/credit distribution
- Public challenge leaderboards
- Easy share-to-social flows
- Co-author attribution

**Use cases**:
- Team tools (better with more collaborators)
- Learning platforms (compare progress with friends)
- Productivity tools (share templates/workflows)
- Creative tools (remixable starting points)

**Psychological triggers**:
- **Reciprocity**: "They invited me, I should try it"
- **Competition**: "I want to beat their score"
- **Co-creation**: "Let's build this together"

---

## The Viral Artifact Design Process

### Step 1: Identify the "Observable Labor"

What does your product DO that's impressive when you watch it happen?

Not the outcome. The PROCESS.

**Questions to ask:**
- What task does the product automate that normally takes hours?
- What would look like magic if someone saw it in real-time?
- What result do users want to brag about?
- What "behind the scenes" process is normally invisible?

**Examples:**
- AI agent: Watching it navigate 20 websites to find the best price
- Data tool: Watching it merge 500 spreadsheets in 30 seconds
- Design tool: Watching it generate 100 logo variations
- Research tool: Watching it read 50 academic papers and summarize key findings

**The artifact captures THIS process, not just the end result.**

---

### Step 2: Choose the Artifact Type

Match the artifact to the product category and viral mechanism:

| Product Type | Best Artifact Type | Why |
|--------------|-------------------|-----|
| AI Agents / Automation | Replay Mechanics | Shows the "magic" of work happening autonomously |
| Creation Tools | Public Galleries | Every creation is a marketing asset |
| Collaboration Software | Collaboration Loops | Network effects built into core usage |
| Data/Analysis Tools | Replay + Galleries | Show process + showcase diverse use cases |
| Productivity Tools | Collaboration + Galleries | Templates/workflows are shareable |

**You can combine types.** Example: AI app builder with:
- Replay (show the build happening)
- Gallery (showcase finished apps)
- Collaboration (invite teammates to co-build)

---

### Step 3: Design the Share Trigger

When does artifact generation happen? Make it automatic + timely.

**Auto-generation triggers:**
- Task completion (agent finishes research → auto-generate replay)
- Milestone reached (1000th document processed → celebration artifact)
- Quality threshold (creation gets 100 views → add to featured gallery)
- Time-based (weekly summary of all agent tasks)

**Manual creation triggers:**
- User clicks "Share this result"
- User marks creation as "Public"
- User accepts "Featured in gallery?" prompt

**Critical: The artifact must be generated automatically.** If users have to manually create it, 95% won't bother.

---

### Step 4: Optimize for Platform Sharing

Each platform has different viral mechanics. Design artifacts that work natively.

#### Twitter/X
- **Format**: Short video (20-40 seconds) or carousel of images
- **Hook**: First 3 seconds must be jaw-dropping (show the result first, then the process)
- **CTA**: "Built this with [product]. Try it: [link]"
- **Metadata**: Twitter card with preview image

#### LinkedIn
- **Format**: Professional narrative + embedded artifact
- **Hook**: "Here's what I learned from..." or "This is the future of [industry]"
- **CTA**: "Curious how this works? [link to product]"
- **Metadata**: Rich preview with company branding

#### Reddit/HN/IndieHackers
- **Format**: "Show HN" post or educational breakdown
- **Hook**: Technical details, transparent metrics, lessons learned
- **CTA**: Subtle mention in comments, not pushy in main post
- **Metadata**: Link to deeper write-up or demo

#### Email/Slack
- **Format**: Embeddable widget or GIF
- **Hook**: "Check out what [teammate] built" (social proof)
- **CTA**: "Use the same template: [link]"
- **Metadata**: Inline preview, no click required to see value

**Design artifacts with platform-native formats, not one-size-fits-all.**

---

### Step 5: Add the Social Proof Layer

Artifacts are 10x more viral when they include visible social proof.

**Social proof elements to include:**
1. **View count**: "Watched by 1,247 people"
2. **Creator attribution**: "Built by [User Name], [Job Title] at [Company]"
3. **Peer validation**: "Featured by [Influencer/Publication]"
4. **Benchmarking**: "Faster than 94% of similar tasks"
5. **Community reactions**: Upvotes, saves, remix count

**Where to display social proof:**
- On the artifact itself (overlay on video, badge on gallery item)
- In share links (OG tags include metrics)
- In user's profile (showcase stats)

**Psychological principle:** People share things that make THEM look good. Social proof makes the artifact more share-worthy by boosting the sharer's status.

---

## Viral Artifact Playbook (Common Patterns)

### Pattern 1: The "Ghost Replay" (for AI agents)

**Setup**: When an AI agent completes a task, auto-generate a time-lapse video showing browser movements, API calls, and task progression.

**Viral hook**: "My AI worked while I slept and found the top 10 candidates for our open role."

**Share flow**:
1. Agent finishes task → replay auto-generated
2. User gets notification: "Your agent just completed [task]. Share the replay?"
3. One-click share to X/LinkedIn with pre-filled copy
4. Video includes branding: "[Product] Agent • See how at [link]"

**Why it works**: Combination of FOMO ("I want an AI assistant"), social proof ("This person is productive"), and visible outcome ("The task actually got done").

---

### Pattern 2: The "Public Challenge" (for productivity tools)

**Setup**: Create time-bound challenges where users complete tasks and share their results to a public leaderboard.

**Viral hook**: "I hit inbox zero in 14 minutes using [product]. Can you beat my time?"

**Share flow**:
1. User completes challenge → score auto-posted to leaderboard
2. Prompt: "Share your score? You're in the top 10%"
3. Share generates image: Leaderboard position + score + "[Product] Challenge"
4. Link goes to challenge landing page (drives new signups)

**Why it works**: Competition drives shares, leaderboard provides social proof, challenge lowers activation barrier ("Just try to beat this score").

---

### Pattern 3: The "Creator Showcase" (for no-code/design tools)

**Setup**: Every creation gets a public URL with creator attribution. Best creations featured on homepage.

**Viral hook**: "I built this app in 2 hours with [product]. No code required."

**Share flow**:
1. User marks project as "Public" → gets custom URL
2. Public page includes: Demo, creator profile, tech stack, creation story
3. Pre-filled social copy: "Built [project name] with [product] – [link]"
4. Featured projects get "As featured on [product]" badge (creators want this)

**Why it works**: Creators get distribution (so they promote it), viewers see proof it works (social proof), product becomes associated with impressive creations (halo effect).

---

### Pattern 4: The "Before/After" (for transformation tools)

**Setup**: Automatically capture "before" state when user starts, then generate comparison when done.

**Viral hook**: "Turned 500 messy customer reviews into this dashboard in 3 clicks."

**Share flow**:
1. User completes transformation → before/after auto-generated
2. Artifact shows: Split screen or slider comparison
3. Share includes: Time saved, complexity reduced, outcome achieved
4. One-click post to LinkedIn with professional framing

**Why it works**: Before/after is the ultimate proof format, quantified savings justify purchase, professional framing makes it LinkedIn-safe.

---

## Implementation Checklist

Use this checklist to ensure your viral artifact is fully weaponized:

### Technical Infrastructure
- [ ] Artifact auto-generation on trigger events
- [ ] Public URLs for each artifact (shareable links)
- [ ] Embeddable code (for blogs, portfolios, etc.)
- [ ] OG meta tags optimized for each platform
- [ ] Analytics tracking (views, shares, conversions)

### User Experience
- [ ] One-click sharing (no friction)
- [ ] Pre-filled social copy (users don't have to write)
- [ ] Platform-specific formatting (Twitter video, LinkedIn post, etc.)
- [ ] Mobile-optimized viewing
- [ ] Preview before sharing (let users see what they're posting)

### Social Proof
- [ ] View/engagement counters visible
- [ ] Creator attribution included
- [ ] Leaderboards or featured galleries
- [ ] Peer validation signals (upvotes, saves, etc.)
- [ ] Benchmark comparisons ("Top 5% of users")

### Distribution Loops
- [ ] Artifact links drive back to product signup
- [ ] Referral tracking (who shared → who signed up)
- [ ] Viral coefficient measurement
- [ ] Gallery discovery (can users find artifacts organically?)
- [ ] SEO optimization (artifacts rank for long-tail searches)

### Incentive Alignment
- [ ] Creators get status/distribution from sharing
- [ ] Product branding is subtle but present
- [ ] Sharers receive credit for referrals
- [ ] Featured artifacts get extra promotion
- [ ] Community showcases top creators

---

## Anti-Patterns (What NOT to Do)

### ❌ Making sharing manual
If users have to manually create/export/format artifacts, most won't do it. Auto-generate on completion.

### ❌ Generic "Share" buttons
Pre-fill the copy, pre-select the format, make it one-click. Don't make users work.

### ❌ Hiding the product
Artifacts need subtle branding. Otherwise viewers won't know what tool was used.

### ❌ Requiring signups to view
Artifacts must be publicly viewable without auth. The point is distribution, not gating.

### ❌ Low-fidelity artifacts
Blurry videos, broken embeds, slow load times = won't get shared. Polish matters.

### ❌ No creator attribution
If you don't credit the creator, they won't share. Ego is a distribution channel.

### ❌ Desktop-only experiences
Most social sharing happens on mobile. Artifacts must be mobile-optimized.

---

## Output Format

When generating a viral artifact specification, provide:

### 1. Artifact Type
Which type (Replay, Gallery, Collaboration Loop) and why this fits the product.

### 2. Observable Labor Definition
What impressive process will be captured? Describe the "watch this work happen" moment.

### 3. Auto-Generation Trigger
When/how the artifact gets created automatically.

### 4. Artifact Format Specs
- **Visual format**: Video, image, interactive widget, etc.
- **Duration/size**: How long, how big, technical specs
- **Key elements**: What must be included in the artifact
- **Branding placement**: Where product name/logo appears

### 5. Share Flow
Step-by-step user journey from artifact generation to social post.

### 6. Platform Optimization
How the artifact is formatted for Twitter, LinkedIn, Reddit, email, etc.

### 7. Social Proof Elements
What counters, attributions, and validation signals are included.

### 8. Distribution Loop
How artifact viewers convert to product signups.

### 9. Success Metrics
- **Viral coefficient target**: Shares per artifact generated
- **Conversion rate target**: Viewers who sign up
- **Engagement target**: Views, saves, upvotes per artifact

### 10. Implementation Priority
**Must-have** (minimum viable viral artifact) vs **Nice-to-have** (future enhancements).

---

## Reference: The Viral Artifact Formula

**Observable Labor** (the impressive process)
+
**Auto-Generation** (zero user effort)
+
**Social Proof** (visible validation)
+
**Platform Optimization** (native format for each channel)
+
**Creator Incentive** (status/distribution for sharing)
=
**Viral Artifact**

Every element is required. Skip one, and virality drops 10x.

---

## Questions to Ask Users

When someone requests a viral artifact, gather this context:

1. **What does your product DO that's impressive to watch?** (Observable labor)
2. **What task completion or milestone happens frequently?** (Auto-generation trigger)
3. **What would users brag about accomplishing with your product?** (Share motivation)
4. **Where does your target audience spend time online?** (Platform optimization)
5. **What social proof do you already have?** (View counts, testimonials, case studies)
6. **Do you have session recording / task logging infrastructure?** (Technical feasibility)
7. **What's your primary growth bottleneck right now?** (Prioritization)

Use answers to design the highest-leverage viral artifact for their specific product.

---

## Advanced: Compounding Viral Artifacts

The most effective products have MULTIPLE viral artifacts working together:

**Example: AI App Builder**
1. **Replay**: Time-lapse of app being built in chat interface
2. **Gallery**: Public directory of all apps built on the platform
3. **Collaboration**: Invite teammates to co-build, share templates
4. **Challenge**: "Build an app in under 30 minutes" leaderboard

Each artifact feeds the others:
- Replay watchers click through to gallery
- Gallery browsers try the challenge
- Challenge participants invite teammates
- Teammates create replays → cycle repeats

**Design for compounding effects, not single viral hits.**

---

## Conclusion

Viral artifacts turn your product usage into your marketing engine.

Every task completed → artifact generated → social proof added → distribution amplified.

The best products don't need ads. They have users who can't help but share what they built.
