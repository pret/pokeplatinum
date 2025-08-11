#include "unk_020655F4.h"

#include <nitro.h>
#include <string.h>

#include "constants/map_object.h"
#include "generated/movement_actions.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021F3E74.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "heap.h"
#include "map_header_data.h"
#include "map_object.h"
#include "map_object_move.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02069BE0.h"
#include "unk_020711EC.h"
#include "unk_020EDBAC.h"

typedef struct MoveAnimData {
    int state;
    BOOL ended;
    int count;
    MapObject *mapObj;
    const MapObjectAnimCmd *animCmd;
} MoveAnimData;

typedef struct WalkMovementData {
    u16 unused;
    s16 duration;
    int dir;
    fx32 distance;
} WalkMovementData;

typedef struct WalkOnSpotMovementData {
    u16 unused;
    s16 duration;
} WalkOnSpotMovementData;

typedef struct JumpMovementData {
    fx32 distance;
    fx32 unk_04;
    u16 unk_08;
    u16 unk_0A;
    s8 dir;
    s8 duration;
    u8 unused;
    s8 unk_0F;
} JumpMovementData;

typedef struct DelayMovementData {
    int delay;
} DelayMovementData;

typedef struct WarpMovementData {
    fx32 y;
    fx32 dy;
} WarpMovementData;

typedef struct EmoteMovementData {
    int unk_00;
    UnkStruct_ov101_021D5D90 *unk_04;
} EmoteMovementData;

typedef struct WalkUnevenMovementData {
    s16 dir;
    u16 unused;
    s16 duration;
    s16 timer;
} WalkUnevenMovementData;

typedef struct UnkStruct_02066824 {
    int duration;
    VecFx32 unk_04;
} UnkStruct_02066824;

typedef struct UnkStruct_02066F88 {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    fx32 unk_04;
    fx32 unk_08;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_02066F88;

typedef struct NurseJoyBowMovementData {
    int timer;
} NurseJoyBowMovementData;

typedef struct RevealTrainerMovementData {
    u32 jumpHeightIndex;
} RevealTrainerMovementData;

typedef struct PlayerGiveReceiveMovementData {
    u32 timer;
} PlayerGiveReceiveMovementData;

static void MapObject_DoAnimation(SysTask *task, void *data);
static BOOL MapObject_DoMovementActionStep(MapObject *mapObj, enum MovementAction movementAction, int movementStep);

static const fx32 *sJumpHeightsTable[];
static const fx32 sStepSizes_WalkEverSoSlightlyFast[7];
static const fx32 sStepSizes_WalkSlightlyFast[6];
static const fx32 sStepSizes_WalkSlightlyFaster[3];

BOOL LocalMapObj_IsAnimationSet(const MapObject *mapObj)
{
    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_0)) {
        return FALSE;
    }

    if (MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_1) == TRUE) {
        return FALSE;
    }

    if (MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_4) == TRUE && !MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_5)) {
        return FALSE;
    }

    return TRUE;
}

void LocalMapObj_SetAnimationCode(MapObject *mapObj, enum MovementAction movementAction)
{
    GF_ASSERT(movementAction < MAX_MOVEMENT_ACTION);

    MapObject_SetMovementAction(mapObj, movementAction);
    MapObject_SetMovementStep(mapObj, 0);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_4);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_5);
}

void sub_02065668(MapObject *mapObj, enum MovementAction movementAction)
{
    MapObject_SetMovementAction(mapObj, movementAction);
    MapObject_SetMovementStep(mapObj, 0);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_5);
}

BOOL LocalMapObj_CheckAnimationFinished(const MapObject *mapObj)
{
    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_4)) {
        return TRUE;
    }

    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_5)) {
        return FALSE;
    }

    return TRUE;
}

BOOL sub_020656AC(MapObject *mapObj)
{
    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_4)) {
        return TRUE;
    }

    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_5)) {
        return FALSE;
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_4 | MAP_OBJ_STATUS_5);

    return TRUE;
}

void sub_020656DC(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_4);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_5);
    MapObject_SetMovementAction(mapObj, MOVEMENT_ACTION_NONE);
    MapObject_SetMovementStep(mapObj, 0);
}

SysTask *MapObject_StartAnimation(MapObject *mapObj, const MapObjectAnimCmd *animCmd)
{
    MoveAnimData *data = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(MoveAnimData));
    GF_ASSERT(data != NULL);
    memset(data, 0, sizeof(MoveAnimData));

    int priority = sub_02062858(MapObject_MapObjectManager(mapObj)) - 1;
    SysTask *task = SysTask_Start(MapObject_DoAnimation, data, priority);
    GF_ASSERT(task != NULL);

    data->mapObj = mapObj;
    data->animCmd = animCmd;

    return task;
}

BOOL MapObject_HasAnimationEnded(SysTask *task)
{
    MoveAnimData *data = SysTask_GetParam(task);
    return data->ended;
}

void MapObject_FinishAnimation(SysTask *task)
{
    MoveAnimData *data = SysTask_GetParam(task);

    GF_ASSERT(LocalMapObj_CheckAnimationFinished(data->mapObj) == TRUE);

    sub_020656AC(data->mapObj);
    Heap_FreeExplicit(HEAP_ID_FIELD, data);
    SysTask_Done(task);
}

static BOOL MovementAnimation_Init(MoveAnimData *data);
static BOOL MovementAnimation_CheckSet(MoveAnimData *data);
static BOOL MovementAnimation_Set(MoveAnimData *data);
static BOOL MovementAnimation_CheckFinished(MoveAnimData *data);
static BOOL MovementAnimation_Increment(MoveAnimData *data);
static BOOL MovementAnimation_End(MoveAnimData *data);

enum {
    MOVEMENT_ANIM_STATE_INIT,
    MOVEMENT_ANIM_STATE_CHECK_SET,
    MOVEMENT_ANIM_STATE_SET,
    MOVEMENT_ANIM_STATE_CHECK_FINISHED,
    MOVEMENT_ANIM_STATE_INCREMENT,
    MOVEMENT_ANIM_STATE_END,
};

static BOOL (*const sMovementAnimationFuncs[])(MoveAnimData *) = {
    [MOVEMENT_ANIM_STATE_INIT] = MovementAnimation_Init,
    [MOVEMENT_ANIM_STATE_CHECK_SET] = MovementAnimation_CheckSet,
    [MOVEMENT_ANIM_STATE_SET] = MovementAnimation_Set,
    [MOVEMENT_ANIM_STATE_CHECK_FINISHED] = MovementAnimation_CheckFinished,
    [MOVEMENT_ANIM_STATE_INCREMENT] = MovementAnimation_Increment,
    [MOVEMENT_ANIM_STATE_END] = MovementAnimation_End,
};

static void MapObject_DoAnimation(SysTask *task, void *data)
{
    MoveAnimData *animData = data;
    while (sMovementAnimationFuncs[animData->state](animData) == TRUE) {}
}

static BOOL MovementAnimation_Init(MoveAnimData *data)
{
    data->count = 0;
    data->state = MOVEMENT_ANIM_STATE_CHECK_SET;
    return TRUE;
}

static BOOL MovementAnimation_CheckSet(MoveAnimData *data)
{
    if (LocalMapObj_IsAnimationSet(data->mapObj) == FALSE) {
        return FALSE;
    }

    data->state = MOVEMENT_ANIM_STATE_SET;
    return TRUE;
}

static BOOL MovementAnimation_Set(MoveAnimData *data)
{
    LocalMapObj_SetAnimationCode(data->mapObj, data->animCmd->movementAction);

    data->state = MOVEMENT_ANIM_STATE_CHECK_FINISHED;
    return FALSE;
}

static BOOL MovementAnimation_CheckFinished(MoveAnimData *data)
{
    if (LocalMapObj_CheckAnimationFinished(data->mapObj) == FALSE) {
        return FALSE;
    }

    data->state = MOVEMENT_ANIM_STATE_INCREMENT;
    return TRUE;
}

