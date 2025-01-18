#include "unk_020655F4.h"

#include <nitro.h>
#include <string.h>

#include "constants/map_object.h"
#include "consts/movement.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021F3E74.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "heap.h"
#include "map_header_data.h"
#include "map_object.h"
#include "map_object_move.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_02069BE0.h"
#include "unk_020711EC.h"
#include "unk_020EDBAC.h"

typedef struct UnkStruct_020EEE54 {
    int unk_00;
    int unk_04;
    int unk_08;
    MapObject *unk_0C;
    const MapObjectAnimCmd *unk_10;
} UnkStruct_020EEE54;

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

typedef struct UnkStruct_02066338 {
    fx32 y;
    fx32 dy;
} UnkStruct_02066338;

typedef struct UnkStruct_020664A0 {
    int unk_00;
    UnkStruct_ov101_021D5D90 *unk_04;
} UnkStruct_020664A0;

typedef struct UnkStruct_02066520 {
    s16 dir;
    u16 unused;
    s16 duration;
    s16 timer;
} UnkStruct_02066520;

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

typedef struct UnkStruct_020666C8 {
    int unk_00;
} UnkStruct_020666C8;

typedef struct UnkStruct_02066710 {
    u32 unk_00;
} UnkStruct_02066710;

typedef struct UnkStruct_020667CC {
    u32 unk_00;
} UnkStruct_020667CC;

static void sub_02065788(SysTask *param0, void *param1);
static int MapObject_DoMovementActionStep(MapObject *mapObj, int movementAction, int movementStep);

int (*const Unk_020EEE54[])(UnkStruct_020EEE54 *);
const fx32 *Unk_02100B84[];
static const fx32 Unk_020EEE84[7];
static const fx32 Unk_020EEE6C[6];
static const fx32 Unk_020EECEC[3];

int LocalMapObj_IsAnimationSet(const MapObject *mapObj)
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

void LocalMapObj_SetAnimationCode(MapObject *mapObj, int param1)
{
    GF_ASSERT(param1 < MAX_MOVEMENT_ACTION);

    MapObject_SetMovementAction(mapObj, param1);
    MapObject_SetMovementStep(mapObj, 0);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_4);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_5);
}

void sub_02065668(MapObject *mapObj, int param1)
{
    MapObject_SetMovementAction(mapObj, param1);
    MapObject_SetMovementStep(mapObj, 0);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_5);
}

int LocalMapObj_CheckAnimationFinished(const MapObject *mapObj)
{
    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_4)) {
        return 1;
    }

    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_5)) {
        return 0;
    }

    return 1;
}

int sub_020656AC(MapObject *mapObj)
{
    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_4)) {
        return 1;
    }

    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_5)) {
        return 0;
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_4 | MAP_OBJ_STATUS_5);

    return 1;
}

void sub_020656DC(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_4);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_5);
    MapObject_SetMovementAction(mapObj, MOVEMENT_ACTION_NONE);
    MapObject_SetMovementStep(mapObj, 0);
}

SysTask *MapObject_StartAnimation(MapObject *mapObj, const MapObjectAnimCmd *param1)
{
    SysTask *v0;
    UnkStruct_020EEE54 *v1;

    v1 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_020EEE54));
    GF_ASSERT(v1 != NULL);

    memset(v1, 0, sizeof(UnkStruct_020EEE54));

    int v2 = sub_02062858(MapObject_MapObjectManager(mapObj)) - 1;
    v0 = SysTask_Start(sub_02065788, v1, v2);
    GF_ASSERT(v0 != NULL);

    v1->unk_0C = mapObj;
    v1->unk_10 = param1;

    return v0;
}

int MapObject_HasAnimationEnded(SysTask *task)
{
    UnkStruct_020EEE54 *v0;

    v0 = SysTask_GetParam(task);
    return v0->unk_04;
}

void MapObject_FinishAnimation(SysTask *task)
{
    UnkStruct_020EEE54 *v0;

    v0 = SysTask_GetParam(task);

    GF_ASSERT(LocalMapObj_CheckAnimationFinished(v0->unk_0C) == 1);

    sub_020656AC(v0->unk_0C);
    Heap_FreeToHeapExplicit(4, v0);
    SysTask_Done(task);
}

static void sub_02065788(SysTask *task, void *param1)
{
    UnkStruct_020EEE54 *v0;

    v0 = param1;

    while (Unk_020EEE54[v0->unk_00](v0) == 1) {
        (void)0;
    }
}

static int sub_020657A4(UnkStruct_020EEE54 *param0)
{
    param0->unk_08 = 0;
    param0->unk_00 = 1;

    return 1;
}

static int sub_020657B0(UnkStruct_020EEE54 *param0)
{
    if (LocalMapObj_IsAnimationSet(param0->unk_0C) == 0) {
        return 0;
    }

    param0->unk_00 = 2;
    return 1;
}

static int sub_020657CC(UnkStruct_020EEE54 *param0)
{
    const MapObjectAnimCmd *v0;

    v0 = param0->unk_10;
    LocalMapObj_SetAnimationCode(param0->unk_0C, v0->unk_00);

    param0->unk_00 = 3;

    return 0;
}

static int sub_020657E4(UnkStruct_020EEE54 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->unk_0C) == 0) {
        return 0;
    }

    param0->unk_00 = 4;
    return 1;
}

static int sub_02065800(UnkStruct_020EEE54 *param0)
{
    const MapObjectAnimCmd *v0;

    v0 = param0->unk_10;
    param0->unk_08++;

    if (param0->unk_08 < v0->unk_02) {
        param0->unk_00 = 1;
        return 1;
    }

    v0++;
    param0->unk_10 = v0;

    if (v0->unk_00 != 0xfe) {
        param0->unk_00 = 0;
        return 1;
    }

    param0->unk_04 = 1;
    param0->unk_00 = 5;

    return 0;
}

static int sub_02065834(UnkStruct_020EEE54 *param0)
{
    return 0;
}

static int (*const Unk_020EEE54[])(UnkStruct_020EEE54 *) = {
    sub_020657A4,
    sub_020657B0,
    sub_020657CC,
    sub_020657E4,
    sub_02065800,
    sub_02065834
};

