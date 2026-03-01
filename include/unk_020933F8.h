#ifndef POKEPLATINUM_UNK_020933F8_H
#define POKEPLATINUM_UNK_020933F8_H

#include "struct_defs/contest_player_mon_dto.h"
#include "struct_defs/struct_02095C48.h"

#include "field_task.h"
#include "journal.h"
#include "savedata.h"
#include "string_template.h"

void FieldTask_InitRunContestTask(FieldTask *fieldTask, SuperContest *superContest);
SuperContest *SuperContest_Init(const PlayerMonContestDTO *playerMonContestDTO);
void SuperContest_Free(SuperContest *superContest);
BOOL SuperContest_SetUpLinkContest(SuperContest *superContest);
BOOL SuperContest_IsCommTaskDone(SuperContest *superContest);
void SuperContest_BufferJudgeName(SuperContest *superContest, int judgeID, StringTemplate *strTemplate, u32 idx);
void SuperContest_BufferContestantTrainerName(SuperContest *superContest, int contestantEntryNum, StringTemplate *strTemplate, u32 idx);
void SuperContest_BufferMonNickname(SuperContest *superContest, int contestantEntryNum, StringTemplate *strTemplate, u32 idx);
void SuperContest_BufferContestRank(SuperContest *superContest, StringTemplate *strTemplate, u32 idx);
void SuperContest_BufferContestType(SuperContest *superContest, StringTemplate *strTemplate, u32 idx);
void SuperContest_BufferWinningContestantTrainerName(SuperContest *superContest, StringTemplate *strTemplate, u32 idx);
void SuperContest_BufferWinningContestantMonName(SuperContest *superContest, StringTemplate *strTemplate, u32 idx);
BOOL SuperContest_True(SuperContest *superContest);
void SuperContest_StartCommSync(SuperContest *superContest, u8 syncNo);
BOOL SuperContest_IsSyncState(SuperContest *superContest, u8 syncState);
int SuperContest_GetPlayerContestPlacement(SuperContest *superContest);
int SuperContest_GetWinningContestantEntryNum(SuperContest *superContest);
int SuperContest_GetPlayerContestantEntryNum(SuperContest *superContest);
int SuperContest_GetContestantObjEventGFX(SuperContest *superContest, int contestantEntryNum);
int SuperContest_GetContestantMonContestFame(SuperContest *superContest, int contestantEntryNum);
int SuperContest_GetContestMode(SuperContest *superContest);
void SuperContest_GetContestInfo(SuperContest *superContest, u16 *contestRank, u16 *contestType, u16 *competitionType, u16 *monPartySlot);
void SuperContest_LockAutoScrollForLinkContests(SuperContest *superContest);
void SuperContest_LockTextSpeed(SuperContest *unused);
BOOL SuperContest_PlayerMonAlreadyHasRibbon(SuperContest *superContest);
void SuperContest_SetRibbonName(SuperContest *superContest, StringTemplate *string, u32 idx, int unused);
u32 SuperContest_CalcFirstTimeVictoryAccessoryReward(SuperContest *superContest);
void SuperContest_StartCameraFlashTask(SuperContest *superContest, int contestantEntryNum);
BOOL SuperContest_CameraFlashTaskDone(SuperContest *superContest);
void sub_02094BB4(SuperContest *superContest, int *destWinningContestantEntryNum, BOOL *destIsLinkContest, int *param3, BOOL *isPracticeCompetition, int *param5);
void SuperContest_EndContest(SuperContest *superContest, SaveData *saveData, u32 mapID, JournalEntry *journalEntry);
u16 SuperContest_GetRNGNext(SuperContest *superContest);
u16 Contest_GetSeededRNGNext(u32 seed, u32 *destRNGVal);

#endif // POKEPLATINUM_UNK_020933F8_H
