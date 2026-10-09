<!-- AGENT-SURFACE-SSOT:BEGIN -->
# GitHub Copilot — repository instructions

You are working in a repository that uses the **Erynoa Agent Surface SSOT** for portable skills and plugins shared across eight consumers: Claude, Grok, Codex, Copilot, Hermes, OpenClaw, Kimi, and Cursor.

## Mandatory — project doctrine

- **Read and follow** root **`erynoa.md`** (canonical agent handbook for this repo).
- If `erynoa.md` is missing, create it using skill **`erynoa-md`** (or `just stamp-init` from the Agent Surface SSOT).
- Do **not** invent a second full doctrine only in this file — keep this file thin; depth lives in `erynoa.md`.

## Mandatory — Erynoa First + portable paths

- Erynoa remotes live under **`github.com/ErynoaGroup/*`** only.
- **Never** hardcode absolute user paths (`/Users/…`, fixed Mac portfolio trees) into doctrine as SSOT.
- Global skills/plugins live only in the Agent Surface clone pointed to by **`$AGENT_SURFACE_ROOT`** / **`$AI_HARNESS_ROOT`**:
  - remote: `git@github.com:ErynoaGroup/.ai-harness.git`
- Edit skills/plugins **only** in that SSOT; then operators run `just install` + `just doctor`.
- For changes to the surface itself, follow skill **`agent-surface`**.
- For large multi-skill work, prefer **`ultracode`**; sharpen intent with **`task-intake`**.
- Home paths such as `~/.claude/skills`, `~/.grok/skills`, `~/.agents/skills` are **derived** (symlinks), not sources of truth.
- Optional project-local overlays under `.claude/skills` / `.grok/skills` apply only to this repository (L4).

## Also read

- Root **`erynoa.md`** (full doctrine)
- Root `AGENTS.md` / `CLAUDE.md` (adapters + surface block)

## When adding a capability used by multiple agents

- Prefer a portable skill in the Agent Surface SSOT, not a one-off copy in this app.
<!-- AGENT-SURFACE-SSOT:END -->

<!-- ERYNOA-POINTER:BEGIN -->
## Erynoa project doctrine (canonical)

**Full agent handbook for this repository:** [`erynoa.md`](../erynoa.md)

Every coding agent **MUST** find or create `erynoa.md` when interacting with this repo, then follow it.
Load skill **`erynoa-md`** (`/erynoa-md`) to create, deepen, audit, or sync mirrors.
<!-- ERYNOA-POINTER:END -->


<!-- ERYNOA-RUN-OWNER:BEGIN -->
## Session role — RunOwner or Worker

Every work session must be bound to one RunOwner for its current run.
Load skill agent-run-owner for role binding, goals and continuity.

Before acting, reuse an explicit role and same-run owner from the user,
the accepted task/parent brief or the existing project handoff.
An unambiguous assignment of overall responsibility in ordinary words counts;
no special role keyword is required. A new rule does not erase a known binding.
A new child is a Worker under the named global RunOwner; a Worker parent
does not silently become that owner. Resume/compaction retain this binding.
A role title, skill-maintainer owner, active thread or environment hint alone
does not prove a work assignment or authorize effects.

If the role is still unknown, ask once before execution:
“Ist diese Sitzung der RunOwner des Vorhabens oder eine Worker-Sitzung?
Als Worker: Welche RunOwner-Sitzung ist für den Auftrag zuständig?”
Combine this with essential missing task information; do not repeat an
already answered role question or invent an owner.
If a controller is known but the same-run assignment is missing, ask for that
assignment. After reading the decisive source, do not repeat unchanged searches.
Before dispatch, the RunOwner names each Worker's run, role, owner and return path.

A Worker without an identifiable, applicable RunOwner must obtain that
binding before executing its assigned work. Read-only orientation and
recovering the existing assignment may continue. Do not spawn a substitute
owner, take over a run or create a second owner merely to bypass this gap.
A solo RunOwner may perform the work itself; no extra session is required.
The startup hook is advisory context, not proof of role/authority enforcement.
<!-- ERYNOA-RUN-OWNER:END -->
