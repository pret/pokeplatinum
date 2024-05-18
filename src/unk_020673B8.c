#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "map_object.h"
#include "unk_020655F4.h"
#include "unk_020673B8.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s8 unk_02;
    s8 unk_03;
    s8 unk_04;
    s8 unk_05;
    s8 unk_06;
    s8 unk_07;
    s8 unk_08;
} UnkStruct_020674AC;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s8 unk_02;
    s8 unk_03;
    s8 unk_04;
    s8 unk_05;
    s8 unk_06;
    s8 unk_07;
    s8 unk_08;
} UnkStruct_0206762C;

static void sub_020673E4(MapObject * param0);
static int sub_02067400(MapObject * param0);
static int sub_0206741C(MapObject * param0);
static int sub_02067438(MapObject * param0);
static int sub_0206746C(MapObject * param0);
static void sub_020674A0(MapObject * param0);
static int sub_020674A4(MapObject * param0);
static int sub_020674A8(MapObject * param0);
static void sub_020674AC(MapObject * param0);
static int sub_020674C4(MapObject * param0);
static int sub_02067540(MapObject * param0);
static void sub_0206762C(MapObject * param0);
static int sub_02067658(MapObject * param0);
static int sub_020676D4(MapObject * param0);

void(*const Unk_020EF630[])(MapObject *);
int(*const Unk_020EF660[])(MapObject *);
int(*const Unk_020EF690[])(MapObject *);

void sub_020673B8 (MapObject * param0)
{
    sub_020673E4(param0);
}

int sub_020673C0 (MapObject * param0)
{
    if (sub_02067400(param0) == 0) {
        return 0;
    }

    if (sub_0206741C(param0) == 0) {
        return 0;
    }

    return 1;
}

static void sub_020673E4 (MapObject * param0)
{
    int v0 = sub_02062950(param0);

    Unk_020EF630[v0](param0);
}

static int sub_02067400 (MapObject * param0)
{
    int v0 = sub_02062950(param0);
    return Unk_020EF660[v0](param0);
}

static int sub_0206741C (MapObject * param0)
{
    int v0 = sub_02062950(param0);
    return Unk_020EF690[v0](param0);
}

static int sub_02067438 (MapObject * param0)
{
    int v0 = MapObject_XPos(param0);
    int v1 = MapObject_XPosPrev(param0);

    if (v0 != v1) {
        return 1;
    }

    v0 = MapObject_ZPos(param0);
    v1 = MapObject_ZPosPrev(param0);

    if (v0 != v1) {
        return 1;
    }

    return 0;
}

static int sub_0206746C (MapObject * param0)
{
    int v0 = MapObject_XPos(param0);
    int v1 = MapObject_XPosPrev(param0);

    if (v0 != v1) {
        return 0;
    }

    v0 = MapObject_ZPos(param0);
    v1 = MapObject_ZPosPrev(param0);

    if (v0 != v1) {
        return 0;
    }

    return 1;
}

static void sub_020674A0 (MapObject * param0)
{
    return;
}

static int sub_020674A4 (MapObject * param0)
{
    return 0;
}

static int sub_020674A8 (MapObject * param0)
{
    return 0;
}

static void sub_020674AC (MapObject * param0)
{
    UnkStruct_020674AC * v0;

    v0 = sub_02062A7C(param0, (sizeof(UnkStruct_020674AC)));
    v0->unk_03 = sub_020629D8(param0, 1);
}

static int sub_020674C4 (MapObject * param0)
{
    UnkStruct_020674AC * v0;

    v0 = sub_02062AA0(param0);

    switch (v0->unk_00) {
    case 0:
        if (sub_02067438(param0) == 1) {
            v0->unk_00++;
        }
        break;
    case 1:
        if (sub_0206746C(param0) == 0) {
            break;
        }

        v0->unk_02++;

        if (v0->unk_02 < v0->unk_03) {
            v0->unk_00 = 0;
            break;
        }

        v0->unk_00++;
    case 2:
        if (sub_02062D1C(param0) == 1) {
            break;
        }

        v0->unk_00++;
        v0->unk_02 = 0;
        v0->unk_01 = 0;
    case 3:
        return 1;
    }

    return 0;
}

