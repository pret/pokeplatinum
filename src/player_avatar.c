#include "player_avatar.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"

#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0205EC34.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F25C0.h"
#include "overlay005/ov5_021F61BC.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "heap.h"
#include "map_object.h"
#include "map_object_move.h"

typedef struct PlayerAvatar {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    int unk_0C;
    u32 unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int gender;
    int speed;
    int unk_28;
    int unk_2C;
    MapObject *mapObject;
    UnkStruct_ov101_021D5D90 *unk_34;
    PlayerData *player;
    const PlayerData *playerConst;
} PlayerAvatar;

static PlayerAvatar *PlayerAvatar_Alloc(void);
static void sub_0205E91C(PlayerAvatar *playerAvatar, int param1, int param2, PlayerData *param3);
static void PlayerAvatar_AddMapObject(PlayerAvatar *playerAvatar, const MapObjectManager *param1, int param2, int param3, int param4, int param5);
static MapObject *sub_0205EA64(const MapObjectManager *mapObjMan);
static void sub_0205EB9C(PlayerAvatar *playerAvatar, u32 param1);
static void sub_0205EBA4(PlayerAvatar *playerAvatar, u32 param1);
static u32 sub_0205EBB0(PlayerAvatar *playerAvatar, u32 param1);
static void PlayerAvatar_SetPlayerData(PlayerAvatar *playerAvatar, PlayerData *param1);
static u32 GetPlayerForm(PlayerData *player);
static void SetPlayerForm(PlayerData *player, u32 form);
static void SetAvatarForm(PlayerAvatar *playerAvatar, u32 form);

PlayerAvatar *PlayerAvatar_Init(const MapObjectManager *mapObjMan, int x, int z, int dir, int param4, int param5, int param6, PlayerData *param7)
{
    PlayerAvatar *playerAvatar = PlayerAvatar_Alloc();
    sub_0205E91C(playerAvatar, param4, param5, param7);

    int v1;

    if (param6 == 0) {
        v1 = Player_MoveStateFromGender(param4, param5);
    } else {
        if (param5 == 0) {
            v1 = 0xfc;
        } else {
            v1 = 0xfd;
        }
    }

    PlayerAvatar_AddMapObject(playerAvatar, mapObjMan, v1, dir, x, z);

    return playerAvatar;
}

PlayerAvatar *sub_0205E820(const MapObjectManager *mapObjMan, PlayerData *param1, int gender)
{
    int v0;
    PlayerAvatar *playerAvatar;
    MapObject *mapObj;

    playerAvatar = PlayerAvatar_Alloc();
    v0 = GetPlayerForm(param1);

    sub_0205E91C(playerAvatar, v0, gender, param1);
    mapObj = sub_0205EA64(mapObjMan);

    MapObject_SetGraphicsID(mapObj, Player_MoveStateFromGender(v0, gender));
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_10 | MAP_OBJ_STATUS_13);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
    MapObject_SetDynamicHeightCalculationEnabled(mapObj, TRUE);
    PlayerAvatar_SetMapObject(playerAvatar, mapObj);

    return playerAvatar;
}

void PlayerAvatar_InitDraw(PlayerAvatar *playerAvatar, int dynamicMapFeaturesID)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);
    GF_ASSERT(mapObj != NULL);
    MapObject_MapObjectManager(mapObj);

    ov5_021F6218(playerAvatar);

    if (PlayerAvatar_GetPlayerState(playerAvatar) == PLAYER_STATE_SURFING) {
        if (dynamicMapFeaturesID != DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
            int x = Player_GetXPos(playerAvatar);
            int z = Player_GetZPos(playerAvatar);
            int dir = PlayerAvatar_GetDir(playerAvatar);
            UnkStruct_ov101_021D5D90 *v7 = ov5_021F261C(mapObj, x, z, dir, 1);

            sub_0205EC00(playerAvatar, v7);
        }
    }
}

