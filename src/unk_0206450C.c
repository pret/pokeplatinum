#include "unk_0206450C.h"

#include <nitro.h>
#include <string.h>

#include "generated/movement_actions.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"

#include "map_object.h"
#include "map_object_move.h"
#include "math_util.h"
#include "player_avatar.h"
#include "unk_0205F180.h"
#include "unk_020655F4.h"
#include "unk_02067A84.h"

typedef struct {
    int unk_00;
    const int *unk_04;
} UnkStruct_020EEB08;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_020647A0;

typedef struct {
    s8 unk_00;
    s8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_02065550;

typedef struct {
    u16 unk_00;
    s16 unk_02;
    int unk_04;
} UnkStruct_0206450C;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    int unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_02064668;

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_020648F4;

typedef struct {
    s8 unk_00;
    s8 unk_01;
    s8 unk_02;
    s8 unk_03;
    int unk_04;
} UnkStruct_0206496C;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    UnkStruct_02065550 unk_04;
} UnkStruct_02064C28;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    UnkStruct_02065550 unk_08;
} UnkStruct_02064D98;

typedef struct {
    u8 unk_00;
    s8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    UnkStruct_02065550 unk_08;
} UnkStruct_0206502C;

static void sub_0206450C(MapObject *mapObj, int param1);
static void sub_02064668(MapObject *mapObj, int param1, int param2, int param3);
static int sub_020652EC(const int *param0, int param1);
static int sub_0206530C(const int *param0, int param1);
static int sub_02065330(int param0, int param1);
static const int *sub_02065358(int param0);
static int sub_0206537C(MapObject *mapObj);
static int sub_02065448(MapObject *mapObj, int param1, int param2);
static void sub_020647A0(MapObject *mapObj, UnkStruct_020647A0 *param1);
static int sub_0206489C(MapObject *mapObj, int param1);
static void sub_020648F4(MapObject *mapObj, int param1);
static void sub_0206496C(MapObject *mapObj, int param1);
static void sub_02064D98(MapObject *mapObj, int param1, int param2, int param3);
static void sub_0206502C(MapObject *mapObj, int param1, int param2, int param3);
static int sub_0206553C(MapObject *mapObj);
static void sub_02065550(MapObject *mapObj, UnkStruct_02065550 *param1);
static void sub_02065568(MapObject *mapObj, UnkStruct_02065550 *param1);
static void sub_020655E4(MapObject *mapObj, UnkStruct_02065550 *param1);

int (*const Unk_020EE900[])(MapObject *, UnkStruct_0206496C *);
int (*const Unk_020EE870[])(MapObject *, UnkStruct_0206496C *);
int (*const Unk_020EE814[])(MapObject *, UnkStruct_02064C28 *);
int (*const Unk_020EE7AC[])(MapObject *, UnkStruct_02064D98 *);
int (*const Unk_020EE820[])(MapObject *, UnkStruct_0206502C *);
static const int Unk_020EEAB0[2][4];
const int Unk_020EEA88[];
const int Unk_020EEA9C[];
const int Unk_020EE7B4[];
const int Unk_020EE7D8[];
const int Unk_020EE7C0[];
const int Unk_020EE7E4[];
const int Unk_020EE9A0[];
const int Unk_020EE960[];
const int Unk_020EE970[];
const int Unk_020EE990[];
const int Unk_020EE808[];
const int Unk_020EE7FC[];
const int Unk_020EEA10[];
const int Unk_020EE7F0[];
const int Unk_020EE7CC[];
const int Unk_020EE910[];
const int Unk_020EE8A0[];
const int Unk_020EE8E0[];
const int Unk_020EE8F0[];
const int Unk_020EE8D0[];
const int Unk_020EE8C0[];
const int Unk_020EE880[];
const int Unk_020EE9F0[];
const int Unk_020EE920[];
const int Unk_020EE930[];
const int Unk_020EE980[];
const int Unk_020EE9B0[];
const int Unk_020EE940[];
const int Unk_020EE840[];
const int Unk_020EE830[];
const int Unk_020EE9E0[];
const int Unk_020EE890[];
const int Unk_020EEA00[];
const int Unk_020EE950[];
const int Unk_020EE9C0[];
const int Unk_020EE850[];
const int Unk_020EE860[];
const int Unk_020EE8B0[];
const int Unk_020EE9D0[];
static const UnkStruct_020EEB08 Unk_020EEB08[40];
const int Unk_020EEAD0[];

static void sub_0206450C(MapObject *mapObj, int param1)
{
    UnkStruct_0206450C *v0 = sub_02062A54(mapObj, (sizeof(UnkStruct_0206450C)));
    v0->unk_02 = sub_0206530C(Unk_020EEA88, -1);
    v0->unk_04 = param1;

    sub_02062A0C(mapObj, 0x0);
    sub_02062D10(mapObj);
}

void sub_0206453C(MapObject *mapObj)
{
    sub_0206450C(mapObj, 0);
}

void sub_02064548(MapObject *mapObj)
{
    sub_0206450C(mapObj, 1);
}

void sub_02064554(MapObject *mapObj)
{
    sub_0206450C(mapObj, 2);
}

void sub_02064560(MapObject *mapObj)
{
    sub_0206450C(mapObj, 3);
}

void sub_0206456C(MapObject *mapObj)
{
    sub_0206450C(mapObj, 4);
}

void sub_02064578(MapObject *mapObj)
{
    sub_0206450C(mapObj, 5);
}

