# spec.md — Project Specification Template

**Version:** 1.0  
**Last Updated:** —  
**Author:** —  

> **FOR THE AGENT READING THIS:**
> This document is a spec-in-progress. Your job right now is **not to write code**.
> Your job is to read this, research what's missing, surface options where the author
> wrote "I don't know", flag your assumptions, and ask the smallest number of questions
> that would meaningfully unblock the next iteration of this document.
> Do not proceed to code until the author explicitly says the spec is ready.
> "I don't know" anywhere in this document means: bring options and a recommendation,
> not a follow-up question.

---

## What Is This Project?

> A few sentences. What does it do? Who uses it? What problem does it solve?
> No polish required — rough is fine. Keywords and half-thoughts are valid.
> *Example: "A CLI tool that converts Barotrauma Lua scripts to C# for easier modding."*

...

---

## What Does It Look Like When It's Done?

> Describe the end state. Could be a user story ("a user can..."), a rough UI sketch in
> words, a CLI interaction, an API shape — whatever makes it concrete for you.
> Partial or speculative answers are fine.
> *Example: "User runs `spec init`, answers 3 prompts, gets a filled spec.md in their project root."*

...

---

## Technical Stack

> What tools, languages, frameworks, and runtimes are in play?
> Only list things you've at least heard of and would be comfortable maintaining solo.
> "I don't know which database" is a valid answer — the agent will bring options.

| Component | Details |
|-----------|---------|
| **Language** | ... |
| **Runtime / Platform** | ... |
| **Key Libraries / Frameworks** | ... |
| **Storage** | ... |
| **Other Infrastructure** | ... |

---

## Constraints & Philosophy

> What rules does this project have to follow — not just technical, but practical?
> Examples: "must be runnable by one person", "no SaaS dependencies with unpredictable
> pricing", "I want to understand every line of code", "offline-first".
> *Example: "No external APIs that could rate-limit us. All data stays local by default."*

...

---

## Quirks Wishlist

> The things that don't fit neatly into requirements but matter to you anyway.
> Aesthetic preferences, implementation style, things you've always wanted to try,
> formats that feel right even if YAML would technically work fine.
> *Example: "Config files must be TOML, not JSON. Error messages should be witty, not dry."*

...

---

## What I Don't Know Yet

> Explicit unknowns. Things you know you haven't figured out. The agent will treat
> each of these as a "bring options" prompt, not as a question to bounce back at you.
> *Example: "I don't know if this should be a TUI or web UI."*

...

---

## Open Questions (Agent-Generated)

> This section is filled in by the agent during the research pass — not by the author.
> Each question here is something the agent couldn't resolve with research alone and
> genuinely needs a human decision on. Should stay short: if there are more than ~5
> questions here, the agent is asking too many.

...

---

## Assumptions (Agent-Generated)

> Things the agent assumed in order to produce the first draft or a code skeleton.
> Each assumption is flagged so the author can override it.
> Format: "Assumed X because Y. Override if Z."
> *Example: "Assumed PostgreSQL because you mentioned ACID compliance. Override if you prefer SQLite."*

...

---

## Known Unknowns / Risk Flags

> Things that could blow this up later. Identified by either party.
> Not a blocker for starting — just a place to park "we should think about this".
> *Example: "Scaling beyond 10k concurrent users may require rethinking the cache layer."*

...

---

## Security & Sanity Pass

> Filled in just before the first commit. Not during iteration — this is its own
> dedicated pass with a different question: not "is this complete?" but
> "what could go wrong, who could abuse this, what's irreversible?"

- [ ] Auth / access control considered?
- [ ] Any irreversible operations (deletes, sends, charges)? Guarded?
- [ ] External inputs validated and untrusted?
- [ ] Secrets out of source control?
- [ ] Dependencies vetted (not abandoned, not obviously malicious)?
- [ ] Anything that could surprise a solo maintainer six months from now?

**Additional Notes:**

...

---

## Out of Scope (This Version)

> Things explicitly deferred. Keeps the first version focused.
> Later specs or TODO.md entries may pick these up.
> *Example: "User authentication, export to PDF, mobile responsiveness."*

...

---

<!--
  ## About TODO.md (Not Part of This Spec — Just a Note for the Workflow)

  TODO.md is NOT created at spec time. It appears later, when a new spec (e.g. a
  frontend) collides with the boundary of an existing module (e.g. a backend) and
  discovers gaps or inconsistencies. Rather than immediately patching the existing
  module, the gap is first made explicit in a TODO.md added to the affected project.
  This creates a deliberate pause: the extension is acknowledged and scoped before
  it becomes its own spec iteration. The existing module is not touched until that
  new spec has been properly developed.
-->
