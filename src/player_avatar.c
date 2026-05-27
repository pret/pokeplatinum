#include "player_avatar.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/scrcmd.h"

#include "generated/object_events_gfx.h"
#include "generated/movement_types.h"

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
static void PlayerAvatar_SetFlagUnk_00(PlayerAvatar *playerAvatar, u32 param1);
static void PlayerAvatar_ClearFlagUnk_00(PlayerAvatar *playerAvatar, u32 param1);
static u32 PlayerAvatar_GetFlagUnk_00(PlayerAvatar *playerAvatar, u32 param1);
static void PlayerAvatar_SetPlayerData(PlayerAvatar *playerAvatar, PlayerData *param1);
static u32 Player_GetState(PlayerData *player);
static void Player_SetState(PlayerData *player, u32 state);
static void PlayerAvatar_Player_SetState(PlayerAvatar *playerAvatar, u32 state);

/**
 * @brief Creates and initializes a new Player Avatar map object 
 *
 * @param mapObjMan
 * @param x
 * @param z
 * @param dir
 * @param playerState
 * @param gender
 * @param dpSprite
 * @param playerData
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

PlayerAvatar *sub_0205E820(const MapObjectManager *mapObjMan, PlayerData *playerData, int gender)
{
    int playerState;
    PlayerAvatar *playerAvatar;
    MapObject *mapObj;

    playerAvatar = PlayerAvatar_Alloc();
    playerState = Player_GetState(playerData);

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
 * @brief Initializes a PlayerAvatar with dynamic map features, like starting on a surf mount
 *
 * @param playerAvatar
 * @param dynamicMapFeaturesID
 */
void PlayerAvatar_InitMapFeatures(PlayerAvatar *playerAvatar, int dynamicMapFeaturesID)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
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
 * @brief Frees the player avatar
 *
 * @param playerAvatar
 */
void PlayerAvatar_Free(PlayerAvatar *playerAvatar)
{
    Heap_Free(playerAvatar);
}

/**
 * @brief Deletes the player avatar and its associated map object
 *
 * @param playerAvatar
 */
void PlayerAvatar_Delete(PlayerAvatar *playerAvatar)
{
    MapObject *mapObject = Player_MapObject(playerAvatar);

    MapObject_Delete(mapObject);
    PlayerAvatar_Free(playerAvatar);
}

/**
 * @brief Allocates memory for a player avatar and zero initializes it
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
 * @brief Initializes an existing player avatar
 *
 * @param playerAvatar
 * @param playerState
 * @param gender
 * @param playerData
 */
static void PlayerAvatar_Init(PlayerAvatar *playerAvatar, int playerState, int gender, PlayerData *player)
{
    PlayerAvatar_SetPlayerData(playerAvatar, player);

    PlayerAvatar_SetState(playerAvatar, 0);
    PlayerAvatar_SetMoveState(playerAvatar, 0);
    PlayerAvatar_SetPlayerState(playerAvatar, playerState);
    PlayerAvatar_SetGender(playerAvatar, gender);
    PlayerAvatar_SetRequestStateFlag(playerAvatar, 0);
    PlayerAvatar_ClearSpeed(playerAvatar);
    PlayerAvatar_SetFaceLeftOrRight(playerAvatar, -1);
    PlayerAvatar_SetFaceUpOrDown(playerAvatar, -1);
    sub_0205EC20(playerAvatar, 0xff, 0);

    sub_0205EF6C(playerAvatar, 1);
    PlayerAvatar_SetEscapedFromDeepMud(playerAvatar, TRUE);
}

/**
 * @brief Creates and adds a map object for the Player Avatar
 *
 * @param playerAvatar
 * @param mapObjMan
 * @param sprite
 * @param dir
 * @param x
 * @param z
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
 * @brief Gets the first map object with MOVEMENT_TYPE_PLAYER, which is the map object associated with the Player Avatar
 *
 * @param mapObjMan
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
 * @brief Gets the map object associated with the PlayerAvatar, throws an error when NULL
 *
 * @param mapObjMan
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
 * @brief Gets the facing direction of the player avatar's map object
 *
 * @param playerAvatar
 *
 * @return facing direction
 */
int PlayerAvatar_GetFacingDir(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetFacingDir(Player_MapObject(playerAvatar));
}

/**
 * @brief Sets the facing direction of the player avatar's map object if the change direction lock is off
 *
 * @param playerAvatar
 * @param dir
 */
