#include "player_move.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/map_object.h"
#include "generated/game_records.h"
#include "generated/movement_actions.h"

#include "struct_decls/map_object.h"
#include "struct_defs/player_data.h"

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

typedef BOOL (*TileBehaviorFunc)(u8);

typedef struct {
    TileBehaviorFunc func;
    u32 tileMove;
} TileBehaviorCheck;

typedef struct {
    s16 dx;
    s16 dy;
    s16 dz;
    s16 padding;
} DistortionWorldStepDirection;

static BOOL PlayerAvatar_CheckStartMoveInternal(PlayerAvatar *playerAvatar, int dir);
static void PlayerAvatar_StartMoveInit(PlayerAvatar *playerAvatar, int param1, u16 keyPad, u16 keyPress);
static void PlayerAvatar_EnableTileBehaviorCheck(PlayerAvatar *playerAvatar);
static void PlayerAvatar_PlayWalkSE(PlayerAvatar *playerAvatar);
static int PlayerAvatar_TryMoveFromCurTileBehavior(PlayerAvatar *playerAvatar, int param1);
static u32 PlayerAvatar_GetTileMovement(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_TryMoveTileBehavior(PlayerAvatar *playerAvatar, u32 param1, int param2);
static void PlayerAvatar_ClearTileForcedMovement(PlayerAvatar *playerAvatar);
static int PlayerAvatar_CheckIceHeightChange(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_UpdateIceSpeedFromHeightChange(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_SetIceMovement(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_SetMovementFromState(PlayerAvatar *playerAvatar, const LandDataManager *param1, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_Normal(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int PlayerAvatar_UpdateMoveState2(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_ValidateState(int param0);
static int MapObject_GetDeepSnowMovementAction(MapObject *mapObj, u8 param1, int param2);
static int MapObject_DummyReturnMovementAction(MapObject *mapObj, u8 param1, int param2);
static int PlayerAvatar_UpdateMoveState(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_SetMovement_NotMoving(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_Moving(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_NormalOverworld(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_DistortionFloor(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_DistortionWestWall(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_DistortionEastWall(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_DistortionCeiling(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_Turning(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_Bike(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static void PlayerAvatar_TryCyclingGearChange(PlayerAvatar *playerAvatar, u16 param1);
int PlayerAvatar_GetMovementActionFromSpeed(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_AccelerateBike(PlayerAvatar *playerAvatar);
static int PlayerAvatar_DecelerateBike(PlayerAvatar *playerAvatar);
static void PlayerAvatar_SetMovement_BikeThirdGear(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int PlayerAvatar_UpdateBikeStateThirdGear(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatarBikeState_GetMoveStateThirdGear(int param0);
static int PlayerAvatar_GetBikeStateThirdGear(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_SetMovement_BikeThirdGearStop(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_BikeThirdGearMoving(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_BikeThirdGearTurning(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_BikeThirdGearBrake(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_BikeFourthGear(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int PlayerAvatar_UpdateBikeStateFourthGear(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatarBikeState_GetMoveStateFourthGear(int param0);
static int PlayerAvatar_GetBikeStateFourthGear(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_SetMovement_BikeFourthGearStop(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_BikeFourthGearMoving(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_BikeFourthGearTurning(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_SetMovement_BikeFourthGearBrake(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static u32 PlayerAvtar_CheckMapObjCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_WillJump(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_WillJumpTwice(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_WillWarp(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_WillHitBikeRamp(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_WillBeOnWater(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_WillBeOnBikeBridge(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_CheckBikeCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_WillBeOnWaterDistortion(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_CheckDistortionMapObjectCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_WillJumpTwiceDistortion(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static enum FaceDirection Movement_FaceLeftRightFromInput(u16 pad);
static enum FaceDirection Movement_FaceUpDownFromInput(u16 pad);
static enum FaceDirection PlayerAvatar_CalcFaceDirectionInternal(PlayerAvatar *playerAvatar, u16 pressedKeys, u16 heldKeys);
static BOOL MovementAction_IsWalkOnSpotSlow(enum MovementAction pamovementActionram0);
static void PlayerAvatar_IncrementStepsRecord(PlayerAvatar *playerAvatar);
static int PlayerAvatar_IsOnBikeBridgeWrongDirection(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_IsOnCyclingRoadBridge(PlayerAvatar *playerAvatar, u32 tileBehavior, int param2);
static void PlayerAvatar_SetMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, enum MovementAction movementAction, int param3);

static const DistortionWorldStepDirection sDistortionStepDirectionFloor[4] = {
    { 0x0, 0x0, -1 },
    { 0x0, 0x0, 0x1 },
    { -1, 0x0, 0x0 },
    { 0x1, 0x0, 0x0 }
};

static const DistortionWorldStepDirection sDistortionStepDirectionWestWall[4] = {
    { 0x0, 0x1, 0x0 },
    { 0x0, -1, 0x0 },
    { 0x0, 0x0, 0x1 },
    { 0x0, 0x0, -1 }
};

static const DistortionWorldStepDirection sDistortionStepDirectionEastWall[4] = {
    { 0x0, 0x1, 0x0 },
    { 0x0, -1, 0x0 },
    { 0x0, 0x0, -1 },
    { 0x0, 0x0, 0x1 }
};

static const DistortionWorldStepDirection sDistortionStepDirectionCeiling[4] = {
    { 0x0, 0x0, 0x1 },
    { 0x0, 0x0, -1 },
    { -1, 0x0, 0x0 },
    { 0x1, 0x0, 0x0 }
};

const TileBehaviorCheck sTileBehaviorCheckTable[];
static int (*const sTileMovementFunctions[6])(PlayerAvatar *, int);

/**
 * Main function that handles player movement, called by the field system when processing input.
 */
void PlayerAvatar_MoveMain(PlayerAvatar *playerAvatar, const LandDataManager *landManager, int dir, u16 keyPad, u16 keyPress, BOOL param5)
{
    if (dir == -1) {
        dir = PlayerAvatar_CalcFaceDirectionInternal(playerAvatar, keyPad, keyPress);
    }

    PlayerAvatar_TryCyclingGearChange(playerAvatar, keyPad);

    if (PlayerAvatar_CheckStartMoveInternal(playerAvatar, dir) == FALSE) {
        return;
    }

    PlayerAvatar_StartMoveInit(playerAvatar, dir, keyPad, keyPress);
    PlayerAvatar_RequestChangeState(playerAvatar);

    if (PlayerAvatar_TryMoveFromCurTileBehavior(playerAvatar, dir) == TRUE) {
        ov5_021E0EEC(playerAvatar);
        return;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_AVATAR_WALKING) {
        int moveState = PlayerAvatar_UpdateMoveState2(playerAvatar, dir);

        if (moveState != 0) {
            ov5_021E0EEC(playerAvatar);
        } else if (param5 == 1) {
            ov5_021E0E94(playerAvatar);
        }
    }

    PlayerAvatar_SetMovementFromState(playerAvatar, landManager, dir, keyPad, keyPress);

    PlayerAvatar_EnableTileBehaviorCheck(playerAvatar);
    PlayerAvatar_PlayWalkSE(playerAvatar);
}

/**
 * Checks if the player has begun moving. Only calls the internal function.
 *
 * @return TRUE if the player has begun moving, FALSE if the player is still
 */
BOOL PlayerAvatar_CheckStartMove(PlayerAvatar *playerAvatar, int dir)
{
    return PlayerAvatar_CheckStartMoveInternal(playerAvatar, dir);
}

/**
 * Checks if the player has begun moving. Internal function.
 *
 * @return TRUE if the player has begun moving, FALSE if the player is still
 */
static BOOL PlayerAvatar_CheckStartMoveInternal(PlayerAvatar *playerAvatar, int dir)
{
    int movementAction;
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
        return TRUE;
    }

    if (dir == DIR_NONE) {
        return FALSE;
    }

    movementAction = MapObject_GetMovementAction(mapObj);

    if (MovementAction_IsWalkOnSpotSlow(movementAction) == TRUE) {
        u32 collision;

        if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == TRUE) {
            collision = PlayerAvatar_CheckDistortionCollision(playerAvatar, mapObj, dir);

            if ((collision & ~PLAYER_COLLISION_JUMP_TWICE) && PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_FLOOR) {
                FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
                int xOut, x = MapObject_GetX(mapObj);
                int yOut, y = MapObject_GetY(mapObj);
                int zOut, z = MapObject_GetZ(mapObj);

                y = y / 2;
                xOut = x;
                yOut = y;
                zOut = z;

                PlayerAvatar_GetStepDistortionWorldPos(playerAvatar, dir, &xOut, &yOut, &zOut);

                if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, xOut, yOut, zOut) == 0) {
                    if (DistWorld_AreCoordsValidOnCurrentFloatingPlatformKind(fieldSystem, xOut, yOut, zOut) == 1) {
                        DistWorld_FindAndPrepareNewCurrentFloatingPlatform(fieldSystem, xOut, yOut, zOut);
                        collision = PlayerAvatar_CheckDistortionCollision(playerAvatar, mapObj, dir);
                        DistWorld_FindAndPrepareNewCurrentFloatingPlatform(fieldSystem, x, y, z);
                    }
                }
            }
        } else {
            collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);
        }

        if (collision == PLAYER_COLLISION_NONE) {
            return TRUE;
        }

        if ((collision == PLAYER_COLLISION_WATER) && (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_AVATAR_SURFING)) {
            return TRUE;
        }

        return FALSE;
    }

    return FALSE;
}

/**
 * Initializes the a player's movement action by turning them in the facing direction and ending the previous step.
 */
static void PlayerAvatar_StartMoveInit(PlayerAvatar *playerAvatar, int param1, u16 keyPad, u16 keyPress)
{
    PlayerAvatar_SetFaceDirection(playerAvatar, Movement_FaceLeftRightFromInput(keyPress), Movement_FaceUpDownFromInput(keyPress));
    PlayerAvatar_EndStep(playerAvatar);
}

/**
 * Enables the player to check for tile behaviors that cause forced movement
 */
static void PlayerAvatar_EnableTileBehaviorCheck(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_CheckStep(playerAvatar) == 1 && PlayerAvatar_GetMoveState(playerAvatar) == AVATAR_MOVE_STATE_MOVING) {
        PlayerAvatar_SetIgnoreTileBehavior(playerAvatar, 0);

        if (PlayerAvatar_CheckEscapedFromDeepMud(playerAvatar) == TRUE) {
            PlayerAvatar_SetEscapedFromDeepMud(playerAvatar, FALSE);
            MapObject_SetFlagDoNotSinkIntoTerrain(PlayerAvatar_GetMapObject(playerAvatar), FALSE);
        }
    }
}

/**
 * Plays the sound effect associated with the player's current and next underfoot tile.
 */
static void PlayerAvatar_PlayWalkSE(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetMoveState(playerAvatar) == AVATAR_MOVE_STATE_MOVING) {
        MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
        u8 curTile, nextTile = MapObject_GetCurrTileBehavior(mapObj);

        {
            int animationCode = MapObject_GetMovementAction(mapObj);
            int moveAction = MovementAction_GetDirFromAction(animationCode);

            if (moveAction == -1) {
                curTile = nextTile;
            } else {
                curTile = MapObject_GetTileBehaviorFromDir(mapObj, moveAction);
            }
        }

        if (MapObject_IsOnSnow(mapObj, nextTile) == TRUE || TileBehavior_IsSnowWithShadows(nextTile) == TRUE) {
            Sound_PlayEffect(SEQ_SE_PL_YUKI);
        }

        if (TileBehavior_IsPuddle(nextTile) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_FOOT3_0);
        }

        if (TileBehavior_IsShallowWater(nextTile) == TRUE) {
            Sound_PlayEffect(SEQ_SE_DP_FOOT3_1);
        }

        TileBehavior_IsSand(nextTile);

        if ((TileBehavior_IsMud(nextTile) == TRUE) && (TileBehavior_IsDeepMud(nextTile) != TRUE)) {
            Sound_PlayEffect(SEQ_SE_DP_MARSH_WALK);
        }

        int code = MapObject_GetMovementAction(mapObj);

        if (!MovementAction_IsWalkOnSpotSlow(code)) {
            if ((TileBehavior_IsVeryTallGrass(nextTile) == TRUE) || (TileBehavior_IsVeryTallGrass(curTile) == TRUE)) {
                Sound_PlayEffect(SEQ_SE_DP_KUSA);
            }
        }
    }
}

/**
 * Updates the Player Avatar's player move state based on their current state and underfoot tile.
 */
void PlayerAvatar_UpdatePlayerMoveState(PlayerAvatar *playerAvatar)
{
    int avatarMoveState, playerMoveState, movementAction;
    const MapObject *mapObj;

    avatarMoveState = PlayerAvatar_GetMoveState(playerAvatar);
    playerMoveState = PlayerAvatar_GetPlayerMoveState(playerAvatar);
    mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_NONE);

    u32 tileMovement = PlayerAvatar_GetTileMovement(playerAvatar, -1);

    if ((tileMovement != TILE_MOVE_NONE) && (tileMovement != TILE_MOVE_CYCLING_ROAD_DOWN)) {
        PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_MOVING);
        return;
    }

    if (LocalMapObj_IsAnimationSet(mapObj) == FALSE) {
        switch (avatarMoveState) {
        case AVATAR_MOVE_STATE_NONE:
            break;
        case AVATAR_MOVE_STATE_MOVING:
            movementAction = MapObject_GetMovementAction(mapObj);

            if (MovementAction_IsWalkOnSpotSlow(movementAction) == TRUE) {
                break;
            }

            if ((playerMoveState == PLAYER_MOVE_STATE_NONE) || (playerMoveState == PLAYER_MOVE_STATE_END)) {
                PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_START);
            } else {
                PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_MOVING);
            }
            break;
        case AVATAR_MOVE_STATE_TURNING:
            PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_MOVING);
            break;
        }

        return;
    }

    if (LocalMapObj_CheckAnimationFinished(mapObj) == TRUE) {
        switch (avatarMoveState) {
        case AVATAR_MOVE_STATE_NONE:
            break;
        case AVATAR_MOVE_STATE_MOVING:
            switch (playerMoveState) {
            case PLAYER_MOVE_STATE_NONE:
                break;
            case PLAYER_MOVE_STATE_END:
                PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_NONE);
                break;
            default:
                PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_END);
            }
            break;
        case AVATAR_MOVE_STATE_TURNING:
            switch (playerMoveState) {
            case PLAYER_MOVE_STATE_NONE:
                break;
            case PLAYER_MOVE_STATE_END:
                PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_NONE);
                break;
            default:
                PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_END);
            }
            break;
        }
    }
}

/**
 * Clears to Player Avatar's move state, player move state, and speed
 */
void PlayerAvatar_ClearMoveState(PlayerAvatar *playerAvatar)
{
    PlayerAvatar_SetMoveState(playerAvatar, PLAYER_AVATAR_WALKING);
    PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_NONE);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

/**
 * Check function for PlayerAvatar_ForceStopMovement
 *
 * @return TRUE if PlayerAvatar_ForceStopMovement should be called
 */
int PlayerAvatar_CheckForceStopMovement(PlayerAvatar *playerAvatar)
{
    int avatarMoveState, playerMoveState, movementAction;
    const MapObject *mapObj;

    avatarMoveState = PlayerAvatar_GetMoveState(playerAvatar);
    playerMoveState = PlayerAvatar_GetPlayerMoveState(playerAvatar);

    if (avatarMoveState == AVATAR_MOVE_STATE_NONE) {
        return TRUE;
    }

    if (avatarMoveState == AVATAR_MOVE_STATE_TURNING) {
        return TRUE;
    }

    if (avatarMoveState == AVATAR_MOVE_STATE_MOVING) {
        if (playerMoveState == PLAYER_MOVE_STATE_NONE || playerMoveState == PLAYER_MOVE_STATE_END) {
            return TRUE;
        }

        mapObj = PlayerAvatar_GetMapObject(playerAvatar);

        if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
            return TRUE;
        }

        movementAction = MapObject_GetMovementAction(mapObj);

        if (MovementAction_IsWalkOnSpotSlow(movementAction) == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * Stops the player avatar's movement and turns them to face in the given direction
 */
void PlayerAvatar_ForceStopMovement(PlayerAvatar *playerAvatar, int dir)
{
    MapObject *mapObj;

    PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_NONE);
    PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_NONE);

    mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    MapObject_TryFace(mapObj, dir);
    sub_02062A0C(mapObj, 0x0);
    MapObject_UpdateCoords(mapObj);
    sub_020656DC(mapObj);
    LocalMapObj_SetAnimationCode(mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH));
}

/**
 * Gets the player avatar's current underfoot tile movment and immeidately tries the corresponding movement function.
 *
 * @return TRUE is the tile movement function altered the player's movement
 */
static int PlayerAvatar_TryMoveFromCurTileBehavior(PlayerAvatar *playerAvatar, int dir)
{
    u32 tileMovement = PlayerAvatar_GetTileMovement(playerAvatar, dir);

    return PlayerAvatar_TryMoveTileBehavior(playerAvatar, tileMovement, dir);
}

/**
 * Gets the corresponding tile movement enum associated with the player's current underfoot tile.
 *
 * @return enum TileBehavior
 */
static u32 PlayerAvatar_GetTileMovement(PlayerAvatar *playerAvatar, int dir)
{
    int i = 0;
    u32 tileBehavior = MapObject_GetCurrTileBehavior(PlayerAvatar_GetMapObject(playerAvatar));

    if (PlayerAvatar_IsOnCyclingRoadBridge(playerAvatar, tileBehavior, dir) == TRUE) {
        return TILE_MOVE_CYCLING_ROAD_DOWN;
    }

    if (PlayerAvatar_CheckIgnoreTileBehavior(playerAvatar) == TRUE) {
        return TILE_MOVE_NONE;
    }

    do {
        if (sTileBehaviorCheckTable[i].func(tileBehavior) == TRUE) {
            return sTileBehaviorCheckTable[i].tileMove;
        }

        i++;
    } while (sTileBehaviorCheckTable[i].func != NULL);

    return TILE_MOVE_NONE;
}

static const TileBehaviorCheck sTileBehaviorCheckTable[] = {
    { TileBehavior_IsIce, TILE_MOVE_ICE },
    { TileBehavior_IsBikeSlope, TILE_MOVE_BIKE_SLOPE },
    { TileBehavior_IsBikeRampEastward, TILE_MOVE_BIKE_RAMP_EAST },
    { TileBehavior_IsBikeRampWestward, TILE_MOVE_BIKE_RAMP_WEST },
    { NULL, TILE_MOVE_MAX }
};

/**
 * Calls the special tile movement function based on the given tileMove index
 *
 * @return TRUE is the tile movement function altered the player's movement
 */
static int PlayerAvatar_TryMoveTileBehavior(PlayerAvatar *playerAvatar, u32 tileMove, int param2)
{
    if (sTileMovementFunctions[tileMove](playerAvatar, param2) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Default movement function when there is no tile behavior that forces a special movement underfoot.
 *
 * @return FALSE
 */
static int PlayerAvatar_TileMove_None(PlayerAvatar *playerAvatar, int param1)
{
    PlayerAvatar_ClearTileForcedMovement(playerAvatar);
    return FALSE;
}

/**
 * Movement function for Ice tiles. Causes sliding until an object is hit.
 */
static int PlayerAvatar_TileMove_Ice(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int dir = MapObject_GetMovingDir(mapObj);
    int heightChange = PlayerAvatar_CheckIceHeightChange(playerAvatar, dir);
    u32 collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    PlayerAvatar_SetForceMovement(playerAvatar, TRUE);

    if (collision != PLAYER_COLLISION_NONE) {
        PlayerAvatar_ClearTileForcedMovement(playerAvatar);

        if (heightChange != PLAYER_HEIGHT_CHANGE_INCREASE) {
            PlayerAvatar_SetIgnoreTileBehavior(playerAvatar, 1);
            PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_NONE);
            return FALSE;
        }

        dir = Direction_GetOpposite(dir);
        collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

        if (collision != PLAYER_COLLISION_NONE) {
            return FALSE;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_SLOW_NORTH), PLAYER_ACTION_SPEED_SLOW);
        PlayerAvatar_SetIgnoreTileBehavior(playerAvatar, 1);
        PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
        PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);

        return TRUE;
    }

    if (PlayerAvatar_UpdateIceSpeedFromHeightChange(playerAvatar, heightChange) == 0) {
        PlayerAvatar_ClearTileForcedMovement(playerAvatar);

        dir = Direction_GetOpposite(dir);
        collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

        if (collision != PLAYER_COLLISION_NONE) {
            return FALSE;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_SLOW_NORTH), PLAYER_ACTION_SPEED_SLOW);
        PlayerAvatar_SetIgnoreTileBehavior(playerAvatar, 1);
        PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
    } else {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_SetIceMovement(playerAvatar, dir);
    }

    PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
    return TRUE;
}

/**
 * Movement function for Bike Slope tiles. Causes the player to go up if they're going north, on a bike, and are at full speed. Causes the player to go down when going south.
 */
static int PlayerAvatar_TileMove_BikeSlope(PlayerAvatar *playerAvatar, int param1)
{
    u32 collision;
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int dir = MapObject_GetMovingDir(mapObj);

    Sound_PlayEffect(SEQ_SE_DP_SUNA);

    if (dir == DIR_NORTH) {
        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_AVATAR_CYCLING && PlayerAvatar_GetSpeed(playerAvatar) >= 3) {
            if (param1 == 0) {
                PlayerAvatar_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_FASTER_SOUTH), PLAYER_ACTION_SPEED_FASTER);
                PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
                return 1;
            }
        }

        dir = Direction_GetOpposite(dir);
        collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

        if (collision != PLAYER_COLLISION_NONE) {
            return 0;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_SLOW_NORTH), PLAYER_ACTION_SPEED_SLOW);
        PlayerAvatar_ClearSpeed(playerAvatar);
        PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
        PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
        PlayerAvatar_SetMoveThroughMudFlag(playerAvatar, 1);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
        return 1;
    } else if (dir == DIR_SOUTH) {
        if (PlayerAvatar_CheckMoveThroughMudFlag(playerAvatar) == 0) {
            PlayerAvatar_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_FASTER_SOUTH), PLAYER_ACTION_SPEED_FASTER);
            PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);

            if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
                PlayerAvatar_SetSpeed(playerAvatar, 3);
            }

            PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
            return 1;
        } else {
            MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
            PlayerAvatar_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_SLOW_NORTH), PLAYER_ACTION_SPEED_SLOW);
            PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
            PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
            PlayerAvatar_SetMoveThroughMudFlag(playerAvatar, 1);
            PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
            return 1;
        }
    }

    return 0;
}

/**
 * Movement function for Bike Ramp tiles. Causes the player to launch east if on a bike.
 */
static int PlayerAvatar_TileMove_BikeRampEast(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int dir = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        PlayerAvatar_SetMovement(playerAvatar, mapObj, 0x5f, PLAYER_ACTION_SPEED_SLOWER);
    } else {
        PlayerAvatar_SetMovement(playerAvatar, mapObj, 0x5d, PLAYER_ACTION_SPEED_SLOW);
    }

    PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
    PlayerAvatar_SetForceMovementRetainSpeed(playerAvatar, 1);

    return 1;
}

/**
 * Movement function for Bike Ramp tiles. Causes the player to launch west if on a bike.
 */
static int PlayerAvatar_TileMove_BikeRampWest(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int dir = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        PlayerAvatar_SetMovement(playerAvatar, mapObj, MOVEMENT_ACTION_JUMP_FARTHER_WEST, PLAYER_ACTION_SPEED_SLOWER);
    } else {
        PlayerAvatar_SetMovement(playerAvatar, mapObj, MOVEMENT_ACTION_JUMP_NEAR_SLOW_WEST, PLAYER_ACTION_SPEED_SLOWER);
    }

    PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
    PlayerAvatar_SetForceMovementRetainSpeed(playerAvatar, 1);

    return 1;
}

/**
 * Movement function for Cycling Road tiles. Causes the player to be forced downward if there's no input.
 */
static int PlayerAvatar_TileMove_CyclingRoadDown(PlayerAvatar *playerAvatar, int param1)
{
    int dir = 1;
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    u32 collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    if (collision == 0) {
        PlayerAvatar_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_FASTER_NORTH), PLAYER_ACTION_SPEED_FASTER);
        PlayerAvatar_SetMoveState(playerAvatar, 1);
        PlayerAvatar_SetSpeed(playerAvatar, 3);

        return 1;
    } else {
        PlayerAvatar_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_SOUTH), PLAYER_ACTION_SPEED_NOT_MOVING);
        PlayerAvatar_ClearSpeed(playerAvatar);
        PlayerAvatar_SetMoveState(playerAvatar, 0);
        PlayerAvatar_SetBikeBrake(playerAvatar, 0);
    }

    return 1;
}

static int (*const sTileMovementFunctions[6])(PlayerAvatar *, int) = {
    [TILE_MOVE_NONE] = PlayerAvatar_TileMove_None,
    [TILE_MOVE_ICE] = PlayerAvatar_TileMove_Ice,
    [TILE_MOVE_BIKE_SLOPE] = PlayerAvatar_TileMove_BikeSlope,
    [TILE_MOVE_BIKE_RAMP_EAST] = PlayerAvatar_TileMove_BikeRampEast,
    [TILE_MOVE_BIKE_RAMP_WEST] = PlayerAvatar_TileMove_BikeRampWest,
    [TILE_MOVE_CYCLING_ROAD_DOWN] = PlayerAvatar_TileMove_CyclingRoadDown
};

/**
 * Clears the forced movement caused by special file behavior, resetting all relevant flags.
 */
static void PlayerAvatar_ClearTileForcedMovement(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_CheckForcedMovement(playerAvatar) == 1) {
        MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);

        if (PlayerAvatar_CheckForcedMovementRetainSpeed(playerAvatar) == FALSE) {
            PlayerAvatar_ClearSpeed(playerAvatar);
        }

        PlayerAvatar_SetForceMovement(playerAvatar, FALSE);
        PlayerAvatar_SetForceMovementRetainSpeed(playerAvatar, FALSE);
        PlayerAvatar_SetMoveThroughMudFlag(playerAvatar, FALSE);
    }
}

/**
 * Checks if the player's height changes while moving on ice. Used for Snowpoint City gym
 *
 * @return enum PlayerHeightChange
 */
static int PlayerAvatar_CheckIceHeightChange(PlayerAvatar *playerAvatar, int dir)
{
    int heightCheck;
    VecFx32 cur, next;
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    MapObject_GetPosPtr(mapObj, &cur);
    next = cur;

    VecFx32_StepDirection(dir, &next, ((16 * FX32_ONE) >> 1) / 2);
    heightCheck = MapObject_RecalculatePositionHeight(fieldSystem, &next);

    if ((heightCheck == 0) || (cur.y == next.y)) {
        return PLAYER_HEIGHT_CHANGE_NONE;
    }

    if (cur.y > next.y) {
        return PLAYER_HEIGHT_CHANGE_DECREASE;
    }

    return PLAYER_HEIGHT_CHANGE_INCREASE;
}

/**
 * Increasse the speed if the height change is lower and decreases the speed if the height change is higher. For use in the Snowpoint City gym.
 *
 * @return TRUE if the speed is updated or at max speed, FALSE if the speed attempted to decrease while at min speed.
 */
static int PlayerAvatar_UpdateIceSpeedFromHeightChange(PlayerAvatar *playerAvatar, int heightChange)
{
    int speed = PlayerAvatar_GetSpeed(playerAvatar);

    if (heightChange == PLAYER_HEIGHT_CHANGE_INCREASE) {
        speed--;

        if (speed < AVATAR_MOVE_SPEED_0) {
            return FALSE;
        }
    } else if (heightChange == PLAYER_HEIGHT_CHANGE_DECREASE) {
        speed++;

        if (speed > AVATAR_MOVE_SPEED_3) {
            speed = AVATAR_MOVE_SPEED_3;
        }
    }

    PlayerAvatar_SetSpeed(playerAvatar, speed);
    return TRUE;
}

/**
 * Set movement function for the forced movement caused by ice tiles.
 */
static void PlayerAvatar_SetIceMovement(PlayerAvatar *playerAvatar, int dir)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
    int speed = PlayerAvatar_GetSpeed(playerAvatar);
    int actionSpeed = PLAYER_ACTION_SPEED_FAST;

    switch (speed) {
    case AVATAR_MOVE_SPEED_1:
        movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH;
        actionSpeed = PLAYER_ACTION_SPEED_FAST;
        break;
    case AVATAR_MOVE_SPEED_2:
        movementAction = MOVEMENT_ACTION_WALK_FASTER_NORTH;
        actionSpeed = PLAYER_ACTION_SPEED_FASTER;
        break;
    case AVATAR_MOVE_SPEED_3:
        movementAction = MOVEMENT_ACTION_WALK_FASTER_NORTH;
        actionSpeed = PLAYER_ACTION_SPEED_FASTER;
        break;
    }

    movementAction = MovementAction_TurnActionTowardsDir(dir, movementAction);
    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, actionSpeed);
}

