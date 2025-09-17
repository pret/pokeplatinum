#include "unk_0205F180.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
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
    u32 movementType;
} TileBehaviorMapping;

typedef struct {
    s16 xOffset;
    s16 yOffset;
    s16 zOffset;
    s16 padding;
} DistortionDirectionOffset;

static int PlayerAvatar_Movement_CheckStartMoveInternal(PlayerAvatar *playerAvatar, int direction);
static void PlayerAvatar_Movement_StartMoveInit(PlayerAvatar *playerAvatar, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_State_HandleDeepSwampMovement(PlayerAvatar *playerAvatar);
static void PlayerAvatar_Audio_PlayWalkSE(PlayerAvatar *playerAvatar);
static int PlayerAvatar_Movement_ValidateSpecialMovement(PlayerAvatar *playerAvatar, int direction);
static u32 PlayerAvatar_Movement_GetSpecialMovementType(PlayerAvatar *playerAvatar, int direction);
static int PlayerAvatar_Movement_ExecuteSpecialMovement(PlayerAvatar *playerAvatar, u32 movementType, int direction);
static void PlayerAvatar_SpecialMovement_ClearState(PlayerAvatar *playerAvatar);
static int PlayerAvatar_State_CheckElevationChange(PlayerAvatar *playerAvatar, int direction);
static int PlayerAvatar_State_AdjustCyclingSpeed(PlayerAvatar *playerAvatar, int elevationChange);
static void PlayerAvatar_State_SetCyclingAnimation(PlayerAvatar *playerAvatar, int direction);
static void PlayerAvatar_Movement_HandleByState(PlayerAvatar *playerAvatar, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Movement_HandleWalkingSurfing(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static int PlayerAvatar_Walking_GetMovementType(PlayerAvatar *playerAvatar, int direction);
static int PlayerAvatar_Walking_MapTypeToState(int movementType);
static int PlayerAvatar_Walking_AdjustAnimationForSnow(MapObject *mapObj, u8 tileBehavior, int animationCode);
static int PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(MapObject *mapObj, u8 tileBehavior, int animationCode);
static int PlayerAvatar_Walking_DetermineMovementState(PlayerAvatar *playerAvatar, int direction);
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
int PlayerAvatar_Animation_GetCyclingAnimationCode(PlayerAvatar *playerAvatar, int direction);
static int PlayerAvatar_Cycling_HandleSpeedIncrease(PlayerAvatar *playerAvatar);
static int PlayerAvatar_Cycling_HandleSpeedDecrease(PlayerAvatar *playerAvatar);
static void PlayerAvatar_Cycling_RouteNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static int PlayerAvatar_Cycling_GetNormalMovementType(PlayerAvatar *playerAvatar, int direction);
static int PlayerAvatar_Cycling_MapNormalTypeToState(int movementType);
static int PlayerAvatar_Cycling_DetermineNormalState(PlayerAvatar *playerAvatar, int direction);
static void PlayerAvatar_Cycling_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Cycling_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Cycling_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_Cycling_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress);
static void PlayerAvatar_CyclingHighGear_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress);
static int PlayerAvatar_CyclingHighGear_GetMovementType(PlayerAvatar *playerAvatar, int direction);
static int PlayerAvatar_CyclingHighGear_MapTypeToState(int movementType);
static int PlayerAvatar_CyclingHighGear_DetermineState(PlayerAvatar *playerAvatar, int direction);
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
static int PlayerAvatar_State_IsTurnAction(int animationCode);
static void PlayerAvatar_State_IncrementStepCounter(PlayerAvatar *playerAvatar);
static int PlayerAvatar_State_CheckBikeBridgeValidity(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
static int PlayerAvatar_Cycling_IsUnderCyclingRoad(PlayerAvatar *playerAvatar, u32 tileBehavior, int direction);
static void PlayerAvatar_Animation_SetMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, u32 animationCode, int duration);

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
static int (*const Unk_020EDAEC[6])(PlayerAvatar *, int);

void PlayerAvatar_MoveControl(PlayerAvatar *playerAvatar, const LandDataManager *landDataManager, int dir, u16 keyPad, u16 keyPress, BOOL allowSpecialMovement)
{
    if (dir == -1) {
        dir = PlayerAvatar_Input_DetermineMovementDirection(playerAvatar, keyPad, keyPress);
    }

    PlayerAvatar_TryCyclingGearChange(playerAvatar, keyPad);

    if (PlayerAvatar_Movement_CheckStartMoveInternal(playerAvatar, dir) == FALSE) {
        return;
    }

    PlayerAvatar_Movement_StartMoveInit(playerAvatar, dir, keyPad, keyPress);
    PlayerAvatar_RequestChangeState(playerAvatar);

    if (PlayerAvatar_Movement_ValidateSpecialMovement(playerAvatar, dir) == 1) {
        ov5_021E0EEC(playerAvatar);
        return;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_WALKING) {
        int movementType = PlayerAvatar_Walking_GetMovementType(playerAvatar, dir);

        if (movementType != 0) {
            ov5_021E0EEC(playerAvatar);
        } else if (allowSpecialMovement == 1) {
            ov5_021E0E94(playerAvatar);
        }
    }

    PlayerAvatar_Movement_HandleByState(playerAvatar, landDataManager, dir, keyPad, keyPress);

    PlayerAvatar_State_HandleDeepSwampMovement(playerAvatar);
    PlayerAvatar_Audio_PlayWalkSE(playerAvatar);
}

int PlayerAvatar_CheckStartMove(PlayerAvatar *playerAvatar, int dir)
{
    return PlayerAvatar_Movement_CheckStartMoveInternal(playerAvatar, dir);
}

static BOOL PlayerAvatar_Movement_CheckStartMoveInternal(PlayerAvatar *playerAvatar, int direction)
{
    int movementAction;
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == 1) {
        return TRUE;
    }

    if (direction == DIR_NONE) {
        return FALSE;
    }

    movementAction = MapObject_GetMovementAction(mapObj);

    if (PlayerAvatar_State_IsTurnAction(movementAction) == 1) {
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

                if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, xOut, yOut, zOut) == 0) {
                    if (ov9_02250FD8(fieldSystem, xOut, yOut, zOut) == 1) {
                        ov9_02251000(fieldSystem, xOut, yOut, zOut);
                        collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);
                        ov9_02251000(fieldSystem, x, y, z);
                    }
                }
            }
        } else {
            collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);
        }

        if (collisionResult == 0) {
            return TRUE;
        }

        if ((collisionResult == COLLISION_FLAG_WATER_TILES) && (PlayerAvatar_GetPlayerState(playerAvatar) == 2)) {
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
    if ((sub_0205F060(playerAvatar) == 1) && (PlayerAvatar_MoveState(playerAvatar) == 1)) {
        sub_0205EF6C(playerAvatar, 0);

        if (PlayerAvatar_IsNotInDeepSwamp(playerAvatar) == 1) {
            PlayerAvatar_SetInDeepSwamp(playerAvatar, 0);
            sub_02062EE0(Player_MapObject(playerAvatar), 0);
        }
    }
}