void PlayerAvatar_TryFace(PlayerAvatar *playerAvatar, int dir)
{
    MapObject_TryFace(Player_MapObject(playerAvatar), dir);
}

/**
 * @brief Gets the moving direction of the player avatar's map object
 *
 * @param playerAvatar
 *
 * @return moving direction
 */
int PlayerAvatar_GetMovingDir(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetMovingDir(Player_MapObject(playerAvatar));
}

/**
 * @brief Gets the distortion world direction of the player avatar's map object
 *
 * @param playerAvatar
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
 * @brief Gets the X position of the player avatar's map object
 *
 * @param playerAvatar
 *
 * @return xPos
 */
int PlayerAvatar_GetXPos(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetX(Player_MapObject(playerAvatar));
}

/**
 * @brief Gets the Z position of the player avatar's map object
 *
 * @param playerAvatar
 *
 * @return zPos
 */
int PlayerAvatar_GetZPos(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetZ(Player_MapObject(playerAvatar));
}

/**
 * @brief Gets the previous X position of the player avatar's map object 
 *
 * @param playerAvatar
 *
 * @return xPosPrev
 */
int PlayerAvatar_XPosPrev(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetXPrev(Player_MapObject(playerAvatar));
}

/**
 * @brief Gets the previous Z position of the player avatar's map object 
 *
 * @param playerAvatar
 *
 * @return zPosPrev
 */
int PlayerAvatar_ZPosPrev(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetZPrev(Player_MapObject(playerAvatar));
}

/**
 * @brief Gets the position vector of the player avatar's map object and stores it in pos
 *
 * @param playerAvatar
 * @param pos
 */
void PlayerAvatar_GetPosPtr(PlayerAvatar *const playerAvatar, VecFx32 *pos)
{
    MapObject_GetPosPtr(Player_MapObject(playerAvatar), pos);
}

/**
 * @brief Gets the position vector of the player avatar's map object
 *
 * @param playerAvatar
 *
 * @return VecFx32 *pos
 */
const VecFx32 *PlayerAvatar_GetPos(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetPos(PlayerAvatar_ConstMapObject(playerAvatar));
}

/**
 * @brief Sets the Player Avatar's state, specified by enum PlayerAvatarState
 *
 * @param playerAvatar
 * @param state
 */
void PlayerAvatar_SetState(PlayerAvatar *playerAvatar, int state)
{
    playerAvatar->state = state;
}

/**
 * @brief Gets the Player Avatar's state, specified by enum PlayerAvatarState
 *
 * @param playerAvatar
 *
 * @return playerAvatar->state
 */
int PlayerAvatar_GetState(const PlayerAvatar *playerAvatar)
{
    return playerAvatar->state;
}

void PlayerAvatar_SetMoveState(PlayerAvatar *playerAvatar, int moveState)
{
    playerAvatar->moveState = moveState;
}

int PlayerAvatar_GetMoveState(const PlayerAvatar *playerAvatar)
{
    return playerAvatar->moveState;
}

void PlayerAvatar_SetVisible(PlayerAvatar *playerAvatar, BOOL visible)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (visible == TRUE) {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE);
    } else {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE);
    }
}

void PlayerAvatar_SetMapObject(PlayerAvatar *playerAvatar, MapObject *mapObject)
{
    playerAvatar->mapObject = mapObject;
}

MapObject *Player_MapObject(PlayerAvatar *playerAvatar)
{
    GF_ASSERT(playerAvatar != NULL);
    GF_ASSERT(playerAvatar->mapObject != NULL);

    return playerAvatar->mapObject;
}

const MapObject *PlayerAvatar_ConstMapObject(const PlayerAvatar *playerAvatar)
{
    return playerAvatar->mapObject;
}

void PlayerAvatar_SetPlayerState(PlayerAvatar *playerAvatar, int playerState)
{
    GF_ASSERT(playerState < 0x6);
    playerAvatar->unk_1C = playerState;

    PlayerAvatar_Player_SetState(playerAvatar, playerState);
}

int PlayerAvatar_GetPlayerState(PlayerAvatar *playerAvatar)
{
    GF_ASSERT(playerAvatar != NULL);
    return playerAvatar->unk_1C;
}

void PlayerAvatar_TurnOnRequestStateBit(PlayerAvatar *playerAvatar, u32 param1)
{
    playerAvatar->unk_04 |= param1;
}

