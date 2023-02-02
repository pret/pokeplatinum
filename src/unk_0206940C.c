#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_020508D4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0201CFEC.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_020698E4.h"

#include "unk_02005474.h"
#include "heap.h"
#include "unk_0201CED8.h"
#include "unk_0202D7A8.h"
#include "unk_02039C80.h"
#include "unk_0203E880.h"
#include "unk_020508D4.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_0205DAC8.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_0206940C.h"
#include "unk_020711EC.h"
#include "unk_0207D3B8.h"
#include "overlay005/ov5_021F2D20.h"
#include "overlay006/ov6_022430C4.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    BOOL unk_0C;
    BOOL unk_10;
    BOOL unk_14;
    UnkStruct_ov101_021D5D90 * unk_18;
    VecFx32 unk_1C;
} UnkStruct_0206979C;

typedef struct UnkStruct_0206942C_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    BOOL unk_10;
    BOOL unk_14;
    BOOL unk_18;
    UnkStruct_0206979C unk_1C[4];
    UnkStruct_0201CFEC unk_BC;
    u8 unk_D0;
} UnkStruct_0206942C;

static BOOL sub_02069820(UnkStruct_0203CDB0 * param0, const fx32 param1, const int param2, const int param3, const u8 param4, const u8 param5, UnkStruct_0206979C * param6);
static BOOL sub_020698AC(const UnkStruct_0206942C * param0, const int param1, const int param2, u8 * param3);
static void sub_020698E4(UnkStruct_0203CDB0 * param0, UnkStruct_0206942C * param1);
static u8 sub_0206994C(UnkStruct_0203CDB0 * param0);
static BOOL sub_02069994(const u8 param0, const int param1);
static BOOL sub_02069B00(const int param0);
static void sub_02069BCC(int * param0);

UnkStruct_0206942C * sub_0206940C (const int param0)
{
    UnkStruct_0206942C * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0206942C));

    sub_0201CFEC(FX32_ONE * 16, FX32_ONE * 8, FX32_ONE * 16, &v0->unk_BC);
    return v0;
}

void sub_0206942C (UnkStruct_0206942C * param0)
{
    Heap_FreeToHeap(param0);
}

void sub_02069434 (UnkStruct_0206942C * param0)
{
    u8 v0;

    param0->unk_04 = 0;
    param0->unk_00 = 0;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
    param0->unk_D0 = 0;
    param0->unk_14 = 1;
    param0->unk_18 = 0;

    MI_CpuClear8(&(param0->unk_1C[0]), sizeof(UnkStruct_0206979C) * 4);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1C[v0].unk_0C = 0;
    }
}

BOOL sub_02069474 (UnkStruct_0203CDB0 * param0, const int param1, const int param2, UnkStruct_0206942C * param3)
{
    u8 v0;
    u8 v1, v2;
    u8 v3;
    u8 v4;
    int v5, v6;
    u8 v7;
    const VecFx32 * v8;
    u8 v9[4] = {
        32, 24, 16, 8
    };

    v8 = sub_0205EAFC(param0->unk_3C);

    v7 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        BOOL v10;

        v3 = inline_020564D0(v9[v0]);

        v1 = 9 - (v0 * 2);

        v2 = 9 - (v0 * 2);

        v4 = v3 / v1;

        if (v4 == 0) {
            v5 = v0 + v3 % v1;
            v6 = v0;
        } else if (v4 == 1) {
            v5 = v0 + v3 % v1;
            v6 = v0 + v2 - 1;
        } else {
            GF_ASSERT(v3 >= (v1 * 2));
            v4 = v3 - (v1 * 2);

            v6 = v0 + (v4 / 2) + 1;

            if (v4 % 2 == 0) {
                v5 = v0;
            } else {
                v5 = v0 + v1 - 1;
            }
        }

        v10 = sub_02069820(param0, v8->y, param1, param2, v5, v6, &param3->unk_1C[v0]);

        if (v10) {
            v7++;
        }
    }

    if (v7 == 0) {
        sub_02069434(param3);

        sub_02055554(param0, sub_02055428(param0, param0->unk_1C->unk_00), 1);
    } else {
        param3->unk_10 = 1;
    }

    return param3->unk_10;
}

