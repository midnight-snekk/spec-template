# issue-commit.md -- ISSUE-style commit convention

The commit message **is** the issue tracker. Git log / diff tells us what changed and when, but doesn't tell us why right away.

Thus, each commit to master / main is self-contained: story of what happened, why, how it was fixed and how to avoid this in future.

N.B.: This might drive the troubleshooting workflow! Just follow the structure.


### Format

```
<short description, one sentence>

Context: <what prompted this change>

Root cause: <technical explanation of the problem>

What was changed: <an overview that complements what git diffs already have>

What to consider in future: <short list of proposals>
```
