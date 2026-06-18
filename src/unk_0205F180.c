#include "unk_0205F180.h"

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
    u32 unk_04;
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
static int sub_0205F62C(PlayerAvatar *playerAvatar, int param1);
static u32 PlayerAvatar_GetTileMovement(PlayerAvatar *playerAvatar, int param1);
static int sub_0205F6A4(PlayerAvatar *playerAvatar, u32 param1, int param2);
static void PlayerAvatar_ClearTileForcedMovement(PlayerAvatar *playerAvatar);
static int PlayerAvatar_CheckIceHeightChange(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_UpdateIceSpeedFromHeightChange(PlayerAvatar *playerAvatar, int param1);
static void sub_0205FB40(PlayerAvatar *playerAvatar, int param1);
static void inline_0205F180(PlayerAvatar *playerAvatar, const LandDataManager *param1, int param2, u16 param3, u16 param4);
static void inline_0205F180_sub(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int sub_0205FC48(PlayerAvatar *playerAvatar, int param1);
static int sub_0205FC64(int param0);
static int sub_0205FC88(MapObject *mapObj, u8 param1, int param2);
static int sub_0205FCBC(MapObject *mapObj, u8 param1, int param2);
static int PlayerAvatar_UpdateMoveState(PlayerAvatar *playerAvatar, int param1);
static void sub_0205FD20(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_0205FD40(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_0205FDC8(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_0205FECC(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_020600CC(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_02060150(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_020601D4(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_02060258(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_020602DC(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static void PlayerAvatar_TryCyclingGearChange(PlayerAvatar *playerAvatar, u16 param1);
int sub_02060390(PlayerAvatar *playerAvatar, int param1);
static int sub_020603BC(PlayerAvatar *playerAvatar);
static int sub_020603EC(PlayerAvatar *playerAvatar);
static void sub_02060420(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int sub_02060494(PlayerAvatar *playerAvatar, int param1);
static int sub_020604B0(int param0);
static int sub_020604E4(PlayerAvatar *playerAvatar, int param1);
static void sub_02060548(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_02060570(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_02060688(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_020606C8(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_0206078C(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int sub_02060800(PlayerAvatar *playerAvatar, int param1);
static int sub_0206081C(int param0);
static int sub_02060850(PlayerAvatar *playerAvatar, int param1);
static void sub_020608BC(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_020608E4(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_02060A60(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void sub_02060AA0(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
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
static BOOL IsMovementWalkOnSpotSlow(enum MovementAction pamovementActionram0);
static void PlayerAvatar_IncrementStepsRecord(PlayerAvatar *playerAvatar);
static int PlayerAvatar_IsOnBikeBridgeWrongDirection(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_IsOnCyclingRoadBridge(PlayerAvatar *playerAvatar, u32 tileBehavior, int param2);
static void sub_02060B64(PlayerAvatar *playerAvatar, MapObject *mapObj, enum MovementAction movementAction, int param3);

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

    if (sub_0205F62C(playerAvatar, dir) == 1) {
        ov5_021E0EEC(playerAvatar);
        return;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_AVATAR_WALKING) {
        int v0 = sub_0205FC48(playerAvatar, dir);

        if (v0 != 0) {
            ov5_021E0EEC(playerAvatar);
        } else if (param5 == 1) {
            ov5_021E0E94(playerAvatar);
        }
    }

    inline_0205F180(playerAvatar, landManager, dir, keyPad, keyPress);

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

    if (IsMovementWalkOnSpotSlow(movementAction) == TRUE) {
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
    if (PlayerAvatar_GetMoveState(playerAvatar) == TRUE) {
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

        if (!IsMovementWalkOnSpotSlow(code)) {
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

            if (IsMovementWalkOnSpotSlow(movementAction) == TRUE) {
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

int sub_0205F588(PlayerAvatar *playerAvatar)
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

        if (IsMovementWalkOnSpotSlow(movementAction) == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

void sub_0205F5E4(PlayerAvatar *playerAvatar, int dir)
{
    MapObject *mapObj;

    PlayerAvatar_SetMoveState(playerAvatar, 0);
    PlayerAvatar_SetPlayerMoveState(playerAvatar, 0);

    mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    MapObject_TryFace(mapObj, dir);
    sub_02062A0C(mapObj, 0x0);
    MapObject_UpdateCoords(mapObj);
    sub_020656DC(mapObj);
    LocalMapObj_SetAnimationCode(mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH));
}

static int sub_0205F62C(PlayerAvatar *playerAvatar, int param1)
{
    u32 tileMovement = PlayerAvatar_GetTileMovement(playerAvatar, param1);

    return sub_0205F6A4(playerAvatar, tileMovement, param1);
}

static u32 PlayerAvatar_GetTileMovement(PlayerAvatar *playerAvatar, int param1)
{
    int i = 0;
    u32 tileBehavior = MapObject_GetCurrTileBehavior(PlayerAvatar_GetMapObject(playerAvatar));

    if (PlayerAvatar_IsOnCyclingRoadBridge(playerAvatar, tileBehavior, param1) == TRUE) {
        return TILE_MOVE_CYCLING_ROAD_DOWN;
    }

    if (PlayerAvatar_CheckIgnoreTileBehavior(playerAvatar) == TRUE) {
        return TILE_MOVE_NONE;
    }

    do {
        if (sTileBehaviorCheckTable[i].func(tileBehavior) == TRUE) {
            return sTileBehaviorCheckTable[i].unk_04;
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

static int sub_0205F6A4(PlayerAvatar *playerAvatar, u32 tileMove, int param2)
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

        if (heightChange != 1) {
            PlayerAvatar_SetIgnoreTileBehavior(playerAvatar, 1);
            PlayerAvatar_SetMoveState(playerAvatar, 0);
            return FALSE;
        }

        dir = Direction_GetOpposite(dir);
        collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

        if (collision != PLAYER_COLLISION_NONE) {
            return FALSE;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        sub_02060B64(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_SLOW_NORTH), PLAYER_ACTION_SPEED_SLOW);
        PlayerAvatar_SetIgnoreTileBehavior(playerAvatar, 1);
        PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
        PlayerAvatar_SetMoveState(playerAvatar, 1);

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
        sub_02060B64(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_SLOW_NORTH), PLAYER_ACTION_SPEED_SLOW);
        PlayerAvatar_SetIgnoreTileBehavior(playerAvatar, 1);
        PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
    } else {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        sub_0205FB40(playerAvatar, dir);
    }

    PlayerAvatar_SetMoveState(playerAvatar, 1);
    return TRUE;
}

static int PlayerAvatar_TileMove_BikeSlope(PlayerAvatar *playerAvatar, int param1)
{
    u32 collision;
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int dir = MapObject_GetMovingDir(mapObj);

    Sound_PlayEffect(SEQ_SE_DP_SUNA);

    if (dir == 0) {
        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_AVATAR_CYCLING && PlayerAvatar_GetSpeed(playerAvatar) >= 3) {
            if (param1 == 0) {
                sub_02060B64(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_FASTER_SOUTH), PLAYER_ACTION_SPEED_FASTER);
                PlayerAvatar_SetMoveState(playerAvatar, 1);
                return 1;
            }
        }

        dir = Direction_GetOpposite(dir);
        collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

        if (collision != PLAYER_COLLISION_NONE) {
            return 0;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        sub_02060B64(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_SLOW_NORTH), PLAYER_ACTION_SPEED_SLOW);
        PlayerAvatar_ClearSpeed(playerAvatar);
        PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
        PlayerAvatar_SetMoveState(playerAvatar, 1);
        PlayerAvatar_SetMoveThroughMudFlag(playerAvatar, 1);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
        return 1;
    } else if (dir == 1) {
        if (PlayerAvatar_CheckMoveThroughMudFlag(playerAvatar) == 0) {
            sub_02060B64(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_FASTER_SOUTH), PLAYER_ACTION_SPEED_FASTER);
            PlayerAvatar_SetMoveState(playerAvatar, 1);

            if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
                PlayerAvatar_SetSpeed(playerAvatar, 3);
            }

            PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
            return 1;
        } else {
            MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
            sub_02060B64(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_SLOW_NORTH), PLAYER_ACTION_SPEED_SLOW);
            PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
            PlayerAvatar_SetMoveState(playerAvatar, AVATAR_MOVE_STATE_MOVING);
            PlayerAvatar_SetMoveThroughMudFlag(playerAvatar, 1);
            PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_TileMove_BikeRampEast(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int dir = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        sub_02060B64(playerAvatar, mapObj, 0x5f, PLAYER_ACTION_SPEED_SLOWER);
    } else {
        sub_02060B64(playerAvatar, mapObj, 0x5d, PLAYER_ACTION_SPEED_SLOW);
    }

    PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
    PlayerAvatar_SetForceMovementRetainSpeed(playerAvatar, 1);

    return 1;
}

static int PlayerAvatar_TileMove_BikeRampWest(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int dir = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        sub_02060B64(playerAvatar, mapObj, 0x5e, PLAYER_ACTION_SPEED_SLOWER);
    } else {
        sub_02060B64(playerAvatar, mapObj, 0x5c, PLAYER_ACTION_SPEED_SLOWER);
    }

    PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
    PlayerAvatar_SetForceMovementRetainSpeed(playerAvatar, 1);

    return 1;
}

static int PlayerAvatar_TileMove_CyclingRoadDown(PlayerAvatar *playerAvatar, int param1)
{
    int dir = 1;
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    u32 collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    if (collision == 0) {
        sub_02060B64(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_FASTER_NORTH), PLAYER_ACTION_SPEED_FASTER);
        PlayerAvatar_SetMoveState(playerAvatar, 1);
        PlayerAvatar_SetSpeed(playerAvatar, 3);

        return 1;
    } else {
        sub_02060B64(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_SOUTH), PLAYER_ACTION_SPEED_NOT_MOVING);
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
 * @return 0 - height stays the same, 1 - height increases, 2 - height decreases
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
        return 0;
    }

    if (cur.y > next.y) {
        return 2;
    }

    return 1;
}

/**
 * Increasse the speed if the height change is lower and decreases the speed if the height change is higher. For use in the Snowpoint City gym.
 *
 * @return TRUE if the speed is updated or at max speed, FALSE if the speed attempted to decrease while at min speed.
 */
static int PlayerAvatar_UpdateIceSpeedFromHeightChange(PlayerAvatar *playerAvatar, int heightChange)
{
    int speed = PlayerAvatar_GetSpeed(playerAvatar);

    if (heightChange == 1) {
        speed--;

        if (speed < 0) {
            return FALSE;
        }
    } else if (heightChange == 2) {
        speed++;

        if (speed > 3) {
            speed = 3;
        }
    }

    PlayerAvatar_SetSpeed(playerAvatar, speed);
    return TRUE;
}

static void sub_0205FB40(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    int v1 = 0x10;
    int speed = PlayerAvatar_GetSpeed(playerAvatar);
    int v3 = PLAYER_ACTION_SPEED_FAST;

    switch (speed) {
    case 1:
        v1 = 0x50;
        v3 = PLAYER_ACTION_SPEED_FAST;
        break;
    case 2:
        v1 = 0x14;
        v3 = PLAYER_ACTION_SPEED_FASTER;
        break;
    case 3:
        v1 = 0x14;
        v3 = PLAYER_ACTION_SPEED_FASTER;
        break;
    }

    v1 = MovementAction_TurnActionTowardsDir(param1, v1);
    sub_02060B64(playerAvatar, mapObj, v1, v3);
}

static void inline_0205F180(PlayerAvatar *playerAvatar, const LandDataManager *landManager, int dir, u16 keyPad, u16 keyPress)
{
    int state = PlayerAvatar_GetPlayerState(playerAvatar);
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    switch (state) {
    case PLAYER_AVATAR_WALKING:
    case PLAYER_AVATAR_SURFING:
        inline_0205F180_sub(playerAvatar, mapObj, landManager, dir, keyPad, keyPress);
        break;
    case PLAYER_AVATAR_CYCLING:
        sub_020602DC(playerAvatar, mapObj, landManager, dir, keyPad, keyPress);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void inline_0205F180_sub(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int v0 = sub_0205FC48(playerAvatar, param3);

    switch (v0) {
    case AVATAR_MOVE_STATE_NONE:
        sub_0205FD20(playerAvatar, mapObj, param3, param4, param5);
        break;
    case AVATAR_MOVE_STATE_MOVING:
        sub_0205FD40(playerAvatar, mapObj, param3, param4, param5);
        break;
    case AVATAR_MOVE_STATE_TURNING:
        sub_02060258(playerAvatar, mapObj, param3, param4, param5);
        break;
    }
}

static int sub_0205FC48(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = PlayerAvatar_UpdateMoveState(playerAvatar, param1);
    int v1 = sub_0205FC64(v0);

    PlayerAvatar_SetMoveState(playerAvatar, v1);
    return v0;
}

static int sub_0205FC64(int param0)
{
    switch (param0) {
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

static int sub_0205FC88(MapObject *mapObj, u8 param1, int param2)
{
    if (TileBehavior_IsDeepestSnow(param1) == 1) {
        return 0x4;
    }

    if (TileBehavior_IsDeeperSnow(param1) == 1) {
        return 0x8;
    }

    if (TileBehavior_IsDeepSnow(param1) == 1) {
        return 0xc;
    }

    return param2;
}

static int sub_0205FCBC(MapObject *mapObj, u8 param1, int param2)
{
    return param2;
}

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

static void sub_0205FD20(PlayerAvatar *playerAvatar, MapObject *param1, int param2, u16 param3, u16 param4)
{
    int v0 = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(param1), MOVEMENT_ACTION_FACE_NORTH);
    sub_02060B64(playerAvatar, param1, v0, PLAYER_ACTION_SPEED_NOT_MOVING);
}

static void sub_0205FD40(PlayerAvatar *playerAvatar, MapObject *param1, int param2, u16 param3, u16 param4)
{
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_FLOOR:
        sub_0205FECC(playerAvatar, param1, param2, param3, param4);
        break;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        sub_020600CC(playerAvatar, param1, param2, param3, param4);
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        sub_02060150(playerAvatar, param1, param2, param3, param4);
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        sub_020601D4(playerAvatar, param1, param2, param3, param4);
        break;
    default:
        sub_0205FDC8(playerAvatar, param1, param2, param3, param4);
    }
}

static void sub_0205FDC8(PlayerAvatar *playerAvatar, MapObject *param1, int param2, u16 param3, u16 param4)
{
    u32 collision;
    int v1;
    int speed;

    collision = PlayerAvatar_CheckCollision(playerAvatar, param1, param2);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_SURFING) {
        if (collision & PLAYER_COLLISION_JUMP) {
            v1 = 0x38;
            speed = PLAYER_ACTION_SPEED_SLOW;
        } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
            v1 = 0x75;
            speed = PLAYER_ACTION_SPEED_SLOWER;
        } else if (collision != PLAYER_COLLISION_NONE) {
            v1 = 0x1c;
            speed = PLAYER_ACTION_SPEED_NOT_MOVING;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(param1, param2);
        } else {
            v1 = 0xc;
            speed = PLAYER_ACTION_SPEED_NORMAL;

            {
                PlayerData *v3 = PlayerAvatar_PlayerData(playerAvatar);

                if (PlayerData_HasRunningShoes(v3) == 1) {
                    if (sub_020613FC(playerAvatar, param4) == 1) {
                        v1 = 0x58;
                        speed = PLAYER_ACTION_SPEED_FAST;
                    }
                }
            }

            v1 = sub_0205FC88(param1, MapObject_GetCurrTileBehavior(param1), v1);

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        }
    } else {
        if ((collision == PLAYER_COLLISION_NONE) || (collision == PLAYER_COLLISION_WATER)) {
            speed = PLAYER_ACTION_SPEED_FAST;
            v1 = 0x10;
            v1 = sub_0205FCBC(param1, MapObject_GetCurrTileBehavior(param1), v1);

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        } else {
            v1 = 0x1c;
            speed = PLAYER_ACTION_SPEED_NOT_MOVING;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(param1, param2);
        }
    }

    v1 = MovementAction_TurnActionTowardsDir(param2, v1);
    sub_02060B64(playerAvatar, param1, v1, speed);
}

static void sub_0205FECC(PlayerAvatar *playerAvatar, MapObject *param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int speed;

    v0 = PlayerAvatar_CheckDistortionCollision(playerAvatar, param1, param2);

    if (v0 & (~(1 << 7))) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(param1);
        int x = MapObject_GetX(param1);
        int y = MapObject_GetY(param1);
        int z = MapObject_GetZ(param1);

        y = ((y) / 2);
        PlayerAvatar_GetStepDistortionWorldPos(playerAvatar, param2, &x, &y, &z);

        if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, x, y, z) == 0) {
            if (DistWorld_AreCoordsValidOnCurrentFloatingPlatformKind(fieldSystem, x, y, z) == 1) {
                DistWorld_FindAndPrepareNewCurrentFloatingPlatform(fieldSystem, x, y, z);
                v0 = PlayerAvatar_CheckDistortionCollision(playerAvatar, param1, param2);
            }
        }
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_SURFING) {
        if (v0 & (1 << 7)) {
            v1 = 0x75;
            speed = PLAYER_ACTION_SPEED_SLOWER;
            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        } else if (v0 != 0) {
            v1 = 0x1c;
            speed = PLAYER_ACTION_SPEED_NOT_MOVING;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(param1, param2);
        } else {
            PlayerData *player;

            v1 = 0xc;
            speed = PLAYER_ACTION_SPEED_NORMAL;
            player = PlayerAvatar_PlayerData(playerAvatar);

            if (PlayerData_HasRunningShoes(player) == TRUE && sub_020613FC(playerAvatar, param4) == 1) {
                v1 = 0x58;
                speed = PLAYER_ACTION_SPEED_FAST;
            }

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        }
    } else {
        if ((v0 == 0) || (v0 == (1 << 5))) {
            speed = PLAYER_ACTION_SPEED_FAST;
            v1 = 0x10;
            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        } else {
            v1 = 0x1c;
            speed = PLAYER_ACTION_SPEED_NOT_MOVING;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(param1, param2);
        }
    }

    v1 = MovementAction_TurnActionTowardsDir(param2, v1);
    sub_02060B64(playerAvatar, param1, v1, speed);
}

static void sub_0206000C(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4, const int *param5, const int *param6, const int *param7, const int *param8, const int *param9)
{
    u32 v0;
    int v1;
    int v2;

    v0 = PlayerAvatar_CheckDistortionCollision(playerAvatar, mapObj, param2);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_SURFING) {
        if (v0 != 0) {
            v1 = param8[param2];
            v2 = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, param9[param2]);
        } else {
            PlayerData *v3;

            v2 = 4;
            v1 = param5[param2];
            v3 = PlayerAvatar_PlayerData(playerAvatar);

            if ((PlayerData_HasRunningShoes(v3) == 1) && (sub_020613FC(playerAvatar, param4) == 1)) {
                v2 = 5;
                v1 = param6[param2];
            }

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
        }
    } else {
        if ((v0 == 0) || (v0 == (1 << 5))) {
            v2 = 4;
            v1 = param7[param2];

            PlayerAvatar_IncrementStepsRecord(playerAvatar);
            PlayerAvatar_StartStep(playerAvatar);
        } else {
            v1 = param8[param2];
            v2 = 1;

            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, param9[param2]);
        }
    }

    sub_02060B64(playerAvatar, mapObj, v1, v2);
}

static void sub_020600CC(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0[4] = { 0x69, 0x6a, 0x6b, 0x6c };
    int v1[4] = { 0x79, 0x7a, 0x7b, 0x7c };
    int v2[4] = { 0x69, 0x6a, 0x6b, 0x6c };
    int v3[4] = { 0x1e, 0x1f, 0x1d, 0x1c };
    int v4[4] = { 0, 1, 2, 3 };

    sub_0206000C(playerAvatar, mapObj, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void sub_02060150(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0[4] = { 0x6d, 0x6e, 0x6f, 0x70 };
    int v1[4] = { 0x7d, 0x7e, 0x7f, 0x80 };
    int v2[4] = { 0x6d, 0x6e, 0x6f, 0x70 };
    int v3[4] = { 0x1f, 0x1e, 0x1c, 0x1d };
    int v4[4] = { 0, 1, 2, 3 };

    sub_0206000C(playerAvatar, mapObj, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void sub_020601D4(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0[4] = { 0x71, 0x72, 0x73, 0x74 };
    int v1[4] = { 0x81, 0x82, 0x83, 0x84 };
    int v2[4] = { 0x71, 0x72, 0x73, 0x74 };
    int v3[4] = { 0x1d, 0x1c, 0x1f, 0x1e };
    int v4[4] = { 0, 1, 2, 3 };

    sub_0206000C(playerAvatar, mapObj, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void sub_02060258(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0, v1;
    v1 = param2;

    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        int v3[4] = { 2, 3, 1, 0 };
        v1 = v3[param2];
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        int v4[4] = { 3, 2, 0, 1 };
        v1 = v4[param2];
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        int v5[4] = { 1, 0, 3, 2 };
        v1 = v5[param2];
        break;
    }

    v0 = MovementAction_TurnActionTowardsDir(v1, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

    sub_02060B64(playerAvatar, mapObj, v0, 1);
    MapObject_Turn(mapObj, param2);
}

static void sub_020602DC(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int v0;

    if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
        sub_0206078C(playerAvatar, mapObj, param2, param3, param4, param5);
    } else {
        sub_02060420(playerAvatar, mapObj, param2, param3, param4, param5);
    }
}

static void PlayerAvatar_TryCyclingGearChange(PlayerAvatar *playerAvatar, u16 pad)
{
    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_AVATAR_CYCLING) {
        return;
    }

    if (pad & PAD_BUTTON_B) {
        u32 v0 = MapObject_GetCurrTileBehavior(PlayerAvatar_GetMapObject(playerAvatar));

        if (TileBehavior_IsBikeRampEastward(v0) || TileBehavior_IsBikeRampWestward(v0)) {
            return;
        }

        {
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
}

int sub_02060390(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = 0x4c;

    switch (PlayerAvatar_GetSpeed(playerAvatar)) {
    case 1:
        v0 = 0x10;
        break;
    case 2:
        v0 = 0x50;
        break;
    case 3:
        v0 = 0x14;
        break;
    }

    v0 = MovementAction_TurnActionTowardsDir(param1, v0);
    return v0;
}

static int sub_020603BC(PlayerAvatar *playerAvatar)
{
    int v0 = PlayerAvatar_AddMoveSpeed(playerAvatar, 1, 3);

    if (PlayerAvatar_CheckBikeBrake(playerAvatar) == 0) {
        if (v0 >= 2) {
            PlayerAvatar_SetBikeBrake(playerAvatar, 1);
        }
    }

    if (v0 == 3) {
        return 1;
    }

    return 0;
}

static int sub_020603EC(PlayerAvatar *playerAvatar)
{
    int v0 = 1;
    int v1 = PlayerAvatar_GetSpeed(playerAvatar);

    v1--;

    if (v1 < 0) {
        v1 = 0;
        v0 = 0;
    }

    PlayerAvatar_SetSpeed(playerAvatar, v1);

    if (PlayerAvatar_CheckBikeBrake(playerAvatar) == 1) {
        if (v1 == 0) {
            PlayerAvatar_SetBikeBrake(playerAvatar, 0);
        }
    }

    return v0;
}

static void sub_02060420(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int v0 = sub_02060494(playerAvatar, param3);

    switch (v0) {
    case 0:
        sub_02060548(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 1:
        sub_02060570(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 2:
        sub_02060688(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 3:
        sub_020606C8(playerAvatar, mapObj, param3, param4, param5);
        break;
    }
}

static int sub_02060494(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = sub_020604E4(playerAvatar, param1);
    int v1 = sub_020604B0(v0);

    PlayerAvatar_SetMoveState(playerAvatar, v1);
    return v0;
}

static int sub_020604B0(int param0)
{
    switch (param0) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 1;
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int sub_020604E4(PlayerAvatar *playerAvatar, int param1)
{
    int dir;

    if (param1 == -1) {
        if (PlayerAvatar_CheckBikeBrake(playerAvatar) == 1) {
            PlayerAvatar_SetMoveState(playerAvatar, 1);
            return 3;
        }

        PlayerAvatar_SetMoveState(playerAvatar, 0);
        return 0;
    }

    dir = PlayerAvatar_GetFacingDir(playerAvatar);
    PlayerAvatar_SetBikeBrake(playerAvatar, 0);

    if ((dir != param1) && (PlayerAvatar_GetMoveState(playerAvatar) != 1)) {
        PlayerAvatar_SetMoveState(playerAvatar, 2);
        return 2;
    }

    PlayerAvatar_SetMoveState(playerAvatar, 1);
    return 1;
}

static void sub_02060548(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0 = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    sub_02060B64(playerAvatar, mapObj, v0, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void sub_02060570(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    u32 collision;
    int v1;
    int v2;

    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, param2);

    if (collision & PLAYER_COLLISION_JUMP) {
        v1 = 0x38;
        v2 = 3;
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
        v1 = 0x75;
        v2 = 2;
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    } else if (collision & PLAYER_COLLISION_BIKE_RAMP) {
        v1 = 0x50;
        v2 = 5;
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
        PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
    } else if (collision & PLAYER_COLLISION_BIKE_BRIDGE) {
        v1 = 0x0;
        v2 = 1;
        param2 = MapObject_GetMovingDir(mapObj);
        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
    } else if (collision != PLAYER_COLLISION_NONE) {
        if (PlayerAvatar_IsOnBikeBridgeWrongDirection(playerAvatar, mapObj, param2) == FALSE) {
            v1 = 0x1c;
            v2 = 1;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            v1 = 0x0;
            v2 = 1;
            param2 = MapObject_GetMovingDir(mapObj);
            MapObject_Turn(mapObj, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
            PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
        }
    } else {
        v1 = 0x50;
        v2 = 5;
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
        PlayerAvatar_SetSpeed(playerAvatar, 2);
    }

    v1 = MovementAction_TurnActionTowardsDir(param2, v1);
    sub_02060B64(playerAvatar, mapObj, v1, v2);
}

static void sub_02060688(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_IsOnBikeBridgeWrongDirection(playerAvatar, mapObj, param2) != 1) {
        int v0 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        sub_02060B64(playerAvatar, mapObj, v0, 1);
        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void sub_020606C8(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    u32 collision;
    int v1;
    int v2, v3 = sub_020603EC(playerAvatar);

    dir = PlayerAvatar_GetMovingDir(playerAvatar);
    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, dir);

    if (collision & PLAYER_COLLISION_JUMP) {
        v2 = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        v1 = 3;
    } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
        v2 = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH);
        v1 = 2;
    } else if (collision & PLAYER_COLLISION_BIKE_BRIDGE) {
        v2 = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH);
        v1 = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (collision != PLAYER_COLLISION_NONE) {
        v3 = 0;
        v2 = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
        v1 = 1;

        if ((collision & PLAYER_COLLISION_WARP) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, dir);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        v2 = sub_02060390(playerAvatar, dir);
        v1 = 5;
    }

    if (v3 == 0) {
        PlayerAvatar_SetBikeBrake(playerAvatar, 0);
    }

    sub_02060B64(playerAvatar, mapObj, v2, v1);
}

static void sub_0206078C(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int v0 = sub_02060800(playerAvatar, param3);

    switch (v0) {
    case 0:
        sub_020608BC(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 1:
        sub_020608E4(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 2:
        sub_02060A60(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 3:
        sub_02060AA0(playerAvatar, mapObj, param3, param4, param5);
        break;
    }
}

static int sub_02060800(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = sub_02060850(playerAvatar, param1);
    int v1 = sub_0206081C(v0);

    PlayerAvatar_SetMoveState(playerAvatar, v1);
    return v0;
}

static int sub_0206081C(int param0)
{
    switch (param0) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 1;
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int sub_02060850(PlayerAvatar *playerAvatar, int param1)
{
    int v0, v1;

    v1 = PlayerAvatar_GetSpeed(playerAvatar);

    if (param1 == -1) {
        if (v1 < 2) {
            PlayerAvatar_SetMoveState(playerAvatar, 0);
            return 0;
        }

        PlayerAvatar_SetMoveState(playerAvatar, 1);
        return 3;
    }

    v0 = PlayerAvatar_GetFacingDir(playerAvatar);

    if ((v0 != param1) && (PlayerAvatar_GetMoveState(playerAvatar) != 1)) {
        if (v1 < 2) {
            PlayerAvatar_SetMoveState(playerAvatar, 2);
            return 2;
        }

        PlayerAvatar_SetMoveState(playerAvatar, 1);
        return 3;
    }

    PlayerAvatar_SetMoveState(playerAvatar, 1);
    return 1;
}

static void sub_020608BC(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0 = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    sub_02060B64(playerAvatar, mapObj, v0, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void sub_020608E4(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    u32 collision;
    int v1;
    int v2;

    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, param2);

    if (collision & PLAYER_COLLISION_JUMP) {
        v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        v2 = 3;
        sub_020603BC(playerAvatar);
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
        v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH);
        v2 = 2;
        sub_020603BC(playerAvatar);
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    } else if (collision & PLAYER_COLLISION_BIKE_RAMP) {
        if (PlayerAvatar_GetSpeed(playerAvatar) >= 3) {
            v1 = sub_02060390(playerAvatar, param2);
            v2 = 5;
            PlayerAvatar_StartStep(playerAvatar);
            PlayerAvatar_SetForceMovement(playerAvatar, TRUE);
        } else {
            v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            v2 = 1;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
        }
    } else if (collision & PLAYER_COLLISION_BIKE_BRIDGE) {
        param2 = MapObject_GetMovingDir(mapObj);
        v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_FACE_NORTH);
        v2 = 1;
        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
        PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
    } else if (collision != PLAYER_COLLISION_NONE) {
        if (PlayerAvatar_IsOnBikeBridgeWrongDirection(playerAvatar, mapObj, param2) == 0) {
            v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            v2 = 1;

            if ((collision & PLAYER_COLLISION_WARP) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            v2 = 1;
            param2 = MapObject_GetMovingDir(mapObj);
            v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_FACE_NORTH);
            MapObject_Turn(mapObj, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
            PlayerAvatar_SetFaceDirection(playerAvatar, -1, -1);
        }
    } else {
        v2 = 5;
        v1 = sub_02060390(playerAvatar, param2);
        sub_020603BC(playerAvatar);
        PlayerAvatar_IncrementStepsRecord(playerAvatar);
        PlayerAvatar_StartStep(playerAvatar);
    }

    sub_02060B64(playerAvatar, mapObj, v1, v2);
}

static void sub_02060A60(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_IsOnBikeBridgeWrongDirection(playerAvatar, mapObj, param2) == 1) {
        (void)0;
    } else {
        int v0 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        sub_02060B64(playerAvatar, mapObj, v0, 1);
        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void sub_02060AA0(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    u32 collision;
    int v1;
    int v2, v3 = sub_020603EC(playerAvatar);

    param2 = PlayerAvatar_GetMovingDir(playerAvatar);
    collision = PlayerAvatar_CheckCollision(playerAvatar, mapObj, param2);

    if (collision & PLAYER_COLLISION_JUMP) {
        v2 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        v1 = PLAYER_ACTION_SPEED_SLOW;
    } else if (collision & PLAYER_COLLISION_JUMP_TWICE) {
        v2 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_JUMP_DISTORTION_WORLD_NORTH);
        v1 = PLAYER_ACTION_SPEED_SLOWER;
    } else if (collision & PLAYER_COLLISION_BIKE_BRIDGE) {
        v2 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_FACE_NORTH);
        v1 = PLAYER_ACTION_SPEED_NOT_MOVING;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (collision != PLAYER_COLLISION_NONE) {
        v3 = 0;
        v1 = PLAYER_ACTION_SPEED_NOT_MOVING;
        v2 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);

        if ((collision & PLAYER_COLLISION_WARP) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        v2 = sub_02060390(playerAvatar, param2);
        v1 = PLAYER_ACTION_SPEED_FAST;
    }

    if (v3 == 0) {
        PlayerAvatar_SetBikeBrake(playerAvatar, 0);
    }

    sub_02060B64(playerAvatar, mapObj, v2, v1);
}

static void sub_02060B64(PlayerAvatar *playerAvatar, MapObject *mapObj, enum MovementAction movementAction, int param3)
{
    PlayerAvatar_SetMovementActionAndSpeed(playerAvatar, movementAction, param3);
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

    {
        s8 verticalDirection;
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (TerrainCollisionManager_WillPlayerCollide(fieldSystem, &pos, x, z, &verticalDirection) == 1) {
            collisionFlag |= MAP_OBJ_COLLISION_WILL_COLLIDE;

            if (verticalDirection != 0) {
                collisionFlag |= MAP_OBJ_COLLISION_HEIGHT_CHANGE;
            }
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

enum FaceDirection PlayerAvatar_CalcFaceDirection(PlayerAvatar *playerAvatar, u16 pressedKeys, u16 heldKeys)
{
    return PlayerAvatar_CalcFaceDirectionInternal(playerAvatar, pressedKeys, heldKeys);
}

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

BOOL PlayerAvatar_IsAnimationSetOrWalkOnSpotSlow(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == TRUE) {
        return TRUE;
    }

    enum MovementAction movementAction = MapObject_GetMovementAction(mapObj);

    if (IsMovementWalkOnSpotSlow(movementAction) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static BOOL IsMovementWalkOnSpotSlow(enum MovementAction movementAction)
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

int sub_020613FC(PlayerAvatar *playerAvatar, u16 pad)
{
    if (pad & PAD_BUTTON_B) {
        return 1;
    }

    return 0;
}

int sub_0206140C(PlayerAvatar *playerAvatar)
{
    u32 v0 = PlayerAvatar_GetMovementAction(playerAvatar);

    switch (v0) {
    case 0x58:
    case 0x59:
    case 0x5a:
    case 0x5b:
        return 1;
    }

    return 0;
}

int sub_02061434(PlayerAvatar *playerAvatar, int param1)
{
    int v0, v1, state = PlayerAvatar_GetPlayerState(playerAvatar);

    switch (state) {
    case PLAYER_AVATAR_WALKING:
    case PLAYER_AVATAR_SURFING:
        v0 = PlayerAvatar_UpdateMoveState(playerAvatar, param1);
        v1 = sub_0205FC64(v0);
        break;
    case PLAYER_AVATAR_CYCLING:
        if (PlayerAvatar_GetCyclingGear(playerAvatar) == 1) {
            v0 = sub_02060850(playerAvatar, param1);
            v1 = sub_0206081C(v0);
        } else {
            v0 = sub_02060850(playerAvatar, param1);
            v1 = sub_0206081C(v0);
        }

        break;
    default:
        v1 = 0;
        GF_ASSERT(FALSE);
    }

    return v1;
}

u32 sub_0206147C(PlayerAvatar *playerAvatar, u16 param1, u16 param2, int param3, int param4, int param5)
{
    u32 v0;
    int facingDir = PlayerAvatar_CalcFaceDirectionInternal(playerAvatar, param1, param2);
    int v2 = sub_02061434(playerAvatar, facingDir);

    PlayerAvatar_SetMoveState(playerAvatar, v2);

    if (v2 == 0) {
        facingDir = PlayerAvatar_GetFacingDir(playerAvatar);
        v0 = MovementAction_TurnActionTowardsDir(facingDir, MOVEMENT_ACTION_FACE_NORTH);
        return v0;
    }

    if (v2 == 2) {
        v0 = MovementAction_TurnActionTowardsDir(facingDir, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);
        return v0;
    }

    {
        MapObject *v3 = PlayerAvatar_GetMapObject(playerAvatar);
        u32 v4 = param5;

        if (v4 & (1 << 2)) {
            v0 = 0x38;
        } else if (v4 & (1 << 7)) {
            v0 = 0x75;
        } else if (v4 != 0) {
            v0 = 0x1c;

            if ((v4 & (1 << 3)) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }
        } else {
            switch (param3) {
            case 0:
                v0 = 0x4;
                break;
            case 1:
                v0 = 0x8;
                break;
            case 2:
                v0 = 0xc;
                break;
            case 3:
                v0 = 0x4c;
                break;
            case 4:
                v0 = 0x10;
                break;
            case 5:
                v0 = 0x14;
                break;
            default:
                v0 = 0x4;
            }

            if ((param4 == 1) && (sub_020613FC(playerAvatar, param2) == 1)) {
                v0 = 0x58;
            }
        }

        v0 = MovementAction_TurnActionTowardsDir(facingDir, v0);
        return v0;
    }

    return 0xff;
}

int PlayerAvatar_IsMapObjectAnimationSet(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    return LocalMapObj_IsAnimationSet(mapObj);
}

void PlayerAvatar_SetAnimationCode(PlayerAvatar *playerAvatar, enum MovementAction movementAction, int param2)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    sub_02060B64(playerAvatar, mapObj, movementAction, param2);
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
    if (dir != -1) {
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