static BOOL MovementAnimation_Increment(MoveAnimData *data)
{
    const MapObjectAnimCmd *animCmd = data->animCmd;
    data->count++;

    if (data->count < animCmd->count) {
        data->state = MOVEMENT_ANIM_STATE_CHECK_SET;
        return TRUE;
    }

    data->animCmd = ++animCmd;

    if (animCmd->movementAction != MOVEMENT_ACTION_END) {
        data->state = 0;
        return TRUE;
    }

    data->ended = TRUE;
    data->state = MOVEMENT_ANIM_STATE_END;
    return FALSE;
}

static BOOL MovementAnimation_End(MoveAnimData *data)
{
    return FALSE;
}

enum MovementAction MovementAction_TurnActionTowardsDir(int targetDir, enum MovementAction movementAction)
{
    int dir;
    GF_ASSERT(targetDir < MAX_DIR);
    const int *const *movementActionCodes = gMovementActionCodes;

    while (*movementActionCodes) {
        dir = DIR_NORTH;
        const int *movementActions = *movementActionCodes;

        do {
            if (movementActions[dir] == movementAction) {
                return movementActions[targetDir];
            }

            dir++;
        } while (dir < MAX_DIR);

        movementActionCodes++;
    }

    GF_ASSERT(FALSE);
    return movementAction;
}

int MovementAction_GetDirFromAction(enum MovementAction movementAction)
{
    int dir;
    const int *const *movementActionCodes = gMovementActionCodes;

    while (*movementActionCodes) {
        dir = DIR_NORTH;
        const int *movementActions = *movementActionCodes;

        do {
            if (movementActions[dir] == movementAction) {
                return dir;
            }

            dir++;
        } while (dir < MAX_DIR);

        movementActionCodes++;
    }

    return DIR_NONE;
}

void MapObject_DoMovementAction(MapObject *mapObj)
{
    enum MovementAction movementAction, movementStep;

    do {
        movementAction = MapObject_GetMovementAction(mapObj);

        if (movementAction == MOVEMENT_ACTION_NONE) {
            break;
        }

        movementStep = MapObject_GetMovementStep(mapObj);
    } while (MapObject_DoMovementActionStep(mapObj, movementAction, movementStep));
}

BOOL sub_020658DC(MapObject *mapObj)
{
    MapObject_DoMovementAction(mapObj);

    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_5)) {
        return FALSE;
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_5);
    MapObject_SetMovementAction(mapObj, MOVEMENT_ACTION_NONE);
    MapObject_SetMovementStep(mapObj, 0);

    return TRUE;
}

static BOOL MapObject_DoMovementActionStep(MapObject *mapObj, enum MovementAction movementAction, int movementStep)
{
    return gMovementActionFuncs[movementAction][movementStep](mapObj);
}

static BOOL MovementAction_End(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_5);
    return FALSE;
}

static void MovementAction_InitFace(MapObject *mapObj, int dir)
{
    MapObject_TryFace(mapObj, dir);
    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_UpdateCoords(mapObj);
    MapObject_AdvanceMovementStep(mapObj);
}

static BOOL MovementAction_FaceNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitFace(mapObj, DIR_NORTH);
    return TRUE;
}

static BOOL MovementAction_FaceSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitFace(mapObj, DIR_SOUTH);
    return TRUE;
}

static BOOL MovementAction_FaceWest_Step0(MapObject *mapObj)
{
    MovementAction_InitFace(mapObj, DIR_WEST);
    return TRUE;
}

static BOOL MovementAction_FaceEast_Step0(MapObject *mapObj)
{
    MovementAction_InitFace(mapObj, DIR_EAST);
    return TRUE;
}

static void MovementAction_InitWalk(MapObject *mapObj, int dir, fx32 distance, s16 duration, u16 param4)
{
    WalkMovementData *data = MapObject_InitMovementData(mapObj, sizeof(WalkMovementData));

    data->unused = param4;
    data->duration = duration;
    data->dir = dir;
    data->distance = distance;

    MapObject_StepDir(mapObj, dir);
    MapObject_TryFaceAndTurn(mapObj, dir);
    sub_02062A0C(mapObj, param4);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    MapObject_AdvanceMovementStep(mapObj);
}

static BOOL MovementAction_Walk_Step1(MapObject *mapObj)
{
    WalkMovementData *data = MapObject_GetMovementData(mapObj);

    MapObject_MovePosInDir(mapObj, data->dir, data->distance);
    MapObject_RecalculateObjectHeight(mapObj);

    if (--(data->duration) > 0) {
        return FALSE;
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_5);
    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_WalkSlowerNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, FX32_CONST(0.5), 32, MAP_OBJ_UNK_A0_01);
    return TRUE;
}

static BOOL MovementAction_WalkSlowerSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, FX32_CONST(0.5), 32, MAP_OBJ_UNK_A0_01);
    return TRUE;
}

static BOOL MovementAction_WalkSlowerWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, FX32_CONST(0.5), 32, MAP_OBJ_UNK_A0_01);
    return TRUE;
}

static BOOL MovementAction_WalkSlowerEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, FX32_CONST(0.5), 32, MAP_OBJ_UNK_A0_01);
    return TRUE;
}

static BOOL MovementAction_WalkSlowNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, FX32_CONST(1), 16, MAP_OBJ_UNK_A0_02);
    return TRUE;
}

static BOOL MovementAction_WalkSlowSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, FX32_CONST(1), 16, MAP_OBJ_UNK_A0_02);
    return TRUE;
}

static BOOL MovementAction_WalkSlowWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, FX32_CONST(1), 16, MAP_OBJ_UNK_A0_02);
    return TRUE;
}

static BOOL MovementAction_WalkSlowEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, FX32_CONST(1), 16, MAP_OBJ_UNK_A0_02);
    return TRUE;
}

static BOOL MovementAction_WalkNormalNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, FX32_CONST(2), 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL MovementAction_WalkNormalSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, FX32_CONST(2), 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL MovementAction_WalkNormalWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, FX32_CONST(2), 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL MovementAction_WalkNormalEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, FX32_CONST(2), 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL MovementAction_WalkFastNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, FX32_CONST(4), 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL MovementAction_WalkFastSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, FX32_CONST(4), 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL MovementAction_WalkFastWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, FX32_CONST(4), 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL MovementAction_WalkFastEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, FX32_CONST(4), 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL MovementAction_WalkFasterNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, FX32_CONST(8), 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL MovementAction_WalkFasterSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, FX32_CONST(8), 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL MovementAction_WalkFasterWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, FX32_CONST(8), 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL MovementAction_WalkFasterEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, FX32_CONST(8), 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL MovementAction_WalkFastestNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, FX32_CONST(16), 1, MAP_OBJ_UNK_A0_00);
    return TRUE;
}

static BOOL MovementAction_WalkFastestSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, FX32_CONST(16), 1, MAP_OBJ_UNK_A0_00);
    return TRUE;
}

static BOOL MovementAction_WalkFastestWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, FX32_CONST(16), 1, MAP_OBJ_UNK_A0_00);
    return TRUE;
}

static BOOL MovementAction_WalkFastestEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, FX32_CONST(16), 1, MAP_OBJ_UNK_A0_00);
    return TRUE;
}

static BOOL MovementAction_RunNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, FX32_CONST(4), 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL MovementAction_RunSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, FX32_CONST(4), 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL MovementAction_RunWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, FX32_CONST(4), 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL MovementAction_RunEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, FX32_CONST(4), 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static void MovementAction_InitWalkOnSpot(MapObject *mapObj, int dir, s16 duration, u16 param3)
{
    // the extra 8 bytes are needed only for matching
    WalkOnSpotMovementData *data = MapObject_InitMovementData(mapObj, sizeof(WalkOnSpotMovementData) + 8);

    data->unused = param3;
    data->duration = duration + 1;

    MapObject_TryFace(mapObj, dir);
    sub_02062A0C(mapObj, param3);
    MapObject_UpdateCoords(mapObj);
    MapObject_AdvanceMovementStep(mapObj);
}

