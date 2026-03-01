#include "unk_020933F8.h"

#include <nitro.h>
#include <string.h>

#include "constants/contests.h"
#include "constants/heap.h"
#include "generated/accessories.h"
#include "generated/game_records.h"
#include "generated/object_events_gfx.h"
#include "generated/pokemon_contest_ranks.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_0202440C_decl.h"
#include "struct_defs/contest_camera_flash_task.h"
#include "struct_defs/contest_player_mon_dto.h"
#include "struct_defs/image_clips.h"
#include "struct_defs/struct_02029C88.h"
#include "struct_defs/struct_02095C48.h"
#include "struct_defs/visual_competition_app_args.h"

#include "field/field_system.h"
#include "overlay006/ov6_022489E4.h"
#include "overlay006/struct_ov6_02248DD8.h"
#include "overlay017/ov17_0223B140.h"
#include "overlay017/ov17_0223CB1C.h"
#include "overlay017/ov17_0223DAD0.h"
#include "overlay017/ov17_0224F4D4.h"
#include "overlay022/ov22_02255D44.h"
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
#include "tv_episode_segment.h"
#include "unk_020298BC.h"
#include "unk_020363E8.h"
#include "unk_02094EDC.h"
#include "unk_02095AF0.h"
#include "vars_flags.h"

FS_EXTERN_OVERLAY(overlay17);
FS_EXTERN_OVERLAY(overlay22);

typedef struct ContestTaskEnv {
    SuperContest *superContest;
    int state;
} ContestTaskEnv;

static SuperContest *SuperContest_New(void);
static void SuperContest_InternalFree(SuperContest *superContest);
static void SuperContest_SetLCRNGSeed(SuperContest *superContest);
u16 SuperContest_GetRNGNext(SuperContest *superContest);
BOOL SuperContest_SetUpLinkContest(SuperContest *superContest);
static BOOL SuperContest_IsCommTaskDoneInternal(SuperContest *superContest);
static void sub_02093C6C(SysTask *param0, void *param1);
static BOOL FieldTask_RunContest(FieldTask *param0);
static BOOL FieldTask_RunPracticeCompetition(FieldTask *param0);
void SuperContest_GetVisualCompetitionAppArgs(SuperContest *superContest);
void SuperContest_VisualCompetitionAppArgsFree(SuperContest *superContest);
static void sub_020944E8(SuperContest *superContest);
static void sub_0209451C(SysTask *param0, void *param1);
static void sub_02094EB4(SuperContest *superContest, int contestantID, UnkStruct_ov6_02248DD8 *param2);
static void SysTask_DoContestCameraFlash(SysTask *param0, void *param1);
static int CalcMonContestFame(Pokemon *mon, enum PokemonContestType contestType);
static void sub_020939E0(SuperContest *superContest, int isGameCompleted, int isNatDexObtained);

const ApplicationManagerTemplate ActingCompetitionAppTemplate = {
    ActingCompetitionInit,
    ActingCompetitionMain,
    ActingCompetitionExit,
    FS_OVERLAY_ID(overlay17)
};

const ApplicationManagerTemplate DanceCompetitionAppTemplate = {
    DanceCompetitionInit,
    DanceCompetitionMain,
    DanceCompetitionExit,
    FS_OVERLAY_ID(overlay17)
};

const ApplicationManagerTemplate VisualCompetitionScoringAppTemplate = {
    VisualCompetitonScoringInit,
    VisualCompetitionScoringMain,
    VisualCompetitionScoringExit,
    FS_OVERLAY_ID(overlay17)
};

const ApplicationManagerTemplate ContestFinalScoringAppTemplate = {
    ContestFinalScoringInit,
    ContestFinalScoringMain,
    ContestFinalScoringExit,
    FS_OVERLAY_ID(overlay17)
};

const ApplicationManagerTemplate VisualCompetitionAppTemplate = {
    VisualCompetitionInit,
    VisualCompetitionMain,
    VisualCompetitionExit,
    FS_OVERLAY_ID(overlay22)
};

#define CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR 0xFF

__attribute__((aligned(4))) static const u8 sNormalRankCameraFrameDelays[][3] = {
    { 0x14, 0x14, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR },
    { 0xF, 0x19, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR }
};

__attribute__((aligned(4))) static const u8 sGreatRankCameraFrameDelays[][4] = {
    { 0xA, 0xA, 0x1E, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR },
    { 0xF, 0xF, 0xF, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR }
};

__attribute__((aligned(4))) static const u8 sUltraRankCameraFrameDelays[][5] = {
    { 0xA, 0x8, 0x14, 0x1C, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR },
    { 0xF, 0xF, 0x8, 0x8, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR }
};

__attribute__((aligned(4))) static const u8 sLinkMasterRankCameraFrameDelays[][6] = {
    { 0x8, 0x8, 0x8, 0x8, 0x1E, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR },
    { 0xF, 0xF, 0x8, 0x8, 0x14, CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR }
};

void FieldTask_InitRunContestTask(FieldTask *fieldTask, SuperContest *superContest)
{
    ContestTaskEnv *taskEnv = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(ContestTaskEnv));

    MI_CpuClear8(taskEnv, sizeof(ContestTaskEnv));
    taskEnv->superContest = superContest;

    switch (superContest->unk_00.competitionType) {
    case CONTEST_COMPETITION_UNK0:
    case CONTEST_COMPETITION_UNK1:
    case CONTEST_COMPETITION_LINK_OR_SUPER:
        FieldTask_InitCall(fieldTask, FieldTask_RunContest, taskEnv);
        break;
    default:
        FieldTask_InitCall(fieldTask, FieldTask_RunPracticeCompetition, taskEnv);
        break;
    }
}

