# In-Game Trade Data File Format

This document describes the file format for in-game trade data consumed by the
`npctradeproc` build tool. Each NPC trade in the ROM is represented by a JSON
file `res/npc_trades/<name>.json`, which contains metadata for the in-game trade
event and the received Pokémon. The fields from each of these files are mapped
onto the `NPCTradeMon` struct from `include/overlay006/npc_trade.h`.

## Schema

| Field                | Type                      | Description                                                     |
| -------------------- | ------------------------- | --------------------------------------------------------------- |
| `name`               | `string`                  | The Pokémon's nickname after the trade.                         |
| `otName`             | `string`                  | The Original Trainer's name (max 7 characters).                 |
| `species`            | `enum Species`            | The species of the Pokémon being offered.                       |
| `hpIV`               | `u8` (0–31)               | HP Individual Value (stored in 5 bits).                         |
| `atkIV`              | `u8` (0–31)               | Attack Individual Value (stored in 5 bits).                     |
| `defIV`              | `u8` (0–31)               | Defense Individual Value (stored in 5 bits).                    |
| `speedIV`            | `u8` (0–31)               | Speed Individual Value (stored in 5 bits).                      |
| `spAtkIV`            | `u8` (0–31)               | Special Attack Individual Value (stored in 5 bits).             |
| `spDefIV`            | `u8` (0–31)               | Special Defense Individual Value (stored in 5 bits).            |
| `unused1`            | `u32`                     | Unused field. Present in the retail ROM.                        |
| `otID`               | `u32`                     | The Original Trainer's ID number.                               |
| `cool`               | `u32`                     | Cool contest condition value.                                   |
| `beauty`             | `u32`                     | Beauty contest condition value.                                 |
| `cute`               | `u32`                     | Cute contest condition value.                                   |
| `smart`              | `u32`                     | Smart contest condition value.                                  |
| `tough`              | `u32`                     | Tough contest condition value.                                  |
| `personality`        | `u32`                     | Personality value, which determines gender, ability, and nature.|
| `heldItem`           | `enum Item`               | The item held by the Pokémon.                                   |
| `otGender`           | `enum Gender`             | The gender of the Original Trainer.                             |
| `unused2`            | `u32`                     | Unused field. Present in the retail ROM.                        |
| `language`           | `enum Language`           | The language of the Original Trainer.                           |
| `requestedSpecies`   | `enum Species`            | The species required in exchange for the trade.                 |

## Example

```json
{
    "name": "Kazza",
    "otName": "Hilary",
    "species": "SPECIES_ABRA",
    "hpIV": 15,
    "atkIV": 15,
    "defIV": 15,
    "speedIV": 20,
    "spAtkIV": 25,
    "spDefIV": 25,
    "unused1": 28,
    "otID": 25643,
    "cool": 0,
    "beauty": 0,
    "cute": 0,
    "smart": 0,
    "tough": 0,
    "personality": 142,
    "heldItem": "ITEM_ORAN_BERRY",
    "otGender": "GENDER_FEMALE",
    "unused2": 0,
    "language": "LANGUAGE_ENGLISH",
    "requestedSpecies": "SPECIES_MACHOP"
}
```
