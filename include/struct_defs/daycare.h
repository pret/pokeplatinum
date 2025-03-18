#ifndef POKEPLATINUM_STRUCT_DAYCARE_H
#define POKEPLATINUM_STRUCT_DAYCARE_H

#include "constants/daycare.h"

#include "struct_defs/struct_0202818C.h"
#include "struct_defs/pokemon.h"

typedef struct DaycareMail {
    UnkStruct_0202818C unk_00;
    u16 otName[TRAINER_NAME_LEN + 1];
    u16 monName[MON_NAME_LEN + 1];
    u8 unk_5E_0 : 4;
    u8 unk_5E_4 : 4;
} DaycareMail;

typedef struct DaycareMon {
    BoxPokemon boxMon;
    DaycareMail mail;
    u32 steps;
} DaycareMon;

typedef struct Daycare {
    DaycareMon mons[DAYCARE_MON_COUNT];
    u32 offspringPersonality;
    u8 stepCounter;
} Daycare;

#endif // POKEPLATINUM_STRUCT_DAYCARE_H
