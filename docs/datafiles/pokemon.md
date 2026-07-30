# Pokémon Data File Format

This document describes the file format for Pokémon species data consumed by the
`speciesproc` build tool. Each species in the ROM is represented by a directory
`res/pokemon/<species>` which must contain the following files:

| File               | Purpose                                                        |
| ------------------ | -------------------------------------------------------------- |
| `data.json`        | Internal metadata (stats, types, learnsets, evolutions, etc.)  |
| `sprite_data.json` | Sprite offset, shadow, and animation data (National Dex only)  |

Some alternate forms have their own input data due to differing base stats,
types, or abilities. In the retail ROM, this includes forms for:

1. Deoxys
2. Wormadam
3. Shaymin
4. Giratina
5. Rotom

Each such form has a corresponding subdirectory under their species parent, e.g.
`giratina/forms/origin`. These forms have a similar `data.json` file, but they
do not have a `sprite_data.json` file.

## `data.json` — Internal Metadata

The JSON fields from this file map onto the `SpeciesData`, `SpeciesEvolution`,
`SpeciesLearnset`, and `SpeciesPalPark` structs from
`include/struct_defs/species.h`.

### Schema

| Field               | Type                 | Description                                                                                     |
| ------------------- | -------------------- | ----------------------------------------------------------------------------------------------- |
| `base_stats`        | `object`             | Base stat values (HP, Attack, Defense, Speed, Sp. Atk, Sp. Def).                                |
| `types`             | `enum PokemonType[]` | The species' primary and secondary types (2 elements).                                          |
| `catch_rate`        | `u8`                 | Catch rate (0–255).                                                                             |
| `base_exp_reward`   | `u8`                 | Base experience yield on defeat.                                                                |
| `ev_yields`         | `object`             | EV yield values (2-bit each) for each stat.                                                     |
| `held_items.common` | `enum Item`          | The common wild held item (20%).                                                                |
| `held_items.rare`   | `enum Item`          | The rare wild held item (5%).                                                                   |
| `gender_ratio`      | `enum GenderRatio`   | Gender ratio of the species.                                                                    |
| `hatch_cycles`      | `u8`                 | Number of hatch cycles (255 x cycle length).                                                    |
| `base_friendship`   | `u8`                 | Base friendship level.                                                                          |
| `exp_rate`          | `enum ExpRate`       | Level-up experience curve.                                                                      |
| `egg_groups`        | `enum EggGroup[]`    | Egg groups for breeding (2 elements).                                                           |
| `abilities`         | `enum Ability[]`     | Slot 1 and slot 2 abilities (2 elements).                                                       |
| `safari_flee_rate`  | `u8`                 | Safari Zone flee rate.                                                                          |
| `body_color`        | `enum PokemonColor`  | Pokédex body color.                                                                             |
| `flip_sprite`       | `bool`               | Whether the in-battle sprite should be flipped horizontally in menus (like the summary screen). |
| `icon_palette`      | `u8` or `array`      | Icon palette index; array of `[form_name, index]` tuples for species with per-form palettes.    |
| `learnset`          | `object`             | Learnset data (level-up, TM/HM, tutor, egg moves). See below.                                   |
| `evolutions`        | `array`              | Evolution methods and targets.                                                                  |
| `offspring`         | `enum Species`       | The species produced when breeding (usually self).                                              |
| `footprint`         | `object`             | Footprint data for the Pokédex.                                                                 |
| `pokedex_data`      | `object`             | Pokédex entry text, height, weight, body shape, and sprite scales/positions.                    |
| `catching_show`     | `object`             | Pal Park encounter data.                                                                        |

#### The `learnset` Object

| Field      | Type          | Description                                                               |
| ---------- | ------------- | ------------------------------------------------------------------------- |
| `by_level` | `array`       | Level-up learnset: array of `[level, move]` tuples.                       |
| `by_tm`    | `string[]`    | TM/HM compatibility: array of TM or HM markers (e.g. `"TM01"`, `"HM04"`). |
| `by_tutor` | `enum Move[]` | Moves teachable by move tutors.                                           |
| `egg_moves`| `enum Move[]` | Moves available as egg moves (optional).                                  |

If a move listed in the `by_tutor` array is not teachable by any move tutor in
the game, then a warning will be emitted, and that move will be skipped.

