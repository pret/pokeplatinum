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
    UnkFuncPtr_020EDB84 unk_00;
    u32 unk_04;
} UnkStruct_020EDB84;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_020EDB04;

static int PlayerAvatar_CheckStartMoveInternal(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_StartMoveInit(PlayerAvatar *playerAvatar, int param1, u16 param2, u16 param3);
static void PlayerAvatar_State_HandleDeepSwampMovement(PlayerAvatar *playerAvatar);
static void PlayerAvatar_PlayWalkSE(PlayerAvatar *playerAvatar);
static int PlayerAvatar_Movement_ValidateSpecialMovement(PlayerAvatar *playerAvatar, int param1);
static u32 PlayerAvatar_Movement_GetSpecialMovementType(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_Movement_ExecuteSpecialMovement(PlayerAvatar *playerAvatar, u32 param1, int param2);
static void PlayerAvatar_SpecialMovement_ClearState(PlayerAvatar *playerAvatar);
static int PlayerAvatar_State_CheckElevationChange(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_State_AdjustCyclingSpeed(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_State_SetCyclingAnimation(PlayerAvatar *playerAvatar, int param1);
static void inline_0205F180(PlayerAvatar *playerAvatar, const LandDataManager *param1, int param2, u16 param3, u16 param4);
static void inline_0205F180_sub(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int PlayerAvatar_Walking_GetMovementType(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_Walking_MapTypeToState(int param0);
static int PlayerAvatar_Walking_AdjustAnimationForSnow(MapObject *mapObj, u8 param1, int param2);
static int PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(MapObject *mapObj, u8 param1, int param2);
static int PlayerAvatar_Walking_DetermineMovementState(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_Walking_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Walking_HandleDistortedMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Walking_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Distortion_HandleFloorMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Distortion_HandleWestWallMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Distortion_HandleEastWallMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Distortion_HandleCeilingMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Distortion_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Cycling_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static void PlayerAvatar_TryCyclingGearChange(PlayerAvatar *playerAvatar, u16 param1);
int PlayerAvatar_Animation_GetCyclingAnimationCode(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_Cycling_HandleSpeedIncrease(PlayerAvatar *playerAvatar);
static int PlayerAvatar_Cycling_HandleSpeedDecrease(PlayerAvatar *playerAvatar);
static void PlayerAvatar_Cycling_RouteNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int PlayerAvatar_Cycling_GetNormalMovementType(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_Cycling_MapNormalTypeToState(int param0);
static int PlayerAvatar_Cycling_DetermineNormalState(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_Cycling_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Cycling_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Cycling_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_Cycling_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_CyclingHighGear_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5);
static int PlayerAvatar_CyclingHighGear_GetMovementType(PlayerAvatar *playerAvatar, int param1);
static int PlayerAvatar_CyclingHighGear_MapTypeToState(int param0);
static int PlayerAvatar_CyclingHighGear_DetermineState(PlayerAvatar *playerAvatar, int param1);
static void PlayerAvatar_CyclingHighGear_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_CyclingHighGear_HandleMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_CyclingHighGear_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static void PlayerAvatar_CyclingHighGear_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4);
static u32 PlayerAvatar_Collision_CheckBasicInternal(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Collision_CheckJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Collision_CheckDoubleJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Collision_CheckWarpEntrances(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Collision_CheckBikeRamps(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Collision_CheckWaterTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Collision_CheckBikeBridgeRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Collision_CheckCyclingTerrainRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Distortion_CheckSurfableTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Distortion_CheckCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Distortion_CheckDoubleJump(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_Input_GetHorizontalDirection(u16 param0);
static int PlayerAvatar_Input_GetVerticalDirection(u16 param0);
static int PlayerAvatar_Input_DetermineMovementDirection(PlayerAvatar *playerAvatar, u16 param1, u16 param2);
static int PlayerAvatar_State_IsTurnAction(int param0);
static void PlayerAvatar_State_IncrementStepCounter(PlayerAvatar *playerAvatar);
static int PlayerAvatar_State_CheckBikeBridgeValidity(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2);
static int PlayerAvatar_IsUnderCyclingRoad(PlayerAvatar *playerAvatar, u32 param1, int param2);
static void PlayerAvatar_Animation_SetMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, u32 param2, int param3);

static const UnkStruct_020EDB04 Unk_020EDB04[4] = {
    { 0x0, 0x0, -1 },
    { 0x0, 0x0, 0x1 },
    { -1, 0x0, 0x0 },
    { 0x1, 0x0, 0x0 }
};

static const UnkStruct_020EDB04 Unk_020EDB24[4] = {
    { 0x0, 0x1, 0x0 },
    { 0x0, -1, 0x0 },
    { 0x0, 0x0, 0x1 },
    { 0x0, 0x0, -1 }
};

static const UnkStruct_020EDB04 Unk_020EDB44[4] = {
    { 0x0, 0x1, 0x0 },
    { 0x0, -1, 0x0 },
    { 0x0, 0x0, -1 },
    { 0x0, 0x0, 0x1 }
};

static const UnkStruct_020EDB04 Unk_020EDB64[4] = {
    { 0x0, 0x0, 0x1 },
    { 0x0, 0x0, -1 },
    { -1, 0x0, 0x0 },
    { 0x1, 0x0, 0x0 }
};

const UnkStruct_020EDB84 Unk_020EDB84[];
static int (*const Unk_020EDAEC[6])(PlayerAvatar *, int);

void PlayerAvatar_MoveControl(PlayerAvatar *playerAvatar, const LandDataManager *param1, int dir, u16 keyPad, u16 keyPress, BOOL param5)
{
    if (dir == -1) {
        dir = PlayerAvatar_Input_DetermineMovementDirection(playerAvatar, keyPad, keyPress);
    }

    PlayerAvatar_TryCyclingGearChange(playerAvatar, keyPad);

    if (PlayerAvatar_CheckStartMoveInternal(playerAvatar, dir) == FALSE) {
        return;
    }

    PlayerAvatar_StartMoveInit(playerAvatar, dir, keyPad, keyPress);
    PlayerAvatar_RequestChangeState(playerAvatar);

    if (PlayerAvatar_Movement_ValidateSpecialMovement(playerAvatar, dir) == 1) {
        ov5_021E0EEC(playerAvatar);
        return;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_WALKING) {
        int v0 = PlayerAvatar_Walking_GetMovementType(playerAvatar, dir);

        if (v0 != 0) {
            ov5_021E0EEC(playerAvatar);
        } else if (param5 == 1) {
            ov5_021E0E94(playerAvatar);
        }
    }

    inline_0205F180(playerAvatar, param1, dir, keyPad, keyPress);

    PlayerAvatar_State_HandleDeepSwampMovement(playerAvatar);
    PlayerAvatar_PlayWalkSE(playerAvatar);
}

int PlayerAvatar_CheckStartMove(PlayerAvatar *playerAvatar, int dir)
{
    return PlayerAvatar_CheckStartMoveInternal(playerAvatar, dir);
}

static int PlayerAvatar_CheckStartMoveInternal(PlayerAvatar *playerAvatar, int dir)
{
    int v0;
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == 1) {
        return 1;
    }

    if (dir == DIR_NONE) {
        return 0;
    }

    v0 = MapObject_GetMovementAction(mapObj);

    if (PlayerAvatar_State_IsTurnAction(v0) == 1) {
        u32 v2;

        if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == TRUE) {
            v2 = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, dir);

            if ((v2 & (~(1 << 7))) && PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_FLOOR) {
                FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
                int xOut, x = MapObject_GetX(mapObj);
                int yOut, y = MapObject_GetY(mapObj);
                int zOut, z = MapObject_GetZ(mapObj);

                y = y / 2;
                xOut = x;
                yOut = y;
                zOut = z;

                PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, dir, &xOut, &yOut, &zOut);

                if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, xOut, yOut, zOut) == 0) {
                    if (ov9_02250FD8(fieldSystem, xOut, yOut, zOut) == 1) {
                        ov9_02251000(fieldSystem, xOut, yOut, zOut);
                        v2 = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, dir);
                        ov9_02251000(fieldSystem, x, y, z);
                    }
                }
            }
        } else {
            v2 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, dir);
        }

        if (v2 == 0) {
            return 1;
        }

        if ((v2 == (1 << 5)) && (PlayerAvatar_GetPlayerState(playerAvatar) == 0x2)) {
            return 1;
        }

        return 0;
    }

    return 0;
}

static void PlayerAvatar_StartMoveInit(PlayerAvatar *playerAvatar, int param1, u16 param2, u16 param3)
{
    sub_0205EBEC(playerAvatar, PlayerAvatar_Input_GetHorizontalDirection(param3), PlayerAvatar_Input_GetVerticalDirection(param3));
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

static void PlayerAvatar_PlayWalkSE(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_MoveState(playerAvatar) == 1) {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        u8 v1, v2 = MapObject_GetCurrTileBehavior(mapObj);

        {
            int animationCode = MapObject_GetMovementAction(mapObj);
            int v4 = MovementAction_GetDirFromAction(animationCode);

            if (v4 == -1) {
                v1 = v2;
            } else {
                v1 = MapObject_GetTileBehaviorFromDir(mapObj, v4);
            }
        }

        if ((MapObject_IsOnSnow(mapObj, v2) == 1) || (TileBehavior_IsSnowWithShadows(v2) == 1)) {
            Sound_PlayEffect(SEQ_SE_PL_YUKI);
        }

        if (TileBehavior_IsPuddle(v2) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_FOOT3_0);
        }

        if (TileBehavior_IsShallowWater(v2) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_FOOT3_1);
        }

        if (TileBehavior_IsSand(v2) == 1) {
        }

        if ((TileBehavior_IsMud(v2) == 1) && (TileBehavior_IsDeepMud(v2) != 1)) {
            Sound_PlayEffect(SEQ_SE_DP_MARSH_WALK);
        }

        int code = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(code) == 0) {
            if ((TileBehavior_IsVeryTallGrass(v2) == 1) || (TileBehavior_IsVeryTallGrass(v1) == 1)) {
                Sound_PlayEffect(SEQ_SE_DP_KUSA);
            }
        }
    }
}

