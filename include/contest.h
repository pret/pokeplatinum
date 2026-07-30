#ifndef POKEPLATINUM_CONTEST_H
#define POKEPLATINUM_CONTEST_H

#include "struct_defs/contest_camera_flash_task.h"
#include "struct_defs/contest_player_mon_dto.h"
#include "struct_defs/image_clips.h"
#include "struct_defs/struct_02095C48_sub1.h"
#include "struct_defs/struct_02095C60.h"
#include "struct_defs/visual_competition_app_args.h"

#include "field_task.h"
#include "game_options.h"
#include "journal.h"
#include "party.h"
#include "savedata.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

typedef struct Contest {
    UnkStruct_02095C48_sub1 unk_00;
    Party *party;
    void *chatotCry[CONTEST_NUM_PARTICIPANTS];
    void *unk_150;
    u8 unk_154;
    u8 isLinkContest;
    u8 unk_156[4];
    u8 linkState;
    u8 unk_15B;
    int unk_15C;
    int padding_160;
    SysTask *commTask;
    u8 unk_168[4][256];
    u8 unk_568;
    u8 unk_569[1024];
    u8 unk_969[4][1024];
    u8 padding_1969[3];
    const Options *options;
    SaveData *saveData;
    Pokemon *playerMon;
    const TrainerInfo *trainerInfo;
    u8 monPartySlot;
    u8 isGameCompleted;
    u8 isNatDexObtained;
    u8 padding_197F;
    ImageClips *imageClips;
    UnkStruct_02095C60 unk_1984;
    VisualCompetitionAppArgs *visualCompetitionAppArgs;
    ContestCameraFlashTask *cameraFlashTask;
    u32 rngSeed;
} Contest;

void FieldTask_InitRunContestTask(FieldTask *fieldTask, Contest *contest);
Contest *Contest_Init(const PlayerMonContestDTO *playerMonContestDTO);
void Contest_Free(Contest *contest);
BOOL Contest_SetUpLinkContest(Contest *contest);
BOOL Contest_IsCommTaskDone(Contest *contest);
void Contest_BufferJudgeName(Contest *contest, int judgeID, StringTemplate *strTemplate, u32 idx);
void Contest_BufferContestantTrainerName(Contest *contest, int contestantEntryNum, StringTemplate *strTemplate, u32 idx);
void Contest_BufferMonNickname(Contest *contest, int contestantEntryNum, StringTemplate *strTemplate, u32 idx);
void Contest_BufferContestRank(Contest *contest, StringTemplate *strTemplate, u32 idx);
void Contest_BufferContestType(Contest *contest, StringTemplate *strTemplate, u32 idx);
void Contest_BufferWinningContestantTrainerName(Contest *contest, StringTemplate *strTemplate, u32 idx);
void Contest_BufferWinningContestantMonName(Contest *contest, StringTemplate *strTemplate, u32 idx);
BOOL Contest_True(Contest *contest);
void Contest_StartCommSync(Contest *contest, u8 syncNo);
BOOL Contest_IsSyncState(Contest *contest, u8 syncState);
int Contest_GetPlayerContestPlacement(Contest *contest);
int Contest_GetWinningContestantEntryNum(Contest *contest);
int Contest_GetPlayerContestantEntryNum(Contest *contest);
int Contest_GetContestantObjEventGFX(Contest *contest, int contestantEntryNum);
int Contest_GetContestantMonContestFame(Contest *contest, int contestantEntryNum);
int Contest_GetContestMode(Contest *contest);
void Contest_GetContestInfo(Contest *contest, u16 *contestRank, u16 *contestType, u16 *competitionType, u16 *monPartySlot);
void Contest_LockAutoScrollForLinkContests(Contest *contest);
void Contest_LockTextSpeed(Contest *unused);
BOOL Contest_CheckPlayerMonHasRibbon(Contest *contest);
void Contest_SetRibbonName(Contest *contest, StringTemplate *string, u32 idx, int unused);
u32 Contest_CalcFirstTimeVictoryAccessoryReward(Contest *contest);
void Contest_StartCameraFlashTask(Contest *contest, int contestantEntryNum);
BOOL Contest_CameraFlashTaskDone(Contest *contest);
void sub_02094BB4(Contest *contest, int *destWinningContestantEntryNum, BOOL *destIsLinkContest, int *param3, BOOL *isPracticeCompetition, int *param5);
void Contest_EndContest(Contest *contest, SaveData *saveData, u32 mapID, JournalEntry *journalEntry);
u16 Contest_GetRNGNext(Contest *contest);
u16 Contest_GetSeededRNGNext(u32 seed, u32 *destRNGVal);

#endif // POKEPLATINUM_CONTEST_H
