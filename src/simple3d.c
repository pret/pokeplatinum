#include "simple3d.h"

#include <nitro.h>
#include <string.h>

#include "easy3d.h"
#include "fx_util.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"

enum Simple3DAnimationFlags {
    ANIM_OWNS_SET = 1 << 0,
    ANIM_REACHED_END = 1 << 1,
};

static void LoadAnimFromSet(Simple3DAnimation *anim, void *animSet, u32 unused);
static void LoadAnimFromSet_NewAlloc(Simple3DAnimation *anim, void *animSet, u32 unused);
static void CreateAnimCopy(Simple3DAnimation *dest, Simple3DAnimation *src, u32 unused);
static void ZeroOutModel(Simple3DModel *model);
static void LoadModelFromSet(Simple3DModel *model, NNSG3dResFileHeader *modelSetHeader, u32 modelIndex);
static void BindModelTexture(Simple3DModel *model);
static void FreeMdlSetHeader(Simple3DModel *model);
static void UnloadModelTexture(Simple3DModel *model);
static void BindAnimToModel(Simple3DAnimation *anim, const NNSG3dResMdl *model, u32 heapID);
static void InitG3DAnimObject(Simple3DAnimation *anim, const NNSG3dResMdl *model, const NNSG3dResTex *texture);
static void ZeroOutRenderObj(Simple3DRenderObj *renderObj);
static void BindModelToRenderObj(Simple3DRenderObj *renderObj, NNSG3dResMdl *model);
static void BindAnimToRenderObj(Simple3DRenderObj *renderObj, NNSG3dAnmObj *anim);

static const VecFx32 sVecOnes = {
    FX32_ONE,
    FX32_ONE,
    FX32_ONE,
};

static const MtxFx33 sIdentity = {
    // clang-format off
    FX32_ONE, 0,        0,
    0,        FX32_ONE, 0,
    0,        0,        FX32_ONE,
    // clang-format on
};

static void ZeroOutModel(Simple3DModel *model)
{
    memset(model, 0, sizeof(Simple3DModel));
}

static void LoadModelFromSet(Simple3DModel *dest, NNSG3dResFileHeader *modelSetHeader, u32 modelIndex)
{
    ZeroOutModel(dest);

    dest->modelSetHeader = modelSetHeader;
    dest->isTextureBound = FALSE;
    dest->modelSet = NNS_G3dGetMdlSet(modelSetHeader);
    dest->g3DModel = NNS_G3dGetMdlByIdx(dest->modelSet, modelIndex);
    dest->texture = NNS_G3dGetTex(modelSetHeader);
}

void Simple3D_LoadModelFromSet(Simple3DModel *dest, u32 modelIdx, NARC *narc, u32 modelSetNarcIdx, u32 heapID, BOOL allocAtEnd)
{
    NNSG3dResFileHeader *modelSetHeader = LoadMemberFromOpenNARC(narc, modelSetNarcIdx, FALSE, heapID, allocAtEnd);
    LoadModelFromSet(dest, modelSetHeader, modelIdx);
}

static void BindModelTexture(Simple3DModel *model)
{
    Easy3D_UploadTextureToVRAM(model->texture);
    NNS_G3dBindMdlSet(model->modelSet, model->texture);
    model->isTextureBound = TRUE;
}

static void BindModelTextureSysTaskCB(SysTask *sysTask, void *_model)
{
    Simple3DModel *model = _model;

    BindModelTexture(model);
    SysTask_Done(sysTask);
}

void Simple3D_ScheduleBindModelTexture(Simple3DModel *model)
{
    SysTask *sysTask = SysTask_ExecuteOnVBlank(BindModelTextureSysTaskCB, model, 0xffff);
    GF_ASSERT(sysTask != NULL);
}

static void FreeMdlSetHeader(Simple3DModel *model)
{
    if (model->modelSetHeader) {
        Heap_Free(model->modelSetHeader);
    }
}

static void UnloadModelTexture(Simple3DModel *model)
{
    if (model->texture != NULL) {
        NNSG3dTexKey texKey;
        NNSG3dTexKey tex4x4Key;
        NNSG3dPlttKey plttKey;

        NNS_G3dTexReleaseTexKey(model->texture, &texKey, &tex4x4Key);
        NNS_GfdFreeTexVram(texKey);
        NNS_GfdFreeTexVram(tex4x4Key);

        plttKey = NNS_G3dPlttReleasePlttKey(model->texture);
        NNS_GfdFreePlttVram(plttKey);

        model->texture = NULL;
    }
}

