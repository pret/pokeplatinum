#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017248.h"
#include "struct_defs/struct_02017294.h"
#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay070/struct_ov70_02261418.h"
#include "overlay070/funcptr_ov70_02261C60.h"

#include "unk_020068C8.h"
#include "unk_02006E3C.h"
#include "unk_020170BC.h"
#include "unk_02017E74.h"
#include "unk_0201C970.h"
#include "unk_0201D15C.h"
#include "overlay066/ov66_02231428.h"
#include "overlay070/ov70_0225C700.h"
#include "overlay070/ov70_02260B44.h"

typedef struct {
    BOOL unk_00;
    UnkStruct_02017294 unk_04[2];
    u32 unk_F4[5];
    fx32 unk_108[5];
} UnkStruct_ov70_022615E8;

typedef struct {
    UnkStruct_020170F4 unk_00[2];
    UnkStruct_02017248 unk_20[5];
    BOOL unk_84[5];
} UnkStruct_ov70_022615A4;

typedef struct UnkStruct_ov70_02260E8C_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_02017294 unk_04;
    u32 unk_7C[4];
    fx32 unk_8C[4];
    VecFx32 unk_9C;
    VecFx32 unk_A8;
} UnkStruct_ov70_02260E8C;

typedef struct {
    UnkStruct_020170F4 unk_00[2];
    void * unk_20[2][3];
    UnkStruct_02017248 unk_38[2][4];
} UnkStruct_ov70_022618C8;

typedef struct UnkStruct_ov70_022610B8_t {
    u16 unk_00;
    u16 unk_02;
    UnkStruct_02017294 unk_04;
    UnkStruct_02017248 unk_7C[3];
    u8 unk_B8[3];
    u8 unk_BB;
    u8 unk_BC[3];
    u8 unk_BF;
    fx32 unk_C0[3];
    u8 unk_CC;
    u8 unk_CD[3];
    UnkFuncPtr_ov70_02261C60 unk_D0[3];
    fx32 unk_DC;
    u8 unk_E0;
    u8 unk_E1;
    u8 unk_E2;
    u8 unk_E3;
} UnkStruct_ov70_022610B8;

typedef struct {
    UnkStruct_020170F4 unk_00[18];
    void * unk_120[18][3];
} UnkStruct_ov70_02261BB4;

typedef struct UnkStruct_ov70_02260BB8_t {
    UnkStruct_ov70_022615E8 unk_00;
    UnkStruct_ov70_02260E8C * unk_11C;
    UnkStruct_ov70_022610B8 * unk_120;
    u8 unk_124;
    u8 unk_125;
    u8 unk_126;
    u8 unk_127;
    BOOL unk_128;
    UnkStruct_ov70_022615A4 unk_12C;
    UnkStruct_ov70_022618C8 unk_1C4;
    UnkStruct_ov70_02261BB4 unk_29C;
    NNSFndAllocator unk_494;
} UnkStruct_ov70_02260BB8;

static UnkStruct_ov70_02261418 * ov70_022613F4(int param0, int param1, u32 param2);
static void ov70_02261418(UnkStruct_ov70_02261418 * param0);
static void ov70_02261420(UnkStruct_020170F4 * param0, UnkStruct_02006C24 * param1, u32 param2, u32 param3);
static void ov70_0226146C(UnkStruct_020170F4 * param0);
static void ov70_02261474(fx32 * param0, const UnkStruct_02017248 * param1, fx32 param2);
static BOOL ov70_02261498(fx32 * param0, const UnkStruct_02017248 * param1, fx32 param2);
static void ov70_022614C0(fx32 * param0, const UnkStruct_02017248 * param1, fx32 param2);
static BOOL ov70_022614DC(fx32 * param0, const UnkStruct_02017248 * param1, fx32 param2);
static void ov70_022614F4(UnkStruct_ov70_022615A4 * param0, UnkStruct_02006C24 * param1, const UnkStruct_ov70_02261418 * param2, u32 param3, NNSFndAllocator * param4);
static void ov70_022615A4(UnkStruct_ov70_022615A4 * param0, NNSFndAllocator * param1);
static void ov70_022615E8(UnkStruct_ov70_022615E8 * param0, UnkStruct_ov70_022615A4 * param1);
static void ov70_02261664(UnkStruct_ov70_022615E8 * param0, UnkStruct_ov70_022615A4 * param1);
static void ov70_022616B0(UnkStruct_ov70_022615E8 * param0, UnkStruct_ov70_022615A4 * param1);
static void ov70_022616FC(UnkStruct_ov70_022615E8 * param0, UnkStruct_ov70_022615A4 * param1);
static UnkStruct_ov70_02260E8C * ov70_02261718(UnkStruct_ov70_02260BB8 * param0);
static void ov70_0226174C(UnkStruct_ov70_022618C8 * param0, UnkStruct_02006C24 * param1, NNSFndAllocator * param2, const UnkStruct_ov70_02261418 * param3, u32 param4);
static void ov70_022618C8(UnkStruct_ov70_022618C8 * param0, NNSFndAllocator * param1);
static void ov70_02261968(UnkStruct_ov70_02260E8C * param0, UnkStruct_ov70_022618C8 * param1);
static void ov70_022619F4(UnkStruct_ov70_02260E8C * param0, UnkStruct_ov70_022618C8 * param1);
static UnkStruct_ov70_022610B8 * ov70_02261AF0(UnkStruct_ov70_02260BB8 * param0);
static void ov70_02261B24(UnkStruct_ov70_02261BB4 * param0, UnkStruct_02006C24 * param1, NNSFndAllocator * param2, const UnkStruct_ov70_02261418 * param3, u32 param4);
static void ov70_02261BB4(UnkStruct_ov70_02261BB4 * param0, NNSFndAllocator * param1);
static void ov70_02261C04(UnkStruct_ov70_02261BB4 * param0, UnkStruct_ov70_022610B8 * param1);
static void ov70_02261C60(UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1);

