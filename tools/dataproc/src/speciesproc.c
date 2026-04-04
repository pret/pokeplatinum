#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "common.h"
#include "dataproc.h"
#include "nitroarc.h"

// IWYU pragma: begin_keep
#include "constants/items.h"
#include "generated/abilities.h"
#include "generated/egg_groups.h"
#include "generated/exp_rates.h"
#include "generated/evolution_methods.h"
#include "generated/footprint_sizes.h"
#include "generated/gender_ratios.h"
#include "generated/moves.h"
#include "generated/pal_park_land_area.h"
#include "generated/pal_park_water_area.h"
#include "generated/pokemon_colors.h"
#include "generated/pokemon_types.h"
#include "generated/shadow_sizes.h"
#include "generated/species.h"
#include "generated/tutor_locations.h"
// IWYU pragma: end_keep

#include "struct_defs/species.h"
#include "struct_defs/species_sprite_data.h"
#include "struct_defs/sprite_animation_frame.h"

typedef struct SpeciesLearnsetSized {
    SpeciesLearnset data;
    size_t          size;
} SpeciesLearnsetSized;

typedef struct SpeciesEvolutionList {
    SpeciesEvolution data[MAX_EVOLUTIONS] ALIGN_4;
} SpeciesEvolutionList;

typedef struct SpeciesHeights {
    u8   back_female;
    u8   back_male;
    u8   front_female;
    u8   front_male;
    bool has_female;
    bool has_male;
} SpeciesHeights;

typedef struct Container {
    SpeciesData          personal;
    SpeciesEvolutionList evolutions;
    SpeciesLearnsetSized levelup_learnset;
    SpeciesPalPark       palpark;
    SpeciesHeights       heights;
    SpeciesSpriteData    spritedata;
    enum Species         offspring;
} Container;

static SpeciesData proc_personal(datafile_t *df);
static SpeciesEvolutionList proc_evolutions(datafile_t *df);
static SpeciesLearnsetSized proc_lvlearnset(datafile_t *df);
static SpeciesPalPark proc_palpark(datafile_t *df, size_t i);
static enum Species proc_offspring(datafile_t *df, size_t i);
static SpeciesHeights proc_heights(datafile_t *df, enum GenderRatio ratio);
static SpeciesSpriteData proc_spritedata(datafile_t *df);

static void emit_tutorables(datafile_t *df, size_t i);
static void emit_eggmoves(datafile_t *df, const char *species_upper);
static void emit_footprints(datafile_t *df, size_t i, const char *species_upper);
static void emit_iconpalettes(datafile_t *df, size_t i, const char *species);
static void emit_pokegra(size_t i, const char *species, enum GenderRatio ratio);
static void pack(Container *species, size_t i);

static void pre_init(void);
static void post_init(void);
static int  addl_done(void);
static void parse_args(int *pargc, char ***pargv);

static char  *program_name     = NULL;
static char  *base_dir         = NULL;
static char  *depfile_fpath    = "species_data.d";
static char  *tutorables_fpath = "move_tutors.json";
static char  *output_dir       = ".";
static char **registry         = NULL;
static size_t len_registry     = 0;

static enum_template_t enums[] = {
    { .from_file = "constants/footstep_house.h", .with_prefix = "FOOTPRINT_TYPE", .for_type = "FOOTPRINT_TYPE", .from_defs = true },
    { .from_file = NULL },
};

static archive_template_t archives[] = {
    { .out_filename = "pl_personal.narc" },
    { .out_filename = "evo.narc"         },
    { .out_filename = "wotbl.narc"       },
    { .out_filename = "height.narc"      },
    { .out_filename = NULL               },
};

static header_template_t headers[] = {
    { .out_filename = "tutorable_moves.h"            },
    { .out_filename = "species_learnsets_by_tutor.h" },
    { .out_filename = "species_egg_moves.h"          },
    { .out_filename = "species_footprint_sizes.h"    },
    { .out_filename = "species_footprint_types.h"    },
    { .out_filename = "species_icon_palettes.h"      },
    { .out_filename = NULL,                          },
};

static order_template_t orders[] = {
    { .out_filename = "pl_pokegra.order"             },
    { .out_filename = NULL,                          },
};