void Simple3D_FreeModel(Simple3DModel *model)
{
    UnloadModelTexture(model);
    FreeMdlSetHeader(model);
    ZeroOutModel(model);
}

void Simple3D_ZeroOutAnimation(Simple3DAnimation *anim)
{
    memset(anim, 0, sizeof(Simple3DAnimation));
}

static void LoadAnimFromSet_NewAlloc(Simple3DAnimation *dest, void *animSet, u32 unused)
{
    LoadAnimFromSet(dest, animSet, unused);
    dest->flags |= ANIM_OWNS_SET;
}

void Simple3D_LoadFromAllocatedSet(Simple3DAnimation *dest, void *animSet, u32 unused)
{
    LoadAnimFromSet(dest, animSet, unused);
    dest->flags &= ~ANIM_OWNS_SET;
}

static void CreateAnimCopy(Simple3DAnimation *dest, Simple3DAnimation *src, u32 unused)
{
    void *v0 = src->animSet;
    Simple3D_LoadFromAllocatedSet(dest, v0, unused);
}

void Simple3D_LoadAnimFromOpenNARC(Simple3DAnimation *anim, u32 unused, NARC *narc, u32 animSetNarcIdx, u32 heapID, BOOL allocAtEnd)
{
    void *v0 = LoadMemberFromOpenNARC(narc, animSetNarcIdx, FALSE, heapID, allocAtEnd);
    LoadAnimFromSet_NewAlloc(anim, v0, unused);
}

static void LoadAnimFromSet(Simple3DAnimation *dest, void *animSet, u32 unused)
{
    Simple3D_ZeroOutAnimation(dest);

    dest->animSet = animSet;
    dest->g3DAnim = NNS_G3dGetAnmByIdx(dest->animSet, 0);
}

void Simple3D_FreeAnimationSet(Simple3DAnimation *anim)
{
    if (anim->flags & ANIM_OWNS_SET) {
        Heap_Free(anim->animSet);
        anim->flags &= ~ANIM_OWNS_SET;
    }

    anim->animSet = NULL;
    anim->g3DAnim = NULL;
}

static void BindAnimToModel(Simple3DAnimation *anim, const NNSG3dResMdl *model, u32 heapID)
{
    HeapExp_FndInitAllocator(&anim->allocator, heapID, 4);
    anim->animObj = NNS_G3dAllocAnmObj(&anim->allocator, anim->g3DAnim, model);

    GF_ASSERT(anim->animObj != NULL);
}

void Simple3D_BindModelToAnim(Simple3DAnimation *anim, const Simple3DModel *model, u32 heapID)
{
    BindAnimToModel(anim, model->g3DModel, heapID);
}

static void InitG3DAnimObject(Simple3DAnimation *anim, const NNSG3dResMdl *model, const NNSG3dResTex *texture)
{
    NNS_G3dAnmObjInit(anim->animObj, anim->g3DAnim, model, texture);
}

void Simple3D_InitG3DAnimObject(Simple3DAnimation *anim, const Simple3DModel *model)
{
    InitG3DAnimObject(anim, model->g3DModel, model->texture);
}

void Simple3D_ApplyAnimCopyToModel(Simple3DAnimation *dest, const Simple3DModel *model, Simple3DAnimation *src, u32 unused, u32 heapID)
{
    CreateAnimCopy(dest, src, unused);
    Simple3D_BindModelToAnim(dest, model, heapID);
    Simple3D_InitG3DAnimObject(dest, model);
}

void Simple3D_FreeAnimObject(Simple3DAnimation *anim)
{
    if (anim->animObj) {
        NNS_G3dFreeAnmObj(&anim->allocator, anim->animObj);
        anim->animObj = NULL;
    }
}

void Simple3D_FreeAnimation(Simple3DAnimation *anim)
{
    Simple3D_FreeAnimObject(anim);
    Simple3D_FreeAnimationSet(anim);
    Simple3D_ZeroOutAnimation(anim);
}

