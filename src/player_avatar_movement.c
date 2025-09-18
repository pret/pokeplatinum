#include "player_avatar_movement.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/player_avatar.h"
#include "generated/game_records.h"
#include "generated/movement_actions.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system.h"
#include "overlay005/land_data_manager_decl.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay009/ov9_02249960.h"

#include "dynamic_map_features.h"
#include "game_records.h"
#include "inlines.h"
#include "map_object.h"
#include "map_object_move.h"
#include "map_tile_behavior.h"
#include "persisted_map_features_init.h"
#include "player_avatar.h"
#include "sound_playback.h"
#include "terrain_collision_manager.h"
#include "unk_020655F4.h"

typedef BOOL (*UnkFuncPtr_020EDB84)(u8);

typedef struct {
    UnkFuncPtr_020EDB84 checkTileBehavior;
    enum SpecialMovementType movementType;
} TileBehaviorMapping;

typedef struct {
    s16 xOffset;
    s16 yOffset;
    s16 zOffset;
    s16 padding;
} DistortionDirectionOffset;

static BOOL PlayerAvatar_Movement_CheckStartMoveInternal(PlayerAvatar *playerAvatar, int direction);
static void PlayerAvatar_Movement_StartMoveInit(PlayerAvatar *playerAvatar, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_State_HandleDeepSwampMovement(PlayerAvatar *playerAvatar);
static void PlayerAvatar_Audio_PlayWalkSE(PlayerAvatar *playerAvatar);
static int PlayerAvatar_Movement_ValidateSpecialMovement(PlayerAvatar *playerAvatar, int direction);
static enum SpecialMovementType PlayerAvatar_Movement_GetSpecialMovementType(PlayerAvatar *playerAvatar, int direction);
static int PlayerAvatar_Movement_ExecuteSpecialMovement(PlayerAvatar *playerAvatar, enum SpecialMovementType movementType, int direction);
static void PlayerAvatar_SpecialMovement_ClearState(PlayerAvatar *playerAvatar);
static enum ElevationChange PlayerAvatar_State_CheckElevationChange(PlayerAvatar *playerAvatar, int direction);
static int PlayerAvatar_State_AdjustCyclingSpeed(PlayerAvatar *playerAvatar, enum ElevationChange elevationChange);
static void PlayerAvatar_State_SetCyclingAnimation(PlayerAvatar *playerAvatar, int direction);
static void PlayerAvatar_Movement_HandleByState(PlayerAvatar *playerAvatar, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Movement_HandleWalking(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static enum WalkingMovementType PlayerAvatar_Walking_GetMovementType(PlayerAvatar *playerAvatar, int direction);
static enum AvatarMoveState PlayerAvatar_Walking_MapTypeToState(enum WalkingMovementType movementType);
static enum MovementAction PlayerAvatar_Walking_AdjustAnimationForSnow(MapObject *mapObj, u8 tileBehavior, enum MovementAction movementAction);
static enum MovementAction PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(MapObject *mapObj, u8 tileBehavior, enum MovementAction movementAction);
static enum WalkingMovementType PlayerAvatar_Walking_DetermineMovementState(PlayerAvatar *playerAvatar, int direction);
static void PlayerAvatar_Walking_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Walking_HandleDistortedMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Walking_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Distortion_HandleFloorMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Distortion_HandleWestWallMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Distortion_HandleEastWallMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Distortion_HandleCeilingMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Distortion_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Cycling_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_TryCyclingGearChange(PlayerAvatar *playerAvatar, u16 keyPad);
enum MovementAction PlayerAvatar_Animation_GetCyclingMovementAction(PlayerAvatar *playerAvatar, int direction);
static BOOL PlayerAvatar_Cycling_HandleSpeedIncrease(PlayerAvatar *playerAvatar);
static BOOL PlayerAvatar_Cycling_HandleSpeedDecrease(PlayerAvatar *playerAvatar);
static void PlayerAvatar_Cycling_RouteNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static enum CyclingMovementType PlayerAvatar_Cycling_GetNormalMovementType(PlayerAvatar *playerAvatar, int direction);
static enum AvatarMoveState PlayerAvatar_Cycling_MapNormalTypeToState(int movementType);
static enum CyclingMovementType PlayerAvatar_Cycling_DetermineNormalState(PlayerAvatar *playerAvatar, int direction);
static void PlayerAvatar_Cycling_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Cycling_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Cycling_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Cycling_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_CyclingHighGear_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static enum CyclingMovementType PlayerAvatar_Cycling_GetMovementType(PlayerAvatar *playerAvatar, int direction);
static enum AvatarMoveState PlayerAvatar_Cycling_MapTypeToState(enum CyclingMovementType movementType);
static enum CyclingMovementType PlayerAvatar_Cycling_DetermineState(PlayerAvatar *playerAvatar, int direction);
static void PlayerAvatar_CyclingHighGear_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_CyclingHighGear_HandleMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_CyclingHighGear_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_CyclingHighGear_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static u32 PlayerAvatar_Collision_CheckBasicInternal(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Collision_CheckJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Collision_CheckDoubleJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Collision_CheckWarpEntrances(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Collision_CheckBikeRamps(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Collision_CheckWaterTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Collision_CheckBikeBridgeRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Collision_CheckCyclingTerrainRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Distortion_CheckSurfableTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Distortion_CheckCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Distortion_CheckDoubleJump(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Input_GetHorizontalDirection(u16 keyPad);
static int PlayerAvatar_Input_GetVerticalDirection(u16 keyPad);
static int PlayerAvatar_Input_DetermineMovementDirection(PlayerAvatar *playerAvatar, u16 keyPad, u16 keyPress);
static int PlayerAvatar_State_IsTurnAction(enum MovementAction movementAction);
static void PlayerAvatar_State_IncrementStepCounter(PlayerAvatar *playerAvatar);
static int PlayerAvatar_State_CheckBikeBridgeValidity(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Cycling_IsUnderCyclingRoad(PlayerAvatar *playerAvatar, u32 tileBehavior, int direction);
static void PlayerAvatar_Animation_SetMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, enum MovementAction movementAction, int duration);

static const DistortionDirectionOffset sDistortionFloorOffsets[4] = {
    { .xOffset = 0, .yOffset = 0, .zOffset = -1, .padding = 0 },
    { .xOffset = 0, .yOffset = 0, .zOffset = 1, .padding = 0 },
    { .xOffset = -1, .yOffset = 0, .zOffset = 0, .padding = 0 },
    { .xOffset = 1, .yOffset = 0, .zOffset = 0, .padding = 0 }
};

static const DistortionDirectionOffset sDistortionWestWallOffsets[4] = {
    { .xOffset = 0, .yOffset = 1, .zOffset = 0, .padding = 0 },
    { .xOffset = 0, .yOffset = -1, .zOffset = 0, .padding = 0 },
    { .xOffset = 0, .yOffset = 0, .zOffset = 1, .padding = 0 },
    { .xOffset = 0, .yOffset = 0, .zOffset = -1, .padding = 0 }
};

static const DistortionDirectionOffset sDistortionEastWallOffsets[4] = {
    { .xOffset = 0, .yOffset = 1, .zOffset = 0, .padding = 0 },
    { .xOffset = 0, .yOffset = -1, .zOffset = 0, .padding = 0 },
    { .xOffset = 0, .yOffset = 0, .zOffset = -1, .padding = 0 },
    { .xOffset = 0, .yOffset = 0, .zOffset = 1, .padding = 0 }
};

static const DistortionDirectionOffset sDistortionCeilingOffsets[4] = {
    { .xOffset = 0, .yOffset = 0, .zOffset = 1, .padding = 0 },
    { .xOffset = 0, .yOffset = 0, .zOffset = -1, .padding = 0 },
    { .xOffset = -1, .yOffset = 0, .zOffset = 0, .padding = 0 },
    { .xOffset = 1, .yOffset = 0, .zOffset = 0, .padding = 0 }
};

static const TileBehaviorMapping sTileBehaviorMappings[];
static int (*const sSpecialMovementHandlers[6])(PlayerAvatar *, int);

void PlayerAvatar_Movement_Control(PlayerAvatar *playerAvatar, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress, BOOL allowSpecialMovement)
{
    if (direction == DIR_NONE) {
        direction = PlayerAvatar_Input_DetermineMovementDirection(playerAvatar, keyPad, keyPress);
    }

    PlayerAvatar_TryCyclingGearChange(playerAvatar, keyPad);

    if (PlayerAvatar_Movement_CheckStartMoveInternal(playerAvatar, direction) == FALSE) {
        return;
    }

    PlayerAvatar_Movement_StartMoveInit(playerAvatar, direction, keyPad, keyPress);
    PlayerAvatar_RequestChangeState(playerAvatar);

    if (PlayerAvatar_Movement_ValidateSpecialMovement(playerAvatar, direction) == TRUE) {
        ov5_021E0EEC(playerAvatar);
        return;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_WALKING) {
        enum WalkingMovementType movementType = PlayerAvatar_Walking_GetMovementType(playerAvatar, direction);

        if (movementType != WALKING_MOVEMENT_TURN_IN_PLACE) {
            ov5_021E0EEC(playerAvatar);
        } else if (allowSpecialMovement == TRUE) {
            ov5_021E0E94(playerAvatar);
        }
    }

    PlayerAvatar_Movement_HandleByState(playerAvatar, landDataManager, direction, keyPad, keyPress);

    PlayerAvatar_State_HandleDeepSwampMovement(playerAvatar);
    PlayerAvatar_Audio_PlayWalkSE(playerAvatar);
}

BOOL PlayerAvatar_Movement_CheckStartMove(PlayerAvatar *playerAvatar, int direction)
{
    return PlayerAvatar_Movement_CheckStartMoveInternal(playerAvatar, direction);
}

static BOOL PlayerAvatar_Movement_CheckStartMoveInternal(PlayerAvatar *playerAvatar, int direction)
{
    enum MovementAction movementAction;
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
        return TRUE;
    }

    if (direction == DIR_NONE) {
        return FALSE;
    }

    movementAction = MapObject_GetMovementAction(mapObj);

    if (PlayerAvatar_State_IsTurnAction(movementAction) == TRUE) {
        u32 collisionResult;

        if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == TRUE) {
            collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);

            if ((collisionResult & (~COLLISION_FLAG_DOUBLE_JUMP_TILES)) && PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_FLOOR) {
                FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
                int xOut, x = MapObject_GetX(mapObj);
                int yOut, y = MapObject_GetY(mapObj);
                int zOut, z = MapObject_GetZ(mapObj);

                y = y / 2;
                xOut = x;
                yOut = y;
                zOut = z;

                PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &xOut, &yOut, &zOut);

                if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, xOut, yOut, zOut) == FALSE) {
                    if (ov9_02250FD8(fieldSystem, xOut, yOut, zOut) == TRUE) {
                        ov9_02251000(fieldSystem, xOut, yOut, zOut);
                        collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);
                        ov9_02251000(fieldSystem, x, y, z);
                    }
                }
            }
        } else {
            collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);
        }

        if (collisionResult == COLLISION_FLAG_NONE) {
            return TRUE;
        }

        if ((collisionResult == COLLISION_FLAG_WATER_TILES) && (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_SURFING)) {
            return TRUE;
        }

        return FALSE;
    }

    return FALSE;
}

