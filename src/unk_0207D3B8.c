#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0207CDEC.h"

#include "unk_02017E74.h"
#include "unk_020244AC.h"
#include "unk_0207CB08.h"
#include "unk_0207CDEC.h"
#include "unk_0207D3B8.h"

typedef struct UnkStruct_0207D3C0_t {
    UnkStruct_0207CDEC unk_00[165];
    UnkStruct_0207CDEC unk_294[50];
    UnkStruct_0207CDEC unk_35C[100];
    UnkStruct_0207CDEC unk_4EC[12];
    UnkStruct_0207CDEC unk_51C[40];
    UnkStruct_0207CDEC unk_5BC[64];
    UnkStruct_0207CDEC unk_6BC[15];
    UnkStruct_0207CDEC unk_6F8[30];
    u32 unk_770;
} UnkStruct_0207D3C0;

typedef struct {
    u8 unk_00[8];
    u8 unk_08[8];
    u16 unk_10;
    u16 unk_12;
} UnkStruct_0207D99C_sub1;

typedef struct {
    u8 unk_00[5];
    u8 unk_05[5];
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_0207D99C_sub2;

typedef struct UnkStruct_0207D99C_t {
    UnkStruct_0207D99C_sub1 unk_00;
    UnkStruct_0207D99C_sub2 unk_14;
} UnkStruct_0207D99C;

static u32 sub_0207D40C(UnkStruct_0207D3C0 * param0, u16 param1, UnkStruct_0207CDEC ** param2, u32 * param3, u32 param4);

int sub_0207D3B8 (void)
{
    return sizeof(UnkStruct_0207D3C0);
}

UnkStruct_0207D3C0 * sub_0207D3C0 (int param0)
{
    UnkStruct_0207D3C0 * v0;

    v0 = sub_02018144(param0, sizeof(UnkStruct_0207D3C0));
    sub_0207D3D8(v0);

    return v0;
}

void sub_0207D3D8 (UnkStruct_0207D3C0 * param0)
{
    MI_CpuClear16(param0, sizeof(UnkStruct_0207D3C0));
}

void sub_0207D3EC (const UnkStruct_0207D3C0 * param0, UnkStruct_0207D3C0 * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(UnkStruct_0207D3C0));
}

u32 sub_0207D3FC (const UnkStruct_0207D3C0 * param0)
{
    return param0->unk_770;
}

void sub_0207D404 (UnkStruct_0207D3C0 * param0, u32 param1)
{
    param0->unk_770 = param1;
}

static u32 sub_0207D40C (UnkStruct_0207D3C0 * param0, u16 param1, UnkStruct_0207CDEC ** param2, u32 * param3, u32 param4)
{
    u32 v0 = sub_0207CFF0(param1, 5, param4);

    switch (v0) {
    case 7:
        *param2 = param0->unk_294;
        *param3 = 50;
        break;
    case 0:
        *param2 = param0->unk_00;
        *param3 = 165;
        break;
    case 4:
        *param2 = param0->unk_5BC;
        *param3 = 64;
        break;
    case 1:
        *param2 = param0->unk_51C;
        *param3 = 40;
        break;
    case 2:
        *param2 = param0->unk_6BC;
        *param3 = 15;
        break;
    case 6:
        *param2 = param0->unk_6F8;
        *param3 = 30;
        break;
    case 5:
        *param2 = param0->unk_4EC;
        *param3 = 12;
        break;
    case 3:
        *param2 = param0->unk_35C;
        *param3 = 100;
        break;
    }

    return v0;
}

static UnkStruct_0207CDEC * sub_0207D4B4 (UnkStruct_0207CDEC * param0, u32 param1, u16 param2, u16 param3, u16 param4)
{
    u32 v0;
    u32 v1 = 0xffffffff;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00 == param2) {
            if ((param0[v0].unk_02 + param3) > param4) {
                return NULL;
            }

            return &param0[v0];
        }

        if (v1 == 0xffffffff) {
            if ((param0[v0].unk_00 == 0) && (param0[v0].unk_02 == 0)) {
                v1 = v0;
            }
        }
    }

    if (v1 == 0xffffffff) {
        return NULL;
    }

    return &param0[v1];
}

static UnkStruct_0207CDEC * sub_0207D518 (UnkStruct_0207D3C0 * param0, u16 param1, u16 param2, u32 param3)
{
    UnkStruct_0207CDEC * v0;
    u32 v1;
    u32 v2;

    v2 = sub_0207D40C(param0, param1, &v0, &v1, param3);

    if (v2 == 3) {
        return sub_0207D4B4(v0, v1, param1, param2, 99);
    }

    return sub_0207D4B4(v0, v1, param1, param2, 999);
}

BOOL sub_0207D55C (UnkStruct_0207D3C0 * param0, u16 param1, u16 param2, u32 param3)
{
    if (sub_0207D518(param0, param1, param2, param3) == NULL) {
        return 0;
    }

    return 1;
}