UnkStruct_ov70_02260BB8 * ov70_02260B44 (u32 param0, u32 param1, u32 param2, u32 param3)
{
    UnkStruct_ov70_02260BB8 * v0;

    v0 = sub_02018144(param2, sizeof(UnkStruct_ov70_02260BB8));
    memset(v0, 0, sizeof(UnkStruct_ov70_02260BB8));

    v0->unk_11C = sub_02018144(param2, sizeof(UnkStruct_ov70_02260E8C) * param0);
    v0->unk_120 = sub_02018144(param2, sizeof(UnkStruct_ov70_022610B8) * param1);

    memset(v0->unk_11C, 0, sizeof(UnkStruct_ov70_02260E8C) * param0);
    memset(v0->unk_120, 0, sizeof(UnkStruct_ov70_022610B8) * param1);

    v0->unk_124 = param0;
    v0->unk_125 = param1;

    return v0;
}

void ov70_02260BB8 (UnkStruct_ov70_02260BB8 * param0)
{
    if (param0->unk_128) {
        ov70_02260D80(param0);
    }

    sub_020181C4(param0->unk_11C);
    sub_020181C4(param0->unk_120);
    sub_020181C4(param0);
}

void ov70_02260BE8 (UnkStruct_ov70_02260BB8 * param0)
{
    ov70_022616B0(&param0->unk_00, &param0->unk_12C);

    {
        int v0;

        for (v0 = 0; v0 < param0->unk_124; v0++) {
            ov70_02261968(&param0->unk_11C[v0], &param0->unk_1C4);
        }
    }

    {
        int v1;

        for (v1 = 0; v1 < param0->unk_125; v1++) {
            ov70_02261C60(param0, &param0->unk_120[v1]);
        }
    }
}

void ov70_02260C50 (UnkStruct_ov70_02260BB8 * param0)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_120);
    GF_ASSERT(param0->unk_11C);

    ov70_022616FC(&param0->unk_00, &param0->unk_12C);

    for (v0 = 0; v0 < param0->unk_125; v0++) {
        ov70_02261C04(&param0->unk_29C, &param0->unk_120[v0]);
    }

    for (v0 = 0; v0 < param0->unk_124; v0++) {
        ov70_022619F4(&param0->unk_11C[v0], &param0->unk_1C4);
    }
}

void ov70_02260CE0 (UnkStruct_ov70_02260BB8 * param0)
{
    return;
}

void ov70_02260CE4 (UnkStruct_ov70_02260BB8 * param0, int param1, int param2, u32 param3, u32 param4)
{
    UnkStruct_02006C24 * v0;
    UnkStruct_ov70_02261418 * v1;

    param0->unk_127 = param2;
    param0->unk_126 = param1;

    v1 = ov70_022613F4(param1, param2, param3);
    v0 = sub_02006C24(175, param3);

    sub_020182CC(&param0->unk_494, param4, 4);

    ov70_022614F4(&param0->unk_12C, v0, v1, param4, &param0->unk_494);
    ov70_02261B24(&param0->unk_29C, v0, &param0->unk_494, v1, param4);
    ov70_0226174C(&param0->unk_1C4, v0, &param0->unk_494, v1, param4);

    sub_02006CA8(v0);

    ov70_02261418(v1);
    ov70_022615E8(&param0->unk_00, &param0->unk_12C);

    param0->unk_128 = 1;
}

