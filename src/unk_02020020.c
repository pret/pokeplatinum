#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "data_02100844.h"

#include "overlay115/struct_ov115_0226527C.h"

#include "heap.h"
#include "unk_0201E190.h"
#include "unk_02020020.h"

GXBufferMode Unk_02100844 = GX_BUFFERMODE_W;

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
} UnkStruct_020203AC_sub2;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
} UnkStruct_020203AC_sub1;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    BOOL unk_10;
    BOOL unk_14;
    BOOL unk_18;
    BOOL unk_1C;
    VecFx32 * unk_20;
} UnkStruct_02020304;

typedef struct UnkStruct_020203AC_t {
    UnkStruct_020203AC_sub1 unk_00;
    UnkStruct_020203AC_sub2 unk_14;
    fx32 unk_38;
    CameraAngle unk_3C;
    u8 unk_44;
    u16 unk_46;
    VecFx32 unk_48;
    const VecFx32 * unk_54;
    BOOL unk_58;
    BOOL unk_5C;
    BOOL unk_60;
    UnkStruct_02020304 * unk_64;
} UnkStruct_020203AC;

static UnkStruct_020203AC * Unk_021C0770 = NULL;

static void sub_02020020 (UnkStruct_020203AC * param0)
{
    u16 v0;

    v0 = -param0->unk_3C.x;

    param0->unk_14.unk_00.x = FX_Mul(FX_Mul(FX_SinIdx(param0->unk_3C.y), param0->unk_38), FX_CosIdx(param0->unk_3C.x));
    param0->unk_14.unk_00.z = FX_Mul(FX_Mul(FX_CosIdx(param0->unk_3C.y), param0->unk_38), FX_CosIdx(param0->unk_3C.x));
    param0->unk_14.unk_00.y = FX_Mul(FX_SinIdx(v0), param0->unk_38);

    VEC_Add(&param0->unk_14.unk_00, &param0->unk_14.unk_0C, &param0->unk_14.unk_00);
}

static void sub_02020100 (UnkStruct_020203AC * param0)
{
    u16 v0;

    v0 = -param0->unk_3C.x;

    param0->unk_14.unk_0C.x = -FX_Mul(FX_Mul(FX_SinIdx(param0->unk_3C.y), param0->unk_38), FX_CosIdx(param0->unk_3C.x));
    param0->unk_14.unk_0C.z = -FX_Mul(FX_Mul(FX_CosIdx(param0->unk_3C.y), param0->unk_38), FX_CosIdx(param0->unk_3C.x));
    param0->unk_14.unk_0C.y = -FX_Mul(FX_SinIdx(v0), param0->unk_38);

    VEC_Add(&param0->unk_14.unk_0C, &param0->unk_14.unk_00, &param0->unk_14.unk_0C);
}

static void sub_020201E4 (const u16 param0, UnkStruct_020203AC * param1)
{
    param1->unk_46 = param0;
    param1->unk_00.unk_00 = FX_SinIdx(param0);
    param1->unk_00.unk_04 = FX_CosIdx(param0);
    param1->unk_00.unk_08 = FX32_ONE * 4 / 3;
    param1->unk_00.unk_0C = FX32_ONE * 150;
    param1->unk_00.unk_10 = FX32_ONE * 900;
    param1->unk_14.unk_18.x = 0;
    param1->unk_14.unk_18.y = FX32_ONE;
    param1->unk_14.unk_18.z = 0;
    param1->unk_54 = NULL;
    param1->unk_58 = 0;
    param1->unk_5C = 0;
    param1->unk_60 = 0;
    param1->unk_64 = NULL;
}

static void sub_02020230 (UnkStruct_020203AC const * param0, VecFx32 * param1)
{
    if (param0->unk_58 == 0) {
        param1->x = 0;
    }

    if (param0->unk_5C == 0) {
        param1->y = 0;
    }

    if (param0->unk_60 == 0) {
        param1->z = 0;
    }
}