static const char *alt_forms_with_data[] = { // NOTE: also implicitly defines the ordering of these forms
    "deoxys/forms/attack",
    "deoxys/forms/defense",
    "deoxys/forms/speed",
    "wormadam/forms/sandy",
    "wormadam/forms/trash",
    "giratina/forms/origin",
    "shaymin/forms/sky",
    "rotom/forms/heat",
    "rotom/forms/wash",
    "rotom/forms/frost",
    "rotom/forms/fan",
    "rotom/forms/mow",
};

#define NATIONAL_DEX_MAX SPECIES_EGG

#define SOURCE_NAME "tools/dataproc/src/speciesproc.c"

int main(int argc, char **argv) {
    parse_args(&argc, &argv);

    splitenv("SPECIES", &registry, &len_registry, alt_forms_with_data, countof(alt_forms_with_data));
    archives[0].num_files = (u16)len_registry;
    archives[1].num_files = (u16)len_registry;
    archives[2].num_files = (u16)len_registry;
    archives[3].num_files = (u16)(4 * NATIONAL_DEX_MAX);

    common_init(DATAPROC_F_JSON, enums, archives, headers, orders, __FILE__, depfile_fpath, output_dir, pre_init, post_init);

    datafile_t df_d = { 0 };
    datafile_t df_s = { 0 };
    unsigned   errc = EXIT_SUCCESS;

    for (size_t i = 0; i < len_registry; i++) {
        char *path_d = pathjoin(base_dir, registry[i], "data.json");
        char *path_s = pathjoin(base_dir, registry[i], "sprite_data.json");

        if (dp_load(&df_d, path_d) == 0) {
            char *capped = strupper(registry[i]);

            Container species = {
                .personal         = proc_personal(&df_d),
                .evolutions       = proc_evolutions(&df_d),
                .levelup_learnset = proc_lvlearnset(&df_d),
                .palpark          = proc_palpark(&df_d, i),
                .offspring        = proc_offspring(&df_d, i),
            };

            enum GenderRatio ratio = species.personal.genderRatio;
            if (i < NATIONAL_DEX_MAX && dp_load(&df_s, path_s) == 0) {
                if (i == SPECIES_NONE) ratio = GENDER_RATIO_FEMALE_50;

                species.heights    = proc_heights(&df_s, ratio);
                species.spritedata = proc_spritedata(&df_s);
            }

            emit_tutorables(&df_d, i);
            emit_eggmoves(&df_d, capped);
            emit_footprints(&df_d, i, capped);
            emit_iconpalettes(&df_d, i, registry[i]);
            emit_pokegra(i, registry[i], ratio);
            pack(&species, i);

            free(capped);
        }

        if (df_d.diag_head && dp_report(&df_d) == DIAG_ERROR) errc = EXIT_FAILURE;
        if (df_s.diag_head && dp_report(&df_s) == DIAG_ERROR) errc = EXIT_FAILURE;

        free(path_d);
        free(path_s);
        dp_free(&df_d);
        dp_free(&df_s);
    }

    return common_done(errc, addl_done);
}

static u8  *palpark     = NULL;
static u16 *offspring   = NULL;
static u8  *sprite_data = NULL;

static void pre_init(void) {
    dp_regmetang(Ability);
    dp_regmetang(EggGroup);
    dp_regmetang(ExpRate);
    dp_regmetang(EvolutionMethod);
    dp_regmetang(FootprintSize);
    dp_regmetang(GenderRatio);
    dp_regmetang(Item);
    dp_regmetang(Move);
    dp_regmetang(PalParkLandArea);
    dp_regmetang(PalParkWaterArea);
    dp_regmetang(PokemonColor);
    dp_regmetang(PokemonType);
    dp_regmetang(ShadowSize);
    dp_regmetang(Species);
    dp_regmetang(TutorLocation);

    palpark     = calloc(NATIONAL_DEX_MAX - 1, sizeof(SpeciesPalPark)); // NOTE: SPECIES_NONE does not have an entry
    offspring   = calloc(len_registry, sizeof(u16));
    sprite_data = calloc(NATIONAL_DEX_MAX, sizeof(SpeciesSpriteData));
}