void ov70_02260D80 (UnkStruct_ov70_02260BB8 * param0)
{
    ov70_02261664(&param0->unk_00, &param0->unk_12C);
    ov70_022615A4(&param0->unk_12C, &param0->unk_494);
    ov70_02261BB4(&param0->unk_29C, &param0->unk_494);
    ov70_022618C8(&param0->unk_1C4, &param0->unk_494);

    param0->unk_128 = 0;
}

void ov70_02260DC8 (UnkStruct_ov70_02260BB8 * param0)
{
    if (param0->unk_12C.unk_84[4] == 1) {
        if (param0->unk_00.unk_F4[4] == 0) {
            param0->unk_00.unk_F4[4] = 1;
            sub_0201727C(&param0->unk_00.unk_04[0], &param0->unk_12C.unk_20[4]);
        }
    }
}

void ov70_02260DF4 (UnkStruct_ov70_02260BB8 * param0)
{
    if (param0->unk_12C.unk_84[4] == 1) {
        if (param0->unk_00.unk_F4[4] == 1) {
            sub_02017288(&param0->unk_00.unk_04[0], &param0->unk_12C.unk_20[4]);
            param0->unk_00.unk_F4[4] = 0;
        }
    }
}

UnkStruct_ov70_02260E8C * ov70_02260E20 (UnkStruct_ov70_02260BB8 * param0, int param1, int param2, const VecFx32 * param3)
{
    UnkStruct_ov70_02260E8C * v0;

    GF_ASSERT(param1 <= 2);
    GF_ASSERT(param2 <= 3);

    v0 = ov70_02261718(param0);

    sub_02017258(&v0->unk_04, &param0->unk_1C4.unk_00[param1]);
    sub_02017348(&v0->unk_04, 1);

    ov70_02260EA0(v0, param3);
    {
        VecFx32 v1 = {0, 0, 0};
        ov70_02260EE4(v0, &v1);
    }

    v0->unk_01 = param2;
    v0->unk_02 = param1;
    v0->unk_00 = 1;

    {
        v0->unk_7C[0] = 1;
        v0->unk_7C[2] = 1;
    }

    return v0;
}

void ov70_02260E8C (UnkStruct_ov70_02260E8C * param0)
{
    sub_02017348(&param0->unk_04, 0);

    param0->unk_00 = 0;
}

void ov70_02260EA0 (UnkStruct_ov70_02260E8C * param0, const VecFx32 * param1)
{
    param0->unk_9C = *param1;
    sub_02017350(&param0->unk_04, param0->unk_9C.x + param0->unk_A8.x, param0->unk_9C.y + param0->unk_A8.y, param0->unk_9C.z + param0->unk_A8.z);
}

void ov70_02260EE4 (UnkStruct_ov70_02260E8C * param0, const VecFx32 * param1)
{
    param0->unk_A8 = *param1;
    sub_02017350(&param0->unk_04, param0->unk_9C.x + param0->unk_A8.x, param0->unk_9C.y + param0->unk_A8.y, param0->unk_9C.z + param0->unk_A8.z);
}

void ov70_02260F28 (const UnkStruct_ov70_02260E8C * param0, VecFx32 * param1)
{
    sub_02017358(&param0->unk_04, &param1->x, &param1->y, &param1->z);
}

void ov70_02260F38 (UnkStruct_ov70_02260E8C * param0, BOOL param1)
{
    sub_02017348(&param0->unk_04, param1);
}

BOOL ov70_02260F44 (UnkStruct_ov70_02260E8C * param0)
{
    if (param0->unk_7C[1] == 0) {
        param0->unk_7C[1] = 1;
        return 1;
    }

    return 0;
}

BOOL ov70_02260F5C (UnkStruct_ov70_02260E8C * param0)
{
    if (param0->unk_7C[3] == 0) {
        param0->unk_7C[3] = 1;
        return 1;
    }

    return 0;
}

void ov70_02260F74 (UnkStruct_ov70_02260E8C * param0, u16 param1)
{
    sub_02017388(&param0->unk_04, param1, 0);
}

BOOL ov70_02260F80 (const UnkStruct_ov70_02260E8C * param0)
{
    return param0->unk_7C[1];
}

BOOL ov70_02260F88 (const UnkStruct_ov70_02260E8C * param0)
{
    return param0->unk_7C[3];
}