static void sub_02020250 (UnkStruct_020203AC const * param0, const VecFx32 * param1, VecFx32 * param2)
{
    int * v0;
    int * v1;

    if (param0->unk_64 == NULL) {
        (*param2) = (*param1);
    } else {
        v0 = &param0->unk_64->unk_04;
        v1 = &param0->unk_64->unk_08;

        if (!param0->unk_64->unk_10) {
            (*param2) = (*param1);

            if (*v0 == param0->unk_64->unk_0C) {
                param0->unk_64->unk_10 = 1;
            }
        } else {
            (*param2) = param0->unk_64->unk_20[(*v0)];
        }

        (*v0) = ((*v0) + 1) % param0->unk_64->unk_00;
        param0->unk_64->unk_20[(*v1)] = (*param1);
        (*v1) = ((*v1) + 1) % param0->unk_64->unk_00;

        if (!param0->unk_64->unk_14) {
            param2->x = param1->x;
        }

        if (!param0->unk_64->unk_18) {
            param2->y = param1->y;
        }

        if (!param0->unk_64->unk_1C) {
            param2->z = param1->z;
        }
    }
}

void sub_02020304 (const int param0, const int param1, const int param2, const int param3, UnkStruct_020203AC * param4)
{
    int v0;
    UnkStruct_02020304 * v1;

    if (param4->unk_54 == NULL) {
        return;
    }

    GF_ASSERT((param1 + 1 <= param0));

    v1 = Heap_AllocFromHeap(param3, sizeof(UnkStruct_02020304));
    v1->unk_20 = Heap_AllocFromHeap(param3, sizeof(VecFx32) * param0);

    for (v0 = 0; v0 < param0; v0++) {
        v1->unk_20[v0].x = 0;
        v1->unk_20[v0].y = 0;
        v1->unk_20[v0].z = 0;
    }

    v1->unk_00 = param0;
    v1->unk_04 = 0;
    v1->unk_08 = 0 + param1;
    v1->unk_0C = param1;
    v1->unk_10 = 0;
    v1->unk_14 = 0;
    v1->unk_18 = 0;
    v1->unk_1C = 0;

    if (param2 & 1) {
        v1->unk_14 = 1;
    }

    if (param2 & 2) {
        v1->unk_18 = 1;
    }

    if (param2 & 4) {
        v1->unk_1C = 1;
    }

    param4->unk_64 = v1;
}

void sub_02020390 (UnkStruct_020203AC * param0)
{
    if (param0->unk_64 != NULL) {
        Heap_FreeToHeap(param0->unk_64->unk_20);
        Heap_FreeToHeap(param0->unk_64);
        param0->unk_64 = NULL;
    }
}

UnkStruct_020203AC * sub_020203AC (const int param0)
{
    UnkStruct_020203AC * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_020203AC));
    return v0;
}

void sub_020203B8 (UnkStruct_020203AC * param0)
{
    Heap_FreeToHeap(param0);
}

void sub_020203C0 (UnkStruct_020203AC const * param0, UnkStruct_020203AC * param1)
{
    *param1 = (*param0);
}

void sub_020203D4 (UnkStruct_020203AC * param0)
{
    Unk_021C0770 = param0;
}

void sub_020203E0 (void)
{
    Unk_021C0770 = NULL;
}

void sub_020203EC (void)
{
    if (Unk_021C0770 == NULL) {
        return;
    }

    if (Unk_021C0770->unk_54 != NULL) {
        VecFx32 v0;
        VecFx32 v1;

        VEC_Subtract(Unk_021C0770->unk_54, &Unk_021C0770->unk_48, &v0);

        sub_02020230(Unk_021C0770, &v0);
        sub_02020250(Unk_021C0770, &v0, &v1);
        sub_02020990(&v1, Unk_021C0770);

        Unk_021C0770->unk_48 = *Unk_021C0770->unk_54;
    }

    NNS_G3dGlbLookAt(&Unk_021C0770->unk_14.unk_00, &Unk_021C0770->unk_14.unk_18, &Unk_021C0770->unk_14.unk_0C);
}

