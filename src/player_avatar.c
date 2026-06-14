#include "player_avatar.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/scrcmd.h"
#include "generated/movement_types.h"
#include "generated/object_events_gfx.h"

#include "struct_decls/map_object.h"
#include "struct_decls/map_object_manager.h"
#include "struct_defs/player_data.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F61BC.h"
#include "overlay005/surf_mount_renderer.h"

#include "heap.h"
#include "map_object.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"

static PlayerAvatar *PlayerAvatar_Alloc(void);
static void PlayerAvatar_Init(PlayerAvatar *playerAvatar, int param1, int param2, PlayerData *param3);
static void PlayerAvatar_AddMapObject(PlayerAvatar *playerAvatar, const MapObjectManager *param1, int param2, int param3, int param4, int param5);
static MapObject *MapObjectMan_GetPlayerMapObjectCheckNull(const MapObjectManager *mapObjMan);
static void PlayerAvatar_TurnOnMovementFlagBits(PlayerAvatar *playerAvatar, u32 param1);
static void PlayerAvatar_ClearMovementFlag(PlayerAvatar *playerAvatar, u32 param1);
static u32 PlayerAvatar_GetMovementFlag(PlayerAvatar *playerAvatar, u32 param1);
static void PlayerAvatar_SetPlayerData(PlayerAvatar *playerAvatar, PlayerData *param1);
static u32 PlayerData_GetAvatarState(PlayerData *player);
static void PlayerData_SetAvatarState(PlayerData *player, u32 state);
static void PlayerAvatar_PlayerData_SetAvatarState(PlayerAvatar *playerAvatar, u32 state);

/**
 * Creates and initializes a new Player Avatar map object
 */
PlayerAvatar *PlayerAvatar_New(const MapObjectManager *mapObjMan, int x, int z, int dir, int playerState, int gender, int dpSprite, PlayerData *playerData)
{
    PlayerAvatar *playerAvatar = PlayerAvatar_Alloc();
    PlayerAvatar_Init(playerAvatar, playerState, gender, playerData);

    int sprite;

    if (dpSprite == 0) {
        sprite = Player_GetSpriteFromStateAndGender(playerState, gender);
    } else {
        if (gender == 0) {
            sprite = OBJ_EVENT_GFX_DP_PLAYER_M;
        } else {
            sprite = OBJ_EVENT_GFX_DP_PLAYER_F;
        }
    }

    PlayerAvatar_AddMapObject(playerAvatar, mapObjMan, sprite, dir, x, z);

    return playerAvatar;
}

/**
 * Creates a new Player Avatar and loads its corresponding map object from an already existing map object
 *
 * @return playerAvatar
 */
PlayerAvatar *PlayerAvatar_NewLoad(const MapObjectManager *mapObjMan, PlayerData *playerData, int gender)
{
    int playerState;
    PlayerAvatar *playerAvatar;
    MapObject *mapObj;

    playerAvatar = PlayerAvatar_Alloc();
    playerState = PlayerData_GetAvatarState(playerData);

    PlayerAvatar_Init(playerAvatar, playerState, gender, playerData);
    mapObj = MapObjectMan_GetPlayerMapObjectCheckNull(mapObjMan);

    MapObject_SetGraphicsID(mapObj, Player_GetSpriteFromStateAndGender(playerState, gender));
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_PERSISTENT | MAP_OBJ_STATUS_13);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
    MapObject_SetDynamicHeightCalculationEnabled(mapObj, TRUE);
    PlayerAvatar_SetMapObject(playerAvatar, mapObj);

    return playerAvatar;
}

/**
 * Initializes a PlayerAvatar with dynamic map features, like starting on a surf mount
 */
void PlayerAvatar_InitMapFeatures(PlayerAvatar *playerAvatar, int dynamicMapFeaturesID)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);
    GF_ASSERT(mapObj != NULL);
    MapObject_MapObjectManager(mapObj);

    ov5_021F6218(playerAvatar);

    if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_AVATAR_SURFING) {
        if (dynamicMapFeaturesID != DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
            int x = PlayerAvatar_GetXPos(playerAvatar);
            int z = PlayerAvatar_GetZPos(playerAvatar);
            int dir = PlayerAvatar_GetFacingDir(playerAvatar);
            OverworldAnimManager *animManager = SurfMountRenderer_HandleSurfBegin(mapObj, x, z, dir, TRUE);

            PlayerAvatar_SetSurfMountAnimManager(playerAvatar, animManager);
        }
    }
}

/**
 * Frees the player avatar
 */
void PlayerAvatar_Free(PlayerAvatar *playerAvatar)
{
    Heap_Free(playerAvatar);
}

/**
 * Deletes the player avatar and its associated map object
 */
void PlayerAvatar_Delete(PlayerAvatar *playerAvatar)
{
    MapObject *mapObject = PlayerAvatar_GetMapObject(playerAvatar);

    MapObject_Delete(mapObject);
    PlayerAvatar_Free(playerAvatar);
}

/**
 * Allocates memory for a player avatar and zero initializes it
 *
 * @return playerAvatar
 */
static PlayerAvatar *PlayerAvatar_Alloc(void)
{
    PlayerAvatar *playerAvatar = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PlayerAvatar));
    GF_ASSERT(playerAvatar != NULL);
    memset(playerAvatar, 0, sizeof(PlayerAvatar));

    return playerAvatar;
}