static void PlayerAvatar_Audio_PlayWalkSE(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_MoveState(playerAvatar) == 1) {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        u8 currentTileBehavior, directionTileBehavior = MapObject_GetCurrTileBehavior(mapObj);

        {
            int animationCode = MapObject_GetMovementAction(mapObj);
            int direction = MovementAction_GetDirFromAction(animationCode);

            if (direction == -1) {
                currentTileBehavior = directionTileBehavior;
            } else {
                currentTileBehavior = MapObject_GetTileBehaviorFromDir(mapObj, direction);
            }
        }

        if ((MapObject_IsOnSnow(mapObj, directionTileBehavior) == 1) || (TileBehavior_IsSnowWithShadows(directionTileBehavior) == 1)) {
            Sound_PlayEffect(SEQ_SE_PL_YUKI);
        }

        if (TileBehavior_IsPuddle(directionTileBehavior) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_FOOT3_0);
        }

        if (TileBehavior_IsShallowWater(directionTileBehavior) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_FOOT3_1);
        }

        if (TileBehavior_IsSand(directionTileBehavior) == 1) {
        }

        if ((TileBehavior_IsMud(directionTileBehavior) == 1) && (TileBehavior_IsDeepMud(directionTileBehavior) != 1)) {
            Sound_PlayEffect(SEQ_SE_DP_MARSH_WALK);
        }

        int code = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(code) == 0) {
            if ((TileBehavior_IsVeryTallGrass(directionTileBehavior) == 1) || (TileBehavior_IsVeryTallGrass(currentTileBehavior) == 1)) {
                Sound_PlayEffect(SEQ_SE_DP_KUSA);
            }
        }
    }
}

void PlayerAvatar_State_UpdateMovementState(PlayerAvatar *playerAvatar)
{
    int moveState, playerMoveState, animationCode;
    const MapObject *mapObj;

    moveState = PlayerAvatar_MoveState(playerAvatar);
    playerMoveState = Player_MoveState(playerAvatar);
    mapObj = Player_MapObject(playerAvatar);

    sub_0205EB10(playerAvatar, 0);

    u32 specialMovementType = PlayerAvatar_Movement_GetSpecialMovementType(playerAvatar, -1);

    if ((specialMovementType != 0) && (specialMovementType != 5)) {
        sub_0205EB10(playerAvatar, 2);
        return;
    }

    if (LocalMapObj_IsAnimationSet(mapObj) == 0) {
        switch (moveState) {
        case PLAYER_STATE_WALKING:
            break;
        case PLAYER_STATE_CYCLING:
            animationCode = MapObject_GetMovementAction(mapObj);

            if (PlayerAvatar_State_IsTurnAction(animationCode) == 1) {
                break;
            }

            if ((playerMoveState == 0) || (playerMoveState == 3)) {
                sub_0205EB10(playerAvatar, 1);
            } else {
                sub_0205EB10(playerAvatar, 2);
            }
            break;
        case PLAYER_STATE_SURFING:
            sub_0205EB10(playerAvatar, 2);
            break;
        }

        return;
    }

    if (LocalMapObj_CheckAnimationFinished(mapObj) == 1) {
        switch (moveState) {
        case 0:
            break;
        case 1:
            switch (playerMoveState) {
            case 0:
                break;
            case 3:
                sub_0205EB10(playerAvatar, 0);
                break;
            default:
                sub_0205EB10(playerAvatar, 3);
            }
            break;
        case 2:
            switch (playerMoveState) {
            case 0:
                break;
            case 3:
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
    int moveState, playerMoveState, animationCode;
    const MapObject *mapObj;

    moveState = PlayerAvatar_MoveState(playerAvatar);
    playerMoveState = Player_MoveState(playerAvatar);

    if (moveState == 0) {
        return TRUE;
    }

    if (moveState == 2) {
        return TRUE;
    }

    if (moveState == 1) {
        if ((playerMoveState == 0) || (playerMoveState == 3)) {
            return TRUE;
        }

        mapObj = Player_MapObject(playerAvatar);

        if (LocalMapObj_IsAnimationSet(mapObj) == 1) {
            return TRUE;
        }

        animationCode = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(animationCode) == 1) {
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
    u32 movementType = PlayerAvatar_Movement_GetSpecialMovementType(playerAvatar, direction);

    movementType = PlayerAvatar_Movement_ExecuteSpecialMovement(playerAvatar, movementType, direction);
    return movementType;
}

static u32 PlayerAvatar_Movement_GetSpecialMovementType(PlayerAvatar *playerAvatar, int direction)
{
    int i = 0;
    u32 tileBehavior = MapObject_GetCurrTileBehavior(Player_MapObject(playerAvatar));

    if (PlayerAvatar_Cycling_IsUnderCyclingRoad(playerAvatar, tileBehavior, direction) == 1) {
        return 5;
    }

    if (sub_0205EF84(playerAvatar) == 1) {
        return FALSE;
    }

    do {
        if (sTileBehaviorMappings[i].checkTileBehavior(tileBehavior) == 1) {
            return sTileBehaviorMappings[i].movementType;
        }

        i++;
    } while (sTileBehaviorMappings[i].checkTileBehavior != NULL);

    return FALSE;
}

static const TileBehaviorMapping sTileBehaviorMappings[] = {
    { .checkTileBehavior = TileBehavior_IsIce, .movementType = 1 },
    { .checkTileBehavior = TileBehavior_IsBikeSlope, .movementType = 2 },
    { .checkTileBehavior = TileBehavior_IsBikeRampEastward, .movementType = 3 },
    { .checkTileBehavior = TileBehavior_IsBikeRampWestward, .movementType = 4 },
    { .checkTileBehavior = NULL, .movementType = 6 }
};

static BOOL PlayerAvatar_Movement_ExecuteSpecialMovement(PlayerAvatar *playerAvatar, u32 movementType, int direction)
{
    if (Unk_020EDAEC[movementType](playerAvatar, direction) == 1) {
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
    int elevationChange = PlayerAvatar_State_CheckElevationChange(playerAvatar, movingDir);
    u32 collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, movingDir);

    sub_0205EF40(playerAvatar, 1);

    if (collisionResult != 0) {
        PlayerAvatar_SpecialMovement_ClearState(playerAvatar);

        if (elevationChange != 1) {
            sub_0205EF6C(playerAvatar, 1);
            sub_0205EB08(playerAvatar, 0);
            return FALSE;
        }

        movingDir = Direction_GetOpposite(movingDir);
        collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, movingDir);

        if (collisionResult != 0) {
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

    if (PlayerAvatar_State_AdjustCyclingSpeed(playerAvatar, elevationChange) == 0) {
        PlayerAvatar_SpecialMovement_ClearState(playerAvatar);

        movingDir = Direction_GetOpposite(movingDir);
        collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, movingDir);

        if (collisionResult != 0) {
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

    if (movingDir == 0) {
        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING && PlayerAvatar_Speed(playerAvatar) >= 3) {
            if (direction == 0) {
                PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(movingDir, MOVEMENT_ACTION_WALK_FASTER_SOUTH), 6);
                sub_0205EB08(playerAvatar, 1);
                return TRUE;
            }
        }

        movingDir = Direction_GetOpposite(movingDir);
        collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, movingDir);

        if (collisionResult != 0) {
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
    } else if (movingDir == 1) {
        if (sub_0205F034(playerAvatar) == 0) {
            PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(movingDir, MOVEMENT_ACTION_WALK_FASTER_SOUTH), 6);
            sub_0205EB08(playerAvatar, 1);

            if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
                PlayerAvatar_SetSpeed(playerAvatar, 3);
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

    if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, 95, 2);
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, 93, 3);
    }

    sub_0205EF40(playerAvatar, 1);
    sub_0205F074(playerAvatar, 1);

    return TRUE;
}

static BOOL PlayerAvatar_SpecialMovement_HandleBikeRampWestward(PlayerAvatar *playerAvatar, int direction)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int movingDir = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, 94, 2);
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, 92, 2);
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

    if (collisionResult == 0) {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(testDirection, MOVEMENT_ACTION_WALK_FASTER_NORTH), 6);
        sub_0205EB08(playerAvatar, 1);
        PlayerAvatar_SetSpeed(playerAvatar, 3);

        return TRUE;
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(testDirection, MOVEMENT_ACTION_FACE_SOUTH), 1);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EB08(playerAvatar, 0);
        sub_0205EF98(playerAvatar, 0);
    }

    return TRUE;
}