enum ContestManagerState {
    CONTEST_MANAGER_STATE_START,
    CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK,
    CONTEST_MANAGER_STATE_START_COMM_SYNC_0,
    CONTEST_MANAGER_STATE_CONFIRM_COMM_SYNC_0,
    CONTEST_MANAGER_STATE_RUN_APP_VISUAL_COMPETITION,
    CONTEST_MANAGER_STATE_5,
    CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK_2,
    CONTEST_MANAGER_STATE_RUN_APP_VISUAL_COMPETITION_SCORING,
    CONTEST_MANAGER_STATE_RUN_APP_DANCE_COMPETITION,
    CONTEST_MANAGER_STATE_RUN_APP_ACTING_COMPETITION,
    CONTEST_MANAGER_STATE_RUN_APP_FINAL_SCORING,
    CONTEST_MANAGER_STATE_WAIT_ONE_FRAME,
    CONTEST_MANAGER_STATE_RETURN_TO_MAP,
    CONTEST_MANAGER_STATE_END
};

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
        if (taskEnv->superContest->isLinkContest == FALSE || SuperContest_IsCommTaskDoneInternal(taskEnv->superContest) == 1) {
            taskEnv->state++;
        }
        break;
    case CONTEST_MANAGER_STATE_START_COMM_SYNC_0:
        if (taskEnv->superContest->isLinkContest == TRUE) {
            CommTiming_StartSync(0);
        }

        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_CONFIRM_COMM_SYNC_0:
        if (taskEnv->superContest->isLinkContest == TRUE) {
            if (CommTiming_IsSyncState(0) == TRUE) {
                taskEnv->state++;
            }
        } else {
            taskEnv->state++;
        }
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_VISUAL_COMPETITION:
        SuperContest_GetVisualCompetitionAppArgs(taskEnv->superContest);
        FieldTask_RunApplication(fieldTask, &VisualCompetitionAppTemplate, taskEnv->superContest->visualCompetitionAppArgs);
        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_5:
        SuperContest_VisualCompetitionAppArgsFree(taskEnv->superContest);

        if (taskEnv->superContest->isLinkContest == TRUE) {
            sub_020944E8(taskEnv->superContest);
            taskEnv->state++;
        } else {
            taskEnv->state = CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK_2;
        }
        break;
    case CONTEST_MANAGER_STATE_WAIT_FOR_COMM_TASK_2:
        if (taskEnv->superContest->isLinkContest == FALSE || SuperContest_IsCommTaskDoneInternal(taskEnv->superContest) == TRUE) {
            taskEnv->state++;
        }
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_VISUAL_COMPETITION_SCORING:
        FieldTask_RunApplication(fieldTask, &VisualCompetitionScoringAppTemplate, taskEnv->superContest);
        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_DANCE_COMPETITION:
        if (taskEnv->superContest->unk_00.competitionType == CONTEST_COMPETITION_UNK1 || taskEnv->superContest->unk_00.competitionType == CONTEST_COMPETITION_LINK_OR_SUPER) {
            FieldTask_RunApplication(fieldTask, &DanceCompetitionAppTemplate, taskEnv->superContest);
        }

        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_ACTING_COMPETITION:
        if (taskEnv->superContest->unk_00.competitionType == CONTEST_COMPETITION_UNK0 || taskEnv->superContest->unk_00.competitionType == CONTEST_COMPETITION_LINK_OR_SUPER) {
            FieldTask_RunApplication(fieldTask, &ActingCompetitionAppTemplate, taskEnv->superContest);
        }

        taskEnv->state++;
        break;
    case CONTEST_MANAGER_STATE_RUN_APP_FINAL_SCORING:
        FieldTask_RunApplication(fieldTask, &ContestFinalScoringAppTemplate, taskEnv->superContest);
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
        GF_ASSERT(0);
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
    case 0:
        FieldTransition_FinishMap(fieldTask);
        taskEnv->state++;
        break;
    case 1:
        switch (taskEnv->superContest->unk_00.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_VISUAL:
        case CONTEST_COMPETITION_VISUAL:
            SuperContest_GetVisualCompetitionAppArgs(taskEnv->superContest);
            FieldTask_RunApplication(fieldTask, &VisualCompetitionAppTemplate, taskEnv->superContest->visualCompetitionAppArgs);
            break;
        }

        taskEnv->state++;
        break;
    case 2:
        switch (taskEnv->superContest->unk_00.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_VISUAL:
        case CONTEST_COMPETITION_VISUAL:
            SuperContest_VisualCompetitionAppArgsFree(taskEnv->superContest);
            break;
        }

        taskEnv->state++;
        break;
    case 3:
        taskEnv->state++;
        break;
    case 4:
        switch (taskEnv->superContest->unk_00.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_VISUAL:
        case CONTEST_COMPETITION_VISUAL:
            FieldTask_RunApplication(fieldTask, &VisualCompetitionScoringAppTemplate, taskEnv->superContest);
            break;
        }

        taskEnv->state++;
        break;
    case 5:
        switch (taskEnv->superContest->unk_00.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_DANCE:
        case CONTEST_COMPETITION_DANCE:
            sub_02095338(taskEnv->superContest);
            FieldTask_RunApplication(fieldTask, &DanceCompetitionAppTemplate, taskEnv->superContest);
            break;
        }

        taskEnv->state++;
        break;
    case 6:
        switch (taskEnv->superContest->unk_00.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_ACTING:
        case CONTEST_COMPETITION_ACTING:
            FieldTask_RunApplication(fieldTask, &ActingCompetitionAppTemplate, taskEnv->superContest);
            break;
        }

        taskEnv->state++;
        break;
    case 7: {
        s32 v2[4];
        int v3, v4;

        switch (taskEnv->superContest->unk_00.competitionType) {
        case CONTEST_COMPETITION_PRACTICE_VISUAL:
        case CONTEST_COMPETITION_VISUAL:
            for (v3 = 0; v3 < 4; v3++) {
                v2[v3] = sub_02095928(taskEnv->superContest, v3)
                    + sub_0209598C(taskEnv->superContest, v3);
            }
            break;
        case CONTEST_COMPETITION_PRACTICE_DANCE:
        case CONTEST_COMPETITION_DANCE:
            for (v3 = 0; v3 < 4; v3++) {
                v2[v3] = taskEnv->superContest->unk_00.unk_118[v3].unk_04;
            }
            break;
        case CONTEST_COMPETITION_PRACTICE_ACTING:
        case CONTEST_COMPETITION_ACTING:
            for (v3 = 0; v3 < 4; v3++) {
                v2[v3] = taskEnv->superContest->unk_00.unk_118[v3].unk_06;
            }
            break;
        }

        v4 = 0;

        for (v3 = 1; v3 < 4; v3++) {
            if (v2[0] < v2[v3]) {
                v4++;
            }
        }

        taskEnv->superContest->unk_00.unk_118[0].contestPlacement = v4;
    }
        taskEnv->state++;
        break;
    case 8:
        FieldTransition_StartMap(fieldTask);
        taskEnv->state++;
        break;
    default:
        GF_ASSERT(0);
    case 9:
        Heap_Free(taskEnv);
        return 1;
    }

    return 0;
}

