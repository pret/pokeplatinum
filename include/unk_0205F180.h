#ifndef POKEPLATINUM_UNK_0205F180_H
#define POKEPLATINUM_UNK_0205F180_H

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/land_data_manager_decl.h"

void PlayerAvatar_MoveControl(PlayerAvatar *playerAvatar, const LandDataManager *param1, int param2, u16 param3, u16 param4, BOOL param5);
int PlayerAvatar_CheckStartMove(PlayerAvatar *playerAvatar, int param1);
void PlayerAvatar_State_UpdateMovementState(PlayerAvatar *playerAvatar);
void PlayerAvatar_State_ClearMovementState(PlayerAvatar *playerAvatar);
int PlayerAvatar_State_IsMovementBlocked(PlayerAvatar *playerAvatar);
void PlayerAvatar_State_ForceTurn(PlayerAvatar *playerAvatar, int param1);
u32 PlayerAvatar_Collision_CheckBasic(PlayerAvatar *playerAvatar, MapObject *param1, int param2);
u32 PlayerAvatar_Collision_CheckDistortion(PlayerAvatar *playerAvatar, MapObject *param1, int param2);
int PlayerAvatar_Input_ProcessDirection(PlayerAvatar *playerAvatar, u16 param1, u16 param2);
int PlayerAvatar_State_IsAnimationActive(PlayerAvatar *playerAvatar);
int PlayerAvatar_Input_CheckRunningShoes(PlayerAvatar *playerAvatar, u16 param1);
int PlayerAvatar_State_IsRunningAnimation(PlayerAvatar *playerAvatar);
int PlayerAvatar_State_GetMovementState(PlayerAvatar *playerAvatar, int param1);
u32 PlayerAvatar_State_GetAnimationCode(PlayerAvatar *playerAvatar, u16 param1, u16 param2, int param3, int param4, int param5);
int PlayerAvatar_Animation_IsSet(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetAnimationCode(PlayerAvatar *playerAvatar, u32 param1, int param2);
u32 PlayerAvatar_Animation_GetTileBehavior(PlayerAvatar *playerAvatar, int param1);
void PlayerAvatar_MoveCoordsInDirection(PlayerAvatar *playerAvatar, int direction, int *x, int *z);
void PlayerAvatar_GetFacingTileCoords(PlayerAvatar *playerAvatar, int *x, int *z);
void PlayerAvatar_Distortion_GetCoordsInDirection(PlayerAvatar *playerAvatar, int param1, int *param2, int *param3, int *param4);
u32 PlayerAvatar_GetDistortionTileBehaviour(PlayerAvatar *playerAvatar, int param1);
u32 PlayerAvatar_GetDistortionCurrTileBehaviour(PlayerAvatar *playerAvatar);
void PlayerAvatar_Distortion_GetCurrentCoords(PlayerAvatar *const playerAvatar, int *param1, int *param2, int *param3);

#endif // POKEPLATINUM_UNK_0205F180_H