BOOL sub_0207D570 (UnkStruct_0207D3C0 * param0, u16 param1, u16 param2, u32 param3)
{
    UnkStruct_0207CDEC * v0 = sub_0207D518(param0, param1, param2, param3);

    if (v0 == NULL) {
        return 0;
    }

    v0->unk_00 = param1;
    v0->unk_02 += param2;

    {
        u32 v1;
        u32 v2;

        v1 = sub_0207D40C(param0, param1, &v0, &v2, param3);

        if ((v1 == 4) || (v1 == 3)) {
            sub_0207D7CC(v0, v2);
        }
    }

    return 1;
}

static UnkStruct_0207CDEC * sub_0207D5B8 (UnkStruct_0207CDEC * param0, u32 param1, u16 param2, u16 param3)
{
    u32 v0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00 == param2) {
            if (param0[v0].unk_02 >= param3) {
                return &param0[v0];
            } else {
                return NULL;
            }
        }
    }

    return NULL;
}

static UnkStruct_0207CDEC * sub_0207D5E8 (UnkStruct_0207D3C0 * param0, u16 param1, u16 param2, u32 param3)
{
    UnkStruct_0207CDEC * v0;
    u32 v1;

    sub_0207D40C(param0, param1, &v0, &v1, param3);
    return sub_0207D5B8(v0, v1, param1, param2);
}

BOOL sub_0207D60C (UnkStruct_0207D3C0 * param0, u16 param1, u16 param2, u32 param3)
{
    UnkStruct_0207CDEC * v0 = sub_0207D5E8(param0, param1, param2, param3);

    if (v0 == NULL) {
        return 0;
    }

    v0->unk_02 -= param2;

    if (v0->unk_02 == 0) {
        v0->unk_00 = 0;
    }

    {
        u32 v1;

        sub_0207D40C(param0, param1, &v0, &v1, param3);
        sub_0207D780(v0, v1);
    }

    return 1;
}

BOOL sub_0207D658 (UnkStruct_0207CDEC * param0, u32 param1, u16 param2, u16 param3, u32 param4)
{
    UnkStruct_0207CDEC * v0 = sub_0207D5B8(param0, param1, param2, param3);

    if (v0 == NULL) {
        return 0;
    }

    v0->unk_02 -= param3;

    if (v0->unk_02 == 0) {
        v0->unk_00 = 0;
    }

    sub_0207D780(param0, param1);

    return 1;
}

BOOL sub_0207D688 (UnkStruct_0207D3C0 * param0, u16 param1, u16 param2, u32 param3)
{
    if (sub_0207D5E8(param0, param1, param2, param3) == NULL) {
        return 0;
    }

    return 1;
}

BOOL sub_0207D69C (UnkStruct_0207D3C0 * param0, u32 param1)
{
    UnkStruct_0207CDEC * v0;
    u32 v1;
    u32 v2;

    switch (param1) {
    case 7:
        v0 = param0->unk_294;
        v1 = 50;
        break;
    case 0:
        v0 = param0->unk_00;
        v1 = 165;
        break;
    case 4:
        v0 = param0->unk_5BC;
        v1 = 64;
        break;
    case 1:
        v0 = param0->unk_51C;
        v1 = 40;
        break;
    case 2:
        v0 = param0->unk_6BC;
        v1 = 15;
        break;
    case 6:
        v0 = param0->unk_6F8;
        v1 = 30;
        break;
    case 5:
        v0 = param0->unk_4EC;
        v1 = 12;
        break;
    case 3:
        v0 = param0->unk_35C;
        v1 = 100;
        break;
    default:
        return 0;
    }

    for (v2 = 0; v2 < v1; v2++) {
        if (v0[v2].unk_00 != 0) {
            return 1;
        }
    }

    return 0;
}

u16 sub_0207D730 (UnkStruct_0207D3C0 * param0, u16 param1, u32 param2)
{
    UnkStruct_0207CDEC * v0 = sub_0207D5E8(param0, param1, 1, param2);

    if (v0 == NULL) {
        return 0;
    }

    return v0->unk_02;
}

u16 sub_0207D748 (UnkStruct_0207CDEC * param0, u32 param1, u16 param2, u32 param3)
{
    UnkStruct_0207CDEC * v0 = sub_0207D5B8(param0, param1, param2, 1);

    if (v0 == NULL) {
        return 0;
    }

    return v0->unk_02;
}

static void sub_0207D75C (UnkStruct_0207CDEC * param0, UnkStruct_0207CDEC * param1)
{
    UnkStruct_0207CDEC v0;

    v0 = *param0;

    *param0 = *param1;
    *param1 = v0;
}

void sub_0207D780 (UnkStruct_0207CDEC * param0, const u32 param1)
{
    u32 v0, v1;

    for (v0 = 0; v0 < param1 - 1; v0++) {
        for (v1 = v0 + 1; v1 < param1; v1++) {
            if (param0[v0].unk_02 == 0) {
                sub_0207D75C(&param0[v0], &param0[v1]);
            }
        }
    }
}

void sub_0207D7CC (UnkStruct_0207CDEC * param0, const u32 param1)
{
    u32 v0, v1;

    for (v0 = 0; v0 < param1 - 1; v0++) {
        for (v1 = v0 + 1; v1 < param1; v1++) {
            if ((param0[v0].unk_02 == 0) || ((param0[v1].unk_02 != 0) && (param0[v0].unk_00 > param0[v1].unk_00))) {
                sub_0207D75C(&param0[v0], &param0[v1]);
            }
        }
    }
}

