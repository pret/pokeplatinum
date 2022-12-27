#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "struct_defs/struct_0203CDB0.h"

#include "unk_0201D15C.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_0206450C.h"
#include "unk_020655F4.h"
#include "unk_02067A84.h"

typedef struct {
    int unk_00;
    const int * unk_04;
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

static void sub_0206450C(UnkStruct_02061AB4 * param0, int param1);
static void sub_02064668(UnkStruct_02061AB4 * param0, int param1, int param2, int param3);
static int sub_020652EC(const int * param0, int param1);
static int sub_0206530C(const int * param0, int param1);
static int sub_02065330(int param0, int param1);
static const int * sub_02065358(int param0);
static int sub_0206537C(UnkStruct_02061AB4 * param0);
static int sub_02065448(UnkStruct_02061AB4 * param0, int param1, int param2);
static void sub_020647A0(UnkStruct_02061AB4 * param0, UnkStruct_020647A0 * param1);
static int sub_0206489C(UnkStruct_02061AB4 * param0, int param1);
static void sub_020648F4(UnkStruct_02061AB4 * param0, int param1);
static void sub_0206496C(UnkStruct_02061AB4 * param0, int param1);
static void sub_02064D98(UnkStruct_02061AB4 * param0, int param1, int param2, int param3);
static void sub_0206502C(UnkStruct_02061AB4 * param0, int param1, int param2, int param3);
static int sub_0206553C(UnkStruct_02061AB4 * param0);
static void sub_02065550(UnkStruct_02061AB4 * param0, UnkStruct_02065550 * param1);
static void sub_02065568(UnkStruct_02061AB4 * param0, UnkStruct_02065550 * param1);
static void sub_020655E4(UnkStruct_02061AB4 * param0, UnkStruct_02065550 * param1);

int(*const Unk_020EE900[])(UnkStruct_02061AB4 *, UnkStruct_0206496C *);
int(*const Unk_020EE870[])(UnkStruct_02061AB4 *, UnkStruct_0206496C *);
int(*const Unk_020EE814[])(UnkStruct_02061AB4 *, UnkStruct_02064C28 *);
int(*const Unk_020EE7AC[])(UnkStruct_02061AB4 *, UnkStruct_02064D98 *);
int(*const Unk_020EE820[])(UnkStruct_02061AB4 *, UnkStruct_0206502C *);
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

static void sub_0206450C (UnkStruct_02061AB4 * param0, int param1)
{
    UnkStruct_0206450C * v0;

    v0 = sub_02062A54(param0, (sizeof(UnkStruct_0206450C)));
    v0->unk_02 = sub_0206530C(Unk_020EEA88, -1);
    v0->unk_04 = param1;

    sub_02062A0C(param0, 0x0);
    sub_02062D10(param0);
}

void sub_0206453C (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 0);
}

void sub_02064548 (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 1);
}

void sub_02064554 (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 2);
}

void sub_02064560 (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 3);
}

void sub_0206456C (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 4);
}

void sub_02064578 (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 5);
}

void sub_02064584 (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 6);
}

void sub_02064590 (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 7);
}

void sub_0206459C (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 8);
}

void sub_020645A8 (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 9);
}

void sub_020645B4 (UnkStruct_02061AB4 * param0)
{
    sub_0206450C(param0, 10);
}

void sub_020645C0 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_0206450C * v0 = sub_02062A78(param0);
    int v1 = sub_02065448(param0, v0->unk_04, -1);

    if (v1 != -1) {
        sub_02062974(param0, v1);
    } else {
        switch (v0->unk_00) {
        case 0:
            v0->unk_02--;

            if (v0->unk_02 <= 0) {
                v0->unk_02 = sub_0206530C(Unk_020EEA88, -1);
                sub_02062974(param0, sub_02065330(v0->unk_04, -1));
            }
        }
    }

    sub_02064208(param0);
}

void sub_02064624 (UnkStruct_02061AB4 * param0)
{
    return;
}

void sub_02064628 (UnkStruct_02061AB4 * param0)
{
    sub_02064668(param0, 0xc, 11, 0);
}