static datafile_t   df_tutorables       = { 0 };
static const char **tutorable_moves     = NULL;
static size_t       len_tutorable_moves = 0;
static size_t       tutorset_size       = 0;
static u8          *tutorset            = NULL; // NOTE: shared and cleared between species

static void free_tutorables(void) {
    free(tutorable_moves);
    free(tutorset);
    dp_free(&df_tutorables);
}

static void post_init(void) {
    static FILE **f_tutorables = &headers[0].out_file;

    if (dp_load(&df_tutorables, tutorables_fpath) == 0) {
        datanode_t array    = dp_get(&df_tutorables, ".");
        len_tutorable_moves = dp_arrlen(array);
        tutorable_moves     = calloc(len_tutorable_moves, sizeof(*tutorable_moves));

        for (size_t i = 0; i < len_tutorable_moves; i++) {
            datanode_t elem = dp_arrelem(array, i);
            datanode_t move = dp_objmemb(elem, "move");
            if (dp_lookup(move, "Move").type == DATAPROC_T_ERR) continue;

            tutorable_moves[i] = dp_string(move);
            fprintf(*f_tutorables, "    { %s, %u, %u, %u, %u, %s },\n",
                    tutorable_moves[i],
                    dp_u8(dp_objmemb(elem, "redCost")),
                    dp_u8(dp_objmemb(elem, "blueCost")),
                    dp_u8(dp_objmemb(elem, "yellowCost")),
                    dp_u8(dp_objmemb(elem, "greenCost")),
                    dp_string(dp_lookup_s(dp_objmemb(elem, "location"), "TutorLocation")));
        }

        tutorset_size = (len_tutorable_moves + 7) / 8;
        tutorset      = calloc(tutorset_size, sizeof(*tutorset));
    }

    if (df_tutorables.diag_head && dp_report(&df_tutorables) == DIAG_ERROR) {
        exit(EXIT_FAILURE);
    }

    atexit(free_tutorables);
}

static void proc_tmlearnset(datafile_t *df, SpeciesData *out);

static SpeciesData proc_personal(datafile_t *df) {
    SpeciesData personal = {
        .baseStats = {
            .hp        = u8(".base_stats.hp"),
            .attack    = u8(".base_stats.attack"),
            .defense   = u8(".base_stats.defense"),
            .speed     = u8(".base_stats.speed"),
            .spAttack  = u8(".base_stats.special_attack"),
            .spDefense = u8(".base_stats.special_defense"),
        },

        .types = {
            enum_u8(".types[0]", PokemonType),
            enum_u8(".types[1]", PokemonType),
        },

        .abilities = {
            enum_u8(".abilities[0]", Ability),
            enum_u8(".abilities[1]", Ability),
        },

        .evYields = {
            .hp        = u8_maxbits(".ev_yields.hp", 2),
            .attack    = u8_maxbits(".ev_yields.attack", 2),
            .defense   = u8_maxbits(".ev_yields.defense", 2),
            .speed     = u8_maxbits(".ev_yields.speed", 2),
            .spAttack  = u8_maxbits(".ev_yields.special_attack", 2),
            .spDefense = u8_maxbits(".ev_yields.special_defense", 2),
        },

        .wildHeldItems = {
            .common = enum_u16(".held_items.common", Item),
            .rare   = enum_u16(".held_items.rare", Item),
        },

        .eggGroups = {
            enum_u8(".egg_groups[0]", EggGroup),
            enum_u8(".egg_groups[1]", EggGroup),
        },

        .baseExpReward  = u8(".base_exp_reward"),
        .baseFriendship = u8(".base_friendship"),
        .bodyColor      = (u8)(enum_u8(".body_color", PokemonColor) & maxbit(7)),
        .catchRate      = u8(".catch_rate"),
        .expRate        = enum_u8(".exp_rate", ExpRate),
        .flipSprite     = boolean(".flip_sprite"),
        .genderRatio    = enum_u8(".gender_ratio", GenderRatio),
        .hatchCycles    = u8(".hatch_cycles"),
        .safariFleeRate = u8(".safari_flee_rate"),

        .tmLearnsetMasks = { 0 },
    };

    proc_tmlearnset(df, &personal);
    return personal;
}

