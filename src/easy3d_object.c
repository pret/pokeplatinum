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
static void Easy3DModel_LoadInternal(Easy3DModel *model);
static void Easy3DAnim_LoadInternal(Easy3DAnim *anim, const Easy3DModel *model, void *data, NNSFndAllocator *allocator);

void Easy3DModel_Load(Easy3DModel *model, u32 narcIndex, u32 memberIndex, u32 heapID)
{
    model->data = sub_02006FE8(narcIndex, memberIndex, FALSE, heapID, 0);
    Easy3DModel_LoadInternal(model);
}

void Easy3DModel_LoadFrom(Easy3DModel *model, NARC *narc, u32 memberIndex, u32 heapID)
{
    model->data = sub_0200723C(narc, memberIndex, FALSE, heapID, 0);
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

void Easy3DAnim_LoadFrom(Easy3DAnim *anim, const Easy3DModel *model, NARC *narc, u32 memberIndex, u32 heapID, NNSFndAllocator *allocator)
{
    void *data = sub_0200723C(narc, memberIndex, FALSE, heapID, 0);

    Easy3DAnim_LoadInternal(anim, model, data, allocator);
    anim->dataBorrowed = FALSE;
}

void Easy3DAnim_LoadFromData(Easy3DAnim *anim, const Easy3DModel *model, void *data, NNSFndAllocator *allocator)
{
    Easy3DAnim_LoadInternal(anim, model, data, allocator);
    anim->dataBorrowed = TRUE;
}

void Easy3DAnim_Release(Easy3DAnim *anim, NNSFndAllocator *allocator)
{
    if (anim->data) {
        NNS_G3dFreeAnmObj(allocator, anim->animObj);

        if (anim->dataBorrowed == FALSE) {
            Heap_FreeToHeap(anim->data);
        }
    }

    memset(anim, 0, sizeof(Easy3DAnim));
}

void Easy3DAnim_UpdateLooped(Easy3DAnim *anim, fx32 frameDelta)
{
    fx32 frameCount = NNS_G3dAnmObjGetNumFrame(anim->animObj);

    if (frameDelta > 0) {
        anim->frame = (anim->frame + frameDelta) % frameCount;
    } else {
        anim->frame = anim->frame + frameDelta;

        if (anim->frame < 0) {
            anim->frame += frameCount;
        }
    }

    NNS_G3dAnmObjSetFrame(anim->animObj, anim->frame);
}

BOOL Easy3DAnim_Update(Easy3DAnim *anim, fx32 frameDelta)
{
    fx32 frameCount = NNS_G3dAnmObjGetNumFrame(anim->animObj);
    BOOL finished = FALSE;

    if (frameDelta > 0) {
        if (anim->frame + frameDelta < frameCount) {
            anim->frame += frameDelta;
        } else {
            anim->frame = frameCount;
            finished = TRUE;
        }
    } else {
        if (anim->frame + frameDelta >= 0) {
            anim->frame += frameDelta;
        } else {
            anim->frame = 0;
            finished = TRUE;
        }
    }

    NNS_G3dAnmObjSetFrame(anim->animObj, anim->frame);
    return finished;
}

void Easy3DAnim_SetFrame(Easy3DAnim *anim, fx32 frame)
{
    anim->frame = frame;
    NNS_G3dAnmObjSetFrame(anim->animObj, frame);
}

fx32 Easy3DAnim_GetFrame(const Easy3DAnim *anim)
{
    return anim->frame;
}

fx32 Easy3DAnim_GetFrameCount(const Easy3DAnim *anim)
{
    return NNS_G3dAnmObjGetNumFrame(anim->animObj);
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
    NNS_G3dRenderObjAddAnmObj(&param0->unk_00, param1->animObj);
}

void sub_02017288 (Easy3DObject * param0, Easy3DAnim * param1)
{
    NNS_G3dRenderObjRemoveAnmObj(&param0->unk_00, param1->animObj);
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

static void Easy3DAnim_LoadInternal(Easy3DAnim *anim, const Easy3DModel *model, void *data, NNSFndAllocator *allocator)
{
    anim->data = data;
    anim->anim = NNS_G3dGetAnmByIdx(anim->data, 0);
    anim->animObj = NNS_G3dAllocAnmObj(allocator, anim->anim, model->model);

    NNS_G3dAnmObjInit(anim->animObj, anim->anim, model->model, model->texture);
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