void sub_02064638 (UnkStruct_02061AB4 * param0)
{
    sub_02064668(param0, 0xc, 12, 0);
}

void sub_02064648 (UnkStruct_02061AB4 * param0)
{
    sub_02064668(param0, 0xc, 13, 0);
}

void sub_02064658 (UnkStruct_02061AB4 * param0)
{
    sub_02064668(param0, 0xc, 13, 2);
}

static void sub_02064668 (UnkStruct_02061AB4 * param0, int param1, int param2, int param3)
{
    UnkStruct_02064668 * v0;

    v0 = sub_02062A54(param0, (sizeof(UnkStruct_02064668)));

    v0->unk_04 = param3;
    v0->unk_08 = param1;
    v0->unk_0C = param2;

    sub_02062A0C(param0, 0x0);
    sub_02062D10(param0);
}

void sub_02064690 (UnkStruct_02061AB4 * param0)
{
    int v0;
    UnkStruct_02064668 * v1;

    v1 = sub_02062A78(param0);

    switch (v1->unk_00) {
    case 0:
        sub_02062D10(param0);
        sub_02062D34(param0);

        v0 = sub_0206298C(param0);
        v0 = sub_02065838(v0, 0x0);

        sub_02065668(param0, v0);

        v1->unk_00++;
        break;
    case 1:
        if (sub_020658DC(param0) == 0) {
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
        sub_020629A0(param0, v0);

        if (v1->unk_04 == 1) {
            if (sub_0206489C(param0, v0) == 0) {
                v1->unk_00 = 0;
                break;
            }
        }

        {
            u32 v2 = sub_02063EBC(param0, v0);

            if (v2 != 0) {
                if (v1->unk_04 == 2) {
                    if ((v2 & (1 << 0))) {
                        v1->unk_00 = 0;
                        break;
                    }
                } else {
                    v1->unk_00 = 0;
                    break;
                }
            }
        }

        v0 = sub_02065838(v0, v1->unk_08);

        sub_02065668(param0, v0);
        sub_02062D04(param0);

        v1->unk_00++;
    case 4:
        if (sub_020658DC(param0) == 0) {
            break;
        }

        sub_02062D10(param0);
        v1->unk_00 = 0;
    }
}

static void sub_020647A0 (UnkStruct_02061AB4 * param0, UnkStruct_020647A0 * param1)
{
    int v0, v1, v2, v3, v4;

    v1 = sub_02062FF0(param0);
    v2 = sub_02063000(param0);
    v3 = sub_02062A00(param0);
    v4 = sub_02062A08(param0);
    v0 = sub_02062948(param0);

    switch (v0) {
    case 0x6:
        param1->unk_00 = v1 - v3; param1->unk_08 = v1;
        param1->unk_04 = v2 - v4; param1->unk_0C = v2;
        break;
    case 0x7:
        param1->unk_00 = v1; param1->unk_08 = v1 + v3;
        param1->unk_04 = v2 - v4; param1->unk_0C = v2;
        break;
    case 0x8:
        param1->unk_00 = v1 - v3; param1->unk_08 = v1;
        param1->unk_04 = v2; param1->unk_0C = v2 + v4;
        break;
    case 0x9:
        param1->unk_00 = v1; param1->unk_08 = v1 + v3;
        param1->unk_04 = v2; param1->unk_0C = v2 + v4;
        break;
    case 0xa:
        param1->unk_00 = v1 - v3; param1->unk_08 = v1;
        param1->unk_04 = v2 - v4; param1->unk_0C = v2 + v4;
        break;
    case 0xb:
        param1->unk_00 = v1; param1->unk_08 = v1 + v3;
        param1->unk_04 = v2 - v4; param1->unk_0C = v2 + v4;
        break;
    case 0xc:
        param1->unk_00 = v1 - v3; param1->unk_08 = v1 + v3;
        param1->unk_04 = v2 - v4; param1->unk_0C = v2;
        break;
    case 0xd:
        param1->unk_00 = v1 - v3; param1->unk_08 = v1 + v3;
        param1->unk_04 = v2; param1->unk_0C = v2 + v4;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

static int sub_0206489C (UnkStruct_02061AB4 * param0, int param1)
{
    int v0, v1;
    UnkStruct_020647A0 v2;

    sub_020647A0(param0, &v2);

    v0 = sub_02063020(param0) + sub_0206419C(param1);
    v1 = sub_02063040(param0) + sub_020641A8(param1);

    if ((v2.unk_00 > v0) || (v2.unk_08 < v0)) {
        return 0;
    }

    if ((v2.unk_04 > v1) || (v2.unk_0C < v1)) {
        return 0;
    }

    return 1;
}

static void sub_020648F4 (UnkStruct_02061AB4 * param0, int param1)
{
    UnkStruct_020648F4 * v0;

    v0 = sub_02062A54(param0, (sizeof(UnkStruct_020648F4)));
    v0->unk_00 = param1;

    sub_02062A0C(param0, 0x0);
    sub_02062D10(param0);
    sub_02064208(param0);
}

void sub_02064918 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_020648F4 * v0;

    v0 = sub_02062A78(param0);

    switch (v0->unk_04) {
    case 0:
        sub_02062974(param0, v0->unk_00);
        v0->unk_04++;
        break;
    case 1:
        break;
    }
}

void sub_0206493C (UnkStruct_02061AB4 * param0)
{
    sub_020648F4(param0, 0);
}

void sub_02064948 (UnkStruct_02061AB4 * param0)
{
    sub_020648F4(param0, 1);
}

void sub_02064954 (UnkStruct_02061AB4 * param0)
{
    sub_020648F4(param0, 2);
}

void sub_02064960 (UnkStruct_02061AB4 * param0)
{
    sub_020648F4(param0, 3);
}

static void sub_0206496C (UnkStruct_02061AB4 * param0, int param1)
{
    UnkStruct_0206496C * v0;

    v0 = sub_02062A54(param0, (sizeof(UnkStruct_0206496C)));
    v0->unk_00 = param1;

    sub_02062A0C(param0, 0x0);
    sub_02062D10(param0);
    sub_02064208(param0);
}

void sub_02064990 (UnkStruct_02061AB4 * param0)
{
    sub_0206496C(param0, 2);
}

void sub_0206499C (UnkStruct_02061AB4 * param0)
{
    sub_0206496C(param0, 3);
}

void sub_020649A8 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_0206496C * v0;

    v0 = sub_02062A78(param0);

    while (Unk_020EE900[v0->unk_02](param0, v0) == 1) {
        (void)0;
    }
}

static int sub_020649CC (UnkStruct_02061AB4 * param0, UnkStruct_0206496C * param1)
{
    int v0 = sub_02065448(param0, 38, -1);

    if (v0 == -1) {
        v0 = sub_0206298C(param0);
    }

    v0 = sub_02065838(v0, 0x0);
    sub_02065668(param0, v0);
    param1->unk_02 = 1;

    return 1;
}

static int sub_02064A00 (UnkStruct_02061AB4 * param0, UnkStruct_0206496C * param1)
{
    if (sub_020658DC(param0) == 0) {
        return 0;
    }

    param1->unk_04 = 0;
    param1->unk_02 = 2;

    return 1;
}

static int sub_02064A1C (UnkStruct_02061AB4 * param0, UnkStruct_0206496C * param1)
{
    if (param1->unk_04) {
        if (sub_02065448(param0, 38, -1) != -1) {
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

static int sub_02064A58 (UnkStruct_02061AB4 * param0, UnkStruct_0206496C * param1)
{
    int v0, v1, * v2;
    int v3[5] = {0, 2, 1, 3, -1};
    int v4[5] = {0, 3, 1, 2, -1};

    if (param1->unk_00 == 2) {
        v2 = v3;
    } else {
        v2 = v4;
    }

    v1 = sub_0206298C(param0);

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

    sub_02062974(param0, v1);

    param1->unk_02 = 0;
    return 1;
}

static int(*const Unk_020EE900[])(UnkStruct_02061AB4 *, UnkStruct_0206496C *) = {
    sub_020649CC,
    sub_02064A00,
    sub_02064A1C,
    sub_02064A58
};

void sub_02064AF0 (UnkStruct_02061AB4 * param0)
{
    sub_0206496C(param0, 3);
}

void sub_02064AFC (UnkStruct_02061AB4 * param0)
{
    UnkStruct_0206496C * v0;

    v0 = sub_02062A78(param0);

    while (Unk_020EE870[v0->unk_02](param0, v0) == 1) {
        (void)0;
    }
}

static int sub_02064B20 (UnkStruct_02061AB4 * param0, UnkStruct_0206496C * param1)
{
    int v0 = sub_0206298C(param0);

    v0 = sub_02065838(v0, 0x0);
    sub_02065668(param0, v0);
    param1->unk_02 = 1;

    return 1;
}

static int sub_02064B40 (UnkStruct_02061AB4 * param0, UnkStruct_0206496C * param1)
{
    if (sub_020658DC(param0) == 0) {
        return 0;
    }

    param1->unk_04 = 0;
    param1->unk_02 = 2;

    return 1;
}

static int sub_02064B5C (UnkStruct_02061AB4 * param0, UnkStruct_0206496C * param1)
{
    param1->unk_04++;

    if (param1->unk_04 < 24) {
        return 0;
    }

    param1->unk_02 = 3;
    return 1;
}

static int sub_02064B74 (UnkStruct_02061AB4 * param0, UnkStruct_0206496C * param1)
{
    int v0, v1, * v2;
    int v3[5] = {0, 2, 1, 3, -1};
    int v4[5] = {0, 3, 1, 2, -1};

    if (param1->unk_00 == 2) {
        v2 = v3;
    } else {
        v2 = v4;
    }

    v1 = sub_0206298C(param0);

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

    sub_02062974(param0, v1);

    {
        int v5 = sub_0206298C(param0);
        int v6 = sub_02062968(param0);

        if (v5 == v6) {
            param1->unk_00 = sub_0206447C(param1->unk_00);
        }
    }

    param1->unk_02 = 0;
    return 1;
}

static int(*const Unk_020EE870[])(UnkStruct_02061AB4 *, UnkStruct_0206496C *) = {
    sub_02064B20,
    sub_02064B40,
    sub_02064B5C,
    sub_02064B74
};

void sub_02064C28 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02064C28 * v0;

    v0 = sub_02062A54(param0, (sizeof(UnkStruct_02064C28)));

    if (sub_0206553C(param0) == 1) {
        sub_02065550(param0, &v0->unk_04);
    }
}

void sub_02064C48 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02064C28 * v0 = sub_02062A78(param0);

    while (Unk_020EE814[v0->unk_00](param0, v0) == 1) {
        (void)0;
    }
}

static int sub_02064C6C (UnkStruct_02061AB4 * param0, UnkStruct_02064C28 * param1)
{
    int v0;

    v0 = sub_02062968(param0);

    if (param1->unk_02 == 1) {
        v0 = sub_0206447C(v0);
    }

    sub_02062994(param0, v0);

    if (sub_0206553C(param0) == 0) {
        sub_02062974(param0, v0);
    }

    param1->unk_00 = 1;
    return 1;
}

static int sub_02064CA8 (UnkStruct_02061AB4 * param0, UnkStruct_02064C28 * param1)
{
    if (param1->unk_02) {
        int v0, v1, v2, v3;

        v0 = sub_02062FF0(param0);
        v1 = sub_02063000(param0);
        v2 = sub_02063020(param0);
        v3 = sub_02063040(param0);

        if ((v0 == v2) && (v1 == v3)) {
            int v4 = sub_0206447C(sub_0206299C(param0));

            sub_02062994(param0, v4);

            if (sub_0206553C(param0) == 0) {
                sub_02062974(param0, v4);
            }

            param1->unk_02 = 0;
        }
    }

    {
        int v5, v6;
        u32 v7;

        v5 = sub_0206299C(param0);
        v7 = sub_02063EBC(param0, v5);

        if ((v7 & (1 << 0))) {
            param1->unk_02 = 1;
            v5 = sub_0206447C(v5);
            v7 = sub_02063EBC(param0, v5);
        }

        v6 = 0xc;

        if (v7 != 0) {
            v6 = 0x20;
        }

        v6 = sub_02065838(v5, v6);
        sub_02065668(param0, v6);

        if (sub_0206553C(param0) == 1) {
            sub_02065568(param0, &param1->unk_04);
        }
    }

    sub_02062D04(param0);
    param1->unk_00 = 2;

    return 1;
}

static int sub_02064D68 (UnkStruct_02061AB4 * param0, UnkStruct_02064C28 * param1)
{
    if (sub_020658DC(param0) == 1) {
        sub_02062D10(param0);

        if (sub_0206553C(param0) == 1) {
            sub_020655E4(param0, &param1->unk_04);
        }

        param1->unk_00 = 0;
    }

    return 0;
}

static int(*const Unk_020EE814[])(UnkStruct_02061AB4 *, UnkStruct_02064C28 *) = {
    sub_02064C6C,
    sub_02064CA8,
    sub_02064D68
};

static void sub_02064D98 (UnkStruct_02061AB4 * param0, int param1, int param2, int param3)
{
    UnkStruct_02064D98 * v0;

    v0 = sub_02062A54(param0, (sizeof(UnkStruct_02064D98)));
    v0->unk_02 = param1;
    v0->unk_03 = param2;
    v0->unk_04 = param3;

    if (sub_0206553C(param0) == 1) {
        sub_02065550(param0, &v0->unk_08);
    }
}

void sub_02064DC8 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 0, 14);
}