static int (*const Unk_020EDAEC[6])(PlayerAvatar *, int) = {
    PlayerAvatar_SpecialMovement_HandleNormal,
    PlayerAvatar_SpecialMovement_HandleIce,
    PlayerAvatar_SpecialMovement_HandleBikeSlope,
    PlayerAvatar_SpecialMovement_HandleBikeRampEastward,
    PlayerAvatar_SpecialMovement_HandleBikeRampWestward,
    PlayerAvatar_SpecialMovement_HandleBikeRamp
};

static void PlayerAvatar_SpecialMovement_ClearState(PlayerAvatar *playerAvatar)
{
    if (sub_0205EF58(playerAvatar) == 1) {
        MapObject *mapObj = Player_MapObject(playerAvatar);

        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);

        if (sub_0205F08C(playerAvatar) == 0) {
            PlayerAvatar_ClearSpeed(playerAvatar);
        }

        sub_0205EF40(playerAvatar, 0);
        sub_0205F074(playerAvatar, 0);
        sub_0205F01C(playerAvatar, 0);
    }
}

static int PlayerAvatar_State_CheckElevationChange(PlayerAvatar *playerAvatar, int direction)
{
    int elevationResult;
    VecFx32 currentPos, nextPos;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    MapObject_GetPosPtr(mapObj, &currentPos);
    nextPos = currentPos;

    VecFx32_StepDirection(direction, &nextPos, ((16 * FX32_ONE) >> 1) / 2);
    elevationResult = sub_020644A4(fieldSystem, &nextPos);

    if ((elevationResult == 0) || (currentPos.y == nextPos.y)) {
        return 0;
    }

    if (currentPos.y > nextPos.y) {
        return 2;
    }

    return 1;
}

static BOOL PlayerAvatar_State_AdjustCyclingSpeed(PlayerAvatar *playerAvatar, int elevationChange)
{
    int currentSpeed = PlayerAvatar_Speed(playerAvatar);

    if (elevationChange == 1) {
        currentSpeed--;

        if (currentSpeed < 0) {
            return FALSE;
        }
    } else if (elevationChange == 2) {
        currentSpeed++;

        if (currentSpeed > 3) {
            currentSpeed = 3;
        }
    }

    PlayerAvatar_SetSpeed(playerAvatar, currentSpeed);
    return TRUE;
}

static void PlayerAvatar_State_SetCyclingAnimation(PlayerAvatar *playerAvatar, int direction)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int animationCode = 16;
    int currentSpeed = PlayerAvatar_Speed(playerAvatar);
    int duration = 5;

    switch (currentSpeed) {
    case 1:
        animationCode = 80;
        duration = 5;
        break;
    case 2:
        animationCode = 20;
        duration = 6;
        break;
    case 3:
        animationCode = 20;
        duration = 6;
        break;
    }

    animationCode = MovementAction_TurnActionTowardsDir(direction, animationCode);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
}