static BOOL MovementAction_WalkOnSpot_Step1(MapObject *mapObj)
{
    WalkOnSpotMovementData *data = MapObject_GetMovementData(mapObj);

    if (--(data->duration) > 0) {
        return FALSE;
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_5);
    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_WalkOnSpotSlowerNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 32, MAP_OBJ_UNK_A0_01);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotSlowerSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 32, MAP_OBJ_UNK_A0_01);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotSlowerWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 32, MAP_OBJ_UNK_A0_01);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotSlowerEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 32, MAP_OBJ_UNK_A0_01);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotSlowNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 16, MAP_OBJ_UNK_A0_02);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotSlowSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 16, MAP_OBJ_UNK_A0_02);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotSlowWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 16, MAP_OBJ_UNK_A0_02);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotSlowEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 16, MAP_OBJ_UNK_A0_02);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotNormalNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotNormalSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotNormalWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotNormalEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotFastNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotFastSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotFastWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotFastEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotFasterNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotFasterSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotFasterWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL MovementAction_WalkOnSpotFasterEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static void MovementAction_InitJumpCustomSound(MapObject *mapObj, int dir, fx32 distance, s16 duration, u16 param4, s16 param5, u16 param6, u32 param7)
{
    JumpMovementData *data = MapObject_InitMovementData(mapObj, sizeof(JumpMovementData));

    data->dir = dir;
    data->distance = distance;
    data->duration = duration;
    data->unused = param4;
    data->unk_0F = param5;
    data->unk_08 = param6;

    if (distance == 0) {
        MapObject_UpdateCoords(mapObj);
    } else {
        MapObject_StepDir(mapObj, dir);
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT | MAP_OBJ_STATUS_START_JUMP);
    MapObject_TryFaceAndTurn(mapObj, dir);
    sub_02062A0C(mapObj, param4);
    MapObject_AdvanceMovementStep(mapObj);

    if (param7) {
        Sound_PlayEffect(param7);
    }
}

static void MovementAction_InitJump(MapObject *mapObj, int dir, fx32 distance, s16 duration, u16 param4, s16 param5, u16 param6)
{
    MovementAction_InitJumpCustomSound(mapObj, dir, distance, duration, param4, param5, param6, 1547);
}

static BOOL MovementAction_Jump_Step1(MapObject *mapObj)
{
    JumpMovementData *data = MapObject_GetMovementData(mapObj);

    if (data->distance) {
        MapObject_MovePosInDir(mapObj, data->dir, data->distance);
        MapObject_RecalculateObjectHeight(mapObj);

        if (data->unk_04 >= FX32_CONST(16)) {
            data->unk_04 = 0;
            MapObject_StepDir(mapObj, data->dir);
            MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
        }

        fx32 distance = data->distance;

        if (distance < 0) {
            distance = -distance;
        }

        data->unk_04 += distance;
    }

    data->unk_0A += data->unk_08;

    if (data->unk_0A > 0xF00) {
        data->unk_0A = 0xF00;
    }

    VecFx32 v2;
    u16 jumpHeightIndex = data->unk_0A / 0x100;
    const fx32 *jumpHeightsTable = sJumpHeightsTable[data->unk_0F];

    v2.x = 0;
    v2.y = jumpHeightsTable[jumpHeightIndex];
    v2.z = 0;

    sub_02063088(mapObj, &v2);

    if (--(data->duration) > 0) {
        return FALSE;
    }

    VecFx32 v5 = { 0, 0, 0 };
    sub_02063088(mapObj, &v5);

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_END_JUMP | MAP_OBJ_STATUS_5);
    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);
    Sound_PlayEffect(SEQ_SE_DP_SUTYA2);

    return TRUE;
}

enum {
    JUMP_HEIGHT_HIGH,
    JUMP_HEIGHT_LOW,
    JUMP_HEIGHT_NORMAL, // unused
};

static BOOL MovementAction_JumpOnSpotSlowNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_NORTH, 0, 16, MAP_OBJ_UNK_A0_02, JUMP_HEIGHT_HIGH, 0x100);
    return TRUE;
}

static BOOL MovementAction_JumpOnSpotSlowSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_SOUTH, 0, 16, MAP_OBJ_UNK_A0_02, JUMP_HEIGHT_HIGH, 0x100);
    return TRUE;
}

static BOOL MovementAction_JumpOnSpotSlowWest_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, 0, 16, MAP_OBJ_UNK_A0_02, JUMP_HEIGHT_HIGH, 0x100);
    return TRUE;
}

static BOOL MovementAction_JumpOnSpotSlowEast_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, 0, 16, MAP_OBJ_UNK_A0_02, JUMP_HEIGHT_HIGH, 0x100);
    return TRUE;
}

static BOOL MovementAction_JumpOnSpotFastNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_NORTH, 0, 8, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x200);
    return TRUE;
}

static BOOL MovementAction_JumpOnSpotFastSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_SOUTH, 0, 8, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x200);
    return TRUE;
}

static BOOL MovementAction_JumpOnSpotFastWest_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, 0, 8, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x200);
    return TRUE;
}

static BOOL MovementAction_JumpOnSpotFastEast_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, 0, 8, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x200);
    return TRUE;
}

static BOOL MovementAction_JumpNearFastNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_NORTH, FX32_CONST(2), 8, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x200);
    return TRUE;
}

static BOOL MovementAction_JumpNearFastSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_SOUTH, FX32_CONST(2), 8, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x200);
    return TRUE;
}

static BOOL MovementAction_JumpNearFastWest_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, FX32_CONST(2), 8, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x200);
    return TRUE;
}

static BOOL MovementAction_JumpNearFastEast_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, FX32_CONST(2), 8, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x200);
    return TRUE;
}

static BOOL MovementAction_JumpFarNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_NORTH, FX32_CONST(2), 8 * 2, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x100);
    return TRUE;
}

static BOOL MovementAction_JumpFarSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_SOUTH, FX32_CONST(2), 16, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x100);
    return TRUE;
}

static BOOL MovementAction_JumpFarWest_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, FX32_CONST(2), 16, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x100);

    return TRUE;
}

static BOOL MovementAction_JumpFarEast_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, FX32_CONST(2), 16, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0x100);
    return TRUE;
}

static BOOL MovementAction_JumpNearSlowWest_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, FX32_CONST(1), 16, MAP_OBJ_UNK_A0_09, JUMP_HEIGHT_HIGH, 0xF0);
    return TRUE;
}

static BOOL MovementAction_JumpNearSlowEast_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, FX32_CONST(1), 16, MAP_OBJ_UNK_A0_09, JUMP_HEIGHT_HIGH, 0xF0);
    return TRUE;
}

static BOOL MovementAction_JumpFartherWest_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, FX32_CONST(4), 12, MAP_OBJ_UNK_A0_10, JUMP_HEIGHT_HIGH, 0x140);
    return TRUE;
}

static BOOL MovementAction_JumpFartherEast_Step0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, FX32_CONST(4), 12, MAP_OBJ_UNK_A0_10, JUMP_HEIGHT_HIGH, 0x140);
    return TRUE;
}

static BOOL sub_0206621C(MapObject *mapObj)
{
    MovementAction_InitJumpCustomSound(mapObj, DIR_NORTH, FX32_CONST(2), 8 * 3, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0xA0, 0);
    return TRUE;
}

static BOOL sub_02066240(MapObject *mapObj)
{
    MovementAction_InitJumpCustomSound(mapObj, DIR_SOUTH, FX32_CONST(2), 8 * 3, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0xA0, 0);
    return TRUE;
}

static BOOL sub_02066264(MapObject *mapObj)
{
    MovementAction_InitJumpCustomSound(mapObj, DIR_WEST, FX32_CONST(2), 8 * 3, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0xA0, 0);
    return TRUE;
}

static BOOL sub_02066288(MapObject *mapObj)
{
    MovementAction_InitJumpCustomSound(mapObj, DIR_EAST, FX32_CONST(2), 8 * 3, MAP_OBJ_UNK_A0_03, JUMP_HEIGHT_HIGH, 0xA0, 0);
    return TRUE;
}

static void MovementAction_InitDelay(MapObject *mapObj, int delay)
{
    DelayMovementData *data = MapObject_InitMovementData(mapObj, sizeof(DelayMovementData));
    data->delay = delay;

    MapObject_AdvanceMovementStep(mapObj);
}

static BOOL MovementAction_Delay_Step1(MapObject *mapObj)
{
    DelayMovementData *data = MapObject_GetMovementData(mapObj);

    if (data->delay) {
        data->delay--;
        return FALSE;
    }

    MapObject_AdvanceMovementStep(mapObj);
    return TRUE;
}