void PlayerAvatar_SetRequestStateFlag(PlayerAvatar *playerAvatar, u32 param1)
{
    playerAvatar->unk_04 = param1;
}

u32 PlayerAvatar_RequestStateFlag(PlayerAvatar *playerAvatar)
{
    return playerAvatar->unk_04;
}

void PlayerAvatar_SetGender(PlayerAvatar *playerAvatar, int gender)
{
    playerAvatar->gender = gender;
}

int PlayerAvatar_Gender(PlayerAvatar *playerAvatar)
{
    return playerAvatar->gender;
}

static void PlayerAvatar_SetFlagUnk_00(PlayerAvatar *playerAvatar, u32 flag)
{
    playerAvatar->unk_00 |= flag;
}

static void PlayerAvatar_ClearFlagUnk_00(PlayerAvatar *playerAvatar, u32 flag)
{
    playerAvatar->unk_00 &= ~flag;
}

static u32 PlayerAvatar_GetFlagUnk_00(PlayerAvatar *playerAvatar, u32 flag)
{
    return playerAvatar->unk_00 & flag;
}

int PlayerAvatar_Speed(PlayerAvatar *playerAvatar)
{
    return playerAvatar->speed;
}

void PlayerAvatar_SetSpeed(PlayerAvatar *playerAvatar, int speed)
{
    playerAvatar->speed = speed;
}

void PlayerAvatar_ClearSpeed(PlayerAvatar *playerAvatar)
{
    playerAvatar->speed = 0;
    sub_0205EF98(playerAvatar, 0);
}

int PlayerAvatar_AddMoveSpeed(PlayerAvatar *playerAvatar, int dSpeed, int maxSpeed)
{
    playerAvatar->speed += dSpeed;

    if (playerAvatar->speed > maxSpeed) {
        playerAvatar->speed = maxSpeed;
    }

    return playerAvatar->speed;
}

void PlayerAvatar_SetFaceLeftOrRight(PlayerAvatar *playerAvatar, enum FaceDirection leftOrRight)
{
    playerAvatar->faceLeftOrRight = leftOrRight;
}

enum FaceDirection PlayerAvatar_GetFaceLeftOrRight(PlayerAvatar *playerAvatar)
{
    return playerAvatar->faceLeftOrRight;
}

void PlayerAvatar_SetFaceUpOrDown(PlayerAvatar *playerAvatar, enum FaceDirection faceUpOrDown)
{
    playerAvatar->faceUpOrDown = faceUpOrDown;
}

enum FaceDirection PlayerAvatar_GetFaceUpOrDown(PlayerAvatar *playerAvatar)
{
    return playerAvatar->faceUpOrDown;
}

void PlayerAvatar_SetFaceDirection(PlayerAvatar *playerAvatar, enum FaceDirection faceLeftOrRight, enum FaceDirection faceUpOrDown)
{
    PlayerAvatar_SetFaceLeftOrRight(playerAvatar, faceLeftOrRight);
    PlayerAvatar_SetFaceUpOrDown(playerAvatar, faceUpOrDown);
}

void PlayerAvatar_SetSurfMountAnimManager(PlayerAvatar *playerAvatar, OverworldAnimManager *surfMountAnimMan)
{
    playerAvatar->surfMountAnimMan = surfMountAnimMan;
}

OverworldAnimManager *PlayerAvatar_GetSurfMountAnimManager(PlayerAvatar *playerAvatar)
{
    return playerAvatar->surfMountAnimMan;
}

static void PlayerAvatar_SetPlayerData(PlayerAvatar *playerAvatar, PlayerData *player)
{
    playerAvatar->player = player;
}

PlayerData *PlayerAvatar_PlayerData(PlayerAvatar *playerAvatar)
{
    return playerAvatar->player;
}

void sub_0205EC10(PlayerAvatar *playerAvatar, u32 param1)
{
    playerAvatar->unk_08 = param1;
}

u32 sub_0205EC14(PlayerAvatar *playerAvatar)
{
    return playerAvatar->unk_08;
}

void sub_0205EC18(PlayerAvatar *playerAvatar, int param1)
{
    playerAvatar->unk_0C = param1;
}

int sub_0205EC1C(PlayerAvatar *playerAvatar)
{
    return playerAvatar->unk_0C;
}

