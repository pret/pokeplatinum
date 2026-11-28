#ifndef POKEPLATINUM_CONTEST_MANAGER_H
#define POKEPLATINUM_CONTEST_MANAGER_H

#include "struct_defs/contest_camera_flash_task.h"
#include "struct_defs/contest_player_mon_dto.h"
#include "struct_defs/image_clips.h"
#include "struct_defs/struct_02095C60.h"
#include "struct_defs/visual_competition_app_args.h"

#include "contest/common.h"

#include "field_task.h"
#include "game_options.h"
#include "journal.h"
#include "party.h"
#include "savedata.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

#define CONTEST_HOST_ELECTION_BUFFER_SIZE 256
#define CONTEST_COMM_BUFFER_SIZE          1024
#define CONTEST_LINK_VERSION              110
#define CONTEST_NO_ACCESSORY_REWARD       0xFFFF

enum ContestManagerState {
    CONTEST_MANAGER_STATE_START = 0,
    CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK,
    CONTEST_MANAGER_STATE_START_COMM_SYNC_0,
    CONTEST_MANAGER_STATE_CONFIRM_COMM_SYNC_0,
    CONTEST_MANAGER_STATE_RUN_APP_VISUAL_COMPETITION,
    CONTEST_MANAGER_STATE_START_PHOTO_EXCHANGE,
    CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK_2,
    CONTEST_MANAGER_STATE_RUN_APP_VISUAL_COMPETITION_SCORING,
    CONTEST_MANAGER_STATE_RUN_APP_DANCE_COMPETITION,
    CONTEST_MANAGER_STATE_RUN_APP_ACTING_COMPETITION,
    CONTEST_MANAGER_STATE_RUN_APP_FINAL_SCORING,
    CONTEST_MANAGER_STATE_WAIT_ONE_FRAME,
    CONTEST_MANAGER_STATE_RETURN_TO_MAP,
    CONTEST_MANAGER_STATE_END,
};

enum PracticeCompetitionState {
    PRACTICE_COMPETITION_STATE_START = 0,
    PRACTICE_COMPETITION_STATE_RUN_APP_VISUAL_COMPETITION,
    PRACTICE_COMPETITION_STATE_FREE_VISUAL_COMPETITION_APP_ARGS,
    PRACTICE_COMPETITION_STATE_WAIT_ONE_FRAME,
    PRACTICE_COMPETITION_STATE_RUN_APP_VISUAL_COMPETITION_SCORING,
    PRACTICE_COMPETITION_STATE_RUN_APP_DANCE_COMPETITION,
    PRACTICE_COMPETITION_STATE_RUN_APP_ACTING_COMPETITION,
    PRACTICE_COMPETITION_STATE_CALC_PLAYER_PLACEMENT,
    PRACTICE_COMPETITION_STATE_RETURN_TO_MAP,
    PRACTICE_COMPETITION_STATE_END,
};

enum LinkContestSetupState {
    LINK_SETUP_STATE_START_SYNC_HOST_ELECTION = 0,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_HOST_ELECTION,
    LINK_SETUP_STATE_SEND_HOST_ELECTION_DATA,
    LINK_SETUP_STATE_WAIT_FOR_HOST_ELECTION_DATA,
    LINK_SETUP_STATE_START_SYNC_EXCHANGE_MONS,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_MONS,
    LINK_SETUP_STATE_SEND_MON,
    LINK_SETUP_STATE_WAIT_FOR_MONS,
    LINK_SETUP_STATE_START_SYNC_SHARE_MONS,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_MONS,
    LINK_SETUP_STATE_SEND_ALL_MONS,
    LINK_SETUP_STATE_WAIT_FOR_ALL_MONS,
    LINK_SETUP_STATE_START_SYNC_EXCHANGE_OPPONENTS,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_OPPONENTS,
    LINK_SETUP_STATE_SEND_OPPONENT,
    LINK_SETUP_STATE_WAIT_FOR_OPPONENTS,
    LINK_SETUP_STATE_START_SYNC_SHARE_OPPONENTS,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_OPPONENTS,
    LINK_SETUP_STATE_SEND_NEXT_OPPONENT,
    LINK_SETUP_STATE_WAIT_FOR_NEXT_OPPONENT,
    LINK_SETUP_STATE_START_SYNC_EXCHANGE_TRAINER_NAMES,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_TRAINER_NAMES,
    LINK_SETUP_STATE_SEND_TRAINER_NAME,
    LINK_SETUP_STATE_WAIT_FOR_TRAINER_NAMES,
    LINK_SETUP_STATE_START_SYNC_SHARE_TRAINER_NAMES,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_TRAINER_NAMES,
    LINK_SETUP_STATE_SEND_NEXT_TRAINER_NAME,
    LINK_SETUP_STATE_WAIT_FOR_NEXT_TRAINER_NAME,
    LINK_SETUP_STATE_START_SYNC_EXCHANGE_CHATOT_CRIES,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_CHATOT_CRIES,
    LINK_SETUP_STATE_SEND_CHATOT_CRY,
    LINK_SETUP_STATE_WAIT_FOR_CHATOT_CRIES,
    LINK_SETUP_STATE_START_SYNC_SHARE_CHATOT_CRIES,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_CHATOT_CRIES,
    LINK_SETUP_STATE_SEND_NEXT_CHATOT_CRY,
    LINK_SETUP_STATE_WAIT_FOR_NEXT_CHATOT_CRY,
    LINK_SETUP_STATE_START_SYNC_EXCHANGE_CONTESTANT_INFO,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_CONTESTANT_INFO,
    LINK_SETUP_STATE_SEND_CONTESTANT_INFO,
    LINK_SETUP_STATE_WAIT_FOR_CONTESTANT_INFO,
    LINK_SETUP_STATE_START_SYNC_SHARE_CONTESTANT_INFO,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_CONTESTANT_INFO,
    LINK_SETUP_STATE_SEND_NEXT_CONTESTANT_INFO,
    LINK_SETUP_STATE_WAIT_FOR_NEXT_CONTESTANT_INFO,
    LINK_SETUP_STATE_START_SYNC_EXCHANGE_JUDGES,
    LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_JUDGES,
    LINK_SETUP_STATE_SEND_JUDGES,
    LINK_SETUP_STATE_WAIT_FOR_JUDGES,
    LINK_SETUP_STATE_DONE,
};

