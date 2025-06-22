#include "overlay070/ov70_02260B44.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay066/ov66_02231428.h"
#include "overlay070/funcptr_ov70_02261C60.h"
#include "overlay070/ov70_0225C700.h"
#include "overlay070/struct_ov70_02261418.h"

#include "easy3d.h"
#include "easy3d_object.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"

typedef struct {
    BOOL unk_00;
    Easy3DObject unk_04[2];
    u32 unk_F4[5];
    fx32 unk_108[5];
} UnkStruct_ov70_022615E8;

typedef struct {
    Easy3DModel unk_00[2];
    Easy3DAnim unk_20[5];
    BOOL unk_84[5];
} UnkStruct_ov70_022615A4;

typedef struct UnkStruct_ov70_02260E8C_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    Easy3DObject unk_04;
    u32 unk_7C[4];
    fx32 unk_8C[4];
    VecFx32 unk_9C;
    VecFx32 unk_A8;
} UnkStruct_ov70_02260E8C;

typedef struct {
    Easy3DModel unk_00[2];
    void *unk_20[2][3];
    Easy3DAnim unk_38[2][4];
} UnkStruct_ov70_022618C8;

typedef struct UnkStruct_ov70_022610B8_t {
    u16 unk_00;
    u16 unk_02;
    Easy3DObject unk_04;
    Easy3DAnim unk_7C[3];
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
    Easy3DModel unk_00[18];
    void *unk_120[18][3];
} UnkStruct_ov70_02261BB4;

typedef struct UnkStruct_ov70_02260BB8_t {
    UnkStruct_ov70_022615E8 unk_00;
    UnkStruct_ov70_02260E8C *unk_11C;
    UnkStruct_ov70_022610B8 *unk_120;
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

static UnkStruct_ov70_02261418 *ov70_022613F4(int param0, int param1, enum HeapId heapID);
static void ov70_02261418(UnkStruct_ov70_02261418 *param0);
static void ov70_0226146C(Easy3DModel *param0);
static void ov70_02261474(fx32 *param0, const Easy3DAnim *param1, fx32 param2);
static BOOL ov70_02261498(fx32 *param0, const Easy3DAnim *param1, fx32 param2);
static void ov70_022614C0(fx32 *param0, const Easy3DAnim *param1, fx32 param2);
static BOOL ov70_022614DC(fx32 *param0, const Easy3DAnim *param1, fx32 param2);
static void ov70_022614F4(UnkStruct_ov70_022615A4 *param0, NARC *param1, const UnkStruct_ov70_02261418 *param2, u32 heapID, NNSFndAllocator *param4);
static void ov70_022615A4(UnkStruct_ov70_022615A4 *param0, NNSFndAllocator *param1);
static void ov70_022615E8(UnkStruct_ov70_022615E8 *param0, UnkStruct_ov70_022615A4 *param1);
static void ov70_02261664(UnkStruct_ov70_022615E8 *param0, UnkStruct_ov70_022615A4 *param1);
static void ov70_022616B0(UnkStruct_ov70_022615E8 *param0, UnkStruct_ov70_022615A4 *param1);
static void ov70_022616FC(UnkStruct_ov70_022615E8 *param0, UnkStruct_ov70_022615A4 *param1);
static UnkStruct_ov70_02260E8C *ov70_02261718(UnkStruct_ov70_02260BB8 *param0);
static void ov70_0226174C(UnkStruct_ov70_022618C8 *param0, NARC *param1, NNSFndAllocator *param2, const UnkStruct_ov70_02261418 *param3, u32 param4);
static void ov70_022618C8(UnkStruct_ov70_022618C8 *param0, NNSFndAllocator *param1);
static void ov70_02261968(UnkStruct_ov70_02260E8C *param0, UnkStruct_ov70_022618C8 *param1);
static void ov70_022619F4(UnkStruct_ov70_02260E8C *param0, UnkStruct_ov70_022618C8 *param1);
static UnkStruct_ov70_022610B8 *ov70_02261AF0(UnkStruct_ov70_02260BB8 *param0);
static void ov70_02261B24(UnkStruct_ov70_02261BB4 *param0, NARC *param1, NNSFndAllocator *param2, const UnkStruct_ov70_02261418 *param3, u32 param4);
static void ov70_02261BB4(UnkStruct_ov70_02261BB4 *param0, NNSFndAllocator *param1);
static void ov70_02261C04(UnkStruct_ov70_02261BB4 *param0, UnkStruct_ov70_022610B8 *param1);
static void ov70_02261C60(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1);

UnkStruct_ov70_02260BB8 *ov70_02260B44(u32 param0, u32 param1, u32 heapID, u32 heapID2)
{
    UnkStruct_ov70_02260BB8 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov70_02260BB8));
    memset(v0, 0, sizeof(UnkStruct_ov70_02260BB8));

    v0->unk_11C = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov70_02260E8C) * param0);
    v0->unk_120 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov70_022610B8) * param1);

    memset(v0->unk_11C, 0, sizeof(UnkStruct_ov70_02260E8C) * param0);
    memset(v0->unk_120, 0, sizeof(UnkStruct_ov70_022610B8) * param1);

    v0->unk_124 = param0;
    v0->unk_125 = param1;

    return v0;
}