void sub_0205EC20(PlayerAvatar *playerAvatar, u32 param1, int param2)
{
    sub_0205EC10(playerAvatar, param1);
    sub_0205EC18(playerAvatar, param2);
}

void PlayerData_Init(PlayerData *playerData)
{
    playerData->cyclingGear = 0;
    playerData->runningShoes = FALSE;
    playerData->playerState = 0x0;
}

int PlayerData_HasRunningShoes(PlayerData *playerData)
{
    if (playerData != NULL) {
        if (playerData->runningShoes == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

void PlayerData_SetRunningShoes(PlayerData *playerData, BOOL flag)
{
    if (flag == TRUE) {
        playerData->runningShoes = TRUE;
    } else {
        playerData->runningShoes = FALSE;
    }
}

int PlayerData_CyclingGear(PlayerData *playerData)
{
    if (playerData == NULL) {
        return 0;
    }

    return playerData->cyclingGear;
}

void PlayerData_SetCyclingGear(PlayerData *playerData, int gear)
{
    if (playerData != NULL) {
        playerData->cyclingGear = gear;
    }
}

void PlayerAvatar_SetCyclingGear(PlayerAvatar *playerAvatar, int gear)
{
    PlayerData *player = PlayerAvatar_PlayerData(playerAvatar);
    PlayerData_SetCyclingGear(player, gear);
}

int PlayerAvatar_CyclingGear(PlayerAvatar *playerAvatar)
{
    PlayerData *player = PlayerAvatar_PlayerData(playerAvatar);
    return PlayerData_CyclingGear(player);
}

u32 Player_GetState(PlayerData *player)
{
    if (player != NULL) {
        return player->playerState;
    }

    return PLAYER_AVATAR_WALKING;
}

void Player_SetState(PlayerData *player, u32 playerState)
{
    if (player != NULL) {
        player->playerState = playerState;
    }
}

void PlayerAvatar_Player_SetState(PlayerAvatar *playerAvatar, u32 playerState)
{
    PlayerData *player = PlayerAvatar_PlayerData(playerAvatar);
    Player_SetState(player, playerState);
}

void sub_0205ECB8(PlayerAvatar *playerAvatar, const VecFx32 *param1, int param2)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    MapObject_SetPosDirFromVec(mapObj, param1, param2);
    PlayerAvatar_SetState(playerAvatar, 0);
    PlayerAvatar_SetMoveState(playerAvatar, 0);
}

void sub_0205ECE0(PlayerAvatar *playerAvatar, int x, int z, int dir)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    MapObject_SetPosDirFromCoords(mapObj, x, 0, z, dir);
    PlayerAvatar_SetState(playerAvatar, 0);
    PlayerAvatar_SetMoveState(playerAvatar, 0);
}

void Player_SetYPos(PlayerAvatar *playerAvatar, fx32 y)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    VecFx32 pos;
    MapObject_GetPosPtr(mapObj, &pos);

    pos.y = y;
    MapObject_SetPos(mapObj, &pos);
}

void PlayerAvatar_SetHeightCalculationEnabled(PlayerAvatar *playerAvatar, BOOL heightCalculationEnabled)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (heightCalculationEnabled == TRUE) {
        MapObject_SetHeightCalculationDisabled(mapObj, FALSE);
    } else {
        MapObject_SetHeightCalculationDisabled(mapObj, TRUE);
    }
}

void PlayerAvatar_SetHeightCalculationEnabledAndUpdate(PlayerAvatar *playerAvatar, BOOL heightCalculationEnabled)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (heightCalculationEnabled == TRUE) {
        MapObject_SetHeightCalculationDisabled(mapObj, FALSE);
        MapObject_RecalculateObjectHeight(mapObj);
    } else {
        MapObject_SetHeightCalculationDisabled(mapObj, TRUE);
    }
}

