# spec.md — Project Specification

> WARNING: Do not proceed to code until the author explicitly says the spec is ready. Remove this warning after spec reaches it's first working implementation.

**Human's job:** Write this once, then stop editing. The AI takes over.
**AI's job:** Read this, research what's missing, surface options where the author
wrote "I don't know", flag assumptions, and ask minimal questions to unblock.

---

### What is this project? What does it look like when it's done?

A few sentences. What does it do? Who uses it? What problem does it solve?
No polish required — rough is fine. Keywords and half-thoughts are valid.

*Example: "A CLI tool that converts Barotrauma Lua scripts to C# for easier modding."*
*Example: "User runs `spec init`, answers 3 prompts, gets a filled spec.md in their project root."*


### Technical stack, moving parts

Tools, languages, frameworks, runtimes, libraries used or desired.

Only list things you've at least heard of and would be comfortable maintaining solo.
"I don't know which database" is a valid answer — the agent will bring options.


### Constraints, philosophy, quirks

What rules does this project have to follow — not just technical, but practical?

And more specifically: what's absolutely NOT to do?

*Examples*:
- "must be maintainable by one person"
- "i want to understand every line of code"
- "offline-first"
- "as flat as possible, avoid OOP"

Maybe there are things that don't fit neatly into requirements but matter to you anyway?
Aesthetic preferences, implementation style, things you've always wanted to try,
formats that feel right even if YAML would technically work fine.

*Example*: "Config files must be TOML, not JSON. Error messages should be witty, not dry."


### What I Don't Know Yet

Explicit unknowns. Things you know you haven't figured out. The agent will treat
each of these as a "bring options" prompt, not as a question to bounce back at you.

*Example*: "I don't know if this should be a TUI or web UI."
