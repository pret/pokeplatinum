#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_0205EC34.h"

#include "heap.h"
#include "player_avatar.h"
#include "map_object.h"
#include "unk_02063400.h"
#include "overlay005/ov5_021F25C0.h"
#include "overlay005/ov5_021F61BC.h"

typedef struct UnkStruct_0205E884_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    int unk_0C;
    u32 unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int gender;
    int unk_24;
    int unk_28;
    int unk_2C;
    MapObject * mapObject;
    UnkStruct_ov101_021D5D90 * unk_34;
    PlayerData * player;
    const PlayerData * unk_3C;
} PlayerAvatar;

static PlayerAvatar * PlayerAvatar_Alloc(void);
static void sub_0205E91C(PlayerAvatar * param0, int param1, int param2, PlayerData * param3);
static void PlayerAvatar_AddMapObject(PlayerAvatar * param0, const MapObjectManager * param1, int param2, int param3, int param4, int param5);
static MapObject * sub_0205EA64(const MapObjectManager * param0);
static void sub_0205EB9C(PlayerAvatar * param0, u32 param1);
static void sub_0205EBA4(PlayerAvatar * param0, u32 param1);
static u32 sub_0205EBB0(PlayerAvatar * param0, u32 param1);
static void PlayerAvatar_SetPlayerData(PlayerAvatar * param0, PlayerData * param1);

PlayerAvatar * PlayerAvatar_Init (const MapObjectManager * mapObjMan, int param1, int param2, int param3, int param4, int param5, int param6, PlayerData * param7)
{
    PlayerAvatar * playerAvatar;

    playerAvatar = PlayerAvatar_Alloc();
    sub_0205E91C(playerAvatar, param4, param5, param7);

    {
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

        PlayerAvatar_AddMapObject(playerAvatar, mapObjMan, v1, param3, param1, param2);
    }

    return playerAvatar;
}

PlayerAvatar * sub_0205E820 (const MapObjectManager * mapObjMan, PlayerData * param1, int param2)
{
    int v0;
    PlayerAvatar * playerAvatar;
    MapObject * mapObj;

    playerAvatar = PlayerAvatar_Alloc();
    v0 = sub_0205EC94(param1);

    sub_0205E91C(playerAvatar, v0, param2, param1);
    mapObj = sub_0205EA64(mapObjMan);

    sub_0206291C(mapObj, Player_MoveStateFromGender(v0, param2));
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_10 | MAP_OBJ_STATUS_13);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR | MAP_OBJ_STATUS_PAUSE_ANIMATION);
    sub_02062F90(mapObj, 1);
    PlayerAvatar_SetMapObject(playerAvatar, mapObj);

    return playerAvatar;
}

void PlayerAvatar_InitDraw (PlayerAvatar * playerAvatar, int groundId)
{
    MapObject * mapObj;

    mapObj = Player_MapObject(playerAvatar);
    GF_ASSERT(mapObj != NULL);
    sub_02062A40(mapObj);

    ov5_021F6218(playerAvatar);

    if (sub_0205EB74(playerAvatar) == 0x2) {
        if (groundId != 9) {
            int x = Player_XPos(playerAvatar);
            int z = Player_ZPos(playerAvatar);
            int dir = Player_Dir(playerAvatar);
            UnkStruct_ov101_021D5D90 * v7 = ov5_021F261C(mapObj, x, z, dir, 1);

            sub_0205EC00(playerAvatar, v7);
        }
    }
}

void Player_Delete (PlayerAvatar * playerAvatar)
{
    Heap_FreeToHeap(playerAvatar);
}

void Player_DeleteAll (PlayerAvatar * playerAvatar)
{
    MapObject * mapObject = Player_MapObject(playerAvatar);

    MapObject_Delete(mapObject);
    Player_Delete(playerAvatar);
}

static PlayerAvatar * PlayerAvatar_Alloc (void)
{
    PlayerAvatar * playerAvatar;

    playerAvatar = Heap_AllocFromHeap(11, (sizeof(PlayerAvatar)));
    GF_ASSERT(playerAvatar != NULL);
    memset(playerAvatar, 0, (sizeof(PlayerAvatar)));

    return playerAvatar;
}