/**
 * @brief Gets the OBJ_EVENT_GFX_ constant associated with the given player state and gender
 *
 * @param playerState
 * @param gender
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

PlayerAvatar *FieldSystem_GetPlayerAvatar(FieldSystem *fieldSystem)
{
    return fieldSystem->playerAvatar;
}

void sub_0205EF40(PlayerAvatar *playerAvatar, int param1)
{
    if (param1 == TRUE) {
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_0);
    } else {
        PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_0);
    }
}

BOOL sub_0205EF58(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_0)) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205EF6C(PlayerAvatar *playerAvatar, int param1)
{
    if (param1 == 1) {
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_1);
    } else {
        PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_1);
    }
}

BOOL sub_0205EF84(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_1)) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205EF98(PlayerAvatar *playerAvatar, int param1)
{
    if (param1 == 1) {
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_2);
    } else {
        PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_2);
    }
}

BOOL sub_0205EFB0(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_2)) {
        return TRUE;
    }

    return FALSE;
}

void PlayerAvatar_SetOnCyclingRoad(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_ON_CYCLING_ROAD);
    } else {
        PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_ON_CYCLING_ROAD);
    }
}

BOOL PlayerAvatar_IsOnCyclingRoad(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_ON_CYCLING_ROAD)) {
        return TRUE;
    }

    return FALSE;
}

void PlayerAvatar_SetEscapedFromDeepMud(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_ESCAPED_FROM_DEEP_MUD);
    } else {
        PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_ESCAPED_FROM_DEEP_MUD);
    }
}

BOOL PlayerAvatar_CheckEscapedFromDeepMud(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_ESCAPED_FROM_DEEP_MUD)) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205F01C(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_5);
    } else {
        PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_5);
    }
}

BOOL sub_0205F034(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_5)) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205F048(PlayerAvatar *playerAvatar)
{
    PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_6);
}

void sub_0205F054(PlayerAvatar *playerAvatar)
{
    PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_6);
}

BOOL sub_0205F060(PlayerAvatar *playerAvatar)
{
    if (PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_6)) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205F074(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_7);
    } else {
        PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_7);
    }
}

int sub_0205F08C(PlayerAvatar *playerAvatar)
{
    return PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_7);
}

void PlayerAvatar_SetDistortionState(PlayerAvatar *playerAvatar, enum AvatarDistortionState state)
{
    PlayerAvatar_ClearFlagUnk_00(playerAvatar, UNK_00_8 | UNK_00_9 | UNK_00_10 | UNK_00_11 | UNK_00_12);

    switch (state) {
    case AVATAR_DISTORTION_STATE_NONE:
        return;
    case AVATAR_DISTORTION_STATE_ACTIVE:
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_8);
        return;
    case AVATAR_DISTORTION_STATE_FLOOR:
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_9);
        return;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_10);
        return;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_11);
        return;
    case AVATAR_DISTORTION_STATE_CEILING:
        PlayerAvatar_SetFlagUnk_00(playerAvatar, UNK_00_12);
        return;
    }

    GF_ASSERT(FALSE);
}

enum AvatarDistortionState PlayerAvatar_MapDistortionState(PlayerAvatar *const playerAvatar)
{
    enum AvatarDistortionState state = AVATAR_DISTORTION_STATE_NONE;
    u32 v1 = PlayerAvatar_GetFlagUnk_00(playerAvatar, UNK_00_8 | UNK_00_9 | UNK_00_10 | UNK_00_11 | UNK_00_12);

    switch (v1) {
    case UNK_00_8:
        state = AVATAR_DISTORTION_STATE_ACTIVE;
        break;
    case UNK_00_9:
        state = AVATAR_DISTORTION_STATE_FLOOR;
        break;
    case UNK_00_10:
        state = AVATAR_DISTORTION_STATE_WEST_WALL;
        break;
    case UNK_00_11:
        state = AVATAR_DISTORTION_STATE_EAST_WALL;
        break;
    case UNK_00_12:
        state = AVATAR_DISTORTION_STATE_CEILING;
        break;
    }

    return state;
}

// this function can be simplified, but preserving matching reduces clarity
BOOL PlayerAvatar_DistortionGravityChanged(PlayerAvatar *const playerAvatar)
{
    enum AvatarDistortionState state = PlayerAvatar_MapDistortionState(playerAvatar);

    if (state == AVATAR_DISTORTION_STATE_NONE || state == AVATAR_DISTORTION_STATE_ACTIVE) {
        return FALSE;
    }

    return TRUE;
}

BOOL PlayerAvatar_DistortionStateOnFloor(PlayerAvatar *const playerAvatar)
{
    enum AvatarDistortionState state = PlayerAvatar_MapDistortionState(playerAvatar);

    return state == AVATAR_DISTORTION_STATE_NONE
        || state == AVATAR_DISTORTION_STATE_ACTIVE
        || state == AVATAR_DISTORTION_STATE_FLOOR;
}
