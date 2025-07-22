#include "unk_02073838.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073974.h"
#include "struct_defs/struct_02073B50.h"

#include "overlay005/struct_ov5_02201C58.h"

#include "easy3d.h"
#include "fx_util.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static void sub_020739D8(UnkStruct_02073974 *param0, void *param1, u32 param2);

static const VecFx32 Unk_020F0544 = {
    FX32_ONE,
    FX32_ONE,
    FX32_ONE
};

static const MtxFx33 Unk_020F0550 = {
    FX32_ONE,
    0x0,
    0x0,
    0x0,
    FX32_ONE,
    0x0,
    0x0,
    0x0,
    FX32_ONE
};

void sub_02073838(UnkStruct_02073838 *param0) {
    memset(param0, 0, sizeof(UnkStruct_02073838));
}

void sub_02073848(UnkStruct_02073838 *param0, NNSG3dResFileHeader *param1, u32 param2) {
    sub_02073838(param0);

    param0->unk_04 = param1;
    param0->unk_00 = 0;
    param0->unk_08 = NNS_G3dGetMdlSet(param1);
    param0->unk_0C = NNS_G3dGetMdlByIdx(param0->unk_08, param2);
    param0->unk_10 = NNS_G3dGetTex(param1);
}

void sub_0207389C(UnkStruct_02073838 *param0, u32 param1, NARC *param2, u32 param3, u32 heapID, int param5) {
    NNSG3dResFileHeader *v0 = LoadMemberFromOpenNARC(param2, param3, 0, heapID, param5);
    sub_02073848(param0, v0, param1);
}

void sub_020738C0(UnkStruct_02073838 *param0) {
    Easy3D_UploadTextureToVRAM(param0->unk_10);
    NNS_G3dBindMdlSet(param0->unk_08, param0->unk_10);
    param0->unk_00 = 1;
}

static void sub_020738D8(SysTask *param0, void *param1) {
    UnkStruct_02073838 *v0 = param1;

    sub_020738C0(v0);
    SysTask_Done(param0);
}

void sub_020738EC(UnkStruct_02073838 *param0) {
    {
        SysTask *v0 = SysTask_ExecuteOnVBlank(sub_020738D8, param0, 0xffff);
        GF_ASSERT(v0 != NULL);
    }
}

void sub_0207390C(UnkStruct_02073838 *param0) {
    if (param0->unk_04) {
        Heap_Free(param0->unk_04);
    }
}

void sub_0207391C(UnkStruct_02073838 *param0) {
    if (param0->unk_10 != NULL) {
        NNSG3dTexKey v0;
        NNSG3dTexKey v1;
        NNSG3dPlttKey v2;

        NNS_G3dTexReleaseTexKey(param0->unk_10, &v0, &v1);
        NNS_GfdFreeTexVram(v0);
        NNS_GfdFreeTexVram(v1);

        v2 = NNS_G3dPlttReleasePlttKey(param0->unk_10);
        NNS_GfdFreePlttVram(v2);

        param0->unk_10 = NULL;
    }
}

void sub_0207395C(UnkStruct_02073838 *param0) {
    sub_0207391C(param0);
    sub_0207390C(param0);
    sub_02073838(param0);
}

void sub_02073974(UnkStruct_02073974 *param0) {
    memset(param0, 0, sizeof(UnkStruct_02073974));
}

void sub_02073980(UnkStruct_02073974 *param0, void *param1, u32 param2) {
    sub_020739D8(param0, param1, param2);
    param0->unk_00 |= (1 << 0);
}

void sub_02073994(UnkStruct_02073974 *param0, void *param1, u32 param2) {
    sub_020739D8(param0, param1, param2);
    param0->unk_00 &= (~(1 << 0));
}

void sub_020739A8(UnkStruct_02073974 *param0, UnkStruct_02073974 *param1, u32 param2) {
    void *v0 = param1->unk_08;
    sub_02073994(param0, v0, param2);
}

void sub_020739B4(UnkStruct_02073974 *param0, u32 param1, NARC *param2, u32 param3, u32 heapID, int param5) {
    void *v0 = LoadMemberFromOpenNARC(param2, param3, 0, heapID, param5);
    sub_02073980(param0, v0, param1);
}

static void sub_020739D8(UnkStruct_02073974 *param0, void *param1, u32 param2) {
    sub_02073974(param0);

    param0->unk_08 = param1;
    param0->unk_0C = NNS_G3dGetAnmByIdx(param0->unk_08, 0);
}

void sub_020739F0(UnkStruct_02073974 *param0) {
    if (param0->unk_00 & (1 << 0)) {
        Heap_Free(param0->unk_08);
        param0->unk_00 &= (~(1 << 0));
    }

    param0->unk_08 = NULL;
    param0->unk_0C = NULL;
}

void sub_02073A14(UnkStruct_02073974 *param0, const NNSG3dResMdl *param1, u32 heapID) {
    Heap_FndInitAllocatorForExpHeap(&param0->unk_14, heapID, 4);
    param0->unk_10 = NNS_G3dAllocAnmObj(&param0->unk_14, param0->unk_0C, param1);

    GF_ASSERT(param0->unk_10 != NULL);
}

void sub_02073A3C(UnkStruct_02073974 *param0, const UnkStruct_02073838 *param1, u32 heapID) {
    sub_02073A14(param0, param1->unk_0C, heapID);
}