static void proc_tmlearnset(datafile_t *df, SpeciesData *out) {
    datanode_t tm_learnset = dp_get(df, ".learnset.by_tm");
    for (size_t i = 0; i < dp_arrlen(tm_learnset); i++) {
        datanode_t  dn    = dp_arrelem(tm_learnset, i);
        const char *entry = dp_string(dn);

        long  value  = 0;
        char *endptr = NULL;
        if (entry == NULL) continue; // not a string, error is already recorded
        if ((entry[0] == 'T' || entry[0] == 'H') && entry[1] == 'M') {
            value = strtol(&entry[2], &endptr, 10);
            if (*endptr != 0 || value < 1) goto errmarker;
            if (entry[0] == 'T' && (size_t)value > NUM_TMS) goto errmarker;
            if (entry[0] == 'H' && (size_t)value > NUM_HMS) goto errmarker;

            value -= 1;
            value += NUM_TMS * (entry[0] == 'H');
        }
        else {
        errmarker:
            dp_error(&dn, "expected entry to be a valid TM or HM marker");
            continue;
        }

        size_t idx = value / 32;
        size_t bit = value % 32;
        out->tmLearnsetMasks[idx] |= ((unsigned)1 << bit); // NOTE: cast is required here to avoid SIGILL
    }
}

static SpeciesEvolutionList proc_evolutions(datafile_t *df) {
    SpeciesEvolutionList result = { 0 };

    datanode_t evolutions = dp_get(df, ".evolutions");
    size_t     len_evos   = dp_arrlen(evolutions);
    if (len_evos > MAX_EVOLUTIONS) {
        dp_error(&evolutions,
                 "expected at most %u entries, but found %zu",
                 MAX_LEARNSET_ENTRIES, len_evos);
        return result;
    }

    for (size_t i = 0; i < len_evos; i++) {
        datanode_t entry  = dp_arrelem(evolutions, i);
        datanode_t method = dp_lookup(dp_arrelem(entry, 0), "EvolutionMethod");
        if (method.type == DATAPROC_T_ERR) continue; // Don't bother if the evolution method is invalid

        datanode_t param   = { .type = DATAPROC_T_MAPPED, .mapped = 0 };
        datanode_t species = { 0 };
        switch ((enum EvolutionMethod)dp_u16(method)) {
        case EVO_NONE:
        case EVO_LEVEL_HAPPINESS:
        case EVO_LEVEL_HAPPINESS_DAY:
        case EVO_LEVEL_HAPPINESS_NIGHT:
        case EVO_TRADE:
        case EVO_LEVEL_MAGNETIC_FIELD:
        case EVO_LEVEL_MOSS_ROCK:
        case EVO_LEVEL_ICE_ROCK:
            species = dp_lookup(dp_arrelem(entry, 1), "Species");
            break;

        case EVO_LEVEL:
        case EVO_LEVEL_ATK_GT_DEF:
        case EVO_LEVEL_ATK_EQ_DEF:
        case EVO_LEVEL_ATK_LT_DEF:
        case EVO_LEVEL_PID_LOW:
        case EVO_LEVEL_PID_HIGH:
        case EVO_LEVEL_NINJASK:
        case EVO_LEVEL_SHEDINJA:
        case EVO_LEVEL_BEAUTY:
        case EVO_LEVEL_MALE:
        case EVO_LEVEL_FEMALE:
            param   = dp_arrelem(entry, 1);
            species = dp_lookup(dp_arrelem(entry, 2), "Species");
            break;

        case EVO_TRADE_WITH_HELD_ITEM:
        case EVO_USE_ITEM:
        case EVO_USE_ITEM_MALE:
        case EVO_USE_ITEM_FEMALE:
        case EVO_LEVEL_WITH_HELD_ITEM_DAY:
        case EVO_LEVEL_WITH_HELD_ITEM_NIGHT:
            param   = dp_lookup(dp_arrelem(entry, 1), "Item");
            species = dp_lookup(dp_arrelem(entry, 2), "Species");
            break;

        case EVO_LEVEL_KNOW_MOVE:
            param   = dp_lookup(dp_arrelem(entry, 1), "Move");
            species = dp_lookup(dp_arrelem(entry, 2), "Species");
            break;

        case EVO_LEVEL_SPECIES_IN_PARTY:
            param   = dp_lookup(dp_arrelem(entry, 1), "Species");
            species = dp_lookup(dp_arrelem(entry, 2), "Species");
            break;

        default:
            // NOTE: This is a sanity-check for users that add a new EvolutionMethod
            // but fail to add a case to this switch.
            dp_error(&method, "no handler implemented for EvolutionMethod member '%s'",
                     dp_string(dp_arrelem(entry, 0)));
            break;
        }

        result.data[i] = (SpeciesEvolution){
            .method        = dp_u16(method),
            .param         = dp_u16(param),
            .targetSpecies = dp_u16(species),
        };
    }

    return result;
}

