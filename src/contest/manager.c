#include "contest/manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/accessories.h"
#include "constants/contests.h"
#include "constants/heap.h"
#include "constants/string.h"
#include "generated/game_records.h"
#include "generated/object_events_gfx.h"
#include "generated/pokemon_contest_ranks.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/tv_broadcast.h"
#include "struct_defs/contest_camera_flash_task.h"
#include "struct_defs/contest_photo.h"
#include "struct_defs/contest_player_mon_dto.h"
#include "struct_defs/image_clips.h"
#include "struct_defs/visual_competition_app_args.h"

#include "contest/comm.h"
#include "contest/common.h"
#include "contest/link_comm.h"
#include "contest/logic.h"
#include "field/field_system.h"
#include "overlay017/ov17_0223B140.h"
#include "overlay017/ov17_0223CB1C.h"
#include "overlay017/ov17_0223DAD0.h"
#include "overlay017/ov17_0224F4D4.h"
#include "overlay022/ov22_02255D44.h"
#include "pch/global_pch.h"
#include "savedata/save_table.h"

#include "assert.h"
#include "brightness_controller.h"
#include "chatot_cry.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_task.h"
#include "field_transition.h"
#include "game_records.h"
#include "heap.h"
#include "image_clips.h"
#include "journal.h"
#include "link_contest_records.h"
#include "math_util.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "ribbon.h"
#include "rtc.h"
#include "savedata.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "tv_segment.h"
#include "unk_020363E8.h"
#include "vars_flags.h"

FS_EXTERN_OVERLAY(overlay17);
FS_EXTERN_OVERLAY(overlay22);

typedef struct ContestTaskEnv {
    Contest *contest;
    int state;
} ContestTaskEnv;

static Contest *Contest_New(void);
static void Contest_InternalFree(Contest *contest);
static void Contest_SetLCRNGSeed(Contest *contest);
u16 Contest_GetRNGNext(Contest *contest);
BOOL Contest_SetUpLinkContest(Contest *contest);
static BOOL Contest_IsCommTaskDoneInternal(Contest *contest);
static void SysTask_LinkContestSetup(SysTask *sysTask, void *param);
static BOOL FieldTask_RunContest(FieldTask *fieldTask);
static BOOL FieldTask_RunPracticeCompetition(FieldTask *fieldTask);
void Contest_GetVisualCompetitionAppArgs(Contest *contest);
void Contest_VisualCompetitionAppArgsFree(Contest *contest);
static void Contest_StartPhotoExchangeTask(Contest *contest);
static void SysTask_ExchangePhotos(SysTask *sysTask, void *param);
static void Contest_GetContestantLinkInfo(Contest *contest, int contestantID, ContestantLinkInfo *destLinkInfo);
static void SysTask_DoContestCameraFlash(SysTask *sysTask, void *contestParam);
static int CalcMonContestFame(Pokemon *mon, enum PokemonContestType contestType);
static void Contest_InitOpponents(Contest *contest, int isGameCompleted, int isNatDexObtained);

const ApplicationManagerTemplate ActingCompetitionAppTemplate = {
    ActingCompetition_Init,
    ActingCompetition_Main,
    ActingCompetition_Exit,
    FS_OVERLAY_ID(overlay17)
};

const ApplicationManagerTemplate DanceCompetitionAppTemplate = {
    DanceCompetition_Init,
    DanceCompetition_Main,
    DanceCompetition_Exit,
    FS_OVERLAY_ID(overlay17)
};

const ApplicationManagerTemplate VisualCompetitionScoringAppTemplate = {
    VisualCompetitionScoring_Init,
    VisualCompetitionScoring_Main,
    VisualCompetitionScoring_Exit,
    FS_OVERLAY_ID(overlay17)
};

const ApplicationManagerTemplate ContestFinalScoringAppTemplate = {
    ContestFinalScoring_Init,
    ContestFinalScoring_Main,
    ContestFinalScoring_Exit,
    FS_OVERLAY_ID(overlay17)
};

const ApplicationManagerTemplate VisualCompetitionAppTemplate = {
    VisualCompetition_Init,
    VisualCompetition_Main,
    VisualCompetition_Exit,
    FS_OVERLAY_ID(overlay22)
};

#define CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR 0xFF

ALIGN_4 static const u8 sNormalRankCameraFrameDelays[][3] = {
    { 0x14, 0x14, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR },
    { 0xF, 0x19, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR }
};

ALIGN_4 static const u8 sGreatRankCameraFrameDelays[][4] = {
    { 0xA, 0xA, 0x1E, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR },
    { 0xF, 0xF, 0xF, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR }
};

ALIGN_4 static const u8 sUltraRankCameraFrameDelays[][5] = {
    { 0xA, 0x8, 0x14, 0x1C, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR },
    { 0xF, 0xF, 0x8, 0x8, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR }
};

ALIGN_4 static const u8 sLinkMasterRankCameraFrameDelays[][6] = {
    { 0x8, 0x8, 0x8, 0x8, 0x1E, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR },
    { 0xF, 0xF, 0x8, 0x8, 0x14, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR }
};

void FieldTask_InitRunContestTask(FieldTask *fieldTask, Contest *contest)
{
    ContestTaskEnv *taskEnv = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(ContestTaskEnv));

    MI_CpuClear8(taskEnv, sizeof(ContestTaskEnv));
    taskEnv->contest = contest;

    switch (contest->data.competitionType) {
    case CONTEST_COMPETITION_UNK0:
    case CONTEST_COMPETITION_UNK1:
    case CONTEST_COMPETITION_LINK_OR_OFFICIAL:
        FieldTask_InitCall(fieldTask, FieldTask_RunContest, taskEnv);
        break;
    default:
        FieldTask_InitCall(fieldTask, FieldTask_RunPracticeCompetition, taskEnv);
        break;
    }
}