UnkStruct_ov70_022610B8 * ov70_02260F90 (UnkStruct_ov70_02260BB8 * param0, int param1, u32 param2, u32 param3)
{
    UnkStruct_ov70_022610B8 * v0;
    int v1;

    v0 = ov70_02261AF0(param0);

    sub_02017258(&v0->unk_04, &param0->unk_29C.unk_00[param1]);

    for (v1 = 0; v1 < 3; v1++) {
        if (param0->unk_29C.unk_120[param1][v1] != NULL) {
            sub_02017190(&v0->unk_7C[v1], &param0->unk_29C.unk_00[param1], param0->unk_29C.unk_120[param1][v1], &param0->unk_494);
        }
    }

    sub_02017348(&v0->unk_04, 1);

    {
        UnkStruct_ov63_0222CC3C v2;

        v2.unk_00 = (param2) * 16;
        v2.unk_02 = (param3) * 16;

        ov70_022610BC(v0, v2);
    }

    v0->unk_00 = 1;
    v0->unk_02 = param1;
    v0->unk_CC = 20;
    v0->unk_DC = FX32_ONE;
    v0->unk_E0 = 0;
    v0->unk_E1 = 31;
    v0->unk_E2 = 31;

    return v0;
}

void ov70_02261058 (UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1)
{
    int v0;

    sub_02017348(&param1->unk_04, 0);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_29C.unk_120[param1->unk_02][v0] != NULL) {
            sub_02017190(&param1->unk_7C[v0], &param0->unk_29C.unk_00[param1->unk_02], param0->unk_29C.unk_120[param1->unk_02][v0], &param0->unk_494);
        }
    }

    param1->unk_00 = 0;
}

int ov70_022610B8 (const UnkStruct_ov70_022610B8 * param0)
{
    return param0->unk_02;
}

void ov70_022610BC (UnkStruct_ov70_022610B8 * param0, UnkStruct_ov63_0222CC3C param1)
{
    VecFx32 v0;

    ov70_0225C700(&param1, &v0);
    sub_02017350(&param0->unk_04, v0.x, v0.y, v0.z);
}

UnkStruct_ov63_0222CC3C ov70_022610E4 (const UnkStruct_ov70_022610B8 * param0)
{
    VecFx32 v0;
    UnkStruct_ov63_0222CC3C v1;

    sub_02017358(&param0->unk_04, &v0.x, &v0.y, &v0.z);
    ov70_0225C714(&v0, &v1);

    return v1;
}

void ov70_0226110C (UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1, int param2, int param3)
{
    ov70_0226111C(param0, param1, param2, param3, NULL);
}

void ov70_0226111C (UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1, int param2, int param3, UnkFuncPtr_ov70_02261C60 param4)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param3 < 7);
    GF_ASSERT(param1->unk_02 < 18);

    if ((param0->unk_29C.unk_120[param1->unk_02][param2] != NULL)) {
        if (param1->unk_B8[param2] == 0) {
            sub_0201727C(&param1->unk_04, &param1->unk_7C[param2]);
        }

        param1->unk_B8[param2] = 1;
        param1->unk_BC[param2] = param3;
        param1->unk_D0[param2] = param4;
        param1->unk_CD[param2] = 0;

        switch (param3) {
        case 0:
        case 1:
        case 2:
            param1->unk_C0[param2] = 0;
            break;
        case 3:
        case 4:
            param1->unk_C0[param2] = sub_0201724C(&param1->unk_7C[param2]);
            break;
        case 5:
            param1->unk_C0[param2] = 0;
            param1->unk_CD[param2] = sub_0201D35C() % param1->unk_CC;
            break;
        case 6:
            param1->unk_C0[param2] = 0;
            param1->unk_CD[param2] = sub_0201D35C() % param1->unk_CC;
            break;
        }

        sub_02017240(&param1->unk_7C[param2], param1->unk_C0[param2]);
    }
}

void ov70_02261220 (UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1, int param2)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk_02 < 18);

    if ((param0->unk_29C.unk_120[param1->unk_02][param2] != NULL) && (param1->unk_B8[param2] == 1)) {
        sub_02017288(&param1->unk_04, &param1->unk_7C[param2]);

        param1->unk_B8[param2] = 0;
        param1->unk_C0[param2] = 0;
        param1->unk_BC[param2] = 0;
        param1->unk_CD[param2] = 0;
        param1->unk_D0[param2] = NULL;
    }
}

void ov70_0226128C (UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (ov70_02261348(param1, v0) == 1) {
            ov70_02261220(param0, param1, v0);
        }
    }
}

