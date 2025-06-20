#include "overlay070/ov70_0225C700.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/struct_ov63_0222CC3C.h"

#include "easy3d.h"
#include "easy3d_object.h"
#include "gfx_box_test.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "resource_collection.h"

void ov70_0225C700(const UnkStruct_ov63_0222CC3C *param0, VecFx32 *param1)
{
    param1->x = param0->unk_00 * (FX32_ONE);
    param1->z = param0->unk_02 * (FX32_ONE);
    param1->y = (FX32_CONST(0));
}

void ov70_0225C714(const VecFx32 *param0, UnkStruct_ov63_0222CC3C *param1)
{
    param1->unk_00 = param0->x / (FX32_ONE);
    param1->unk_02 = param0->z / (FX32_ONE);
}

void ov70_0225C730(void **param0, NARC *param1, u32 param2, u32 heapID)
{
    u32 v0;
    void *v1;
    NNSGfdTexKey v2;
    NNSGfdTexKey v3;
    NNSGfdPlttKey v4;
    NNSG3dResTex *v5;

    v1 = LoadMemberFromOpenNARC(param1, param2, 0, heapID, 1);

    {
        v5 = NNS_G3dGetTex(v1);
        Easy3D_UploadTextureToVRAM(v5);
    }

    {
        NNS_G3dTexReleaseTexKey(v5, &v2, &v3);
        v4 = NNS_G3dPlttReleasePlttKey(v5);
    }

    {
        v0 = Utility_GetStrippedTextureResourceSize(v1);
        *param0 = Heap_AllocFromHeap(heapID, v0);
        memcpy(*param0, v1, v0);
    }

    {
        v5 = NNS_G3dGetTex(*param0);
        NNS_G3dTexSetTexKey(v5, v2, v3);
        NNS_G3dPlttSetPlttKey(v5, v4);
    }

    Heap_FreeToHeap(v1);
}

BOOL ov70_0225C7A0(const Easy3DModel *param0, const Easy3DObject *param1)
{
    VecFx32 v0;
    VecFx32 v1;
    MtxFx33 v2;
    MtxFx33 v3;
    u32 v4;
    u32 v5;
    u32 v6;

    Easy3DObject_GetPosition(param1, &v0.x, &v0.y, &v0.z);
    Easy3DObject_GetScale(param1, &v1.x, &v1.y, &v1.z);

    v4 = Easy3DObject_GetRotation(param1, 0);
    v5 = Easy3DObject_GetRotation(param1, 1);
    v6 = Easy3DObject_GetRotation(param1, 2);

    MTX_Identity33(&v2);
    MTX_RotX33(&v3, FX_SinIdx(v4), FX_CosIdx(v4));
    MTX_Concat33(&v3, &v2, &v2);
    MTX_RotZ33(&v3, FX_SinIdx(v6), FX_CosIdx(v6));
    MTX_Concat33(&v3, &v2, &v2);
    MTX_RotY33(&v3, FX_SinIdx(v5), FX_CosIdx(v5));
    MTX_Concat33(&v3, &v2, &v2);

    return GFXBoxTest_IsModelInView(param0->model, &v0, &v2, &v1);
}