void sub_02064584(MapObject *mapObj)
{
    sub_0206450C(mapObj, 6);
}

void sub_02064590(MapObject *mapObj)
{
    sub_0206450C(mapObj, 7);
}

void sub_0206459C(MapObject *mapObj)
{
    sub_0206450C(mapObj, 8);
}

void sub_020645A8(MapObject *mapObj)
{
    sub_0206450C(mapObj, 9);
}

void sub_020645B4(MapObject *mapObj)
{
    sub_0206450C(mapObj, 10);
}

void sub_020645C0(MapObject *mapObj)
{
    UnkStruct_0206450C *v0 = sub_02062A78(mapObj);
    int v1 = sub_02065448(mapObj, v0->unk_04, -1);

    if (v1 != -1) {
        MapObject_TryFace(mapObj, v1);
    } else {
        switch (v0->unk_00) {
        case 0:
            v0->unk_02--;

            if (v0->unk_02 <= 0) {
                v0->unk_02 = sub_0206530C(Unk_020EEA88, -1);
                MapObject_TryFace(mapObj, sub_02065330(v0->unk_04, -1));
            }
        }
    }

    MapObject_UpdateCoords(mapObj);
}

void sub_02064624(MapObject *mapObj)
{
    return;
}

void sub_02064628(MapObject *mapObj)
{
    sub_02064668(mapObj, 0xc, 11, 0);
}

void sub_02064638(MapObject *mapObj)
{
    sub_02064668(mapObj, 0xc, 12, 0);
}

void sub_02064648(MapObject *mapObj)
{
    sub_02064668(mapObj, 0xc, 13, 0);
}

void sub_02064658(MapObject *mapObj)
{
    sub_02064668(mapObj, 0xc, 13, 2);
}

static void sub_02064668(MapObject *mapObj, int param1, int param2, int param3)
{
    UnkStruct_02064668 *v0 = sub_02062A54(mapObj, (sizeof(UnkStruct_02064668)));

    v0->unk_04 = param3;
    v0->unk_08 = param1;
    v0->unk_0C = param2;

    sub_02062A0C(mapObj, 0x0);
    sub_02062D10(mapObj);
}

void sub_02064690(MapObject *mapObj)
{
    int v0;
    UnkStruct_02064668 *v1 = sub_02062A78(mapObj);

    switch (v1->unk_00) {
    case 0:
        sub_02062D10(mapObj);
        MapObject_SetEndMovementOff(mapObj);

        v0 = MapObject_GetFacingDir(mapObj);
        v0 = MovementAction_TurnActionTowardsDir(v0, MOVEMENT_ACTION_FACE_NORTH);

        sub_02065668(mapObj, v0);

        v1->unk_00++;
        break;
    case 1:
        if (sub_020658DC(mapObj) == 0) {
            break;
        }

        v1->unk_02 = sub_0206530C(Unk_020EEA88, -1);
        v1->unk_00++;
    case 2:
        v1->unk_02--;

        if (v1->unk_02) {
            break;
        }

        v1->unk_00++;
    case 3:
        v0 = sub_02065330(v1->unk_0C, -1);
        MapObject_TryFaceAndTurn(mapObj, v0);

        if (v1->unk_04 == 1) {
            if (sub_0206489C(mapObj, v0) == 0) {
                v1->unk_00 = 0;
                break;
            }
        }

        {
            u32 v2 = sub_02063EBC(mapObj, v0);

            if (v2 != 0) {
                if (v1->unk_04 == 2) {
                    if (v2 & (1 << 0)) {
                        v1->unk_00 = 0;
                        break;
                    }
                } else {
                    v1->unk_00 = 0;
                    break;
                }
            }
        }

        v0 = MovementAction_TurnActionTowardsDir(v0, v1->unk_08);

        sub_02065668(mapObj, v0);
        sub_02062D04(mapObj);

        v1->unk_00++;
    case 4:
        if (sub_020658DC(mapObj) == 0) {
            break;
        }

        sub_02062D10(mapObj);
        v1->unk_00 = 0;
    }
}

