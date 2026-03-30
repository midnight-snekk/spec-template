# Spec-driven development workflow template

> This README.md is meant to be read only once, at the start of a new project.

Humans, start by running `init.sh <target dir>`; the environment will be prepared:
- ritual.md, spec.md, testing.md, empty README.md
- initialized git repository

Then, in the following order, do this:
1. Human: read **`usage-warning.md`** from spec-template repo, get familiar with possible caveats. Know what might break
2. Human: read **`ritual.md`**, the session begins
3. Human: read **`spec.md`**, then start writing the spec
4. Agent: Human is done with the initial draft? Time to pick up spec-building from there, iterate until it is done
5. Both Agent and Human: Spec feels ready for a first initial implementation? Time for a plan.md your implementation (a human-friendly overview).

At this point, the process should be well-underway. Shoo, go make something awesome.

<!--

    > Qwen-Coder had the following to say about this spec-driven workflow model:

    This is a spec-driven development workflow template designed for solo developers or small
    teams working with AI assistants. It's a structured process for building software where
    documentation and specification come before implementation.

    Files Overview


    ┌──────────────────┬─────────────────────────────────────────────────────────────────┐
    │ File             │ Purpose                                                         │
    ├──────────────────┼─────────────────────────────────────────────────────────────────┤
    │ init.sh          │ Bootstraps a new project with the template files                │
    │ README.md        │ One-time read explaining the workflow order                     │
    │ ritual.md        │ Session bookkeeping — what to do before/after coding sessions   │
    │ spec.md          │ The actual specification document (human writes, AI implements) │
    │ testing.md       │ Post-implementation testing philosophy and guide                │
    │ usage-warning.md │ Failure modes and anti-patterns to watch for                    │
    └──────────────────┴─────────────────────────────────────────────────────────────────┘

    ---

    The Workflow (Traced End-to-End)

    Phase 1: Setup
     1. Run ./init.sh <target-dir> → copies template files, creates empty README.md, initializes
        git

    Phase 2: Spec-First Development

      1 Human reads usage-warning.md → understands failure modes
      2      ↓
      3 Human opens ritual.md → session begins
      4      ↓
      5 Human writes spec.md → describes what they're building (rough draft OK)
      6      ↓
      7 AI reads spec.md → asks clarifying questions, surfaces options for unknowns
      8      ↓
      9 Both iterate until spec feels ready
     10      ↓
     11 AI writes implementation plan (plan.md)
     12      ↓
     13 AI implements the code

    Phase 3: Testing (Human Takes Over)

     1 Feature ~80% complete
     2      ↓
     3 Human reads testing.md
     4      ↓
     5 Human writes adversarial tests (not happy-path — edge cases, auth, inputs)
     6      ↓
     7 Tests verify understanding, not just coverage

    Phase 4: Session Closure (ritual.md)

     1 Before stopping:
     2 - Update README.md if out of date
     3 - Check git shortlog
     4 - Add 1-2 concrete next actions to TODO.md (future-you can start in <30 seconds)
     5 - Extract any new patterns learned → propose updates to spec-template

    ---

    Key Philosophies

     1. Spec-first, but time-boxed — max 2 hours on spec, then code
     2. Human writes tests — AI has conflict of interest testing its own code
     3. Code is source of truth — docs drift? Update docs to match code
     4. The project serves you — not the other way around
     5. Adversarial testing — tests should challenge assumptions, not confirm them

    ---

    The "Usage Warning" Anti-Patterns

    The template explicitly warns about 10 failure modes:
     - Spec becomes procrastination
     - "Tests later" becomes "tests never"
     - Documentation drift
     - AI context fragility
     - TODO.md graveyard
     - Solo maintainer burnout
     - SQLite limits
     - No CI/CD safety net
     - Knowledge monopoly
     - Tool complexity ceiling

    ---

    This is a thoughtful template for sustainable solo development with AI collaboration. It
    acknowledges human limitations (energy fluctuates, context fades) and builds guardrails
    accordingly.

-->