/**
 * Initializes an existing player avatar
 */
static void PlayerAvatar_Init(PlayerAvatar *playerAvatar, int playerState, int gender, PlayerData *player)
{
    PlayerAvatar_SetPlayerData(playerAvatar, player);

    PlayerAvatar_SetMoveState(playerAvatar, 0);
    PlayerAvatar_SetPlayerMoveState(playerAvatar, 0);
    PlayerAvatar_SetPlayerState(playerAvatar, playerState);
    PlayerAvatar_SetGender(playerAvatar, gender);
    PlayerAvatar_SetRequestStateFlag(playerAvatar, 0);
    PlayerAvatar_ClearSpeed(playerAvatar);
    PlayerAvatar_SetFaceLeftOrRight(playerAvatar, -1);
    PlayerAvatar_SetFaceUpOrDown(playerAvatar, -1);
    PlayerAvatar_SetMovementActionAndSpeed(playerAvatar, 0xff, 0);

    PlayerAvatar_SetIgnoreTileBehavior(playerAvatar, 1);
    PlayerAvatar_SetEscapedFromDeepMud(playerAvatar, TRUE);
}

/**
 * Creates and adds a map object for the Player Avatar
 */
static void PlayerAvatar_AddMapObject(PlayerAvatar *playerAvatar, const MapObjectManager *mapObjMan, int sprite, int dir, int x, int z)
{
    MapObject *mapObj = MapObjectMan_AddMapObject(mapObjMan, x, z, dir, sprite, 0x1, 1);
    GF_ASSERT(mapObj != NULL);

    MapObject_SetLocalID(mapObj, LOCALID_PLAYER);
    MapObject_SetTrainerType(mapObj, 0);
    MapObject_SetFlag(mapObj, 0);
    MapObject_SetScript(mapObj, 0);
    MapObject_SetDataAt(mapObj, 0, 0);
    MapObject_SetDataAt(mapObj, 0, 1);
    MapObject_SetDataAt(mapObj, 0, 2);
    MapObject_SetMovementRangeX(mapObj, -1);
    MapObject_SetMovementRangeZ(mapObj, -1);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_PERSISTENT | MAP_OBJ_STATUS_13);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
    MapObject_SetDynamicHeightCalculationEnabled(mapObj, TRUE);

    PlayerAvatar_SetMapObject(playerAvatar, mapObj);
}

/**
 * Gets the first map object with MOVEMENT_TYPE_PLAYER, which is the map object associated with the Player Avatar
 *
 * @return The MapObject * associated with the PlayerAvatar
 */
MapObject *MapObjectMan_GetPlayerMapObject(const MapObjectManager *mapObjMan)
{
    int index = 0;
    MapObject *mapObj = NULL;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &mapObj, &index, MAP_OBJ_STATUS_0)) {
        if (MapObject_GetMovementType(mapObj) == MOVEMENT_TYPE_PLAYER) {
            break;
        }
    }

    return mapObj;
}

/**
 * Gets the map object associated with the PlayerAvatar, throws an error when NULL
 *
 * @return The MapObject * associated with the PlayerAvatar
 */
static MapObject *MapObjectMan_GetPlayerMapObjectCheckNull(const MapObjectManager *mapObjMan)
{
    MapObject *mapObj = MapObjectMan_GetPlayerMapObject(mapObjMan);

    GF_ASSERT(mapObj != NULL);
    return mapObj;
}

/**
 * Gets the facing direction of the player avatar's map object
 *
 * @return facing direction
 */
int PlayerAvatar_GetFacingDir(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetFacingDir(PlayerAvatar_GetMapObject(playerAvatar));
}

/**
 * Sets the facing direction of the player avatar's map object if the change direction lock is off
 */
void PlayerAvatar_TryFace(PlayerAvatar *playerAvatar, int dir)
{
    MapObject_TryFace(PlayerAvatar_GetMapObject(playerAvatar), dir);
}

/**
 * Gets the moving direction of the player avatar's map object
 *
 * @return moving direction
 */
int PlayerAvatar_GetMovingDir(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetMovingDir(PlayerAvatar_GetMapObject(playerAvatar));
}

/**
 * Gets the distortion world direction of the player avatar's map object
 *
 * @return facing direction when on the floor, moving direction otherwise
 */
int PlayerAvatar_GetDistortionDir(PlayerAvatar *const playerAvatar)
{
    if (PlayerAvatar_DistortionStateOnFloor(playerAvatar) == TRUE) {
        return PlayerAvatar_GetFacingDir(playerAvatar);
    }

    return PlayerAvatar_GetMovingDir(playerAvatar);
}

/**
 * Gets the X position of the player avatar's map object
 *
 * @return xPos
 */
int PlayerAvatar_GetXPos(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetX(PlayerAvatar_GetMapObject(playerAvatar));
}

/**
 * Gets the Z position of the player avatar's map object
 *
 * @return zPos
 */
int PlayerAvatar_GetZPos(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetZ(PlayerAvatar_GetMapObject(playerAvatar));
}

/**
 * Gets the previous X position of the player avatar's map object
 *
 * @return xPosPrev
 */
int PlayerAvatar_XPosPrev(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetXPrev(PlayerAvatar_GetMapObject(playerAvatar));
}

