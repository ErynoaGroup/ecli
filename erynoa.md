# erynoa.md — project agent doctrine

<!-- AGENT-PLANNER:BEGIN -->
## Agent planner (self-orchestration)

> **Read this first.** Then run the session. Pull sections below only as needed.  
> Humans: see [README.md](./README.md). Skills: **`erynoa-md`** · **`erynoa-docs`**.  
> **Law R2 · DynHom:** maximal **homogen** (same homes/contracts) · maximal **dynamisch** (signal-bound depth). → `rule-01-dynamic-homogeneous.md`

| | |
|--|--|
| **Mission** | Erynoa CLI — self-contained install and update stack (product scope not defined yet; see `docs/work/ROADMAP.md`) |
| **Session goal** | `<from user — or: orient + just doctor>` |
| **Success** | `<e.g. just doctor` and `just test` green · concrete signal>` |
| **DX** | `nix develop` · `just` · `just doctor` · `just --list` |
| **Work-root** | `docs/work/` (SPECs/PLANs) |
| **Branching** | trunk-based · PRs → `main` |
| **Erynoa First** | Remote **`ErynoaGroup/*` only** for Erynoa work — never default to personal GitHub |
| **Paths** | System-independent: `$AGENT_SURFACE_ROOT` / `$REPO_INDEX_ROOT` / git — **never** `/Users/…` in doctrine |
| **Repo-index** | **MUST** register in `git@github.com:ErynoaGroup/.repo-index.git` · skill `repo-index` |

**Read order**

1. This planner  
2. Confirm **registry** entry (or register) via `.repo-index`  
3. `just --list` / `justfile`  
4. [README.md](./README.md) (human context)  
5. Deeper sections below **only if required**  
6. `docs/README.md` · active `docs/work/*` if feature work  

**Do first**

1. Confirm repo root + branch (`main` vs topic)  
2. `nix develop` (or note if already in shell)  
3. `just doctor`  
4. Classify task → pick orchestration row  
5. Execute · verify against **Success**  

**Orchestration (defaults)**

| Task class | Mode / skills | Order |
|------------|---------------|--------|
| Orient / “what is this?” | M0 | planner → doctor → short report |
| Missing/thin doctrine | `erynoa-md` M1–M2 | scaffold → deepen from evidence |
| Docs structure / SPEC·PLAN place | `erynoa-docs` | map → work-root → template |
| Quality / standards | `erynoa-md` M3 | probe → gaps → safe/propose moves |
| Multi-step feature | SPEC/PLAN if needed · `using-spec-driven-git` · implement | work/ → branch → code + docs-as-code → PR |
| Ship / “may I merge?” | M5 | audit → GO/NO-GO |
| Fuzzy intent | `task-intake` | elevate → then row above |
| Large multi-skill | `ultracode` | after planner; reuse applicable intake |

**Intake/announce:** consume `task-intake` → **Kanonischer Intake**. Keep the applicable task and authorization across skill/turn changes; add only missing repository fields to the single parent announcement.

**Subagents:** default **solo**. Fan-out only for independent ready tracks under the runtime contract (`$AGENT_SURFACE_ROOT/skills/agent-surface/references/workflow-runtime.md`, **Concurrency and state**). Bind actual free child slots, compatible file owners and any smaller cap; account for parent/active threads. Give full briefs, inspect history/isolation capabilities, return distilled findings. Parent merges + verifies; missing mandatory isolation pauses the affected phase.

**Efficiency:** ORIENT→PLAN→ACT→OBSERVE→VERIFY→COMPACT · progressive disclosure · tools > guessing · no doctrine dump. Canon: `agent-efficiency.md` + `agent-planner.md`.

**Voice (*Craft Edge*):** sharp · evidenced · short · unsentimental. Lead with the cut; ⚑ defaults; no slop. Canon: `voice.md`.

**DynHom:** same form as every Erynoa repo; activate only what signals need (packs, SE ladder, fan-out).

**Do not**

- Skip planner / silent multi-file rewrites  
- Work unregistered outside playground (breaks **repo-index** hard law)  
- Invent local homes/enums/status dialects (breaks homogen)  
- Blind full checklists with no signal (breaks dynamic)  
- Subagent spam or raw dumps into parent context  
- brew/apt as team tooling SSOT (Nix + just)  
- Secrets · force-push `main` · push/PR without ask  
- Flood README or chat with full doctrine  


**Deeper in this file:** Identity · Invariants · Forbidden · Tooling · Architecture · Specs · Git  
**Global skills SSOT:** skill `agent-surface` · remote `ErynoaGroup/.ai-harness` · root `$AGENT_SURFACE_ROOT`
<!-- AGENT-PLANNER:END -->

---

## Identity

| Field | Value |
|-------|--------|
| **Project** | `<TODO: name>` |
| **One-line purpose** | `<TODO>` |
| **Owners** | `<TODO>` |
| **Status / tier** | `<TODO>` |
| **Stack** | `<TODO>` |
| **Default branch** | `main` |
| **last_reviewed** | `YYYY-MM-DD` |

## North star & non-goals

**North star:** `<TODO>`

**Non-goals:**

- `<TODO>`

## Invariants

1. **I-1** — `<TODO>`
2. **I-2** — No secrets in git; config via env/vault only  
3. **I-3** — `<TODO>`

## Forbidden

1. **F-1** — Commit secrets, tokens, private keys, raw PII  
2. **F-2** — Home skill dirs as SSOT (use Agent Surface)  
3. **F-3** — `<TODO: repo-specific>`

## Definition of Done

- [ ] User goal met or explicitly deferred  
- [ ] `just doctor` / project verify green (or justified ⚑)  
- [ ] No Forbidden violations  
- [ ] Durable learnings written back here (planner or sections)

## How agents work

1. **Planner first** (block above) → self-orchestrate  
2. Prefer evidence; mark assumptions ⚑  
3. Trunk-based short branches; no push/PR unless asked  
4. Docs-as-code when operator contract changes  

## Tooling & commands

**DX default:** Nix + just.

```bash
nix develop
just
just doctor
# just test | lint | build | run   — project recipes
```

## Architecture map

> **SE-04 C4:** prefer Context + Containers; link `docs/architecture*` for depth. Boxes = real modules/paths.

```text
<TODO: actors → containers → key stores/APIs>
```

| Module / path | Responsibility | May depend on |
|---------------|----------------|---------------|
| `<TODO>` | | |

## Domain language

> **SE-05 DDD-light:** terms match code names; ban harmful synonyms.

| Term | Meaning |
|------|---------|
| `<TODO>` | |

## Specs & plans

| | |
|--|--|
| Map | `docs/README.md` |
| Work-root | `docs/work/` |
| Standard | skill `erynoa-docs` · **SE-07** SPEC→PLAN→verify |
| Decisions | `docs/decisions/` · **SE-06** ADR |
| SE catalogue | `erynoa-docs` → `se-patterns.md` (SE-01…18) |

## Git & review

Trunk-based · `main` · short PRs · Conventional Commits · `erynoa-docs` / `using-spec-driven-git`.

## Skills & surface

| | |
|--|--|
| This doctrine | `./erynoa.md` · `erynoa-md` |
| Docs + README style | `erynoa-docs` |
| Global skills | Agent Surface SSOT · `agent-surface` |

## Provider adapters

Thin pointers in `AGENTS.md` / `CLAUDE.md` / copilot-instructions → this file.

## Open questions

- [ ] `<TODO>`

## Decision log

| Date | Decision | Consequence |
|------|----------|-------------|
| YYYY-MM-DD | Adopt Agent Planner @ top of erynoa.md | Agents self-orchestrate on entry |