/**
 * General set movement function. Branches into the corresponding set movements for walking, surfing, and biking.
 */
static void PlayerAvatar_SetMovementFromState(PlayerAvatar *playerAvatar, const LandDataManager *landManager, int dir, u16 keyPad, u16 keyPress)
{
    int state = PlayerAvatar_GetPlayerState(playerAvatar);
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    switch (state) {
    case PLAYER_AVATAR_WALKING:
    case PLAYER_AVATAR_SURFING:
        PlayerAvatar_SetMovement_Normal(playerAvatar, mapObj, landManager, dir, keyPad, keyPress);
        break;
    case PLAYER_AVATAR_CYCLING:
        PlayerAvatar_SetMovement_Bike(playerAvatar, mapObj, landManager, dir, keyPad, keyPress);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

/**
 * Set movement function for walking, running, and surfing
 */
static void PlayerAvatar_SetMovement_Normal(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int moveState = PlayerAvatar_UpdateMoveState2(playerAvatar, param3);

    switch (moveState) {
    case AVATAR_MOVE_STATE_NONE:
        PlayerAvatar_SetMovement_NotMoving(playerAvatar, mapObj, param3, param4, param5);
        break;
    case AVATAR_MOVE_STATE_MOVING:
        PlayerAvatar_SetMovement_Moving(playerAvatar, mapObj, param3, param4, param5);
        break;
    case AVATAR_MOVE_STATE_TURNING:
        PlayerAvatar_SetMovement_Turning(playerAvatar, mapObj, param3, param4, param5);
        break;
    }
}

/**
 * Calls PlayerAvatar_UpdateMoveState with redundant checks
 */
static int PlayerAvatar_UpdateMoveState2(PlayerAvatar *playerAvatar, int dir)
{
    int updateMoveState = PlayerAvatar_UpdateMoveState(playerAvatar, dir);
    int moveState = PlayerAvatar_ValidateState(updateMoveState); // Redundant

    PlayerAvatar_SetMoveState(playerAvatar, moveState); // Redundant since it gets set in PlayerAvatar_UpdateMoveState
    return updateMoveState;
}

/**
 * Returns the input state if it's a valid state, otherwise errors
 *
 * @return moveState
 */
static int PlayerAvatar_ValidateState(int moveState)
{
    switch (moveState) {
    case AVATAR_MOVE_STATE_NONE:
        return AVATAR_MOVE_STATE_NONE;
    case AVATAR_MOVE_STATE_MOVING:
        return AVATAR_MOVE_STATE_MOVING;
    case AVATAR_MOVE_STATE_TURNING:
        return AVATAR_MOVE_STATE_TURNING;
    }

    GF_ASSERT(FALSE);
    return AVATAR_MOVE_STATE_NONE;
}

/**
 * Gets the movement action corresponding to the tileBehavior if the tileBehavior is a type of deep snow
 *
 * @return MOVEMENT_ACTION_ enum or defaultAction if not in deep snow
 */
static int MapObject_GetDeepSnowMovementAction(MapObject *mapObj, u8 tileBehavior, int defaultAction)
{
    if (TileBehavior_IsDeepestSnow(tileBehavior) == TRUE) {
        return MOVEMENT_ACTION_WALK_SLOWER_NORTH;
    }

    if (TileBehavior_IsDeeperSnow(tileBehavior) == TRUE) {
        return MOVEMENT_ACTION_WALK_SLOW_NORTH;
    }

    if (TileBehavior_IsDeepSnow(tileBehavior) == 1) {
        return MOVEMENT_ACTION_WALK_NORMAL_NORTH;
    }

    return defaultAction;
}

/**
 * Dummy function. Returns the movementAction input
 *
 * @return movementAction
 */
static int MapObject_DummyReturnMovementAction(MapObject *mapObj, u8 tileBehavior, int movementAction)
{
    return movementAction;
}

/**
 * Updates and returns the player avatars current movement state
 *
 * @return enum AvatarMoveState
 */
static int PlayerAvatar_UpdateMoveState(PlayerAvatar *playerAvatar, int nextDir)
{
    int curDir;

    if (nextDir == -1) {
        PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_NONE);
        return AVATAR_MOVE_STATE_NONE;
    }

    curDir = PlayerAvatar_GetFacingDir(playerAvatar);

    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    if (distortionState != AVATAR_DISTORTION_STATE_NONE
        && distortionState != AVATAR_DISTORTION_STATE_ACTIVE
        && distortionState != AVATAR_DISTORTION_STATE_FLOOR) {
        curDir = PlayerAvatar_GetMovingDir(playerAvatar);
    }

    if ((curDir != nextDir) && (PlayerAvatar_GetMoveState(playerAvatar) != AVATAR_MOVE_STATE_MOVING)) {
        PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_TURNING);
        return AVATAR_MOVE_STATE_TURNING;
    }

    PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
    return AVATAR_MOVE_STATE_MOVING;
}