void ov70_02260BB8(UnkStruct_ov70_02260BB8 *param0)
{
    if (param0->unk_128) {
        ov70_02260D80(param0);
    }

    Heap_FreeToHeap(param0->unk_11C);
    Heap_FreeToHeap(param0->unk_120);
    Heap_FreeToHeap(param0);
}

void ov70_02260BE8(UnkStruct_ov70_02260BB8 *param0)
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

void ov70_02260C50(UnkStruct_ov70_02260BB8 *param0)
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

void ov70_02260CE0(UnkStruct_ov70_02260BB8 *param0)
{
    return;
}

void ov70_02260CE4(UnkStruct_ov70_02260BB8 *param0, int param1, int param2, u32 heapID, u32 heapID2)
{
    NARC *v0;
    UnkStruct_ov70_02261418 *v1;

    param0->unk_127 = param2;
    param0->unk_126 = param1;

    v1 = ov70_022613F4(param1, param2, heapID);
    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__WIFI_LOBBY, heapID);

    Heap_FndInitAllocatorForExpHeap(&param0->unk_494, heapID2, 4);

    ov70_022614F4(&param0->unk_12C, v0, v1, heapID2, &param0->unk_494);
    ov70_02261B24(&param0->unk_29C, v0, &param0->unk_494, v1, heapID2);
    ov70_0226174C(&param0->unk_1C4, v0, &param0->unk_494, v1, heapID2);

    NARC_dtor(v0);

    ov70_02261418(v1);
    ov70_022615E8(&param0->unk_00, &param0->unk_12C);

    param0->unk_128 = 1;
}

void ov70_02260D80(UnkStruct_ov70_02260BB8 *param0)
{
    ov70_02261664(&param0->unk_00, &param0->unk_12C);
    ov70_022615A4(&param0->unk_12C, &param0->unk_494);
    ov70_02261BB4(&param0->unk_29C, &param0->unk_494);
    ov70_022618C8(&param0->unk_1C4, &param0->unk_494);

    param0->unk_128 = 0;
}

void ov70_02260DC8(UnkStruct_ov70_02260BB8 *param0)
{
    if (param0->unk_12C.unk_84[4] == 1) {
        if (param0->unk_00.unk_F4[4] == 0) {
            param0->unk_00.unk_F4[4] = 1;
            Easy3DObject_AddAnim(&param0->unk_00.unk_04[0], &param0->unk_12C.unk_20[4]);
        }
    }
}

void ov70_02260DF4(UnkStruct_ov70_02260BB8 *param0)
{
    if (param0->unk_12C.unk_84[4] == 1) {
        if (param0->unk_00.unk_F4[4] == 1) {
            Easy3DObject_RemoveAnim(&param0->unk_00.unk_04[0], &param0->unk_12C.unk_20[4]);
            param0->unk_00.unk_F4[4] = 0;
        }
    }
}