No validation is performed against `egg_moves` due to the potential cost of
analyzing every other member of each egg group.

#### The `evolutions` Array

Each element is a tuple describing one evolution path:

| Index | Type                   | Description                                                            |
| ----- | ---------------------- | ---------------------------------------------------------------------- |
| 0     | `enum EvolutionMethod` | The evolution method (level, trade, item, etc.)                        |
| 1     | varies                 | The parameter for the method (level, item, move, species, or nothing). |
| 2     | `enum Species`         | The target species to evolve into.                                     |

The parameter type depends on the method:

- For `EVO_LEVEL`, `EVO_LEVEL_ATK_GT_DEF`, etc., it is the level at which the
  evolution should trigger.
- For `EVO_USE_ITEM`, `EVO_TRADE_WITH_HELD_ITEM`, etc., it is the `enum Item`
  required to be held or used to trigger the evolution.
- For `EVO_LEVEL_KNOW_MOVE`, it is an `enum Move` which must be known for the
  next level-up to trigger the evolution.
- For `EVO_LEVEL_SPECIES_IN_PARTY`, it is an `enum Species` which must be
  present in the party for the next level-up to trigger the evolution.
- For `EVO_NONE`, `EVO_LEVEL_HAPPINESS`, `EVO_TRADE`, there is no listed
  parameter, and the evolution only has two elements: `[method, species]`.

#### The `footprint` Object

| Field  | Type                    | Description                                         |
| ------ | ----------------------- | --------------------------------------------------- |
| `has`  | `bool`                  | Whether the species has a footprint in the Pokédex. |
| `size` | `enum FootprintSize`    | The relative size of the footprint.                 |
| `type` | `define FOOTPRINT_TYPE` | The footprint type (e.g. Cute, Scary, etc.).        |

#### The `pokedex_data` Object

Height and weight may be specified in either metric or imperial units, but not
both.

| Field              | Type                    | Description                                              |
| ------------------ | ----------------------- | -------------------------------------------------------- |
| `height_meters`    | `float`                 | Height in meters (alternative to `height_inches`).       |
| `height_inches`    | `u32`                   | Height in inches (alternative to `height_meters`).       |
| `weight_kilograms` | `float`                 | Weight in kilograms (alternative to `weight_pounds`).    |
| `weight_pounds`    | `float`                 | Weight in pounds (alternative to `weight_kilograms`).    |
| `body_shape`       | `enum PokemonBodyShape` | Pokédex body shape category.                             |
| `trainer_scale_f`  | `u16`                   | Trainer back-sprite scale (female).                      |
| `pokemon_scale_f`  | `u16`                   | Pokémon front-sprite scale (female).                     |
| `trainer_scale_m`  | `u16`                   | Trainer back-sprite scale (male).                        |
| `pokemon_scale_m`  | `u16`                   | Pokémon front-sprite scale (male).                       |
| `trainer_pos_f`    | `u16`                   | Trainer back-sprite Y-position offset (female).          |
| `pokemon_pos_f`    | `u16`                   | Pokémon front-sprite Y-position offset (female).         |
| `trainer_pos_m`    | `u16`                   | Trainer back-sprite Y-position offset (male).            |
| `pokemon_pos_m`    | `u16`                   | Pokémon front-sprite Y-position offset (male).           |
| `origin_forme`     | `object`                | Alternate-forme Pokédex data (Giratina only). See below. |
| `en`, `fr`, `etc.` | `object`                | Localized Pokédex data. See below.                       |

The `origin_forme` sub-object uses the same schema as the top-level
`pokedex_data` (height, weight, body shape, scales, and positions) and is only
present for Giratina to support its Origin Forme.

Each language sub-object has the following fields:

| Field        | Type       | Description                                   |
| ------------ | ---------- | --------------------------------------------- |
| `name`       | `string`   | The species name in that language.            |
| `category`   | `string`   | The species category (e.g. "Lizard Pokémon"). |
| `entry_text` | `string[]` | The Pokédex entry text, as an array of lines. |

#### The `catching_show` Object

| Field                 | Type                    | Description                              |
| --------------------- | ----------------------- | ---------------------------------------- |
| `pal_park_land_area`  | `enum PalParkLandArea`  | Pal Park land area assignment.           |
| `pal_park_water_area` | `enum PalParkWaterArea` | Pal Park water area assignment.          |
| `catching_points`     | `u8`                    | Catching show points awarded.            |
| `rarity`              | `u8`                    | Rarity score for the catching show.      |
| `unused`              | `u16`                   | Unused field. Present in the retail ROM. |