static SuperContest *SuperContest_New(void)
{
    SuperContest *superContest = Heap_Alloc(HEAP_ID_20, sizeof(SuperContest));
    MI_CpuClear8(superContest, sizeof(SuperContest));

    superContest->unk_00.playerContestantID = PLAYER_CONTESTANT_ID;
    superContest->unk_00.connectionCount = 1;
    superContest->unk_00.NPCCount = CONTEST_NUM_PARTICIPANTS - 1;

    return superContest;
}

static void SuperContest_InternalFree(SuperContest *superContest)
{
    Heap_Free(superContest);
}

SuperContest *SuperContest_Init(const PlayerMonContestDTO *playerMonContestDTO)
{
    Heap_Create(HEAP_ID_FIELD2, HEAP_ID_20, 0x3000 + 0x1000);

    SuperContest *superContest = SuperContest_New();
    superContest->rngSeed = LCRNG_GetSeed();

    SuperContest_SetLCRNGSeed(superContest);

    superContest->unk_00.contestType = playerMonContestDTO->contestType;
    superContest->unk_00.contestRank = playerMonContestDTO->contestRank;
    superContest->unk_00.competitionType = playerMonContestDTO->competitionType;
    superContest->unk_00.unk_112 = sub_02095A74(playerMonContestDTO->contestRank, FALSE);
    superContest->unk_00.unk_10C = superContest->unk_00.playerContestantID;
    superContest->unk_00.unk_115 = 110;
    superContest->unk_00.unk_10D = superContest->unk_00.unk_115;
    superContest->unk_00.unk_10E = 1;
    superContest->imageClips = playerMonContestDTO->imageClips;
    superContest->options = playerMonContestDTO->options;
    superContest->saveData = playerMonContestDTO->saveData;
    superContest->playerMon = playerMonContestDTO->mon;
    superContest->monPartySlot = playerMonContestDTO->monPartySlot;
    superContest->trainerInfo = playerMonContestDTO->trainerInfo;
    superContest->isGameCompleted = playerMonContestDTO->isGameCompleted;
    superContest->isNatDexObtained = playerMonContestDTO->isNatDexObtained;

    int i;
    for (i = 0; i < 4; i++) {
        superContest->unk_00.unk_E8[i] = sub_02029C88(HEAP_ID_20);
    }

    sub_020954F0(superContest, HEAP_ID_FIELD2, superContest->unk_00.unk_10E, superContest->unk_00.contestType, superContest->unk_00.contestRank);
    superContest->party = Party_New(HEAP_ID_20);

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        superContest->unk_00.contestMons[i] = Pokemon_New(HEAP_ID_20);
    }

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        superContest->chatotCry[i] = ChatotCry_New(HEAP_ID_20);
    }

    ChatotCry_Copy(superContest->chatotCry[PLAYER_CONTESTANT_ID], playerMonContestDTO->chatotCry);

    {
        Pokemon_Copy(playerMonContestDTO->mon, superContest->unk_00.contestMons[PLAYER_CONTESTANT_ID]);
        superContest->unk_00.trainerNames[PLAYER_CONTESTANT_ID] = String_Init(8, HEAP_ID_20);
        String_Copy(superContest->unk_00.trainerNames[PLAYER_CONTESTANT_ID], playerMonContestDTO->trainerName);

        superContest->unk_00.trainerGenders[PLAYER_CONTESTANT_ID] = TrainerInfo_Gender(playerMonContestDTO->trainerInfo);
        superContest->unk_00.unk_FC[PLAYER_CONTESTANT_ID] = 0;
        superContest->unk_00.monContestFame[PLAYER_CONTESTANT_ID] = CalcMonContestFame(superContest->unk_00.contestMons[PLAYER_CONTESTANT_ID], superContest->unk_00.contestType);

        if (SuperContest_IsPracticeCompetition(superContest) == FALSE) {
            if (TrainerInfo_Gender(playerMonContestDTO->trainerInfo) == GENDER_MALE) {
                superContest->unk_00.contestantObjEventGFX[PLAYER_CONTESTANT_ID] = OBJ_EVENT_GFX_PLAYER_M_CONTEST;
            } else {
                superContest->unk_00.contestantObjEventGFX[PLAYER_CONTESTANT_ID] = OBJ_EVENT_GFX_PLAYER_F_CONTEST;
            }
        } else {
            if (TrainerInfo_Gender(playerMonContestDTO->trainerInfo) == GENDER_MALE) {
                superContest->unk_00.contestantObjEventGFX[PLAYER_CONTESTANT_ID] = OBJ_EVENT_GFX_PLAYER_M;
            } else {
                superContest->unk_00.contestantObjEventGFX[PLAYER_CONTESTANT_ID] = OBJ_EVENT_GFX_PLAYER_F;
            }
        }
    }

    sub_020939E0(superContest, playerMonContestDTO->isGameCompleted, playerMonContestDTO->isNatDexObtained);

    if (SuperContest_IsPracticeCompetition(superContest) == TRUE) {
        for (i = 0; i < 4; i++) {
            superContest->unk_156[i] = 4 - i - 1;
        }
    } else {
        for (i = 0; i < 4; i++) {
            superContest->unk_156[i] = i;
        }
    }

    return superContest;
}

static void sub_020939E0(SuperContest *superContest, int isGameCompleted, int isNatDexObtained)
{
    int v0 = 4 - 1;
    int i;

    sub_02094F04(superContest, HEAP_ID_FIELD2, v0, superContest->unk_00.contestType, superContest->unk_00.contestRank, superContest->unk_00.competitionType, isGameCompleted, isNatDexObtained);

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        sub_02095380(&superContest->unk_00.unk_10[i], superContest->unk_00.contestMons[i], HEAP_ID_20);
    }

    // starts at 1, because 0 was already initialized for player
    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        if (superContest->unk_00.trainerNames[i] == NULL) {
            superContest->unk_00.trainerNames[i] = String_Init(8, HEAP_ID_20);
        }

        Pokemon_GetValue(superContest->unk_00.contestMons[i], MON_DATA_OT_NAME_STRING, superContest->unk_00.trainerNames[i]);
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        superContest->unk_00.trainerGenders[i] = superContest->unk_00.unk_10[i].unk_20_12;
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        superContest->unk_00.unk_FC[i] = superContest->unk_00.unk_10[i].unk_20_14;
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        superContest->unk_00.monContestFame[i] = superContest->unk_00.unk_10[i].unk_2E;
    }

    for (i = 1; i < CONTEST_NUM_PARTICIPANTS; i++) {
        superContest->unk_00.contestantObjEventGFX[i] = superContest->unk_00.unk_10[i].unk_08;
    }

    sub_020951B0(superContest, HEAP_ID_FIELD2);
}

