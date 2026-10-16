#include <math.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "game_types.h"

#include "constants/items.h"
#include "constants/string.h"
#include "generated/evolution_methods.h"
#include "generated/gender_ratios.h"
#include "generated/pokemon_body_shapes.h"
#include "generated/pokemon_types.h"
#include "generated/species.h"

#include "struct_defs/species.h"
#include "struct_defs/species_sprite_data.h"
#include "struct_defs/sprite_animation_frame.h"

static const char *enumFile   = NULL;
static const char *baseDir    = NULL;
static const char *tutorsFile = "move_tutors.json";
static const char *sinnohFile = "sinnoh_pokedex.json";

enum {
    A_PERSONAL,
    A_EVOLUTIONS,
    A_LEVEL_LEARNSETS,
    A_SPRITE_OFFSETS,
    A_POKEDEX_GIRA_ALTERED,
    A_POKEDEX_GIRA_ORIGIN,
    A_PAL_PARK,
    A_SPRITE_DATA,
};

enum { B_OFFSPRING };

enum {
    F_TUTORABLE_MOVES,
    F_LEARNSETS_BY_TUTOR,
    F_EGG_MOVES,
    F_FOOTPRINT_SIZES,
    F_FOOTPRINT_TYPES,
    F_ICON_PALETTES,
};

enum {
    T_NAMES,
    T_NAMES_WITH_ARTICLES,
    T_POKEDEX_ENTRY_EN,
    T_POKEDEX_ENTRY_FR,
    T_POKEDEX_ENTRY_DE,
    T_POKEDEX_ENTRY_IT,
    T_POKEDEX_ENTRY_ES,
    T_POKEDEX_ENTRY_JP,
    T_NAME_WITH_DEX_NUMBER_EN,
    T_NAME_WITH_DEX_NUMBER_FR,
    T_NAME_WITH_DEX_NUMBER_DE,
    T_NAME_WITH_DEX_NUMBER_IT,
    T_NAME_WITH_DEX_NUMBER_ES,
    T_NAME_WITH_DEX_NUMBER_JP,
    T_CATEGORY_EN,
    T_CATEGORY_FR,
    T_CATEGORY_DE,
    T_CATEGORY_IT,
    T_CATEGORY_ES,
    T_CATEGORY_JP,
    T_CATEGORY,
    T_WEIGHTS_WITH_GIRA_ALTERED,
    T_WEIGHTS_WITH_GIRA_ORIGIN,
    T_HEIGHTS_WITH_GIRA_ALTERED,
    T_HEIGHTS_WITH_GIRA_ORIGIN,
};

#define L_FOOTPRINT_TYPE   "FOOTPRINT_TYPE"
#define L_ABILITY          "enum Ability"
#define L_EGG_GROUP        "enum EggGroup"
#define L_EXP_RATE         "enum ExpRate"
#define L_EVO_METHOD       "enum EvolutionMethod"
#define L_FOOTPRINT_SIZE   "enum FootprintSize"
#define L_GENDER_RATIO     "enum GenderRatio"
#define L_ITEM             "enum Item"
#define L_MOVE             "enum Move"
#define L_PAL_PARK_LAND    "enum PalParkLandArea"
#define L_PAL_PARK_WATER   "enum PalParkWaterArea"
#define L_BODY_SHAPE       "enum PokemonBodyShape"
#define L_COLOR            "enum PokemonColor"
#define L_TYPE             "enum PokemonType"
#define L_SHADOW_SIZE      "enum ShadowSize"
#define L_SPECIES          "enum Species"
#define L_TUTOR_LOCATION   "enum TutorLocation"

