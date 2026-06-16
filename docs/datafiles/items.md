# Item Data File Format

This document describes the file format for item data consumed by the `itemproc`
build tool. Each item in the ROM is represented by a JSON file
`res/items/data/<name>.json`. Fields from each of these files are mapped onto
the `ItemData` struct from `include/item.h` and the `BerryData` struct from
`include/berry_data.h`.

Bogus items in the retail ROM—those with the `ITEM_UNUSED_` prefix—do not have
corresponding JSON files. They are assigned placeholder text in the output, but
they do not produce a data entry.

## Schema

| Field                | Type                           | Description                                                                                    |
| -------------------- | ------------------------------ | ---------------------------------------------------------------------------------------------- |
| `name`               | `string`                       | The item's display name (singular).                                                            |
| `plural`             | `string`                       | The item's display name (plural).                                                              |
| `article`            | `string`                       | Indefinite article (e.g. "a", "an") for in-game text.                                          |
| `description`        | `string[]`                     | The item's description, as an array of lines.                                                  |
| `icon`               | `object`                       | References to the item's icon graphics. See below.                                             |
| `gbaID`              | `string`                       | The corresponding Gen-III item identifier, or `GBA_ITEM_NONE` for Gen-IV items.                |
| `price`              | `u16`                          | Base price in Pokédollars paid when purchasing from a shop. `0` means the item cannot be sold. |
| `effectParam`        | `u8`                           | Generic parameter; semantics vary by item type (e.g., heal amount).                            |
| `holdEffect`         | `enum ItemHoldEffect`          | Effect when held by a Pokémon.                                                                 |
| `pluckEffect`        | `define PLUCK_EFFECT`          | Effect when consumed by Bug Bite / Pluck.                                                      |
| `flingEffect`        | `define FLING_EFFECT`          | Effect when used with Fling.                                                                   |
| `flingPower`         | `u8`                           | Base power of Fling when this item is flung.                                                   |
| `naturalGiftPower`   | `u8`                           | Base power of Natural Gift when this item is held. 0 if not a berry.                           |
| `naturalGiftType`    | `enum PokemonType` or `null`   | Type of Natural Gift when this item is held. `null` if not a berry.                            |
| `preventToss`        | `bool`                         | If `true`, then the item cannot be tossed or sold.                                             |
| `canRegister`        | `bool`                         | If `true`, then the item can be registered to the `Y` button.                                  |
| `fieldPocket`        | `define POCKET`                | The Bag pocket the item belongs to (Items, Medicine, etc.).                                    |
| `battlePocket`       | `define BATTLE_POCKET_MASK`    | The battle pocket mask for use during battle.                                                  |
| `fieldUseFunc`       | `define ITEM_USE_FUNC`         | The field-use function invoked from the overworld.                                             |
| `battleUseFunc`      | `u8`                           | The battle-use function invoked from the battle menu.                                          |
| `itemUseParams`      | `object` or `null`             | Detailed usage parameters. See below.                                                          |
| `teachesMove`        | `enum Move`                    | The move taught by this TM or HM (only for TMs/HMs).                                           |
| `berryData`          | `object`                       | Berry growth and flavor data (only for berries). See below.                                    |

### The `icon` Object

| Field     | Type     | Description                                          |
| --------- | -------- | ---------------------------------------------------- |
| `sprite`  | `string` | Name of the NCGR sprite resource for the item icon.  |
| `palette` | `string` | Name of the NCLR palette resource for the item icon. |

These fields map to the in-game files produced from the inputs in
`res/items/icons`.

### The `itemUseParams` Object

This object defines the parameters for items that act on a Pokémon in the party
or in battle. All fields are optional and default to `0` or `false`.

