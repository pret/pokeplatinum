#ifndef POKEPLATINUM_STRUCT_0202D750_H
#define POKEPLATINUM_STRUCT_0202D750_H

#include "overlay104/frontier_data_transfer.h"

typedef struct WifiBattleTowerRecord_t {
    u16 battlePoints;
    u8 lossStreak;
    u8 rank;
    u32 rngState;
    union {
        struct {
            u16 reward2Given : 1;
            u16 reward3Given : 1;
            u16 reward2FullPC : 1;
            u16 reward3FullPC : 1;
            u16 lossStreakInitialized : 1;
            u16 unk_08_val1_unk_00_5 : 1;
            u16 unk_08_val1_unk_00_6 : 1;
            u16 hasRegisteredTeam : 1;
            u16 challengeActiveFlag_1 : 1;
            u16 challengeActiveFlag_2 : 1;
            u16 challengeActiveFlag_3 : 1;
            u16 challengeActiveFlag_4 : 1;
            u16 challengeActiveFlag_5 : 1;
            u16 reward1Given : 1;
            u16 reward1FullPC : 1;
        };
        u16 flags;
    };
    u16 roomNums[6];
    u16 ratingScore;
    FrontierPokemonDataDTO team1[3];
    FrontierPokemonDataDTO team0[3];
} WifiBattleTowerRecord;

#endif // POKEPLATINUM_STRUCT_0202D750_H