static void PlayerAvatar_Movement_StartMoveInit(PlayerAvatar *playerAvatar, int direction, u16 keyPad, u16 keyPress)
{
    sub_0205EBEC(playerAvatar, PlayerAvatar_Input_GetHorizontalDirection(keyPress), PlayerAvatar_Input_GetVerticalDirection(keyPress));
    sub_0205F054(playerAvatar);
}

static void PlayerAvatar_State_HandleDeepSwampMovement(PlayerAvatar *playerAvatar)
{
    if (sub_0205F060(playerAvatar) == TRUE && PlayerAvatar_MoveState(playerAvatar) == AVATAR_MOVE_STATE_MOVING) {
        sub_0205EF6C(playerAvatar, 0);

        if (PlayerAvatar_IsNotInDeepSwamp(playerAvatar) == TRUE) {
            PlayerAvatar_SetInDeepSwamp(playerAvatar, FALSE);
            sub_02062EE0(Player_MapObject(playerAvatar), 0);
        }
    }
}

static void PlayerAvatar_Audio_PlayWalkSE(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_MoveState(playerAvatar) == AVATAR_MOVE_STATE_MOVING) {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        u8 currentTileBehavior, directionTileBehavior = MapObject_GetCurrTileBehavior(mapObj);

        {
            enum MovementAction movementAction = MapObject_GetMovementAction(mapObj);
            int direction = MovementAction_GetDirFromAction(movementAction);

            if (direction == DIR_NONE) {
                currentTileBehavior = directionTileBehavior;
            } else {
                currentTileBehavior = MapObject_GetTileBehaviorFromDir(mapObj, direction);
            }
        }

        if (MapObject_IsOnSnow(mapObj, directionTileBehavior) == TRUE || TileBehavior_IsSnowWithShadows(directionTileBehavior) == TRUE) {
            Sound_PlayEffect(SEQ_SE_PL_YUKI);
        }

        if (TileBehavior_IsPuddle(directionTileBehavior) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_FOOT3_0);
        }

        if (TileBehavior_IsShallowWater(directionTileBehavior) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_FOOT3_1);
        }

        if (TileBehavior_IsSand(directionTileBehavior) == TRUE) {
        }

        if (TileBehavior_IsMud(directionTileBehavior) == TRUE && TileBehavior_IsDeepMud(directionTileBehavior) != TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_MARSH_WALK);
        }

        int code = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(code) == FALSE) {
            if (TileBehavior_IsVeryTallGrass(directionTileBehavior) == TRUE || TileBehavior_IsVeryTallGrass(currentTileBehavior) == TRUE) {
                Sound_PlayEffect(SEQ_SE_DP_KUSA);
            }
        }
    }
}

void PlayerAvatar_State_UpdateMovementState(PlayerAvatar *playerAvatar)
{
    enum AvatarMoveState moveState;
    enum PlayerMoveState playerMoveState;
    enum MovementAction movementAction;
    const MapObject *mapObj;

    moveState = PlayerAvatar_MoveState(playerAvatar);
    playerMoveState = Player_MoveState(playerAvatar);
    mapObj = Player_MapObject(playerAvatar);

    sub_0205EB10(playerAvatar, 0);

    enum SpecialMovementType specialMovementType = PlayerAvatar_Movement_GetSpecialMovementType(playerAvatar, DIR_NONE);

    if (specialMovementType != SPECIAL_MOVEMENT_TYPE_NONE && specialMovementType != SPECIAL_MOVEMENT_TYPE_CYCLING_ROAD) {
        sub_0205EB10(playerAvatar, 2);
        return;
    }

    if (LocalMapObj_IsAnimationSet(mapObj) == FALSE) {
        switch (moveState) {
        case AVATAR_MOVE_STATE_NONE:
            break;
        case AVATAR_MOVE_STATE_MOVING:
            movementAction = MapObject_GetMovementAction(mapObj);

            if (PlayerAvatar_State_IsTurnAction(movementAction) == TRUE) {
                break;
            }

            if (playerMoveState == PLAYER_MOVE_STATE_NONE || playerMoveState == PLAYER_MOVE_STATE_END) {
                sub_0205EB10(playerAvatar, 1);
            } else {
                sub_0205EB10(playerAvatar, 2);
            }
            break;
        case AVATAR_MOVE_STATE_TURNING:
            sub_0205EB10(playerAvatar, 2);
            break;
        }

        return;
    }

    if (LocalMapObj_CheckAnimationFinished(mapObj) == TRUE) {
        switch (moveState) {
        case AVATAR_MOVE_STATE_NONE:
            break;
        case AVATAR_MOVE_STATE_MOVING:
            switch (playerMoveState) {
            case PLAYER_MOVE_STATE_NONE:
                break;
            case PLAYER_MOVE_STATE_END:
                sub_0205EB10(playerAvatar, 0);
                break;
            default:
                sub_0205EB10(playerAvatar, 3);
            }
            break;
        case AVATAR_MOVE_STATE_TURNING:
            switch (playerMoveState) {
            case PLAYER_MOVE_STATE_NONE:
                break;
            case PLAYER_MOVE_STATE_END:
                sub_0205EB10(playerAvatar, 0);
                break;
            default:
                sub_0205EB10(playerAvatar, 3);
            }
            break;
        }

        return;
    }
}

void PlayerAvatar_State_ClearMovementState(PlayerAvatar *playerAvatar)
{
    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

BOOL PlayerAvatar_State_IsMovementBlocked(PlayerAvatar *playerAvatar)
{
    enum AvatarMoveState moveState;
    enum PlayerMoveState playerMoveState;
    enum MovementAction movementAction;
    const MapObject *mapObj;

    moveState = PlayerAvatar_MoveState(playerAvatar);
    playerMoveState = Player_MoveState(playerAvatar);

    if (moveState == AVATAR_MOVE_STATE_NONE) {
        return TRUE;
    }

    if (moveState == AVATAR_MOVE_STATE_TURNING) {
        return TRUE;
    }

    if (moveState == AVATAR_MOVE_STATE_MOVING) {
        if (playerMoveState == PLAYER_MOVE_STATE_NONE || playerMoveState == PLAYER_MOVE_STATE_END) {
            return TRUE;
        }

        mapObj = Player_MapObject(playerAvatar);

        if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
            return TRUE;
        }

        movementAction = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(movementAction) == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

void PlayerAvatar_State_ForceTurn(PlayerAvatar *playerAvatar, int direction)
{
    MapObject *mapObj;

    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);

    mapObj = Player_MapObject(playerAvatar);

    MapObject_TryFace(mapObj, direction);
    sub_02062A0C(mapObj, 0);
    MapObject_UpdateCoords(mapObj);
    sub_020656DC(mapObj);
    LocalMapObj_SetAnimationCode(mapObj, MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH));
}

static int PlayerAvatar_Movement_ValidateSpecialMovement(PlayerAvatar *playerAvatar, int direction)
{
    enum SpecialMovementType movementType = PlayerAvatar_Movement_GetSpecialMovementType(playerAvatar, direction);

    movementType = PlayerAvatar_Movement_ExecuteSpecialMovement(playerAvatar, movementType, direction);
    return movementType;
}

static enum SpecialMovementType PlayerAvatar_Movement_GetSpecialMovementType(PlayerAvatar *playerAvatar, int direction)
{
    int i = 0;
    u32 tileBehavior = MapObject_GetCurrTileBehavior(Player_MapObject(playerAvatar));

    if (PlayerAvatar_Cycling_IsUnderCyclingRoad(playerAvatar, tileBehavior, direction) == TRUE) {
        return SPECIAL_MOVEMENT_TYPE_CYCLING_ROAD;
    }

    if (sub_0205EF84(playerAvatar) == TRUE) {
        return SPECIAL_MOVEMENT_TYPE_NONE;
    }

    do {
        if (sTileBehaviorMappings[i].checkTileBehavior(tileBehavior) == TRUE) {
            return sTileBehaviorMappings[i].movementType;
        }

        i++;
    } while (sTileBehaviorMappings[i].checkTileBehavior != NULL);