void sub_02073A48(UnkStruct_02073974 *param0, const NNSG3dResMdl *param1, const NNSG3dResTex *param2) {
    NNS_G3dAnmObjInit(param0->unk_10, param0->unk_0C, param1, param2);
}

void sub_02073A5C(UnkStruct_02073974 *param0, const UnkStruct_02073838 *param1) {
    sub_02073A48(param0, param1->unk_0C, param1->unk_10);
}

void sub_02073A6C(UnkStruct_02073974 *param0, const UnkStruct_02073838 *param1, UnkStruct_02073974 *param2, u32 param3, u32 heapID) {
    sub_020739A8(param0, param2, param3);
    sub_02073A3C(param0, param1, heapID);
    sub_02073A5C(param0, param1);
}

void sub_02073A90(UnkStruct_02073974 *param0) {
    if (param0->unk_10) {
        NNS_G3dFreeAnmObj(&param0->unk_14, param0->unk_10);
        param0->unk_10 = NULL;
    }
}

void sub_02073AA8(UnkStruct_02073974 *param0) {
    sub_02073A90(param0);
    sub_020739F0(param0);
    sub_02073974(param0);
}

BOOL sub_02073AC0(UnkStruct_02073974 *param0, fx32 param1, int param2) {
    u32 v0 = 0;
    fx32 v1 = NNS_G3dAnmObjGetNumFrame(param0->unk_10);

    param0->unk_04 += param1;

    if (param1 > 0) {
        if (param0->unk_04 >= v1) {
            v0 = 1;

            if (param2 == 1) {
                param0->unk_04 -= v1;
            } else {
                param0->unk_04 = v1;
            }
        }
    } else {
        if (param0->unk_04 <= 0) {
            v0 = 1;

            if (param2 == 1) {
                param0->unk_04 += v1;
            } else {
                param0->unk_04 = 0;
            }
        }
    }

    NNS_G3dAnmObjSetFrame(param0->unk_10, param0->unk_04);

    if (v0 == 1) {
        param0->unk_00 |= (1 << 1);
    } else {
        param0->unk_00 &= (~(1 << 1));
    }

    return v0;
}

void sub_02073B20(UnkStruct_02073974 *param0, fx32 param1) {
    param0->unk_04 = param1;
}

fx32 sub_02073B24(const UnkStruct_02073974 *param0) {
    return param0->unk_04;
}

fx32 sub_02073B28(const UnkStruct_02073974 *param0) {
    GF_ASSERT(param0->unk_10 != NULL);
    {
        fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->unk_10);

        return v0;
    }
}

BOOL sub_02073B40(const UnkStruct_02073974 *param0) {
    if (param0->unk_00 & (1 << 1)) {
        return 1;
    }

    return 0;
}

void sub_02073B50(UnkStruct_02073B50 *param0) {
    memset(param0, 0, sizeof(UnkStruct_02073B50));
}

void sub_02073B5C(UnkStruct_02073B50 *param0, NNSG3dResMdl *param1) {
    sub_02073B50(param0);
    NNS_G3dRenderObjInit(&param0->unk_00, param1);
}

void sub_02073B70(UnkStruct_02073B50 *param0, UnkStruct_02073838 *param1) {
    sub_02073B5C(param0, param1->unk_0C);
}

void sub_02073B7C(UnkStruct_02073B50 *param0, NNSG3dAnmObj *param1) {
    NNS_G3dRenderObjAddAnmObj(&param0->unk_00, param1);
}

void sub_02073B84(UnkStruct_02073B50 *param0, UnkStruct_02073974 *param1) {
    sub_02073B7C(param0, param1->unk_10);
}

void sub_02073B90(UnkStruct_02073B50 *param0, UnkStruct_02073838 *param1, UnkStruct_02073974 *param2) {
    sub_02073B70(param0, param1);
    sub_02073B84(param0, param2);
}

void sub_02073BA4(UnkStruct_02073B50 *param0, const VecFx32 *param1, const VecFx32 *param2, const MtxFx33 *param3) {
    Easy3D_DrawRenderObj(&param0->unk_00, param1, param3, param2);
}

void sub_02073BB4(UnkStruct_02073B50 *param0, const VecFx32 *param1) {
    sub_02073BA4(param0, param1, &Unk_020F0544, &Unk_020F0550);
}

void sub_02073BC8(UnkStruct_02073B50 *param0, const VecFx32 *param1, const VecFx32 *param2, const UnkStruct_ov5_02201C58 *param3) {
    MtxFx33 v0;

    MTX_Rot33Angles(&v0, param3->unk_00, param3->unk_02, param3->unk_04);
    sub_02073BA4(param0, param1, param2, &v0);
}

void sub_02073BF0(UnkStruct_02073B50 *param0, const VecFx32 *param1, const UnkStruct_ov5_02201C58 *param2) {
    MtxFx33 v0;

    MTX_Rot33Angles(&v0, param2->unk_00, param2->unk_02, param2->unk_04);
    sub_02073BA4(param0, param1, &Unk_020F0544, &v0);
}

void sub_02073C1C(UnkStruct_02073B50 *param0, const VecFx32 *param1, const VecFx32 *param2, const MtxFx33 *param3) {
    Easy3D_DrawRenderObjSimple(&param0->unk_00, param1, param3, param2);
}
