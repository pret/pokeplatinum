#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021E8F60_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_0205EC34.h"

#include "unk_02005474.h"
#include "unk_0202CD50.h"
#include "unk_02054D00.h"
#include "unk_0205DAC8.h"
#include "player_avatar.h"
#include "unk_0205F180.h"
#include "map_object.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_02068344.h"
#include "unk_02071B10.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay009/ov9_02249960.h"

typedef BOOL (* UnkFuncPtr_020EDB84)(u8);

typedef struct {
    UnkFuncPtr_020EDB84 unk_00;
    u32 unk_04;
} UnkStruct_020EDB84;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_020EDB04;

static int PlayerAvatar_CheckStartMoveInternal(PlayerAvatar * playerAvatar, int param1);
static void PlayerAvatar_StartMoveInit(PlayerAvatar * playerAvatar, int param1, u16 param2, u16 param3);
static void sub_0205F378(PlayerAvatar * playerAvatar);
static void PlayerAvatar_PlayWalkSE(PlayerAvatar * playerAvatar);
static int sub_0205F62C(PlayerAvatar * playerAvatar, int param1);
static u32 sub_0205F644(PlayerAvatar * playerAvatar, int param1);
static int sub_0205F6A4(PlayerAvatar * playerAvatar, u32 param1, int param2);
static void sub_0205FA6C(PlayerAvatar * playerAvatar);
static int sub_0205FAB0(PlayerAvatar * playerAvatar, int param1);
static int sub_0205FB10(PlayerAvatar * playerAvatar, int param1);
static void sub_0205FB40(PlayerAvatar * playerAvatar, int param1);
static void inline_0205F180(PlayerAvatar * playerAvatar, const UnkStruct_ov5_021E8F60 * param1, int param2, u16 param3, u16 param4);
static void inline_0205F180_sub(PlayerAvatar * playerAvatar, MapObject * param1, const UnkStruct_ov5_021E8F60 * param2, int param3, u16 param4, u16 param5);
static int sub_0205FC48(PlayerAvatar * playerAvatar, int param1);
static int sub_0205FC64(int param0);
static int sub_0205FC88(MapObject * mapObj, u8 param1, int param2);
static int sub_0205FCBC(MapObject * mapObj, u8 param1, int param2);
static int sub_0205FCC0(PlayerAvatar * playerAvatar, int param1);
static void sub_0205FD20(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_0205FD40(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_0205FDC8(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_0205FECC(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_020600CC(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_02060150(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_020601D4(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_02060258(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_020602DC(PlayerAvatar * playerAvatar, MapObject * param1, const UnkStruct_ov5_021E8F60 * param2, int param3, u16 param4, u16 param5);
static void sub_02060324(PlayerAvatar * playerAvatar, u16 param1);
int sub_02060390(PlayerAvatar * playerAvatar, int param1);
static int sub_020603BC(PlayerAvatar * playerAvatar);
static int sub_020603EC(PlayerAvatar * playerAvatar);
static void sub_02060420(PlayerAvatar * playerAvatar, MapObject * param1, const UnkStruct_ov5_021E8F60 * param2, int param3, u16 param4, u16 param5);
static int sub_02060494(PlayerAvatar * playerAvatar, int param1);
static int sub_020604B0(int param0);
static int sub_020604E4(PlayerAvatar * playerAvatar, int param1);
static void sub_02060548(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_02060570(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_02060688(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_020606C8(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_0206078C(PlayerAvatar * playerAvatar, MapObject * param1, const UnkStruct_ov5_021E8F60 * param2, int param3, u16 param4, u16 param5);
static int sub_02060800(PlayerAvatar * playerAvatar, int param1);
static int sub_0206081C(int param0);
static int sub_02060850(PlayerAvatar * playerAvatar, int param1);
static void sub_020608BC(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_020608E4(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_02060A60(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static void sub_02060AA0(PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4);
static u32 sub_02060C24(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02060CE4(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02060D98(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02060E40(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02060EE4(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02060F4C(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02060FA8(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02061058(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02061180(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02061100(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02061248(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int sub_02061310(u16 param0);
static int sub_0206132C(u16 param0);
static int sub_02061348(PlayerAvatar * playerAvatar, u16 param1, u16 param2);
static int sub_020613D8(int param0);
static void sub_020615C8(PlayerAvatar * playerAvatar);
static int sub_020615E0(PlayerAvatar * playerAvatar, MapObject * param1, int param2);
static int PlayerAvatar_IsUnderCyclingRoad(PlayerAvatar * playerAvatar, u32 param1, int param2);
static void sub_02060B64(PlayerAvatar * playerAvatar, MapObject * param1, u32 param2, int param3);

static const UnkStruct_020EDB04 Unk_020EDB04[4] = {
    {0x0, 0x0, -1},
    {0x0, 0x0, 0x1},
    {-1, 0x0, 0x0},
    {0x1, 0x0, 0x0}
};

static const UnkStruct_020EDB04 Unk_020EDB24[4] = {
    {0x0, 0x1, 0x0},
    {0x0, -1, 0x0},
    {0x0, 0x0, 0x1},
    {0x0, 0x0, -1}
};

static const UnkStruct_020EDB04 Unk_020EDB44[4] = {
    {0x0, 0x1, 0x0},
    {0x0, -1, 0x0},
    {0x0, 0x0, -1},
    {0x0, 0x0, 0x1}
};

static const UnkStruct_020EDB04 Unk_020EDB64[4] = {
    {0x0, 0x0, 0x1},
    {0x0, 0x0, -1},
    {-1, 0x0, 0x0},
    {0x1, 0x0, 0x0}
};

const UnkStruct_020EDB84 Unk_020EDB84[];
static int(*const Unk_020EDAEC[6])(PlayerAvatar *, int);

void sub_0205F180 (PlayerAvatar * playerAvatar, const UnkStruct_ov5_021E8F60 * param1, int dir, u16 param3, u16 keyPress, BOOL param5)
{
    if (dir == -1) {
        dir = sub_02061348(playerAvatar, param3, keyPress);
    }

    sub_02060324(playerAvatar, param3);

    if (PlayerAvatar_CheckStartMoveInternal(playerAvatar, dir) == FALSE) {
        return;
    }

    PlayerAvatar_StartMoveInit(playerAvatar, dir, param3, keyPress);
    ov5_021DFB5C(playerAvatar);

    if (sub_0205F62C(playerAvatar, dir) == 1) {
        ov5_021E0EEC(playerAvatar);
        return;
    }

    if (PlayerAvatar_PlayerState(playerAvatar) == 0x0) {
        int v0 = sub_0205FC48(playerAvatar, dir);

        if (v0 != 0) {
            ov5_021E0EEC(playerAvatar);
        } else if (param5 == 1) {
            ov5_021E0E94(playerAvatar);
        }
    }

    inline_0205F180(playerAvatar, param1, dir, param3, keyPress);

    sub_0205F378(playerAvatar);
    PlayerAvatar_PlayWalkSE(playerAvatar);
}

int PlayerAvatar_CheckStartMove (PlayerAvatar * playerAvatar, int dir)
{
    return PlayerAvatar_CheckStartMoveInternal(playerAvatar, dir);
}

static int PlayerAvatar_CheckStartMoveInternal (PlayerAvatar * playerAvatar, int dir)
{
    int v0;
    MapObject * mapObj;

    mapObj = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(mapObj) == 1) {
        return 1;
    }

    if (dir == -1) {
        return 0;
    }

    v0 = sub_02062BB8(mapObj);

    if (sub_020613D8(v0) == 1) {
        u32 v2;

        if (sub_0205F158(playerAvatar) == 1) {
            v2 = sub_020611FC(playerAvatar, mapObj, dir);

            if ((v2 & (~(1 << 7))) && (sub_0205F108(playerAvatar) == 2)) {
                FieldSystem * v3 = MapObject_FieldSystem(mapObj);
                int v4, v5 = MapObject_XPos(mapObj);
                int v6, v7 = MapObject_YPos(mapObj);
                int v8, v9 = MapObject_ZPos(mapObj);

                v7 = ((v7) / 2);
                v4 = v5;
                v6 = v7;
                v8 = v9;

                sub_02061674(playerAvatar, dir, &v4, &v6, &v8);

                if (ov9_02250FBC(v3, v4, v6, v8) == 0) {
                    if (ov9_02250FD8(v3, v4, v6, v8) == 1) {
                        ov9_02251000(v3, v4, v6, v8);
                        v2 = sub_020611FC(playerAvatar, mapObj, dir);
                        ov9_02251000(v3, v5, v7, v9);
                    }
                }
            }
        } else {
            v2 = sub_02060B7C(playerAvatar, mapObj, dir);
        }

        if (v2 == 0) {
            return 1;
        }

        if ((v2 == (1 << 5)) && (PlayerAvatar_PlayerState(playerAvatar) == 0x2)) {
            return 1;
        }

        return 0;
    }

    return 0;
}

static void PlayerAvatar_StartMoveInit (PlayerAvatar * playerAvatar, int param1, u16 param2, u16 param3)
{
    sub_0205EBEC(playerAvatar, sub_02061310(param3), sub_0206132C(param3));
    sub_0205F054(playerAvatar);
}

static void sub_0205F378 (PlayerAvatar * playerAvatar)
{
    if ((sub_0205F060(playerAvatar) == 1) && (PlayerAvatar_MoveState(playerAvatar) == 1)) {
        sub_0205EF6C(playerAvatar, 0);

        if (PlayerAvatar_IsNotInDeepSwamp(playerAvatar) == 1) {
            PlayerAvatar_SetInDeepSwamp(playerAvatar, 0);
            sub_02062EE0(Player_MapObject(playerAvatar), 0);
        }
    }
}

static void PlayerAvatar_PlayWalkSE (PlayerAvatar * playerAvatar)
{
    if (PlayerAvatar_MoveState(playerAvatar) == 1) {
        MapObject * mapObj = Player_MapObject(playerAvatar);
        u8 v1, v2 = sub_02062BE8(mapObj);

        {
            int v3 = sub_02062BB8(mapObj);
            int v4 = sub_0206587C(v3);

            if (v4 == -1) {
                v1 = v2;
            } else {
                v1 = sub_02064238(mapObj, v4);
            }
        }

        if ((MapObject_IsOnSnow(mapObj, v2) == 1) || (sub_0205DFAC(v2) == 1)) {
            Sound_PlayEffect(1353);
        }

        if (sub_0205DE5C(v2) == 1) {
            Sound_PlayEffect(1601);
        }

        if (sub_0205DB78(v2) == 1) {
            Sound_PlayEffect(1602);
        }

        if (sub_0205DB6C(v2) == 1) {
            
        }

        if ((sub_0205DCE0(v2) == 1) && (sub_0205DCF0(v2) != 1)) {
            Sound_PlayEffect(1621);
        }

        {
            int v5 = sub_02062BB8(mapObj);

            if (sub_020613D8(v5) == 0) {
                if ((sub_0205DAD4(v2) == 1) || (sub_0205DAD4(v1) == 1)) {
                    Sound_PlayEffect(1619);
                }
            }
        }
    }
}

void sub_0205F490 (PlayerAvatar * playerAvatar)
{
    int v0, v1, v2;
    const MapObject * v3;

    v0 = PlayerAvatar_MoveState(playerAvatar);
    v1 = Player_MoveState(playerAvatar);
    v3 = Player_MapObject(playerAvatar);

    sub_0205EB10(playerAvatar, 0);

    {
        u32 v4 = sub_0205F644(playerAvatar, -1);

        if ((v4 != 0) && (v4 != 5)) {
            sub_0205EB10(playerAvatar, 2);
            return;
        }
    }

    if (LocalMapObj_IsAnimationSet(v3) == 0) {
        switch (v0) {
        case 0:
            break;
        case 1:
            v2 = sub_02062BB8(v3);

            if (sub_020613D8(v2) == 1) {
                break;
            }

            if ((v1 == 0) || (v1 == 3)) {
                sub_0205EB10(playerAvatar, 1);
            } else {
                sub_0205EB10(playerAvatar, 2);
            }
            break;
        case 2:
            sub_0205EB10(playerAvatar, 2);
            break;
        }

        return;
    }

    if (LocalMapObj_CheckAnimationFinished(v3) == 1) {
        switch (v0) {
        case 0:
            break;
        case 1:
            switch (v1) {
            case 0:
                break;
            case 3:
                sub_0205EB10(playerAvatar, 0);
                break;
            default:
                sub_0205EB10(playerAvatar, 3);
            }
            break;
        case 2:
            switch (v1) {
            case 0:
                break;
            case 3:
                sub_0205EB10(playerAvatar, 0);
                break;
            default:
                sub_0205EB10(playerAvatar, 3);
            }
            break;
        }

        return;
    }
}

void sub_0205F56C (PlayerAvatar * playerAvatar)
{
    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

int sub_0205F588 (PlayerAvatar * playerAvatar)
{
    int v0, v1, v2;
    const MapObject * v3;

    v0 = PlayerAvatar_MoveState(playerAvatar);
    v1 = Player_MoveState(playerAvatar);

    if (v0 == 0) {
        return 1;
    }

    if (v0 == 2) {
        return 1;
    }

    if (v0 == 1) {
        if ((v1 == 0) || (v1 == 3)) {
            return 1;
        }

        v3 = Player_MapObject(playerAvatar);

        if (LocalMapObj_IsAnimationSet(v3) == 1) {
            return 1;
        }

        v2 = sub_02062BB8(v3);

        if (sub_020613D8(v2) == 1) {
            return 1;
        }
    }

    return 0;
}

void sub_0205F5E4 (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0;

    sub_0205EB08(playerAvatar, 0);
    sub_0205EB10(playerAvatar, 0);

    v0 = Player_MapObject(playerAvatar);

    MapObject_SetDir(v0, param1);
    sub_02062A0C(v0, 0x0);
    sub_02064208(v0);
    sub_020656DC(v0);
    LocalMapObj_SetAnimationCode(v0, sub_02065838(param1, 0x0));
}

static int sub_0205F62C (PlayerAvatar * playerAvatar, int param1)
{
    u32 v0 = sub_0205F644(playerAvatar, param1);

    v0 = sub_0205F6A4(playerAvatar, v0, param1);
    return v0;
}

static u32 sub_0205F644 (PlayerAvatar * playerAvatar, int param1)
{
    int v0 = 0;
    u32 v1 = sub_02062BE8(Player_MapObject(playerAvatar));

    if (PlayerAvatar_IsUnderCyclingRoad(playerAvatar, v1, param1) == 1) {
        return 5;
    }

    if (sub_0205EF84(playerAvatar) == 1) {
        return 0;
    }

    do {
        if (Unk_020EDB84[v0].unk_00(v1) == 1) {
            return Unk_020EDB84[v0].unk_04;
        }

        v0++;
    } while (Unk_020EDB84[v0].unk_00 != NULL);

    return 0;
}

static const UnkStruct_020EDB84 Unk_020EDB84[] = {
    {sub_0205DC5C, 0x1},
    {sub_0205DD68, 0x2},
    {sub_0205DD90, 0x3},
    {sub_0205DD9C, 0x4},
    {NULL, 0x6}
};

static int sub_0205F6A4 (PlayerAvatar * playerAvatar, u32 param1, int param2)
{
    if (Unk_020EDAEC[param1](playerAvatar, param2) == 1) {
        return 1;
    }

    return 0;
}

static int sub_0205F6C4 (PlayerAvatar * playerAvatar, int param1)
{
    sub_0205FA6C(playerAvatar);
    return 0;
}

static int sub_0205F6D0 (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0 = Player_MapObject(playerAvatar);
    int v1 = MapObject_MoveDir(v0);
    int v2 = sub_0205FAB0(playerAvatar, v1);
    u32 v3 = sub_02060B7C(playerAvatar, v0, v1);

    sub_0205EF40(playerAvatar, 1);

    if (v3 != 0) {
        sub_0205FA6C(playerAvatar);

        if (v2 != 1) {
            sub_0205EF6C(playerAvatar, 1);
            sub_0205EB08(playerAvatar, 0);
            return 0;
        }

        v1 = sub_0206447C(v1);
        v3 = sub_02060B7C(playerAvatar, v0, v1);

        if (v3 != 0) {
            return 0;
        }

        MapObject_SetStatusFlagOn(v0, (1 << 7) | (1 << 8));
        sub_02060B64(playerAvatar, v0, sub_02065838(v1, 0x8), 3);
        sub_0205EF6C(playerAvatar, 1);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
        sub_0205EB08(playerAvatar, 1);

        return 1;
    }

    if (sub_0205FB10(playerAvatar, v2) == 0) {
        sub_0205FA6C(playerAvatar);

        v1 = sub_0206447C(v1);
        v3 = sub_02060B7C(playerAvatar, v0, v1);

        if (v3 != 0) {
            return 0;
        }

        MapObject_SetStatusFlagOn(v0, (1 << 7) | (1 << 8));
        sub_02060B64(playerAvatar, v0, sub_02065838(v1, 0x8), 3);
        sub_0205EF6C(playerAvatar, 1);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else {
        MapObject_SetStatusFlagOn(v0, (1 << 7) | (1 << 8));
        sub_0205FB40(playerAvatar, v1);
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static int sub_0205F808 (PlayerAvatar * playerAvatar, int param1)
{
    u32 v0;
    MapObject * v1 = Player_MapObject(playerAvatar);
    int v2 = MapObject_MoveDir(v1);

    Sound_PlayEffect(1620);

    if (v2 == 0) {
        if ((PlayerAvatar_PlayerState(playerAvatar) == 0x1) && (PlayerAvatar_Speed(playerAvatar) >= 3)) {
            if (param1 == 0) {
                sub_02060B64(playerAvatar, v1, sub_02065838(v2, 0x15), 6);
                sub_0205EB08(playerAvatar, 1);
                return 1;
            }
        }

        v2 = sub_0206447C(v2);
        v0 = sub_02060B7C(playerAvatar, v1, v2);

        if (v0 != 0) {
            return 0;
        }

        MapObject_SetStatusFlagOn(v1, (1 << 7) | (1 << 8));
        sub_02060B64(playerAvatar, v1, sub_02065838(v2, 0x8), 3);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EF40(playerAvatar, 1);
        sub_0205EB08(playerAvatar, 1);
        sub_0205F01C(playerAvatar, 1);
        sub_0205EBEC(playerAvatar, -1, -1);
        return 1;
    } else if (v2 == 1) {
        if (sub_0205F034(playerAvatar) == 0) {
            sub_02060B64(playerAvatar, v1, sub_02065838(v2, 0x15), 6);
            sub_0205EB08(playerAvatar, 1);

            if (sub_0205EC88(playerAvatar) == 1) {
                PlayerAvatar_SetSpeed(playerAvatar, 3);
            }

            sub_0205EBEC(playerAvatar, -1, -1);
            return 1;
        } else {
            MapObject_SetStatusFlagOn(v1, (1 << 7) | (1 << 8));
            sub_02060B64(playerAvatar, v1, sub_02065838(v2, 0x8), 3);
            sub_0205EF40(playerAvatar, 1);
            sub_0205EB08(playerAvatar, 1);
            sub_0205F01C(playerAvatar, 1);
            sub_0205EBEC(playerAvatar, -1, -1);
            return 1;
        }
    }

    return 0;
}

static int sub_0205F95C (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0 = Player_MapObject(playerAvatar);
    int v1 = MapObject_MoveDir(v0);

    if (sub_0205EC88(playerAvatar) == 1) {
        Sound_PlayEffect(1622);
        sub_02060B64(playerAvatar, v0, 0x5f, 2);
    } else {
        sub_02060B64(playerAvatar, v0, 0x5d, 3);
    }

    sub_0205EF40(playerAvatar, 1);
    sub_0205F074(playerAvatar, 1);

    return 1;
}

static int sub_0205F9AC (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0 = Player_MapObject(playerAvatar);
    int v1 = MapObject_MoveDir(v0);

    if (sub_0205EC88(playerAvatar) == 1) {
        Sound_PlayEffect(1622);
        sub_02060B64(playerAvatar, v0, 0x5e, 2);
    } else {
        sub_02060B64(playerAvatar, v0, 0x5c, 2);
    }

    sub_0205EF40(playerAvatar, 1);
    sub_0205F074(playerAvatar, 1);

    return 1;
}

static int sub_0205F9FC (PlayerAvatar * playerAvatar, int param1)
{
    int v0 = 1;
    MapObject * v1 = Player_MapObject(playerAvatar);
    u32 v2 = sub_02060B7C(playerAvatar, v1, v0);

    if (v2 == 0) {
        sub_02060B64(playerAvatar, v1, sub_02065838(v0, 0x14), 6);
        sub_0205EB08(playerAvatar, 1);
        PlayerAvatar_SetSpeed(playerAvatar, 3);

        return 1;
    } else {
        sub_02060B64(playerAvatar, v1, sub_02065838(v0, 0x1), 1);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EB08(playerAvatar, 0);
        sub_0205EF98(playerAvatar, 0);
    }

    return 1;
}

static int(*const Unk_020EDAEC[6])(PlayerAvatar *, int) = {
    sub_0205F6C4,
    sub_0205F6D0,
    sub_0205F808,
    sub_0205F95C,
    sub_0205F9AC,
    sub_0205F9FC
};

static void sub_0205FA6C (PlayerAvatar * playerAvatar)
{
    if (sub_0205EF58(playerAvatar) == 1) {
        MapObject * v0 = Player_MapObject(playerAvatar);

        MapObject_SetStatusFlagOff(v0, (1 << 7) | (1 << 8));

        if (sub_0205F08C(playerAvatar) == 0) {
            PlayerAvatar_ClearSpeed(playerAvatar);
        }

        sub_0205EF40(playerAvatar, 0);
        sub_0205F074(playerAvatar, 0);
        sub_0205F01C(playerAvatar, 0);
    }
}

static int sub_0205FAB0 (PlayerAvatar * playerAvatar, int param1)
{
    int v0;
    VecFx32 v1, v2;
    MapObject * v3 = Player_MapObject(playerAvatar);
    FieldSystem * v4 = MapObject_FieldSystem(v3);

    MapObject_PosVectorOut(v3, &v1);
    v2 = v1;

    sub_02064418(param1, &v2, ((16 * FX32_ONE) >> 1) / 2);
    v0 = sub_020644A4(v4, &v2);

    if ((v0 == 0) || (v1.y == v2.y)) {
        return 0;
    }

    if (v1.y > v2.y) {
        return 2;
    }

    return 1;
}

static int sub_0205FB10 (PlayerAvatar * playerAvatar, int param1)
{
    int v0 = PlayerAvatar_Speed(playerAvatar);

    if (param1 == 1) {
        v0--;

        if (v0 < 0) {
            return 0;
        }
    } else if (param1 == 2) {
        v0++;

        if (v0 > 3) {
            v0 = 3;
        }
    }

    PlayerAvatar_SetSpeed(playerAvatar, v0);
    return 1;
}

static void sub_0205FB40 (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0 = Player_MapObject(playerAvatar);
    int v1 = 0x10;
    int v2 = PlayerAvatar_Speed(playerAvatar);
    int v3 = 5;

    switch (v2) {
    case 1:
        v1 = 0x50;
        v3 = 5;
        break;
    case 2:
        v1 = 0x14;
        v3 = 6;
        break;
    case 3:
        v1 = 0x14;
        v3 = 6;
        break;
    }

    v1 = sub_02065838(param1, v1);
    sub_02060B64(playerAvatar, v0, v1, v3);
}

static void inline_0205F180 (PlayerAvatar * playerAvatar, const UnkStruct_ov5_021E8F60 * param1, int param2, u16 param3, u16 param4)
{
    int v0 = PlayerAvatar_PlayerState(playerAvatar);
    MapObject * v1 = Player_MapObject(playerAvatar);

    switch (v0) {
    case 0x0:
    case 0x2:
        inline_0205F180_sub(playerAvatar, v1, param1, param2, param3, param4);
        break;
    case 0x1:
        sub_020602DC(playerAvatar, v1, param1, param2, param3, param4);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void inline_0205F180_sub (PlayerAvatar * playerAvatar, MapObject * param1, const UnkStruct_ov5_021E8F60 * param2, int param3, u16 param4, u16 param5)
{
    int v0;

    v0 = sub_0205FC48(playerAvatar, param3);

    switch (v0) {
    case 0:
        sub_0205FD20(playerAvatar, param1, param3, param4, param5);
        break;
    case 1:
        sub_0205FD40(playerAvatar, param1, param3, param4, param5);
        break;
    case 2:
        sub_02060258(playerAvatar, param1, param3, param4, param5);
        break;
    }
}

static int sub_0205FC48 (PlayerAvatar * playerAvatar, int param1)
{
    int v0 = sub_0205FCC0(playerAvatar, param1);
    int v1 = sub_0205FC64(v0);

    sub_0205EB08(playerAvatar, v1);
    return v0;
}

static int sub_0205FC64 (int param0)
{
    switch (param0) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int sub_0205FC88 (MapObject * param0, u8 param1, int param2)
{
    if (sub_0205DD5C(param1) == 1) {
        return 0x4;
    }

    if (sub_0205DD50(param1) == 1) {
        return 0x8;
    }

    if (sub_0205DD44(param1) == 1) {
        return 0xc;
    }

    return param2;
}

static int sub_0205FCBC (MapObject * param0, u8 param1, int param2)
{
    return param2;
}

static int sub_0205FCC0 (PlayerAvatar * playerAvatar, int param1)
{
    int v0;

    if (param1 == -1) {
        sub_0205EB08(playerAvatar, 0);
        return 0;
    }

    v0 = Player_Dir(playerAvatar);

    {
        int v1 = sub_0205F108(playerAvatar);

        if ((v1 != 0) && (v1 != 1) && (v1 != 2)) {
            v0 = PlayerAvatar_MoveDir(playerAvatar);
        }
    }

    if ((v0 != param1) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        sub_0205EB08(playerAvatar, 2);
        return 2;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void sub_0205FD20 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    int v0;

    v0 = sub_02065838(MapObject_Dir(param1), 0x0);
    sub_02060B64(playerAvatar, param1, v0, 1);
}

static void sub_0205FD40 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    int v0 = sub_0205F108(playerAvatar);

    switch (v0) {
    case 2:
        sub_0205FECC(playerAvatar, param1, param2, param3, param4);
        break;
    case 3:
        sub_020600CC(playerAvatar, param1, param2, param3, param4);
        break;
    case 4:
        sub_02060150(playerAvatar, param1, param2, param3, param4);
        break;
    case 5:
        sub_020601D4(playerAvatar, param1, param2, param3, param4);
        break;
    default:
        sub_0205FDC8(playerAvatar, param1, param2, param3, param4);
    }
}

static void sub_0205FDC8 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2;

    v0 = sub_02060B7C(playerAvatar, param1, param2);

    if (PlayerAvatar_PlayerState(playerAvatar) != 0x2) {
        if ((v0 & (1 << 2))) {
            v1 = 0x38;
            v2 = 3;
        } else if ((v0 & (1 << 7))) {
            v1 = 0x75;
            v2 = 2;
        } else if (v0 != 0) {
            v1 = 0x1c;
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
                Sound_PlayEffect(1537);
            }

            sub_02062994(param1, param2);
        } else {
            v1 = 0xc;
            v2 = 4;

            {
                PlayerData * v3 = PlayerAvatar_PlayerData(playerAvatar);

                if (PlayerData_HasRunningShoes(v3) == 1) {
                    if (sub_020613FC(playerAvatar, param4) == 1) {
                        v1 = 0x58;
                        v2 = 5;
                    }
                }
            }

            v1 = sub_0205FC88(param1, sub_02062BE8(param1), v1);

            sub_020615C8(playerAvatar);
            sub_0205F048(playerAvatar);
        }
    } else {
        if ((v0 == 0) || (v0 == (1 << 5))) {
            v2 = 5;
            v1 = 0x10;
            v1 = sub_0205FCBC(param1, sub_02062BE8(param1), v1);

            sub_020615C8(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            v1 = 0x1c;
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
                Sound_PlayEffect(1537);
            }

            sub_02062994(param1, param2);
        }
    }

    v1 = sub_02065838(param2, v1);
    sub_02060B64(playerAvatar, param1, v1, v2);
}

static void sub_0205FECC (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2;

    v0 = sub_020611FC(playerAvatar, param1, param2);

    if ((v0 & (~(1 << 7)))) {
        FieldSystem * v3 = MapObject_FieldSystem(param1);
        int v4 = MapObject_XPos(param1);
        int v5 = MapObject_YPos(param1);
        int v6 = MapObject_ZPos(param1);

        v5 = ((v5) / 2);
        sub_02061674(playerAvatar, param2, &v4, &v5, &v6);

        if (ov9_02250FBC(v3, v4, v5, v6) == 0) {
            if (ov9_02250FD8(v3, v4, v5, v6) == 1) {
                ov9_02251000(v3, v4, v5, v6);
                v0 = sub_020611FC(playerAvatar, param1, param2);
            }
        }
    }

    if (PlayerAvatar_PlayerState(playerAvatar) != 0x2) {
        if ((v0 & (1 << 7))) {
            v1 = 0x75;
            v2 = 2;
            sub_020615C8(playerAvatar);
            sub_0205F048(playerAvatar);
        } else if (v0 != 0) {
            v1 = 0x1c;
            v2 = 1;
            Sound_PlayEffect(1537);
            sub_02062994(param1, param2);
        } else {
            PlayerData * v7;

            v1 = 0xc;
            v2 = 4;
            v7 = PlayerAvatar_PlayerData(playerAvatar);

            if ((PlayerData_HasRunningShoes(v7) == 1) && (sub_020613FC(playerAvatar, param4) == 1)) {
                v1 = 0x58;
                v2 = 5;
            }

            sub_020615C8(playerAvatar);
            sub_0205F048(playerAvatar);
        }
    } else {
        if ((v0 == 0) || (v0 == (1 << 5))) {
            v2 = 5;
            v1 = 0x10;
            sub_020615C8(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            v1 = 0x1c;
            v2 = 1;
            Sound_PlayEffect(1537);
            sub_02062994(param1, param2);
        }
    }

    v1 = sub_02065838(param2, v1);
    sub_02060B64(playerAvatar, param1, v1, v2);
}

static void sub_0206000C (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4, const int * param5, const int * param6, const int * param7, const int * param8, const int * param9)
{
    u32 v0;
    int v1;
    int v2;

    v0 = sub_020611FC(playerAvatar, param1, param2);

    if (PlayerAvatar_PlayerState(playerAvatar) != 0x2) {
        if (v0 != 0) {
            v1 = param8[param2];
            v2 = 1;
            Sound_PlayEffect(1537);
            sub_02062994(param1, param9[param2]);
        } else {
            PlayerData * v3;

            v2 = 4;
            v1 = param5[param2];
            v3 = PlayerAvatar_PlayerData(playerAvatar);

            if ((PlayerData_HasRunningShoes(v3) == 1) && (sub_020613FC(playerAvatar, param4) == 1)) {
                v2 = 5;
                v1 = param6[param2];
            }

            sub_020615C8(playerAvatar);
        }
    } else {
        if ((v0 == 0) || (v0 == (1 << 5))) {
            v2 = 4;
            v1 = param7[param2];

            sub_020615C8(playerAvatar);
            sub_0205F048(playerAvatar);
        } else {
            v1 = param8[param2];
            v2 = 1;

            Sound_PlayEffect(1537);
            sub_02062994(param1, param9[param2]);
        }
    }

    sub_02060B64(playerAvatar, param1, v1, v2);
}

static void sub_020600CC (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    int v0[4] = {0x69, 0x6a, 0x6b, 0x6c};
    int v1[4] = {0x79, 0x7a, 0x7b, 0x7c};
    int v2[4] = {0x69, 0x6a, 0x6b, 0x6c};
    int v3[4] = {0x1e, 0x1f, 0x1d, 0x1c};
    int v4[4] = {0, 1, 2, 3};

    sub_0206000C(playerAvatar, param1, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void sub_02060150 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    int v0[4] = {0x6d, 0x6e, 0x6f, 0x70};
    int v1[4] = {0x7d, 0x7e, 0x7f, 0x80};
    int v2[4] = {0x6d, 0x6e, 0x6f, 0x70};
    int v3[4] = {0x1f, 0x1e, 0x1c, 0x1d};
    int v4[4] = {0, 1, 2, 3};

    sub_0206000C(playerAvatar, param1, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void sub_020601D4 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    int v0[4] = {0x71, 0x72, 0x73, 0x74};
    int v1[4] = {0x81, 0x82, 0x83, 0x84};
    int v2[4] = {0x71, 0x72, 0x73, 0x74};
    int v3[4] = {0x1d, 0x1c, 0x1f, 0x1e};
    int v4[4] = {0, 1, 2, 3};

    sub_0206000C(playerAvatar, param1, param2, param3, param4, v0, v1, v2, v3, v4);
}

static void sub_02060258 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    int v0, v1;
    int v2;

    v1 = param2;
    v2 = sub_0205F108(playerAvatar);

    switch (v2) {
    case 3:
    {
        int v3[4] = {2, 3, 1, 0};
        v1 = v3[param2];
    }
    break;
    case 4:
    {
        int v4[4] = {3, 2, 0, 1};
        v1 = v4[param2];
    }
    break;
    case 5:
    {
        int v5[4] = {1, 0, 3, 2};
        v1 = v5[param2];
    }
    break;
    }

    v0 = sub_02065838(v1, 0x28);

    sub_02060B64(playerAvatar, param1, v0, 1);
    sub_02062994(param1, param2);
}

static void sub_020602DC (PlayerAvatar * playerAvatar, MapObject * param1, const UnkStruct_ov5_021E8F60 * param2, int param3, u16 param4, u16 param5)
{
    int v0;

    if (sub_0205EC88(playerAvatar) == 1) {
        sub_0206078C(playerAvatar, param1, param2, param3, param4, param5);
    } else {
        sub_02060420(playerAvatar, param1, param2, param3, param4, param5);
    }
}

static void sub_02060324 (PlayerAvatar * playerAvatar, u16 param1)
{
    if (PlayerAvatar_PlayerState(playerAvatar) != 0x1) {
        return;
    }

    if ((param1 & PAD_BUTTON_B)) {
        u32 v0 = sub_02062BE8(Player_MapObject(playerAvatar));

        if (sub_0205DD90(v0) || sub_0205DD9C(v0)) {
            return;
        }

        {
            int v1 = 1;

            if (sub_0205EC88(playerAvatar) == 1) {
                v1 = 0;
            }

            sub_0205EC78(playerAvatar, v1);

            if (v1 == 0) {
                Sound_PlayEffect(1564);
            } else {
                Sound_PlayEffect(1561);
            }
        }
    }
}

int sub_02060390 (PlayerAvatar * playerAvatar, int param1)
{
    int v0;

    v0 = 0x4c;

    switch (PlayerAvatar_Speed(playerAvatar)) {
    case 1:
        v0 = 0x10;
        break;
    case 2:
        v0 = 0x50;
        break;
    case 3:
        v0 = 0x14;
        break;
    }

    v0 = sub_02065838(param1, v0);
    return v0;
}

static int sub_020603BC (PlayerAvatar * playerAvatar)
{
    int v0 = PlayerAvatar_AddMoveSpeed(playerAvatar, 1, 3);

    if (sub_0205EFB0(playerAvatar) == 0) {
        if (v0 >= 2) {
            sub_0205EF98(playerAvatar, 1);
        }
    }

    if (v0 == 3) {
        return 1;
    }

    return 0;
}

static int sub_020603EC (PlayerAvatar * playerAvatar)
{
    int v0 = 1;
    int v1 = PlayerAvatar_Speed(playerAvatar);

    v1--;

    if (v1 < 0) {
        v1 = 0;
        v0 = 0;
    }

    PlayerAvatar_SetSpeed(playerAvatar, v1);

    if (sub_0205EFB0(playerAvatar) == 1) {
        if (v1 == 0) {
            sub_0205EF98(playerAvatar, 0);
        }
    }

    return v0;
}

static void sub_02060420 (PlayerAvatar * playerAvatar, MapObject * param1, const UnkStruct_ov5_021E8F60 * param2, int param3, u16 param4, u16 param5)
{
    int v0 = sub_02060494(playerAvatar, param3);

    switch (v0) {
    case 0:
        sub_02060548(playerAvatar, param1, param3, param4, param5);
        break;
    case 1:
        sub_02060570(playerAvatar, param1, param3, param4, param5);
        break;
    case 2:
        sub_02060688(playerAvatar, param1, param3, param4, param5);
        break;
    case 3:
        sub_020606C8(playerAvatar, param1, param3, param4, param5);
        break;
    }
}

static int sub_02060494 (PlayerAvatar * playerAvatar, int param1)
{
    int v0 = sub_020604E4(playerAvatar, param1);
    int v1 = sub_020604B0(v0);

    sub_0205EB08(playerAvatar, v1);
    return v0;
}

static int sub_020604B0 (int param0)
{
    switch (param0) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 1;
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int sub_020604E4 (PlayerAvatar * playerAvatar, int param1)
{
    int v0;

    if (param1 == -1) {
        if (sub_0205EFB0(playerAvatar) == 1) {
            sub_0205EB08(playerAvatar, 1);
            return 3;
        }

        sub_0205EB08(playerAvatar, 0);
        return 0;
    }

    v0 = Player_Dir(playerAvatar);
    sub_0205EF98(playerAvatar, 0);

    if ((v0 != param1) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        sub_0205EB08(playerAvatar, 2);
        return 2;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void sub_02060548 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    int v0;

    v0 = sub_02065838(MapObject_Dir(param1), 0x0);

    sub_02060B64(playerAvatar, param1, v0, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void sub_02060570 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2;

    v0 = sub_02060B7C(playerAvatar, param1, param2);

    if ((v0 & (1 << 2))) {
        v1 = 0x38;
        v2 = 3;
        sub_020615C8(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if ((v0 & (1 << 7))) {
        v1 = 0x75;
        v2 = 2;
        sub_020615C8(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if ((v0 & (1 << 4))) {
        v1 = 0x50;
        v2 = 5;
        sub_020615C8(playerAvatar);
        sub_0205F048(playerAvatar);
        sub_0205EF40(playerAvatar, 1);
    } else if ((v0 & (1 << 6))) {
        v1 = 0x0;
        v2 = 1;
        param2 = MapObject_MoveDir(param1);
        sub_02062994(param1, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else if (v0 != 0) {
        if (sub_020615E0(playerAvatar, param1, param2) == 0) {
            v1 = 0x1c;
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
                Sound_PlayEffect(1537);
            }

            sub_02062994(param1, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            v1 = 0x0;
            v2 = 1;
            param2 = MapObject_MoveDir(param1);
            sub_02062994(param1, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
            sub_0205EBEC(playerAvatar, -1, -1);
        }
    } else {
        v1 = 0x50;
        v2 = 5;
        sub_020615C8(playerAvatar);
        sub_0205F048(playerAvatar);
        PlayerAvatar_SetSpeed(playerAvatar, 2);
    }

    v1 = sub_02065838(param2, v1);
    sub_02060B64(playerAvatar, param1, v1, v2);
}

static void sub_02060688 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (sub_020615E0(playerAvatar, param1, param2) == 1) {
        (void)0;
    } else {
        int v0 = sub_02065838(param2, 0x28);

        sub_02060B64(playerAvatar, param1, v0, 1);
        sub_02062994(param1, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void sub_020606C8 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2, v3 = sub_020603EC(playerAvatar);

    param2 = PlayerAvatar_MoveDir(playerAvatar);
    v0 = sub_02060B7C(playerAvatar, param1, param2);

    if ((v0 & (1 << 2))) {
        v2 = sub_02065838(param2, 0x38);
        v1 = 3;
    } else if ((v0 & (1 << 7))) {
        v2 = sub_02065838(param2, 0x75);
        v1 = 2;
    } else if ((v0 & (1 << 6))) {
        v2 = sub_02065838(param2, 0x0);
        v1 = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (v0 != 0) {
        v3 = 0;
        v2 = sub_02065838(param2, 0x1c);
        v1 = 1;

        if ((v0 & (1 << 3)) == 0) {
            Sound_PlayEffect(1537);
        }

        sub_02062994(param1, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        v2 = sub_02060390(playerAvatar, param2);
        v1 = 5;
    }

    if (v3 == 0) {
        sub_0205EF98(playerAvatar, 0);
    }

    sub_02060B64(playerAvatar, param1, v2, v1);
}

static void sub_0206078C (PlayerAvatar * playerAvatar, MapObject * param1, const UnkStruct_ov5_021E8F60 * param2, int param3, u16 param4, u16 param5)
{
    int v0 = sub_02060800(playerAvatar, param3);

    switch (v0) {
    case 0:
        sub_020608BC(playerAvatar, param1, param3, param4, param5);
        break;
    case 1:
        sub_020608E4(playerAvatar, param1, param3, param4, param5);
        break;
    case 2:
        sub_02060A60(playerAvatar, param1, param3, param4, param5);
        break;
    case 3:
        sub_02060AA0(playerAvatar, param1, param3, param4, param5);
        break;
    }
}

static int sub_02060800 (PlayerAvatar * playerAvatar, int param1)
{
    int v0 = sub_02060850(playerAvatar, param1);
    int v1 = sub_0206081C(v0);

    sub_0205EB08(playerAvatar, v1);
    return v0;
}

static int sub_0206081C (int param0)
{
    switch (param0) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 1;
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int sub_02060850 (PlayerAvatar * playerAvatar, int param1)
{
    int v0, v1;

    v1 = PlayerAvatar_Speed(playerAvatar);

    if (param1 == -1) {
        if (v1 < 2) {
            sub_0205EB08(playerAvatar, 0);
            return 0;
        }

        sub_0205EB08(playerAvatar, 1);
        return 3;
    }

    v0 = Player_Dir(playerAvatar);

    if ((v0 != param1) && (PlayerAvatar_MoveState(playerAvatar) != 1)) {
        if (v1 < 2) {
            sub_0205EB08(playerAvatar, 2);
            return 2;
        }

        sub_0205EB08(playerAvatar, 1);
        return 3;
    }

    sub_0205EB08(playerAvatar, 1);
    return 1;
}

static void sub_020608BC (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    int v0;

    v0 = sub_02065838(MapObject_Dir(param1), 0x0);

    sub_02060B64(playerAvatar, param1, v0, 1);
    PlayerAvatar_ClearSpeed(playerAvatar);
}

static void sub_020608E4 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2;

    v0 = sub_02060B7C(playerAvatar, param1, param2);

    if ((v0 & (1 << 2))) {
        v1 = sub_02065838(param2, 0x38);
        v2 = 3;
        sub_020603BC(playerAvatar);
        sub_020615C8(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if ((v0 & (1 << 7))) {
        v1 = sub_02065838(param2, 0x75);
        v2 = 2;
        sub_020603BC(playerAvatar);
        sub_020615C8(playerAvatar);
        sub_0205F048(playerAvatar);
    } else if ((v0 & (1 << 4))) {
        if (PlayerAvatar_Speed(playerAvatar) >= 3) {
            v1 = sub_02060390(playerAvatar, param2);
            v2 = 5;
            sub_0205F048(playerAvatar);
            sub_0205EF40(playerAvatar, 1);
        } else {
            v1 = sub_02065838(param2, 0x1c);
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
                Sound_PlayEffect(1537);
            }

            sub_02062994(param1, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
        }
    } else if ((v0 & (1 << 6))) {
        param2 = MapObject_MoveDir(param1);
        v1 = sub_02065838(param2, 0x0);
        v2 = 1;
        sub_02062994(param1, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
        sub_0205EBEC(playerAvatar, -1, -1);
    } else if (v0 != 0) {
        if (sub_020615E0(playerAvatar, param1, param2) == 0) {
            v1 = sub_02065838(param2, 0x1c);
            v2 = 1;

            if ((v0 & (1 << 3)) == 0) {
                Sound_PlayEffect(1537);
            }

            sub_02062994(param1, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
        } else {
            v2 = 1;
            param2 = MapObject_MoveDir(param1);
            v1 = sub_02065838(param2, 0x0);
            sub_02062994(param1, param2);
            PlayerAvatar_ClearSpeed(playerAvatar);
            sub_0205EBEC(playerAvatar, -1, -1);
        }
    } else {
        v2 = 5;
        v1 = sub_02060390(playerAvatar, param2);
        sub_020603BC(playerAvatar);
        sub_020615C8(playerAvatar);
        sub_0205F048(playerAvatar);
    }

    sub_02060B64(playerAvatar, param1, v1, v2);
}

static void sub_02060A60 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    PlayerAvatar_ClearSpeed(playerAvatar);

    if (sub_020615E0(playerAvatar, param1, param2) == 1) {
        (void)0;
    } else {
        int v0 = sub_02065838(param2, 0x28);

        sub_02060B64(playerAvatar, param1, v0, 1);
        sub_02062994(param1, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    }
}

static void sub_02060AA0 (PlayerAvatar * playerAvatar, MapObject * param1, int param2, u16 param3, u16 param4)
{
    u32 v0;
    int v1;
    int v2, v3 = sub_020603EC(playerAvatar);

    param2 = PlayerAvatar_MoveDir(playerAvatar);
    v0 = sub_02060B7C(playerAvatar, param1, param2);

    if ((v0 & (1 << 2))) {
        v2 = sub_02065838(param2, 0x38);
        v1 = 3;
    } else if ((v0 & (1 << 7))) {
        v2 = sub_02065838(param2, 0x75);
        v1 = 2;
    } else if ((v0 & (1 << 6))) {
        v2 = sub_02065838(param2, 0x0);
        v1 = 1;
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else if (v0 != 0) {
        v3 = 0;
        v1 = 1;
        v2 = sub_02065838(param2, 0x1c);

        if ((v0 & (1 << 3)) == 0) {
            Sound_PlayEffect(1537);
        }

        sub_02062994(param1, param2);
        PlayerAvatar_ClearSpeed(playerAvatar);
    } else {
        v2 = sub_02060390(playerAvatar, param2);
        v1 = 5;
    }

    if (v3 == 0) {
        sub_0205EF98(playerAvatar, 0);
    }

    sub_02060B64(playerAvatar, param1, v2, v1);
}

static void sub_02060B64 (PlayerAvatar * playerAvatar, MapObject * param1, u32 param2, int param3)
{
    sub_0205EC20(playerAvatar, param2, param3);
    LocalMapObj_SetAnimationCode(param1, param2);
}

u32 sub_02060B7C (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    u32 v0, v1;

    v0 = 0;
    v1 = sub_02060C24(playerAvatar, param1, param2);

    if ((v1 & ((1 << 1) | (1 << 3)))) {
        v0 |= (1 << 0);

        if (sub_02060E40(playerAvatar, param1, param2)) {
            v0 |= (1 << 3);
        }
    }

    if ((v1 & (1 << 2))) {
        v0 |= (1 << 1);
    }

    if (sub_02060CE4(playerAvatar, param1, param2)) {
        v0 |= (1 << 2);
    }

    if (sub_02060D98(playerAvatar, param1, param2)) {
        v0 |= (1 << 7);
    }

    if (sub_02060EE4(playerAvatar, param1, param2) == 1) {
        v0 |= (1 << 4);
    }

    if (sub_02060F4C(playerAvatar, param1, param2) == 1) {
        v0 |= (1 << 5);
    }

    if (sub_02060FA8(playerAvatar, param1, param2) == 1) {
        v0 |= (1 << 6) | (1 << 0);
    }

    if (sub_02061058(playerAvatar, param1, param2) == 1) {
        v0 |= (1 << 0);
    }

    return v0;
}

static u32 sub_02060C24 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    VecFx32 v0;
    u32 v1, v2;
    int v3 = MapObject_XPos(param1) + sub_0206419C(param2);
    int v4 = MapObject_YPos(param1);
    int v5 = MapObject_ZPos(param1) + sub_020641A8(param2);

    MapObject_PosVectorOut(param1, &v0);

    v1 = 0;

    if (sub_02063FAC(param1, v3, v4, v5) == 1) {
        v1 |= (1 << 0);
    }

    {
        s8 v6;
        FieldSystem * v7 = MapObject_FieldSystem(param1);

        if (sub_0205507C(v7, &v0, v3, v5, &v6) == 1) {
            v1 |= (1 << 1);

            if (v6 != 0) {
                v1 |= (1 << 3);
            }
        }
    }

    if (sub_02064004(param1, v3, v5, param2) == 1) {
        v1 |= (1 << 1);
    }

    if (sub_02063F00(param1, v3, v4, v5) == 1) {
        v1 |= (1 << 2);
    }

    return v1;
}

static int sub_02060CE4 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    if (param2 != -1) {
        FieldSystem * v0 = MapObject_FieldSystem(param1);
        int v1 = MapObject_XPos(param1) + sub_0206419C(param2);
        int v2 = MapObject_ZPos(param1) + sub_020641A8(param2);

        if (sub_020683D8(v0, v1, v2, 0, param2) == 1) {
            return 1;
        }

        {
            u8 v3 = sub_02054F94(v0, v1, v2);

            switch (param2) {
            case 0:
                if (sub_0205DB84(v3) == 1) {
                    return 1;
                }
                break;
            case 1:
                if (sub_0205DB90(v3) == 1) {
                    return 1;
                }
                break;
            case 2:
                if (sub_0205DB9C(v3) == 1) {
                    return 1;
                }
                break;
            case 3:
                if (sub_0205DBA8(v3) == 1) {
                    return 1;
                }
                break;
            }
        }
    }

    return 0;
}

static int sub_02060D98 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    BOOL v0 = 0;

    if (param2 != -1) {
        FieldSystem * v1 = MapObject_FieldSystem(param1);
        int v2 = MapObject_XPos(param1) + sub_0206419C(param2);
        int v3 = MapObject_ZPos(param1) + sub_020641A8(param2);
        u8 v4 = sub_02054F94(v1, v2, v3);

        switch (param2) {
        case 0:
            v0 = sub_0205DBB4(v4);
            break;
        case 1:
            v0 = sub_0205DBC0(v4);
            break;
        case 2:
            v0 = sub_0205DBCC(v4);
            break;
        case 3:
            v0 = sub_0205DBD8(v4);
            break;
        }

        if (v0 == 1) {
            if (sub_02071CB4(v1, 9) == 1) {
                if (ov9_022511A0(v1, v2, v3, param2) == 1) {
                    v0 = 0;
                }
            }
        }
    }

    return v0;
}

static int sub_02060E40 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    if (param2 != -1) {
        FieldSystem * v0 = MapObject_FieldSystem(param1);
        int v1 = MapObject_XPos(param1);
        int v2 = MapObject_ZPos(param1);
        u8 v3 = sub_02054F94(v0, v1, v2);

        switch (param2) {
        case 0:
            if (sub_0205DB10(v3) == 1) {
                return 1;
            }
            break;
        case 1:
            if (sub_0205DB1C(v3) == 1) {
                return 1;
            }
            break;
        case 2:
            if (sub_0205DB04(v3) == 1) {
                return 1;
            }
            break;
        case 3:
            if (sub_0205DAF8(v3) == 1) {
                return 1;
            }
            break;
        }

        v1 += sub_0206419C(param2);
        v2 += sub_020641A8(param2);
        v3 = sub_02054F94(v0, v1, v2);

        if (sub_0205DAEC(v3) == 1) {
            return 1;
        }
    }

    return 0;
}

static int sub_02060EE4 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    if (param2 != -1) {
        FieldSystem * v0 = MapObject_FieldSystem(param1);
        int v1 = MapObject_XPos(param1) + sub_0206419C(param2);
        int v2 = MapObject_ZPos(param1) + sub_020641A8(param2);
        u8 v3 = sub_02054F94(v0, v1, v2);

        if ((param2 == 3) && sub_0205DD90(v3)) {
            return 1;
        }

        if ((param2 == 2) && sub_0205DD9C(v3)) {
            return 1;
        }
    }

    return 0;
}

static int sub_02060F4C (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    if (param2 != -1) {
        FieldSystem * v0 = MapObject_FieldSystem(param1);
        int v1 = MapObject_XPos(param1) + sub_0206419C(param2);
        int v2 = MapObject_ZPos(param1) + sub_020641A8(param2);
        u8 v3 = sub_02054F94(v0, v1, v2);

        if (sub_0206406C(param1, v3)) {
            return 1;
        }
    }

    return 0;
}

static int sub_02060FA8 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    if (param2 != -1) {
        FieldSystem * v0 = MapObject_FieldSystem(param1);
        int v1 = MapObject_XPos(param1) + sub_0206419C(param2);
        int v2 = MapObject_ZPos(param1) + sub_020641A8(param2);
        u8 v3 = sub_02054F94(v0, v1, v2);

        if (PlayerAvatar_PlayerState(playerAvatar) == 0x1) {
            if (sub_0206415C(param1, v3) == 1) {
                if ((param2 == 0) || (param2 == 1)) {
                    return 0;
                }

                return 1;
            }

            if (sub_0206417C(param1, v3) == 1) {
                if ((param2 == 2) || (param2 == 3)) {
                    return 0;
                }

                return 1;
            }
        } else {
            if ((sub_0206415C(param1, v3) == 1) || (sub_0206417C(param1, v3) == 1)) {
                return 1;
            }
        }
    }

    return 0;
}

static int sub_02061058 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    if ((param2 != -1) && (PlayerAvatar_PlayerState(playerAvatar) == 0x1)) {
        FieldSystem * v0 = MapObject_FieldSystem(param1);
        int v1 = MapObject_XPos(param1) + sub_0206419C(param2);
        int v2 = MapObject_ZPos(param1) + sub_020641A8(param2);
        u8 v3 = sub_02054F94(v0, v1, v2);

        if (sub_0206406C(param1, v3)) {
            return 1;
        }

        if (MapObject_IsOnSnow(param1, v3)) {
            return 1;
        }

        if (sub_0205DAD4(v3)) {
            return 1;
        }

        if (sub_0205DCE0(v3)) {
            return 1;
        }

        if (sub_0205DCFC(v3)) {
            return 1;
        }
    }

    return 0;
}

static int sub_02061100 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    u32 v0 = 0;
    FieldSystem * v1 = MapObject_FieldSystem(param1);

    if (sub_02071CB4(v1, 9) == 1) {
        int v2 = MapObject_XPos(param1);
        int v3 = ((MapObject_YPos(param1) / 2));
        int v4 = MapObject_ZPos(param1);

        sub_02061674(playerAvatar, param2, &v2, &v3, &v4);

        if (ov9_02250F90(v1, v2, v3, v4) == 1) {
            v0 |= (1 << 1);
        }

        v3 = ((v3) * 2);

        if (sub_02063F00(param1, v2, v3, v4) == 1) {
            v0 |= (1 << 2);
        }
    }

    return v0;
}

static int sub_02061180 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    if (param2 != -1) {
        FieldSystem * v0 = MapObject_FieldSystem(param1);

        if (sub_02071CB4(v0, 9) == 1) {
            BOOL v1;
            u32 v2;
            int v3 = MapObject_XPos(param1);
            int v4 = ((MapObject_YPos(param1) / 2));
            int v5 = MapObject_ZPos(param1);

            sub_02061674(playerAvatar, param2, &v3, &v4, &v5);

            v1 = ov9_02251044(v0, v3, v4, v5, &v2);

            if (sub_0205DB58(v2)) {
                return 1;
            }
        }
    }

    return 0;
}

u32 sub_020611FC (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    u32 v0, v1 = 0;

    v0 = sub_02061100(playerAvatar, param1, param2);

    if ((v0 & ((1 << 1) | (1 << 3)))) {
        v1 |= (1 << 0);
    }

    if ((v0 & (1 << 2))) {
        v1 |= (1 << 1);
    }

    if (sub_02061180(playerAvatar, param1, param2) == 1) {
        v1 |= (1 << 5);
    }

    if (sub_02061248(playerAvatar, param1, param2) == 1) {
        v1 |= (1 << 7);
    }

    return v1;
}

static int sub_02061248 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    BOOL v0 = 0;

    if ((param2 != -1) && (sub_0205F108(playerAvatar) == 2)) {
        FieldSystem * v1 = MapObject_FieldSystem(param1);

        if (sub_02071CB4(v1, 9) == 1) {
            u32 v2;
            int v3 = MapObject_XPos(param1);
            int v4 = ((MapObject_YPos(param1) / 2));
            int v5 = MapObject_ZPos(param1);

            sub_02061674(playerAvatar, param2, &v3, &v4, &v5);

            v0 = ov9_02251044(v1, v3, v4, v5, &v2);

            switch (param2) {
            case 0:
                v0 = sub_0205DBB4(v2);
                break;
            case 1:
                v0 = sub_0205DBC0(v2);
                break;
            case 2:
                v0 = sub_0205DBCC(v2);
                break;
            case 3:
                v0 = sub_0205DBD8(v2);
                break;
            }
        }
    }

    return v0;
}

int sub_02061308 (PlayerAvatar * playerAvatar, u16 param1, u16 param2)
{
    return sub_02061348(playerAvatar, param1, param2);
}

static int sub_02061310 (u16 param0)
{
    if ((param0 & PAD_KEY_LEFT)) {
        return(2);
    }

    if ((param0 & PAD_KEY_RIGHT)) {
        return(3);
    }

    return(-1);
}

static int sub_0206132C (u16 param0)
{
    if ((param0 & PAD_KEY_UP)) {
        return(0);
    }

    if ((param0 & PAD_KEY_DOWN)) {
        return(1);
    }

    return(-1);
}

static int sub_02061348 (PlayerAvatar * playerAvatar, u16 param1, u16 param2)
{
    int v0 = sub_02061310(param2);
    int v1 = sub_0206132C(param2);

    if (v0 == -1) {
        return v1;
    }

    if (v1 == -1) {
        return v0;
    }

    {
        int v2 = PlayerAvatar_MoveDir(playerAvatar);
        int v3 = sub_0205EBE0(playerAvatar);
        int v4 = sub_0205EBE8(playerAvatar);

        if (v2 != -1) {
            if ((v0 == v3) && (v1 == v4)) {
                return v2;
            }

            if (v1 != v4) {
                return v1;
            }

            return v0;
        }

        return v1;
    }

    return(-1);
}

int sub_020613AC (PlayerAvatar * playerAvatar)
{
    MapObject * v0 = Player_MapObject(playerAvatar);

    if (LocalMapObj_IsAnimationSet(v0) == 1) {
        return 1;
    }

    {
        int v1 = sub_02062BB8(v0);

        if (sub_020613D8(v1) == 1) {
            return 1;
        }
    }

    return 0;
}

static int sub_020613D8 (int param0)
{
    switch (param0) {
    case 0x1c:
    case 0x1d:
    case 0x1e:
    case 0x1f:
        return 1;
    }

    return 0;
}

int sub_020613FC (PlayerAvatar * playerAvatar, u16 param1)
{
    if ((param1 & PAD_BUTTON_B)) {
        return 1;
    }

    return 0;
}

int sub_0206140C (PlayerAvatar * playerAvatar)
{
    u32 v0 = sub_0205EC14(playerAvatar);

    switch (v0) {
    case 0x58:
    case 0x59:
    case 0x5a:
    case 0x5b:
        return 1;
    }

    return 0;
}

int sub_02061434 (PlayerAvatar * playerAvatar, int param1)
{
    int v0, v1, v2 = PlayerAvatar_PlayerState(playerAvatar);

    switch (v2) {
    case 0x0:
    case 0x2:
        v0 = sub_0205FCC0(playerAvatar, param1);
        v1 = sub_0205FC64(v0);
        break;
    case 0x1:
        if (sub_0205EC88(playerAvatar) == 1) {
            v0 = sub_02060850(playerAvatar, param1);
            v1 = sub_0206081C(v0);
        } else {
            v0 = sub_02060850(playerAvatar, param1);
            v1 = sub_0206081C(v0);
        }

        break;
    default:
        v1 = 0;
        GF_ASSERT(FALSE);
    }

    return v1;
}

u32 sub_0206147C (PlayerAvatar * playerAvatar, u16 param1, u16 param2, int param3, int param4, int param5)
{
    u32 v0;
    int v1 = sub_02061348(playerAvatar, param1, param2);
    int v2 = sub_02061434(playerAvatar, v1);

    sub_0205EB08(playerAvatar, v2);

    if (v2 == 0) {
        v1 = Player_Dir(playerAvatar);
        v0 = sub_02065838(v1, 0x0);
        return v0;
    }

    if (v2 == 2) {
        v0 = sub_02065838(v1, 0x28);
        return v0;
    }

    {
        MapObject * v3 = Player_MapObject(playerAvatar);
        u32 v4 = param5;

        if ((v4 & (1 << 2))) {
            v0 = 0x38;
        } else if ((v4 & (1 << 7))) {
            v0 = 0x75;
        } else if (v4 != 0) {
            v0 = 0x1c;

            if ((v4 & (1 << 3)) == 0) {
                Sound_PlayEffect(1537);
            }
        } else {
            switch (param3) {
            case 0:
                v0 = 0x4;
                break;
            case 1:
                v0 = 0x8;
                break;
            case 2:
                v0 = 0xc;
                break;
            case 3:
                v0 = 0x4c;
                break;
            case 4:
                v0 = 0x10;
                break;
            case 5:
                v0 = 0x14;
                break;
            default:
                v0 = 0x4;
            }

            if ((param4 == 1) && (sub_020613FC(playerAvatar, param2) == 1)) {
                v0 = 0x58;
            }
        }

        v0 = sub_02065838(v1, v0);
        return v0;
    }

    return 0xff;
}

int sub_02061544 (PlayerAvatar * playerAvatar)
{
    MapObject * v0 = Player_MapObject(playerAvatar);
    return LocalMapObj_IsAnimationSet(v0);
}

void PlayerAvatar_SetAnimationCode (PlayerAvatar * playerAvatar, u32 param1, int param2)
{
    MapObject * v0 = Player_MapObject(playerAvatar);
    sub_02060B64(playerAvatar, v0, param1, param2);
}

u32 sub_0206156C (PlayerAvatar * playerAvatar, int param1)
{
    MapObject * v0 = Player_MapObject(playerAvatar);
    return sub_02064238(v0, param1);
}

void sub_0206157C (PlayerAvatar * playerAvatar, int param1, int * param2, int * param3)
{
    *param2 = Player_XPos(playerAvatar) + sub_0206419C(param1);
    *param3 = Player_ZPos(playerAvatar) + sub_020641A8(param1);
}

void sub_020615AC (PlayerAvatar * playerAvatar, int * param1, int * param2)
{
    int v0 = Player_Dir(playerAvatar);
    sub_0206157C(playerAvatar, v0, param1, param2);
}

static void sub_020615C8 (PlayerAvatar * playerAvatar)
{
    MapObject * v0 = Player_MapObject(playerAvatar);
    FieldSystem * v1 = MapObject_FieldSystem(v0);
    UnkStruct_0202CD88 * v2 = sub_0202CD88(v1->saveData);

    sub_0202CF28(v2, (0 + 0));
}

static int sub_020615E0 (PlayerAvatar * playerAvatar, MapObject * param1, int param2)
{
    if (param2 != -1) {
        u8 v0 = sub_02062BE8(param1);

        if (sub_0206415C(param1, v0) == 1) {
            if ((param2 == 0) || (param2 == 1)) {
                return 0;
            }

            return 1;
        }

        if (sub_0206417C(param1, v0) == 1) {
            if ((param2 == 2) || (param2 == 3)) {
                return 0;
            }

            return 1;
        }
    }

    return 0;
}

static int PlayerAvatar_IsUnderCyclingRoad (PlayerAvatar * playerAvatar, u32 param1, int param2)
{
    if (param2 != -1) {
        return 0;
    }

    if (PlayerAvatar_PlayerState(playerAvatar) != PLAYER_STATE_CYCLING) {
        return 0;
    }

    if (sub_0205EFDC(playerAvatar) == 0) {
        return 0;
    }

    {
        MapObject * v0 = Player_MapObject(playerAvatar);

        if (sub_0206413C(v0, param1) == 1) {
            return 1;
        }
    }

    return 0;
}

void sub_02061674 (PlayerAvatar * playerAvatar, int param1, int * param2, int * param3, int * param4)
{
    const UnkStruct_020EDB04 * v0;
    int v1 = sub_0205F108(playerAvatar);

    switch (v1) {
    case 0:
    case 1:
    case 2:
        v0 = &Unk_020EDB04[param1];
        break;
    case 3:
        v0 = &Unk_020EDB24[param1];
        break;
    case 4:
        v0 = &Unk_020EDB44[param1];
        break;
    case 5:
        v0 = &Unk_020EDB64[param1];
        break;
    default:
        return;
    }

    (*param2) += v0->unk_00;
    (*param3) += v0->unk_02;
    (*param4) += v0->unk_04;
}

u32 sub_020616F0 (PlayerAvatar * playerAvatar, int param1)
{
    u32 v0;

    if (sub_0205F158(playerAvatar) == 0) {
        v0 = sub_0206156C(playerAvatar, param1);
    } else {
        MapObject * v1 = Player_MapObject(playerAvatar);
        FieldSystem * v2 = MapObject_FieldSystem(v1);
        int v3 = MapObject_XPos(v1);
        int v4 = ((MapObject_YPos(v1) / 2));
        int v5 = MapObject_ZPos(v1);

        sub_02061674(playerAvatar, param1, &v3, &v4, &v5);
        ov9_02251044(v2, v3, v4, v5, &v0);
    }

    return v0;
}

u32 sub_02061760 (PlayerAvatar * playerAvatar)
{
    u32 v0;
    MapObject * v1 = Player_MapObject(playerAvatar);
    FieldSystem * v2 = MapObject_FieldSystem(v1);
    int v3 = MapObject_XPos(v1);
    int v4 = ((MapObject_YPos(v1) / 2));
    int v5 = MapObject_ZPos(v1);

    if (sub_0205F158(playerAvatar) == 0) {
        v0 = sub_02054F94(v2, v3, v5);
    } else {
        ov9_02251044(v2, v3, v4, v5, &v0);
    }

    return v0;
}

void sub_020617BC (PlayerAvatar * const playerAvatar, int * param1, int * param2, int * param3)
{
    int v0 = sub_0205EAA0(playerAvatar);
    MapObject * v1 = Player_MapObject(playerAvatar);

    *param1 = MapObject_XPos(v1);
    *param2 = ((MapObject_YPos(v1) / 2));
    *param3 = MapObject_ZPos(v1);

    sub_02061674(playerAvatar, v0, param1, param2, param3);
}
