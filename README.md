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