static void sub_020647A0(MapObject *mapObj, UnkStruct_020647A0 *param1)
{
    int v0, v1, v2, v3, v4;

    v1 = MapObject_GetXInitial(mapObj);
    v2 = MapObject_GetZInitial(mapObj);
    v3 = MapObject_GetMovementRangeX(mapObj);
    v4 = MapObject_GetMovementRangeZ(mapObj);
    v0 = MapObject_GetMovementType(mapObj);

    switch (v0) {
    case 0x6:
        param1->unk_00 = v1 - v3;
        param1->unk_08 = v1;
        param1->unk_04 = v2 - v4;
        param1->unk_0C = v2;
        break;
    case 0x7:
        param1->unk_00 = v1;
        param1->unk_08 = v1 + v3;
        param1->unk_04 = v2 - v4;
        param1->unk_0C = v2;
        break;
    case 0x8:
        param1->unk_00 = v1 - v3;
        param1->unk_08 = v1;
        param1->unk_04 = v2;
        param1->unk_0C = v2 + v4;
        break;
    case 0x9:
        param1->unk_00 = v1;
        param1->unk_08 = v1 + v3;
        param1->unk_04 = v2;
        param1->unk_0C = v2 + v4;
        break;
    case 0xa:
        param1->unk_00 = v1 - v3;
        param1->unk_08 = v1;
        param1->unk_04 = v2 - v4;
        param1->unk_0C = v2 + v4;
        break;
    case 0xb:
        param1->unk_00 = v1;
        param1->unk_08 = v1 + v3;
        param1->unk_04 = v2 - v4;
        param1->unk_0C = v2 + v4;
        break;
    case 0xc:
        param1->unk_00 = v1 - v3;
        param1->unk_08 = v1 + v3;
        param1->unk_04 = v2 - v4;
        param1->unk_0C = v2;
        break;
    case 0xd:
        param1->unk_00 = v1 - v3;
        param1->unk_08 = v1 + v3;
        param1->unk_04 = v2;
        param1->unk_0C = v2 + v4;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

static int sub_0206489C(MapObject *mapObj, int param1)
{
    int v0, v1;
    UnkStruct_020647A0 v2;

    sub_020647A0(mapObj, &v2);

    v0 = MapObject_GetX(mapObj) + MapObject_GetDxFromDir(param1);
    v1 = MapObject_GetZ(mapObj) + MapObject_GetDzFromDir(param1);

    if ((v2.unk_00 > v0) || (v2.unk_08 < v0)) {
        return 0;
    }

    if ((v2.unk_04 > v1) || (v2.unk_0C < v1)) {
        return 0;
    }

    return 1;
}

static void sub_020648F4(MapObject *mapObj, int param1)
{
    UnkStruct_020648F4 *v0 = sub_02062A54(mapObj, (sizeof(UnkStruct_020648F4)));
    v0->unk_00 = param1;

    sub_02062A0C(mapObj, 0x0);
    sub_02062D10(mapObj);
    MapObject_UpdateCoords(mapObj);
}

void sub_02064918(MapObject *mapObj)
{
    UnkStruct_020648F4 *v0 = sub_02062A78(mapObj);

    switch (v0->unk_04) {
    case 0:
        MapObject_TryFace(mapObj, v0->unk_00);
        v0->unk_04++;
        break;
    case 1:
        break;
    }
}

void sub_0206493C(MapObject *mapObj)
{
    sub_020648F4(mapObj, 0);
}

void sub_02064948(MapObject *mapObj)
{
    sub_020648F4(mapObj, 1);
}

void sub_02064954(MapObject *mapObj)
{
    sub_020648F4(mapObj, 2);
}

void sub_02064960(MapObject *mapObj)
{
    sub_020648F4(mapObj, 3);
}

static void sub_0206496C(MapObject *mapObj, int param1)
{
    UnkStruct_0206496C *v0 = sub_02062A54(mapObj, (sizeof(UnkStruct_0206496C)));
    v0->unk_00 = param1;

    sub_02062A0C(mapObj, 0x0);
    sub_02062D10(mapObj);
    MapObject_UpdateCoords(mapObj);
}

void sub_02064990(MapObject *mapObj)
{
    sub_0206496C(mapObj, 2);
}

void sub_0206499C(MapObject *mapObj)
{
    sub_0206496C(mapObj, 3);
}

void sub_020649A8(MapObject *mapObj)
{
    UnkStruct_0206496C *v0 = sub_02062A78(mapObj);

    while (Unk_020EE900[v0->unk_02](mapObj, v0) == 1) {
        (void)0;
    }
}

static int sub_020649CC(MapObject *mapObj, UnkStruct_0206496C *param1)
{
    int v0 = sub_02065448(mapObj, 38, -1);

    if (v0 == -1) {
        v0 = MapObject_GetFacingDir(mapObj);
    }

    v0 = MovementAction_TurnActionTowardsDir(v0, MOVEMENT_ACTION_FACE_NORTH);
    sub_02065668(mapObj, v0);
    param1->unk_02 = 1;

    return 1;
}

static int sub_02064A00(MapObject *mapObj, UnkStruct_0206496C *param1)
{
    if (sub_020658DC(mapObj) == 0) {
        return 0;
    }

    param1->unk_04 = 0;
    param1->unk_02 = 2;

    return 1;
}

static int sub_02064A1C(MapObject *mapObj, UnkStruct_0206496C *param1)
{
    if (param1->unk_04) {
        if (sub_02065448(mapObj, 38, -1) != -1) {
            param1->unk_02 = 0;
            return 1;
        }
    }

    param1->unk_04++;

    if (param1->unk_04 < 24) {
        return 0;
    }

    param1->unk_02 = 3;
    return 1;
}

static int sub_02064A58(MapObject *mapObj, UnkStruct_0206496C *param1)
{
    int v0, v1, *v2;
    int v3[5] = { 0, 2, 1, 3, -1 };
    int v4[5] = { 0, 3, 1, 2, -1 };

    if (param1->unk_00 == 2) {
        v2 = v3;
    } else {
        v2 = v4;
    }

    v1 = MapObject_GetFacingDir(mapObj);

    for (v0 = 0; v2[v0] != -1; v0++) {
        if (v1 == v2[v0]) {
            break;
        }
    }

    GF_ASSERT(v2[v0] != -1);

    v0++;

    if (v2[v0] == -1) {
        v0 = 0;
    }

    v1 = v2[v0];

    MapObject_TryFace(mapObj, v1);

    param1->unk_02 = 0;
    return 1;
}

static int (*const Unk_020EE900[])(MapObject *, UnkStruct_0206496C *) = {
    sub_020649CC,
    sub_02064A00,
    sub_02064A1C,
    sub_02064A58
};

void sub_02064AF0(MapObject *mapObj)
{
    sub_0206496C(mapObj, 3);
}

void sub_02064AFC(MapObject *mapObj)
{
    UnkStruct_0206496C *v0 = sub_02062A78(mapObj);

    while (Unk_020EE870[v0->unk_02](mapObj, v0) == 1) {
        (void)0;
    }
}

static int sub_02064B20(MapObject *mapObj, UnkStruct_0206496C *param1)
{
    int v0 = MapObject_GetFacingDir(mapObj);

    v0 = MovementAction_TurnActionTowardsDir(v0, MOVEMENT_ACTION_FACE_NORTH);
    sub_02065668(mapObj, v0);
    param1->unk_02 = 1;

    return 1;
}

static int sub_02064B40(MapObject *mapObj, UnkStruct_0206496C *param1)
{
    if (sub_020658DC(mapObj) == 0) {
        return 0;
    }

    param1->unk_04 = 0;
    param1->unk_02 = 2;

    return 1;
}

static int sub_02064B5C(MapObject *mapObj, UnkStruct_0206496C *param1)
{
    param1->unk_04++;

    if (param1->unk_04 < 24) {
        return 0;
    }

    param1->unk_02 = 3;
    return 1;
}

static int sub_02064B74(MapObject *mapObj, UnkStruct_0206496C *param1)
{
    int v0, v1, *v2;
    int v3[5] = { 0, 2, 1, 3, -1 };
    int v4[5] = { 0, 3, 1, 2, -1 };

    if (param1->unk_00 == 2) {
        v2 = v3;
    } else {
        v2 = v4;
    }

    v1 = MapObject_GetFacingDir(mapObj);

    for (v0 = 0; v2[v0] != -1; v0++) {
        if (v1 == v2[v0]) {
            break;
        }
    }

    GF_ASSERT(v2[v0] != -1);

    v0++;

    if (v2[v0] == -1) {
        v0 = 0;
    }

    v1 = v2[v0];

    MapObject_TryFace(mapObj, v1);

    {
        int v5 = MapObject_GetFacingDir(mapObj);
        int v6 = MapObject_GetInitialDir(mapObj);

        if (v5 == v6) {
            param1->unk_00 = Direction_GetOpposite(param1->unk_00);
        }
    }

    param1->unk_02 = 0;
    return 1;
}

static int (*const Unk_020EE870[])(MapObject *, UnkStruct_0206496C *) = {
    sub_02064B20,
    sub_02064B40,
    sub_02064B5C,
    sub_02064B74
};

void sub_02064C28(MapObject *mapObj)
{
    UnkStruct_02064C28 *v0 = sub_02062A54(mapObj, (sizeof(UnkStruct_02064C28)));

    if (sub_0206553C(mapObj) == 1) {
        sub_02065550(mapObj, &v0->unk_04);
    }
}

void sub_02064C48(MapObject *mapObj)
{
    UnkStruct_02064C28 *v0 = sub_02062A78(mapObj);

    while (Unk_020EE814[v0->unk_00](mapObj, v0) == 1) {
        (void)0;
    }
}

static int sub_02064C6C(MapObject *mapObj, UnkStruct_02064C28 *param1)
{
    int v0 = MapObject_GetInitialDir(mapObj);

    if (param1->unk_02 == 1) {
        v0 = Direction_GetOpposite(v0);
    }

    MapObject_Turn(mapObj, v0);

    if (sub_0206553C(mapObj) == 0) {
        MapObject_TryFace(mapObj, v0);
    }

    param1->unk_00 = 1;
    return 1;
}

static int sub_02064CA8(MapObject *mapObj, UnkStruct_02064C28 *param1)
{
    if (param1->unk_02) {
        int v0, v1, v2, v3;

        v0 = MapObject_GetXInitial(mapObj);
        v1 = MapObject_GetZInitial(mapObj);
        v2 = MapObject_GetX(mapObj);
        v3 = MapObject_GetZ(mapObj);

        if ((v0 == v2) && (v1 == v3)) {
            int v4 = Direction_GetOpposite(MapObject_GetMovingDir(mapObj));

            MapObject_Turn(mapObj, v4);

            if (sub_0206553C(mapObj) == 0) {
                MapObject_TryFace(mapObj, v4);
            }

            param1->unk_02 = 0;
        }
    }

    {
        int v5, v6;
        u32 v7;

        v5 = MapObject_GetMovingDir(mapObj);
        v7 = sub_02063EBC(mapObj, v5);

        if (v7 & (1 << 0)) {
            param1->unk_02 = 1;
            v5 = Direction_GetOpposite(v5);
            v7 = sub_02063EBC(mapObj, v5);
        }

        v6 = 0xc;

        if (v7 != 0) {
            v6 = 0x20;
        }

        v6 = MovementAction_TurnActionTowardsDir(v5, v6);
        sub_02065668(mapObj, v6);

        if (sub_0206553C(mapObj) == 1) {
            sub_02065568(mapObj, &param1->unk_04);
        }
    }

    sub_02062D04(mapObj);
    param1->unk_00 = 2;

    return 1;
}

static int sub_02064D68(MapObject *mapObj, UnkStruct_02064C28 *param1)
{
    if (sub_020658DC(mapObj) == 1) {
        sub_02062D10(mapObj);

        if (sub_0206553C(mapObj) == 1) {
            sub_020655E4(mapObj, &param1->unk_04);
        }

        param1->unk_00 = 0;
    }

    return 0;
}

static int (*const Unk_020EE814[])(MapObject *, UnkStruct_02064C28 *) = {
    sub_02064C6C,
    sub_02064CA8,
    sub_02064D68
};

static void sub_02064D98(MapObject *mapObj, int param1, int param2, int param3)
{
    UnkStruct_02064D98 *v0 = sub_02062A54(mapObj, (sizeof(UnkStruct_02064D98)));
    v0->unk_02 = param1;
    v0->unk_03 = param2;
    v0->unk_04 = param3;

    if (sub_0206553C(mapObj) == 1) {
        sub_02065550(mapObj, &v0->unk_08);
    }
}

void sub_02064DC8(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 0, 14);
}

void sub_02064DD8(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 0, 15);
}

