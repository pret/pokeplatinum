#include <nitro.h>
#include <string.h>

#include "struct_decls/narc.h"
#include "struct_decls/struct_0201CD38_decl.h"

#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017248.h"
#include "struct_defs/struct_02017294.h"

#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "unk_020170BC.h"
#include "heap.h"
#include "unk_0201C970.h"

static void sub_020170F4(UnkStruct_0201CD38 * param0, void * param1);
static void sub_020173A0(UnkStruct_02017248 * param0, const UnkStruct_020170F4 * param1, void * param2, NNSFndAllocator * param3);
static void sub_020173CC(UnkStruct_020170F4 * param0);

void sub_020170BC (UnkStruct_020170F4 * param0, u32 param1, u32 param2, u32 param3)
{
    param0->unk_00 = sub_02006FE8(param1, param2, 0, param3, 0);
    sub_020173CC(param0);
}

void sub_020170D8 (UnkStruct_020170F4 * param0, NARC * param1, u32 param2, u32 param3)
{
    param0->unk_00 = sub_0200723C(param1, param2, 0, param3, 0);
    sub_020173CC(param0);
}

static void sub_020170F4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_020170F4 * v0 = param1;

    sub_0201CBCC(v0->unk_0C);
    sub_0201CBB0(v0->unk_00, v0->unk_0C);
    sub_0200DA58(param0);
}

void sub_02017110 (UnkStruct_020170F4 * param0)
{
    NNSG3dTexKey v0;
    NNSG3dTexKey v1;
    NNSG3dPlttKey v2;

    if (param0->unk_0C) {
        NNS_G3dTexReleaseTexKey(param0->unk_0C, &v0, &v1);
        NNS_GfdFreeTexVram(v0);
        NNS_GfdFreeTexVram(v1);

        v2 = NNS_G3dPlttReleasePlttKey(param0->unk_0C);
        NNS_GfdFreePlttVram(v2);
    }

    if (param0->unk_00) {
        Heap_FreeToHeap(param0->unk_00);
    }

    memset(param0, 0, sizeof(UnkStruct_020170F4));
}

void sub_02017164 (UnkStruct_02017248 * param0, const UnkStruct_020170F4 * param1, NARC * param2, u32 param3, u32 param4, NNSFndAllocator * param5)
{
    void * v0;

    v0 = sub_0200723C(param2, param3, 0, param4, 0);

    sub_020173A0(param0, param1, v0, param5);
    param0->unk_10 = 0;
}

void sub_02017190 (UnkStruct_02017248 * param0, const UnkStruct_020170F4 * param1, void * param2, NNSFndAllocator * param3)
{
    sub_020173A0(param0, param1, param2, param3);
    param0->unk_10 = 1;
}

void sub_020171A0 (UnkStruct_02017248 * param0, NNSFndAllocator * param1)
{
    if (param0->unk_00) {
        NNS_G3dFreeAnmObj(param1, param0->unk_08);

        if (param0->unk_10 == 0) {
            Heap_FreeToHeap(param0->unk_00);
        }
    }

    memset(param0, 0, sizeof(UnkStruct_02017248));
}

void sub_020171CC (UnkStruct_02017248 * param0, fx32 param1)
{
    fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->unk_08);

    if (param1 > 0) {
        param0->unk_0C = (param0->unk_0C + param1) % v0;
    } else {
        param0->unk_0C = param0->unk_0C + param1;

        if (param0->unk_0C < 0) {
            param0->unk_0C += v0;
        }
    }

    NNS_G3dAnmObjSetFrame(param0->unk_08, param0->unk_0C);
}

BOOL sub_02017204 (UnkStruct_02017248 * param0, fx32 param1)
{
    fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->unk_08);
    BOOL v1 = 0;

    if (param1 > 0) {
        if ((param0->unk_0C + param1) < v0) {
            param0->unk_0C += param1;
        } else {
            param0->unk_0C = v0;
            v1 = 1;
        }
    } else {
        if ((param0->unk_0C + param1) >= 0) {
            param0->unk_0C += param1;
        } else {
            param0->unk_0C = 0;
            v1 = 1;
        }
    }

    NNS_G3dAnmObjSetFrame(param0->unk_08, param0->unk_0C);
    return v1;
}

void sub_02017240 (UnkStruct_02017248 * param0, fx32 param1)
{
    param0->unk_0C = param1;
    NNS_G3dAnmObjSetFrame(param0->unk_08, param1);
}

fx32 sub_02017248 (const UnkStruct_02017248 * param0)
{
    return param0->unk_0C;
}