static SpeciesLearnsetSized proc_lvlearnset(datafile_t *df) {
    SpeciesLearnsetSized result = { 0 };

    datanode_t lv_learnset  = dp_get(df, ".learnset.by_level");
    size_t     len_learnset = dp_arrlen(lv_learnset);
    if (len_learnset > MAX_LEARNSET_ENTRIES) {
        dp_error(&lv_learnset,
                 "expected at most %u entries, but found %zu",
                 MAX_LEARNSET_ENTRIES, len_learnset);
        return result;
    }

    for (size_t i = 0; i < len_learnset; i++) {
        datanode_t entry = dp_arrelem(lv_learnset, i);
        datanode_t level = dp_arrelem(entry, 0);
        datanode_t move  = dp_arrelem(entry, 1);

        result.data.entries[result.size].move  = (u16)(dp_u16(dp_lookup(move, "Move")) & maxbit(9));
        result.data.entries[result.size].level = (u16)(dp_u8(level) & maxbit(7));
        result.size++;
    }

    result.data.entries[result.size].move  = (u16)UINT16_MAX & maxbit(9);
    result.data.entries[result.size].level = (u16)UINT16_MAX & maxbit(7);
    result.size++;

    result.size *= sizeof(SpeciesLearnsetEntry);
    result.size += (-result.size & 3);
    return result;
}

static SpeciesPalPark proc_palpark(datafile_t *df, size_t i) {
    SpeciesPalPark result = { 0 };
    if (i == SPECIES_NONE || i >= NATIONAL_DEX_MAX) return result;

    datanode_t catching_show   = dp_get(df, ".catching_show");
    datanode_t land_area       = dp_lookup(dp_objmemb(catching_show, "pal_park_land_area"), "PalParkLandArea");
    datanode_t water_area      = dp_lookup(dp_objmemb(catching_show, "pal_park_water_area"), "PalParkWaterArea");
    datanode_t catching_points = dp_objmemb(catching_show, "catching_points");
    datanode_t rarity          = dp_objmemb(catching_show, "rarity");
    datanode_t unused_u16      = dp_objmemb(catching_show, "unused");

    result.landArea       = dp_u8(land_area);
    result.waterArea      = dp_u8(water_area);
    result.catchingPoints = dp_u8(catching_points);
    result.rarity         = dp_u8(rarity);
    result.unused.asU16   = dp_u16(unused_u16);

    return result;
}

static enum Species proc_offspring(datafile_t *df, size_t i) {
    return i <= SPECIES_BAD_EGG
        ? (enum Species)enum_u16(".offspring", Species)
        : (enum Species)i;
}

static SpeciesHeights proc_heights(datafile_t *df, enum GenderRatio ratio) {
    datanode_t back  = dp_get(df, ".back.y_offset");
    datanode_t front = dp_get(df, ".front.y_offset");

    SpeciesHeights result = { 0 };

    if (ratio != GENDER_RATIO_FEMALE_ONLY) {
        result.has_male   = true;
        result.back_male  = dp_u8(dp_objmemb(back, "male"));
        result.front_male = dp_u8(dp_objmemb(front, "male"));
    }

    if (ratio != GENDER_RATIO_MALE_ONLY && ratio != GENDER_RATIO_NO_GENDER) {
        result.has_female   = true;
        result.back_female  = dp_u8(dp_objmemb(back, "female"));
        result.front_female = dp_u8(dp_objmemb(front, "female"));
    }

    return result;
}