UnkStruct_ov70_02260E8C *ov70_02260E20(UnkStruct_ov70_02260BB8 *param0, int param1, int param2, const VecFx32 *param3)
{
    UnkStruct_ov70_02260E8C *v0;

    GF_ASSERT(param1 <= 2);
    GF_ASSERT(param2 <= 3);

    v0 = ov70_02261718(param0);

    Easy3DObject_Init(&v0->unk_04, &param0->unk_1C4.unk_00[param1]);
    Easy3DObject_SetVisibility(&v0->unk_04, 1);

    ov70_02260EA0(v0, param3);
    {
        VecFx32 v1 = { 0, 0, 0 };
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

void ov70_02260E8C(UnkStruct_ov70_02260E8C *param0)
{
    Easy3DObject_SetVisibility(&param0->unk_04, 0);

    param0->unk_00 = 0;
}

void ov70_02260EA0(UnkStruct_ov70_02260E8C *param0, const VecFx32 *param1)
{
    param0->unk_9C = *param1;
    Easy3DObject_SetPosition(&param0->unk_04, param0->unk_9C.x + param0->unk_A8.x, param0->unk_9C.y + param0->unk_A8.y, param0->unk_9C.z + param0->unk_A8.z);
}

void ov70_02260EE4(UnkStruct_ov70_02260E8C *param0, const VecFx32 *param1)
{
    param0->unk_A8 = *param1;
    Easy3DObject_SetPosition(&param0->unk_04, param0->unk_9C.x + param0->unk_A8.x, param0->unk_9C.y + param0->unk_A8.y, param0->unk_9C.z + param0->unk_A8.z);
}

void ov70_02260F28(const UnkStruct_ov70_02260E8C *param0, VecFx32 *param1)
{
    Easy3DObject_GetPosition(&param0->unk_04, &param1->x, &param1->y, &param1->z);
}

void ov70_02260F38(UnkStruct_ov70_02260E8C *param0, BOOL param1)
{
    Easy3DObject_SetVisibility(&param0->unk_04, param1);
}

BOOL ov70_02260F44(UnkStruct_ov70_02260E8C *param0)
{
    if (param0->unk_7C[1] == 0) {
        param0->unk_7C[1] = 1;
        return 1;
    }

    return 0;
}

BOOL ov70_02260F5C(UnkStruct_ov70_02260E8C *param0)
{
    if (param0->unk_7C[3] == 0) {
        param0->unk_7C[3] = 1;
        return 1;
    }

    return 0;
}

void ov70_02260F74(UnkStruct_ov70_02260E8C *param0, u16 param1)
{
    Easy3DObject_SetRotation(&param0->unk_04, param1, 0);
}

BOOL ov70_02260F80(const UnkStruct_ov70_02260E8C *param0)
{
    return param0->unk_7C[1];
}

BOOL ov70_02260F88(const UnkStruct_ov70_02260E8C *param0)
{
    return param0->unk_7C[3];
}

UnkStruct_ov70_022610B8 *ov70_02260F90(UnkStruct_ov70_02260BB8 *param0, int param1, u32 param2, u32 param3)
{
    UnkStruct_ov70_022610B8 *v0;
    int v1;

    v0 = ov70_02261AF0(param0);

    Easy3DObject_Init(&v0->unk_04, &param0->unk_29C.unk_00[param1]);

    for (v1 = 0; v1 < 3; v1++) {
        if (param0->unk_29C.unk_120[param1][v1] != NULL) {
            Easy3DAnim_LoadFromData(&v0->unk_7C[v1], &param0->unk_29C.unk_00[param1], param0->unk_29C.unk_120[param1][v1], &param0->unk_494);
        }
    }

    Easy3DObject_SetVisibility(&v0->unk_04, 1);

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

void ov70_02261058(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1)
{
    int v0;

    Easy3DObject_SetVisibility(&param1->unk_04, 0);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_29C.unk_120[param1->unk_02][v0] != NULL) {
            Easy3DAnim_LoadFromData(&param1->unk_7C[v0], &param0->unk_29C.unk_00[param1->unk_02], param0->unk_29C.unk_120[param1->unk_02][v0], &param0->unk_494);
        }
    }

    param1->unk_00 = 0;
}

int ov70_022610B8(const UnkStruct_ov70_022610B8 *param0)
{
    return param0->unk_02;
}

void ov70_022610BC(UnkStruct_ov70_022610B8 *param0, UnkStruct_ov63_0222CC3C param1)
{
    VecFx32 v0;

    ov70_0225C700(&param1, &v0);
    Easy3DObject_SetPosition(&param0->unk_04, v0.x, v0.y, v0.z);
}

UnkStruct_ov63_0222CC3C ov70_022610E4(const UnkStruct_ov70_022610B8 *param0)
{
    VecFx32 v0;
    UnkStruct_ov63_0222CC3C v1;

    Easy3DObject_GetPosition(&param0->unk_04, &v0.x, &v0.y, &v0.z);
    ov70_0225C714(&v0, &v1);

    return v1;
}

void ov70_0226110C(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1, int param2, int param3)
{
    ov70_0226111C(param0, param1, param2, param3, NULL);
}

void ov70_0226111C(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1, int param2, int param3, UnkFuncPtr_ov70_02261C60 param4)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param3 < 7);
    GF_ASSERT(param1->unk_02 < 18);

    if (param0->unk_29C.unk_120[param1->unk_02][param2] != NULL) {
        if (param1->unk_B8[param2] == 0) {
            Easy3DObject_AddAnim(&param1->unk_04, &param1->unk_7C[param2]);
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
            param1->unk_C0[param2] = Easy3DAnim_GetFrameCount(&param1->unk_7C[param2]);
            break;
        case 5:
            param1->unk_C0[param2] = 0;
            param1->unk_CD[param2] = MTRNG_Next() % param1->unk_CC;
            break;
        case 6:
            param1->unk_C0[param2] = 0;
            param1->unk_CD[param2] = MTRNG_Next() % param1->unk_CC;
            break;
        }

        Easy3DAnim_SetFrame(&param1->unk_7C[param2], param1->unk_C0[param2]);
    }
}