static Driver driver = {
    .depfile = "species_data.d",

    .options = (Option[]) {
        OPTION_VALUE('t', "TUTORABLES_JSON", &tutorsFile, "Moves available from tutors. Defaults to 'move_tutors.json'."),
        OPTION_VALUE('s', "SINNOH_DEX_JSON", &sinnohFile, "The Sinnoh Pokédex. Defaults to 'sinnoh_pokedex.json'."),
        POSITIONAL("ENUMFILE", &enumFile, "Header defining enum Species."),
        POSITIONAL("BASEDIR",  &baseDir,  "Directory of per-species data."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_DEFINES("constants/footstep_house.h",   L_FOOTPRINT_TYPE),
        LOOKUP_ENUM("generated/abilities.h",           L_ABILITY),
        LOOKUP_ENUM("generated/egg_groups.h",          L_EGG_GROUP),
        LOOKUP_ENUM("generated/exp_rates.h",           L_EXP_RATE),
        LOOKUP_ENUM("generated/evolution_methods.h",   L_EVO_METHOD),
        LOOKUP_ENUM("generated/footprint_sizes.h",     L_FOOTPRINT_SIZE),
        LOOKUP_ENUM("generated/gender_ratios.h",       L_GENDER_RATIO),
        LOOKUP_ENUM("generated/items.h",               L_ITEM),
        LOOKUP_ENUM("generated/moves.h",               L_MOVE),
        LOOKUP_ENUM("generated/pal_park_land_area.h",  L_PAL_PARK_LAND),
        LOOKUP_ENUM("generated/pal_park_water_area.h", L_PAL_PARK_WATER),
        LOOKUP_ENUM("generated/pokemon_body_shapes.h", L_BODY_SHAPE),
        LOOKUP_ENUM("generated/pokemon_colors.h",      L_COLOR),
        LOOKUP_ENUM("generated/pokemon_types.h",       L_TYPE),
        LOOKUP_ENUM("generated/shadow_sizes.h",        L_SHADOW_SIZE),
        LOOKUP_ENUM("generated/species.h",             L_SPECIES),
        LOOKUP_ENUM("generated/tutor_locations.h",     L_TUTOR_LOCATION),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_PERSONAL]             = { .filename = "pl_personal.narc" },
            [A_EVOLUTIONS]           = { .filename = "evo.narc" },
            [A_LEVEL_LEARNSETS]      = { .filename = "wotbl.narc" },
            [A_SPRITE_OFFSETS]       = { .filename = "height.narc" },
            [A_POKEDEX_GIRA_ALTERED] = { .filename = "zukan_data_gira.narc" },
            [A_POKEDEX_GIRA_ORIGIN]  = { .filename = "zukan_data.narc" },
            [A_PAL_PARK]             = { .filename = "ppark.narc" },
            [A_SPRITE_DATA]          = { .filename = "pl_poke_data.narc" },
            { 0 },
        },

        .binaryFiles = (BinaryFile[]) {
            [B_OFFSPRING] = { .filename = "pms.narc" }, // MATCH DETAIL: a raw table, despite the name
            { 0 },
        },

        .textFiles = (TextFile[]) {
            [F_TUTORABLE_MOVES]    = { .filename = "tutorable_moves.h",            .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_LEARNSETS_BY_TUTOR] = { .filename = "species_learnsets_by_tutor.h", .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_EGG_MOVES]          = { .filename = "species_egg_moves.h",          .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_FOOTPRINT_SIZES]    = { .filename = "species_footprint_sizes.h",    .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_FOOTPRINT_TYPES]    = { .filename = "species_footprint_types.h",    .wrap = TEXT_FILE_WRAP_TEMPLATE },
            [F_ICON_PALETTES]      = { .filename = "species_icon_palettes.h",      .wrap = TEXT_FILE_WRAP_TEMPLATE },
            { 0 },
        },

        .textBanks = (TextBank[]) {
            [T_NAMES]                     = { .filename = "species_name.json",                       .key = 30764 },
            [T_NAMES_WITH_ARTICLES]       = { .filename = "species_name_with_articles.json",         .key = 59681 },
            [T_POKEDEX_ENTRY_EN]          = { .filename = "species_pokedex_entry_en.json",           .key = 63572 },
            [T_POKEDEX_ENTRY_FR]          = { .filename = "species_pokedex_entry_fr.json",           .key = 30030 },
            [T_POKEDEX_ENTRY_DE]          = { .filename = "species_pokedex_entry_de.json",           .key = 30034 },
            [T_POKEDEX_ENTRY_IT]          = { .filename = "species_pokedex_entry_it.json",           .key = 30038 },
            [T_POKEDEX_ENTRY_ES]          = { .filename = "species_pokedex_entry_es.json",           .key = 30042 },
            [T_POKEDEX_ENTRY_JP]          = { .filename = "species_pokedex_entry_jp.json",           .key = 30046 },
            [T_NAME_WITH_DEX_NUMBER_EN]   = { .filename = "species_name_with_natdex_number_en.json", .key = 32249 },
            [T_NAME_WITH_DEX_NUMBER_FR]   = { .filename = "species_name_with_natdex_number_fr.json", .key = 32242 },
            [T_NAME_WITH_DEX_NUMBER_DE]   = { .filename = "species_name_with_natdex_number_de.json", .key = 32254 },
            [T_NAME_WITH_DEX_NUMBER_IT]   = { .filename = "species_name_with_natdex_number_it.json", .key = 32250 },
            [T_NAME_WITH_DEX_NUMBER_ES]   = { .filename = "species_name_with_natdex_number_es.json", .key = 32230 },
            [T_NAME_WITH_DEX_NUMBER_JP]   = { .filename = "species_name_with_natdex_number_jp.json", .key = 32226 },
            [T_CATEGORY_EN]               = { .filename = "species_category_en.json",                .key = 22840 },
            [T_CATEGORY_FR]               = { .filename = "species_category_fr.json",                .key = 46193 },
            [T_CATEGORY_DE]               = { .filename = "species_category_de.json",                .key = 46205 },
            [T_CATEGORY_IT]               = { .filename = "species_category_it.json",                .key = 46201 },
            [T_CATEGORY_ES]               = { .filename = "species_category_es.json",                .key = 46181 },
            [T_CATEGORY_JP]               = { .filename = "species_category_jp.json",                .key = 46177 },
            [T_CATEGORY]                  = { .filename = "species_category.json",                   .key = 48809 },
            [T_WEIGHTS_WITH_GIRA_ALTERED] = { .filename = "species_weight_gira.json",                .key = 64639 },
            [T_WEIGHTS_WITH_GIRA_ORIGIN]  = { .filename = "species_weight.json",                     .key = 25297 },
            [T_HEIGHTS_WITH_GIRA_ALTERED] = { .filename = "species_height_gira.json",                .key = 28660 },
            [T_HEIGHTS_WITH_GIRA_ORIGIN]  = { .filename = "species_height.json",                     .key = 5013  },
            { 0 },
        },
    },
};

static const struct {
    const char *key;
    int         entryBank;
    int         categoryBank;
    int         numberedBank;
    bool        wideNumber;     // number the name with full-width digits
    bool        isGameLanguage; // also feeds the T_CATEGORY bank
} languages[] = {
    { "en", T_POKEDEX_ENTRY_EN, T_CATEGORY_EN, T_NAME_WITH_DEX_NUMBER_EN, false, true  },
    { "fr", T_POKEDEX_ENTRY_FR, T_CATEGORY_FR, T_NAME_WITH_DEX_NUMBER_FR, false, false },
    { "de", T_POKEDEX_ENTRY_DE, T_CATEGORY_DE, T_NAME_WITH_DEX_NUMBER_DE, false, false },
    { "it", T_POKEDEX_ENTRY_IT, T_CATEGORY_IT, T_NAME_WITH_DEX_NUMBER_IT, false, false },
    { "es", T_POKEDEX_ENTRY_ES, T_CATEGORY_ES, T_NAME_WITH_DEX_NUMBER_ES, false, false },
    { "jp", T_POKEDEX_ENTRY_JP, T_CATEGORY_JP, T_NAME_WITH_DEX_NUMBER_JP, true,  false },
};

// Forms with their own data entries, packed after every species in this order.
static const struct {
    const char *dir;
    const char *icon;
    bool        isGiratinaOrigin;
} altFormsWithData[] = {
    { "deoxys/forms/attack",   "ICON_DEOXYS_ATTACK",   .isGiratinaOrigin = false },
    { "deoxys/forms/defense",  "ICON_DEOXYS_DEFENSE",  .isGiratinaOrigin = false },
    { "deoxys/forms/speed",    "ICON_DEOXYS_SPEED",    .isGiratinaOrigin = false },
    { "wormadam/forms/sandy",  "ICON_WORMADAM_SANDY",  .isGiratinaOrigin = false },
    { "wormadam/forms/trash",  "ICON_WORMADAM_TRASH",  .isGiratinaOrigin = false },
    { "giratina/forms/origin", "ICON_GIRATINA_ORIGIN", .isGiratinaOrigin = true  },
    { "shaymin/forms/sky",     "ICON_SHAYMIN_SKY",     .isGiratinaOrigin = false },
    { "rotom/forms/heat",      "ICON_ROTOM_HEAT",      .isGiratinaOrigin = false },
    { "rotom/forms/wash",      "ICON_ROTOM_WASH",      .isGiratinaOrigin = false },
    { "rotom/forms/frost",     "ICON_ROTOM_FROST",     .isGiratinaOrigin = false },
    { "rotom/forms/fan",       "ICON_ROTOM_FAN",       .isGiratinaOrigin = false },
    { "rotom/forms/mow",       "ICON_ROTOM_MOW",       .isGiratinaOrigin = false },
};