void sub_0202049C (void)
{
    if (Unk_021C0770 == NULL) {
        return;
    }

    if (Unk_021C0770->unk_54 != NULL) {
        VecFx32 v0;
        VecFx32 v1;

        VEC_Subtract(Unk_021C0770->unk_54, &Unk_021C0770->unk_48, &v0);

        sub_02020230(Unk_021C0770, &v0);
        sub_02020250(Unk_021C0770, &v0, &v1);
        sub_02020990(&v1, Unk_021C0770);

        Unk_021C0770->unk_48 = *Unk_021C0770->unk_54;

        {
            VecFx32 v2 = Unk_021C0770->unk_14.unk_00;
            VecFx32 v3 = Unk_021C0770->unk_14.unk_18;
            const VecFx32 * v4 = Unk_021C0770->unk_54;
            fx16 v5 = FX_CosIdx(Unk_021C0770->unk_3C.x);
            fx16 v6 = FX_SinIdx(Unk_021C0770->unk_3C.y);
            fx16 v7 = FX_CosIdx(Unk_021C0770->unk_3C.y);
            fx16 v8 = FX_SinIdx(Unk_021C0770->unk_3C.z);
            fx16 v9 = FX_CosIdx(Unk_021C0770->unk_3C.z);

            v2.z = FX_Mul(v7, Unk_021C0770->unk_38);
            v2.z = FX_Mul(v2.z, v5);
            v2.z += v4->z;
            v3.x += FX_Mul(v8, v7);
            v3.y += v9;
            v3.z += -FX_Mul(v8, v6);

            NNS_G3dGlbLookAt(&v2, &v3, v4);
        }
    } else {
        NNS_G3dGlbLookAt(&Unk_021C0770->unk_14.unk_00, &Unk_021C0770->unk_14.unk_18, &Unk_021C0770->unk_14.unk_0C);
    }
}

void sub_02020680 (const VecFx32 * param0, UnkStruct_020203AC * param1)
{
    param1->unk_14.unk_18 = *param0;
}

void sub_02020690 (const VecFx32 * param0, UnkStruct_020203AC * param1)
{
    param1->unk_54 = param0;
    param1->unk_48 = *param0;
    param1->unk_58 = 1;
    param1->unk_5C = 1;
    param1->unk_60 = 1;
}

void sub_020206B0 (UnkStruct_020203AC * param0)
{
    param0->unk_54 = NULL;
    param0->unk_58 = 0;
    param0->unk_5C = 0;
    param0->unk_60 = 0;
}

void sub_020206BC (const fx32 param0, const fx32 param1, UnkStruct_020203AC * param2)
{
    param2->unk_00.unk_0C = param0;
    param2->unk_00.unk_10 = param1;

    sub_02020854(param2->unk_44, param2);
}

void sub_020206D0 (const VecFx32 * param0, const fx32 param1, const CameraAngle * param2, const u16 param3, const u8 param4, const BOOL param5, UnkStruct_020203AC * param6)
{
    sub_020201E4(param3, param6);

    param6->unk_14.unk_0C = *param0;
    param6->unk_38 = param1;
    param6->unk_3C = *param2;

    sub_02020020(param6);
    sub_02020854(param4, param6);

    if (param5) {
        param6->unk_54 = param0;
        param6->unk_48 = *param0;
        param6->unk_58 = 1;
        param6->unk_5C = 1;
        param6->unk_60 = 1;
    }
}

void sub_02020738 (const VecFx32 * param0, const fx32 param1, const CameraAngle * param2, const u16 param3, const u8 param4, UnkStruct_020203AC * param5)
{
    sub_020201E4(param3, param5);

    param5->unk_14.unk_00 = *param0;
    param5->unk_38 = param1;
    param5->unk_3C = *param2;

    sub_02020100(param5);
    sub_02020854(param4, param5);
}

void sub_02020784 (const VecFx32 * param0, const VecFx32 * param1, const u16 param2, const u8 param3, const BOOL param4, UnkStruct_020203AC * param5)
{
    VecFx32 v0;

    sub_020201E4(param2, param5);

    param5->unk_14.unk_0C = *param0;
    param5->unk_14.unk_00 = *param1;
    VEC_Subtract(param1, param0, &v0);
    param5->unk_38 = VEC_Mag(&v0);

    {
        VecFx32 v1 = {0, 0, 0};
        VecFx32 v2 = {0, 0, 0};
        VecFx32 v3 = {0, 0, 0};
        VecFx32 v4;

        v4.x = 0;
        v4.y = 0;
        v4.z = FX32_ONE;

        v3 = v0;
        v3.y = 0;

        param5->unk_3C.y = sub_0201E1A0(&v4, &v3);

        v4.x = FX32_ONE;
        v4.y = 0;
        v4.z = 0;

        v3.x = v0.z;
        v3.z = v0.y;
        v3.y = 0;

        param5->unk_3C.x = sub_0201E1A0(&v4, &v3);
        param5->unk_3C.z = 0;
    }

    sub_02020854(param3, param5);

    if (param4) {
        param5->unk_54 = param0;
        param5->unk_48 = *param0;
        param5->unk_58 = 1;
        param5->unk_5C = 1;
        param5->unk_60 = 1;
    }
}

