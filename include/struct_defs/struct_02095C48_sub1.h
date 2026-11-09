#ifndef POKEPLATINUM_STRUCT_02095C48_SUB1_H
#define POKEPLATINUM_STRUCT_02095C48_SUB1_H

#include "constants/contests.h"

#include "struct_defs/struct_02029C88.h"
#include "struct_defs/struct_020954F0.h"
#include "struct_defs/struct_02095C48_sub1_sub1.h"

#include "overlay006/struct_ov6_02248BE8.h"

#include "pokemon.h"
#include "string_gf.h"

typedef struct ContestData {
    Pokemon *contestMons[CONTEST_NUM_PARTICIPANTS];
    Contestant contestants[CONTEST_NUM_PARTICIPANTS];
    ContestJudge judges[CONTEST_NUM_JUDGES];
    String *trainerNames[CONTEST_NUM_PARTICIPANTS];
    ContestPhoto *photos[CONTEST_NUM_PARTICIPANTS];
    u8 trainerGenders[CONTEST_NUM_PARTICIPANTS];
    u8 npcSkillLevels[CONTEST_NUM_PARTICIPANTS];
    u8 monContestFame[CONTEST_NUM_PARTICIPANTS];
    u16 contestantObjEventGFX[CONTEST_NUM_PARTICIPANTS];
    u8 hostContestantID;
    u8 hostLinkVersion;
    u8 headJudgeID;
    u8 contestType;
    u8 contestRank;
    u8 competitionType;
    u8 dressUpTheme;
    u8 playerContestantID;
    u8 unk_114;
    u8 linkVersion;
    u8 npcCount;
    u8 connectionCount;
    ContestantResult results[CONTEST_NUM_PARTICIPANTS];
} ContestData;

#endif // POKEPLATINUM_STRUCT_02095C48_SUB1_H