#define NATIONAL_DEX_MAX SPECIES_EGG // NOTE: This is distinct from NATIONAL_DEX_COUNT

// Per-species Pokédex data. The Pokédex archives are built from this after
// every species is read: zukan_data.narc swaps Giratina's entry for its Origin
// Forme's.
typedef struct DexData {
    u32   height; // decimeters
    u32   weight; // hectograms
    u8    bodyShape;
    u8    types[2];
    u16   trainerScaleF;
    u16   pokemonScaleF;
    u16   trainerScaleM;
    u16   pokemonScaleM;
    u16   trainerPosF;
    u16   pokemonPosF;
    u16   trainerPosM;
    u16   pokemonPosM;
    char *name; // English, for sorting by name
} DexData;

static DexData           dexData[NATIONAL_DEX_MAX];
static DexData           giratinaOrigin;
static SpeciesPalPark    palPark[NATIONAL_DEX_MAX - 1]; // SPECIES_NONE has no entry
static SpeciesSpriteData spriteData[NATIONAL_DEX_MAX];

static u16   *tutorMoves    = NULL;
static size_t numTutorMoves = 0;
static u16   *sinnohDex     = NULL;
static size_t sinnohDexLen  = 0;

static bool IsNationalDex(size_t i) { return i < NATIONAL_DEX_MAX; }
static bool IsBaseSpecies(size_t i) { return i <= SPECIES_BAD_EGG; }
static bool IsForm(size_t i)        { return i >= SPECIES_EGG;     }
static bool HasTutorSet(size_t i)   { return i != SPECIES_NONE && i != SPECIES_EGG && i != SPECIES_BAD_EGG; }

static void LoadTutorMoves(void)
{
    dp_file      *file  = Driver_Load("%s", tutorsFile);
    const dp_node moves = dp_root(file);

    numTutorMoves = dp_arr_len(moves);
    tutorMoves    = Zalloc(numTutorMoves, sizeof(*tutorMoves));

    for (dp_each(tutor, i, moves)) {
        const dp_node move     = dp_lookup_at(tutor, ".move", L_MOVE);
        const dp_node location = dp_lookup_at(tutor, ".location", L_TUTOR_LOCATION);
        const u8      red      = dp_u8_at(tutor, ".redCost");
        const u8      blue     = dp_u8_at(tutor, ".blueCost");
        const u8      yellow   = dp_u8_at(tutor, ".yellowCost");
        const u8      green    = dp_u8_at(tutor, ".greenCost");

        tutorMoves[i] = dp_u16(move);
        TextFile_Printf(F_TUTORABLE_MOVES, "    { %s, %u, %u, %u, %u, %s },\n",
                        Symbol_Name(move), red, blue, yellow, green,
                        Symbol_Name(location));
    }

    Driver_Close(file);
}

static void LoadSinnohDex(void)
{
    dp_file      *file    = Driver_Load("%s", sinnohFile);
    const dp_node species = dp_root(file);
    sinnohDex = Zalloc(dp_arr_len(species), sizeof(*sinnohDex));

    for (dp_each(entry, i, species)) {
        u16 id = dp_u16(dp_lookup(entry, L_SPECIES));
        switch (id) {
        // MATCH DETAIL: These species are not included in the Sinnoh dex size.
        case SPECIES_NONE:
        case SPECIES_ARCEUS:
        case SPECIES_EGG:
        case SPECIES_BAD_EGG:
            break;

        default:
            sinnohDex[sinnohDexLen++] = id;
            break;
        }
    }

    Driver_Close(file);
}

static void ProcTMLearnset(dp_node root, SpeciesData *personal)
{
    for (dp_each(tm, i, dp_at(root, ".learnset.by_tm"))) {
        const char *marker = dp_string(tm);
        if (marker == NULL) continue; // error is already staged

        char *end   = NULL;
        bool  isTM  = marker[0] == 'T' && marker[1] == 'M';
        bool  isHM  = marker[0] == 'H' && marker[1] == 'M';
        long  value = isTM || isHM ? strtol(marker + 2, &end, 10) : 0;
        if (value < 1 || *end != '\0' || value > (isTM ? NUM_TMS : NUM_HMS)) {
            dp_error(tm, "expected entry to be a valid TM or HM marker");
            continue;
        }

        size_t bit = (size_t)(value - 1) + (isHM ? NUM_TMS : 0);
        personal->tmLearnsetMasks[bit / 32] |= 1u << (bit % 32);
    }
}