static BOOL MovementAction_Delay1_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 1);
    return TRUE;
}

static BOOL MovementAction_Delay2_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 2);
    return TRUE;
}

static BOOL MovementAction_Delay4_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 4);
    return TRUE;
}

static BOOL MovementAction_Delay8_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 8);
    return TRUE;
}

static BOOL MovementAction_Delay15_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 15);
    return TRUE;
}

static BOOL MovementAction_Delay16_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 16);
    return TRUE;
}

static BOOL MovementAction_Delay32_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 32);
    return TRUE;
}

static BOOL MovementAction_WarpOut_Step0(MapObject *mapObj)
{
    WarpMovementData *data = MapObject_InitMovementData(mapObj, sizeof(WarpMovementData));
    data->dy = FX32_CONST(16);

    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_WarpOut_Step1(MapObject *mapObj)
{
    WarpMovementData *data = MapObject_GetMovementData(mapObj);
    data->y += data->dy;

    VecFx32 v2 = { 0, 0, 0 };

    v2.y = data->y;
    sub_02063088(mapObj, &v2);

    if (data->y / FX32_CONST(8) < 40) {
        return FALSE;
    }

    MapObject_AdvanceMovementStep(mapObj);
    return TRUE;
}

static BOOL MovementAction_WarpIn_Step0(MapObject *mapObj)
{
    WarpMovementData *data = MapObject_InitMovementData(mapObj, sizeof(WarpMovementData));

    data->y = FX32_CONST(8) * 40;
    data->dy = -FX32_CONST(16);

    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_WarpIn_Step1(MapObject *mapObj)
{
    WarpMovementData *data = MapObject_GetMovementData(mapObj);
    data->y += data->dy;

    if (data->y < 0) {
        data->y = 0;
    }

    VecFx32 v1 = { 0, 0, 0 };

    v1.y = data->y;
    sub_02063088(mapObj, &v1);

    if (data->y > 0) {
        return FALSE;
    }

    MapObject_AdvanceMovementStep(mapObj);
    return TRUE;
}

static BOOL MovementAction_SetInvisible_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_SetVisible_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_LockDir_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_UnlockDir_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_PauseAnimation_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_PAUSE_ANIMATION);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_ResumeAnimation_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_PAUSE_ANIMATION);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static void sub_020664A0(MapObject *mapObj, int param1, int param2)
{
    EmoteMovementData *data = MapObject_InitMovementData(mapObj, sizeof(EmoteMovementData));

    data->unk_00 = param1;
    data->unk_04 = ov5_021F5D8C(mapObj, param1, 1, param2);

    MapObject_AdvanceMovementStep(mapObj);
}

static BOOL MovementAction_Emote_Step1(MapObject *mapObj)
{
    EmoteMovementData *data = MapObject_GetMovementData(mapObj);

    if (ov5_021F5C4C(data->unk_04) == 1) {
        sub_0207136C(data->unk_04);
        MapObject_AdvanceMovementStep(mapObj);
        return TRUE;
    }

    return FALSE;
}

static BOOL MovementAction_EmoteExclamationMark_Step0(MapObject *mapObj)
{
    sub_020664A0(mapObj, 0, 0);
    return FALSE;
}

static BOOL MovementAction_EmoteQuestionMark_Step0(MapObject *mapObj)
{
    sub_020664A0(mapObj, 1, 0);
    return FALSE;
}

static BOOL MovementAction_153_Step0(MapObject *mapObj)
{
    sub_020664A0(mapObj, 0, 1);
    return FALSE;
}

static void MovementAction_InitWalkUneven(MapObject *mapObj, int dir, s16 duration, u16 param3)
{
    WalkUnevenMovementData *data = MapObject_InitMovementData(mapObj, sizeof(WalkUnevenMovementData));

    data->dir = dir;
    data->unused = param3;
    data->duration = duration;

    MapObject_StepDir(mapObj, dir);
    MapObject_TryFaceAndTurn(mapObj, dir);
    sub_02062A0C(mapObj, param3);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    MapObject_AdvanceMovementStep(mapObj);
}

static BOOL MovementAction_WalkUneven(MapObject *mapObj, const fx32 *stepSizes)
{
    WalkUnevenMovementData *data = MapObject_GetMovementData(mapObj);

    MapObject_MovePosInDir(mapObj, data->dir, stepSizes[data->timer]);
    MapObject_RecalculateObjectHeight(mapObj);

    if (++(data->timer) < data->duration) {
        return FALSE;
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_5);
    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFastNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_NORTH, 6, MAP_OBJ_UNK_A0_06);
    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFastSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_SOUTH, 6, MAP_OBJ_UNK_A0_06);
    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFastWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_WEST, 6, MAP_OBJ_UNK_A0_06);
    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFastEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_EAST, 6, MAP_OBJ_UNK_A0_06);
    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFast_Step1(MapObject *mapObj)
{
    return MovementAction_WalkUneven(mapObj, sStepSizes_WalkSlightlyFast) == TRUE;
}

static BOOL MovementAction_WalkSlightlyFasterNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_NORTH, 3, MAP_OBJ_UNK_A0_07);
    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFasterSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_SOUTH, 3, MAP_OBJ_UNK_A0_07);
    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFasterWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_WEST, 3, MAP_OBJ_UNK_A0_07);
    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFasterEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_EAST, 3, MAP_OBJ_UNK_A0_07);
    return TRUE;
}

static BOOL MovementAction_WalkSlightlyFaster_Step1(MapObject *mapObj)
{
    return MovementAction_WalkUneven(mapObj, sStepSizes_WalkSlightlyFaster) == TRUE;
}

static BOOL MovementAction_WalkEverSoSlightlyFastNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_NORTH, 7, MAP_OBJ_UNK_A0_08);
    return TRUE;
}

static BOOL MovementAction_WalkEverSoSlightlyFastSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_SOUTH, 7, MAP_OBJ_UNK_A0_08);
    return TRUE;
}

static BOOL MovementAction_WalkEverSoSlightlyFastWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_WEST, 7, MAP_OBJ_UNK_A0_08);
    return TRUE;
}

static BOOL MovementAction_WalkEverSoSlightlyFastEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkUneven(mapObj, DIR_EAST, 7, MAP_OBJ_UNK_A0_08);
    return TRUE;
}

static BOOL MovementAction_WalkEverSoSlightlyFast_Step1(MapObject *mapObj)
{
    return MovementAction_WalkUneven(mapObj, sStepSizes_WalkEverSoSlightlyFast) == TRUE;
}

static BOOL MovementAction_NurseJoyBow_Step0(MapObject *mapObj)
{
    NurseJoyBowMovementData *data = MapObject_InitMovementData(mapObj, sizeof(NurseJoyBowMovementData));

    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_09);
    MapObject_AdvanceMovementStep(mapObj);

    return FALSE;
}

static BOOL MovementAction_NurseJoyBow_Step1(MapObject *mapObj)
{
    NurseJoyBowMovementData *data = MapObject_GetMovementData(mapObj);

    if (++(data->timer) >= 8) {
        MapObject_TryFace(mapObj, DIR_SOUTH);
        sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
        MapObject_AdvanceMovementStep(mapObj);
    }

    return FALSE;
}

static BOOL MovementAction_RevealTrainer_Step0(MapObject *mapObj)
{
    RevealTrainerMovementData *data = MapObject_InitMovementData(mapObj, sizeof(RevealTrainerMovementData));

    UnkStruct_ov101_021D5D90 *v1 = sub_0206A224(mapObj);

    if (v1 != NULL) {
        sub_0207136C(v1);
    }

    VecFx32 v2 = { 0, 0, 0 };
    sub_02063088(mapObj, &v2);

    ov5_021F3F10(mapObj);

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT | MAP_OBJ_STATUS_START_JUMP);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE_SHADOW);
    MapObject_AdvanceMovementStep(mapObj);

    return FALSE;
}

