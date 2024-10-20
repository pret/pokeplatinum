#ifndef POKEPLATINUM_PLAYER_AVATAR_H
#define POKEPLATINUM_PLAYER_AVATAR_H

#include <nitro/fx/fx.h>

#include "constants/player_avatar.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

PlayerAvatar *PlayerAvatar_Init(const MapObjectManager *param0, int param1, int param2, int param3, int param4, int param5, int param6, PlayerData *param7);
PlayerAvatar *sub_0205E820(const MapObjectManager *param0, PlayerData *param1, int gender);
void PlayerAvatar_InitDraw(PlayerAvatar *playerAvatar, int param1);
void Player_Delete(PlayerAvatar *playerAvatar);
void Player_DeleteAll(PlayerAvatar *playerAvatar);
MapObject *sub_0205EA24(const MapObjectManager *param0);
int PlayerAvatar_GetDir(PlayerAvatar *const playerAvatar);
void Player_SetDir(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_GetMoveDir(PlayerAvatar *const playerAvatar);
int sub_0205EAA0(PlayerAvatar *const playerAvatar);
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
void PlayerAvatar_SetHidden(PlayerAvatar *playerAvatar, int param1);
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
void sub_0205EBDC(PlayerAvatar *playerAvatar, int param1);
int sub_0205EBE0(PlayerAvatar *playerAvatar);
void sub_0205EBE4(PlayerAvatar *playerAvatar, int param1);
int sub_0205EBE8(PlayerAvatar *playerAvatar);
void sub_0205EBEC(PlayerAvatar *playerAvatar, int param1, int param2);
void sub_0205EC00(PlayerAvatar *playerAvatar, UnkStruct_ov101_021D5D90 *param1);
UnkStruct_ov101_021D5D90 *sub_0205EC04(PlayerAvatar *playerAvatar);
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
u32 sub_0205EC94(PlayerData *param0);
void sub_0205ECA0(PlayerData *param0, u32 param1);
void sub_0205ECA8(PlayerAvatar *playerAvatar, u32 param1);
void sub_0205ECB8(PlayerAvatar *playerAvatar, const VecFx32 *param1, int param2);
void sub_0205ECE0(PlayerAvatar *playerAvatar, int param1, int param2, int param3);
void sub_0205ED0C(PlayerAvatar *playerAvatar, fx32 param1);
void sub_0205ED2C(PlayerAvatar *playerAvatar, int param1);
void sub_0205ED48(PlayerAvatar *playerAvatar, int param1);
int Player_MoveStateFromGender(int param0, int param1);
u32 sub_0205EED8(int param0);
PlayerAvatar *sub_0205EF3C(FieldSystem *fieldSystem);
void sub_0205EF40(PlayerAvatar *playerAvatar, int param1);
int sub_0205EF58(PlayerAvatar *playerAvatar);
void sub_0205EF6C(PlayerAvatar *playerAvatar, int param1);
int sub_0205EF84(PlayerAvatar *playerAvatar);
void sub_0205EF98(PlayerAvatar *playerAvatar, int param1);
int sub_0205EFB0(PlayerAvatar *playerAvatar);
void sub_0205EFC4(PlayerAvatar *playerAvatar, int param1);
int sub_0205EFDC(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetInDeepSwamp(PlayerAvatar *playerAvatar, int param1);
int PlayerAvatar_IsNotInDeepSwamp(PlayerAvatar *playerAvatar);
void sub_0205F01C(PlayerAvatar *playerAvatar, int param1);
int sub_0205F034(PlayerAvatar *playerAvatar);
void sub_0205F048(PlayerAvatar *playerAvatar);
void sub_0205F054(PlayerAvatar *playerAvatar);
int sub_0205F060(PlayerAvatar *playerAvatar);
void sub_0205F074(PlayerAvatar *playerAvatar, int param1);
int sub_0205F08C(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetDistortionState(PlayerAvatar *playerAvatar, enum AvatarDistortionState state);
enum AvatarDistortionState PlayerAvatar_MapDistortionState(PlayerAvatar *const playerAvatar);
BOOL PlayerAvatar_DistortionGravityChanged(PlayerAvatar *const playerAvatar);
BOOL PlayerAvatar_DistortionStateOnFloor(PlayerAvatar *const playerAvatar);

#endif // POKEPLATINUM_PLAYER_AVATAR_H