/**
 * Set movement function for the not moving state while walking, running, or surfing
 */
static void PlayerAvatar_SetMovement_NotMoving(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int movementAction = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);
    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, PLAYER_ACTION_SPEED_NOT_MOVING);
}

/**
 * Set movement function for the moving state while walking, running, or surfing. Accounts for distortion world.
 */
static void PlayerAvatar_SetMovement_Moving(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 pad)
{
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_FLOOR:
        PlayerAvatar_SetMovement_DistortionFloor(playerAvatar, mapObj, dir, param3, pad);
        break;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        PlayerAvatar_SetMovement_DistortionWestWall(playerAvatar, mapObj, dir, param3, pad);
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        PlayerAvatar_SetMovement_DistortionEastWall(playerAvatar, mapObj, dir, param3, pad);
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        PlayerAvatar_SetMovement_DistortionCeiling(playerAvatar, mapObj, dir, param3, pad);
        break;
    default:
        PlayerAvatar_SetMovement_NormalOverworld(playerAvatar, mapObj, dir, param3, pad);
    }
}

/**
 * Set movement function for the moving state while walking, running, or surfing in the overworld.
 */
static void PlayerAvatar_SetMovement_NormalOverworld(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 pad)
{
    u32 collision;
    int movementAction;
    int speed;

    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_SURFING) {
        if (collision & PLAYER_COLLISION_JUMP) {
            movementAction = MOVEMENT_ACTION_JUMP_FAR_NORTH;
            speed = PLAYER_ACTION_SPEED_SLOW;
        } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
            movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH;
            speed = PLAYER_ACTION_SPEED_SLOWER;
        } else if (collision != PLAYER_COLLISION_NONE) {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            speed = PLAYER_ACTION_SPEED_NOT_MOVING;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, dir);
        } else {
            movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH;
            speed = PLAYER_ACTION_SPEED_NORMAL;

            PlayerData *playerData = PlayerAvatar_PlayerData(playerAvatar);

            if (PlayerData_HasRunningShoes(playerData) == 1) {
                if (PlayerAvatar_IsRunButtonHeld(playerAvatar, pad) == 1) {
                    movementAction = MOVEMENT_ACTION_RUN_NORTH;
                    speed = PLAYER_ACTION_SPEED_FAST;
                }
            }
            
            movementAction = MapObject_GetDeepSnowMovementAction(mapObj, MapObject_GetCurrTileBehavior(mapObj), movementAction);

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        }
    } else {
        if ((collision == PLAYER_COLLISION_NONE) || (collision == PLAYER_COLLISION_WATER)) {
            speed = PLAYER_ACTION_SPEED_FAST;
            movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
            movementAction = MapObject_DummyReturnMovementAction(mapObj, MapObject_GetCurrTileBehavior(mapObj), movementAction);

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        } else {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            speed = PLAYER_ACTION_SPEED_NOT_MOVING;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, dir);
        }
    }

    movementAction = MovementAction_TurnActionTowardsDir(dir, movementAction);
    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, speed);
}