static BOOL MovementAction_RevealTrainer_Step1(MapObject *mapObj)
{
    RevealTrainerMovementData *data = MapObject_GetMovementData(mapObj);
    const fx32 *jumpHeightsTable = sJumpHeightsTable[JUMP_HEIGHT_HIGH];
    VecFx32 v2 = { 0, 0, 0 };

    v2.y = jumpHeightsTable[data->jumpHeightIndex];
    sub_02063088(mapObj, &v2);

    data->jumpHeightIndex += 2;

    if (data->jumpHeightIndex < 16) {
        return FALSE;
    }

    v2.y = 0;

    sub_02063088(mapObj, &v2);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_END_JUMP | MAP_OBJ_STATUS_5);
    sub_0206A230(mapObj);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL MovementAction_PlayerGive_Step0(MapObject *mapObj)
{
    PlayerGiveReceiveMovementData *data = MapObject_InitMovementData(mapObj, sizeof(PlayerGiveReceiveMovementData));

    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);

    return FALSE;
}

static BOOL MovementAction_PlayerReceive_Step0(MapObject *mapObj)
{
    PlayerGiveReceiveMovementData *data = MapObject_InitMovementData(mapObj, sizeof(PlayerGiveReceiveMovementData));

    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_01);
    MapObject_AdvanceMovementStep(mapObj);

    return FALSE;
}

static BOOL MovementAction_PlayerGiveReceive_Step1(MapObject *mapObj)
{
    PlayerGiveReceiveMovementData *data = MapObject_GetMovementData(mapObj);

    if (++(data->timer) < 21) {
        return FALSE;
    }

    MapObject_AdvanceMovementStep(mapObj);
    return TRUE;
}

static void sub_02066824(MapObject *mapObj, const VecFx32 *param1, int param2, int param3, int param4, u8 param5)
{
    UnkStruct_02066824 *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_02066824));
    data->duration = param4;
    data->unk_04 = *param1;

    MapObject_TryFace(mapObj, param2);
    MapObject_Turn(mapObj, param3);
    sub_02062A0C(mapObj, param5);
    MapObject_SetStartMovement(mapObj);

    MapObject_SetXPrev(mapObj, MapObject_GetX(mapObj));
    MapObject_SetYPrev(mapObj, MapObject_GetY(mapObj));
    MapObject_SetZPrev(mapObj, MapObject_GetZ(mapObj));

    if (param1->x < 0) {
        MapObject_AddX(mapObj, -1);
    } else if (param1->x > 0) {
        MapObject_AddX(mapObj, 1);
    }

    if (param1->y < 0) {
        MapObject_AddY(mapObj, -1 * 2);
    } else if (param1->y > 0) {
        MapObject_AddY(mapObj, 1 * 2);
    }

    if (param1->z < 0) {
        MapObject_AddZ(mapObj, -1);
    } else if (param1->z > 0) {
        MapObject_AddZ(mapObj, 1);
    }

    MapObject_AdvanceMovementStep(mapObj);
}

static BOOL sub_020668EC(MapObject *mapObj)
{
    UnkStruct_02066824 *data = MapObject_GetMovementData(mapObj);
    MapObject_AddVecToPos(mapObj, &data->unk_04);

    if (--(data->duration) > 0) {
        return FALSE;
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_5);

    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);

    return TRUE;
}

