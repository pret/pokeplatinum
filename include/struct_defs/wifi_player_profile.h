#ifndef POKEPLATINUM_STRUCT_WIFI_PLAYER_PROFILE_H
#define POKEPLATINUM_STRUCT_WIFI_PLAYER_PROFILE_H

#include "constants/string.h"

#include "overlay104/frontier_data_transfer.h"

#include "charcode.h"

typedef struct WifiPlayerProfile {
    FrontierPokemonDataDTO dto[3];
    charcode_t name[TRAINER_NAME_LEN + 1];
    u8 version;
    u8 language;
    u8 country;
    u8 region;
    u8 trainerInfoId[4];
    s8 no1Sentence[8];
    union {
        struct {
            u8 unused1 : 1;
            u8 gender : 1;
            u8 : 6;
        };
        u8 unused2;
    };
    u8 appearance;
    s8 battleSentences[24];
    u16 ratingScore;
} WifiPlayerProfile;

#endif // POKEPLATINUM_STRUCT_WIFI_PLAYER_PROFILE_H