void ov70_02261220(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1, int param2)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk_02 < 18);

    if ((param0->unk_29C.unk_120[param1->unk_02][param2] != NULL) && (param1->unk_B8[param2] == 1)) {
        Easy3DObject_RemoveAnim(&param1->unk_04, &param1->unk_7C[param2]);

        param1->unk_B8[param2] = 0;
        param1->unk_C0[param2] = 0;
        param1->unk_BC[param2] = 0;
        param1->unk_CD[param2] = 0;
        param1->unk_D0[param2] = NULL;
    }
}

void ov70_0226128C(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (ov70_02261348(param1, v0) == 1) {
            ov70_02261220(param0, param1, v0);
        }
    }
}

BOOL ov70_022612B4(const UnkStruct_ov70_02260BB8 *param0, const UnkStruct_ov70_022610B8 *param1, int param2)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk_02 < 18);

    if (param0->unk_29C.unk_120[param1->unk_02][param2] != NULL) {
        return param1->unk_B8[param2];
    }

    return 0;
}

void ov70_022612F0(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1, int param2, fx32 param3)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk_02 < 18);
    GF_ASSERT(param0->unk_29C.unk_120[param1->unk_02][param2] != NULL);

    if (param1->unk_BC[param2] != 2) {
        return;
    }

    param1->unk_C0[param2] = param3;
    Easy3DAnim_SetFrame(&param1->unk_7C[param2], param1->unk_C0[param2]);
}

BOOL ov70_02261348(const UnkStruct_ov70_022610B8 *param0, int param1)
{
    GF_ASSERT(param1 < 3);
    GF_ASSERT(param0->unk_02 < 18);
    return param0->unk_B8[param1];
}