/**
 * Gets the previous Z position of the player avatar's map object
 *
 * @return zPosPrev
 */
int PlayerAvatar_ZPosPrev(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetZPrev(PlayerAvatar_GetMapObject(playerAvatar));
}

/**
 * Gets the position vector of the player avatar's map object and stores it in pos
 */
void PlayerAvatar_GetPosPtr(PlayerAvatar *const playerAvatar, VecFx32 *pos)
{
    MapObject_GetPosPtr(PlayerAvatar_GetMapObject(playerAvatar), pos);
}

/**
 * Gets the position vector of the player avatar's map object
 *
 * @return VecFx32 *pos
 */
const VecFx32 *PlayerAvatar_GetPos(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetPos(PlayerAvatar_GetConstMapObject(playerAvatar));
}

/**
 * Sets the Player Avatar's move state, specified by enum AvatarMoveState
 */
void PlayerAvatar_SetMoveState(PlayerAvatar *playerAvatar, int state)
{
    playerAvatar->moveState = state;
}

/**
 * Gets the Player Avatar's move state, specified by enum AvatarMoveState
 *
 * @return playerAvatar->moveState
 */
int PlayerAvatar_GetMoveState(const PlayerAvatar *playerAvatar)
{
    return playerAvatar->moveState;
}

/**
 * Sets the player avatar's player move state, specified by PlayerMoveState
 */
void PlayerAvatar_SetPlayerMoveState(PlayerAvatar *playerAvatar, int moveState)
{
    playerAvatar->playerMoveState = moveState;
}

/**
 * Gets the player avatar's move state, specified by PlayerMoveState
 *
 * @return playerAvatar->playerMoveState
 */
int PlayerAvatar_GetPlayerMoveState(const PlayerAvatar *playerAvatar)
{
    return playerAvatar->playerMoveState;
}

/**
 * Shows or hides the Player Avatar based on the specification of visible
 */
void PlayerAvatar_SetVisible(PlayerAvatar *playerAvatar, BOOL visible)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    if (visible == TRUE) {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE);
    } else {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE);
    }
}

/**
 * Directly sets the Player Avatar's mapObject
 */
void PlayerAvatar_SetMapObject(PlayerAvatar *playerAvatar, MapObject *mapObject)
{
    playerAvatar->mapObject = mapObject;
}

/**
 * Gets the Player Avatar's map object
 *
 * @return playerAvatar->mapObject
 */
MapObject *PlayerAvatar_GetMapObject(PlayerAvatar *playerAvatar)
{
    GF_ASSERT(playerAvatar != NULL);
    GF_ASSERT(playerAvatar->mapObject != NULL);

    return playerAvatar->mapObject;
}

/**
 * Gets a constant Player Avatar's map object
 *
 * @return playerAvatar->mapObject
 */
const MapObject *PlayerAvatar_GetConstMapObject(const PlayerAvatar *playerAvatar)
{
    return playerAvatar->mapObject;
}

/**
 * Sets the player avatar's state, specified by enum PlayerAvatarState
 */
void PlayerAvatar_SetPlayerState(PlayerAvatar *playerAvatar, int playerState)
{
    GF_ASSERT(playerState < 0x6);
    playerAvatar->playerAvatarState = playerState;

    PlayerAvatar_PlayerData_SetAvatarState(playerAvatar, playerState);
}

/**
 * Gets the player's avatar state, specified by enum PlayerAvatarState
 *
 * @return playerAvatar->playerAvatarState
 */
int PlayerAvatar_GetPlayerState(PlayerAvatar *playerAvatar)
{
    GF_ASSERT(playerAvatar != NULL);
    return playerAvatar->playerAvatarState;
}

/**
 * Sets the request state flag's bits without overwriting the existing requests
 */
void PlayerAvatar_TurnOnRequestStateBit(PlayerAvatar *playerAvatar, u32 requestState)
{
    playerAvatar->requestStateFlag |= requestState;
}

/**
 * Sets the request state flag while overwriting the existing requests
 */
void PlayerAvatar_SetRequestStateFlag(PlayerAvatar *playerAvatar, u32 requestState)
{
    playerAvatar->requestStateFlag = requestState;
}

/**
 * Gets the request state flag
 *
 * @return playerAvatar->requestStateFlag
 */
u32 PlayerAvatar_GetRequestStateFlag(PlayerAvatar *playerAvatar)
{
    return playerAvatar->requestStateFlag;
}

/**
 * Sets the player avatar's gender
 */
void PlayerAvatar_SetGender(PlayerAvatar *playerAvatar, int gender)
{
    playerAvatar->gender = gender;
}

/**
 * Gets the player avatar's gender
 *
 * @return gender
 */
int PlayerAvatar_GetGender(PlayerAvatar *playerAvatar)
{
    return playerAvatar->gender;
}

/**
 * Sets the player avatar's movement flag without overwriting the existing flag
 */
static void PlayerAvatar_TurnOnMovementFlagBits(PlayerAvatar *playerAvatar, u32 flag)
{
    playerAvatar->movementFlag |= flag;
}

/**
 * Clears the given bits of the movement flag
 */
static void PlayerAvatar_ClearMovementFlag(PlayerAvatar *playerAvatar, u32 flag)
{
    playerAvatar->movementFlag &= ~flag;
}