void SuperContest_Free(SuperContest *superContest)
{
    Heap_Free(superContest->party);

    for (int i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        Heap_Free(superContest->unk_00.contestMons[i]);
        String_Free(superContest->unk_00.trainerNames[i]);
        Heap_Free(superContest->unk_00.unk_E8[i]);
        Heap_Free(superContest->chatotCry[i]);
    }

    LCRNG_SetSeed(superContest->rngSeed);
    SuperContest_InternalFree(superContest);
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

        if (ribbon == 0) {
            break;
        }

        fame++;
    }

    return fame;
}

void SuperContest_GetVisualCompetitionAppArgs(SuperContest *superContest)
{
    VisualCompetitionAppArgs *appArgs;

    sub_0202A25C(superContest->unk_00.unk_E8[superContest->unk_00.playerContestantID]);

    appArgs = Heap_Alloc(HEAP_ID_20, sizeof(VisualCompetitionAppArgs));
    MI_CpuClear8(appArgs, sizeof(VisualCompetitionAppArgs));

    appArgs->mon = superContest->unk_00.contestMons[superContest->unk_00.playerContestantID];
    appArgs->unk_04 = superContest->unk_00.unk_E8[superContest->unk_00.playerContestantID];
    appArgs->unk_08 = superContest->unk_00.unk_112;

    if (superContest->isLinkContest == TRUE) {
        appArgs->contestRank = CONTEST_RANK_LINK;
    } else {
        appArgs->contestRank = superContest->unk_00.contestRank;
    }

    appArgs->competitionType = superContest->unk_00.competitionType;
    appArgs->contestType = superContest->unk_00.contestType;
    appArgs->fashionCase = ImageClips_GetFashionCase(superContest->imageClips);
    appArgs->unk_1C = &superContest->unk_1984;
    appArgs->options = superContest->options;
    appArgs->trainerInfo = superContest->trainerInfo;

    superContest->visualCompetitionAppArgs = appArgs;
}

void SuperContest_VisualCompetitionAppArgsFree(SuperContest *superContest)
{
    Heap_Free(superContest->visualCompetitionAppArgs);
    superContest->visualCompetitionAppArgs = NULL;
}