void sub_02064DD8 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 0, 15);
}

void sub_02064DE8 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 1, 16);
}

void sub_02064DF8 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 1, 17);
}

void sub_02064E08 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 0, 18);
}

void sub_02064E18 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 0, 19);
}

void sub_02064E28 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 1, 20);
}

void sub_02064E38 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 1, 21);
}

void sub_02064E48 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 1, 22);
}

void sub_02064E58 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 1, 23);
}

void sub_02064E68 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 0, 24);
}

void sub_02064E78 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 0, 25);
}

void sub_02064E88 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 1, 26);
}

void sub_02064E98 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 1, 27);
}

void sub_02064EA8 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 0, 28);
}

void sub_02064EB8 (UnkStruct_02061AB4 * param0)
{
    sub_02064D98(param0, 2, 0, 29);
}

void sub_02064EC8 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02064D98 * v0;

    v0 = sub_02062A78(param0);

    while (Unk_020EE7AC[v0->unk_00](param0, v0) == 1) {
        (void)0;
    }
}

static int sub_02064EEC (UnkStruct_02061AB4 * param0, UnkStruct_02064D98 * param1)
{
    if (param1->unk_01 == param1->unk_02) {
        if (param1->unk_03 == 0) {
            int v0 = sub_02062FF0(param0);
            int v1 = sub_02063020(param0);

            if (v0 == v1) {
                param1->unk_01++;
            }
        } else {
            int v2 = sub_02063000(param0);
            int v3 = sub_02063040(param0);

            if (v2 == v3) {
                param1->unk_01++;
            }
        }
    }

    if (param1->unk_01 == 3) {
        int v4 = sub_02062FF0(param0);
        int v5 = sub_02063000(param0);
        int v6 = sub_02063020(param0);
        int v7 = sub_02063040(param0);

        if ((v4 == v6) && (v5 == v7)) {
            param1->unk_01 = 0;
        }
    }

    {
        const int * v8;
        int v9, v10;
        u32 v11;

        v8 = sub_02065358(param1->unk_04);
        v9 = v8[param1->unk_01];

        sub_02062994(param0, v9);

        if (sub_0206553C(param0) == 0) {
            sub_02062974(param0, v9);
        }

        v11 = sub_02063EBC(param0, v9);

        if ((v11 & (1 << 0))) {
            param1->unk_01++;
            v9 = v8[param1->unk_01];

            sub_02062994(param0, v9);

            if (sub_0206553C(param0) == 0) {
                sub_02062974(param0, v9);
            }

            v11 = sub_02063EBC(param0, v9);
        }

        v10 = 0xc;

        if ((v11 != 0)) {
            v10 = 0x20;
        }

        v10 = sub_02065838(v9, v10);
        sub_02065668(param0, v10);

        if (sub_0206553C(param0) == 1) {
            sub_02065568(param0, &param1->unk_08);
        }
    }

    sub_02062D04(param0);
    param1->unk_00 = 1;

    return 1;
}

