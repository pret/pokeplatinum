#ifndef POKEPLATINUM_STRUCT_OV40_0225645C_1_H
#define POKEPLATINUM_STRUCT_OV40_0225645C_1_H

#include "constants/daycare.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u32 unk_04[NUM_DAYCARE_MONS];
    u32 unk_0C[NUM_DAYCARE_MONS];
    u32 genders[NUM_DAYCARE_MONS];
    u16 species[NUM_DAYCARE_MONS];
    u16 forms[NUM_DAYCARE_MONS];
} UnkStruct_ov40_0225645C_1;

#endif // POKEPLATINUM_STRUCT_OV40_0225645C_1_H