static void PlayerAvatar_Movement_HandleByState(PlayerAvatar *playerAvatar, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    int playerState = PlayerAvatar_GetPlayerState(playerAvatar);
    MapObject *mapObj = Player_MapObject(playerAvatar);

    switch (playerState) {
    case PLAYER_STATE_WALKING:
    case PLAYER_STATE_SURFING:
        PlayerAvatar_Movement_HandleWalkingSurfing(playerAvatar, mapObj, landDataManager, direction, keyPad, keyPress);
        break;
    case PLAYER_STATE_CYCLING:
        PlayerAvatar_Cycling_RouteMovement(playerAvatar, mapObj, landDataManager, direction, keyPad, keyPress);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void PlayerAvatar_Movement_HandleWalkingSurfing(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    int movementType = PlayerAvatar_Walking_GetMovementType(playerAvatar, direction);

    switch (movementType) {
    case 0:
        PlayerAvatar_Walking_HandleTurnInPlace(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case 1:
        PlayerAvatar_Walking_HandleDistortedMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case 2:
        PlayerAvatar_Distortion_HandleTurn(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    }
}

static int PlayerAvatar_Walking_GetMovementType(PlayerAvatar *playerAvatar, int direction)
{
    int movementState = PlayerAvatar_Walking_DetermineMovementState(playerAvatar, direction);
    int stateValue = PlayerAvatar_Walking_MapTypeToState(movementState);

    sub_0205EB08(playerAvatar, stateValue);
    return movementState;
}

static int PlayerAvatar_Walking_MapTypeToState(int movementType)
{
    switch (movementType) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int PlayerAvatar_Walking_AdjustAnimationForSnow(MapObject *mapObj, u8 tileBehavior, int animationCode)
{
    if (TileBehavior_IsDeepestSnow(tileBehavior) == 1) {
        return 4;
    }

    if (TileBehavior_IsDeeperSnow(tileBehavior) == 1) {
        return 8;
    }

    if (TileBehavior_IsDeepSnow(tileBehavior) == 1) {
        return 12;
    }

    return animationCode;
}

static int PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(MapObject *mapObj, u8 tileBehavior, int animationCode)
{
    return animationCode;
}

static int PlayerAvatar_Walking_DetermineMovementState(PlayerAvatar *playerAvatar, int direction)
{
    int currentDir;

    if (direction == -1) {
        sub_0205EB08(playerAvatar, 0);
        return 0;
    }

    currentDir = PlayerAvatar_GetDir(playerAvatar);

    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    if (distortionState != AVATAR_DISTORTION_STATE_NONE
        && distortionState != AVATAR_DISTORTION_STATE_ACTIVE
        && distortionState != AVATAR_DISTORTION_STATE_FLOOR) {
        currentDir = PlayerAvatar_GetMoveDir(playerAvatar);
    }

    if ((currentDir != direction) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        sub_0205EB08(playerAvatar, 2);
        return 2;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void PlayerAvatar_Walking_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    int animationCode = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, 1);
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
    int animationCode;
    int duration;

    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
        if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
            animationCode = 56;
            duration = 3;
        } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
            animationCode = 117;
            duration = 2;
        } else if (collisionResult != 0) {
            animationCode = 28;
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
        } else {
            animationCode = 12;
            duration = 4;

            {
                PlayerData *playerData = PlayerAvatar_PlayerData(playerAvatar);

                if (PlayerData_HasRunningShoes(playerData) == 1) {
                    if (PlayerAvatar_Input_CheckRunningShoes(playerAvatar, keyPress) == 1) {
                        animationCode = 88;
                        duration = 5;
                    }
                }
            }

            animationCode = PlayerAvatar_Walking_AdjustAnimationForSnow(mapObj, MapObject_GetCurrTileBehavior(mapObj), animationCode);

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        }
    } else {
        if ((collisionResult == 0) || (collisionResult == COLLISION_FLAG_WATER_TILES)) {
            duration = 5;
            animationCode = 16;
            animationCode = PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(mapObj, MapObject_GetCurrTileBehavior(mapObj), animationCode);

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            animationCode = 28;
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
        }
    }

    animationCode = MovementAction_TurnActionTowardsDir(direction, animationCode);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
}

static void PlayerAvatar_Distortion_HandleFloorMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    int animationCode;
    int duration;

    collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);

    if (collisionResult & (~COLLISION_FLAG_DOUBLE_JUMP_TILES)) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj);
        int z = MapObject_GetZ(mapObj);

        y = ((y) / 2);
        PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &x, &y, &z);

        if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, x, y, z) == 0) {
            if (ov9_02250FD8(fieldSystem, x, y, z) == 1) {
                ov9_02251000(fieldSystem, x, y, z);
                collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);
            }
        }
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
        if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
            animationCode = 117;
            duration = 2;
            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else if (collisionResult != 0) {
            animationCode = 28;
            duration = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, direction);
        } else {
            PlayerData *player;

            animationCode = 12;
            duration = 4;
            player = PlayerAvatar_PlayerData(playerAvatar);

            if (PlayerData_HasRunningShoes(player) == TRUE && PlayerAvatar_Input_CheckRunningShoes(playerAvatar, keyPress) == 1) {
                animationCode = 88;
                duration = 5;
            }

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        }
    } else {
        if ((collisionResult == 0) || (collisionResult == COLLISION_FLAG_WATER_TILES)) {
            duration = 5;
            animationCode = 16;
            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            animationCode = 28;
            duration = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, direction);
        }
    }

    animationCode = MovementAction_TurnActionTowardsDir(direction, animationCode);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
}