void sub_02064DE8(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 1, 16);
}

void sub_02064DF8(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 1, 17);
}

void sub_02064E08(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 0, 18);
}

void sub_02064E18(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 0, 19);
}

void sub_02064E28(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 1, 20);
}

void sub_02064E38(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 1, 21);
}

void sub_02064E48(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 1, 22);
}

void sub_02064E58(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 1, 23);
}

void sub_02064E68(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 0, 24);
}

void sub_02064E78(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 0, 25);
}

void sub_02064E88(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 1, 26);
}

void sub_02064E98(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 1, 27);
}

void sub_02064EA8(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 0, 28);
}

void sub_02064EB8(MapObject *mapObj)
{
    sub_02064D98(mapObj, 2, 0, 29);
}

void sub_02064EC8(MapObject *mapObj)
{
    UnkStruct_02064D98 *v0 = sub_02062A78(mapObj);

    while (Unk_020EE7AC[v0->unk_00](mapObj, v0) == 1) {
        (void)0;
    }
}

static int sub_02064EEC(MapObject *mapObj, UnkStruct_02064D98 *param1)
{
    if (param1->unk_01 == param1->unk_02) {
        if (param1->unk_03 == 0) {
            int v0 = MapObject_GetXInitial(mapObj);
            int v1 = MapObject_GetX(mapObj);

            if (v0 == v1) {
                param1->unk_01++;
            }
        } else {
            int v2 = MapObject_GetZInitial(mapObj);
            int v3 = MapObject_GetZ(mapObj);

            if (v2 == v3) {
                param1->unk_01++;
            }
        }
    }

    if (param1->unk_01 == 3) {
        int v4 = MapObject_GetXInitial(mapObj);
        int v5 = MapObject_GetZInitial(mapObj);
        int v6 = MapObject_GetX(mapObj);
        int v7 = MapObject_GetZ(mapObj);

        if ((v4 == v6) && (v5 == v7)) {
            param1->unk_01 = 0;
        }
    }

    {
        const int *v8;
        int v9, v10;
        u32 v11;

        v8 = sub_02065358(param1->unk_04);
        v9 = v8[param1->unk_01];

        MapObject_Turn(mapObj, v9);

        if (sub_0206553C(mapObj) == 0) {
            MapObject_TryFace(mapObj, v9);
        }

        v11 = sub_02063EBC(mapObj, v9);

        if (v11 & (1 << 0)) {
            param1->unk_01++;
            v9 = v8[param1->unk_01];

            MapObject_Turn(mapObj, v9);

            if (sub_0206553C(mapObj) == 0) {
                MapObject_TryFace(mapObj, v9);
            }

            v11 = sub_02063EBC(mapObj, v9);
        }

        v10 = 0xc;

        if (v11 != 0) {
            v10 = 0x20;
        }

        v10 = MovementAction_TurnActionTowardsDir(v9, v10);
        sub_02065668(mapObj, v10);

        if (sub_0206553C(mapObj) == 1) {
            sub_02065568(mapObj, &param1->unk_08);
        }
    }

    sub_02062D04(mapObj);
    param1->unk_00 = 1;

    return 1;
}

