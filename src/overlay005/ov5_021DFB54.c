#include "overlay005/ov5_021DFB54.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/map_object.h"
#include "generated/game_records.h"
#include "generated/movement_actions.h"

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F25C0.h"
#include "overlay005/ov5_021F2850.h"
#include "overlay005/ov5_021F8560.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02248050.h"
#include "overlay006/wild_encounters.h"
#include "overlay009/ov9_02249960.h"
#include "overlay009/struct_ov9_0224F6EC_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "encounter.h"
#include "field_battle_data_transfer.h"
#include "field_task.h"
#include "game_records.h"
#include "heap.h"
#include "map_object.h"
#include "map_object_move.h"
#include "map_tile_behavior.h"
#include "party.h"
#include "persisted_map_features_init.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_020553DC.h"
#include "unk_0205F180.h"
#include "unk_020655F4.h"

typedef struct MonRideTask {
    BOOL playCutIn;
    int playerGender;
    Pokemon *partyMon;
    SysTask *HMCutInTask;
} MonRideTask;

typedef struct SurfTaskEnv {
    int state;
    int direction;
    int dummy;
    MonRideTask monRideTask;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *surfBlob;
    UnkStruct_ov101_021D5D90 *unk_28;
} SurfTaskEnv;

typedef struct RockClimbTaskEnv {
    int state;
    int direction;
    int dummy;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *surfBlob;
    UnkStruct_ov101_021D5D90 *unk_18;
    MonRideTask monRideTask;
    UnkStruct_ov5_021D1BEC *unk_2C;
} RockClimbTaskEnv;

typedef struct WaterfallTaskEnv {
    int state;
    int direction;
    int movementCounter;
    int targetX;
    int targetY;
    int targetZ;
    fx32 distanceMoved;
    VecFx32 deltaPos;
    VecFx32 targetPosition;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *surfBlob;
    MonRideTask monRideTask;
    UnkStruct_ov5_021D1BEC *unk_50;
} WaterfallTaskEnv;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_10;
    UnkStruct_ov9_0224F6EC *unk_14;
} UnkStruct_ov5_021DFF88;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_10;
    UnkStruct_ov101_021D5D90 *unk_14;
} UnkStruct_ov5_021E0390;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
} UnkStruct_ov5_021E0534;

typedef struct {
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
    MapObject *unk_08;
    int unk_0C;
    int unk_10;
    SysTask *unk_14;
} UnkStruct_ov5_021E0DE0;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    PlayerAvatar *playerAvatar;
} UnkStruct_ov5_021E0FF0;