BOOL ov70_022612B4 (const UnkStruct_ov70_02260BB8 * param0, const UnkStruct_ov70_022610B8 * param1, int param2)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk_02 < 18);

    if (param0->unk_29C.unk_120[param1->unk_02][param2] != NULL) {
        return param1->unk_B8[param2];
    }

    return 0;
}

void ov70_022612F0 (UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1, int param2, fx32 param3)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk_02 < 18);
    GF_ASSERT(param0->unk_29C.unk_120[param1->unk_02][param2] != NULL);

    if (param1->unk_BC[param2] != 2) {
        return;
    }

    param1->unk_C0[param2] = param3;
    sub_02017240(&param1->unk_7C[param2], param1->unk_C0[param2]);
}

BOOL ov70_02261348 (const UnkStruct_ov70_022610B8 * param0, int param1)
{
    GF_ASSERT(param1 < 3);
    GF_ASSERT(param0->unk_02 < 18);
    return param0->unk_B8[param1];
}

fx32 ov70_02261368 (const UnkStruct_ov70_022610B8 * param0, int param1)
{
    GF_ASSERT(param1 < 3);
    GF_ASSERT(param0->unk_02 < 18);
    return param0->unk_C0[param1];
}

void ov70_0226138C (UnkStruct_ov70_022610B8 * param0, BOOL param1)
{
    sub_02017348(&param0->unk_04, param1);
}

void ov70_02261398 (UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1, u32 param2)
{
    GF_ASSERT(param1->unk_02 < 18);
    NNS_G3dMdlSetMdlLightEnableFlagAll(param0->unk_29C.unk_00[param1->unk_02].unk_08, param2);
}

void ov70_022613C0 (UnkStruct_ov70_022610B8 * param0, fx32 param1)
{
    param0->unk_DC = param1;
}

void ov70_022613C8 (UnkStruct_ov70_022610B8 * param0, u8 param1, u8 param2)
{
    param0->unk_E0 = 1;
    param0->unk_E1 = param1;
    param0->unk_E2 = param2;
}

void ov70_022613E0 (UnkStruct_ov70_022610B8 * param0)
{
    param0->unk_E0 = 0;
}

void ov70_022613E8 (UnkStruct_ov70_022610B8 * param0, fx32 param1, fx32 param2, fx32 param3)
{
    sub_0201736C(&param0->unk_04, param1, param2, param3);
}

static UnkStruct_ov70_02261418 * ov70_022613F4 (int param0, int param1, u32 param2)
{
    void * v0;
    u32 v1;

    v1 = (param1 * 5) + param0;
    GF_ASSERT(v1 < (5 * 5));
    v0 = sub_02006FE8(174, 1 + v1, 0, param2, 1);

    return v0;
}

static void ov70_02261418 (UnkStruct_ov70_02261418 * param0)
{
    sub_020181C4(param0);
}

static void ov70_02261420 (UnkStruct_020170F4 * param0, UnkStruct_02006C24 * param1, u32 param2, u32 param3)
{
    ov70_0225C730(&param0->unk_00, param1, param2, param3);

    {
        param0->unk_04 = NNS_G3dGetMdlSet(param0->unk_00);
        param0->unk_08 = NNS_G3dGetMdlByIdx(param0->unk_04, 0);
        param0->unk_0C = NNS_G3dGetTex(param0->unk_00);
    }

    {
        sub_0201CBB0(param0->unk_00, param0->unk_0C);
    }
}

static void ov70_0226146C (UnkStruct_020170F4 * param0)
{
    sub_02017110(param0);
}

static void ov70_02261474 (fx32 * param0, const UnkStruct_02017248 * param1, fx32 param2)
{
    fx32 v0;

    v0 = sub_0201724C(param1);

    if (((*param0) + param2) < v0) {
        (*param0) += param2;
    } else {
        (*param0) = ((*param0) + param2) % v0;
    }
}

static BOOL ov70_02261498 (fx32 * param0, const UnkStruct_02017248 * param1, fx32 param2)
{
    fx32 v0;
    BOOL v1;

    v0 = sub_0201724C(param1);

    if (((*param0) + param2) < v0) {
        (*param0) += param2;
        v1 = 0;
    } else {
        (*param0) = v0 - FX32_HALF;
        v1 = 1;
    }

    return v1;
}

static void ov70_022614C0 (fx32 * param0, const UnkStruct_02017248 * param1, fx32 param2)
{
    fx32 v0;

    v0 = sub_0201724C(param1);

    if (((*param0) - param2) >= 0) {
        (*param0) -= param2;
    } else {
        (*param0) = ((*param0) - param2) + v0;
    }
}

