# Command surface for this repo (Erynoa default: always present).
# Enter tools via:  nix develop
# Or one-shot:      nix develop -c just <recipe>
# List:             just --list

set shell := ["bash", "-euo", "pipefail", "-c"]

# default: list recipes
default:
    @just --list

# enter / document the Nix shell (human hint)
shell:
    @echo "run: nix develop   # loads flake devShell (just + project tools)"

# health / smoke — replace with real checks
doctor:
    @echo "TODO: wire project health checks"
    @test -f flake.nix
    @test -f justfile -o -f Justfile
    @echo "ok: nix+just layout present"

# install project deps into the environment as defined by the flake
# (no global package managers as SSOT — extend flake.nix packages)
install:
    @echo "Tools come from nix develop / flake packages."
    @echo "Add runtime deps in flake.nix or language lockfiles consumed inside the shell."