static int sub_02064FFC(MapObject *mapObj, UnkStruct_02064D98 *param1)
{
    if (sub_020658DC(mapObj) == 1) {
        sub_02062D10(mapObj);

        if (sub_0206553C(mapObj) == 1) {
            sub_020655E4(mapObj, &param1->unk_08);
        }

        param1->unk_00 = 0;
    }

    return 0;
}

static int (*const Unk_020EE7AC[])(MapObject *, UnkStruct_02064D98 *) = {
    sub_02064EEC,
    sub_02064FFC
};

static void sub_0206502C(MapObject *mapObj, int param1, int param2, int param3)
{
    UnkStruct_0206502C *v0 = sub_02062A54(mapObj, (sizeof(UnkStruct_0206502C)));

    v0->unk_02 = param1;
    v0->unk_03 = param2;
    v0->unk_04 = param3;

    if (sub_0206553C(mapObj) == 1) {
        sub_02065550(mapObj, &v0->unk_08);
    }
}

void sub_0206505C(MapObject *mapObj)
{
    sub_0206502C(mapObj, 2, 1, 30);
}

void sub_0206506C(MapObject *mapObj)
{
    sub_0206502C(mapObj, 2, 1, 31);
}

void sub_0206507C(MapObject *mapObj)
{
    sub_0206502C(mapObj, 2, 0, 32);
}

void sub_0206508C(MapObject *mapObj)
{
    sub_0206502C(mapObj, 2, 0, 33);
}

void sub_0206509C(MapObject *mapObj)
{
    sub_0206502C(mapObj, 2, 1, 34);
}

void sub_020650AC(MapObject *mapObj)
{
    sub_0206502C(mapObj, 2, 1, 35);
}