static SpeciesData ProcPersonal(dp_node root)
{
    SpeciesData personal = {
        .baseStats = {
            .hp        = dp_u8_at(root, ".base_stats.hp"),
            .attack    = dp_u8_at(root, ".base_stats.attack"),
            .defense   = dp_u8_at(root, ".base_stats.defense"),
            .speed     = dp_u8_at(root, ".base_stats.speed"),
            .spAttack  = dp_u8_at(root, ".base_stats.special_attack"),
            .spDefense = dp_u8_at(root, ".base_stats.special_defense"),
        },

        .types = {
            dp_u8(dp_lookup_at(root, ".types[0]", L_TYPE)),
            dp_u8(dp_lookup_at(root, ".types[1]", L_TYPE)),
        },

        .abilities = {
            dp_u8(dp_lookup_at(root, ".abilities[0]", L_ABILITY)),
            dp_u8(dp_lookup_at(root, ".abilities[1]", L_ABILITY)),
        },

        .evYields = {
            .hp        = dp_bits_at(root, ".ev_yields.hp", 2),
            .attack    = dp_bits_at(root, ".ev_yields.attack", 2),
            .defense   = dp_bits_at(root, ".ev_yields.defense", 2),
            .speed     = dp_bits_at(root, ".ev_yields.speed", 2),
            .spAttack  = dp_bits_at(root, ".ev_yields.special_attack", 2),
            .spDefense = dp_bits_at(root, ".ev_yields.special_defense", 2),
        },

        .wildHeldItems = {
            .common = dp_u16(dp_lookup_at(root, ".held_items.common", L_ITEM)),
            .rare   = dp_u16(dp_lookup_at(root, ".held_items.rare", L_ITEM)),
        },

        .eggGroups = {
            dp_u8(dp_lookup_at(root, ".egg_groups[0]", L_EGG_GROUP)),
            dp_u8(dp_lookup_at(root, ".egg_groups[1]", L_EGG_GROUP)),
        },

        .baseExpReward  = dp_u8_at(root, ".base_exp_reward"),
        .baseFriendship = dp_u8_at(root, ".base_friendship"),
        .bodyColor      = dp_bits(dp_lookup_at(root, ".body_color", L_COLOR), 7),
        .catchRate      = dp_u8_at(root, ".catch_rate"),
        .expRate        = dp_u8(dp_lookup_at(root, ".exp_rate", L_EXP_RATE)),
        .flipSprite     = dp_bool_at(root, ".flip_sprite"),
        .genderRatio    = dp_u8(dp_lookup_at(root, ".gender_ratio", L_GENDER_RATIO)),
        .hatchCycles    = dp_u8_at(root, ".hatch_cycles"),
        .safariFleeRate = dp_u8_at(root, ".safari_flee_rate"),
    };

    ProcTMLearnset(root, &personal);
    Archive_Pack(A_PERSONAL, &personal, sizeof(personal));
    return personal;
}

typedef struct SpeciesEvolutionList {
    SpeciesEvolution data[MAX_EVOLUTIONS] ALIGN_4;
} SpeciesEvolutionList;

static void ProcEvolutions(dp_node root)
{
    SpeciesEvolutionList list       = { 0 };
    const dp_node        evolutions = dp_at(root, ".evolutions");

    if (dp_arr_len(evolutions) > MAX_EVOLUTIONS) {
        dp_warn(evolutions, "more than %d evolutions defined; the rest will be ignored!", MAX_EVOLUTIONS);
    }

    for (dp_each(entry, i, evolutions)) {
        if (i == MAX_EVOLUTIONS) break;

        const dp_node method = dp_lookup(dp_arr_at(entry, 0), L_EVO_METHOD);
        if (dp_type_of(method) != DP_SYMBOL) continue; // error is already staged

        u16     param   = 0;
        dp_node species = { 0 }; // reads as SPECIES_NONE
        switch ((enum EvolutionMethod)dp_u16(method)) {
        case EVO_NONE:
        case EVO_LEVEL_HAPPINESS:
        case EVO_LEVEL_HAPPINESS_DAY:
        case EVO_LEVEL_HAPPINESS_NIGHT:
        case EVO_TRADE:
        case EVO_LEVEL_MAGNETIC_FIELD:
        case EVO_LEVEL_MOSS_ROCK:
        case EVO_LEVEL_ICE_ROCK:
            species = dp_lookup(dp_arr_at(entry, 1), L_SPECIES);
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
            param   = dp_u16(dp_arr_at(entry, 1));
            species = dp_lookup(dp_arr_at(entry, 2), L_SPECIES);
            break;

        case EVO_TRADE_WITH_HELD_ITEM:
        case EVO_USE_ITEM:
        case EVO_USE_ITEM_MALE:
        case EVO_USE_ITEM_FEMALE:
        case EVO_LEVEL_WITH_HELD_ITEM_DAY:
        case EVO_LEVEL_WITH_HELD_ITEM_NIGHT:
            param   = dp_u16(dp_lookup(dp_arr_at(entry, 1), L_ITEM));
            species = dp_lookup(dp_arr_at(entry, 2), L_SPECIES);
            break;

        case EVO_LEVEL_KNOW_MOVE:
            param   = dp_u16(dp_lookup(dp_arr_at(entry, 1), L_MOVE));
            species = dp_lookup(dp_arr_at(entry, 2), L_SPECIES);
            break;

        case EVO_LEVEL_SPECIES_IN_PARTY:
            param   = dp_u16(dp_lookup(dp_arr_at(entry, 1), L_SPECIES));
            species = dp_lookup(dp_arr_at(entry, 2), L_SPECIES);
            break;

        default:
            // NOTE: This is a sanity-check for users that add a new EvolutionMethod
            // but fail to add a case to this switch.
            dp_error(method, "no handler implemented for EvolutionMethod member '%s'", dp_string(method));
            break;
        }

        list.data[i] = (SpeciesEvolution){
            .method        = dp_u16(method),
            .param         = param,
            .targetSpecies = dp_u16(species),
        };
    }

    Archive_Pack(A_EVOLUTIONS, &list, sizeof(list));
}

static void ProcLevelLearnset(dp_node root)
{
    SpeciesLearnset data     = { 0 };
    size_t          count    = 0;
    const dp_node   learnset = dp_at(root, ".learnset.by_level");

    if (dp_arr_len(learnset) > MAX_LEARNSET_ENTRIES) {
        dp_warn(learnset, "more than %d level-up moves defined; the rest will be ignored!", MAX_LEARNSET_ENTRIES);
    }

    for (dp_each(entry, i, learnset)) {
        if (i == MAX_LEARNSET_ENTRIES) break;

        data.entries[count++] = (SpeciesLearnsetEntry){
            .move  = dp_bits(dp_lookup(dp_arr_at(entry, 1), L_MOVE), 9),
            .level = dp_bits(dp_arr_at(entry, 0), 7),
        };
    }

    data.entries[count++] = (SpeciesLearnsetEntry){ .move = 0x1FF, .level = 0x7F }; // terminator

    size_t size = count * sizeof(*data.entries);
    Archive_Pack(A_LEVEL_LEARNSETS, &data, size + (-size & 3));
}

static void ProcPalPark(dp_node root, size_t species)
{
    const dp_node show = dp_at(root, ".catching_show");
    palPark[species - 1] = (SpeciesPalPark){
        .landArea       = dp_u8(dp_lookup_at(show, ".pal_park_land_area", L_PAL_PARK_LAND)),
        .waterArea      = dp_u8(dp_lookup_at(show, ".pal_park_water_area", L_PAL_PARK_WATER)),
        .catchingPoints = dp_u8_at(show, ".catching_points"),
        .rarity         = dp_u8_at(show, ".rarity"),
        .unused.asU16   = dp_u16_at(show, ".unused"),
    };
}

