#include "trainer_encounter.h"

#include <nitro.h>
#include <string.h>

#include "constants/approach_type.h"
#include "constants/field/dynamic_map_features.h"
#include "constants/map_object.h"
#include "generated/movement_actions.h"
#include "generated/movement_types.h"
#include "generated/trainers.h"

#include "struct_decls/map_object.h"
#include "struct_decls/map_object_manager.h"

#include "field/field_system.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay008/gym_features.h"

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
    BOOL isDoubleBattle;
    MapObject *trainerMapObj;
} ApproachingTrainerTemplate;

typedef struct ApproachingTrainerData {
    int state;
    BOOL done;
    int direction;
    int sightRange;
    int unused;
    int approachType;
    int approachNum;
    int delay;
    OverworldAnimManager *animMan;
    MapObject *mapObj;
    PlayerAvatar *playerAvatar;
    FieldSystem *fieldSystem;
} ApproachingTrainerData;

static BOOL FindUndefeatedTrainerInSight(FieldSystem *fieldSystem, MapObjectManager *mapObjMan, PlayerAvatar *playerAvatar, const MapObject *knownTrainer, ApproachingTrainerTemplate *apprTrTemplate);
static void ApproachingTrainer_Init(ApproachingTrainerTemplate *apprTrTemplate, MapObject *trainerMapObj, int distance, int direction);
static int GetTrainerType(const MapObject *trainerMapObj);
static int GetTrainerDistToPlayer(const MapObject *trainerMapObj, PlayerAvatar *playerAvatar, int *direction);
static int GetDistanceToPlayerFromDir(const MapObject *mapObj, int direction, int range, int playerX, int playerZ, int unused);
static BOOL IsPathInterrupted(const MapObject *mapObj, int direction, int distance);
static int GetTrainerIDFromMapObj(MapObject *mapObj);
static MapObject *FindTrainerPartner(FieldSystem *fieldSystem, MapObjectManager *mapObjMan, MapObject *trainerMapObj, int trainerID);
static SysTask *StartApproachingTrainerTask(FieldSystem *fieldSystem, MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int unused, int approachType, int approachNum);
static BOOL IsApproachingTrainerTaskDone(SysTask *task);
static void FreeApproachingTrainerTask(SysTask *task);
static void SysTask_ApproachingTrainer(SysTask *task, void *inData);
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

int (*const sApproachingTrainerTask[])(ApproachingTrainerData *);

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

        ScriptManager_Set(fieldSystem, SCRIPT_ID(SINGLE_BATTLES, MAX_TRAINERS), trainer.trainerMapObj);

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
        ScriptManager_Set(fieldSystem, SCRIPT_ID(SINGLE_BATTLES, MAX_TRAINERS), trainer.trainerMapObj);
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
        playerX = PlayerAvatar_GetXPos(playerAvatar);
        playerZ = PlayerAvatar_GetZPos(playerAvatar);
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
        playerX = PlayerAvatar_GetXPos(playerAvatar);
        playerZ = PlayerAvatar_GetZPos(playerAvatar);
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
    int playerX = PlayerAvatar_GetXPos(playerAvatar);
    int playerZ = PlayerAvatar_GetZPos(playerAvatar);
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

SysTask *TrainerEncounter_StartApproachingTrainerTask(FieldSystem *fieldSystem, MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int unused, int approachType, int approachNum)
{
    return StartApproachingTrainerTask(fieldSystem, mapObj, playerAvatar, direction, sightRange, unused, approachType, approachNum);
}

BOOL TrainerEncounter_IsApproachingTrainerTaskDone(SysTask *task)
{
    GF_ASSERT(task != NULL);
    return IsApproachingTrainerTaskDone(task);
}

void TrainerEncounter_FreeApproachingTrainerTask(SysTask *task)
{
    FreeApproachingTrainerTask(task);
}