/**
 * Gets the bitmap of the player avatar's movement flag and the given flag
 *
 * @return playerAvatar->movementFlag & flag
 */
static u32 PlayerAvatar_GetMovementFlag(PlayerAvatar *playerAvatar, u32 flag)
{
    return playerAvatar->movementFlag & flag;
}

/**
 * Gets the movement speed of the player avatar
 *
 * @return playerAvatar->speed
 */
int PlayerAvatar_GetSpeed(PlayerAvatar *playerAvatar)
{
    return playerAvatar->speed;
}

/**
 * Sets the movement speed of the player avatar
 */
void PlayerAvatar_SetSpeed(PlayerAvatar *playerAvatar, int speed)
{
    playerAvatar->speed = speed;
}

/**
 * Sets the movement speed of the player avatar to 0
 */
void PlayerAvatar_ClearSpeed(PlayerAvatar *playerAvatar)
{
    playerAvatar->speed = 0;
    PlayerAvatar_SetBikeBrake(playerAvatar, 0);
}

/**
 * Adds dSpeed to the movement speed of the player avatar, capped out at maxSpeed
 *
 * @return playerAvatar->speed
 */
int PlayerAvatar_AddMoveSpeed(PlayerAvatar *playerAvatar, int dSpeed, int maxSpeed)
{
    playerAvatar->speed += dSpeed;

    if (playerAvatar->speed > maxSpeed) {
        playerAvatar->speed = maxSpeed;
    }

    return playerAvatar->speed;
}

/**
 * Sets the horizontal facing direction of the player avatar
 */
void PlayerAvatar_SetFaceLeftOrRight(PlayerAvatar *playerAvatar, enum FaceDirection leftOrRight)
{
    playerAvatar->faceLeftOrRight = leftOrRight;
}

/**
 * Gets the horizontal facing direction of the player avatar
 *
 * @return playerAvatar->faceLeftOrRight
 */
enum FaceDirection PlayerAvatar_GetFaceLeftOrRight(PlayerAvatar *playerAvatar)
{
    return playerAvatar->faceLeftOrRight;
}

/**
 * Sets the vertical facing direction of the player avatar
 *
 */
void PlayerAvatar_SetFaceUpOrDown(PlayerAvatar *playerAvatar, enum FaceDirection faceUpOrDown)
{
    playerAvatar->faceUpOrDown = faceUpOrDown;
}

/**
 * Gets the vertical facing direction of the player avatar
 *
 * @return playerAvatar->faceUpOrDown
 */
enum FaceDirection PlayerAvatar_GetFaceUpOrDown(PlayerAvatar *playerAvatar)
{
    return playerAvatar->faceUpOrDown;
}

/**
 * Sets the horizontal and vertical facing directions of the player avatar
 */
void PlayerAvatar_SetFaceDirection(PlayerAvatar *playerAvatar, enum FaceDirection faceLeftOrRight, enum FaceDirection faceUpOrDown)
{
    PlayerAvatar_SetFaceLeftOrRight(playerAvatar, faceLeftOrRight);
    PlayerAvatar_SetFaceUpOrDown(playerAvatar, faceUpOrDown);
}

/**
 * Sets the surf mount animation manager for the player avatar
 */
void PlayerAvatar_SetSurfMountAnimManager(PlayerAvatar *playerAvatar, OverworldAnimManager *surfMountAnimMan)
{
    playerAvatar->surfMountAnimMan = surfMountAnimMan;
}

/**
 * Gets the surf mount animation manager for the player avatar
 *
 * @return playerAvatar->surfMountAnimMan
 */
OverworldAnimManager *PlayerAvatar_GetSurfMountAnimManager(PlayerAvatar *playerAvatar)
{
    return playerAvatar->surfMountAnimMan;
}

/**
 * Sets the player data for the player avatar
 */
static void PlayerAvatar_SetPlayerData(PlayerAvatar *playerAvatar, PlayerData *player)
{
    playerAvatar->player = player;
}

/**
 * Gets the player data for the player avatar
 *
 * @return playerAvatar->player
 */
PlayerData *PlayerAvatar_PlayerData(PlayerAvatar *playerAvatar)
{
    return playerAvatar->player;
}

/**
 * Sets the movement action for the player avatar, specified by enum MovementAction
 */
void PlayerAvatar_SetMovementAction(PlayerAvatar *playerAvatar, u32 movementAction)
{
    playerAvatar->movementAction = movementAction;
}

/**
 * Gets the movement action for the player avatar, specified by enum MovementAction
 *
 * @return playerAvatar->movementAction
 */
u32 PlayerAvatar_GetMovementAction(PlayerAvatar *playerAvatar)
{
    return playerAvatar->movementAction;
}

/**
 * Sets player avatar's movement action speed as specified by enum PlayerMovementActionSpeed
 */
void PlayerAvatar_SetMovementActionSpeed(PlayerAvatar *playerAvatar, int movementActionSpeed)
{
    playerAvatar->movementActionSpeed = movementActionSpeed;
}

/**
 * Sets player avatar's movement action speed as specified by enum PlayerMovementActionSpeed
 *
 * @return playerAvatar->movementActionSpeed
 */
int PlayerAvatar_GetMovementActionSpeed(PlayerAvatar *playerAvatar)
{
    return playerAvatar->movementActionSpeed;
}