/**
 * Set movement function for the moving state while walking, running, or surfing on the distortion floor.
 */
static void PlayerAvatar_SetMovement_DistortionFloor(PlayerAvatar *playerAvatar, MapObject *mapObject, int dir, u16 unused3, u16 pad)
{
    u32 collision;
    int movementAction;
    int speed;

    collision = PlayerAvatar_CheckDistortionCollision(playerAvatar, mapObject, dir);

    if (collision & ~PLAYER_COLLISION_JUMP_TWICE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObject);
        int x = MapObject_GetX(mapObject);
        int y = MapObject_GetY(mapObject);
        int z = MapObject_GetZ(mapObject);

        y = ((y) / 2);
        PlayerAvatar_GetStepDistortionWorldPos(playerAvatar, dir, &x, &y, &z);

        if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, x, y, z) == 0) {
            if (DistWorld_AreCoordsValidOnCurrentFloatingPlatformKind(fieldSystem, x, y, z) == 1) {
                DistWorld_FindAndPrepareNewCurrentFloatingPlatform(fieldSystem, x, y, z);
                collision = PlayerAvatar_CheckDistortionCollision(playerAvatar, mapObject, dir);
            }
        }
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_SURFING) {
        if (collision & PLAYER_COLLISION_JUMP_TWICE) {
            movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH;
            speed = PLAYER_ACTION_SPEED_SLOWER;
            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        } else if (collision != PLAYER_COLLISION_NONE) {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            speed = PLAYER_ACTION_SPEED_NOT_MOVING;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObject, dir);
        } else {
            PlayerData *player;

            movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH;
            speed = PLAYER_ACTION_SPEED_NORMAL;
            player = PlayerAvatar_PlayerData(playerAvatar);

            if (PlayerData_HasRunningShoes(player) == TRUE && PlayerAvatar_IsRunButtonHeld(playerAvatar, pad) == 1) {
                movementAction = 0x58;
                speed = PLAYER_ACTION_SPEED_FAST;
            }

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        }
    } else {
        if (collision == PLAYER_COLLISION_NONE || collision == PLAYER_COLLISION_WATER) {
            speed = PLAYER_ACTION_SPEED_FAST;
            movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        } else {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            speed = PLAYER_ACTION_SPEED_NOT_MOVING;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObject, dir);
        }
    }

    movementAction = MovementAction_TurnActionTowardsDir(dir, movementAction);
    PlayerAvatar_SetMovement(playerAvatar, mapObject, movementAction, speed);
}

/**
 * Common set movement function for the moving state while walking, running, or surfing in the distortion world. Called by all gravity variants.
 */
static void PlayerAvatar_UpdateMovement_NormalDistortion(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 pad, const int *walkActionTable, const int *runActionTable, const int *surfActionTable, const int *collisionActionTable, const int *turnDirTable)
{
    u32 collision;
    int movementAction;
    int actionSpeed;

    collision = PlayerAvatar_CheckDistortionCollision(playerAvatar, mapObj, dir);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_SURFING) {
        if (collision != 0) {
            movementAction = collisionActionTable[dir];
            actionSpeed = PLAYER_ACTION_SPEED_NOT_MOVING;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, turnDirTable[dir]);
        } else {
            PlayerData *playerData;

            actionSpeed = PLAYER_ACTION_SPEED_NORMAL;
            movementAction = walkActionTable[dir];
            playerData = PlayerAvatar_PlayerData(playerAvatar);

            if ((PlayerData_HasRunningShoes(playerData) == 1) && (PlayerAvatar_IsRunButtonHeld(playerAvatar, pad) == 1)) {
                actionSpeed = PLAYER_ACTION_SPEED_FAST;
                movementAction = runActionTable[dir];
            }

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
        }
    } else {
        if (collision == PLAYER_COLLISION_NONE || collision == PLAYER_COLLISION_WATER) {
            actionSpeed = PLAYER_ACTION_SPEED_NORMAL;
            movementAction = surfActionTable[dir];

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        } else {
            movementAction = collisionActionTable[dir];
            actionSpeed = PLAYER_ACTION_SPEED_NOT_MOVING;

            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, turnDirTable[dir]);
        }
    }

    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, actionSpeed);
}

/**
 * Set movement function for the moving state while walking, running, or surfing on the distortion west wall.
 */
static void PlayerAvatar_SetMovement_DistortionWestWall(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 pad)
{
    int walkActionTable[4] = { MOVEMENT_ACTION_105, MOVEMENT_ACTION_106, MOVEMENT_ACTION_107, MOVEMENT_ACTION_108 };
    int runActionTable[4] = { MOVEMENT_ACTION_121, MOVEMENT_ACTION_122, MOVEMENT_ACTION_123, MOVEMENT_ACTION_124 };
    int surfActionTable[4] = { MOVEMENT_ACTION_105, MOVEMENT_ACTION_106, MOVEMENT_ACTION_107, MOVEMENT_ACTION_108 };
    int collisionActionTable[4] = { MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH };
    int turnDirTable[4] = { DIR_NORTH, DIR_SOUTH, DIR_WEST, DIR_EAST };

    PlayerAvatar_UpdateMovement_NormalDistortion(playerAvatar, mapObj, dir, param3, pad, walkActionTable, runActionTable, surfActionTable, collisionActionTable, turnDirTable);
}

/**
 * Set movement function for the moving state while walking, running, or surfing on the distortion east wall.
 */
static void PlayerAvatar_SetMovement_DistortionEastWall(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 pad)
{
    int walkActionTable[4] = { MOVEMENT_ACTION_109, MOVEMENT_ACTION_110, MOVEMENT_ACTION_111, MOVEMENT_ACTION_112 };
    int runActionTable[4] = { MOVEMENT_ACTION_125, MOVEMENT_ACTION_126, MOVEMENT_ACTION_127, MOVEMENT_ACTION_128 };
    int surfActionTable[4] = { MOVEMENT_ACTION_109, MOVEMENT_ACTION_110, MOVEMENT_ACTION_111, MOVEMENT_ACTION_112 };
    int collisionActionTable[4] = { MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH };
    int turnDirTable[4] = { DIR_NORTH, DIR_SOUTH, DIR_WEST, DIR_EAST };

    PlayerAvatar_UpdateMovement_NormalDistortion(playerAvatar, mapObj, dir, param3, pad, walkActionTable, runActionTable, surfActionTable, collisionActionTable, turnDirTable);
}

/**
 * Set movement function for the moving state while walking, running, or surfing on the distortion ceiling.
 */
static void PlayerAvatar_SetMovement_DistortionCeiling(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 pad)
{
    int walkActionTable[4] = { MOVEMENT_ACTION_113, MOVEMENT_ACTION_114, MOVEMENT_ACTION_115, MOVEMENT_ACTION_116 };
    int runActionTable[4] = { MOVEMENT_ACTION_129, MOVEMENT_ACTION_130, MOVEMENT_ACTION_131, MOVEMENT_ACTION_132 };
    int surfActionTable[4] = { MOVEMENT_ACTION_113, MOVEMENT_ACTION_114, MOVEMENT_ACTION_115, MOVEMENT_ACTION_116 };
    int collisionActionTable[4] = { MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST };
    int turnDirTable[4] = { DIR_NORTH, DIR_SOUTH, DIR_WEST, DIR_EAST };

    PlayerAvatar_UpdateMovement_NormalDistortion(playerAvatar, mapObj, dir, param3, pad, walkActionTable, runActionTable, surfActionTable, collisionActionTable, turnDirTable);
}

/**
 * Set movement function for the moving state while turning. Accounts for the distortion world.
 */