    return SPECIAL_MOVEMENT_TYPE_NONE;
}

static const TileBehaviorMapping sTileBehaviorMappings[] = {
    { .checkTileBehavior = TileBehavior_IsIce, .movementType = SPECIAL_MOVEMENT_TYPE_ICE },
    { .checkTileBehavior = TileBehavior_IsBikeSlope, .movementType = SPECIAL_MOVEMENT_TYPE_BIKE_SLOPE },
    { .checkTileBehavior = TileBehavior_IsBikeRampEastward, .movementType = SPECIAL_MOVEMENT_TYPE_BIKE_RAMP_EASTWARD },
    { .checkTileBehavior = TileBehavior_IsBikeRampWestward, .movementType = SPECIAL_MOVEMENT_TYPE_BIKE_RAMP_WESTWARD },
    { .checkTileBehavior = NULL, .movementType = SPECIAL_MOVEMENT_TYPE_UNKNOWN }
};

static BOOL PlayerAvatar_Movement_ExecuteSpecialMovement(PlayerAvatar *playerAvatar, enum SpecialMovementType movementType, int direction)
{
    if (sSpecialMovementHandlers[movementType](playerAvatar, direction) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static BOOL PlayerAvatar_SpecialMovement_HandleNormal(PlayerAvatar *playerAvatar, int direction)
{
    PlayerAvatar_SpecialMovement_ClearState(playerAvatar);
    return FALSE;
}

static BOOL PlayerAvatar_SpecialMovement_HandleIce(PlayerAvatar *playerAvatar, int direction)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int movingDir = MapObject_GetMovingDir(mapObj);
    enum ElevationChange elevationChange = PlayerAvatar_State_CheckElevationChange(playerAvatar, movingDir);
    u32 collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, movingDir);

    sub_0205EF40(playerAvatar, 1);

    if (collisionResult != COLLISION_FLAG_NONE) {
        PlayerAvatar_SpecialMovement_ClearState(playerAvatar);

        if (elevationChange != ELEVATION_CHANGE_UP) {
            sub_0205EF6C(playerAvatar, 1);
            sub_0205EB08(playerAvatar, 0);
            return FALSE;
        }

        movingDir = Direction_GetOpposite(movingDir);
        collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, movingDir);

        if (collisionResult != COLLISION_FLAG_NONE) {
            return FALSE;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(movingDir, MOVEMENT_ACTION_WALK_SLOW_NORTH), 3);
        sub_0205EF6C(playerAvatar, 1);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
        sub_0205EB08(playerAvatar, 1);

        return TRUE;
    }

    if (PlayerAvatar_State_AdjustCyclingSpeed(playerAvatar, elevationChange) == FALSE) {
        PlayerAvatar_SpecialMovement_ClearState(playerAvatar);

        movingDir = Direction_GetOpposite(movingDir);
        collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, movingDir);

        if (collisionResult != COLLISION_FLAG_NONE) {
            return FALSE;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(movingDir, MOVEMENT_ACTION_WALK_SLOW_NORTH), 3);
        sub_0205EF6C(playerAvatar, 1);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_State_SetCyclingAnimation(playerAvatar, movingDir);
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static BOOL PlayerAvatar_SpecialMovement_HandleBikeSlope(PlayerAvatar *playerAvatar, int direction)
{
    u32 collisionResult;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int movingDir = MapObject_GetMovingDir(mapObj);

    Sound_PlayEffect(SEQ_SE_DP_SUNA);

    if (movingDir == DIR_NORTH) {
        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING && PlayerAvatar_Speed(playerAvatar) >= CYCLING_SPEED_FAST) {
            if (direction == MOVEMENT_ACTION_FACE_NORTH) {
                PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(movingDir, MOVEMENT_ACTION_WALK_FASTER_SOUTH), 6);
                sub_0205EB08(playerAvatar, 1);
                return TRUE;
            }
        }

        movingDir = Direction_GetOpposite(movingDir);
        collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, movingDir);

        if (collisionResult != COLLISION_FLAG_NONE) {
            return FALSE;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(movingDir, MOVEMENT_ACTION_WALK_SLOW_NORTH), 3);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EB08(playerAvatar, 1);
        sub_0205F01C(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
        return TRUE;
    } else if (movingDir == DIR_SOUTH) {
        if (sub_0205F034(playerAvatar) == FALSE) {
            PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(movingDir, MOVEMENT_ACTION_WALK_FASTER_SOUTH), 6);
            sub_0205EB08(playerAvatar, 1);

            if (PlayerAvatar_CyclingGear(playerAvatar) == TRUE) {
                PlayerAvatar_SetSpeed(playerAvatar, CYCLING_SPEED_FAST);
            }

            sub_0205EBEC(playerAvatar, -1, -1);
            return TRUE;
        } else {
            MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
            PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(movingDir, MOVEMENT_ACTION_WALK_SLOW_NORTH), 3);
            sub_0205EF40(playerAvatar, 1);
            sub_0205EB08(playerAvatar, 1);
            sub_0205F01C(playerAvatar, 1);
            sub_0205EBEC(playerAvatar, -1, -1);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_SpecialMovement_HandleBikeRampEastward(PlayerAvatar *playerAvatar, int direction)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int movingDir = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_CyclingGear(playerAvatar) == TRUE) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MOVEMENT_ACTION_JUMP_FARTHER_EAST, 2);
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MOVEMENT_ACTION_JUMP_NEAR_SLOW_EAST, 3);
    }

    sub_0205EF40(playerAvatar, 1);
    sub_0205F074(playerAvatar, 1);

    return TRUE;
}

static BOOL PlayerAvatar_SpecialMovement_HandleBikeRampWestward(PlayerAvatar *playerAvatar, int direction)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int movingDir = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_CyclingGear(playerAvatar) == TRUE) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MOVEMENT_ACTION_JUMP_FARTHER_WEST, 2);
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MOVEMENT_ACTION_JUMP_NEAR_SLOW_WEST, 2);
    }

    sub_0205EF40(playerAvatar, 1);
    sub_0205F074(playerAvatar, 1);

    return TRUE;
}

static BOOL PlayerAvatar_SpecialMovement_HandleBikeRamp(PlayerAvatar *playerAvatar, int direction)
{
    int testDirection = 1;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    u32 collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, testDirection);

    if (collisionResult == COLLISION_FLAG_NONE) {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(testDirection, MOVEMENT_ACTION_WALK_FASTER_NORTH), 6);
        sub_0205EB08(playerAvatar, 1);
        PlayerAvatar_SetSpeed(playerAvatar, CYCLING_SPEED_FAST);

        return TRUE;
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(testDirection, MOVEMENT_ACTION_FACE_SOUTH), 1);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EB08(playerAvatar, 0);
        sub_0205EF98(playerAvatar, 0);
    }

    return TRUE;
}

static int (*const sSpecialMovementHandlers[6])(PlayerAvatar *, int) = {
    PlayerAvatar_SpecialMovement_HandleNormal,
    PlayerAvatar_SpecialMovement_HandleIce,
    PlayerAvatar_SpecialMovement_HandleBikeSlope,
    PlayerAvatar_SpecialMovement_HandleBikeRampEastward,
    PlayerAvatar_SpecialMovement_HandleBikeRampWestward,
    PlayerAvatar_SpecialMovement_HandleBikeRamp
};

static void PlayerAvatar_SpecialMovement_ClearState(PlayerAvatar *playerAvatar)
{
    if (sub_0205EF58(playerAvatar) == TRUE) {
        MapObject *mapObj = Player_MapObject(playerAvatar);

        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);

        if (sub_0205F08C(playerAvatar) == FALSE) {
            PlayerAvatar_ClearSpeed(playerAvatar);
        }

        sub_0205EF40(playerAvatar, 0);
        sub_0205F074(playerAvatar, 0);
        sub_0205F01C(playerAvatar, 0);
    }
}

static enum ElevationChange PlayerAvatar_State_CheckElevationChange(PlayerAvatar *playerAvatar, int direction)
{
    int elevationResult;
    VecFx32 currentPos, nextPos;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    MapObject_GetPosPtr(mapObj, &currentPos);
    nextPos = currentPos;

    VecFx32_StepDirection(direction, &nextPos, ((16 * FX32_ONE) >> 1) / 2);
    elevationResult = sub_020644A4(fieldSystem, &nextPos);

    if (elevationResult == 0 || currentPos.y == nextPos.y) {
        return ELEVATION_CHANGE_NONE;
    }

    if (currentPos.y > nextPos.y) {
        return ELEVATION_CHANGE_DOWN;
    }

    return ELEVATION_CHANGE_UP;
}

static BOOL PlayerAvatar_State_AdjustCyclingSpeed(PlayerAvatar *playerAvatar, enum ElevationChange elevationChange)
{
    enum CyclingSpeed currentSpeed = PlayerAvatar_Speed(playerAvatar);

    if (elevationChange == ELEVATION_CHANGE_UP) {
        currentSpeed--;

        if (currentSpeed < CYCLING_SPEED_STOPPED) {
            return FALSE;
        }
    } else if (elevationChange == ELEVATION_CHANGE_DOWN) {
        currentSpeed++;

        if (currentSpeed > CYCLING_SPEED_FAST) {
            currentSpeed = CYCLING_SPEED_FAST;
        }
    }

    PlayerAvatar_SetSpeed(playerAvatar, currentSpeed);
    return TRUE;
}