int sub_02065838(int param0, int param1)
{
    int v0;
    const int *const *v1;
    const int *v2;

    GF_ASSERT(param0 < 4);

    v1 = Unk_020EE31C;

    while ((*v1) != NULL) {
        v0 = 0;
        v2 = *v1;

        do {
            if (v2[v0] == param1) {
                return v2[param0];
            }

            v0++;
        } while (v0 < 4);

        v1++;
    }

    GF_ASSERT(FALSE);

    return param1;
}

int sub_0206587C(int param0)
{
    int v0;
    const int *const *v1;
    const int *v2;

    v1 = Unk_020EE31C;

    while ((*v1) != NULL) {
        v0 = 0;
        v2 = *v1;

        do {
            if (v2[v0] == param0) {
                return v0;
            }

            v0++;
        } while (v0 < 4);

        v1++;
    }

    return -1;
}

void MapObject_DoMovementAction(MapObject *mapObj)
{
    int movementAction, movementStep;

    do {
        movementAction = MapObject_GetMovementAction(mapObj);

        if (movementAction == MOVEMENT_ACTION_NONE) {
            break;
        }

        movementStep = MapObject_GetMovementStep(mapObj);
    } while (MapObject_DoMovementActionStep(mapObj, movementAction, movementStep));
}

int sub_020658DC(MapObject *mapObj)
{
    MapObject_DoMovementAction(mapObj);

    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_5)) {
        return 0;
    }

    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_5);
    MapObject_SetMovementAction(mapObj, MOVEMENT_ACTION_NONE);
    MapObject_SetMovementStep(mapObj, 0);

    return 1;
}

static int MapObject_DoMovementActionStep(MapObject *mapObj, int movementAction, int movementStep)
{
    return gMovementActionFuncs[movementAction][movementStep](mapObj);
}

static int sub_02065924(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_5);
    return 0;
}

static void MovementAction_InitFace(MapObject *mapObj, int dir)
{
    MapObject_TryFace(mapObj, dir);
    sub_02062A0C(mapObj, 0x0);
    MapObject_UpdateCoords(mapObj);
    MapObject_AdvanceMovementStep(mapObj);
}

static int MovementAction_FaceNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitFace(mapObj, DIR_NORTH);
    return 1;
}

static int MovementAction_FaceSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitFace(mapObj, DIR_SOUTH);
    return 1;
}

static int MovementAction_FaceWest_Step0(MapObject *mapObj)
{
    MovementAction_InitFace(mapObj, DIR_WEST);
    return 1;
}

static int MovementAction_FaceEast_Step0(MapObject *mapObj)
{
    MovementAction_InitFace(mapObj, DIR_EAST);
    return 1;
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

static int MovementAction_Walk_Step1(MapObject *mapObj)
{
    WalkMovementData *data = MapObject_GetMovementData(mapObj);

    MapObject_MovePosInDir(mapObj, data->dir, data->distance);
    sub_020642F8(mapObj);

    if (--(data->duration) > 0) {
        return 0;
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_5);
    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int MovementAction_WalkSlowerNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int MovementAction_WalkSlowerSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int MovementAction_WalkSlowerWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int MovementAction_WalkSlowerEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int MovementAction_WalkSlowNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int MovementAction_WalkSlowSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int MovementAction_WalkSlowWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int MovementAction_WalkSlowEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int MovementAction_WalkNormalNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int MovementAction_WalkNormalSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int MovementAction_WalkNormalWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int MovementAction_WalkNormalEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int MovementAction_WalkFastNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int MovementAction_WalkFastSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int MovementAction_WalkFastWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int MovementAction_WalkFastEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int MovementAction_WalkFasterNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int MovementAction_WalkFasterSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int MovementAction_WalkFasterWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int MovementAction_WalkFasterEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int MovementAction_WalkFastestNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int MovementAction_WalkFastestSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int MovementAction_WalkFastestWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int MovementAction_WalkFastestEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int MovementAction_RunNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 4), 4, (0x8 + 1));
    return 1;
}

static int MovementAction_RunSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 4), 4, (0x8 + 1));
    return 1;
}

static int MovementAction_RunWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_WEST, ((16 * FX32_ONE) / 4), 4, (0x8 + 1));
    return 1;
}

static int MovementAction_RunEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalk(mapObj, DIR_EAST, ((16 * FX32_ONE) / 4), 4, (0x8 + 1));
    return 1;
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

static int MovementAction_WalkOnSpot_Step1(MapObject *mapObj)
{
    WalkOnSpotMovementData *data = MapObject_GetMovementData(mapObj);

    if (--(data->duration) > 0) {
        return 0;
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_5);
    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int MovementAction_WalkOnSpotSlowerNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 32, 0x1);
    return 1;
}

static int MovementAction_WalkOnSpotSlowerSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 32, 0x1);
    return 1;
}

static int MovementAction_WalkOnSpotSlowerWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 32, 0x1);
    return 1;
}

static int MovementAction_WalkOnSpotSlowerEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 32, 0x1);
    return 1;
}

static int MovementAction_WalkOnSpotSlowNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 16, 0x2);
    return 1;
}

static int MovementAction_WalkOnSpotSlowSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 16, 0x2);
    return 1;
}

static int MovementAction_WalkOnSpotSlowWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 16, 0x2);
    return 1;
}

static int MovementAction_WalkOnSpotSlowEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 16, 0x2);
    return 1;
}

static int MovementAction_WalkOnSpotNormalNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 8, 0x3);
    return 1;
}

static int MovementAction_WalkOnSpotNormalSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 8, 0x3);
    return 1;
}

static int MovementAction_WalkOnSpotNormalWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 8, 0x3);
    return 1;
}

static int MovementAction_WalkOnSpotNormalEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 8, 0x3);
    return 1;
}

static int MovementAction_WalkOnSpotFastNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 4, 0x4);
    return 1;
}

static int MovementAction_WalkOnSpotFastSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 4, 0x4);
    return 1;
}

static int MovementAction_WalkOnSpotFastWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 4, 0x4);
    return 1;
}

static int MovementAction_WalkOnSpotFastEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 4, 0x4);
    return 1;
}

static int MovementAction_WalkOnSpotFasterNorth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_NORTH, 2, 0x5);
    return 1;
}

static int MovementAction_WalkOnSpotFasterSouth_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_SOUTH, 2, 0x5);
    return 1;
}

static int MovementAction_WalkOnSpotFasterWest_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_WEST, 2, 0x5);
    return 1;
}