void PlayerAvatar_State_UpdateMovementState(PlayerAvatar *playerAvatar)
{
    int v0, v1, v2;
    const MapObject *mapObj;

    v0 = PlayerAvatar_MoveState(playerAvatar);
    v1 = Player_MoveState(playerAvatar);
    mapObj = Player_MapObject(playerAvatar);

    sub_0205EB10(playerAvatar, 0);

    u32 v4 = PlayerAvatar_Movement_GetSpecialMovementType(playerAvatar, -1);

    if ((v4 != 0) && (v4 != 5)) {
        sub_0205EB10(playerAvatar, 2);
        return;
    }

    if (LocalMapObj_IsAnimationSet(mapObj) == 0) {
        switch (v0) {
        case PLAYER_STATE_WALKING:
            break;
        case PLAYER_STATE_CYCLING:
            v2 = MapObject_GetMovementAction(mapObj);

            if (PlayerAvatar_State_IsTurnAction(v2) == 1) {
                break;
            }

            if ((v1 == 0) || (v1 == 3)) {
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
        switch (v0) {
        case 0:
            break;
        case 1:
            switch (v1) {
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
            switch (v1) {
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

int PlayerAvatar_State_IsMovementBlocked(PlayerAvatar *playerAvatar)
{
    int v0, v1, v2;
    const MapObject *mapObj;

    v0 = PlayerAvatar_MoveState(playerAvatar);
    v1 = Player_MoveState(playerAvatar);

    if (v0 == 0) {
        return 1;
    }

    if (v0 == 2) {
        return 1;
    }

    if (v0 == 1) {
        if ((v1 == 0) || (v1 == 3)) {
            return 1;
        }

        mapObj = Player_MapObject(playerAvatar);

        if (LocalMapObj_IsAnimationSet(mapObj) == 1) {
            return 1;
        }

        v2 = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(v2) == 1) {
            return 1;
        }
    }

    return 0;
}

void PlayerAvatar_State_ForceTurn(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj;

    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);

    mapObj = Player_MapObject(playerAvatar);

    MapObject_TryFace(mapObj, param1);
    sub_02062A0C(mapObj, 0x0);
    MapObject_UpdateCoords(mapObj);
    sub_020656DC(mapObj);
    LocalMapObj_SetAnimationCode(mapObj, MovementAction_TurnActionTowardsDir(param1, MOVEMENT_ACTION_FACE_NORTH));
}

static int PlayerAvatar_Movement_ValidateSpecialMovement(PlayerAvatar *playerAvatar, int param1)
{
    u32 v0 = PlayerAvatar_Movement_GetSpecialMovementType(playerAvatar, param1);

    v0 = PlayerAvatar_Movement_ExecuteSpecialMovement(playerAvatar, v0, param1);
    return v0;
}

static u32 PlayerAvatar_Movement_GetSpecialMovementType(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = 0;
    u32 v1 = MapObject_GetCurrTileBehavior(Player_MapObject(playerAvatar));

    if (PlayerAvatar_IsUnderCyclingRoad(playerAvatar, v1, param1) == 1) {
        return 5;
    }

    if (sub_0205EF84(playerAvatar) == 1) {
        return 0;
    }

    do {
        if (Unk_020EDB84[v0].unk_00(v1) == 1) {
            return Unk_020EDB84[v0].unk_04;
        }

        v0++;
    } while (Unk_020EDB84[v0].unk_00 != NULL);

    return 0;
}

static const UnkStruct_020EDB84 Unk_020EDB84[] = {
    { TileBehavior_IsIce, 0x1 },
    { TileBehavior_IsBikeSlope, 0x2 },
    { TileBehavior_IsBikeRampEastward, 0x3 },
    { TileBehavior_IsBikeRampWestward, 0x4 },
    { NULL, 0x6 }
};

static int PlayerAvatar_Movement_ExecuteSpecialMovement(PlayerAvatar *playerAvatar, u32 param1, int param2)
{
    if (Unk_020EDAEC[param1](playerAvatar, param2) == 1) {
        return 1;
    }

    return 0;
}

static int PlayerAvatar_SpecialMovement_HandleNormal(PlayerAvatar *playerAvatar, int param1)
{
    PlayerAvatar_SpecialMovement_ClearState(playerAvatar);
    return 0;
}

static int PlayerAvatar_SpecialMovement_HandleIce(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int v1 = MapObject_GetMovingDir(mapObj);
    int v2 = PlayerAvatar_State_CheckElevationChange(playerAvatar, v1);
    u32 v3 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, v1);

    sub_0205EF40(playerAvatar, 1);

    if (v3 != 0) {
        PlayerAvatar_SpecialMovement_ClearState(playerAvatar);

        if (v2 != 1) {
            sub_0205EF6C(playerAvatar, 1);
            sub_0205EB08(playerAvatar, 0);
            return 0;
        }

        v1 = Direction_GetOpposite(v1);
        v3 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, v1);

        if (v3 != 0) {
            return 0;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(v1, MOVEMENT_ACTION_WALK_SLOW_NORTH), 3);
        sub_0205EF6C(playerAvatar, 1);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
        sub_0205EB08(playerAvatar, 1);

        return 1;
    }

    if (PlayerAvatar_State_AdjustCyclingSpeed(playerAvatar, v2) == 0) {
        PlayerAvatar_SpecialMovement_ClearState(playerAvatar);

        v1 = Direction_GetOpposite(v1);
        v3 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, v1);

        if (v3 != 0) {
            return 0;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(v1, MOVEMENT_ACTION_WALK_SLOW_NORTH), 3);
        sub_0205EF6C(playerAvatar, 1);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_State_SetCyclingAnimation(playerAvatar, v1);
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static int PlayerAvatar_SpecialMovement_HandleBikeSlope(PlayerAvatar *playerAvatar, int param1)
{
    u32 v0;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int v2 = MapObject_GetMovingDir(mapObj);

    Sound_PlayEffect(SEQ_SE_DP_SUNA);

    if (v2 == 0) {
        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING && PlayerAvatar_Speed(playerAvatar) >= 3) {
            if (param1 == 0) {
                PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(v2, MOVEMENT_ACTION_WALK_FASTER_SOUTH), 6);
                sub_0205EB08(playerAvatar, 1);
                return 1;
            }
        }

        v2 = Direction_GetOpposite(v2);
        v0 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, v2);

        if (v0 != 0) {
            return 0;
        }

        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(v2, MOVEMENT_ACTION_WALK_SLOW_NORTH), 3);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EB08(playerAvatar, 1);
        sub_0205F01C(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
        return 1;
    } else if (v2 == 1) {
        if (sub_0205F034(playerAvatar) == 0) {
            PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(v2, MOVEMENT_ACTION_WALK_FASTER_SOUTH), 6);
            sub_0205EB08(playerAvatar, 1);

            if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
                PlayerAvatar_SetSpeed(playerAvatar, 3);
            }

            sub_0205EBEC(playerAvatar, -1, -1);
            return 1;
        } else {
            MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
            PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(v2, MOVEMENT_ACTION_WALK_SLOW_NORTH), 3);
            sub_0205EF40(playerAvatar, 1);
            sub_0205EB08(playerAvatar, 1);
            sub_0205F01C(playerAvatar, 1);
            sub_0205EBEC(playerAvatar, -1, -1);
            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_SpecialMovement_HandleBikeRampEastward(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int v1 = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, 0x5f, 2);
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, 0x5d, 3);
    }

    sub_0205EF40(playerAvatar, 1);
    sub_0205F074(playerAvatar, 1);

    return 1;
}