static BOOL ov70_022614DC (fx32 * param0, const UnkStruct_02017248 * param1, fx32 param2)
{
    BOOL v0;

    if (((*param0) - param2) > 0) {
        (*param0) -= param2;
        v0 = 0;
    } else {
        (*param0) = 0;
        v0 = 1;
    }

    return v0;
}

static void ov70_022614F4 (UnkStruct_ov70_022615A4 * param0, UnkStruct_02006C24 * param1, const UnkStruct_ov70_02261418 * param2, u32 param3, NNSFndAllocator * param4)
{
    int v0, v1;

    for (v0 = 0; v0 < 2; v0++) {
        ov70_02261420(&param0->unk_00[v0], param1, param2->unk_180[v0], param3);
        ov66_02231668(param0->unk_00[v0].unk_00);
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param2->unk_18C[v0] == param2->unk_180[0]) {
            param0->unk_84[v0] = 0;
        } else {
            param0->unk_84[v0] = 1;

            if (v0 != 3) {
                sub_02017164(&param0->unk_20[v0], &param0->unk_00[0], param1, param2->unk_18C[v0], param3, param4);
            } else {
                sub_02017164(&param0->unk_20[v0], &param0->unk_00[1], param1, param2->unk_18C[v0], param3, param4);
            }
        }
    }
}

static void ov70_022615A4 (UnkStruct_ov70_022615A4 * param0, NNSFndAllocator * param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_84[v0]) {
            sub_020171A0(&param0->unk_20[v0], param1);
            param0->unk_84[v0] = 0;
        }
    }

    for (v0 = 0; v0 < 2; v0++) {
        ov70_0226146C(&param0->unk_00[v0]);
    }
}

static void ov70_022615E8 (UnkStruct_ov70_022615E8 * param0, UnkStruct_ov70_022615A4 * param1)
{
    int v0;

    param0->unk_00 = 1;

    for (v0 = 0; v0 < 2; v0++) {
        sub_02017258(&param0->unk_04[v0], &param1->unk_00[v0]);
        sub_02017348(&param0->unk_04[v0], 1);
    }

    for (v0 = 0; v0 < 5 - 1; v0++) {
        if (param1->unk_84[v0] == 1) {
            param0->unk_F4[v0] = 1;

            if (v0 != 3) {
                sub_0201727C(&param0->unk_04[0], &param1->unk_20[v0]);
            } else {
                sub_0201727C(&param0->unk_04[1], &param1->unk_20[v0]);
            }
        }
    }
}

static void ov70_02261664 (UnkStruct_ov70_022615E8 * param0, UnkStruct_ov70_022615A4 * param1)
{
    int v0;

    for (v0 = 0; v0 < 5 - 1; v0++) {
        if (param0->unk_F4[v0] == 1) {
            param0->unk_F4[v0] = 0;

            if (v0 != 3) {
                sub_02017288(&param0->unk_04[0], &param1->unk_20[v0]);
            } else {
                sub_02017288(&param0->unk_04[1], &param1->unk_20[v0]);
            }
        }
    }

    param0->unk_00 = 0;
}

static void ov70_022616B0 (UnkStruct_ov70_022615E8 * param0, UnkStruct_ov70_022615A4 * param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_F4[v0]) {
            ov70_02261474(&param0->unk_108[v0], &param1->unk_20[v0], FX32_ONE);
            sub_02017240(&param1->unk_20[v0], param0->unk_108[v0]);
        }
    }
}

static void ov70_022616FC (UnkStruct_ov70_022615E8 * param0, UnkStruct_ov70_022615A4 * param1)
{
    int v0, v1;

    if (param0->unk_00) {
        for (v0 = 0; v0 < 2; v0++) {
            sub_02017294(&param0->unk_04[v0]);
        }
    }
}

