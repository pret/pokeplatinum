#include "trainer_see.h"

#include <nitro.h>
#include <string.h>

#include "constants/approach_type.h"
#include "constants/field/dynamic_map_features.h"
#include "constants/map_object.h"
#include "generated/movement_actions.h"
#include "generated/movement_types.h"

#include "struct_decls/map_object.h"
#include "struct_decls/map_object_manager.h"

#include "field/field_system.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay008/ov8_02249960.h"

#include "heap.h"
#include "map_object.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "persisted_map_features_init.h"
#include "player_avatar.h"
#include "script_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_types.h"
#include "unk_020655F4.h"

typedef struct ApproachingTrainerTemplate {
    int distance;
    int direction;
    int script;
    int trainerID;
    int isDoubleBattle;
    MapObject *trainerMapObj;
} ApproachingTrainerTemplate;

typedef struct {
    int unk_00;
    int unk_04;
    int direction;
    int sightRange;
    int unk_10;
    int unk_14;
    int approachNum;
    int unk_1C;
    OverworldAnimManager *unk_20;
    MapObject *mapObj;
    PlayerAvatar *playerAvatar;
    FieldSystem *fieldSystem;
} UnkStruct_020EF6D0;

static BOOL FindUndefeatedTrainerInSight(FieldSystem *fieldSystem, MapObjectManager *mapObjMan, PlayerAvatar *playerAvatar, const MapObject *knownTrainer, ApproachingTrainerTemplate *apprTrTemplate);
static void ApproachingTrainer_Init(ApproachingTrainerTemplate *apprTrTemplate, MapObject *trainerMapObj, int distance, int direction);
static int GetTrainerType(const MapObject *trainerMapObj);
static int GetTrainerDistToPlayer(const MapObject *trainerMapObj, PlayerAvatar *playerAvatar, int *direction);
static int GetDistanceToPlayerFromDir(const MapObject *mapObj, int direction, int range, int playerX, int playerZ, int unused);
static BOOL IsPathInterrupted(const MapObject *mapObj, int direction, int distance);
static int GetTrainerIDFromMapObj(MapObject *mapObj);
static MapObject *FindTrainerPartner(FieldSystem *fieldSystem, MapObjectManager *mapObjMan, MapObject *trainerMapObj, int trainerID);
static SysTask *sub_02067FF0(FieldSystem *fieldSystem, MapObject *param1, PlayerAvatar *playerAvatar, int param3, int param4, int param5, int param6, int param7);
static int sub_02068048(SysTask *param0);
static void sub_02068054(SysTask *param0);
static void sub_0206806C(SysTask *param0, void *param1);
static int GetDistanceNorth(const MapObject *mapObj, int range, int playerX, int playerZ, int unused);
static int GetDistanceSouth(const MapObject *mapObj, int range, int playerX, int playerZ, int unused);
static int GetDistanceWest(const MapObject *mapObj, int range, int playerX, int playerZ, int unused);
static int GetDistanceEast(const MapObject *mapObj, int range, int playerX, int playerZ, int unused);

typedef int (*DistanceFunc)(const MapObject *, int, int, int, int);
static const DistanceFunc sGetMapObjDistToPlayerFuncs[] = {
    [DIR_NORTH] = GetDistanceNorth,
    [DIR_SOUTH] = GetDistanceSouth,
    [DIR_WEST] = GetDistanceWest,
    [DIR_EAST] = GetDistanceEast
};

int (*const Unk_020EF6D0[])(UnkStruct_020EF6D0 *);

