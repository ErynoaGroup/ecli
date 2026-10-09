# Project rules (Claude-compatible)

Claude-compatible adapter for the same eight-consumer contract as `AGENTS.md`.

**Canonical project doctrine:** [`erynoa.md`](./erynoa.md) — skill **`erynoa-md`**.

**Erynoa First · system-independent paths:** remotes under `ErynoaGroup/*`; never hardcode `/Users/…` into doctrine — use `$AGENT_SURFACE_ROOT` / `$REPO_INDEX_ROOT` / git.

<!-- AGENT-SURFACE-SSOT:BEGIN -->
## Agent Surface (global skills SSOT)

**Portable skills and plugins are centralized for all providers — not per-app copies.**

| | |
|--|--|
| **SSOT remote** | `git@github.com:ErynoaGroup/.ai-harness.git` |
| **Local root** | `$AGENT_SURFACE_ROOT` / `$AI_HARNESS_ROOT` |
| **Edit skills/plugins** | Only inside the SSOT (`skills/`, `plugins/`, `hooks/`, `justfile`) |
| **Never** | Treat home skill directories as the source of truth (derived symlinks) |
| **Never** | Absolute Mac/Linux home paths as SSOT in `.md` |
| **Install / health** | `cd "$AGENT_SURFACE_ROOT" && just install && just doctor` |
| **Docs / index** | `just index` → `docs/SKILLS.md` |
| **Handbook** | Skill **`agent-surface`** (`/agent-surface`) |
| **Repo doctrine** | Skill **`erynoa-md`** · file **`erynoa.md`** |
| **Large multi-skill work** | **`ultracode`** · **`task-intake`** |

| Provider | Also reads in this repo |
|----------|-------------------------|
| All | **`erynoa.md` (canonical)** |
| Claude | `CLAUDE.md`, `.claude/` |
| Grok | `AGENTS.md`, `CLAUDE.md` |
| OpenAI Codex | `AGENTS.md` |
| GitHub Copilot | `AGENTS.md` + `.github/copilot-instructions.md` |
| Hermes | `erynoa.md`, `AGENTS.md` |
| OpenClaw | `erynoa.md`, workspace `AGENTS.md` |
| Kimi Code | `AGENTS.md` |
| Cursor | `erynoa.md`, `AGENTS.md` |

<!-- AGENT-SURFACE-SSOT:END -->

<!-- ERYNOA-POINTER:BEGIN -->
## Erynoa project doctrine (canonical)

**Full agent handbook for this repository:** [`erynoa.md`](./erynoa.md)

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
