#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "camera.h"
#include "overlay095/struct_ov95_0224773C_decl.h"
#include "overlay095/struct_ov95_02247958_decl.h"

#include "overlay115/camera_angle.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_0201C970.h"
#include "unk_0201CED8.h"
#include "camera.h"
#include "overlay095/ov95_022476F0.h"

struct UnkStruct_ov95_02247958_t {
    void * unk_00;
    NNSG3dRenderObj unk_04;
    NNSG3dResMdlSet * unk_58;
    NNSG3dResMdl * unk_5C;
    NNSG3dResTex * unk_60;
    BOOL unk_64;
    VecFx32 unk_68;
    VecFx32 unk_74;
    VecFx16 unk_80;
    int unk_88;
};

struct UnkStruct_ov95_0224773C_t {
    Camera * unk_00;
    VecFx32 unk_04;
    CameraAngle cameraAngle;
    UnkStruct_ov95_02247958 * unk_18;
    u32 unk_1C;
};

static void inline inline_ov95_022477B8(MtxFx33 * param0, const VecFx16 * param1);
static void ov95_022477B8(UnkStruct_ov95_02247958 * param0);
static void ov95_02247868(UnkStruct_ov95_02247958 * param0);
static void ov95_0224789C(UnkStruct_ov95_02247958 * param0);
static void ov95_02247AF0(UnkStruct_ov95_0224773C * param0, fx32 param1, fx32 param2, fx32 param3);
static void ov95_02247B5C(UnkStruct_ov95_0224773C * param0);

UnkStruct_ov95_0224773C * ov95_022476F0 (u32 param0, fx32 param1, fx32 param2, fx32 param3)
{
    UnkStruct_ov95_0224773C * v0 = Heap_AllocFromHeap(58, sizeof(UnkStruct_ov95_0224773C));

    if (v0) {
        u32 v1;

        ov95_02247AF0(v0, param1, param2, param3);

        v0->unk_18 = Heap_AllocFromHeap(58, sizeof(UnkStruct_ov95_02247958) * param0);
        v0->unk_1C = param0;

        for (v1 = 0; v1 < param0; v1++) {
            ov95_02247868(&v0->unk_18[v1]);
        }
    }

    return v0;
}

void ov95_0224773C (UnkStruct_ov95_0224773C * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_1C; v0++) {
        ov95_0224789C(&(param0->unk_18[v0]));
    }

    Heap_FreeToHeap(param0->unk_18);
    ov95_02247B5C(param0);
    Heap_FreeToHeap(param0);
}

void ov95_02247770 (UnkStruct_ov95_0224773C * param0)
{
    NNS_G3dGePushMtx();
    {
        int v0;

        sub_020203EC();

        for (v0 = 0; v0 < param0->unk_1C; v0++) {
            if (param0->unk_18[v0].unk_64) {
                ov95_022477B8(&(param0->unk_18[v0]));
            }
        }
    }

    NNS_G3dGePopMtx(1);
}

static void inline inline_ov95_022477B8 (MtxFx33 * param0, const VecFx16 * param1)
{
    MtxFx33 v0;

    MTX_Identity33(param0);
    MTX_RotX33(&v0, FX_SinIdx((u16)(param1->x)), FX_CosIdx((u16)(param1->x)));
    MTX_Concat33(&v0, param0, param0);
    MTX_RotY33(&v0, FX_SinIdx((u16)(param1->y)), FX_CosIdx((u16)(param1->y)));
    MTX_Concat33(&v0, param0, param0);
    MTX_RotZ33(&v0, FX_SinIdx((u16)(param1->z)), FX_CosIdx((u16)(param1->z)));
    MTX_Concat33(&v0, param0, param0);
}

static void ov95_022477B8 (UnkStruct_ov95_02247958 * param0)
{
    MtxFx33 v0;

    inline_ov95_022477B8(&v0, &(param0->unk_80));

    if (param0->unk_88 != 31) {
        NNS_G3dGlbPolygonAttr(0, 0, 0, 0, param0->unk_88, 0);
    }

    sub_0201CA74(&param0->unk_04, &param0->unk_68, &v0, &param0->unk_74);
}

static void ov95_02247868 (UnkStruct_ov95_02247958 * param0)
{
    param0->unk_64 = 0;
    param0->unk_00 = NULL;
    param0->unk_80.x = param0->unk_80.y = param0->unk_80.z = 0;
    param0->unk_74.x = param0->unk_74.y = param0->unk_74.z = FX32_ONE;
    param0->unk_68.x = param0->unk_68.y = param0->unk_68.z = 0;
}

static void ov95_0224789C (UnkStruct_ov95_02247958 * param0)
{
    if (param0->unk_00) {
        Heap_FreeToHeap(param0->unk_00);
        param0->unk_00 = NULL;
        param0->unk_64 = 0;
    }
}

