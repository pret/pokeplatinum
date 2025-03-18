#ifndef POKEPLATINUM_STRUCT_DAYCARE_H
#define POKEPLATINUM_STRUCT_DAYCARE_H

#include "constants/daycare.h"

#include "struct_defs/mail.h"
#include "struct_defs/pokemon.h"

typedef struct DaycareMail {
    Mail mail;
    u16 otName[TRAINER_NAME_LEN + 1];
    u16 monName[MON_NAME_LEN + 1];
    u8 unk_5E_0 : 4;
    u8 unk_5E_4 : 4;
} DaycareMail;

typedef struct DaycareMon {
    BoxPokemon boxMon;
    DaycareMail daycareMail;
    u32 steps;
} DaycareMon;

typedef struct Daycare {
    DaycareMon mons[DAYCARE_MON_COUNT];
    u32 offspringPersonality;
    u8 stepCounter;
} Daycare;

#endif // POKEPLATINUM_STRUCT_DAYCARE_H