static int PlayerAvatar_SpecialMovement_HandleBikeRampWestward(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    int v1 = MapObject_GetMovingDir(mapObj);

    if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DANSA4);
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, 0x5e, 2);
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, 0x5c, 2);
    }

    sub_0205EF40(playerAvatar, 1);
    sub_0205F074(playerAvatar, 1);

    return 1;
}

static int PlayerAvatar_SpecialMovement_HandleBikeRamp(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = 1;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    u32 v2 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, v0);

    if (v2 == 0) {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(v0, MOVEMENT_ACTION_WALK_FASTER_NORTH), 6);
        sub_0205EB08(playerAvatar, 1);
        PlayerAvatar_SetSpeed(playerAvatar, 3);

        return 1;
    } else {
        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, MovementAction_TurnActionTowardsDir(v0, MOVEMENT_ACTION_FACE_SOUTH), 1);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EB08(playerAvatar, 0);
        sub_0205EF98(playerAvatar, 0);
    }

    return 1;
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
        MapObject *v0 = Player_MapObject(playerAvatar);

        MapObject_SetStatusFlagOff(v0, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);

        if (sub_0205F08C(playerAvatar) == 0) {
            PlayerAvatar_ClearSpeed(playerAvatar);
        }

        sub_0205EF40(playerAvatar, 0);
        sub_0205F074(playerAvatar, 0);
        sub_0205F01C(playerAvatar, 0);
    }
}

static int PlayerAvatar_State_CheckElevationChange(PlayerAvatar *playerAvatar, int param1)
{
    int v0;
    VecFx32 v1, v2;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    MapObject_GetPosPtr(mapObj, &v1);
    v2 = v1;

    VecFx32_StepDirection(param1, &v2, ((16 * FX32_ONE) >> 1) / 2);
    v0 = sub_020644A4(fieldSystem, &v2);

    if ((v0 == 0) || (v1.y == v2.y)) {
        return 0;
    }

    if (v1.y > v2.y) {
        return 2;
    }

    return 1;
}

static int PlayerAvatar_State_AdjustCyclingSpeed(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = PlayerAvatar_Speed(playerAvatar);

    if (param1 == 1) {
        v0--;

        if (v0 < 0) {
            return 0;
        }
    } else if (param1 == 2) {
        v0++;

        if (v0 > 3) {
            v0 = 3;
        }
    }

    PlayerAvatar_SetSpeed(playerAvatar, v0);
    return 1;
}

static void PlayerAvatar_State_SetCyclingAnimation(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *v0 = Player_MapObject(playerAvatar);
    int v1 = 0x10;
    int v2 = PlayerAvatar_Speed(playerAvatar);
    int v3 = 5;

    switch (v2) {
    case 1:
        v1 = 0x50;
        v3 = 5;
        break;
    case 2:
        v1 = 0x14;
        v3 = 6;
        break;
    case 3:
        v1 = 0x14;
        v3 = 6;
        break;
    }

    v1 = MovementAction_TurnActionTowardsDir(param1, v1);
    PlayerAvatar_Animation_SetMovement(playerAvatar, v0, v1, v3);
}