static int sub_02064FFC (UnkStruct_02061AB4 * param0, UnkStruct_02064D98 * param1)
{
    if (sub_020658DC(param0) == 1) {
        sub_02062D10(param0);

        if (sub_0206553C(param0) == 1) {
            sub_020655E4(param0, &param1->unk_08);
        }

        param1->unk_00 = 0;
    }

    return 0;
}

static int(*const Unk_020EE7AC[])(UnkStruct_02061AB4 *, UnkStruct_02064D98 *) = {
    sub_02064EEC,
    sub_02064FFC
};

static void sub_0206502C (UnkStruct_02061AB4 * param0, int param1, int param2, int param3)
{
    UnkStruct_0206502C * v0;

    v0 = sub_02062A54(param0, (sizeof(UnkStruct_0206502C)));

    v0->unk_02 = param1;
    v0->unk_03 = param2;
    v0->unk_04 = param3;

    if (sub_0206553C(param0) == 1) {
        sub_02065550(param0, &v0->unk_08);
    }
}

void sub_0206505C (UnkStruct_02061AB4 * param0)
{
    sub_0206502C(param0, 2, 1, 30);
}

void sub_0206506C (UnkStruct_02061AB4 * param0)
{
    sub_0206502C(param0, 2, 1, 31);
}