void * sub_0207D824 (UnkStruct_0207D3C0 * param0, const u8 * param1, u32 param2)
{
    UnkStruct_0207CB08 * v0;
    int v1;

    v0 = sub_0207CB08(param2);

    for (v1 = 0; param1[v1] != 0xff; v1++) {
        switch (param1[v1]) {
        case 7:
            sub_0207CB48(v0, param0->unk_294, 7, v1);
            break;
        case 0:
            sub_0207CB48(v0, param0->unk_00, 0, v1);
            break;
        case 4:
            sub_0207CB48(v0, param0->unk_5BC, 4, v1);
            break;
        case 1:
            sub_0207CB48(v0, param0->unk_51C, 1, v1);
            break;
        case 2:
            sub_0207CB48(v0, param0->unk_6BC, 2, v1);
            break;
        case 6:
            sub_0207CB48(v0, param0->unk_6F8, 6, v1);
            break;
        case 5:
            sub_0207CB48(v0, param0->unk_4EC, 5, v1);
            break;
        case 3:
            sub_0207CB48(v0, param0->unk_35C, 3, v1);
            break;
        }
    }

    return v0;
}

UnkStruct_0207CDEC * sub_0207D910 (UnkStruct_0207D3C0 * param0, u16 param1, u16 param2)
{
    UnkStruct_0207CDEC * v0;
    u16 v1;

    switch (param1) {
    case 7:
        v0 = param0->unk_294;
        v1 = 50;
        break;
    case 0:
        v0 = param0->unk_00;
        v1 = 165;
        break;
    case 4:
        v0 = param0->unk_5BC;
        v1 = 64;
        break;
    case 1:
        v0 = param0->unk_51C;
        v1 = 40;
        break;
    case 2:
        v0 = param0->unk_6BC;
        v1 = 15;
        break;
    case 6:
        v0 = param0->unk_6F8;
        v1 = 30;
        break;
    case 5:
        v0 = param0->unk_4EC;
        v1 = 12;
        break;
    case 3:
        v0 = param0->unk_35C;
        v1 = 100;
        break;
    }

    if (param2 >= v1) {
        return NULL;
    }

    return &v0[param2];
}

UnkStruct_0207D3C0 * sub_0207D990 (UnkStruct_021C0794 * param0)
{
    UnkStruct_0207D3C0 * v0;

    v0 = (UnkStruct_0207D3C0 *)sub_020245BC(param0, 3);
    return v0;
}

UnkStruct_0207D99C * sub_0207D99C (u32 param0)
{
    UnkStruct_0207D99C * v0;

    v0 = sub_02018144(param0, sizeof(UnkStruct_0207D99C));
    MI_CpuClear16(v0, sizeof(UnkStruct_0207D99C));

    return v0;
}

void sub_0207D9B4 (UnkStruct_0207D99C * param0, u32 param1, u8 * param2, u8 * param3)
{
    *param2 = param0->unk_00.unk_08[param1];
    *param3 = param0->unk_00.unk_00[param1];
}

u16 sub_0207D9C4 (UnkStruct_0207D99C * param0)
{
    return param0->unk_00.unk_10;
}

void sub_0207D9C8 (UnkStruct_0207D99C * param0, u32 param1, u8 param2, u8 param3)
{
    param0->unk_00.unk_08[param1] = param2;
    param0->unk_00.unk_00[param1] = param3;
}

void sub_0207D9D4 (UnkStruct_0207D99C * param0, u16 param1)
{
    param0->unk_00.unk_10 = param1;
}

void sub_0207D9D8 (UnkStruct_0207D99C * param0, u32 param1, u8 * param2, u8 * param3)
{
    *param2 = param0->unk_14.unk_05[param1];
    *param3 = param0->unk_14.unk_00[param1];
}

u16 sub_0207D9E4 (UnkStruct_0207D99C * param0)
{
    return param0->unk_14.unk_0A;
}

u16 sub_0207D9E8 (UnkStruct_0207D99C * param0)
{
    return param0->unk_14.unk_0C;
}

u16 sub_0207D9EC (UnkStruct_0207D99C * param0)
{
    return param0->unk_14.unk_0E;
}

void sub_0207D9F0 (UnkStruct_0207D99C * param0, u32 param1, u8 param2, u8 param3)
{
    param0->unk_14.unk_05[param1] = param2;
    param0->unk_14.unk_00[param1] = param3;
}

void sub_0207D9F8 (UnkStruct_0207D99C * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0207D9F0(param0, v0, 0, 0);
    }

    sub_0207DA24(param0, 0);
}

void sub_0207DA1C (UnkStruct_0207D99C * param0, u16 param1, u16 param2)
{
    param0->unk_14.unk_0A = param1;
    param0->unk_14.unk_0C = param2;
}

void sub_0207DA24 (UnkStruct_0207D99C * param0, u16 param1)
{
    param0->unk_14.unk_0E = param1;
}
