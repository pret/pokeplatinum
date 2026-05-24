# Move Data File Format

This document describes the file format for move data consumed by the `moveproc`
build tool. Each move in the ROM is represented by a subdirectory
`res/moves/<name>`, which must contain the following files:

| File        | Purpose                                            |
| ----------- | -------------------------------------------------- |
| `data.json` | Internal metadata (stats, type, flags, text, etc.) |
| `anim.s`    | Animation script used in battles and contests      |
| `script.s`  | Execution script used in battles                   |

## `data.json` - Internal Metadata

Each move's directory contains a single `data.json` file consumed by
`tools/dataproc/src/moveproc.c`. The JSON fields map directly onto the
`MoveTable` struct from `include/move_table.h` and associated text banks.

### Schema

| Field            | Type                      | Description                                                                |
| ---------------- | ------------------------- | -------------------------------------------------------------------------- |
| `name`           | `string`                  | The move's display name.                                                   |
| `description`    | `string[]`                | The move's description (e.g., on the summary screen) as an array of lines. |
| `class`          | `enum MoveCategory`       | The classification of the move: Physical, Special, or Status.              |
| `type`           | `enum PokemonType`        | The type of the move: Fire, Water, etc.                                    |
| `power`          | `u8`                      | Base power of the move. Status moves typically have power 0.               |
| `accuracy`       | `u8`                      | Chance to hit, out of 100. A value of 0 never misses. May not exceed 100.  |
| `pp`             | `u8`                      | Base PP, before any PP Ups are applied.                                    |
| `effect.type`    | `enum MoveBattleEffect`   | The primary battle effect. Maps to an effect script.                       |
| `effect.chance`  | `u8`                      | Chance for the effect to be applied, out of 100. May not exceed 100.       |
| `range`          | `enum MoveRange`          | Targeting range in battle.                                                 |
| `priority`       | `s8`                      | Speed priority. May be negative, e.g., Roar, Trick Room.                   |
| `flags`          | `enum MoveFlag[]`         | Array of bitmask flags for important behaviors. May be empty.              |
| `contest.effect` | `enum MoveContestEffect`  | The primary contest effect. Maps to an effect script.                      |
| `contest.type`   | `enum PokemonContestType` | The type of the move in contests: Cool, Cute, Beauty, Smart, Tough.        |

The value of `name` is used to construct in-game text entries for:

1. The move's displayed name, e.g., in the Pokémon Summary Screen,
2. The move's displayed name in all uppercase, and
3. The in-battle text displayed when the move is used, of which there are three
   variants:
   1. When used by the player or an allied partner trainer,
   2. When used by a wild Pokémon, and
   3. When used by an enemy trainer's Pokémon.

### Example

```json
{
    "name": "Ember",
    "description": [
        "The foe is attacked\n",
        "with small flames.\n",
        "The target may also\n",
        "be left with a burn.\n"
    ],
    "class": "CLASS_SPECIAL",
    "type": "TYPE_FIRE",
    "power": 40,
    "accuracy": 100,
    "pp": 25,
    "effect": {
        "type": "BATTLE_EFFECT_BURN_HIT",
        "chance": 10
    },
    "range": "RANGE_SINGLE_TARGET",
    "priority": 0,
    "flags": [
        "MOVE_FLAG_CAN_PROTECT",
        "MOVE_FLAG_CAN_MIRROR_MOVE",
        "MOVE_FLAG_HIDES_HP_GAUGES"
    ],
    "contest": {
        "effect": "CONTEST_EFFECT_BASIC",
        "type": "CONTEST_TYPE_BEAUTY"
    }
}
```

## `anim.s` — Animation Script

This script defines the commands executed to play the move's animation when used
in a battle or contest. Commands are defined by `asm/macros/btlanimcmd.inc`, and
some additional functions are available via `asm/macros/btlanimfunc.inc`.

### Example

```asm
#include "macros/btlanimcmd.inc"

L_0:
    LoadParticleResource 0, ember_spa
    CreateEmitter 0, 0, EMITTER_CB_GENERIC
    SetExtraParams 0, 2, 2, 0, 0, 0
    Func_FadeBattlerSprite BATTLE_ANIM_DEFENDER, 0, 1, BATTLE_COLOR_RED, 10, 0
    Func_Shake 1, 0, 1, 2, BATTLE_ANIM_BATTLER_SPRITE_DEFENDER
    PlayLoopedSoundEffectR SEQ_SE_DP_W052, 3, 4
    WaitForAllEmitters
    UnloadParticleSystem 0
    End
```

## `script.s` — Battle Effect Script

This script defines the execution flow for a move when used in a battle. For
most moves, the following script is sufficient:

```asm
#include "macros/btlcmd.inc"


_000:
    GoToEffectScript
```

Two-turn charge moves require some additional handling to support the text
displayed on their charge turn. For example, the following script is defined for
Solar Beam:

```asm
#include "macros/btlcmd.inc"


_000:
    // {0} absorbed light!
    BufferMessage BattleStrings_Text_PokemonAbsorbedLight_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    GoToEffectScript 
```

## Details for a Matching ROM

### Incorrect In-Battle Message for U-turn

The retail ROM shipped with in-battle text for the move U-turn that incorrectly
capitalizes it as "U-Turn". This is reflected in the code of
`tools/dataproc/src/moveproc.c`:

```c
        char *nameline = strfmt2("%s!", name);
        if (i == MOVE_U_TURN) { // MATCH DETAIL: The retail game uses "U-Turn" in battle instead of "U-turn"
            nameline[2] = 'T';
        }
```

To correct this oversight, remove the edge-case branch:

```diff
        char *nameline = strfmt2("%s!", name);
-       if (i == MOVE_U_TURN) { // MATCH DETAIL: The retail game uses "U-Turn" in battle instead of "U-turn"
-           nameline[2] = 'T';
-       }
```

### Bogus Moves

The retail ROM shipped with a set of bogus / unused move entries beyond the
accessible bounds. The animation and execution scripts for these entries are
provided in the `res/moves/.shared` directory, while their metadata is embedded
directly in the `moveproc` build tool. If you are using this project as the base
for a mod, then they can be deleted as follows:

#### `tools/dataproc/src/moveproc.c`

Delete the function definitions for `pack_extra_moves` and `prep_extra_scripts`.
Then, clean up the following references:

```diff
static void prep_scripts(const char *basename);
-static void pack_extra_moves(void);
-static void prep_extra_scripts(void);
static void init_orderfiles(void);
```

```diff
-   pack_extra_moves();
-   prep_extra_scripts();
    return common_done(errc, close_orderfiles);
```

Additionally, remove the following line:

```diff
    enum_seq_t moves = common_initenum(
        filename, "Move",
        .sourcefile  = __FILE__,
        .depfile     = depfile_path,
        .outdir      = output_dir,
        .format      = DATAPROC_F_JSON,
        .enums       = enums,
        .archives    = archives,
        .textbanks   = textbanks,
-       .extra_files = 3,
        .hook_before = init_orderfiles,
    );
```

#### `res/moves/meson.build`

Make the following change:

```diff
move_text_banks = move_data_outputs.slice(3, move_data_outputs.length())

-anim_script_srcs = files(
-    '.shared/anim_0468_0474.s',
-    '.shared/anim_0475_0500.s',
-)
-
-move_script_srcs = files('.shared/script_0468_0500.s')
+anim_script_srcs = []
+move_script_srcs = []
move_script_srcdir = meson.current_source_dir()
```
