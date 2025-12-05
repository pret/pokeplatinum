#include "overlay005/size_contest.h"

#include <nitro.h>
#include <string.h>

#include "generated/size_contest_results.h"
#include "generated/string_padding_mode.h"

#include "field/field_system.h"

#include "party.h"
#include "pokedex_heightweight.h"
#include "pokemon.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_vars.h"
#include "tv_episode_segment.h"
#include "vars_flags.h"

#define MM_TO_TENTH_OF_INCH(length) (((length * 1000) / 254 + 5) / 10)

static u8 GetApproxIntervalIdx(u16 sizeFactor);

/*
 * Used to approximate a normal distribution from an uniformly distributed u16
 * variable through a piecewise approximation of the inverse error function (erf^-1)
 * from 0..65535 into 290...1725
 */
typedef struct NormalApproxIntervalParams {
    u16 base;
    u16 divisor;
    u16 intervalStart;
    u16 unused_06;
} NormalApproxIntervalParams;

// clang-format off
static const NormalApproxIntervalParams sUniformToNormalIntervals[] = {
    { .base = 290,  .divisor = 1,   .intervalStart = 0,     .unused_06 = 0x0 },
    { .base = 300,  .divisor = 1,   .intervalStart = 10,    .unused_06 = 0x0 },
    { .base = 400,  .divisor = 2,   .intervalStart = 110,   .unused_06 = 0x0 },
    { .base = 500,  .divisor = 4,   .intervalStart = 310,   .unused_06 = 0x0 },
    { .base = 600,  .divisor = 20,  .intervalStart = 710,   .unused_06 = 0x0 },
    { .base = 700,  .divisor = 50,  .intervalStart = 2710,  .unused_06 = 0x0 },
    { .base = 800,  .divisor = 100, .intervalStart = 7710,  .unused_06 = 0x0 },
    { .base = 900,  .divisor = 150, .intervalStart = 17710, .unused_06 = 0x0 },
    { .base = 1000, .divisor = 150, .intervalStart = 32710, .unused_06 = 0x0 },
    { .base = 1100, .divisor = 100, .intervalStart = 47710, .unused_06 = 0x0 },
    { .base = 1200, .divisor = 50,  .intervalStart = 57710, .unused_06 = 0x0 },
    { .base = 1300, .divisor = 20,  .intervalStart = 62710, .unused_06 = 0x0 },
    { .base = 1400, .divisor = 5,   .intervalStart = 64710, .unused_06 = 0x0 },
    { .base = 1500, .divisor = 2,   .intervalStart = 65210, .unused_06 = 0x0 },
    { .base = 1600, .divisor = 1,   .intervalStart = 65410, .unused_06 = 0x0 },
    { .base = 1700, .divisor = 1,   .intervalStart = 65510, .unused_06 = 0x0 },
};
// clang-format on

// Calculates the erf^-1 approximation.
// Using u64 is required for matching.
static inline u64 CalcMultFromSizeFactor(u16 sizeFactor)
{
    u8 approxPieceIdx = GetApproxIntervalIdx(sizeFactor);
    u64 base = sUniformToNormalIntervals[approxPieceIdx].base;
    u64 div = sUniformToNormalIntervals[approxPieceIdx].divisor;
    u64 start = sUniformToNormalIntervals[approxPieceIdx].intervalStart;
    return base + (sizeFactor - start) / div;
}

static int CalcSizeFactor(Pokemon *mon)
{
    u16 personnalityLow = Pokemon_GetValue(mon, MON_DATA_PERSONALITY, NULL) & 0xffff;
    u16 hpIV = Pokemon_GetValue(mon, MON_DATA_HP_IV, NULL) & 0xf;
    u16 atkIV = Pokemon_GetValue(mon, MON_DATA_ATK_IV, NULL) & 0xf;
    u16 defIV = Pokemon_GetValue(mon, MON_DATA_DEF_IV, NULL) & 0xf;
    u16 speedIV = Pokemon_GetValue(mon, MON_DATA_SPEED_IV, NULL) & 0xf;
    u16 spAtkIV = Pokemon_GetValue(mon, MON_DATA_SPATK_IV, NULL) & 0xf;
    u16 spDefIV = Pokemon_GetValue(mon, MON_DATA_SPDEF_IV, NULL) & 0xf;
    u16 high = ((atkIV ^ defIV) * hpIV) ^ (personnalityLow & 0xff);
    u16 low = ((spAtkIV ^ spDefIV) * speedIV) ^ (personnalityLow >> 8);

    return high * 256 + low;
}