static int sub_02067540 (MapObject * param0)
{
    UnkStruct_020674AC * v0;

    v0 = sub_02062AA0(param0);

    switch (v0->unk_01) {
    case 0:
    {
        int v1[4] = {0, 0, 1, 1};
        int v2 = MapObject_Dir(param0);

        v0->unk_04 = v2;
        v0->unk_05 = v1[v2];
        v0->unk_01++;
    }
    case 1:
    {
        int v3[2][2] = {{2, 3}, {0, 1}};
        int v4 = v3[v0->unk_05][v0->unk_06];
        int v5 = sub_02065838(v4, 0x0);

        sub_02065668(param0, v5);
        v0->unk_01++;
    }
    case 2:
    {
        if (sub_020658DC(param0) == 0) {
            return 1;
        }

        v0->unk_01++;
    }
    case 3:
    {
        v0->unk_08++;

        if (v0->unk_08 < 8) {
            return 1;
        }

        v0->unk_08 = 0;
        v0->unk_07++;

        if (v0->unk_07 < 4) {
            v0->unk_06 = (v0->unk_06 + 1) & 0x1;
            v0->unk_01 = 1;
            return 1;
        }

        MapObject_SetDir(param0, v0->unk_04);

        v0->unk_01++;
        v0->unk_07 = 0;
        v0->unk_00 = 0;
    }
    }

    return 0;
}

static void sub_0206762C (MapObject * param0)
{
    int v0;
    UnkStruct_0206762C * v1;

    v1 = sub_02062A7C(param0, (sizeof(UnkStruct_0206762C)));
    v1->unk_03 = sub_020629D8(param0, 1);

    v0 = sub_02062950(param0);

    if (v0 == 0x5) {
        v0 = 0;
    } else {
        v0 = 1;
    }

    v1->unk_05 = v0;
}

static int sub_02067658 (MapObject * param0)
{
    UnkStruct_0206762C * v0;

    v0 = sub_02062AA0(param0);

    switch (v0->unk_00) {
    case 0:
        if (sub_02067438(param0) == 1) {
            v0->unk_00++;
        }

        break;
    case 1:
        if (sub_0206746C(param0) == 0) {
            break;
        }

        v0->unk_02++;

        if (v0->unk_02 < v0->unk_03) {
            v0->unk_00 = 0;
            break;
        }

        v0->unk_00++;
    case 2:
        if (sub_02062D1C(param0) == 1) {
            break;
        }

        v0->unk_00++;
        v0->unk_02 = 0;
        v0->unk_01 = 0;
    case 3:
        return 1;
    }

    return 0;
}

static int sub_020676D4 (MapObject * param0)
{
    UnkStruct_020674AC * v0;
    int v1[2][4] = {{0, 2, 1, 3}, {0, 3, 1, 2}};

    v0 = sub_02062AA0(param0);

    switch (v0->unk_01) {
    case 0:
    {
        int v2, v3 = MapObject_Dir(param0);

        for (v2 = 0; (v2 < 4 && v3 != v1[v0->unk_05][v2]); v2++) {
            (void)0;
        }

        GF_ASSERT(v2 < 4);

        v0->unk_04 = v3;
        v0->unk_06 = (v2 + 1) % 4;
        v0->unk_01++;
    }
    case 1:
    {
        int v4 = v1[v0->unk_05][v0->unk_06];
        int v5 = sub_02065838(v4, 0x0);

        sub_02065668(param0, v5);
        v0->unk_01++;
    }
    case 2:
    {
        if (sub_020658DC(param0) == 0) {
            return 1;
        }

        v0->unk_01++;
    }
    case 3:
    {
        v0->unk_08++;

        if (v0->unk_08 < 8) {
            return 1;
        }

        v0->unk_08 = 0;
        v0->unk_07++;

        if (v0->unk_07 < 4) {
            v0->unk_06 = (v0->unk_06 + 1) % 4;
            v0->unk_01 = 1;
            return 1;
        }

        MapObject_SetDir(param0, v0->unk_04);
        v0->unk_01++;
        v0->unk_07 = 0;
        v0->unk_00 = 0;
    }
    }

    return 0;
}

static void(*const Unk_020EF630[])(MapObject *) = {
    sub_020674A0,
    sub_020674A0,
    sub_020674A0,
    sub_020674A0,
    sub_020674AC,
    sub_0206762C,
    sub_0206762C,
    sub_020674A0,
    sub_020674A0,
    sub_020674A0,
    sub_020674A0,
    sub_020674A0
};

static int(*const Unk_020EF660[])(MapObject *) = {
    sub_020674A4,
    sub_020674A4,
    sub_020674A4,
    sub_020674A4,
    sub_020674C4,
    sub_02067658,
    sub_02067658,
    sub_020674A4,
    sub_020674A4,
    sub_020674A4,
    sub_020674A4,
    sub_020674A4
};

static int(*const Unk_020EF690[])(MapObject *) = {
    sub_020674A8,
    sub_020674A8,
    sub_020674A8,
    sub_020674A8,
    sub_02067540,
    sub_020676D4,
    sub_020676D4,
    sub_020674A8,
    sub_020674A8,
    sub_020674A8,
    sub_020674A8,
    sub_020674A8
};
