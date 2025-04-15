#ifndef POKEPLATINUM_VARS_FLAGS_H
#define POKEPLATINUM_VARS_FLAGS_H

#include "constants/savedata/vars_flags.h"

#include "savedata.h"

#define NUM_FLAGS 2912

#define NUM_UNKNOWN_FLAGS 64

typedef struct VarsFlags {
    u16 vars[NUM_VARS];
    u8 flags[NUM_FLAGS / 8];
} VarsFlags;

int VarsFlags_SaveSize(void);
void VarsFlags_Init(VarsFlags *varsFlags);
VarsFlags *SaveData_GetVarsFlags(SaveData *saveData);
BOOL VarsFlags_CheckFlag(VarsFlags *varsFlags, u16 flagID);
void VarsFlags_SetFlag(VarsFlags *varsFlags, u16 flagID);
void VarsFlags_ClearFlag(VarsFlags *varsFlags, u16 flagID);
u8 *VarsFlags_GetFlagChunk(VarsFlags *varsFlags, u16 flagID);
u16 *VarsFlags_GetVarAddress(VarsFlags *varsFlags, u16 varID);

#endif // POKEPLATINUM_VARS_FLAGS_H