void sub_020650BC(MapObject *mapObj)
{
    sub_0206502C(mapObj, 2, 0, 36);
}

void sub_020650CC(MapObject *mapObj)
{
    sub_0206502C(mapObj, 2, 0, 37);
}

void sub_020650DC(MapObject *mapObj)
{
    UnkStruct_0206502C *v0 = sub_02062A78(mapObj);

    while (Unk_020EE820[v0->unk_00](mapObj, v0) == 1) {
        (void)0;
    }
}

static void sub_02065100(UnkStruct_0206502C *param0)
{
    if (param0->unk_05 == 1) {
        param0->unk_01--;

        if (param0->unk_01 < 0) {
            param0->unk_01 = 3;
        }
    } else {
        param0->unk_01++;
    }
}

static int sub_02065124(MapObject *mapObj, UnkStruct_0206502C *param1)
{
    if (MapObject_GetTrainerType(mapObj) == 0xa) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        PlayerAvatar *playerAvatar = sub_0205EF3C(fieldSystem);
        int v2 = MapObject_GetFacingDir(mapObj);
        int v3 = MapObject_GetDataAt(mapObj, 0);
        int v4 = sub_02067D58(mapObj, playerAvatar, v2, v3);

        if (v4 != -1) {
            int v5 = MovementAction_TurnActionTowardsDir(v2, MOVEMENT_ACTION_JUMP_ON_SPOT_FAST_NORTH);

            sub_02065668(mapObj, v4);
            sub_02062D04(mapObj);
            param1->unk_00 = 1;
            return 1;
        }
    }

    param1->unk_00 = 2;

    return 1;
}

static int sub_02065188(MapObject *mapObj, UnkStruct_0206502C *param1)
{
    if (sub_020658DC(mapObj) == 1) {
        sub_02062D10(mapObj);
        param1->unk_00 = 2;
    }

    return 0;
}

static int sub_020651A4(MapObject *mapObj, UnkStruct_0206502C *param1)
{
    if (param1->unk_01 == param1->unk_02) {
        if (param1->unk_03 == 0) {
            int v0 = MapObject_GetXInitial(mapObj);
            int v1 = MapObject_GetX(mapObj);

            if (v0 == v1) {
                sub_02065100(param1);
            }
        } else {
            int v2 = MapObject_GetZInitial(mapObj);
            int v3 = MapObject_GetZ(mapObj);

            if (v2 == v3) {
                sub_02065100(param1);
            }
        }
    }

    if (param1->unk_01 == 3) {
        int v4 = MapObject_GetXInitial(mapObj);
        int v5 = MapObject_GetZInitial(mapObj);
        int v6 = MapObject_GetX(mapObj);
        int v7 = MapObject_GetZ(mapObj);

        if ((v4 == v6) && (v5 == v7)) {
            param1->unk_01 = 0;
        }
    }

    {
        const int *v8;
        int v9, v10;
        u32 v11;

        v8 = sub_02065358(param1->unk_04);
        v9 = v8[param1->unk_01];

        MapObject_Turn(mapObj, v9);

        if (sub_0206553C(mapObj) == 0) {
            MapObject_TryFace(mapObj, v9);
        }

        v11 = sub_02063EBC(mapObj, v9);

        if (v11 & (1 << 0)) {
            sub_02065100(param1);
            v9 = v8[param1->unk_01];

            MapObject_Turn(mapObj, v9);

            if (sub_0206553C(mapObj) == 0) {
                MapObject_TryFace(mapObj, v9);
            }

            v11 = sub_02063EBC(mapObj, v9);
        }

        v10 = 0xc;

        if (v11 != 0) {
            v10 = 0x20;
        }

        v10 = MovementAction_TurnActionTowardsDir(v9, v10);
        sub_02065668(mapObj, v10);

        if (sub_0206553C(mapObj) == 1) {
            sub_02065568(mapObj, &param1->unk_08);
        }
    }

    sub_02062D04(mapObj);
    param1->unk_00 = 3;

    return 1;
}

static int sub_020652BC(MapObject *mapObj, UnkStruct_0206502C *param1)
{
    if (sub_020658DC(mapObj) == 1) {
        sub_02062D10(mapObj);

        if (sub_0206553C(mapObj) == 1) {
            sub_020655E4(mapObj, &param1->unk_08);
        }

        param1->unk_00 = 0;
    }

    return 0;
}

static int (*const Unk_020EE820[])(MapObject *, UnkStruct_0206502C *) = {
    sub_02065124,
    sub_02065188,
    sub_020651A4,
    sub_020652BC
};

static int sub_020652EC(const int *param0, int param1)
{
    int i = 0;

    while (param0[i] != param1) {
        i++;
    }

    GF_ASSERT(i);
    return i;
}

static int sub_0206530C(const int *param0, int param1)
{
    return param0[LCRNG_Next() % sub_020652EC(param0, param1)];
}

static int sub_02065330(int param0, int param1)
{
    const int *v0 = sub_02065358(param0);
    return v0[LCRNG_Next() % sub_020652EC(v0, param1)];
}