fx32 ov70_02261368(const UnkStruct_ov70_022610B8 *param0, int param1)
{
    GF_ASSERT(param1 < 3);
    GF_ASSERT(param0->unk_02 < 18);
    return param0->unk_C0[param1];
}

void ov70_0226138C(UnkStruct_ov70_022610B8 *param0, BOOL param1)
{
    Easy3DObject_SetVisibility(&param0->unk_04, param1);
}

void ov70_02261398(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1, u32 param2)
{
    GF_ASSERT(param1->unk_02 < 18);
    NNS_G3dMdlSetMdlLightEnableFlagAll(param0->unk_29C.unk_00[param1->unk_02].model, param2);
}

void ov70_022613C0(UnkStruct_ov70_022610B8 *param0, fx32 param1)
{
    param0->unk_DC = param1;
}

void ov70_022613C8(UnkStruct_ov70_022610B8 *param0, u8 param1, u8 param2)
{
    param0->unk_E0 = 1;
    param0->unk_E1 = param1;
    param0->unk_E2 = param2;
}

void ov70_022613E0(UnkStruct_ov70_022610B8 *param0)
{
    param0->unk_E0 = 0;
}

void ov70_022613E8(UnkStruct_ov70_022610B8 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    Easy3DObject_SetScale(&param0->unk_04, param1, param2, param3);
}

static UnkStruct_ov70_02261418 *ov70_022613F4(int param0, int param1, enum HeapId heapID)
{
    void *v0;
    u32 v1 = (param1 * 5) + param0;
    GF_ASSERT(v1 < (5 * 5));
    v0 = LoadMemberFromNARC(NARC_INDEX_APPLICATION__WIFI_LOBBY__MAP_CONV__WFLBY_MAP, 1 + v1, 0, heapID, 1);

    return v0;
}

static void ov70_02261418(UnkStruct_ov70_02261418 *param0)
{
    Heap_FreeToHeap(param0);
}

static void ov70_02261420(Easy3DModel *param0, NARC *param1, u32 param2, u32 heapID)
{
    ov70_0225C730(&param0->data, param1, param2, heapID);

    {
        param0->set = NNS_G3dGetMdlSet(param0->data);
        param0->model = NNS_G3dGetMdlByIdx(param0->set, 0);
        param0->texture = NNS_G3dGetTex(param0->data);
    }

    {
        Easy3D_BindTextureToResource(param0->data, param0->texture);
    }
}

static void ov70_0226146C(Easy3DModel *param0)
{
    Easy3DModel_Release(param0);
}

static void ov70_02261474(fx32 *param0, const Easy3DAnim *param1, fx32 param2)
{
    fx32 v0;

    v0 = Easy3DAnim_GetFrameCount(param1);

    if (((*param0) + param2) < v0) {
        (*param0) += param2;
    } else {
        (*param0) = ((*param0) + param2) % v0;
    }
}

static BOOL ov70_02261498(fx32 *param0, const Easy3DAnim *param1, fx32 param2)
{
    fx32 v0;
    BOOL v1;

    v0 = Easy3DAnim_GetFrameCount(param1);

    if (((*param0) + param2) < v0) {
        (*param0) += param2;
        v1 = 0;
    } else {
        (*param0) = v0 - FX32_HALF;
        v1 = 1;
    }

    return v1;
}

static void ov70_022614C0(fx32 *param0, const Easy3DAnim *param1, fx32 param2)
{
    fx32 v0;

    v0 = Easy3DAnim_GetFrameCount(param1);

    if (((*param0) - param2) >= 0) {
        (*param0) -= param2;
    } else {
        (*param0) = ((*param0) - param2) + v0;
    }
}

static BOOL ov70_022614DC(fx32 *param0, const Easy3DAnim *param1, fx32 param2)
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