## `sprite_data.json` — Sprite Offsets and Animation Data

This file is only processed for species present in the National Pokédex (that
is, those with an ID less than `SPECIES_EGG`) and defines the battle sprite
layout and some animation parameters.

| Field    | Type     | Description                                    |
| -------- | -------- | ---------------------------------------------- |
| `front`  | `object` | Front-face sprite animation and Y-offset data. |
| `back`   | `object` | Back-face sprite animation and Y-offset data.  |
| `shadow` | `object` | Shadow sprite position and size.               |

### The `front` and `back` Objects

| Field           | Type       | Description                                              |
| --------------- | ---------- | -------------------------------------------------------- |
| `y_offset`      | `object`   | Per-gender Y-offsets for the sprite (`male` / `female`). |
| `addl_y_offset` | `s8`       | Additional Y-offset (front only).                        |
| `animation`     | `u8`       | Pre-programmed animation sequence ID.                    |
| `cry_delay`     | `u8`       | Frames to wait before playing the cry.                   |
| `start_delay`   | `u8`       | Frames to wait before starting the animation.            |
| `frames`        | `object[]` | Array of animation frame definitions (up to 10 frames).  |

#### The `frame` Objects

| Field          | Type | Description                           |
| -------------- | ---- | ------------------------------------- |
| `sprite_frame` | `s8` | Sprite frame index (`-1` = no frame). |
| `frame_delay`  | `u8` | Duration of this frame in ticks.      |
| `x_shift`      | `s8` | Horizontal shift for this frame.      |
| `y_shift`      | `s8` | Vertical shift for this frame.        |

### The `shadow` Object

| Field      | Type              | Description                             |
| ---------- | ----------------- | --------------------------------------- |
| `x_offset` | `s8`              | Horizontal offset of the shadow sprite. |
| `size`     | `enum ShadowSize` | Size category of the shadow sprite.     |

### Outputs

The tool produces the following outputs:

| Output                                   | Description                                                       |
| ---------------------------------------- | ----------------------------------------------------------------- |
| `pl_personal.narc`                       | `SpeciesData` entries for every species and alternate form.       |
| `evo.narc`                               | `SpeciesEvolution` entries.                                       |
| `wotbl.narc`                             | Level-up learnset entries for every species.                      |
| `height.narc`                            | Per-gender sprite Y-offsets (4 files per National Dex species).   |
| `pl_poke_data.narc`                      | `SpeciesSpriteData` for all National Dex species.                 |
| `ppark.narc`                             | `SpeciesPalPark` data for all National Dex species.               |
| `pms.narc`                               | Offspring species map (breeding species resolution).              |
| `zukan_data(_gira).narc`                 | Data for the sorted Pokédex indices (by height, by weight, etc.). |
| `tutorable_moves.h`                      | Move tutor definitions and costs.                                 |
| `species_learnsets_by_tutor.h`           | Bitmask of tutorable moves per species.                           |
| `species_egg_moves.h`                    | Egg move lists per species.                                       |
| `species_footprint_sizes.h`              | Footprint size per species.                                       |
| `species_footprint_types.h`              | Footprint type per species.                                       |
| `species_icon_palettes.h`                | Icon palette index per species.                                   |
| `species_name.json`                      | Text bank for species names.                                      |
| `species_name_with_articles.json`        | Text bank for species names with indefinite articles.             |
| `species_pokedex_entry_*.json`           | Text banks for Pokédex entries in 6 languages.                    |
| `species_name_with_natdex_number_*.json` | Text banks for species names with National Dex numbers.           |
| `species_category*.json`                 | Text banks for species categories.                                |
| `species_weight*.json`                   | Text banks for Pokédex weight display.                            |
| `species_height*.json`                   | Text banks for Pokédex height display.                            |

### Example

