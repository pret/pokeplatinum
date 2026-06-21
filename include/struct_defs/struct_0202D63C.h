#ifndef POKEPLATINUM_STRUCT_0202D63C_H
#define POKEPLATINUM_STRUCT_0202D63C_H

#include "constants/string.h"

#include "overlay104/frontier_data_transfer.h"

typedef struct WifiTrainerRecord {
    FrontierPokemonDataDTO monDataDTO[3];
    u16 trainerName[TRAINER_NAME_LEN + 1];
    u8 unk_B8; // version?
    u8 unk_B9; // language?
    u8 unk_BA; // country?
    u8 unk_BB; // region?
    u32 unk_BC; // trainerInfoId?
    u16 unk_C0[4]; // no1Sentence?
    union {
        struct {
            u8 isAnonymous : 1;
            u8 anonymousNameIdx : 1;
            u8 : 6;
        };
        u8 unk_C8_val2;
    };
    u8 trainerType;
    u16 introMsg[4];
    u16 winMsg[4];
    u16 loseMsg[4];
    u16 unk_E2; // ratingScore?
} WifiTrainerRecord;

#endif // POKEPLATINUM_STRUCT_0202D63C_H