static BOOL FieldTask_RunContest(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    ContestTaskEnv *taskEnv = FieldTask_GetEnv(fieldTask);

    switch (taskEnv->state) {
    case CONTEST_MANAGER_STATE_START:
        FieldTransition_FinishMap(fieldTask);
        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK:
        if (taskEnv->contest->isLinkContest == FALSE || Contest_IsCommTaskDoneInternal(taskEnv->contest) == TRUE) {
            taskEnv->state++;
        }
        break;
    case CONTEST_MANAGER_STATE_START_COMM_SYNC_0:
        if (taskEnv->contest->isLinkContest == TRUE) {
            CommTiming_StartSync(0);
        }

        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_CONFIRM_COMM_SYNC_0:
        if (taskEnv->contest->isLinkContest == TRUE) {
            if (CommTiming_IsSyncState(0) == TRUE) {
                taskEnv->state++;
            }
        } else {
            taskEnv->state++;
        }
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_VISUAL_COMPETITION:
        Contest_GetVisualCompetitionAppArgs(taskEnv->contest);
        FieldTask_RunApplication(fieldTask, &VisualCompetitionAppTemplate, taskEnv->contest->visualCompetitionAppArgs);
        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_START_PHOTO_EXCHANGE:
        Contest_VisualCompetitionAppArgsFree(taskEnv->contest);

        if (taskEnv->contest->isLinkContest == TRUE) {
            Contest_StartPhotoExchangeTask(taskEnv->contest);
            taskEnv->state++;
        } else {
            taskEnv->state = CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK_2;
        }
        break;
    case CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK_2:
        if (taskEnv->contest->isLinkContest == FALSE || Contest_IsCommTaskDoneInternal(taskEnv->contest) == TRUE) {
            taskEnv->state++;
        }
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_VISUAL_COMPETITION_SCORING:
        FieldTask_RunApplication(fieldTask, &VisualCompetitionScoringAppTemplate, taskEnv->contest);
        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_DANCE_COMPETITION:
        if (taskEnv->contest->data.competitionType == CONTEST_COMPETITION_UNK1 || taskEnv->contest->data.competitionType == CONTEST_COMPETITION_LINK_OR_OFFICIAL) {
            FieldTask_RunApplication(fieldTask, &DanceCompetitionAppTemplate, taskEnv->contest);
        }

        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_ACTING_COMPETITION:
        if (taskEnv->contest->data.competitionType == CONTEST_COMPETITION_UNK0 || taskEnv->contest->data.competitionType == CONTEST_COMPETITION_LINK_OR_OFFICIAL) {
            FieldTask_RunApplication(fieldTask, &ActingCompetitionAppTemplate, taskEnv->contest);
        }

        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_FINAL_SCORING:
        FieldTask_RunApplication(fieldTask, &ContestFinalScoringAppTemplate, taskEnv->contest);
        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_WAIT_ONE_FRAME:
        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_RETURN_TO_MAP:
        FieldTransition_StartMap(fieldTask);
        taskEnv->state++;
        break;
    default:
        GF_ASSERT(FALSE);
    case CONTEST_MANAGER_STATE_END:
        Heap_Free(taskEnv);
        return TRUE;
    }

    return FALSE;
}

static BOOL FieldTask_RunPracticeCompetition(FieldTask *fieldTask)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(fieldTask);
    ContestTaskEnv *taskEnv = FieldTask_GetEnv(fieldTask);

    switch (taskEnv->state) {
    case PRACTICE_COMPETITION_STATE_START:
        FieldTransition_FinishMap(fieldTask);
        taskEnv->state++;
        break;
    case PRACTICE_COMPETITION_STATE_RUN_APP_VISUAL_COMPETITION:
        switch (taskEnv->contest->data.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_VISUAL:
        case CONTEST_COMPETITION_VISUAL:
            Contest_GetVisualCompetitionAppArgs(taskEnv->contest);
            FieldTask_RunApplication(fieldTask, &VisualCompetitionAppTemplate, taskEnv->contest->visualCompetitionAppArgs);
            break;
        }

        taskEnv->state++;
        break;
    case PRACTICE_COMPETITION_STATE_FREE_VISUAL_COMPETITION_APP_ARGS:
        switch (taskEnv->contest->data.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_VISUAL:
        case CONTEST_COMPETITION_VISUAL:
            Contest_VisualCompetitionAppArgsFree(taskEnv->contest);
            break;
        }

        taskEnv->state++;
        break;
    case PRACTICE_COMPETITION_STATE_WAIT_ONE_FRAME:
        taskEnv->state++;
        break;
    case PRACTICE_COMPETITION_STATE_RUN_APP_VISUAL_COMPETITION_SCORING:
        switch (taskEnv->contest->data.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_VISUAL:
        case CONTEST_COMPETITION_VISUAL:
            FieldTask_RunApplication(fieldTask, &VisualCompetitionScoringAppTemplate, taskEnv->contest);
            break;
        }

        taskEnv->state++;
        break;
    case PRACTICE_COMPETITION_STATE_RUN_APP_DANCE_COMPETITION:
        switch (taskEnv->contest->data.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_DANCE:
        case CONTEST_COMPETITION_DANCE:
            Contest_InitPhotosWithoutAccessories(taskEnv->contest);
            FieldTask_RunApplication(fieldTask, &DanceCompetitionAppTemplate, taskEnv->contest);
            break;
        }

        taskEnv->state++;
        break;
    case PRACTICE_COMPETITION_STATE_RUN_APP_ACTING_COMPETITION:
        switch (taskEnv->contest->data.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_ACTING:
        case CONTEST_COMPETITION_ACTING:
            FieldTask_RunApplication(fieldTask, &ActingCompetitionAppTemplate, taskEnv->contest);
            break;
        }

        taskEnv->state++;
        break;
    case PRACTICE_COMPETITION_STATE_CALC_PLAYER_PLACEMENT:
        s32 scores[CONTEST_NUM_PARTICIPANTS];
        int contestantID, placement;

        switch (taskEnv->contest->data.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_VISUAL:
        case CONTEST_COMPETITION_VISUAL:
            for (contestantID = 0; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
                scores[contestantID] = Contest_CalcConditionRating(taskEnv->contest, contestantID)
                    + Contest_CalcDressUpRating(taskEnv->contest, contestantID);
            }
            break;
        case CONTEST_COMPETITION_PRACTICE_DANCE:
        case CONTEST_COMPETITION_DANCE:
            for (contestantID = 0; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
                scores[contestantID] = taskEnv->contest->data.results[contestantID].danceScore;
            }
            break;
        case CONTEST_COMPETITION_PRACTICE_ACTING:
        case CONTEST_COMPETITION_ACTING:
            for (contestantID = 0; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
                scores[contestantID] = taskEnv->contest->data.results[contestantID].actingScore;
            }
            break;
        }

        placement = 0;

        for (contestantID = 1; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
            if (scores[0] < scores[contestantID]) {
                placement++;
            }
        }

        taskEnv->contest->data.results[0].contestPlacement = placement;
        taskEnv->state++;
        break;
    case PRACTICE_COMPETITION_STATE_RETURN_TO_MAP:
        FieldTransition_StartMap(fieldTask);
        taskEnv->state++;
        break;
    default:
        GF_ASSERT(FALSE);
    case PRACTICE_COMPETITION_STATE_END:
        Heap_Free(taskEnv);
        return TRUE;
    }

    return FALSE;
}

static Contest *Contest_New(void)
{
    Contest *contest = Heap_Alloc(HEAP_ID_20, sizeof(Contest));
    MI_CpuClear8(contest, sizeof(Contest));

    contest->data.playerContestantID = PLAYER_CONTESTANT_ID;
    contest->data.connectionCount = 1;
    contest->data.npcCount = CONTEST_NUM_PARTICIPANTS - 1;

    return contest;
}

static void Contest_InternalFree(Contest *contest)
{
    Heap_Free(contest);
}

