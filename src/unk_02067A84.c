#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0203CDB0.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "unk_0203E880.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_02067A84.h"
#include "unk_020711EC.h"
#include "unk_02071B10.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay008/ov8_02249960.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_02061AB4 * unk_14;
} UnkStruct_02067C28;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    UnkStruct_ov101_021D5D90 * unk_20;
    UnkStruct_02061AB4 * unk_24;
    UnkStruct_0205E884 * unk_28;
    UnkStruct_0203CDB0 * unk_2C;
} UnkStruct_020EF6D0;

static int sub_02067BA8(UnkStruct_0203CDB0 * param0, UnkStruct_02061830 * param1, UnkStruct_0205E884 * param2, const UnkStruct_02061AB4 * param3, UnkStruct_02067C28 * param4);
static void sub_02067C28(UnkStruct_02067C28 * param0, UnkStruct_02061AB4 * param1, int param2, int param3);
static int sub_02067C54(const UnkStruct_02061AB4 * param0);
static int sub_02067C80(const UnkStruct_02061AB4 * param0, UnkStruct_0205E884 * param1, int * param2);
static int sub_02067DA8(const UnkStruct_02061AB4 * param0, int param1, int param2, int param3, int param4, int param5);
static int sub_02067E74(const UnkStruct_02061AB4 * param0, int param1, int param2);
static int sub_02067F14(UnkStruct_02061AB4 * param0);
static UnkStruct_02061AB4 * sub_02067F2C(UnkStruct_0203CDB0 * param0, UnkStruct_02061830 * param1, UnkStruct_02061AB4 * param2, int param3);
static UnkStruct_0201CD38 * sub_02067FF0(UnkStruct_0203CDB0 * param0, UnkStruct_02061AB4 * param1, UnkStruct_0205E884 * param2, int param3, int param4, int param5, int param6, int param7);
static int sub_02068048(UnkStruct_0201CD38 * param0);
static void sub_02068054(UnkStruct_0201CD38 * param0);
static void sub_0206806C(UnkStruct_0201CD38 * param0, void * param1);

int(*const Unk_020EF6C0[])(const UnkStruct_02061AB4 *, int, int, int, int);
int(*const Unk_020EF6D0[])(UnkStruct_020EF6D0 *);

int sub_02067A84 (UnkStruct_0203CDB0 * param0, BOOL param1)
{
    UnkStruct_02067C28 v0;
    UnkStruct_02061830 * v1 = param0->unk_38;
    UnkStruct_0205E884 * v2 = param0->unk_3C;

    if (sub_02067BA8(param0, v1, v2, NULL, &v0) == 0) {
        return 0;
    }

    if (v0.unk_10 == 0) {
        UnkStruct_02061AB4 * v3;
        UnkStruct_02067C28 v4;

        sub_0203E880(param0, 3928, v0.unk_14);

        if ((param1 == 0) || (sub_02067BA8(param0, v1, v2, v0.unk_14, &v4) == 0)) {
            sub_0203E8B0(param0, v0.unk_14, v0.unk_00, v0.unk_04, v0.unk_08, v0.unk_0C, 0, 0);
            return 1;
        }

        sub_0203E8B0(param0, v0.unk_14, v0.unk_00, v0.unk_04, v0.unk_08, v0.unk_0C, 2, 0);
        sub_0203E8B0(param0, v4.unk_14, v4.unk_00, v4.unk_04, v4.unk_08, v4.unk_0C, 2, 1);

        return 1;
    }

    if (v0.unk_10 == 1) {
        UnkStruct_02061AB4 * v5;
        UnkStruct_02067C28 v6;

        if (param1 == 0) {
            return 0;
        }

        v5 = sub_02067F2C(param0, v1, v0.unk_14, v0.unk_0C);

        sub_02067C28(&v6, v5, v0.unk_00, v0.unk_04);
        sub_0203E880(param0, 3928, v0.unk_14);
        sub_0203E8B0(param0, v0.unk_14, v0.unk_00, v0.unk_04, v0.unk_08, v0.unk_0C, 1, 0);
        sub_0203E8B0(param0, v6.unk_14, v6.unk_00, v6.unk_04, v6.unk_08, v6.unk_0C, 1, 1);

        return 1;
    }

    GF_ASSERT(FALSE);
    return 0;
}