static void PlayerAvatar_Distortion_HandleGenericMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress, const int *normalAnimations, const int *runningAnimations, const int *surfAnimations, const int *turnAnimations, const int *turnDirections)
{
    u32 collisionResult;
    int animationCode;
    int duration;

    collisionResult = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, direction);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
        if (collisionResult != 0) {
            animationCode = turnAnimations[direction];
            duration = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, turnDirections[direction]);
        } else {
            PlayerData *playerData;

            duration = 4;
            animationCode = normalAnimations[direction];
            playerData = PlayerAvatar_PlayerData(playerAvatar);

            if ((PlayerData_HasRunningShoes(playerData) == 1) && (PlayerAvatar_Input_CheckRunningShoes(playerAvatar, keyPress) == 1)) {
                duration = 5;
                animationCode = runningAnimations[direction];
            }

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        }
    } else {
        if ((collisionResult == 0) || (collisionResult == COLLISION_FLAG_WATER_TILES)) {
            duration = 4;
            animationCode = surfAnimations[direction];

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            animationCode = turnAnimations[direction];
            duration = 1;

            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, turnDirections[direction]);
        }
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
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
    int animationCode, turnDirection;
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

    animationCode = MovementAction_TurnActionTowardsDir(turnDirection, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, 1);
    MapObject_Turn(mapObj, direction);
}

static void PlayerAvatar_Cycling_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    int movementType;

    if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
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
            int gear = 1;

            if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
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

int PlayerAvatar_Animation_GetCyclingAnimationCode(PlayerAvatar *playerAvatar, int direction)
{
    int animationCode = 76;

    switch (PlayerAvatar_Speed(playerAvatar)) {
    case 1:
        animationCode = 16;
        break;
    case 2:
        animationCode = 80;
        break;
    case 3:
        animationCode = 20;
        break;
    }

    animationCode = MovementAction_TurnActionTowardsDir(direction, animationCode);
    return animationCode;
}

static BOOL PlayerAvatar_Cycling_HandleSpeedIncrease(PlayerAvatar *playerAvatar)
{
    int speedResult = PlayerAvatar_AddMoveSpeed(playerAvatar, 1, 3);

    if (sub_0205EFB0(playerAvatar) == 0) {
        if (speedResult >= 2) {
            sub_0205EF98(playerAvatar, 1);
        }
    }

    if (speedResult == 3) {
        return TRUE;
    }

    return FALSE;
}

static BOOL PlayerAvatar_Cycling_HandleSpeedDecrease(PlayerAvatar *playerAvatar)
{
    int speedResult = 1;
    int currentSpeed = PlayerAvatar_Speed(playerAvatar);

    currentSpeed--;

    if (currentSpeed < 0) {
        currentSpeed = 0;
        speedResult = 0;
    }

    PlayerAvatar_SetSpeed(playerAvatar, currentSpeed);

    if (sub_0205EFB0(playerAvatar) == 1) {
        if (currentSpeed == 0) {
            sub_0205EF98(playerAvatar, 0);
        }
    }

    return speedResult;
}

static void PlayerAvatar_Cycling_RouteNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    int movementType = PlayerAvatar_Cycling_GetNormalMovementType(playerAvatar, direction);

    switch (movementType) {
    case 0:
        PlayerAvatar_Cycling_HandleTurnInPlace(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case 1:
        PlayerAvatar_Cycling_HandleNormalMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case 2:
        PlayerAvatar_Cycling_HandleTurn(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case 3:
        PlayerAvatar_Cycling_HandleDeceleration(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    }
}

static int PlayerAvatar_Cycling_GetNormalMovementType(PlayerAvatar *playerAvatar, int direction)
{
    int movementState = PlayerAvatar_Cycling_DetermineNormalState(playerAvatar, direction);
    int stateValue = PlayerAvatar_Cycling_MapNormalTypeToState(movementState);

    sub_0205EB08(playerAvatar, stateValue);
    return movementState;
}

static int PlayerAvatar_Cycling_MapNormalTypeToState(int movementType)
{
    switch (movementType) {
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

static int PlayerAvatar_Cycling_DetermineNormalState(PlayerAvatar *playerAvatar, int direction)
{
    int currentDir;

    if (direction == -1) {
        if (sub_0205EFB0(playerAvatar) == 1) {
            sub_0205EB08(playerAvatar, 1);
            return 3;
        }

        sub_0205EB08(playerAvatar, 0);
        return 0;
    }

    currentDir = PlayerAvatar_GetDir(playerAvatar);
    sub_0205EF98(playerAvatar, 0);

    if ((currentDir != direction) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        sub_0205EB08(playerAvatar, 2);
        return 2;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void PlayerAvatar_Cycling_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    int animationCode = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void PlayerAvatar_Cycling_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    int animationCode;
    int duration;

    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        animationCode = 56;
        duration = 3;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        animationCode = 117;
        duration = 2;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (collisionResult & COLLISION_FLAG_BIKE_RAMPS) {
        animationCode = 80;
        duration = 5;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
        sub_0205EF40(playerAvatar, 1);
    } else if (collisionResult & COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS) {
        animationCode = 0;
        duration = 1;
        direction = MapObject_GetMovingDir(mapObj);
        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else if (collisionResult != 0) {
        if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, direction) == 0) {
            animationCode = 28;
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            animationCode = 0;
            duration = 1;
            direction = MapObject_GetMovingDir(mapObj);
            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
            sub_0205EBEC(playerAvatar, -1, -1);
        }
    } else {
        animationCode = 80;
        duration = 5;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
        PlayerAvatar_SetSpeed(playerAvatar, 2);
    }

    animationCode = MovementAction_TurnActionTowardsDir(direction, animationCode);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
}

static void PlayerAvatar_Cycling_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, direction) != 1) {
        int animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, 1);
        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void PlayerAvatar_Cycling_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    int duration;
    int animationCode, speedDecreaseResult = PlayerAvatar_Cycling_HandleSpeedDecrease(playerAvatar);

    direction = PlayerAvatar_GetMoveDir(playerAvatar);
    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        duration = 3;
    } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_117);
        duration = 2;
    } else if (collisionResult & COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS) {
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH);
        duration = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (collisionResult != 0) {
        speedDecreaseResult = 0;
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
        duration = 1;

        if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        animationCode = PlayerAvatar_Animation_GetCyclingAnimationCode(playerAvatar, direction);
        duration = 5;
    }

    if (speedDecreaseResult == 0) {
        sub_0205EF98(playerAvatar, 0);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
}