static const int *sub_02065358(int param0)
{
    const UnkStruct_020EEB08 *v0 = Unk_020EEB08;

    while (v0->unk_00 != 39) {
        if (v0->unk_00 == param0) {
            return v0->unk_04;
        }

        v0++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static int sub_0206537C(MapObject *mapObj)
{
    int v0 = MapObject_GetTrainerType(mapObj);

    if ((v0 != 0x1) && (v0 != 0x2)) {
        return -1;
    }

    {
        FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
        PlayerAvatar *playerAvatar = sub_0205EF3C(fieldSystem);

        if (sub_0206140C(playerAvatar) == 0) {
            return -1;
        }

        {
            int v3, v4 = 0;

            v0 = MapObject_GetMovementType(mapObj);

            do {
                v3 = Unk_020EEAD0[v4++];

                if (v3 == v0) {
                    break;
                }
            } while (v3 != 0xff);

            if (v0 != v3) {
                return -1;
            }
        }

        {
            const MapObject *v5 = Player_MapObject(playerAvatar);
            int v6 = sub_020630DC(v5);
            int v7 = sub_020630DC(mapObj);

            if (v6 != v7) {
                return -1;
            }
        }

        {
            int v8 = Player_GetXPos(playerAvatar);
            int v9 = Player_GetZPos(playerAvatar);
            int v10 = MapObject_GetDataAt(mapObj, 0);
            int v11 = MapObject_GetX(mapObj);
            int v12 = MapObject_GetZ(mapObj);
            int v13 = v11 - v10;
            int v14 = v11 + v10;
            int v15 = v12 - v10;
            int v16 = v12 + v10;

            if ((v15 <= v9) && (v16 >= v9)) {
                if ((v13 <= v8) && (v14 >= v8)) {
                    return sub_02064488(v11, v12, v8, v9);
                }
            }
        }
    }

    return -1;
}

static int sub_02065448(MapObject *mapObj, int param1, int param2)
{
    const int *v0 = sub_02065358(param1);
    int v1 = sub_020652EC(v0, param2);

    if (v1 == 1) {
        return -1;
    }

    {
        int v2;

        v2 = sub_0206537C(mapObj);

        if (v2 == -1) {
            return v2;
        }

        {
            int v3 = 0;

            do {
                if (v0[v3] == v2) {
                    return v2;
                }

                v3++;
            } while (v3 < v1);

            {
                int v4 = -1, v5 = -1;
                int v6 = MapObject_GetX(mapObj);
                int v7 = MapObject_GetZ(mapObj);
                FieldSystem *fieldSystem = MapObject_FieldSystem(mapObj);
                PlayerAvatar *playerAvatar = sub_0205EF3C(fieldSystem);
                int v10 = Player_GetXPos(playerAvatar);
                int v11 = Player_GetZPos(playerAvatar);

                if (v6 > v10) {
                    v4 = 2;
                } else if (v6 < v10) {
                    v4 = 3;
                }

                if (v7 > v11) {
                    v5 = 0;
                } else if (v7 < v11) {
                    v5 = 1;
                }

                v3 = 0;

                if (v4 == -1) {
                    do {
                        if (v0[v3] == v5) {
                            return v5;
                        }

                        v3++;
                    } while (v3 < v1);
                } else if (v5 == -1) {
                    do {
                        if (v0[v3] == v4) {
                            return v4;
                        }

                        v3++;
                    } while (v3 < v1);
                } else {
                    do {
                        if (v0[v3] == v4) {
                            return v4;
                        }

                        if (v0[v3] == v5) {
                            return v5;
                        }

                        v3++;
                    } while (v3 < v1);
                }
            }
        }
    }

    return -1;
}

static const int Unk_020EEAB0[2][4] = {
    { 0x0, 0x2, 0x1, 0x3 },
    { 0x0, 0x3, 0x1, 0x2 }
};

static int sub_0206553C(MapObject *mapObj)
{
    int v0 = MapObject_GetTrainerType(mapObj);

    if ((v0 == 0x7) || (v0 == 0x8)) {
        return 1;
    }

    return 0;
}

static void sub_02065550(MapObject *mapObj, UnkStruct_02065550 *param1)
{
    if (MapObject_GetTrainerType(mapObj) == 0x7) {
        param1->unk_01 = 0;
    } else {
        param1->unk_01 = 1;
    }
}

static void sub_02065568(MapObject *mapObj, UnkStruct_02065550 *param1)
{
    int v0, v1 = MapObject_GetFacingDir(mapObj);

    for (v0 = 0; (v0 < 4 && v1 != Unk_020EEAB0[param1->unk_01][v0]); v0++) {
        (void)0;
    }

    GF_ASSERT(v0 < 4);

    param1->unk_00 = v1;

    v0 = (v0 + 1) % 4;
    v1 = Unk_020EEAB0[param1->unk_01][v0];

    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_LOCK_DIR)) {
        param1->unk_02 = 1;
    } else {
        param1->unk_02 = 0;
    }

    MapObject_TryFace(mapObj, v1);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_LOCK_DIR);
}

static void sub_020655E4(MapObject *mapObj, UnkStruct_02065550 *param1)
{
    if (param1->unk_02 == 0) {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_LOCK_DIR);
    }
}

static const int Unk_020EEA88[] = {
    0x10,
    0x20,
    0x30,
    0x40,
    -1
};

static const int Unk_020EEA9C[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    -1
};

static const int Unk_020EE7B4[] = {
    0x0,
    0x2,
    -1
};

static const int Unk_020EE7D8[] = {
    0x0,
    0x3,
    -1
};

static const int Unk_020EE7C0[] = {
    0x1,
    0x2,
    -1
};

static const int Unk_020EE7E4[] = {
    0x1,
    0x3,
    -1
};

static const int Unk_020EE9A0[] = {
    0x0,
    0x1,
    0x2,
    -1
};