static int MovementAction_WalkOnSpotFasterEast_Step0(MapObject *mapObj)
{
    MovementAction_InitWalkOnSpot(mapObj, DIR_EAST, 2, 0x5);
    return 1;
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

static int MovementAction_Jump_Step1(MapObject *mapObj)
{
    JumpMovementData *data = MapObject_GetMovementData(mapObj);

    if (data->distance) {
        MapObject_MovePosInDir(mapObj, data->dir, data->distance);
        sub_020642F8(mapObj);

        if (data->unk_04 >= (16 * FX32_ONE)) {
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

    if (data->unk_0A > (0x100 * (16 - 1))) {
        data->unk_0A = (0x100 * (16 - 1));
    }

    VecFx32 v2;
    u16 v3 = (data->unk_0A) / 0x100;
    const fx32 *v4 = Unk_02100B84[data->unk_0F];

    v2.x = 0;
    v2.y = v4[v3];
    v2.z = 0;

    sub_02063088(mapObj, &v2);

    if (--(data->duration) > 0) {
        return 0;
    }

    VecFx32 v5 = { 0, 0, 0 };
    sub_02063088(mapObj, &v5);

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_END_JUMP | MAP_OBJ_STATUS_5);
    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);
    Sound_PlayEffect(1607);

    return 1;
}

static int sub_02065F88(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_NORTH, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FA8(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_SOUTH, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FC8(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FE8(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02066008(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_NORTH, 0, 8, 0x3, 0, (0x100 * 2));
    return 1;
}

static int sub_02066028(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_SOUTH, 0, 8, 0x3, 0, (0x100 * 2));
    return 1;
}

static int sub_02066048(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, 0, 8, 0x3, 0, (0x100 * 2));
    return 1;
}

static int sub_02066068(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, 0, 8, 0x3, 0, (0x100 * 2));
    return 1;
}

static int sub_02066088(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 8), 8, 0x3, 0, (0x100 * 2));
    return 1;
}

static int sub_020660A8(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 8), 8, 0x3, 0, (0x100 * 2));
    return 1;
}

static int sub_020660CC(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, ((16 * FX32_ONE) / 8), 8, 0x3, 0, (0x100 * 2));
    return 1;
}

static int sub_020660F0(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, ((16 * FX32_ONE) / 8), 8, 0x3, 0, (0x100 * 2));
    return 1;
}

static int sub_02066110(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 8), 8 * 2, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066130(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066150(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));

    return 1;
}

static int sub_02066170(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066194(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, ((16 * FX32_ONE) / 16), 16, (0x8 + 1), 0, ((0x100 * (16 - 1)) / 16));
    return 1;
}

static int sub_020661B4(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, ((16 * FX32_ONE) / 16), 16, (0x8 + 1), 0, ((0x100 * (16 - 1)) / 16));
    return 1;
}

static int sub_020661D8(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_WEST, ((16 * FX32_ONE) / 4), 12, ((0x8 + 1) + 1), 0, ((0x100 * (16 - 1)) / 12));
    return 1;
}

static int sub_020661F8(MapObject *mapObj)
{
    MovementAction_InitJump(mapObj, DIR_EAST, ((16 * FX32_ONE) / 4), 12, ((0x8 + 1) + 1), 0, ((0x100 * (16 - 1)) / 12));
    return 1;
}

static int sub_0206621C(MapObject *mapObj)
{
    MovementAction_InitJumpCustomSound(mapObj, DIR_NORTH, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, ((0x100 * (16 - 1)) / 24), 0);
    return 1;
}

static int sub_02066240(MapObject *mapObj)
{
    MovementAction_InitJumpCustomSound(mapObj, DIR_SOUTH, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, ((0x100 * (16 - 1)) / 24), 0);
    return 1;
}

static int sub_02066264(MapObject *mapObj)
{
    MovementAction_InitJumpCustomSound(mapObj, DIR_WEST, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, ((0x100 * (16 - 1)) / 24), 0);
    return 1;
}

static int sub_02066288(MapObject *mapObj)
{
    MovementAction_InitJumpCustomSound(mapObj, DIR_EAST, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, ((0x100 * (16 - 1)) / 24), 0);
    return 1;
}

static void MovementAction_InitDelay(MapObject *mapObj, int delay)
{
    DelayMovementData *data = MapObject_InitMovementData(mapObj, sizeof(DelayMovementData));
    data->delay = delay;

    MapObject_AdvanceMovementStep(mapObj);
}

static int MovementAction_Delay_Step1(MapObject *mapObj)
{
    DelayMovementData *data = MapObject_GetMovementData(mapObj);

    if (data->delay) {
        data->delay--;
        return 0;
    }

    MapObject_AdvanceMovementStep(mapObj);
    return 1;
}

static int MovementAction_Delay1_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 1);
    return 1;
}

static int MovementAction_Delay2_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 2);
    return 1;
}

static int MovementAction_Delay4_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 4);
    return 1;
}

static int MovementAction_Delay8_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 8);
    return 1;
}

static int MovementAction_Delay15_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 15);
    return 1;
}

static int MovementAction_Delay16_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 16);
    return 1;
}

static int MovementAction_Delay32_Step0(MapObject *mapObj)
{
    MovementAction_InitDelay(mapObj, 32);
    return 1;
}

static int sub_02066338(MapObject *mapObj)
{
    UnkStruct_02066338 *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_02066338));
    data->dy = FX32_ONE * 16;

    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int sub_0206635C(MapObject *mapObj)
{
    UnkStruct_02066338 *data = MapObject_GetMovementData(mapObj);
    data->y += data->dy;

    VecFx32 v2 = { 0, 0, 0 };

    v2.y = data->y;
    sub_02063088(mapObj, &v2);

    if (data->y / ((16 * FX32_ONE) >> 1) < 40) {
        return 0;
    }

    MapObject_AdvanceMovementStep(mapObj);
    return 1;
}

static int sub_020663A4(MapObject *mapObj)
{
    UnkStruct_02066338 *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_02066338));

    data->y = ((16 * FX32_ONE) >> 1) * 40;
    data->dy = -(FX32_ONE * 16);

    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int sub_020663D0(MapObject *mapObj)
{
    UnkStruct_02066338 *data = MapObject_GetMovementData(mapObj);
    data->y += data->dy;

    if (data->y < 0) {
        data->y = 0;
    }

    VecFx32 v1 = { 0, 0, 0 };

    v1.y = data->y;
    sub_02063088(mapObj, &v1);

    if (data->y > 0) {
        return 0;
    }

    MapObject_AdvanceMovementStep(mapObj);
    return 1;
}

