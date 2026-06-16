#ifndef POKEPLATINUM_STRUCT_0202D63C_H
#define POKEPLATINUM_STRUCT_0202D63C_H

#include "constants/string.h"

#include "overlay104/frontier_data_transfer.h"

typedef struct UnkStruct_0202D63C_t {
    FrontierPokemonDataDTO monDataDTO[3];
    u16 trainerName[TRAINER_NAME_LEN + 1];
    u8 unk_B8;
    u8 unk_B9;
    u8 unk_BA;
    u8 unk_BB;
    u32 unk_BC;
    u16 unk_C0[4];
    union {
        struct {
            u8 unk_C8_val1_unk_00_0 : 1;
            u8 unk_C8_val1_unk_00_1 : 1;
            u8 : 6;
        };
        u8 unk_C8_val2;
    };
    u8 trainerType;
    u16 introMsg[4];
    u16 winMsg[4];
    u16 loseMsg[4];
    u16 unk_E2;
} UnkStruct_0202D63C;

#endif // POKEPLATINUM_STRUCT_0202D63C_H