static void inline_0205F180(PlayerAvatar *playerAvatar, const LandDataManager *param1, int param2, u16 param3, u16 param4)
{
    int v0 = PlayerAvatar_GetPlayerState(playerAvatar);
    MapObject *mapObj = Player_MapObject(playerAvatar);

    switch (v0) {
    case PLAYER_STATE_WALKING:
    case PLAYER_STATE_SURFING:
        inline_0205F180_sub(playerAvatar, mapObj, param1, param2, param3, param4);
        break;
    case PLAYER_STATE_CYCLING:
        PlayerAvatar_Cycling_RouteMovement(playerAvatar, mapObj, param1, param2, param3, param4);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void inline_0205F180_sub(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int v0 = PlayerAvatar_Walking_GetMovementType(playerAvatar, param3);

    switch (v0) {
    case 0:
        PlayerAvatar_Walking_HandleTurnInPlace(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 1:
        PlayerAvatar_Walking_HandleDistortedMovement(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 2:
        PlayerAvatar_Distortion_HandleTurn(playerAvatar, mapObj, param3, param4, param5);
        break;
    }
}

static int PlayerAvatar_Walking_GetMovementType(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = PlayerAvatar_Walking_DetermineMovementState(playerAvatar, param1);
    int v1 = PlayerAvatar_Walking_MapTypeToState(v0);

    sub_0205EB08(playerAvatar, v1);
    return v0;
}

static int PlayerAvatar_Walking_MapTypeToState(int param0)
{
    switch (param0) {
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

static int PlayerAvatar_Walking_AdjustAnimationForSnow(MapObject *mapObj, u8 param1, int param2)
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

static int PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(MapObject *mapObj, u8 param1, int param2)
{
    return param2;
}

static int PlayerAvatar_Walking_DetermineMovementState(PlayerAvatar *playerAvatar, int param1)
{
    int v0;

    if (param1 == -1) {
        sub_0205EB08(playerAvatar, 0);
        return 0;
    }

    v0 = PlayerAvatar_GetDir(playerAvatar);

    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    if (distortionState != AVATAR_DISTORTION_STATE_NONE
        && distortionState != AVATAR_DISTORTION_STATE_ACTIVE
        && distortionState != AVATAR_DISTORTION_STATE_FLOOR) {
        v0 = PlayerAvatar_GetMoveDir(playerAvatar);
    }

    if ((v0 != param1) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        sub_0205EB08(playerAvatar, 2);
        return 2;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void PlayerAvatar_Walking_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *param1, int param2, u16 param3, u16 param4)
{
    int v0 = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(param1), MOVEMENT_ACTION_FACE_NORTH);
    PlayerAvatar_Animation_SetMovement(playerAvatar, param1, v0, 1);
}

static void PlayerAvatar_Walking_HandleDistortedMovement(PlayerAvatar *playerAvatar, MapObject *param1, int param2, u16 param3, u16 param4)
{
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_FLOOR:
        PlayerAvatar_Distortion_HandleFloorMovement(playerAvatar, param1, param2, param3, param4);
        break;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        PlayerAvatar_Distortion_HandleWestWallMovement(playerAvatar, param1, param2, param3, param4);
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        PlayerAvatar_Distortion_HandleEastWallMovement(playerAvatar, param1, param2, param3, param4);
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        PlayerAvatar_Distortion_HandleCeilingMovement(playerAvatar, param1, param2, param3, param4);
        break;
    default:
        PlayerAvatar_Walking_HandleNormalMovement(playerAvatar, param1, param2, param3, param4);
    }
}

static void PlayerAvatar_Walking_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2;

    v0 = PlayerAvatar_Collision_CheckBasic(playerAvatar, param1, param2);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
        if (v0 & (1 << 2)) {
            v1 = 0x38;
            v2 = 3;
        } else if (v0 & (1 << 7)) {
            v1 = 0x75;
            v2 = 2;
        } else if (v0 != 0) {
            v1 = 0x1c;
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(param1, param2);
        } else {
            v1 = 0xc;
            v2 = 4;

            {
                PlayerData *v3 = PlayerAvatar_PlayerData(playerAvatar);

                if (PlayerData_HasRunningShoes(v3) == 1) {
                    if (PlayerAvatar_Input_CheckRunningShoes(playerAvatar, param4) == 1) {
                        v1 = 0x58;
                        v2 = 5;
                    }
                }
            }

            v1 = PlayerAvatar_Walking_AdjustAnimationForSnow(param1, MapObject_GetCurrTileBehavior(param1), v1);

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        }
    } else {
        if ((v0 == 0) || (v0 == (1 << 5))) {
            v2 = 5;
            v1 = 0x10;
            v1 = PlayerAvatar_Walking_ApplyDefaultAnimationAdjustment(param1, MapObject_GetCurrTileBehavior(param1), v1);

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            v1 = 0x1c;
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(param1, param2);
        }
    }

    v1 = MovementAction_TurnActionTowardsDir(param2, v1);
    PlayerAvatar_Animation_SetMovement(playerAvatar, param1, v1, v2);
}

static void PlayerAvatar_Distortion_HandleFloorMovement(PlayerAvatar *playerAvatar, MapObject *param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2;

    v0 = PlayerAvatar_Collision_CheckDistortion(playerAvatar, param1, param2);

    if (v0 & (~(1 << 7))) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(param1);
        int x = MapObject_GetX(param1);
        int y = MapObject_GetY(param1);
        int z = MapObject_GetZ(param1);

        y = ((y) / 2);
        PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, param2, &x, &y, &z);

        if (DistWorld_IsValidTileOnCurrentFloatingPlatform(fieldSystem, x, y, z) == 0) {
            if (ov9_02250FD8(fieldSystem, x, y, z) == 1) {
                ov9_02251000(fieldSystem, x, y, z);
                v0 = PlayerAvatar_Collision_CheckDistortion(playerAvatar, param1, param2);
            }
        }
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
        if (v0 & (1 << 7)) {
            v1 = 0x75;
            v2 = 2;
            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else if (v0 != 0) {
            v1 = 0x1c;
            v2 = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(param1, param2);
        } else {
            PlayerData *player;

            v1 = 0xc;
            v2 = 4;
            player = PlayerAvatar_PlayerData(playerAvatar);

            if (PlayerData_HasRunningShoes(player) == TRUE && PlayerAvatar_Input_CheckRunningShoes(playerAvatar, param4) == 1) {
                v1 = 0x58;
                v2 = 5;
            }

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        }
    } else {
        if ((v0 == 0) || (v0 == (1 << 5))) {
            v2 = 5;
            v1 = 0x10;
            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            v1 = 0x1c;
            v2 = 1;
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(param1, param2);
        }
    }

    v1 = MovementAction_TurnActionTowardsDir(param2, v1);
    PlayerAvatar_Animation_SetMovement(playerAvatar, param1, v1, v2);
}

static void PlayerAvatar_Distortion_HandleGenericMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4, const int *param5, const int *param6, const int *param7, const int *param8, const int *param9)
{
    u32 v0;
    int v1;
    int v2;

    v0 = PlayerAvatar_Collision_CheckDistortion(playerAvatar, mapObj, param2);

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_SURFING) {
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

            if ((PlayerData_HasRunningShoes(v3) == 1) && (PlayerAvatar_Input_CheckRunningShoes(playerAvatar, param4) == 1)) {
                v2 = 5;
                v1 = param6[param2];
            }

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        }
    } else {
        if ((v0 == 0) || (v0 == (1 << 5))) {
            v2 = 4;
            v1 = param7[param2];

            PlayerAvatar_State_IncrementStepCounter(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            v1 = param8[param2];
            v2 = 1;

            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            MapObject_Turn(mapObj, param9[param2]);
        }
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v1, v2);
}

static void PlayerAvatar_Distortion_HandleWestWallMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0[4] = { 0x69, 0x6a, 0x6b, 0x6c };
    int v1[4] = { 0x79, 0x7a, 0x7b, 0x7c };
    int v2[4] = { 0x69, 0x6a, 0x6b, 0x6c };
    int v3[4] = { 0x1e, 0x1f, 0x1d, 0x1c };
    int v4[4] = { 0, 1, 2, 3 };

    PlayerAvatar_Distortion_HandleGenericMovement(playerAvatar, mapObj, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void PlayerAvatar_Distortion_HandleEastWallMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0[4] = { 0x6d, 0x6e, 0x6f, 0x70 };
    int v1[4] = { 0x7d, 0x7e, 0x7f, 0x80 };
    int v2[4] = { 0x6d, 0x6e, 0x6f, 0x70 };
    int v3[4] = { 0x1f, 0x1e, 0x1c, 0x1d };
    int v4[4] = { 0, 1, 2, 3 };

    PlayerAvatar_Distortion_HandleGenericMovement(playerAvatar, mapObj, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void PlayerAvatar_Distortion_HandleCeilingMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0[4] = { 0x71, 0x72, 0x73, 0x74 };
    int v1[4] = { 0x81, 0x82, 0x83, 0x84 };
    int v2[4] = { 0x71, 0x72, 0x73, 0x74 };
    int v3[4] = { 0x1d, 0x1c, 0x1f, 0x1e };
    int v4[4] = { 0, 1, 2, 3 };

    PlayerAvatar_Distortion_HandleGenericMovement(playerAvatar, mapObj, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void PlayerAvatar_Distortion_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
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

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v0, 1);
    MapObject_Turn(mapObj, param2);
}

static void PlayerAvatar_Cycling_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int v0;

    if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
        PlayerAvatar_CyclingHighGear_RouteMovement(playerAvatar, mapObj, param2, param3, param4, param5);
    } else {
        PlayerAvatar_Cycling_RouteNormalMovement(playerAvatar, mapObj, param2, param3, param4, param5);
    }
}