| Field               | Type    | Description                                                      |
| ------------------- | ------- | ---------------------------------------------------------------- |
| `healSleep`         | `bool`  | Cures sleep.                                                     |
| `healPoison`        | `bool`  | Cures poison.                                                    |
| `healBurn`          | `bool`  | Cures burn.                                                      |
| `healFreeze`        | `bool`  | Cures freeze.                                                    |
| `healParalysis`     | `bool`  | Cures paralysis.                                                 |
| `healConfusion`     | `bool`  | Cures confusion.                                                 |
| `healAttract`       | `bool`  | Cures infatuation.                                               |
| `guardSpec`         | `bool`  | Temporarily protects from stat reduction.                        |
| `revive`            | `bool`  | Revives a fainted Pokémon.                                       |
| `reviveAll`         | `bool`  | Revives all fainted Pokémon.                                     |
| `levelUp`           | `bool`  | Increases the Pokémon's level by one.                            |
| `ppUp`              | `bool`  | Increases a move's PP.                                           |
| `ppMax`             | `bool`  | Maximizes a move's PP.                                           |
| `restorePPAllMoves` | `bool`  | Restores PP to all moves.                                        |
| `atkStages`         | `u8`    | Attack stage change (0–4).                                       |
| `defStages`         | `u8`    | Defense stage change (0–4).                                      |
| `spatkStages`       | `u8`    | Special Attack stage change (0–4).                               |
| `spdefStages`       | `u8`    | Special Defense stage change (0–4).                              |
| `speedStages`       | `u8`    | Speed stage change (0–4).                                        |
| `accStages`         | `u8`    | Accuracy stage change (0–4).                                     |
| `critStages`        | `u8`    | Critical-hit ratio stage change (0–2).                           |
| `hpRestored`        | `s8`    | HP restored. Use `-1` for 100%, `-2` for 50%, or `-3` for 25%.   |
| `ppRestored`        | `s8`    | PP restored. Use `-1` for 100%.                                  |
| `hpEVs`             | `s8`    | HP EVs gained.                                                   |
| `atkEVs`            | `s8`    | Attack EVs gained.                                               |
| `defEVs`            | `s8`    | Defense EVs gained.                                              |
| `speedEVs`          | `s8`    | Speed EVs gained.                                                |
| `spatkEVs`          | `s8`    | Special Attack EVs gained.                                       |
| `spdefEVs`          | `s8`    | Special Defense EVs gained.                                      |
| `friendshipLow`     | `s8`    | Friendship change when friendship < 100.                         |
| `friendshipMed`     | `s8`    | Friendship change when 100 ≤ friendship < 200.                   |
| `friendshipHigh`    | `s8`    | Friendship change when friendship ≥ 200.                         |

When `fieldUseFunc` is set to `ITEM_USE_FUNC_BERRY`, `ITEM_USE_FUNC_EVO_STONE`,
`ITEM_USE_FUNC_HEALING`, or any other use function that acts on a party Pokémon,
this object is optional but will be used if present.

### The `berryData` Object

| Field               | Type                   | Description                                            |
| ------------------- | ---------------------- | ------------------------------------------------------ |
| `size`              | `u16`                  | Size of the berry in millimeters.                      |
| `firmness`          | `define FIRMNESS`      | Firmness category (Very Soft through Super Hard).      |
| `baseYield`         | `u8`                   | Base yield per plant.                                  |
| `stageDuration`     | `u8`                   | Number of stages to grow.                              |
| `moistureDrainRate` | `u8`                   | How quickly moisture drains.                           |
| `spiciness`         | `u8`                   | Spicy flavor value.                                    |
| `dryness`           | `u8`                   | Dry flavor value.                                      |
| `sweetness`         | `u8`                   | Sweet flavor value.                                    |
| `bitterness`        | `u8`                   | Bitter flavor value.                                   |
| `sourness`          | `u8`                   | Sour flavor value.                                     |
| `smoothness`        | `u8`                   | Smoothness for Poffin cooking.                         |

This field is only recognized when `fieldUseFunc` is `ITEM_USE_FUNC_BERRY`.

## Outputs

The tool produces the following outputs:

| Output                          | Description                                                          |
| ------------------------------- | -------------------------------------------------------------------- |
| `pl_item_data.narc`             | `ItemData` entries for every item, packed by index ID.               |
| `item_id_map.h`                 | Maps item IDs to data index, icon resource, palette, and Gen-III ID. |
| `item_tm_move_map.h`            | Maps TM indices to the move they teach.                              |
| `item_berry_list.h`             | Lists all berry items by their berry index.                          |
| `item_mail_list.h`              | Lists all mail items by their mail type index.                       |
| `item_names.json`               | Text bank for singular item names.                                   |
| `item_names_plural.json`        | Text bank for plural item names.                                     |
| `item_names_with_articles.json` | Text bank for item names with their indefinite article.              |
| `item_descriptions.json`        | Text bank for item descriptions.                                     |
| `hidden_item_scripts.h`         | Generated header mapping hidden item script IDs to script entries.   |
| `nuts_data.narc`                | `BerryData` entries for each in-game berry.                          |

## Example

```json
{
    "name": "Potion",
    "plural": "Potions",
    "article": "a",
    "description": [
        "A spray-type medicine for wounds.\n",
        "It restores the HP of one Pokémon by\n",
        "just 20 points."
    ],
    "icon": {
        "sprite": "potion_NCGR",
        "palette": "potion_NCLR"
    },
    "gbaID": "GBA_ITEM_POTION",
    "price": 300,
    "effectParam": 20,
    "holdEffect": "HOLD_EFFECT_NONE",
    "pluckEffect": "PLUCK_EFFECT_NONE",
    "flingEffect": "FLING_EFFECT_NONE",
    "flingPower": 30,
    "naturalGiftPower": 0,
    "naturalGiftType": null,
    "preventToss": false,
    "canRegister": false,
    "fieldPocket": "POCKET_MEDICINE",
    "battlePocket": "BATTLE_POCKET_MASK_RECOVER_HP",
    "fieldUseFunc": "ITEM_USE_FUNC_HEALING",
    "battleUseFunc": 2,
    "itemUseParams": {
        "hpRestored": 20
    }
}
```
