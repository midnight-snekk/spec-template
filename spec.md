# spec.md — project specification template
> **FOR THE AGENT READING THIS:**
> This document is a spec-in-progress. Your job right now is **not to write code**.
> Your job is to read this, research what's missing, surface options where the author
> wrote "I don't know", flag your assumptions, and ask the smallest number of questions
> that would meaningfully unblock the next iteration of this document.
> Do not proceed to code until the author explicitly says the spec is ready.
> "I don't know" anywhere in this document means: bring options and a recommendation,
> not a follow-up question.

---

## what is this project?

*A few sentences. What does it do? Who uses it? What problem does it solve?
No polish required — rough is fine. Keywords and half-thoughts are valid.*

...

---

## what does it look like when it's done?

*Describe the end state. Could be a user story ("a user can..."), a rough UI sketch in
words, a CLI interaction, an API shape — whatever makes it concrete for you.
Partial or speculative answers are fine.*

...

---

## technical stack

*What tools, languages, frameworks, and runtimes are in play?
Only list things you've at least heard of and would be comfortable maintaining solo.
"I don't know which database" is a valid answer — the agent will bring options.*

- **Language:**
- **Runtime / platform:**
- **Key libraries / frameworks:**
- **Storage:**
- **Other infrastructure (queues, caches, etc.):**

---

## constraints & philosophy

*What rules does this project have to follow — not just technical, but practical?
Examples: "must be runnable by one person", "no SaaS dependencies with unpredictable
pricing", "I want to understand every line of code", "offline-first".*

...

---

## quirks wishlist

*The things that don't fit neatly into requirements but matter to you anyway.
Aesthetic preferences, implementation style, things you've always wanted to try,
formats that feel right even if YAML would technically work fine.*

...

---

## what I don't know yet

*Explicit unknowns. Things you know you haven't figured out. The agent will treat
each of these as a "bring options" prompt, not as a question to bounce back at you.*

...

---

## open questions (agent-generated)

*This section is filled in by the agent during the research pass — not by the author.
Each question here is something the agent couldn't resolve with research alone and
genuinely needs a human decision on. Should stay short: if there are more than ~5
questions here, the agent is asking too many.*

...

---

## assumptions (agent-generated)

*Things the agent assumed in order to produce the first draft or a code skeleton.
Each assumption is flagged so the author can override it.
Format: "Assumed X because Y. Override if Z."*

...

---

## known unknowns / risk flags

*Things that could blow this up later. Identified by either party.
Not a blocker for starting — just a place to park "we should think about this".*

...

---

## security & sanity pass

*Filled in just before the first commit. Not during iteration — this is its own
dedicated pass with a different question: not "is this complete?" but
"what could go wrong, who could abuse this, what's irreversible?"*

- [ ] Auth / access control considered?
- [ ] Any irreversible operations (deletes, sends, charges)? Guarded?
- [ ] External inputs validated and untrusted?
- [ ] Secrets out of source control?
- [ ] Dependencies vetted (not abandoned, not obviously malicious)?
- [ ] Anything that could surprise a solo maintainer six months from now?

Additional notes:

...

---

## out of scope (this version)

*Things explicitly deferred. Keeps the first version focused.
Later specs or TODO.md entries may pick these up.*

...

---
<!--
  ## about TODO.md (not part of this spec — just a note for the workflow)
  
  TODO.md is NOT created at spec time. It appears later, when a new spec (e.g. a
  frontend) collides with the boundary of an existing module (e.g. a backend) and
  discovers gaps or inconsistencies. Rather than immediately patching the existing
  module, the gap is first made explicit in a TODO.md added to the affected project.
  This creates a deliberate pause: the extension is acknowledged and scoped before
  it becomes its own spec iteration. The existing module is not touched until that
  new spec has been properly developed.
-->