static void PlayerAvatar_TryCyclingGearChange(PlayerAvatar *playerAvatar, u16 pad)
{
    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_CYCLING) {
        return;
    }

    if (pad & PAD_BUTTON_B) {
        u32 v0 = MapObject_GetCurrTileBehavior(Player_MapObject(playerAvatar));

        if (TileBehavior_IsBikeRampEastward(v0) || TileBehavior_IsBikeRampWestward(v0)) {
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

int PlayerAvatar_Animation_GetCyclingAnimationCode(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = 0x4c;

    switch (PlayerAvatar_Speed(playerAvatar)) {
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

static int PlayerAvatar_Cycling_HandleSpeedIncrease(PlayerAvatar *playerAvatar)
{
    int v0 = PlayerAvatar_AddMoveSpeed(playerAvatar, 1, 3);

    if (sub_0205EFB0(playerAvatar) == 0) {
        if (v0 >= 2) {
            sub_0205EF98(playerAvatar, 1);
        }
    }

    if (v0 == 3) {
        return 1;
    }

    return 0;
}

static int PlayerAvatar_Cycling_HandleSpeedDecrease(PlayerAvatar *playerAvatar)
{
    int v0 = 1;
    int v1 = PlayerAvatar_Speed(playerAvatar);

    v1--;

    if (v1 < 0) {
        v1 = 0;
        v0 = 0;
    }

    PlayerAvatar_SetSpeed(playerAvatar, v1);

    if (sub_0205EFB0(playerAvatar) == 1) {
        if (v1 == 0) {
            sub_0205EF98(playerAvatar, 0);
        }
    }

    return v0;
}

static void PlayerAvatar_Cycling_RouteNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int v0 = PlayerAvatar_Cycling_GetNormalMovementType(playerAvatar, param3);

    switch (v0) {
    case 0:
        PlayerAvatar_Cycling_HandleTurnInPlace(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 1:
        PlayerAvatar_Cycling_HandleNormalMovement(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 2:
        PlayerAvatar_Cycling_HandleTurn(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 3:
        PlayerAvatar_Cycling_HandleDeceleration(playerAvatar, mapObj, param3, param4, param5);
        break;
    }
}

static int PlayerAvatar_Cycling_GetNormalMovementType(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = PlayerAvatar_Cycling_DetermineNormalState(playerAvatar, param1);
    int v1 = PlayerAvatar_Cycling_MapNormalTypeToState(v0);

    sub_0205EB08(playerAvatar, v1);
    return v0;
}

static int PlayerAvatar_Cycling_MapNormalTypeToState(int param0)
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

static int PlayerAvatar_Cycling_DetermineNormalState(PlayerAvatar *playerAvatar, int param1)
{
    int dir;

    if (param1 == -1) {
        if (sub_0205EFB0(playerAvatar) == 1) {
            sub_0205EB08(playerAvatar, 1);
            return 3;
        }

        sub_0205EB08(playerAvatar, 0);
        return 0;
    }

    dir = PlayerAvatar_GetDir(playerAvatar);
    sub_0205EF98(playerAvatar, 0);

    if ((dir != param1) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        sub_0205EB08(playerAvatar, 2);
        return 2;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void PlayerAvatar_Cycling_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0 = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v0, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void PlayerAvatar_Cycling_HandleNormalMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2;

    v0 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, param2);

    if (v0 & (1 << 2)) {
        v1 = 0x38;
        v2 = 3;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (v0 & (1 << 7)) {
        v1 = 0x75;
        v2 = 2;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (v0 & (1 << 4)) {
        v1 = 0x50;
        v2 = 5;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
        sub_0205EF40(playerAvatar, 1);
    } else if (v0 & (1 << 6)) {
        v1 = 0x0;
        v2 = 1;
        param2 = MapObject_GetMovingDir(mapObj);
        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else if (v0 != 0) {
        if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, param2) == 0) {
            v1 = 0x1c;
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
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
            sub_0205EBEC(playerAvatar, -1, -1);
        }
    } else {
        v1 = 0x50;
        v2 = 5;
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
        PlayerAvatar_SetSpeed(playerAvatar, 2);
    }

    v1 = MovementAction_TurnActionTowardsDir(param2, v1);
    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v1, v2);
}

static void PlayerAvatar_Cycling_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, param2) != 1) {
        int v0 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v0, 1);
        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void PlayerAvatar_Cycling_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2, v3 = PlayerAvatar_Cycling_HandleSpeedDecrease(playerAvatar);

    dir = PlayerAvatar_GetMoveDir(playerAvatar);
    v0 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, dir);

    if (v0 & (1 << 2)) {
        v2 = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        v1 = 3;
    } else if (v0 & (1 << 7)) {
        v2 = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_117);
        v1 = 2;
    } else if (v0 & (1 << 6)) {
        v2 = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_FACE_NORTH);
        v1 = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (v0 != 0) {
        v3 = 0;
        v2 = MovementAction_TurnActionTowardsDir(dir, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
        v1 = 1;

        if ((v0 & (1 << 3)) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, dir);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        v2 = PlayerAvatar_Animation_GetCyclingAnimationCode(playerAvatar, dir);
        v1 = 5;
    }

    if (v3 == 0) {
        sub_0205EF98(playerAvatar, 0);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v2, v1);
}

static void PlayerAvatar_CyclingHighGear_RouteMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, const LandDataManager *param2, int param3, u16 param4, u16 param5)
{
    int v0 = PlayerAvatar_CyclingHighGear_GetMovementType(playerAvatar, param3);

    switch (v0) {
    case 0:
        PlayerAvatar_CyclingHighGear_HandleTurnInPlace(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 1:
        PlayerAvatar_CyclingHighGear_HandleMovement(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 2:
        PlayerAvatar_CyclingHighGear_HandleTurn(playerAvatar, mapObj, param3, param4, param5);
        break;
    case 3:
        PlayerAvatar_CyclingHighGear_HandleDeceleration(playerAvatar, mapObj, param3, param4, param5);
        break;
    }
}

static int PlayerAvatar_CyclingHighGear_GetMovementType(PlayerAvatar *playerAvatar, int param1)
{
    int v0 = PlayerAvatar_CyclingHighGear_DetermineState(playerAvatar, param1);
    int v1 = PlayerAvatar_CyclingHighGear_MapTypeToState(v0);

    sub_0205EB08(playerAvatar, v1);
    return v0;
}

static int PlayerAvatar_CyclingHighGear_MapTypeToState(int param0)
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

static int PlayerAvatar_CyclingHighGear_DetermineState(PlayerAvatar *playerAvatar, int param1)
{
    int v0, v1;

    v1 = PlayerAvatar_Speed(playerAvatar);

    if (param1 == -1) {
        if (v1 < 2) {
            sub_0205EB08(playerAvatar, 0);
            return 0;
        }

        sub_0205EB08(playerAvatar, 1);
        return 3;
    }

    v0 = PlayerAvatar_GetDir(playerAvatar);

    if ((v0 != param1) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        if (v1 < 2) {
            sub_0205EB08(playerAvatar, 2);
            return 2;
        }

        sub_0205EB08(playerAvatar, 1);
        return 3;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void PlayerAvatar_CyclingHighGear_HandleTurnInPlace(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    int v0 = MovementAction_TurnActionTowardsDir(MapObject_GetFacingDir(mapObj), MOVEMENT_ACTION_FACE_NORTH);

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v0, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void PlayerAvatar_CyclingHighGear_HandleMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2;

    v0 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, param2);

    if (v0 & (1 << 2)) {
        v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        v2 = 3;
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (v0 & (1 << 7)) {
        v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_117);
        v2 = 2;
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if (v0 & (1 << 4)) {
        if (PlayerAvatar_Speed(playerAvatar) >= 3) {
            v1 = PlayerAvatar_Animation_GetCyclingAnimationCode(playerAvatar, param2);
            v2 = 5;
            sub_0205F048(playerAvatar);
            sub_0205EF40(playerAvatar, 1);
        } else {
            v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
                Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
            }

            MapObject_Turn(mapObj, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
        }
    } else if (v0 & (1 << 6)) {
        param2 = MapObject_GetMovingDir(mapObj);
        v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_FACE_NORTH);
        v2 = 1;
        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else if (v0 != 0) {
        if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, param2) == 0) {
            v1 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
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
            sub_0205EBEC(playerAvatar, -1, -1);
        }
    } else {
        v2 = 5;
        v1 = PlayerAvatar_Animation_GetCyclingAnimationCode(playerAvatar, param2);
        PlayerAvatar_Cycling_HandleSpeedIncrease(playerAvatar);
        PlayerAvatar_State_IncrementStepCounter(playerAvatar);
        sub_0205F048(playerAvatar);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v1, v2);
}

static void PlayerAvatar_CyclingHighGear_HandleTurn(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (PlayerAvatar_State_CheckBikeBridgeValidity(playerAvatar, mapObj, param2) == 1) {
        (void)0;
    } else {
        int v0 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);

        PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v0, 1);
        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void PlayerAvatar_CyclingHighGear_HandleDeceleration(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2, v3 = PlayerAvatar_Cycling_HandleSpeedDecrease(playerAvatar);

    param2 = PlayerAvatar_GetMoveDir(playerAvatar);
    v0 = PlayerAvatar_Collision_CheckBasic(playerAvatar, mapObj, param2);

    if (v0 & (1 << 2)) {
        v2 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_JUMP_FAR_NORTH);
        v1 = 3;
    } else if (v0 & (1 << 7)) {
        v2 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_117);
        v1 = 2;
    } else if (v0 & (1 << 6)) {
        v2 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_FACE_NORTH);
        v1 = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (v0 != 0) {
        v3 = 0;
        v1 = 1;
        v2 = MovementAction_TurnActionTowardsDir(param2, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH);

        if ((v0 & (1 << 3)) == 0) {
            Sound_PlayEffect(SEQ_SE_DP_WALL_HIT);
        }

        MapObject_Turn(mapObj, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        v2 = PlayerAvatar_Animation_GetCyclingAnimationCode(playerAvatar, param2);
        v1 = 5;
    }

    if (v3 == 0) {
        sub_0205EF98(playerAvatar, 0);
    }

    PlayerAvatar_Animation_SetMovement(playerAvatar, mapObj, v2, v1);
}

static void PlayerAvatar_Animation_SetMovement(PlayerAvatar *playerAvatar, MapObject *mapObj, u32 param2, int param3)
{
    sub_0205EC20(playerAvatar, param2, param3);
    LocalMapObj_SetAnimationCode(mapObj, param2);
}

u32 PlayerAvatar_Collision_CheckBasic(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    u32 v0 = 0, v1;
    v1 = PlayerAvatar_Collision_CheckBasicInternal(playerAvatar, mapObj, param2);

    if (v1 & ((1 << 1) | (1 << 3))) {
        v0 |= (1 << 0);

        if (PlayerAvatar_Collision_CheckWarpEntrances(playerAvatar, mapObj, param2)) {
            v0 |= (1 << 3);
        }
    }

    if (v1 & (1 << 2)) {
        v0 |= (1 << 1);
    }

    if (PlayerAvatar_Collision_CheckJumpTiles(playerAvatar, mapObj, param2)) {
        v0 |= (1 << 2);
    }

    if (PlayerAvatar_Collision_CheckDoubleJumpTiles(playerAvatar, mapObj, param2)) {
        v0 |= (1 << 7);
    }

    if (PlayerAvatar_Collision_CheckBikeRamps(playerAvatar, mapObj, param2) == 1) {
        v0 |= (1 << 4);
    }

    if (PlayerAvatar_Collision_CheckWaterTiles(playerAvatar, mapObj, param2) == 1) {
        v0 |= (1 << 5);
    }

    if (PlayerAvatar_Collision_CheckBikeBridgeRestrictions(playerAvatar, mapObj, param2) == 1) {
        v0 |= (1 << 6) | (1 << 0);
    }

    if (PlayerAvatar_Collision_CheckCyclingTerrainRestrictions(playerAvatar, mapObj, param2) == 1) {
        v0 |= (1 << 0);
    }

    return v0;
}

static u32 PlayerAvatar_Collision_CheckBasicInternal(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    VecFx32 v0;
    u32 v1, v2;
    int x = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param2);
    int y = MapObject_GetY(mapObj);
    int z = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(param2);

    MapObject_GetPosPtr(mapObj, &v0);

    v1 = 0;

    if (MapObject_IsOutOfRange(mapObj, x, y, z) == 1) {
        v1 |= (1 << 0);
    }

    {
        s8 v6;
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (TerrainCollisionManager_WillPlayerCollide(fieldSystem, &v0, x, z, &v6) == 1) {
            v1 |= (1 << 1);

            if (v6 != 0) {
                v1 |= (1 << 3);
            }
        }
    }

    if (sub_02064004(mapObj, x, z, param2) == 1) {
        v1 |= (1 << 1);
    }

    if (sub_02063F00(mapObj, x, y, z) == 1) {
        v1 |= (1 << 2);
    }

    return v1;
}

static int PlayerAvatar_Collision_CheckJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    if (param2 != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int v1 = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param2);
        int v2 = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(param2);

        if (DynamicMapFeatures_WillPlayerJumpEternaGymClock(fieldSystem, v1, v2, 0, param2) == 1) {
            return 1;
        }

        {
            u8 v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

            switch (param2) {
            case 0:
                if (TileBehavior_IsJumpNorth(v3) == 1) {
                    return 1;
                }
                break;
            case 1:
                if (TileBehavior_IsJumpSouth(v3) == 1) {
                    return 1;
                }
                break;
            case 2:
                if (TileBehavior_IsJumpWest(v3) == 1) {
                    return 1;
                }
                break;
            case 3:
                if (TileBehavior_IsJumpEast(v3) == 1) {
                    return 1;
                }
                break;
            }
        }
    }

    return 0;
}