Contest *Contest_Init(const PlayerMonContestDTO *playerMonContestDTO)
{
    Heap_Create(HEAP_ID_FIELD2, HEAP_ID_20, 0x3000 + 0x1000);

    Contest *contest = Contest_New();
    contest->rngSeed = LCRNG_GetSeed();

    Contest_SetLCRNGSeed(contest);

    contest->data.contestType = playerMonContestDTO->contestType;
    contest->data.contestRank = playerMonContestDTO->contestRank;
    contest->data.competitionType = playerMonContestDTO->competitionType;
    contest->data.dressUpTheme = Contest_GetRandomDressUpTheme(playerMonContestDTO->contestRank, FALSE);
    contest->data.hostContestantID = contest->data.playerContestantID;
    contest->data.linkVersion = CONTEST_LINK_VERSION;
    contest->data.hostLinkVersion = contest->data.linkVersion;
    contest->data.headJudgeID = 1;
    contest->imageClips = playerMonContestDTO->imageClips;
    contest->options = playerMonContestDTO->options;
    contest->saveData = playerMonContestDTO->saveData;
    contest->playerMon = playerMonContestDTO->mon;
    contest->monPartySlot = playerMonContestDTO->monPartySlot;
    contest->trainerInfo = playerMonContestDTO->trainerInfo;
    contest->isGameCompleted = playerMonContestDTO->isGameCompleted;
    contest->isNatDexObtained = playerMonContestDTO->isNatDexObtained;

    int i;
    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        contest->data.photos[i] = ContestPhoto_New(HEAP_ID_20);
    }

    Contest_SelectJudges(contest, HEAP_ID_FIELD2, contest->data.headJudgeID, contest->data.contestType, contest->data.contestRank);
    contest->party = Party_New(HEAP_ID_20);

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        contest->data.contestMons[i] = Pokemon_New(HEAP_ID_20);
    }

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        contest->chatotCry[i] = ChatotCry_New(HEAP_ID_20);
    }

    ChatotCry_Copy(contest->chatotCry[PLAYER_CONTESTANT_ID], playerMonContestDTO->chatotCry);

    Pokemon_Copy(playerMonContestDTO->mon, contest->data.contestMons[PLAYER_CONTESTANT_ID]);
    contest->data.trainerNames[PLAYER_CONTESTANT_ID] = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_20);
    String_Copy(contest->data.trainerNames[PLAYER_CONTESTANT_ID], playerMonContestDTO->trainerName);

    contest->data.trainerGenders[PLAYER_CONTESTANT_ID] = TrainerInfo_Gender(playerMonContestDTO->trainerInfo);
    contest->data.npcSkillLevels[PLAYER_CONTESTANT_ID] = 0;
    contest->data.monContestFame[PLAYER_CONTESTANT_ID] = CalcMonContestFame(contest->data.contestMons[PLAYER_CONTESTANT_ID], contest->data.contestType);

    if (Contest_IsPracticeCompetition(contest) == FALSE) {
        if (TrainerInfo_Gender(playerMonContestDTO->trainerInfo) == GENDER_MALE) {
            contest->data.contestantObjEventGFX[PLAYER_CONTESTANT_ID] = OBJ_EVENT_GFX_PLAYER_M_CONTEST;
        } else {
            contest->data.contestantObjEventGFX[PLAYER_CONTESTANT_ID] = OBJ_EVENT_GFX_PLAYER_F_CONTEST;
        }
    } else {
        if (TrainerInfo_Gender(playerMonContestDTO->trainerInfo) == GENDER_MALE) {
            contest->data.contestantObjEventGFX[PLAYER_CONTESTANT_ID] = OBJ_EVENT_GFX_PLAYER_M;
        } else {
            contest->data.contestantObjEventGFX[PLAYER_CONTESTANT_ID] = OBJ_EVENT_GFX_PLAYER_F;
        }
    }

    Contest_InitOpponents(contest, playerMonContestDTO->isGameCompleted, playerMonContestDTO->isNatDexObtained);

    if (Contest_IsPracticeCompetition(contest) == TRUE) {
        for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
            contest->performanceOrder[i] = CONTEST_NUM_PARTICIPANTS - i - 1;
        }
    } else {
        for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
            contest->performanceOrder[i] = i;
        }
    }

    return contest;
}

static void Contest_InitOpponents(Contest *contest, int isGameCompleted, int isNatDexObtained)
{
    int numOpponents = CONTEST_NUM_PARTICIPANTS - 1;
    int i;

    Contest_SelectOpponents(contest, HEAP_ID_FIELD2, numOpponents, contest->data.contestType, contest->data.contestRank, contest->data.competitionType, isGameCompleted, isNatDexObtained);

    // starts at 1, because 0 was already initialized for player
    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        Contestant_InitPokemon(&contest->data.contestants[i], contest->data.contestMons[i], HEAP_ID_20);
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        if (contest->data.trainerNames[i] == NULL) {
            contest->data.trainerNames[i] = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_20);
        }

        Pokemon_GetValue(contest->data.contestMons[i], MON_DATA_OT_NAME_STRING, contest->data.trainerNames[i]);
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        contest->data.trainerGenders[i] = contest->data.contestants[i].gender;
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        contest->data.npcSkillLevels[i] = contest->data.contestants[i].npcSkillLevel;
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        contest->data.monContestFame[i] = contest->data.contestants[i].monContestFame;
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        contest->data.contestantObjEventGFX[i] = contest->data.contestants[i].objEventGFX;
    }

    Contest_DressUpOpponentPhotos(contest, HEAP_ID_FIELD2);
}

void Contest_Free(Contest *contest)
{
    Heap_Free(contest->party);

    for (int i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        Heap_Free(contest->data.contestMons[i]);
        String_Free(contest->data.trainerNames[i]);
        Heap_Free(contest->data.photos[i]);
        Heap_Free(contest->chatotCry[i]);
    }

    LCRNG_SetSeed(contest->rngSeed);
    Contest_InternalFree(contest);
    Heap_Destroy(HEAP_ID_20);
}

static int CalcMonContestFame(Pokemon *mon, enum PokemonContestType contestType)
{
    int ribbon;
    int fame = 1;

    for (int i = 0; i <= CONTEST_NUM_RANKS; i++) {
        switch (contestType) {
        case CONTEST_TYPE_COOL:
            ribbon = Pokemon_GetValue(mon, MON_DATA_SUPER_COOL_RIBBON + i, NULL);
            break;
        case CONTEST_TYPE_BEAUTY:
            ribbon = Pokemon_GetValue(mon, MON_DATA_SUPER_BEAUTY_RIBBON + i, NULL);
            break;
        case CONTEST_TYPE_CUTE:
            ribbon = Pokemon_GetValue(mon, MON_DATA_SUPER_CUTE_RIBBON + i, NULL);
            break;
        case CONTEST_TYPE_SMART:
            ribbon = Pokemon_GetValue(mon, MON_DATA_SUPER_SMART_RIBBON + i, NULL);
            break;
        case CONTEST_TYPE_TOUGH:
            ribbon = Pokemon_GetValue(mon, MON_DATA_SUPER_TOUGH_RIBBON + i, NULL);
            break;
        default:
            GF_ASSERT(FALSE);
            break;
        }

        if (ribbon == FALSE) {
            break;
        }

        fame++;
    }

    return fame;
}

void Contest_GetVisualCompetitionAppArgs(Contest *contest)
{
    VisualCompetitionAppArgs *appArgs;

    ContestPhoto_Init(contest->data.photos[contest->data.playerContestantID]);

    appArgs = Heap_Alloc(HEAP_ID_20, sizeof(VisualCompetitionAppArgs));
    MI_CpuClear8(appArgs, sizeof(VisualCompetitionAppArgs));

    appArgs->mon = contest->data.contestMons[contest->data.playerContestantID];
    appArgs->playerPhoto = contest->data.photos[contest->data.playerContestantID];
    appArgs->dressUpTheme = contest->data.dressUpTheme;

    if (contest->isLinkContest == TRUE) {
        appArgs->contestRank = CONTEST_RANK_LINK;
    } else {
        appArgs->contestRank = contest->data.contestRank;
    }

    appArgs->competitionType = contest->data.competitionType;
    appArgs->contestType = contest->data.contestType;
    appArgs->fashionCase = ImageClips_GetFashionCase(contest->imageClips);
    appArgs->unk_1C = &contest->unk_1984;
    appArgs->options = contest->options;
    appArgs->trainerInfo = contest->trainerInfo;

    contest->visualCompetitionAppArgs = appArgs;
}

