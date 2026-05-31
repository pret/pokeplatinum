#ifndef POKEPLATINUM_PLAYER_AVATAR_H
#define POKEPLATINUM_PLAYER_AVATAR_H

#include <nitro/fx/fx.h>

#include "constants/player_avatar.h"

#include "struct_decls/map_object.h"
#include "struct_decls/map_object_manager.h"
#include "struct_defs/player_data.h"

#include "field/field_system_decl.h"

#include "location.h"
#include "overworld_anim_manager.h"

enum PlayerAvatarMovementFlag {
    AVATAR_MOVE_FORCED = (1 << 0),
    AVATAR_MOVE_IGNORE_TILE_BEHAVIOR = (1 << 1),
    AVATAR_MOVE_BIKE_BREAK = (1 << 2),
    AVATAR_MOVE_ON_CYCLING_ROAD = (1 << 3),
    AVATAR_MOVE_ESCAPED_FROM_DEEP_MUD = (1 << 4),
    AVATAR_MOVE_MOVE_THROUGH_MUD = (1 << 5),
    AVATAR_MOVE_STEP = (1 << 6),
    AVATAR_MOVE_FORCED_RETAIN_SPEED = (1 << 7),
    AVATAR_MOVE_DISTORTION_ACTIVE = (1 << 8),
    AVATAR_MOVE_DISTORTION_FLOOR = (1 << 9),
    AVATAR_MOVE_DISTORTION_WEST_WALL = (1 << 10),
    AVATAR_MOVE_DISTORTION_EAST_WALL = (1 << 11),
    AVATAR_MOVE_DISTORTION_CEILING = (1 << 12)
};

typedef struct PlayerAvatar {
    u32 movementFlag;
    u32 requestStateFlag;
    u32 movementAction;
    int movementActionSpeed;
    u32 unk_10;
    int moveState;
    int playerMoveState;
    int playerAvatarState;
    int gender;
    int speed;
    enum FaceDirection faceLeftOrRight;
    enum FaceDirection faceUpOrDown;
    MapObject *mapObject;
    OverworldAnimManager *surfMountAnimMan;
    PlayerData *player;
    const PlayerData *playerConst;
} PlayerAvatar;

