#include <stddef.h>
#include <stdlib.h>

#include "common.h"
#include "dataproc.h"
#include "game_types.h"

#include "constants/wild_encounters.h"
#include "struct_defs/wild_encounters.h"

static const char *inputFile  = NULL;

enum { B_ENCOUNTERS };

#define L_SPECIES "enum Species"

static void HandleOutfile(const char *arg);

static Driver driver = {
    .depfile = "encounterproc.d",

    .options = (Option[]) {
        POSITIONAL        ("ENCOUNTER_JSON", &inputFile,    "Path to the input encounters.json file."),
        POSITIONAL_HANDLER("OUTFILE",        HandleOutfile, "Stem name for the output binary."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/species.h", L_SPECIES),
        { 0 },
    },

    .outputs = {
        .binaryFiles = (BinaryFile[]) {
            [B_ENCOUNTERS] = { .filename = "" },
            { 0 },
        },
    },
};

static void HandleOutfile(const char *arg)
{
    driver.outputs.binaryFiles[B_ENCOUNTERS].filename = arg;
}

static inline u32 ClampCount(dp_node array, size_t max)
{
    size_t count = dp_arr_len(array);
    if (count > max) {
        dp_warn(array, "array has length greater than %zu", max);
        count = max;
    }

    return count;
}

static GrassEncounters ProcLandEncounters(dp_node root)
{
    GrassEncounters result = {
        .encounterRate = dp_s32_at(root, ".land_rate"),
    };

    dp_node node  = dp_at(root, ".land_encounters");
    u32     count = ClampCount(node, MAX_GRASS_ENCOUNTERS);

    for (size_t i = 0; i < count; i++) {
        GrassEncounter *slot  = &result.encounters[i];
        dp_node         entry = dp_arr_at(node, i);

        slot->level   = dp_s8_at(entry, ".level");
        slot->species = dp_int(dp_lookup_at(entry, ".species", L_SPECIES));
    }

    return result;
}

static WaterEncounters ProcWaterEncounters(dp_node root, const char *type)
{
    char *keyRate       = String_Format("%s_rate",       type);
    char *keyEncounters = String_Format("%s_encounters", type);

    WaterEncounters result = {
        .encounterRate = dp_s32_at(root, keyRate),
    };

    dp_node node  = dp_at(root, keyEncounters);
    u32     count = ClampCount(node, MAX_WATER_ENCOUNTERS);

    for (size_t i = 0; i < count; i++) {
        WaterEncounter *slot  = &result.encounters[i];
        dp_node         entry = dp_arr_at(node, i);

        slot->minLevel = dp_s8_at(entry, ".level_min");
        slot->maxLevel = dp_s8_at(entry, ".level_max");
        slot->species  = dp_int(dp_lookup_at(entry, ".species", L_SPECIES));
    }

    free(keyRate);
    free(keyEncounters);
    return result;
}

static void ProcHotswapEncounters(dp_node root, const char *key, int max, int dst[max])
{
    dp_node node  = dp_at(root, key);
    u32     count = ClampCount(node, max);

    for (size_t i = 0; i < count; i++) {
        dst[i] = dp_int(dp_lookup(dp_arr_at(node, i), L_SPECIES));
    }
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    dp_file *df    = Driver_Load("%s", inputFile);
    dp_node  root  = dp_root(df);

    WildEncounters encounters = {
        .grassEncounters    = ProcLandEncounters(root),
        .surfEncounters     = ProcWaterEncounters(root, ".surf"),
        .oldRodEncounters   = ProcWaterEncounters(root, ".old_rod"),
        .goodRodEncounters  = ProcWaterEncounters(root, ".good_rod"),
        .superRodEncounters = ProcWaterEncounters(root, ".super_rod"),

        .encounterRatesForms = {
            [0] = dp_s32_at(root, ".rate_form0"),
            [1] = dp_s32_at(root, ".rate_form1"),
            [2] = dp_s32_at(root, ".rate_form2"),
            [3] = dp_s32_at(root, ".rate_form3"),
            [4] = dp_s32_at(root, ".rate_form4"),
        },

        .unownTableID = dp_s32_at(root, ".unown_table"),
    };

    ProcHotswapEncounters(root, ".swarms", MAX_SWARM_ENCOUNTERS, encounters.swarmEncounters);
    ProcHotswapEncounters(root, ".day",    MAX_TIMED_ENCOUNTERS, encounters.dayEncounters);
    ProcHotswapEncounters(root, ".night",  MAX_TIMED_ENCOUNTERS, encounters.nightEncounters);
    ProcHotswapEncounters(root, ".radar",  MAX_RADAR_ENCOUNTERS, encounters.radarEncounters);

    ProcHotswapEncounters(root, ".ruby",      MAX_DUAL_SLOT_ENCOUNTERS, encounters.dualSlotRubyEncounters);
    ProcHotswapEncounters(root, ".sapphire",  MAX_DUAL_SLOT_ENCOUNTERS, encounters.dualSlotSapphireEncounters);
    ProcHotswapEncounters(root, ".emerald",   MAX_DUAL_SLOT_ENCOUNTERS, encounters.dualSlotEmeraldEncouters);
    ProcHotswapEncounters(root, ".firered",   MAX_DUAL_SLOT_ENCOUNTERS, encounters.dualSlotFireredEncounters);
    ProcHotswapEncounters(root, ".leafgreen", MAX_DUAL_SLOT_ENCOUNTERS, encounters.dualSlotLeafgreenEncounters);

    BinaryFile_Write(B_ENCOUNTERS, &encounters, sizeof(encounters));
    return Driver_Finish(&driver);
}