static void PlayerAvatar_State_SetCyclingAnimation(PlayerAvatar *playerAvatar, int direction)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    enum MovementAction baseMovementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
    enum CyclingSpeed currentSpeed = PlayerAvatar_Speed(playerAvatar);
    int duration = 5;

    switch (currentSpeed) {
    case CYCLING_SPEED_SLOW:
        baseMovementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH;
        duration = 5;
        break;
    case CYCLING_SPEED_MEDIUM:
        baseMovementAction = MOVEMENT_ACTION_WALK_FASTER_NORTH;
        duration = 6;
        break;
    case CYCLING_SPEED_FAST:
        baseMovementAction = MOVEMENT_ACTION_WALK_FASTER_NORTH;
        duration = 6;
        break;
    }

    enum MovementAction movementAction = MovementAction_TurnActionTowardsDir(direction, baseMovementAction);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

static void PlayerAvatar_Movement_HandleByState(PlayerAvatar *playerAvatar, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    int playerState = PlayerAvatar_GetPlayerState(playerAvatar);
    MapObject *mapObj = Player_MapObject(playerAvatar);

    switch (playerState) {
    case PLAYER_STATE_WALKING:
    case PLAYER_STATE_SURFING:
        PlayerAvatar_Movement_HandleWalking(playerAvatar, mapObj, landDataManager, direction, keyPad, keyPress);
        break;
    case PLAYER_STATE_CYCLING:
        PlayerAvatar_Cycling_RouteMovement(playerAvatar, mapObj, landDataManager, direction, keyPad, keyPress);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void PlayerAvatar_Movement_HandleWalking(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    enum WalkingMovementType movementType = PlayerAvatar_Walking_GetMovementType(playerAvatar, direction);

    switch (movementType) {
    case WALKING_MOVEMENT_TURN_IN_PLACE:
        PlayerAvatar_Walking_HandleTurnInPlace(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case WALKING_MOVEMENT_DISTORTED:
        PlayerAvatar_Walking_HandleDistortedMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case WALKING_MOVEMENT_DISTORTION_TURN:
        PlayerAvatar_Distortion_HandleTurn(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    }
}

static enum WalkingMovementType PlayerAvatar_Walking_GetMovementType(PlayerAvatar *playerAvatar, int direction)
{
    enum WalkingMovementType movementState = PlayerAvatar_Walking_DetermineMovementState(playerAvatar, direction);
    enum AvatarMoveState stateValue = PlayerAvatar_Walking_MapTypeToState(movementState);

    sub_0205EB08(playerAvatar, stateValue);
    return movementState;
}

static enum AvatarMoveState PlayerAvatar_Walking_MapTypeToState(enum WalkingMovementType movementType)
{
    switch (movementType) {
    case WALKING_MOVEMENT_TURN_IN_PLACE:
        return AVATAR_MOVE_STATE_NONE;
    case WALKING_MOVEMENT_DISTORTED:
        return AVATAR_MOVE_STATE_MOVING;
    case WALKING_MOVEMENT_DISTORTION_TURN:
        return AVATAR_MOVE_STATE_TURNING;
    }

    GF_ASSERT(FALSE);
    return AVATAR_MOVE_STATE_NONE;
}

static enum MovementAction PlayerAvatar_Walking_AdjustAnimationForSnow(MapObject *mapObj, u8 tileBehavior, enum MovementAction movementAction)
{
    if (TileBehavior_IsDeepestSnow(tileBehavior) == TRUE) {
        return MOVEMENT_ACTION_WALK_SLOWER_NORTH;
    }

    if (TileBehavior_IsDeeperSnow(tileBehavior) == TRUE) {
        return MOVEMENT_ACTION_WALK_SLOW_NORTH;
    }

    if (TileBehavior_IsDeepSnow(tileBehavior) == TRUE) {
        return MOVEMENT_ACTION_WALK_NORMAL_NORTH;
    }

    return movementAction;
}

static enum MovementAction PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(MapObject *mapObj, u8 tileBehavior, enum MovementAction movementAction)
{
    return movementAction;
}

static enum WalkingMovementType PlayerAvatar_Walking_DetermineMovementState(PlayerAvatar *playerAvatar, int direction)
{
    int currentDir;

    if (direction == DIR_NONE) {
        sub_0205EB08(playerAvatar, 0);
        return WALKING_MOVEMENT_TURN_IN_PLACE;
    }

    currentDir = PlayerAvatar_GetDir(playerAvatar);

    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    if (distortionState != AVATAR_DISTORTION_STATE_NONE
        && distortionState != AVATAR_DISTORTION_STATE_ACTIVE
        && distortionState != AVATAR_DISTORTION_STATE_FLOOR) {
        currentDir = PlayerAvatar_GetMoveDir(playerAvatar);
    }

    if (currentDir != direction && PlayerAvatar_MoveState(playerAvatar) != AVATAR_MOVE_STATE_MOVING) {
        sub_0205EB08(playerAvatar, 2);
        return WALKING_MOVEMENT_DISTORTION_TURN;
    }

    sub_0205EB08(playerAvatar, 1);
    return WALKING_MOVEMENT_DISTORTED;
}

static void PlayerAvatar_Walking_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    enum MovementAction movementAction = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, 1);
}

static void PlayerAvatar_Walking_HandleDistortedMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_FLOOR:
        PlayerAvatar_Distortion_HandleFloorMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        PlayerAvatar_Distortion_HandleWestWallMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        PlayerAvatar_Distortion_HandleEastWallMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        PlayerAvatar_Distortion_HandleCeilingMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    default:
        PlayerAvatar_Walking_HandleNormalMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
    }
}

static void PlayerAvatar_Walking_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    enum MovementAction movementAction;
    int duration;

    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
        if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
            movementAction = MOVEMENT_ACTION_JUMP_FAR_NORTH;
            duration = 3;
        } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
            movementAction = MOVEMENT_ACTION_117;
            duration = 2;
        } else if (collisionResult != COLLISION_FLAG_NONE) {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == COLLISION_FLAG_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
        } else {
            movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH;
            duration = 4;

            {
                PlayerData *playerData = PlayerAvatar_PlayerData(playerAvatar);

                if (PlayerData_HasRunningShoes(playerData) == TRUE) {
                    if (PlayerAvatar_Input_CheckRunningShoes(playerAvatar, keyPress) == TRUE) {
                        movementAction = MOVEMENT_ACTION_RUN_NORTH;
                        duration = 5;
                    }
                }
            }

            movementAction = PlayerAvatar_Walking_AdjustAnimationForSnow(mapObj, MapObject_GetCurrTileBehavior(mapObj), movementAction);

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        }
    } else {
        if (collisionResult == COLLISION_FLAG_NONE || collisionResult == COLLISION_FLAG_WATER_TILES) {
            duration = 5;
            movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
            movementAction = PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(mapObj, MapObject_GetCurrTileBehavior(mapObj), movementAction);

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == COLLISION_FLAG_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
        }
    }

    movementAction = MovementAction_TurnActionTowardsDir(direction, movementAction);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

static void PlayerAvatar_Distortion_HandleFloorMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    enum MovementAction movementAction;
    int duration;

    collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);

    if (collisionResult & ~COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj);
        int z = MapObject_GetZ(mapObj);

        y = ((y) / 2);
        PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &x, &y, &z);

        if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, x, y, z) == FALSE) {
            if (ov9_02250FD8(fieldSystem, x, y, z) == TRUE) {
                ov9_02251000(fieldSystem, x, y, z);
                collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);
            }
        }
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
        if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
            movementAction = MOVEMENT_ACTION_117;
            duration = 2;
            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else if (collisionResult != COLLISION_FLAG_NONE) {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            duration = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, direction);
        } else {
            PlayerData *player;

            movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH;
            duration = 4;
            player = PlayerAvatar_PlayerData(playerAvatar);

            if (PlayerData_HasRunningShoes(player) == TRUE && PlayerAvatar_Input_CheckRunningShoes(playerAvatar, keyPress) == TRUE) {
                movementAction = MOVEMENT_ACTION_RUN_NORTH;
                duration = 5;
            }

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        }
    } else {
        if (collisionResult == COLLISION_FLAG_NONE || collisionResult == COLLISION_FLAG_WATER_TILES) {
            duration = 5;
            movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            duration = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, direction);
        }
    }

    movementAction = MovementAction_TurnActionTowardsDir(direction, movementAction);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

static void PlayerAvatar_Distortion_HandleGenericMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress, const int *normalAnimations, const int *runningAnimations, const int *surfAnimations, const int *turnAnimations, const int *turnDirections)
{
    u32 collisionResult;
    enum MovementAction movementAction;
    int duration;

    collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
        if (collisionResult != COLLISION_FLAG_NONE) {
            movementAction = turnAnimations[direction];
            duration = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, turnDirections[direction]);
        } else {
            PlayerData *playerData;

            duration = 4;
            movementAction = normalAnimations[direction];
            playerData = PlayerAvatar_PlayerData(playerAvatar);

            if (PlayerData_HasRunningShoes(playerData) == TRUE && PlayerAvatar_Input_CheckRunningShoes(playerAvatar, keyPress) == TRUE) {
                duration = 5;
                movementAction = runningAnimations[direction];
            }

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        }
    } else {
        if (collisionResult == COLLISION_FLAG_NONE || collisionResult == COLLISION_FLAG_WATER_TILES) {
            duration = 4;
            movementAction = surfAnimations[direction];

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            movementAction = turnAnimations[direction];
            duration = 1;

            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, turnDirections[direction]);
        }
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

static void PlayerAvatar_Distortion_HandleWestWallMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    int normalAnimations[4] = { 105, 106, 107, 108 };
    int runningAnimations[4] = { 121, 122, 123, 124 };
    int surfAnimations[4] = { 105, 106, 107, 108 };
    int turnAnimations[4] = { 30, 31, 29, 28 };
    int turnDirections[4] = { 0, 1, 2, 3 };

    PlayerAvatar_Distortion_HandleGenericMovement(playerAvatar, mapObj, direction, keyPad, keyPress, normalAnimations, runningAnimations, surfAnimations, turnAnimations, turnDirections);
}

