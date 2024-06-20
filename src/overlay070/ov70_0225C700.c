#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017294.h"
#include "overlay063/struct_ov63_0222CC3C.h"

#include "unk_02006E3C.h"
#include "unk_020170BC.h"
#include "heap.h"
#include "unk_0201C970.h"
#include "unk_0201CED8.h"
#include "unk_0202298C.h"
#include "overlay070/ov70_0225C700.h"

void ov70_0225C700 (const UnkStruct_ov63_0222CC3C * param0, VecFx32 * param1)
{
    param1->x = param0->unk_00 * (FX32_ONE);
    param1->z = param0->unk_02 * (FX32_ONE);
    param1->y = (FX32_CONST(0));
}

void ov70_0225C714 (const VecFx32 * param0, UnkStruct_ov63_0222CC3C * param1)
{
    param1->unk_00 = param0->x / (FX32_ONE);
    param1->unk_02 = param0->z / (FX32_ONE);
}

void ov70_0225C730 (void ** param0, NARC * param1, u32 param2, u32 param3)
{
    u32 v0;
    void * v1;
    NNSGfdTexKey v2;
    NNSGfdTexKey v3;
    NNSGfdPlttKey v4;
    NNSG3dResTex * v5;

    v1 = sub_0200723C(param1, param2, 0, param3, 1);

    {
        v5 = NNS_G3dGetTex(v1);
        Easy3D_UploadTextureToVRam(v5);
    }

    {
        NNS_G3dTexReleaseTexKey(v5, &v2, &v3);
        v4 = NNS_G3dPlttReleasePlttKey(v5);
    }

    {
        v0 = sub_02022F24(v1);
        *param0 = Heap_AllocFromHeap(param3, v0);
        memcpy(*param0, v1, v0);
    }

    {
        v5 = NNS_G3dGetTex(*param0);
        NNS_G3dTexSetTexKey(v5, v2, v3);
        NNS_G3dPlttSetPlttKey(v5, v4);
    }

    Heap_FreeToHeap(v1);
}

BOOL ov70_0225C7A0 (const UnkStruct_020170F4 * param0, const UnkStruct_02017294 * param1)
{
    VecFx32 v0;
    VecFx32 v1;
    MtxFx33 v2;
    MtxFx33 v3;
    u32 v4;
    u32 v5;
    u32 v6;

    sub_02017358(param1, &v0.x, &v0.y, &v0.z);
    sub_02017374(param1, &v1.x, &v1.y, &v1.z);

    v4 = sub_02017394(param1, 0);
    v5 = sub_02017394(param1, 1);
    v6 = sub_02017394(param1, 2);

    MTX_Identity33(&v2);
    MTX_RotX33(&v3, FX_SinIdx(v4), FX_CosIdx(v4));
    MTX_Concat33(&v3, &v2, &v2);
    MTX_RotZ33(&v3, FX_SinIdx(v6), FX_CosIdx(v6));
    MTX_Concat33(&v3, &v2, &v2);
    MTX_RotY33(&v3, FX_SinIdx(v5), FX_CosIdx(v5));
    MTX_Concat33(&v3, &v2, &v2);

    return sub_0201CED8(param0->unk_08, &v0, &v2, &v1);
}