static BOOL sub_02066934(MapObject *mapObj)
{
    VecFx32 v0 = { 0, FX32_CONST(2), 0 };

    sub_02066824(mapObj, &v0, 2, 0, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066968(MapObject *mapObj)
{
    VecFx32 v0 = { 0, -FX32_CONST(2), 0 };

    sub_02066824(mapObj, &v0, 3, 1, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066998(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, FX32_CONST(2) };

    sub_02066824(mapObj, &v0, 1, 2, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_020669CC(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -FX32_CONST(2) };

    sub_02066824(mapObj, &v0, 0, 3, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_020669FC(MapObject *mapObj)
{
    VecFx32 v0 = { 0, FX32_CONST(2), 0 };

    sub_02066824(mapObj, &v0, 3, 0, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066A2C(MapObject *mapObj)
{
    VecFx32 v0 = { 0, -FX32_CONST(2), 0 };

    sub_02066824(mapObj, &v0, 2, 1, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066A60(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -FX32_CONST(2) };

    sub_02066824(mapObj, &v0, 0, 2, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066A94(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, FX32_CONST(2) };

    sub_02066824(mapObj, &v0, 1, 2, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066AC8(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, FX32_CONST(2) };

    sub_02066824(mapObj, &v0, 1, 0, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066AFC(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -FX32_CONST(2) };

    sub_02066824(mapObj, &v0, 0, 1, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066B30(MapObject *mapObj)
{
    VecFx32 v0 = { -FX32_CONST(2), 0, 0 };

    sub_02066824(mapObj, &v0, 3, 2, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066B60(MapObject *mapObj)
{
    VecFx32 v0 = { FX32_CONST(2), 0, 0 };

    sub_02066824(mapObj, &v0, 2, 3, 8, MAP_OBJ_UNK_A0_03);
    return TRUE;
}

static BOOL sub_02066B90(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, FX32_CONST(4) };

    sub_02066824(mapObj, &v0, 1, 0, 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL sub_02066BC0(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -FX32_CONST(4) };

    sub_02066824(mapObj, &v0, 0, 1, 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL sub_02066BF0(MapObject *mapObj)
{
    VecFx32 v0 = { -FX32_CONST(4), 0, 0 };

    sub_02066824(mapObj, &v0, 3, 2, 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL sub_02066C20(MapObject *mapObj)
{
    VecFx32 v0 = { FX32_CONST(4), 0, 0 };

    sub_02066824(mapObj, &v0, 2, 3, 4, MAP_OBJ_UNK_A0_04);
    return TRUE;
}

static BOOL sub_02066C50(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, FX32_CONST(8) };

    sub_02066824(mapObj, &v0, 1, 0, 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL sub_02066C84(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -FX32_CONST(8) };

    sub_02066824(mapObj, &v0, 0, 1, 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL sub_02066CB8(MapObject *mapObj)
{
    VecFx32 v0 = { -FX32_CONST(8), 0, 0 };

    sub_02066824(mapObj, &v0, 3, 2, 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL sub_02066CE8(MapObject *mapObj)
{
    VecFx32 v0 = { FX32_CONST(8), 0, 0 };

    sub_02066824(mapObj, &v0, 2, 3, 2, MAP_OBJ_UNK_A0_05);
    return TRUE;
}

static BOOL sub_02066D18(MapObject *mapObj)
{
    VecFx32 v0 = { 0, FX32_CONST(4), 0 };

    sub_02066824(mapObj, &v0, 2, 0, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066D4C(MapObject *mapObj)
{
    VecFx32 v0 = { 0, -FX32_CONST(4), 0 };

    sub_02066824(mapObj, &v0, 3, 1, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066D80(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, FX32_CONST(4) };

    sub_02066824(mapObj, &v0, 1, 2, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066DB4(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -FX32_CONST(4) };

    sub_02066824(mapObj, &v0, 0, 3, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066DE8(MapObject *mapObj)
{
    VecFx32 v0 = { 0, FX32_CONST(4), 0 };

    sub_02066824(mapObj, &v0, 3, 0, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066E1C(MapObject *mapObj)
{
    VecFx32 v0 = { 0, -FX32_CONST(4), 0 };

    sub_02066824(mapObj, &v0, 2, 1, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066E50(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -FX32_CONST(4) };

    sub_02066824(mapObj, &v0, 0, 2, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066E84(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, FX32_CONST(4) };

    sub_02066824(mapObj, &v0, 1, 2, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066EB8(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, FX32_CONST(4) };

    sub_02066824(mapObj, &v0, 1, 0, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066EEC(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -FX32_CONST(4) };

    sub_02066824(mapObj, &v0, 0, 1, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066F20(MapObject *mapObj)
{
    VecFx32 v0 = { -FX32_CONST(4), 0, 0 };

    sub_02066824(mapObj, &v0, 3, 2, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static BOOL sub_02066F54(MapObject *mapObj)
{
    VecFx32 v0 = { FX32_CONST(4), 0, 0 };

    sub_02066824(mapObj, &v0, 2, 3, 4, MAP_OBJ_UNK_A0_09);
    return TRUE;
}

static void sub_02066F88(MapObject *mapObj, fx32 distance, int facingDir, int movingDir, u8 duration, u8 param5, u8 param6, u8 param7, u8 param8)
{
    int v0 = 1;
    UnkStruct_02066F88 *v1 = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_02066F88));

    v1->unk_00 = duration;
    v1->unk_04 = distance;
    v1->unk_02 = param6;
    v1->unk_01 = param7;
    v1->unk_03 = param8;
    v1->unk_0E = (0x100 * 16) / v1->unk_00;

    MapObject_TryFace(mapObj, facingDir);
    MapObject_Turn(mapObj, movingDir);
    sub_02062A0C(mapObj, param5);
    MapObject_SetStartMovement(mapObj);

    MapObject_SetXPrev(mapObj, MapObject_GetX(mapObj));
    MapObject_SetYPrev(mapObj, MapObject_GetY(mapObj));
    MapObject_SetZPrev(mapObj, MapObject_GetZ(mapObj));

    GF_ASSERT(param6 <= 2);

    if (distance) {
        switch (param6) {
        case 0:
            if (distance < 0) {
                v0 = -v0;
            }

            MapObject_AddX(mapObj, v0);
            break;
        case 1:
            if (distance < 0) {
                v0 = -v0;
            }

            MapObject_AddY(mapObj, v0 * 2);
            break;
        case 2:
            if (distance < 0) {
                v0 = -v0;
            }

            MapObject_AddZ(mapObj, v0);
            break;
        }
    }

    MapObject_AdvanceMovementStep(mapObj);
}

static BOOL sub_02067068(MapObject *mapObj)
{
    VecFx32 v1;
    UnkStruct_02066F88 *v2 = MapObject_GetMovementData(mapObj);
    MapObject_GetPosPtr(mapObj, &v1);

    switch (v2->unk_02) {
    case 0:
        v1.x += v2->unk_04;
        break;
    case 1:
        v1.y += v2->unk_04;
        break;
    case 2:
        v1.z += v2->unk_04;
        break;
    }

    MapObject_SetPos(mapObj, &v1);

    fx32 v0 = v2->unk_04;

    if (v0 < 0) {
        v0 = -v0;
    }

    v2->unk_08 += v0;
    v2->unk_0C += v2->unk_0E;

    if (v2->unk_0C > (0x100 * (16 - 1))) {
        v2->unk_0C = (0x100 * (16 - 1));
    }

    VecFx32 v3 = { 0, 0, 0 };
    const fx32 *jumpHeightsTable = sJumpHeightsTable[JUMP_HEIGHT_LOW];
    u16 v5 = (v2->unk_0C) / 0x100;

    v0 = jumpHeightsTable[v5];

    if (v2->unk_03 == 1) {
        v0 = -v0;
    }

    switch (v2->unk_01) {
    case 0:
        v3.x = v0;
        break;
    case 1:
        v3.y = v0;
        break;
    case 2:
        v3.z = v0;
        break;
    }

    sub_02063088(mapObj, &v3);

    v2->unk_00--;

    if ((v2->unk_08 >= FX32_CONST(16)) && v2->unk_00) {
        int v6 = 1;

        v2->unk_08 -= FX32_CONST(16);
        v0 = v2->unk_04;

        MapObject_SetXPrev(mapObj, MapObject_GetX(mapObj));
        MapObject_SetYPrev(mapObj, MapObject_GetY(mapObj));
        MapObject_SetZPrev(mapObj, MapObject_GetZ(mapObj));

        switch (v2->unk_02) {
        case 0:
            if (v0 < 0) {
                v6 = -v6;
            }

            MapObject_AddX(mapObj, v6);
            break;
        case 1:
            if (v0 < 0) {
                v6 = -v6;
            }

            MapObject_AddY(mapObj, v6 * 2);
            break;
        case 2:
            if (v0 < 0) {
                v6 = -v6;
            }

            MapObject_AddZ(mapObj, v6);
            break;
        }
    }

    if (v2->unk_00 > 0) {
        return FALSE;
    }

    VecFx32 v7 = { 0, 0, 0 };
    sub_02063088(mapObj, &v7);

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_END_JUMP | MAP_OBJ_STATUS_5);
    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, MAP_OBJ_UNK_A0_00);
    MapObject_AdvanceMovementStep(mapObj);
    Sound_PlayEffect(SEQ_SE_DP_SUTYA2);

    return TRUE;
}

static BOOL sub_020671F0(MapObject *mapObj)
{
    sub_02066F88(mapObj, FX32_CONST(2), 2, 0, 8, MAP_OBJ_UNK_A0_03, 1, 1, 0);
    return TRUE;
}

static BOOL sub_02067214(MapObject *mapObj)
{
    sub_02066F88(mapObj, -FX32_CONST(2), 3, 1, 8, MAP_OBJ_UNK_A0_03, 1, 1, 0);
    return TRUE;
}

static BOOL sub_0206723C(MapObject *mapObj)
{
    sub_02066F88(mapObj, FX32_CONST(2), 1, 2, 8, MAP_OBJ_UNK_A0_03, 2, 1, 0);
    return TRUE;
}

static BOOL sub_02067260(MapObject *mapObj)
{
    sub_02066F88(mapObj, -FX32_CONST(2), 0, 3, 8, MAP_OBJ_UNK_A0_03, 2, 1, 0);
    return TRUE;
}

static BOOL sub_02067288(MapObject *mapObj)
{
    sub_02066F88(mapObj, FX32_CONST(2), 3, 0, 8, MAP_OBJ_UNK_A0_03, 1, 1, 0);
    return TRUE;
}

static BOOL sub_020672AC(MapObject *mapObj)
{
    sub_02066F88(mapObj, -FX32_CONST(2), 2, 1, 8, MAP_OBJ_UNK_A0_03, 1, 1, 0);
    return TRUE;
}

static BOOL sub_020672D4(MapObject *mapObj)
{
    sub_02066F88(mapObj, -FX32_CONST(2), 0, 2, 8, MAP_OBJ_UNK_A0_03, 2, 1, 0);
    return TRUE;
}

static BOOL sub_020672FC(MapObject *mapObj)
{
    sub_02066F88(mapObj, FX32_CONST(2), 1, 2, 8, MAP_OBJ_UNK_A0_03, 2, 1, 0);
    return TRUE;
}

static BOOL sub_02067320(MapObject *mapObj)
{
    sub_02066F88(mapObj, FX32_CONST(2), 1, 0, 8, MAP_OBJ_UNK_A0_03, 2, 1, 0);
    return TRUE;
}

static BOOL sub_02067344(MapObject *mapObj)
{
    sub_02066F88(mapObj, -FX32_CONST(2), 0, 1, 8, MAP_OBJ_UNK_A0_03, 2, 1, 0);
    return TRUE;
}

static BOOL sub_0206736C(MapObject *mapObj)
{
    sub_02066F88(mapObj, -FX32_CONST(2), 3, 2, 8, MAP_OBJ_UNK_A0_03, 0, 1, 0);
    return TRUE;
}

static BOOL sub_02067394(MapObject *mapObj)
{
    sub_02066F88(mapObj, FX32_CONST(2), 2, 3, 8, MAP_OBJ_UNK_A0_03, 0, 1, 0);
    return TRUE;
}

BOOL(*const gMovementActionFuncs_FaceNorth[])
(MapObject *) = {
    MovementAction_FaceNorth_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_FaceSouth[])
(MapObject *) = {
    MovementAction_FaceSouth_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_FaceWest[])
(MapObject *) = {
    MovementAction_FaceWest_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_FaceEast[])
(MapObject *) = {
    MovementAction_FaceEast_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlowerNorth[])
(MapObject *) = {
    MovementAction_WalkSlowerNorth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlowerSouth[])
(MapObject *) = {
    MovementAction_WalkSlowerSouth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlowerWest[])
(MapObject *) = {
    MovementAction_WalkSlowerWest_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlowerEast[])
(MapObject *) = {
    MovementAction_WalkSlowerEast_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlowNorth[])
(MapObject *) = {
    MovementAction_WalkSlowNorth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlowSouth[])
(MapObject *) = {
    MovementAction_WalkSlowSouth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlowWest[])
(MapObject *) = {
    MovementAction_WalkSlowWest_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlowEast[])
(MapObject *) = {
    MovementAction_WalkSlowEast_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkNormalNorth[])
(MapObject *) = {
    MovementAction_WalkNormalNorth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkNormalSouth[])
(MapObject *) = {
    MovementAction_WalkNormalSouth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkNormalWest[])
(MapObject *) = {
    MovementAction_WalkNormalWest_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkNormalEast[])
(MapObject *) = {
    MovementAction_WalkNormalEast_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFastNorth[])
(MapObject *) = {
    MovementAction_WalkFastNorth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFastSouth[])
(MapObject *) = {
    MovementAction_WalkFastSouth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFastWest[])
(MapObject *) = {
    MovementAction_WalkFastWest_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFastEast[])
(MapObject *) = {
    MovementAction_WalkFastEast_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFasterNorth[])
(MapObject *) = {
    MovementAction_WalkFasterNorth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFasterSouth[])
(MapObject *) = {
    MovementAction_WalkFasterSouth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFasterWest[])
(MapObject *) = {
    MovementAction_WalkFasterWest_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFasterEast[])
(MapObject *) = {
    MovementAction_WalkFasterEast_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFastestNorth[])
(MapObject *) = {
    MovementAction_WalkFastestNorth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFastestSouth[])
(MapObject *) = {
    MovementAction_WalkFastestSouth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFastestWest[])
(MapObject *) = {
    MovementAction_WalkFastestWest_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkFastestEast[])
(MapObject *) = {
    MovementAction_WalkFastestEast_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotSlowerNorth[])
(MapObject *) = {
    MovementAction_WalkOnSpotSlowerNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotSlowerSouth[])
(MapObject *) = {
    MovementAction_WalkOnSpotSlowerSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotSlowerWest[])
(MapObject *) = {
    MovementAction_WalkOnSpotSlowerWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotSlowerEast[])
(MapObject *) = {
    MovementAction_WalkOnSpotSlowerEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotSlowNorth[])
(MapObject *) = {
    MovementAction_WalkOnSpotSlowNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotSlowSouth[])
(MapObject *) = {
    MovementAction_WalkOnSpotSlowSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotSlowWest[])
(MapObject *) = {
    MovementAction_WalkOnSpotSlowWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotSlowEast[])
(MapObject *) = {
    MovementAction_WalkOnSpotSlowEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotNormalNorth[])
(MapObject *) = {
    MovementAction_WalkOnSpotNormalNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotNormalSouth[])
(MapObject *) = {
    MovementAction_WalkOnSpotNormalSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotNormalWest[])
(MapObject *) = {
    MovementAction_WalkOnSpotNormalWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotNormalEast[])
(MapObject *) = {
    MovementAction_WalkOnSpotNormalEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotFastNorth[])
(MapObject *) = {
    MovementAction_WalkOnSpotFastNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotFastSouth[])
(MapObject *) = {
    MovementAction_WalkOnSpotFastSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotFastWest[])
(MapObject *) = {
    MovementAction_WalkOnSpotFastWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotFastEast[])
(MapObject *) = {
    MovementAction_WalkOnSpotFastEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotFasterNorth[])
(MapObject *) = {
    MovementAction_WalkOnSpotFasterNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotFasterSouth[])
(MapObject *) = {
    MovementAction_WalkOnSpotFasterSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotFasterWest[])
(MapObject *) = {
    MovementAction_WalkOnSpotFasterWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkOnSpotFasterEast[])
(MapObject *) = {
    MovementAction_WalkOnSpotFasterEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpOnSpotSlowNorth[])
(MapObject *) = {
    MovementAction_JumpOnSpotSlowNorth_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpOnSpotSlowSouth[])
(MapObject *) = {
    MovementAction_JumpOnSpotSlowSouth_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpOnSpotSlowWest[])
(MapObject *) = {
    MovementAction_JumpOnSpotSlowWest_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpOnSpotSlowEast[])
(MapObject *) = {
    MovementAction_JumpOnSpotSlowEast_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpOnSpotFastNorth[])
(MapObject *) = {
    MovementAction_JumpOnSpotFastNorth_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpOnSpotFastSouth[])
(MapObject *) = {
    MovementAction_JumpOnSpotFastSouth_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpOnSpotFastWest[])
(MapObject *) = {
    MovementAction_JumpOnSpotFastWest_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpOnSpotFastEast[])
(MapObject *) = {
    MovementAction_JumpOnSpotFastEast_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpNearFastNorth[])
(MapObject *) = {
    MovementAction_JumpNearFastNorth_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpNearFastSouth[])
(MapObject *) = {
    MovementAction_JumpNearFastSouth_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpNearFastWest[])
(MapObject *) = {
    MovementAction_JumpNearFastWest_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpNearFastEast[])
(MapObject *) = {
    MovementAction_JumpNearFastEast_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpFarNorth[])
(MapObject *) = {
    MovementAction_JumpFarNorth_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpFarSouth[])
(MapObject *) = {
    MovementAction_JumpFarSouth_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpFarWest[])
(MapObject *) = {
    MovementAction_JumpFarWest_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpFarEast[])
(MapObject *) = {
    MovementAction_JumpFarEast_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpNearSlowWest[])
(MapObject *) = {
    MovementAction_JumpNearSlowWest_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpNearSlowEast[])
(MapObject *) = {
    MovementAction_JumpNearSlowEast_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpFartherWest[])
(MapObject *) = {
    MovementAction_JumpFartherWest_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_JumpFartherEast[])
(MapObject *) = {
    MovementAction_JumpFartherEast_Step0,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_Delay1[])
(MapObject *) = {
    MovementAction_Delay1_Step0,
    MovementAction_Delay_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_Delay2[])
(MapObject *) = {
    MovementAction_Delay2_Step0,
    MovementAction_Delay_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_Delay4[])
(MapObject *) = {
    MovementAction_Delay4_Step0,
    MovementAction_Delay_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_Delay8[])
(MapObject *) = {
    MovementAction_Delay8_Step0,
    MovementAction_Delay_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_Delay15[])
(MapObject *) = {
    MovementAction_Delay15_Step0,
    MovementAction_Delay_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_Delay16[])
(MapObject *) = {
    MovementAction_Delay16_Step0,
    MovementAction_Delay_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_Delay32[])
(MapObject *) = {
    MovementAction_Delay32_Step0,
    MovementAction_Delay_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WarpOut[])
(MapObject *) = {
    MovementAction_WarpOut_Step0,
    MovementAction_WarpOut_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WarpIn[])
(MapObject *) = {
    MovementAction_WarpIn_Step0,
    MovementAction_WarpIn_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_SetInvisible[])
(MapObject *) = {
    MovementAction_SetInvisible_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_SetVisible[])
(MapObject *) = {
    MovementAction_SetVisible_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_LockDir[])
(MapObject *) = {
    MovementAction_LockDir_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_UnlockDir[])
(MapObject *) = {
    MovementAction_UnlockDir_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_PauseAnimation[])
(MapObject *) = {
    MovementAction_PauseAnimation_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_ResumeAnimation[])
(MapObject *) = {
    MovementAction_ResumeAnimation_Step0,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_EmoteExclamationMark[])
(MapObject *) = {
    MovementAction_EmoteExclamationMark_Step0,
    MovementAction_Emote_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_EmoteQuestionMark[])
(MapObject *) = {
    MovementAction_EmoteQuestionMark_Step0,
    MovementAction_Emote_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlightlyFastNorth[])
(MapObject *) = {
    MovementAction_WalkSlightlyFastNorth_Step0,
    MovementAction_WalkSlightlyFast_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlightlyFastSouth[])
(MapObject *) = {
    MovementAction_WalkSlightlyFastSouth_Step0,
    MovementAction_WalkSlightlyFast_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlightlyFastWest[])
(MapObject *) = {
    MovementAction_WalkSlightlyFastWest_Step0,
    MovementAction_WalkSlightlyFast_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlightlyFastEast[])
(MapObject *) = {
    MovementAction_WalkSlightlyFastEast_Step0,
    MovementAction_WalkSlightlyFast_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlightlyFasterNorth[])
(MapObject *) = {
    MovementAction_WalkSlightlyFasterNorth_Step0,
    MovementAction_WalkSlightlyFaster_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlightlyFasterSouth[])
(MapObject *) = {
    MovementAction_WalkSlightlyFasterSouth_Step0,
    MovementAction_WalkSlightlyFaster_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlightlyFasterWest[])
(MapObject *) = {
    MovementAction_WalkSlightlyFasterWest_Step0,
    MovementAction_WalkSlightlyFaster_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkSlightlyFasterEast[])
(MapObject *) = {
    MovementAction_WalkSlightlyFasterEast_Step0,
    MovementAction_WalkSlightlyFaster_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_RunNorth[])
(MapObject *) = {
    MovementAction_RunNorth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_RunSouth[])
(MapObject *) = {
    MovementAction_RunSouth_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_RunWest[])
(MapObject *) = {
    MovementAction_RunWest_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_RunEast[])
(MapObject *) = {
    MovementAction_RunEast_Step0,
    MovementAction_Walk_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkEverSoSlightlyFastNorth[])
(MapObject *) = {
    MovementAction_WalkEverSoSlightlyFastNorth_Step0,
    MovementAction_WalkEverSoSlightlyFast_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkEverSoSlightlyFastSouth[])
(MapObject *) = {
    MovementAction_WalkEverSoSlightlyFastSouth_Step0,
    MovementAction_WalkEverSoSlightlyFast_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkEverSoSlightlyFastWest[])
(MapObject *) = {
    MovementAction_WalkEverSoSlightlyFastWest_Step0,
    MovementAction_WalkEverSoSlightlyFast_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_WalkEverSoSlightlyFastEast[])
(MapObject *) = {
    MovementAction_WalkEverSoSlightlyFastEast_Step0,
    MovementAction_WalkEverSoSlightlyFast_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_NurseJoyBow[])
(MapObject *) = {
    MovementAction_NurseJoyBow_Step0,
    MovementAction_NurseJoyBow_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_RevealTrainer[])
(MapObject *) = {
    MovementAction_RevealTrainer_Step0,
    MovementAction_RevealTrainer_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_PlayerGive[])
(MapObject *) = {
    MovementAction_PlayerGive_Step0,
    MovementAction_PlayerGiveReceive_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_PlayerReceive[])
(MapObject *) = {
    MovementAction_PlayerReceive_Step0,
    MovementAction_PlayerGiveReceive_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_105[])
(MapObject *) = {
    sub_02066934,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_106[])
(MapObject *) = {
    sub_02066968,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_107[])
(MapObject *) = {
    sub_02066998,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_108[])
(MapObject *) = {
    sub_020669CC,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_109[])
(MapObject *) = {
    sub_020669FC,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_110[])
(MapObject *) = {
    sub_02066A2C,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_111[])
(MapObject *) = {
    sub_02066A60,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_112[])
(MapObject *) = {
    sub_02066A94,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_113[])
(MapObject *) = {
    sub_02066AC8,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_114[])
(MapObject *) = {
    sub_02066AFC,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_115[])
(MapObject *) = {
    sub_02066B30,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_116[])
(MapObject *) = {
    sub_02066B60,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_145[])
(MapObject *) = {
    sub_02066B90,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_146[])
(MapObject *) = {
    sub_02066BC0,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_147[])
(MapObject *) = {
    sub_02066BF0,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_148[])
(MapObject *) = {
    sub_02066C20,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_149[])
(MapObject *) = {
    sub_02066C50,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_150[])
(MapObject *) = {
    sub_02066C84,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_151[])
(MapObject *) = {
    sub_02066CB8,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_152[])
(MapObject *) = {
    sub_02066CE8,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_117[])
(MapObject *) = {
    sub_0206621C,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_118[])
(MapObject *) = {
    sub_02066240,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_119[])
(MapObject *) = {
    sub_02066264,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_120[])
(MapObject *) = {
    sub_02066288,
    MovementAction_Jump_Step1,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_121[])
(MapObject *) = {
    sub_02066D18,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_122[])
(MapObject *) = {
    sub_02066D4C,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_123[])
(MapObject *) = {
    sub_02066D80,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_124[])
(MapObject *) = {
    sub_02066DB4,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_125[])
(MapObject *) = {
    sub_02066DE8,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_126[])
(MapObject *) = {
    sub_02066E1C,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_127[])
(MapObject *) = {
    sub_02066E50,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_128[])
(MapObject *) = {
    sub_02066E84,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_129[])
(MapObject *) = {
    sub_02066EB8,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_130[])
(MapObject *) = {
    sub_02066EEC,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_131[])
(MapObject *) = {
    sub_02066F20,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_132[])
(MapObject *) = {
    sub_02066F54,
    sub_020668EC,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_133[])
(MapObject *) = {
    sub_020671F0,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_134[])
(MapObject *) = {
    sub_02067214,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_135[])
(MapObject *) = {
    sub_0206723C,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_136[])
(MapObject *) = {
    sub_02067260,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_137[])
(MapObject *) = {
    sub_02067288,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_138[])
(MapObject *) = {
    sub_020672AC,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_139[])
(MapObject *) = {
    sub_020672D4,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_140[])
(MapObject *) = {
    sub_020672FC,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_141[])
(MapObject *) = {
    sub_02067320,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_142[])
(MapObject *) = {
    sub_02067344,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_143[])
(MapObject *) = {
    sub_0206736C,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_144[])
(MapObject *) = {
    sub_02067394,
    sub_02067068,
    MovementAction_End,
};

BOOL(*const gMovementActionFuncs_153[])
(MapObject *) = {
    MovementAction_153_Step0,
    MovementAction_Emote_Step1,
    MovementAction_End,
};

static const fx32 sJumpHeights_High[16] = {
    FX32_CONST(4),
    FX32_CONST(6),
    FX32_CONST(8),
    FX32_CONST(10),
    FX32_CONST(11),
    FX32_CONST(12),
    FX32_CONST(12),
    FX32_CONST(12),
    FX32_CONST(11),
    FX32_CONST(10),
    FX32_CONST(9),
    FX32_CONST(8),
    FX32_CONST(6),
    FX32_CONST(4),
    FX32_CONST(0),
    FX32_CONST(0),
};

static const fx32 sJumpHeights_Low[16] = {
    FX32_CONST(0),
    FX32_CONST(2),
    FX32_CONST(3),
    FX32_CONST(4),
    FX32_CONST(5),
    FX32_CONST(6),
    FX32_CONST(6),
    FX32_CONST(6),
    FX32_CONST(5),
    FX32_CONST(5),
    FX32_CONST(4),
    FX32_CONST(3),
    FX32_CONST(2),
    FX32_CONST(0),
    FX32_CONST(0),
    FX32_CONST(0),
};

static const fx32 sJumpHeights_Normal[16] = {
    FX32_CONST(2),
    FX32_CONST(4),
    FX32_CONST(6),
    FX32_CONST(8),
    FX32_CONST(9),
    FX32_CONST(10),
    FX32_CONST(10),
    FX32_CONST(10),
    FX32_CONST(9),
    FX32_CONST(8),
    FX32_CONST(6),
    FX32_CONST(5),
    FX32_CONST(3),
    FX32_CONST(2),
    FX32_CONST(0),
    FX32_CONST(0),
};

static const fx32 *sJumpHeightsTable[] = {
    [JUMP_HEIGHT_HIGH] = sJumpHeights_High,
    [JUMP_HEIGHT_LOW] = sJumpHeights_Low,
    [JUMP_HEIGHT_NORMAL] = sJumpHeights_Normal,
};

static const fx32 sStepSizes_WalkEverSoSlightlyFast[7] = {
    FX32_CONST(2.3125),
    FX32_CONST(2.28125),
    FX32_CONST(2.28125),
    FX32_CONST(2.28125),
    FX32_CONST(2.28125),
    FX32_CONST(2.28125),
    FX32_CONST(2.28125),
};

static const fx32 sStepSizes_WalkSlightlyFast[6] = {
    FX32_CONST(2),
    FX32_CONST(3),
    FX32_CONST(3),
    FX32_CONST(2),
    FX32_CONST(3),
    FX32_CONST(3),
};

static const fx32 sStepSizes_WalkSlightlyFaster[3] = {
    FX32_CONST(5),
    FX32_CONST(6),
    FX32_CONST(5),
};