void sub_0206507C (UnkStruct_02061AB4 * param0)
{
    sub_0206502C(param0, 2, 0, 32);
}

void sub_0206508C (UnkStruct_02061AB4 * param0)
{
    sub_0206502C(param0, 2, 0, 33);
}

void sub_0206509C (UnkStruct_02061AB4 * param0)
{
    sub_0206502C(param0, 2, 1, 34);
}

void sub_020650AC (UnkStruct_02061AB4 * param0)
{
    sub_0206502C(param0, 2, 1, 35);
}

void sub_020650BC (UnkStruct_02061AB4 * param0)
{
    sub_0206502C(param0, 2, 0, 36);
}

void sub_020650CC (UnkStruct_02061AB4 * param0)
{
    sub_0206502C(param0, 2, 0, 37);
}

void sub_020650DC (UnkStruct_02061AB4 * param0)
{
    UnkStruct_0206502C * v0 = sub_02062A78(param0);

    while (Unk_020EE820[v0->unk_00](param0, v0) == 1) {
        (void)0;
    }
}

static void sub_02065100 (UnkStruct_0206502C * param0)
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

static int sub_02065124 (UnkStruct_02061AB4 * param0, UnkStruct_0206502C * param1)
{
    if (sub_02062950(param0) == 0xa) {
        UnkStruct_0203CDB0 * v0 = sub_02062C00(param0);
        UnkStruct_0205E884 * v1 = sub_0205EF3C(v0);
        int v2 = sub_0206298C(param0);
        int v3 = sub_020629D8(param0, 0);
        int v4 = sub_02067D58(param0, v1, v2, v3);

        if (v4 != -1) {
            int v5 = sub_02065838(v2, 0x30);

            sub_02065668(param0, v4);
            sub_02062D04(param0);
            param1->unk_00 = 1;
            return 1;
        }
    }

    param1->unk_00 = 2;

    return 1;
}

