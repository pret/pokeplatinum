#ifndef POKEPLATINUM_STRUCT_02027F8C_H
#define POKEPLATINUM_STRUCT_02027F8C_H

#include "constants/string.h"

#define PAL_PAD_ENTRIES 16

typedef struct PalPad_t {
    u16 trainerName[TRAINER_NAME_LEN + 1];
    u32 trainerId;
    u8 regionCode;
    u8 gameCode;
    u8 gender;
    u8 padding_17;

    // these are the 16 trainers inside the owners' pal pad
    u32 trainerIdHistory[PAL_PAD_ENTRIES];
    u8 gameCodeHistory[PAL_PAD_ENTRIES];
    u8 regionCodeHistory[PAL_PAD_ENTRIES];
    u8 genderHistory[PAL_PAD_ENTRIES];
} PalPad;

#endif // POKEPLATINUM_STRUCT_02027F8C_H