static int PlayerAvatar_Collision_CheckDoubleJumpTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    BOOL v0 = 0;

    if (param2 != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int v2 = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param2);
        int v3 = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(param2);
        u8 v4 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v2, v3);

        switch (param2) {
        case 0:
            v0 = TileBehavior_IsJumpNorthTwice(v4);
            break;
        case 1:
            v0 = TileBehavior_IsJumpSouthTwice(v4);
            break;
        case 2:
            v0 = TileBehavior_IsJumpWestTwice(v4);
            break;
        case 3:
            v0 = TileBehavior_IsJumpEastTwice(v4);
            break;
        }

        if (v0 == 1) {
            if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
                if (ov9_022511A0(fieldSystem, v2, v3, param2) == 1) {
                    v0 = 0;
                }
            }
        }
    }

    return v0;
}

static int PlayerAvatar_Collision_CheckWarpEntrances(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    if (param2 != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int v1 = MapObject_GetX(mapObj);
        int v2 = MapObject_GetZ(mapObj);
        u8 v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

        switch (param2) {
        case 0:
            if (TileBehavior_IsWarpEntranceNorth(v3) == 1) {
                return 1;
            }
            break;
        case 1:
            if (TileBehavior_IsWarpEntranceSouth(v3) == 1) {
                return 1;
            }
            break;
        case 2:
            if (TileBehavior_IsWarpEntranceWest(v3) == 1) {
                return 1;
            }
            break;
        case 3:
            if (TileBehavior_IsWarpEntranceEast(v3) == 1) {
                return 1;
            }
            break;
        }

        v1 += MapObject_GetDxFromDir(param2);
        v2 += MapObject_GetDzFromDir(param2);
        v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

        if (TileBehavior_IsDoor(v3) == 1) {
            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_Collision_CheckBikeRamps(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    if (param2 != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int v1 = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param2);
        int v2 = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(param2);
        u8 v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

        if ((param2 == 3) && TileBehavior_IsBikeRampEastward(v3)) {
            return 1;
        }

        if ((param2 == 2) && TileBehavior_IsBikeRampWestward(v3)) {
            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_Collision_CheckWaterTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    if (param2 != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int v1 = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param2);
        int v2 = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(param2);
        u8 v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

        if (MapObject_IsOnWater(mapObj, v3)) {
            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_Collision_CheckBikeBridgeRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    if (param2 != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int v1 = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param2);
        int v2 = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(param2);
        u8 v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

        if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING) {
            if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, v3) == 1) {
                if ((param2 == 0) || (param2 == 1)) {
                    return 0;
                }

                return 1;
            }

            if (MapObject_IsOnBikeBridgeEastWest(mapObj, v3) == 1) {
                if ((param2 == 2) || (param2 == 3)) {
                    return 0;
                }

                return 1;
            }
        } else {
            if ((MapObject_IsOnBikeBridgeNorthSouth(mapObj, v3) == 1) || (MapObject_IsOnBikeBridgeEastWest(mapObj, v3) == 1)) {
                return 1;
            }
        }
    }

    return 0;
}

static int PlayerAvatar_Collision_CheckCyclingTerrainRestrictions(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    if ((param2 != -1) && PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_CYCLING) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int v1 = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param2);
        int v2 = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(param2);
        u8 v3 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v1, v2);

        if (MapObject_IsOnWater(mapObj, v3)) {
            return 1;
        }

        if (MapObject_IsOnSnow(mapObj, v3)) {
            return 1;
        }

        if (TileBehavior_IsVeryTallGrass(v3)) {
            return 1;
        }

        if (TileBehavior_IsMud(v3)) {
            return 1;
        }

        if (TileBehavior_IsMudWithGrass(v3)) {
            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_Distortion_CheckCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    u32 v0 = 0;
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

    if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj) / 2;
        int z = MapObject_GetZ(mapObj);

        PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, param2, &x, &y, &z);

        if (DistWorld_CheckCollisionOnCurrentFloatingPlatform(fieldSystem, x, y, z) == 1) {
            v0 |= (1 << 1);
        }

        y = y * 2;

        if (sub_02063F00(mapObj, x, y, z) == 1) {
            v0 |= (1 << 2);
        }
    }

    return v0;
}