static void sub_0205E91C (PlayerAvatar * playerAvatar, int param1, int gender, PlayerData * param3)
{
    PlayerAvatar_SetPlayerData(playerAvatar, param3);

    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);
    sub_0205EB58(playerAvatar, param1);
    PlayerAvatar_SetGender(playerAvatar, gender);
    sub_0205EB8C(playerAvatar, 0);
    sub_0205EBC0(playerAvatar);
    sub_0205EBDC(playerAvatar, -1);
    sub_0205EBE4(playerAvatar, -1);
    sub_0205EC20(playerAvatar, 0xff, 0);

    sub_0205EF6C(playerAvatar, 1);
    sub_0205EFF0(playerAvatar, 1);
}

static void PlayerAvatar_AddMapObject (PlayerAvatar * playerAvatar, const MapObjectManager * param1, int param2, int param3, int param4, int param5)
{
    MapObject * mapObj;

    mapObj = sub_020619DC(param1, param4, param5, param3, param2, 0x1, 1);
    GF_ASSERT(mapObj != NULL);

    LocalMapObj_SetId(mapObj, 0xff);
    sub_0206294C(mapObj, 0);
    sub_02062954(mapObj, 0);
    sub_0206295C(mapObj, 0);
    sub_020629B4(mapObj, 0, 0);
    sub_020629B4(mapObj, 0, 1);
    sub_020629B4(mapObj, 0, 2);
    sub_020629FC(mapObj, -1);
    sub_02062A04(mapObj, -1);
    MapObject_SetStatusFlagOn(mapObj, ((1 << 10) | (1 << 13)));
    MapObject_SetStatusFlagOff(mapObj, ((1 << 7) | (1 << 8)));
    sub_02062F90(mapObj, 1);

    PlayerAvatar_SetMapObject(playerAvatar, mapObj);
}

MapObject * sub_0205EA24 (const MapObjectManager * mapObjMan)
{
    int v0 = 0;
    MapObject * mapObj = NULL;

    while (sub_020625B0(mapObjMan, &mapObj, &v0, (1 << 0))) {
        if (sub_02062948(mapObj) == 0x1) {
            break;
        }
    }

    return mapObj;
}

static MapObject * sub_0205EA64 (const MapObjectManager * mapObjMan)
{
    MapObject * v0 = sub_0205EA24(mapObjMan);

    GF_ASSERT(v0 != NULL);
    return v0;
}

int Player_Dir (PlayerAvatar * const playerAvatar)
{
    return MapObject_Dir(Player_MapObject(playerAvatar));
}

void Player_SetDir (PlayerAvatar * playerAvatar, int dir)
{
    MapObject_SetDir(Player_MapObject(playerAvatar), dir);
}

int PlayerAvatar_MoveDir (PlayerAvatar * const playerAvatar)
{
    return MapObject_MoveDir(Player_MapObject(playerAvatar));
}

int sub_0205EAA0 (PlayerAvatar * const playerAvatar)
{
    if (sub_0205F16C(playerAvatar) == 1) {
        return Player_Dir(playerAvatar);
    }

    return PlayerAvatar_MoveDir(playerAvatar);
}

int Player_XPos (PlayerAvatar * const playerAvatar)
{
    return MapObject_XPos(Player_MapObject(playerAvatar));
}

int Player_ZPos (PlayerAvatar * const playerAvatar)
{
    return MapObject_ZPos(Player_MapObject(playerAvatar));
}

int PlayerAvatar_XPosPrev (PlayerAvatar * const playerAvatar)
{
    return MapObject_XPosPrev(Player_MapObject(playerAvatar));
}

int PlayerAvatar_ZPosPrev (PlayerAvatar * const playerAvatar)
{
    return MapObject_ZPosPrev(Player_MapObject(playerAvatar));
}

void PlayerAvatar_PosVectorOut (PlayerAvatar * const playerAvatar, VecFx32 * pos)
{
    MapObject_PosVectorOut(Player_MapObject(playerAvatar), pos);
}

const VecFx32 * PlayerAvatar_PosVector (PlayerAvatar * const playerAvatar)
{
    return MapObject_PosVector(PlayerAvatar_ConstMapObject(playerAvatar));
}

void sub_0205EB08 (PlayerAvatar * playerAvatar, int param1)
{
    playerAvatar->unk_14 = param1;
}

