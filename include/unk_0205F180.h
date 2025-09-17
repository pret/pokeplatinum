#ifndef POKEPLATINUM_UNK_0205F180_H
#define POKEPLATINUM_UNK_0205F180_H

#include "generated/movement_actions.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/land_data_manager_decl.h"

enum CollisionFlag {
    COLLISION_FLAG_BLOCKED = 1, // Bit 0: General collision/blocked movement
    COLLISION_FLAG_TERRAIN = 2, // Bit 1: Terrain collision (walls, obstacles)
    COLLISION_FLAG_JUMP_TILES = 4, // Bit 2: Jump tiles
    COLLISION_FLAG_WARP_ENTRANCES = 8, // Bit 3: Warp entrances
    COLLISION_FLAG_BIKE_RAMPS = 16, // Bit 4: Bike ramps
    COLLISION_FLAG_WATER_TILES = 32, // Bit 5: Water tiles
    COLLISION_FLAG_BIKE_BRIDGE_RESTRICTIONS = 64, // Bit 6: Bike bridge restrictions
    COLLISION_FLAG_DOUBLE_JUMP_TILES = 128 // Bit 7: Double jump tiles
};

enum SpecialMovementType {
    SPECIAL_MOVEMENT_TYPE_ICE = 1, // Ice tiles
    SPECIAL_MOVEMENT_TYPE_BIKE_SLOPE = 2, // Bike slope tiles
    SPECIAL_MOVEMENT_TYPE_BIKE_RAMP_EASTWARD = 3, // Bike ramp eastward tiles
    SPECIAL_MOVEMENT_TYPE_BIKE_RAMP_WESTWARD = 4, // Bike ramp westward tiles
    SPECIAL_MOVEMENT_TYPE_UNKNOWN = 6 // Unknown movement type
};

void PlayerAvatar_MoveControl(PlayerAvatar *playerAvatar, const LandDataManager *landDataManager, enum MovementAction direction, u16 keyPad, u16 keyPress, BOOL allowSpecialMovement);
BOOL PlayerAvatar_CheckStartMove(PlayerAvatar *playerAvatar, enum MovementAction direction);
void PlayerAvatar_State_UpdateMovementState(PlayerAvatar *playerAvatar);
void PlayerAvatar_State_ClearMovementState(PlayerAvatar *playerAvatar);
BOOL PlayerAvatar_State_IsMovementBlocked(PlayerAvatar *playerAvatar);
void PlayerAvatar_State_ForceTurn(PlayerAvatar *playerAvatar, enum MovementAction direction);
u32 PlayerAvatar_Collision_CheckBasic(PlayerAvatar *playerAvatar, MapObject *mapObj, enum MovementAction direction);
u32 PlayerAvatar_Collision_CheckDistortion(PlayerAvatar *playerAvatar, MapObject *mapObj, enum MovementAction direction);
int PlayerAvatar_Input_ProcessDirection(PlayerAvatar *playerAvatar, u16 keyPad, u16 keyPress);
BOOL PlayerAvatar_State_IsAnimationActive(PlayerAvatar *playerAvatar);
BOOL PlayerAvatar_Input_CheckRunningShoes(PlayerAvatar *playerAvatar, u16 keyPad);
BOOL PlayerAvatar_State_IsRunningAnimation(PlayerAvatar *playerAvatar);
int PlayerAvatar_State_GetMovementState(PlayerAvatar *playerAvatar, enum MovementAction direction);
u32 PlayerAvatar_State_GetAnimationCode(PlayerAvatar *playerAvatar, u16 keyPad, u16 keyPress, enum MovementAction direction, int movementType, int stateValue);
BOOL PlayerAvatar_Animation_IsSet(PlayerAvatar *playerAvatar);
void PlayerAvatar_SetAnimationCode(PlayerAvatar *playerAvatar, u32 animationCode, int duration);
u32 PlayerAvatar_Animation_GetTileBehavior(PlayerAvatar *playerAvatar, enum MovementAction direction);
void PlayerAvatar_MoveCoordsInDirection(PlayerAvatar *playerAvatar, enum MovementAction direction, int *x, int *z);
void PlayerAvatar_GetFacingTileCoords(PlayerAvatar *playerAvatar, int *x, int *z);
void PlayerAvatar_Distortion_GetCoordsInDirection(PlayerAvatar *playerAvatar, enum MovementAction direction, int *xOut, int *yOut, int *zOut);
u32 PlayerAvatar_GetDistortionTileBehaviour(PlayerAvatar *playerAvatar, enum MovementAction direction);
u32 PlayerAvatar_GetDistortionCurrTileBehaviour(PlayerAvatar *playerAvatar);
void PlayerAvatar_Distortion_GetCurrentCoords(PlayerAvatar *const playerAvatar, int *xOut, int *yOut, int *zOut);

#endif // POKEPLATINUM_UNK_0205F180_H
