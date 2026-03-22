# workflow-discipline.md — The Cost of This Model

> **Stage:** Read before starting any project using this workflow. Re-read when things feel stuck.

---

## What This Model Is

- Spec-first, AI-assisted development
- Human writes tests after AI implements
- TODO.md gates extensions from existing modules
- Deliberate pauses before scope expansion
- Documentation as externalized memory

This model works. But it requires discipline. This document is what happens when you don't have it.

---

## Where This Model Breaks

### 1. Spec-First Becomes Procrastination

**What happens:** You refine the spec forever. Shipping feels premature. The "perfect" spec is always one iteration away.

**Signs:**
- Spec edits feel productive, but nothing ships
- "Just one more edge case" is a daily thought
- You've spent more time formatting the spec than thinking about the problem

**Cost:** Weeks vanish. The problem you're solving may no longer exist.

**Discipline:** Timebox spec sessions. 2 hours max, then code even if it's imperfect. The spec is a tool, not an artifact.

---

### 2. "Tests Later" Becomes "Tests Never"

**What happens:** You ship three features. Then five. Then you tell yourself the code is simple enough that you remember how it works.

**Signs:**
- TODO.md has tests as an item, repeatedly deferred
- "I'll write tests before the next release" (there is no release)
- You're the only one who understands the codebase

**Cost:** You've built a knowledge monopoly. You're now the bottleneck. The project dies when your engagement does.

**Discipline:** One adversarial test per feature, minimum. Not for coverage — for *your* understanding. If you haven't tested it, you don't understand it yet.

---

### 3. Documentation Drift

**What happens:** spec.md says X, code does Y, TODO.md says Z. Nobody knows what's true.

**Signs:**
- "Wait, did we implement that?"
- spec.md hasn't been updated since the first commit
- New features ignore existing docs entirely

**Cost:** Onboarding new contributors (or your future self) requires reading all the code. The docs are now decorative.

**Discipline:** Update docs as part of the feature commit, not after. If you didn't update the docs, the feature isn't done.

---

### 4. AI Context Is Fragile

**What happens:** You lose the conversation. The AI forgets the architecture. Re-learning costs hours.

**Signs:**
- Starting fresh sessions, re-explaining everything
- AI suggestions contradict earlier decisions
- State snapshots become novellas

**Cost:** You're paying the same onboarding cost repeatedly. Progress feels slow because you're restarting constantly.

**Discipline:** spec.md, TODO.md, and this document are your externalized memory. Keep them updated *before* ending a session. When starting fresh, feed the docs first, not the chat history.

---

### 5. TODO.md Becomes a Graveyard

**What happens:** Features go in, never get spec'd, never get built.

**Signs:**
- TODO.md has 20 items, all 6+ months old
- "Oh yeah, that thing I wanted to add"
- New features ignore TODO.md entirely

**Cost:** Your own ideas aren't being tracked. You're building reactively, not intentionally.

**Discipline:** Quarterly TODO.md review. Build it, or delete it. If a TODO blocks a new feature, spec it now. Keep it short: 5-10 items max.

---

### 6. Single Maintainer Burnout

**What happens:** You get tired. The project stops being fun. It dies.

**Signs:**
- "I should work on this" feels like guilt, not excitement
- Features take longer not because they're harder, but because you're not into it
- You're maintaining, not building

**Cost:** Months of work abandoned. Not because it failed — because you stopped caring.

**Discipline:**
- Explicitly allow "maintenance mode" — no shame
- Small features only when you have energy
- It's okay to stop. It's not okay to pretend you're not stopping.

---

### 7. SQLite Limits Are Real (Even Done Right)

**What happens:** Your project gets popular. 50 concurrent writers. Everything slows to a crawl.

**Signs:**
- Writes take 2+ seconds during active use
- `database is locked` errors appear in logs
- Users complain about lag

**Cost:** Success kills your project. The database you chose for simplicity is now the bottleneck.

**Discipline:** Monitor slow queries (>500ms). When it happens, migrate to PostgreSQL or accept the limit and cap concurrency. Don't pretend it's not happening.

---

### 8. No CI/CD Means No Safety Net

**What happens:** You push, something breaks, you don't notice for days.

**Signs:**
- Deploy is "git pull on the server"
- No automated test runs
- "It worked on my machine" is a valid statement

**Cost:** Downtime is manual to detect and manual to fix. You're on-call for a project that shouldn't need one.

**Discipline:** Set up CI before the first deploy. Run tests on push. Health check endpoint monitored. Deploy script that rolls back on failure.

---

### 9. You're Building a Knowledge Monopoly

**What happens:** You understand the codebase (via writing tests). Your co-maintainer doesn't. You're now a bottleneck.

**Signs:**
- They ask "how does this work?" about code you wrote
- You're the only one who can debug certain issues
- "Let me look at it" becomes your default response

**Cost:** The project scales with your time, not your team's time. You can't delegate. You can't rest.

**Discipline:** Rotate: you spec, they test. They spec, you test. Both of you write tests, even for code the other wrote. TODO.md is shared — both of you read it before building.

---

### 10. htmx (Or Any Tool) Has a Complexity Ceiling

**What happens:** You want a feature the tool can't do cleanly. Now what?

**Signs:**
- Inline `<script>` tags multiplying
- "This one exception" becomes the pattern
- You're fighting the tool, not using it

**Cost:** You've painted yourself into a corner. Rewriting is expensive. Shipping is blocked.

**Discipline:** Draw the line early. Know what your tools can't do. htmx for CRUD, Alpine.js for interactivity, React only if you must. Know when you've hit the ceiling.

---

## The Meta-Risk

**This model works because you're engaged and thoughtful.** But engagement fluctuates. The model doesn't account for you having a bad month.

**Mitigation:**
- Design for low-energy maintenance: simple deploys, simple rollback, simple monitoring
- Co-maintainers should understand the model too (not just you)
- It's okay to ship without tests when you're tired — just document it in TODO.md
- **The project serves you. You don't serve the project.**

---

## What To Do Differently

1. **Share the model** — co-maintainers should read this, not just you
2. **Set up CI** — even just "run tests on push" (when tests exist)
3. **Timebox spec sessions** — 2 hours max, then ship imperfect code
4. **One test per feature** — minimum viable understanding, not coverage
5. **Quarterly review** — is this still fun? If not, pause without guilt

---

## A Sobering Truth

This model is excellent for building something well. But it requires:

- Consistent engagement (from you)
- Shared understanding (with your team)
- Discipline (on tests, docs)
- Knowing when to stop perfecting and ship

You've built a Ferrari of development workflows. But Ferraris need maintenance. Make sure you're okay with driving a beat-up Honda some days.

---

## When To Abandon This Model

This model is not always the right choice. Consider alternatives when:

- **You're building a prototype** — spec-less experimentation is faster
- **You're alone and know it** — knowledge monopoly is fine if there's no one to share with
- **The problem is unknown** — you can't spec what you don't understand; code first, spec later
- **You're doing this for fun** — discipline is optional when the goal is enjoyment

This model is for **building something that lasts**. If that's not your goal, don't pretend it is.

---

**Last updated:** —
**Read by:** —