static int MovementAction_SetInvisible_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int MovementAction_SetVisible_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int MovementAction_LockDir_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int MovementAction_UnlockDir_Step0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int sub_02066470(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_PAUSE_ANIMATION);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int sub_02066488(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_PAUSE_ANIMATION);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static void sub_020664A0(MapObject *mapObj, int param1, int param2)
{
    UnkStruct_020664A0 *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_020664A0));

    data->unk_00 = param1;
    data->unk_04 = ov5_021F5D8C(mapObj, param1, 1, param2);

    MapObject_AdvanceMovementStep(mapObj);
}

static int sub_020664C8(MapObject *mapObj)
{
    UnkStruct_020664A0 *data = MapObject_GetMovementData(mapObj);

    if (ov5_021F5C4C(data->unk_04) == 1) {
        sub_0207136C(data->unk_04);
        MapObject_AdvanceMovementStep(mapObj);
        return 1;
    }

    return 0;
}

static int sub_020664F0(MapObject *mapObj)
{
    sub_020664A0(mapObj, 0, 0);
    return 0;
}

static int sub_02066500(MapObject *mapObj)
{
    sub_020664A0(mapObj, 1, 0);
    return 0;
}

static int sub_02066510(MapObject *mapObj)
{
    sub_020664A0(mapObj, 0, 1);
    return 0;
}

static void sub_02066520(MapObject *mapObj, int dir, s16 duration, u16 param3)
{
    UnkStruct_02066520 *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_02066520));

    data->dir = dir;
    data->unused = param3;
    data->duration = duration;

    MapObject_StepDir(mapObj, dir);
    MapObject_TryFaceAndTurn(mapObj, dir);
    sub_02062A0C(mapObj, param3);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    MapObject_AdvanceMovementStep(mapObj);
}

static int sub_02066560(MapObject *mapObj, const fx32 *param1)
{
    UnkStruct_02066520 *data = MapObject_GetMovementData(mapObj);

    MapObject_MovePosInDir(mapObj, data->dir, param1[data->timer]);
    sub_020642F8(mapObj);

    if (++(data->timer) < data->duration) {
        return 0;
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_5);
    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int sub_020665C0(MapObject *mapObj)
{
    sub_02066520(mapObj, 0, 6, 0x6);
    return 1;
}

static int sub_020665D0(MapObject *mapObj)
{
    sub_02066520(mapObj, 1, 6, 0x6);
    return 1;
}

static int sub_020665E0(MapObject *mapObj)
{
    sub_02066520(mapObj, 2, 6, 0x6);
    return 1;
}

static int sub_020665F0(MapObject *mapObj)
{
    sub_02066520(mapObj, 3, 6, 0x6);
    return 1;
}

static int sub_02066600(MapObject *mapObj)
{
    if (sub_02066560(mapObj, Unk_020EEE6C) == 1) {
        return 1;
    }

    return 0;
}

static int sub_02066618(MapObject *mapObj)
{
    sub_02066520(mapObj, 0, 3, 0x7);
    return 1;
}

static int sub_02066628(MapObject *mapObj)
{
    sub_02066520(mapObj, 1, 3, 0x7);
    return 1;
}

static int sub_02066638(MapObject *mapObj)
{
    sub_02066520(mapObj, 2, 3, 0x7);
    return 1;
}

static int sub_02066648(MapObject *mapObj)
{
    sub_02066520(mapObj, 3, 3, 0x7);
    return 1;
}

static int sub_02066658(MapObject *mapObj)
{
    if (sub_02066560(mapObj, Unk_020EECEC) == 1) {
        return 1;
    }

    return 0;
}

static int sub_02066670(MapObject *mapObj)
{
    sub_02066520(mapObj, 0, 7, 0x8);
    return 1;
}

static int sub_02066680(MapObject *mapObj)
{
    sub_02066520(mapObj, 1, 7, 0x8);
    return 1;
}

static int sub_02066690(MapObject *mapObj)
{
    sub_02066520(mapObj, 2, 7, 0x8);
    return 1;
}

static int sub_020666A0(MapObject *mapObj)
{
    sub_02066520(mapObj, 3, 7, 0x8);
    return 1;
}

static int sub_020666B0(MapObject *mapObj)
{
    if (sub_02066560(mapObj, Unk_020EEE84) == 1) {
        return 1;
    }

    return 0;
}

static int sub_020666C8(MapObject *mapObj)
{
    UnkStruct_020666C8 *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_020666C8));

    sub_02062A0C(mapObj, 0x9);
    MapObject_AdvanceMovementStep(mapObj);

    return 0;
}

static int sub_020666E4(MapObject *mapObj)
{
    UnkStruct_020666C8 *data = MapObject_GetMovementData(mapObj);

    if (++(data->unk_00) >= 8) {
        MapObject_TryFace(mapObj, DIR_SOUTH);
        sub_02062A0C(mapObj, 0x0);
        MapObject_AdvanceMovementStep(mapObj);
    }

    return 0;
}

static int sub_02066710(MapObject *mapObj)
{
    UnkStruct_02066710 *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_02066710));

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

    return 0;
}

static int sub_02066764(MapObject *mapObj)
{
    UnkStruct_02066710 *data = MapObject_GetMovementData(mapObj);
    const fx32 *v1 = Unk_02100B84[0];
    VecFx32 v2 = { 0, 0, 0 };

    v2.y = v1[data->unk_00];
    sub_02063088(mapObj, &v2);

    data->unk_00 += 2;

    if (data->unk_00 < 16) {
        return 0;
    }

    v2.y = 0;

    sub_02063088(mapObj, &v2);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_END_JUMP | MAP_OBJ_STATUS_5);
    sub_0206A230(mapObj);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int sub_020667CC(MapObject *mapObj)
{
    UnkStruct_020667CC *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_020667CC));

    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);

    return 0;
}

static int sub_020667E8(MapObject *mapObj)
{
    UnkStruct_020667CC *data = MapObject_InitMovementData(mapObj, sizeof(UnkStruct_020667CC));

    sub_02062A0C(mapObj, 0x1);
    MapObject_AdvanceMovementStep(mapObj);

    return 0;
}