#define M_TO_IN(m)   (long)round((double)(m) * 39.37)
#define IN_TO_M(in)  (round((double)(in) / 3.937) / 10.0)
#define KG_TO_LB(kg) ((kg) / 0.45359237)
#define LB_TO_KG(lb) ((lb) * 0.45359237)

static double WeightRoundingOverride(size_t species)
{
    // The Generation 3 games used an inaccurate factor to convert from the
    // metric values stored in ROM to the imperial values displayed in the US
    // release's Pokedex. The species listed below thus had incorrect imperial
    // weights, and these incorrect weights propagated into Generation 4. The
    // incorrect values were not corrected until Generation 8 (Sword & Shield).
    switch (species) {
    case SPECIES_MR_MIME:
    case SPECIES_FURRET:
    case SPECIES_PORYGON2:
    case SPECIES_LINOONE:
    case SPECIES_LOMBRE:
    case SPECIES_TORKOAL:
    case SPECIES_RAYQUAZA:
        return -0.1;

    default: return 0.0;
    }
}

// Read possible units, preferring metric over imperial.
static dp_node ReadUnits(dp_node dex, const char *metric, const char *imperial, const char *what, bool *isMetric)
{
    const dp_node m = dp_try(dex, metric);
    const dp_node i = dp_try(dex, imperial);
    *isMetric       = !dp_missing(m);

    if (*isMetric && !dp_missing(i)) {
        dp_warn(dex, "conflicting unit-systems given for species %s; metric units will be used", what);
        dp_note(m, "metric units defined here");
        dp_note(i, "imperial units defined here");
    }

    return *isMetric ? m : dp_at(dex, imperial);
}

static double ReadHeight(dp_node dex)
{
    bool    isMetric = false;
    dp_node height   = ReadUnits(dex, ".height_meters", ".height_inches", "height", &isMetric);
    return isMetric ? dp_float(height) : IN_TO_M(dp_u32(height));
}

static double ReadWeight(dp_node dex, size_t species)
{
    bool    isMetric = false;
    dp_node weight   = ReadUnits(dex, ".weight_kilograms", ".weight_pounds", "weight", &isMetric);;
    return isMetric ? dp_float(weight) : LB_TO_KG(dp_float(weight) - WeightRoundingOverride(species));
}

static DexData ReadDexData(dp_node dex, size_t species)
{
    const double meters = ReadHeight(dex);
    const double kilos  = ReadWeight(dex, species);

    return (DexData){
        .height        = (u32)round(meters * 10),
        .weight        = (u32)round(kilos * 10),
        .bodyShape     = dp_u8(dp_lookup_at(dex, ".body_shape", L_BODY_SHAPE)),
        .trainerScaleF = dp_u16_at(dex, ".trainer_scale_f"),
        .pokemonScaleF = dp_u16_at(dex, ".pokemon_scale_f"),
        .trainerScaleM = dp_u16_at(dex, ".trainer_scale_m"),
        .pokemonScaleM = dp_u16_at(dex, ".pokemon_scale_m"),
        .trainerPosF   = dp_u16_at(dex, ".trainer_pos_f"),
        .pokemonPosF   = dp_u16_at(dex, ".pokemon_pos_f"),
        .trainerPosM   = dp_u16_at(dex, ".trainer_pos_m"),
        .pokemonPosM   = dp_u16_at(dex, ".pokemon_pos_m"),
    };
}

static void ProcDexData(dp_node root, size_t species, const SpeciesData *personal, const char *name)
{
    const dp_node dex = dp_at(root, ".pokedex_data");

    dexData[species]          = ReadDexData(dex, species);
    dexData[species].types[0] = personal->types[0];
    dexData[species].types[1] = personal->types[1];
    dexData[species].name     = Driver_Keep(String_Dupe(name != NULL ? name : "")); // NULL only after a staged error

    // The Origin Forme's types come from its own data, read after every species.
    if (species == SPECIES_GIRATINA) {
        giratinaOrigin      = ReadDexData(dp_at(dex, ".origin_forme"), species);
        giratinaOrigin.name = dexData[species].name;
    }
}

static void ProcSpriteOffsets(dp_node sprite, size_t species, enum GenderRatio ratio)
{
    if (species == SPECIES_NONE) ratio = GENDER_RATIO_FEMALE_50;

    const bool hasMale   = ratio != GENDER_RATIO_FEMALE_ONLY;
    const bool hasFemale = ratio != GENDER_RATIO_MALE_ONLY && ratio != GENDER_RATIO_NO_GENDER;
    const u8   backF     = hasFemale ? dp_u8_at(sprite, ".back.y_offset.female") : 0;
    const u8   backM     = hasMale ? dp_u8_at(sprite, ".back.y_offset.male") : 0;
    const u8   frontF    = hasFemale ? dp_u8_at(sprite, ".front.y_offset.female") : 0;
    const u8   frontM    = hasMale ? dp_u8_at(sprite, ".front.y_offset.male") : 0;

    // Each species has 4 members; a gender the species can't have gets an empty one.
    Archive_Pack(A_SPRITE_OFFSETS, &backF,  hasFemale ? sizeof(backF)  : 0);
    Archive_Pack(A_SPRITE_OFFSETS, &backM,  hasMale   ? sizeof(backM)  : 0);
    Archive_Pack(A_SPRITE_OFFSETS, &frontF, hasFemale ? sizeof(frontF) : 0);
    Archive_Pack(A_SPRITE_OFFSETS, &frontM, hasMale   ? sizeof(frontM) : 0);
}

static SpeciesSpriteAnim ReadSpriteAnim(dp_node face)
{
    SpeciesSpriteAnim anim = {
        .animation  = dp_u8_at(face, ".animation"),
        .cryDelay   = dp_u8_at(face, ".cry_delay"),
        .startDelay = dp_u8_at(face, ".start_delay"),
    };

    const dp_node frames = dp_at(face, ".frames");
    if (dp_arr_len(frames) > MAX_ANIMATION_FRAMES) {
        dp_warn(frames, "more than %d animation frames defined; the rest will be ignored!", MAX_ANIMATION_FRAMES);
    }

    for (dp_each(frame, i, frames)) {
        if (i == MAX_ANIMATION_FRAMES) break;

        anim.frames[i] = (SpriteAnimFrame){
            .spriteFrame = dp_s8_at(frame, ".sprite_frame"),
            .frameDelay  = dp_u8_at(frame, ".frame_delay"),
            .xOffset     = dp_s8_at(frame, ".x_shift"),
            .yOffset     = dp_s8_at(frame, ".y_shift"),
        };
    }

    return anim;
}

