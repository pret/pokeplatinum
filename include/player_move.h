#ifndef POKEPLATINUM_PLAYER_MOVE_H
#define POKEPLATINUM_PLAYER_MOVE_H

#include "constants/player_avatar.h"
#include "generated/movement_actions.h"

#include "struct_decls/map_object.h"

#include "overlay005/land_data_manager_decl.h"

#include "location.h"
#include "player_avatar.h"

void PlayerAvatar_MoveMain(PlayerAvatar *playerAvatar, const LandDataManager *landManager, int dir, u16 keyPad, u16 keyPress, BOOL tappedPoketch);
BOOL PlayerAvatar_CheckStartMove(PlayerAvatar *playerAvatar, int dir);
void PlayerAvatar_UpdatePlayerMoveState(PlayerAvatar *playerAvatar);
void PlayerAvatar_ClearMoveState(PlayerAvatar *playerAvatar);
int PlayerAvatar_CheckForceStopMovement(PlayerAvatar *playerAvatar);
void PlayerAvatar_ForceStopMovement(PlayerAvatar *playerAvatar, int dir);
u32 PlayerAvatar_CheckCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int direction);
u32 PlayerAvatar_CheckDistortionCollision(PlayerAvatar *playerAvatar, MapObject *mapObj, int dir);
enum FaceDirection PlayerAvatar_CalcFaceDirection(PlayerAvatar *playerAvatar, u16 pressedKeys, u16 heldKeys);
BOOL PlayerAvatar_IsAnimationSetOrWalkOnSpotSlow(PlayerAvatar *playerAvatar);
BOOL PlayerAvatar_IsRunButtonHeld(PlayerAvatar *playerAvatar, u16 keyPress);
BOOL PlayerAvatar_IsRunning(PlayerAvatar *playerAvatar);
enum AvatarMoveState PlayerAvatar_GetMoveStateFromPlayerAvatarState(PlayerAvatar *playerAvatar, int dir);
u32 PlayerAvatar_GetMovementActionAnimCode(PlayerAvatar *playerAvatar, u16 pressedKeys, u16 heldKeys, int actionSpeed, int isRunning, int collision);
BOOL PlayerAvatar_IsMapObjectAnimationSet(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetMapObjMovement(PlayerAvatar *playerAvatar, enum MovementAction movementAction, int speed);
u32 PlayerAvatar_GetTileBehaviorFromDir(PlayerAvatar *playerAvatar, int distortionDir);
void PlayerAvatar_MoveCoordsInDirection(PlayerAvatar *playerAvatar, int direction, int *x, int *z);
void PlayerAvatar_GetFacingTileCoords(PlayerAvatar *playerAvatar, int *x, int *z);
void PlayerAvatar_GetStepDistortionWorldPos(PlayerAvatar *playerAvatar, int dir, int *xOut, int *yOut, int *zOut);
u32 PlayerAvatar_GetDistortionFacingTileBehaviour(PlayerAvatar *playerAvatar, int distortionDir);
u32 PlayerAvatar_GetDistortionCurrTileBehaviour(PlayerAvatar *playerAvatar);
void PlayerAvatar_GetFacingDistortionWorldPos(PlayerAvatar *const playerAvatar, int *xOut, int *yOut, int *zOut);

#endif // POKEPLATINUM_PLAYER_MOVE_H
