#include "overlay008/gym_features.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field/field_effect_renderer.h"
#include "constants/field/map.h"
#include "constants/graphics.h"
#include "constants/scrcmd.h"
#include "constants/sunyshore_gym_buttons.h"
#include "generated/movement_actions.h"
#include "generated/movement_types.h"
#include "generated/object_events_gfx.h"
#include "generated/trainers.h"

#include "struct_decls/map_object.h"
#include "struct_decls/map_object_manager.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/dynamic_terrain_height.h"
#include "overlay005/field_effect_manager.h"
#include "overlay005/fog_manager.h"
#include "overlay005/land_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"
#include "overlay005/ov5_021F4018.h"
#include "overlay005/ov5_021F47B0.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay005/veilstone_gym_object_renderer.h"

#include "badges.h"
#include "bg_window.h"
#include "camera.h"
#include "coordinates.h"
#include "field_message.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "map_header_data.h"
#include "map_object.h"
#include "map_object_move.h"
#include "map_tile_behavior.h"
#include "math_util.h"
#include "message.h"
#include "overworld_anim_manager.h"
#include "persisted_map_features.h"
#include "player_avatar.h"
#include "player_move.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata_misc.h"
#include "script_manager.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "trainer_encounter.h"
#include "trainer_info.h"
#include "trainer_types.h"
#include "unk_020655F4.h"
#include "vars_flags.h"

#include "res/field/props/models/prop_models.naix"
#include "res/text/bank/eterna_city_gym.h"

#define ETERNA_CLOCK_DIAMETER       13
#define ETERNA_CLOCK_LEFT_BOUND     5
#define ETERNA_CLOCK_TOP_BOUND      7
#define ETERNA_CLOCK_RIGHT_BOUND    (ETERNA_CLOCK_LEFT_BOUND + ETERNA_CLOCK_DIAMETER - 1)
#define ETERNA_CLOCK_BOTTOM_BOUND   (ETERNA_CLOCK_TOP_BOUND + ETERNA_CLOCK_DIAMETER - 1)
#define ETERNA_CLOCK_CENTER_X       11
#define ETERNA_CLOCK_CENTER_Z       13
#define ETERNA_GYM_LEFT_FOUNTAIN_X  2
#define ETERNA_GYM_RIGHT_FOUNTAIN_X 20
#define ETERNA_GYM_FOUNTAIN_Z       19
#define ETERNA_GYM_WIDTH            21

#define ETERNA_CLOCK_NO_HOUR_HAND_JUMP { -1, -1, 2 }

// 0x1559 is close to, but not the closest integer to 1/12 of 0x10000. It is
// used for the hour-positions of the clock hand expect for 3, 6, 9 and 12
// o'clock, which use 0x4000, 0x8000, 0xC000, and 0 respectively.
#define ETERNA_GYM_ONE_HOUR_ROTATION 0x1559
#define ETERNA_GYM_MAX_ROTATION      0x10000

#define VEILSTONE_GYM_OBJECT_LOCALID 0xFD
#define VEILSTONE_NUM_TIRE_STACKS    11
#define VEILSTONE_NUM_PUNCHING_BAGS  9

#define VEILSTONE_OBJ_IS_TIRE_STACK(obj) (MapObject_GetDataAt(obj, 0) == FALSE)

#define VEILSTONE_TILE_FLAG_BAG_CANT_MOVE_THAT_WAY (1 << 0)
#define VEILSTONE_TILE_FLAG_TIRE_STACK_PRESENT     (1 << 1)
#define VEILSTONE_TILE_FLAG_BAG_PAUSE_POINT        (1 << 2)

enum VeilstoneGymAnimationState {
    VEILSTONE_ANIM_STATE_INIT = 0,
    VEILSTONE_ANIM_STATE_KICK_BAG,
    VEILSTONE_ANIM_STATE_START_MOVEMENT,
    VEILSTONE_ANIM_STATE_MOVE_BAG,
    VEILSTONE_ANIM_STATE_TOPPLE_STACK,
    VEILSTONE_ANIM_STATE_REMOVE_STACK,
    VEILSTONE_ANIM_STATE_PREP_CAMERA_TO_PLAYER,
    VEILSTONE_ANIM_STATE_CAMERA_TO_PLAYER,
    VEILSTONE_ANIM_STATE_FINISH_BAG_ANIMATION,
    VEILSTONE_ANIM_STATE_WAIT_FINISH,
    VEILSTONE_ANIM_STATE_FREE,
    NUM_VEILSTONE_ANIM_STATE,
};

#define VEILSTONE_STATE_RESULT_ADVANCE_FRAME 0
#define VEILSTONE_STATE_RESULT_CONTINUE      1
#define VEILSTONE_STATE_RESULT_FINISH        2

#define PASTORIA_WATER_HEIGHT_LOW    0
#define PASTORIA_WATER_HEIGHT_MIDDLE (MAP_OBJECT_TILE_SIZE * 2)
#define PASTORIA_WATER_HEIGHT_HIGH   (MAP_OBJECT_TILE_SIZE * 4)

#define PASTORIA_WATER_PLATE_INDEX 0

#define HEARTHOME_DP_LIFT_HEIGHT_UP   (MAP_OBJECT_TILE_SIZE * 10)
#define HEARTHOME_DP_LIFT_HEIGHT_DOWN 0

#define HEARTHOME_DP_LIFT_PLATE_INDEX 0

#define HEARTHOME_NUM_TRAINER_ROOMS 2
#define HEARTHOME_ROOM_MAX_TRAINERS 16

#define HEARTHOME_ROOM_1_SIZE_X 15
#define HEARTHOME_ROOM_1_SIZE_Z 8
#define HEARTHOME_ROOM_2_SIZE_X 27
#define HEARTHOME_ROOM_2_SIZE_Z 20

#define HEARTHOME_DOOR_ID_CIRCLE   0
#define HEARTHOME_DOOR_ID_SQUARE   1
#define HEARTHOME_DOOR_ID_TRIANGLE 2
#define HEARTHOME_DOOR_ID_SUN      3
#define HEARTHOME_DOOR_ID_DONUT    4
#define HEARTHOME_DOOR_ID_MOOM     5
#define HEARTHOME_DOOR_ID_STAR     6
#define HEARTHOME_DOOR_ID_HEART    7
#define HEARTHOME_DOOR_ID_EXIT     8

#define CANALAVE_XZ_OFFSET           FX32_CONST(8)
#define CANALAVE_DIST_BETWEEN_FLOORS 10

#define CANALAVE_PLATFORM_MOVE_UP    0
#define CANALAVE_PLATFORM_MOVE_DOWN  1
#define CANALAVE_PLATFORM_MOVE_NORTH 2
#define CANALAVE_PLATFORM_MOVE_SOUTH 3
#define CANALAVE_PLATFORM_MOVE_EAST  4
#define CANALAVE_PLATFORM_MOVE_WEST  5

#define SUNYSHORE_PROP_OFFSET FX32_CONST(8)

#define SUNYSHORE_NUM_ROTATION_STATES 4

#define SUNYSHORE_ROOM_1_NUM_GEARS 3
#define SUNYSHORE_ROOM_2_NUM_GEARS 6
#define SUNYSHORE_ROOM_3_NUM_GEARS 13

#define SUNYSHORE_90_DEGREES_ROTATION  F32_DEG_TO_IDX(90)
#define SUNYSHORE_180_DEGREES_ROTATION F32_DEG_TO_IDX(180)
#define SUNYSHORE_ROTATION_STEP        F32_DEG_TO_IDX(5.625)

typedef struct CanalavePlatformPosition {
    u8 x;
    u8 y;
    u8 z;
} CanalavePlatformPosition;

typedef struct CanalaveGymSystem {
    FieldSystem *fieldSystem;
    int floor2PropIndex;
    int floor3PropIndex;
    int floor4PropIndex;
    u8 platformCurrentFloors[CANALAVE_GYM_NUM_PLATFORMS];
    u8 platformsPropIndices[CANALAVE_GYM_NUM_PLATFORMS];
    CanalavePlatformPosition platformPositions[CANALAVE_GYM_NUM_PLATFORMS];
    int platformModelIDs[CANALAVE_GYM_NUM_PLATFORMS];
    u8 movingPlatform;
    fx32 destination;
    int movementDir;
} CanalaveGymSystem;

typedef struct SunyshoreGymSystem {
    FieldSystem *fieldSystem;
    u8 propIndices[SUNYSHORE_ROOM_3_NUM_GEARS];
    u8 roomID;
    u8 numGears;
    u8 rotationState;
    u16 buttonType;
    u16 rotationProgress;
    u16 rotationGoal;
} SunyshoreGymSystem;

typedef struct SunyshoreGymGearSetup {
    int modelID;
    u8 x;
    u8 y;
    u8 z;
    u8 initialRotation : 2;
    u8 turnsClockwise : 1;
    u8 isVertical : 1;
} SunyshoreGymGearSetup;

typedef struct SunyshoreGymCollisionRegion {
    u8 x;
    u8 z;
    u8 sizeX;
    u8 sizeZ;
} SunyshoreGymCollisionRegion;

typedef struct EternaGymClockTime {
    s16 hour;
    s16 minute;
} EternaGymClockTime;

typedef struct EternaClockHourHandJumpTile {
    s16 x;
    s16 z;
    int isJumpAxisNorthSouth;
} EternaClockHourHandJumpTile;

typedef struct EternaGymClockHand {
    VecFx32 rotation;
    u32 dummyModelID;
    u16 propIndex;
    MapProp *prop;
} EternaGymClockHand;

typedef struct EternaGymSystem {
    fx32 fxHour;
    fx32 fxMinute;
    int rotateHourHand;
    EternaGymClockHand clockHands[2];
    FieldSystem *fieldSystem;
} EternaGymSystem;

typedef struct EternaGymCameraManager {
    int unused;
    int moveXFirst;
    int destX;
    int destZ;
    int startX;
    int startZ;
    int movementDirX;
    int movementDirZ;
    MapObject *cameraObj;
} EternaGymCameraManager;

typedef struct EternaGymClockUpdateManager {
    int state;
    int stateDelay;
    fx32 hourDest;
    fx32 minuteDest;
    FieldSystem *fieldSystem;
    EternaGymClockPersistedFeature *eternaClockPersisted;
    EternaGymSystem *gymSystem;
    EternaGymCameraManager cameraMan;
    u32 printerID;
    Window *window;
    MessageLoader *msgLoader;
    String *msgBuf;
} EternaGymClockUpdateManager;

typedef struct VeilstoneGymMapObjectManager {
    int x;
    int z;
    MapObject *mapObj;
    OverworldAnimManager *animManager;
} VeilstoneGymMapObjectManager;

typedef struct VeilstoneGymPunchingBag {
    int exists;
    int unused;
    VeilstoneGymMapObjectManager obj;
} VeilstoneGymPunchingBag;

typedef struct VeilstoneGymTireStack {
    int exists;
    int unused;
    VeilstoneGymMapObjectManager obj;
} VeilstoneGymTireStack;

typedef struct VeilstoneGymSystem {
    FieldSystem *fieldSystem;
    VeilstoneGymTireStack tireStacks[VEILSTONE_NUM_TIRE_STACKS];
    VeilstoneGymPunchingBag punchingBags[VEILSTONE_NUM_PUNCHING_BAGS];
} VeilstoneGymSystem;

typedef struct VeilstoneGymCameraManager {
    int movementState;
    int unused;
    int bagX;
    int bagZ;
    int playerX;
    int playerZ;
    int destX;
    int destZ;
    int movementDirection;
    int distanceToTravel;
    int traveledDistance;
    BOOL movementFinished;
    MapObject *cameraObj;
    FieldSystem *fieldSystem;
} VeilstoneGymCameraManager;

typedef struct VeilstoneGym_BagAnimation {
    int state;
    int elapsedFrames;
    int direction;
    int bagX;
    int bagZ;
    int traveledCoordinates;
    int moveCamera;
    int distanceToTravel;
    VecFx32 bagPosition;
    fx32 movingSpeed;
    fx32 traveledDistance;
    VeilstoneGymPunchingBag *punchingBag;
    VeilstoneGymTireStack *tireStack;
    VeilstoneGymSystem *gymSystem;
    VeilstoneGymCameraManager cameraMan;
} VeilstoneGym_BagAnimation;

typedef int (*VeilstoneGymAnimationStateFunc)(VeilstoneGym_BagAnimation *);

typedef struct HearthomeGymTrainerRoomLayout {
    int mapID;
    int firstDoorID;
    int numExitDoors;
    int offsetX;
    int offsetZ;
    int sizeX;
    int sizeZ;
} HearthomeGymTrainerRoomLayout;

typedef struct HearthomeGymFog {
    FogManager *fogMan;
    int fogSlope;
    u8 fogR;
    u8 fogG;
    u8 fogB;
    u8 fogAlpha;
    char fogDensity[G3X_FOG_DENSITY_TABLE_SIZE];
} HearthomeGymFog;

typedef struct HearthomeGymTrainerRoomDoor {
    int id;
    s16 x;
    s16 z;
} HearthomeGymTrainerRoomDoor;

typedef struct HearthomeGymSystem HearthomeGymSystem;

typedef struct HearthomeGymTrainer {
    int initialized;
    int initialDir;
    int unk_08;
    SysTask *emptyTask;
    OverworldAnimManager *animMan;
    MapObject *mapObj;
    HearthomeGymSystem *gymSystem;
} HearthomeGymTrainer;

struct HearthomeGymSystem {
    FieldSystem *fieldSystem;
    HearthomeGymTrainer trainers[HEARTHOME_ROOM_MAX_TRAINERS];
    HearthomeGymFog fog;
    u32 unused;
    SysTask *emptyTask;
};

static void VeilstoneGym_InitMapObjects(VeilstoneGymSystem *gymSystem);
static void VeilstoneGym_ReinitMapObjects(VeilstoneGymSystem *gymSystem);
static void VeilstoneGym_InitCameraManager(FieldSystem *fieldSystem, VeilstoneGym_BagAnimation *bagAnim, VeilstoneGymMapObjectManager *bagObj, int direction);
static void VeilStoneGym_ReturnCameraFocusToPlayer(VeilstoneGym_BagAnimation *bagAnim);
static BOOL VeilstoneGym_CheckIfCameraMovementFinished(VeilstoneGym_BagAnimation *bagAnim);
static BOOL VeilstoneGym_CheckIfCameraNeedsToMove(VeilstoneGym_BagAnimation *bagAnim, VeilstoneGymMapObjectManager *obj, int direction);
static void VeilstoneGym_PrepareForCameraMovement(VeilstoneGym_BagAnimation *bagAnim, BOOL reverseDirection);
static void VeilstoneGym_MoveCamera(VeilstoneGym_BagAnimation *bagAnim, enum MovementAction movementAction);
static void VeilstoneGym_UpdateCamera(VeilstoneGym_BagAnimation *bagAnim, fx32 speed);

static BOOL PastoriaGym_PressOrangeButton(FieldTask *taskMan);
static BOOL PastoriaGym_PressGreenButton(FieldTask *taskMan);
static BOOL PastoriaGym_PressBlueButton(FieldTask *taskMan);
static void PastoriaGym_UpdateButtonAnimations(const u8 pressedButton, MapPropAnimationManager *mapPropAnimMan);
static BOOL HearthomeGymDP_RaiseLift(FieldTask *taskMan);
static BOOL HearthomeGymDP_LowerLift(FieldTask *taskMan);

static void HearthomeGym_EmptyTask(SysTask *task, void *data);
static void HearthomeGym_InitFog(HearthomeGymSystem *gymSystem);
static void HearthomeGym_InitTrainers(HearthomeGymSystem *gymSystem);
static void HearthomeGym_FreeTrainers(HearthomeGymSystem *gymSystem);
static void HearthomeGym_EmptyTrainerTask(SysTask *task, void *data);

static BOOL FieldTask_CanalaveGym_MovePlatformUpDown(FieldTask *taskMan);
static BOOL FieldTask_CanalaveGym_MovePlatformEastWest(FieldTask *taskMan);
static BOOL FieldTask_CanalaveGym_MovePlatformNorthSouth(FieldTask *taskMan);

static BOOL FieldTask_SunyshoreGym_RotateGears(FieldTask *task);

static u8 CanalaveGym_CheckIfPlatformInPositionB(const u8 index, const int platformStates)
{
    u8 isInPositionB = platformStates >> index & 1;
    return isInPositionB;
}

static void CanalaveGym_TogglePlatformState(const u8 index, int *platformStates)
{
    *platformStates ^= 1 << index;
}

void PastoriaGym_PressButton(FieldSystem *fieldSystem)
{
    TerrainCollisionHitbox terrainCollision;
    BOOL hasCollisionHit;
    int mapPropModelID;
    int pastoriaButtonTypes[] = {
        pastoria_gym_blue_button_nsbmd,
        pastoria_gym_green_button_nsbmd,
        pastoria_gym_orange_button_nsbmd
    };

    int playerX = PlayerAvatar_GetXPos(fieldSystem->playerAvatar);
    int playerY = PlayerAvatar_GetZPos(fieldSystem->playerAvatar);

    TerrainCollisionHitbox_Init(playerX, playerY, 0, 0, 1, 1, &terrainCollision);

    hasCollisionHit = FieldSystem_FindCollidingLoadedMapPropByModelIDs(fieldSystem, pastoriaButtonTypes, NELEMS(pastoriaButtonTypes), &terrainCollision, NULL, &mapPropModelID);

    if (hasCollisionHit) {
        PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
        PastoriaGymPersistedFeature *feature = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_PASTORIA_GYM);

        int *waterMoveTaskState = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(int));
        *waterMoveTaskState = 0;

        if (mapPropModelID == pastoria_gym_blue_button_nsbmd) {
            FieldTask_InitCall(fieldSystem->task, PastoriaGym_PressBlueButton, waterMoveTaskState);
            feature->pressedButton = PASTORIA_BLUE_BUTTON_PRESSED;
        } else if (mapPropModelID == pastoria_gym_green_button_nsbmd) {
            FieldTask_InitCall(fieldSystem->task, PastoriaGym_PressGreenButton, waterMoveTaskState);
            feature->pressedButton = PASTORIA_GREEN_BUTTON_PRESSED;
        } else if (mapPropModelID == pastoria_gym_orange_button_nsbmd) {
            FieldTask_InitCall(fieldSystem->task, PastoriaGym_PressOrangeButton, waterMoveTaskState);
            feature->pressedButton = PASTORIA_ORANGE_BUTTON_PRESSED;
        } else {
            GF_ASSERT(FALSE);
        }
    }
}

BOOL PastoriaGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, tileX, tileZ);

    if (TileBehavior_IsPastoriaGymHighGround(tileBehavior)) {
        if (height != PASTORIA_WATER_HEIGHT_LOW) {
            *isColliding = TRUE;
            return TRUE;
        }
    } else if (TileBehavior_IsPastoriaGymMiddleGround(tileBehavior)) {
        if (height != PASTORIA_WATER_HEIGHT_MIDDLE) {
            *isColliding = TRUE;
            return TRUE;
        }
    } else if (TileBehavior_IsPastoriaGymLowGround(tileBehavior)) {
        if (height != PASTORIA_WATER_HEIGHT_HIGH) {
            *isColliding = TRUE;
            return TRUE;
        }
    }

    *isColliding = FALSE;
    return FALSE;
}