static void PlayerAvatar_Distortion_HandleEastWallMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    int normalAnimations[4] = { 109, 110, 111, 112 };
    int runningAnimations[4] = { 125, 126, 127, 128 };
    int surfAnimations[4] = { 109, 110, 111, 112 };
    int turnAnimations[4] = { 31, 30, 28, 29 };
    int turnDirections[4] = { 0, 1, 2, 3 };

    PlayerAvatar_Distortion_HandleGenericMovement(playerAvatar, mapObj, direction, keyPad, keyPress, normalAnimations, runningAnimations, surfAnimations, turnAnimations, turnDirections);
}

static void PlayerAvatar_Distortion_HandleCeilingMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    int normalAnimations[4] = { 113, 114, 115, 116 };
    int runningAnimations[4] = { 129, 130, 131, 132 };
    int surfAnimations[4] = { 113, 114, 115, 116 };
    int turnAnimations[4] = { 29, 28, 31, 30 };
    int turnDirections[4] = { 0, 1, 2, 3 };

    PlayerAvatar_Distortion_HandleGenericMovement(playerAvatar, mapObj, direction, keyPad, keyPress, normalAnimations, runningAnimations, surfAnimations, turnAnimations, turnDirections);
}

static void PlayerAvatar_Distortion_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    enum MovementAction movementAction, turnDirection;
    turnDirection = direction;

    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        int westWallDirections[4] = { 2, 3, 1, 0 };
        turnDirection = westWallDirections[direction];
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        int eastWallDirections[4] = { 3, 2, 0, 1 };
        turnDirection = eastWallDirections[direction];
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        int ceilingDirections[4] = { 1, 0, 3, 2 };
        turnDirection = ceilingDirections[direction];
        break;
    }

    movementAction = MovementAction_TurnActionTowardsDir(turnDirection, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, 1);
    MapObject_Turn(mapObj, direction);
}

static void PlayerAvatar_Cycling_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    if (PlayerAvatar_CyclingGear(playerAvatar) == TRUE) {
        PlayerAvatar_CyclingHighGear_RouteMovement(playerAvatar, mapObj, landDataManager, direction, keyPad, keyPress);
    } else {
        PlayerAvatar_Cycling_RouteNormalMovement(playerAvatar, mapObj, landDataManager, direction, keyPad, keyPress);
    }
}

static void PlayerAvatar_TryCyclingGearChange(PlayerAvatar *playerAvatar, u16 keyPad)
{
    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_CYCLING) {
        return;
    }

    if (keyPad & PAD_BUTTON_B) {
        u32 tileBehavior = MapObject_GetCurrTileBehavior(Player_MapObject(playerAvatar));

        if (TileBehavior_IsBikeRampEastward(tileBehavior) || TileBehavior_IsBikeRampWestward(tileBehavior)) {
            return;
        }

        {
            enum CyclingGear gear = CYCLING_GEAR_HIGH;

            if (PlayerAvatar_CyclingGear(playerAvatar) == TRUE) {
                gear = CYCLING_GEAR_LOW;
            }

            PlayerAvatar_SetCyclingGear(playerAvatar, gear);

            if (gear == CYCLING_GEAR_LOW) {
                Sound_PlayEffect(SEQ_SE_DP_GEAR2);
            } else {
                Sound_PlayEffect(SEQ_SE_DP_GEAR);
            }
        }
    }
}

enum MovementAction PlayerAvatar_Animation_GetCyclingMovementAction(PlayerAvatar *playerAvatar, int direction)
{
    enum MovementAction baseMovementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_NORTH;

    switch (PlayerAvatar_Speed(playerAvatar)) {
    case CYCLING_SPEED_SLOW:
        baseMovementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
        break;
    case CYCLING_SPEED_MEDIUM:
        baseMovementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH;
        break;
    case CYCLING_SPEED_FAST:
        baseMovementAction = MOVEMENT_ACTION_WALK_FASTER_NORTH;
        break;
    }

    enum MovementAction movementAction = MovementAction_TurnActionTowardsDir(direction, baseMovementAction);
    return movementAction;
}

static BOOL PlayerAvatar_Cycling_HandleSpeedIncrease(PlayerAvatar *playerAvatar)
{
    int speedResult = PlayerAvatar_AddMoveSpeed(playerAvatar, 1, 3);

    if (sub_0205EFB0(playerAvatar) == FALSE) {
        if (speedResult >= CYCLING_SPEED_MEDIUM) {
            sub_0205EF98(playerAvatar, 1);
        }
    }

    if (speedResult == CYCLING_SPEED_FAST) {
        return TRUE;
    }

    return FALSE;
}

static BOOL PlayerAvatar_Cycling_HandleSpeedDecrease(PlayerAvatar *playerAvatar)
{
    int speedResult = TRUE;
    int currentSpeed = PlayerAvatar_Speed(playerAvatar);

    currentSpeed--;

    if (currentSpeed < CYCLING_SPEED_STOPPED) {
        currentSpeed = CYCLING_SPEED_STOPPED;
        speedResult = FALSE;
    }

    PlayerAvatar_SetSpeed(playerAvatar, currentSpeed);

    if (sub_0205EFB0(playerAvatar) == TRUE) {
        if (currentSpeed == CYCLING_SPEED_STOPPED) {
            sub_0205EF98(playerAvatar, 0);
        }
    }

    return speedResult;
}

