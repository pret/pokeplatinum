#ifndef POKEPLATINUM_OV6_022489E4_H
#define POKEPLATINUM_OV6_022489E4_H

#include "struct_defs/struct_020954F0.h"

#include "overlay006/struct_ov6_02248BE8.h"
#include "overlay006/struct_ov6_02248DD8.h"

#include "contest.h"
#include "pokemon.h"
#include "string_gf.h"

void Contest_RecvHostElectionData(int netID, int size, void *src, void *param);
BOOL Contest_SendHostElectionData(Contest *contest);
void Contest_RecvMon(int netID, int size, void *src, void *param);
BOOL Contest_SendMon(Contest *unused, int contestantID, const Pokemon *mon);
void Contest_RecvAllMons(int netID, int size, void *src, void *param);
BOOL Contest_SendAllMons(Contest *contest, Pokemon **mons);
void Contest_RecvContestant(int netID, int size, void *src, void *param);
BOOL Contest_SendContestant(Contest *unused, int contestantID, const Contestant *contestant);
void Contest_RecvJudges(int netID, int size, void *src, void *param);
BOOL Contest_SendJudges(Contest *contest, int unused, const ContestJudge *judges);
void Contest_RecvTrainerName(int netID, int size, void *src, void *param);
BOOL Contest_SendTrainerName(Contest *contest, int contestantID, const String *trainerName);
void Contest_RecvChatotCry(int netID, int size, void *src, void *param);
BOOL Contest_SendChatotCry(Contest *contest, int contestantID, void *chatotCry);
void Contest_RecvContestantLinkInfo(int netID, int size, void *src, void *param);
BOOL Contest_SendContestantLinkInfo(Contest *unused, int contestantID, const ContestantLinkInfo *linkInfo);

#endif // POKEPLATINUM_OV6_022489E4_H