static void sub_02093C6C(SysTask *sysTask, void *param1)
{
    SuperContest *superContest = param1;

    switch (superContest->linkState) {
    case 0:
        CommTiming_StartSync(5);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 1:
        if (CommTiming_IsSyncState(5) == 1) {
            superContest->linkState++;
        }
        break;
    case 2:
        if (ov6_02248A64(superContest) == 1) {
            superContest->linkState++;
        }
        break;
    case 3:
        if (superContest->unk_568 >= superContest->unk_00.connectionCount) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    case 4:
        CommTiming_StartSync(6);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 5:
        if (CommTiming_IsSyncState(6) == 1) {
            superContest->linkState++;
        }
        break;
    case 6:
        if (ov6_02248AF0(superContest, superContest->unk_00.playerContestantID, superContest->unk_00.contestMons[PLAYER_CONTESTANT_ID]) == 1) {
            superContest->linkState++;
        }
        break;
    case 7:
        if (superContest->unk_568 >= superContest->unk_00.connectionCount) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    case 8:
        CommTiming_StartSync(7);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 9:
        if (CommTiming_IsSyncState(7) == 1) {
            superContest->linkState++;
        }
        break;
    case 10:
        if (superContest->unk_00.playerContestantID == superContest->unk_00.unk_10C) {
            if (ov6_02248B70(superContest, superContest->unk_00.contestMons) == 1) {
                superContest->linkState++;
            }
        } else {
            superContest->linkState++;
        }
        break;
    case 11:
        if (superContest->unk_568 > 0) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    case 12:
        CommTiming_StartSync(8);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 13:
        if (CommTiming_IsSyncState(8) == 1) {
            superContest->linkState++;
        }
        break;
    case 14:
        if (ov6_02248BE8(superContest, superContest->unk_00.playerContestantID, &superContest->unk_00.unk_10[0]) == 1) {
            superContest->linkState++;
        }
        break;
    case 15:
        if (superContest->unk_568 >= superContest->unk_00.connectionCount) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    case 16:
        CommTiming_StartSync(9);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 17:
        if (CommTiming_IsSyncState(9) == 1) {
            superContest->linkState++;
        }
        break;
    case 18:
        if (superContest->unk_00.playerContestantID == superContest->unk_00.unk_10C) {
            if (ov6_02248BE8(superContest, superContest->unk_15C, &superContest->unk_00.unk_10[superContest->unk_15C]) == 1) {
                superContest->linkState++;
            }
        } else {
            superContest->linkState++;
        }
        break;
    case 19:
        if (superContest->unk_568 > 0) {
            superContest->unk_568 = 0;
            superContest->unk_15C++;

            if (superContest->unk_15C < 4) {
                superContest->linkState--;
            } else {
                superContest->unk_15C = 0;
                superContest->linkState++;
            }
        }
        break;
    case 20:
        CommTiming_StartSync(10);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 21:
        if (CommTiming_IsSyncState(10) == 1) {
            superContest->linkState++;
        }
        break;
    case 22:
        if (ov6_02248CE8(superContest, superContest->unk_00.playerContestantID, superContest->unk_00.trainerNames[PLAYER_CONTESTANT_ID]) == 1) {
            superContest->linkState++;
        }
        break;
    case 23:
        if (superContest->unk_568 >= superContest->unk_00.connectionCount) {
            {
                int netID;
                const TrainerInfo *v2;

                for (netID = 0; netID < superContest->unk_00.connectionCount; netID++) {
                    v2 = CommInfo_TrainerInfo(netID);
                    String_Clear(superContest->unk_00.trainerNames[netID]);
                    TrainerInfo_NameString(v2, superContest->unk_00.trainerNames[netID]);
                }
            }

            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    case 24:
        CommTiming_StartSync(11);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 25:
        if (CommTiming_IsSyncState(11) == 1) {
            superContest->linkState++;
        }
        break;
    case 26:
        if (superContest->unk_00.playerContestantID == superContest->unk_00.unk_10C) {
            if (ov6_02248CE8(superContest, superContest->unk_15C, superContest->unk_00.trainerNames[superContest->unk_15C]) == 1) {
                superContest->linkState++;
            }
        } else {
            superContest->linkState++;
        }
        break;
    case 27:
        if (superContest->unk_568 > 0) {
            superContest->unk_568 = 0;
            superContest->unk_15C++;

            if (superContest->unk_15C < 4) {
                superContest->linkState--;
            } else {
                superContest->unk_15C = 0;
                superContest->linkState++;
            }
        }
        break;
    case 28:
        MI_CpuCopy8(superContest->chatotCry[PLAYER_CONTESTANT_ID], superContest->unk_569, ChatotCry_SaveSize());
        CommTiming_StartSync(12);

        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 29:
        if (CommTiming_IsSyncState(12) == 1) {
            superContest->linkState++;
        }
        break;
    case 30:
        if (ov6_02248D64(superContest, superContest->unk_00.playerContestantID, NULL) == 1) {
            superContest->linkState++;
        }
        break;
    case 31:
        if (superContest->unk_568 >= superContest->unk_00.connectionCount) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    case 32:
        CommTiming_StartSync(13);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 33:
        if (CommTiming_IsSyncState(13) == 1) {
            superContest->linkState++;
        }
        break;
    case 34:
        if (superContest->unk_00.playerContestantID == superContest->unk_00.unk_10C) {
            if (ov6_02248D64(superContest, superContest->unk_15C, superContest->chatotCry[superContest->unk_15C]) == 1) {
                superContest->linkState++;
            }
        } else {
            superContest->linkState++;
        }
        break;
    case 35:
        if (superContest->unk_568 > 0) {
            superContest->unk_568 = 0;
            superContest->unk_15C++;

            if (superContest->unk_15C < 4) {
                superContest->linkState--;
            } else {
                superContest->unk_15C = 0;
                superContest->linkState++;
            }
        }
        break;
    case 36:
        CommTiming_StartSync(14);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 37:
        if (CommTiming_IsSyncState(14) == 1) {
            superContest->linkState++;
        }
        break;
    case 38: {
        UnkStruct_ov6_02248DD8 v3;

        sub_02094EB4(superContest, 0, &v3);

        if (ov6_02248DD8(superContest, superContest->unk_00.playerContestantID, &v3) == 1) {
            superContest->linkState++;
        }
    } break;
    case 39:
        if (superContest->unk_568 >= superContest->unk_00.connectionCount) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    case 40:
        CommTiming_StartSync(15);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 41:
        if (CommTiming_IsSyncState(15) == 1) {
            superContest->linkState++;
        }
        break;
    case 42:
        if (superContest->unk_00.playerContestantID == superContest->unk_00.unk_10C) {
            UnkStruct_ov6_02248DD8 v4;

            sub_02094EB4(superContest, superContest->unk_15C, &v4);

            if (ov6_02248DD8(superContest, superContest->unk_15C, &v4) == 1) {
                superContest->linkState++;
            }
        } else {
            superContest->linkState++;
        }
        break;
    case 43:
        if (superContest->unk_568 > 0) {
            superContest->unk_568 = 0;
            superContest->unk_15C++;

            if (superContest->unk_15C < 4) {
                superContest->linkState--;
            } else {
                superContest->unk_15C = 0;
                superContest->linkState++;
            }
        }
        break;
    case 44:
        CommTiming_StartSync(16);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 45:
        if (CommTiming_IsSyncState(16) == 1) {
            superContest->linkState++;
        }
        break;
    case 46:
        if (ov6_02248C68(superContest, superContest->unk_00.playerContestantID, superContest->unk_00.unk_C0) == 1) {
            superContest->linkState++;
        }
        break;
    case 47:
        if (superContest->unk_568 >= superContest->unk_00.connectionCount) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    default: {
        int contestantID;
        const TrainerInfo *trainerInfo;

        for (contestantID = 0; contestantID < superContest->unk_00.connectionCount; contestantID++) {
            trainerInfo = CommInfo_TrainerInfo(contestantID);
            superContest->unk_00.trainerGenders[contestantID] = TrainerInfo_Gender(trainerInfo);
        }

        for (; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
            superContest->unk_00.trainerGenders[contestantID] = superContest->unk_00.unk_10[contestantID].unk_20_12;
        }
    }

        superContest->unk_1984.unk_14 = superContest->unk_00.unk_10C;
        superContest->unk_1984.unk_15 = superContest->unk_00.unk_114;
        superContest->unk_1984.unk_16 = 1;
        superContest->unk_1984.unk_17 = superContest->unk_00.connectionCount;

        superContest->commTask = NULL;
        superContest->linkState = 0;

        SysTask_Done(sysTask);
        return;
    }
}

BOOL SuperContest_SetUpLinkContest(SuperContest *superContest)
{
    if (CommSys_IsInitialized() == FALSE) {
        return FALSE;
    }

    superContest->isLinkContest = TRUE;

    int connectionCount = CommSys_ConnectedCount();
    int netID = CommSys_CurNetId();

    {
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
            superContest->isGameCompleted = FALSE;
        } else {
            superContest->isGameCompleted = TRUE;
        }

        for (i = 0; i < connectionCount; i++) {
            connectedTrainerInfo = CommInfo_TrainerInfo(i);
            GF_ASSERT(connectedTrainerInfo != NULL);

            if (TrainerInfo_HasNationalDex(connectedTrainerInfo) == FALSE) {
                break;
            }
        }

        if (i != connectionCount) {
            superContest->isNatDexObtained = FALSE;
        } else {
            superContest->isNatDexObtained = TRUE;
        }

        sub_020939E0(superContest, superContest->isGameCompleted, superContest->isNatDexObtained);

        for (i = 0; i < connectionCount; i++) {
            connectedTrainerInfo = CommInfo_TrainerInfo(i);

            if (TrainerInfo_GameCode(connectedTrainerInfo) == 0) {
                superContest->unk_15B++;
            }
        }
    }

    superContest->unk_00.unk_114 = netID;
    superContest->unk_00.NPCCount = CONTEST_NUM_PARTICIPANTS - connectionCount;
    superContest->unk_00.connectionCount = connectionCount;
    superContest->unk_00.playerContestantID = netID;
    superContest->unk_00.unk_115 = 110;
    superContest->unk_00.unk_112 = sub_02095A74(superContest->unk_00.contestRank, TRUE);

    sub_02095AF0(superContest);

    superContest->commTask = SysTask_Start(sub_02093C6C, superContest, 10);

    return TRUE;
}

BOOL SuperContest_IsCommTaskDone(SuperContest *superContest)
{
    return SuperContest_IsCommTaskDoneInternal(superContest);
}