BOOL Simple3D_UpdateAnim(Simple3DAnimation *anim, fx32 frameDelta, BOOL loop)
{
    u32 reachedEnd = FALSE;
    fx32 animLength = NNS_G3dAnmObjGetNumFrame(anim->animObj);

    anim->currFrame += frameDelta;

    if (frameDelta > 0) {
        if (anim->currFrame >= animLength) {
            reachedEnd = TRUE;

            if (loop == TRUE) {
                anim->currFrame -= animLength;
            } else {
                anim->currFrame = animLength;
            }
        }
    } else {
        if (anim->currFrame <= 0) {
            reachedEnd = TRUE;

            if (loop == TRUE) {
                anim->currFrame += animLength;
            } else {
                anim->currFrame = 0;
            }
        }
    }

    NNS_G3dAnmObjSetFrame(anim->animObj, anim->currFrame);

    if (reachedEnd == TRUE) {
        anim->flags |= ANIM_REACHED_END;
    } else {
        anim->flags &= ~ANIM_REACHED_END;
    }

    return reachedEnd;
}

void Simple3D_SetAnimFrame(Simple3DAnimation *anim, fx32 frame)
{
    anim->currFrame = frame;
}

fx32 Simple3D_GetAnimFrame(const Simple3DAnimation *anim)
{
    return anim->currFrame;
}

fx32 Simple3D_GetAnimFrameCount(const Simple3DAnimation *anim)
{
    GF_ASSERT(anim->animObj != NULL);
    return NNS_G3dAnmObjGetNumFrame(anim->animObj);
}

BOOL Simple3D_HasAnimationReachedEnd(const Simple3DAnimation *anim)
{
    return (anim->flags & ANIM_REACHED_END) != 0;
}

static void ZeroOutRenderObj(Simple3DRenderObj *renderObj)
{
    memset(renderObj, 0, sizeof(Simple3DRenderObj));
}

static void BindModelToRenderObj(Simple3DRenderObj *renderObj, NNSG3dResMdl *model)
{
    ZeroOutRenderObj(renderObj);
    NNS_G3dRenderObjInit(&renderObj->g3DRenderObj, model);
}

void Simple3D_CreateRenderObject(Simple3DRenderObj *renderObj, Simple3DModel *model)
{
    BindModelToRenderObj(renderObj, model->g3DModel);
}

static void BindAnimToRenderObj(Simple3DRenderObj *renderObj, NNSG3dAnmObj *anim)
{
    NNS_G3dRenderObjAddAnmObj(&renderObj->g3DRenderObj, anim);
}

void Simple3D_BindAnimToRenderObj(Simple3DRenderObj *renderObj, Simple3DAnimation *anim)
{
    BindAnimToRenderObj(renderObj, anim->animObj);
}

void Simple3D_CreateRenderObjectWithAnim(Simple3DRenderObj *renderObj, Simple3DModel *model, Simple3DAnimation *anim)
{
    Simple3D_CreateRenderObject(renderObj, model);
    Simple3D_BindAnimToRenderObj(renderObj, anim);
}

void Simple3D_DrawRenderObj(Simple3DRenderObj *renderObj, const VecFx32 *pos, const VecFx32 *scale, const MtxFx33 *rot)
{
    Easy3D_DrawRenderObj(&renderObj->g3DRenderObj, pos, rot, scale);
}

void Simple3D_DrawRenderObjWithPos(Simple3DRenderObj *renderObj, const VecFx32 *pos)
{
    Simple3D_DrawRenderObj(renderObj, pos, &sVecOnes, &sIdentity);
}

void Simple3D_DrawRenderObjRotationAngles(Simple3DRenderObj *renderObj, const VecFx32 *pos, const VecFx32 *scale, const Simple3DRotationAngles *rotAngles)
{
    MtxFx33 rotMatrix;

    MTX_Rot33Angles(&rotMatrix, rotAngles->alpha, rotAngles->beta, rotAngles->gamma);
    Simple3D_DrawRenderObj(renderObj, pos, scale, &rotMatrix);
}

void Simple3D_DrawRenderObjWithPosAndRotationAngles(Simple3DRenderObj *renderObj, const VecFx32 *pos, const Simple3DRotationAngles *rotAngles)
{
    MtxFx33 rotMatrix;

    MTX_Rot33Angles(&rotMatrix, rotAngles->alpha, rotAngles->beta, rotAngles->gamma);
    Simple3D_DrawRenderObj(renderObj, pos, &sVecOnes, &rotMatrix);
}

void Simple3D_DrawRenderObjSimple(Simple3DRenderObj *renderObj, const VecFx32 *pos, const VecFx32 *scale, const MtxFx33 *rot)
{
    Easy3D_DrawRenderObjSimple(&renderObj->g3DRenderObj, pos, rot, scale);
}
