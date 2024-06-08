#include <nitro.h>
#include <string.h>

#include "constants/savedata/save_table.h"
#include "savedata.h"
#include "vars_flags.h"

#define GET_FLAG_BIT(flagID) (1 << (flagID % 8))

//TODO: where are these flags used, if ever?
static u8 sUnknownFlags[NUM_UNKNOWN_FLAGS / 8] = {};

int VarsFlags_SaveSize (void)
{
    return sizeof(VarsFlags);
}

void VarsFlags_Init (VarsFlags * varsFlags)
{
    memset(varsFlags, 0, sizeof(VarsFlags));
}

VarsFlags * SaveData_GetVarsFlags (SaveData * saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_VARS_FLAGS);
}

BOOL VarsFlags_CheckFlag (VarsFlags * varsFlags, u16 flagID)
{
    u8 * flagChunk = VarsFlags_GetFlagChunk(varsFlags, flagID);
    return flagChunk && *flagChunk & GET_FLAG_BIT(flagID);
}

void VarsFlags_SetFlag (VarsFlags * varsFlags, u16 flagID)
{
    u8 * flagChunk = VarsFlags_GetFlagChunk(varsFlags, flagID);
    if (flagChunk) {
        *flagChunk |= GET_FLAG_BIT(flagID);
    }
}

void VarsFlags_ClearFlag (VarsFlags * varsFlags, u16 flagID)
{
    u8 * flagChunk = VarsFlags_GetFlagChunk(varsFlags, flagID);
    if (flagChunk) {
        *flagChunk &= 0xFF ^ GET_FLAG_BIT(flagID);
    }
}

u8 * VarsFlags_GetFlagChunk (VarsFlags * varsFlags, u16 flagID)
{
    if (flagID == 0) {
        return NULL;
    } else if (flagID < UNKNOWN_FLAGS_START) {
        GF_ASSERT(flagID / 8 < NUM_FLAGS / 8);
        return &varsFlags->flags[flagID / 8];
    } else {
        GF_ASSERT((flagID - UNKNOWN_FLAGS_START) / 8 < NUM_UNKNOWN_FLAGS / 8);
        return &(sUnknownFlags[(flagID - UNKNOWN_FLAGS_START) / 8]);
    }
}

u16 * VarsFlags_GetVarAddress (VarsFlags * varsFlags, u16 varID)
{
    GF_ASSERT(varID - VARS_START < NUM_VARS);
    return &varsFlags->vars[varID - VARS_START];
}
