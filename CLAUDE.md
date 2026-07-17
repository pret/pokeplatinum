# CLAUDE.md

Guidance for Claude when working in this repository. This is a personal fork of
the [pret/pokeplatinum](https://github.com/pret/pokeplatinum) decompilation of
Pokémon Platinum (US).

## Objective

Use this decompilation as a playground to **learn low-level C and the Nintendo DS
architecture**, with the long-term thread being the **gradual creation of a small
romhack**.

Priorities, in order:

1. **Understanding** over everything else. The point is to learn how the game and
   the hardware work.
2. **A working, observable change** — favor things that can be built and seen
   running.

Explicit non-goals: this is **not** about contributing upstream to pret, and
**not** about preserving a byte-perfect matching build. Breaking `make check` is
expected and fine (see Workflow).

## Who I'm working with, and the tone to use

The developer is **comfortable with general programming** but is a **newcomer to
the Nintendo DS**. So:

- Be **concise** on general programming (C syntax, pointers, control flow,
  tooling). No need to over-explain what a struct or a function pointer is.
- Be **pedagogical** on anything **NDS- or decomp-specific**. Briefly explain
  concepts like: ARM/Thumb, VRAM banks, the memory map, NARC archives, overlays,
  BG/OAM, the matching build, symbol/data layout in the ROM, etc. — the first
  time they come up.

When a task touches a new NDS concept, explain the concept briefly *before*
diving into the code, rather than silently making the change.

## Build & test workflow

This is a **matching decompilation**: the default build verifies the produced ROM
is **byte-for-byte identical** to retail. That verification and modding are
fundamentally at odds.

- `make rom` — build only. Output: `build/pokeplatinum.us.nds`. **Use this for
  modding.**
- `make check` — build **and** assert the ROM matches retail. **This will fail by
  design the moment we change the game's behavior or data.** A failing `make
  check` after a mod is *expected*, not a bug.
- `make debug` — build with logging + GDB debugging enabled (see
  `docs/logging.md`).

To see a change: `make rom`, then run `build/pokeplatinum.us.nds` in a DS emulator
(e.g. melonDS, DeSmuME) and observe.

The Makefile even notes: *"Modders can delete the `check` dependency here after
their first build."*

## Repository map

- `src/` — the game's C source (much of it still obfuscated / auto-named; this is
  what most decomp documentation work renames and clarifies).
- `include/` — headers.
- `res/` — source assets and data tables compiled into the ROM (`pokemon/`,
  `moves/`, `items/`, `text/`, `trainers/`, `graphics/`, `field/`, ...). **This is
  where most data-level mods start** (e.g. base stats, text, trainers).
- `data` / NARC archives — packed game data; see `docs/datafiles/`.
- `asm/` — remaining assembly.
- `docs/` — project documentation, including `2d_rendering.md`,
  `3d_rendering.md`, `logging.md`, `bugs_and_glitches.md`, `datafiles/`, `maps/`.
- `build/` — build output (ninja/meson). The ROM lands here.
- `INSTALL.md`, `CONTRIBUTING.md` — upstream setup and contribution guides.