static SpeciesSpriteAnim proc_spriteanim(datanode_t dn) {
    SpeciesSpriteAnim result = {
        .animation  = dp_u8(dp_objmemb(dn, "animation")),
        .cryDelay   = dp_u8(dp_objmemb(dn, "cry_delay")),
        .startDelay = dp_u8(dp_objmemb(dn, "start_delay")),
    };

    datanode_t   frames     = dp_objmemb(dn, "frames");
    const size_t num_frames = dp_arrlen(frames);
    for (size_t i = 0; i < num_frames; i++) {
        datanode_t frame = dp_arrelem(frames, i);

        result.frames[i] = (SpriteAnimFrame){
            .spriteFrame = dp_s8(dp_objmemb(frame, "sprite_frame")),
            .frameDelay  = dp_u8(dp_objmemb(frame, "frame_delay")),
            .xOffset     = dp_s8(dp_objmemb(frame, "x_shift")),
            .yOffset     = dp_s8(dp_objmemb(frame, "y_shift")),
        };
    }

    return result;
}

static SpeciesSpriteData proc_spritedata(datafile_t *df) {
    return (SpeciesSpriteData){
        .yOffset       = s8(".front.addl_y_offset"),
        .xOffsetShadow = s8(".shadow.x_offset"),
        .shadowSize    = enum_u8(".shadow.size", ShadowSize),
        .faceAnims     = {
            [0] = proc_spriteanim(dp_get(df, ".front")),
            [1] = proc_spriteanim(dp_get(df, ".back")),
        },
    };
}

static FILE **f_tutor_sets      = &headers[1].out_file;
static FILE **f_egg_moves       = &headers[2].out_file;
static FILE **f_footprint_sizes = &headers[3].out_file;
static FILE **f_footprint_types = &headers[4].out_file;
static FILE **f_icon_palettes   = &headers[5].out_file;
static FILE **f_pl_pokegra      = &orders[0].out_file;

static void emit_tutorables(datafile_t *df, size_t i) {
    // NOTE: none of these have any tutorable learnsets, but mechanically-distinct forms
    // (e.g., Giratina-Origin) do
    if (i == SPECIES_NONE || i == SPECIES_EGG || i == SPECIES_BAD_EGG) return;

    datanode_t dn = dp_get(df, ".learnset.by_tutor");
    memset(tutorset, 0, tutorset_size);
    fputs("    { ", *f_tutor_sets);

    for (size_t i = 0; i < dp_arrlen(dn); i++) {
        datanode_t  move   = dp_arrelem(dn, i);
        const char *move_s = dp_string(move);
        if (dp_lookup(move, "Move").type == DATAPROC_T_ERR) continue;

        const char *found = NULL;
        size_t      idx   = 0;
        for (size_t j = 0; j < len_tutorable_moves && !found; j++) {
            if (strcmp(tutorable_moves[j], move_s) == 0) { found = tutorable_moves[j]; idx = j; }
        }

        if (found) tutorset[idx / 8] |= (u8)(1 << (idx % 8));
        else dp_warn(&move, "'%s' is not available from any move tutors", move_s);
    }

    for (size_t i = 0; i < tutorset_size; i++) fprintf(*f_tutor_sets, "0x%02X, ", tutorset[i]);
    fputs("},\n", *f_tutor_sets);
}

static void emit_eggmoves(datafile_t *df, const char *species_upper) {
    datanode_t dn = dp_try(df, ".learnset.egg_moves");
    if (dn.type == DATAPROC_T_ERR) return;

    fprintf(*f_egg_moves, "    SPECIES_%s + EGG_MOVES_SPECIES_OFFSET,\n", species_upper);
    for (size_t i = 0; i < dp_arrlen(dn); i++) {
        datanode_t  move   = dp_arrelem(dn, i);
        const char *move_s = dp_string(move);
        dp_lookup(move, "Move"); // only to verify that this is a move name

        fprintf(*f_egg_moves, "    %s,\n", move_s);
    }

    fputc('\n', *f_egg_moves);
}

