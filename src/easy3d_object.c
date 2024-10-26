#include "easy3d_object.h"

#include <nitro.h>
#include <string.h>

#include "easy3d.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static void Easy3DModel_BindTexture(SysTask *task, void *param);
static void Easy3DModel_LoadInternal(Easy3DModel *model);
static void Easy3DAnim_LoadInternal(Easy3DAnim *anim, const Easy3DModel *model, void *data, NNSFndAllocator *allocator);

void Easy3DModel_Load(Easy3DModel *model, u32 narcIndex, u32 memberIndex, u32 heapID)
{
    model->data = LoadMemberFromNARC(narcIndex, memberIndex, FALSE, heapID, 0);
    Easy3DModel_LoadInternal(model);
}

void Easy3DModel_LoadFrom(Easy3DModel *model, NARC *narc, u32 memberIndex, u32 heapID)
{
    model->data = LoadMemberFromOpenNARC(narc, memberIndex, FALSE, heapID, 0);
    Easy3DModel_LoadInternal(model);
}

static void Easy3DModel_BindTexture(SysTask *task, void *param)
{
    Easy3DModel *model = param;

    Easy3D_UploadTextureToVRAM(model->texture);
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
    void *data = LoadMemberFromOpenNARC(narc, memberIndex, FALSE, heapID, 0);

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

void Easy3DObject_Init(Easy3DObject *obj, Easy3DModel *model)
{
    memset(obj, 0, sizeof(Easy3DObject));
    NNS_G3dRenderObjInit(&obj->renderObj, model->model);

    obj->visible = TRUE;
    obj->scale.x = FX32_ONE;
    obj->scale.y = FX32_ONE;
    obj->scale.z = FX32_ONE;
}

void Easy3DObject_AddAnim(Easy3DObject *obj, Easy3DAnim *anim)
{
    NNS_G3dRenderObjAddAnmObj(&obj->renderObj, anim->animObj);
}

void Easy3DObject_RemoveAnim(Easy3DObject *obj, Easy3DAnim *anim)
{
    NNS_G3dRenderObjRemoveAnmObj(&obj->renderObj, anim->animObj);
}

void Easy3DObject_Draw(Easy3DObject *obj)
{
    MtxFx33 rotation;
    MtxFx33 temp;

    if (obj->visible) {
        MTX_Identity33(&rotation);
        MTX_RotX33(&temp, FX_SinIdx(obj->rotation[ROTATION_AXIS_X]), FX_CosIdx(obj->rotation[ROTATION_AXIS_X]));
        MTX_Concat33(&temp, &rotation, &rotation);
        MTX_RotZ33(&temp, FX_SinIdx(obj->rotation[ROTATION_AXIS_Z]), FX_CosIdx(obj->rotation[ROTATION_AXIS_Z]));
        MTX_Concat33(&temp, &rotation, &rotation);
        MTX_RotY33(&temp, FX_SinIdx(obj->rotation[ROTATION_AXIS_Y]), FX_CosIdx(obj->rotation[ROTATION_AXIS_Y]));
        MTX_Concat33(&temp, &rotation, &rotation);

        Easy3D_DrawRenderObj(&obj->renderObj, &obj->position, &rotation, &obj->scale);
    }
}

void Easy3DObject_DrawRotated(Easy3DObject *obj, const MtxFx33 *rotation)
{
    if (obj->visible) {
        Easy3D_DrawRenderObj(&obj->renderObj, &obj->position, (MtxFx33 *)rotation, &obj->scale);
    }
}

void Easy3DObject_SetVisibility(Easy3DObject *obj, BOOL visible)
{
    obj->visible = visible;
}

BOOL Easy3DObject_GetVisibility(const Easy3DObject *obj)
{
    return obj->visible;
}

void Easy3DObject_SetPosition(Easy3DObject *obj, fx32 x, fx32 y, fx32 z)
{
    obj->position.x = x;
    obj->position.y = y;
    obj->position.z = z;
}

void Easy3DObject_GetPosition(const Easy3DObject *obj, fx32 *outX, fx32 *outY, fx32 *outZ)
{
    *outX = obj->position.x;
    *outY = obj->position.y;
    *outZ = obj->position.z;
}

void Easy3DObject_SetScale(Easy3DObject *obj, fx32 x, fx32 y, fx32 z)
{
    obj->scale.x = x;
    obj->scale.y = y;
    obj->scale.z = z;
}

void Easy3DObject_GetScale(const Easy3DObject *obj, fx32 *outX, fx32 *outY, fx32 *outZ)
{
    *outX = obj->scale.x;
    *outY = obj->scale.y;
    *outZ = obj->scale.z;
}

void Easy3DObject_SetRotation(Easy3DObject *obj, u16 angle, enum RotationAxis axis)
{
    obj->rotation[axis] = angle;
}

u16 Easy3DObject_GetRotation(const Easy3DObject *obj, enum RotationAxis axis)
{
    return obj->rotation[axis];
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