static void PlayerAvatar_SetMovement_Turning(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    int movementAction, actionDir;
    actionDir = dir;

    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        int westWallDirTable[4] = { DIR_WEST, DIR_EAST, DIR_SOUTH, DIR_NORTH };
        actionDir = westWallDirTable[dir];
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        int eastWallDirTable[4] = { DIR_EAST, DIR_WEST, DIR_NORTH, DIR_SOUTH };
        actionDir = eastWallDirTable[dir];
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        int cielingDirTable[4] = { DIR_SOUTH, DIR_NORTH, DIR_EAST, DIR_WEST };
        actionDir = cielingDirTable[dir];
        break;
    }

    movementAction = MovementAction_TurnActionTowardsDir(actionDir, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, 1);
    MapObject_Turn(mapObj, dir);
}

/**
 * Set movement function for biking. Branches based on the cycling gear
 */
static void PlayerAvatar_SetMovement_Bike(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
        PlayerAvatar_SetMovement_BikeFourthGear(playerAvatar, mapObj, param2, param3, param4, param5);
    } else {
        PlayerAvatar_SetMovement_BikeThirdGear(playerAvatar, mapObj, param2, param3, param4, param5);
    }
}

/**
 * Changes the bike gear when the player is on the bike and the B button is pressed.
 */
static void PlayerAvatar_TryCyclingGearChange(PlayerAvatar *playerAvatar, u16 pad)
{
    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_CYCLING) {
        return;
    }

    if (pad & PAD_BUTTON_B) {
        u32 tileBehavior = MapObject_GetCurrTileBehavior(PlayerAvatar_GetMapObject(playerAvatar));

        if (TileBehavior_IsBikeRampEastward(tileBehavior) || TileBehavior_IsBikeRampWestward(tileBehavior)) {
            return;
        }

        int gear = 1;

        if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
            gear = 0;
        }

        PlayerAvatar_SetCyclingGear(playerAvatar, gear);

        if (gear == 0) {
            Sound_PlayEffect(SEQ_SE_DP_GEAR2);
        } else {
            Sound_PlayEffect(SEQ_SE_DP_GEAR);
        }
    
    }
}

/**
 * Gets the movement action in the current direction based on the player avatar's current speed.
 */
int PlayerAvatar_GetMovementActionFromSpeed(PlayerAvatar *playerAvatar, int dir)
{
    int movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_NORTH;

    switch (PlayerAvatar_GetSpeed(playerAvatar)) {
    case AVATAR_MOVE_SPEED_1:
        movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
        break;
    case AVATAR_MOVE_SPEED_2:
        movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH;
        break;
    case AVATAR_MOVE_SPEED_3:
        movementAction = MOVEMENT_ACTION_WALK_FASTER_NORTH;
        break;
    }

    return MovementAction_TurnActionTowardsDir(dir, movementAction);
}

/**
 * Accelerates the player's speed while on the bike. Max of 3.
 *
 * @return TRUE if the player is at maximum speed.
 */
static int PlayerAvatar_AccelerateBike(PlayerAvatar *playerAvatar)
{
    int speed = PlayerAvatar_AddMoveSpeed(playerAvatar, 1, AVATAR_MOVE_SPEED_3);

    if (PlayerAvatar_CheckBikeBrake(playerAvatar) == 0) {
        if (speed >= AVATAR_MOVE_SPEED_BIKE_BRAKE) {
            PlayerAvatar_SetBikeBrake(playerAvatar, 1);
        }
    }

    if (speed == AVATAR_MOVE_SPEED_3) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Accelerates the player's speed while on the bike. Max of 3.
 *
 * @return TRUE if the player isn't at minimum speed.
 */
static int PlayerAvatar_DecelerateBike(PlayerAvatar *playerAvatar)
{
    int ret = TRUE;
    int speed = PlayerAvatar_GetSpeed(playerAvatar);

    speed--;

    if (speed < AVATAR_MOVE_SPEED_0) {
        speed = AVATAR_MOVE_SPEED_0;
        ret = FALSE;
    }

    PlayerAvatar_SetSpeed(playerAvatar, speed);

    if (PlayerAvatar_CheckBikeBrake(playerAvatar) == 1) {
        if (speed == AVATAR_MOVE_SPEED_0) {
            PlayerAvatar_SetBikeBrake(playerAvatar, 0);
        }
    }

    return ret;
}

/**
 * Set movement function for the bike in third gear.
 */
static void PlayerAvatar_SetMovement_BikeThirdGear(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int dir, u16 param4, u16 param5)
{
    int bikeState = PlayerAvatar_UpdateBikeStateThirdGear(playerAvatar, dir);

    switch (bikeState) {
    case AVATAR_BIKE_STATE_NONE:
        PlayerAvatar_SetMovement_BikeThirdGearStop(playerAvatar, mapObj, dir, param4, param5);
        break;
    case AVATAR_BIKE_STATE_MOVING:
        PlayerAvatar_SetMovement_BikeThirdGearMoving(playerAvatar, mapObj, dir, param4, param5);
        break;
    case AVATAR_BIKE_STATE_TURNING:
        PlayerAvatar_SetMovement_BikeThirdGearTurning(playerAvatar, mapObj, dir, param4, param5);
        break;
    case AVATAR_BIKE_STATE_BRAKE:
        PlayerAvatar_SetMovement_BikeThirdGearBrake(playerAvatar, mapObj, dir, param4, param5);
        break;
    }
}

/**
 * Gets the current bike state and updates the Player Avatar's move state accordingly
 *
 * @return enum AvatarBikeState
 */
static int PlayerAvatar_UpdateBikeStateThirdGear(PlayerAvatar *playerAvatar, int param1)
{
    int bikeState = PlayerAvatar_GetBikeStateThirdGear(playerAvatar, param1);
    int moveState = PlayerAvatarBikeState_GetMoveStateThirdGear(bikeState);

    PlayerAvatar_SetMoveState(playerAvatar, moveState);
    return bikeState;
}

/**
 * Gets the enum AvatarMoveState from the given enum AvatarBikeState
 *
 * @return enum AvatarMoveState
 */
static int PlayerAvatarBikeState_GetMoveStateThirdGear(int bikeState)
{
    switch (bikeState) {
    case AVATAR_BIKE_STATE_NONE:
        return AVATAR_MOVE_STATE_NONE;
    case AVATAR_BIKE_STATE_MOVING:
        return AVATAR_MOVE_STATE_MOVING;
    case AVATAR_BIKE_STATE_TURNING:
        return AVATAR_MOVE_STATE_TURNING;
    case AVATAR_BIKE_STATE_BRAKE:
        return AVATAR_MOVE_STATE_MOVING;
    }

    GF_ASSERT(FALSE);
    return AVATAR_MOVE_STATE_NONE;
}

/**
 * Gets the Player Avatar's current bike state, calculated when the function is called.
 *
 * @return enum AvatarBikeState
 */
static int PlayerAvatar_GetBikeStateThirdGear(PlayerAvatar *playerAvatar, int dir)
{
    int facingDir;

    if (dir == -1) {
        if (PlayerAvatar_CheckBikeBrake(playerAvatar) == 1) {
            PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
            return AVATAR_BIKE_STATE_BRAKE;
        }

        PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_NONE);
        return AVATAR_BIKE_STATE_NONE;
    }

    facingDir = PlayerAvatar_GetFacingDir(playerAvatar);
    PlayerAvatar_SetBikeBrake(playerAvatar, AVATAR_MOVE_STATE_NONE);

    if ((facingDir != dir) && (PlayerAvatar_GetMoveState(playerAvatar) != AVATAR_MOVE_STATE_MOVING)) {
        PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_TURNING);
        return AVATAR_BIKE_STATE_TURNING;
    }

    PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
    return AVATAR_BIKE_STATE_MOVING;
}

/**
 * Set movement function for a stopped bike in third gear.
 */
static void PlayerAvatar_SetMovement_BikeThirdGearStop(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int movementAction = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

/**
 * Set movement function for a moving bike in third gear.
 */
static void PlayerAvatar_SetMovement_BikeThirdGearMoving(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    u32 collision;
    int movementAction;
    int actionSpeed;

    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    if (collision & PLAYER_COLLISION_JUMP) {
        movementAction = MOVEMENT_ACTION_JUMP_FAR_NORTH;
        actionSpeed = 3;
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
        movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH;
        actionSpeed = 2;
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    } else if (collision & PLAYER_COLLISION_BIKE_RAMP) {
        movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH;
        actionSpeed = 5;
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
        PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
    } else if (collision & PLAYER_COLLISION_BIKE_BRIDGE) {
        movementAction = MOVEMENT_ACTION_FACE_NORTH;
        actionSpeed = 1;
        dir = MapObject_GetMovingDir(mapObj);
        MapObject_Turn(mapObj, dir);
        PlayerAvatar_ClearSpeed(playerAvatar);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
    } else if (collision != PLAYER_COLLISION_NONE) {
        if (PlayerAvatar_IsOnBikeBridgeWrongDirection(playerAvatar, mapObj, dir) == FALSE) {
            movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;
            actionSpeed = 1;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, dir);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            movementAction = 0x0;
            actionSpeed = 1;
            dir = MapObject_GetMovingDir(mapObj);
            MapObject_Turn(mapObj, dir);
            PlayerAvatar_ClearSpeed(playerAvatar);
            PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
        }
    } else {
        movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FASTER_NORTH;
        actionSpeed = 5;
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
        PlayerAvatar_SetSpeed(playerAvatar, 2);
    }

    movementAction = MovementAction_TurnActionTowardsDir(dir, movementAction);
    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, actionSpeed);
}

/**
 * Set movement function for a turning bike in third gear.
 */
static void PlayerAvatar_SetMovement_BikeThirdGearTurning(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_IsOnBikeBridgeWrongDirection(playerAvatar, mapObj, dir) != 1) {
        int movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, 1);
        MapObject_Turn(mapObj, dir);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

/**
 * Set movement function for a braking bike in third gear.
 */
static void PlayerAvatar_SetMovement_BikeThirdGearBrake(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    u32 collision;
    int v1;
    int movementAction, isMoving = PlayerAvatar_DecelerateBike(playerAvatar);

    dir = PlayerAvatar_GetMovingDir(playerAvatar);
    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    if (collision & PLAYER_COLLISION_JUMP) {
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        v1 = 3;
    } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH);
        v1 = 2;
    } else if (collision & PLAYER_COLLISION_BIKE_BRIDGE) {
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH);
        v1 = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (collision != PLAYER_COLLISION_NONE) {
        isMoving = 0;
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
        v1 = 1;

        if ((collision & PLAYER_COLLISION_WARP) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, dir);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        movementAction = PlayerAvatar_GetMovementActionFromSpeed(playerAvatar, dir);
        v1 = 5;
    }

    if (isMoving == 0) {
        PlayerAvatar_SetBikeBrake(playerAvatar, 0);
    }

    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, v1);
}

/**
 * Set movement function for the bike in fourth gear.
 */