static void PlayerAvatar_CyclingHighGear_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *landDataManager, int direction, u16 keyPad, u16 keyPress)
{
    int movementType = PlayerAvatar_CyclingHighGear_GetMovementType(playerAvatar, direction);

    switch (movementType) {
    case 0:
        PlayerAvatar_CyclingHighGear_HandleTurnInPlace(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case 1:
        PlayerAvatar_CyclingHighGear_HandleMovement(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case 2:
        PlayerAvatar_CyclingHighGear_HandleTurn(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    case 3:
        PlayerAvatar_CyclingHighGear_HandleDeceleration(playerAvatar, mapObj, direction, keyPad, keyPress);
        break;
    }
}

static int PlayerAvatar_CyclingHighGear_GetMovementType(PlayerAvatar *playerAvatar, int direction)
{
    int movementState = PlayerAvatar_CyclingHighGear_DetermineState(playerAvatar, direction);
    int stateValue = PlayerAvatar_CyclingHighGear_MapTypeToState(movementState);

    sub_0205EB08(playerAvatar, stateValue);
    return movementState;
}

static int PlayerAvatar_CyclingHighGear_MapTypeToState(int movementType)
{
    switch (movementType) {
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

static int PlayerAvatar_CyclingHighGear_DetermineState(PlayerAvatar *playerAvatar, int direction)
{
    int currentDir, currentSpeed;

    currentSpeed = PlayerAvatar_Speed(playerAvatar);

    if (direction == -1) {
        if (currentSpeed < 2) {
            sub_0205EB08(playerAvatar, 0);
            return 0;
        }

        sub_0205EB08(playerAvatar, 1);
        return 3;
    }

    currentDir = PlayerAvatar_GetDir(playerAvatar);

    if ((currentDir != direction) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        if (currentSpeed < 2) {
            sub_0205EB08(playerAvatar, 2);
            return 2;
        }

        sub_0205EB08(playerAvatar, 1);
        return 3;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void PlayerAvatar_CyclingHighGear_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    int animationCode = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void PlayerAvatar_CyclingHighGear_HandleMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    int duration;
    int animationCode;

    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        duration = 3;
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_117);
        duration = 2;
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (collisionResult & COLLISION_FLAG_BIKE_RAMPS) {
        if (PlayerAvatar_Speed(playerAvatar) >= 3) {
            animationCode = PlayerAvatar_Animation_GetCyclingAnimationCode(playerAvatar, direction);
            duration = 5;
            sub_0205F048(playerAvatar);
            sub_0205EF40(playerAvatar, 1);
        } else {
            animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
        }
    } else if (collisionResult & COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS) {
        direction = MapObject_GetMovingDir(mapObj);
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH);
        duration = 1;
        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else if (collisionResult != 0) {
        if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, direction) == 0) {
            animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            duration = 1;

            if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            duration = 1;
            direction = MapObject_GetMovingDir(mapObj);
            animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH);
            MapObject_Turn(mapObj, direction);
            PlayerAvatar_ClearSpeed(playerAvatar);
            sub_0205EBEC(playerAvatar, -1, -1);
        }
    } else {
        duration = 5;
        animationCode = PlayerAvatar_Animation_GetCyclingAnimationCode(playerAvatar, direction);
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
}

static void PlayerAvatar_CyclingHighGear_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, direction) == 1) {
        (void)0;
    } else {
        int animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, 1);
        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void PlayerAvatar_CyclingHighGear_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction, u16 keyPad, u16 keyPress)
{
    u32 collisionResult;
    int duration;
    int animationCode, speedDecreaseResult = PlayerAvatar_Cycling_HandleSpeedDecrease(playerAvatar);

    direction = PlayerAvatar_GetMoveDir(playerAvatar);
    collisionResult = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, direction);

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        duration = 3;
    } else if (collisionResult & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_117);
        duration = 2;
    } else if (collisionResult & COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS) {
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_FACE_NORTH);
        duration = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (collisionResult != 0) {
        speedDecreaseResult = 0;
        duration = 1;
        animationCode = MovementAction_TurnActionTowardsDir(direction, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);

        if ((collisionResult & COLLISION_FLAG_WARP_ENTRANCES) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, direction);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        animationCode = PlayerAvatar_Animation_GetCyclingAnimationCode(playerAvatar, direction);
        duration = 5;
    }

    if (speedDecreaseResult == 0) {
        sub_0205EF98(playerAvatar, 0);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
}

static void PlayerAvatar_Animation_SetMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, u32 animationCode, int duration)
{
    sub_0205EC20(playerAvatar, animationCode, duration);
    LocalMapObj_SetAnimationCode(mapObj, animationCode);
}