UnkStruct_ov95_02247958 * ov95_022478B4 (UnkStruct_ov95_0224773C * param0, int param1, u32 param2, u32 param3, fx32 param4, fx32 param5, fx32 param6, BOOL param7)
{
    UnkStruct_ov95_02247958 * v0 = &param0->unk_18[param1];

    v0->unk_00 = sub_02006FE8(param2, param3, 0, 58, 1);
    DC_FlushRange(v0->unk_00, NARC_GetMemberSizeByIndexPair(param2, param3));

    if (v0->unk_00) {
        v0->unk_58 = NNS_G3dGetMdlSet(v0->unk_00);
        v0->unk_5C = NNS_G3dGetMdlByIdx(v0->unk_58, 0);
        v0->unk_60 = NNS_G3dGetTex(v0->unk_00);

        sub_0201CBCC(v0->unk_60);
        sub_0201CBB0(v0->unk_00, v0->unk_60);

        NNS_G3dRenderObjInit(&v0->unk_04, v0->unk_5C);

        v0->unk_68.x = param4;
        v0->unk_68.y = param5;
        v0->unk_68.z = param6;
        v0->unk_88 = 31;
        v0->unk_64 = param7;
    }

    return v0;
}

void ov95_02247958 (const UnkStruct_ov95_02247958 * param0, VecFx32 * param1)
{
    *param1 = param0->unk_68;
}

void ov95_02247968 (UnkStruct_ov95_02247958 * param0, const VecFx32 * param1)
{
    param0->unk_68 = *param1;
}

void ov95_02247978 (const UnkStruct_ov95_02247958 * param0, VecFx16 * param1)
{
    *param1 = param0->unk_80;
}

void ov95_02247990 (UnkStruct_ov95_02247958 * param0, const VecFx16 * param1)
{
    param0->unk_80 = *param1;
}

void ov95_022479A8 (UnkStruct_ov95_02247958 * param0, BOOL param1)
{
    param0->unk_64 = param1;
}

void ov95_022479AC (UnkStruct_ov95_02247958 * param0, int param1)
{
    param0->unk_88 = param1;

    if (param1 != 31) {
        NNS_G3dMdlUseGlbAlpha(param0->unk_5C);
    } else {
        NNS_G3dMdlUseMdlAlpha(param0->unk_5C);
    }
}

void ov95_022479D4 (UnkStruct_ov95_02247958 * param0, fx32 param1)
{
    param0->unk_74.x = param1;
    param0->unk_74.y = param1;
    param0->unk_74.z = param1;
}

BOOL ov95_022479DC (UnkStruct_ov95_02247958 * param0)
{
    MtxFx33 v0;
    BOOL v1;

    inline_ov95_022477B8(&v0, &(param0->unk_80));

    NNS_G3dGePushMtx();

    sub_020203EC();
    v1 = sub_0201CED8(param0->unk_5C, &param0->unk_68, &v0, &param0->unk_74);

    NNS_G3dGePopMtx(1);

    return v1;
}

void ov95_02247A90 (UnkStruct_ov95_0224773C * param0, VecFx32 * param1)
{
    *param1 = sub_02020ABC(param0->unk_00);
}

void ov95_02247AB0 (UnkStruct_ov95_0224773C * param0, const CameraAngle * cameraAngle)
{
    Camera_SetAngle(cameraAngle, param0->unk_00);
}

void ov95_02247AC0 (UnkStruct_ov95_0224773C * param0, const CameraAngle * cameraAngle)
{
    sub_020209F8(cameraAngle, param0->unk_00);
}

void ov95_02247AD0 (UnkStruct_ov95_0224773C * param0, u8 param1)
{
    sub_02020854(param1, param0->unk_00);
}

void ov95_02247AE0 (UnkStruct_ov95_0224773C * param0, u16 param1)
{
    Camera_SetFOV(param1, param0->unk_00);
}

static void ov95_02247AF0 (UnkStruct_ov95_0224773C * param0, fx32 param1, fx32 param2, fx32 param3)
{
    CameraAngle v0;
    VecFx32 v1;

    param0->unk_00 = Camera_Alloc(58);
    param0->unk_04.x = param1;
    param0->unk_04.y = param2;
    param0->unk_04.z = param3;
    param0->cameraAngle.x = ((0 * 0xffff) / 360);
    param0->cameraAngle.y = ((0 * 0xffff) / 360);
    param0->cameraAngle.z = ((0 * 0xffff) / 360);

    sub_020206D0(&(param0->unk_04), 1228800, &(param0->cameraAngle), 4004, 0, 1, param0->unk_00);

    v1.x = 0;
    v1.y = FX32_ONE;
    v1.z = 0;

    sub_02020680(&v1, param0->unk_00);
    Camera_SetAsActive(param0->unk_00);
    sub_020206BC((0 << FX32_SHIFT), (1000 << FX32_SHIFT), param0->unk_00);
}

static void ov95_02247B5C (UnkStruct_ov95_0224773C * param0)
{
    Camera_ClearActive();
    Camera_Delete(param0->unk_00);
}