/**
 * Sets the player avatar's movement action, specified by enum MovementAction, and movement action speed, specified by enum PlayerMovementActionSpeed
 */
void PlayerAvatar_SetMovementActionAndSpeed(PlayerAvatar *playerAvatar, u32 movementAction, int movementActionSpeed)
{
    PlayerAvatar_SetMovementAction(playerAvatar, movementAction);
    PlayerAvatar_SetMovementActionSpeed(playerAvatar, movementActionSpeed);
}

/**
 * Zero-initializes playerData
 */
void PlayerData_Init(PlayerData *playerData)
{
    playerData->cyclingGear = 0;
    playerData->runningShoes = FALSE;
    playerData->playerState = 0x0;
}

/**
 * Checks if the player has the running shoes flag
 *
 * @return playerData->runningShoes == TRUE
 */
int PlayerData_HasRunningShoes(PlayerData *playerData)
{
    if (playerData != NULL) {
        if (playerData->runningShoes == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * Sets the player's running shoes flag
 */
void PlayerData_SetRunningShoes(PlayerData *playerData, BOOL flag)
{
    if (flag == TRUE) {
        playerData->runningShoes = TRUE;
    } else {
        playerData->runningShoes = FALSE;
    }
}

/**
 * Gets the gear that the bike is currently in
 *
 * @return playerData->cyclingGear
 */
int PlayerData_GetCyclingGear(PlayerData *playerData)
{
    if (playerData == NULL) {
        return 0;
    }

    return playerData->cyclingGear;
}

/**
 * Sets the gear the bike is currently in
 */
void PlayerData_SetCyclingGear(PlayerData *playerData, int gear)
{
    if (playerData != NULL) {
        playerData->cyclingGear = gear;
    }
}

/**
 * Sets the gear the bike is currently in
 */
void PlayerAvatar_SetCyclingGear(PlayerAvatar *playerAvatar, int gear)
{
    PlayerData *player = PlayerAvatar_PlayerData(playerAvatar);
    PlayerData_SetCyclingGear(player, gear);
}

/**
 * Gets the gear that the bike is currently in
 *
 * @return playerAvatar->playerData->cyclingGear
 */
int PlayerAvatar_GetCyclingGear(PlayerAvatar *playerAvatar)
{
    PlayerData *player = PlayerAvatar_PlayerData(playerAvatar);
    return PlayerData_GetCyclingGear(player);
}

/**
 * Gets the player's current state, as specified by enum PlayerAvatarState
 *
 * @return playerData->playerState
 */
u32 PlayerData_GetAvatarState(PlayerData *player)
{
    if (player != NULL) {
        return player->playerState;
    }

    return PLAYER_AVATAR_WALKING;
}

/**
 * Sets the player's avatar state, as specified by enum PlayerAvatarState
 */
void PlayerData_SetAvatarState(PlayerData *player, u32 playerState)
{
    if (player != NULL) {
        player->playerState = playerState;
    }
}

/**
 * Sets the avatar state, as specified by enum PlayerAvatarState, of the internal playerData
 */
void PlayerAvatar_PlayerData_SetAvatarState(PlayerAvatar *playerAvatar, u32 playerState)
{
    PlayerData *player = PlayerAvatar_PlayerData(playerAvatar);
    PlayerData_SetAvatarState(player, playerState);
}

/**
 * Sets the player avatar's map object's position and direction
 */
void PlayerAvatar_SetPosDirFromVec(PlayerAvatar *playerAvatar, const VecFx32 *pos, int dir)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    MapObject_SetPosDirFromVec(mapObj, pos, dir);
    PlayerAvatar_SetMoveState(playerAvatar, PLAYER_AVATAR_WALKING);
    PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_NONE);
}

/**
 * Sets the player avatar's map object's position and direction
 */
void PlayerAvatar_SetPosDirFromCoords(PlayerAvatar *playerAvatar, int x, int z, int dir)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    MapObject_SetPosDirFromCoords(mapObj, x, 0, z, dir);
    PlayerAvatar_SetMoveState(playerAvatar, PLAYER_AVATAR_WALKING);
    PlayerAvatar_SetPlayerMoveState(playerAvatar, PLAYER_MOVE_STATE_NONE);
}

/**
 * Sets the player avatar's map object's height (y position)
 */
void Player_SetYPos(PlayerAvatar *playerAvatar, fx32 y)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    VecFx32 pos;
    MapObject_GetPosPtr(mapObj, &pos);

    pos.y = y;
    MapObject_SetPos(mapObj, &pos);
}

/**
 * Enables or disables the height calculation of the player avatar's map object
 */
void PlayerAvatar_SetHeightCalculationEnabled(PlayerAvatar *playerAvatar, BOOL heightCalculationEnabled)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    if (heightCalculationEnabled == TRUE) {
        MapObject_SetHeightCalculationDisabled(mapObj, FALSE);
    } else {
        MapObject_SetHeightCalculationDisabled(mapObj, TRUE);
    }
}

/**
 * Enables or disables the height calculation of the player avatar's map object. Recalculates the height if enabled.
 */