static void ov70_022614F4(UnkStruct_ov70_022615A4 *param0, NARC *param1, const UnkStruct_ov70_02261418 *param2, u32 heapID, NNSFndAllocator *param4)
{
    int v0, v1;

    for (v0 = 0; v0 < 2; v0++) {
        ov70_02261420(&param0->unk_00[v0], param1, param2->unk_180[v0], heapID);
        ov66_02231668(param0->unk_00[v0].data);
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param2->unk_18C[v0] == param2->unk_180[0]) {
            param0->unk_84[v0] = 0;
        } else {
            param0->unk_84[v0] = 1;

            if (v0 != 3) {
                Easy3DAnim_LoadFrom(&param0->unk_20[v0], &param0->unk_00[0], param1, param2->unk_18C[v0], heapID, param4);
            } else {
                Easy3DAnim_LoadFrom(&param0->unk_20[v0], &param0->unk_00[1], param1, param2->unk_18C[v0], heapID, param4);
            }
        }
    }
}

static void ov70_022615A4(UnkStruct_ov70_022615A4 *param0, NNSFndAllocator *param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_84[v0]) {
            Easy3DAnim_Release(&param0->unk_20[v0], param1);
            param0->unk_84[v0] = 0;
        }
    }

    for (v0 = 0; v0 < 2; v0++) {
        ov70_0226146C(&param0->unk_00[v0]);
    }
}

static void ov70_022615E8(UnkStruct_ov70_022615E8 *param0, UnkStruct_ov70_022615A4 *param1)
{
    int v0;

    param0->unk_00 = 1;

    for (v0 = 0; v0 < 2; v0++) {
        Easy3DObject_Init(&param0->unk_04[v0], &param1->unk_00[v0]);
        Easy3DObject_SetVisibility(&param0->unk_04[v0], 1);
    }

    for (v0 = 0; v0 < 5 - 1; v0++) {
        if (param1->unk_84[v0] == 1) {
            param0->unk_F4[v0] = 1;

            if (v0 != 3) {
                Easy3DObject_AddAnim(&param0->unk_04[0], &param1->unk_20[v0]);
            } else {
                Easy3DObject_AddAnim(&param0->unk_04[1], &param1->unk_20[v0]);
            }
        }
    }
}

static void ov70_02261664(UnkStruct_ov70_022615E8 *param0, UnkStruct_ov70_022615A4 *param1)
{
    int v0;

    for (v0 = 0; v0 < 5 - 1; v0++) {
        if (param0->unk_F4[v0] == 1) {
            param0->unk_F4[v0] = 0;

            if (v0 != 3) {
                Easy3DObject_RemoveAnim(&param0->unk_04[0], &param1->unk_20[v0]);
            } else {
                Easy3DObject_RemoveAnim(&param0->unk_04[1], &param1->unk_20[v0]);
            }
        }
    }

    param0->unk_00 = 0;
}

static void ov70_022616B0(UnkStruct_ov70_022615E8 *param0, UnkStruct_ov70_022615A4 *param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_F4[v0]) {
            ov70_02261474(&param0->unk_108[v0], &param1->unk_20[v0], FX32_ONE);
            Easy3DAnim_SetFrame(&param1->unk_20[v0], param0->unk_108[v0]);
        }
    }
}

static void ov70_022616FC(UnkStruct_ov70_022615E8 *param0, UnkStruct_ov70_022615A4 *param1)
{
    int v0, v1;

    if (param0->unk_00) {
        for (v0 = 0; v0 < 2; v0++) {
            Easy3DObject_Draw(&param0->unk_04[v0]);
        }
    }
}

static UnkStruct_ov70_02260E8C *ov70_02261718(UnkStruct_ov70_02260BB8 *param0)
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