static void ProcSpriteData(dp_node sprite, size_t species)
{
    spriteData[species] = (SpeciesSpriteData){
        .faceAnims     = {
            [0] = ReadSpriteAnim(dp_at(sprite, ".front")),
            [1] = ReadSpriteAnim(dp_at(sprite, ".back")),
        },
        .yOffset       = dp_s8_at(sprite, ".front.addl_y_offset"),
        .xOffsetShadow = dp_s8_at(sprite, ".shadow.x_offset"),
        .shadowSize    = dp_u8(dp_lookup_at(sprite, ".shadow.size", L_SHADOW_SIZE)),
    };
}

static void EmitTutorLearnset(dp_node root)
{
    size_t count = (numTutorMoves + 7) / 8;
    u8    *set   = Zalloc(count, sizeof(*set));

    for (dp_each(move, i, dp_at(root, ".learnset.by_tutor"))) {
        const dp_node id = dp_lookup(move, L_MOVE);
        if (dp_type_of(id) != DP_SYMBOL) continue; // error is already staged

        size_t j = 0;
        while (j < numTutorMoves && tutorMoves[j] != dp_u16(id)) j++;

        if (j < numTutorMoves) set[j / 8] |= (u8)(1 << (j % 8));
        else dp_warn(move, "'%s' is not available from any move tutors and will be skipped", dp_string(move));
    }

    TextFile_Printf(F_LEARNSETS_BY_TUTOR, "    { ");
    for (size_t i = 0; i < count; i++) TextFile_Printf(F_LEARNSETS_BY_TUTOR, "0x%02X, ", set[i]);
    TextFile_Printf(F_LEARNSETS_BY_TUTOR, "},\n");
    free(set);
}

static void EmitEggMoves(dp_node root, const char *name)
{
    const dp_node moves = dp_try(root, ".learnset.egg_moves");
    if (dp_missing(moves)) return;

    TextFile_Printf(F_EGG_MOVES, "    %s + EGG_MOVES_SPECIES_OFFSET,\n", name);
    for (dp_each(move, i, moves)) {
        TextFile_Printf(F_EGG_MOVES, "    %s,\n", Symbol_Name(dp_lookup(move, L_MOVE)));
    }

    TextFile_Printf(F_EGG_MOVES, "\n");
}

static void EmitFootprint(dp_node root, size_t species, const char *name)
{
    const dp_node size = dp_lookup_at(root, ".footprint.size", L_FOOTPRINT_SIZE);
    const dp_node type = dp_lookup_at(root, ".footprint.type", L_FOOTPRINT_TYPE);
    const bool    has  = dp_bool_at(root, ".footprint.has");

    TextFile_Printf(F_FOOTPRINT_SIZES, "    { %s, %s },\n",
                    has ? "TRUE" : "FALSE", Symbol_Name(size));
    TextFile_Printf(F_FOOTPRINT_TYPES, "    [%s] = { %s, %s },\n",
                    name, Symbol_Name(type),
                    has || species == SPECIES_SPIRITOMB ? "TRUE" : "FALSE");
}

static void EmitIconPalettes(dp_node root, const char *icon, const char *stem)
{
    const dp_node palette = dp_at(root, ".icon_palette");
    if (dp_type_of(palette) == DP_INT) {
        TextFile_Printf(F_ICON_PALETTES, "    [%s] = %ld,\n", icon, (long)dp_int(palette));
        return;
    }

    // Must be an array of tuples like: [form_name, palette_index]
    for (dp_each(entry, i, palette)) {
        const char *form  = dp_string(dp_arr_at(entry, 0));
        const long  index = (long)dp_int(dp_arr_at(entry, 1));
        if (form == NULL) continue; // error is already staged

        if (strcmp(form, "base") == 0) {
            TextFile_Printf(F_ICON_PALETTES, "    [%s] = %ld,\n", icon, index);
        } else {
            char *stemUpper = String_ToUpper(stem);
            char *formUpper = String_ToUpper(form);
            TextFile_Printf(F_ICON_PALETTES, "    [ICON_%s_%s] = %ld,\n", stemUpper, formUpper, index);

            free(formUpper);
            free(stemUpper);
        }
    }
}

#define THIN_SPACE         "\xE2\x80\x89"
#define WIDE_NUM_PREFIX    "\xEF\xBC"
#define WIDE_NUM_DIGIT0(i) (char)(0x90 + i / 100)
#define WIDE_NUM_DIGIT1(i) (char)(0x90 + i / 10 % 10)
#define WIDE_NUM_DIGIT2(i) (char)(0x90 + i % 10)

static void ProcLanguageText(dp_node locale, size_t species, const char *stem, size_t lang)
{
    const char *code     = languages[lang].key;
    const char *category = dp_string_at(locale, ".category");

    if (species == SPECIES_NONE) {
        TextBank_PushGarbage(languages[lang].entryBank, 0, "species_pokedex_entry_%s_%s", code, stem);
    } else {
        TextBank_PushNode(languages[lang].entryBank, dp_at(locale, ".entry_text"),
                          "species_pokedex_entry_%s_%s", code, stem);
    }

    TextBank_PushString(languages[lang].categoryBank, category, "species_category_%s_%s", code, stem);
    if (languages[lang].isGameLanguage) {
        TextBank_PushString(T_CATEGORY, category, "species_category_%s", stem);
    }

    const dp_node nameNode = dp_at(locale, ".name");
    const char   *name     = dp_string(nameNode);
    if (name == NULL) return; // error is already staged

    if (String_CountChars(name) > MON_NAME_LEN) {
        dp_warn(nameNode, "name is longer than %d characters; the game will truncate it", MON_NAME_LEN);
    }

    char *numbered = NULL;
    if (species == SPECIES_NONE) {
        numbered = String_Format("%s", name);
    } else if (languages[lang].wideNumber) {
        // Full-width digits: U+FF10 + d, encoded as EF BC (90 + d).
        numbered = String_Format(WIDE_NUM_PREFIX "%c" WIDE_NUM_PREFIX "%c" WIDE_NUM_PREFIX "%c  %s",
                                 WIDE_NUM_DIGIT0(species),
                                 WIDE_NUM_DIGIT1(species),
                                 WIDE_NUM_DIGIT2(species),
                                 name);
    } else {
        numbered = String_Format("%03zu  %s", species, name);
    }

    TextBank_PushString(languages[lang].numberedBank, numbered,
                        "species_name_with_natdex_number_%s_%s", code, stem);
    free(numbered);
}

