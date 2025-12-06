#ifndef POKEPLATINUM_PLAYER_AVATAR_H
#define POKEPLATINUM_PLAYER_AVATAR_H

#include <nitro/fx/fx.h>

#include "constants/player_avatar.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system_decl.h"

#include "location.h"
#include "overworld_anim_manager.h"

enum PlayerAvatarForm {
    PLAYER_AVATAR_WALKING = 0,
    PLAYER_AVATAR_BIKING,
    PLAYER_AVATAR_SURFING,
};

enum PlayerAvatarFlagUnk00 {
    UNK_00_0 = (1 << 0),
    UNK_00_1 = (1 << 1),
    UNK_00_2 = (1 << 2),
    UNK_00_3 = (1 << 3),
    UNK_00_ESCAPED_FROM_DEEP_MUD = (1 << 4),
    UNK_00_5 = (1 << 5),
    UNK_00_6 = (1 << 6),
    UNK_00_7 = (1 << 7),
    UNK_00_8 = (1 << 8),
    UNK_00_9 = (1 << 9),
    UNK_00_10 = (1 << 10),
    UNK_00_11 = (1 << 11),
    UNK_00_12 = (1 << 12)
};

PlayerAvatar *PlayerAvatar_Init(const MapObjectManager *param0, int param1, int param2, int param3, int param4, int param5, int param6, PlayerData *param7);
PlayerAvatar *sub_0205E820(const MapObjectManager *param0, PlayerData *param1, int gender);
void PlayerAvatar_InitDraw(PlayerAvatar *playerAvatar, int dynamicMapFeaturesID);
void Player_Delete(PlayerAvatar *playerAvatar);
void Player_DeleteAll(PlayerAvatar *playerAvatar);
MapObject *sub_0205EA24(const MapObjectManager *param0);
int PlayerAvatar_GetDir(PlayerAvatar *const playerAvatar);
void Player_SetDir(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetMoveDir(PlayerAvatar *const playerAvatar);
int PlayerAvatar_GetDistortionDir(PlayerAvatar *const playerAvatar);
int Player_GetXPos(PlayerAvatar *const playerAvatar);
int Player_GetZPos(PlayerAvatar *const playerAvatar);
int PlayerAvatar_XPosPrev(PlayerAvatar *const playerAvatar);
int PlayerAvatar_ZPosPrev(PlayerAvatar *const playerAvatar);
void PlayerAvatar_PosVectorOut(PlayerAvatar *const playerAvatar, VecFx32 *param1);
const VecFx32 *PlayerAvatar_PosVector(PlayerAvatar *const playerAvatar);
void sub_0205EB08(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_MoveState(const PlayerAvatar *playerAvatar);
void sub_0205EB10(PlayerAvatar *playerAvatar, int param1);
int Player_MoveState(const PlayerAvatar *playerAvatar);
void PlayerAvatar_SetVisible(PlayerAvatar *playerAvatar, BOOL hidden);
void PlayerAvatar_SetMapObject(PlayerAvatar *playerAvatar, MapObject *param1);
MapObject *Player_MapObject(PlayerAvatar *playerAvatar);
const MapObject *PlayerAvatar_ConstMapObject(const PlayerAvatar *playerAvatar);
void PlayerAvatar_SetPlayerState(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetPlayerState(PlayerAvatar *playerAvatar);
void PlayerAvatar_TurnOnRequestStateBit(PlayerAvatar *playerAvatar, u32 param1);
void PlayerAvatar_SetRequestStateFlag(PlayerAvatar *playerAvatar, u32 param1);
u32 PlayerAvatar_RequestStateFlag(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetGender(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_Gender(PlayerAvatar *playerAvatar);
int PlayerAvatar_Speed(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetSpeed(PlayerAvatar *playerAvatar, int param1);
void PlayerAvatar_ClearSpeed(PlayerAvatar *playerAvatar);
int PlayerAvatar_AddMoveSpeed(PlayerAvatar *playerAvatar, int param1, int param2);
void PlayerAvatar_SetFaceLeftOrRight(PlayerAvatar *playerAvatar, enum FaceDirection leftOrRight);
enum FaceDirection PlayerAvatar_GetFaceLeftOrRight(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetFaceUpOrDown(PlayerAvatar *playerAvatar, enum FaceDirection faceUpOrDown);
enum FaceDirection PlayerAvatar_GetFaceUpOrDown(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetFaceDirection(PlayerAvatar *playerAvatar, enum FaceDirection faceLeftOrRight, enum FaceDirection faceUpOrDown);
void sub_0205EC00(PlayerAvatar *playerAvatar, OverworldAnimManager *param1);
OverworldAnimManager *sub_0205EC04(PlayerAvatar *playerAvatar);
PlayerData *PlayerAvatar_PlayerData(PlayerAvatar *playerAvatar);
void sub_0205EC10(PlayerAvatar *playerAvatar, u32 param1);
u32 sub_0205EC14(PlayerAvatar *playerAvatar);
void sub_0205EC18(PlayerAvatar *playerAvatar, int param1);
int sub_0205EC1C(PlayerAvatar *playerAvatar);
void sub_0205EC20(PlayerAvatar *playerAvatar, u32 param1, int param2);
void PlayerData_Init(PlayerData *param0);
int PlayerData_HasRunningShoes(PlayerData *param0);
void PlayerData_SetRunningShoes(PlayerData *param0, int param1);
int PlayerData_CyclingGear(PlayerData *param0);
void PlayerData_SetCyclingGear(PlayerData *param0, int param1);
void PlayerAvatar_SetCyclingGear(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_CyclingGear(PlayerAvatar *playerAvatar);
void sub_0205ECB8(PlayerAvatar *playerAvatar, const VecFx32 *param1, int param2);
void sub_0205ECE0(PlayerAvatar *playerAvatar, int param1, int param2, int param3);
void Player_SetYPos(PlayerAvatar *playerAvatar, fx32 y);
void PlayerAvatar_SetHeightCalculationEnabled(PlayerAvatar *playerAvatar, BOOL heightCalculationEnabled);
void PlayerAvatar_SetHeightCalculationEnabledAndUpdate(PlayerAvatar *playerAvatar, BOOL heightCalculationEnabled);
int Player_MoveStateFromGender(int param0, int param1);
u32 Player_ConvertStateToTransition(int param0);
PlayerAvatar *FieldSystem_GetPlayerAvatar(FieldSystem *fieldSystem);
void sub_0205EF40(PlayerAvatar *playerAvatar, int param1);
BOOL sub_0205EF58(PlayerAvatar *playerAvatar);
void sub_0205EF6C(PlayerAvatar *playerAvatar, int param1);
BOOL sub_0205EF84(PlayerAvatar *playerAvatar);
void sub_0205EF98(PlayerAvatar *playerAvatar, int param1);
BOOL sub_0205EFB0(PlayerAvatar *playerAvatar);
void sub_0205EFC4(PlayerAvatar *playerAvatar, int param1);
BOOL sub_0205EFDC(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetEscapedFromDeepMud(PlayerAvatar *playerAvatar, BOOL flag);
BOOL PlayerAvatar_CheckEscapedFromDeepMud(PlayerAvatar *playerAvatar);
void sub_0205F01C(PlayerAvatar *playerAvatar, BOOL param1);
BOOL sub_0205F034(PlayerAvatar *playerAvatar);
void sub_0205F048(PlayerAvatar *playerAvatar);
void sub_0205F054(PlayerAvatar *playerAvatar);
BOOL sub_0205F060(PlayerAvatar *playerAvatar);
void sub_0205F074(PlayerAvatar *playerAvatar, BOOL param1);
int sub_0205F08C(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetDistortionState(PlayerAvatar *playerAvatar, enum AvatarDistortionState state);
enum AvatarDistortionState PlayerAvatar_MapDistortionState(PlayerAvatar *const playerAvatar);
BOOL PlayerAvatar_DistortionGravityChanged(PlayerAvatar *const playerAvatar);
BOOL PlayerAvatar_DistortionStateOnFloor(PlayerAvatar *const playerAvatar);

#endif // POKEPLATINUM_PLAYER_AVATAR_H