static void emit_footprints(datafile_t *df, size_t i, const char *species_upper) {
    // NOTE: eggs and alternate-forms do not have any footprint data
    if (i >= NATIONAL_DEX_MAX) return;

    datanode_t  root = dp_get(df, ".footprint");
    const bool  has  = dp_bool(dp_objmemb(root, "has"));
    const char *size = dp_string(dp_lookup_s(dp_objmemb(root, "size"), "FootprintSize"));
    const char *type = dp_string(dp_lookup_s(dp_objmemb(root, "type"), "FOOTPRINT_TYPE"));

    fprintf(*f_footprint_sizes, "    { %s, %s },\n",
            has ? "TRUE" : "FALSE",
            size);
    fprintf(*f_footprint_types, "    [SPECIES_%s] = { %s, %s },\n",
            species_upper,
            type,
            has || i == SPECIES_SPIRITOMB ? "TRUE" : "FALSE");
}

static void emit_iconpalettes(datafile_t *df, size_t i, const char *species) {
    // We make a separate-copy to make this fool-proof, since the surrounding functions modify the string
    char *capped = strreplace(strremove(strupper(species), "/FORMS"), '/', '_');

    datanode_t palette = dp_get(df, ".icon_palette");
    if (palette.type == DATAPROC_T_INT) {
        long  idx  = dp_int(palette);

        switch (i) {
        default:
            fprintf(*f_icon_palettes, "    [%s_%s] = %ld,\n",
                    i > SPECIES_BAD_EGG ? "ICON" : "SPECIES", capped, idx);
            break;

        case SPECIES_EGG:     fprintf(*f_icon_palettes, "    [ICON_EGG] = %ld,\n", idx); break;
        case SPECIES_BAD_EGG: fprintf(*f_icon_palettes, "    [ICON_MANAPHY_EGG] = %ld,\n", idx); break;
        }

        goto cleanup;
    }

    // Must be an array of tuples like: [form_name, palette_index]
    for (size_t j = 0; j < dp_arrlen(palette); j++) {
        datanode_t elem = dp_arrelem(palette, j);
        datanode_t form = dp_arrelem(elem, 0);
        datanode_t pltt = dp_arrelem(elem, 1);

        if (form.type != DATAPROC_T_ERR && pltt.type != DATAPROC_T_ERR) {
            const char *form_s = dp_string(form);
            const long  pltt_i = dp_int(pltt);
            if (strcmp(form_s, "base") == 0) {
                fprintf(*f_icon_palettes, "    [SPECIES_%s] = %ld,\n", capped, pltt_i);
            }
            else {
                char *form_capped = strupper(form_s);
                fprintf(*f_icon_palettes, "    [ICON_%s_%s] = %ld,\n", capped, form_capped, pltt_i);
                free(form_capped);
            }
        }
    }

cleanup:
    free(capped);
}

static void emit_pokegra(size_t i, const char *species, enum GenderRatio ratio) {
    if (i < SPECIES_EGG) {
        if (ratio == GENDER_RATIO_FEMALE_ONLY) {
            fprintf(*f_pl_pokegra, "%s/female_back.NCGR\n", species);
            fprintf(*f_pl_pokegra, "empty\n");
            fprintf(*f_pl_pokegra, "%s/female_front.NCGR\n", species);
            fprintf(*f_pl_pokegra, "empty\n");
        }
        else if (ratio == GENDER_RATIO_MALE_ONLY || ratio == GENDER_RATIO_NO_GENDER) {
            fprintf(*f_pl_pokegra, "empty\n");
            fprintf(*f_pl_pokegra, "%s/male_back.NCGR\n", species);
            fprintf(*f_pl_pokegra, "empty\n");
            fprintf(*f_pl_pokegra, "%s/male_front.NCGR\n", species);
        }
        else {
            fprintf(*f_pl_pokegra, "%s/female_back.NCGR\n", species);
            fprintf(*f_pl_pokegra, "%s/male_back.NCGR\n", species);
            fprintf(*f_pl_pokegra, "%s/female_front.NCGR\n", species);
            fprintf(*f_pl_pokegra, "%s/male_front.NCGR\n", species);
        }
        
        fprintf(*f_pl_pokegra, "%s/normal.NCLR\n", species);
        fprintf(*f_pl_pokegra, "%s/shiny.NCLR\n", species);
    }
}