// Left-pads `text` with thin spaces (U+2009) to `width` bytes.
static char* PadThin(const char *text, size_t width)
{
    size_t length = strlen(text);
    size_t pad    = length < width ? width - length : 0;
    char  *padded = Zalloc(3 * pad + length + 1, 1);

    for (size_t i = 0; i < pad; i++) memcpy(padded + 3 * i, THIN_SPACE, 3);
    memcpy(padded + 3 * pad, text, length);
    return padded;
}

static char* FormatWeight(u32 hectograms, size_t species)
{
    char number[16];
    snprintf(number, sizeof(number), "%.1f", KG_TO_LB(hectograms / 10.0) + WeightRoundingOverride(species));

    char *padded = PadThin(number, 6);
    char *weight = String_Format("%s lbs.", padded);
    free(padded);
    return weight;
}

static char* FormatHeight(u32 decimeters)
{
    long inches = M_TO_IN(decimeters / 10.0);
    char height[32];
    snprintf(height, sizeof(height), "%01ld’%02ld”", inches / 12, inches % 12);

    // Up to 3 digits of feet, 2 of inches, and 3 bytes for each unit marker.
    return PadThin(height, 3 + 2 + 3 + 3);
}

static void ProcMeasurementText(size_t species, const char *stem)
{
    if (species == SPECIES_NONE) {
        TextBank_PushString(T_WEIGHTS_WITH_GIRA_ALTERED, "????.? lbs.", "species_weight_gira_%s", stem);
        TextBank_PushString(T_WEIGHTS_WITH_GIRA_ORIGIN,  "????.? lbs.", "species_weight_%s", stem);
        TextBank_PushString(T_HEIGHTS_WITH_GIRA_ALTERED, "???’??”", "species_height_gira_%s", stem);
        TextBank_PushString(T_HEIGHTS_WITH_GIRA_ORIGIN,  "???’??”", "species_height_%s", stem);
        return;
    }

    const DexData *origin = species == SPECIES_GIRATINA ? &giratinaOrigin : &dexData[species];
    char          *text[] = {
        FormatWeight(dexData[species].weight, species),
        FormatWeight(origin->weight, species),
        FormatHeight(dexData[species].height),
        FormatHeight(origin->height),
    };

    TextBank_PushString(T_WEIGHTS_WITH_GIRA_ALTERED, text[0], "species_weight_gira_%s", stem);
    TextBank_PushString(T_WEIGHTS_WITH_GIRA_ORIGIN,  text[1], "species_weight_%s", stem);
    TextBank_PushString(T_HEIGHTS_WITH_GIRA_ALTERED, text[2], "species_height_gira_%s", stem);
    TextBank_PushString(T_HEIGHTS_WITH_GIRA_ORIGIN,  text[3], "species_height_%s", stem);
    for (size_t i = 0; i < NELEMS(text); i++) free(text[i]);
}

static void ProcText(dp_node root, size_t species, const char *stem, const char *name)
{
    if (name == NULL) return; // error is already staged

    TextBank_PushString(T_NAMES, species != SPECIES_NONE ? name : "-----", "species_name_%s", stem);
    if (species == SPECIES_NONE) {
        TextBank_PushGarbage(T_NAMES_WITH_ARTICLES, 0, "species_name_with_articles_%s", stem);
    } else {
        const char *article = name[0] != '\0' && strchr("AEIOU", name[0]) ? "an" : "a";
        char       *text    = String_Format("%s {COLOR 255}%s{COLOR 0}", article, name);
        TextBank_PushString(T_NAMES_WITH_ARTICLES, text, "species_name_with_articles_%s", stem);
        free(text);
    }

    if (IsForm(species)) return;

    const dp_node dex = dp_at(root, ".pokedex_data");
    for (size_t i = 0; i < NELEMS(languages); i++) {
        char *path = String_Format(".%s", languages[i].key);
        ProcLanguageText(dp_at(dex, path), species, stem, i);
        free(path);
    }

    ProcMeasurementText(species, stem);
}

// `name` is the raw constant: `SPECIES_...` for species, `ICON_...` for alternate forms
static SpeciesData ProcSpecies(dp_node root, size_t i, const char *stem, const char *name)
{
    const SpeciesData personal = ProcPersonal(root);
    const char       *dexName  = IsBaseSpecies(i) ? dp_string_at(root, ".pokedex_data.en.name") : NULL;
    ProcEvolutions(root);
    ProcLevelLearnset(root);

    u16 offspring = IsBaseSpecies(i) ? dp_u16(dp_lookup_at(root, ".offspring", L_SPECIES)) : (u16)i;
    BinaryFile_Write(B_OFFSPRING, &offspring, sizeof(offspring));

    if (IsNationalDex(i)) {
        if (i != SPECIES_NONE) ProcPalPark(root, i);
        ProcDexData(root, i, &personal, dexName);

        dp_file *sprite = Driver_Load("%s/%s/sprite_data.json", baseDir, stem);
        ProcSpriteOffsets(dp_root(sprite), i, personal.genderRatio);
        ProcSpriteData(dp_root(sprite), i);
        Driver_Close(sprite);
    }

    if (HasTutorSet(i)) EmitTutorLearnset(root);

    EmitEggMoves(root, name);
    if (IsNationalDex(i)) EmitFootprint(root, i, name);

    switch (i) {
    case SPECIES_EGG:     EmitIconPalettes(root, "ICON_EGG", stem);         break;
    case SPECIES_BAD_EGG: EmitIconPalettes(root, "ICON_MANAPHY_EGG", stem); break;
    default:              EmitIconPalettes(root, name, stem);               break;
    }

    if (IsBaseSpecies(i)) ProcText(root, i, stem, dexName);
    return personal;
}