int sub_0205EB0C (const PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_14;
}

void sub_0205EB10 (PlayerAvatar * playerAvatar, int param1)
{
    playerAvatar->unk_18 = param1;
}

int Player_MoveState (const PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_18;
}

void PlayerAvatar_SetHidden (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0;

    v0 = Player_MapObject(playerAvatar);

    if (param1 == 1) {
        MapObject_SetStatusFlagOff(v0, MAP_OBJ_STATUS_HIDE);
    } else {
        MapObject_SetStatusFlagOn(v0, MAP_OBJ_STATUS_HIDE);
    }
}

void PlayerAvatar_SetMapObject (PlayerAvatar * playerAvatar, MapObject * mapObject)
{
    playerAvatar->mapObject = mapObject;
}

MapObject * Player_MapObject (PlayerAvatar * playerAvatar)
{
    GF_ASSERT(playerAvatar != NULL);
    GF_ASSERT(playerAvatar->mapObject != NULL);

    return playerAvatar->mapObject;
}

const MapObject * PlayerAvatar_ConstMapObject (const PlayerAvatar * playerAvatar)
{
    return playerAvatar->mapObject;
}

void sub_0205EB58 (PlayerAvatar * playerAvatar, int param1)
{
    GF_ASSERT(param1 < 0x6);
    playerAvatar->unk_1C = param1;

    sub_0205ECA8(playerAvatar, param1);
}

int sub_0205EB74 (PlayerAvatar * playerAvatar)
{
    GF_ASSERT(playerAvatar != NULL);
    return playerAvatar->unk_1C;
}

void sub_0205EB84 (PlayerAvatar * playerAvatar, u32 param1)
{
    playerAvatar->unk_04 |= param1;
}

void sub_0205EB8C (PlayerAvatar * playerAvatar, u32 param1)
{
    playerAvatar->unk_04 = param1;
}

u32 sub_0205EB90 (PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_04;
}

void PlayerAvatar_SetGender (PlayerAvatar * playerAvatar, int gender)
{
    playerAvatar->gender = gender;
}

int PlayerAvatar_Gender (PlayerAvatar * playerAvatar)
{
    return playerAvatar->gender;
}

static void sub_0205EB9C (PlayerAvatar * playerAvatar, u32 param1)
{
    playerAvatar->unk_00 |= param1;
}

static void sub_0205EBA4 (PlayerAvatar * playerAvatar, u32 param1)
{
    playerAvatar->unk_00 &= ~param1;
}

static u32 sub_0205EBB0 (PlayerAvatar * playerAvatar, u32 param1)
{
    return playerAvatar->unk_00 & param1;
}

int sub_0205EBB8 (PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_24;
}

void sub_0205EBBC (PlayerAvatar * playerAvatar, int param1)
{
    playerAvatar->unk_24 = param1;
}

void sub_0205EBC0 (PlayerAvatar * playerAvatar)
{
    playerAvatar->unk_24 = 0;
    sub_0205EF98(playerAvatar, 0);
}

int sub_0205EBCC (PlayerAvatar * playerAvatar, int param1, int param2)
{
    playerAvatar->unk_24 += param1;

    if (playerAvatar->unk_24 > param2) {
        playerAvatar->unk_24 = param2;
    }

    return playerAvatar->unk_24;
}

void sub_0205EBDC (PlayerAvatar * playerAvatar, int param1)
{
    playerAvatar->unk_28 = param1;
}

int sub_0205EBE0 (PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_28;
}

void sub_0205EBE4 (PlayerAvatar * playerAvatar, int param1)
{
    playerAvatar->unk_2C = param1;
}

int sub_0205EBE8 (PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_2C;
}

void sub_0205EBEC (PlayerAvatar * playerAvatar, int param1, int param2)
{
    sub_0205EBDC(playerAvatar, param1);
    sub_0205EBE4(playerAvatar, param2);
}

void sub_0205EC00 (PlayerAvatar * playerAvatar, UnkStruct_ov101_021D5D90 * param1)
{
    playerAvatar->unk_34 = param1;
}

UnkStruct_ov101_021D5D90 * sub_0205EC04 (PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_34;
}

static void PlayerAvatar_SetPlayerData (PlayerAvatar * playerAvatar, PlayerData * player)
{
    playerAvatar->player = player;
}