void sub_020695C8 (UnkStruct_0203CDB0 * param0, const int param1, UnkStruct_0206942C * param2)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param2->unk_1C[v0].unk_0C) {
            param2->unk_1C[v0].unk_10 = sub_02069994(v0, param1);

            if (!param2->unk_1C[v0].unk_10) {
                if (inline_020564D0(100) < 50) {
                    param2->unk_1C[v0].unk_08 = 0;
                } else {
                    param2->unk_1C[v0].unk_08 = 1;
                }

                param2->unk_1C[v0].unk_14 = 0;
            } else {
                param2->unk_1C[v0].unk_08 = param2->unk_00;

                param2->unk_1C[v0].unk_14 = sub_02069B00(param0->unk_94->unk_04);
            }
        }
    }
}

void sub_02069638 (UnkStruct_0203CDB0 * param0, UnkStruct_0206942C * param1)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->unk_1C[v0].unk_0C) {
            int v1 = param1->unk_1C[v0].unk_00;
            int v2 = param1->unk_1C[v0].unk_04;

            if (param1->unk_1C[v0].unk_14) {
                param1->unk_1C[v0].unk_18 = ov5_021F3154(param0, v1, v2, 2);
            } else {
                if (param1->unk_1C[v0].unk_08 == 0) {
                    param1->unk_1C[v0].unk_18 = ov5_021F3154(param0, v1, v2, 0);
                } else {
                    param1->unk_1C[v0].unk_18 = ov5_021F3154(param0, v1, v2, 1);
                }
            }
        } else {
            param1->unk_1C[v0].unk_18 = NULL;
        }
    }
}

BOOL sub_02069690 (UnkStruct_0206942C * param0)
{
    u8 v0;
    u8 v1;

    v0 = 0;

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_1C[v1].unk_18 != NULL) {
            if (ov5_021F31A8(param0->unk_1C[v1].unk_18)) {
                sub_0207136C(param0->unk_1C[v1].unk_18);
                param0->unk_1C[v1].unk_18 = NULL;
                v0++;
            }
        } else {
            v0++;
        }
    }

    if (v0 >= 4) {
        return 1;
    }

    return 0;
}

BOOL sub_020696DC (const int param0, const int param1, UnkStruct_0203CDB0 * param2, UnkStruct_0206942C * param3, int * param4, BOOL * param5, BOOL * param6)
{
    u8 v0;
    BOOL v1;
    int v2;

    *param5 = 0;
    *param6 = 0;

    if (!sub_020698AC(param3, param0, param1, &v0)) {
        return 0;
    }

    param3->unk_18 = 1;

    v1 = param3->unk_1C[v0].unk_10;
    v2 = param3->unk_1C[v0].unk_08;

    if (param3->unk_14 == 0) {
        if (v1) {
            sub_02069BCC(&(param3->unk_04));

            *param4 = v2;
            *param5 = 1;

            sub_020698E4(param2, param3);

            (*param6) = param3->unk_1C[v0].unk_14;

            return 1;
        } else {
            *param4 = v2;
        }
    } else {
        *param4 = v2;
        param3->unk_14 = 0;

        param3->unk_D0 = sub_0206994C(param2);
    }

    param3->unk_00 = *param4;

    return 1;
}

void sub_02069774 (UnkStruct_0206942C * param0, const int param1, const int param2)
{
    GF_ASSERT(param1 != 0);
    param0->unk_08 = param1;
    param0->unk_0C = param2;
}

void sub_0206978C (UnkStruct_0206942C * param0, int * param1, int * param2)
{
    (*param1) = param0->unk_08;
    (*param2) = param0->unk_0C;
}

