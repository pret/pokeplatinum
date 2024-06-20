#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "sys_task_manager.h"

#include "unk_02006E3C.h"
#include "sys_task.h"
#include "easy3d_object.h"
#include "heap.h"
#include "easy3d.h"

static void Easy3DModel_BindTexture(SysTask *task, void *param);
static void sub_020173A0(Easy3DAnim * param0, const Easy3DModel * param1, void * param2, NNSFndAllocator * param3);
static void Easy3DModel_LoadInternal(Easy3DModel *model);

void Easy3DModel_Load(Easy3DModel *model, u32 narcIndex, u32 memberIndex, u32 heapID)
{
    model->data = sub_02006FE8(narcIndex, memberIndex, 0, heapID, 0);
    Easy3DModel_LoadInternal(model);
}

void Easy3DModel_LoadFrom(Easy3DModel *model, NARC *narc, u32 memberIndex, u32 heapID)
{
    model->data = sub_0200723C(narc, memberIndex, 0, heapID, 0);
    Easy3DModel_LoadInternal(model);
}

static void Easy3DModel_BindTexture(SysTask *task, void *param)
{
    Easy3DModel *model = param;

    Easy3D_UploadTextureToVRam(model->texture);
    Easy3D_BindTextureToResource(model->data, model->texture);
    SysTask_Done(task);
}

void Easy3DModel_Release(Easy3DModel *model)
{
    NNSG3dTexKey texKey;
    NNSG3dTexKey tex4x4Key;
    NNSG3dPlttKey paletteKey;

    if (model->texture) {
        NNS_G3dTexReleaseTexKey(model->texture, &texKey, &tex4x4Key);
        NNS_GfdFreeTexVram(texKey);
        NNS_GfdFreeTexVram(tex4x4Key);

        paletteKey = NNS_G3dPlttReleasePlttKey(model->texture);
        NNS_GfdFreePlttVram(paletteKey);
    }

    if (model->data) {
        Heap_FreeToHeap(model->data);
    }

    memset(model, 0, sizeof(Easy3DModel));
}

void sub_02017164 (Easy3DAnim * param0, const Easy3DModel * param1, NARC * param2, u32 param3, u32 param4, NNSFndAllocator * param5)
{
    void * v0;

    v0 = sub_0200723C(param2, param3, 0, param4, 0);

    sub_020173A0(param0, param1, v0, param5);
    param0->unk_10 = 0;
}

void sub_02017190 (Easy3DAnim * param0, const Easy3DModel * param1, void * param2, NNSFndAllocator * param3)
{
    sub_020173A0(param0, param1, param2, param3);
    param0->unk_10 = 1;
}

void sub_020171A0 (Easy3DAnim * param0, NNSFndAllocator * param1)
{
    if (param0->unk_00) {
        NNS_G3dFreeAnmObj(param1, param0->unk_08);

        if (param0->unk_10 == 0) {
            Heap_FreeToHeap(param0->unk_00);
        }
    }

    memset(param0, 0, sizeof(Easy3DAnim));
}

void sub_020171CC (Easy3DAnim * param0, fx32 param1)
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

BOOL sub_02017204 (Easy3DAnim * param0, fx32 param1)
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

void sub_02017240 (Easy3DAnim * param0, fx32 param1)
{
    param0->unk_0C = param1;
    NNS_G3dAnmObjSetFrame(param0->unk_08, param1);
}

fx32 sub_02017248 (const Easy3DAnim * param0)
{
    return param0->unk_0C;
}

fx32 sub_0201724C (const Easy3DAnim * param0)
{
    return NNS_G3dAnmObjGetNumFrame(param0->unk_08);
}

void sub_02017258 (Easy3DObject * param0, Easy3DModel * param1)
{
    memset(param0, 0, sizeof(Easy3DObject));
    NNS_G3dRenderObjInit(&param0->unk_00, param1->model);

    param0->unk_6C = 1;
    param0->unk_60.x = FX32_ONE;
    param0->unk_60.y = FX32_ONE;
    param0->unk_60.z = FX32_ONE;
}

void sub_0201727C (Easy3DObject * param0, Easy3DAnim * param1)
{
    NNS_G3dRenderObjAddAnmObj(&param0->unk_00, param1->unk_08);
}

void sub_02017288 (Easy3DObject * param0, Easy3DAnim * param1)
{
    NNS_G3dRenderObjRemoveAnmObj(&param0->unk_00, param1->unk_08);
}

void sub_02017294 (Easy3DObject * param0)
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

        Easy3D_DrawRenderObj(&param0->unk_00, &param0->unk_54, &v0, &param0->unk_60);
    }
}

void sub_02017330 (Easy3DObject * param0, const MtxFx33 * param1)
{
    if (param0->unk_6C) {
        Easy3D_DrawRenderObj(&param0->unk_00, &param0->unk_54, (MtxFx33 *)param1, &param0->unk_60);
    }
}

void sub_02017348 (Easy3DObject * param0, BOOL param1)
{
    param0->unk_6C = param1;
}

BOOL sub_0201734C (const Easy3DObject * param0)
{
    return param0->unk_6C;
}

void sub_02017350 (Easy3DObject * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_54.x = param1;
    param0->unk_54.y = param2;
    param0->unk_54.z = param3;
}

void sub_02017358 (const Easy3DObject * param0, fx32 * param1, fx32 * param2, fx32 * param3)
{
    *param1 = param0->unk_54.x;
    *param2 = param0->unk_54.y;
    *param3 = param0->unk_54.z;
}

void sub_0201736C (Easy3DObject * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_60.x = param1;
    param0->unk_60.y = param2;
    param0->unk_60.z = param3;
}

void sub_02017374 (const Easy3DObject * param0, fx32 * param1, fx32 * param2, fx32 * param3)
{
    *param1 = param0->unk_60.x;
    *param2 = param0->unk_60.y;
    *param3 = param0->unk_60.z;
}

void sub_02017388 (Easy3DObject * param0, u16 param1, u32 param2)
{
    param0->unk_70[param2] = param1;
}

u16 sub_02017394 (const Easy3DObject * param0, u32 param1)
{
    return param0->unk_70[param1];
}

static void sub_020173A0 (Easy3DAnim * param0, const Easy3DModel * param1, void * param2, NNSFndAllocator * param3)
{
    param0->unk_00 = param2;
    param0->unk_04 = NNS_G3dGetAnmByIdx(param0->unk_00, 0);
    param0->unk_08 = NNS_G3dAllocAnmObj(param3, param0->unk_04, param1->model);

    NNS_G3dAnmObjInit(param0->unk_08, param0->unk_04, param1->model, param1->texture);
}

static void Easy3DModel_LoadInternal(Easy3DModel *model)
{
    GF_ASSERT(model->data);

    model->set = NNS_G3dGetMdlSet(model->data);
    model->model = NNS_G3dGetMdlByIdx(model->set, 0);
    model->texture = NNS_G3dGetTex(model->data);

    if (model->texture) {
        SysTask_ExecuteAfterVBlank(Easy3DModel_BindTexture, model, 1024);
    }
}