PlayerData * PlayerAvatar_PlayerData (PlayerAvatar * playerAvatar)
{
    return playerAvatar->player;
}

void sub_0205EC10 (PlayerAvatar * playerAvatar, u32 param1)
{
    playerAvatar->unk_08 = param1;
}

u32 sub_0205EC14 (PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_08;
}

void sub_0205EC18 (PlayerAvatar * playerAvatar, int param1)
{
    playerAvatar->unk_0C = param1;
}

int sub_0205EC1C (PlayerAvatar * playerAvatar)
{
    return playerAvatar->unk_0C;
}

void sub_0205EC20 (PlayerAvatar * playerAvatar, u32 param1, int param2)
{
    sub_0205EC10(playerAvatar, param1);
    sub_0205EC18(playerAvatar, param2);
}

void PlayerData_Init (PlayerData * playerData)
{
    playerData->unk_00 = 0;
    playerData->runningShoes = FALSE;
    playerData->unk_04 = 0x0;
}

int PlayerData_HasRunningShoes (PlayerData * playerData)
{
    if (playerData != NULL) {
        if (playerData->runningShoes == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

void PlayerData_SetRunningShoes (PlayerData * playerData, int flag)
{
    if (flag == 1) {
        playerData->runningShoes = TRUE;
    } else {
        playerData->runningShoes = FALSE;
    }
}

int sub_0205EC64 (PlayerData * playerData)
{
    if (playerData == NULL) {
        return 0;
    }

    return playerData->unk_00;
}

void sub_0205EC70 (PlayerData * playerData, int param1)
{
    if (playerData != NULL) {
        playerData->unk_00 = param1;
    }
}

void sub_0205EC78 (PlayerAvatar * playerAvatar, int param1)
{
    PlayerData * v0 = PlayerAvatar_PlayerData(playerAvatar);
    sub_0205EC70(v0, param1);
}

int sub_0205EC88 (PlayerAvatar * playerAvatar)
{
    PlayerData * v0 = PlayerAvatar_PlayerData(playerAvatar);
    return sub_0205EC64(v0);
}

u32 sub_0205EC94 (PlayerData * player)
{
    if (player != NULL) {
        return player->unk_04;
    }

    return 0x0;
}

void sub_0205ECA0 (PlayerData * player, u32 param1)
{
    if (player != NULL) {
        player->unk_04 = param1;
    }
}

void sub_0205ECA8 (PlayerAvatar * playerAvatar, u32 param1)
{
    PlayerData * v0 = PlayerAvatar_PlayerData(playerAvatar);
    sub_0205ECA0(v0, param1);
}

void sub_0205ECB8 (PlayerAvatar * playerAvatar, const VecFx32 * param1, int param2)
{
    MapObject * v0;

    v0 = Player_MapObject(playerAvatar);

    sub_020632D4(v0, param1, param2);
    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);
}

void sub_0205ECE0 (PlayerAvatar * playerAvatar, int param1, int param2, int param3)
{
    MapObject * v0;

    v0 = Player_MapObject(playerAvatar);

    LocalMapObj_SetPosDir(v0, param1, 0, param2, param3);
    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);
}

void sub_0205ED0C (PlayerAvatar * playerAvatar, fx32 param1)
{
    VecFx32 v0;
    MapObject * v1 = Player_MapObject(playerAvatar);

    MapObject_PosVectorOut(v1, &v0);
    v0.y = param1;
    sub_02063060(v1, &v0);
}

void sub_0205ED2C (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0 = Player_MapObject(playerAvatar);

    if (param1 == 1) {
        sub_02062E28(v0, 0);
    } else {
        sub_02062E28(v0, 1);
    }
}

void sub_0205ED48 (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0 = Player_MapObject(playerAvatar);

    if (param1 == 1) {
        sub_02062E28(v0, 0);
        sub_020642F8(v0);
    } else {
        sub_02062E28(v0, 1);
    }
}

int Player_MoveStateFromGender (int param0, int param1)
{
    if (param1 == 0) {
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

u32 sub_0205EED8 (int param0)
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

PlayerAvatar * sub_0205EF3C (FieldSystem * param0)
{
    return param0->playerAvatar;
}

void sub_0205EF40 (PlayerAvatar * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 0));
    } else {
        sub_0205EBA4(param0, (1 << 0));
    }
}