enum PhotoExchangeState {
    PHOTO_EXCHANGE_STATE_START_SYNC_EXCHANGE_PHOTOS = 0,
    PHOTO_EXCHANGE_STATE_WAIT_FOR_SYNC_EXCHANGE_PHOTOS,
    PHOTO_EXCHANGE_STATE_SEND_PHOTO,
    PHOTO_EXCHANGE_STATE_WAIT_FOR_PHOTOS,
    PHOTO_EXCHANGE_STATE_START_SYNC_SHARE_PHOTOS,
    PHOTO_EXCHANGE_STATE_WAIT_FOR_SYNC_SHARE_PHOTOS,
    PHOTO_EXCHANGE_STATE_SEND_ALL_PHOTOS,
    PHOTO_EXCHANGE_STATE_WAIT_FOR_ALL_PHOTOS,
    PHOTO_EXCHANGE_STATE_DONE,
};

enum ContestCommCmd {
    CONTEST_CMD_UNK_22 = 22,
    CONTEST_CMD_DUMMY,
    CONTEST_CMD_UNK_24,
    CONTEST_CMD_UNK_25,
    CONTEST_CMD_SEND_HOST_ELECTION_DATA,
    CONTEST_CMD_SEND_MON,
    CONTEST_CMD_SEND_ALL_MONS,
    CONTEST_CMD_SEND_CONTESTANT,
    CONTEST_CMD_SEND_JUDGES,
    CONTEST_CMD_SEND_TRAINER_NAME,
    CONTEST_CMD_SEND_PHOTO,
    CONTEST_CMD_SEND_ALL_PHOTOS,
    CONTEST_CMD_SEND_VISUAL_COMPETITION_TIMER,
    CONTEST_CMD_UNK_35,
    CONTEST_CMD_SEND_CHATOT_CRY,
    CONTEST_CMD_SEND_CONTESTANT_LINK_INFO,
};

enum ContestCommSync {
    CONTEST_SYNC_HOST_ELECTION = 5,
    CONTEST_SYNC_EXCHANGE_MONS,
    CONTEST_SYNC_SHARE_MONS,
    CONTEST_SYNC_EXCHANGE_OPPONENTS,
    CONTEST_SYNC_SHARE_OPPONENTS,
    CONTEST_SYNC_EXCHANGE_TRAINER_NAMES,
    CONTEST_SYNC_SHARE_TRAINER_NAMES,
    CONTEST_SYNC_EXCHANGE_CHATOT_CRIES,
    CONTEST_SYNC_SHARE_CHATOT_CRIES,
    CONTEST_SYNC_EXCHANGE_CONTESTANT_INFO,
    CONTEST_SYNC_SHARE_CONTESTANT_INFO,
    CONTEST_SYNC_EXCHANGE_JUDGES,
    CONTEST_SYNC_EXCHANGE_PHOTOS,
    CONTEST_SYNC_SHARE_PHOTOS,
};

enum ContestCameraFlashState {
    CAMERA_FLASH_STATE_FLASH = 0,
    CAMERA_FLASH_STATE_DONE,
};

enum ContestAppID {
    CONTEST_APP_ID_VISUAL_COMPETITION_SCORING = 0,
    CONTEST_APP_ID_DANCE_COMPETITION,
    CONTEST_APP_ID_ACTING_COMPETITION,
    CONTEST_APP_ID_FINAL_SCORING,
};

typedef struct Contest {
    ContestData data;
    Party *party;
    void *chatotCry[CONTEST_NUM_PARTICIPANTS];
    void *activeAppData;
    u8 activeAppID;
    u8 isLinkContest;
    u8 performanceOrder[CONTEST_NUM_PARTICIPANTS];
    u8 linkState;
    u8 numDPPlayers;
    int sendingContestantID;
    int padding_160;
    SysTask *commTask;
    u8 hostElectionBuffers[CONTEST_NUM_PARTICIPANTS][CONTEST_HOST_ELECTION_BUFFER_SIZE];
    u8 numMessagesReceived;
    u8 commSendBuffer[CONTEST_COMM_BUFFER_SIZE];
    u8 commRecvBuffers[CONTEST_NUM_PARTICIPANTS][CONTEST_COMM_BUFFER_SIZE];
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
void Contest_GetAwardCeremonyConditions(Contest *contest, int *destWinningContestantEntryNum, BOOL *destIsLinkContest, BOOL *destIsNPCWinner, BOOL *destIsPracticeCompetition, BOOL *destIsSingleCompetition);
void Contest_EndContest(Contest *contest, SaveData *saveData, u32 mapID, JournalEntry *journalEntry);
u16 Contest_GetRNGNext(Contest *contest);
u16 Contest_GetSeededRNGNext(u32 seed, u32 *destRNGVal);

#endif // POKEPLATINUM_CONTEST_MANAGER_H