static u8 GetApproxIntervalIdx(u16 sizeFactor)
{
    u8 i;

    for (i = 1; i < NELEMS(sUniformToNormalIntervals) - 1; i++) {
        if (sizeFactor < sUniformToNormalIntervals[i].intervalStart) {
            return i - 1;
        }
    }

    return i;
}

static u32 CalcMillimeterSize(u16 species, u16 sizeFactor)
{
    HeightWeightData *heightWeightData = Pokedex_HeightWeightData(HEAP_ID_FIELD1);
    Pokedex_HeightWeightData_Load(heightWeightData, FALSE, HEAP_ID_FIELD1);

    u32 height = Pokedex_HeightWeightData_Height(heightWeightData, species);
    Pokedex_HeightWeightData_Release(heightWeightData);
    Pokedex_HeightWeightData_Free(heightWeightData);

    u64 sizeMult = CalcMultFromSizeFactor(sizeFactor);

    return height * sizeMult / 10;
}

u8 SizeContest_CalcResultForPartyMon(FieldSystem *fieldSystem, u16 partySlot)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    u16 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    vu16 sizeFactor = CalcSizeFactor(mon);
    u32 newSize = CalcMillimeterSize(species, sizeFactor);
    vu16 recordSizeFactor = SystemVars_GetSizeContestRecord(SaveData_GetVarsFlags(fieldSystem->saveData));
    u32 recordSize = CalcMillimeterSize(species, recordSizeFactor);

    u32 newSizeInches = MM_TO_TENTH_OF_INCH(newSize);
    u32 recordSizeInches = MM_TO_TENTH_OF_INCH(recordSize);

    if (newSizeInches == recordSizeInches) {
        return SIZE_CONTEST_SAME_SIZE;
    } else {
        if (newSizeInches > recordSizeInches) {
            sub_0206DC6C(fieldSystem, newSize, mon);
            return SIZE_CONTEST_LARGER;
        } else {
            return SIZE_CONTEST_SMALLER;
        }
    }
}

void SizeContest_UpdateRecordFromPartyMon(FieldSystem *fieldSystem, u16 partySlot)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    vu16 sizeFactor = CalcSizeFactor(mon);

    SystemVars_SetSizeContestRecord(SaveData_GetVarsFlags(fieldSystem->saveData), sizeFactor);
}

static void SetStrTemplateMonSizeParams(FieldSystem *fieldSystem, u8 intPartIdx, u8 fracPartIdx, u16 species, vu16 sizeFactor)
{
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    u32 size = CalcMillimeterSize(species, sizeFactor);
    size = MM_TO_TENTH_OF_INCH(size);

    StringTemplate_SetNumber(*strTemplate, intPartIdx, size / 10, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNumber(*strTemplate, fracPartIdx, size % 10, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
}

void SizeContest_SetRecordSizeStrParams(FieldSystem *fieldSystem, u8 intPartIdx, u8 fracPartIdx, u16 species)
{
    vu16 recordSizeFactor = SystemVars_GetSizeContestRecord(SaveData_GetVarsFlags(fieldSystem->saveData));
    SetStrTemplateMonSizeParams(fieldSystem, intPartIdx, fracPartIdx, species, recordSizeFactor);
}

void SizeContest_SetPartyMonSizeStrParams(FieldSystem *fieldSystem, u8 intPartIdx, u8 fracPartIdx, u16 partySlot)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    u16 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    vu16 sizeFactor = CalcSizeFactor(mon);

    SetStrTemplateMonSizeParams(fieldSystem, intPartIdx, fracPartIdx, species, sizeFactor);
}