static SysTask *StartApproachingTrainerTask(FieldSystem *fieldSystem, MapObject *mapObj, PlayerAvatar *playerAvatar, int direction, int sightRange, int unused, int approachType, int approachNum)
{
    SysTask *task;
    ApproachingTrainerData *data = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(ApproachingTrainerData));
    GF_ASSERT(data != NULL);

    memset(data, 0, sizeof(ApproachingTrainerData));

    data->direction = direction;
    data->sightRange = sightRange;
    data->unused = unused;
    data->approachType = approachType;
    data->approachNum = approachNum;
    data->fieldSystem = fieldSystem;
    data->mapObj = mapObj;
    data->playerAvatar = playerAvatar;

    task = SysTask_Start(SysTask_ApproachingTrainer, data, 0xFF);
    GF_ASSERT(task != NULL);

    return task;
}

static BOOL IsApproachingTrainerTaskDone(SysTask *task)
{
    ApproachingTrainerData *data = SysTask_GetParam(task);
    return data->done;
}

static void FreeApproachingTrainerTask(SysTask *task)
{
    ApproachingTrainerData *data = SysTask_GetParam(task);

    Heap_FreeExplicit(HEAP_ID_FIELD1, data);
    SysTask_Done(task);
}

static void SysTask_ApproachingTrainer(SysTask *task, void *inData)
{
    ApproachingTrainerData *data = inData;

    while (sApproachingTrainerTask[data->state](data) == 1)
        ; // wait
}

enum ApproachingTrainerTaskState {
    STATE_UNPAUSE_MOVEMENT = 0,
    STATE_TRY_FACE_DIRECTION,
    STATE_CHECK_REVEAL_OR_FACE_DIRECTION,
    STATE_FACE_DIRECTION,
    STATE_WAIT_FACE_DIRECTION,
    STATE_UNK_05,
    STATE_UNK_06,
    STATE_REVEAL_TRAINER,
    STATE_WAIT_REVEAL_TRAINER,
    STATE_DELAY_CHECK_NEXT_TO_PLAYER,
    STATE_CHECK_NEXT_TO_PLAYER,
    STATE_STEP_TOWARDS_PLAYER,
    STATE_WAIT_STEP_TOWARDS_PLAYER,
    STATE_DELAY_NEXT_TO_PLAYER,
    STATE_TRY_PLAYER_FACE_TRAINER,
    STATE_WAIT_PLAYER_FACE_TRAINER,
    STATE_SWITCH_MOVEMENT_TYPE_NONE,
    STATE_DONE,
};

static int ApproachingTrainerTask_UnpauseMovement(ApproachingTrainerData *data)
{
    MapObject *mapObj = data->mapObj;

    if (MapObject_IsMoving(mapObj) == TRUE) {
        MapObject_SetPauseMovementOff(mapObj);
    }

    data->state = STATE_TRY_FACE_DIRECTION;
    return 1;
}

static int ApproachingTrainerTask_TryFaceDirection(ApproachingTrainerData *data)
{
    MapObject *mapObj = data->mapObj;

    if (MapObject_IsMoving(mapObj) == TRUE) {
        return 0;
    }

    ov5_021ECDFC(data->mapObj, data->direction);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_PAUSE_MOVEMENT);

    data->state = STATE_CHECK_REVEAL_OR_FACE_DIRECTION;
    return 1;
}

static int ApproachingTrainerTask_CheckRevealOrFaceDirection(ApproachingTrainerData *data)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(data->playerAvatar);

    if (LocalMapObj_CheckAnimationFinished(mapObj) == FALSE) {
        return 0;
    }

    u32 movementType = MapObject_GetMovementType(data->mapObj);

    switch (movementType) {
    case MOVEMENT_TYPE_DISGUISE_SNOW:
    case MOVEMENT_TYPE_DISGUISE_SAND:
    case MOVEMENT_TYPE_DISGUISE_ROCK:
    case MOVEMENT_TYPE_DISGUISE_GRASS:
        data->state = STATE_REVEAL_TRAINER;
        return 1;
    }

    data->state = STATE_FACE_DIRECTION;
    return 1;
}