void Player_Delete(PlayerAvatar *playerAvatar)
{
    Heap_Free(playerAvatar);
}

void Player_DeleteAll(PlayerAvatar *playerAvatar)
{
    MapObject *mapObject = Player_MapObject(playerAvatar);

    MapObject_Delete(mapObject);
    Player_Delete(playerAvatar);
}

static PlayerAvatar *PlayerAvatar_Alloc(void)
{
    PlayerAvatar *playerAvatar = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, (sizeof(PlayerAvatar)));
    GF_ASSERT(playerAvatar != NULL);
    memset(playerAvatar, 0, (sizeof(PlayerAvatar)));

    return playerAvatar;
}

static void sub_0205E91C(PlayerAvatar *playerAvatar, int param1, int gender, PlayerData *player)
{
    PlayerAvatar_SetPlayerData(playerAvatar, player);

    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);
    PlayerAvatar_SetPlayerState(playerAvatar, param1);
    PlayerAvatar_SetGender(playerAvatar, gender);
    PlayerAvatar_SetRequestStateFlag(playerAvatar, 0);
    PlayerAvatar_ClearSpeed(playerAvatar);
    sub_0205EBDC(playerAvatar, -1);
    sub_0205EBE4(playerAvatar, -1);
    sub_0205EC20(playerAvatar, 0xff, 0);

    sub_0205EF6C(playerAvatar, 1);
    PlayerAvatar_SetInDeepSwamp(playerAvatar, 1);
}

static void PlayerAvatar_AddMapObject(PlayerAvatar *playerAvatar, const MapObjectManager *mapObjMan, int param2, int dir, int x, int z)
{
    MapObject *mapObj = MapObjectMan_AddMapObject(mapObjMan, x, z, dir, param2, 0x1, 1);
    GF_ASSERT(mapObj != NULL);

    MapObject_SetLocalID(mapObj, 0xff);
    MapObject_SetTrainerType(mapObj, 0);
    MapObject_SetFlag(mapObj, 0);
    MapObject_SetScript(mapObj, 0);
    MapObject_SetDataAt(mapObj, 0, 0);
    MapObject_SetDataAt(mapObj, 0, 1);
    MapObject_SetDataAt(mapObj, 0, 2);
    MapObject_SetMovementRangeX(mapObj, -1);
    MapObject_SetMovementRangeZ(mapObj, -1);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_10 | MAP_OBJ_STATUS_13);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
    MapObject_SetDynamicHeightCalculationEnabled(mapObj, TRUE);

    PlayerAvatar_SetMapObject(playerAvatar, mapObj);
}

MapObject *sub_0205EA24(const MapObjectManager *mapObjMan)
{
    int v0 = 0;
    MapObject *mapObj = NULL;

    while (sub_020625B0(mapObjMan, &mapObj, &v0, (1 << 0))) {
        if (MapObject_GetMovementType(mapObj) == 0x1) {
            break;
        }
    }

    return mapObj;
}

static MapObject *sub_0205EA64(const MapObjectManager *mapObjMan)
{
    MapObject *mapObj = sub_0205EA24(mapObjMan);

    GF_ASSERT(mapObj != NULL);
    return mapObj;
}

int PlayerAvatar_GetDir(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetFacingDir(Player_MapObject(playerAvatar));
}

void Player_SetDir(PlayerAvatar *playerAvatar, int dir)
{
    MapObject_TryFace(Player_MapObject(playerAvatar), dir);
}

int PlayerAvatar_GetMoveDir(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetMovingDir(Player_MapObject(playerAvatar));
}

int PlayerAvatar_GetDistortionDir(PlayerAvatar *const playerAvatar)
{
    if (PlayerAvatar_DistortionStateOnFloor(playerAvatar) == TRUE) {
        return PlayerAvatar_GetDir(playerAvatar);
    }

    return PlayerAvatar_GetMoveDir(playerAvatar);
}