static int sub_02066804(MapObject *mapObj)
{
    UnkStruct_020667CC *data = MapObject_GetMovementData(mapObj);

    if (++(data->unk_00) < 21) {
        return 0;
    }

    MapObject_AdvanceMovementStep(mapObj);
    return 1;
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

static int sub_020668EC(MapObject *mapObj)
{
    UnkStruct_02066824 *data = MapObject_GetMovementData(mapObj);
    MapObject_AddVecToPos(mapObj, &data->unk_04);

    if (--(data->duration) > 0) {
        return 0;
    }

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_5);

    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);

    return 1;
}

static int sub_02066934(MapObject *mapObj)
{
    VecFx32 v0 = { 0, ((16 * FX32_ONE) / 8), 0 };

    sub_02066824(mapObj, &v0, 2, 0, 8, 0x3);
    return 1;
}

static int sub_02066968(MapObject *mapObj)
{
    VecFx32 v0 = { 0, -((16 * FX32_ONE) / 8), 0 };

    sub_02066824(mapObj, &v0, 3, 1, 8, 0x3);
    return 1;
}

static int sub_02066998(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, ((16 * FX32_ONE) / 8) };

    sub_02066824(mapObj, &v0, 1, 2, 8, 0x3);
    return 1;
}

static int sub_020669CC(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -((16 * FX32_ONE) / 8) };

    sub_02066824(mapObj, &v0, 0, 3, 8, 0x3);
    return 1;
}

static int sub_020669FC(MapObject *mapObj)
{
    VecFx32 v0 = { 0, ((16 * FX32_ONE) / 8), 0 };

    sub_02066824(mapObj, &v0, 3, 0, 8, 0x3);
    return 1;
}

static int sub_02066A2C(MapObject *mapObj)
{
    VecFx32 v0 = { 0, -((16 * FX32_ONE) / 8), 0 };

    sub_02066824(mapObj, &v0, 2, 1, 8, 0x3);
    return 1;
}

static int sub_02066A60(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -((16 * FX32_ONE) / 8) };

    sub_02066824(mapObj, &v0, 0, 2, 8, 0x3);
    return 1;
}

static int sub_02066A94(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, ((16 * FX32_ONE) / 8) };

    sub_02066824(mapObj, &v0, 1, 2, 8, 0x3);
    return 1;
}

static int sub_02066AC8(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, ((16 * FX32_ONE) / 8) };

    sub_02066824(mapObj, &v0, 1, 0, 8, 0x3);
    return 1;
}

static int sub_02066AFC(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -((16 * FX32_ONE) / 8) };

    sub_02066824(mapObj, &v0, 0, 1, 8, 0x3);
    return 1;
}

static int sub_02066B30(MapObject *mapObj)
{
    VecFx32 v0 = { -((16 * FX32_ONE) / 8), 0, 0 };

    sub_02066824(mapObj, &v0, 3, 2, 8, 0x3);
    return 1;
}

static int sub_02066B60(MapObject *mapObj)
{
    VecFx32 v0 = { ((16 * FX32_ONE) / 8), 0, 0 };

    sub_02066824(mapObj, &v0, 2, 3, 8, 0x3);
    return 1;
}

static int sub_02066B90(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, ((16 * FX32_ONE) / 4) };

    sub_02066824(mapObj, &v0, 1, 0, 4, 0x4);
    return 1;
}

static int sub_02066BC0(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -((16 * FX32_ONE) / 4) };

    sub_02066824(mapObj, &v0, 0, 1, 4, 0x4);
    return 1;
}

static int sub_02066BF0(MapObject *mapObj)
{
    VecFx32 v0 = { -((16 * FX32_ONE) / 4), 0, 0 };

    sub_02066824(mapObj, &v0, 3, 2, 4, 0x4);
    return 1;
}

static int sub_02066C20(MapObject *mapObj)
{
    VecFx32 v0 = { ((16 * FX32_ONE) / 4), 0, 0 };

    sub_02066824(mapObj, &v0, 2, 3, 4, 0x4);
    return 1;
}

static int sub_02066C50(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, ((16 * FX32_ONE) / 2) };

    sub_02066824(mapObj, &v0, 1, 0, 2, 0x5);
    return 1;
}

static int sub_02066C84(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -((16 * FX32_ONE) / 2) };

    sub_02066824(mapObj, &v0, 0, 1, 2, 0x5);
    return 1;
}

static int sub_02066CB8(MapObject *mapObj)
{
    VecFx32 v0 = { -((16 * FX32_ONE) / 2), 0, 0 };

    sub_02066824(mapObj, &v0, 3, 2, 2, 0x5);
    return 1;
}

static int sub_02066CE8(MapObject *mapObj)
{
    VecFx32 v0 = { ((16 * FX32_ONE) / 2), 0, 0 };

    sub_02066824(mapObj, &v0, 2, 3, 2, 0x5);
    return 1;
}

static int sub_02066D18(MapObject *mapObj)
{
    VecFx32 v0 = { 0, ((16 * FX32_ONE) / 4), 0 };

    sub_02066824(mapObj, &v0, 2, 0, 4, (0x8 + 1));
    return 1;
}

static int sub_02066D4C(MapObject *mapObj)
{
    VecFx32 v0 = { 0, -((16 * FX32_ONE) / 4), 0 };

    sub_02066824(mapObj, &v0, 3, 1, 4, (0x8 + 1));
    return 1;
}

static int sub_02066D80(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, ((16 * FX32_ONE) / 4) };

    sub_02066824(mapObj, &v0, 1, 2, 4, (0x8 + 1));
    return 1;
}

static int sub_02066DB4(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -((16 * FX32_ONE) / 4) };

    sub_02066824(mapObj, &v0, 0, 3, 4, (0x8 + 1));
    return 1;
}

static int sub_02066DE8(MapObject *mapObj)
{
    VecFx32 v0 = { 0, ((16 * FX32_ONE) / 4), 0 };

    sub_02066824(mapObj, &v0, 3, 0, 4, (0x8 + 1));
    return 1;
}

static int sub_02066E1C(MapObject *mapObj)
{
    VecFx32 v0 = { 0, -((16 * FX32_ONE) / 4), 0 };

    sub_02066824(mapObj, &v0, 2, 1, 4, (0x8 + 1));
    return 1;
}

static int sub_02066E50(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -((16 * FX32_ONE) / 4) };

    sub_02066824(mapObj, &v0, 0, 2, 4, (0x8 + 1));
    return 1;
}

static int sub_02066E84(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, ((16 * FX32_ONE) / 4) };

    sub_02066824(mapObj, &v0, 1, 2, 4, (0x8 + 1));
    return 1;
}