BOOL SuperContest_IsCommTaskDoneInternal(SuperContest *superContest)
{
    if (superContest->commTask == NULL) {
        return TRUE;
    }

    return FALSE;
}

static void sub_020944E8(SuperContest *superContest)
{
    GF_ASSERT(superContest->commTask == NULL);

    superContest->linkState = 0;
    superContest->commTask = SysTask_Start(sub_0209451C, superContest, 10);
}

static void sub_0209451C(SysTask *sysTask, void *param1)
{
    SuperContest *superContest = param1;

    switch (superContest->linkState) {
    case 0:
        CommTiming_StartSync(17);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 1:
        if (CommTiming_IsSyncState(17) == 1) {
            superContest->linkState++;
        }
        break;
    case 2:
        if (sub_02095B5C(superContest, superContest->unk_00.playerContestantID, superContest->unk_00.unk_E8[superContest->unk_00.playerContestantID]) == 1) {
            superContest->linkState++;
        }
        break;
    case 3:
        if (superContest->unk_568 >= superContest->unk_00.connectionCount) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    case 4:
        CommTiming_StartSync(18);
        superContest->unk_568 = 0;
        superContest->linkState++;
        break;
    case 5:
        if (CommTiming_IsSyncState(18) == 1) {
            superContest->linkState++;
        }
        break;
    case 6:
        if (superContest->unk_00.playerContestantID == superContest->unk_00.unk_10C) {
            if (sub_02095BEC(superContest, superContest->unk_00.unk_E8) == 1) {
                superContest->linkState++;
            }
        } else {
            superContest->linkState++;
        }
        break;
    case 7:
        if (superContest->unk_568 > 0) {
            superContest->unk_568 = 0;
            superContest->linkState++;
        }
        break;
    default:
        superContest->commTask = NULL;
        superContest->linkState = 0;
        SysTask_Done(sysTask);
        return;
    }
}

void SuperContest_BufferJudgeName(SuperContest *superContest, int judgeID, StringTemplate *strTemplate, u32 idx)
{
    StringTemplate_SetContestJudgeName(strTemplate, idx, superContest->unk_00.unk_C0[judgeID].judgeNameMessageID);
}

void SuperContest_BufferContestantTrainerName(SuperContest *superContest, int contestantEntryNum, StringTemplate *strTemplate, u32 idx)
{
    int contestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);
    StringTemplate_SetString(strTemplate, idx, superContest->unk_00.trainerNames[contestantID], superContest->unk_00.trainerGenders[contestantID], 1, GAME_LANGUAGE);
}

void SuperContest_BufferMonNickname(SuperContest *superContest, int contestantEntryNum, StringTemplate *strTemplate, u32 idx)
{
    BoxPokemon *boxMon;
    int contestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);
    boxMon = Pokemon_GetBoxPokemon(superContest->unk_00.contestMons[contestantID]);

    StringTemplate_SetNickname(strTemplate, idx, boxMon);
}

void SuperContest_BufferContestRank(SuperContest *superContest, StringTemplate *strTemplate, u32 idx)
{
    u32 contestRankMessageID = Contest_GetContestRankTitleMessageID(superContest->unk_00.contestRank, superContest->unk_00.competitionType, superContest->isLinkContest);
    StringTemplate_SetContestRankName(strTemplate, idx, contestRankMessageID);
}

void SuperContest_BufferContestType(SuperContest *superContest, StringTemplate *strTemplate, u32 idx)
{
    u32 contestTypeMessageID = Contest_GetFullContestTypeMessageID(superContest->unk_00.contestType, superContest->unk_00.competitionType);
    StringTemplate_SetContestTypeName(strTemplate, idx, contestTypeMessageID);
}

void SuperContest_BufferWinningContestantTrainerName(SuperContest *superContest, StringTemplate *strTemplate, u32 param2)
{
    int i;

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        if (superContest->unk_00.unk_118[i].contestPlacement == 0) {
            break;
        }
    }

    int contestantID = i;
    int contestantEntryNum = Contest_ContestantIDToContestantEntryNum(contestantID);

    SuperContest_BufferContestantTrainerName(superContest, contestantEntryNum, strTemplate, param2);
}

void SuperContest_BufferWinningContestantMonName(SuperContest *superContest, StringTemplate *strTemplate, u32 idx)
{
    int contestantID, contestantEntryNum;
    int i;

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        if (superContest->unk_00.unk_118[i].contestPlacement == 0) {
            break;
        }
    }

    contestantID = i;
    contestantEntryNum = Contest_ContestantIDToContestantEntryNum(contestantID);

    SuperContest_BufferMonNickname(superContest, contestantEntryNum, strTemplate, idx);
}

BOOL SuperContest_True(SuperContest *superContest)
{
    return TRUE;
}

void SuperContest_StartCommSync(SuperContest *superContest, u8 syncNo)
{
    if (superContest->isLinkContest == FALSE) {
        return;
    }

    CommTiming_StartSync(syncNo);
}

BOOL SuperContest_IsSyncState(SuperContest *superContest, u8 syncState)
{
    if (superContest->isLinkContest == FALSE) {
        return TRUE;
    }

    if (CommTiming_IsSyncState(syncState) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

int SuperContest_GetPlayerContestPlacement(SuperContest *superContest)
{
    return superContest->unk_00.unk_118[superContest->unk_00.playerContestantID].contestPlacement;
}

int SuperContest_GetWinningContestantEntryNum(SuperContest *superContest)
{
    int contestantID;

    for (contestantID = 0; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
        if (superContest->unk_00.unk_118[contestantID].contestPlacement == 0) {
            return Contest_ContestantIDToContestantEntryNum(contestantID);
        }
    }

    return 0;
}

int SuperContest_GetPlayerContestantEntryNum(SuperContest *superContest)
{
    return Contest_ContestantIDToContestantEntryNum(superContest->unk_00.playerContestantID);
}

int SuperContest_GetContestantObjEventGFX(SuperContest *superContest, int contestantEntryNum)
{
    int contestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);
    int contestantObjEventGFX = superContest->unk_00.contestantObjEventGFX[contestantID];

    return contestantObjEventGFX;
}

int SuperContest_GetContestantMonContestFame(SuperContest *superContest, int contestantEntryNum)
{
    int ContestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);
    return superContest->unk_00.monContestFame[ContestantID];
}