```json
{
    "base_stats": {
        "hp": 39,
        "attack": 52,
        "defense": 43,
        "speed": 65,
        "special_attack": 60,
        "special_defense": 50
    },
    "types": [ "TYPE_FIRE", "TYPE_FIRE" ],
    "catch_rate": 45,
    "base_exp_reward": 65,
    "ev_yields": {
        "hp": 0,
        "attack": 0,
        "defense": 0,
        "speed": 1,
        "special_attack": 0,
        "special_defense": 0
    },
    "held_items": {
        "common": "ITEM_NONE",
        "rare": "ITEM_NONE"
    },
    "gender_ratio": "GENDER_RATIO_FEMALE_12_5",
    "hatch_cycles": 20,
    "base_friendship": 70,
    "exp_rate": "EXP_RATE_MEDIUM_SLOW",
    "egg_groups": [ "EGG_GROUP_MONSTER", "EGG_GROUP_DRAGON" ],
    "abilities": [ "ABILITY_BLAZE", "ABILITY_NONE" ],
    "safari_flee_rate": 0,
    "body_color": "MON_COLOR_RED",
    "flip_sprite": false,
    "icon_palette": 0,
    "learnset": {
        "by_level": [
            [ 1, "MOVE_SCRATCH" ],
            [ 1, "MOVE_GROWL" ],
            [ 7, "MOVE_EMBER" ],
            [ 10, "MOVE_SMOKE_SCREEN" ],
            [ 16, "MOVE_DRAGON_RAGE" ]
        ],
        "by_tm": [
            "TM01", "TM02", "TM06", "TM10",
            "HM01", "HM04", "HM06"
        ],
        "by_tutor": [
            "MOVE_MUD_SLAP",
            "MOVE_FIRE_PUNCH",
            "MOVE_SNORE"
        ],
        "egg_moves": [
            "MOVE_BELLY_DRUM",
            "MOVE_OUTRAGE",
            "MOVE_DRAGON_DANCE"
        ]
    },
    "evolutions": [
        [ "EVO_LEVEL", 16, "SPECIES_CHARMELEON" ]
    ],
    "offspring": "SPECIES_CHARMANDER",
    "footprint": {
        "has": true,
        "size": "FOOTPRINT_MEDIUM",
        "type": "FOOTPRINT_TYPE_CUTE"
    },
    "pokedex_data": {
        "height_inches": 24,
        "weight_pounds": 18.7,
        "body_shape": "SHAPE_BIPEDAL_TAILED",
        "trainer_scale_f": 272,
        "pokemon_scale_f": 384,
        "trainer_scale_m": 256,
        "pokemon_scale_m": 384,
        "trainer_pos_f": 8,
        "pokemon_pos_f": 23,
        "trainer_pos_m": 9,
        "pokemon_pos_m": 23,
        "en": {
            "name": "CHARMANDER",
            "category": "Lizard Pokémon",
            "entry_text": [
                "The fire on the tip of its tail is a\n",
                "measure of its life. If healthy,\n",
                "its tail burns intensely."
            ]
        },
        "fr": {
            "name": "SALAMECHE",
            "category": "Pokémon Lézard",
            "entry_text": [
                "La flamme de sa queue symbolise sa\n",
                "vitalité. Elle est intense quand il\n",
                "est en bonne santé."
            ]
        },
        "de": {
            "name": "GLUMANDA",
            "category": "Echse",
            "entry_text": [
                "Lodert die Flamme auf seiner\n",
                "Schweifspitze hell, ist GLUMANDA\n",
                "gesund."
            ]
        },
        "it": {
            "name": "CHARMANDER",
            "category": "Pokémon Lucertola",
            "entry_text": [
                "La fiamma sulla punta della coda\n",
                "indica la sua vitalità. Se sta bene,\n",
                "la fiamma è più ardente."
            ]
        },
        "es": {
            "name": "CHARMANDER",
            "category": "Pokémon Lagartija",
            "entry_text": [
                "La llama de la punta de su cola\n",
                "indica su salud. Si CHARMANDER\n",
                "está sano, arderá con más fuerza."
            ]
        },
        "jp": {
            "name": "ヒトカゲ",
            "category": "とかげポケモン",
            "entry_text": [
                "ヒトカゲの　しっぽの　ほのおは\n",
                "いのちの　ともしび。げんきな　ときは\n",
                "ほのおも　ちからづよく　もえあがる。"
            ]
        }
    },
    "catching_show": {
        "pal_park_land_area": "PAL_PARK_AREA_LAND_SOUTH_WEST",
        "pal_park_water_area": "PAL_PARK_AREA_WATER_NONE",
        "catching_points": 50,
        "rarity": 30,
        "unused": 514
    }
}
```