static void PlayerAvatar_SetMovement_BikeFourthGear(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int dir, u16 param4, u16 param5)
{
    int bikeState = PlayerAvatar_UpdateBikeStateFourthGear(playerAvatar, dir);

    switch (bikeState) {
    case AVATAR_BIKE_STATE_NONE:
        PlayerAvatar_SetMovement_BikeFourthGearStop(playerAvatar, mapObj, dir, param4, param5);
        break;
    case AVATAR_BIKE_STATE_MOVING:
        PlayerAvatar_SetMovement_BikeFourthGearMoving(playerAvatar, mapObj, dir, param4, param5);
        break;
    case AVATAR_BIKE_STATE_TURNING:
        PlayerAvatar_SetMovement_BikeFourthGearTurning(playerAvatar, mapObj, dir, param4, param5);
        break;
    case AVATAR_BIKE_STATE_BRAKE:
        PlayerAvatar_SetMovement_BikeFourthGearBrake(playerAvatar, mapObj, dir, param4, param5);
        break;
    }
}

/**
 * Gets the current bike state and updates the Player Avatar's move state accordingly
 *
 * @return enum AvatarBikeState
 */
static int PlayerAvatar_UpdateBikeStateFourthGear(PlayerAvatar *playerAvatar, int dir)
{
    int bikeState = PlayerAvatar_GetBikeStateFourthGear(playerAvatar, dir);
    int moveState = PlayerAvatarBikeState_GetMoveStateFourthGear(bikeState);

    PlayerAvatar_SetMoveState(playerAvatar, moveState);
    return bikeState;
}

/**
 * Gets the enum AvatarMoveState from the given enum AvatarBikeState
 *
 * @return enum AvatarMoveState
 */
static int PlayerAvatarBikeState_GetMoveStateFourthGear(int bikeState)
{
    switch (bikeState) {
    case AVATAR_BIKE_STATE_NONE:
        return AVATAR_MOVE_STATE_NONE;
    case AVATAR_BIKE_STATE_MOVING:
        return AVATAR_MOVE_STATE_MOVING;
    case AVATAR_BIKE_STATE_TURNING:
        return AVATAR_MOVE_STATE_TURNING;
    case AVATAR_BIKE_STATE_BRAKE:
        return AVATAR_MOVE_STATE_MOVING;
    }

    GF_ASSERT(FALSE);
    return AVATAR_MOVE_STATE_NONE;
}

/**
 * Gets the Player Avatar's current bike state, calculated when the function is called.
 *
 * @return enum AvatarBikeState
 */
static int PlayerAvatar_GetBikeStateFourthGear(PlayerAvatar *playerAvatar, int dir)
{
    int facingDir, speed;

    speed = PlayerAvatar_GetSpeed(playerAvatar);

    if (dir == -1) {
        if (speed < AVATAR_MOVE_SPEED_BIKE_BRAKE) {
            PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_NONE);
            return AVATAR_BIKE_STATE_NONE;
        }

        PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
        return AVATAR_BIKE_STATE_BRAKE;
    }

    facingDir = PlayerAvatar_GetFacingDir(playerAvatar);

    if (facingDir != dir && PlayerAvatar_GetMoveState(playerAvatar) != AVATAR_MOVE_STATE_MOVING) {
        if (speed < AVATAR_MOVE_SPEED_BIKE_BRAKE) {
            PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_TURNING);
            return AVATAR_BIKE_STATE_TURNING;
        }

        PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
        return AVATAR_BIKE_STATE_BRAKE;
    }

    PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
    return AVATAR_BIKE_STATE_MOVING;
}

/**
 * Set movement function for a stopped bike in fourth gear.
 */
static void PlayerAvatar_SetMovement_BikeFourthGearStop(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    int movementAction = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

/**
 * Set movement function for a moving bike in fourth gear.
 */
static void PlayerAvatar_SetMovement_BikeFourthGearMoving(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    u32 collision;
    int movementAction;
    int actionSpeed;

    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    if (collision & PLAYER_COLLISION_JUMP) {
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        actionSpeed = 3;
        PlayerAvatar_AccelerateBike(playerAvatar);
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH);
        actionSpeed = 2;
        PlayerAvatar_AccelerateBike(playerAvatar);
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    } else if (collision & PLAYER_COLLISION_BIKE_RAMP) {
        if (PlayerAvatar_GetSpeed(playerAvatar) >= 3) {
            movementAction = PlayerAvatar_GetMovementActionFromSpeed(playerAvatar, dir);
            actionSpeed = 5;
            PlayerAvatar_StartStep(playerAvatar);
            PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
        } else {
            movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            actionSpeed = 1;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, dir);
            PlayerAvatar_ClearSpeed(playerAvatar);
        }
    } else if (collision & PLAYER_COLLISION_BIKE_BRIDGE) {
        dir = MapObject_GetMovingDir(mapObj);
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH);
        actionSpeed = 1;
        MapObject_Turn(mapObj, dir);
        PlayerAvatar_ClearSpeed(playerAvatar);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
    } else if (collision != PLAYER_COLLISION_NONE) {
        if (PlayerAvatar_IsOnBikeBridgeWrongDirection(playerAvatar, mapObj, dir) == 0) {
            movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            actionSpeed = 1;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, dir);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            actionSpeed = 1;
            dir = MapObject_GetMovingDir(mapObj);
            movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH);
            MapObject_Turn(mapObj, dir);
            PlayerAvatar_ClearSpeed(playerAvatar);
            PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
        }
    } else {
        actionSpeed = 5;
        movementAction = PlayerAvatar_GetMovementActionFromSpeed(playerAvatar, dir);
        PlayerAvatar_AccelerateBike(playerAvatar);
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    }

    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, actionSpeed);
}

/**
 * Set movement function for a turning bike in fourth gear.
 */
static void PlayerAvatar_SetMovement_BikeFourthGearTurning(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_IsOnBikeBridgeWrongDirection(playerAvatar, mapObj, dir) != 1) {
        int movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, 1);
        MapObject_Turn(mapObj, dir);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

/**
 * Set movement function for a braking bike in fourth gear.
 */
static void PlayerAvatar_SetMovement_BikeFourthGearBrake(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    u32 collision;
    int actionSpeed;
    int movementAction, isMoving = PlayerAvatar_DecelerateBike(playerAvatar);

    dir = PlayerAvatar_GetMovingDir(playerAvatar);
    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    if (collision & PLAYER_COLLISION_JUMP) {
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        actionSpeed = PLAYER_ACTION_SPEED_SLOW;
    } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH);
        actionSpeed = PLAYER_ACTION_SPEED_SLOWER;
    } else if (collision & PLAYER_COLLISION_BIKE_BRIDGE) {
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH);
        actionSpeed = PLAYER_ACTION_SPEED_NOT_MOVING;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (collision != PLAYER_COLLISION_NONE) {
        isMoving = 0;
        actionSpeed = PLAYER_ACTION_SPEED_NOT_MOVING;
        movementAction = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);

        if ((collision & PLAYER_COLLISION_WARP) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, dir);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        movementAction = PlayerAvatar_GetMovementActionFromSpeed(playerAvatar, dir);
        actionSpeed = PLAYER_ACTION_SPEED_FAST;
    }

    if (isMoving == 0) {
        PlayerAvatar_SetBikeBrake(playerAvatar, 0);
    }

    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, actionSpeed);
}

/**
 * Sets the player avatar's movement action, action speed, and map object's animation code
 */
static void PlayerAvatar_SetMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, enum MovementAction movementAction, int speed)
{
    PlayerAvatar_SetMovementActionAndSpeed(playerAvatar, movementAction, speed);
    LocalMapObj_SetAnimationCode(mapObj, movementAction);
}

/**
 * Gets the collision flag mask from the next tile behavior and player map object collision
 *
 * @return Collision mask as specified by PLAYER_COLLISION_ flags
 */
u32 PlayerAvatar_CheckCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    u32 collisionFlag = PLAYER_COLLISION_NONE, objCollision;
    objCollision = PlayerAvtar_CheckMapObjCollision(playerAvatar, mapObj, direction);

    if (objCollision & (MAP_OBJ_COLLISION_WILL_COLLIDE | MAP_OBJ_COLLISION_HEIGHT_CHANGE)) {
        collisionFlag |= PLAYER_COLLISION_WILL_COLLIDE;

        if (PlayerAvatar_WillWarp(playerAvatar, mapObj, direction)) {
            collisionFlag |= PLAYER_COLLISION_WARP;
        }
    }

    if (objCollision & MAP_OBJ_COLLISION_2) {
        collisionFlag |= PLAYER_COLLISION_1;
    }

    if (PlayerAvatar_WillJump(playerAvatar, mapObj, direction)) {
        collisionFlag |= PLAYER_COLLISION_JUMP;
    }

    if (PlayerAvatar_WillJumpTwice(playerAvatar, mapObj, direction)) {
        collisionFlag |= PLAYER_COLLISION_JUMP_TWICE;
    }

    if (PlayerAvatar_WillHitBikeRamp(playerAvatar, mapObj, direction) == TRUE) {
        collisionFlag |= PLAYER_COLLISION_BIKE_RAMP;
    }

    if (PlayerAvatar_WillBeOnWater(playerAvatar, mapObj, direction) == TRUE) {
        collisionFlag |= PLAYER_COLLISION_WATER;
    }

    if (PlayerAvatar_WillBeOnBikeBridge(playerAvatar, mapObj, direction) == TRUE) {
        collisionFlag |= PLAYER_COLLISION_BIKE_BRIDGE | PLAYER_COLLISION_WILL_COLLIDE;
    }

    if (PlayerAvatar_CheckBikeCollision(playerAvatar, mapObj, direction) == TRUE) {
        collisionFlag |= PLAYER_COLLISION_WILL_COLLIDE;
    }

    return collisionFlag;
}

/**
 * Checks the collision of the player avatar's map object
 *
 * @return Collision mask as specified by MAP_OBJ_COLLISION_ flags
 */
static u32 PlayerAvtar_CheckMapObjCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    VecFx32 pos;
    u32 collisionFlag;
    int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(dir);
    int y = MapObject_GetY(mapObj);
    int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(dir);

    MapObject_GetPosPtr(mapObj, &pos);

    collisionFlag = MAP_OBJ_COLLISION_NONE;

    if (MapObject_IsOutOfRange(mapObj, x, y, z) == TRUE) {
        collisionFlag |= MAP_OBJ_COLLISION_OUT_OF_RANGE;
    }

    s8 verticalDirection;
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    if (TerrainCollisionManager_WillPlayerCollide(fieldSystem, &pos, x, z, &verticalDirection) == 1) {
        collisionFlag |= MAP_OBJ_COLLISION_WILL_COLLIDE;

        if (verticalDirection != 0) {
            collisionFlag |= MAP_OBJ_COLLISION_HEIGHT_CHANGE;
        }
    }

    if (sub_02064004(mapObj, x, z, dir) == 1) {
        collisionFlag |= MAP_OBJ_COLLISION_WILL_COLLIDE;
    }

    if (sub_02063F00(mapObj, x, y, z) == 1) {
        collisionFlag |= MAP_OBJ_COLLISION_2;
    }

    return collisionFlag;
}

/**
 * Checks if the next collision is a jump tile
 *
 * @return TRUE if the next tile behavior is a Jump tile in the given direction
 */
static int PlayerAvatar_WillJump(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);

        if (DynamicMapFeatures_WillPlayerJumpEternaGymClock(fieldSystem, x, z, 0, direction) == TRUE) {
            return TRUE;
        }

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

    return FALSE;
}