static int sub_02067BA8 (UnkStruct_0203CDB0 * param0, UnkStruct_02061830 * param1, UnkStruct_0205E884 * param2, const UnkStruct_02061AB4 * param3, UnkStruct_02067C28 * param4)
{
    int v0, v1, v2;
    UnkStruct_02061AB4 * v3;

    v0 = 0;
    v3 = NULL;
    v1 = -1;

    while (sub_020625B0(param1, &v3, &v0, (1 << 0))) {
        if ((param3 == NULL) || (param3 != v3)) {
            v1 = sub_02067C80(v3, param2, &v2);

            if (v1 != -1) {
                if (sub_0203F2A0(param0, sub_02067F14(v3)) == 0) {
                    sub_02067C28(param4, v3, v1, v2);
                    return 1;
                }
            }
        }
    }

    return 0;
}

static void sub_02067C28 (UnkStruct_02067C28 * param0, UnkStruct_02061AB4 * param1, int param2, int param3)
{
    param0->unk_00 = param2;
    param0->unk_04 = param3;
    param0->unk_08 = sub_02062960(param1);
    param0->unk_0C = sub_0203F254(param0->unk_08);
    param0->unk_10 = sub_0203F28C(param0->unk_0C);
    param0->unk_14 = param1;
}

static int sub_02067C54 (const UnkStruct_02061AB4 * param0)
{
    int v0 = sub_02062950(param0);

    switch (v0) {
    case 0x4:
    case 0x5:
    case 0x6:
    case 0x7:
    case 0x8:
        v0 = 0x1;
        break;
    }

    return v0;
}

static int sub_02067C80 (const UnkStruct_02061AB4 * param0, UnkStruct_0205E884 * param1, int * param2)
{
    int v0, v1, v2, v3, v4, v5;

    v0 = sub_02067C54(param0);

    if (v0 == 0x1) {
        v3 = sub_0205EABC(param1);
        v4 = sub_0205EAC8(param1);
        v2 = sub_0206298C(param0);
        v1 = sub_020629D8(param0, 0);
        v5 = sub_02067DA8(param0, v2, v1, v3, v4, 0);

        if (v5 != -1) {
            if (sub_02067E74(param0, v2, v5) == 0) {
                *param2 = v2;
                return v5;
            }
        }

        return(-1);
    }

    if (v0 == 0x2) {
        v3 = sub_0205EABC(param1);
        v4 = sub_0205EAC8(param1);
        v1 = sub_020629D8(param0, 0);
        v2 = 0;

        do {
            v5 = sub_02067DA8(param0, v2, v1, v3, v4, 0);

            if (v5 != -1) {
                if (sub_02067E74(param0, v2, v5) == 0) {
                    *param2 = v2;
                    return v5;
                }
            }

            v2++;
        } while (v2 < 4);

        return(-1);
    }

    return(-1);
}

int sub_02067D58 (const UnkStruct_02061AB4 * param0, UnkStruct_0205E884 * param1, int param2, int param3)
{
    int v0 = sub_0205EABC(param1);
    int v1 = sub_0205EAC8(param1);
    int v2 = sub_02067DA8(param0, param2, param3, v0, v1, 0);

    if (v2 != -1) {
        if (sub_02067E74(param0, param2, v2) == 1) {
            v2 = -1;
        }
    }

    return v2;
}

static int sub_02067DA8 (const UnkStruct_02061AB4 * param0, int param1, int param2, int param3, int param4, int param5)
{
    return Unk_020EF6C0[param1](param0, param2, param3, param4, param5);
}

static int sub_02067DC4 (const UnkStruct_02061AB4 * param0, int param1, int param2, int param3, int param4)
{
    int v0, v1;

    v0 = sub_02063020(param0);

    if (v0 == param2) {
        v1 = sub_02063040(param0);

        if ((param3 < v1) && (param3 >= (v1 - param1))) {
            return v1 - param3;
        }
    }

    return(-1);
}