int Player_GetXPos(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetX(Player_MapObject(playerAvatar));
}

int Player_GetZPos(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetZ(Player_MapObject(playerAvatar));
}

int PlayerAvatar_XPosPrev(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetXPrev(Player_MapObject(playerAvatar));
}

int PlayerAvatar_ZPosPrev(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetZPrev(Player_MapObject(playerAvatar));
}

void PlayerAvatar_PosVectorOut(PlayerAvatar *const playerAvatar, VecFx32 *pos)
{
    MapObject_GetPosPtr(Player_MapObject(playerAvatar), pos);
}

const VecFx32 *PlayerAvatar_PosVector(PlayerAvatar *const playerAvatar)
{
    return MapObject_GetPos(PlayerAvatar_ConstMapObject(playerAvatar));
}

void sub_0205EB08(PlayerAvatar *playerAvatar, int param1)
{
    playerAvatar->unk_14 = param1;
}

int PlayerAvatar_MoveState(const PlayerAvatar *playerAvatar)
{
    return playerAvatar->unk_14;
}

void sub_0205EB10(PlayerAvatar *playerAvatar, int param1)
{
    playerAvatar->unk_18 = param1;
}

int Player_MoveState(const PlayerAvatar *playerAvatar)
{
    return playerAvatar->unk_18;
}