static BOOL PastoriaGym_PressOrangeButton(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *state = FieldTask_GetEnv(taskMan);

    switch (*state) {
    case 0:
        PastoriaGym_UpdateButtonAnimations(PASTORIA_ORANGE_BUTTON_PRESSED, fieldSystem->mapPropAnimMan);
        (*state)++;
        break;
    case 1: {
        MapPropAnimation *blueButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_BLUE_BUTTON_GROUP, fieldSystem->mapPropAnimMan);
        MapPropAnimation *greenButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_GREEN_BUTTON_GROUP, fieldSystem->mapPropAnimMan);
        MapPropAnimation *orangeButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_ORANGE_BUTTON_GROUP, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsLoopFinished(blueButtonGroup) && MapPropAnimation_IsLoopFinished(greenButtonGroup) && MapPropAnimation_IsLoopFinished(orangeButtonGroup)) {
            MapProp *waterProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

            VecFx32 waterPropPosition;
            waterPropPosition = MapProp_GetPosition(waterProp);
            waterPropPosition.y -= FX32_ONE;

            if (waterPropPosition.y <= PASTORIA_WATER_HEIGHT_LOW) {
                waterPropPosition.y = PASTORIA_WATER_HEIGHT_LOW;
                (*state)++;
            }

            MapProp_SetPosition(waterProp, &waterPropPosition);
        }
    } break;
    case 2:
        DynamicTerrainHeightManager_SetHeight(PASTORIA_WATER_PLATE_INDEX, PASTORIA_WATER_HEIGHT_LOW, fieldSystem->dynamicTerrainHeightMan);
        Sound_StopEffect(SEQ_SE_DP_FW056, 0);
        (*state)++;
        break;
    case 3:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

static BOOL PastoriaGym_PressGreenButton(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *state = FieldTask_GetEnv(taskMan);

    switch (*state) {
    case 0:
        PastoriaGym_UpdateButtonAnimations(PASTORIA_GREEN_BUTTON_PRESSED, fieldSystem->mapPropAnimMan);
        (*state)++;
        break;
    case 1: {
        MapPropAnimation *blueButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_BLUE_BUTTON_GROUP, fieldSystem->mapPropAnimMan);
        MapPropAnimation *greenButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_GREEN_BUTTON_GROUP, fieldSystem->mapPropAnimMan);
        MapPropAnimation *orangeButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_ORANGE_BUTTON_GROUP, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsLoopFinished(blueButtonGroup) && MapPropAnimation_IsLoopFinished(greenButtonGroup) && MapPropAnimation_IsLoopFinished(orangeButtonGroup)) {
            MapProp *waterProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

            VecFx32 waterPropPosition;
            waterPropPosition = MapProp_GetPosition(waterProp);

            if (waterPropPosition.y == PASTORIA_WATER_HEIGHT_LOW) {
                *state = 2;
            } else if (waterPropPosition.y == PASTORIA_WATER_HEIGHT_MIDDLE) {
                Heap_Free(state);
                return TRUE;
            } else if (waterPropPosition.y == PASTORIA_WATER_HEIGHT_HIGH) {
                *state = 3;
            } else {
                GF_ASSERT(FALSE);
            }
        }
    } break;
    case 2: {
        MapProp *waterProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

        VecFx32 waterPropPosition;
        waterPropPosition = MapProp_GetPosition(waterProp);
        waterPropPosition.y += FX32_ONE;

        if (waterPropPosition.y >= PASTORIA_WATER_HEIGHT_MIDDLE) {
            waterPropPosition.y = PASTORIA_WATER_HEIGHT_MIDDLE;
            *state = 4;
        }

        MapProp_SetPosition(waterProp, &waterPropPosition);
    } break;
    case 3: {
        MapProp *waterProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

        VecFx32 waterPropPosition;
        waterPropPosition = MapProp_GetPosition(waterProp);
        waterPropPosition.y -= FX32_ONE;

        if (waterPropPosition.y <= PASTORIA_WATER_HEIGHT_MIDDLE) {
            waterPropPosition.y = PASTORIA_WATER_HEIGHT_MIDDLE;
            *state = 4;
        }

        MapProp_SetPosition(waterProp, &waterPropPosition);
    } break;
    case 4:
        DynamicTerrainHeightManager_SetHeight(PASTORIA_WATER_PLATE_INDEX, PASTORIA_WATER_HEIGHT_MIDDLE, fieldSystem->dynamicTerrainHeightMan);
        Sound_StopEffect(SEQ_SE_DP_FW056, 0);
        (*state)++;
        break;
    case 5:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

static BOOL PastoriaGym_PressBlueButton(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *state = FieldTask_GetEnv(taskMan);

    switch (*state) {
    case 0:
        PastoriaGym_UpdateButtonAnimations(PASTORIA_BLUE_BUTTON_PRESSED, fieldSystem->mapPropAnimMan);
        (*state)++;
        break;
    case 1: {
        MapPropAnimation *blueButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_BLUE_BUTTON_GROUP, fieldSystem->mapPropAnimMan);
        MapPropAnimation *greenButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_GREEN_BUTTON_GROUP, fieldSystem->mapPropAnimMan);
        MapPropAnimation *orangeButtonGroup = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(PASTORIA_ORANGE_BUTTON_GROUP, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsLoopFinished(blueButtonGroup) && MapPropAnimation_IsLoopFinished(greenButtonGroup) && MapPropAnimation_IsLoopFinished(orangeButtonGroup)) {
            MapProp *waterProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

            VecFx32 waterPropPosition;
            waterPropPosition = MapProp_GetPosition(waterProp);
            waterPropPosition.y += FX32_ONE;

            if (waterPropPosition.y >= PASTORIA_WATER_HEIGHT_HIGH) {
                waterPropPosition.y = PASTORIA_WATER_HEIGHT_HIGH;
                (*state)++;
            }

            MapProp_SetPosition(waterProp, &waterPropPosition);
        }
    } break;
    case 2:
        DynamicTerrainHeightManager_SetHeight(PASTORIA_WATER_PLATE_INDEX, PASTORIA_WATER_HEIGHT_HIGH, fieldSystem->dynamicTerrainHeightMan);
        Sound_StopEffect(SEQ_SE_DP_FW056, 0);
        (*state)++;
        break;
    case 3:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

void PastoriaGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PastoriaGymPersistedFeature *feature = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_PASTORIA_GYM);

    VecFx32 initWaterPropPosition = { FX32_CONST(256), 0, FX32_CONST(256) };
    MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, pastoria_gym_water_floor_nsbmd, &initWaterPropPosition, NULL, fieldSystem->mapPropAnimMan);

    DynamicTerrainHeightManager_SetPlate(PASTORIA_WATER_PLATE_INDEX, 1, 2, 25, 38, 0, fieldSystem->dynamicTerrainHeightMan);

    fx32 waterPosition, waterHeight;
    BOOL blueButtonIsUp, greenButtonIsUp, orangeButtonIsUp;
    switch (feature->pressedButton) {
    case PASTORIA_ORANGE_BUTTON_PRESSED:
        waterPosition = PASTORIA_WATER_HEIGHT_LOW;
        waterHeight = PASTORIA_WATER_HEIGHT_LOW;
        blueButtonIsUp = TRUE;
        greenButtonIsUp = TRUE;
        orangeButtonIsUp = FALSE;
        break;
    case PASTORIA_GREEN_BUTTON_PRESSED:
        waterPosition = PASTORIA_WATER_HEIGHT_MIDDLE;
        waterHeight = PASTORIA_WATER_HEIGHT_MIDDLE;
        blueButtonIsUp = TRUE;
        greenButtonIsUp = FALSE;
        orangeButtonIsUp = TRUE;
        break;
    case PASTORIA_BLUE_BUTTON_PRESSED:
        waterPosition = PASTORIA_WATER_HEIGHT_HIGH;
        waterHeight = PASTORIA_WATER_HEIGHT_HIGH;
        blueButtonIsUp = FALSE;
        greenButtonIsUp = TRUE;
        orangeButtonIsUp = TRUE;
        break;
    default:
        GF_ASSERT(FALSE);
        waterPosition = PASTORIA_WATER_HEIGHT_LOW;
        waterHeight = PASTORIA_WATER_HEIGHT_LOW;
        blueButtonIsUp = TRUE;
        greenButtonIsUp = TRUE;
        orangeButtonIsUp = FALSE;
    }

    MapProp *waterProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

    VecFx32 waterPropPosition;
    waterPropPosition = MapProp_GetPosition(waterProp);
    waterPropPosition.y = waterPosition;

    MapProp_SetPosition(waterProp, &waterPropPosition);

    DynamicTerrainHeightManager_SetHeight(PASTORIA_WATER_PLATE_INDEX, waterHeight, fieldSystem->dynamicTerrainHeightMan);

    MapPropAnimation *animation;
    animation = MapPropAnimationManager_GetAnimation(pastoria_gym_blue_button_nsbmd, 0, fieldSystem->mapPropAnimMan);

    MapPropAnimation_SetPastoriaGymButtonGroup(animation, PASTORIA_BLUE_BUTTON_GROUP);
    MapPropAnimation_SetReversed(animation, blueButtonIsUp);
    MapPropAnimation_SetLoopCount(animation, 1);
    MapPropAnimation_SetAnimationPaused(animation, TRUE);
    MapPropAnimation_GoToLastFrame(animation);

    animation = MapPropAnimationManager_GetAnimation(pastoria_gym_green_button_nsbmd, 0, fieldSystem->mapPropAnimMan);

    MapPropAnimation_SetPastoriaGymButtonGroup(animation, PASTORIA_GREEN_BUTTON_GROUP);
    MapPropAnimation_SetReversed(animation, greenButtonIsUp);
    MapPropAnimation_SetLoopCount(animation, 1);
    MapPropAnimation_SetAnimationPaused(animation, TRUE);
    MapPropAnimation_GoToLastFrame(animation);

    animation = MapPropAnimationManager_GetAnimation(pastoria_gym_orange_button_nsbmd, 0, fieldSystem->mapPropAnimMan);

    MapPropAnimation_SetPastoriaGymButtonGroup(animation, PASTORIA_ORANGE_BUTTON_GROUP);
    MapPropAnimation_SetReversed(animation, orangeButtonIsUp);
    MapPropAnimation_SetLoopCount(animation, 1);
    MapPropAnimation_SetAnimationPaused(animation, TRUE);
    MapPropAnimation_GoToLastFrame(animation);
}

static void PastoriaGym_UpdateButtonAnimations(const u8 pressedButton, MapPropAnimationManager *mapPropAnimMan)
{
    int pressedButtonGroup, unpressedGroup1, unpressedGroup2;
    if (pressedButton == PASTORIA_BLUE_BUTTON_PRESSED) {
        pressedButtonGroup = PASTORIA_BLUE_BUTTON_GROUP;
        unpressedGroup1 = PASTORIA_GREEN_BUTTON_GROUP;
        unpressedGroup2 = PASTORIA_ORANGE_BUTTON_GROUP;
    } else if (pressedButton == PASTORIA_GREEN_BUTTON_PRESSED) {
        pressedButtonGroup = PASTORIA_GREEN_BUTTON_GROUP;
        unpressedGroup1 = PASTORIA_BLUE_BUTTON_GROUP;
        unpressedGroup2 = PASTORIA_ORANGE_BUTTON_GROUP;
    } else if (pressedButton == PASTORIA_ORANGE_BUTTON_PRESSED) {
        pressedButtonGroup = PASTORIA_ORANGE_BUTTON_GROUP;
        unpressedGroup1 = PASTORIA_BLUE_BUTTON_GROUP;
        unpressedGroup2 = PASTORIA_GREEN_BUTTON_GROUP;
    } else {
        GF_ASSERT(FALSE);
    }

    MapPropAnimation *mapPropAnimation;
    mapPropAnimation = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(pressedButtonGroup, mapPropAnimMan);

    MapPropAnimation_SetReversed(mapPropAnimation, FALSE);
    MapPropAnimation_GoToFirstFrame(mapPropAnimation);
    MapPropAnimation_SetAnimationPaused(mapPropAnimation, FALSE);
    MapPropAnimation_StartLoop(mapPropAnimation);

    mapPropAnimation = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(unpressedGroup1, mapPropAnimMan);

    MapPropAnimation_SetReversed(mapPropAnimation, TRUE);
    MapPropAnimation_GoToFirstFrame(mapPropAnimation);
    MapPropAnimation_SetAnimationPaused(mapPropAnimation, FALSE);
    MapPropAnimation_StartLoop(mapPropAnimation);

    mapPropAnimation = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(unpressedGroup2, mapPropAnimMan);

    MapPropAnimation_SetReversed(mapPropAnimation, TRUE);
    MapPropAnimation_GoToFirstFrame(mapPropAnimation);
    MapPropAnimation_SetAnimationPaused(mapPropAnimation, FALSE);
    MapPropAnimation_StartLoop(mapPropAnimation);

    Sound_PlayEffect(SEQ_SE_DP_FW056);
}

void GymDummy(void)
{
    VecFx32 dummy = { FX32_CONST(152), 0, FX32_CONST(216) };
}

void HearthomeGym_MoveLift(FieldSystem *fieldSystem)
{
    int *movementState = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(int));
    *movementState = 0;

    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    HearthomeGymPersistedFeatureDP *features = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);

    VecFx32 currentPosition;
    PlayerAvatar_GetPosPtr(fieldSystem->playerAvatar, &currentPosition);

    if (currentPosition.y == HEARTHOME_DP_LIFT_HEIGHT_DOWN) {
        FieldTask_InitCall(fieldSystem->task, HearthomeGymDP_RaiseLift, movementState);
        features->isMovingUp = TRUE;
    } else {
        FieldTask_InitCall(fieldSystem->task, HearthomeGymDP_LowerLift, movementState);
        features->isMovingUp = FALSE;
    }
}

static BOOL HearthomeGymDP_RaiseLift(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *state = FieldTask_GetEnv(taskMan);

    switch (*state) {
    case 0:
        PlayerAvatar_SetHeightCalculationEnabled(fieldSystem->playerAvatar, FALSE);
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
        (*state)++;
        break;
    case 1: {
        MapProp *liftProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, iron_island_platform_lift_nsbmd);

        VecFx32 liftPosition;
        liftPosition = MapProp_GetPosition(liftProp);
        liftPosition.y += FX32_ONE;

        if (liftPosition.y >= HEARTHOME_DP_LIFT_HEIGHT_UP) {
            liftPosition.y = HEARTHOME_DP_LIFT_HEIGHT_UP;

            Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
            (*state)++;
        }

        Player_SetYPos(fieldSystem->playerAvatar, liftPosition.y);
        MapProp_SetPosition(liftProp, &liftPosition);
    } break;
    case 2:
        DynamicTerrainHeightManager_SetHeight(HEARTHOME_DP_LIFT_PLATE_INDEX, HEARTHOME_DP_LIFT_HEIGHT_UP, fieldSystem->dynamicTerrainHeightMan);
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(fieldSystem->playerAvatar, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
        (*state)++;
        break;
    case 3:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

static BOOL HearthomeGymDP_LowerLift(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *state = FieldTask_GetEnv(taskMan);

    switch (*state) {
    case 0:
        PlayerAvatar_SetHeightCalculationEnabled(fieldSystem->playerAvatar, FALSE);
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
        (*state)++;
        break;
    case 1: {
        MapProp *liftProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, iron_island_platform_lift_nsbmd);

        VecFx32 liftPosition;
        liftPosition = MapProp_GetPosition(liftProp);
        liftPosition.y -= FX32_ONE;

        if (liftPosition.y <= HEARTHOME_DP_LIFT_HEIGHT_DOWN) {
            liftPosition.y = HEARTHOME_DP_LIFT_HEIGHT_DOWN;
            Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
            (*state)++;
        }

        Player_SetYPos(fieldSystem->playerAvatar, liftPosition.y);
        MapProp_SetPosition(liftProp, &liftPosition);
    } break;
    case 2:
        DynamicTerrainHeightManager_SetHeight(HEARTHOME_DP_LIFT_PLATE_INDEX, HEARTHOME_DP_LIFT_HEIGHT_DOWN, fieldSystem->dynamicTerrainHeightMan);
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(fieldSystem->playerAvatar, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
        (*state)++;
        break;
    case 3:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

// clang-format off
static const u8 sCanalaveGymCollisionMaps[4][MAP_TILES_COUNT_X * MAP_TILES_COUNT_Z] = {
    {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    },
    {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    },
    {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    },
    {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    },
};
// clang-format on

static const struct {
    int modelID;
    CanalavePlatformPosition positionA;
    CanalavePlatformPosition positionB;
    u8 floorA;
    u8 floorB;
    u16 startInPositionB;
} sCanalavePlatformPaths[CANALAVE_GYM_NUM_PLATFORMS] = {
    {
        .modelID = canalave_gym_platform_red_nsbmd,
        .positionA = { .x = 16, .y = 0, .z = 9 },
        .positionB = { .x = 16, .y = 30, .z = 9 },
        .floorA = 0,
        .floorB = 3,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 11, .y = 0, .z = 13 },
        .positionB = { .x = 11, .y = 10, .z = 13 },
        .floorA = 0,
        .floorB = 1,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 15, .y = 0, .z = 13 },
        .positionB = { .x = 15, .y = 10, .z = 13 },
        .floorA = 0,
        .floorB = 1,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 19, .y = 0, .z = 13 },
        .positionB = { .x = 19, .y = 10, .z = 13 },
        .floorA = 0,
        .floorB = 1,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 24, .y = 0, .z = 13 },
        .positionB = { .x = 24, .y = 10, .z = 13 },
        .floorA = 0,
        .floorB = 1,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 21, .y = 0, .z = 22 },
        .positionB = { .x = 21, .y = 10, .z = 22 },
        .floorA = 0,
        .floorB = 1,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 25, .y = 0, .z = 9 },
        .positionB = { .x = 25, .y = 10, .z = 9 },
        .floorA = 0,
        .floorB = 1,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 25, .y = 0, .z = 22 },
        .positionB = { .x = 25, .y = 10, .z = 22 },
        .floorA = 0,
        .floorB = 1,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 29, .y = 0, .z = 22 },
        .positionB = { .x = 29, .y = 10, .z = 22 },
        .floorA = 0,
        .floorB = 1,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 5, .y = 10, .z = 26 },
        .positionB = { .x = 5, .y = 20, .z = 26 },
        .floorA = 1,
        .floorB = 2,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_x_direction_nsbmd,
        .positionA = { .x = 11, .y = 10, .z = 22 },
        .positionB = { .x = 18, .y = 10, .z = 22 },
        .floorA = 1,
        .floorB = 1,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_y_direction_nsbmd,
        .positionA = { .x = 29, .y = 10, .z = 9 },
        .positionB = { .x = 29, .y = 20, .z = 9 },
        .floorA = 1,
        .floorB = 2,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_x_direction_nsbmd,
        .positionA = { .x = 10, .y = 20, .z = 4 },
        .positionB = { .x = 14, .y = 20, .z = 4 },
        .floorA = 2,
        .floorB = 2,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_x_direction_nsbmd,
        .positionA = { .x = 19, .y = 20, .z = 4 },
        .positionB = { .x = 22, .y = 20, .z = 4 },
        .floorA = 2,
        .floorB = 2,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_x_direction_nsbmd,
        .positionA = { .x = 7, .y = 20, .z = 12 },
        .positionB = { .x = 22, .y = 20, .z = 12 },
        .floorA = 2,
        .floorB = 2,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_x_direction_nsbmd,
        .positionA = { .x = 9, .y = 20, .z = 26 },
        .positionB = { .x = 21, .y = 20, .z = 26 },
        .floorA = 2,
        .floorB = 2,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_z_direction_nsbmd,
        .positionA = { .x = 2, .y = 20, .z = 19 },
        .positionB = { .x = 2, .y = 20, .z = 22 },
        .floorA = 2,
        .floorB = 2,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_z_direction_nsbmd,
        .positionA = { .x = 26, .y = 20, .z = 16 },
        .positionB = { .x = 26, .y = 20, .z = 22 },
        .floorA = 2,
        .floorB = 2,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_z_direction_nsbmd,
        .positionA = { .x = 29, .y = 20, .z = 16 },
        .positionB = { .x = 29, .y = 20, .z = 22 },
        .floorA = 2,
        .floorB = 2,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_red_nsbmd,
        .positionA = { .x = 7, .y = 0, .z = 9 },
        .positionB = { .x = 7, .y = 30, .z = 9 },
        .floorA = 0,
        .floorB = 3,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_x_direction_nsbmd,
        .positionA = { .x = 19, .y = 30, .z = 4 },
        .positionB = { .x = 26, .y = 30, .z = 4 },
        .floorA = 3,
        .floorB = 3,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_x_direction_nsbmd,
        .positionA = { .x = 5, .y = 30, .z = 26 },
        .positionB = { .x = 26, .y = 30, .z = 26 },
        .floorA = 3,
        .floorB = 3,
        .startInPositionB = TRUE,
    },
    {
        .modelID = canalave_gym_platform_z_direction_nsbmd,
        .positionA = { .x = 29, .y = 30, .z = 7 },
        .positionB = { .x = 29, .y = 30, .z = 23 },
        .floorA = 3,
        .floorB = 3,
        .startInPositionB = FALSE,
    },
    {
        .modelID = canalave_gym_platform_z_direction_nsbmd,
        .positionA = { .x = 2, .y = 30, .z = 12 },
        .positionB = { .x = 2, .y = 30, .z = 23 },
        .floorA = 3,
        .floorB = 3,
        .startInPositionB = TRUE,
    },
};