/**
 * Checks if the next collision is a jump twice tile
 *
 * @return TRUE if the next tile behavior is a Jump Twice tile in the given direction
 */
static int PlayerAvatar_WillJumpTwice(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    BOOL ret = FALSE;

    if (dir != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(dir);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(dir);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        switch (dir) {
        case DIR_NORTH:
            ret = TileBehavior_IsJumpNorthTwice(tileBehavior);
            break;
        case DIR_SOUTH:
            ret = TileBehavior_IsJumpSouthTwice(tileBehavior);
            break;
        case DIR_WEST:
            ret = TileBehavior_IsJumpWestTwice(tileBehavior);
            break;
        case DIR_EAST:
            ret = TileBehavior_IsJumpEastTwice(tileBehavior);
            break;
        }

        if (ret == TRUE) {
            if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
                if (DistWorld_IsBlockedByCynthia(fieldSystem, x, z, dir) == TRUE) {
                    ret = FALSE;
                }
            }
        }
    }

    return ret;
}

/**
 * Checks if the next collision is a warp or door tile
 *
 * @return TRUE if the current tile behavior is a Warp tile or the next tile is a Door tile in the given direction is a Door tile
 */
static int PlayerAvatar_WillWarp(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    if (dir != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj);
        int z = MapObject_GetZ(mapObj);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        switch (dir) {
        case DIR_NORTH:
            if (TileBehavior_IsWarpEntranceNorth(tileBehavior) == 1) {
                return TRUE;
            }
            break;
        case DIR_SOUTH:
            if (TileBehavior_IsWarpEntranceSouth(tileBehavior) == 1) {
                return TRUE;
            }
            break;
        case DIR_WEST:
            if (TileBehavior_IsWarpEntranceWest(tileBehavior) == 1) {
                return TRUE;
            }
            break;
        case DIR_EAST:
            if (TileBehavior_IsWarpEntranceEast(tileBehavior) == 1) {
                return TRUE;
            }
            break;
        }

        x += MapObject_GetDxFromDir(dir);
        z += MapObject_GetDzFromDir(dir);
        tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (TileBehavior_IsDoor(tileBehavior) == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * Checks if the next collision is a bike ramp tile
 *
 * @return TRUE if the next tile behavior is a Bike Ramp tile in the given direction
 */
static int PlayerAvatar_WillHitBikeRamp(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    if (dir != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(dir);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(dir);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (dir == DIR_EAST && TileBehavior_IsBikeRampEastward(tileBehavior)) {
            return TRUE;
        }

        if (dir == DIR_WEST && TileBehavior_IsBikeRampWestward(tileBehavior)) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * Checks if the next collision is a water tile
 *
 * @return TRUE if the next tile behavior is a Water tile in the given direction
 */
static int PlayerAvatar_WillBeOnWater(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    if (dir != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(dir);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(dir);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (MapObject_IsOnWater(mapObj, tileBehavior)) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * Checks if the next collision is a bike bridge
 *
 * @return TRUE if the next tile behavior is a Bike Bridge tile in the given direction
 */
static int PlayerAvatar_WillBeOnBikeBridge(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    if (dir != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(dir);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(dir);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_AVATAR_CYCLING) {
            if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == 1) {
                if ((dir == DIR_NORTH) || (dir == DIR_SOUTH)) {
                    return FALSE;
                }

                return TRUE;
            }

            if (MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == 1) {
                if ((dir == DIR_WEST) || (dir == DIR_EAST)) {
                    return FALSE;
                }

                return TRUE;
            }
        } else if ((MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == 1) || (MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == 1)) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * Checks if the next collision is a tile that doesn't allow bike movement
 *
 * @return TRUE if the player is on a bike and next tile behavior is a tile that doesn't allow bike movement in the given direction
 */
static int PlayerAvatar_CheckBikeCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    if ((dir != DIR_NONE) && PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_AVATAR_CYCLING) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(dir);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(dir);
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

/**
 * Checks the player avatar's map object's collision in the distortion world 
 *
 * @return MAP_OBJ_COLLISION_ mask
 */
static int PlayerAvatar_CheckDistortionMapObjectCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    u32 collision = 0;
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj) / 2;
        int z = MapObject_GetZ(mapObj);

        PlayerAvatar_GetStepDistortionWorldPos(playerAvatar, dir, &x, &y, &z);

        if (DistWorld_CheckCollisionOnCurrentFloatingPlatform(fieldSystem, x, y, z) == 1) {
            collision |= MAP_OBJ_COLLISION_WILL_COLLIDE;
        }

        y = y * 2;

        if (sub_02063F00(mapObj, x, y, z) == 1) {
            collision |= MAP_OBJ_COLLISION_2;
        }
    }

    return collision;
}

/**
 * Checks if the next collision is a tile that allows surfing in the distortion world
 *
 * @return TRUE if the player is on a bike and next tile behavior is a distortion world surf tile in the given direction
 */
static int PlayerAvatar_WillBeOnWaterDistortion(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    if (dir != DIR_NONE) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
            u32 tileBehavior;
            int x = MapObject_GetX(mapObj);
            int y = MapObject_GetY(mapObj) / 2;
            int z = MapObject_GetZ(mapObj);

            PlayerAvatar_GetStepDistortionWorldPos(playerAvatar, dir, &x, &y, &z);

            DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &tileBehavior);

            if (TileBehavior_IsSurfable(tileBehavior)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

/**
 * Gets the collision flag mask from the next tile behavior and player map object collision in the distortion world
 *
 * @return Collision mask as specified by PLAYER_COLLISION_ flags
 */
u32 PlayerAvatar_CheckDistortionCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    u32 mapObjCollision, playerCollision = PLAYER_COLLISION_NONE;

    mapObjCollision = PlayerAvatar_CheckDistortionMapObjectCollision(playerAvatar, mapObj, dir);

    if (mapObjCollision & (MAP_OBJ_COLLISION_WILL_COLLIDE | MAP_OBJ_COLLISION_HEIGHT_CHANGE)) {
        playerCollision |= PLAYER_COLLISION_WILL_COLLIDE;
    }

    if (mapObjCollision & MAP_OBJ_COLLISION_2) {
        playerCollision |= PLAYER_COLLISION_1;
    }

    if (PlayerAvatar_WillBeOnWaterDistortion(playerAvatar, mapObj, dir) == 1) {
        playerCollision |= PLAYER_COLLISION_WATER;
    }

    if (PlayerAvatar_WillJumpTwiceDistortion(playerAvatar, mapObj, dir) == 1) {
        playerCollision |= PLAYER_COLLISION_JUMP_TWICE;
    }

    return playerCollision;
}

/**
 * Checks if the next collision is a tile that jumps twice in the distortion world
 *
 * @return TRUE if the player is on a bike and next tile behavior is a distortion world jump twice tile in the given direction
 */
static int PlayerAvatar_WillJumpTwiceDistortion(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    BOOL ret = 0;
    if ((dir != DIR_NONE) && PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_FLOOR) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
            u32 tileBehavior;
            int x = MapObject_GetX(mapObj);
            int y = MapObject_GetY(mapObj) / 2;
            int z = MapObject_GetZ(mapObj);

            PlayerAvatar_GetStepDistortionWorldPos(playerAvatar, dir, &x, &y, &z);

            ret = DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &tileBehavior);

            switch (dir) {
            case DIR_NORTH:
                ret = TileBehavior_IsJumpNorthTwice(tileBehavior);
                break;
            case DIR_SOUTH:
                ret = TileBehavior_IsJumpSouthTwice(tileBehavior);
                break;
            case DIR_WEST:
                ret = TileBehavior_IsJumpWestTwice(tileBehavior);
                break;
            case DIR_EAST:
                ret = TileBehavior_IsJumpEastTwice(tileBehavior);
                break;
            }
        }
    }

    return ret;
}

/**
 * Calculates the player's direction based on their most recent movement. Wrapper for the internal function.
 *
 * @return enum FaceDirection
 */
enum FaceDirection PlayerAvatar_CalcFaceDirection(PlayerAvatar *playerAvatar, u16 pressedKeys, u16 heldKeys)
{
    return PlayerAvatar_CalcFaceDirectionInternal(playerAvatar, pressedKeys, heldKeys);
}

/**
 * Gets the facing direction, only considering left and right directions
 *
 * @return FACE_LEFT, FACE_RIGHT, or -1
 */
static enum FaceDirection Movement_FaceLeftRightFromInput(u16 pad)
{
    if (pad & PAD_KEY_LEFT) {
        return FACE_LEFT;
    }

    if (pad & PAD_KEY_RIGHT) {
        return FACE_RIGHT;
    }

    return -1;
}

/**
 * Gets the facing direction, only considering up and down directions
 *
 * @return FACE_UP, FACE_DOWN, or -1
 */
static enum FaceDirection Movement_FaceUpDownFromInput(u16 pad)
{
    if (pad & PAD_KEY_UP) {
        return FACE_UP;
    }

    if (pad & PAD_KEY_DOWN) {
        return FACE_DOWN;
    }

    return -1;
}

/**
 * Internal function to calculate the player's facing direction based on their most recent movement direction
 *
 * @return enum FaceDirection
 */
static enum FaceDirection PlayerAvatar_CalcFaceDirectionInternal(PlayerAvatar *playerAvatar, u16 pressedKeys, u16 heldKeys)
{
    enum FaceDirection inputFaceLeftOrRight = Movement_FaceLeftRightFromInput(heldKeys);
    enum FaceDirection inputFaceUpOrDown = Movement_FaceUpDownFromInput(heldKeys);

    if (inputFaceLeftOrRight == -1) {
        return inputFaceUpOrDown;
    }

    if (inputFaceUpOrDown == -1) {
        return inputFaceLeftOrRight;
    }

    int dir = PlayerAvatar_GetMovingDir(playerAvatar);
    enum FaceDirection avatarFaceLeftOrRight = PlayerAvatar_GetFaceLeftOrRight(playerAvatar);
    enum FaceDirection avatarFaceUpOrDown = PlayerAvatar_GetFaceUpOrDown(playerAvatar);

    if (dir != DIR_NONE) {
        if (inputFaceLeftOrRight == avatarFaceLeftOrRight && inputFaceUpOrDown == avatarFaceUpOrDown) {
            return dir;
        }

        if (inputFaceUpOrDown != avatarFaceUpOrDown) {
            return inputFaceUpOrDown;
        }

        return inputFaceLeftOrRight;
    }

    return inputFaceUpOrDown;
}

/**
 * Checks if the player's map object animation is set or the player's current movement action is walking on a slow spot
 *
 * @return LocalMapObj_IsAnimationSet or MovementAction_IsWalkOnSpotSlow
 */