static void PackField(int archive, const DexData *data, size_t offset, size_t size)
{
    u8 *buf = Zalloc(NATIONAL_DEX_MAX, size);
    for (size_t i = 0; IsNationalDex(i); i++) memcpy(buf + i * size, (const u8 *)&data[i] + offset, size);

    Archive_Pack(archive, buf, NATIONAL_DEX_MAX * size);
    free(buf);
}

#define PACK_FIELD(archive, data, field) PackField(archive, data, offsetof(DexData, field), sizeof(((DexData *)0)->field))

// Data compared by sorts below. Kept as a global to avoid a full copy before each qsort.
static const DexData *sorting = NULL;

static int ByName(const void *l, const void *r)
{
    return strcmp(sorting[*(const u16 *)l].name, sorting[*(const u16 *)r].name);
}

// Ties are broken by species, ascending.
static int Compare(u16 a, u16 b, u32 x, u32 y, int direction)
{
    int c = (x > y) - (x < y);
    return c != 0 ? direction * c : (a > b) - (a < b);
}

static int ByWeightDesc(const void *l, const void *r)
{
    u16 a = *(const u16 *)l, b = *(const u16 *)r;
    return Compare(a, b, sorting[a].weight, sorting[b].weight, -1);
}

static int ByWeightAsc(const void *l, const void *r)
{
    u16 a = *(const u16 *)l, b = *(const u16 *)r;
    return Compare(a, b, sorting[a].weight, sorting[b].weight, 1);
}

static int ByHeightDesc(const void *l, const void *r)
{
    u16 a = *(const u16 *)l, b = *(const u16 *)r;
    return Compare(a, b, sorting[a].height, sorting[b].height, -1);
}

static int ByHeightAsc(const void *l, const void *r)
{
    u16 a = *(const u16 *)l, b = *(const u16 *)r;
    return Compare(a, b, sorting[a].height, sorting[b].height, 1);
}

// Sorts every National Pokédex species (without SPECIES_NONE) into `list`.
static void SortSpecies(const DexData *data, int (*compare)(const void *, const void *), u16 *list)
{
    for (size_t i = 0; i < NATIONAL_DEX_MAX - 1; i++) list[i] = (u16)(i + 1);

    sorting = data;
    qsort(list, NATIONAL_DEX_MAX - 1, sizeof(*list), compare);
}

static void PackDexData(int archive, const DexData *data)
{
    // Files 0 through 10: per-species data
    PACK_FIELD(archive, data, height);
    PACK_FIELD(archive, data, weight);
    PACK_FIELD(archive, data, bodyShape);
    PACK_FIELD(archive, data, trainerScaleF);
    PACK_FIELD(archive, data, pokemonScaleF);
    PACK_FIELD(archive, data, trainerScaleM);
    PACK_FIELD(archive, data, pokemonScaleM);
    PACK_FIELD(archive, data, trainerPosF);
    PACK_FIELD(archive, data, pokemonPosF);
    PACK_FIELD(archive, data, trainerPosM);
    PACK_FIELD(archive, data, pokemonPosM);

    // Files 11 and 12: listings of the National and Sinnoh Pokédexes
    u16 list[NATIONAL_DEX_MAX - 1];
    for (size_t i = 0; i < NELEMS(list); i++) list[i] = (u16)(i + 1);
    Archive_Pack(archive, list, sizeof(list));
    Archive_Pack(archive, sinnohDex, sinnohDexLen * sizeof(*sinnohDex));

    // Files 13 through 17: species sorted by name, weight, and height
    int (*sorts[])(const void *, const void *) = { ByName, ByWeightDesc, ByWeightAsc, ByHeightDesc, ByHeightAsc };
    for (size_t i = 0; i < NELEMS(sorts); i++) {
        SortSpecies(data, sorts[i], list);
        Archive_Pack(archive, list, sizeof(list));
    }

    // Files 18 through 26: species whose names begin with one of 3 letters (ABC, DEF, ...)
    SortSpecies(data, ByName, list);
    size_t i = 0;
    for (const char *last = "CFILORUXZ"; *last != '\0'; last++) {
        size_t start = i;
        while (i < NELEMS(list) && data[list[i]].name[0] <= *last) i++;
        Archive_Pack(archive, list + start, (i - start) * sizeof(*list));
    }

    // Files 27 through 44: species by type, without the Mystery type
    for (u8 type = 0; type < NUM_POKEMON_TYPES; type++) {
        if (type == TYPE_MYSTERY) continue;

        size_t count = 0;
        for (u16 s = 1; IsNationalDex(s); s++) {
            if (data[s].types[0] == type || data[s].types[1] == type) list[count++] = s;
        }
        Archive_Pack(archive, list, count * sizeof(*list));
    }

    // Files 45 through 58: species by body shape
    for (u8 shape = 0; shape < NUM_BODY_SHAPES; shape++) {
        size_t count = 0;
        for (u16 s = 1; IsNationalDex(s); s++) {
            if (data[s].bodyShape == shape) list[count++] = s;
        }
        Archive_Pack(archive, list, count * sizeof(*list));
    }
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);
    LoadTutorMoves();
    LoadSinnohDex();

    for (EachEntry(entry, Entries_FromEnum(enumFile, "Species", "SPECIES_", "%s/%s/data.json", baseDir))) {
        ProcSpecies(entry.root, entry.index, entry.stem, entry.name);
    }

    for (size_t i = 0; i < NELEMS(altFormsWithData); i++) {
        dp_file          *file     = Driver_Load("%s/%s/data.json", baseDir, altFormsWithData[i].dir);
        const SpeciesData personal = ProcSpecies(dp_root(file), SPECIES_BAD_EGG + 1 + i,
                                                 altFormsWithData[i].dir, altFormsWithData[i].icon);
        Driver_Close(file);

        if (altFormsWithData[i].isGiratinaOrigin) {
            giratinaOrigin.types[0] = personal.types[0];
            giratinaOrigin.types[1] = personal.types[1];
        }
    }

    PackDexData(A_POKEDEX_GIRA_ALTERED, dexData);

    DexData origin[NATIONAL_DEX_MAX];
    memcpy(origin, dexData, sizeof(origin));
    origin[SPECIES_GIRATINA] = giratinaOrigin;
    PackDexData(A_POKEDEX_GIRA_ORIGIN, origin);

    Archive_Pack(A_PAL_PARK, palPark, sizeof(palPark));
    Archive_Pack(A_SPRITE_DATA, spriteData, sizeof(spriteData));
    return Driver_Finish(&driver);
}