static void CanalaveGym_UpdatePlatformsVisibility(const CanalaveGymSystem *gymSystem, const BOOL hidden, const int floor)
{
    for (int i = 0; i < CANALAVE_GYM_NUM_PLATFORMS; i++) {
        if (gymSystem->platformCurrentFloors[i] == floor) {
            MapProp *platformProp = MapPropManager_GetLoadedProp(gymSystem->fieldSystem->mapPropManager, gymSystem->platformsPropIndices[i]);
            MapProp_SetHidden(platformProp, hidden);
        }
    }
}

static u8 CanalaveGym_GetPlaformPlayerIsOn(CanalaveGymSystem *gymSystem)
{
    VecFx32 playerPos;
    PlayerAvatar_GetPosPtr(gymSystem->fieldSystem->playerAvatar, &playerPos);

    u8 playerY = playerPos.y / MAP_OBJECT_TILE_SIZE;
    u8 playerX = playerPos.x / MAP_OBJECT_TILE_SIZE;
    u8 playerZ = playerPos.z / MAP_OBJECT_TILE_SIZE;

    for (u8 i = 0; i < CANALAVE_GYM_NUM_PLATFORMS; i++) {
        if (gymSystem->platformPositions[i].y == playerY) {
            if (gymSystem->platformPositions[i].x == playerX && gymSystem->platformPositions[i].z == playerZ) {
                return i;
            }
        }
    }

    return CANALAVE_GYM_NUM_PLATFORMS;
}

static void CanalaveGym_MovePlatform(CanalaveGymSystem *gymSystem, const u8 platformIndex)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(gymSystem->fieldSystem));
    CanalaveGymPersistedFeature *feature = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_CANALAVE_GYM);
    int *state = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(int));

    *state = 0;
    gymSystem->movingPlatform = platformIndex;

    int modelID = gymSystem->platformModelIDs[platformIndex];
    u8 inPositionB = CanalaveGym_CheckIfPlatformInPositionB(platformIndex, feature->platformStates);

    CanalaveGym_TogglePlatformState(platformIndex, &feature->platformStates);

    if (modelID == canalave_gym_platform_x_direction_nsbmd) {
        if (inPositionB) {
            gymSystem->movementDir = CANALAVE_PLATFORM_MOVE_WEST;
            gymSystem->destination = sCanalavePlatformPaths[platformIndex].positionA.x * MAP_OBJECT_TILE_SIZE + CANALAVE_XZ_OFFSET;
            gymSystem->platformPositions[platformIndex] = sCanalavePlatformPaths[platformIndex].positionA;
        } else {
            gymSystem->movementDir = CANALAVE_PLATFORM_MOVE_EAST;
            gymSystem->destination = sCanalavePlatformPaths[platformIndex].positionB.x * MAP_OBJECT_TILE_SIZE + CANALAVE_XZ_OFFSET;
            gymSystem->platformPositions[platformIndex] = sCanalavePlatformPaths[platformIndex].positionB;
        }

        FieldSystem_CreateTask(gymSystem->fieldSystem, FieldTask_CanalaveGym_MovePlatformEastWest, state);
    } else if (modelID == canalave_gym_platform_z_direction_nsbmd) {
        if (inPositionB) {
            gymSystem->movementDir = CANALAVE_PLATFORM_MOVE_NORTH;
            gymSystem->destination = sCanalavePlatformPaths[platformIndex].positionA.z * MAP_OBJECT_TILE_SIZE + CANALAVE_XZ_OFFSET;
            gymSystem->platformPositions[platformIndex] = sCanalavePlatformPaths[platformIndex].positionA;
        } else {
            gymSystem->movementDir = CANALAVE_PLATFORM_MOVE_SOUTH;
            gymSystem->destination = sCanalavePlatformPaths[platformIndex].positionB.z * MAP_OBJECT_TILE_SIZE + CANALAVE_XZ_OFFSET;
            gymSystem->platformPositions[platformIndex] = sCanalavePlatformPaths[platformIndex].positionB;
        }

        FieldSystem_CreateTask(gymSystem->fieldSystem, FieldTask_CanalaveGym_MovePlatformNorthSouth, state);
    } else {
        if (inPositionB) {
            gymSystem->movementDir = CANALAVE_PLATFORM_MOVE_DOWN;
            gymSystem->destination = sCanalavePlatformPaths[platformIndex].positionA.y * MAP_OBJECT_TILE_SIZE;
            gymSystem->platformPositions[platformIndex] = sCanalavePlatformPaths[platformIndex].positionA;
            gymSystem->platformCurrentFloors[platformIndex] = sCanalavePlatformPaths[platformIndex].floorA;
        } else {
            gymSystem->movementDir = CANALAVE_PLATFORM_MOVE_UP;
            gymSystem->destination = sCanalavePlatformPaths[platformIndex].positionB.y * MAP_OBJECT_TILE_SIZE;
            gymSystem->platformPositions[platformIndex] = sCanalavePlatformPaths[platformIndex].positionB;
        }

        FieldSystem_CreateTask(gymSystem->fieldSystem, FieldTask_CanalaveGym_MovePlatformUpDown, state);
    }
}

static void CanalaveGym_UpdateVisibleProps(CanalaveGymSystem *gymSystem, const fx32 platformY)
{
    MapProp *floor2 = MapPropManager_GetLoadedProp(gymSystem->fieldSystem->mapPropManager, gymSystem->floor2PropIndex);
    MapProp *floor3 = MapPropManager_GetLoadedProp(gymSystem->fieldSystem->mapPropManager, gymSystem->floor3PropIndex);
    MapProp *floor4 = MapPropManager_GetLoadedProp(gymSystem->fieldSystem->mapPropManager, gymSystem->floor4PropIndex);

    if (platformY >= MAP_OBJECT_TILE_SIZE) {
        MapProp_SetHidden(floor2, FALSE);
        CanalaveGym_UpdatePlatformsVisibility(gymSystem, FALSE, 1);
    } else {
        MapProp_SetHidden(floor2, TRUE);
        CanalaveGym_UpdatePlatformsVisibility(gymSystem, TRUE, 1);
    }

    if (platformY >= MAP_OBJECT_TILE_SIZE * (CANALAVE_DIST_BETWEEN_FLOORS + 1)) {
        MapProp_SetHidden(floor3, FALSE);
        CanalaveGym_UpdatePlatformsVisibility(gymSystem, FALSE, 2);
    } else {
        MapProp_SetHidden(floor3, TRUE);
        CanalaveGym_UpdatePlatformsVisibility(gymSystem, TRUE, 2);
    }

    if (platformY >= MAP_OBJECT_TILE_SIZE * (CANALAVE_DIST_BETWEEN_FLOORS * 2 + 1)) {
        MapProp_SetHidden(floor4, FALSE);
        CanalaveGym_UpdatePlatformsVisibility(gymSystem, FALSE, 3);
    } else {
        MapProp_SetHidden(floor4, TRUE);
        CanalaveGym_UpdatePlatformsVisibility(gymSystem, TRUE, 3);
    }
}

static BOOL FieldTask_CanalaveGym_MovePlatformUpDown(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *state = FieldTask_GetEnv(taskMan);
    CanalaveGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    switch (*state) {
    case 0:
        PlayerAvatar_SetHeightCalculationEnabled(fieldSystem->playerAvatar, FALSE);
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
        (*state)++;
        break;
    case 1: {
        int platformPropID = gymSystem->platformsPropIndices[gymSystem->movingPlatform];
        MapProp *platformProp = MapPropManager_GetLoadedProp(fieldSystem->mapPropManager, platformPropID);

        VecFx32 platformPos;
        platformPos = MapProp_GetPosition(platformProp);

        if (gymSystem->movementDir == CANALAVE_PLATFORM_MOVE_UP) {
            platformPos.y += FX32_CONST(8);

            if (platformPos.y >= gymSystem->destination) {
                platformPos.y = gymSystem->destination;
                gymSystem->platformCurrentFloors[gymSystem->movingPlatform] = sCanalavePlatformPaths[gymSystem->movingPlatform].floorB;
                Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
                (*state)++;
            }
        } else if (gymSystem->movementDir == CANALAVE_PLATFORM_MOVE_DOWN) {
            platformPos.y -= FX32_CONST(8);

            if (platformPos.y <= gymSystem->destination) {
                platformPos.y = gymSystem->destination;
                Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
                (*state)++;
            }
        } else {
            GF_ASSERT(FALSE);
        }

        Player_SetYPos(fieldSystem->playerAvatar, platformPos.y);

        MapProp_SetPosition(platformProp, &platformPos);
        CanalaveGym_UpdateVisibleProps(gymSystem, platformPos.y);
    } break;
    case 2:
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(fieldSystem->playerAvatar, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
        (*state)++;
        break;
    case 3:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

static BOOL FieldTask_CanalaveGym_MovePlatformEastWest(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *state = FieldTask_GetEnv(taskMan);
    CanalaveGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    MapObject *playerObj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);

    switch (*state) {
    case 0:
        if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
            LocalMapObj_SetAnimationCode(playerObj, MOVEMENT_ACTION_PAUSE_ANIMATION);

            Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
            (*state)++;
        }
        break;
    case 1: {
        int platformPropID = gymSystem->platformsPropIndices[gymSystem->movingPlatform];
        MapProp *platformProp = MapPropManager_GetLoadedProp(fieldSystem->mapPropManager, platformPropID);

        VecFx32 platformPos, playerPos;
        platformPos = MapProp_GetPosition(platformProp);
        PlayerAvatar_GetPosPtr(fieldSystem->playerAvatar, &playerPos);
        platformPos.x = playerPos.x;

        if (gymSystem->movementDir == CANALAVE_PLATFORM_MOVE_EAST) {
            if (platformPos.x >= gymSystem->destination) {
                platformPos.x = gymSystem->destination;

                Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
                (*state)++;
            } else {
                if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
                    LocalMapObj_SetAnimationCode(playerObj, MOVEMENT_ACTION_WALK_FASTER_EAST);
                }
            }
        } else if (gymSystem->movementDir == CANALAVE_PLATFORM_MOVE_WEST) {
            if (platformPos.x <= gymSystem->destination) {
                platformPos.x = gymSystem->destination;

                Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
                (*state)++;
            } else {
                if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
                    LocalMapObj_SetAnimationCode(playerObj, MOVEMENT_ACTION_WALK_FASTER_WEST);
                }
            }
        } else {
            GF_ASSERT(FALSE);
        }

        MapProp_SetPosition(platformProp, &platformPos);
    } break;
    case 2:
        if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
            LocalMapObj_SetAnimationCode(playerObj, MOVEMENT_ACTION_RESUME_ANIMATION);
            (*state)++;
        }
    case 3:
        if (LocalMapObj_CheckAnimationFinished(playerObj) == TRUE) {
            sub_020656AC(playerObj);
            Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
            (*state)++;
        }
        break;
    case 4:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

static BOOL FieldTask_CanalaveGym_MovePlatformNorthSouth(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *state = FieldTask_GetEnv(taskMan);
    CanalaveGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    MapObject *playerObj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);

    switch (*state) {
    case 0:
        if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
            LocalMapObj_SetAnimationCode(playerObj, MOVEMENT_ACTION_PAUSE_ANIMATION);

            Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
            (*state)++;
        }
        break;
    case 1: {
        int platformPropID = gymSystem->platformsPropIndices[gymSystem->movingPlatform];
        MapProp *platformProp = MapPropManager_GetLoadedProp(fieldSystem->mapPropManager, platformPropID);

        VecFx32 platformPos, playerPos;
        platformPos = MapProp_GetPosition(platformProp);
        PlayerAvatar_GetPosPtr(fieldSystem->playerAvatar, &playerPos);
        platformPos.z = playerPos.z;

        if (gymSystem->movementDir == CANALAVE_PLATFORM_MOVE_SOUTH) {
            if (platformPos.z >= gymSystem->destination) {
                platformPos.z = gymSystem->destination;

                Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
                (*state)++;
            } else {
                if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
                    LocalMapObj_SetAnimationCode(playerObj, MOVEMENT_ACTION_WALK_FASTER_SOUTH);
                }
            }
        } else if (gymSystem->movementDir == CANALAVE_PLATFORM_MOVE_NORTH) {
            if (platformPos.z <= gymSystem->destination) {
                platformPos.z = gymSystem->destination;

                Sound_StopEffect(SEQ_SE_DP_ELEBETA, 0);
                (*state)++;
            } else {
                if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
                    LocalMapObj_SetAnimationCode(playerObj, MOVEMENT_ACTION_WALK_FASTER_NORTH);
                }
            }
        } else {
            GF_ASSERT(FALSE);
        }

        MapProp_SetPosition(platformProp, &platformPos);
    } break;
    case 2:
        if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
            LocalMapObj_SetAnimationCode(playerObj, MOVEMENT_ACTION_RESUME_ANIMATION);
            (*state)++;
        }
        break;
    case 3: {
        MapObject *playerObj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(playerObj) == TRUE) {
            sub_020656AC(playerObj);
            Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
            (*state)++;
        }
    } break;
    case 4:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

void CanalaveGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    CanalaveGymSystem *gymSystem;
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    CanalaveGymPersistedFeature *feature = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_CANALAVE_GYM);

    fieldSystem->unk_04->dynamicMapFeaturesData = Heap_Alloc(HEAP_ID_FIELD1, sizeof(CanalaveGymSystem));

    gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    gymSystem->fieldSystem = fieldSystem;

    VecFx32 floorPosition = { FX32_CONST(256), 0, FX32_CONST(256) };

    floorPosition.y = MAP_OBJECT_TILE_SIZE * CANALAVE_DIST_BETWEEN_FLOORS;
    gymSystem->floor2PropIndex = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, canalave_gym_second_floor_nsbmd, &floorPosition, NULL, fieldSystem->mapPropAnimMan);

    floorPosition.y = MAP_OBJECT_TILE_SIZE * CANALAVE_DIST_BETWEEN_FLOORS * 2;
    gymSystem->floor3PropIndex = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, canalave_gym_third_floor_nsbmd, &floorPosition, NULL, fieldSystem->mapPropAnimMan);

    floorPosition.y = MAP_OBJECT_TILE_SIZE * CANALAVE_DIST_BETWEEN_FLOORS * 3;
    gymSystem->floor4PropIndex = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, canalave_gym_fourth_floor_nsbmd, &floorPosition, NULL, fieldSystem->mapPropAnimMan);

    VecFx32 platformPosition;
    for (int i = 0; i < CANALAVE_GYM_NUM_PLATFORMS; i++) {
        if (CanalaveGym_CheckIfPlatformInPositionB(i, feature->platformStates)) {
            platformPosition.x = MAP_OBJECT_TILE_SIZE * sCanalavePlatformPaths[i].positionB.x;
            platformPosition.y = MAP_OBJECT_TILE_SIZE * sCanalavePlatformPaths[i].positionB.y;
            platformPosition.z = MAP_OBJECT_TILE_SIZE * sCanalavePlatformPaths[i].positionB.z;

            gymSystem->platformPositions[i] = sCanalavePlatformPaths[i].positionB;
            gymSystem->platformCurrentFloors[i] = sCanalavePlatformPaths[i].floorB;
        } else {
            platformPosition.x = MAP_OBJECT_TILE_SIZE * sCanalavePlatformPaths[i].positionA.x;
            platformPosition.y = MAP_OBJECT_TILE_SIZE * sCanalavePlatformPaths[i].positionA.y;
            platformPosition.z = MAP_OBJECT_TILE_SIZE * sCanalavePlatformPaths[i].positionA.z;

            gymSystem->platformPositions[i] = sCanalavePlatformPaths[i].positionA;
            gymSystem->platformCurrentFloors[i] = sCanalavePlatformPaths[i].floorA;
        }

        platformPosition.x += CANALAVE_XZ_OFFSET;
        platformPosition.z += CANALAVE_XZ_OFFSET;

        gymSystem->platformsPropIndices[i] = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, sCanalavePlatformPaths[i].modelID, &platformPosition, NULL, fieldSystem->mapPropAnimMan);
        gymSystem->platformModelIDs[i] = sCanalavePlatformPaths[i].modelID;
    }

    VecFx32 playerPos;
    PlayerAvatar_GetPosPtr(fieldSystem->playerAvatar, &playerPos);
    CanalaveGym_UpdateVisibleProps(gymSystem, playerPos.y);

    Camera_SetClipping(FX32_CONST(100), FX32_CONST(1700), fieldSystem->camera);

    FogManager_ApplyParameters(fieldSystem->fogMan, 0xffffffff, TRUE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x0200, 0x76a0);
    FogManager_ApplyColor(fieldSystem->fogMan, 0xffffffff, COLOR_BLACK, 0);

    char fogTable[G3X_FOG_DENSITY_TABLE_SIZE];
    for (int i = 0; i < G3X_FOG_DENSITY_TABLE_SIZE; i++) {
        fogTable[i] = i * 2;
    }

    FogManager_ApplyDensityTable(fieldSystem->fogMan, fogTable);
}