static int sub_02065188 (UnkStruct_02061AB4 * param0, UnkStruct_0206502C * param1)
{
    if (sub_020658DC(param0) == 1) {
        sub_02062D10(param0);
        param1->unk_00 = 2;
    }

    return 0;
}

static int sub_020651A4 (UnkStruct_02061AB4 * param0, UnkStruct_0206502C * param1)
{
    if (param1->unk_01 == param1->unk_02) {
        if (param1->unk_03 == 0) {
            int v0 = sub_02062FF0(param0);
            int v1 = sub_02063020(param0);

            if (v0 == v1) {
                sub_02065100(param1);
            }
        } else {
            int v2 = sub_02063000(param0);
            int v3 = sub_02063040(param0);

            if (v2 == v3) {
                sub_02065100(param1);
            }
        }
    }

    if (param1->unk_01 == 3) {
        int v4 = sub_02062FF0(param0);
        int v5 = sub_02063000(param0);
        int v6 = sub_02063020(param0);
        int v7 = sub_02063040(param0);

        if ((v4 == v6) && (v5 == v7)) {
            param1->unk_01 = 0;
        }
    }

    {
        const int * v8;
        int v9, v10;
        u32 v11;

        v8 = sub_02065358(param1->unk_04);
        v9 = v8[param1->unk_01];

        sub_02062994(param0, v9);

        if (sub_0206553C(param0) == 0) {
            sub_02062974(param0, v9);
        }

        v11 = sub_02063EBC(param0, v9);

        if ((v11 & (1 << 0))) {
            sub_02065100(param1);
            v9 = v8[param1->unk_01];

            sub_02062994(param0, v9);

            if (sub_0206553C(param0) == 0) {
                sub_02062974(param0, v9);
            }

            v11 = sub_02063EBC(param0, v9);
        }

        v10 = 0xc;

        if ((v11 != 0)) {
            v10 = 0x20;
        }

        v10 = sub_02065838(v9, v10);
        sub_02065668(param0, v10);

        if (sub_0206553C(param0) == 1) {
            sub_02065568(param0, &param1->unk_08);
        }
    }

    sub_02062D04(param0);
    param1->unk_00 = 3;

    return 1;
}