static int ov5_021DFE68(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static int ov5_021DFEF4(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static int ov5_021DFF1C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static void ov5_021DFF88(int param0, FieldSystem *param1, PlayerAvatar *playerAvatar, MapObject *param3);
static BOOL ov5_021DFFBC(FieldTask *param0);
static void SurfTask_Start(FieldSystem *fieldSystem, int direction, const MonRideTask *monRideTask);
static BOOL FieldTask_UseSurf(FieldTask *task);
static int ov5_021E032C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static void ov5_021E0390(int param0, FieldSystem *param1, PlayerAvatar *playerAvatar);
static BOOL ov5_021E03C8(FieldTask *param0);
static int ov5_021E04A8(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static int ov5_021E04EC(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3);
static void ov5_021E0534(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar);
static BOOL ov5_021E0560(FieldTask *param0);
static int ov5_021E067C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2);
static int ov5_021E06A8(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar);
static void RockClimbTask_Start(FieldSystem *fieldSystem, int param1, const MonRideTask *param2);
static BOOL FieldTask_UseRockClimb(FieldTask *param0);
static WaterfallTaskEnv *WaterfallTaskEnv_New(FieldSystem *fieldSystem, int param1, const MonRideTask *monRideTask);
static BOOL FieldTask_UseWaterfall(FieldTask *param0);
static SysTask *ov5_021E0F54(FieldSystem *fieldSystem, u32 param1);
static void ov5_021E0FC0(SysTask *param0);
static void ov5_021E0FF0(SysTask *param0, void *param1);
static void MonRideTask_Init(FieldSystem *fieldSystem, Pokemon *partyMon, MonRideTask *monRideTask);
static void NewMonRideCutIn(FieldSystem *fieldSystem, MonRideTask *monRideTask);
static BOOL CheckCutInFinished(MonRideTask *monRideTask);
static void PlayerAvatar_Redraw(PlayerAvatar *playerAvatar, int param1);
static void ov5_021E10C0(void *param0, const UnkStruct_020216E0 *param1);
static MapObject *ov5_021E10D4(PlayerAvatar *playerAvatar, int param1);
static void *MonRideTaskEnv_New(int size);
static void MonRideTaskEnv_Free(void *taskEnv);
static Pokemon *GetPokemonByIndex(FieldSystem *fieldSystem, int partySlot);
static void ov5_021E0DE0(FieldSystem *fieldSystem);
static BOOL ov5_021E0E10(FieldTask *param0);
static int SubTask_RockClimb_PlayCutIn(RockClimbTaskEnv *taskEnv);
static int SubTask_RockClimb_WaitCutIn(RockClimbTaskEnv *taskEnv);
static int SubTask_RockClimb_CreateBlob(RockClimbTaskEnv *taskEnv);
static int SubTask_RockClimb_HopOn(RockClimbTaskEnv *taskEnv);
static int SubTask_RockClimb_WaitHop(RockClimbTaskEnv *taskEnv);
static int SubTask_RockClimb_Move(RockClimbTaskEnv *taskEnv);
static int SubTask_RockClimb_LoopOrHopOff(RockClimbTaskEnv *taskEnv);
static int SubTask_RockClimb_WaitFinished(RockClimbTaskEnv *taskEnv);
static int SubTask_Waterfall_PlayAscentCutIn(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_WaitForAscentCutIn(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_InitAscent(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_Ascend(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_FinishAscent(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_PlayDescentCutIn(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_WaitForDescentCutIn(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_InitDescent(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_Descend(WaterfallTaskEnv *taskEnv);
static int SubTask_Waterfall_FinishDescent(WaterfallTaskEnv *taskEnv);

static void (*const sPlayerAvatarRequestStateTbl[10])(PlayerAvatar *);

typedef int (*RockClimbTaskFunc)(RockClimbTaskEnv *);
typedef int (*WaterfallTaskFunc)(WaterfallTaskEnv *);

static const RockClimbTaskFunc sRockClimbTasks[] = {
    SubTask_RockClimb_PlayCutIn,
    SubTask_RockClimb_WaitCutIn,
    SubTask_RockClimb_CreateBlob,
    SubTask_RockClimb_HopOn,
    SubTask_RockClimb_WaitHop,
    SubTask_RockClimb_Move,
    SubTask_RockClimb_LoopOrHopOff,
    SubTask_RockClimb_WaitFinished
};

static const WaterfallTaskFunc sWaterfallTasksAscend[] = {
    SubTask_Waterfall_PlayAscentCutIn,
    SubTask_Waterfall_WaitForAscentCutIn,
    SubTask_Waterfall_InitAscent,
    SubTask_Waterfall_Ascend,
    SubTask_Waterfall_FinishAscent
};

static const WaterfallTaskFunc sWaterfallTasksDescend[] = {
    SubTask_Waterfall_PlayDescentCutIn,
    SubTask_Waterfall_WaitForDescentCutIn,
    SubTask_Waterfall_InitDescent,
    SubTask_Waterfall_Descend,
    SubTask_Waterfall_FinishDescent
};

void PlayerAvatar_SetRequestStateBit(PlayerAvatar *playerAvatar, u32 bit)
{
    PlayerAvatar_TurnOnRequestStateBit(playerAvatar, bit);
}

void PlayerAvatar_RequestChangeState(PlayerAvatar *playerAvatar)
{
    u32 state = 0;
    u32 flag = PlayerAvatar_RequestStateFlag(playerAvatar);

    do {
        if (flag & 0x1) {
            sPlayerAvatarRequestStateTbl[state](playerAvatar);
        }

        flag >>= 1;
    } while (++state < 10);

    PlayerAvatar_SetRequestStateFlag(playerAvatar, 0);
}

static void PlayerAvatar_RequestStateWalking(PlayerAvatar *playerAvatar)
{
    int v0;
    int v1 = 0x0;

    if (PlayerAvatar_MapDistortionState(playerAvatar) != AVATAR_DISTORTION_STATE_NONE) {
        v1 = 0x18;
    } else {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) == 1) {
            v1 = 0x1c;
        }
    }

    v0 = Player_MoveStateFromGender(v1, PlayerAvatar_Gender(playerAvatar));

    PlayerAvatar_Redraw(playerAvatar, v0);
    PlayerAvatar_SetPlayerState(playerAvatar, 0x0);
    PlayerAvatar_ClearSpeed(playerAvatar);

    {
        UnkStruct_ov101_021D5D90 *v4 = sub_0205EC04(playerAvatar);

        if (v4 != NULL) {
            ov5_021DF74C(v4);
        }

        sub_0205EC00(playerAvatar, NULL);
    }
}

static void PlayerAvatar_RequestStateCycle(PlayerAvatar *playerAvatar)
{
    int v0 = Player_MoveStateFromGender(PLAYER_STATE_CYCLING, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);

    PlayerAvatar_SetPlayerState(playerAvatar, PLAYER_STATE_CYCLING);
    PlayerAvatar_ClearSpeed(playerAvatar);

    {
        UnkStruct_ov101_021D5D90 *v1 = sub_0205EC04(playerAvatar);

        if (v1 != NULL) {
            ov5_021DF74C(v1);
        }

        sub_0205EC00(playerAvatar, NULL);
    }

    Sound_PlayEffect(SEQ_SE_DP_JITENSYA);
}

static void PlayerAvatar_RequestStateSurf(PlayerAvatar *playerAvatar)
{
    int v0, v1;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);
    UnkStruct_ov101_021D5D90 *v5 = sub_0205EC04(playerAvatar);

    if (v5 != NULL) {
        ov5_021DF74C(v5);
    }

    sub_0205EC00(playerAvatar, NULL);

    if (PlayerAvatar_DistortionStateOnFloor(playerAvatar) == TRUE) {
        v1 = PlayerAvatar_GetDir(playerAvatar);
    } else {
        v1 = PlayerAvatar_GetMoveDir(playerAvatar);
    }

    if (distortionState == AVATAR_DISTORTION_STATE_NONE) {
        v5 = ov5_021F261C(mapObj, 0, 0, v1, 1);
        v0 = PLAYER_STATE_SURFING;
    } else {
        v5 = ov5_021F85BC(playerAvatar, 0, 0, 0, v1, 1, distortionState);
        v0 = 0x19;
    }

    sub_0205EC00(playerAvatar, v5);

    v0 = Player_MoveStateFromGender(v0, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);

    PlayerAvatar_SetPlayerState(playerAvatar, PLAYER_STATE_SURFING);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void ov5_021DFCE4(PlayerAvatar *playerAvatar)
{
    sub_0205EF6C(playerAvatar, 1);
}

static void ov5_021DFCF0(PlayerAvatar *playerAvatar)
{
    int v0 = Player_MoveStateFromGender(0x11, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void ov5_021DFD0C(PlayerAvatar *playerAvatar)
{
    int v0 = Player_MoveStateFromGender(0x13, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void PlayerAvatar_RequestStatePoketch(PlayerAvatar *playerAvatar)
{
    int v0;
    int v1 = 0x14;

    if (PlayerAvatar_MapDistortionState(playerAvatar) != AVATAR_DISTORTION_STATE_NONE) {
        v1 = 0x1b;
    } else {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) == 1) {
            v1 = 0x1e;
        }
    }

    v0 = Player_MoveStateFromGender(v1, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void PlayerAvatar_RequestStateSave(PlayerAvatar *playerAvatar)
{
    int v0;
    int v1 = 0x15;

    if (PlayerAvatar_MapDistortionState(playerAvatar) != AVATAR_DISTORTION_STATE_NONE) {
        v1 = 0x1a;
    } else {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) == 1) {
            v1 = 0x1d;
        }
    }

    v0 = Player_MoveStateFromGender(v1, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void ov5_021DFDA8(PlayerAvatar *playerAvatar)
{
    int v0 = Player_MoveStateFromGender(0x16, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void ov5_021DFDC4(PlayerAvatar *playerAvatar)
{
    int v0 = Player_MoveStateFromGender(0x17, PlayerAvatar_Gender(playerAvatar));
    PlayerAvatar_Redraw(playerAvatar, v0);
}

static void (*const sPlayerAvatarRequestStateTbl[10])(PlayerAvatar *) = {
    PlayerAvatar_RequestStateWalking,
    PlayerAvatar_RequestStateCycle,
    PlayerAvatar_RequestStateSurf,
    ov5_021DFCE4,
    ov5_021DFCF0,
    ov5_021DFD0C,
    PlayerAvatar_RequestStatePoketch,
    PlayerAvatar_RequestStateSave,
    ov5_021DFDA8,
    ov5_021DFDC4
};

int ov5_021DFDE0(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int dir, int param3)
{
    {
        MapObject *v0;

        GF_ASSERT(playerAvatar != NULL);
        v0 = Player_MapObject(playerAvatar);
        GF_ASSERT(v0 != NULL);
    }

    if (sub_0205EF58(playerAvatar) == 1) {
        if (ov5_021E067C(fieldSystem, playerAvatar, param3) == 1) {
            return 1;
        }

        return 0;
    }

    if (PlayerAvatar_CheckStartMove(playerAvatar, dir) == 0) {
        return 0;
    }

    if (dir == -1) {
        if (ov5_021DFEF4(fieldSystem, playerAvatar, dir, param3) == 1) {
            return 1;
        }

        return 0;
    }

    if (ov5_021DFE68(fieldSystem, playerAvatar, dir, param3) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFE68(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    int v0 = sub_02061434(playerAvatar, param2);

    if (param3 & 1 << 2) {
        if (ov9_0224A59C(fieldSystem, param2) == 1) {
            return 1;
        }
    }

    if (param3 & 1 << 0) {
        if (ov5_021DFF1C(fieldSystem, playerAvatar, param2, v0) == 1) {
            return 1;
        }
    }

    if (param3 & 1 << 1) {
        if (ov5_021E04A8(fieldSystem, playerAvatar, param2, v0) == 1) {
            return 1;
        }
    }

    if (ov5_021E032C(fieldSystem, playerAvatar, param2, v0) == 1) {
        return 1;
    }

    if (ov5_021E04EC(fieldSystem, playerAvatar, param2, v0) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFEF4(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    int v0 = sub_02061434(playerAvatar, param2);

    if (ov5_021E04EC(fieldSystem, playerAvatar, param2, v0) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021DFF1C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    if (param3 != 1) {
        return 0;
    }

    {
        MapObject *mapObj = ov5_021E10D4(playerAvatar, param2);

        if (mapObj == NULL) {
            return 0;
        }

        {
            int v1 = MapObject_GetGraphicsID(mapObj);

            if (v1 != 0x54) {
                return 0;
            }
        }

        {
            u32 v2 = sub_02063EBC(mapObj, param2);

            v2 &= ~(1 << 0);

            if (v2 != 0) {
                if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
                    if (ov9_0224F240(mapObj, param2) == 0) {
                        return 0;
                    }
                } else {
                    return 0;
                }
            }
        }

        ov5_021DFF88(param2, fieldSystem, playerAvatar, mapObj);
        return 1;
    }
}

static void ov5_021DFF88(int param0, FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, MapObject *param3)
{
    UnkStruct_ov5_021DFF88 *v0 = MonRideTaskEnv_New(sizeof(UnkStruct_ov5_021DFF88));

    v0->unk_04 = param0;
    v0->fieldSystem = fieldSystem;
    v0->unk_10 = param3;
    v0->playerAvatar = playerAvatar;

    FieldSystem_CreateTask(fieldSystem, ov5_021DFFBC, v0);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_UNK_055);
}

static BOOL ov5_021DFFBC(FieldTask *param0)
{
    UnkStruct_ov5_021DFF88 *v0 = FieldTask_GetEnv(param0);
    MapObject *v1 = Player_MapObject(v0->playerAvatar);
    MapObject *v2 = v0->unk_10;

    switch (v0->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v2) == 0) {
            break;
        }

        if (LocalMapObj_IsAnimationSet(v1) == 0) {
            if (sub_020613AC(v0->playerAvatar) == 0) {
                break;
            }
        }

        {
            int v3 = MovementAction_TurnActionTowardsDir(v0->unk_04, MOVEMENT_ACTION_WALK_SLOW_NORTH);

            LocalMapObj_SetAnimationCode(v2, v3);

            v3 = MovementAction_TurnActionTowardsDir(v0->unk_04, MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_NORTH);
            LocalMapObj_SetAnimationCode(v1, v3);
            Sound_PlayEffect(SEQ_SE_DP_UG_023);
        }

        v0->unk_00++;
        break;
    case 1:
        if (LocalMapObj_CheckAnimationFinished(v2) == 0) {
            break;
        }

        if (LocalMapObj_CheckAnimationFinished(v1) == 0) {
            break;
        }

        if (PersistedMapFeatures_IsCurrentDynamicMap(v0->fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
            if (ov9_0224F2B0(v2) == 1) {
                v0->unk_14 = ov9_0224F2BC(v0->fieldSystem, param0, v2);
                v0->unk_00 = 3;
                break;
            }
        }

        sub_020656AC(v2);
        sub_020656AC(v1);
        v0->unk_00++;
    case 2:
        MonRideTaskEnv_Free(v0);
        return 1;
    case 3:
        if (ov9_0224F6EC(v0->unk_14) == 1) {
            sub_020656AC(v2);
            sub_020656AC(v1);
            v0->unk_00 = 2;
        }
        break;
    }

    return 0;
}

static void SurfTask_Start(FieldSystem *fieldSystem, int direction, const MonRideTask *monRideTask)
{
    SurfTaskEnv *taskEnv = MonRideTaskEnv_New(sizeof(SurfTaskEnv));

    taskEnv->direction = direction;
    taskEnv->fieldSystem = fieldSystem;
    taskEnv->playerAvatar = fieldSystem->playerAvatar;
    taskEnv->surfBlob = Player_MapObject(taskEnv->playerAvatar);
    taskEnv->monRideTask = *monRideTask;

    FieldTask_InitCall(fieldSystem->task, FieldTask_UseSurf, taskEnv);
}

void FieldTask_StartUseSurf(FieldTask *task, int direction, int partySlot)
{
    MonRideTask monRideTask;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Pokemon *partyMon = GetPokemonByIndex(fieldSystem, partySlot);

    MonRideTask_Init(fieldSystem, partyMon, &monRideTask);
    SurfTask_Start(fieldSystem, direction, &monRideTask);
}

int PlayerAvatar_CanUseSurf(PlayerAvatar *playerAvatar, u32 currTileBehavior, u32 nextTileBehavior)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (TileBehavior_IsSurfable(nextTileBehavior) == TRUE) {
        if ((TileBehavior_IsBridge(currTileBehavior) == TRUE) || (TileBehavior_IsBridgeStart(currTileBehavior) == TRUE)) {
            if (sub_02062F30(v0) == 1) {
                return 0;
            }
        }

        return 1;
    }

    return 0;
}

static BOOL FieldTask_UseSurf(FieldTask *task)
{
    SurfTaskEnv *taskEnv = FieldTask_GetEnv(task);

    switch (taskEnv->state) {
    case 0:
        if (PlayerAvatar_MapDistortionState(taskEnv->playerAvatar) == AVATAR_DISTORTION_STATE_NONE) {
            Sound_SetSpecialBGM(taskEnv->fieldSystem, SEQ_NONE);
            Sound_TryFadeOutToBGM(taskEnv->fieldSystem, SEQ_NAMINORI, 1);
        }

        if (taskEnv->monRideTask.playCutIn == TRUE) {
            NewMonRideCutIn(taskEnv->fieldSystem, &taskEnv->monRideTask);
            taskEnv->state++;
        } else {
            taskEnv->state = 2;
        }
        break;
    case 1:
        if (CheckCutInFinished(&taskEnv->monRideTask) == TRUE) {
            taskEnv->state++;
        }
        break;
    case 2: {
        if (PlayerAvatar_MapDistortionState(taskEnv->playerAvatar) == AVATAR_DISTORTION_STATE_NONE) {
            int playerXPos = Player_GetXPos(taskEnv->playerAvatar) + MapObject_GetDxFromDir(taskEnv->direction);
            int playerZPos = Player_GetZPos(taskEnv->playerAvatar) + MapObject_GetDzFromDir(taskEnv->direction);
            taskEnv->unk_28 = ov5_021F261C(taskEnv->surfBlob, playerXPos, playerZPos, taskEnv->direction, 0);
        } else {
            int blobXPos = MapObject_GetX(taskEnv->surfBlob);
            int blobYPos = (MapObject_GetY(taskEnv->surfBlob) / 2);
            int blobZPos = MapObject_GetZ(taskEnv->surfBlob);
            enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(taskEnv->playerAvatar);

            sub_02061674(taskEnv->playerAvatar, taskEnv->direction, &blobXPos, &blobYPos, &blobZPos);
            taskEnv->unk_28 = ov5_021F85BC(taskEnv->playerAvatar, blobXPos, blobYPos, blobZPos, taskEnv->direction, 0, distortionState);
        }

        sub_0205EC00(taskEnv->playerAvatar, taskEnv->unk_28);
        PlayerAvatar_SetPlayerState(taskEnv->playerAvatar, 0x2);
    }

        taskEnv->state++;
        break;
    case 3:
        taskEnv->state++;
    case 4:
        if (LocalMapObj_IsAnimationSet(taskEnv->surfBlob) == TRUE) {
            int movementAction;
            int movementActions[6] = {
                MOVEMENT_ACTION_JUMP_NEAR_FAST_NORTH,
                MOVEMENT_ACTION_JUMP_NEAR_FAST_NORTH,
                MOVEMENT_ACTION_JUMP_NEAR_FAST_NORTH,
                MOVEMENT_ACTION_133,
                MOVEMENT_ACTION_137,
                MOVEMENT_ACTION_141
            };
            enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(taskEnv->playerAvatar);

            movementAction = MovementAction_TurnActionTowardsDir(taskEnv->direction, movementActions[distortionState]);
            LocalMapObj_SetAnimationCode(taskEnv->surfBlob, movementAction);
            taskEnv->state++;
        }
        break;
    case 5:
        if (LocalMapObj_CheckAnimationFinished(taskEnv->surfBlob) == FALSE) {
            break;
        }

        sub_020656AC(taskEnv->surfBlob);

        if (PlayerAvatar_MapDistortionState(taskEnv->playerAvatar) == AVATAR_DISTORTION_STATE_NONE) {
            int moveState;

            ov5_021F2838(taskEnv->unk_28, 1);
            moveState = Player_MoveStateFromGender(0x2, PlayerAvatar_Gender(taskEnv->playerAvatar));
            PlayerAvatar_Redraw(taskEnv->playerAvatar, moveState);
        } else {
            int moveState;

            ov5_021F88CC(taskEnv->unk_28, 1 << 1);
            moveState = Player_MoveStateFromGender(0x19, PlayerAvatar_Gender(taskEnv->playerAvatar));
            PlayerAvatar_Redraw(taskEnv->playerAvatar, moveState);
        }

        MonRideTaskEnv_Free(taskEnv);
        return TRUE;
    }

    return FALSE;
}

static int ov5_021E032C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    if ((param3 != 1) || (PlayerAvatar_GetPlayerState(playerAvatar) != 0x2)) {
        return 0;
    }

    {
        u32 v0;
        MapObject *v1 = Player_MapObject(playerAvatar);

        if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == FALSE) {
            v0 = sub_02060B7C(playerAvatar, v1, param2);
        } else {
            v0 = sub_020611FC(playerAvatar, v1, param2);
        }

        if (v0 == (1 << 5)) {
            return 0;
        }

        v0 &= ~(1 << 5);

        if (v0 != 0) {
            return 0;
        }
    }

    ov5_021E0390(param2, fieldSystem, playerAvatar);
    return 1;
}

static void ov5_021E0390(int param0, FieldSystem *fieldSystem, PlayerAvatar *param2)
{
    UnkStruct_ov5_021E0390 *v0 = MonRideTaskEnv_New(sizeof(UnkStruct_ov5_021E0390));

    v0->unk_04 = param0;
    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = param2;
    v0->unk_10 = Player_MapObject(param2);
    v0->unk_14 = sub_0205EC04(param2);

    FieldSystem_CreateTask(fieldSystem, ov5_021E03C8, v0);
}

static BOOL ov5_021E03C8(FieldTask *param0)
{
    UnkStruct_ov5_021E0390 *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v0->unk_10) == 1) {
            int v1;
            int v3[6] = {
                0x34, 0x34, 0x34, 0x85, 0x89, 0x8d
            };

            enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(v0->playerAvatar);

            if (distortionState == AVATAR_DISTORTION_STATE_NONE) {
                ov5_021F2838(v0->unk_14, 0);
                v1 = Player_MoveStateFromGender(0x0, PlayerAvatar_Gender(v0->playerAvatar));
            } else {
                ov5_021F88DC(v0->unk_14, 1 << 1);
                v1 = Player_MoveStateFromGender(0x18, PlayerAvatar_Gender(v0->playerAvatar));
            }

            PlayerAvatar_Redraw(v0->playerAvatar, v1);

            v1 = MovementAction_TurnActionTowardsDir(v0->unk_04, v3[distortionState]);
            LocalMapObj_SetAnimationCode(v0->unk_10, v1);
            v0->unk_00++;
        }
        break;
    case 1:
        if (LocalMapObj_CheckAnimationFinished(v0->unk_10) == 0) {
            break;
        }

        sub_020656AC(v0->unk_10);

        if (v0->unk_14 != NULL) {
            ov5_021DF74C(v0->unk_14);
        }

        sub_0205EC00(v0->playerAvatar, NULL);
        PlayerAvatar_SetPlayerState(v0->playerAvatar, 0x0);
        Sound_TryFadeOutToBGM(v0->fieldSystem, Sound_GetBGMByMapID(v0->fieldSystem, v0->fieldSystem->location->mapId), 1);
        MonRideTaskEnv_Free(v0);
        return 1;
    }

    return 0;
}

static int ov5_021E04A8(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    if ((param2 != 1) || (param3 != 1) || (PlayerAvatar_GetPlayerState(playerAvatar) != 0x2)) {
        return 0;
    }

    {
        u8 v0 = sub_0206156C(playerAvatar, param2);

        if (TileBehavior_IsWaterfall(v0) == 0) {
            return 0;
        }
    }

    ov5_021E097C(fieldSystem, param2);
    return 1;
}

static int ov5_021E04EC(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2, int param3)
{
    if (PlayerAvatar_IsNotInDeepSwamp(playerAvatar) == 1) {
        return 0;
    }

    {
        MapObject *v0 = Player_MapObject(playerAvatar);
        u8 v1 = MapObject_GetCurrTileBehavior(v0);

        if ((TileBehavior_IsDeepMud(v1) != 1) && (TileBehavior_IsDeepMudWithGrass(v1) != 1)) {
            return 0;
        }
    }

    ov5_021E0534(fieldSystem, playerAvatar);
    return 1;
}

static void ov5_021E0534(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar)
{
    UnkStruct_ov5_021E0534 *v0 = MonRideTaskEnv_New(sizeof(UnkStruct_ov5_021E0534));

    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = playerAvatar;

    FieldSystem_CreateTask(fieldSystem, ov5_021E0560, v0);
    GameRecords_IncrementRecordValue(SaveData_GetGameRecords(fieldSystem->saveData), RECORD_UNK_056);
}

static BOOL ov5_021E0560(FieldTask *param0)
{
    UnkStruct_ov5_021E0534 *v0 = FieldTask_GetEnv(param0);
    MapObject *v1 = Player_MapObject(v0->playerAvatar);

    switch (v0->unk_00) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_ZUPO);
        v0->unk_00++;
    case 1:
        if (LocalMapObj_IsAnimationSet(v1) == 0) {
            if (sub_020613AC(v0->playerAvatar) == 0) {
                break;
            }
        }

        if (v0->unk_04 >= 5) {
            Sound_PlayEffect(SEQ_SE_DP_ZUPO2);
            PlayerAvatar_SetInDeepSwamp(v0->playerAvatar, 1);
            MonRideTaskEnv_Free(v0);
            return 1;
        }

        v0->unk_00++;
    case 2: {
        int v2 = PlayerAvatar_GetDir(v0->playerAvatar);
        u32 v3, v4 = gSystem.pressedKeys, v5 = gSystem.heldKeys;
        int v6 = sub_02061308(v0->playerAvatar, v4, v5);

        if ((v6 == -1) || (v6 == v2)) {
            break;
        }

        v0->unk_00 = 1;
        v0->unk_04++;

        {
            u8 v7 = MapObject_GetCurrTileBehavior(v1);

            if (TileBehavior_IsDeepMudWithGrass(v7) == 1) {
                FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
                FieldBattleDTO *v9;

                if (WildEncounters_TryMudEncounter(fieldSystem, &v9) == 1) {
                    PlayerAvatar_SetInDeepSwamp(v0->playerAvatar, 1);
                    MonRideTaskEnv_Free(v0);
                    Encounter_StartVsWild(fieldSystem, param0, v9);
                    return 0;
                }
            }
        }

        if (v0->unk_04 < 5) {
            v3 = 0x28;
        } else {
            v3 = 0x30;
            sub_02062EE0(v1, 1);
        }

        v3 = MovementAction_TurnActionTowardsDir(v6, v3);
        PlayerAvatar_SetAnimationCode(v0->playerAvatar, v3, 1);
    } break;
    }

    return 0;
}

static int ov5_021E067C(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, int param2)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(v0) == 0) {
        return 0;
    }

    if (ov5_021E06A8(fieldSystem, playerAvatar) == 1) {
        return 1;
    }

    return 0;
}

static int ov5_021E06A8(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_Speed(playerAvatar) < 1) {
        return 0;
    }

    {
        int v0 = PlayerAvatar_GetMoveDir(playerAvatar);
        MapObject *v1 = ov5_021E10D4(playerAvatar, v0);

        if (v1 == NULL) {
            return 0;
        }

        {
            int v2 = MapObject_GetGraphicsID(v1);

            if (v2 != 0x76) {
                return 0;
            }
        }

        ov5_021EC7F0(v1);
        MapObject_Delete(v1);
        Sound_PlayEffect(SEQ_SE_DP_FW291);
    }

    return 0;
}

static void RockClimbTask_Start(FieldSystem *fieldSystem, int direction, const MonRideTask *monRideTask)
{
    RockClimbTaskEnv *taskEnv = MonRideTaskEnv_New(sizeof(RockClimbTaskEnv));

    taskEnv->direction = direction;
    taskEnv->fieldSystem = fieldSystem;
    taskEnv->playerAvatar = fieldSystem->playerAvatar;
    taskEnv->surfBlob = Player_MapObject(taskEnv->playerAvatar);
    taskEnv->monRideTask = *monRideTask;

    FieldTask_InitCall(fieldSystem->task, FieldTask_UseRockClimb, taskEnv);
}

void FieldTask_StartUseRockClimb(FieldTask *task, int direction, int partySlot)
{
    MonRideTask monRideTask;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Pokemon *partyMon = GetPokemonByIndex(fieldSystem, partySlot);

    MonRideTask_Init(fieldSystem, partyMon, &monRideTask);
    RockClimbTask_Start(fieldSystem, direction, &monRideTask);
}

BOOL PlayerAvatar_CanUseRockClimb(u32 metatileBehavior, int facingDir)
{
    switch (facingDir) {
    case DIR_NORTH:
    case DIR_SOUTH:
        if (TileBehavior_IsRockClimbNorthSouth(metatileBehavior) == 1) {
            return TRUE;
        }
        break;
    case DIR_WEST:
    case DIR_EAST:
        if (TileBehavior_IsRockClimbEastWest(metatileBehavior) == 1) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL FieldTask_UseRockClimb(FieldTask *task)
{
    int ret;
    RockClimbTaskEnv *taskEnv = FieldTask_GetEnv(task);

    do {
        ret = sRockClimbTasks[taskEnv->state](taskEnv);
    } while (ret == 2);

    if (ret == 1) {
        MonRideTaskEnv_Free(taskEnv);
    }

    return ret;
}

static int SubTask_RockClimb_PlayCutIn(RockClimbTaskEnv *taskEnv)
{
    NewMonRideCutIn(taskEnv->fieldSystem, &taskEnv->monRideTask);

    taskEnv->state++;
    return 0;
}

static int SubTask_RockClimb_WaitCutIn(RockClimbTaskEnv *taskEnv)
{
    if (CheckCutInFinished(&taskEnv->monRideTask) == TRUE) {
        taskEnv->state++;
    }

    return 0;
}

static int SubTask_RockClimb_CreateBlob(RockClimbTaskEnv *taskEnv)
{
    int xPos = Player_GetXPos(taskEnv->playerAvatar) + MapObject_GetDxFromDir(taskEnv->direction);
    int zPos = Player_GetZPos(taskEnv->playerAvatar) + MapObject_GetDzFromDir(taskEnv->direction);

    taskEnv->unk_18 = ov5_021F28F4(taskEnv->surfBlob, xPos, zPos, taskEnv->direction, 0);
    taskEnv->unk_2C = ov6_0224892C(taskEnv->fieldSystem);

    Sound_PlayEffect(SEQ_SE_DP_UG_023);
    taskEnv->state++;

    return 0;
}

static int SubTask_RockClimb_HopOn(RockClimbTaskEnv *taskEnv)
{
    if (LocalMapObj_IsAnimationSet(taskEnv->surfBlob) == TRUE) {
        int movementAction = MovementAction_TurnActionTowardsDir(taskEnv->direction, MOVEMENT_ACTION_JUMP_NEAR_FAST_NORTH);

        LocalMapObj_SetAnimationCode(taskEnv->surfBlob, movementAction);
        taskEnv->state++;
    }

    return 0;
}

static int SubTask_RockClimb_WaitHop(RockClimbTaskEnv *taskEnv)
{
    if (LocalMapObj_CheckAnimationFinished(taskEnv->surfBlob) == TRUE) {
        taskEnv->state++;
        ov5_021F2974(taskEnv->unk_18, 1);
    }

    return 0;
}

static int SubTask_RockClimb_Move(RockClimbTaskEnv *taskEnv)
{
    if (LocalMapObj_IsAnimationSet(taskEnv->surfBlob) == TRUE) {
        int movementAction = MovementAction_TurnActionTowardsDir(taskEnv->direction, MOVEMENT_ACTION_WALK_FAST_NORTH);

        LocalMapObj_SetAnimationCode(taskEnv->surfBlob, movementAction);
        taskEnv->state++;
    }

    return 0;
}

static int SubTask_RockClimb_LoopOrHopOff(RockClimbTaskEnv *taskEnv)
{
    if (LocalMapObj_CheckAnimationFinished(taskEnv->surfBlob) == FALSE) {
        return 0;
    }

    int facingDir = MapObject_GetMovingDir(taskEnv->surfBlob);
    u8 metatileBehaviour = MapObject_GetTileBehaviorFromDir(taskEnv->surfBlob, facingDir);

    if (PlayerAvatar_CanUseRockClimb(metatileBehaviour, facingDir) == TRUE) {
        taskEnv->state = 5;
        return 2;
    }

    int movementAction = MovementAction_TurnActionTowardsDir(taskEnv->direction, MOVEMENT_ACTION_JUMP_NEAR_FAST_NORTH);

    LocalMapObj_SetAnimationCode(taskEnv->surfBlob, movementAction);
    taskEnv->dummy = 0;
    taskEnv->state++;
    ov5_021F2974(taskEnv->unk_18, 0);

    ov6_02248940(taskEnv->unk_2C);
    taskEnv->unk_2C = NULL;

    return 0;
}

static int SubTask_RockClimb_WaitFinished(RockClimbTaskEnv *taskEnv)
{
    if (LocalMapObj_CheckAnimationFinished(taskEnv->surfBlob) == FALSE) {
        return 0;
    }

    sub_020656AC(taskEnv->surfBlob);
    ov5_021DF74C(taskEnv->unk_18);
    return 1;
}

static WaterfallTaskEnv *WaterfallTaskEnv_New(FieldSystem *fieldSystem, int direction, const MonRideTask *monRideTask)
{
    WaterfallTaskEnv *taskEnv = MonRideTaskEnv_New(sizeof(WaterfallTaskEnv));

    taskEnv->direction = direction;
    taskEnv->fieldSystem = fieldSystem;
    taskEnv->playerAvatar = fieldSystem->playerAvatar;
    taskEnv->surfBlob = Player_MapObject(fieldSystem->playerAvatar);

    if (monRideTask != NULL) {
        taskEnv->monRideTask = *monRideTask;
    }

    return taskEnv;
}

void ov5_021E097C(FieldSystem *fieldSystem, int param1)
{
    WaterfallTaskEnv *taskEnv = WaterfallTaskEnv_New(fieldSystem, param1, NULL);
    FieldSystem_CreateTask(fieldSystem, FieldTask_UseWaterfall, taskEnv);
}

void FieldTask_StartUseWaterfall(FieldTask *task, int direction, int partySlot)
{
    MonRideTask monRideTask;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    Pokemon *partyMon = GetPokemonByIndex(fieldSystem, partySlot);

    MonRideTask_Init(fieldSystem, partyMon, &monRideTask);

    {
        WaterfallTaskEnv *taskEnv = WaterfallTaskEnv_New(fieldSystem, direction, &monRideTask);
        FieldTask_InitCall(task, FieldTask_UseWaterfall, taskEnv);
    }
}

static BOOL FieldTask_UseWaterfall(FieldTask *param0)
{
    int v0;
    WaterfallTaskEnv *taskEnv = FieldTask_GetEnv(param0);

    do {
        if (taskEnv->direction == DIR_NORTH) {
            v0 = sWaterfallTasksAscend[taskEnv->state](taskEnv);
        } else {
            v0 = sWaterfallTasksDescend[taskEnv->state](taskEnv);
        }
    } while (v0 == 2);

    if (v0 == 1) {
        MonRideTaskEnv_Free(taskEnv);
        return TRUE;
    }

    return FALSE;
}

static int SubTask_Waterfall_PlayAscentCutIn(WaterfallTaskEnv *taskEnv)
{
    if (taskEnv->monRideTask.playCutIn == TRUE) {
        NewMonRideCutIn(taskEnv->fieldSystem, &taskEnv->monRideTask);
        taskEnv->state++;
        return 0;
    }

    taskEnv->state = 2;
    return 1; // WARN: This prematurely terminates the parent task. If modifying the code to skip the cut-in, this must be changed to 2.
}

static int SubTask_Waterfall_WaitForAscentCutIn(WaterfallTaskEnv *taskEnv)
{
    if (CheckCutInFinished(&taskEnv->monRideTask) == TRUE) {
        Sound_PlayEffect(SEQ_SE_DP_FW463);
        taskEnv->state++;
    }

    return 0;
}

static int SubTask_Waterfall_InitAscent(WaterfallTaskEnv *taskEnv)
{
    int targetX, targetZ;
    VecFx32 surfBlobPos, deltaPos;

    targetX = MapObject_GetX(taskEnv->surfBlob) + (MapObject_GetDxFromDir(DIR_NORTH) << 1);
    targetZ = MapObject_GetZ(taskEnv->surfBlob) + (MapObject_GetDzFromDir(DIR_NORTH) << 1);

    sub_02064450(targetX, targetZ, &taskEnv->targetPosition);
    sub_020644A4(taskEnv->fieldSystem, &taskEnv->targetPosition);

    taskEnv->targetX = targetX;
    taskEnv->targetY = (((taskEnv->targetPosition.y) >> 3) / FX32_ONE);
    taskEnv->targetZ = targetZ;

    MapObject_GetPosPtr(taskEnv->surfBlob, &surfBlobPos);

    GF_ASSERT(surfBlobPos.z > taskEnv->targetPosition.z);
    GF_ASSERT(surfBlobPos.y < taskEnv->targetPosition.y);

    deltaPos.x = 0;
    deltaPos.y = taskEnv->targetPosition.y - surfBlobPos.y;
    deltaPos.z = taskEnv->targetPosition.z - surfBlobPos.z;
    deltaPos.y /= 64;
    deltaPos.z /= 64;

    taskEnv->deltaPos = deltaPos;
    taskEnv->unk_50 = ov6_022485F4(taskEnv->fieldSystem);
    taskEnv->state++;

    return 0;
}

static int SubTask_Waterfall_Ascend(WaterfallTaskEnv *taskEnv)
{
    VecFx32 newPos;

    MapObject_GetPosPtr(taskEnv->surfBlob, &newPos);

    newPos.y += taskEnv->deltaPos.y;

    if (newPos.y > taskEnv->targetPosition.y) {
        newPos.y = taskEnv->targetPosition.y;
    }

    MapObject_SetPos(taskEnv->surfBlob, &newPos);

    taskEnv->movementCounter++;

    if (taskEnv->movementCounter >= 32) {
        taskEnv->movementCounter = 0;
        taskEnv->state++;
    }

    return 0;
}

static int SubTask_Waterfall_FinishAscent(WaterfallTaskEnv *taskEnv)
{
    VecFx32 newPos;

    MapObject_GetPosPtr(taskEnv->surfBlob, &newPos);

    newPos.y += taskEnv->deltaPos.y;

    if (newPos.y > taskEnv->targetPosition.y) {
        newPos.y = taskEnv->targetPosition.y;
    }

    newPos.z += taskEnv->deltaPos.z;

    if (newPos.z < taskEnv->targetPosition.z) {
        newPos.z = taskEnv->targetPosition.z;
    }

    MapObject_SetPos(taskEnv->surfBlob, &newPos);

    taskEnv->movementCounter++;

    if (taskEnv->movementCounter < 64) {
        return 0;
    }

    GF_ASSERT(newPos.z == taskEnv->targetPosition.z);
    GF_ASSERT(newPos.y == taskEnv->targetPosition.y);

    MapObject_SetX(taskEnv->surfBlob, taskEnv->targetX);
    MapObject_SetY(taskEnv->surfBlob, taskEnv->targetY);
    MapObject_SetZ(taskEnv->surfBlob, taskEnv->targetZ);
    MapObject_UpdateCoords(taskEnv->surfBlob);

    ov6_02248608(taskEnv->unk_50);
    return 1;
}

static int SubTask_Waterfall_PlayDescentCutIn(WaterfallTaskEnv *taskEnv)
{
    if (taskEnv->monRideTask.playCutIn == TRUE) {
        NewMonRideCutIn(taskEnv->fieldSystem, &taskEnv->monRideTask);
        taskEnv->state++;
        return 0;
    }

    taskEnv->state = 2;
    return 2;
}

static int SubTask_Waterfall_WaitForDescentCutIn(WaterfallTaskEnv *taskEnv)
{
    if (CheckCutInFinished(&taskEnv->monRideTask) == TRUE) {
        Sound_PlayEffect(SEQ_SE_DP_FW463);
        taskEnv->state++;
    }

    return 0;
}

static int SubTask_Waterfall_InitDescent(WaterfallTaskEnv *taskEnv)
{
    int targetX, targetZ;
    VecFx32 surfBlobPos, deltaPos;

    targetX = MapObject_GetX(taskEnv->surfBlob) + (MapObject_GetDxFromDir(DIR_SOUTH) << 1);
    targetZ = MapObject_GetZ(taskEnv->surfBlob) + (MapObject_GetDzFromDir(DIR_SOUTH) << 1);

    sub_02064450(targetX, targetZ, &taskEnv->targetPosition);
    sub_020644A4(taskEnv->fieldSystem, &taskEnv->targetPosition);

    taskEnv->distanceMoved = 0;
    taskEnv->targetX = targetX;
    taskEnv->targetY = (((taskEnv->targetPosition.y) >> 3) / FX32_ONE);
    taskEnv->targetZ = targetZ;

    MapObject_GetPosPtr(taskEnv->surfBlob, &surfBlobPos);

    GF_ASSERT(surfBlobPos.z < taskEnv->targetPosition.z);
    GF_ASSERT(surfBlobPos.y > taskEnv->targetPosition.y);

    deltaPos.x = 0;
    deltaPos.y = taskEnv->targetPosition.y - surfBlobPos.y;
    deltaPos.z = taskEnv->targetPosition.z - surfBlobPos.z;
    deltaPos.y /= 64;
    deltaPos.z /= 64;

    taskEnv->deltaPos = deltaPos;
    taskEnv->unk_50 = ov6_022485F4(taskEnv->fieldSystem);
    taskEnv->state++;

    return 0;
}

static int SubTask_Waterfall_Descend(WaterfallTaskEnv *taskEnv)
{
    VecFx32 newPos;

    MapObject_GetPosPtr(taskEnv->surfBlob, &newPos);

    newPos.z += taskEnv->deltaPos.z;

    if (newPos.z > taskEnv->targetPosition.z) {
        newPos.z = taskEnv->targetPosition.z;
    } else {
        taskEnv->distanceMoved += taskEnv->deltaPos.z;
    }

    MapObject_SetPos(taskEnv->surfBlob, &newPos);

    taskEnv->movementCounter++;

    if (taskEnv->movementCounter >= 32) {
        taskEnv->movementCounter = 0;
        taskEnv->state++;
    }

    return 0;
}

static int SubTask_Waterfall_FinishDescent(WaterfallTaskEnv *taskEnv)
{
    VecFx32 newPos;

    MapObject_GetPosPtr(taskEnv->surfBlob, &newPos);

    newPos.y += taskEnv->deltaPos.y;

    if (newPos.y < taskEnv->targetPosition.y) {
        newPos.y = taskEnv->targetPosition.y;
    }

    newPos.z += taskEnv->deltaPos.z;

    if (newPos.z > taskEnv->targetPosition.z) {
        newPos.z = taskEnv->targetPosition.z;
    } else {
        taskEnv->distanceMoved += taskEnv->deltaPos.z;
    }

    MapObject_SetPos(taskEnv->surfBlob, &newPos);

    taskEnv->movementCounter++;

    if (taskEnv->movementCounter < 64) {
        return 0;
    }

    GF_ASSERT(newPos.z == taskEnv->targetPosition.z);
    GF_ASSERT(newPos.y == taskEnv->targetPosition.y);

    MapObject_SetX(taskEnv->surfBlob, taskEnv->targetX);
    MapObject_SetY(taskEnv->surfBlob, taskEnv->targetY);
    MapObject_SetZ(taskEnv->surfBlob, taskEnv->targetZ);
    MapObject_UpdateCoords(taskEnv->surfBlob);

    ov6_02248608(taskEnv->unk_50);

    return 1;
}

static const MapObjectAnimCmd Unk_ov5_021F9B9C[] = {
    { 0x1, 0x1 },
    { 0x3C, 0x2 },
    { 0x2, 0x1 },
    { 0x3C, 0x2 },
    { 0x0, 0x1 },
    { 0x3C, 0x2 },
    { 0x3, 0x1 },
    { 0x3C, 0x2 },
    { 0x1, 0x1 },
    { 0x3C, 0x1 },
    { 0x2, 0x1 },
    { 0x3C, 0x1 },
    { 0x0, 0x1 },
    { 0x3C, 0x1 },
    { 0x3, 0x1 },
    { 0x3C, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_ov5_021F9C00[] = {
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x2, 0x1 },
    { 0x0, 0x1 },
    { 0x3, 0x1 },
    { 0x1, 0x1 },
    { 0x3C, 0x1 },
    { 0x2, 0x1 },
    { 0x3C, 0x1 },
    { 0x0, 0x1 },
    { 0x3C, 0x1 },
    { 0x3, 0x1 },
    { 0x3C, 0x1 },
    { 0x1, 0x1 },
    { 0x3C, 0x2 },
    { 0x2, 0x1 },
    { 0x3C, 0x3 },
    { 0x0, 0x1 },
    { 0x3C, 0x4 },
    { 0x3, 0x1 },
    { 0x3C, 0x5 },
    { 0x1, 0x1 },
    { 0xfe, 0x0 }
};

void ov5_021E0DD4(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    ov5_021E0DE0(fieldSystem);
}

static void ov5_021E0DE0(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021E0DE0 *v0 = MonRideTaskEnv_New(sizeof(UnkStruct_ov5_021E0DE0));

    v0->fieldSystem = fieldSystem;
    v0->playerAvatar = fieldSystem->playerAvatar;
    v0->unk_08 = Player_MapObject(v0->playerAvatar);
    v0->unk_10 = PlayerAvatar_Gender(v0->playerAvatar);

    FieldTask_InitCall(fieldSystem->task, ov5_021E0E10, v0);
}

static BOOL ov5_021E0E10(FieldTask *param0)
{
    UnkStruct_ov5_021E0DE0 *v0 = FieldTask_GetEnv(param0);

    switch (v0->unk_0C) {
    case 0:
        v0->unk_14 = MapObject_StartAnimation(v0->unk_08, Unk_ov5_021F9B9C);
        v0->unk_0C++;
        break;
    case 1:
        if (MapObject_HasAnimationEnded(v0->unk_14) == 1) {
            int v1 = Player_MoveStateFromGender(0x12, v0->unk_10);

            PlayerAvatar_Redraw(v0->playerAvatar, v1);
            MapObject_FinishAnimation(v0->unk_14);

            v0->unk_14 = MapObject_StartAnimation(v0->unk_08, Unk_ov5_021F9C00);
            v0->unk_0C++;
        }
        break;
    case 2:
        if (MapObject_HasAnimationEnded(v0->unk_14) == 1) {
            MapObject_FinishAnimation(v0->unk_14);
            MonRideTaskEnv_Free(v0);
            return 1;
        }
        break;
    }

    return 0;
}

void ov5_021E0E94(PlayerAvatar *playerAvatar)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (sub_02062DFC(v0) == 0) {
        return;
    }

    {
        int v1 = PlayerAvatar_GetPlayerState(playerAvatar);

        if (v1 != 0x0) {
            return;
        }
    }

    {
        int v2 = MapObject_GetGraphicsID(v0);

        if ((v2 == 0xc4) || (v2 == 0xc5) || (v2 == 0x10e) || (v2 == 0x10f)) {
            return;
        }
    }

    {
        u32 v3 = PlayerAvatar_RequestStateFlag(playerAvatar);

        PlayerAvatar_SetRequestStateBit(playerAvatar, (1 << 6));
        PlayerAvatar_RequestChangeState(playerAvatar);
        PlayerAvatar_SetRequestStateBit(playerAvatar, v3);
    }
}

void ov5_021E0EEC(PlayerAvatar *playerAvatar)
{
    MapObject *v0 = Player_MapObject(playerAvatar);

    if (sub_02062DFC(v0) == 0) {
        return;
    }

    {
        int v1 = PlayerAvatar_GetPlayerState(playerAvatar);

        if (v1 != 0x0) {
            return;
        }
    }

    {
        int v2 = MapObject_GetGraphicsID(v0);

        if ((v2 != 0xc4) && (v2 != 0xc5) && (v2 != 0x10e) && (v2 != 0x10f) && (v2 != 0x112) && (v2 != 0x113)) {
            return;
        }
    }

    {
        u32 v3 = PlayerAvatar_RequestStateFlag(playerAvatar);

        PlayerAvatar_SetRequestStateBit(playerAvatar, (1 << 0));
        PlayerAvatar_RequestChangeState(playerAvatar);
        PlayerAvatar_SetRequestStateBit(playerAvatar, v3);
    }
}

static SysTask *ov5_021E0F54(FieldSystem *fieldSystem, u32 param1)
{
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
    int v1 = PlayerAvatar_GetPlayerState(playerAvatar);

    if (v1 != 0x0) {
        return NULL;
    }

    {
        SysTask *v2;
        MapObject *v3 = Player_MapObject(playerAvatar);
        UnkStruct_ov5_021E0FF0 *v4 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD1, (sizeof(UnkStruct_ov5_021E0FF0)));

        v4->unk_00 = 0;
        v4->fieldSystem = fieldSystem;
        v4->playerAvatar = playerAvatar;
        v4->unk_04 = v1;

        MapObject_SetPauseMovementOff(v3);
        PlayerAvatar_SetRequestStateBit(playerAvatar, param1);
        PlayerAvatar_RequestChangeState(playerAvatar);

        v2 = SysTask_Start(ov5_021E0FF0, v4, 0xffff);
        GF_ASSERT(v2 != NULL);

        return v2;
    }
}

static void ov5_021E0FC0(SysTask *param0)
{
    if (param0 == NULL) {
        return;
    }

    {
        UnkStruct_ov5_021E0FF0 *v0 = SysTask_GetParam(param0);
        PlayerAvatar *playerAvatar = v0->playerAvatar;
        int v2 = Player_MoveStateFromGender(0x0, PlayerAvatar_Gender(playerAvatar));

        PlayerAvatar_RequestStateWalking(playerAvatar);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
    }
}

static void ov5_021E0FF0(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021E0FF0 *v0 = param1;
    MapObject *v1 = Player_MapObject(v0->playerAvatar);

    sub_02062B68(v1);
}

SysTask *ov5_021E1000(FieldSystem *fieldSystem)
{
    return ov5_021E0F54(fieldSystem, (1 << 7));
}

void ov5_021E100C(SysTask *param0)
{
    ov5_021E0FC0(param0);
}

SysTask *FieldSystem_StartVsSeekerTask(FieldSystem *fieldSystem)
{
    return ov5_021E0F54(fieldSystem, (1 << 9));
}

void FieldSystem_EndVsSeekerTask(SysTask *param0)
{
    ov5_021E0FC0(param0);
}

static void MonRideTask_Init(FieldSystem *fieldSystem, Pokemon *partyMon, MonRideTask *monRideTask)
{
    monRideTask->playCutIn = TRUE;
    monRideTask->partyMon = partyMon;
    monRideTask->playerGender = PlayerAvatar_Gender(fieldSystem->playerAvatar);
}

static void NewMonRideCutIn(FieldSystem *fieldSystem, MonRideTask *monRideTask)
{
    monRideTask->HMCutInTask = ov6_02243F88(fieldSystem, 0, monRideTask->partyMon, monRideTask->playerGender);
}

static BOOL CheckCutInFinished(MonRideTask *monRideTask)
{
    if (ov6_02243FBC(monRideTask->HMCutInTask) == TRUE) {
        ov6_02243FC8(monRideTask->HMCutInTask);
        return TRUE;
    }

    return FALSE;
}

static void PlayerAvatar_Redraw(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *v0 = Player_MapObject(playerAvatar);
    if (PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_NONE) {
        ov5_021EE3FC(v0, param1, NULL, NULL);
    } else {
        int v1;
        FieldSystem *fieldSystem;
        UnkStruct_020216E0 *v3;

        fieldSystem = MapObject_FieldSystem(v0);
        v1 = ov9_0224A520(fieldSystem, v0);
        v3 = ov5_021EE3FC(v0, param1, ov5_021E10C0, playerAvatar);

        if (v3 != NULL) {
            ov9_0224A558(fieldSystem, v3, v1);
        }
    }
}

static void ov5_021E10C0(void *param0, const UnkStruct_020216E0 *param1)
{
    PlayerAvatar *playerAvatar = param0;
    MapObject *v1 = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(v1);

    ov9_0224A564(fieldSystem, param1);
}

static MapObject *ov5_021E10D4(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = Player_GetXPos(playerAvatar) + MapObject_GetDxFromDir(param1);
    int v1 = Player_GetZPos(playerAvatar) + MapObject_GetDzFromDir(param1);
    const MapObjectManager *v2 = MapObject_MapObjectManager(Player_MapObject(playerAvatar));
    MapObject *v3 = sub_0206326C(v2, v0, v1, 0);

    return v3;
}

static void *MonRideTaskEnv_New(int size)
{
    void *monRideTaskEnv = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD1, size);

    GF_ASSERT(monRideTaskEnv != NULL);
    memset(monRideTaskEnv, 0, size);

    return monRideTaskEnv;
}

static void MonRideTaskEnv_Free(void *taskEnv)
{
    Heap_FreeToHeapExplicit(HEAP_ID_FIELD1, taskEnv);
}

static Pokemon *GetPokemonByIndex(FieldSystem *fieldSystem, int partySlot)
{
    Pokemon *partyMon = Party_GetPokemonBySlotIndex(SaveData_GetParty(fieldSystem->saveData), partySlot);
    return partyMon;
}
