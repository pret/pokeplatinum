# Trainer Data File Format

This document describes the file format for trainer data consumed by the
`trainerproc` build tool. Each trainer in the ROM is represented by a JSON file
`res/trainers/data/<name>.json`, which contains metadata for the trainer and
their party. The fields from each of these files are mapped onto the structs
defined in `include/struct_defs/trainer_data.h`.

## Top-Level Schema

| Field           | Type                          | Description                                                      |
| --------------- | ----------------------------- | ---------------------------------------------------------------- |
| `name`          | `string`                      | The trainer's display name.                                      |
| `class`         | `enum TrainerClass`           | The trainer class, e.g. Youngster, Ace Trainer, Gym Leader.      |
| `items`         | `enum Item[]`                 | Items usable by the trainer in battle (up to 4). May be empty.   |
| `ai_flags`      | `enum AIFlag[]`               | AI behavior flags for battle scripts. May be empty.              |
| `double_battle` | `bool`                        | Whether this is a double battle.                                 |
| `party`         | `object[]`                    | The trainer's party of Pokémon. See below for the member schema. |
| `messages`      | `object[]`                    | Dialogue messages. See the Messages section below.               |

## Party Member Schema

Each element of the `party` array represents a Pokémon owned by the trainer.

| Field        | Type                    | Description                                                       |
| ------------ | ----------------------- | ----------------------------------------------------------------- |
| `species`    | `enum Species`          | The species of the Pokémon.                                       |
| `form`       | `u8`                    | Form index, packed into the high bits of the species field.       |
| `level`      | `u16`                   | The level of the Pokémon.                                         |
| `item`       | `enum Item` or `null`   | The held item, or `null` for none.                                |
| `moves`      | `enum Move[]` or `null` | Known moves (up to 4), or `null` for default level-up moves.      |
| `iv_scale`   | `u16`                   | IV scaling factor (0–255).                                        |
| `ball_seal`  | `u16`                   | Ball seal / capsule decoration index.                             |

The presence of the `item` and `moves` fields determines the exact structure of
the output data, which affects the trainer's party in-game. If any Pokémon in
the party specifies that it can have a held item or a custom move-set, then all
other Pokémon in the party must *also* specify as much.

To illustrate, this party is valid:

```json
{
    "party": [
        {
            "species": "SPECIES_STARLY",
            "form": 0,
            "level": 7,
            "item": null,
            "moves": [
                "MOVE_QUICK_ATTACK",
                "MOVE_GROWL"
            ],
            "iv_scale": 30,
            "ball_seal": 0
        },
        {
            "species": "SPECIES_CHIMCHAR",
            "form": 0,
            "level": 9,
            "item": null,
            "moves": [
                "MOVE_SCRATCH",
                "MOVE_LEER"
            ],
            "iv_scale": 30,
            "ball_seal": 0
        }
    ]
}
```

However, this party is *not* valid, as Chimchar specifies that it has data for
its held-item, while Starly does not:

```json
{
    "party": [
        {
            "species": "SPECIES_STARLY",
            "form": 0,
            "level": 7,
            "item": null,
            "moves": [
                "MOVE_QUICK_ATTACK",
                "MOVE_GROWL"
            ],
            "iv_scale": 30,
            "ball_seal": 0
        },
        {
            "species": "SPECIES_CHIMCHAR",
            "form": 0,
            "level": 9,
            "item": "ITEM_ORAN_BERRY",
            "moves": [
                "MOVE_SCRATCH",
                "MOVE_LEER"
            ],
            "iv_scale": 30,
            "ball_seal": 0
        }
    ],
}
```

Similarly, this party would also be invalid, as Starly declares that it should
derive its move-set from the moves that it learns by level-up, while Chimchar
declares that it has a custom move-set:

```json
{
    "party": [
        {
            "species": "SPECIES_STARLY",
            "form": 0,
            "level": 7,
            "item": null,
            "moves": null,
            "iv_scale": 30,
            "ball_seal": 0
        },
        {
            "species": "SPECIES_CHIMCHAR",
            "form": 0,
            "level": 9,
            "item": null,
            "moves": [
                "MOVE_SCRATCH",
                "MOVE_LEER"
            ],
            "iv_scale": 30,
            "ball_seal": 0
        }
    ],
}
```

## Messages

The `messages` array defines dialogue that the trainer may speak at various
points during a battle. Each entry has a `type` field drawn from
`enum TrainerMessageType` (e.g. `TRMSG_PRE_BATTLE`, `TRMSG_DEFEAT`,
`TRMSG_POST_BATTLE`, `TRMSG_REMATCH`) and an `en_US` field containing the
message text. As with the text-files stored in `res/text`, the content may be
a single string or an array of strings as a convenience for multi-line messages.
Entries with the `garbage` key in place of `en_US` represent padding present in
the retail ROM.

## Outputs

The tool produces the following outputs:

| Output                      | Description                                                    |
| --------------------------- | -------------------------------------------------------------- |
| `trdata.narc`               | `TrainerHeader` entries for every trainer, packed by index ID. |
| `trpoke.narc`               | Party data for every trainer, packed by index ID.              |
| `trainer_scripts.h`         | Generated header mapping trainer IDs to `ScriptEntry` macros.  |
| `npc_trainer_names.json`    | Text bank for trainer display names.                           |
| `npc_trainer_messages.json` | Text bank for in-battle trainer dialogue.                      |
| `trtbl.narc`                | Message lookup table mapping `(trainerID, messageType)` pairs. |
| `trtblofs.narc`             | Offset table into `trtbl.narc` for each trainer index.         |

## Example

```json
{
    "name": "Catherine",
    "class": "TRAINER_CLASS_ACE_TRAINER_FEMALE",
    "items": [],
    "ai_flags": [
        "AI_FLAG_BASIC",
        "AI_FLAG_EVAL_ATTACK",
        "AI_FLAG_EXPERT"
    ],
    "double_battle": false,
    "party": [
        {
            "species": "SPECIES_HAUNTER",
            "form": 0,
            "level": 23,
            "item": null,
            "moves": [
                "MOVE_NIGHT_SHADE",
                "MOVE_CONFUSE_RAY",
                "MOVE_SUCKER_PUNCH",
                "MOVE_CURSE"
            ],
            "iv_scale": 60,
            "ball_seal": 0
        },
        {
            "species": "SPECIES_MISDREAVUS",
            "form": 0,
            "level": 24,
            "item": null,
            "moves": [
                "MOVE_PSYBEAM",
                "MOVE_PAIN_SPLIT",
                "MOVE_CONFUSE_RAY",
                "MOVE_SPITE"
            ],
            "iv_scale": 60,
            "ball_seal": 0
        }
    ],
    "messages": [
        {
            "type": "TRMSG_PRE_BATTLE",
            "en_US": [
                "What does it feel like, taking one step\n",
                "after another into darkness?\r"
            ]
        },
        {
            "type": "TRMSG_DEFEAT",
            "en_US": [
                "You’re the kind of person who can keep\n",
                "going forward even into the unknown.\n"
            ]
        },
        {
            "type": "TRMSG_POST_BATTLE",
            "en_US": [
                "I think, sometimes, one has to make\n",
                "mistakes to learn what is right.\n"
            ]
        }
    ]
}
```