static void PlayerAvatar_Cycling_RouteNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    enum CyclingMovementType movementType = PlayerAvatar_Cycling_GetNormalMovementType(playerAvatar, direction);

    switch (movementType) {
    case CYCLING_MOVEMENT_TURN_IN_PLACE:
        PlayerAvatar_Cycling_HandleTurnInPlace(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case CYCLING_MOVEMENT_NORMAL:
        PlayerAvatar_Cycling_HandleNormalMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case CYCLING_MOVEMENT_TURN:
        PlayerAvatar_Cycling_HandleTurn(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case CYCLING_MOVEMENT_DECELERATION:
        PlayerAvatar_Cycling_HandleDeceleration(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    }
}

static enum CyclingMovementType PlayerAvatar_Cycling_GetNormalMovementType(PlayerAvatar *playerAvatar, int direction)
{
    enum CyclingMovementType movementType = PlayerAvatar_Cycling_DetermineNormalState(playerAvatar, direction);
    enum AvatarMoveState stateValue = PlayerAvatar_Cycling_MapNormalTypeToState(movementType);

    sub_0205EB08(playerAvatar, stateValue);
    return movementType;
}

static enum AvatarMoveState PlayerAvatar_Cycling_MapNormalTypeToState(int movementType)
{
    switch (movementType) {
    case CYCLING_MOVEMENT_TURN_IN_PLACE:
        return AVATAR_MOVE_STATE_NONE;
    case CYCLING_MOVEMENT_NORMAL:
        return AVATAR_MOVE_STATE_MOVING;
    case CYCLING_MOVEMENT_TURN:
        return AVATAR_MOVE_STATE_TURNING;
    case CYCLING_MOVEMENT_DECELERATION:
        return AVATAR_MOVE_STATE_MOVING;
    }

    GF_ASSERT(FALSE);
    return AVATAR_MOVE_STATE_NONE;
}

static enum CyclingMovementType PlayerAvatar_Cycling_DetermineNormalState(PlayerAvatar *playerAvatar, int direction)
{
    int currentDir;

    if (direction == DIR_NONE) {
        if (sub_0205EFB0(playerAvatar) == TRUE) {
            sub_0205EB08(playerAvatar, 1);
            return CYCLING_MOVEMENT_DECELERATION;
        }

        sub_0205EB08(playerAvatar, 0);
        return CYCLING_MOVEMENT_TURN_IN_PLACE;
    }

    currentDir = PlayerAvatar_GetDir(playerAvatar);
    sub_0205EF98(playerAvatar, 0);

    if (currentDir != direction && PlayerAvatar_MoveState(playerAvatar) != AVATAR_MOVE_STATE_MOVING) {
        sub_0205EB08(playerAvatar, 2);
        return CYCLING_MOVEMENT_TURN;
    }

    sub_0205EB08(playerAvatar, 1);
    return CYCLING_MOVEMENT_NORMAL;
}

static void PlayerAvatar_Cycling_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    enum MovementAction movementAction = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void PlayerAvatar_Cycling_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    enum MovementAction movementAction;
    int duration;

    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        movementAction = MOVEMENT_ACTION_JUMP_FAR_NORTH;
        duration = 3;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        movementAction = MOVEMENT_ACTION_117;
        duration = 2;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (collisionResult & COLLISION_FLAG_BIKE_RAMPS) {
        movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH;
        duration = 5;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
        sub_0205EF40(playerAvatar, 1);
    } else if (collisionResult & COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS) {
        movementAction = MOVEMENT_ACTION_FACE_NORTH;
        duration = 1;
        direction = MapObject_GetMovingDir(mapObj);
        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else if (collisionResult != COLLISION_FLAG_NONE) {
        if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, direction) == FALSE) {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == COLLISION_FLAG_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            movementAction = MOVEMENT_ACTION_FACE_NORTH;
            duration = 1;
            direction = MapObject_GetMovingDir(mapObj);
            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
            sub_0205EBEC(playerAvatar, -1, -1);
        }
    } else {
        movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH;
        duration = 5;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
        PlayerAvatar_SetSpeed(playerAvatar, 2);
    }

    movementAction = MovementAction_TurnActionTowardsDir(direction, movementAction);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

static void PlayerAvatar_Cycling_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, direction) != TRUE) {
        enum MovementAction movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, 1);
        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void PlayerAvatar_Cycling_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    int duration;
    enum MovementAction movementAction;
    BOOL speedDecreaseResult = PlayerAvatar_Cycling_HandleSpeedDecrease(playerAvatar);

    direction = PlayerAvatar_GetMoveDir(playerAvatar);
    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        duration = 3;
    } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_117);
        duration = 2;
    } else if (collisionResult & COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS) {
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH);
        duration = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (collisionResult != COLLISION_FLAG_NONE) {
        speedDecreaseResult = FALSE;
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
        duration = 1;

        if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == COLLISION_FLAG_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        movementAction = PlayerAvatar_Animation_GetCyclingMovementAction(playerAvatar, direction);
        duration = 5;
    }

    if (speedDecreaseResult == FALSE) {
        sub_0205EF98(playerAvatar, 0);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

static void PlayerAvatar_CyclingHighGear_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    enum CyclingMovementType movementType = PlayerAvatar_Cycling_GetMovementType(playerAvatar, direction);

    switch (movementType) {
    case CYCLING_MOVEMENT_TURN_IN_PLACE:
        PlayerAvatar_CyclingHighGear_HandleTurnInPlace(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case CYCLING_MOVEMENT_NORMAL:
        PlayerAvatar_CyclingHighGear_HandleMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case CYCLING_MOVEMENT_TURN:
        PlayerAvatar_CyclingHighGear_HandleTurn(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case CYCLING_MOVEMENT_DECELERATION:
        PlayerAvatar_CyclingHighGear_HandleDeceleration(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    }
}

static enum CyclingMovementType PlayerAvatar_Cycling_GetMovementType(PlayerAvatar *playerAvatar, int direction)
{
    enum CyclingMovementType movementType = PlayerAvatar_Cycling_DetermineState(playerAvatar, direction);
    enum AvatarMoveState stateValue = PlayerAvatar_Cycling_MapTypeToState(movementType);

    sub_0205EB08(playerAvatar, stateValue);
    return movementType;
}

static enum AvatarMoveState PlayerAvatar_Cycling_MapTypeToState(enum CyclingMovementType movementType)
{
    switch (movementType) {
    case CYCLING_MOVEMENT_TURN_IN_PLACE:
        return AVATAR_MOVE_STATE_NONE;
    case CYCLING_MOVEMENT_NORMAL:
        return AVATAR_MOVE_STATE_MOVING;
    case CYCLING_MOVEMENT_TURN:
        return AVATAR_MOVE_STATE_TURNING;
    case CYCLING_MOVEMENT_DECELERATION:
        return AVATAR_MOVE_STATE_MOVING;
    }

    GF_ASSERT(FALSE);
    return AVATAR_MOVE_STATE_NONE;
}

static enum CyclingMovementType PlayerAvatar_Cycling_DetermineState(PlayerAvatar *playerAvatar, int direction)
{
    int currentDir;
    enum CyclingSpeed currentSpeed;

    currentSpeed = PlayerAvatar_Speed(playerAvatar);

    if (direction == DIR_NONE) {
        if (currentSpeed < CYCLING_SPEED_MEDIUM) {
            sub_0205EB08(playerAvatar, 0);
            return CYCLING_MOVEMENT_TURN_IN_PLACE;
        }

        sub_0205EB08(playerAvatar, 1);
        return CYCLING_MOVEMENT_DECELERATION;
    }

    currentDir = PlayerAvatar_GetDir(playerAvatar);

    if (currentDir != direction && PlayerAvatar_MoveState(playerAvatar) != AVATAR_MOVE_STATE_MOVING) {
        if (currentSpeed < CYCLING_SPEED_MEDIUM) {
            sub_0205EB08(playerAvatar, 2);
            return CYCLING_MOVEMENT_TURN;
        }

        sub_0205EB08(playerAvatar, 1);
        return CYCLING_MOVEMENT_DECELERATION;
    }

    sub_0205EB08(playerAvatar, 1);
    return CYCLING_MOVEMENT_NORMAL;
}

static void PlayerAvatar_CyclingHighGear_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    enum MovementAction movementAction = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void PlayerAvatar_CyclingHighGear_HandleMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    int duration;
    enum MovementAction movementAction;

    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        duration = 3;
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_117);
        duration = 2;
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (collisionResult & COLLISION_FLAG_BIKE_RAMPS) {
        if (PlayerAvatar_Speed(playerAvatar) >= CYCLING_SPEED_FAST) {
            movementAction = PlayerAvatar_Animation_GetCyclingMovementAction(playerAvatar, direction);
            duration = 5;
            sub_0205F048(playerAvatar);
            sub_0205EF40(playerAvatar, 1);
        } else {
            movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == COLLISION_FLAG_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
        }
    } else if (collisionResult & COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS) {
        direction = MapObject_GetMovingDir(mapObj);
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH);
        duration = 1;
        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else if (collisionResult != COLLISION_FLAG_NONE) {
        if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, direction) == FALSE) {
            movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == COLLISION_FLAG_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            duration = 1;
            direction = MapObject_GetMovingDir(mapObj);
            movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH);
            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
            sub_0205EBEC(playerAvatar, -1, -1);
        }
    } else {
        duration = 5;
        movementAction = PlayerAvatar_Animation_GetCyclingMovementAction(playerAvatar, direction);
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

static void PlayerAvatar_CyclingHighGear_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, direction) == TRUE) {
        return;
    } else {
        enum MovementAction movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, 1);
        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void PlayerAvatar_CyclingHighGear_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    int duration;
    enum MovementAction movementAction;
    BOOL speedDecreaseResult = PlayerAvatar_Cycling_HandleSpeedDecrease(playerAvatar);

    direction = PlayerAvatar_GetMoveDir(playerAvatar);
    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        duration = 3;
    } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_117);
        duration = 2;
    } else if (collisionResult & COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS) {
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH);
        duration = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (collisionResult != COLLISION_FLAG_NONE) {
        speedDecreaseResult = FALSE;
        duration = 1;
        movementAction = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);

        if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == COLLISION_FLAG_NONE) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        movementAction = PlayerAvatar_Animation_GetCyclingMovementAction(playerAvatar, direction);
        duration = 5;
    }

    if (speedDecreaseResult == FALSE) {
        sub_0205EF98(playerAvatar, 0);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

static void PlayerAvatar_Animation_SetMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, enum MovementAction movementAction, int duration)
{
    sub_0205EC20(playerAvatar, movementAction, duration);
    LocalMapObj_SetAnimationCode(mapObj, movementAction);
}

u32 PlayerAvatar_Collision_CheckBasic(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    u32 collisionResult = COLLISION_FLAG_NONE, internalResult;
    internalResult = PlayerAvatar_Collision_CheckBasicInternal(playerAvatar, mapObj, direction);

    if (internalResult & (COLLISION_FLAG_TERRAIN | COLLISION_FLAG_WARP_ENTRANCES)) {
        collisionResult |= COLLISION_FLAG_BLOCKED;

        if (PlayerAvatar_Collision_CheckWarpEntrances(playerAvatar, mapObj, direction)) {
            collisionResult |= COLLISION_FLAG_WARP_ENTRANCES;
        }
    }

    if (internalResult & COLLISION_FLAG_JUMP_TILES) {
        collisionResult |= COLLISION_FLAG_TERRAIN;
    }

    if (PlayerAvatar_Collision_CheckJumpTiles(playerAvatar, mapObj, direction)) {
        collisionResult |= COLLISION_FLAG_JUMP_TILES;
    }

    if (PlayerAvatar_Collision_CheckDoubleJumpTiles(playerAvatar, mapObj, direction)) {
        collisionResult |= COLLISION_FLAG_DOUBLE_JUMP_TILES;
    }

    if (PlayerAvatar_Collision_CheckBikeRamps(playerAvatar, mapObj, direction) == TRUE) {
        collisionResult |= COLLISION_FLAG_BIKE_RAMPS;
    }

    if (PlayerAvatar_Collision_CheckWaterTiles(playerAvatar, mapObj, direction) == TRUE) {
        collisionResult |= COLLISION_FLAG_WATER_TILES;
    }

    if (PlayerAvatar_Collision_CheckBikeBridgeRestrictions(playerAvatar, mapObj, direction) == TRUE) {
        collisionResult |= COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS | COLLISION_FLAG_BLOCKED;
    }

    if (PlayerAvatar_Collision_CheckCyclingTerrainRestrictions(playerAvatar, mapObj, direction) == TRUE) {
        collisionResult |= COLLISION_FLAG_BLOCKED;
    }

    return collisionResult;
}

static u32 PlayerAvatar_Collision_CheckBasicInternal(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    VecFx32 nextPos;
    u32 collisionFlags, tileBehavior;
    int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
    int y = MapObject_GetY(mapObj);
    int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);

    MapObject_GetPosPtr(mapObj, &nextPos);

    collisionFlags = COLLISION_FLAG_NONE;

    if (MapObject_IsOutOfRange(mapObj, x, y, z) == TRUE) {
        collisionFlags |= COLLISION_FLAG_BLOCKED;
    }

    {
        s8 verticalDirection;
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (TerrainCollisionManager_WillPlayerCollide(fieldSystem, &nextPos, x, z, &verticalDirection) == TRUE) {
            collisionFlags |= COLLISION_FLAG_TERRAIN;

            if (verticalDirection != VERTICAL_DIRECTION_NONE) {
                collisionFlags |= COLLISION_FLAG_WARP_ENTRANCES;
            }
        }
    }

    if (sub_02064004(mapObj, x, z, direction) == TRUE) {
        collisionFlags |= COLLISION_FLAG_TERRAIN;
    }

    if (sub_02063F00(mapObj, x, y, z) == TRUE) {
        collisionFlags |= COLLISION_FLAG_JUMP_TILES;
    }

    return collisionFlags;
}