static int sub_02066EB8(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, ((16 * FX32_ONE) / 4) };

    sub_02066824(mapObj, &v0, 1, 0, 4, (0x8 + 1));
    return 1;
}

static int sub_02066EEC(MapObject *mapObj)
{
    VecFx32 v0 = { 0, 0, -((16 * FX32_ONE) / 4) };

    sub_02066824(mapObj, &v0, 0, 1, 4, (0x8 + 1));
    return 1;
}

static int sub_02066F20(MapObject *mapObj)
{
    VecFx32 v0 = { -((16 * FX32_ONE) / 4), 0, 0 };

    sub_02066824(mapObj, &v0, 3, 2, 4, (0x8 + 1));
    return 1;
}

static int sub_02066F54(MapObject *mapObj)
{
    VecFx32 v0 = { ((16 * FX32_ONE) / 4), 0, 0 };

    sub_02066824(mapObj, &v0, 2, 3, 4, (0x8 + 1));
    return 1;
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

static int sub_02067068(MapObject *mapObj)
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
    const fx32 *v4 = Unk_02100B84[1];
    u16 v5 = (v2->unk_0C) / 0x100;

    v0 = v4[v5];

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

    if ((v2->unk_08 >= (16 * FX32_ONE)) && v2->unk_00) {
        int v6 = 1;

        v2->unk_08 -= (16 * FX32_ONE);
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
        return 0;
    }

    VecFx32 v7 = { 0, 0, 0 };
    sub_02063088(mapObj, &v7);

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_END_JUMP | MAP_OBJ_STATUS_5);
    MapObject_UpdateCoords(mapObj);
    sub_02062B68(mapObj);
    sub_02062A0C(mapObj, 0x0);
    MapObject_AdvanceMovementStep(mapObj);
    Sound_PlayEffect(1607);

    return 1;
}