static int PlayerAvatar_Distortion_CheckSurfableTiles(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    if (param2 != -1) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
            BOOL v1;
            u32 v2;
            int x = MapObject_GetX(mapObj);
            int y = MapObject_GetY(mapObj) / 2;
            int z = MapObject_GetZ(mapObj);

            PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, param2, &x, &y, &z);

            v1 = DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &v2);

            if (TileBehavior_IsSurfable(v2)) {
                return 1;
            }
        }
    }

    return 0;
}

u32 PlayerAvatar_Collision_CheckDistortion(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    u32 v0, v1 = 0;

    v0 = PlayerAvatar_Distortion_CheckCollision(playerAvatar, mapObj, param2);

    if (v0 & ((1 << 1) | (1 << 3))) {
        v1 |= (1 << 0);
    }

    if (v0 & (1 << 2)) {
        v1 |= (1 << 1);
    }

    if (PlayerAvatar_Distortion_CheckSurfableTiles(playerAvatar, mapObj, param2) == 1) {
        v1 |= (1 << 5);
    }

    if (PlayerAvatar_Distortion_CheckDoubleJump(playerAvatar, mapObj, param2) == 1) {
        v1 |= (1 << 7);
    }

    return v1;
}

static int PlayerAvatar_Distortion_CheckDoubleJump(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    BOOL v0 = 0;
    if ((param2 != -1) && PlayerAvatar_MapDistortionState(playerAvatar) == AVATAR_DISTORTION_STATE_FLOOR) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == 1) {
            u32 v2;
            int x = MapObject_GetX(mapObj);
            int y = MapObject_GetY(mapObj) / 2;
            int z = MapObject_GetZ(mapObj);

            PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, param2, &x, &y, &z);

            v0 = DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &v2);

            switch (param2) {
            case 0:
                v0 = TileBehavior_IsJumpNorthTwice(v2);
                break;
            case 1:
                v0 = TileBehavior_IsJumpSouthTwice(v2);
                break;
            case 2:
                v0 = TileBehavior_IsJumpWestTwice(v2);
                break;
            case 3:
                v0 = TileBehavior_IsJumpEastTwice(v2);
                break;
            }
        }
    }

    return v0;
}

int PlayerAvatar_Input_ProcessDirection(PlayerAvatar *playerAvatar, u16 param1, u16 param2)
{
    return PlayerAvatar_Input_DetermineMovementDirection(playerAvatar, param1, param2);
}

static int PlayerAvatar_Input_GetHorizontalDirection(u16 pad)
{
    if (pad & PAD_KEY_LEFT) {
        return 2;
    }

    if (pad & PAD_KEY_RIGHT) {
        return 3;
    }

    return -1;
}

static int PlayerAvatar_Input_GetVerticalDirection(u16 pad)
{
    if (pad & PAD_KEY_UP) {
        return 0;
    }

    if (pad & PAD_KEY_DOWN) {
        return 1;
    }

    return -1;
}

static int PlayerAvatar_Input_DetermineMovementDirection(PlayerAvatar *playerAvatar, u16 param1, u16 param2)
{
    int v0 = PlayerAvatar_Input_GetHorizontalDirection(param2);
    int v1 = PlayerAvatar_Input_GetVerticalDirection(param2);

    if (v0 == -1) {
        return v1;
    }

    if (v1 == -1) {
        return v0;
    }

    {
        int dir = PlayerAvatar_GetMoveDir(playerAvatar);
        int v3 = sub_0205EBE0(playerAvatar);
        int v4 = sub_0205EBE8(playerAvatar);

        if (dir != -1) {
            if ((v0 == v3) && (v1 == v4)) {
                return dir;
            }

            if (v1 != v4) {
                return v1;
            }

            return v0;
        }

        return v1;
    }

    return -1;
}