int SuperContest_GetContestMode(SuperContest *superContest)
{
    if (superContest->isLinkContest == TRUE) {
        return CONTEST_MODE_LINK;
    }

    if (SuperContest_IsPracticeCompetition(superContest) == TRUE) {
        return CONTEST_MODE_PRACTICE;
    }

    return CONTEST_MODE_SUPER;
}

void SuperContest_GetContestInfo(SuperContest *superContest, u16 *contestRank, u16 *contestType, u16 *competitionType, u16 *monPartySlot)
{
    *contestRank = superContest->unk_00.contestRank;
    *contestType = superContest->unk_00.contestType;
    *competitionType = superContest->unk_00.competitionType;
    *monPartySlot = superContest->monPartySlot;
}

void SuperContest_LockAutoScrollForLinkContests(SuperContest *superContest)
{
    SetLockTextWithAutoScroll(superContest->isLinkContest);
}

void SuperContest_LockTextSpeed(SuperContest *superContest)
{
    LockTextSpeed();
}

BOOL SuperContest_PlayerMonAlreadyHasRibbon(SuperContest *superContest)
{
    u32 monDataRibbon = CalcMonDataRibbon(superContest->unk_00.contestRank, superContest->unk_00.contestType);

    if (Pokemon_GetValue(superContest->playerMon, monDataRibbon, NULL) == 0) {
        return FALSE;
    }

    return TRUE;
}

void SuperContest_SetRibbonName(SuperContest *superContest, StringTemplate *string, u32 idx, int unused)
{
    u32 ribbonID, ribbon;

    switch (superContest->unk_00.contestType) {
    case CONTEST_TYPE_COOL:
        ribbonID = RIBBON_COOL + superContest->unk_00.contestRank;
        break;
    case CONTEST_TYPE_BEAUTY:
        ribbonID = RIBBON_BEAUTY + superContest->unk_00.contestRank;
        break;
    case CONTEST_TYPE_CUTE:
        ribbonID = RIBBON_CUTE + superContest->unk_00.contestRank;
        break;
    case CONTEST_TYPE_SMART:
        ribbonID = RIBBON_SMART + superContest->unk_00.contestRank;
        break;
    case CONTEST_TYPE_TOUGH:
        ribbonID = RIBBON_TOUGH + superContest->unk_00.contestRank;
        break;
    default:
        GF_ASSERT(0);
        return;
    }

    ribbon = Ribbon_GetData(ribbonID, RIBBON_DATA_NAME_ID);
    StringTemplate_SetRibbonName(string, idx, ribbon);
}