void sub_02020854 (const u8 param0, UnkStruct_020203AC * param1)
{
    if (param0 == 0) {
        NNS_G3dGlbPerspective(param1->unk_00.unk_00, param1->unk_00.unk_04, param1->unk_00.unk_08, param1->unk_00.unk_0C, param1->unk_00.unk_10);
        param1->unk_44 = 0;
        Unk_02100844 = GX_BUFFERMODE_Z;
    } else {
        fx32 v0, v1;

        v0 = FX_Mul(FX_Div(param1->unk_00.unk_00, param1->unk_00.unk_04), param1->unk_38);
        v1 = FX_Mul(v0, param1->unk_00.unk_08);

        NNS_G3dGlbOrtho(v0, -v0, -v1, v1, param1->unk_00.unk_0C, param1->unk_00.unk_10);

        param1->unk_44 = 1;
        Unk_02100844 = GX_BUFFERMODE_Z;
    }
}

void Camera_SetFOV (const u16 param0, UnkStruct_020203AC * param1)
{
    param1->unk_46 = param0;
    param1->unk_00.unk_00 = FX_SinIdx(param1->unk_46);
    param1->unk_00.unk_04 = FX_CosIdx(param1->unk_46);

    sub_02020854(param1->unk_44, param1);
}

void sub_0202094C (const u16 param0, UnkStruct_020203AC * param1)
{
    param1->unk_46 += param0;
    param1->unk_00.unk_00 = FX_SinIdx(param1->unk_46);
    param1->unk_00.unk_04 = FX_CosIdx(param1->unk_46);

    sub_02020854(param1->unk_44, param1);
}

void sub_02020990 (const VecFx32 * param0, UnkStruct_020203AC * param1)
{
    VEC_Add(&param1->unk_14.unk_00, param0, &param1->unk_14.unk_00);
    VEC_Add(&param1->unk_14.unk_0C, param0, &param1->unk_14.unk_0C);
}

void sub_020209B0 (const CameraAngle * param0, UnkStruct_020203AC * param1)
{
    param1->unk_3C = *param0;
    sub_02020100(param1);
}

void Camera_SetAngle (const CameraAngle * param0, UnkStruct_020203AC * param1)
{
    param1->unk_3C = *param0;
    sub_02020020(param1);
}

void sub_020209F8 (const CameraAngle * param0, UnkStruct_020203AC * param1)
{
    param1->unk_3C.x += param0->x;
    param1->unk_3C.y += param0->y;
    param1->unk_3C.z += param0->z;

    sub_02020100(param1);
}

void sub_02020A24 (const CameraAngle * param0, UnkStruct_020203AC * param1)
{
    param1->unk_3C.x += param0->x;
    param1->unk_3C.y += param0->y;
    param1->unk_3C.z += param0->z;

    sub_02020020(param1);
}

void Camera_SetDistance (const fx32 param0, UnkStruct_020203AC * param1)
{
    param1->unk_38 = param0;
    sub_02020020(param1);
}

void sub_02020A5C (const VecFx32 * param0, UnkStruct_020203AC * param1)
{
    param1->unk_14.unk_0C = (*param0);
    sub_02020020(param1);
}

void sub_02020A78 (const fx32 param0, UnkStruct_020203AC * param1)
{
    param1->unk_38 += param0;
    sub_02020020(param1);
}

u16 sub_02020A88 (UnkStruct_020203AC const * param0)
{
    return param0->unk_46;
}

fx32 Camera_GetDistance (UnkStruct_020203AC const * param0)
{
    return param0->unk_38;
}

CameraAngle sub_02020A94 (UnkStruct_020203AC const * param0)
{
    return param0->unk_3C;
}

VecFx32 sub_02020AAC (UnkStruct_020203AC const * param0)
{
    return param0->unk_14.unk_0C;
}

VecFx32 sub_02020ABC (UnkStruct_020203AC const * param0)
{
    return param0->unk_14.unk_00;
}

void sub_02020ACC (const VecFx32 * param0, UnkStruct_020203AC * param1)
{
    param1->unk_14.unk_0C = *param0;
}

void sub_02020ADC (const VecFx32 * param0, UnkStruct_020203AC * param1)
{
    param1->unk_14.unk_00 = *param0;
}