static BOOL PlayerAvatar_Collision_CheckJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);

        if (DynamicMapFeatures_WillPlayerJumpEternaGymClock(fieldSystem, x, z, 0, direction) == TRUE) {
            return TRUE;
        }

        {
            u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

            switch (direction) {
            case DIR_NORTH:
                if (TileBehavior_IsJumpNorth(tileBehavior) == TRUE) {
                    return TRUE;
                }
                break;
            case DIR_SOUTH:
                if (TileBehavior_IsJumpSouth(tileBehavior) == TRUE) {
                    return TRUE;
                }
                break;
            case DIR_WEST:
                if (TileBehavior_IsJumpWest(tileBehavior) == TRUE) {
                    return TRUE;
                }
                break;
            case DIR_EAST:
                if (TileBehavior_IsJumpEast(tileBehavior) == TRUE) {
                    return TRUE;
                }
                break;
            }
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Collision_CheckDoubleJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    BOOL hasDoubleJump = FALSE;

    if (direction != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        switch (direction) {
        case DIR_NORTH:
            hasDoubleJump = TileBehavior_IsJumpNorthTwice(tileBehavior);
            break;
        case DIR_SOUTH:
            hasDoubleJump = TileBehavior_IsJumpSouthTwice(tileBehavior);
            break;
        case DIR_WEST:
            hasDoubleJump = TileBehavior_IsJumpWestTwice(tileBehavior);
            break;
        case DIR_EAST:
            hasDoubleJump = TileBehavior_IsJumpEastTwice(tileBehavior);
            break;
        }

        if (hasDoubleJump == TRUE) {
            if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE) {
                if (ov9_022511A0(fieldSystem, x, z, direction) == TRUE) {
                    hasDoubleJump = FALSE;
                }
            }
        }
    }

    return hasDoubleJump;
}

static BOOL PlayerAvatar_Collision_CheckWarpEntrances(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj);
        int z = MapObject_GetZ(mapObj);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        switch (direction) {
        case MOVEMENT_ACTION_FACE_NORTH:
            if (TileBehavior_IsWarpEntranceNorth(tileBehavior) == TRUE) {
                return TRUE;
            }
            break;
        case MOVEMENT_ACTION_FACE_SOUTH:
            if (TileBehavior_IsWarpEntranceSouth(tileBehavior) == TRUE) {
                return TRUE;
            }
            break;
        case MOVEMENT_ACTION_FACE_WEST:
            if (TileBehavior_IsWarpEntranceWest(tileBehavior) == TRUE) {
                return TRUE;
            }
            break;
        case MOVEMENT_ACTION_FACE_EAST:
            if (TileBehavior_IsWarpEntranceEast(tileBehavior) == TRUE) {
                return TRUE;
            }
            break;
        }

        x += MapObject_GetDxFromDir(direction);
        z += MapObject_GetDzFromDir(direction);
        tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (TileBehavior_IsDoor(tileBehavior) == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Collision_CheckBikeRamps(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (direction == MOVEMENT_ACTION_FACE_EAST && TileBehavior_IsBikeRampEastward(tileBehavior)) {
            return TRUE;
        }

        if (direction == MOVEMENT_ACTION_FACE_WEST && TileBehavior_IsBikeRampWestward(tileBehavior)) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Collision_CheckWaterTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (MapObject_IsOnWater(mapObj, tileBehavior)) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Collision_CheckBikeBridgeRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING) {
            if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == TRUE) {
                if (direction == DIR_NORTH || direction == DIR_SOUTH) {
                    return FALSE;
                }

                return TRUE;
            }

            if (MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == TRUE) {
                if (direction == DIR_WEST || direction == DIR_EAST) {
                    return FALSE;
                }

                return TRUE;
            }
        } else {
            if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == TRUE || MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == TRUE) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Collision_CheckCyclingTerrainRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if ((direction != DIR_NONE) && PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (MapObject_IsOnWater(mapObj, tileBehavior)) {
            return TRUE;
        }

        if (MapObject_IsOnSnow(mapObj, tileBehavior)) {
            return TRUE;
        }

        if (TileBehavior_IsVeryTallGrass(tileBehavior)) {
            return TRUE;
        }

        if (TileBehavior_IsMud(tileBehavior)) {
            return TRUE;
        }

        if (TileBehavior_IsMudWithGrass(tileBehavior)) {
            return TRUE;
        }
    }

    return FALSE;
}

static int PlayerAvatar_Distortion_CheckCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    u32 collisionFlags = COLLISION_FLAG_NONE;
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE) {
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj) / 2;
        int z = MapObject_GetZ(mapObj);

        PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &x, &y, &z);

        if (DistWorld_CheckCollisionOnCurrentFloatingPlatform(fieldSystem, x, y, z) == TRUE) {
            collisionFlags |= COLLISION_FLAG_TERRAIN;
        }

        y = y * 2;

        if (sub_02063F00(mapObj, x, y, z) == TRUE) {
            collisionFlags |= COLLISION_FLAG_JUMP_TILES;
        }
    }

    return collisionFlags;
}

static BOOL PlayerAvatar_Distortion_CheckSurfableTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE) {
            BOOL hasTileBehavior;
            u32 tileBehavior;
            int x = MapObject_GetX(mapObj);
            int y = MapObject_GetY(mapObj) / 2;
            int z = MapObject_GetZ(mapObj);

            PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &x, &y, &z);

            hasTileBehavior = DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &tileBehavior);

            if (TileBehavior_IsSurfable(tileBehavior)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

u32 PlayerAvatar_Collision_CheckDistortion(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    u32 collisionResult, distortionFlags = COLLISION_FLAG_NONE;

    collisionResult = PlayerAvatar_Distortion_CheckCollision(playerAvatar, mapObj, direction);

    if (collisionResult & (COLLISION_FLAG_TERRAIN | COLLISION_FLAG_WARP_ENTRANCES)) {
        distortionFlags |= COLLISION_FLAG_BLOCKED;
    }

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        distortionFlags |= COLLISION_FLAG_TERRAIN;
    }

    if (PlayerAvatar_Distortion_CheckSurfableTiles(playerAvatar, mapObj, direction) == TRUE) {
        distortionFlags |= COLLISION_FLAG_WATER_TILES;
    }

    if (PlayerAvatar_Distortion_CheckDoubleJump(playerAvatar, mapObj, direction) == TRUE) {
        distortionFlags |= COLLISION_FLAG_DOUBLE_JUMP_TILES;
    }

    return distortionFlags;
}

static BOOL PlayerAvatar_Distortion_CheckDoubleJump(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    BOOL hasDoubleJump = FALSE;
    if (direction != DIR_NONE && PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_FLOOR) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE) {
            u32 tileBehavior;
            int x = MapObject_GetX(mapObj);
            int y = MapObject_GetY(mapObj) / 2;
            int z = MapObject_GetZ(mapObj);

            PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &x, &y, &z);

            hasDoubleJump = DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &tileBehavior);

            switch (direction) {
            case DIR_NORTH:
                hasDoubleJump = TileBehavior_IsJumpNorthTwice(tileBehavior);
                break;
            case DIR_SOUTH:
                hasDoubleJump = TileBehavior_IsJumpSouthTwice(tileBehavior);
                break;
            case DIR_WEST:
                hasDoubleJump = TileBehavior_IsJumpWestTwice(tileBehavior);
                break;
            case DIR_EAST:
                hasDoubleJump = TileBehavior_IsJumpEastTwice(tileBehavior);
                break;
            }
        }
    }

    return hasDoubleJump;
}

int PlayerAvatar_Input_ProcessDirection(PlayerAvatar *playerAvatar, u16 keyPad, u16 keyPress)
{
    return PlayerAvatar_Input_DetermineMovementDirection(playerAvatar, keyPad, keyPress);
}

static int PlayerAvatar_Input_GetHorizontalDirection(u16 keyPad)
{
    if (keyPad & PAD_KEY_LEFT) {
        return DIR_WEST;
    }

    if (keyPad & PAD_KEY_RIGHT) {
        return DIR_EAST;
    }

    return DIR_NONE;
}

static int PlayerAvatar_Input_GetVerticalDirection(u16 keyPad)
{
    if (keyPad & PAD_KEY_UP) {
        return DIR_NORTH;
    }

    if (keyPad & PAD_KEY_DOWN) {
        return DIR_SOUTH;
    }

    return DIR_NONE;
}

static int PlayerAvatar_Input_DetermineMovementDirection(PlayerAvatar *playerAvatar, u16 keyPad, u16 keyPress)
{
    int horizontalDir = PlayerAvatar_Input_GetHorizontalDirection(keyPress);
    int verticalDir = PlayerAvatar_Input_GetVerticalDirection(keyPress);

    if (horizontalDir == DIR_NONE) {
        return verticalDir;
    }

    if (verticalDir == DIR_NONE) {
        return horizontalDir;
    }

    {
        int direction = PlayerAvatar_GetMoveDir(playerAvatar);
        int lastHorizontalDir = sub_0205EBE0(playerAvatar);
        int lastVerticalDir = sub_0205EBE8(playerAvatar);

        if (direction != DIR_NONE) {
            if (horizontalDir == lastHorizontalDir && verticalDir == lastVerticalDir) {
                return direction;
            }

            if (verticalDir != lastVerticalDir) {
                return verticalDir;
            }

            return horizontalDir;
        }

        return verticalDir;
    }

    return DIR_NONE;
}