static int sub_02067DF0 (const UnkStruct_02061AB4 * param0, int param1, int param2, int param3, int param4)
{
    int v0, v1;

    v0 = sub_02063020(param0);

    if (v0 == param2) {
        v1 = sub_02063040(param0);

        if ((param3 > v1) && (param3 <= (v1 + param1))) {
            return param3 - v1;
        }
    }

    return(-1);
}

static int sub_02067E1C (const UnkStruct_02061AB4 * param0, int param1, int param2, int param3, int param4)
{
    int v0, v1;

    v1 = sub_02063040(param0);

    if (v1 == param3) {
        v0 = sub_02063020(param0);

        if ((param2 < v0) && (param2 >= (v0 - param1))) {
            return v0 - param2;
        }
    }

    return(-1);
}

static int sub_02067E48 (const UnkStruct_02061AB4 * param0, int param1, int param2, int param3, int param4)
{
    int v0, v1;

    v1 = sub_02063040(param0);

    if (v1 == param3) {
        v0 = sub_02063020(param0);

        if ((param2 > v0) && (param2 <= (v0 + param1))) {
            return param2 - v0;
        }
    }

    return(-1);
}

static int(*const Unk_020EF6C0[])(const UnkStruct_02061AB4 *, int, int, int, int) = {
    sub_02067DC4,
    sub_02067DF0,
    sub_02067E1C,
    sub_02067E48
};

static int sub_02067E74 (const UnkStruct_02061AB4 * param0, int param1, int param2)
{
    int v0, v1, v2, v3;
    u32 v4;

    if (param2 == 0) {
        return 1;
    }

    v1 = sub_02063020(param0);
    v2 = sub_02063040(param0);
    v3 = sub_02063030(param0);
    v1 += sub_0206419C(param1);
    v2 += sub_020641A8(param1);

    for (v0 = 0; v0 < (param2 - 1); v0++) {
        v4 = sub_02063E94(param0, v1, v3, v2, param1);
        v4 &= ~(1 << 0);

        if (v4) {
            return 1;
        }

        v1 += sub_0206419C(param1);
        v2 += sub_020641A8(param1);
    }

    v4 = sub_02063E94(param0, v1, v3, v2, param1);
    v4 &= ~(1 << 0);

    if (v4 == (1 << 2)) {
        return 0;
    }

    return 1;
}

static int sub_02067F14 (UnkStruct_02061AB4 * param0)
{
    int v0;

    v0 = sub_02062960(param0);
    return sub_0203F254(v0);
}

int sub_02067F24 (UnkStruct_02061AB4 * param0)
{
    return sub_02067F14(param0);
}