BOOL CanalaveGym_CheckIfPlayerOnPlatform(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    if (PersistedMapFeatures_GetID(mapFeatures) != DYNAMIC_MAP_FEATURES_CANALAVE_GYM) {
        return FALSE;
    }

    CanalaveGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    if (gymSystem == NULL) {
        return FALSE;
    }

    u8 platformIndex = CanalaveGym_GetPlaformPlayerIsOn(gymSystem);
    if (platformIndex != CANALAVE_GYM_NUM_PLATFORMS) {
        CanalaveGym_MovePlatform(gymSystem, platformIndex);
        return TRUE;
    }

    return FALSE;
}

void CanalaveGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    CanalaveGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    Heap_Free(gymSystem);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL CanalaveGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{

    u8 floor = height / MAP_OBJECT_TILE_SIZE / CANALAVE_DIST_BETWEEN_FLOORS;
    GF_ASSERT(floor <= 3);

    const u8 *collisionMap = sCanalaveGymCollisionMaps[floor];
    int index = tileX + tileZ * MAP_TILES_COUNT_X;

    GF_ASSERT(index < MAP_TILES_COUNT_X * MAP_TILES_COUNT_Z);
    *isColliding = collisionMap[index];

    return TRUE;
}

static const SunyshoreGymGearSetup sSunyshoreRoom1Gears[SUNYSHORE_ROOM_1_NUM_GEARS] = {
    {
        .modelID = sunyshore_gear_L_nsbmd,
        .x = 3,
        .y = 0,
        .z = 8,
        .initialRotation = 1,
        .turnsClockwise = FALSE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_L_alt_nsbmd,
        .x = 8,
        .y = 0,
        .z = 8,
        .initialRotation = 2,
        .turnsClockwise = TRUE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_L_nsbmd,
        .x = 13,
        .y = 0,
        .z = 8,
        .initialRotation = 0,
        .turnsClockwise = FALSE,
        .isVertical = FALSE,
    }
};

static const SunyshoreGymGearSetup sSunyshoreRoom2Gears[SUNYSHORE_ROOM_2_NUM_GEARS] = {
    {
        .modelID = sunyshore_gear_L_nsbmd,
        .x = 6,
        .y = 0,
        .z = 8,
        .initialRotation = 1,
        .turnsClockwise = FALSE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_dead_end_nsbmd,
        .x = 11,
        .y = 0,
        .z = 8,
        .initialRotation = 3,
        .turnsClockwise = TRUE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_vertical_nsbmd,
        .x = 15,
        .y = 3,
        .z = 8,
        .initialRotation = 1,
        .turnsClockwise = TRUE,
        .isVertical = TRUE,
    },
    {
        .modelID = sunyshore_gear_vertical_nsbmd,
        .x = 2,
        .y = 3,
        .z = 13,
        .initialRotation = 1,
        .turnsClockwise = FALSE,
        .isVertical = TRUE,
    },
    {
        .modelID = sunyshore_gear_dead_end_nsbmd,
        .x = 6,
        .y = 0,
        .z = 13,
        .initialRotation = 2,
        .turnsClockwise = TRUE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_T_nsbmd,
        .x = 11,
        .y = 0,
        .z = 13,
        .initialRotation = 2,
        .turnsClockwise = FALSE,
        .isVertical = FALSE,
    }
};

static const SunyshoreGymGearSetup sSunyshoreRoom3Gears[SUNYSHORE_ROOM_3_NUM_GEARS] = {
    {
        .modelID = sunyshore_gear_T_nsbmd,
        .x = 6,
        .y = 6,
        .z = 8,
        .initialRotation = 1,
        .turnsClockwise = FALSE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_L_alt_nsbmd,
        .x = 11,
        .y = 6,
        .z = 8,
        .initialRotation = 0,
        .turnsClockwise = TRUE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_T_alt_nsbmd,
        .x = 16,
        .y = 6,
        .z = 8,
        .initialRotation = 0,
        .turnsClockwise = FALSE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_vertical_nsbmd,
        .x = 2,
        .y = 3,
        .z = 13,
        .initialRotation = 0,
        .turnsClockwise = TRUE,
        .isVertical = TRUE,
    },
    {
        .modelID = sunyshore_gear_L_alt_nsbmd,
        .x = 6,
        .y = 6,
        .z = 13,
        .initialRotation = 1,
        .turnsClockwise = TRUE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_T_nsbmd,
        .x = 11,
        .y = 6,
        .z = 13,
        .initialRotation = 3,
        .turnsClockwise = FALSE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_T_alt_nsbmd,
        .x = 16,
        .y = 6,
        .z = 13,
        .initialRotation = 3,
        .turnsClockwise = TRUE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_vertical_nsbmd,
        .x = 20,
        .y = 3,
        .z = 13,
        .initialRotation = 1,
        .turnsClockwise = FALSE,
        .isVertical = TRUE,
    },
    {
        .modelID = sunyshore_gear_vertical_alt_nsbmd,
        .x = 2,
        .y = 3,
        .z = 18,
        .initialRotation = 0,
        .turnsClockwise = FALSE,
        .isVertical = TRUE,
    },
    {
        .modelID = sunyshore_gear_L_nsbmd,
        .x = 6,
        .y = 0,
        .z = 18,
        .initialRotation = 1,
        .turnsClockwise = TRUE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_T_alt_nsbmd,
        .x = 11,
        .y = 0,
        .z = 18,
        .initialRotation = 3,
        .turnsClockwise = FALSE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_T_nsbmd,
        .x = 16,
        .y = 0,
        .z = 18,
        .initialRotation = 0,
        .turnsClockwise = TRUE,
        .isVertical = FALSE,
    },
    {
        .modelID = sunyshore_gear_vertical_alt_nsbmd,
        .x = 20,
        .y = 3,
        .z = 18,
        .initialRotation = 1,
        .turnsClockwise = TRUE,
        .isVertical = TRUE,
    }
};

static const SunyshoreGymGearSetup *const sSunyshoreRoomGears[SUNYSHORE_GYM_NUM_ROOMS] = {
    sSunyshoreRoom1Gears,
    sSunyshoreRoom2Gears,
    sSunyshoreRoom3Gears
};

static const SunyshoreGymCollisionRegion sSunyshoreRoom1CollisionRegions[12] = {
    { .x = 1, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 3, .z = 6, .sizeX = 1, .sizeZ = 2 },
    { .x = 4, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 3, .z = 9, .sizeX = 1, .sizeZ = 2 },
    { .x = 6, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 8, .z = 6, .sizeX = 1, .sizeZ = 2 },
    { .x = 9, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 8, .z = 9, .sizeX = 1, .sizeZ = 2 },
    { .x = 11, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 13, .z = 6, .sizeX = 1, .sizeZ = 2 },
    { .x = 14, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 13, .z = 9, .sizeX = 1, .sizeZ = 2 }
};

static const SunyshoreGymCollisionRegion sSunyshoreRoom2CollisionRegions[18] = {
    { .x = 4, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 6, .sizeX = 1, .sizeZ = 2 },
    { .x = 7, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 9, .sizeX = 1, .sizeZ = 2 },
    { .x = 9, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 6, .sizeX = 1, .sizeZ = 2 },
    { .x = 12, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 9, .sizeX = 1, .sizeZ = 2 },
    { .x = 15, .z = 6, .sizeX = 1, .sizeZ = 5 },
    { .x = 2, .z = 11, .sizeX = 1, .sizeZ = 5 },
    { .x = 4, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 11, .sizeX = 1, .sizeZ = 2 },
    { .x = 7, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 14, .sizeX = 1, .sizeZ = 2 },
    { .x = 9, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 11, .sizeX = 1, .sizeZ = 2 },
    { .x = 12, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 14, .sizeX = 1, .sizeZ = 2 }
};

static const SunyshoreGymCollisionRegion sSunyshoreRoom3CollisionRegions[40] = {
    { .x = 4, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 6, .sizeX = 1, .sizeZ = 2 },
    { .x = 7, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 9, .sizeX = 1, .sizeZ = 2 },
    { .x = 9, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 6, .sizeX = 1, .sizeZ = 2 },
    { .x = 12, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 9, .sizeX = 1, .sizeZ = 2 },
    { .x = 14, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 16, .z = 6, .sizeX = 1, .sizeZ = 2 },
    { .x = 17, .z = 8, .sizeX = 2, .sizeZ = 1 },
    { .x = 16, .z = 9, .sizeX = 1, .sizeZ = 2 },
    { .x = 2, .z = 11, .sizeX = 1, .sizeZ = 5 },
    { .x = 4, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 11, .sizeX = 1, .sizeZ = 2 },
    { .x = 7, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 14, .sizeX = 1, .sizeZ = 2 },
    { .x = 9, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 11, .sizeX = 1, .sizeZ = 2 },
    { .x = 12, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 14, .sizeX = 1, .sizeZ = 2 },
    { .x = 14, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 16, .z = 11, .sizeX = 1, .sizeZ = 2 },
    { .x = 17, .z = 13, .sizeX = 2, .sizeZ = 1 },
    { .x = 16, .z = 14, .sizeX = 1, .sizeZ = 2 },
    { .x = 20, .z = 11, .sizeX = 1, .sizeZ = 5 },
    { .x = 2, .z = 16, .sizeX = 1, .sizeZ = 5 },
    { .x = 4, .z = 18, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 16, .sizeX = 1, .sizeZ = 2 },
    { .x = 7, .z = 18, .sizeX = 2, .sizeZ = 1 },
    { .x = 6, .z = 19, .sizeX = 1, .sizeZ = 2 },
    { .x = 9, .z = 18, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 16, .sizeX = 1, .sizeZ = 2 },
    { .x = 12, .z = 18, .sizeX = 2, .sizeZ = 1 },
    { .x = 11, .z = 19, .sizeX = 1, .sizeZ = 2 },
    { .x = 14, .z = 18, .sizeX = 2, .sizeZ = 1 },
    { .x = 16, .z = 16, .sizeX = 1, .sizeZ = 2 },
    { .x = 17, .z = 18, .sizeX = 2, .sizeZ = 1 },
    { .x = 16, .z = 19, .sizeX = 1, .sizeZ = 2 },
    { .x = 20, .z = 16, .sizeX = 1, .sizeZ = 5 }
};

static const SunyshoreGymCollisionRegion *const sSunyshoreCollisionRegions[SUNYSHORE_GYM_NUM_ROOMS] = {
    sSunyshoreRoom1CollisionRegions,
    sSunyshoreRoom2CollisionRegions,
    sSunyshoreRoom3CollisionRegions
};

static const u8 sSunyshoreRoom1State0Collisions[] = {
    1, 2, 4, 5, 10, 11
};

static const u8 sSunyshoreRoom1State1Collisions[] = {
    0, 1, 5, 6, 9, 10
};

static const u8 sSunyshoreRoom1State2Collisions[] = {
    0, 3, 6, 7, 8, 9
};

static const u8 sSunyshoreRoom1State3Collisions[] = {
    2, 3, 4, 7, 8, 11
};

static const u8 sSunyshoreRoom2State0Collisions[] = {
    1, 2, 4, 5, 7, 8, 9, 10, 11, 12, 15
};

static const u8 sSunyshoreRoom2State1Collisions[] = {
    0, 1, 4, 5, 6, 11, 12, 13, 14, 0, 0
};

static const u8 sSunyshoreRoom2State2Collisions[] = {
    0, 3, 5, 6, 7, 8, 9, 10, 12, 13, 17
};

static const u8 sSunyshoreRoom2State3Collisions[] = {
    2, 3, 4, 6, 7, 10, 11, 13, 16, 2, 2
};

static const u8 sSunyshoreRoom3State0Collisions[] = {
    2, 6, 7, 11, 14, 15, 17, 21, 25, 28, 29, 31, 38, 39
};

static const u8 sSunyshoreRoom3State1Collisions[] = {
    1, 4, 7, 10, 12, 15, 16, 20, 22, 26, 29, 30, 34, 35
};

static const u8 sSunyshoreRoom3State2Collisions[] = {
    0, 4, 5, 9, 13, 16, 19, 23, 25, 27, 30, 33, 36, 39
};

static const u8 sSunyshoreRoom3State3Collisions[] = {
    3, 5, 6, 8, 12, 13, 14, 18, 24, 26, 27, 28, 32, 37
};

static struct {
    int numRegions;
    const u8 *regionsList[SUNYSHORE_NUM_ROTATION_STATES];
} sSunyshoreCollisionLists[SUNYSHORE_GYM_NUM_ROOMS] = {
    {
        .numRegions = 6,
        .regionsList = {
            sSunyshoreRoom1State0Collisions,
            sSunyshoreRoom1State1Collisions,
            sSunyshoreRoom1State2Collisions,
            sSunyshoreRoom1State3Collisions,
        },
    },
    {
        .numRegions = 11,
        .regionsList = {
            sSunyshoreRoom2State0Collisions,
            sSunyshoreRoom2State1Collisions,
            sSunyshoreRoom2State2Collisions,
            sSunyshoreRoom2State3Collisions,
        },
    },
    {
        .numRegions = 14,
        .regionsList = {
            sSunyshoreRoom3State0Collisions,
            sSunyshoreRoom3State1Collisions,
            sSunyshoreRoom3State2Collisions,
            sSunyshoreRoom3State3Collisions,
        },
    },
};

static u8 SunyshoreGym_GetNumberOfGearsInRoom(const u8 roomID)
{
    u8 numGears;
    switch (roomID) {
    case 0:
        numGears = SUNYSHORE_ROOM_1_NUM_GEARS;
        break;
    case 1:
        numGears = SUNYSHORE_ROOM_2_NUM_GEARS;
        break;
    case 2:
        numGears = SUNYSHORE_ROOM_3_NUM_GEARS;
        break;
    default:
        GF_ASSERT(FALSE);
        numGears = 0;
    }

    return numGears;
}

static void SunyshoreGym_SetGearRotation(const SunyshoreGymGearSetup *gearSetup, const u8 rotationState, VecFx32 *rotation)
{
    fx32 *currentAngle = NULL;
    switch (gearSetup->isVertical) {
    case FALSE:
        currentAngle = &rotation->y;
        break;
    case TRUE:
        currentAngle = &rotation->x;
        break;
    default:
        GF_ASSERT(FALSE);
    }

    fx16 newAngle = 0;
    GF_ASSERT(gearSetup->initialRotation <= SUNYSHORE_NUM_ROTATION_STATES - 1);

    newAngle += SUNYSHORE_90_DEGREES_ROTATION * gearSetup->initialRotation;
    GF_ASSERT(rotationState <= SUNYSHORE_NUM_ROTATION_STATES - 1);

    fx16 angleChange = SUNYSHORE_90_DEGREES_ROTATION * rotationState;

    if (gearSetup->turnsClockwise == FALSE) {
        newAngle += angleChange;
    } else if (gearSetup->turnsClockwise == TRUE) {
        newAngle -= angleChange;
    } else {
        GF_ASSERT(FALSE);
    }

    *currentAngle = newAngle;
}

void SunyshoreGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    SunyshoreGymSystem *gymSystem;
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    SunyshoreGymPersistedFeatures *features = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_SUNYSHORE_GYM);

    fieldSystem->unk_04->dynamicMapFeaturesData = Heap_Alloc(HEAP_ID_FIELD1, sizeof(SunyshoreGymSystem));
    gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    gymSystem->roomID = features->roomID;
    gymSystem->rotationState = features->rotationState;

    u8 numGears = SunyshoreGym_GetNumberOfGearsInRoom(features->roomID);
    for (int i = 0; i < numGears; i++) {
        const SunyshoreGymGearSetup *gearSetups = sSunyshoreRoomGears[features->roomID];

        VecFx32 gearPosition;
        gearPosition.x = gearSetups[i].x * MAP_OBJECT_TILE_SIZE;
        gearPosition.y = gearSetups[i].y * MAP_OBJECT_TILE_SIZE;
        gearPosition.z = gearSetups[i].z * MAP_OBJECT_TILE_SIZE;

        gearPosition.x += SUNYSHORE_PROP_OFFSET;
        gearPosition.z += SUNYSHORE_PROP_OFFSET;

        if (gearSetups[i].isVertical == TRUE) {
            gearPosition.y += SUNYSHORE_PROP_OFFSET;
        }

        VecFx32 gearRotation;
        gearRotation.x = 0;
        gearRotation.y = 0;
        gearRotation.z = 0;
        SunyshoreGym_SetGearRotation(&gearSetups[i], features->rotationState, &gearRotation);

        gymSystem->propIndices[i] = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, gearSetups[i].modelID, &gearPosition, &gearRotation, fieldSystem->mapPropAnimMan);
    }
}

void SunyshoreGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    SunyshoreGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    Heap_Free(gymSystem);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL SunyshoreGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    SunyshoreGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    int numRegions = sSunyshoreCollisionLists[gymSystem->roomID].numRegions;
    int rotationState = gymSystem->rotationState;
    u8 const *collisionList = sSunyshoreCollisionLists[gymSystem->roomID].regionsList[rotationState];
    SunyshoreGymCollisionRegion const *collisionRegions = sSunyshoreCollisionRegions[gymSystem->roomID];

    for (int i = 0; i < numRegions; i++) {
        u8 region = collisionList[i];

        if (collisionRegions[region].x <= tileX && tileX < collisionRegions[region].x + collisionRegions[region].sizeX && collisionRegions[region].z <= tileZ && tileZ < collisionRegions[region].z + collisionRegions[region].sizeZ) {
            *isColliding = TRUE;
            return TRUE;
        }
    }

    return FALSE;
}

void SunyshoreGym_PressButton(FieldSystem *fieldSystem, const u8 buttonType)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    SunyshoreGymPersistedFeatures *feature = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_SUNYSHORE_GYM);
    SunyshoreGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    int *state = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(int));
    *state = 0;

    gymSystem->buttonType = buttonType;
    gymSystem->rotationProgress = 0;
    gymSystem->numGears = SunyshoreGym_GetNumberOfGearsInRoom(feature->roomID);
    s8 rotationState = feature->rotationState;

    if (buttonType == SUNYSHORE_GYM_BUTTON_NORMAL) {
        gymSystem->rotationGoal = SUNYSHORE_90_DEGREES_ROTATION;
        rotationState = (rotationState + 1) % SUNYSHORE_NUM_ROTATION_STATES;
    } else if (buttonType == SUNYSHORE_GYM_BUTTON_REVERSE) {
        gymSystem->rotationGoal = SUNYSHORE_90_DEGREES_ROTATION;
        rotationState--;

        if (rotationState < 0) {
            rotationState = SUNYSHORE_NUM_ROTATION_STATES - 1;
        }
    } else if (buttonType == SUNYSHORE_GYM_BUTTON_DOUBLE) {
        gymSystem->rotationGoal = SUNYSHORE_180_DEGREES_ROTATION;
        rotationState = (rotationState + 2) % SUNYSHORE_NUM_ROTATION_STATES;
    } else {
        GF_ASSERT(FALSE);
        return;
    }

    feature->rotationState = rotationState;
    gymSystem->rotationState = rotationState;

    Sound_PlayEffect(SEQ_SE_DP_GAGAGA);
    FieldTask_InitCall(fieldSystem->task, FieldTask_SunyshoreGym_RotateGears, state);
}