BOOL PlayerAvatar_State_IsAnimationActive(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
        return TRUE;
    }

    {
        enum MovementAction movementAction = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(movementAction) == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_State_IsTurnAction(enum MovementAction movementAction)
{
    switch (movementAction) {
    case MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH:
    case MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH:
    case MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST:
    case MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST:
        return TRUE;
    }

    return FALSE;
}

BOOL PlayerAvatar_Input_CheckRunningShoes(PlayerAvatar *playerAvatar, u16 keyPad)
{
    if (keyPad & PAD_BUTTON_B) {
        return TRUE;
    }

    return FALSE;
}

BOOL PlayerAvatar_State_IsRunningAnimation(PlayerAvatar *playerAvatar)
{
    enum MovementAction movementAction = sub_0205EC14(playerAvatar);

    switch (movementAction) {
    case MOVEMENT_ACTION_RUN_NORTH:
    case MOVEMENT_ACTION_RUN_SOUTH:
    case MOVEMENT_ACTION_RUN_WEST:
    case MOVEMENT_ACTION_RUN_EAST:
        return TRUE;
    }

    return FALSE;
}

int PlayerAvatar_State_GetMovementState(PlayerAvatar *playerAvatar, int direction)
{
    int movementType; // This can be enum CyclingMovementType or enum WalkingMovementType
    enum AvatarMoveState stateValue;
    enum AvatarMoveState state = PlayerAvatar_GetPlayerState(playerAvatar);

    switch (state) {
    case PLAYER_STATE_WALKING:
    case PLAYER_STATE_SURFING:
        movementType = PlayerAvatar_Walking_DetermineMovementState(playerAvatar, direction);
        stateValue = PlayerAvatar_Walking_MapTypeToState(movementType);
        break;
    case PLAYER_STATE_CYCLING:
        if (PlayerAvatar_CyclingGear(playerAvatar) == CYCLING_GEAR_HIGH) {
            movementType = PlayerAvatar_Cycling_DetermineState(playerAvatar, direction);
            stateValue = PlayerAvatar_Cycling_MapTypeToState(movementType);
        } else {
            movementType = PlayerAvatar_Cycling_DetermineState(playerAvatar, direction);
            stateValue = PlayerAvatar_Cycling_MapTypeToState(movementType);
        }

        break;
    default:
        stateValue = AVATAR_MOVE_STATE_NONE;
        GF_ASSERT(FALSE);
    }

    return stateValue;
}

enum MovementAction PlayerAvatar_State_GetAnimationCode(PlayerAvatar *playerAvatar, u16 keyPad, u16 keyPress, int movementActionIndex, int movementType, int stateValue)
{
    enum MovementAction movementAction;
    int movementDirection = PlayerAvatar_Input_DetermineMovementDirection(playerAvatar, keyPad, keyPress);
    enum AvatarMoveState movementState = PlayerAvatar_State_GetMovementState(playerAvatar, movementDirection);

    sub_0205EB08(playerAvatar, movementState);

    if (movementState == AVATAR_MOVE_STATE_NONE) {
        movementDirection = PlayerAvatar_GetDir(playerAvatar);
        movementAction = MovementAction_TurnActionTowardsDir(movementDirection, MOVEMENT_ACTION_FACE_NORTH);
        return movementAction;
    }

    if (movementState == AVATAR_MOVE_STATE_TURNING) {
        movementAction = MovementAction_TurnActionTowardsDir(movementDirection, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);
        return movementAction;
    }

    {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        u32 stateFlags = stateValue;

        if (stateFlags & COLLISION_FLAG_JUMP_TILES) {
            movementAction = MOVEMENT_ACTION_JUMP_FAR_NORTH;
        } else if (stateFlags & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
            movementAction = MOVEMENT_ACTION_117;
        } else if (stateFlags != COLLISION_FLAG_NONE) {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;

            if ((stateFlags & COLLISION_FLAG_WARP_ENTRANCES) == COLLISION_FLAG_NONE) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }
        } else {
            // Select base movement action based on index into gMovementActionCodes array
            switch (movementActionIndex) {
            case 0: // gMovementActionCodes[0]
                movementAction = MOVEMENT_ACTION_WALK_SLOWER_NORTH;
                break;
            case 1: // gMovementActionCodes[1]
                movementAction = MOVEMENT_ACTION_WALK_SLOW_NORTH;
                break;
            case 2: // gMovementActionCodes[2]
                movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH;
                break;
            case 3: // gMovementActionCodes[3]
                movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_NORTH;
                break;
            case 4: // gMovementActionCodes[4]
                movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
                break;
            case 5: // gMovementActionCodes[5]
                movementAction = MOVEMENT_ACTION_WALK_FASTER_NORTH;
                break;
            default:
                movementAction = MOVEMENT_ACTION_WALK_SLOWER_NORTH;
            }

            if (movementType == SPECIAL_MOVEMENT_TYPE_ICE && PlayerAvatar_Input_CheckRunningShoes(playerAvatar, keyPress) == TRUE) {
                movementAction = MOVEMENT_ACTION_RUN_NORTH;
            }
        }

        movementAction = MovementAction_TurnActionTowardsDir(movementDirection, movementAction);
        return movementAction;
    }

    return 0xff;
}

BOOL PlayerAvatar_Animation_IsSet(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    return LocalMapObj_IsAnimationSet(mapObj);
}

void PlayerAvatar_SetAnimationCode(PlayerAvatar *playerAvatar, enum MovementAction movementAction, int duration)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, movementAction, duration);
}

u32 PlayerAvatar_Animation_GetTileBehavior(PlayerAvatar *playerAvatar, int direction)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    return MapObject_GetTileBehaviorFromDir(mapObj, direction);
}

void PlayerAvatar_MoveCoordsInDirection(PlayerAvatar *playerAvatar, int direction, int *x, int *z)
{
    *x = Player_GetXPos(playerAvatar) + MapObject_GetDxFromDir(direction);
    *z = Player_GetZPos(playerAvatar) + MapObject_GetDzFromDir(direction);
}

void PlayerAvatar_GetFacingTileCoords(PlayerAvatar *playerAvatar, int *x, int *z)
{
    int direction = PlayerAvatar_GetDir(playerAvatar);
    PlayerAvatar_MoveCoordsInDirection(playerAvatar, direction, x, z);
}

static void PlayerAvatar_State_IncrementStepCounter(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
    GameRecords *gameRecords = SaveData_GetGameRecords(fieldSystem->saveData);

    GameRecords_IncrementRecordValue(gameRecords, RECORD_UNK_000);
}

static BOOL PlayerAvatar_State_CheckBikeBridgeValidity(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != DIR_NONE) {
        u8 tileBehavior = MapObject_GetCurrTileBehavior(mapObj);

        if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == TRUE) {
            if (direction == MOVEMENT_ACTION_FACE_NORTH || direction == MOVEMENT_ACTION_FACE_SOUTH) {
                return FALSE;
            }

            return TRUE;
        }

        if (MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == TRUE) {
            if (direction == DIR_WEST || direction == DIR_EAST) {
                return FALSE;
            }

            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Cycling_IsUnderCyclingRoad(PlayerAvatar *playerAvatar, u32 tileBehavior, int direction)
{
    if (direction != DIR_NONE) {
        return FALSE;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_CYCLING) {
        return FALSE;
    }

    if (sub_0205EFDC(playerAvatar) == FALSE) {
        return FALSE;
    }

    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (MapObject_IsOnBridge(mapObj, tileBehavior) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

void PlayerAvatar_Distortion_GetCoordsInDirection(PlayerAvatar *playerAvatar, int direction, int *xOut, int *yOut, int *zOut)
{
    const DistortionDirectionOffset *directionOffset;
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_NONE:
    case AVATAR_DISTORTION_STATE_ACTIVE:
    case AVATAR_DISTORTION_STATE_FLOOR:
        directionOffset = &sDistortionFloorOffsets[direction];
        break;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        directionOffset = &sDistortionWestWallOffsets[direction];
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        directionOffset = &sDistortionEastWallOffsets[direction];
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        directionOffset = &sDistortionCeilingOffsets[direction];
        break;
    default:
        return;
    }

    (*xOut) += directionOffset->xOffset;
    (*yOut) += directionOffset->yOffset;
    (*zOut) += directionOffset->zOffset;
}

u32 PlayerAvatar_GetDistortionTileBehaviour(PlayerAvatar *playerAvatar, int direction)
{
    u32 tileBehavior;

    if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == FALSE) {
        tileBehavior = PlayerAvatar_Animation_GetTileBehavior(playerAvatar, direction);
    } else {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj) / 2;
        int z = MapObject_GetZ(mapObj);

        PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &x, &y, &z);
        DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &tileBehavior);
    }

    return tileBehavior;
}

u32 PlayerAvatar_GetDistortionCurrTileBehaviour(PlayerAvatar *playerAvatar)
{
    u32 tileBehavior;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
    int x = MapObject_GetX(mapObj);
    int y = MapObject_GetY(mapObj) / 2;
    int z = MapObject_GetZ(mapObj);

    if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == FALSE) {
        tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);
    } else {
        DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &tileBehavior);
    }

    return tileBehavior;
}

void PlayerAvatar_Distortion_GetCurrentCoords(PlayerAvatar *const playerAvatar, int *xOut, int *yOut, int *zOut)
{
    int direction = PlayerAvatar_GetDistortionDir(playerAvatar);
    MapObject *mapObj = Player_MapObject(playerAvatar);

    *xOut = MapObject_GetX(mapObj);
    *yOut = MapObject_GetY(mapObj) / 2;
    *zOut = MapObject_GetZ(mapObj);

    PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, xOut, yOut, zOut);
}