void PlayerAvatar_SetHidden(PlayerAvatar *playerAvatar, int param1)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    if (param1 == 1) {
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

void PlayerAvatar_SetPlayerState(PlayerAvatar *playerAvatar, int form)
{
    GF_ASSERT(form < 0x6);
    playerAvatar->unk_1C = form;

    SetAvatarForm(playerAvatar, form);
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

static void sub_0205EB9C(PlayerAvatar *playerAvatar, u32 param1)
{
    playerAvatar->unk_00 |= param1;
}

static void sub_0205EBA4(PlayerAvatar *playerAvatar, u32 param1)
{
    playerAvatar->unk_00 &= ~param1;
}

static u32 sub_0205EBB0(PlayerAvatar *playerAvatar, u32 param1)
{
    return playerAvatar->unk_00 & param1;
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

void sub_0205EBDC(PlayerAvatar *playerAvatar, int param1)
{
    playerAvatar->unk_28 = param1;
}

int sub_0205EBE0(PlayerAvatar *playerAvatar)
{
    return playerAvatar->unk_28;
}

void sub_0205EBE4(PlayerAvatar *playerAvatar, int param1)
{
    playerAvatar->unk_2C = param1;
}

int sub_0205EBE8(PlayerAvatar *playerAvatar)
{
    return playerAvatar->unk_2C;
}

void sub_0205EBEC(PlayerAvatar *playerAvatar, int param1, int param2)
{
    sub_0205EBDC(playerAvatar, param1);
    sub_0205EBE4(playerAvatar, param2);
}

void sub_0205EC00(PlayerAvatar *playerAvatar, UnkStruct_ov101_021D5D90 *param1)
{
    playerAvatar->unk_34 = param1;
}

UnkStruct_ov101_021D5D90 *sub_0205EC04(PlayerAvatar *playerAvatar)
{
    return playerAvatar->unk_34;
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
    playerData->form = 0x0;
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

u32 GetPlayerForm(PlayerData *player)
{
    if (player != NULL) {
        return player->form;
    }

    return 0x0;
}

void SetPlayerForm(PlayerData *player, u32 form)
{
    if (player != NULL) {
        player->form = form;
    }
}

void SetAvatarForm(PlayerAvatar *playerAvatar, u32 form)
{
    PlayerData *player = PlayerAvatar_PlayerData(playerAvatar);
    SetPlayerForm(player, form);
}

void sub_0205ECB8(PlayerAvatar *playerAvatar, const VecFx32 *param1, int param2)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    MapObject_SetPosDirFromVec(mapObj, param1, param2);
    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);
}

void sub_0205ECE0(PlayerAvatar *playerAvatar, int param1, int param2, int param3)
{
    MapObject *mapObj = Player_MapObject(playerAvatar);

    MapObject_SetPosDirFromCoords(mapObj, param1, 0, param2, param3);
    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);
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

int Player_MoveStateFromGender(int param0, int gender)
{
    if (gender == 0) {
        switch (param0) {
        case 0x0:
            return 0x0;
        case 0x1:
            return 0x15;
        case 0x2:
            return 0xb2;
        case 0x10:
            return 0xb0;
        case 0x11:
            return 0xb4;
        case 0x12:
            return 0xba;
        case 0x13:
            return 0xbc;
        case 0x14:
            return 0xc4;
        case 0x15:
            return 0xc6;
        case 0x16:
            return 0xc8;
        case 0x17:
            return 0x100;
        case 0x18:
            return 0xd4;
        case 0x19:
            return 0x102;
        case 0x1a:
            return 0x10c;
        case 0x1b:
            return 0x10e;
        case 0x1c:
            return 0xd2;
        case 0x1d:
            return 0x110;
        case 0x1e:
            return 0x112;
        }
    } else {
        switch (param0) {
        case 0x0:
            return 0x61;
        case 0x1:
            return 0x62;
        case 0x2:
            return 0xb3;
        case 0x10:
            return 0xb1;
        case 0x11:
            return 0xb5;
        case 0x12:
            return 0xbb;
        case 0x13:
            return 0xbd;
        case 0x14:
            return 0xc5;
        case 0x15:
            return 0xc7;
        case 0x16:
            return 0xc9;
        case 0x17:
            return 0x101;
        case 0x18:
            return 0x107;
        case 0x19:
            return 0x103;
        case 0x1a:
            return 0x10d;
        case 0x1b:
            return 0x10f;
        case 0x1c:
            return 0xd3;
        case 0x1d:
            return 0x111;
        case 0x1e:
            return 0x113;
        }
    }

    GF_ASSERT(FALSE);
    return 0x0;
}

u32 sub_0205EED8(int param0)
{
    switch (param0) {
    case 0x0:
        return 1 << 0;
    case 0x1:
        return 1 << 1;
    case 0x2:
        return 1 << 2;
    case 0x11:
        return 1 << 4;
    case 0x13:
        return 1 << 5;
    case 0x14:
        return 1 << 6;
    case 0x15:
        return 1 << 7;
    case 0x16:
        return 1 << 8;
    }

    GF_ASSERT(0);
    return 1 << 0;
}

PlayerAvatar *sub_0205EF3C(FieldSystem *fieldSystem)
{
    return fieldSystem->playerAvatar;
}

void sub_0205EF40(PlayerAvatar *playerAvatar, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(playerAvatar, (1 << 0));
    } else {
        sub_0205EBA4(playerAvatar, (1 << 0));
    }
}

int sub_0205EF58(PlayerAvatar *playerAvatar)
{
    if (sub_0205EBB0(playerAvatar, (1 << 0))) {
        return 1;
    }

    return 0;
}

void sub_0205EF6C(PlayerAvatar *playerAvatar, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(playerAvatar, (1 << 1));
    } else {
        sub_0205EBA4(playerAvatar, (1 << 1));
    }
}

int sub_0205EF84(PlayerAvatar *playerAvatar)
{
    if (sub_0205EBB0(playerAvatar, (1 << 1))) {
        return 1;
    }

    return 0;
}

void sub_0205EF98(PlayerAvatar *playerAvatar, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(playerAvatar, (1 << 2));
    } else {
        sub_0205EBA4(playerAvatar, (1 << 2));
    }
}