PlayerAvatar *PlayerAvatar_New(const MapObjectManager *param0, int param1, int param2, int param3, int param4, int param5, int param6, PlayerData *param7);
PlayerAvatar *PlayerAvatar_NewLoad(const MapObjectManager *param0, PlayerData *param1, int gender);
void PlayerAvatar_InitMapFeatures(PlayerAvatar *playerAvatar, int dynamicMapFeaturesID);
void PlayerAvatar_Free(PlayerAvatar *playerAvatar);
void PlayerAvatar_Delete(PlayerAvatar *playerAvatar);
MapObject *MapObjectMan_GetPlayerMapObject(const MapObjectManager *param0);
int PlayerAvatar_GetFacingDir(PlayerAvatar *const playerAvatar);
void PlayerAvatar_TryFace(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetMovingDir(PlayerAvatar *const playerAvatar);
int PlayerAvatar_GetDistortionDir(PlayerAvatar *const playerAvatar);
int PlayerAvatar_GetXPos(PlayerAvatar *const playerAvatar);
int PlayerAvatar_GetZPos(PlayerAvatar *const playerAvatar);
int PlayerAvatar_XPosPrev(PlayerAvatar *const playerAvatar);
int PlayerAvatar_ZPosPrev(PlayerAvatar *const playerAvatar);
void PlayerAvatar_GetPosPtr(PlayerAvatar *const playerAvatar, VecFx32 *param1);
const VecFx32 *PlayerAvatar_GetPos(PlayerAvatar *const playerAvatar);
void PlayerAvatar_SetMoveState(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetPlayerMoveState(const PlayerAvatar *playerAvatar);
void PlayerAvatar_SetPlayerMoveState(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetPlayerMoveState(const PlayerAvatar *playerAvatar);
void PlayerAvatar_SetVisible(PlayerAvatar *playerAvatar, BOOL visible);
void PlayerAvatar_SetMapObject(PlayerAvatar *playerAvatar, MapObject *param1);
MapObject *PlayerAvatar_GetMapObject(PlayerAvatar *playerAvatar);
const MapObject *PlayerAvatar_GetConstMapObject(const PlayerAvatar *playerAvatar);
void PlayerAvatar_SetPlayerState(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetPlayerState(PlayerAvatar *playerAvatar);
void PlayerAvatar_TurnOnRequestStateBit(PlayerAvatar *playerAvatar, u32 param1);
void PlayerAvatar_SetRequestStateFlag(PlayerAvatar *playerAvatar, u32 param1);
u32 PlayerAvatar_GetRequestStateFlag(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetGender(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetGender(PlayerAvatar *playerAvatar);
int PlayerAvatar_GetSpeed(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetSpeed(PlayerAvatar *playerAvatar, int param1);
void PlayerAvatar_ClearSpeed(PlayerAvatar *playerAvatar);
int PlayerAvatar_AddMoveSpeed(PlayerAvatar *playerAvatar, int param1, int param2);
void PlayerAvatar_SetFaceLeftOrRight(PlayerAvatar *playerAvatar, enum FaceDirection leftOrRight);
enum FaceDirection PlayerAvatar_GetFaceLeftOrRight(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetFaceUpOrDown(PlayerAvatar *playerAvatar, enum FaceDirection faceUpOrDown);
enum FaceDirection PlayerAvatar_GetFaceUpOrDown(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetFaceDirection(PlayerAvatar *playerAvatar, enum FaceDirection faceLeftOrRight, enum FaceDirection faceUpOrDown);
void PlayerAvatar_SetSurfMountAnimManager(PlayerAvatar *playerAvatar, OverworldAnimManager *surfMountAnimMan);
OverworldAnimManager *PlayerAvatar_GetSurfMountAnimManager(PlayerAvatar *playerAvatar);
PlayerData *PlayerAvatar_PlayerData(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetMovementAction(PlayerAvatar *playerAvatar, u32 param1);
u32 PlayerAvatar_GetMovementAction(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetMovementActionSpeed(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetMovementActionSpeed(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetMovementActionAndSpeed(PlayerAvatar *playerAvatar, u32 param1, int param2);
void PlayerData_Init(PlayerData *param0);
int PlayerData_HasRunningShoes(PlayerData *param0);
void PlayerData_SetRunningShoes(PlayerData *param0, int param1);
int PlayerData_GetCyclingGear(PlayerData *param0);
void PlayerData_SetCyclingGear(PlayerData *param0, int param1);
void PlayerAvatar_SetCyclingGear(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetCyclingGear(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetPosDirFromVec(PlayerAvatar *playerAvatar, const VecFx32 *param1, int param2);
void PlayerAvatar_SetPosDirFromCoords(PlayerAvatar *playerAvatar, int x, int z, int dir);
void Player_SetYPos(PlayerAvatar *playerAvatar, fx32 y);
void PlayerAvatar_SetHeightCalculationEnabled(PlayerAvatar *playerAvatar, BOOL heightCalculationEnabled);
void PlayerAvatar_SetHeightCalculationEnabledAndUpdate(PlayerAvatar *playerAvatar, BOOL heightCalculationEnabled);
int Player_GetSpriteFromStateAndGender(int param0, int param1);
u32 Player_ConvertStateToTransition(int param0);
PlayerAvatar *FieldSystem_GetPlayerAvatar(FieldSystem *fieldSystem);
void PlayerAvatar_SetForceMovement(PlayerAvatar *playerAvatar, int param1);
BOOL PlayerAvatar_CheckForcedMovement(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetIgnoreTileBehavior(PlayerAvatar *playerAvatar, int param1);
BOOL PlayerAvatar_CheckIgnoreTileBehavior(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetBikeBreak(PlayerAvatar *playerAvatar, int param1);
BOOL PlayerAvatar_CheckBikeBreak(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetOnCyclingRoad(PlayerAvatar *playerAvatar, BOOL flag);
BOOL PlayerAvatar_IsOnCyclingRoad(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetEscapedFromDeepMud(PlayerAvatar *playerAvatar, BOOL flag);
BOOL PlayerAvatar_CheckEscapedFromDeepMud(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetMoveThroughMudFlag(PlayerAvatar *playerAvatar, BOOL param1);
BOOL PlayerAvatar_CheckMoveThroughMudFlag(PlayerAvatar *playerAvatar);
void PlayerAvatar_StartStep(PlayerAvatar *playerAvatar);
void PlayerAvatar_EndStep(PlayerAvatar *playerAvatar);
BOOL PlayerAvatar_CheckStep(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetForceMovementRetainSpeed(PlayerAvatar *playerAvatar, BOOL param1);
int PlayerAvatar_CheckForcedMovementRetainSpeed(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetDistortionState(PlayerAvatar *playerAvatar, enum AvatarDistortionState state);
enum AvatarDistortionState PlayerAvatar_MapDistortionState(PlayerAvatar *const playerAvatar);
BOOL PlayerAvatar_DistortionGravityChanged(PlayerAvatar *const playerAvatar);
BOOL PlayerAvatar_DistortionStateOnFloor(PlayerAvatar *const playerAvatar);

#endif // POKEPLATINUM_PLAYER_AVATAR_H
