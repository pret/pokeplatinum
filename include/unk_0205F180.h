#ifndef POKEPLATINUM_UNK_0205F180_H
#define POKEPLATINUM_UNK_0205F180_H

#include "generated/movement_actions.h"

#include "struct_decls/map_object.h"

#include "overlay005/land_data_manager_decl.h"

#include "location.h"
#include "player_avatar.h"

void PlayerAvatar_MoveMain(PlayerAvatar *playerAvatar, const LandDataManager *param1, int param2, u16 param3, u16 param4, BOOL param5);
BOOL PlayerAvatar_CheckStartMove(PlayerAvatar *playerAvatar, int param1);
void PlayerAvatar_UpdatePlayerMoveState(PlayerAvatar *playerAvatar);
void PlayerAvatar_ClearMoveState(PlayerAvatar *playerAvatar);
int PlayerAvatar_CheckForceStopMovement(PlayerAvatar *playerAvatar);
void PlayerAvatar_ForceStopMovement(PlayerAvatar *playerAvatar, int dir);
u32 PlayerAvatar_CheckCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
u32 PlayerAvatar_CheckDistortionCollision(PlayerAvatar *playerAvatar, MapObject *param1, int param2);
enum FaceDirection PlayerAvatar_CalcFaceDirection(PlayerAvatar *playerAvatar, u16 pressedKeys, u16 heldKeys);
BOOL PlayerAvatar_IsAnimationSetOrWalkOnSpotSlow(PlayerAvatar *playerAvatar);
int PlayerAvatar_IsRunButtonHeld(PlayerAvatar *playerAvatar, u16 param1);
int PlayerAvatar_IsRunning(PlayerAvatar *playerAvatar);
int PlayerAvatar_GetMoveStateFromPlayerAvatarState(PlayerAvatar *playerAvatar, int param1);
u32 PlayerAvatar_GetMovementActionAnimCode(PlayerAvatar *playerAvatar, u16 param1, u16 param2, int param3, int param4, int param5);
int PlayerAvatar_IsMapObjectAnimationSet(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetMapObjMovement(PlayerAvatar *playerAvatar, enum MovementAction movementAction, int param2);
u32 PlayerAvatar_GetTileBehaviorFromDir(PlayerAvatar *playerAvatar, int param1);
void PlayerAvatar_MoveCoordsInDirection(PlayerAvatar *playerAvatar, int direction, int *x, int *z);
void PlayerAvatar_GetFacingTileCoords(PlayerAvatar *playerAvatar, int *x, int *z);
void PlayerAvatar_GetStepDistortionWorldPos(PlayerAvatar *playerAvatar, int param1, int *param2, int *param3, int *param4);
u32 PlayerAvatar_GetDistortionFacingTileBehaviour(PlayerAvatar *playerAvatar, int distortionDir);
u32 PlayerAvatar_GetDistortionCurrTileBehaviour(PlayerAvatar *playerAvatar);
void PlayerAvatar_GetFacingDistortionWorldPos(PlayerAvatar *const playerAvatar, int *param1, int *param2, int *param3);

#endif // POKEPLATINUM_UNK_0205F180_H