void PlayerAvatar_SetHeightCalculationEnabledAndUpdate(PlayerAvatar *playerAvatar, BOOL heightCalculationEnabled)
{
    MapObject *mapObj = PlayerAvatar_GetMapObject(playerAvatar);

    if (heightCalculationEnabled == TRUE) {
        MapObject_SetHeightCalculationDisabled(mapObj, FALSE);
        MapObject_RecalculateObjectHeight(mapObj);
    } else {
        MapObject_SetHeightCalculationDisabled(mapObj, TRUE);
    }
}

/**
 * Gets the OBJ_EVENT_GFX_ constant associated with the given player state and gender
 *
 * @return OBJ_EVENT_GFX_ constant (default OBJ_EVENT_GFX_PLAYER_M)
 */
int Player_GetSpriteFromStateAndGender(int playerState, int gender)
{
    // TODO: Some OBJ_EVENT_GFX_ constants are being worked on by a different contributor, will need to add the missing constants once those get expanded
    if (gender == 0) {
        switch (playerState) {
        case PLAYER_AVATAR_WALKING:
            return OBJ_EVENT_GFX_PLAYER_M;
        case PLAYER_AVATAR_CYCLING:
            return OBJ_EVENT_GFX_PLAYER_M_BIKE;
        case PLAYER_AVATAR_SURFING:
            return OBJ_EVENT_GFX_PLAYER_M_SURF;
        case PLAYER_AVATAR_USE_FIELD_MOVE:
            return OBJ_EVENT_GFX_PLAYER_M_HOLDING_POKE_BALL;
        case PLAYER_AVATAR_SPRAYDUCK:
            return OBJ_EVENT_GFX_PLAYER_M_SPRAYDUCK;
        case PLAYER_AVATAR_CONTEST:
            return OBJ_EVENT_GFX_PLAYER_M_CONTEST;
        case PLAYER_AVATAR_FISHING:
            return OBJ_EVENT_GFX_PLAYER_M_FISHING;
        case PLAYER_AVATAR_POKETCH:
            return OBJ_EVENT_GFX_PLAYER_M_POKETCH;
        case PLAYER_AVATAR_SAVE:
            return OBJ_EVENT_GFX_PLAYER_M_SAVE;
        case PLAYER_AVATAR_HEAL:
            return OBJ_EVENT_GFX_UNK_200;
        case PLAYER_AVATAR_VS_SEEKER:
            return OBJ_EVENT_GFX_PLAYER_M_VS_SEEKER;
        case PLAYER_AVATAR_DISTORTION_WORLD:
            return OBJ_EVENT_GFX_DIST_WORLD_PLAYER_M;
        case PLAYER_AVATAR_DISTORTION_WORLD_SURF:
            return OBJ_EVENT_GFX_DIST_WORLD_PLAYER_M_SURF;
        case PLAYER_AVATAR_26:
            return 0x10c;
        case PLAYER_AVATAR_27:
            return 0x10e;
        case PLAYER_AVATAR_HEARTHOME_GYM:
            return OBJ_EVENT_GFX_PLAYER_M_HEARTHOME_GYM;
        case PLAYER_AVATAR_29:
            return 0x110;
        case PLAYER_AVATAR_30:
            return 0x112;
        }
    } else {
        switch (playerState) {
        case PLAYER_AVATAR_WALKING:
            return OBJ_EVENT_GFX_PLAYER_F;
        case PLAYER_AVATAR_CYCLING:
            return OBJ_EVENT_GFX_PLAYER_F_BIKE;
        case PLAYER_AVATAR_SURFING:
            return OBJ_EVENT_GFX_PLAYER_F_SURF;
        case PLAYER_AVATAR_USE_FIELD_MOVE:
            return OBJ_EVENT_GFX_PLAYER_F_HOLDING_POKE_BALL;
        case PLAYER_AVATAR_SPRAYDUCK:
            return OBJ_EVENT_GFX_PLAYER_F_SPRAYDUCK;
        case PLAYER_AVATAR_CONTEST:
            return OBJ_EVENT_GFX_PLAYER_F_CONTEST;
        case PLAYER_AVATAR_FISHING:
            return OBJ_EVENT_GFX_PLAYER_F_FISHING;
        case PLAYER_AVATAR_POKETCH:
            return OBJ_EVENT_GFX_PLAYER_F_POKETCH;
        case PLAYER_AVATAR_SAVE:
            return OBJ_EVENT_GFX_PLAYER_F_SAVE;
        case PLAYER_AVATAR_HEAL:
            return OBJ_EVENT_GFX_UNK_201;
        case PLAYER_AVATAR_VS_SEEKER:
            return OBJ_EVENT_GFX_PLAYER_F_VS_SEEKER;
        case PLAYER_AVATAR_DISTORTION_WORLD:
            return OBJ_EVENT_GFX_DIST_WORLD_PLAYER_F;
        case PLAYER_AVATAR_DISTORTION_WORLD_SURF:
            return OBJ_EVENT_GFX_DIST_WORLD_PLAYER_F_SURF;
        case PLAYER_AVATAR_26:
            return 0x10d;
        case PLAYER_AVATAR_27:
            return 0x10f;
        case PLAYER_AVATAR_HEARTHOME_GYM:
            return OBJ_EVENT_GFX_PLAYER_F_HEARTHOME_GYM;
        case PLAYER_AVATAR_29:
            return 0x111;
        case PLAYER_AVATAR_30:
            return 0x113;
        }
    }

    GF_ASSERT(FALSE);
    return OBJ_EVENT_GFX_PLAYER_M;
}

