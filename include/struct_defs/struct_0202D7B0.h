#ifndef POKEPLATINUM_STRUCT_0202D7B0_H
#define POKEPLATINUM_STRUCT_0202D7B0_H

#include "struct_defs/struct_0202D7B0_sub1.h"
#include "struct_defs/struct_0202D7B0_sub2.h"
#include "struct_defs/struct_0202D844.h"
#include "struct_defs/struct_020698E4.h"
#include "struct_defs/struct_0206C638.h"

typedef struct SpecialEncounter {
    int marshDaily;
    int swarmDaily;
    SpecialEncounter_sub1 unk_08;
    UnkStruct_0202D844 unk_10;
    UnkStruct_020698E4 unk_BC;
    SpecialEncounter_sub2 unk_C8;
    Roamer unk_D0[6];
    u8 unk_148[6];
    u8 unk_14E;
    u8 unk_14F;
    u8 unk_150;
    u8 unk_151;
} SpecialEncounter;

#endif // POKEPLATINUM_STRUCT_0202D7B0_H
