#ifndef POKEPLATINUM_STRUCT_OV6_02248BE8_H
#define POKEPLATINUM_STRUCT_OV6_02248BE8_H

#include "constants/contests.h"
#include "constants/moves.h"

typedef struct Contestant {
    u32 unused_00;
    u32 unused_04;
    u16 objEventGFX;
    u16 trainerSprite;
    u16 moves[LEARNED_MOVES_MAX];
    u16 species;
    u16 nicknameID;
    u16 otNameID;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
    u16 rank : 3;
    u16 inCoolContests : 1;
    u16 inBeautyContests : 1;
    u16 inCuteContests : 1;
    u16 inSmartContests : 1;
    u16 inToughContests : 1;
    u16 inSingleCompetitions : 1;
    u16 inPracticeCompetitions : 1;
    u16 availability : 2;
    u16 gender : 2;
    u16 npcSkillLevel : 2;
    u8 dressUpIDs[DRESS_UP_THEME_MAX];
    u8 monContestFame;
    u8 padding_2F;
} Contestant;

#endif // POKEPLATINUM_STRUCT_OV6_02248BE8_H