static const int Unk_020EE960[] = {
    0x0,
    0x1,
    0x3,
    -1
};

static const int Unk_020EE970[] = {
    0x0,
    0x2,
    0x3,
    -1
};

static const int Unk_020EE990[] = {
    0x1,
    0x2,
    0x3,
    -1
};

static const int Unk_020EE808[] = {
    0x0,
    0x1,
    -1
};

static const int Unk_020EE7FC[] = {
    0x2,
    0x3,
    -1
};

static const int Unk_020EEA10[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    -1
};

static const int Unk_020EE7F0[] = {
    0x0,
    0x1,
    -1
};

static const int Unk_020EE7CC[] = {
    0x2,
    0x3,
    -1
};

static const int Unk_020EE910[] = {
    0x0,
    0x3,
    0x2,
    0x1
};

static const int Unk_020EE8A0[] = {
    0x3,
    0x2,
    0x1,
    0x0
};

static const int Unk_020EE8E0[] = {
    0x1,
    0x0,
    0x3,
    0x2
};

static const int Unk_020EE8F0[] = {
    0x2,
    0x1,
    0x0,
    0x3
};

static const int Unk_020EE8D0[] = {
    0x2,
    0x3,
    0x1,
    0x0
};

static const int Unk_020EE8C0[] = {
    0x2,
    0x3,
    0x1,
    0x0
};

static const int Unk_020EE880[] = {
    0x1,
    0x0,
    0x2,
    0x3
};

static const int Unk_020EE9F0[] = {
    0x3,
    0x1,
    0x0,
    0x2
};

static const int Unk_020EE920[] = {
    0x2,
    0x0,
    0x1,
    0x3
};

static const int Unk_020EE930[] = {
    0x0,
    0x1,
    0x3,
    0x2
};

static const int Unk_020EE980[] = {
    0x3,
    0x2,
    0x0,
    0x1
};

static const int Unk_020EE9B0[] = {
    0x1,
    0x3,
    0x2,
    0x0
};

static const int Unk_020EE940[] = {
    0x3,
    0x0,
    0x1,
    0x2
};

static const int Unk_020EE840[] = {
    0x0,
    0x1,
    0x2,
    0x3
};

static const int Unk_020EE830[] = {
    0x2,
    0x3,
    0x0,
    0x1
};

static const int Unk_020EE9E0[] = {
    0x1,
    0x2,
    0x3,
    0x0
};

static const int Unk_020EE890[] = {
    0x0,
    0x2,
    0x1,
    0x3
};

static const int Unk_020EEA00[] = {
    0x1,
    0x3,
    0x0,
    0x2
};

static const int Unk_020EE950[] = {
    0x2,
    0x1,
    0x3,
    0x0
};

static const int Unk_020EE9C0[] = {
    0x3,
    0x0,
    0x2,
    0x1
};

static const int Unk_020EE850[] = {
    0x0,
    0x3,
    0x1,
    0x2
};

static const int Unk_020EE860[] = {
    0x1,
    0x2,
    0x0,
    0x3
};

static const int Unk_020EE8B0[] = {
    0x2,
    0x0,
    0x3,
    0x1
};

static const int Unk_020EE9D0[] = {
    0x3,
    0x1,
    0x2,
    0x0
};

static const int Unk_020EEA74[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    -1
};

static const UnkStruct_020EEB08 Unk_020EEB08[40] = {
    { 0x0, Unk_020EEA9C },
    { 0x1, Unk_020EE7B4 },
    { 0x2, Unk_020EE7D8 },
    { 0x3, Unk_020EE7C0 },
    { 0x4, Unk_020EE7E4 },
    { 0x5, Unk_020EE9A0 },
    { 0x6, Unk_020EE960 },
    { 0x7, Unk_020EE970 },
    { 0x8, Unk_020EE990 },
    { 0x9, Unk_020EE808 },
    { 0xA, Unk_020EE7FC },
    { 0xB, Unk_020EEA10 },
    { 0xC, Unk_020EE7F0 },
    { 0xD, Unk_020EE7CC },
    { 0xE, Unk_020EE910 },
    { 0xF, Unk_020EE8A0 },
    { 0x10, Unk_020EE8E0 },
    { 0x11, Unk_020EE8F0 },
    { 0x12, Unk_020EE8D0 },
    { 0x13, Unk_020EE8C0 },
    { 0x14, Unk_020EE880 },
    { 0x15, Unk_020EE9F0 },
    { 0x16, Unk_020EE920 },
    { 0x17, Unk_020EE930 },
    { 0x18, Unk_020EE980 },
    { 0x19, Unk_020EE9B0 },
    { 0x1A, Unk_020EE940 },
    { 0x1B, Unk_020EE840 },
    { 0x1C, Unk_020EE830 },
    { 0x1D, Unk_020EE9E0 },
    { 0x1E, Unk_020EE890 },
    { 0x1F, Unk_020EEA00 },
    { 0x20, Unk_020EE950 },
    { 0x21, Unk_020EE9C0 },
    { 0x22, Unk_020EE850 },
    { 0x23, Unk_020EE860 },
    { 0x24, Unk_020EE8B0 },
    { 0x25, Unk_020EE9D0 },
    { 0x26, Unk_020EEA74 },
    { 0x27, NULL }
};

static const int Unk_020EEAD0[] = {
    0x2,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0x2D,
    0x2E,
    0x12,
    0x13,
    0xff
};