static void ov70_0226174C(UnkStruct_ov70_022618C8 *param0, NARC *param1, NNSFndAllocator *param2, const UnkStruct_ov70_02261418 *param3, u32 heapID)
{
    int v0, v1, v2;

    {
        for (v0 = 0; v0 < 2; v0++) {
            for (v1 = 0; v1 < 3; v1++) {
                ov70_0225C730(&param0->unk_20[v0][v1], param1, param3->unk_128[v0][v1], heapID);
            }
        }
    }

    {
        for (v0 = 0; v0 < 2; v0++) {
            param0->unk_00[v0].data = LoadMemberFromOpenNARC(param1, param3->unk_120[v0], 0, heapID, 0);
            param0->unk_00[v0].set = NNS_G3dGetMdlSet(param0->unk_00[v0].data);
            param0->unk_00[v0].model = NNS_G3dGetMdlByIdx(param0->unk_00[v0].set, 0);
            param0->unk_00[v0].texture = NNS_G3dGetTex(param0->unk_20[v0][0]);
        }
    }

    {
        for (v0 = 0; v0 < 2; v0++) {
            for (v1 = 0; v1 < 4; v1++) {
                if (param3->unk_120[0] != param3->unk_140[v0][v1]) {
                    Easy3DAnim_LoadFrom(&param0->unk_38[v0][v1], &param0->unk_00[v0], param1, param3->unk_140[v0][v1], heapID, param2);

                    if (v1 >= 1) {
                        for (v2 = 0; v2 < param3->unk_160[v0]; v2++) {
                            if (param3->unk_168[v0][v1 - 1] != v2) {
                                NNS_G3dAnmObjDisableID(param0->unk_38[v0][v1].animObj, v2);
                            }
                        }
                    }
                }
            }
        }
    }
}

static void ov70_022618C8(UnkStruct_ov70_022618C8 *param0, NNSFndAllocator *param1)
{
    int v0, v1;

    {
        for (v0 = 0; v0 < 2; v0++) {
            for (v1 = 0; v1 < 4; v1++) {
                Easy3DAnim_Release(&param0->unk_38[v0][v1], param1);
            }
        }
    }

    {
        for (v0 = 0; v0 < 2; v0++) {
            Heap_FreeToHeap(param0->unk_00[v0].data);
        }
    }

    {
        NNSG3dTexKey v2;
        NNSG3dTexKey v3;
        NNSG3dPlttKey v4;
        NNSG3dResTex *v5;

        for (v0 = 0; v0 < 2; v0++) {
            for (v1 = 0; v1 < 3; v1++) {
                v5 = NNS_G3dGetTex(param0->unk_20[v0][v1]);

                NNS_G3dTexReleaseTexKey(v5, &v2, &v3);
                NNS_GfdFreeTexVram(v2);
                NNS_GfdFreeTexVram(v3);

                v4 = NNS_G3dPlttReleasePlttKey(v5);
                NNS_GfdFreePlttVram(v4);

                Heap_FreeToHeap(param0->unk_20[v0][v1]);
            }
        }
    }
}

static void ov70_02261968(UnkStruct_ov70_02260E8C *param0, UnkStruct_ov70_022618C8 *param1)
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
                case 3: {
                    BOOL v2;

                    v2 = ov70_02261498(&param0->unk_8C[v0], &param1->unk_38[param0->unk_02][v0], FX32_ONE);

                    if (v2 == 1) {
                        param0->unk_7C[v0] = 0;
                        param0->unk_8C[v0] = 0;
                    }
                } break;
                default:
                    GF_ASSERT(0);
                    break;
                }
            }
        }
    }
}

static void ov70_022619F4(UnkStruct_ov70_02260E8C *param0, UnkStruct_ov70_022618C8 *param1)
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

    param1->unk_00[param0->unk_02].texture = NNS_G3dGetTex(param1->unk_20[param0->unk_02][param0->unk_01]);
    v0 = NNS_G3dBindMdlSet(param1->unk_00[param0->unk_02].set, param1->unk_00[param0->unk_02].texture);

    GF_ASSERT(v0);

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_7C[v1]) {
            Easy3DObject_AddAnim(&param0->unk_04, &param1->unk_38[param0->unk_02][v1]);
            Easy3DAnim_SetFrame(&param1->unk_38[param0->unk_02][v1], param0->unk_8C[v1]);
        }
    }

    Easy3DObject_Draw(&param0->unk_04);

    for (v1 = 0; v1 < 4; v1++) {
        if (param0->unk_7C[v1]) {
            Easy3DObject_RemoveAnim(&param0->unk_04, &param1->unk_38[param0->unk_02][v1]);
        }
    }

    NNS_G3dReleaseMdlSet(param1->unk_00[param0->unk_02].set);
}