u32 PlayerAvatar_Collision_CheckBasic(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    u32 collisionResult = 0, internalResult;
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

    if (PlayerAvatar_Collision_CheckBikeRamps(playerAvatar, mapObj, direction) == 1) {
        collisionResult |= COLLISION_FLAG_BIKE_RAMPS;
    }

    if (PlayerAvatar_Collision_CheckWaterTiles(playerAvatar, mapObj, direction) == 1) {
        collisionResult |= COLLISION_FLAG_WATER_TILES;
    }

    if (PlayerAvatar_Collision_CheckBikeBridgeRestrictions(playerAvatar, mapObj, direction) == 1) {
        collisionResult |= COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS | COLLISION_FLAG_BLOCKED;
    }

    if (PlayerAvatar_Collision_CheckCyclingTerrainRestrictions(playerAvatar, mapObj, direction) == 1) {
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

    collisionFlags = 0;

    if (MapObject_IsOutOfRange(mapObj, x, y, z) == 1) {
        collisionFlags |= COLLISION_FLAG_BLOCKED;
    }

    {
        s8 collisionType;
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (TerrainCollisionManager_WillPlayerCollide(fieldSystem, &nextPos, x, z, &collisionType) == 1) {
            collisionFlags |= COLLISION_FLAG_TERRAIN;

            if (collisionType != 0) {
                collisionFlags |= COLLISION_FLAG_WARP_ENTRANCES;
            }
        }
    }

    if (sub_02064004(mapObj, x, z, direction) == 1) {
        collisionFlags |= COLLISION_FLAG_TERRAIN;
    }

    if (sub_02063F00(mapObj, x, y, z) == 1) {
        collisionFlags |= COLLISION_FLAG_JUMP_TILES;
    }

    return collisionFlags;
}

static BOOL PlayerAvatar_Collision_CheckJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);

        if (DynamicMapFeatures_WillPlayerJumpEternaGymClock(fieldSystem, x, z, 0, direction) == 1) {
            return TRUE;
        }

        {
            u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

            switch (direction) {
            case 0:
                if (TileBehavior_IsJumpNorth(tileBehavior) == 1) {
                    return TRUE;
                }
                break;
            case 1:
                if (TileBehavior_IsJumpSouth(tileBehavior) == 1) {
                    return TRUE;
                }
                break;
            case 2:
                if (TileBehavior_IsJumpWest(tileBehavior) == 1) {
                    return TRUE;
                }
                break;
            case 3:
                if (TileBehavior_IsJumpEast(tileBehavior) == 1) {
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

    if (direction != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        switch (direction) {
        case 0:
            hasDoubleJump = TileBehavior_IsJumpNorthTwice(tileBehavior);
            break;
        case 1:
            hasDoubleJump = TileBehavior_IsJumpSouthTwice(tileBehavior);
            break;
        case 2:
            hasDoubleJump = TileBehavior_IsJumpWestTwice(tileBehavior);
            break;
        case 3:
            hasDoubleJump = TileBehavior_IsJumpEastTwice(tileBehavior);
            break;
        }

        if (hasDoubleJump == 1) {
            if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
                if (ov9_022511A0(fieldSystem, x, z, direction) == 1) {
                    hasDoubleJump = FALSE;
                }
            }
        }
    }

    return hasDoubleJump;
}

static BOOL PlayerAvatar_Collision_CheckWarpEntrances(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj);
        int z = MapObject_GetZ(mapObj);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        switch (direction) {
        case 0:
            if (TileBehavior_IsWarpEntranceNorth(tileBehavior) == 1) {
                return TRUE;
            }
            break;
        case 1:
            if (TileBehavior_IsWarpEntranceSouth(tileBehavior) == 1) {
                return TRUE;
            }
            break;
        case 2:
            if (TileBehavior_IsWarpEntranceWest(tileBehavior) == 1) {
                return TRUE;
            }
            break;
        case 3:
            if (TileBehavior_IsWarpEntranceEast(tileBehavior) == 1) {
                return TRUE;
            }
            break;
        }

        x += MapObject_GetDxFromDir(direction);
        z += MapObject_GetDzFromDir(direction);
        tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (TileBehavior_IsDoor(tileBehavior) == 1) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Collision_CheckBikeRamps(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if ((direction == 3) && TileBehavior_IsBikeRampEastward(tileBehavior)) {
            return TRUE;
        }

        if ((direction == 2) && TileBehavior_IsBikeRampWestward(tileBehavior)) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Collision_CheckWaterTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != -1) {
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
    if (direction != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(direction);
        int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(direction);
        u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);

        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING) {
            if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == 1) {
                if ((direction == 0) || (direction == 1)) {
                    return FALSE;
                }

                return TRUE;
            }

            if (MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == 1) {
                if ((direction == 2) || (direction == 3)) {
                    return FALSE;
                }

                return TRUE;
            }
        } else {
            if ((MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == 1) || (MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == 1)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Collision_CheckCyclingTerrainRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if ((direction != -1) && PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING) {
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
    u32 collisionFlags = 0;
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj) / 2;
        int z = MapObject_GetZ(mapObj);

        PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &x, &y, &z);

        if (DistWorld_CheckCollisionOnCurrentFloatingPlatform(fieldSystem, x, y, z) == 1) {
            collisionFlags |= COLLISION_FLAG_TERRAIN;
        }

        y = y * 2;

        if (sub_02063F00(mapObj, x, y, z) == 1) {
            collisionFlags |= COLLISION_FLAG_JUMP_TILES;
        }
    }

    return collisionFlags;
}

static BOOL PlayerAvatar_Distortion_CheckSurfableTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    if (direction != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
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
    u32 collisionResult, distortionFlags = 0;

    collisionResult = PlayerAvatar_Distortion_CheckCollision(playerAvatar, mapObj, direction);

    if (collisionResult & (COLLISION_FLAG_TERRAIN | COLLISION_FLAG_WARP_ENTRANCES)) {
        distortionFlags |= COLLISION_FLAG_BLOCKED;
    }

    if (collisionResult & COLLISION_FLAG_JUMP_TILES) {
        distortionFlags |= COLLISION_FLAG_TERRAIN;
    }

    if (PlayerAvatar_Distortion_CheckSurfableTiles(playerAvatar, mapObj, direction) == 1) {
        distortionFlags |= COLLISION_FLAG_WATER_TILES;
    }

    if (PlayerAvatar_Distortion_CheckDoubleJump(playerAvatar, mapObj, direction) == 1) {
        distortionFlags |= COLLISION_FLAG_DOUBLE_JUMP_TILES;
    }

    return distortionFlags;
}

static BOOL PlayerAvatar_Distortion_CheckDoubleJump(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction)
{
    BOOL hasDoubleJump = FALSE;
    if ((direction != -1) && PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_FLOOR) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
            u32 tileBehavior;
            int x = MapObject_GetX(mapObj);
            int y = MapObject_GetY(mapObj) / 2;
            int z = MapObject_GetZ(mapObj);

            PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, direction, &x, &y, &z);

            hasDoubleJump = DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &tileBehavior);

            switch (direction) {
            case 0:
                hasDoubleJump = TileBehavior_IsJumpNorthTwice(tileBehavior);
                break;
            case 1:
                hasDoubleJump = TileBehavior_IsJumpSouthTwice(tileBehavior);
                break;
            case 2:
                hasDoubleJump = TileBehavior_IsJumpWestTwice(tileBehavior);
                break;
            case 3:
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
        return 2;
    }

    if (keyPad & PAD_KEY_RIGHT) {
        return 3;
    }

    return -1;
}