BOOL sub_0205EFB0(PlayerAvatar *playerAvatar)
{
    if (sub_0205EBB0(playerAvatar, (1 << 2))) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205EFC4(PlayerAvatar *playerAvatar, int flag)
{
    if (flag == TRUE) {
        sub_0205EB9C(playerAvatar, (1 << 3));
    } else {
        sub_0205EBA4(playerAvatar, (1 << 3));
    }
}

BOOL sub_0205EFDC(PlayerAvatar *playerAvatar)
{
    if (sub_0205EBB0(playerAvatar, (1 << 3))) {
        return TRUE;
    }

    return FALSE;
}

void PlayerAvatar_SetInDeepSwamp(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        sub_0205EB9C(playerAvatar, (1 << 4));
    } else {
        sub_0205EBA4(playerAvatar, (1 << 4));
    }
}

BOOL PlayerAvatar_IsNotInDeepSwamp(PlayerAvatar *playerAvatar)
{
    if (sub_0205EBB0(playerAvatar, (1 << 4))) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205F01C(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        sub_0205EB9C(playerAvatar, (1 << 5));
    } else {
        sub_0205EBA4(playerAvatar, (1 << 5));
    }
}

BOOL sub_0205F034(PlayerAvatar *playerAvatar)
{
    if (sub_0205EBB0(playerAvatar, (1 << 5))) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205F048(PlayerAvatar *playerAvatar)
{
    sub_0205EB9C(playerAvatar, (1 << 6));
}

void sub_0205F054(PlayerAvatar *playerAvatar)
{
    sub_0205EBA4(playerAvatar, (1 << 6));
}

BOOL sub_0205F060(PlayerAvatar *playerAvatar)
{
    if (sub_0205EBB0(playerAvatar, (1 << 6))) {
        return TRUE;
    }

    return FALSE;
}

void sub_0205F074(PlayerAvatar *playerAvatar, BOOL flag)
{
    if (flag == TRUE) {
        sub_0205EB9C(playerAvatar, (1 << 7));
    } else {
        sub_0205EBA4(playerAvatar, (1 << 7));
    }
}

int sub_0205F08C(PlayerAvatar *playerAvatar)
{
    return sub_0205EBB0(playerAvatar, (1 << 7));
}

void PlayerAvatar_SetDistortionState(PlayerAvatar *playerAvatar, enum AvatarDistortionState state)
{
    sub_0205EBA4(playerAvatar, ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12)));

    switch (state) {
    case AVATAR_DISTORTION_STATE_NONE:
        return;
    case AVATAR_DISTORTION_STATE_ACTIVE:
        sub_0205EB9C(playerAvatar, (1 << 8));
        return;
    case AVATAR_DISTORTION_STATE_FLOOR:
        sub_0205EB9C(playerAvatar, (1 << 9));
        return;
    case AVATAR_DISTORTION_STATE_WEST_WALL:
        sub_0205EB9C(playerAvatar, (1 << 10));
        return;
    case AVATAR_DISTORTION_STATE_EAST_WALL:
        sub_0205EB9C(playerAvatar, (1 << 11));
        return;
    case AVATAR_DISTORTION_STATE_CEILING:
        sub_0205EB9C(playerAvatar, (1 << 12));
        return;
    }

    GF_ASSERT(0);
}

enum AvatarDistortionState PlayerAvatar_MapDistortionState(PlayerAvatar *const playerAvatar)
{
    enum AvatarDistortionState state = AVATAR_DISTORTION_STATE_NONE;
    u32 v1 = sub_0205EBB0(playerAvatar, ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12)));

    switch (v1) {
    case (1 << 8):
        state = AVATAR_DISTORTION_STATE_ACTIVE;
        break;
    case (1 << 9):
        state = AVATAR_DISTORTION_STATE_FLOOR;
        break;
    case (1 << 10):
        state = AVATAR_DISTORTION_STATE_WEST_WALL;
        break;
    case (1 << 11):
        state = AVATAR_DISTORTION_STATE_EAST_WALL;
        break;
    case (1 << 12):
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