static BOOL FieldTask_SunyshoreGym_RotateGears(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    int *state = FieldTask_GetEnv(task);
    SunyshoreGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    switch (*state) {
    case 0: {
        u16 rotationStep;
        if (gymSystem->rotationProgress + SUNYSHORE_ROTATION_STEP <= gymSystem->rotationGoal) {
            rotationStep = SUNYSHORE_ROTATION_STEP;
        } else {
            rotationStep = gymSystem->rotationProgress + SUNYSHORE_ROTATION_STEP - gymSystem->rotationGoal;
        }

        gymSystem->rotationProgress += rotationStep;

        if (gymSystem->buttonType == SUNYSHORE_GYM_BUTTON_REVERSE) {
            rotationStep = -rotationStep;
        }

        for (u8 i = 0; i < gymSystem->numGears; i++) {
            int propIndex = gymSystem->propIndices[i];
            MapProp *gearProp = MapPropManager_GetLoadedProp(fieldSystem->mapPropManager, propIndex);
            VecFx32 *currentOrientation = MapProp_GetRotation(gearProp);

            const SunyshoreGymGearSetup *gearSetups = sSunyshoreRoomGears[gymSystem->roomID];

            u16 angleChange;
            if (gearSetups[i].turnsClockwise == TRUE) {
                angleChange = -rotationStep;
            } else {
                angleChange = rotationStep;
            }

            fx32 *currentAngle;
            switch (gearSetups[i].isVertical) {
            case 0:
                currentAngle = &currentOrientation->y;
                break;
            case 1:
                currentAngle = &currentOrientation->x;
                break;
            default:
                GF_ASSERT(FALSE);
            }

            u16 newAngle = *currentAngle;
            newAngle += angleChange;
            *currentAngle = newAngle;
        }

        if (gymSystem->rotationProgress >= gymSystem->rotationGoal) {
            (*state)++;
        }
    } break;
    case 1:
        Heap_Free(state);
        return TRUE;
    }

    return FALSE;
}

static const u32 sEternaGymClockModelIds[2] = {
    eterna_gym_model_clock_hour_hand_nsbmd,
    eterna_gym_model_clock_minute_hand_nsbmd
};

static const VecFx32 sEternaGymClockHandsCenter[2] = {
    {
        MAP_OBJECT_COORD_CENTER_TO_FX32(ETERNA_CLOCK_CENTER_X),
        FX32_ONE * 12,
        MAP_OBJECT_COORD_CENTER_TO_FX32(ETERNA_CLOCK_CENTER_Z),
    },
    {
        MAP_OBJECT_COORD_CENTER_TO_FX32(ETERNA_CLOCK_CENTER_X),
        FX32_ONE * 13,
        MAP_OBJECT_COORD_CENTER_TO_FX32(ETERNA_CLOCK_CENTER_Z),
    }
};

static const u16 sEternaGymRotationForHour[12] = {
    0,
    ETERNA_GYM_ONE_HOUR_ROTATION,
    ETERNA_GYM_ONE_HOUR_ROTATION * 2,
    ETERNA_GYM_MAX_ROTATION / 4,
    ETERNA_GYM_ONE_HOUR_ROTATION * 4,
    ETERNA_GYM_ONE_HOUR_ROTATION * 5,
    ETERNA_GYM_MAX_ROTATION / 2,
    ETERNA_GYM_ONE_HOUR_ROTATION * 7,
    ETERNA_GYM_ONE_HOUR_ROTATION * 8,
    ETERNA_GYM_MAX_ROTATION * 3 / 4,
    ETERNA_GYM_ONE_HOUR_ROTATION * 10,
    ETERNA_GYM_ONE_HOUR_ROTATION * 11,
};

static const EternaGymClockTime sEternaGymClockTimes[ETERNA_CLOCK_MAX] = {
    [ETERNA_CLOCK_INITIAL] = {
        .hour = 7,
        .minute = 25,
    },
    [ETERNA_CLOCK_DEFEATED_FIRST_TRAINER] = {
        .hour = 6,
        .minute = 15,
    },
    [ETERNA_CLOCK_DEFEATED_SECOND_TRAINER] = {
        .hour = 9,
        .minute = 15,
    },
    [ETERNA_CLOCK_DEFEATED_THIRD_TRAINER] = {
        .hour = 0,
        .minute = 45,
    },
    [ETERNA_CLOCK_DEFEATED_GYM_LEADER] = {
        .hour = 0,
        .minute = 30,
    }
};

static const EternaClockHourHandJumpTile sEternaGymHourHandJumpTiles[ETERNA_CLOCK_MAX] = {
    [ETERNA_CLOCK_INITIAL] = ETERNA_CLOCK_NO_HOUR_HAND_JUMP,
    [ETERNA_CLOCK_DEFEATED_FIRST_TRAINER] = {
        .x = 11,
        .z = 18,
        .isJumpAxisNorthSouth = TRUE,
    },
    [ETERNA_CLOCK_DEFEATED_SECOND_TRAINER] = {
        .x = 6,
        .z = 13,
        .isJumpAxisNorthSouth = FALSE,
    },
    [ETERNA_CLOCK_DEFEATED_THIRD_TRAINER] = {
        .x = 11,
        .z = 8,
        .isJumpAxisNorthSouth = TRUE,
    },
    [ETERNA_CLOCK_DEFEATED_GYM_LEADER] = {
        .x = 11,
        .z = 8,
        .isJumpAxisNorthSouth = TRUE,
    }
};

// clang-format off
static ALIGN_4 const u8 sEternaGymClockCollision[ETERNA_CLOCK_MAX][ETERNA_CLOCK_DIAMETER * ETERNA_CLOCK_DIAMETER] = {
    [ETERNA_CLOCK_INITIAL] = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
    },
    [ETERNA_CLOCK_DEFEATED_FIRST_TRAINER] = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
    },
    [ETERNA_CLOCK_DEFEATED_SECOND_TRAINER] =  {
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
    },
    [ETERNA_CLOCK_DEFEATED_THIRD_TRAINER] = {
        0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
    },
    [ETERNA_CLOCK_DEFEATED_GYM_LEADER] = {
        0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
        0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0,
    },
};
// clang-format on

static const u8 sEternaGymFountainCollision[ETERNA_CLOCK_MAX][ETERNA_GYM_WIDTH] = {
    [ETERNA_CLOCK_INITIAL] = { 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1 },
    [ETERNA_CLOCK_DEFEATED_FIRST_TRAINER] = { 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1 },
    [ETERNA_CLOCK_DEFEATED_SECOND_TRAINER] = { 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    [ETERNA_CLOCK_DEFEATED_THIRD_TRAINER] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    [ETERNA_CLOCK_DEFEATED_GYM_LEADER] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
};

static void SetEternaGymFlowerClockState(FieldSystem *fieldSystem, u16 state)
{
    SystemVars_SetEternaGymFlowerClockState(SaveData_GetVarsFlags(fieldSystem->saveData), state);
}

static u32 GetEternaGymFlowerClockState(FieldSystem *fieldSystem)
{
    return SystemVars_GetEternaGymFlowerClockState(SaveData_GetVarsFlags(fieldSystem->saveData));
}

static void EternaGym_IncrementClockTime(EternaGymSystem *gymSystem, fx32 step)
{
    gymSystem->fxMinute += step;

    while (gymSystem->fxMinute >= FX32_CONST(60)) {
        gymSystem->fxMinute -= FX32_CONST(60);
        gymSystem->fxHour += FX32_ONE;
    }

    while (gymSystem->fxMinute < 0) {
        gymSystem->fxMinute += FX32_CONST(60);
        gymSystem->fxHour += FX32_ONE;
    }

    gymSystem->fxHour %= FX32_CONST(12);
}

static void EternaGym_UpdateHandPropRotation(EternaGymClockHand *clockHand)
{
    VecFx32 *prop = MapProp_GetRotation(clockHand->prop);

    prop->x = clockHand->rotation.x;
    prop->y = (ETERNA_GYM_MAX_ROTATION - clockHand->rotation.y) % ETERNA_GYM_MAX_ROTATION;
    prop->z = clockHand->rotation.z;
}

static void EternaGym_UpdateClockHandPositions(EternaGymSystem *gymSystem)
{
    int hour, minute;
    EternaGymClockHand *minuteHand = &gymSystem->clockHands[1];
    minute = gymSystem->fxMinute / FX32_ONE;

    if (minute % 15 == 0) {
        minuteHand->rotation.y = sEternaGymRotationForHour[minute / 5];
    } else {
        minuteHand->rotation.y = minute * (DEG_TO_IDX(6) + 1);
    }

    minuteHand->rotation.y += -F32_DEG_TO_IDX(90);
    minuteHand->rotation.y %= ETERNA_GYM_MAX_ROTATION;

    EternaGym_UpdateHandPropRotation(minuteHand);

    hour = gymSystem->fxHour / FX32_ONE;

    EternaGymClockHand *hourHand = &gymSystem->clockHands[0];
    hourHand->rotation.y = sEternaGymRotationForHour[hour];

    if (gymSystem->rotateHourHand == TRUE) {
        hourHand->rotation.y += ((5 * (DEG_TO_IDX(6) + 1)) / 60) * minute;
    }

    hourHand->rotation.y += F32_DEG_TO_IDX(180);
    hourHand->rotation.y %= ETERNA_GYM_MAX_ROTATION;

    EternaGym_UpdateHandPropRotation(hourHand);
}

void EternaGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    EternaGymClockPersistedFeature *eternaClockPersisted = PersistedMapFeatures_GetBuffer(persistedFeatures, DYNAMIC_MAP_FEATURES_ETERNA_GYM);
    EternaGymSystem *gymSystem = Heap_Alloc(HEAP_ID_FIELD1, sizeof(EternaGymSystem));

    memset(gymSystem, 0, sizeof(EternaGymSystem));
    fieldSystem->unk_04->dynamicMapFeaturesData = gymSystem;

    gymSystem->fieldSystem = fieldSystem;

    EternaGymClockHand *clockHands = gymSystem->clockHands;
    const u32 *modelId = sEternaGymClockModelIds;
    const VecFx32 *position = sEternaGymClockHandsCenter;
    const VecFx32 rotation = { 0, 0, 0 };

    for (int i = 0; i < 2; i++, clockHands++, modelId++, position++) {
        clockHands->dummyModelID = *modelId;

        clockHands->propIndex = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, *modelId, position, &rotation, fieldSystem->mapPropAnimMan);
        clockHands->prop = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, *modelId);
    }

    int v8[3] = { 2, 2, 0 };

    eternaClockPersisted->state = GetEternaGymFlowerClockState(fieldSystem);

    const EternaGymClockTime *clockTime = &sEternaGymClockTimes[eternaClockPersisted->state];

    gymSystem->fxHour = FX32_ONE * clockTime->hour;
    gymSystem->fxMinute = FX32_ONE * clockTime->minute;

    EternaGym_UpdateClockHandPositions(gymSystem);

    if (eternaClockPersisted->state < ETERNA_CLOCK_DEFEATED_THIRD_TRAINER) {
        ov5_021F4098(fieldSystem, v8[eternaClockPersisted->state]);
    }
}

void EternaGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    EternaGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    Heap_Free(gymSystem);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL EternaGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *outIsColliding)
{
    int localX, accumulatedLocalZ;
    PersistedMapFeatures *persistedFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    EternaGymClockPersistedFeature *eternaClockPersisted = PersistedMapFeatures_GetBuffer(persistedFeatures, DYNAMIC_MAP_FEATURES_ETERNA_GYM);
    int clockState = eternaClockPersisted->state;
    BOOL isColliding = FALSE;

    *outIsColliding = FALSE;

    if (tileZ >= ETERNA_CLOCK_TOP_BOUND && tileZ <= ETERNA_CLOCK_BOTTOM_BOUND && tileX >= ETERNA_CLOCK_LEFT_BOUND && tileX <= ETERNA_CLOCK_RIGHT_BOUND) {
        localX = tileX - ETERNA_CLOCK_LEFT_BOUND;
        accumulatedLocalZ = (tileZ - ETERNA_CLOCK_TOP_BOUND) * ETERNA_CLOCK_DIAMETER;
        isColliding = sEternaGymClockCollision[clockState][accumulatedLocalZ + localX];
        *outIsColliding = isColliding;
    }

    if (isColliding == FALSE && tileZ >= ETERNA_GYM_FOUNTAIN_Z && tileZ <= ETERNA_GYM_FOUNTAIN_Z && tileX >= 1 && tileX <= ETERNA_GYM_WIDTH) {
        localX = tileX - 1;
        accumulatedLocalZ = (tileZ - ETERNA_GYM_FOUNTAIN_Z) * ETERNA_GYM_WIDTH; // tileZ is guaranteed to be equal to ETERNA_GYM_FOUNTAIN_Z, so this is always equivalent to 0
        isColliding = sEternaGymFountainCollision[clockState][accumulatedLocalZ + localX];
        *outIsColliding = isColliding;
    }

    return isColliding;
}

static void EternaGym_SetupCameraMoveAwayFromPlayer(FieldSystem *fieldSystem, EternaGymCameraManager *cameraMan, int destX, int destZ)
{
    int playerX = PlayerAvatar_GetXPos(fieldSystem->playerAvatar);
    int playerZ = PlayerAvatar_GetZPos(fieldSystem->playerAvatar);

    cameraMan->startX = playerX;
    cameraMan->startZ = playerZ;
    cameraMan->destX = destX;
    cameraMan->destZ = destZ;

    if (cameraMan->destX - cameraMan->startX < 0) {
        cameraMan->movementDirX = DIR_WEST;
    } else {
        cameraMan->movementDirX = DIR_EAST;
    }

    if (cameraMan->destZ - cameraMan->startZ < 0) {
        cameraMan->movementDirZ = DIR_NORTH;
    } else {
        cameraMan->movementDirZ = DIR_SOUTH;
    }

    int distX = cameraMan->destX - cameraMan->startX;

    if (distX < 0) {
        distX = -distX;
    }

    int distZ = cameraMan->destZ - cameraMan->startZ;

    if (distZ < 0) {
        distZ = -distZ;
    }

    if (distX < distZ) {
        cameraMan->moveXFirst = TRUE;
    }

    cameraMan->cameraObj = MapObjectMan_AddMapObject(fieldSystem->mapObjMan, playerX, playerZ, 0, OBJ_EVENT_GFX_INVISIBLE, 0x0, fieldSystem->location->mapId);

    MapObject_RecalculateObjectHeight(cameraMan->cameraObj);
    MapObject_SetHidden(cameraMan->cameraObj, TRUE);
    sub_02062D80(cameraMan->cameraObj, FALSE);
    MapObject_SetHeightCalculationDisabled(cameraMan->cameraObj, TRUE);

    const VecFx32 *cameraPos = MapObject_GetPos(cameraMan->cameraObj);
    LandDataManager_TrackTarget(cameraPos, fieldSystem->landDataMan);
    Camera_TrackTarget(cameraPos, fieldSystem->camera);
}

static void EternaGym_SetupCameraMoveFromLastPosition(EternaGymCameraManager *cameraMan, int destX, int destZ)
{
    cameraMan->startX = cameraMan->destX;
    cameraMan->startZ = cameraMan->destZ;
    cameraMan->destX = destX;
    cameraMan->destZ = destZ;

    if (cameraMan->destX - cameraMan->startX < 0) {
        cameraMan->movementDirX = DIR_WEST;
    } else {
        cameraMan->movementDirX = DIR_EAST;
    }

    if (cameraMan->destZ - cameraMan->startZ < 0) {
        cameraMan->movementDirZ = DIR_NORTH;
    } else {
        cameraMan->movementDirZ = DIR_SOUTH;
    }

    int distX = cameraMan->destX - cameraMan->startX;

    if (distX < 0) {
        distX = -distX;
    }

    int distZ = cameraMan->destZ - cameraMan->startZ;

    if (distZ < 0) {
        distZ = -distZ;
    }

    if (distX < distZ) {
        cameraMan->moveXFirst = TRUE;
    }
}

static void EternaGym_SetupCameraMoveReverseOfLast(EternaGymCameraManager *cameraMan)
{
    cameraMan->moveXFirst ^= 1;
    cameraMan->destX = cameraMan->startX;
    cameraMan->destZ = cameraMan->startZ;
    cameraMan->movementDirX = Direction_GetOpposite(cameraMan->movementDirX);
    cameraMan->movementDirZ = Direction_GetOpposite(cameraMan->movementDirZ);
}

static void EternaGym_SetupCameraMoveToNewPosition(EternaGymCameraManager *cameraMan, int moveXFirst, int destX, int destZ, int movementDirX, int movementDirZ)
{
    cameraMan->moveXFirst = moveXFirst;
    cameraMan->destX = destX;
    cameraMan->destZ = destZ;
    cameraMan->movementDirX = movementDirX;
    cameraMan->movementDirZ = movementDirZ;
}

static void EternaGym_FreeCameraObject(FieldSystem *fieldSystem, EternaGymCameraManager *cameraMan)
{
    const VecFx32 *playerPos = PlayerAvatar_GetPos(fieldSystem->playerAvatar);

    LandDataManager_TrackTarget(playerPos, fieldSystem->landDataMan);
    Camera_TrackTarget(playerPos, fieldSystem->camera);
    MapObject_Delete(cameraMan->cameraObj);
}