BOOL FieldSystem_CheckForTrainersWantingBattle(FieldSystem *fieldSystem, BOOL hasTwoAliveMons)
{
    ApproachingTrainerTemplate trainer;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;

    if (!FindUndefeatedTrainerInSight(fieldSystem, mapObjMan, playerAvatar, NULL, &trainer)) {
        return FALSE;
    }

    if (!trainer.isDoubleBattle) {
        ApproachingTrainerTemplate trainerTwo;

        ScriptManager_Set(fieldSystem, SCRIPT_ID(SINGLE_BATTLES, 928), trainer.trainerMapObj);

        if (!hasTwoAliveMons || !FindUndefeatedTrainerInSight(fieldSystem, mapObjMan, playerAvatar, trainer.trainerMapObj, &trainerTwo)) {
            ScriptManager_SetApproachingTrainer(fieldSystem, trainer.trainerMapObj, trainer.distance, trainer.direction, trainer.script, trainer.trainerID, APPROACH_TYPE_SINGLES, 0);
            return TRUE;
        }

        ScriptManager_SetApproachingTrainer(fieldSystem, trainer.trainerMapObj, trainer.distance, trainer.direction, trainer.script, trainer.trainerID, APPROACH_TYPE_VS2, 0);
        ScriptManager_SetApproachingTrainer(fieldSystem, trainerTwo.trainerMapObj, trainerTwo.distance, trainerTwo.direction, trainerTwo.script, trainerTwo.trainerID, APPROACH_TYPE_VS2, 1);

        return TRUE;
    }

    if (trainer.isDoubleBattle == TRUE) {
        MapObject *trainerTwoMapObj;
        ApproachingTrainerTemplate trainerTwo;

        if (!hasTwoAliveMons) {
            return FALSE;
        }

        trainerTwoMapObj = FindTrainerPartner(fieldSystem, mapObjMan, trainer.trainerMapObj, trainer.trainerID);

        ApproachingTrainer_Init(&trainerTwo, trainerTwoMapObj, trainer.distance, trainer.direction);
        ScriptManager_Set(fieldSystem, SCRIPT_ID(SINGLE_BATTLES, 928), trainer.trainerMapObj);
        ScriptManager_SetApproachingTrainer(fieldSystem, trainer.trainerMapObj, trainer.distance, trainer.direction, trainer.script, trainer.trainerID, APPROACH_TYPE_DOUBLES, 0);
        ScriptManager_SetApproachingTrainer(fieldSystem, trainerTwo.trainerMapObj, trainerTwo.distance, trainerTwo.direction, trainerTwo.script, trainerTwo.trainerID, APPROACH_TYPE_DOUBLES, 1);

        return TRUE;
    }

    GF_ASSERT(FALSE);
    return FALSE;
}