static int ApproachingTrainerTask_FaceDirection(ApproachingTrainerData *data)
{
    int movementAction;

    if (LocalMapObj_IsAnimationSet(data->mapObj) == FALSE) {
        return 0;
    }

    GF_ASSERT(data->direction != -1);

    movementAction = MovementAction_TurnActionTowardsDir(data->direction, MOVEMENT_ACTION_FACE_NORTH);
    LocalMapObj_SetAnimationCode(data->mapObj, movementAction);
    data->state = STATE_WAIT_FACE_DIRECTION;

    return 0;
}

static int ApproachingTrainerTask_WaitFaceDirection(ApproachingTrainerData *data)
{
    if (LocalMapObj_CheckAnimationFinished(data->mapObj) == FALSE) {
        return 0;
    }

    data->state = STATE_UNK_05;
    return 1;
}

static int ApproachingTrainerTask_Unk_05(ApproachingTrainerData *data)
{
    data->animMan = ov5_021F5D8C(data->mapObj, 0, 0, 0);
    data->state = STATE_UNK_06;

    return 0;
}

static int ApproachingTrainerTask_Unk_06(ApproachingTrainerData *data)
{
    if (ov5_021F5C4C(data->animMan) == 1) {
        OverworldAnimManager_Finish(data->animMan);
        data->state = STATE_DELAY_CHECK_NEXT_TO_PLAYER;
    }

    return 0;
}

static int ApproachingTrainerTask_RevealTrainer(ApproachingTrainerData *data)
{
    LocalMapObj_SetAnimationCode(data->mapObj, MOVEMENT_ACTION_REVEAL_TRAINER);
    data->state = STATE_WAIT_REVEAL_TRAINER;

    return 0;
}

static int ApproachingTrainerTask_WaitRevealTrainer(ApproachingTrainerData *data)
{
    if (LocalMapObj_CheckAnimationFinished(data->mapObj) == TRUE) {
        data->state = STATE_DELAY_CHECK_NEXT_TO_PLAYER;
    }

    return 0;
}

static int ApproachingTrainerTask_DelayCheckNextToPlayer(ApproachingTrainerData *data)
{
    data->delay++;

    if (data->delay >= 30) {
        data->delay = 0;
        data->state = STATE_CHECK_NEXT_TO_PLAYER;
    }

    return 0;
}

static int ApproachingTrainerTask_CheckNextToPlayer(ApproachingTrainerData *data)
{
    if (data->sightRange <= 1) {
        data->state = STATE_DELAY_NEXT_TO_PLAYER;
        return 1;
    }

    data->state = STATE_STEP_TOWARDS_PLAYER;
    return 1;
}

static int ApproachingTrainerTask_StepTowardsPlayer(ApproachingTrainerData *data)
{
    int movementAction;

    if (LocalMapObj_IsAnimationSet(data->mapObj) == TRUE) {
        movementAction = MovementAction_TurnActionTowardsDir(data->direction, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
        LocalMapObj_SetAnimationCode(data->mapObj, movementAction);
        data->state = STATE_WAIT_STEP_TOWARDS_PLAYER;
    }

    return 0;
}

static int ApproachingTrainerTask_WaitStepTowardsPlayer(ApproachingTrainerData *data)
{
    if (LocalMapObj_CheckAnimationFinished(data->mapObj) == FALSE) {
        return 0;
    }

    data->sightRange--;
    data->state = STATE_CHECK_NEXT_TO_PLAYER;

    return 1;
}

static int ApproachingTrainerTask_DelayNextToPlayer(ApproachingTrainerData *data)
{
    data->delay++;

    if (data->delay < 8) {
        return 0;
    }

    data->delay = 0;
    data->state = STATE_TRY_PLAYER_FACE_TRAINER;

    return 1;
}

static int ApproachingTrainerTask_TryPlayerFaceTrainer(ApproachingTrainerData *data)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(data->playerAvatar);
    int movementAction, dir = GetDirectionBetweenPoints(MapObject_GetX(mapObj), MapObject_GetZ(mapObj), MapObject_GetX(data->mapObj), MapObject_GetZ(data->mapObj));

    if (PlayerAvatar_GetFacingDir(data->playerAvatar) != dir && (data->approachNum == 0 || data->approachType == APPROACH_TYPE_VS2)) {
        if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
            MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR);
            movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH);
            LocalMapObj_SetAnimationCode(mapObj, movementAction);
            data->state = STATE_WAIT_PLAYER_FACE_TRAINER;
        }
    } else {
        data->state = STATE_SWITCH_MOVEMENT_TYPE_NONE;
    }

    return 0;
}