static BOOL EternaGym_MoveCamera(EternaGymCameraManager *cameraMan)
{
    MapObject *cameraObj = cameraMan->cameraObj;

    if (LocalMapObj_IsAnimationSet(cameraMan->cameraObj) == TRUE) {
        int movement = MAX_MOVEMENT_ACTION;
        int cameraX = MapObject_GetX(cameraObj);
        int cameraZ = MapObject_GetZ(cameraObj);

        if (cameraX == cameraMan->destX && cameraZ == cameraMan->destZ) {
            return TRUE;
        }

        if (cameraMan->moveXFirst) {
            if (cameraX != cameraMan->destX) {
                movement = MovementAction_TurnActionTowardsDir(cameraMan->movementDirX, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
            } else if (cameraZ != cameraMan->destZ) {
                movement = MovementAction_TurnActionTowardsDir(cameraMan->movementDirZ, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
            }
        } else {
            if (cameraZ != cameraMan->destZ) {
                movement = MovementAction_TurnActionTowardsDir(cameraMan->movementDirZ, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
            } else if (cameraX != cameraMan->destX) {
                movement = MovementAction_TurnActionTowardsDir(cameraMan->movementDirX, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
            }
        }

        if (movement != MAX_MOVEMENT_ACTION) {
            LocalMapObj_SetAnimationCode(cameraObj, movement);
        }
    }

    return FALSE;
}

static BOOL EternaGym_UpdateClockHandTimes(EternaGymSystem *gymSystem, const fx32 destHourPos, const fx32 destMinutePos)
{
    BOOL isMovementFinished = TRUE;
    fx32 oldHourPos = gymSystem->fxHour;
    fx32 oldMinutePos = gymSystem->fxMinute;

    if (oldHourPos != destHourPos || oldMinutePos != destMinutePos) {
        EternaGym_IncrementClockTime(gymSystem, FX32_CONST(2));

        fx32 newHourPos = gymSystem->fxHour;
        fx32 newMinutePos = gymSystem->fxMinute;

        if (newHourPos == destHourPos) {
            if (oldMinutePos > newMinutePos) {
                fx32 adjustedNewMinutePos = newMinutePos + FX32_CONST(60);
                fx32 adjustedDestMinutePos = destMinutePos + FX32_CONST(60);

                if (oldMinutePos < adjustedDestMinutePos && adjustedNewMinutePos > adjustedDestMinutePos) {
                    newMinutePos = destMinutePos;
                }
            } else if (oldMinutePos < destMinutePos && newMinutePos > destMinutePos) {
                newMinutePos = destMinutePos;
            }
        }

        gymSystem->fxHour = newHourPos;
        gymSystem->fxMinute = newMinutePos;
    }

    if (gymSystem->fxHour != destHourPos || gymSystem->fxMinute != destMinutePos) {
        isMovementFinished = FALSE;
    }

    return isMovementFinished;
}

static BOOL FieldTask_EternaGym_AdvanceClockState(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    EternaGymClockUpdateManager *clockMan = FieldTask_GetEnv(task);
    EternaGymClockPersistedFeature *eternaClockPersisted = clockMan->eternaClockPersisted;
    EternaGymSystem *gymSystem = clockMan->gymSystem;

    switch (clockMan->state) {
    case 0:
        EternaGym_SetupCameraMoveAwayFromPlayer(fieldSystem, &clockMan->cameraMan, ETERNA_CLOCK_CENTER_X, ETERNA_CLOCK_CENTER_Z);
        clockMan->state++;
    case 1:
        if (EternaGym_MoveCamera(&clockMan->cameraMan) == TRUE) {
            clockMan->state++;
        }
        break;
    case 2:
        clockMan->stateDelay++;

        if (clockMan->stateDelay < 8) {
            break;
        }

        clockMan->stateDelay = 0;
        Sound_PlayEffect(SEQ_SE_PL_TOKEI21);
        clockMan->state++;
    case 3:
        if (eternaClockPersisted->state == ETERNA_CLOCK_DEFEATED_GYM_LEADER) {
            if (gymSystem->fxHour == clockMan->hourDest && gymSystem->fxMinute > clockMan->minuteDest) {
                gymSystem->fxHour = FX32_CONST(11);
            }
        }

        BOOL isMovementFinished = EternaGym_UpdateClockHandTimes(gymSystem, clockMan->hourDest, clockMan->minuteDest);

        if (eternaClockPersisted->state == ETERNA_CLOCK_DEFEATED_GYM_LEADER) {
            const EternaGymClockTime *clockTime = &sEternaGymClockTimes[eternaClockPersisted->state];

            gymSystem->fxHour = FX32_ONE * clockTime->hour;
        }

        if (gymSystem->fxHour == clockMan->hourDest) {
            if (gymSystem->fxMinute <= clockMan->minuteDest || eternaClockPersisted->state == ETERNA_CLOCK_DEFEATED_GYM_LEADER) {
                gymSystem->rotateHourHand = FALSE;
            }
        } else {
            gymSystem->rotateHourHand = TRUE;
        }

        EternaGym_UpdateClockHandPositions(gymSystem);

        if (isMovementFinished == TRUE) {
            Sound_StopEffect(SEQ_SE_PL_TOKEI21, 0);
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
            clockMan->state++;
        }
        break;
    case 4:
        clockMan->stateDelay++;

        if (clockMan->stateDelay < 8) {
            break;
        }

        clockMan->stateDelay = 0;

        if (eternaClockPersisted->state == ETERNA_CLOCK_DEFEATED_SECOND_TRAINER || eternaClockPersisted->state == ETERNA_CLOCK_DEFEATED_THIRD_TRAINER) {
            EternaGym_SetupCameraMoveToNewPosition(&clockMan->cameraMan, FALSE, ETERNA_CLOCK_CENTER_X, ETERNA_GYM_FOUNTAIN_Z, DIR_WEST, DIR_SOUTH);
            clockMan->state = 7;
        } else {
            EternaGym_SetupCameraMoveReverseOfLast(&clockMan->cameraMan);
            clockMan->state++;
        }
        break;
    case 5:
        if (EternaGym_MoveCamera(&clockMan->cameraMan) == TRUE) {
            clockMan->state++;
        }
        break;
    case 6:
        EternaGym_FreeCameraObject(fieldSystem, &clockMan->cameraMan);
        Heap_Free(clockMan);
        return TRUE;
    case 7:
        if (EternaGym_MoveCamera(&clockMan->cameraMan) == TRUE) {
            int destX = ETERNA_GYM_RIGHT_FOUNTAIN_X, destZ = ETERNA_GYM_FOUNTAIN_Z, movementDirX = DIR_EAST;

            if (eternaClockPersisted->state == ETERNA_CLOCK_DEFEATED_THIRD_TRAINER) {
                destX = ETERNA_GYM_LEFT_FOUNTAIN_X;
                movementDirX = DIR_WEST;
            }

            EternaGym_SetupCameraMoveToNewPosition(&clockMan->cameraMan, TRUE, destX, destZ, movementDirX, DIR_SOUTH);
            clockMan->state++;
        } else {
            break;
        }

    case 8:
        if (EternaGym_MoveCamera(&clockMan->cameraMan) == TRUE) {
            clockMan->state++;
        }
        break;
    case 9:
        clockMan->stateDelay++;

        if (clockMan->stateDelay >= 4) {
            clockMan->stateDelay = 0;

            if (eternaClockPersisted->state == ETERNA_CLOCK_DEFEATED_SECOND_TRAINER) {
                ov5_021F416C(fieldSystem, 1);
            } else if (eternaClockPersisted->state == ETERNA_CLOCK_DEFEATED_THIRD_TRAINER) {
                ov5_021F416C(fieldSystem, 0);
            }

            Sound_PlayEffect(SEQ_SE_DP_T_AME);
            clockMan->state++;
        }
        break;
    case 10:
        clockMan->stateDelay++;

        if (clockMan->stateDelay >= 60) {
            clockMan->stateDelay = 0;
            clockMan->state++;

            Sound_StopEffect(SEQ_SE_DP_T_AME, 0);
            MessageLoader_GetString(clockMan->msgLoader, EternaGym_Text_FountainWaterLevelDropped, clockMan->msgBuf);
            FieldMessage_AddWindow(fieldSystem->bgConfig, clockMan->window, BG_LAYER_MAIN_3);
            Window_EraseMessageBox(clockMan->window, FALSE);
            FieldMessage_DrawWindow(clockMan->window, SaveData_GetOptions(fieldSystem->saveData));

            clockMan->printerID = FieldMessage_Print(clockMan->window, clockMan->msgBuf, SaveData_GetOptions(fieldSystem->saveData), TRUE);
        }
        break;
    case 11:
        if (FieldMessage_FinishedPrinting(clockMan->printerID) != TRUE) {
            break;
        }

        clockMan->state++;
    case 12:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            int playerX = PlayerAvatar_GetXPos(fieldSystem->playerAvatar);
            int playerY = PlayerAvatar_GetZPos(fieldSystem->playerAvatar);

            EternaGym_SetupCameraMoveFromLastPosition(&clockMan->cameraMan, playerX, playerY);
            Window_EraseMessageBox(clockMan->window, FALSE);
            Window_Remove(clockMan->window);
            clockMan->stateDelay = 0;
            clockMan->state = 5;
            break;
        }
    }

    return FALSE;
}

BOOL EternaGym_AdvanceClockState(FieldSystem *fieldSystem, Window *window, MessageLoader *msgLoader, String *msgBuf)
{
    PersistedMapFeatures *persistedFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    EternaGymClockPersistedFeature *eternaClockPersisted = PersistedMapFeatures_GetBuffer(persistedFeatures, DYNAMIC_MAP_FEATURES_ETERNA_GYM);

    if (eternaClockPersisted->state >= ETERNA_CLOCK_DEFEATED_GYM_LEADER) {
        return FALSE;
    }

    eternaClockPersisted->state++;
    SetEternaGymFlowerClockState(fieldSystem, eternaClockPersisted->state);

    EternaGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;
    const EternaGymClockTime *newClockTime = &sEternaGymClockTimes[eternaClockPersisted->state];

    EternaGymClockUpdateManager *clockMan = Heap_Alloc(HEAP_ID_FIELD2, sizeof(EternaGymClockUpdateManager));
    memset(clockMan, 0, sizeof(EternaGymClockUpdateManager));

    clockMan->window = window;
    clockMan->msgLoader = msgLoader;
    clockMan->msgBuf = msgBuf;
    clockMan->hourDest = FX32_ONE * newClockTime->hour;
    clockMan->minuteDest = FX32_ONE * newClockTime->minute;
    clockMan->fieldSystem = fieldSystem;
    clockMan->eternaClockPersisted = eternaClockPersisted;
    clockMan->gymSystem = gymSystem;

    FieldTask_InitCall(fieldSystem->task, FieldTask_EternaGym_AdvanceClockState, clockMan);

    return TRUE;
}

BOOL EternaGym_IsHourHandJumpTile(FieldSystem *fieldSystem, int tileX, int tileZ, int direction)
{
    PersistedMapFeatures *persistedFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    EternaGymClockPersistedFeature *eternaClockPersisted = PersistedMapFeatures_GetBuffer(persistedFeatures, DYNAMIC_MAP_FEATURES_ETERNA_GYM);
    const EternaClockHourHandJumpTile *hourHandJumpTile = &sEternaGymHourHandJumpTiles[eternaClockPersisted->state];

    if (hourHandJumpTile->x == tileX && hourHandJumpTile->z == tileZ) {
        if ((hourHandJumpTile->isJumpAxisNorthSouth == FALSE && (direction == DIR_WEST || direction == DIR_EAST))
            || (hourHandJumpTile->isJumpAxisNorthSouth == TRUE && (direction == DIR_NORTH || direction == DIR_SOUTH))) {
            return TRUE;
        }
    }

    return FALSE;
}

static const CoordinatesInt sPunchingBagPositions[VEILSTONE_NUM_PUNCHING_BAGS] = {
    { .x = 3, .z = 12 },
    { .x = 4, .z = 24 },
    { .x = 8, .z = 9 },
    { .x = 8, .z = 22 },
    { .x = 15, .z = 28 },
    { .x = 16, .z = 12 },
    { .x = 20, .z = 19 },
    { .x = 21, .z = 26 },
    { .x = 23, .z = 13 }
};

static const CoordinatesInt sTireStackPositions[VEILSTONE_NUM_TIRE_STACKS] = {
    { .x = 3, .z = 23 },
    { .x = 8, .z = 12 },
    { .x = 8, .z = 14 },
    { .x = 8, .z = 16 },
    { .x = 12, .z = 9 },
    { .x = 12, .z = 12 },
    { .x = 19, .z = 12 },
    { .x = 20, .z = 13 },
    { .x = 20, .z = 28 },
    { .x = 22, .z = 9 },
    { .x = 23, .z = 30 }
};

// clang-format off
// These values determine how punching bags behave at each coordinate on the map
// 0 = Bag can be here, 1 = Bag can not be here
// 2 = Bag can not go north or south from here (unused)
// 3 = Bag can not go west or east from here
// 4 = Bag stops when passing through this position
// 5 = Bag can not go west from here
static const u8 sVeilstoneTileBehaviors[MAP_TILES_COUNT_X * MAP_TILES_COUNT_Z] = {
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 4, 0, 0, 4, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 3, 5, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 3, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
};
// clang-format on

static const int sVeilstoneTravelDistanceRequiringCameraMovement[MAX_DIR] = {
    [DIR_NORTH] = 3,
    [DIR_SOUTH] = 4,
    [DIR_WEST] = 4,
    [DIR_EAST] = 4
};

static const VeilstoneGymAnimationStateFunc sVeilstoneGymBagAnimationStates[NUM_VEILSTONE_ANIM_STATE];

void VeilstoneGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    VeilstoneGymPersistedFeature *feature = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_VEILSTONE_GYM);
    VeilstoneGymSystem *gymSystem = Heap_Alloc(HEAP_ID_FIELD1, sizeof(VeilstoneGymSystem));

    memset(gymSystem, 0, sizeof(VeilstoneGymSystem));

    fieldSystem->unk_04->dynamicMapFeaturesData = gymSystem;
    gymSystem->fieldSystem = fieldSystem;

    FieldEffectManager_InitRenderer(fieldSystem->fieldEffMan, FIELD_EFFECT_RENDERER_VEILSTONE_GYM_OBJECTS);
    VeilstoneGymObjectRenderer_InitContext(fieldSystem->fieldEffMan, VEILSTONE_NUM_TIRE_STACKS, VEILSTONE_NUM_PUNCHING_BAGS);

    if (feature->initialized == TRUE) {
        VeilstoneGym_ReinitMapObjects(gymSystem);
    } else {
        VeilstoneGym_InitMapObjects(gymSystem);
    }

    feature->initialized = TRUE;
}

void VeilstoneGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    VeilstoneGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    Heap_Free(gymSystem);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL VeilstoneGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    return FALSE;
}

static MapObject *VeilstoneGym_CreateObject(FieldSystem *fieldSystem, int x, int z, BOOL isPunchingBag)
{
    MapObject *mapObj = MapObjectMan_AddMapObject(fieldSystem->mapObjMan, x, z, 0, OBJ_EVENT_GFX_INVISIBLE, MOVEMENT_TYPE_NONE, fieldSystem->location->mapId);

    MapObject_SetLocalID(mapObj, VEILSTONE_GYM_OBJECT_LOCALID);
    MapObject_SetDataAt(mapObj, isPunchingBag, 0);

    return mapObj;
}

static void VeilstoneGym_InitAnimManagerForObject(VeilstoneGymMapObjectManager *objMan, MapObject *mapObj, FieldSystem *fieldSystem)
{
    objMan->mapObj = mapObj;
    objMan->x = MapObject_GetX(mapObj);
    objMan->z = MapObject_GetZ(mapObj);

    if (VEILSTONE_OBJ_IS_TIRE_STACK(mapObj)) {
        objMan->animManager = VeilstoneGymObjectRenderer_InitTireStackRenderer(fieldSystem, objMan->x, objMan->z, 0);
    } else {
        objMan->animManager = VeilstoneGymObjectRenderer_InitPunchingBagRenderer(fieldSystem, objMan->x, objMan->z, 0);
    }
}

static VeilstoneGymPunchingBag *VeilstoneGym_GetPunchingBagAtPosition(VeilstoneGymSystem *gymSystem, int x, int z)
{
    int i = 0;
    VeilstoneGymPunchingBag *punchingBag = gymSystem->punchingBags;

    do {
        if (punchingBag->obj.x == x && punchingBag->obj.z == z) {
            return punchingBag;
        }

        punchingBag++;
        i++;
    } while (i < VEILSTONE_NUM_PUNCHING_BAGS);

    return NULL;
}

static VeilstoneGymTireStack *VeilstoneGym_GetTireStackAtPosition(VeilstoneGymSystem *gymSystem, int x, int z)
{
    int i = 0;
    VeilstoneGymTireStack *tireStack = gymSystem->tireStacks;

    do {
        if (tireStack->exists) {
            if (tireStack->obj.x == x && tireStack->obj.z == z) {
                return tireStack;
            }
        }

        tireStack++;
        i++;
    } while (i < VEILSTONE_NUM_TIRE_STACKS);

    return NULL;
}

static void VeilstoneGym_RemoveTireStack(VeilstoneGymTireStack *tireStack)
{
    GF_ASSERT(tireStack);
    GF_ASSERT(tireStack->obj.animManager);
    GF_ASSERT(tireStack->obj.mapObj);

    OverworldAnimManager_Finish(tireStack->obj.animManager);
    MapObject_Delete(tireStack->obj.mapObj);

    tireStack->exists = FALSE;
}

static void VeilstoneGym_InitMapObjects(VeilstoneGymSystem *gymSystem)
{
    FieldSystem *fieldSystem = gymSystem->fieldSystem;
    VeilstoneGymTireStack *tireStack = gymSystem->tireStacks;
    VeilstoneGymPunchingBag *punchingBag = gymSystem->punchingBags;

    memset(tireStack, 0, sizeof(VeilstoneGymTireStack) * VEILSTONE_NUM_TIRE_STACKS);
    memset(punchingBag, 0, sizeof(VeilstoneGymPunchingBag) * VEILSTONE_NUM_PUNCHING_BAGS);

    int i;
    const CoordinatesInt *pos;
    for (i = 0, pos = sTireStackPositions; i < SNELEMS(sTireStackPositions); i++, pos++, tireStack++) {
        MapObject *stackObj = VeilstoneGym_CreateObject(fieldSystem, pos->x, pos->z - 2, FALSE);
        VeilstoneGym_InitAnimManagerForObject(&tireStack->obj, stackObj, fieldSystem);
        tireStack->exists = TRUE;
    }

    for (i = 0, pos = sPunchingBagPositions; i < SNELEMS(sPunchingBagPositions); i++, pos++, punchingBag++) {
        MapObject *bagObj = VeilstoneGym_CreateObject(fieldSystem, pos->x, pos->z - 2, TRUE);
        VeilstoneGym_InitAnimManagerForObject(&punchingBag->obj, bagObj, fieldSystem);
        punchingBag->exists = TRUE;
    }
}

static void VeilstoneGym_ReinitMapObjects(VeilstoneGymSystem *gymSystem)
{
    int objIndex = 0, numObjInited = 0;
    MapObject *mapObj;
    FieldSystem *fieldSystem = gymSystem->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    VeilstoneGymTireStack *tireStack = gymSystem->tireStacks;
    VeilstoneGymPunchingBag *punchingBag = gymSystem->punchingBags;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &mapObj, &objIndex, MAP_OBJ_STATUS_0) == TRUE) {
        if (MapObject_GetLocalID(mapObj) == VEILSTONE_GYM_OBJECT_LOCALID) {
            if (VEILSTONE_OBJ_IS_TIRE_STACK(mapObj)) {
                VeilstoneGym_InitAnimManagerForObject(&tireStack->obj, mapObj, fieldSystem);
                tireStack->exists = TRUE;
                tireStack++;
            } else {
                VeilstoneGym_InitAnimManagerForObject(&punchingBag->obj, mapObj, fieldSystem);
                punchingBag->exists = TRUE;
                punchingBag++;
            }

            numObjInited++;
            GF_ASSERT(numObjInited <= VEILSTONE_NUM_TIRE_STACKS + VEILSTONE_NUM_PUNCHING_BAGS);
        }
    }
}