static int sub_020671F0(MapObject *mapObj)
{
    sub_02066F88(mapObj, ((16 * FX32_ONE) / 8), 2, 0, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_02067214(MapObject *mapObj)
{
    sub_02066F88(mapObj, -((16 * FX32_ONE) / 8), 3, 1, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_0206723C(MapObject *mapObj)
{
    sub_02066F88(mapObj, ((16 * FX32_ONE) / 8), 1, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067260(MapObject *mapObj)
{
    sub_02066F88(mapObj, -((16 * FX32_ONE) / 8), 0, 3, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067288(MapObject *mapObj)
{
    sub_02066F88(mapObj, ((16 * FX32_ONE) / 8), 3, 0, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_020672AC(MapObject *mapObj)
{
    sub_02066F88(mapObj, -((16 * FX32_ONE) / 8), 2, 1, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_020672D4(MapObject *mapObj)
{
    sub_02066F88(mapObj, -((16 * FX32_ONE) / 8), 0, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_020672FC(MapObject *mapObj)
{
    sub_02066F88(mapObj, ((16 * FX32_ONE) / 8), 1, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067320(MapObject *mapObj)
{
    sub_02066F88(mapObj, ((16 * FX32_ONE) / 8), 1, 0, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067344(MapObject *mapObj)
{
    sub_02066F88(mapObj, -((16 * FX32_ONE) / 8), 0, 1, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_0206736C(MapObject *mapObj)
{
    sub_02066F88(mapObj, -((16 * FX32_ONE) / 8), 3, 2, 8, 0x3, 0, 1, 0);
    return 1;
}

static int sub_02067394(MapObject *mapObj)
{
    sub_02066F88(mapObj, ((16 * FX32_ONE) / 8), 2, 3, 8, 0x3, 0, 1, 0);
    return 1;
}

int (*const gMovementActionFuncs_000[])(MapObject *) = {
    MovementAction_FaceNorth_Step0,
    sub_02065924,
};

int (*const gMovementActionFuncs_001[])(MapObject *) = {
    MovementAction_FaceSouth_Step0,
    sub_02065924,
};

int (*const gMovementActionFuncs_002[])(MapObject *) = {
    MovementAction_FaceWest_Step0,
    sub_02065924,
};

int (*const gMovementActionFuncs_003[])(MapObject *) = {
    MovementAction_FaceEast_Step0,
    sub_02065924,
};

int (*const gMovementActionFuncs_004[])(MapObject *) = {
    MovementAction_WalkSlowerNorth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_005[])(MapObject *) = {
    MovementAction_WalkSlowerSouth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_006[])(MapObject *) = {
    MovementAction_WalkSlowerWest_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_007[])(MapObject *) = {
    MovementAction_WalkSlowerEast_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_008[])(MapObject *) = {
    MovementAction_WalkSlowNorth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_009[])(MapObject *) = {
    MovementAction_WalkSlowSouth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_010[])(MapObject *) = {
    MovementAction_WalkSlowWest_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_011[])(MapObject *) = {
    MovementAction_WalkSlowEast_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_012[])(MapObject *) = {
    MovementAction_WalkNormalNorth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_013[])(MapObject *) = {
    MovementAction_WalkNormalSouth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_014[])(MapObject *) = {
    MovementAction_WalkNormalWest_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_015[])(MapObject *) = {
    MovementAction_WalkNormalEast_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_016[])(MapObject *) = {
    MovementAction_WalkFastNorth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_017[])(MapObject *) = {
    MovementAction_WalkFastSouth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_018[])(MapObject *) = {
    MovementAction_WalkFastWest_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_019[])(MapObject *) = {
    MovementAction_WalkFastEast_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_020[])(MapObject *) = {
    MovementAction_WalkFasterNorth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_021[])(MapObject *) = {
    MovementAction_WalkFasterSouth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_022[])(MapObject *) = {
    MovementAction_WalkFasterWest_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_023[])(MapObject *) = {
    MovementAction_WalkFasterEast_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_084[])(MapObject *) = {
    MovementAction_WalkFastestNorth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_085[])(MapObject *) = {
    MovementAction_WalkFastestSouth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_086[])(MapObject *) = {
    MovementAction_WalkFastestWest_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_087[])(MapObject *) = {
    MovementAction_WalkFastestEast_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_024[])(MapObject *) = {
    MovementAction_WalkOnSpotSlowerNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_025[])(MapObject *) = {
    MovementAction_WalkOnSpotSlowerSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_026[])(MapObject *) = {
    MovementAction_WalkOnSpotSlowerWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_027[])(MapObject *) = {
    MovementAction_WalkOnSpotSlowerEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_028[])(MapObject *) = {
    MovementAction_WalkOnSpotSlowNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_029[])(MapObject *) = {
    MovementAction_WalkOnSpotSlowSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_030[])(MapObject *) = {
    MovementAction_WalkOnSpotSlowWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_031[])(MapObject *) = {
    MovementAction_WalkOnSpotSlowEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_032[])(MapObject *) = {
    MovementAction_WalkOnSpotNormalNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_033[])(MapObject *) = {
    MovementAction_WalkOnSpotNormalSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_034[])(MapObject *) = {
    MovementAction_WalkOnSpotNormalWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_035[])(MapObject *) = {
    MovementAction_WalkOnSpotNormalEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_036[])(MapObject *) = {
    MovementAction_WalkOnSpotFastNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_037[])(MapObject *) = {
    MovementAction_WalkOnSpotFastSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_038[])(MapObject *) = {
    MovementAction_WalkOnSpotFastWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_039[])(MapObject *) = {
    MovementAction_WalkOnSpotFastEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_040[])(MapObject *) = {
    MovementAction_WalkOnSpotFasterNorth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_041[])(MapObject *) = {
    MovementAction_WalkOnSpotFasterSouth_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_042[])(MapObject *) = {
    MovementAction_WalkOnSpotFasterWest_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_043[])(MapObject *) = {
    MovementAction_WalkOnSpotFasterEast_Step0,
    MovementAction_WalkOnSpot_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_044[])(MapObject *) = {
    sub_02065F88,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_045[])(MapObject *) = {
    sub_02065FA8,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_046[])(MapObject *) = {
    sub_02065FC8,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_047[])(MapObject *) = {
    sub_02065FE8,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_048[])(MapObject *) = {
    sub_02066008,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_049[])(MapObject *) = {
    sub_02066028,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_050[])(MapObject *) = {
    sub_02066048,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_051[])(MapObject *) = {
    sub_02066068,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_052[])(MapObject *) = {
    sub_02066088,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_053[])(MapObject *) = {
    sub_020660A8,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_054[])(MapObject *) = {
    sub_020660CC,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_055[])(MapObject *) = {
    sub_020660F0,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_056[])(MapObject *) = {
    sub_02066110,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_057[])(MapObject *) = {
    sub_02066130,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_058[])(MapObject *) = {
    sub_02066150,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_059[])(MapObject *) = {
    sub_02066170,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_092[])(MapObject *) = {
    sub_02066194,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_093[])(MapObject *) = {
    sub_020661B4,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_094[])(MapObject *) = {
    sub_020661D8,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_095[])(MapObject *) = {
    sub_020661F8,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_060[])(MapObject *) = {
    MovementAction_Delay1_Step0,
    MovementAction_Delay_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_061[])(MapObject *) = {
    MovementAction_Delay2_Step0,
    MovementAction_Delay_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_062[])(MapObject *) = {
    MovementAction_Delay4_Step0,
    MovementAction_Delay_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_063[])(MapObject *) = {
    MovementAction_Delay8_Step0,
    MovementAction_Delay_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_064[])(MapObject *) = {
    MovementAction_Delay15_Step0,
    MovementAction_Delay_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_065[])(MapObject *) = {
    MovementAction_Delay16_Step0,
    MovementAction_Delay_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_066[])(MapObject *) = {
    MovementAction_Delay32_Step0,
    MovementAction_Delay_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_067[])(MapObject *) = {
    sub_02066338,
    sub_0206635C,
    sub_02065924,
};

int (*const gMovementActionFuncs_068[])(MapObject *) = {
    sub_020663A4,
    sub_020663D0,
    sub_02065924,
};

int (*const gMovementActionFuncs_069[])(MapObject *) = {
    MovementAction_SetInvisible_Step0,
    sub_02065924,
};

int (*const gMovementActionFuncs_070[])(MapObject *) = {
    MovementAction_SetVisible_Step0,
    sub_02065924,
};

int (*const gMovementActionFuncs_071[])(MapObject *) = {
    MovementAction_LockDir_Step0,
    sub_02065924,
};

int (*const gMovementActionFuncs_072[])(MapObject *) = {
    MovementAction_UnlockDir_Step0,
    sub_02065924,
};

int (*const gMovementActionFuncs_073[])(MapObject *) = {
    sub_02066470,
    sub_02065924,
};

int (*const gMovementActionFuncs_074[])(MapObject *) = {
    sub_02066488,
    sub_02065924,
};

int (*const gMovementActionFuncs_075[])(MapObject *) = {
    sub_020664F0,
    sub_020664C8,
    sub_02065924,
};

int (*const gMovementActionFuncs_103[])(MapObject *) = {
    sub_02066500,
    sub_020664C8,
    sub_02065924,
};

int (*const gMovementActionFuncs_076[])(MapObject *) = {
    sub_020665C0,
    sub_02066600,
    sub_02065924,
};

int (*const gMovementActionFuncs_077[])(MapObject *) = {
    sub_020665D0,
    sub_02066600,
    sub_02065924,
};

int (*const gMovementActionFuncs_078[])(MapObject *) = {
    sub_020665E0,
    sub_02066600,
    sub_02065924,
};

int (*const gMovementActionFuncs_079[])(MapObject *) = {
    sub_020665F0,
    sub_02066600,
    sub_02065924,
};

int (*const gMovementActionFuncs_080[])(MapObject *) = {
    sub_02066618,
    sub_02066658,
    sub_02065924,
};

int (*const gMovementActionFuncs_081[])(MapObject *) = {
    sub_02066628,
    sub_02066658,
    sub_02065924,
};

int (*const gMovementActionFuncs_082[])(MapObject *) = {
    sub_02066638,
    sub_02066658,
    sub_02065924,
};

int (*const gMovementActionFuncs_083[])(MapObject *) = {
    sub_02066648,
    sub_02066658,
    sub_02065924,
};

int (*const gMovementActionFuncs_088[])(MapObject *) = {
    MovementAction_RunNorth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_089[])(MapObject *) = {
    MovementAction_RunSouth_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_090[])(MapObject *) = {
    MovementAction_RunWest_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_091[])(MapObject *) = {
    MovementAction_RunEast_Step0,
    MovementAction_Walk_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_096[])(MapObject *) = {
    sub_02066670,
    sub_020666B0,
    sub_02065924,
};

int (*const gMovementActionFuncs_097[])(MapObject *) = {
    sub_02066680,
    sub_020666B0,
    sub_02065924,
};

int (*const gMovementActionFuncs_098[])(MapObject *) = {
    sub_02066690,
    sub_020666B0,
    sub_02065924,
};

int (*const gMovementActionFuncs_099[])(MapObject *) = {
    sub_020666A0,
    sub_020666B0,
    sub_02065924,
};

int (*const gMovementActionFuncs_100[])(MapObject *) = {
    sub_020666C8,
    sub_020666E4,
    sub_02065924,
};

int (*const gMovementActionFuncs_101[])(MapObject *) = {
    sub_02066710,
    sub_02066764,
    sub_02065924,
};

int (*const gMovementActionFuncs_102[])(MapObject *) = {
    sub_020667CC,
    sub_02066804,
    sub_02065924,
};

int (*const gMovementActionFuncs_104[])(MapObject *) = {
    sub_020667E8,
    sub_02066804,
    sub_02065924,
};

int (*const gMovementActionFuncs_105[])(MapObject *) = {
    sub_02066934,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_106[])(MapObject *) = {
    sub_02066968,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_107[])(MapObject *) = {
    sub_02066998,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_108[])(MapObject *) = {
    sub_020669CC,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_109[])(MapObject *) = {
    sub_020669FC,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_110[])(MapObject *) = {
    sub_02066A2C,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_111[])(MapObject *) = {
    sub_02066A60,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_112[])(MapObject *) = {
    sub_02066A94,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_113[])(MapObject *) = {
    sub_02066AC8,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_114[])(MapObject *) = {
    sub_02066AFC,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_115[])(MapObject *) = {
    sub_02066B30,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_116[])(MapObject *) = {
    sub_02066B60,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_145[])(MapObject *) = {
    sub_02066B90,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_146[])(MapObject *) = {
    sub_02066BC0,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_147[])(MapObject *) = {
    sub_02066BF0,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_148[])(MapObject *) = {
    sub_02066C20,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_149[])(MapObject *) = {
    sub_02066C50,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_150[])(MapObject *) = {
    sub_02066C84,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_151[])(MapObject *) = {
    sub_02066CB8,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_152[])(MapObject *) = {
    sub_02066CE8,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_117[])(MapObject *) = {
    sub_0206621C,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_118[])(MapObject *) = {
    sub_02066240,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_119[])(MapObject *) = {
    sub_02066264,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_120[])(MapObject *) = {
    sub_02066288,
    MovementAction_Jump_Step1,
    sub_02065924,
};

int (*const gMovementActionFuncs_121[])(MapObject *) = {
    sub_02066D18,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_122[])(MapObject *) = {
    sub_02066D4C,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_123[])(MapObject *) = {
    sub_02066D80,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_124[])(MapObject *) = {
    sub_02066DB4,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_125[])(MapObject *) = {
    sub_02066DE8,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_126[])(MapObject *) = {
    sub_02066E1C,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_127[])(MapObject *) = {
    sub_02066E50,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_128[])(MapObject *) = {
    sub_02066E84,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_129[])(MapObject *) = {
    sub_02066EB8,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_130[])(MapObject *) = {
    sub_02066EEC,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_131[])(MapObject *) = {
    sub_02066F20,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_132[])(MapObject *) = {
    sub_02066F54,
    sub_020668EC,
    sub_02065924,
};

int (*const gMovementActionFuncs_133[])(MapObject *) = {
    sub_020671F0,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_134[])(MapObject *) = {
    sub_02067214,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_135[])(MapObject *) = {
    sub_0206723C,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_136[])(MapObject *) = {
    sub_02067260,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_137[])(MapObject *) = {
    sub_02067288,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_138[])(MapObject *) = {
    sub_020672AC,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_139[])(MapObject *) = {
    sub_020672D4,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_140[])(MapObject *) = {
    sub_020672FC,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_141[])(MapObject *) = {
    sub_02067320,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_142[])(MapObject *) = {
    sub_02067344,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_143[])(MapObject *) = {
    sub_0206736C,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_144[])(MapObject *) = {
    sub_02067394,
    sub_02067068,
    sub_02065924,
};

int (*const gMovementActionFuncs_153[])(MapObject *) = {
    sub_02066510,
    sub_020664C8,
    sub_02065924,
};

static const fx32 Unk_020EEEA0[16] = {
    4 * FX32_ONE,
    6 * FX32_ONE,
    8 * FX32_ONE,
    10 * FX32_ONE,
    11 * FX32_ONE,
    12 * FX32_ONE,
    12 * FX32_ONE,
    12 * FX32_ONE,
    11 * FX32_ONE,
    10 * FX32_ONE,
    9 * FX32_ONE,
    8 * FX32_ONE,
    6 * FX32_ONE,
    4 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE
};

static const fx32 Unk_020EEEE0[16] = {
    0 * FX32_ONE,
    2 * FX32_ONE,
    3 * FX32_ONE,
    4 * FX32_ONE,
    5 * FX32_ONE,
    6 * FX32_ONE,
    6 * FX32_ONE,
    6 * FX32_ONE,
    5 * FX32_ONE,
    5 * FX32_ONE,
    4 * FX32_ONE,
    3 * FX32_ONE,
    2 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE
};

static const fx32 Unk_020EEF20[16] = {
    2 * FX32_ONE,
    4 * FX32_ONE,
    6 * FX32_ONE,
    8 * FX32_ONE,
    9 * FX32_ONE,
    10 * FX32_ONE,
    10 * FX32_ONE,
    10 * FX32_ONE,
    9 * FX32_ONE,
    8 * FX32_ONE,
    6 * FX32_ONE,
    5 * FX32_ONE,
    3 * FX32_ONE,
    2 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE
};

static const fx32 *Unk_02100B84[] = {
    Unk_020EEEA0,
    Unk_020EEEE0,
    Unk_020EEF20
};

static const fx32 Unk_020EEE84[7] = {
    (FX32_ONE * 2) + 0x500,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480
};

static const fx32 Unk_020EEE6C[6] = {
    FX32_ONE * 2,
    FX32_ONE * 3,
    FX32_ONE * 3,
    FX32_ONE * 2,
    FX32_ONE * 3,
    FX32_ONE * 3
};

static const fx32 Unk_020EECEC[3] = {
    FX32_ONE * 5,
    FX32_ONE * 6,
    FX32_ONE * 5
};