static int ApproachingTrainerTask_WaitPlayerFaceTrainer(ApproachingTrainerData *data)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(data->playerAvatar);

    if (LocalMapObj_CheckAnimationFinished(mapObj) == FALSE) {
        return 0;
    }

    sub_020656AC(mapObj);
    data->state = STATE_SWITCH_MOVEMENT_TYPE_NONE;

    return 1;
}

static int ApproachingTrainerTask_SwitchMovementTypeNone(ApproachingTrainerData *data)
{
    sub_020656AC(data->mapObj);

    if (PersistedMapFeatures_IsCurrentDynamicMap(data->fieldSystem, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) == FALSE
        || HearthomeGym_SetTrainerPostBattleMovement(data->fieldSystem, data->mapObj) == FALSE) {
        MapObject_SwitchMovementType(data->mapObj, MOVEMENT_TYPE_NONE);
    }

    data->state = STATE_DONE;
    return 1;
}

static int ApproachingTrainerTask_Done(ApproachingTrainerData *data)
{
    data->done = TRUE;
    return 0;
}

static int (*const sApproachingTrainerTask[])(ApproachingTrainerData *) = {
    [STATE_UNPAUSE_MOVEMENT] = ApproachingTrainerTask_UnpauseMovement,
    [STATE_TRY_FACE_DIRECTION] = ApproachingTrainerTask_TryFaceDirection,
    [STATE_CHECK_REVEAL_OR_FACE_DIRECTION] = ApproachingTrainerTask_CheckRevealOrFaceDirection,
    [STATE_FACE_DIRECTION] = ApproachingTrainerTask_FaceDirection,
    [STATE_WAIT_FACE_DIRECTION] = ApproachingTrainerTask_WaitFaceDirection,
    [STATE_UNK_05] = ApproachingTrainerTask_Unk_05,
    [STATE_UNK_06] = ApproachingTrainerTask_Unk_06,
    [STATE_REVEAL_TRAINER] = ApproachingTrainerTask_RevealTrainer,
    [STATE_WAIT_REVEAL_TRAINER] = ApproachingTrainerTask_WaitRevealTrainer,
    [STATE_DELAY_CHECK_NEXT_TO_PLAYER] = ApproachingTrainerTask_DelayCheckNextToPlayer,
    [STATE_CHECK_NEXT_TO_PLAYER] = ApproachingTrainerTask_CheckNextToPlayer,
    [STATE_STEP_TOWARDS_PLAYER] = ApproachingTrainerTask_StepTowardsPlayer,
    [STATE_WAIT_STEP_TOWARDS_PLAYER] = ApproachingTrainerTask_WaitStepTowardsPlayer,
    [STATE_DELAY_NEXT_TO_PLAYER] = ApproachingTrainerTask_DelayNextToPlayer,
    [STATE_TRY_PLAYER_FACE_TRAINER] = ApproachingTrainerTask_TryPlayerFaceTrainer,
    [STATE_WAIT_PLAYER_FACE_TRAINER] = ApproachingTrainerTask_WaitPlayerFaceTrainer,
    [STATE_SWITCH_MOVEMENT_TYPE_NONE] = ApproachingTrainerTask_SwitchMovementTypeNone,
    [STATE_DONE] = ApproachingTrainerTask_Done
};
