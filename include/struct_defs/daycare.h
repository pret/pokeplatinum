#ifndef POKEPLATINUM_STRUCT_DAYCARE_H
#define POKEPLATINUM_STRUCT_DAYCARE_H

#include "constants/daycare.h"

#include "struct_defs/struct_0202818C.h"
#include "struct_defs/pokemon.h"

typedef struct UnkStruct_02026224 {
    UnkStruct_0202818C unk_00;
    u16 unk_38[8];
    u16 unk_48[11];
    u8 unk_5E_0 : 4;
    u8 unk_5E_4 : 4;
} UnkStruct_02026224;

typedef struct DaycareMon {
    BoxPokemon boxMon;
    UnkStruct_02026224 unk_08;
    u32 steps;
} DaycareMon;

typedef struct Daycare {
    DaycareMon mons[DAYCARE_MON_COUNT];
    u32 offspringPersonality;
    u8 stepCounter;
} Daycare;

#endif // POKEPLATINUM_STRUCT_DAYCARE_H