u32 SuperContest_CalcFirstTimeVictoryAccessoryReward(SuperContest *superContest)
{
    u32 accessoryID = ACCESSORY_COUNT;

    if (superContest->unk_00.unk_118[superContest->unk_00.playerContestantID].contestPlacement > 0) {
        return 0xffff;
    }

    switch (superContest->unk_00.contestType) {
    case CONTEST_TYPE_COOL:
        switch (superContest->unk_00.contestRank) {
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
        switch (superContest->unk_00.contestRank) {
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
        switch (superContest->unk_00.contestRank) {
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
        switch (superContest->unk_00.contestRank) {
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
        switch (superContest->unk_00.contestRank) {
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

    ImageClips *imageClips = SaveData_GetImageClips(superContest->saveData);
    FashionCase *fashionCase = ImageClips_GetFashionCase(imageClips);

    if (!FashionCase_CanFitAccessoryCount(fashionCase, accessoryID, 1)) {
        return 0xffff;
    }

    return accessoryID;
}

void SuperContest_StartCameraFlashTask(SuperContest *superContest, int contestantEntryNum)
{
    ContestCameraFlashTask *cameraFlashTask;

    GF_ASSERT(superContest->cameraFlashTask == NULL);

    cameraFlashTask = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(ContestCameraFlashTask));
    MI_CpuClear8(cameraFlashTask, sizeof(ContestCameraFlashTask));
    cameraFlashTask->contestantID = Contest_ContestantEntryNumToContestantID(contestantEntryNum);

    int varianceIndex = superContest->unk_00.unk_FC[cameraFlashTask->contestantID] & 1;

    if (superContest->isLinkContest == TRUE) {
        cameraFlashTask->cameraFlashFrameDelays = sLinkMasterRankCameraFrameDelays[varianceIndex];
    } else {
        switch (superContest->unk_00.contestRank) {
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

    cameraFlashTask->sysTask = SysTask_Start(SysTask_DoContestCameraFlash, superContest, 100);
    superContest->cameraFlashTask = cameraFlashTask;
}

BOOL SuperContest_CameraFlashTaskDone(SuperContest *superContest)
{
    if (superContest->cameraFlashTask == NULL) {
        return TRUE;
    }

    return FALSE;
}

static void SysTask_DoContestCameraFlash(SysTask *sysTask, void *superContestParam)
{
    SuperContest *superContest = superContestParam;
    ContestCameraFlashTask *cameraFlashTask = superContest->cameraFlashTask;

    if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == FALSE) {
        return;
    }

    switch (cameraFlashTask->state) {
    case 0:
        cameraFlashTask->frameCounter++;

        if (cameraFlashTask->frameCounter > cameraFlashTask->cameraFlashFrameDelays[cameraFlashTask->flashCounter]) {
            BrightnessController_StartTransition(6, 0, 4, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, BRIGHTNESS_MAIN_SCREEN);
            Sound_PlayEffect(SEQ_SE_DP_CON_014); // camera shutter sound
            cameraFlashTask->flashCounter++;
            cameraFlashTask->frameCounter = 0;

            if (cameraFlashTask->cameraFlashFrameDelays[cameraFlashTask->flashCounter] == CAMERA_FLASH_FRAME_DELAY_ARRAY_TERMINATOR) {
                cameraFlashTask->state++;
            }
        }
        break;
    default:
        Heap_Free(superContest->cameraFlashTask);
        superContest->cameraFlashTask = NULL;
        SysTask_Done(sysTask);
        return;
    }
}

void sub_02094BB4(SuperContest *superContest, int *destWinningContestantEntryNum, BOOL *destIsLinkContest, int *param3, BOOL *destIsPracticeCompetition, int *param5)
{
    int winningContestantID;
    int contestantID;

    for (contestantID = 0; contestantID < CONTEST_NUM_PARTICIPANTS; contestantID++) {
        if (superContest->unk_00.unk_118[contestantID].contestPlacement == 0) {
            break;
        }
    }

    winningContestantID = contestantID;

    *destWinningContestantEntryNum = Contest_ContestantIDToContestantEntryNum(winningContestantID);
    *destIsLinkContest = superContest->isLinkContest;

    if (winningContestantID >= superContest->unk_00.connectionCount) {
        *param3 = 1;
    } else {
        *param3 = 0;
    }

    *destIsPracticeCompetition = FALSE;
    *param5 = 0;

    switch (superContest->unk_00.competitionType) {
    case CONTEST_COMPETITION_PRACTICE_VISUAL:
    case CONTEST_COMPETITION_PRACTICE_DANCE:
    case CONTEST_COMPETITION_PRACTICE_ACTING:
        *destIsPracticeCompetition = TRUE;
        break;
    case CONTEST_COMPETITION_VISUAL:
    case CONTEST_COMPETITION_DANCE:
    case CONTEST_COMPETITION_ACTING:
        *param5 = 1;
        break;
    }
}

void SuperContest_EndContest(SuperContest *superContest, SaveData *saveData, u32 mapID, JournalEntry *journalEntry)
{
    BOOL ribbonWon = FALSE;

    switch (superContest->unk_00.competitionType) {
    case CONTEST_COMPETITION_PRACTICE_VISUAL:
    case CONTEST_COMPETITION_VISUAL:
    case CONTEST_COMPETITION_PRACTICE_DANCE:
    case CONTEST_COMPETITION_DANCE:
    case CONTEST_COMPETITION_PRACTICE_ACTING:
    case CONTEST_COMPETITION_ACTING:
        return;
    }

    if (superContest->isLinkContest == FALSE) {
        VarsFlags *varsFlags = SaveData_GetVarsFlags(superContest->saveData);

        if (superContest->unk_00.competitionType == CONTEST_COMPETITION_LINK_OR_SUPER && superContest->unk_00.contestRank >= CONTEST_RANK_MASTER && SuperContest_GetPlayerContestPlacement(superContest) == 0
            && SystemFlag_CheckContestMaster(varsFlags, superContest->unk_00.contestType) == FALSE) {
            SystemFlag_SetContestMaster(varsFlags, superContest->unk_00.contestType);
        }

        if (SuperContest_GetPlayerContestPlacement(superContest) == 0) {
            u8 v3 = 1;
            int monDataRibbon = CalcMonDataRibbon(superContest->unk_00.contestRank, superContest->unk_00.contestType);

            if (Pokemon_GetValue(superContest->playerMon, monDataRibbon, NULL) == 0) {
                ribbonWon = TRUE;
            }

            Pokemon_SetValue(superContest->playerMon, monDataRibbon, &v3);
            sub_0206DDB8(superContest->saveData, superContest->playerMon, monDataRibbon);
        }

        TVBroadcast *broadcast = SaveData_GetTVBroadcast(superContest->saveData);
        TVBroadcast_SetContestHallShowInfo(broadcast, superContest->playerMon, superContest->unk_00.contestType, superContest->unk_00.contestRank, superContest->unk_00.unk_118[superContest->unk_00.playerContestantID].contestPlacement + 1);

        GameRecords *gameRecords = SaveData_GetGameRecords(superContest->saveData);
        GameRecords_IncrementRecordValue(gameRecords, RECORD_UNK_090);

        if (SuperContest_GetPlayerContestPlacement(superContest) == 0) {
            GameRecords_IncrementRecordValue(gameRecords, RECORD_SUPER_CONTEST_WINS);
            GameRecords_IncrementTrainerScore(gameRecords, TRAINER_SCORE_EVENT_WIN_SUPER_CONTEST);
        }

        if (ribbonWon == TRUE) {
            GameRecords_IncrementRecordValue(gameRecords, RECORD_UNK_094);
        }

        Pokedex *pokedex = SaveData_GetPokedex(superContest->saveData);

        for (int i = superContest->unk_00.connectionCount; i < CONTEST_NUM_PARTICIPANTS; i++) {
            Pokedex_Encounter(pokedex, superContest->unk_00.contestMons[i]);
        }
    } else {
        LinkContestRecords_IncrementSavaData(superContest->saveData, superContest->unk_00.contestType, superContest->unk_00.unk_118[superContest->unk_00.playerContestantID].contestPlacement);

        GameRecords *records = SaveData_GetGameRecords(superContest->saveData);
        GameRecords_IncrementRecordValue(records, RECORD_UNK_091);

        if (SuperContest_GetPlayerContestPlacement(superContest) == 0) {
            GameRecords_IncrementRecordValue(records, RECORD_LINK_CONTEST_WINS);
            GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_WIN_LINK_CONTEST);
        }

        void *journalEntryOnlineEvent = JournalEntry_CreateEventPlacedInContest(superContest->unk_00.unk_118[superContest->unk_00.playerContestantID].contestPlacement + 1, HEAP_ID_FIELD2);
        JournalEntry *unused = SaveData_GetJournal(superContest->saveData);

        JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
    }

    if (SuperContest_GetPlayerContestPlacement(superContest) == 0) {
        ImageClips *imageClips = SaveData_GetImageClips(superContest->saveData);
        UnkStruct_02029C88 *v12 = sub_02029CD0(imageClips, superContest->unk_00.contestType);

        sub_0202A25C(v12);
        sub_0202A390(v12, superContest->unk_00.unk_E8[superContest->unk_00.playerContestantID]);
        sub_0202A240(v12);
    }

    if (SuperContest_GetPlayerContestPlacement(superContest) == 0) {
        Pokemon_UpdateFriendship(superContest->playerMon, FRIENDSHIP_EVENT_CONTEST_WIN, mapID);
    }
}

static void SuperContest_SetLCRNGSeed(SuperContest *superContest)
{
    LCRNG_SetSeed((GetSecondsSinceMidnight() * (LCRNG_GetSeed() + 10)) & 0xffff);
}

u16 SuperContest_GetRNGNext(SuperContest *superContest)
{
    return LCRNG_Next();
}

u16 Contest_GetSeededRNGNext(u32 seed, u32 *destRNGVal)
{
    u32 rngVal = ARNG_Next(seed);
    *destRNGVal = rngVal;

    return rngVal / LCRNG_DIVISOR;
}

static void sub_02094EB4(SuperContest *superContest, int contestantID, UnkStruct_ov6_02248DD8 *param2)
{
    param2->trainerGender = superContest->unk_00.trainerGenders[contestantID];
    param2->unk_01 = superContest->unk_00.unk_FC[contestantID];
    param2->monContestFame = superContest->unk_00.monContestFame[contestantID];
    param2->contestantObjEventGFX = superContest->unk_00.contestantObjEventGFX[contestantID];
}