static int PlayerAvatar_Input_GetVerticalDirection(u16 keyPad)
{
    if (keyPad & PAD_KEY_UP) {
        return 0;
    }

    if (keyPad & PAD_KEY_DOWN) {
        return 1;
    }

    return -1;
}

static int PlayerAvatar_Input_DetermineMovementDirection(PlayerAvatar *playerAvatar, u16 keyPad, u16 keyPress)
{
    int horizontalDir = PlayerAvatar_Input_GetHorizontalDirection(keyPress);
    int verticalDir = PlayerAvatar_Input_GetVerticalDirection(keyPress);

    if (horizontalDir == -1) {
        return verticalDir;
    }

    if (verticalDir == -1) {
        return horizontalDir;
    }

    {
        int dir = PlayerAvatar_GetMoveDir(playerAvatar);
        int lastHorizontalDir = sub_0205EBE0(playerAvatar);
        int lastVerticalDir = sub_0205EBE8(playerAvatar);

        if (dir != -1) {
            if ((horizontalDir == lastHorizontalDir) && (verticalDir == lastVerticalDir)) {
                return dir;
            }

            if (verticalDir != lastVerticalDir) {
                return verticalDir;
            }

            return horizontalDir;
        }

        return verticalDir;
    }

    return -1;
}

BOOL PlayerAvatar_State_IsAnimationActive(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == 1) {
        return TRUE;
    }

    {
        int animationCode = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(animationCode) == 1) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_State_IsTurnAction(int animationCode)
{
    switch (animationCode) {
    case 28:
    case 29:
    case 30:
    case 31:
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
    u32 animationCode = sub_0205EC14(playerAvatar);

    switch (animationCode) {
    case 88:
    case 89:
    case 90:
    case 91:
        return TRUE;
    }

    return FALSE;
}

int PlayerAvatar_State_GetMovementState(PlayerAvatar *playerAvatar, int direction)
{
    int movementType, stateValue, state = PlayerAvatar_GetPlayerState(playerAvatar);

    switch (state) {
    case PLAYER_STATE_WALKING:
    case PLAYER_STATE_SURFING:
        movementType = PlayerAvatar_Walking_DetermineMovementState(playerAvatar, direction);
        stateValue = PlayerAvatar_Walking_MapTypeToState(movementType);
        break;
    case PLAYER_STATE_CYCLING:
        if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
            movementType = PlayerAvatar_CyclingHighGear_DetermineState(playerAvatar, direction);
            stateValue = PlayerAvatar_CyclingHighGear_MapTypeToState(movementType);
        } else {
            movementType = PlayerAvatar_CyclingHighGear_DetermineState(playerAvatar, direction);
            stateValue = PlayerAvatar_CyclingHighGear_MapTypeToState(movementType);
        }

        break;
    default:
        stateValue = 0;
        GF_ASSERT(FALSE);
    }

    return stateValue;
}

u32 PlayerAvatar_State_GetAnimationCode(PlayerAvatar *playerAvatar, u16 keyPad, u16 keyPress, int direction, int movementType, int stateValue)
{
    u32 animationCode;
    int movementDirection = PlayerAvatar_Input_DetermineMovementDirection(playerAvatar, keyPad, keyPress);
    int movementState = PlayerAvatar_State_GetMovementState(playerAvatar, movementDirection);

    sub_0205EB08(playerAvatar, movementState);

    if (movementState == 0) {
        movementDirection = PlayerAvatar_GetDir(playerAvatar);
        animationCode = MovementAction_TurnActionTowardsDir(movementDirection, MOVEMENT_ACTION_FACE_NORTH);
        return animationCode;
    }

    if (movementState == 2) {
        animationCode = MovementAction_TurnActionTowardsDir(movementDirection, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);
        return animationCode;
    }

    {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        u32 stateFlags = stateValue;

        if (stateFlags & COLLISION_FLAG_JUMP_TILES) {
            animationCode = 56;
        } else if (stateFlags & COLLISION_FLAG_DOUBLE_JUMP_TILES) {
            animationCode = 117;
        } else if (stateFlags != 0) {
            animationCode = 28;

            if ((stateFlags & COLLISION_FLAG_WARP_ENTRANCES) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }
        } else {
            switch (direction) {
            case 0:
                animationCode = 4;
                break;
            case 1:
                animationCode = 8;
                break;
            case 2:
                animationCode = 12;
                break;
            case 3:
                animationCode = 76;
                break;
            case 4:
                animationCode = 16;
                break;
            case 5:
                animationCode = 20;
                break;
            default:
                animationCode = 4;
            }

            if ((movementType == 1) && (PlayerAvatar_Input_CheckRunningShoes(playerAvatar, keyPress) == 1)) {
                animationCode = 88;
            }
        }

        animationCode = MovementAction_TurnActionTowardsDir(movementDirection, animationCode);
        return animationCode;
    }

    return 0xff;
}

BOOL PlayerAvatar_Animation_IsSet(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    return LocalMapObj_IsAnimationSet(mapObj);
}

void PlayerAvatar_SetAnimationCode(PlayerAvatar *playerAvatar, u32 animationCode, int duration)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, animationCode, duration);
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
    if (direction != -1) {
        u8 tileBehavior = MapObject_GetCurrTileBehavior(mapObj);

        if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, tileBehavior) == 1) {
            if ((direction == 0) || (direction == 1)) {
                return FALSE;
            }

            return TRUE;
        }

        if (MapObject_IsOnBikeBridgeEastWest(mapObj, tileBehavior) == 1) {
            if ((direction == 2) || (direction == 3)) {
                return FALSE;
            }

            return TRUE;
        }
    }

    return FALSE;
}

static BOOL PlayerAvatar_Cycling_IsUnderCyclingRoad(PlayerAvatar *playerAvatar, u32 tileBehavior, int direction)
{
    if (direction != -1) {
        return FALSE;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_CYCLING) {
        return FALSE;
    }

    if (sub_0205EFDC(playerAvatar) == 0) {
        return FALSE;
    }

    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (MapObject_IsOnBridge(mapObj, tileBehavior) == 1) {
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