static int sub_020652BC (UnkStruct_02061AB4 * param0, UnkStruct_0206502C * param1)
{
    if (sub_020658DC(param0) == 1) {
        sub_02062D10(param0);

        if (sub_0206553C(param0) == 1) {
            sub_020655E4(param0, &param1->unk_08);
        }

        param1->unk_00 = 0;
    }

    return 0;
}

static int(*const Unk_020EE820[])(UnkStruct_02061AB4 *, UnkStruct_0206502C *) = {
    sub_02065124,
    sub_02065188,
    sub_020651A4,
    sub_020652BC
};

static int sub_020652EC (const int * param0, int param1)
{
    int i = 0;

    while (param0[i] != param1) {
        i++;
    }

    GF_ASSERT(i); return i;
}

static int sub_0206530C (const int * param0, int param1)
{
    return param0[sub_0201D2E8() % sub_020652EC(param0, param1)];
}

static int sub_02065330 (int param0, int param1)
{
    const int * v0 = sub_02065358(param0);
    return v0[sub_0201D2E8() % sub_020652EC(v0, param1)];
}

static const int * sub_02065358 (int param0)
{
    const UnkStruct_020EEB08 * v0 = Unk_020EEB08;

    while (v0->unk_00 != 39) {
        if (v0->unk_00 == param0) {
            return v0->unk_04;
        }

        v0++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static int sub_0206537C (UnkStruct_02061AB4 * param0)
{
    int v0 = sub_02062950(param0);

    if ((v0 != 0x1) && (v0 != 0x2)) {
        return(-1);
    }

    {
        UnkStruct_0203CDB0 * v1 = sub_02062C00(param0);
        UnkStruct_0205E884 * v2 = sub_0205EF3C(v1);

        if (sub_0206140C(v2) == 0) {
            return(-1);
        }

        {
            int v3, v4 = 0;

            v0 = sub_02062948(param0);

            do {
                v3 = Unk_020EEAD0[v4++];

                if (v3 == v0) {
                    break;
                }
            } while (v3 != 0xff);

            if (v0 != v3) {
                return(-1);
            }
        }

        {
            const UnkStruct_02061AB4 * v5 = sub_0205EB3C(v2);
            int v6 = sub_020630DC(v5);
            int v7 = sub_020630DC(param0);

            if (v6 != v7) {
                return(-1);
            }
        }

        {
            int v8 = sub_0205EABC(v2);
            int v9 = sub_0205EAC8(v2);
            int v10 = sub_020629D8(param0, 0);
            int v11 = sub_02063020(param0);
            int v12 = sub_02063040(param0);
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

    return(-1);
}

static int sub_02065448 (UnkStruct_02061AB4 * param0, int param1, int param2)
{
    const int * v0 = sub_02065358(param1);
    int v1 = sub_020652EC(v0, param2);

    if (v1 == 1) {
        return(-1);
    }

    {
        int v2;

        v2 = sub_0206537C(param0);

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
                int v6 = sub_02063020(param0);
                int v7 = sub_02063040(param0);
                UnkStruct_0203CDB0 * v8 = sub_02062C00(param0);
                UnkStruct_0205E884 * v9 = sub_0205EF3C(v8);
                int v10 = sub_0205EABC(v9);
                int v11 = sub_0205EAC8(v9);

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

    return(-1);
}

static const int Unk_020EEAB0[2][4] = {
    {0x0, 0x2, 0x1, 0x3},
    {0x0, 0x3, 0x1, 0x2}
};

static int sub_0206553C (UnkStruct_02061AB4 * param0)
{
    int v0 = sub_02062950(param0);

    if ((v0 == 0x7) || (v0 == 0x8)) {
        return 1;
    }

    return 0;
}

static void sub_02065550 (UnkStruct_02061AB4 * param0, UnkStruct_02065550 * param1)
{
    if (sub_02062950(param0) == 0x7) {
        param1->unk_01 = 0;
    } else {
        param1->unk_01 = 1;
    }
}

static void sub_02065568 (UnkStruct_02061AB4 * param0, UnkStruct_02065550 * param1)
{
    int v0, v1 = sub_0206298C(param0);

    for (v0 = 0; (v0 < 4 && v1 != Unk_020EEAB0[param1->unk_01][v0]); v0++) {
        (void)0;
    }

    GF_ASSERT(v0 < 4);

    param1->unk_00 = v1;

    v0 = (v0 + 1) % 4;
    v1 = Unk_020EEAB0[param1->unk_01][v0];

    if (sub_020628D0(param0, (1 << 7))) {
        param1->unk_02 = 1;
    } else {
        param1->unk_02 = 0;
    }

    sub_02062974(param0, v1);
    sub_020628BC(param0, (1 << 7));
}

static void sub_020655E4 (UnkStruct_02061AB4 * param0, UnkStruct_02065550 * param1)
{
    if (param1->unk_02 == 0) {
        sub_020628C4(param0, (1 << 7));
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
    {0x0, Unk_020EEA9C},
    {0x1, Unk_020EE7B4},
    {0x2, Unk_020EE7D8},
    {0x3, Unk_020EE7C0},
    {0x4, Unk_020EE7E4},
    {0x5, Unk_020EE9A0},
    {0x6, Unk_020EE960},
    {0x7, Unk_020EE970},
    {0x8, Unk_020EE990},
    {0x9, Unk_020EE808},
    {0xA, Unk_020EE7FC},
    {0xB, Unk_020EEA10},
    {0xC, Unk_020EE7F0},
    {0xD, Unk_020EE7CC},
    {0xE, Unk_020EE910},
    {0xF, Unk_020EE8A0},
    {0x10, Unk_020EE8E0},
    {0x11, Unk_020EE8F0},
    {0x12, Unk_020EE8D0},
    {0x13, Unk_020EE8C0},
    {0x14, Unk_020EE880},
    {0x15, Unk_020EE9F0},
    {0x16, Unk_020EE920},
    {0x17, Unk_020EE930},
    {0x18, Unk_020EE980},
    {0x19, Unk_020EE9B0},
    {0x1A, Unk_020EE940},
    {0x1B, Unk_020EE840},
    {0x1C, Unk_020EE830},
    {0x1D, Unk_020EE9E0},
    {0x1E, Unk_020EE890},
    {0x1F, Unk_020EEA00},
    {0x20, Unk_020EE950},
    {0x21, Unk_020EE9C0},
    {0x22, Unk_020EE850},
    {0x23, Unk_020EE860},
    {0x24, Unk_020EE8B0},
    {0x25, Unk_020EE9D0},
    {0x26, Unk_020EEA74},
    {0x27, NULL}
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