void Contest_VisualCompetitionAppArgsFree(Contest *contest)
{
    Heap_Free(contest->visualCompetitionAppArgs);
    contest->visualCompetitionAppArgs = NULL;
}

static void SysTask_LinkContestSetup(SysTask *sysTask, void *param)
{
    Contest *contest = param;

    switch (contest->linkState) {
    case LINK_SETUP_STATE_START_SYNC_HOST_ELECTION:
        CommTiming_StartSync(CONTEST_SYNC_HOST_ELECTION);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_HOST_ELECTION:
        if (CommTiming_IsSyncState(CONTEST_SYNC_HOST_ELECTION) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_HOST_ELECTION_DATA:
        if (Contest_SendHostElectionData(contest) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_HOST_ELECTION_DATA:
        if (contest->numMessagesReceived >= contest->data.connectionCount) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_EXCHANGE_MONS:
        CommTiming_StartSync(CONTEST_SYNC_EXCHANGE_MONS);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_MONS:
        if (CommTiming_IsSyncState(CONTEST_SYNC_EXCHANGE_MONS) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_MON:
        if (Contest_SendMon(contest, contest->data.playerContestantID, contest->data.contestMons[PLAYER_CONTESTANT_ID]) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_MONS:
        if (contest->numMessagesReceived >= contest->data.connectionCount) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_SHARE_MONS:
        CommTiming_StartSync(CONTEST_SYNC_SHARE_MONS);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_MONS:
        if (CommTiming_IsSyncState(CONTEST_SYNC_SHARE_MONS) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_ALL_MONS:
        if (contest->data.playerContestantID == contest->data.hostContestantID) {
            if (Contest_SendAllMons(contest, contest->data.contestMons) == TRUE) {
                contest->linkState++;
            }
        } else {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_ALL_MONS:
        if (contest->numMessagesReceived > 0) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_EXCHANGE_OPPONENTS:
        CommTiming_StartSync(CONTEST_SYNC_EXCHANGE_OPPONENTS);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_OPPONENTS:
        if (CommTiming_IsSyncState(CONTEST_SYNC_EXCHANGE_OPPONENTS) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_OPPONENT:
        if (Contest_SendContestant(contest, contest->data.playerContestantID, &contest->data.contestants[0]) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_OPPONENTS:
        if (contest->numMessagesReceived >= contest->data.connectionCount) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_SHARE_OPPONENTS:
        CommTiming_StartSync(CONTEST_SYNC_SHARE_OPPONENTS);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_OPPONENTS:
        if (CommTiming_IsSyncState(CONTEST_SYNC_SHARE_OPPONENTS) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_NEXT_OPPONENT:
        if (contest->data.playerContestantID == contest->data.hostContestantID) {
            if (Contest_SendContestant(contest, contest->sendingContestantID, &contest->data.contestants[contest->sendingContestantID]) == TRUE) {
                contest->linkState++;
            }
        } else {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_NEXT_OPPONENT:
        if (contest->numMessagesReceived > 0) {
            contest->numMessagesReceived = 0;
            contest->sendingContestantID++;

            if (contest->sendingContestantID < CONTEST_NUM_PARTICIPANTS) {
                contest->linkState--;
            } else {
                contest->sendingContestantID = 0;
                contest->linkState++;
            }
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_EXCHANGE_TRAINER_NAMES:
        CommTiming_StartSync(CONTEST_SYNC_EXCHANGE_TRAINER_NAMES);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_TRAINER_NAMES:
        if (CommTiming_IsSyncState(CONTEST_SYNC_EXCHANGE_TRAINER_NAMES) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_TRAINER_NAME:
        if (Contest_SendTrainerName(contest, contest->data.playerContestantID, contest->data.trainerNames[PLAYER_CONTESTANT_ID]) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_TRAINER_NAMES:
        if (contest->numMessagesReceived >= contest->data.connectionCount) {
            int netID;
            const TrainerInfo *trainerInfo;

            for (netID = 0; netID < contest->data.connectionCount; netID++) {
                trainerInfo = CommInfo_TrainerInfo(netID);
                String_Clear(contest->data.trainerNames[netID]);
                TrainerInfo_NameString(trainerInfo, contest->data.trainerNames[netID]);
            }

            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_SHARE_TRAINER_NAMES:
        CommTiming_StartSync(CONTEST_SYNC_SHARE_TRAINER_NAMES);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_TRAINER_NAMES:
        if (CommTiming_IsSyncState(CONTEST_SYNC_SHARE_TRAINER_NAMES) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_NEXT_TRAINER_NAME:
        if (contest->data.playerContestantID == contest->data.hostContestantID) {
            if (Contest_SendTrainerName(contest, contest->sendingContestantID, contest->data.trainerNames[contest->sendingContestantID]) == TRUE) {
                contest->linkState++;
            }
        } else {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_NEXT_TRAINER_NAME:
        if (contest->numMessagesReceived > 0) {
            contest->numMessagesReceived = 0;
            contest->sendingContestantID++;

            if (contest->sendingContestantID < CONTEST_NUM_PARTICIPANTS) {
                contest->linkState--;
            } else {
                contest->sendingContestantID = 0;
                contest->linkState++;
            }
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_EXCHANGE_CHATOT_CRIES:
        MI_CpuCopy8(contest->chatotCry[PLAYER_CONTESTANT_ID], contest->commSendBuffer, ChatotCry_SaveSize());
        CommTiming_StartSync(CONTEST_SYNC_EXCHANGE_CHATOT_CRIES);

        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_CHATOT_CRIES:
        if (CommTiming_IsSyncState(CONTEST_SYNC_EXCHANGE_CHATOT_CRIES) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_CHATOT_CRY:
        if (Contest_SendChatotCry(contest, contest->data.playerContestantID, NULL) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_CHATOT_CRIES:
        if (contest->numMessagesReceived >= contest->data.connectionCount) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_SHARE_CHATOT_CRIES:
        CommTiming_StartSync(CONTEST_SYNC_SHARE_CHATOT_CRIES);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_CHATOT_CRIES:
        if (CommTiming_IsSyncState(CONTEST_SYNC_SHARE_CHATOT_CRIES) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_NEXT_CHATOT_CRY:
        if (contest->data.playerContestantID == contest->data.hostContestantID) {
            if (Contest_SendChatotCry(contest, contest->sendingContestantID, contest->chatotCry[contest->sendingContestantID]) == TRUE) {
                contest->linkState++;
            }
        } else {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_NEXT_CHATOT_CRY:
        if (contest->numMessagesReceived > 0) {
            contest->numMessagesReceived = 0;
            contest->sendingContestantID++;

            if (contest->sendingContestantID < CONTEST_NUM_PARTICIPANTS) {
                contest->linkState--;
            } else {
                contest->sendingContestantID = 0;
                contest->linkState++;
            }
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_EXCHANGE_CONTESTANT_INFO:
        CommTiming_StartSync(CONTEST_SYNC_EXCHANGE_CONTESTANT_INFO);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_CONTESTANT_INFO:
        if (CommTiming_IsSyncState(CONTEST_SYNC_EXCHANGE_CONTESTANT_INFO) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_CONTESTANT_INFO:
        ContestantLinkInfo linkInfo;

        Contest_GetContestantLinkInfo(contest, 0, &linkInfo);

        if (Contest_SendContestantLinkInfo(contest, contest->data.playerContestantID, &linkInfo) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_CONTESTANT_INFO:
        if (contest->numMessagesReceived >= contest->data.connectionCount) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_SHARE_CONTESTANT_INFO:
        CommTiming_StartSync(CONTEST_SYNC_SHARE_CONTESTANT_INFO);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_SHARE_CONTESTANT_INFO:
        if (CommTiming_IsSyncState(CONTEST_SYNC_SHARE_CONTESTANT_INFO) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_NEXT_CONTESTANT_INFO:
        if (contest->data.playerContestantID == contest->data.hostContestantID) {
            ContestantLinkInfo linkInfo;

            Contest_GetContestantLinkInfo(contest, contest->sendingContestantID, &linkInfo);

            if (Contest_SendContestantLinkInfo(contest, contest->sendingContestantID, &linkInfo) == TRUE) {
                contest->linkState++;
            }
        } else {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_NEXT_CONTESTANT_INFO:
        if (contest->numMessagesReceived > 0) {
            contest->numMessagesReceived = 0;
            contest->sendingContestantID++;

            if (contest->sendingContestantID < CONTEST_NUM_PARTICIPANTS) {
                contest->linkState--;
            } else {
                contest->sendingContestantID = 0;
                contest->linkState++;
            }
        }
        break;
    case LINK_SETUP_STATE_START_SYNC_EXCHANGE_JUDGES:
        CommTiming_StartSync(CONTEST_SYNC_EXCHANGE_JUDGES);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case LINK_SETUP_STATE_WAIT_FOR_SYNC_EXCHANGE_JUDGES:
        if (CommTiming_IsSyncState(CONTEST_SYNC_EXCHANGE_JUDGES) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_SEND_JUDGES:
        if (Contest_SendJudges(contest, contest->data.playerContestantID, contest->data.judges) == TRUE) {
            contest->linkState++;
        }
        break;
    case LINK_SETUP_STATE_WAIT_FOR_JUDGES:
        if (contest->numMessagesReceived >= contest->data.connectionCount) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    default:
        int contestantID;
        const TrainerInfo *trainerInfo;

        for (contestantID = 0; contestantID < contest->data.connectionCount; contestantID++) {
            trainerInfo = CommInfo_TrainerInfo(contestantID);
            contest->data.trainerGenders[contestantID] = TrainerInfo_Gender(trainerInfo);
        }

        for (; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
            contest->data.trainerGenders[contestantID] = contest->data.contestants[contestantID].gender;
        }

        contest->unk_1984.unk_14 = contest->data.hostContestantID;
        contest->unk_1984.unk_15 = contest->data.netID;
        contest->unk_1984.unk_16 = 1;
        contest->unk_1984.unk_17 = contest->data.connectionCount;

        contest->commTask = NULL;
        contest->linkState = LINK_SETUP_STATE_START_SYNC_HOST_ELECTION;

        SysTask_Done(sysTask);
        return;
    }
}

BOOL Contest_SetUpLinkContest(Contest *contest)
{
    if (CommSys_IsInitialized() == FALSE) {
        return FALSE;
    }

    contest->isLinkContest = TRUE;

    int connectionCount = CommSys_ConnectedCount();
    int netID = CommSys_CurNetId();

    int i;
    TrainerInfo *connectedTrainerInfo;

    for (i = 0; i < connectionCount; i++) {
        connectedTrainerInfo = CommInfo_TrainerInfo(i);
        GF_ASSERT(connectedTrainerInfo != NULL);

        if (TrainerInfo_IsMainStoryCleared(connectedTrainerInfo) == FALSE) {
            break;
        }
    }

    if (i != connectionCount) {
        contest->isGameCompleted = FALSE;
    } else {
        contest->isGameCompleted = TRUE;
    }

    for (i = 0; i < connectionCount; i++) {
        connectedTrainerInfo = CommInfo_TrainerInfo(i);
        GF_ASSERT(connectedTrainerInfo != NULL);

        if (TrainerInfo_HasNationalDex(connectedTrainerInfo) == FALSE) {
            break;
        }
    }

    if (i != connectionCount) {
        contest->isNatDexObtained = FALSE;
    } else {
        contest->isNatDexObtained = TRUE;
    }

    Contest_InitOpponents(contest, contest->isGameCompleted, contest->isNatDexObtained);

    for (i = 0; i < connectionCount; i++) {
        connectedTrainerInfo = CommInfo_TrainerInfo(i);

        if (TrainerInfo_GameCode(connectedTrainerInfo) == 0) {
            contest->numDPPlayers++;
        }
    }

    contest->data.netID = netID;
    contest->data.npcCount = CONTEST_NUM_PARTICIPANTS - connectionCount;
    contest->data.connectionCount = connectionCount;
    contest->data.playerContestantID = netID;
    contest->data.linkVersion = CONTEST_LINK_VERSION;
    contest->data.dressUpTheme = Contest_GetRandomDressUpTheme(contest->data.contestRank, TRUE);

    Contest_InitCommCommands(contest);

    contest->commTask = SysTask_Start(SysTask_LinkContestSetup, contest, 10);

    return TRUE;
}

BOOL Contest_IsCommTaskDone(Contest *contest)
{
    return Contest_IsCommTaskDoneInternal(contest);
}

BOOL Contest_IsCommTaskDoneInternal(Contest *contest)
{
    if (contest->commTask == NULL) {
        return TRUE;
    }

    return FALSE;
}

static void Contest_StartPhotoExchangeTask(Contest *contest)
{
    GF_ASSERT(contest->commTask == NULL);

    contest->linkState = PHOTO_EXCHANGE_STATE_START_SYNC_EXCHANGE_PHOTOS;
    contest->commTask = SysTask_Start(SysTask_ExchangePhotos, contest, 10);
}

static void SysTask_ExchangePhotos(SysTask *sysTask, void *param)
{
    Contest *contest = param;

    switch (contest->linkState) {
    case PHOTO_EXCHANGE_STATE_START_SYNC_EXCHANGE_PHOTOS:
        CommTiming_StartSync(CONTEST_SYNC_EXCHANGE_PHOTOS);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case PHOTO_EXCHANGE_STATE_WAIT_FOR_SYNC_EXCHANGE_PHOTOS:
        if (CommTiming_IsSyncState(CONTEST_SYNC_EXCHANGE_PHOTOS) == TRUE) {
            contest->linkState++;
        }
        break;
    case PHOTO_EXCHANGE_STATE_SEND_PHOTO:
        if (Contest_SendPhoto(contest, contest->data.playerContestantID, contest->data.photos[contest->data.playerContestantID]) == TRUE) {
            contest->linkState++;
        }
        break;
    case PHOTO_EXCHANGE_STATE_WAIT_FOR_PHOTOS:
        if (contest->numMessagesReceived >= contest->data.connectionCount) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    case PHOTO_EXCHANGE_STATE_START_SYNC_SHARE_PHOTOS:
        CommTiming_StartSync(CONTEST_SYNC_SHARE_PHOTOS);
        contest->numMessagesReceived = 0;
        contest->linkState++;
        break;
    case PHOTO_EXCHANGE_STATE_WAIT_FOR_SYNC_SHARE_PHOTOS:
        if (CommTiming_IsSyncState(CONTEST_SYNC_SHARE_PHOTOS) == TRUE) {
            contest->linkState++;
        }
        break;
    case PHOTO_EXCHANGE_STATE_SEND_ALL_PHOTOS:
        if (contest->data.playerContestantID == contest->data.hostContestantID) {
            if (Contest_SendAllPhotos(contest, contest->data.photos) == TRUE) {
                contest->linkState++;
            }
        } else {
            contest->linkState++;
        }
        break;
    case PHOTO_EXCHANGE_STATE_WAIT_FOR_ALL_PHOTOS:
        if (contest->numMessagesReceived > 0) {
            contest->numMessagesReceived = 0;
            contest->linkState++;
        }
        break;
    default:
        contest->commTask = NULL;
        contest->linkState = PHOTO_EXCHANGE_STATE_START_SYNC_EXCHANGE_PHOTOS;
        SysTask_Done(sysTask);
        return;
    }
}

void Contest_BufferJudgeName(Contest *contest, int judgeID, StringTemplate *strTemplate, u32 idx)
{
    StringTemplate_SetContestJudgeName(strTemplate, idx, contest->data.judges[judgeID].judgeNameMessageID);
}

void Contest_BufferContestantTrainerName(Contest *contest, int contestantEntryNum, StringTemplate *strTemplate, u32 idx)
{
    int contestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);
    StringTemplate_SetString(strTemplate, idx, contest->data.trainerNames[contestantID], contest->data.trainerGenders[contestantID], 1, GAME_LANGUAGE);
}

void Contest_BufferMonNickname(Contest *contest, int contestantEntryNum, StringTemplate *strTemplate, u32 idx)
{
    BoxPokemon *boxMon;
    int contestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);
    boxMon = Pokemon_GetBoxPokemon(contest->data.contestMons[contestantID]);

    StringTemplate_SetNickname(strTemplate, idx, boxMon);
}

void Contest_BufferContestRank(Contest *contest, StringTemplate *strTemplate, u32 idx)
{
    u32 contestRankMessageID = Contest_GetContestRankTitleMessageID(contest->data.contestRank, contest->data.competitionType, contest->isLinkContest);
    StringTemplate_SetContestRankName(strTemplate, idx, contestRankMessageID);
}

void Contest_BufferContestType(Contest *contest, StringTemplate *strTemplate, u32 idx)
{
    u32 contestTypeMessageID = Contest_GetFullContestTypeMessageID(contest->data.contestType, contest->data.competitionType);
    StringTemplate_SetContestTypeName(strTemplate, idx, contestTypeMessageID);
}

void Contest_BufferWinningContestantTrainerName(Contest *contest, StringTemplate *strTemplate, u32 idx)
{
    int i;

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        if (contest->data.results[i].contestPlacement == CONTEST_PLACEMENT_FIRST) {
            break;
        }
    }

    int contestantID = i;
    int contestantEntryNum = Contest_ContestantIDToContestantEntryNum(contestantID);

    Contest_BufferContestantTrainerName(contest, contestantEntryNum, strTemplate, idx);
}

void Contest_BufferWinningContestantMonName(Contest *contest, StringTemplate *strTemplate, u32 idx)
{
    int contestantID, contestantEntryNum;
    int i;

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        if (contest->data.results[i].contestPlacement == CONTEST_PLACEMENT_FIRST) {
            break;
        }
    }

    contestantID = i;
    contestantEntryNum = Contest_ContestantIDToContestantEntryNum(contestantID);

    Contest_BufferMonNickname(contest, contestantEntryNum, strTemplate, idx);
}

BOOL Contest_True(Contest *contest)
{
    return TRUE;
}

void Contest_StartCommSync(Contest *contest, u8 syncNo)
{
    if (contest->isLinkContest == FALSE) {
        return;
    }

    CommTiming_StartSync(syncNo);
}

BOOL Contest_IsSyncState(Contest *contest, u8 syncState)
{
    if (contest->isLinkContest == FALSE) {
        return TRUE;
    }

    if (CommTiming_IsSyncState(syncState) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

int Contest_GetPlayerContestPlacement(Contest *contest)
{
    return contest->data.results[contest->data.playerContestantID].contestPlacement;
}

int Contest_GetWinningContestantEntryNum(Contest *contest)
{
    int contestantID;

    for (contestantID = 0; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
        if (contest->data.results[contestantID].contestPlacement == CONTEST_PLACEMENT_FIRST) {
            return Contest_ContestantIDToContestantEntryNum(contestantID);
        }
    }

    return 0;
}

int Contest_GetPlayerContestantEntryNum(Contest *contest)
{
    return Contest_ContestantIDToContestantEntryNum(contest->data.playerContestantID);
}

int Contest_GetContestantObjEventGFX(Contest *contest, int contestantEntryNum)
{
    int contestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);
    int contestantObjEventGFX = contest->data.contestantObjEventGFX[contestantID];

    return contestantObjEventGFX;
}

int Contest_GetContestantMonContestFame(Contest *contest, int contestantEntryNum)
{
    int ContestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);
    return contest->data.monContestFame[ContestantID];
}

int Contest_GetContestMode(Contest *contest)
{
    if (contest->isLinkContest == TRUE) {
        return CONTEST_MODE_LINK;
    }

    if (Contest_IsPracticeCompetition(contest) == TRUE) {
        return CONTEST_MODE_PRACTICE;
    }

    return CONTEST_MODE_OFFICIAL;
}

void Contest_GetContestInfo(Contest *contest, u16 *contestRank, u16 *contestType, u16 *competitionType, u16 *monPartySlot)
{
    *contestRank = contest->data.contestRank;
    *contestType = contest->data.contestType;
    *competitionType = contest->data.competitionType;
    *monPartySlot = contest->monPartySlot;
}

void Contest_LockAutoScrollForLinkContests(Contest *contest)
{
    SetLockTextWithAutoScroll(contest->isLinkContest);
}

void Contest_LockTextSpeed(Contest *contest)
{
    LockTextSpeed();
}

BOOL Contest_CheckPlayerMonHasRibbon(Contest *contest)
{
    u32 monDataRibbon = CalcMonDataRibbon(contest->data.contestRank, contest->data.contestType);

    if (Pokemon_GetValue(contest->playerMon, monDataRibbon, NULL) == FALSE) {
        return FALSE;
    }

    return TRUE;
}

void Contest_SetRibbonName(Contest *contest, StringTemplate *string, u32 idx, int unused)
{
    u32 ribbonID, ribbon;

    switch (contest->data.contestType) {
    case CONTEST_TYPE_COOL:
        ribbonID = RIBBON_COOL + contest->data.contestRank;
        break;
    case CONTEST_TYPE_BEAUTY:
        ribbonID = RIBBON_BEAUTY + contest->data.contestRank;
        break;
    case CONTEST_TYPE_CUTE:
        ribbonID = RIBBON_CUTE + contest->data.contestRank;
        break;
    case CONTEST_TYPE_SMART:
        ribbonID = RIBBON_SMART + contest->data.contestRank;
        break;
    case CONTEST_TYPE_TOUGH:
        ribbonID = RIBBON_TOUGH + contest->data.contestRank;
        break;
    default:
        GF_ASSERT(FALSE);
        return;
    }

    ribbon = Ribbon_GetData(ribbonID, RIBBON_DATA_NAME_ID);
    StringTemplate_SetRibbonName(string, idx, ribbon);
}

u32 Contest_CalcFirstTimeVictoryAccessoryReward(Contest *contest)
{
    u32 accessoryID = ACCESSORY_COUNT;

    if (contest->data.results[contest->data.playerContestantID].contestPlacement > CONTEST_PLACEMENT_FIRST) {
        return CONTEST_NO_ACCESSORY_REWARD;
    }

    switch (contest->data.contestType) {
    case CONTEST_TYPE_COOL:
        switch (contest->data.contestRank) {
        case CONTEST_RANK_NORMAL:
            accessoryID = ACCESSORY_RED_BARRETTE;
            break;
        case CONTEST_RANK_GREAT:
            accessoryID = ACCESSORY_RED_BALLOONS;
            break;
        case CONTEST_RANK_ULTRA:
            accessoryID = ACCESSORY_TOP_HAT;
            break;
        case CONTEST_RANK_MASTER:
            accessoryID = ACCESSORY_GOLD_PEDESTAL;
            break;
        }
        break;
    case CONTEST_TYPE_BEAUTY:
        switch (contest->data.contestRank) {
        case CONTEST_RANK_NORMAL:
            accessoryID = ACCESSORY_BLUE_BARRETTE;
            break;
        case CONTEST_RANK_GREAT:
            accessoryID = ACCESSORY_BLUE_BALLOONS;
            break;
        case CONTEST_RANK_ULTRA:
            accessoryID = ACCESSORY_SILK_VEIL;
            break;
        case CONTEST_RANK_MASTER:
            accessoryID = ACCESSORY_GLASS_STAGE;
            break;
        }
        break;
    case CONTEST_TYPE_CUTE:
        switch (contest->data.contestRank) {
        case CONTEST_RANK_NORMAL:
            accessoryID = ACCESSORY_PINK_BARRETTE;
            break;
        case CONTEST_RANK_GREAT:
            accessoryID = ACCESSORY_PINK_BALLOON;
            break;
        case CONTEST_RANK_ULTRA:
            accessoryID = ACCESSORY_LACE_HEADDRESS;
            break;
        case CONTEST_RANK_MASTER:
            accessoryID = ACCESSORY_FLOWER_STAGE;
            break;
        }
        break;
    case CONTEST_TYPE_SMART:
        switch (contest->data.contestRank) {
        case CONTEST_RANK_NORMAL:
            accessoryID = ACCESSORY_GREEN_BARRETTE;
            break;
        case CONTEST_RANK_GREAT:
            accessoryID = ACCESSORY_GREEN_BALLOONS;
            break;
        case CONTEST_RANK_ULTRA:
            accessoryID = ACCESSORY_PROFESSOR_HAT;
            break;
        case CONTEST_RANK_MASTER:
            accessoryID = ACCESSORY_CUBE_STAGE;
            break;
        }
        break;
    case CONTEST_TYPE_TOUGH:
        switch (contest->data.contestRank) {
        case CONTEST_RANK_NORMAL:
            accessoryID = ACCESSORY_YELLOW_BARRETTE;
            break;
        case CONTEST_RANK_GREAT:
            accessoryID = ACCESSORY_YELLOW_BALLOONS;
            break;
        case CONTEST_RANK_ULTRA:
            accessoryID = ACCESSORY_HEROIC_HEADBAND;
            break;
        case CONTEST_RANK_MASTER:
            accessoryID = ACCESSORY_AWARD_PODIUM;
            break;
        }
        break;
    }

    GF_ASSERT(accessoryID != ACCESSORY_COUNT);

    ImageClips *imageClips = SaveData_GetImageClips(contest->saveData);
    FashionCase *fashionCase = ImageClips_GetFashionCase(imageClips);

    if (!FashionCase_CanFitAccessoryCount(fashionCase, accessoryID, 1)) {
        return CONTEST_NO_ACCESSORY_REWARD;
    }

    return accessoryID;
}

void Contest_StartCameraFlashTask(Contest *contest, int contestantEntryNum)
{
    ContestCameraFlashTask *cameraFlashTask;

    GF_ASSERT(contest->cameraFlashTask == NULL);

    cameraFlashTask = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(ContestCameraFlashTask));
    MI_CpuClear8(cameraFlashTask, sizeof(ContestCameraFlashTask));
    cameraFlashTask->contestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);

    int varianceIndex = contest->data.npcSkillLevels[cameraFlashTask->contestantID] & 1;

    if (contest->isLinkContest == TRUE) {
        cameraFlashTask->cameraFlashFrameDelays = sLinkMasterRankCameraFrameDelays[varianceIndex];
    } else {
        switch (contest->data.contestRank) {
        case CONTEST_RANK_NORMAL:
            cameraFlashTask->cameraFlashFrameDelays = sNormalRankCameraFrameDelays[varianceIndex];
            break;
        case CONTEST_RANK_GREAT:
            cameraFlashTask->cameraFlashFrameDelays = sGreatRankCameraFrameDelays[varianceIndex];
            break;
        case CONTEST_RANK_ULTRA:
            cameraFlashTask->cameraFlashFrameDelays = sUltraRankCameraFrameDelays[varianceIndex];
            break;
        case CONTEST_RANK_MASTER:
        default:
            cameraFlashTask->cameraFlashFrameDelays = sLinkMasterRankCameraFrameDelays[varianceIndex];
            break;
        }
    }

    cameraFlashTask->sysTask = SysTask_Start(SysTask_DoContestCameraFlash, contest, 100);
    contest->cameraFlashTask = cameraFlashTask;
}

BOOL Contest_CameraFlashTaskDone(Contest *contest)
{
    return contest->cameraFlashTask == NULL;
}

static void SysTask_DoContestCameraFlash(SysTask *sysTask, void *param)
{
    Contest *contest = param;
    ContestCameraFlashTask *cameraFlashTask = contest->cameraFlashTask;

    if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == FALSE) {
        return;
    }

    switch (cameraFlashTask->state) {
    case CAMERA_FLASH_STATE_FLASH:
        cameraFlashTask->frameCounter++;

        if (cameraFlashTask->frameCounter > cameraFlashTask->cameraFlashFrameDelays[cameraFlashTask->flashCounter]) {
            BrightnessController_StartTransition(6, 0, 4, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, BRIGHTNESS_MAIN_SCREEN);
            Sound_PlayEffect(SEQ_SE_DP_KATI_sseq_1); // camera shutter sound
            cameraFlashTask->flashCounter++;
            cameraFlashTask->frameCounter = 0;

            if (cameraFlashTask->cameraFlashFrameDelays[cameraFlashTask->flashCounter] == CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR) {
                cameraFlashTask->state++;
            }
        }
        break;
    default:
        Heap_Free(contest->cameraFlashTask);
        contest->cameraFlashTask = NULL;
        SysTask_Done(sysTask);
        return;
    }
}

void Contest_GetAwardCeremonyConditions(Contest *contest, int *destWinningContestantEntryNum, BOOL *destIsLinkContest, BOOL *destIsNPCWinner, BOOL *destIsPracticeCompetition, BOOL *destIsSingleCompetition)
{
    int winningContestantID;
    int contestantID;

    for (contestantID = 0; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
        if (contest->data.results[contestantID].contestPlacement == CONTEST_PLACEMENT_FIRST) {
            break;
        }
    }

    winningContestantID = contestantID;

    *destWinningContestantEntryNum = Contest_ContestantIDToContestantEntryNum(winningContestantID);
    *destIsLinkContest = contest->isLinkContest;

    if (winningContestantID >= contest->data.connectionCount) {
        *destIsNPCWinner = TRUE;
    } else {
        *destIsNPCWinner = FALSE;
    }

    *destIsPracticeCompetition = FALSE;
    *destIsSingleCompetition = FALSE;

    switch (contest->data.competitionType) {
    case CONTEST_COMPETITION_PRACTICE_VISUAL:
    case CONTEST_COMPETITION_PRACTICE_DANCE:
    case CONTEST_COMPETITION_PRACTICE_ACTING:
        *destIsPracticeCompetition = TRUE;
        break;
    case CONTEST_COMPETITION_VISUAL:
    case CONTEST_COMPETITION_DANCE:
    case CONTEST_COMPETITION_ACTING:
        *destIsSingleCompetition = TRUE;
        break;
    }
}

void Contest_EndContest(Contest *contest, SaveData *saveData, u32 mapID, JournalEntry *journalEntry)
{
    BOOL ribbonWon = FALSE;

    switch (contest->data.competitionType) {
    case CONTEST_COMPETITION_PRACTICE_VISUAL:
    case CONTEST_COMPETITION_VISUAL:
    case CONTEST_COMPETITION_PRACTICE_DANCE:
    case CONTEST_COMPETITION_DANCE:
    case CONTEST_COMPETITION_PRACTICE_ACTING:
    case CONTEST_COMPETITION_ACTING:
        return;
    }

    if (contest->isLinkContest == FALSE) {
        VarsFlags *varsFlags = SaveData_GetVarsFlags(contest->saveData);

        if (contest->data.competitionType == CONTEST_COMPETITION_LINK_OR_OFFICIAL && contest->data.contestRank >= CONTEST_RANK_MASTER && Contest_GetPlayerContestPlacement(contest) == CONTEST_PLACEMENT_FIRST
            && SystemFlag_CheckContestMaster(varsFlags, contest->data.contestType) == FALSE) {
            SystemFlag_SetContestMaster(varsFlags, contest->data.contestType);
        }

        if (Contest_GetPlayerContestPlacement(contest) == CONTEST_PLACEMENT_FIRST) {
            u8 hasRibbon = TRUE;
            int monDataRibbon = CalcMonDataRibbon(contest->data.contestRank, contest->data.contestType);

            if (Pokemon_GetValue(contest->playerMon, monDataRibbon, NULL) == FALSE) {
                ribbonWon = TRUE;
            }

            Pokemon_SetValue(contest->playerMon, monDataRibbon, &hasRibbon);
            TVSegment_Save_RibbonMaster(contest->saveData, contest->playerMon, monDataRibbon);
        }

        TVBroadcast *broadcast = SaveData_GetTVBroadcast(contest->saveData);
        TVBroadcast_SetContestHallShowInfo(broadcast, contest->playerMon, contest->data.contestType, contest->data.contestRank, contest->data.results[contest->data.playerContestantID].contestPlacement + 1);

        GameRecords *gameRecords = SaveData_GetGameRecords(contest->saveData);
        GameRecords_IncrementRecordValue(gameRecords, RECORD_SUPER_CONTEST_PARTICIPATIONS);

        if (Contest_GetPlayerContestPlacement(contest) == CONTEST_PLACEMENT_FIRST) {
            GameRecords_IncrementRecordValue(gameRecords, RECORD_OFFICIAL_CONTEST_WINS);
            GameRecords_IncrementTrainerScore(gameRecords, TRAINER_SCORE_EVENT_WIN_OFFICIAL_CONTEST);
        }

        if (ribbonWon == TRUE) {
            GameRecords_IncrementRecordValue(gameRecords, RECORD_RIBBONS_WON);
        }

        Pokedex *pokedex = SaveData_GetPokedex(contest->saveData);

        for (int i = contest->data.connectionCount; i < CONTEST_NUM_PARTICIPANTS; i++) {
            Pokedex_Encounter(pokedex, contest->data.contestMons[i]);
        }
    } else {
        LinkContestRecords_IncrementSavaData(contest->saveData, contest->data.contestType, contest->data.results[contest->data.playerContestantID].contestPlacement);

        GameRecords *records = SaveData_GetGameRecords(contest->saveData);
        GameRecords_IncrementRecordValue(records, RECORD_LINK_CONTEST_PARTICIPATIONS);

        if (Contest_GetPlayerContestPlacement(contest) == CONTEST_PLACEMENT_FIRST) {
            GameRecords_IncrementRecordValue(records, RECORD_LINK_CONTEST_WINS);
            GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_WIN_LINK_CONTEST);
        }

        void *journalEntryOnlineEvent = JournalEntry_CreateEventPlacedInContest(contest->data.results[contest->data.playerContestantID].contestPlacement + 1, HEAP_ID_FIELD2);
        JournalEntry *unused = SaveData_GetJournal(contest->saveData);

        JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
    }

    if (Contest_GetPlayerContestPlacement(contest) == CONTEST_PLACEMENT_FIRST) {
        ImageClips *imageClips = SaveData_GetImageClips(contest->saveData);
        ContestPhoto *savedPhoto = ImageClips_GetContestPhoto(imageClips, contest->data.contestType);

        ContestPhoto_Init(savedPhoto);
        ContestPhoto_Copy(savedPhoto, contest->data.photos[contest->data.playerContestantID]);
        ContestPhoto_SetMagic(savedPhoto);
    }

    if (Contest_GetPlayerContestPlacement(contest) == CONTEST_PLACEMENT_FIRST) {
        Pokemon_UpdateFriendship(contest->playerMon, FRIENDSHIP_EVENT_CONTEST_WIN, mapID);
    }
}

static void Contest_SetLCRNGSeed(Contest *unused)
{
    LCRNG_SetSeed((GetSecondsSinceMidnight() * (LCRNG_GetSeed() + 10)) & 0xffff);
}

u16 Contest_GetRNGNext(Contest *unused)
{
    return LCRNG_Next();
}

u16 Contest_GetSeededRNGNext(u32 seed, u32 *destRNGVal)
{
    u32 rngVal = ARNG_Next(seed);
    *destRNGVal = rngVal;

    return rngVal / LCRNG_DIVISOR;
}

static void Contest_GetContestantLinkInfo(Contest *contest, int contestantID, ContestantLinkInfo *destLinkInfo)
{
    destLinkInfo->trainerGender = contest->data.trainerGenders[contestantID];
    destLinkInfo->npcSkillLevel = contest->data.npcSkillLevels[contestantID];
    destLinkInfo->monContestFame = contest->data.monContestFame[contestantID];
    destLinkInfo->contestantObjEventGFX = contest->data.contestantObjEventGFX[contestantID];
}