static UnkStruct_ov70_02260E8C * ov70_02261718 (UnkStruct_ov70_02260BB8 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_124; v0++) {
        if (param0->unk_11C[v0].unk_00 == 0) {
            return &param0->unk_11C[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov70_0226174C (UnkStruct_ov70_022618C8 * param0, UnkStruct_02006C24 * param1, NNSFndAllocator * param2, const UnkStruct_ov70_02261418 * param3, u32 param4)
{
    int v0, v1, v2;

    {
        for (v0 = 0; v0 < 2; v0++) {
            for (v1 = 0; v1 < 3; v1++) {
                ov70_0225C730(&param0->unk_20[v0][v1], param1, param3->unk_128[v0][v1], param4);
            }
        }
    }

    {
        for (v0 = 0; v0 < 2; v0++) {
            param0->unk_00[v0].unk_00 = sub_0200723C(param1, param3->unk_120[v0], 0, param4, 0);
            param0->unk_00[v0].unk_04 = NNS_G3dGetMdlSet(param0->unk_00[v0].unk_00);
            param0->unk_00[v0].unk_08 = NNS_G3dGetMdlByIdx(param0->unk_00[v0].unk_04, 0);
            param0->unk_00[v0].unk_0C = NNS_G3dGetTex(param0->unk_20[v0][0]);
        }
    }

    {
        for (v0 = 0; v0 < 2; v0++) {
            for (v1 = 0; v1 < 4; v1++) {
                if (param3->unk_120[0] != param3->unk_140[v0][v1]) {
                    sub_02017164(&param0->unk_38[v0][v1], &param0->unk_00[v0], param1, param3->unk_140[v0][v1], param4, param2);

                    if (v1 >= 1) {
                        for (v2 = 0; v2 < param3->unk_160[v0]; v2++) {
                            if (param3->unk_168[v0][v1 - 1] != v2) {
                                NNS_G3dAnmObjDisableID(param0->unk_38[v0][v1].unk_08, v2);
                            }
                        }
                    }
                }
            }
        }
    }
}

static void ov70_022618C8 (UnkStruct_ov70_022618C8 * param0, NNSFndAllocator * param1)
{
    int v0, v1;

    {
        for (v0 = 0; v0 < 2; v0++) {
            for (v1 = 0; v1 < 4; v1++) {
                sub_020171A0(&param0->unk_38[v0][v1], param1);
            }
        }
    }

    {
        for (v0 = 0; v0 < 2; v0++) {
            sub_020181C4(param0->unk_00[v0].unk_00);
        }
    }

    {
        NNSG3dTexKey v2;
        NNSG3dTexKey v3;
        NNSG3dPlttKey v4;
        NNSG3dResTex * v5;

        for (v0 = 0; v0 < 2; v0++) {
            for (v1 = 0; v1 < 3; v1++) {
                v5 = NNS_G3dGetTex(param0->unk_20[v0][v1]);

                NNS_G3dTexReleaseTexKey(v5, &v2, &v3);
                NNS_GfdFreeTexVram(v2);
                NNS_GfdFreeTexVram(v3);

                v4 = NNS_G3dPlttReleasePlttKey(v5);
                NNS_GfdFreePlttVram(v4);

                sub_020181C4(param0->unk_20[v0][v1]);
            }
        }
    }
}

static void ov70_02261968 (UnkStruct_ov70_02260E8C * param0, UnkStruct_ov70_022618C8 * param1)
{
    int v0;

    {
        fx32 v1;

        for (v0 = 0; v0 < 4; v0++) {
            if (param0->unk_7C[v0]) {
                switch (v0) {
                case 0:
                case 2:
                    ov70_02261474(&param0->unk_8C[v0], &param1->unk_38[param0->unk_02][v0], FX32_ONE);
                    break;
                case 1:
                case 3:
                {
                    BOOL v2;

                    v2 = ov70_02261498(&param0->unk_8C[v0], &param1->unk_38[param0->unk_02][v0], FX32_ONE);

                    if (v2 == 1) {
                        param0->unk_7C[v0] = 0;
                        param0->unk_8C[v0] = 0;
                    }
                }
                break;
                default:
                    GF_ASSERT(0);
                    break;
                }
            }
        }
    }
}

static void ov70_022619F4 (UnkStruct_ov70_02260E8C * param0, UnkStruct_ov70_022618C8 * param1)
{
    BOOL v0;
    int v1;

    if (param0->unk_00 == 0) {
        return;
    }

    if (ov70_0225C7A0(&param1->unk_00[param0->unk_02], &param0->unk_04) == 0) {
        return;
    }

    GF_ASSERT(param0->unk_01 < 3);
    GF_ASSERT(param0->unk_02 < 2);

    param1->unk_00[param0->unk_02].unk_0C = NNS_G3dGetTex(param1->unk_20[param0->unk_02][param0->unk_01]);
    v0 = NNS_G3dBindMdlSet(param1->unk_00[param0->unk_02].unk_04, param1->unk_00[param0->unk_02].unk_0C);

    GF_ASSERT(v0);

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_7C[v1]) {
            sub_0201727C(&param0->unk_04, &param1->unk_38[param0->unk_02][v1]);
            sub_02017240(&param1->unk_38[param0->unk_02][v1], param0->unk_8C[v1]);
        }
    }

    sub_02017294(&param0->unk_04);

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_7C[v1]) {
            sub_02017288(&param0->unk_04, &param1->unk_38[param0->unk_02][v1]);
        }
    }

    NNS_G3dReleaseMdlSet(param1->unk_00[param0->unk_02].unk_04);
}