int sub_0205EF58 (PlayerAvatar * param0)
{
    if (sub_0205EBB0(param0, (1 << 0))) {
        return 1;
    }

    return 0;
}

void sub_0205EF6C (PlayerAvatar * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 1));
    } else {
        sub_0205EBA4(param0, (1 << 1));
    }
}

int sub_0205EF84 (PlayerAvatar * param0)
{
    if (sub_0205EBB0(param0, (1 << 1))) {
        return 1;
    }

    return 0;
}

void sub_0205EF98 (PlayerAvatar * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 2));
    } else {
        sub_0205EBA4(param0, (1 << 2));
    }
}

int sub_0205EFB0 (PlayerAvatar * param0)
{
    if (sub_0205EBB0(param0, (1 << 2))) {
        return 1;
    }

    return 0;
}

void sub_0205EFC4 (PlayerAvatar * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 3));
    } else {
        sub_0205EBA4(param0, (1 << 3));
    }
}

int sub_0205EFDC (PlayerAvatar * param0)
{
    if (sub_0205EBB0(param0, (1 << 3))) {
        return 1;
    }

    return 0;
}

void sub_0205EFF0 (PlayerAvatar * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 4));
    } else {
        sub_0205EBA4(param0, (1 << 4));
    }
}

int sub_0205F008 (PlayerAvatar * param0)
{
    if (sub_0205EBB0(param0, (1 << 4))) {
        return 1;
    }

    return 0;
}

void sub_0205F01C (PlayerAvatar * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 5));
    } else {
        sub_0205EBA4(param0, (1 << 5));
    }
}

int sub_0205F034 (PlayerAvatar * param0)
{
    if (sub_0205EBB0(param0, (1 << 5))) {
        return 1;
    }

    return 0;
}

void sub_0205F048 (PlayerAvatar * param0)
{
    sub_0205EB9C(param0, (1 << 6));
}

void sub_0205F054 (PlayerAvatar * param0)
{
    sub_0205EBA4(param0, (1 << 6));
}

int sub_0205F060 (PlayerAvatar * param0)
{
    if (sub_0205EBB0(param0, (1 << 6))) {
        return 1;
    }

    return 0;
}

void sub_0205F074 (PlayerAvatar * param0, int param1)
{
    if (param1 == 1) {
        sub_0205EB9C(param0, (1 << 7));
    } else {
        sub_0205EBA4(param0, (1 << 7));
    }
}

int sub_0205F08C (PlayerAvatar * param0)
{
    return sub_0205EBB0(param0, (1 << 7));
}

void sub_0205F098 (PlayerAvatar * param0, int param1)
{
    sub_0205EBA4(param0, ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12)));

    switch (param1) {
    case 0:
        return;
    case 1:
        sub_0205EB9C(param0, (1 << 8));
        return;
    case 2:
        sub_0205EB9C(param0, (1 << 9));
        return;
    case 3:
        sub_0205EB9C(param0, (1 << 10));
        return;
    case 4:
        sub_0205EB9C(param0, (1 << 11));
        return;
    case 5:
        sub_0205EB9C(param0, (1 << 12));
        return;
    }

    GF_ASSERT(0);
}

int sub_0205F108 (PlayerAvatar * const param0)
{
    int v0 = 0;
    u32 v1 = sub_0205EBB0(param0, ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11) | (1 << 12)));

    switch (v1) {
    case (1 << 8):
        v0 = 1;
        break;
    case (1 << 9):
        v0 = 2;
        break;
    case (1 << 10):
        v0 = 3;
        break;
    case (1 << 11):
        v0 = 4;
        break;
    case (1 << 12):
        v0 = 5;
        break;
    }

    return v0;
}

BOOL sub_0205F158 (PlayerAvatar * const param0)
{
    int v0 = sub_0205F108(param0);

    if ((v0 == 0) || (v0 == 1)) {
        return 0;
    }

    return 1;
}

BOOL sub_0205F16C (PlayerAvatar * const param0)
{
    int v0 = sub_0205F108(param0);

    if ((v0 == 0) || (v0 == 1) || (v0 == 2)) {
        return 1;
    }

    return 0;
}
