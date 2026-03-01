#ifndef POKEPLATINUM_STRUCT_02095C48_SUB1_H
#define POKEPLATINUM_STRUCT_02095C48_SUB1_H

#include "constants/contests.h"

#include "struct_defs/struct_02029C88.h"
#include "struct_defs/struct_020954F0.h"
#include "struct_defs/struct_02095C48_sub1_sub1.h"

#include "overlay006/struct_ov6_02248BE8.h"

#include "pokemon.h"
#include "string_gf.h"

typedef struct {
    Pokemon *contestMons[CONTEST_NUM_PARTICIPANTS];
    UnkStruct_ov6_02248BE8 unk_10[CONTEST_NUM_PARTICIPANTS];
    UnkStruct_020954F0 unk_C0[CONTEST_NUM_JUDGES];
    String *trainerNames[CONTEST_NUM_PARTICIPANTS];
    UnkStruct_02029C88 *unk_E8[CONTEST_NUM_PARTICIPANTS];
    u8 trainerGenders[CONTEST_NUM_PARTICIPANTS];
    u8 unk_FC[CONTEST_NUM_PARTICIPANTS];
    u8 monContestFame[CONTEST_NUM_PARTICIPANTS];
    u16 contestantObjEventGFX[CONTEST_NUM_PARTICIPANTS];
    u8 unk_10C;
    u8 unk_10D;
    u8 unk_10E;
    u8 contestType;
    u8 contestRank;
    u8 competitionType;
    u8 unk_112;
    u8 playerContestantID;
    u8 unk_114;
    u8 unk_115;
    u8 NPCCount;
    u8 connectionCount;
    UnkStruct_02095C48_sub1_sub1 unk_118[CONTEST_NUM_PARTICIPANTS];
} UnkStruct_02095C48_sub1;

#endif // POKEPLATINUM_STRUCT_02095C48_SUB1_H