static UnkStruct_ov70_022610B8 * ov70_02261AF0 (UnkStruct_ov70_02260BB8 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_125; v0++) {
        if (param0->unk_120[v0].unk_00 == 0) {
            return &param0->unk_120[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov70_02261B24 (UnkStruct_ov70_02261BB4 * param0, UnkStruct_02006C24 * param1, NNSFndAllocator * param2, const UnkStruct_ov70_02261418 * param3, u32 param4)
{
    int v0, v1;

    for (v0 = 0; v0 < 18; v0++) {
        ov70_02261420(&param0->unk_00[v0], param1, param3->unk_00[v0], param4);

        if ((v0 != 11) && (v0 != 12)) {
            ov66_02231668(param0->unk_00[v0].unk_00);
        }

        for (v1 = 0; v1 < 3; v1++) {
            if (param3->unk_48[v0][v1] != param3->unk_00[v0]) {
                param0->unk_120[v0][v1] = sub_0200723C(param1, param3->unk_48[v0][v1], 0, param4, 0);
            } else {
                param0->unk_120[v0][v1] = NULL;
            }
        }
    }
}

static void ov70_02261BB4 (UnkStruct_ov70_02261BB4 * param0, NNSFndAllocator * param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 18; v0++) {
        for (v1 = 0; v1 < 3; v1++) {
            if (param0->unk_120[v0][v1] != NULL) {
                sub_020181C4(param0->unk_120[v0][v1]);
                param0->unk_120[v0][v1] = NULL;
            }
        }

        ov70_0226146C(&param0->unk_00[v0]);
    }
}

static void ov70_02261C04 (UnkStruct_ov70_02261BB4 * param0, UnkStruct_ov70_022610B8 * param1)
{
    int v0;

    if (param1->unk_00 == 0) {
        return;
    }

    if (ov70_0225C7A0(&param0->unk_00[param1->unk_02], &param1->unk_04) == 0) {
        return;
    }

    if (param1->unk_E0 == 1) {
        NNS_G3dMdlSetMdlAlphaAll(param0->unk_00[param1->unk_02].unk_08, param1->unk_E1);
    }

    sub_02017294(&param1->unk_04);

    if (param1->unk_E0 == 1) {
        NNS_G3dMdlSetMdlAlphaAll(param0->unk_00[param1->unk_02].unk_08, param1->unk_E2);
    }
}

static void ov70_02261C60 (UnkStruct_ov70_02260BB8 * param0, UnkStruct_ov70_022610B8 * param1)
{
    int v0;
    BOOL v1;
    UnkFuncPtr_ov70_02261C60 v2;

    for (v0 = 0; v0 < 3; v0++) {
        if (param1->unk_B8[v0]) {
            switch (param1->unk_BC[v0]) {
            case 0:
                ov70_02261474(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                sub_02017240(&param1->unk_7C[v0], param1->unk_C0[v0]);
                break;
            case 1:
                v1 = ov70_02261498(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                sub_02017240(&param1->unk_7C[v0], param1->unk_C0[v0]);

                if (v1 == 1) {
                    v2 = param1->unk_D0[v0];

                    ov70_02261220(param0, param1, v0);

                    if (v2) {
                        v2(param0, param1);
                    }
                }
                break;
            case 3:
                ov70_022614C0(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                sub_02017240(&param1->unk_7C[v0], param1->unk_C0[v0]);
                break;
            case 4:
                v1 = ov70_022614DC(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                sub_02017240(&param1->unk_7C[v0], param1->unk_C0[v0]);

                if (v1 == 1) {
                    v2 = param1->unk_D0[v0];

                    ov70_02261220(param0, param1, v0);

                    if (v2) {
                        v2(param0, param1);
                    }
                }
                break;
            case 5:
                if (param1->unk_CD[v0] > 0) {
                    param1->unk_CD[v0]--;
                } else {
                    v1 = ov70_02261498(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);

                    if (v1 == 1) {
                        param1->unk_CD[v0] = sub_0201D35C() % param1->unk_CC;
                        param1->unk_C0[v0] = 0;
                    }

                    sub_02017240(&param1->unk_7C[v0], param1->unk_C0[v0]);
                }
                break;
            case 6:
                if (param1->unk_CD[v0] > 0) {
                    param1->unk_CD[v0]--;
                } else {
                    ov70_02261474(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                    sub_02017240(&param1->unk_7C[v0], param1->unk_C0[v0]);
                }
                break;
            case 2:
            default:
                break;
            }
        }
    }
}