/**
 * Gets an enum PlayerTransitions associated with the enum PlayerAvatarState
 *
 * @return enum PlayerTransitions
 */
u32 Player_ConvertStateToTransition(int playerState)
{
    switch (playerState) {
    case PLAYER_AVATAR_WALKING:
        return PLAYER_TRANSITION_WALKING;
    case PLAYER_AVATAR_CYCLING:
        return PLAYER_TRANSITION_CYCLING;
    case PLAYER_AVATAR_SURFING:
        return PLAYER_TRANSITION_SURFING;
    case PLAYER_AVATAR_SPRAYDUCK:
        return PLAYER_TRANSITION_WATER_BERRIES;
    case PLAYER_AVATAR_FISHING:
        return PLAYER_TRANSITION_FISHING;
    case PLAYER_AVATAR_POKETCH:
        return PLAYER_TRANSITION_POKETCH;
    case PLAYER_AVATAR_SAVE:
        return PLAYER_TRANSITION_SAVE;
    case PLAYER_AVATAR_HEAL:
        return PLAYER_TRANSITION_HEALING;
    }

    GF_ASSERT(FALSE);
    return PLAYER_TRANSITION_WALKING;
}

/**
 * Gets the field system's playerAvatar, which is always the main player
 *
 * @return fieldSystem->playerAvatar
 */
PlayerAvatar *FieldSystem_GetPlayerAvatar(FieldSystem *fieldSystem)
{
    return fieldSystem->playerAvatar;
}

/**
 * Sets the movement flag that forces a player's movement, taking away control
 */
void PlayerAvatar_SetForceMovement(PlayerAvatar *playerAvatar, int flag)
{
    if (flag == TRUE) {
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_FORCED);
    } else {
        PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_FORCED);
    }
}

/**
 * Checks if the player avatar is currently being forced to move without player input
 *
 * @return TRUE if the AVATAR_MOVE_FORCED flag is on
 */
BOOL PlayerAvatar_CheckForcedMovement(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_FORCED)) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Sets the movement flag that causes a player to ignore tile behavior (such as slipping on ice), usually while their movement is forced
 */
void PlayerAvatar_SetIgnoreTileBehavior(PlayerAvatar *playerAvatar, int flag)
{
    if (flag == 1) {
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_IGNORE_TILE_BEHAVIOR);
    } else {
        PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_IGNORE_TILE_BEHAVIOR);
    }
}

/**
 * Checks the movement flag that causes a player to ignore tile behavior (such as slipping on ice), usually while their movement is forced
 *
 * @return TRUE if the AVATAR_MOVE_IGNORE_TILE_BEHAVIOR flag is on
 */
BOOL PlayerAvatar_CheckIgnoreTileBehavior(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_IGNORE_TILE_BEHAVIOR)) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Sets the movement flag that causes a player to start their bike breaks, slowing their movement to a stop
 */
void PlayerAvatar_SetBikeBrake(PlayerAvatar *playerAvatar, int flag)
{
    if (flag == 1) {
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_BIKE_BRAKE);
    } else {
        PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_BIKE_BRAKE);
    }
}

/**
 * Checks if the player is currently breaking on their bike
 *
 * @return TRUE if the AVATAR_MOVE_BIKE_BRAKE flag is on
 */
BOOL PlayerAvatar_CheckBikeBrake(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_BIKE_BRAKE)) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Sets the movement flag that forces a player downward while on cycling road
 */
void PlayerAvatar_SetOnCyclingRoad(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_ON_CYCLING_ROAD);
    } else {
        PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_ON_CYCLING_ROAD);
    }
}

/**
 * Checks the movement flag that forces a player downward while on cycling road
 *
 * @return TRUE if the AVATAR_MOVE_ON_CYCLING_ROAD flag is on
 */
BOOL PlayerAvatar_IsOnCyclingRoad(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_ON_CYCLING_ROAD)) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Sets the movement flag that causes a player to escape out of deep mud
 */
void PlayerAvatar_SetEscapedFromDeepMud(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_ESCAPED_FROM_DEEP_MUD);
    } else {
        PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_ESCAPED_FROM_DEEP_MUD);
    }
}

/**
 * Checks if the player has escaped from deep mud
 *
 * @return TRUE if the AVATAR_MOVE_ESCAPED_FROM_DEEP_MUD flag is on
 */
BOOL PlayerAvatar_CheckEscapedFromDeepMud(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_ESCAPED_FROM_DEEP_MUD)) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Sets the movement flag that indicates a player is moving through mud
 */
void PlayerAvatar_SetMoveThroughMudFlag(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_MOVE_THROUGH_MUD);
    } else {
        PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_MOVE_THROUGH_MUD);
    }
}

/**
 * Checks the movement flag that indicates a player is moving through mud
 *
 * @return TRUE if the AVATAR_MOVE_MOVE_THROUGH_MUD flag is on
 */
BOOL PlayerAvatar_CheckMoveThroughMudFlag(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_MOVE_THROUGH_MUD)) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Sets the movement flag that indicates the player is currently taking a single step
 */
void PlayerAvatar_StartStep(PlayerAvatar *playerAvatar)
{
    PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_STEP);
}