BOOL PlayerAvatar_IsAnimationSetOrWalkOnSpotSlow(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
        return TRUE;
    }

    enum MovementAction movementAction = MapObject_GetMovementAction(mapObj);

    if (MovementAction_IsWalkOnSpotSlow(movementAction) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Checks if the given movement action is a slow walk spot
 *
 * @return TRUE if the given movementAction is MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_[direction]
 */
static BOOL MovementAction_IsWalkOnSpotSlow(enum MovementAction movementAction)
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

/**
 * Checks if the run button is held
 *
 * @return TRUE if PAD_BUTTON_B is on
 */
int PlayerAvatar_IsRunButtonHeld(PlayerAvatar *playerAvatar, u16 pad)
{
    if (pad & PAD_BUTTON_B) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Checks if the player is currently in the run action
 *
 * @return TRUE if the player avatar's movement action is MOVEMENT_ACTION_RUN_[direction]
 */
int PlayerAvatar_IsRunning(PlayerAvatar *playerAvatar)
{
    u32 movementAction = PlayerAvatar_GetMovementAction(playerAvatar);

    switch (movementAction) {
    case MOVEMENT_ACTION_RUN_NORTH:
    case MOVEMENT_ACTION_RUN_SOUTH:
    case MOVEMENT_ACTION_RUN_WEST:
    case MOVEMENT_ACTION_RUN_EAST:
        return TRUE;
    }

    return FALSE;
}

/**
 * Gets and updates the move state based on the player avatar's current player state.
 *
 * @return enum AvatarMoveState
 */
int PlayerAvatar_GetMoveStateFromPlayerAvatarState(PlayerAvatar *playerAvatar, int dir)
{
    int tempState, avatarMoveState, state = PlayerAvatar_GetPlayerState(playerAvatar);

    switch (state) {
    case PLAYER_AVATAR_WALKING:
    case PLAYER_AVATAR_SURFING:
        tempState = PlayerAvatar_UpdateMoveState(playerAvatar, dir);
        avatarMoveState = PlayerAvatar_ValidateState(tempState);
        break;
    case PLAYER_AVATAR_CYCLING:
        if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
            tempState = PlayerAvatar_GetBikeStateFourthGear(playerAvatar, dir);
            avatarMoveState = PlayerAvatarBikeState_GetMoveStateFourthGear(tempState);
        } else {
            tempState = PlayerAvatar_GetBikeStateFourthGear(playerAvatar, dir);
            avatarMoveState = PlayerAvatarBikeState_GetMoveStateFourthGear(tempState);
        }

        break;
    default:
        avatarMoveState = AVATAR_MOVE_STATE_NONE;
        GF_ASSERT(FALSE);
    }

    return avatarMoveState;
}

/**
 * Gets the movement action code associated with the player's current movement action speed or collision type.
 *
 * @return enum MovementAction
 */
u32 PlayerAvatar_GetMovementActionAnimCode(PlayerAvatar *playerAvatar, u16 pressedKeys, u16 heldKeys, int actionSpeed, int param4, int param5)
{
    u32 movementAction;
    int facingDir = PlayerAvatar_CalcFaceDirectionInternal(playerAvatar, pressedKeys, heldKeys);
    int moveState = PlayerAvatar_GetMoveStateFromPlayerAvatarState(playerAvatar, facingDir);

    PlayerAvatar_SetMoveState(playerAvatar, moveState);

    if (moveState == AVATAR_MOVE_STATE_NONE) {
        facingDir = PlayerAvatar_GetFacingDir(playerAvatar);
        movementAction = MovementAction_TurnActionTowardsDir(facingDir, MOVEMENT_ACTION_FACE_NORTH);
        return movementAction;
    }

    if (moveState == AVATAR_MOVE_STATE_TURNING) {
        movementAction = MovementAction_TurnActionTowardsDir(facingDir, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);
        return movementAction;
    }

    
    PlayerAvatar_GetMapObject(playerAvatar);
    u32 v4 = param5;

    if (v4 & (1 << 2)) {
        movementAction = MOVEMENT_ACTION_JUMP_FAR_NORTH;
    } else if (v4 & (1 << 7)) {
        movementAction = MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH;
    } else if (v4 != 0) {
        movementAction = MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH;

        if ((v4 & (1 << 3)) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }
    } else {
        switch (actionSpeed) {
        case 0:
            movementAction = MOVEMENT_ACTION_WALK_SLOWER_NORTH;
            break;
        case 1:
            movementAction = MOVEMENT_ACTION_WALK_SLOW_NORTH;
            break;
        case 2:
            movementAction = MOVEMENT_ACTION_WALK_NORMAL_NORTH;
            break;
        case 3:
            movementAction = MOVEMENT_ACTION_WALK_SLIGHTLY_FAST_NORTH;
            break;
        case 4:
            movementAction = MOVEMENT_ACTION_WALK_FAST_NORTH;
            break;
        case 5:
            movementAction = MOVEMENT_ACTION_WALK_FASTER_NORTH;
            break;
        default:
            movementAction = MOVEMENT_ACTION_WALK_SLOWER_NORTH;
        }

        if ((param4 == 1) && (PlayerAvatar_IsRunButtonHeld(playerAvatar, heldKeys) == TRUE)) {
            movementAction = MOVEMENT_ACTION_RUN_NORTH;
        }
    }

    return MovementAction_TurnActionTowardsDir(facingDir, movementAction);
}

/**
 * Checks if the player avatar's map object's animation code has been set
 *
 * @return LocalMapObj_IsAnimationSet(playerMapObj)
 */
int PlayerAvatar_IsMapObjectAnimationSet(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    return LocalMapObj_IsAnimationSet(mapObj);
}

/**
 * Sets the player avatar's movement action, action speed, and map object's animation code
 */
void PlayerAvatar_SetMapObjMovement(PlayerAvatar *playerAvatar, enum MovementAction movementAction, int speed)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    PlayerAvatar_SetMovement(playerAvatar, mapObj, movementAction, speed);
}

/**
 * Gets the tile behavior in the direction of the player
 *
 * @return Tile behavior as specified by TILE_BEHAVIOR_ enum
 */
u32 PlayerAvatar_GetTileBehaviorFromDir(PlayerAvatar *playerAvatar, int dir)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    return MapObject_GetTileBehaviorFromDir(mapObj, dir);
}

/**
 * Gets the coordinates in the direction of the player, outputed into x and z
 *
 * @return Sets *x and *z values to coordinates in the direction of the player
 */
void PlayerAvatar_MoveCoordsInDirection(PlayerAvatar *playerAvatar, int dir, int *x, int *z)
{
    *x = PlayerAvatar_GetXPos(playerAvatar) + MapObject_GetDxFromDir(dir);
    *z = PlayerAvatar_GetZPos(playerAvatar) + MapObject_GetDzFromDir(dir);
}

/**
 * Gets the coordinates directly in front of the player, outputed into x and z
 *
 * @return Sets *x and *z values to coordinates directly in front of the player
 */
void PlayerAvatar_GetFacingTileCoords(PlayerAvatar *playerAvatar, int *x, int *z)
{
    int facingDirection = PlayerAvatar_GetFacingDir(playerAvatar);
    PlayerAvatar_MoveCoordsInDirection(playerAvatar, facingDirection, x, z);
}

/**
 * Increments the RECORD_STEPS record by one
 */
static void PlayerAvatar_IncrementStepsRecord(PlayerAvatar *playerAvatar)
{
    MapObject *mapObject = PlayerAvatar_GetMapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObject);
    GameRecords *gameRecords = SaveData_GetGameRecords(fieldSystem->saveData);

    GameRecords_IncrementRecordValue(gameRecords, RECORD_STEPS);
}

/**
 * Checks if the player is on an elevated bike-only bridge and if they're facing the wrong direction if they're on that bridge
 *
 * @return FALSE if the player is not on the bridge or is on the bridge and facing the right direction, TRUE if the player is on the bridge and facing the wrong direction
 */
static int PlayerAvatar_IsOnBikeBridgeWrongDirection(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir)
{
    if (dir != -1) {
        u8 tileBehavior = MapObject_GetCurrTileBehavior(mapObj);

        if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == TRUE) {
            if (dir == DIR_NORTH || dir == DIR_SOUTH) {
                return FALSE;
            }

            return TRUE;
        }

        if (MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == TRUE) {
            if (dir == DIR_WEST || dir == DIR_EAST) {
                return FALSE;
            }

            return TRUE;
        }
    }

    return FALSE;
}

/**
 * Checks if the player is on a bridge tile on cycling road, so their movement can be forced down
 *
 * @return TRUE if the player is on a bicycle on cyling road while the current tile behavior is an elevated bridge
 */
static int PlayerAvatar_IsOnCyclingRoadBridge(PlayerAvatar *playerAvatar, u32 tileBehavior, int dir)
{
    if (dir != DIR_NONE) {
        return FALSE;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_CYCLING) {
        return FALSE;
    }

    if (!PlayerAvatar_IsOnCyclingRoad(playerAvatar)) {
        return FALSE;
    }

    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    if (MapObject_IsOnElevatedBridge(mapObj, tileBehavior) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Gets the distortion world position in the step of a given direction of the player.
 *
 * @return Sets xOut, yOut, and zOut to the coordinates in a step distance of the given direction of the player
 */
void PlayerAvatar_GetStepDistortionWorldPos(PlayerAvatar *playerAvatar, int dir, int *xOut, int *yOut, int *zOut)
{
    const DistortionWorldStepDirection *stepDirection;
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_NONE:
    case AVATAR_DISTORTION_STATE_ACTIVE:
    case AVATAR_DISTORTION_STATE_FLOOR:
        stepDirection = &sDistortionStepDirectionFloor[dir];
        break;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        stepDirection = &sDistortionStepDirectionWestWall[dir];
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        stepDirection = &sDistortionStepDirectionEastWall[dir];
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        stepDirection = &sDistortionStepDirectionCeiling[dir];
        break;
    default:
        return;
    }

    (*xOut) += stepDirection->dx;
    (*yOut) += stepDirection->dy;
    (*zOut) += stepDirection->dz;
}

/**
 * Gets the current tile behavior of the tile the player is facing in the distortion world.
 *
 * @return enum TileBehavior
 */
u32 PlayerAvatar_GetDistortionFacingTileBehaviour(PlayerAvatar *playerAvatar, int distortionDir)
{
    u32 tileBehavior;

    if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == FALSE) {
        tileBehavior = PlayerAvatar_GetTileBehaviorFromDir(playerAvatar, distortionDir);
    } else {
        MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj) / 2;
        int z = MapObject_GetZ(mapObj);

        PlayerAvatar_GetStepDistortionWorldPos(playerAvatar, distortionDir, &x, &y, &z);
        DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &tileBehavior);
    }

    return tileBehavior;
}

/**
 * Gets the current tile behavior of the tile the player is on in the distortion world.
 *
 * @return enum TileBehavior
 */
u32 PlayerAvatar_GetDistortionCurrTileBehaviour(PlayerAvatar *playerAvatar)
{
    u32 tileBehavior;
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
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

/**
 * Gets the distortion world position of the direction the player is currently facing in.
 *
 * @return Sets xOut, yOut, and zOut to the coordinates in front of the player
 */
void PlayerAvatar_GetFacingDistortionWorldPos(PlayerAvatar *const playerAvatar, int *xOut, int *yOut, int *zOut)
{
    int dir = PlayerAvatar_GetDistortionDir(playerAvatar);
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    *xOut = MapObject_GetX(mapObj);
    *yOut = MapObject_GetY(mapObj) / 2;
    *zOut = MapObject_GetZ(mapObj);

    PlayerAvatar_GetStepDistortionWorldPos(playerAvatar, dir, xOut, yOut, zOut);
}