int PlayerAvatar_State_IsAnimationActive(PlayerAvatar *playerAvatar)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == 1) {
        return 1;
    }

    {
        int v1 = MapObject_GetMovementAction(mapObj);

        if (PlayerAvatar_State_IsTurnAction(v1) == 1) {
            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_State_IsTurnAction(int param0)
{
    switch (param0) {
    case 0x1c:
    case 0x1d:
    case 0x1e:
    case 0x1f:
        return 1;
    }

    return 0;
}

int PlayerAvatar_Input_CheckRunningShoes(PlayerAvatar *playerAvatar, u16 pad)
{
    if (pad & PAD_BUTTON_B) {
        return 1;
    }

    return 0;
}

int PlayerAvatar_State_IsRunningAnimation(PlayerAvatar *playerAvatar)
{
    u32 v0 = sub_0205EC14(playerAvatar);

    switch (v0) {
    case 0x58:
    case 0x59:
    case 0x5a:
    case 0x5b:
        return 1;
    }

    return 0;
}

int PlayerAvatar_State_GetMovementState(PlayerAvatar *playerAvatar, int param1)
{
    int v0, v1, state = PlayerAvatar_GetPlayerState(playerAvatar);

    switch (state) {
    case PLAYER_STATE_WALKING:
    case PLAYER_STATE_SURFING:
        v0 = PlayerAvatar_Walking_DetermineMovementState(playerAvatar, param1);
        v1 = PlayerAvatar_Walking_MapTypeToState(v0);
        break;
    case PLAYER_STATE_CYCLING:
        if (PlayerAvatar_CyclingGear(playerAvatar) == 1) {
            v0 = PlayerAvatar_CyclingHighGear_DetermineState(playerAvatar, param1);
            v1 = PlayerAvatar_CyclingHighGear_MapTypeToState(v0);
        } else {
            v0 = PlayerAvatar_CyclingHighGear_DetermineState(playerAvatar, param1);
            v1 = PlayerAvatar_CyclingHighGear_MapTypeToState(v0);
        }

        break;
    default:
        v1 = 0;
        GF_ASSERT(FALSE);
    }

    return v1;
}

u32 PlayerAvatar_State_GetAnimationCode(PlayerAvatar *playerAvatar, u16 param1, u16 param2, int param3, int param4, int param5)
{
    u32 v0;
    int v1 = PlayerAvatar_Input_DetermineMovementDirection(playerAvatar, param1, param2);
    int v2 = PlayerAvatar_State_GetMovementState(playerAvatar, v1);

    sub_0205EB08(playerAvatar, v2);

    if (v2 == 0) {
        v1 = PlayerAvatar_GetDir(playerAvatar);
        v0 = MovementAction_TurnActionTowardsDir(v1, MOVEMENT_ACTION_FACE_NORTH);
        return v0;
    }

    if (v2 == 2) {
        v0 = MovementAction_TurnActionTowardsDir(v1, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH);
        return v0;
    }

    {
        MapObject *v3 = Player_MapObject(playerAvatar);
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

            if ((param4 == 1) && (PlayerAvatar_Input_CheckRunningShoes(playerAvatar, param2) == 1)) {
                v0 = 0x58;
            }
        }

        v0 = MovementAction_TurnActionTowardsDir(v1, v0);
        return v0;
    }

    return 0xff;
}

int PlayerAvatar_Animation_IsSet(PlayerAvatar *playerAvatar)
{
    MapObject *v0 = Player_MapObject(playerAvatar);
    return LocalMapObj_IsAnimationSet(v0);
}

void PlayerAvatar_SetAnimationCode(PlayerAvatar *playerAvatar, u32 param1, int param2)
{
    MapObject *v0 = Player_MapObject(playerAvatar);
    PlayerAvatar_Animation_SetMovement(playerAvatar, v0, param1, param2);
}

u32 PlayerAvatar_Animation_GetTileBehavior(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *v0 = Player_MapObject(playerAvatar);
    return MapObject_GetTileBehaviorFromDir(v0, param1);
}

void PlayerAvatar_MoveCoordsInDirection(PlayerAvatar *playerAvatar, int facingDirection, int *x, int *z)
{
    *x = Player_GetXPos(playerAvatar) + MapObject_GetDxFromDir(facingDirection);
    *z = Player_GetZPos(playerAvatar) + MapObject_GetDzFromDir(facingDirection);
}

void PlayerAvatar_GetFacingTileCoords(PlayerAvatar *playerAvatar, int *x, int *z)
{
    int facingDirection = PlayerAvatar_GetDir(playerAvatar);
    PlayerAvatar_MoveCoordsInDirection(playerAvatar, facingDirection, x, z);
}

static void PlayerAvatar_State_IncrementStepCounter(PlayerAvatar *playerAvatar)
{
    MapObject *v0 = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(v0);
    GameRecords *v2 = SaveData_GetGameRecords(fieldSystem->saveData);

    GameRecords_IncrementRecordValue(v2, RECORD_UNK_000);
}

static int PlayerAvatar_State_CheckBikeBridgeValidity(PlayerAvatar *playerAvatar, MapObject *mapObj, int param2)
{
    if (param2 != -1) {
        u8 v0 = MapObject_GetCurrTileBehavior(mapObj);

        if (MapObject_IsOnBikeBridgeNorthSouth(mapObj, v0) == 1) {
            if ((param2 == 0) || (param2 == 1)) {
                return 0;
            }

            return 1;
        }

        if (MapObject_IsOnBikeBridgeEastWest(mapObj, v0) == 1) {
            if ((param2 == 2) || (param2 == 3)) {
                return 0;
            }

            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_IsUnderCyclingRoad(PlayerAvatar *playerAvatar, u32 param1, int param2)
{
    if (param2 != -1) {
        return FALSE;
    }

    if (PlayerAvatar_GetPlayerState(playerAvatar) != PLAYER_STATE_CYCLING) {
        return FALSE;
    }

    if (sub_0205EFDC(playerAvatar) == 0) {
        return FALSE;
    }

    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (MapObject_IsOnBridge(mapObj, param1) == 1) {
        return TRUE;
    }

    return FALSE;
}

void PlayerAvatar_Distortion_GetCoordsInDirection(PlayerAvatar *playerAvatar, int param1, int *param2, int *param3, int *param4)
{
    const UnkStruct_020EDB04 *v0;
    enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(playerAvatar);

    switch (distortionState) {
    case AVATAR_DISTORTION_STATE_NONE:
    case AVATAR_DISTORTION_STATE_ACTIVE:
    case AVATAR_DISTORTION_STATE_FLOOR:
        v0 = &Unk_020EDB04[param1];
        break;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        v0 = &Unk_020EDB24[param1];
        break;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        v0 = &Unk_020EDB44[param1];
        break;
    case AVATAR_DISTORTION_STATE_CEILING:
        v0 = &Unk_020EDB64[param1];
        break;
    default:
        return;
    }

    (*param2) += v0->unk_00;
    (*param3) += v0->unk_02;
    (*param4) += v0->unk_04;
}

u32 PlayerAvatar_GetDistortionTileBehaviour(PlayerAvatar *playerAvatar, int param1)
{
    u32 v0;

    if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == FALSE) {
        v0 = PlayerAvatar_Animation_GetTileBehavior(playerAvatar, param1);
    } else {
        MapObject *mapObj = Player_MapObject(playerAvatar);
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        int x = MapObject_GetX(mapObj);
        int y = MapObject_GetY(mapObj) / 2;
        int z = MapObject_GetZ(mapObj);

        PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, param1, &x, &y, &z);
        DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &v0);
    }

    return v0;
}

u32 PlayerAvatar_GetDistortionCurrTileBehaviour(PlayerAvatar *playerAvatar)
{
    u32 v0;
    MapObject *mapObj = Player_MapObject(playerAvatar);
    FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
    int x = MapObject_GetX(mapObj);
    int y = MapObject_GetY(mapObj) / 2;
    int z = MapObject_GetZ(mapObj);

    if (PlayerAvatar_DistortionGravityChanged(playerAvatar) == FALSE) {
        v0 = TerrainCollisionManager_GetTileBehavior(fieldSystem, x, z);
    } else {
        DistWorld_GetTileBehaviorOnCurrentFloatingPlatform(fieldSystem, x, y, z, &v0);
    }

    return v0;
}

void PlayerAvatar_Distortion_GetCurrentCoords(PlayerAvatar *const playerAvatar, int *xOut, int *yOut, int *zOut)
{
    int v0 = PlayerAvatar_GetDistortionDir(playerAvatar);
    MapObject *mapObj = Player_MapObject(playerAvatar);

    *xOut = MapObject_GetX(mapObj);
    *yOut = MapObject_GetY(mapObj) / 2;
    *zOut = MapObject_GetZ(mapObj);

    PlayerAvatar_Distortion_GetCoordsInDirection(playerAvatar, v0, xOut, yOut, zOut);
}