fx32 sub_0201724C (const UnkStruct_02017248 * param0)
{
    return NNS_G3dAnmObjGetNumFrame(param0->unk_08);
}

void sub_02017258 (UnkStruct_02017294 * param0, UnkStruct_020170F4 * param1)
{
    memset(param0, 0, sizeof(UnkStruct_02017294));
    NNS_G3dRenderObjInit(&param0->unk_00, param1->unk_08);

    param0->unk_6C = 1;
    param0->unk_60.x = FX32_ONE;
    param0->unk_60.y = FX32_ONE;
    param0->unk_60.z = FX32_ONE;
}

void sub_0201727C (UnkStruct_02017294 * param0, UnkStruct_02017248 * param1)
{
    NNS_G3dRenderObjAddAnmObj(&param0->unk_00, param1->unk_08);
}

void sub_02017288 (UnkStruct_02017294 * param0, UnkStruct_02017248 * param1)
{
    NNS_G3dRenderObjRemoveAnmObj(&param0->unk_00, param1->unk_08);
}

void sub_02017294 (UnkStruct_02017294 * param0)
{
    MtxFx33 v0;
    MtxFx33 v1;

    if (param0->unk_6C) {
        MTX_Identity33(&v0);
        MTX_RotX33(&v1, FX_SinIdx(param0->unk_70[0]), FX_CosIdx(param0->unk_70[0]));
        MTX_Concat33(&v1, &v0, &v0);
        MTX_RotZ33(&v1, FX_SinIdx(param0->unk_70[2]), FX_CosIdx(param0->unk_70[2]));
        MTX_Concat33(&v1, &v0, &v0);
        MTX_RotY33(&v1, FX_SinIdx(param0->unk_70[1]), FX_CosIdx(param0->unk_70[1]));
        MTX_Concat33(&v1, &v0, &v0);

        sub_0201CA74(&param0->unk_00, &param0->unk_54, &v0, &param0->unk_60);
    }
}

void sub_02017330 (UnkStruct_02017294 * param0, const MtxFx33 * param1)
{
    if (param0->unk_6C) {
        sub_0201CA74(&param0->unk_00, &param0->unk_54, (MtxFx33 *)param1, &param0->unk_60);
    }
}

void sub_02017348 (UnkStruct_02017294 * param0, BOOL param1)
{
    param0->unk_6C = param1;
}

BOOL sub_0201734C (const UnkStruct_02017294 * param0)
{
    return param0->unk_6C;
}

void sub_02017350 (UnkStruct_02017294 * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_54.x = param1;
    param0->unk_54.y = param2;
    param0->unk_54.z = param3;
}

void sub_02017358 (const UnkStruct_02017294 * param0, fx32 * param1, fx32 * param2, fx32 * param3)
{
    *param1 = param0->unk_54.x;
    *param2 = param0->unk_54.y;
    *param3 = param0->unk_54.z;
}

void sub_0201736C (UnkStruct_02017294 * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_60.x = param1;
    param0->unk_60.y = param2;
    param0->unk_60.z = param3;
}

void sub_02017374 (const UnkStruct_02017294 * param0, fx32 * param1, fx32 * param2, fx32 * param3)
{
    *param1 = param0->unk_60.x;
    *param2 = param0->unk_60.y;
    *param3 = param0->unk_60.z;
}

void sub_02017388 (UnkStruct_02017294 * param0, u16 param1, u32 param2)
{
    param0->unk_70[param2] = param1;
}

u16 sub_02017394 (const UnkStruct_02017294 * param0, u32 param1)
{
    return param0->unk_70[param1];
}

static void sub_020173A0 (UnkStruct_02017248 * param0, const UnkStruct_020170F4 * param1, void * param2, NNSFndAllocator * param3)
{
    param0->unk_00 = param2;
    param0->unk_04 = NNS_G3dGetAnmByIdx(param0->unk_00, 0);
    param0->unk_08 = NNS_G3dAllocAnmObj(param3, param0->unk_04, param1->unk_08);

    NNS_G3dAnmObjInit(param0->unk_08, param0->unk_04, param1->unk_08, param1->unk_0C);
}

static void sub_020173CC (UnkStruct_020170F4 * param0)
{
    GF_ASSERT(param0->unk_00);

    param0->unk_04 = NNS_G3dGetMdlSet(param0->unk_00);
    param0->unk_08 = NNS_G3dGetMdlByIdx(param0->unk_04, 0);
    param0->unk_0C = NNS_G3dGetTex(param0->unk_00);

    if (param0->unk_0C) {
        sub_0200DA3C(sub_020170F4, param0, 1024);
    }
}