/**
 * Sets the movement flag that indicates the player has finished taking a single step
 */
void PlayerAvatar_EndStep(PlayerAvatar *playerAvatar)
{
    PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_STEP);
}

/**
 * Checks if the player is currently taking a step
 *
 * @return TRUE if the AVATAR_MOVE_STEP is on
 */
BOOL PlayerAvatar_CheckStep(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_STEP)) {
        return TRUE;
    }

    return FALSE;
}

/**
 * Sets the movement flag that forces a player's movement while retaining their current speed, taking away control
 */
void PlayerAvatar_SetForceMovementRetainSpeed(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_FORCED_RETAIN_SPEED);
    } else {
        PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_FORCED_RETAIN_SPEED);
    }
}

/**
 * Checks if the player avatar is currently being forced to move while retaining their initial speed without player input
 *
 * @return TRUE if the AVATAR_MOVE_FORCED flag is on
 */
int PlayerAvatar_CheckForcedMovementRetainSpeed(PlayerAvatar *playerAvatar)
{
    return PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_FORCED_RETAIN_SPEED);
}

/**
 * Sets the player avatar's distortion movement flags based on the given enum AvatarDistortionState
 */
void PlayerAvatar_SetDistortionState(PlayerAvatar *playerAvatar, enum AvatarDistortionState state)
{
    PlayerAvatar_ClearMovementFlag(playerAvatar, AVATAR_MOVE_DISTORTION_ACTIVE | AVATAR_MOVE_DISTORTION_FLOOR | AVATAR_MOVE_DISTORTION_WEST_WALL | AVATAR_MOVE_DISTORTION_EAST_WALL | AVATAR_MOVE_DISTORTION_CEILING);

    switch (state) {
    case AVATAR_DISTORTION_STATE_NONE:
        return;
    case AVATAR_DISTORTION_STATE_ACTIVE:
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_DISTORTION_ACTIVE);
        return;
    case AVATAR_DISTORTION_STATE_FLOOR:
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_DISTORTION_FLOOR);
        return;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_DISTORTION_WEST_WALL);
        return;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_DISTORTION_EAST_WALL);
        return;
    case AVATAR_DISTORTION_STATE_CEILING:
        PlayerAvatar_TurnOnMovementFlagBits(playerAvatar, AVATAR_MOVE_DISTORTION_CEILING);
        return;
    }

    GF_ASSERT(FALSE);
}

/**
 * Gets the player avatar's enum AvatarDistortionState based on the set distortion state movement flags
 */
enum AvatarDistortionState PlayerAvatar_MapDistortionState(PlayerAvatar *const playerAvatar)
{
    enum AvatarDistortionState state = AVATAR_DISTORTION_STATE_NONE;
    u32 movementFlag = PlayerAvatar_GetMovementFlag(playerAvatar, AVATAR_MOVE_DISTORTION_ACTIVE | AVATAR_MOVE_DISTORTION_FLOOR | AVATAR_MOVE_DISTORTION_WEST_WALL | AVATAR_MOVE_DISTORTION_EAST_WALL | AVATAR_MOVE_DISTORTION_CEILING);

    switch (movementFlag) {
    case AVATAR_MOVE_DISTORTION_ACTIVE:
        state = AVATAR_DISTORTION_STATE_ACTIVE;
        break;
    case AVATAR_MOVE_DISTORTION_FLOOR:
        state = AVATAR_DISTORTION_STATE_FLOOR;
        break;
    case AVATAR_MOVE_DISTORTION_WEST_WALL:
        state = AVATAR_DISTORTION_STATE_WEST_WALL;
        break;
    case AVATAR_MOVE_DISTORTION_EAST_WALL:
        state = AVATAR_DISTORTION_STATE_EAST_WALL;
        break;
    case AVATAR_MOVE_DISTORTION_CEILING:
        state = AVATAR_DISTORTION_STATE_CEILING;
        break;
    }

    return state;
}

/**
 * Checks if the current gravity in the distortion world has changed to require a differnt movement script than normal field movement functions would allow for
 *
 * @return TRUE if the current distortion state is anything except AVATAR_DISTORTION_STATE_NONE or AVATAR_DISTORTION_STATE_ACTIVE
 */
BOOL PlayerAvatar_DistortionGravityChanged(PlayerAvatar *const playerAvatar)
{
    enum AvatarDistortionState state = PlayerAvatar_MapDistortionState(playerAvatar);

    if (state == AVATAR_DISTORTION_STATE_NONE || state == AVATAR_DISTORTION_STATE_ACTIVE) {
        return FALSE;
    }

    return TRUE;
}

/**
 * Checks if the current gravity in the distortion world is on the floor
 *
 * @return TRUE if the current distortion state is AVATAR_DISTORTION_STATE_NONE, AVATAR_DISTORTION_STATE_ACTIVE, or AVATAR_DISTORTION_STATE_FLOOR
 */
BOOL PlayerAvatar_DistortionStateOnFloor(PlayerAvatar *const playerAvatar)
{
    enum AvatarDistortionState state = PlayerAvatar_MapDistortionState(playerAvatar);

    return state == AVATAR_DISTORTION_STATE_NONE
        || state == AVATAR_DISTORTION_STATE_ACTIVE
        || state == AVATAR_DISTORTION_STATE_FLOOR;
}