const BOOL sub_02069798 (const UnkStruct_0206942C * param0)
{
    return param0->unk_18;
}

void sub_0206979C (UnkStruct_0203CDB0 * param0)
{
    BOOL v0;
    UnkStruct_0206979C * v1;
    int v2;

    if ((!param0->unk_94->unk_10) || (param0->unk_10 != NULL)) {
        return;
    }

    for (v2 = 0; v2 < 4; v2++) {
        v1 = &(param0->unk_94->unk_1C[v2]);
        v0 = sub_0201CF7C(&(v1->unk_1C), &(param0->unk_94->unk_BC));

        if ((v1->unk_0C) && (!v0)) {
            v1->unk_0C = 0;
        }
    }

    {
        int v3;

        v3 = 0;

        for (v2 = 0; v2 < 4; v2++) {
            v1 = &(param0->unk_94->unk_1C[v2]);

            if (v1->unk_0C == 0) {
                v3++;
            }
        }

        if (v3 == 4) {
            sub_02069434(param0->unk_94);

            sub_02055554(param0, sub_02055428(param0, param0->unk_1C->unk_00), 1);
        }
    }
}

BOOL sub_0206981C (const UnkStruct_0206942C * param0)
{
    return param0->unk_10;
}

static BOOL sub_02069820 (UnkStruct_0203CDB0 * param0, const fx32 param1, const int param2, const int param3, const u8 param4, const u8 param5, UnkStruct_0206979C * param6)
{
    int v0, v1;
    u8 v2;

    v0 = (param2 - (9 / 2)) + param4;
    v1 = (param3 - (9 / 2)) + param5;

    param6->unk_00 = v0;
    param6->unk_04 = v1;

    v2 = sub_02054F94(param0, v0, v1);

    if (sub_0205DAC8(v2)) {
        u8 v3;

        param6->unk_1C.x = FX32_ONE * 16 * v0;
        param6->unk_1C.z = FX32_ONE * 16 * v1;
        param6->unk_1C.y = sub_02054FBC(param0, 0, param6->unk_1C.x, param6->unk_1C.z, &v3);

        if (param1 != param6->unk_1C.y) {
            param6->unk_0C = 0;
            return 0;
        }

        {
            int v4;
            int v5, v6;

            v5 = v0 / 32;
            v6 = v1 / 32;
            v4 = sub_02039E30(param0->unk_2C, v5, v6);

            if (param0->unk_1C->unk_00 != v4) {
                param6->unk_0C = 0;
                return 0;
            }
        }

        param6->unk_0C = 1;

        return 1;
    } else {
        param6->unk_0C = 0;
        return 0;
    }
}

static BOOL sub_020698AC (const UnkStruct_0206942C * param0, const int param1, const int param2, u8 * param3)
{
    u8 v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_1C[v0].unk_0C) {
            if ((param0->unk_1C[v0].unk_00 == param1) && (param0->unk_1C[v0].unk_04 == param2)) {
                *param3 = v0;
                return 1;
            }
        }
    }

    return 0;
}

static void sub_020698E4 (UnkStruct_0203CDB0 * param0, UnkStruct_0206942C * param1)
{
    UnkStruct_020698E4 * v0;
    int v1;
    int v2;

    v0 = sub_0202D830(sub_0202D834(param0->unk_0C));
    v1 = v0->unk_00[param1->unk_D0].unk_02;

    if (v1 < param1->unk_04) {
        v0->unk_00[param1->unk_D0].unk_02 = param1->unk_04;
        v0->unk_00[param1->unk_D0].unk_00 = param1->unk_08;

        ov6_02243160(v0);

        if (v0->unk_00[param1->unk_D0].unk_02 <= param1->unk_04) {
            for (v2 = 0; v2 < 3; v2++) {
                if (v0->unk_00[(2 - v2)].unk_02 == param1->unk_04) {
                    param1->unk_D0 = (2 - v2);
                    return;
                }
            }

            GF_ASSERT(0);
        }
    }
}