static BOOL FindUndefeatedTrainerInSight(FieldSystem *fieldSystem, MapObjectManager *mapObjMan, PlayerAvatar *playerAvatar, const MapObject *knownTrainer, ApproachingTrainerTemplate *apprTrTemplate)
{
    int startIdx = 0;
    int direction;
    MapObject *trainerMapObj = NULL;
    int distance = DISTANCE_INVALID;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &trainerMapObj, &startIdx, MAP_OBJ_STATUS_0)) {
        if (knownTrainer == NULL || knownTrainer != trainerMapObj) {
            distance = GetTrainerDistToPlayer(trainerMapObj, playerAvatar, &direction);

            if (distance != DISTANCE_INVALID) {
                if (!Script_IsTrainerDefeated(fieldSystem, GetTrainerIDFromMapObj(trainerMapObj))) {
                    ApproachingTrainer_Init(apprTrTemplate, trainerMapObj, distance, direction);
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

static void ApproachingTrainer_Init(ApproachingTrainerTemplate *apprTrTemplate, MapObject *trainerMapObj, int distance, int direction)
{
    apprTrTemplate->distance = distance;
    apprTrTemplate->direction = direction;
    apprTrTemplate->script = MapObject_GetScript(trainerMapObj);
    apprTrTemplate->trainerID = Script_GetTrainerID(apprTrTemplate->script);
    apprTrTemplate->isDoubleBattle = Script_IsTrainerDoubleBattle(apprTrTemplate->trainerID);
    apprTrTemplate->trainerMapObj = trainerMapObj;
}

static int GetTrainerType(const MapObject *trainerMapObj)
{
    int trainerType = MapObject_GetTrainerType(trainerMapObj);

    switch (trainerType) {
    case TRAINER_TYPE_FACE_SIDES:
    case TRAINER_TYPE_FACE_COUNTERCLOCKWISE:
    case TRAINER_TYPE_FACE_CLOCKWISE:
    case TRAINER_TYPE_SPIN_COUNTERCLOCKWISE:
    case TRAINER_TYPE_SPIN_CLOCKWISE:
        trainerType = TRAINER_TYPE_NORMAL;
        break;
    }

    return trainerType;
}

static int GetTrainerDistToPlayer(const MapObject *trainerMapObj, PlayerAvatar *playerAvatar, int *direction)
{
    int trainerSightRange, trainerFaceDir, playerX, playerZ, distance;

    int trainerType = GetTrainerType(trainerMapObj);

    if (trainerType == TRAINER_TYPE_NORMAL) {
        playerX = Player_GetXPos(playerAvatar);
        playerZ = Player_GetZPos(playerAvatar);
        trainerFaceDir = MapObject_GetFacingDir(trainerMapObj);
        trainerSightRange = MapObject_GetDataAt(trainerMapObj, 0);
        distance = GetDistanceToPlayerFromDir(trainerMapObj, trainerFaceDir, trainerSightRange, playerX, playerZ, 0);

        if (distance != DISTANCE_INVALID) {
            if (!IsPathInterrupted(trainerMapObj, trainerFaceDir, distance)) {
                *direction = trainerFaceDir;
                return distance;
            }
        }

        return DISTANCE_INVALID;
    }

    if (trainerType == TRAINER_TYPE_VIEW_ALL_DIRECTIONS) {
        playerX = Player_GetXPos(playerAvatar);
        playerZ = Player_GetZPos(playerAvatar);
        trainerSightRange = MapObject_GetDataAt(trainerMapObj, 0);
        trainerFaceDir = 0;

        do {
            distance = GetDistanceToPlayerFromDir(trainerMapObj, trainerFaceDir, trainerSightRange, playerX, playerZ, 0);

            if (distance != DISTANCE_INVALID) {
                if (!IsPathInterrupted(trainerMapObj, trainerFaceDir, distance)) {
                    *direction = trainerFaceDir;
                    return distance;
                }
            }

            trainerFaceDir++;
        } while (trainerFaceDir < MAX_DIR);

        return DISTANCE_INVALID;
    }

    return DISTANCE_INVALID;
}

int MapObject_GetDistanceToPlayer(const MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int range)
{
    int playerX = Player_GetXPos(playerAvatar);
    int playerZ = Player_GetZPos(playerAvatar);
    int distance = GetDistanceToPlayerFromDir(mapObj, direction, range, playerX, playerZ, 0);

    if (distance != DISTANCE_INVALID) {
        if (IsPathInterrupted(mapObj, direction, distance) == TRUE) {
            distance = DISTANCE_INVALID;
        }
    }

    return distance;
}

static int GetDistanceToPlayerFromDir(const MapObject *mapObj, int direction, int range, int playerX, int playerZ, int unused)
{
    return sGetMapObjDistToPlayerFuncs[direction](mapObj, range, playerX, playerZ, unused);
}

static int GetDistanceNorth(const MapObject *mapObj, int range, int playerX, int playerZ, int unused)
{
    int mapObjX = MapObject_GetX(mapObj);

    if (mapObjX == playerX) {
        int mapObjZ = MapObject_GetZ(mapObj);

        if ((playerZ < mapObjZ) && (playerZ >= (mapObjZ - range))) {
            return mapObjZ - playerZ;
        }
    }

    return DISTANCE_INVALID;
}

static int GetDistanceSouth(const MapObject *mapObj, int range, int playerX, int playerZ, int unused)
{
    int mapObjX = MapObject_GetX(mapObj);

    if (mapObjX == playerX) {
        int mapObjZ = MapObject_GetZ(mapObj);

        if ((playerZ > mapObjZ) && (playerZ <= (mapObjZ + range))) {
            return playerZ - mapObjZ;
        }
    }

    return DISTANCE_INVALID;
}

static int GetDistanceWest(const MapObject *mapObj, int range, int playerX, int playerZ, int unused)
{
    int mapObjZ = MapObject_GetZ(mapObj);

    if (mapObjZ == playerZ) {
        int mapObjX = MapObject_GetX(mapObj);

        if ((playerX < mapObjX) && (playerX >= (mapObjX - range))) {
            return mapObjX - playerX;
        }
    }

    return DISTANCE_INVALID;
}

static int GetDistanceEast(const MapObject *mapObj, int range, int playerX, int playerZ, int unused)
{
    int mapObjZ = MapObject_GetZ(mapObj);

    if (mapObjZ == playerZ) {
        int mapObjX = MapObject_GetX(mapObj);

        if ((playerX > mapObjX) && (playerX <= (mapObjX + range))) {
            return playerX - mapObjX;
        }
    }

    return DISTANCE_INVALID;
}

static BOOL IsPathInterrupted(const MapObject *mapObj, int direction, int distance)
{
    u32 collisionFlags;

    if (distance == 0) {
        return TRUE;
    }

    int targetX = MapObject_GetX(mapObj);
    int targetZ = MapObject_GetZ(mapObj);
    int targetY = MapObject_GetY(mapObj);
    targetX += MapObject_GetDxFromDir(direction);
    targetZ += MapObject_GetDzFromDir(direction);

    for (int distCovered = 0; distCovered < (distance - 1); distCovered++) {
        collisionFlags = sub_02063E94(mapObj, targetX, targetY, targetZ, direction);
        collisionFlags &= ~(1 << 0);

        if (collisionFlags) {
            return TRUE;
        }

        targetX += MapObject_GetDxFromDir(direction);
        targetZ += MapObject_GetDzFromDir(direction);
    }

    collisionFlags = sub_02063E94(mapObj, targetX, targetY, targetZ, direction);
    collisionFlags &= ~(1 << 0);

    if (collisionFlags == (1 << 2)) {
        return FALSE;
    }

    return TRUE;
}

static int GetTrainerIDFromMapObj(MapObject *mapObj)
{
    return Script_GetTrainerID(MapObject_GetScript(mapObj));
}

int MapObject_GetTrainerID(MapObject *mapObj)
{
    return GetTrainerIDFromMapObj(mapObj);
}

static MapObject *FindTrainerPartner(FieldSystem *fieldSystem, MapObjectManager *mapObjMan, MapObject *trainerMapObj, int trainerID)
{
    int startIdx = 0;
    MapObject *trainerPartner;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &trainerPartner, &startIdx, MAP_OBJ_STATUS_0)) {
        if (trainerPartner != trainerMapObj) {
            int trainerType = GetTrainerType(trainerPartner);

            if (trainerType == TRAINER_TYPE_NORMAL || trainerType == TRAINER_TYPE_VIEW_ALL_DIRECTIONS) {
                if (trainerID == GetTrainerIDFromMapObj(trainerPartner)) {
                    return trainerPartner;
                }
            }
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

BOOL FieldSystem_IsTrainerDefeated(FieldSystem *fieldSystem, MapObject *mapObj)
{
    int trainerType = GetTrainerType(mapObj);

    if (trainerType == TRAINER_TYPE_NORMAL || trainerType == TRAINER_TYPE_VIEW_ALL_DIRECTIONS) {
        if (!Script_IsTrainerDefeated(fieldSystem, GetTrainerIDFromMapObj(mapObj))) {
            return TRUE;
        }
    }

    return FALSE;
}

SysTask *sub_02067FB8(FieldSystem *fieldSystem, MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int param5, int param6, int approachNum)
{
    return sub_02067FF0(fieldSystem, mapObj, playerAvatar, direction, sightRange, param5, param6, approachNum);
}

int sub_02067FD4(SysTask *task)
{
    GF_ASSERT(task != NULL);
    return sub_02068048(task);
}

void sub_02067FE8(SysTask *task)
{
    sub_02068054(task);
}

static SysTask *sub_02067FF0(FieldSystem *fieldSystem, MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int param5, int param6, int approachNum)
{
    SysTask *task;
    UnkStruct_020EF6D0 *v1 = Heap_AllocAtEnd(HEAP_ID_FIELD1, (sizeof(UnkStruct_020EF6D0)));
    GF_ASSERT(v1 != NULL);

    memset(v1, 0, (sizeof(UnkStruct_020EF6D0)));

    v1->direction = direction;
    v1->sightRange = sightRange;
    v1->unk_10 = param5;
    v1->unk_14 = param6;
    v1->approachNum = approachNum;
    v1->fieldSystem = fieldSystem;
    v1->mapObj = mapObj;
    v1->playerAvatar = playerAvatar;

    task = SysTask_Start(sub_0206806C, v1, 0xff);
    GF_ASSERT(task != NULL);

    return task;
}

static int sub_02068048(SysTask *task)
{
    UnkStruct_020EF6D0 *v0 = SysTask_GetParam(task);
    return v0->unk_04;
}

static void sub_02068054(SysTask *task)
{
    UnkStruct_020EF6D0 *v0 = SysTask_GetParam(task);

    Heap_FreeExplicit(HEAP_ID_FIELD1, v0);
    SysTask_Done(task);
}

static void sub_0206806C(SysTask *task, void *param1)
{
    UnkStruct_020EF6D0 *v0 = param1;

    while (Unk_020EF6D0[v0->unk_00](v0) == 1) {
        (void)0;
    }
}

static int sub_02068088(UnkStruct_020EF6D0 *param0)
{
    MapObject *v0 = param0->mapObj;

    if (MapObject_IsMoving(v0) == 1) {
        MapObject_SetPauseMovementOff(v0);
    }

    param0->unk_00 = 1;
    return 1;
}

static int sub_020680A4(UnkStruct_020EF6D0 *param0)
{
    MapObject *v0 = param0->mapObj;

    if (MapObject_IsMoving(v0) == 1) {
        return 0;
    }

    ov5_021ECDFC(param0->mapObj, param0->direction);
    MapObject_SetStatusFlagOn(v0, MAP_OBJ_STATUS_PAUSE_MOVEMENT);

    param0->unk_00 = 2;
    return 1;
}

static int sub_020680D0(UnkStruct_020EF6D0 *param0)
{
    MapObject *v0 = Player_MapObject(param0->playerAvatar);

    if (LocalMapObj_CheckAnimationFinished(v0) == 0) {
        return 0;
    }

    {
        u32 v1 = MapObject_GetMovementType(param0->mapObj);

        switch (v1) {
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
            param0->unk_00 = 7;
            return 1;
        }
    }

    param0->unk_00 = 3;
    return 1;
}

static int sub_02068118(UnkStruct_020EF6D0 *param0)
{
    int v0;

    if (LocalMapObj_IsAnimationSet(param0->mapObj) == 0) {
        return 0;
    }

    GF_ASSERT(param0->direction != -1);

    v0 = MovementAction_TurnActionTowardsDir(param0->direction, MOVEMENT_ACTION_FACE_NORTH);
    LocalMapObj_SetAnimationCode(param0->mapObj, v0);
    param0->unk_00 = 4;

    return 0;
}

static int sub_02068150(UnkStruct_020EF6D0 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->mapObj) == 0) {
        return 0;
    }

    param0->unk_00 = 5;
    return 1;
}

static int sub_0206816C(UnkStruct_020EF6D0 *param0)
{
    param0->unk_20 = ov5_021F5D8C(param0->mapObj, 0, 0, 0);
    param0->unk_00 = 6;

    return 0;
}

static int sub_02068188(UnkStruct_020EF6D0 *param0)
{
    if (ov5_021F5C4C(param0->unk_20) == 1) {
        OverworldAnimManager_Finish(param0->unk_20);
        param0->unk_00 = 9;
    }

    return 0;
}

static int sub_020681A4(UnkStruct_020EF6D0 *param0)
{
    LocalMapObj_SetAnimationCode(param0->mapObj, MOVEMENT_ACTION_REVEAL_TRAINER);
    param0->unk_00 = 8;

    return 0;
}

static int sub_020681B8(UnkStruct_020EF6D0 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->mapObj) == 1) {
        param0->unk_00 = 9;
    }

    return 0;
}

static int sub_020681D0(UnkStruct_020EF6D0 *param0)
{
    param0->unk_1C++;

    if (param0->unk_1C >= 30) {
        param0->unk_1C = 0;
        param0->unk_00 = 10;
    }

    return 0;
}

static int sub_020681E8(UnkStruct_020EF6D0 *param0)
{
    if (param0->sightRange <= 1) {
        param0->unk_00 = 13;
        return 1;
    }

    param0->unk_00 = 11;
    return 1;
}

static int sub_02068200(UnkStruct_020EF6D0 *param0)
{
    int v0;

    if (LocalMapObj_IsAnimationSet(param0->mapObj) == 1) {
        v0 = MovementAction_TurnActionTowardsDir(param0->direction, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
        LocalMapObj_SetAnimationCode(param0->mapObj, v0);
        param0->unk_00 = 12;
    }

    return 0;
}

static int sub_02068228(UnkStruct_020EF6D0 *param0)
{
    if (LocalMapObj_CheckAnimationFinished(param0->mapObj) == 0) {
        return 0;
    }

    param0->sightRange--;
    param0->unk_00 = 10;

    return 1;
}

static int sub_02068248(UnkStruct_020EF6D0 *param0)
{
    param0->unk_1C++;

    if (param0->unk_1C < 8) {
        return 0;
    }

    param0->unk_1C = 0;
    param0->unk_00 = 14;

    return 1;
}

static int sub_02068264(UnkStruct_020EF6D0 *param0)
{
    int v0, v1;
    MapObject *v2 = Player_MapObject(param0->playerAvatar);
    v1 = sub_02064488(MapObject_GetX(v2), MapObject_GetZ(v2), MapObject_GetX(param0->mapObj), MapObject_GetZ(param0->mapObj));

    if ((PlayerAvatar_GetDir(param0->playerAvatar) != v1) && ((param0->approachNum == 0) || (param0->unk_14 == 2))) {
        if (LocalMapObj_IsAnimationSet(v2) == 1) {
            MapObject_SetStatusFlagOff(v2, MAP_OBJ_STATUS_LOCK_DIR);
            v0 = MovementAction_TurnActionTowardsDir(v1, MOVEMENT_ACTION_FACE_NORTH);
            LocalMapObj_SetAnimationCode(v2, v0);
            param0->unk_00 = 15;
        }
    } else {
        param0->unk_00 = 16;
    }

    return 0;
}

static int sub_020682E0(UnkStruct_020EF6D0 *param0)
{
    MapObject *v0 = Player_MapObject(param0->playerAvatar);

    if (LocalMapObj_CheckAnimationFinished(v0) == 0) {
        return 0;
    }

    sub_020656AC(v0);
    param0->unk_00 = 16;

    return 1;
}

static int sub_02068308(UnkStruct_020EF6D0 *param0)
{
    sub_020656AC(param0->mapObj);

    if ((PersistedMapFeatures_IsCurrentDynamicMap(param0->fieldSystem, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) == 0) || (HearthomeGym_SetTrainerPostBattleMovement(param0->fieldSystem, param0->mapObj) == 0)) {
        MapObject_SwitchMovementType(param0->mapObj, MOVEMENT_TYPE_NONE);
    }

    param0->unk_00 = 17;
    return 1;
}

static int sub_0206833C(UnkStruct_020EF6D0 *param0)
{
    param0->unk_04 = 1;
    return 0;
}

static int (*const Unk_020EF6D0[])(UnkStruct_020EF6D0 *) = {
    sub_02068088,
    sub_020680A4,
    sub_020680D0,
    sub_02068118,
    sub_02068150,
    sub_0206816C,
    sub_02068188,
    sub_020681A4,
    sub_020681B8,
    sub_020681D0,
    sub_020681E8,
    sub_02068200,
    sub_02068228,
    sub_02068248,
    sub_02068264,
    sub_020682E0,
    sub_02068308,
    sub_0206833C
};
