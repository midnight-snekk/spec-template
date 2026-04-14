# usage-warning.md — Read This Before Starting

### Quick Reference

> Don't know what to do next? Read ritual.md!

- [1](#1-spec-first-becomes-procrastination)
- [2](#2-tests-later-becomes-tests-never)
- [3](#3-documentation-drift)
- [4](#4-ai-context-is-fragile)
- [5](#5-todomd-becomes-a-graveyard)
- [6](#6-single-maintainer-burnout)
- [7](#7-knowledge-monopoly)
- [8](#8-tool-complexity-ceiling)


### YMMV

**This model works because you're engaged and thoughtful.** But engagement fluctuates.

**Mitigation:**
- Design for low-energy maintenance
- Co-maintainers should understand the model
- It's okay to ship without tests when tired, but practice the ritual.md
- **The project serves you. You don't serve the project.**

This model is for **building something long-term**, always use common sense while wearing this harness!

For small, one-off prototype scripts -- avoid implementing **code** through AI,
use this harness for just the brainstorming planning bits.

Harness for the sake of it is an optional fetish, experimentation and exploration is fun!


### 1. Spec-First Becomes Procrastination {#1-spec-first-becomes-procrastination}

**Signs:** Spec edits feel productive. "Just one more edge case" is daily. Nothing ships.

**Fix:** 2 hours max on spec, then code. The spec is a tool, not an artifact.


### 2. "Tests Later" Becomes "Tests Never" {#2-tests-later-becomes-tests-never}

**Signs:** TODO.md defers tests repeatedly. You're the only one who understands the code.

**Fix:** One adversarial test per feature. Not for coverage — for *your* understanding.


### 3. Documentation Drift {#3-documentation-drift}

**Signs:** Spec says one thing, code does another. "Wait, did we implement that?"

**Fix:** Update docs as part of the feature commit. Code and git log is your source of truth.


### 4. AI Context Is Fragile {#4-ai-context-is-fragile}

**Signs:** Re-explaining every session? AI contradicts earlier decisions and nobody knows what's written, anymore?

**Fix:** Humans, read ritual.md at session start. Agents, read the spec! It can and will grow large enough for human consumption, so make a human-readable README.md for a project.


### 5. TODO.md Becomes a Graveyard {#5-todomd-becomes-a-graveyard}

**Signs:** 20+ items, all 6+ months old. New features ignore TODO.md.

**Fix:** Regular review. Build it, or delete it. Keep it small or do away with TODO.md, convert to issue-commits.md.


### 6. Single Maintainer Burnout {#6-single-maintainer-burnout}

**Signs:** "I should work on this" feels like guilt, you procrastinate away from the project.

**Fix:** Explicit maintenance mode is okay. Small features when you have energy. It's okay to stop.


### 7. Knowledge Monopoly {#7-knowledge-monopoly}

**Signs:** You're the only one who can debug certain issues. Can't delegate.

**Fix:** Rotate: you spec, they test. Both write tests for code the other wrote.


### 8. Tool Complexity Ceiling {#8-tool-complexity-ceiling}

**Signs:** Are you fighting the tool? Idiomatic is impractical?

**Fix:** Draw the line early, use tools that you can understand. Are your tools meant for this job?