static int VeilstoneGym_GetTileBehavior(int x, int z)
{
    GF_ASSERT(x >= 0);
    GF_ASSERT(x < MAP_TILES_COUNT_X);
    GF_ASSERT(z >= 0);
    GF_ASSERT(z < MAP_TILES_COUNT_Z);

    return sVeilstoneTileBehaviors[x + (z * MAP_TILES_COUNT_X)];
}

static u32 VeilstoneGym_GetTileFlags(VeilstoneGymSystem *gymSystem, int x, int z, int direction)
{
    u32 flags = 0;

    switch (VeilstoneGym_GetTileBehavior(x, z)) {
    case 4:
        flags |= VEILSTONE_TILE_FLAG_BAG_PAUSE_POINT;
        break;
    case 2:
        if (direction == DIR_NORTH || direction == DIR_SOUTH) {
            flags |= VEILSTONE_TILE_FLAG_BAG_CANT_MOVE_THAT_WAY;
        }
        break;
    case 3:
        if (direction == DIR_WEST || direction == DIR_EAST) {
            flags |= VEILSTONE_TILE_FLAG_BAG_CANT_MOVE_THAT_WAY;
        }
        break;
    case 5:
        if (direction == DIR_WEST) {
            flags |= VEILSTONE_TILE_FLAG_BAG_CANT_MOVE_THAT_WAY;
        }
        break;
    }

    x += MapObject_GetDxFromDir(direction);
    z += MapObject_GetDzFromDir(direction);

    if (VeilstoneGym_GetTileBehavior(x, z) == 1) {
        flags |= VEILSTONE_TILE_FLAG_BAG_CANT_MOVE_THAT_WAY;
    }

    if (VeilstoneGym_GetTireStackAtPosition(gymSystem, x, z) != NULL) {
        flags |= VEILSTONE_TILE_FLAG_TIRE_STACK_PRESENT;
    }

    return flags;
}

static u32 VeilstoneGym_CalculateDistanceBagWillTravel(VeilstoneGymSystem *gymSystem, int x, int z, int direction, int *bagTravelDistance)
{
    *bagTravelDistance = 0;
    u32 flags = VeilstoneGym_GetTileFlags(gymSystem, x, z, direction);

    if (flags != 0 && flags != VEILSTONE_TILE_FLAG_BAG_PAUSE_POINT) {
        return flags;
    }

    do {
        x += MapObject_GetDxFromDir(direction);
        z += MapObject_GetDzFromDir(direction);
        (*bagTravelDistance)++;
        flags = VeilstoneGym_GetTileFlags(gymSystem, x, z, direction);
    } while (flags == 0);

    return flags;
}

