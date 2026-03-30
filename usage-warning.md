# usage-warning.md — Read This Before Starting

> This workflow has failure modes. Know them.
> 
> **Skim the table below. Bookmark this file. Return when stuck.**

---

## Quick Reference (Symptom → Fix)

| You're experiencing... | Do this now |
|------------------------|-------------|
| Spec feels perfect, but nothing is shipped | 2 hours max, then code |
| Haven't written tests in multiple features | Write ONE test now |
| Docs don't match code | Update docs to match code (code wins) |
| Don't know what to do next | Read ritual.md close note |
| AI keeps forgetting context | Feed it spec.md + ritual.md first |
| TODO.md has 20+ items, all old | Quarterly review: build or delete |
| Project isn't fun anymore | Pause without guilt |
| Co-maintainer doesn't understand code | Rotate: you spec, they test |
| Deploy is manual, breaks silently | Set up CI before next deploy |
| Fighting your tools (htmx, etc.) | Draw the line early, accept limits |

---

## Deep Dives

### 1. Spec-First Becomes Procrastination

**Signs:** Spec edits feel productive. "Just one more edge case" is daily. Nothing ships.

**Fix:** 2 hours max on spec, then code. The spec is a tool, not an artifact.

---

### 2. "Tests Later" Becomes "Tests Never"

**Signs:** TODO.md defers tests repeatedly. You're the only one who understands the code.

**Fix:** One adversarial test per feature. Not for coverage — for *your* understanding.

---

### 3. Documentation Drift

**Signs:** spec.md says X, code does Y. "Wait, did we implement that?"

**Fix:** Update docs as part of the feature commit. Code is source of truth.

---

### 4. AI Context Is Fragile

**Signs:** Re-explaining every session. AI contradicts earlier decisions.

**Fix:** Feed spec.md + ritual.md at session start. Update docs before ending session.

---

### 5. TODO.md Becomes a Graveyard

**Signs:** 20+ items, all 6+ months old. New features ignore TODO.md.

**Fix:** Quarterly review. Build it, or delete it. Keep under 10 items.

**Solo projects:** Use git history + ISSUE-style commits instead of TODO.md.

---

### 6. Single Maintainer Burnout

**Signs:** "I should work on this" feels like guilt. Maintaining, not building.

**Fix:** Explicit maintenance mode is okay. Small features when you have energy. It's okay to stop.

---

### 7. SQLite Limits Are Real

**Signs:** Writes take 2+ seconds. `database is locked` errors.

**Fix:** Monitor slow queries (>500ms). Migrate to PostgreSQL or cap concurrency.

---

### 8. No CI/CD Means No Safety Net

**Signs:** Deploy is "git pull on server". No automated tests. Downtime is manual to detect.

**Fix:** Set up CI before first deploy. Run tests on push. Health check monitored.

---

### 9. Knowledge Monopoly

**Signs:** You're the only one who can debug certain issues. Can't delegate.

**Fix:** Rotate: you spec, they test. Both write tests for code the other wrote.

---

### 10. Tool Complexity Ceiling

**Signs:** Inline `<script>` tags multiplying. Fighting the tool.

**Fix:** Draw the line early. htmx for CRUD, Alpine.js for interactivity, React only if you must.

---

## The Meta-Risk

**This model works because you're engaged and thoughtful.** But engagement fluctuates.

**Mitigation:**
- Design for low-energy maintenance
- Co-maintainers should understand the model
- It's okay to ship without tests when tired — document in ritual.md
- **The project serves you. You don't serve the project.**

---

## When To Abandon This Model

- **Prototype** — spec-less experimentation is faster
- **Solo, and you know it** — knowledge monopoly is fine
- **Unknown problem** — code first, spec later
- **For fun** — discipline is optional

This model is for **building something that lasts**. If that's not your goal, don't pretend it is.

---

**Last updated:** —
**Read by:** —
