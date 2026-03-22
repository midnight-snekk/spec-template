# testing.md — Post-Implementation Testing Guide

> **Stage:** After the agent has implemented the spec. Before the project is considered stable.

---

## Philosophy

The agent wrote the code fast. That's the point. But speed means the human hasn't
had to understand it — they've only had to read it, which is not the same thing.

Writing tests is the friction that closes that gap. You cannot write a meaningful test
for a piece of logic without understanding what it does, what it assumes, and what
could break it. That understanding is the real output. The test file is a byproduct.

**Tests written by humans are adversarial by nature.** The agent wrote code to make
things work. You are writing tests to find where they don't. These are different
orientations, and that tension is the point.

**An agent asked to write its own tests has a conflict of interest.** It knows the
implementation — what inputs it was designed for, what edge cases it considered,
what assumptions it made. Its tests will naturally confirm those assumptions rather
than challenge them. They pass because they were written *around* the code, not
*against* it. A human coming in without that context will try things the agent
never considered, precisely because the agent "knew" they wouldn't happen.

This is not a gate that slows down development. The agent keeps moving. Tests are
written in parallel, or just after, at human pace. They catch things before the
project accumulates enough weight that a breakage is expensive.

---

## What to Test

### 1. The boundaries of trust

Anything that accepts external input: HTTP request bodies, file uploads, query
parameters, config file values, CLI arguments. Ask:

- What happens with missing fields?
- What happens with the wrong type?
- What happens with a value that's technically valid but semantically wrong
  (empty string, zero, negative number, absurdly long input)?

The agent likely handled the happy path well. The edges are where it gets interesting.

### 2. Auth and access control

The highest-consequence code in any project. Verify:

- Unauthenticated requests are rejected where they should be.
- A user cannot access another user's resources by guessing or constructing an ID.
- Revoked / expired tokens are actually rejected, not just expired by convention.
- Rate limiting engages when it should.

Don't just read the auth code and nod. Make the request. Get the 401. Then try to
get around it and confirm you can't.

### 3. Irreversible operations

Anything with `DELETE`, hard purges, session revocation, scheduled deletions,
file removal. Verify the guard conditions work and that the operation is actually
permanent (or reversible within the documented window) as designed.

### 4. Integration seams

The points where two systems hand off to each other. These are the gaps most likely
to be undocumented and untested:

- Does the frontend's request shape actually match what the backend expects?
- Does the backend's response shape match what the frontend will receive?
- Are error responses in the format the frontend is prepared to handle?
- Do real-time events (SSE, WebSocket) carry the fields the client needs?

If multiple teams or repos are involved: each seam is a test target.

### 5. The thing that worried you while reading

When you were reading the agent's code and a small voice said "hm, I wonder what
happens if..." — that's a test. Write it down before you move on.

---

## What Not to Test Here

- Every line of the agent's implementation. That's not the goal.
- Pure happy-path repetition. One passing case per feature is enough to confirm
  the wiring works. The rest of your budget goes to adversarial cases.
- Things already covered by the framework or library. Don't re-test argon2;
  test that *your* password change flow calls it correctly.

---

## Format (No Strong Opinion)

Use whatever test runner the project's language ecosystem provides. Keep tests
readable — a test that requires 10 minutes to understand is not a good test.

Structure suggestions:

- Group by feature area, not by file.
- Test names should be sentences: `"revoked token is rejected on subsequent request"`,
  not `"test_auth_002"`.
- One assertion per test where practical. Failures should point at one thing.

---

## Checklist

Work through these after the agent has committed the initial implementation:

- [ ] Happy-path smoke test: does the primary flow work end-to-end?
- [ ] Auth: unauthenticated and unauthorized requests rejected correctly?
- [ ] Input validation: missing, wrong-type, and edge-value inputs handled?
- [ ] Irreversible operations: guard conditions verified?
- [ ] Integration seams identified and at least one test per seam written?
- [ ] Any "I wonder what happens if..." moments from reading — written and run?
- [ ] Test names are readable sentences, not codes?

---

## A Note on Coverage

Coverage numbers are a distraction at this stage. A 40% coverage score with sharp,
adversarial tests is more valuable than 90% coverage of trivially correct paths.
Optimize for: *did writing these tests make me understand this codebase?*

If the answer is yes, the tests are doing their job.