static UnkStruct_02061AB4 * sub_02067F2C (UnkStruct_0203CDB0 * param0, UnkStruct_02061830 * param1, UnkStruct_02061AB4 * param2, int param3)
{
    int v0;
    UnkStruct_02061AB4 * v1;

    v0 = 0;

    while (sub_020625B0(param1, &v1, &v0, (1 << 0))) {
        if (v1 != param2) {
            int v2 = sub_02067C54(v1);

            if ((v2 == 0x1) || (v2 == 0x2)) {
                if (param3 == sub_02067F14(v1)) {
                    return v1;
                }
            }
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

int sub_02067F88 (UnkStruct_0203CDB0 * param0, UnkStruct_02061AB4 * param1)
{
    int v0 = sub_02067C54(param1);

    if ((v0 == 0x1) || (v0 == 0x2)) {
        if (sub_0203F2A0(param0, sub_02067F14(param1)) == 0) {
            return 1;
        }
    }

    return 0;
}

UnkStruct_0201CD38 * sub_02067FB8 (UnkStruct_0203CDB0 * param0, UnkStruct_02061AB4 * param1, UnkStruct_0205E884 * param2, int param3, int param4, int param5, int param6, int param7)
{
    return sub_02067FF0(param0, param1, param2, param3, param4, param5, param6, param7);
}

int sub_02067FD4 (UnkStruct_0201CD38 * param0)
{
    GF_ASSERT(param0 != NULL);
    return sub_02068048(param0);
}

void sub_02067FE8 (UnkStruct_0201CD38 * param0)
{
    sub_02068054(param0);
}

static UnkStruct_0201CD38 * sub_02067FF0 (UnkStruct_0203CDB0 * param0, UnkStruct_02061AB4 * param1, UnkStruct_0205E884 * param2, int param3, int param4, int param5, int param6, int param7)
{
    UnkStruct_0201CD38 * v0;
    UnkStruct_020EF6D0 * v1;

    v1 = AllocFromHeapAtEnd(4, (sizeof(UnkStruct_020EF6D0)));
    GF_ASSERT(v1 != NULL);

    memset(v1, 0, (sizeof(UnkStruct_020EF6D0)));

    v1->unk_08 = param3;
    v1->unk_0C = param4;
    v1->unk_10 = param5;
    v1->unk_14 = param6;
    v1->unk_18 = param7;
    v1->unk_2C = param0;
    v1->unk_24 = param1;
    v1->unk_28 = param2;

    v0 = sub_0200D9E8(sub_0206806C, v1, 0xff);
    GF_ASSERT(v0 != NULL);

    return v0;
}

static int sub_02068048 (UnkStruct_0201CD38 * param0)
{
    UnkStruct_020EF6D0 * v0;

    v0 = sub_0201CED0(param0);
    return v0->unk_04;
}

static void sub_02068054 (UnkStruct_0201CD38 * param0)
{
    UnkStruct_020EF6D0 * v0;

    v0 = sub_0201CED0(param0);

    FreeToHeapExplicit(4, v0);
    sub_0200DA58(param0);
}

static void sub_0206806C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_020EF6D0 * v0;

    v0 = param1;

    while (Unk_020EF6D0[v0->unk_00](v0) == 1) {
        (void)0;
    }
}

static int sub_02068088 (UnkStruct_020EF6D0 * param0)
{
    UnkStruct_02061AB4 * v0 = param0->unk_24;

    if (sub_02062D1C(v0) == 1) {
        sub_02062DDC(v0);
    }

    param0->unk_00 = 1;
    return 1;
}

static int sub_020680A4 (UnkStruct_020EF6D0 * param0)
{
    UnkStruct_02061AB4 * v0 = param0->unk_24;

    if (sub_02062D1C(v0) == 1) {
        return 0;
    }

    ov5_021ECDFC(param0->unk_24, param0->unk_08);
    sub_020628BC(v0, (1 << 6));

    param0->unk_00 = 2;
    return 1;
}

static int sub_020680D0 (UnkStruct_020EF6D0 * param0)
{
    UnkStruct_02061AB4 * v0 = sub_0205EB3C(param0->unk_28);

    if (sub_02065684(v0) == 0) {
        return 0;
    }

    {
        u32 v1 = sub_02062948(param0->unk_24);

        switch (v1) {
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
            param0->unk_00 = 7;
            return 1;
        }
    }

    param0->unk_00 = 3;
    return 1;
}

static int sub_02068118 (UnkStruct_020EF6D0 * param0)
{
    int v0;

    if (sub_020655F4(param0->unk_24) == 0) {
        return 0;
    }

    GF_ASSERT(param0->unk_08 != -1);

    v0 = sub_02065838(param0->unk_08, 0x0);
    sub_02065638(param0->unk_24, v0);
    param0->unk_00 = 4;

    return 0;
}

static int sub_02068150 (UnkStruct_020EF6D0 * param0)
{
    if (sub_02065684(param0->unk_24) == 0) {
        return 0;
    }

    param0->unk_00 = 5;
    return 1;
}

static int sub_0206816C (UnkStruct_020EF6D0 * param0)
{
    param0->unk_20 = ov5_021F5D8C(param0->unk_24, 0, 0, 0);
    param0->unk_00 = 6;

    return 0;
}

static int sub_02068188 (UnkStruct_020EF6D0 * param0)
{
    if (ov5_021F5C4C(param0->unk_20) == 1) {
        sub_0207136C(param0->unk_20);
        param0->unk_00 = 9;
    }

    return 0;
}

static int sub_020681A4 (UnkStruct_020EF6D0 * param0)
{
    sub_02065638(param0->unk_24, 0x65);
    param0->unk_00 = 8;

    return 0;
}

static int sub_020681B8 (UnkStruct_020EF6D0 * param0)
{
    if (sub_02065684(param0->unk_24) == 1) {
        param0->unk_00 = 9;
    }

    return 0;
}

static int sub_020681D0 (UnkStruct_020EF6D0 * param0)
{
    param0->unk_1C++;

    if (param0->unk_1C >= 30) {
        param0->unk_1C = 0;
        param0->unk_00 = 10;
    }

    return 0;
}

static int sub_020681E8 (UnkStruct_020EF6D0 * param0)
{
    if (param0->unk_0C <= 1) {
        param0->unk_00 = 13;
        return 1;
    }

    param0->unk_00 = 11;
    return 1;
}

static int sub_02068200 (UnkStruct_020EF6D0 * param0)
{
    int v0;

    if (sub_020655F4(param0->unk_24) == 1) {
        v0 = sub_02065838(param0->unk_08, 0xc);
        sub_02065638(param0->unk_24, v0);
        param0->unk_00 = 12;
    }

    return 0;
}

static int sub_02068228 (UnkStruct_020EF6D0 * param0)
{
    if (sub_02065684(param0->unk_24) == 0) {
        return 0;
    }

    param0->unk_0C--;
    param0->unk_00 = 10;

    return 1;
}

static int sub_02068248 (UnkStruct_020EF6D0 * param0)
{
    param0->unk_1C++;

    if (param0->unk_1C < 8) {
        return 0;
    }

    param0->unk_1C = 0;
    param0->unk_00 = 14;

    return 1;
}

static int sub_02068264 (UnkStruct_020EF6D0 * param0)
{
    int v0, v1;
    UnkStruct_02061AB4 * v2;

    v2 = sub_0205EB3C(param0->unk_28);
    v1 = sub_02064488(sub_02063020(v2), sub_02063040(v2), sub_02063020(param0->unk_24), sub_02063040(param0->unk_24));

    if ((sub_0205EA78(param0->unk_28) != v1) && ((param0->unk_18 == 0) || (param0->unk_14 == 2))) {
        if (sub_020655F4(v2) == 1) {
            sub_020628C4(v2, (1 << 7));
            v0 = sub_02065838(v1, 0x0);
            sub_02065638(v2, v0);
            param0->unk_00 = 15;
        }
    } else {
        param0->unk_00 = 16;
    }

    return 0;
}

static int sub_020682E0 (UnkStruct_020EF6D0 * param0)
{
    UnkStruct_02061AB4 * v0;

    v0 = sub_0205EB3C(param0->unk_28);

    if (sub_02065684(v0) == 0) {
        return 0;
    }

    sub_020656AC(v0);
    param0->unk_00 = 16;

    return 1;
}

static int sub_02068308 (UnkStruct_020EF6D0 * param0)
{
    sub_020656AC(param0->unk_24);

    if ((sub_02071CB4(param0->unk_2C, 2) == 0) || (ov8_0224C5DC(param0->unk_2C, param0->unk_24) == 0)) {
        sub_020633A8(param0->unk_24, 0x0);
    }

    param0->unk_00 = 17;
    return 1;
}

static int sub_0206833C (UnkStruct_020EF6D0 * param0)
{
    param0->unk_04 = 1;
    return 0;
}

static int(*const Unk_020EF6D0[])(UnkStruct_020EF6D0 *) = {
    sub_02068088,
    sub_020680A4,
    sub_020680D0,
    sub_02068118,
    sub_02068150,
    sub_0206816C,
    sub_02068188,
    sub_020681A4,
    sub_020681B8,
    sub_020681D0,
    sub_020681E8,
    sub_02068200,
    sub_02068228,
    sub_02068248,
    sub_02068264,
    sub_020682E0,
    sub_02068308,
    sub_0206833C
};