static UnkStruct_ov70_022610B8 *ov70_02261AF0(UnkStruct_ov70_02260BB8 *param0)
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

static void ov70_02261B24(UnkStruct_ov70_02261BB4 *param0, NARC *param1, NNSFndAllocator *param2, const UnkStruct_ov70_02261418 *param3, u32 heapID)
{
    int v0, v1;

    for (v0 = 0; v0 < 18; v0++) {
        ov70_02261420(&param0->unk_00[v0], param1, param3->unk_00[v0], heapID);

        if ((v0 != 11) && (v0 != 12)) {
            ov66_02231668(param0->unk_00[v0].data);
        }

        for (v1 = 0; v1 < 3; v1++) {
            if (param3->unk_48[v0][v1] != param3->unk_00[v0]) {
                param0->unk_120[v0][v1] = LoadMemberFromOpenNARC(param1, param3->unk_48[v0][v1], 0, heapID, 0);
            } else {
                param0->unk_120[v0][v1] = NULL;
            }
        }
    }
}

static void ov70_02261BB4(UnkStruct_ov70_02261BB4 *param0, NNSFndAllocator *param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 18; v0++) {
        for (v1 = 0; v1 < 3; v1++) {
            if (param0->unk_120[v0][v1] != NULL) {
                Heap_FreeToHeap(param0->unk_120[v0][v1]);
                param0->unk_120[v0][v1] = NULL;
            }
        }

        ov70_0226146C(&param0->unk_00[v0]);
    }
}

static void ov70_02261C04(UnkStruct_ov70_02261BB4 *param0, UnkStruct_ov70_022610B8 *param1)
{
    int v0;

    if (param1->unk_00 == 0) {
        return;
    }

    if (ov70_0225C7A0(&param0->unk_00[param1->unk_02], &param1->unk_04) == 0) {
        return;
    }

    if (param1->unk_E0 == 1) {
        NNS_G3dMdlSetMdlAlphaAll(param0->unk_00[param1->unk_02].model, param1->unk_E1);
    }

    Easy3DObject_Draw(&param1->unk_04);

    if (param1->unk_E0 == 1) {
        NNS_G3dMdlSetMdlAlphaAll(param0->unk_00[param1->unk_02].model, param1->unk_E2);
    }
}

static void ov70_02261C60(UnkStruct_ov70_02260BB8 *param0, UnkStruct_ov70_022610B8 *param1)
{
    int v0;
    BOOL v1;
    UnkFuncPtr_ov70_02261C60 v2;

    for (v0 = 0; v0 < 3; v0++) {
        if (param1->unk_B8[v0]) {
            switch (param1->unk_BC[v0]) {
            case 0:
                ov70_02261474(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                Easy3DAnim_SetFrame(&param1->unk_7C[v0], param1->unk_C0[v0]);
                break;
            case 1:
                v1 = ov70_02261498(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                Easy3DAnim_SetFrame(&param1->unk_7C[v0], param1->unk_C0[v0]);

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
                Easy3DAnim_SetFrame(&param1->unk_7C[v0], param1->unk_C0[v0]);
                break;
            case 4:
                v1 = ov70_022614DC(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                Easy3DAnim_SetFrame(&param1->unk_7C[v0], param1->unk_C0[v0]);

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
                        param1->unk_CD[v0] = MTRNG_Next() % param1->unk_CC;
                        param1->unk_C0[v0] = 0;
                    }

                    Easy3DAnim_SetFrame(&param1->unk_7C[v0], param1->unk_C0[v0]);
                }
                break;
            case 6:
                if (param1->unk_CD[v0] > 0) {
                    param1->unk_CD[v0]--;
                } else {
                    ov70_02261474(&param1->unk_C0[v0], &param1->unk_7C[v0], param1->unk_DC);
                    Easy3DAnim_SetFrame(&param1->unk_7C[v0], param1->unk_C0[v0]);
                }
                break;
            case 2:
            default:
                break;
            }
        }
    }
}