static BOOL FieldTask_VeilstoneGym_HitPunchingBagNoMovement(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    VeilstoneGym_BagAnimation *bagAnim = FieldTask_GetEnv(taskMan);

    MapObject *playerObj = PlayerAvatar_GetMapObject(fieldSystem->playerAvatar);

    switch (bagAnim->state) {
    case 0:
        if (LocalMapObj_IsAnimationSet(playerObj) == TRUE) {
            LocalMapObj_SetAnimationCode(playerObj, MovementAction_TurnActionTowardsDir(bagAnim->direction, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH));
            VeilstoneGymObjectRenderer_StartPunchingBagAnimation(bagAnim->punchingBag->obj.animManager, bagAnim->direction, FALSE);
            Sound_PlayEffect(SEQ_SE_PL_SUTYA2);
            bagAnim->state++;
        }
        break;
    case 1:
        if (LocalMapObj_CheckAnimationFinished(playerObj) == TRUE && VeilstoneGymObjectRenderer_IsPunchingBagAnimFinished(bagAnim->punchingBag->obj.animManager) == TRUE) {
            sub_020656AC(playerObj);
            Heap_Free(bagAnim);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL FieldTask_VeilstoneGym_HitPunchingBag(FieldTask *taskMan)
{
    int stateResult = 0;
    VeilstoneGym_BagAnimation *bagAnim = FieldTask_GetEnv(taskMan);

    do {
        stateResult = sVeilstoneGymBagAnimationStates[bagAnim->state](bagAnim);
    } while (stateResult == VEILSTONE_STATE_RESULT_CONTINUE);

    if (stateResult == VEILSTONE_STATE_RESULT_FINISH) {
        return TRUE;
    }

    return FALSE;
}

static int VeilstoneGym_AnimationState_Init(VeilstoneGym_BagAnimation *bagAnim)
{
    VeilstoneGymMapObjectManager *obj = &bagAnim->punchingBag->obj;
    int x = obj->x;
    int z = obj->z;

    VeilstoneGym_CalculateDistanceBagWillTravel(bagAnim->gymSystem, x, z, bagAnim->direction, &bagAnim->distanceToTravel);
    OverworldAnimManager_GetPosition(obj->animManager, &bagAnim->bagPosition);

    bagAnim->movingSpeed = FX32_ONE / 60;
    bagAnim->state = VEILSTONE_ANIM_STATE_KICK_BAG;

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_KickBag(VeilstoneGym_BagAnimation *bagAnim)
{
    MapObject *playerObj = PlayerAvatar_GetMapObject(bagAnim->gymSystem->fieldSystem->playerAvatar);

    if (!LocalMapObj_IsAnimationSet(playerObj)) {
        return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
    }

    LocalMapObj_SetAnimationCode(playerObj, MovementAction_TurnActionTowardsDir(bagAnim->direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH));

    VeilstoneGymPunchingBag *punchingBag = bagAnim->punchingBag;
    OverworldAnimManager *animManager = punchingBag->obj.animManager;

    VeilstoneGymObjectRenderer_StartPunchingBagAnimation(animManager, bagAnim->direction, TRUE);

    if (VeilstoneGym_CheckIfCameraNeedsToMove(bagAnim, &punchingBag->obj, bagAnim->direction) == TRUE) {
        bagAnim->moveCamera = TRUE;
        VeilstoneGym_InitCameraManager(bagAnim->gymSystem->fieldSystem, bagAnim, &punchingBag->obj, bagAnim->direction);
        VeilstoneGym_PrepareForCameraMovement(bagAnim, FALSE);
    }

    Sound_PlayEffect(SEQ_SE_PL_SUTYA2);

    bagAnim->state = VEILSTONE_ANIM_STATE_START_MOVEMENT;
    return VEILSTONE_STATE_RESULT_CONTINUE;
}

static int VeilstoneGym_AnimationState_StartMovement(VeilstoneGym_BagAnimation *bagAnim)
{
    VecFx32_StepDirection(bagAnim->direction, &bagAnim->bagPosition, bagAnim->movingSpeed);
    OverworldAnimManager_SetPosition(bagAnim->punchingBag->obj.animManager, &bagAnim->bagPosition);

    bagAnim->movingSpeed += FX32_ONE / 60;
    bagAnim->traveledDistance += bagAnim->movingSpeed;
    bagAnim->elapsedFrames++;

    if (bagAnim->elapsedFrames >= 30) {
        fx32 frameDelta = FX32_CONST(13);

        frameDelta /= bagAnim->distanceToTravel * 16 / 2;
        VeilstoneGymObjectRenderer_UpdateBagFrameDelta(bagAnim->punchingBag->obj.animManager, frameDelta);
        bagAnim->state = VEILSTONE_ANIM_STATE_MOVE_BAG;
        Sound_PlayEffect(SEQ_SE_PL_GYM01);
    }

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_MovePunchingBag(VeilstoneGym_BagAnimation *bagAnim)
{
    VeilstoneGymPunchingBag *punchingBag = bagAnim->punchingBag;

    VecFx32_StepDirection(bagAnim->direction, &bagAnim->bagPosition, bagAnim->movingSpeed);
    OverworldAnimManager_SetPosition(punchingBag->obj.animManager, &bagAnim->bagPosition);

    bagAnim->traveledDistance += bagAnim->movingSpeed;
    bagAnim->elapsedFrames++;

    if (bagAnim->elapsedFrames < 36) {
        if (bagAnim->movingSpeed < FX32_ONE) {
            bagAnim->movingSpeed += bagAnim->movingSpeed;
        }
    } else if (bagAnim->elapsedFrames == 36) {
        if (bagAnim->movingSpeed <= FX32_CONST(2)) {
            bagAnim->movingSpeed = FX32_CONST(2);
        }
    }

    VeilstoneGym_UpdateCamera(bagAnim, bagAnim->movingSpeed);

    if ((bagAnim->traveledDistance >> 4) / FX32_ONE > bagAnim->traveledCoordinates) {
        bagAnim->traveledCoordinates = (bagAnim->traveledDistance >> 4) / FX32_ONE;

        punchingBag->obj.x += MapObject_GetDxFromDir(bagAnim->direction);
        punchingBag->obj.z += MapObject_GetDzFromDir(bagAnim->direction);

        u32 tileFlags = VeilstoneGym_GetTileFlags(bagAnim->gymSystem, punchingBag->obj.x, punchingBag->obj.z, bagAnim->direction);

        if (tileFlags != 0) {
            VecFx32_SetPosFromMapCoords(punchingBag->obj.x, punchingBag->obj.z, &bagAnim->bagPosition);
            MapObject_SetX(punchingBag->obj.mapObj, punchingBag->obj.x);
            MapObject_SetZ(punchingBag->obj.mapObj, punchingBag->obj.z);
            MapObject_UpdateCoords(punchingBag->obj.mapObj);
            VeilstoneGymObjectRenderer_UpdateBagFrameDelta(punchingBag->obj.animManager, FX32_ONE);
            Sound_StopEffect(SEQ_SE_PL_GYM01, 0);
            Sound_PlayEffect(SEQ_SE_PL_SUTYA2);
            Sound_PlayEffect(SEQ_SE_PL_GYM02);

            if (!(tileFlags & VEILSTONE_TILE_FLAG_TIRE_STACK_PRESENT)) {
                if (bagAnim->moveCamera == TRUE) {
                    bagAnim->state = VEILSTONE_ANIM_STATE_PREP_CAMERA_TO_PLAYER;
                } else {
                    bagAnim->state = VEILSTONE_ANIM_STATE_FINISH_BAG_ANIMATION;
                }
            } else {
                bagAnim->tireStack = VeilstoneGym_GetTireStackAtPosition(bagAnim->gymSystem, punchingBag->obj.x + MapObject_GetDxFromDir(bagAnim->direction), punchingBag->obj.z + MapObject_GetDzFromDir(bagAnim->direction));
                GF_ASSERT(bagAnim->tireStack != NULL);
                bagAnim->elapsedFrames = 0;
                bagAnim->state = VEILSTONE_ANIM_STATE_TOPPLE_STACK;
            }
        }
    }

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_ToppleTireStack(VeilstoneGym_BagAnimation *bagAnim)
{
    VeilstoneGym_UpdateCamera(bagAnim, bagAnim->movingSpeed);
    bagAnim->elapsedFrames++;

    if (bagAnim->elapsedFrames >= 4) {
        bagAnim->elapsedFrames = 0;
        bagAnim->state = VEILSTONE_ANIM_STATE_REMOVE_STACK;
        VeilstoneGymObjectRenderer_PlayToppleTireStackAnim(bagAnim->tireStack->obj.animManager);
        Sound_PlayEffect(SEQ_SE_DP_UG_026);
    }

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_RemoveTireStack(VeilstoneGym_BagAnimation *bagAnim)
{
    VeilstoneGym_UpdateCamera(bagAnim, bagAnim->movingSpeed);

    if (VeilstoneGymObjectRenderer_IsTireStackAnimationFinished(bagAnim->tireStack->obj.animManager)) {
        VeilstoneGym_RemoveTireStack(bagAnim->tireStack);
        bagAnim->elapsedFrames = 0;

        if (bagAnim->moveCamera == TRUE) {
            bagAnim->state = VEILSTONE_ANIM_STATE_PREP_CAMERA_TO_PLAYER;
        } else {
            bagAnim->state = VEILSTONE_ANIM_STATE_FINISH_BAG_ANIMATION;
        }
    }

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_PrepCameraReturnToPlayer(VeilstoneGym_BagAnimation *bagAnim)
{
    VeilstoneGym_UpdateCamera(bagAnim, bagAnim->movingSpeed);

    if (VeilstoneGym_CheckIfCameraMovementFinished(bagAnim) == TRUE && VeilstoneGymObjectRenderer_IsPunchingBagAnimFinished(bagAnim->punchingBag->obj.animManager) == TRUE) {
        VeilstoneGym_PrepareForCameraMovement(bagAnim, TRUE);
        bagAnim->state = VEILSTONE_ANIM_STATE_CAMERA_TO_PLAYER;
    }

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_MoveCameraToPlayer(VeilstoneGym_BagAnimation *bagAnim)
{
    VeilstoneGym_MoveCamera(bagAnim, MOVEMENT_ACTION_WALK_FAST_NORTH);

    if (VeilstoneGym_CheckIfCameraMovementFinished(bagAnim) == TRUE) {
        VeilStoneGym_ReturnCameraFocusToPlayer(bagAnim);
        bagAnim->state = VEILSTONE_ANIM_STATE_WAIT_FINISH;
    }

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_FinishBagAnimation(VeilstoneGym_BagAnimation *bagAnim)
{
    if (VeilstoneGymObjectRenderer_IsPunchingBagAnimFinished(bagAnim->punchingBag->obj.animManager) == TRUE) {
        bagAnim->state = VEILSTONE_ANIM_STATE_WAIT_FINISH;
    }

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_WaitForAnimationFinished(VeilstoneGym_BagAnimation *bagAnim)
{
    MapObject *playerObj = PlayerAvatar_GetMapObject(bagAnim->gymSystem->fieldSystem->playerAvatar);

    if (LocalMapObj_CheckAnimationFinished(playerObj) == TRUE) {
        sub_020656AC(playerObj);
        bagAnim->state = VEILSTONE_ANIM_STATE_FREE;
    }

    return VEILSTONE_STATE_RESULT_ADVANCE_FRAME;
}

static int VeilstoneGym_AnimationState_Free(VeilstoneGym_BagAnimation *bagAnim)
{
    Heap_Free(bagAnim);
    return VEILSTONE_STATE_RESULT_FINISH;
}

static const VeilstoneGymAnimationStateFunc sVeilstoneGymBagAnimationStates[NUM_VEILSTONE_ANIM_STATE] = {
    [VEILSTONE_ANIM_STATE_INIT] = VeilstoneGym_AnimationState_Init,
    [VEILSTONE_ANIM_STATE_KICK_BAG] = VeilstoneGym_AnimationState_KickBag,
    [VEILSTONE_ANIM_STATE_START_MOVEMENT] = VeilstoneGym_AnimationState_StartMovement,
    [VEILSTONE_ANIM_STATE_MOVE_BAG] = VeilstoneGym_AnimationState_MovePunchingBag,
    [VEILSTONE_ANIM_STATE_TOPPLE_STACK] = VeilstoneGym_AnimationState_ToppleTireStack,
    [VEILSTONE_ANIM_STATE_REMOVE_STACK] = VeilstoneGym_AnimationState_RemoveTireStack,
    [VEILSTONE_ANIM_STATE_PREP_CAMERA_TO_PLAYER] = VeilstoneGym_AnimationState_PrepCameraReturnToPlayer,
    [VEILSTONE_ANIM_STATE_CAMERA_TO_PLAYER] = VeilstoneGym_AnimationState_MoveCameraToPlayer,
    [VEILSTONE_ANIM_STATE_FINISH_BAG_ANIMATION] = VeilstoneGym_AnimationState_FinishBagAnimation,
    [VEILSTONE_ANIM_STATE_WAIT_FINISH] = VeilstoneGym_AnimationState_WaitForAnimationFinished,
    [VEILSTONE_ANIM_STATE_FREE] = VeilstoneGym_AnimationState_Free
};

static VeilstoneGym_BagAnimation *VeilstoneGym_InitBagAnimation(VeilstoneGymSystem *gymSystem, VeilstoneGymPunchingBag *punchingBag, int direction)
{
    VeilstoneGym_BagAnimation *bagAnim = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(VeilstoneGym_BagAnimation));
    GF_ASSERT(bagAnim != NULL);

    memset(bagAnim, 0, sizeof(VeilstoneGym_BagAnimation));

    bagAnim->direction = direction;
    bagAnim->bagX = punchingBag->obj.x;
    bagAnim->bagZ = punchingBag->obj.z;
    bagAnim->punchingBag = punchingBag;
    bagAnim->gymSystem = gymSystem;

    return bagAnim;
}

static void VeilstoneGym_PlayBagNoMoveAnimation(FieldSystem *fieldSystem, VeilstoneGymSystem *gymSystem, VeilstoneGymPunchingBag *punchingBag, int direction)
{
    VeilstoneGym_BagAnimation *bagAnim = VeilstoneGym_InitBagAnimation(gymSystem, punchingBag, direction);
    FieldSystem_CreateTask(fieldSystem, FieldTask_VeilstoneGym_HitPunchingBagNoMovement, bagAnim);
}

static void VeilstoneGym_PlayBagMoveAnimation(FieldSystem *fieldSystem, VeilstoneGymSystem *gymSystem, VeilstoneGymPunchingBag *punchingBag, int direction)
{
    VeilstoneGym_BagAnimation *bagAnim = VeilstoneGym_InitBagAnimation(gymSystem, punchingBag, direction);
    FieldSystem_CreateTask(fieldSystem, FieldTask_VeilstoneGym_HitPunchingBag, bagAnim);
}

BOOL VeilstoneGym_HitPunchingBag(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(mapFeatures) != DYNAMIC_MAP_FEATURES_VEILSTONE_GYM) {
        return FALSE;
    }

    int x, z, bagTravelDistance;
    int playerDir = PlayerAvatar_GetFacingDir(fieldSystem->playerAvatar);
    VeilstoneGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    PlayerAvatar_MoveCoordsInDirection(fieldSystem->playerAvatar, playerDir, &x, &z);

    VeilstoneGymPunchingBag *punchingBag = VeilstoneGym_GetPunchingBagAtPosition(gymSystem, x, z);
    if (punchingBag == NULL) {
        return FALSE;
    }

    VeilstoneGym_CalculateDistanceBagWillTravel(gymSystem, x, z, playerDir, &bagTravelDistance);

    if (bagTravelDistance == 0) {
        VeilstoneGym_PlayBagNoMoveAnimation(fieldSystem, gymSystem, punchingBag, playerDir);
    } else {
        VeilstoneGym_PlayBagMoveAnimation(fieldSystem, gymSystem, punchingBag, playerDir);
    }

    return TRUE;
}

static void VeilstoneGym_InitCameraManager(FieldSystem *fieldSystem, VeilstoneGym_BagAnimation *bagAnim, VeilstoneGymMapObjectManager *bagObj, int direction)
{
    VeilstoneGymCameraManager *cameraMan = &bagAnim->cameraMan;
    memset(cameraMan, 0, sizeof(VeilstoneGymCameraManager));
    cameraMan->fieldSystem = fieldSystem;

    int x = bagObj->x;
    int z = bagObj->z;

    cameraMan->bagX = x;
    cameraMan->bagZ = z;
    cameraMan->movementDirection = direction;

    VeilstoneGym_CalculateDistanceBagWillTravel(bagAnim->gymSystem, x, z, direction, &cameraMan->distanceToTravel);
    GF_ASSERT(cameraMan->distanceToTravel);

    cameraMan->destX = x + MapObject_GetDxFromDir(direction) * cameraMan->distanceToTravel;
    cameraMan->destZ = z + MapObject_GetDzFromDir(direction) * cameraMan->distanceToTravel;

    x = PlayerAvatar_GetXPos(fieldSystem->playerAvatar);
    z = PlayerAvatar_GetZPos(fieldSystem->playerAvatar);

    cameraMan->playerX = x;
    cameraMan->playerZ = z;
    cameraMan->cameraObj = MapObjectMan_AddMapObject(fieldSystem->mapObjMan, x, z, 0, OBJ_EVENT_GFX_INVISIBLE, MOVEMENT_TYPE_NONE, fieldSystem->location->mapId);

    MapObject_RecalculateObjectHeight(cameraMan->cameraObj);
    MapObject_SetHidden(cameraMan->cameraObj, TRUE);
    sub_02062D80(cameraMan->cameraObj, FALSE);
    MapObject_SetHeightCalculationDisabled(cameraMan->cameraObj, TRUE);

    const VecFx32 *cameraPos = MapObject_GetPos(cameraMan->cameraObj);

    LandDataManager_TrackTarget(cameraPos, fieldSystem->landDataMan);
    Camera_TrackTarget(cameraPos, fieldSystem->camera);
}

static void VeilStoneGym_ReturnCameraFocusToPlayer(VeilstoneGym_BagAnimation *bagAnim)
{
    VeilstoneGymCameraManager *cameraMan = &bagAnim->cameraMan;
    const VecFx32 *playerPos = PlayerAvatar_GetPos(cameraMan->fieldSystem->playerAvatar);

    LandDataManager_TrackTarget(playerPos, cameraMan->fieldSystem->landDataMan);
    Camera_TrackTarget(playerPos, cameraMan->fieldSystem->camera);
    MapObject_Delete(cameraMan->cameraObj);
}

static BOOL VeilstoneGym_CheckIfCameraMovementFinished(VeilstoneGym_BagAnimation *bagAnim)
{
    return bagAnim->cameraMan.movementFinished;
}

static BOOL VeilstoneGym_CheckIfCameraNeedsToMove(VeilstoneGym_BagAnimation *bagAnim, VeilstoneGymMapObjectManager *obj, int direction)
{
    int bagTravelDistance;
    VeilstoneGym_CalculateDistanceBagWillTravel(bagAnim->gymSystem, obj->x, obj->z, direction, &bagTravelDistance);

    return bagTravelDistance > sVeilstoneTravelDistanceRequiringCameraMovement[direction];
}

static void VeilstoneGym_PrepareForCameraMovement(VeilstoneGym_BagAnimation *bagAnim, BOOL reverseDirection)
{
    VeilstoneGymCameraManager *cameraMan = &bagAnim->cameraMan;

    cameraMan->traveledDistance = 0;
    cameraMan->movementState = 1;
    cameraMan->movementFinished = FALSE;

    if (reverseDirection == TRUE) {
        cameraMan->movementDirection = Direction_GetOpposite(cameraMan->movementDirection);
    }
}

static void VeilstoneGym_MoveCamera(VeilstoneGym_BagAnimation *bagAnim, enum MovementAction movementAction)
{
    VeilstoneGymCameraManager *cameraMan = &bagAnim->cameraMan;

    switch (cameraMan->movementState) {
    case 0:
        break;
    case 1:
        if (LocalMapObj_IsAnimationSet(cameraMan->cameraObj) == TRUE) {
            if (cameraMan->traveledDistance >= cameraMan->distanceToTravel) {
                cameraMan->movementState++;
            } else {
                movementAction = MovementAction_TurnActionTowardsDir(cameraMan->movementDirection, movementAction);
                LocalMapObj_SetAnimationCode(cameraMan->cameraObj, movementAction);
                cameraMan->traveledDistance++;
            }
        }
        break;
    case 2:
        cameraMan->movementFinished = TRUE;
        cameraMan->movementState = 0;
        break;
    }
}

static void VeilstoneGym_UpdateCamera(VeilstoneGym_BagAnimation *bagAnim, fx32 speed)
{
    if (bagAnim->moveCamera == TRUE) {
        int coordinateSpeed = speed / FX32_ONE;

        if (coordinateSpeed) {
            int movementAction = MOVEMENT_ACTION_WALK_SLOW_NORTH;

            if (coordinateSpeed <= 2) {
                movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH;
            } else if (coordinateSpeed > 2) {
                movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
            }

            VeilstoneGym_MoveCamera(bagAnim, movementAction);
        }
    }
}

static const HearthomeGymTrainerRoomLayout sTrainerRoomLayouts[HEARTHOME_NUM_TRAINER_ROOMS] = {
    {
        .mapID = MAP_HEADER_HEARTHOME_CITY_GYM_TRAINER_ROOM_1,
        .firstDoorID = HEARTHOME_DOOR_ID_CIRCLE,
        .numExitDoors = 3,
        .offsetX = 1,
        .offsetZ = 3,
        .sizeX = HEARTHOME_ROOM_1_SIZE_X,
        .sizeZ = HEARTHOME_ROOM_1_SIZE_Z,
    },
    {
        .mapID = MAP_HEADER_HEARTHOME_CITY_GYM_TRAINER_ROOM_2,
        .firstDoorID = HEARTHOME_DOOR_ID_SUN,
        .numExitDoors = 5,
        .offsetX = 1,
        .offsetZ = 3,
        .sizeX = HEARTHOME_ROOM_2_SIZE_X,
        .sizeZ = HEARTHOME_ROOM_2_SIZE_Z,
    }
};

// clang-format off
// 0 = Clue can be placed there, 1 = Clue can not be placed there
static const u8 sTrainerRoom1CluePositions[HEARTHOME_ROOM_1_SIZE_X * HEARTHOME_ROOM_1_SIZE_Z] = {
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1,
    0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0,
    0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0,
    0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0,
    0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
};

static const u8 sTrainerRoom2CluePositions[HEARTHOME_ROOM_2_SIZE_X * HEARTHOME_ROOM_2_SIZE_Z] = {
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
    0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0,
    0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0,
    0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0,
    0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0,
    1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0,
    1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
    0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0,
    1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
};
// clang-format on

static const u8 *const sTrainerRoomValidCluePositions[HEARTHOME_NUM_TRAINER_ROOMS] = {
    sTrainerRoom1CluePositions,
    sTrainerRoom2CluePositions
};

static const HearthomeGymTrainerRoomDoor sTrainerRoom1Doors[] = {
    { .id = HEARTHOME_DOOR_ID_CIRCLE, .x = 4, .z = 2 },
    { .id = HEARTHOME_DOOR_ID_SQUARE, .x = 8, .z = 2 },
    { .id = HEARTHOME_DOOR_ID_TRIANGLE, .x = 12, .z = 2 },
    { .id = HEARTHOME_DOOR_ID_EXIT, .x = 0, .z = 0 }
};

static const HearthomeGymTrainerRoomDoor sTrainerRoom2Doors[] = {
    { .id = HEARTHOME_DOOR_ID_SUN, .x = 4, .z = 2 },
    { .id = HEARTHOME_DOOR_ID_DONUT, .x = 9, .z = 2 },
    { .id = HEARTHOME_DOOR_ID_MOOM, .x = 14, .z = 2 },
    { .id = HEARTHOME_DOOR_ID_STAR, .x = 19, .z = 2 },
    { .id = HEARTHOME_DOOR_ID_HEART, .x = 24, .z = 2 },
    { .id = HEARTHOME_DOOR_ID_EXIT, .x = 0, .z = 0 }
};

static const HearthomeGymTrainerRoomDoor *const sTrainerRoomDoors[HEARTHOME_NUM_TRAINER_ROOMS] = {
    sTrainerRoom1Doors,
    sTrainerRoom2Doors
};

void HearthomeGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    HearthomeGymPersistedFeatures *features = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);
    HearthomeGymSystem *gymSystem = Heap_Alloc(HEAP_ID_FIELD1, sizeof(HearthomeGymSystem));

    memset(gymSystem, 0, sizeof(HearthomeGymSystem));

    gymSystem->fieldSystem = fieldSystem;
    fieldSystem->unk_04->dynamicMapFeaturesData = gymSystem;

    HearthomeGym_InitFog(gymSystem);
    FieldEffectManager_InitRenderer(fieldSystem->fieldEffMan, 32);
    MapObjectMan_SetEndMovement(fieldSystem->mapObjMan, FALSE);

    int graphicsID = OBJ_EVENT_GFX_PLAYER_M_HEARTHOME_GYM;
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
    MapObject *playerObj = PlayerAvatar_GetMapObject(playerAvatar);

    if (PlayerAvatar_GetGender(fieldSystem->playerAvatar) == GENDER_FEMALE) {
        graphicsID = OBJ_EVENT_GFX_PLAYER_F_HEARTHOME_GYM;
    }

    sub_02061AD4(playerObj, graphicsID);

    ov5_021F5AA4(fieldSystem, TRUE);
    HearthomeGym_InitTrainers(gymSystem);

    int i = 0;
    int mapID = fieldSystem->location->mapId;
    const HearthomeGymTrainerRoomLayout *room = sTrainerRoomLayouts;

    do {
        if (room->mapID == mapID) {
            break;
        }

        room++;
        i++;
    } while (i < SNELEMS(sTrainerRoomLayouts));

    if (!features->initialized) {
        features->initialized = TRUE;
        features->correctDoorID = HEARTHOME_DOOR_ID_EXIT;

        if (i != HEARTHOME_NUM_TRAINER_ROOMS) {
            const u8 *cluePositions = sTrainerRoomValidCluePositions[i];
            int correctDoor = MTRNG_Next() % room->numExitDoors;

            features->correctDoorID = correctDoor + room->firstDoorID;

            do {
                do {
                    features->clueX = MTRNG_Next() % room->sizeX;
                    features->clueZ = MTRNG_Next() % room->sizeZ;
                } while (cluePositions[(features->clueZ * room->sizeX) + features->clueX] == 1);

                features->clueX += room->offsetX;
                features->clueZ += room->offsetZ;
            } while (sub_0206326C(fieldSystem->mapObjMan, features->clueX, features->clueZ, 0) != NULL);

            GF_ASSERT(features->correctDoorID < room->firstDoorID + room->numExitDoors);
            GF_ASSERT(features->clueX < room->offsetX + room->sizeX);
            GF_ASSERT(features->clueZ < room->offsetZ + room->sizeZ);
            GF_ASSERT(!TerrainCollisionManager_CheckCollision(fieldSystem, features->clueX, features->clueZ));
        }
    }

    if (features->correctDoorID != HEARTHOME_DOOR_ID_EXIT) {
        const HearthomeGymTrainerRoomDoor *door = sTrainerRoomDoors[i];

        while (door->id != HEARTHOME_DOOR_ID_EXIT) {
            if (door->id != features->correctDoorID) {
                int eventIndex = MapHeaderData_GetIndexOfWarpEventAtPos(fieldSystem, door->x, door->z);
                MapHeaderData_SetWarpEventDestHeaderID(fieldSystem, eventIndex, MAP_HEADER_HEARTHOME_CITY_GYM_ENTRANCE_ROOM);
                MapHeaderData_SetWarpEventDestWarpID(fieldSystem, eventIndex, 1);
            }

            door++;
        }

        ov5_021F4CEC(fieldSystem->fieldEffMan, features->clueX, features->clueZ, features->correctDoorID);
    }

    gymSystem->emptyTask = SysTask_Start(HearthomeGym_EmptyTask, gymSystem, 0);
}

void HearthomeGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    HearthomeGymSystem *gymSystem = fieldSystem->unk_04->dynamicMapFeaturesData;

    SysTask_Done(gymSystem->emptyTask);
    HearthomeGym_FreeTrainers(gymSystem);
    Heap_Free(gymSystem);

    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

static void HearthomeGym_EmptyTask(SysTask *task, void *data)
{
}

static void HearthomeGym_InitFog(HearthomeGymSystem *gymSystem)
{
    HearthomeGymFog *fog = &gymSystem->fog;
    FogManager *fogMan = gymSystem->fieldSystem->fogMan;

    fog->fogMan = fogMan;
    fog->fogSlope = GX_FOGSLOPE_0x0020;
    fog->fogR = 1;
    fog->fogG = 1;
    fog->fogB = 1;
    fog->fogAlpha = 1;

    char fogDensity = 109;
    if (TrainerInfo_HasBadge(SaveData_GetTrainerInfo(gymSystem->fieldSystem->saveData), BADGE_ID_RELIC) == TRUE) {
        fogDensity = 91;
    } else if (gymSystem->fieldSystem->location->mapId == MAP_HEADER_HEARTHOME_CITY_GYM_TRAINER_ROOM_2) {
        fogDensity = 119;
    }

    memset(fog->fogDensity, fogDensity, sizeof(fog->fogDensity));

    FogManager_ApplyParameters(fogMan, FOG_PARAMETER_ALL, TRUE, GX_FOGBLEND_COLOR_ALPHA, fog->fogSlope, 0);
    FogManager_ApplyColor(fogMan, FOG_PARAMETER_ALL, GX_RGB(fog->fogR, fog->fogG, fog->fogB), fog->fogAlpha);
    FogManager_ApplyDensityTable(fogMan, fog->fogDensity);
}

static void HearthomeGym_InitTrainers(HearthomeGymSystem *gymSystem)
{
    int objIndex, localID;
    HearthomeGymTrainer *trainer = gymSystem->trainers;
    const MapObjectManager *mapObjMan = gymSystem->fieldSystem->mapObjMan;

    objIndex = 0;
    int i = 0;
    int taskPriority = MapObjectMan_GetTaskBasePriority(mapObjMan) + 2;

    MapObject *trainerObj;
    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &trainerObj, &objIndex, MAP_OBJ_STATUS_0)) {
        localID = MapObject_GetLocalID(trainerObj);
        trainer->unk_08 = MapObject_GetDataAt(trainerObj, 0);

        if (localID == LOCALID_PLAYER || MapObject_GetTrainerType(trainerObj) == TRAINER_TYPE_NORMAL && trainer->unk_08 != 0) {
            trainer->initialized = TRUE;
            trainer->initialDir = MapObject_GetFacingDir(trainerObj);
            trainer->mapObj = trainerObj;
            trainer->gymSystem = gymSystem;

            if (localID == LOCALID_PLAYER) {
                trainer->unk_08 = 2;
            }

            trainer->animMan = ov5_021F4840(gymSystem->fieldSystem->fieldEffMan, trainerObj, trainer->unk_08, 3);
            trainer->emptyTask = SysTask_Start(HearthomeGym_EmptyTrainerTask, trainer, taskPriority);
            GF_ASSERT(trainer->emptyTask);

            i++;
            GF_ASSERT(i < HEARTHOME_ROOM_MAX_TRAINERS);
            trainer++;
        }
    }
}

static void HearthomeGym_FreeTrainers(HearthomeGymSystem *gymSystem)
{
    int i;
    HearthomeGymTrainer *trainer = gymSystem->trainers;

    for (i = 0; i < HEARTHOME_ROOM_MAX_TRAINERS; i++, trainer++) {
        if (trainer->initialized) {
            SysTask_Done(trainer->emptyTask);
            trainer->initialized = FALSE;
        }
    }
}

static void HearthomeGym_EmptyTrainerTask(SysTask *task, void *data)
{
}

BOOL HearthomeGym_CheckIfPlayerSeesTrainer(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(mapFeatures) != DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) {
        return FALSE;
    }

    int playerDirOpposite;
    int objIndex = 0;
    MapObject *trainerObj = NULL;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
    MapObject *playerObj = PlayerAvatar_GetMapObject(playerAvatar);
    playerDirOpposite = Direction_GetOpposite(MapObject_GetFacingDir(playerObj));

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &trainerObj, &objIndex, MAP_OBJ_STATUS_0)) {
        if (trainerObj != playerObj && FieldSystem_IsTrainerDefeated(fieldSystem, trainerObj) == TRUE) {
            int trainerDistance = MapObject_GetDistanceToPlayer(trainerObj, playerAvatar, playerDirOpposite, 2);

            if (trainerDistance != DISTANCE_INVALID) {
                int scriptID = MapObject_GetScript(trainerObj);

                ScriptManager_Set(fieldSystem, SCRIPT_ID(SINGLE_BATTLES, MAX_TRAINERS), trainerObj);
                ScriptManager_SetApproachingTrainer(fieldSystem, trainerObj, trainerDistance, playerDirOpposite, scriptID, Script_GetTrainerID(scriptID), APPROACH_TYPE_SINGLES, 0);
                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL HearthomeGym_SetTrainerPostBattleMovement(FieldSystem *fieldSystem, MapObject *trainerObj)
{
    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(mapFeatures) != DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) {
        return FALSE;
    }

    MapObject_SetXInitial(trainerObj, MapObject_GetX(trainerObj));
    MapObject_SetZInitial(trainerObj, MapObject_GetZ(trainerObj));
    MapObject_SetMovementRangeX(trainerObj, 2);
    MapObject_SetMovementRangeZ(trainerObj, 2);
    MapObject_SwitchMovementType(trainerObj, MOVEMENT_TYPE_WANDER_AROUND);

    return TRUE;
}

BOOL HearthomeGym_CheckIfEnteredIncorrectDoor(FieldSystem *fieldSystem, int playerX, int playerZ, int *transitionDir)
{
    if (*transitionDir != DIR_NORTH) {
        return FALSE;
    }

    PersistedMapFeatures *mapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    if (PersistedMapFeatures_GetID(mapFeatures) != DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) {
        return FALSE;
    }

    HearthomeGymPersistedFeatures *features = PersistedMapFeatures_GetBuffer(mapFeatures, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);
    if (features->correctDoorID == HEARTHOME_DOOR_ID_EXIT) {
        return FALSE;
    }

    int i = 0;
    int mapID = fieldSystem->location->mapId;
    const HearthomeGymTrainerRoomLayout *room = sTrainerRoomLayouts;

    do {
        if (room->mapID == mapID) {
            break;
        }

        room++;
        i++;
    } while (i < HEARTHOME_NUM_TRAINER_ROOMS);

    GF_ASSERT(i != HEARTHOME_NUM_TRAINER_ROOMS);

    const HearthomeGymTrainerRoomDoor *door = sTrainerRoomDoors[i];

    while (door->id != HEARTHOME_DOOR_ID_EXIT) {
        if (door->x == playerX && door->z == playerZ && door->id == features->correctDoorID) {
            return FALSE;
        }

        door++;
    }

    *transitionDir = DIR_SOUTH;
    return TRUE;
}