static void pack(Container *species, size_t i) {
    nitroarc_ppack(&archives[0].packer, &species->personal, sizeof(SpeciesData), NULL);
    nitroarc_ppack(&archives[1].packer, &species->evolutions, sizeof(SpeciesEvolutionList), NULL);
    nitroarc_ppack(&archives[2].packer, &species->levelup_learnset.data, (u32)species->levelup_learnset.size, NULL);

    if (i > SPECIES_NONE && i < NATIONAL_DEX_MAX) {
        size_t offset = sizeof(SpeciesPalPark) * (i - 1);
        memcpy(palpark + offset, &species->palpark, sizeof(SpeciesPalPark));
    }

    if (i < NATIONAL_DEX_MAX) {
        nitroarc_ppack(&archives[3].packer, &species->heights.back_female,  species->heights.has_female ? 1 : 0, NULL);
        nitroarc_ppack(&archives[3].packer, &species->heights.back_male,    species->heights.has_male   ? 1 : 0, NULL);
        nitroarc_ppack(&archives[3].packer, &species->heights.front_female, species->heights.has_female ? 1 : 0, NULL);
        nitroarc_ppack(&archives[3].packer, &species->heights.front_male,   species->heights.has_male   ? 1 : 0, NULL);

        size_t offset = sizeof(SpeciesSpriteData) * i;
        memcpy(sprite_data + offset, &species->spritedata, sizeof(SpeciesSpriteData));
    }

    offspring[i] = (u16)species->offspring;
}

static int addl_done(void) {
    return fdump_blobnarc(palpark,     sizeof(SpeciesPalPark) * (NATIONAL_DEX_MAX - 1), "ppark.narc")
        || fdump_blobnarc(sprite_data, sizeof(SpeciesSpriteData) * NATIONAL_DEX_MAX,    "pl_poke_data.narc")
        || fdump_blob(offspring, sizeof(u16) * len_registry, "pms.narc")
        || EXIT_SUCCESS;
}

static void usage(const char *fmt, ...) __attribute__((format(printf, 1, 2)));

static void parse_args(int *pargc, char ***pargv) {
    program_name = (*pargv)[0];
    opterr       = 0;

    int c = 0;
    while ((c = getopt(*pargc, *pargv, "o:t:M:h")) != -1) {
        switch (c) {
        case 'o': output_dir       = optarg; break;
        case 't': tutorables_fpath = optarg; break;
        case 'M': depfile_fpath    = optarg; break;

        case 'h': usage(NULL);                                 break;
        case ':': usage("missing argument for '-%c'", optopt); break;
        default:  usage("unknown option '-%c'", optopt);     break;
        }
    }

    *pargc -= optind;
    *pargv += optind;
    if (*pargc < 1) usage("missing required argument BASEDIR");

    base_dir = (*pargv)[0];
}

static void usage(const char *fmt, ...) {
    FILE *f = stdout;
    if (fmt != NULL) {
        f = stderr;

        va_list args;
        va_start(args, fmt);
        fputs(program_name, f);
        fputs(": ", f);
        vfprintf(f, fmt, args);
        fputc('\n', f);
        va_end(args);
    }

#define fputf(fmt, ...) fprintf(f, fmt, __VA_ARGS__)
    fputf("usage: %s [-M DEPFILE] [-t TUTORABLES_JSON] [-o OUTDIR] BASEDIR\n", program_name);
    fputs("\n", f);
    fputs("options:\n", f);
    fputs("  -o OUTDIR            Write output files to OUTDIR. Does not affect DEPFILE.\n", f);
    fputs("                       Defaults to the current working directory.\n", f);
    fputs("  -t TUTORABLES_JSON   Specify the full path to the tutorable-moves JSON file.\n", f);
    fputs("                       Defaults to 'move_tutors.json'.\n", f);
    fputs("  -M DEPFILE           Specify the full path to an output dependency file.\n", f);
    fputs("                       Defaults to 'species_data.d'.\n", f);
#undef fputf

    exit(f == stdout ? EXIT_SUCCESS : EXIT_FAILURE);
}