static u8 sub_0206994C (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020698E4 * v0;
    u8 v1;
    BOOL v2;

    v0 = sub_0202D830(sub_0202D834(param0->unk_0C));

    for (v1 = 0; v1 < 3; v1++) {
        if (v0->unk_00[v1].unk_00 == 0) {
            return v1;
        }
    }

    (v0->unk_00[0].unk_02 < v0->unk_00[1].unk_02) ? (v2 = 1) : (v2 = 0);

    if (v2) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    (v0->unk_00[v1].unk_02 < v0->unk_00[2].unk_02) ? (v2 = 1) : (v2 = 0);

    if (!v2) {
        v1 = 2;
    }

    return v1;
}

static BOOL sub_02069994 (const u8 param0, const int param1)
{
    u8 * v0;
    u8 v1[4] = {88, 68, 48, 28};
    u8 v2[4] = {98, 78, 58, 38};

    if (param1 == 0x1) {
        v0 = v1;
    } else if (param1 == 0x4) {
        v0 = v2;
    }

    if (inline_020564D0(100) < v0[param0]) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_02069A00 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    int * v1 = sub_02050A64(param0);

    switch (*v1) {
    case 0:
    {
        u8 * v2;

        sub_02062C48(v0->unk_38);

        v2 = sub_0202D9C4(sub_0202D834(v0->unk_0C));

        if ((*v2) < 50) {
            sub_0203E8E0(param0, 8970, NULL, NULL);
            *(u16 *)(sub_0203F098(v0, 41)) = 50 - (*v2);
            (*v1) = 4;
        } else {
            int v3, v4;

            (*v2) = 0;

            v3 = sub_0205EABC(v0->unk_3C);
            v4 = sub_0205EAC8(v0->unk_3C);

            sub_02069474(v0, v3, v4, v0->unk_94);

            if (v0->unk_94->unk_10) {
                sub_020695C8(v0, 0x1, v0->unk_94);

                sub_02069638(v0, v0->unk_94);
                (*v1) = 1;
            } else {
                (*v1) = 3;
            }
        }
    }
    break;
    case 1:
        sub_0200549C(1150);
        (*v1) = 2;
        break;
    case 2:
        if (sub_02069690(v0->unk_94)) {
            (*v1) = 4;
        }
        break;
    case 4:
        Heap_FreeToHeap(v1);
        sub_02062C78(v0->unk_38);
        return 1;
        break;
    case 3:
        sub_0203E8E0(param0, 8971, NULL, NULL);
        (*v1) = 4;
        break;
    }

    return 0;
}

static BOOL sub_02069B00 (const int param0)
{
    int v0;

    if (param0 == 0) {
        return 0;
    }

    v0 = 8200 - (param0 * 200);

    if (v0 < 200) {
        v0 = 200;
    }

    if (inline_020564D0(v0) == 0) {
        return 1;
    } else {
        return 0;
    }
}

void sub_02069B74 (UnkStruct_0203CDB0 * param0)
{
    sub_02069BCC(&(param0->unk_94->unk_04));
    sub_020698E4(param0, param0->unk_94);
}

int sub_02069B90 (UnkStruct_0203CDB0 * param0)
{
    return param0->unk_94->unk_04;
}

void sub_02069B98 (UnkStruct_0203CDB0 * param0)
{
    u8 * v0;

    if (sub_0207D688(sub_0207D990(param0->unk_0C), 431, 1, 4) == 1) {
        v0 = sub_0202D9C4(sub_0202D834(param0->unk_0C));

        if ((*v0) < 50) {
            (*v0)++;
        }
    }
}

static void sub_02069BCC (int * param0)
{
    (*param0)++;

    if ((*param0) > 999) {
        (*param0) = 999;
    }
}
