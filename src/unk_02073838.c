#include "unk_02073838.h"

#include <nitro.h>
#include <string.h>

#include "easy3d.h"
#include "fx_util.h"
#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02073838.h"

enum YA3DAAnimationFlags {
    ANIM_OWNS_SET = 1 << 0,
    ANIM_REACHED_END = 1 << 1,
};

static void LoadAnimFromSet(YA3DA_Animation *anim, void *animSet, u32 unused);
static void LoadAnimFromSet_NewAlloc(YA3DA_Animation *anim, void *animSet, u32 unused);
static void CreateAnimCopy(YA3DA_Animation *dest, YA3DA_Animation *src, u32 unused);
static void ZeroOutModel(YA3DA_Model *model);
static void LoadModelFromSet(YA3DA_Model *model, NNSG3dResFileHeader *modelSetHeader, u32 modelIndex);
static void BindModelTexture(YA3DA_Model *model);
static void FreeMdlSetHeader(YA3DA_Model *model);
static void UnloadModelTexture(YA3DA_Model *model);
static void BindAnimToModel(YA3DA_Animation *anim, const NNSG3dResMdl *model, u32 heapID);
static void InitG3DAnimObject(YA3DA_Animation *anim, const NNSG3dResMdl *model, const NNSG3dResTex *texture);
static void ZeroOutRenderObj(YA3DA_RenderObj *renderObj);
static void BindModelToRenderObj(YA3DA_RenderObj *renderObj, NNSG3dResMdl *model);
static void BindAnimToRenderObj(YA3DA_RenderObj *renderObj, NNSG3dAnmObj *anim);

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

static void ZeroOutModel(YA3DA_Model *model)
{
    memset(model, 0, sizeof(YA3DA_Model));
}

static void LoadModelFromSet(YA3DA_Model *dest, NNSG3dResFileHeader *modelSetHeader, u32 modelIndex)
{
    ZeroOutModel(dest);

    dest->modelSetHeader = modelSetHeader;
    dest->isTextureBound = FALSE;
    dest->modelSet = NNS_G3dGetMdlSet(modelSetHeader);
    dest->g3DModel = NNS_G3dGetMdlByIdx(dest->modelSet, modelIndex);
    dest->texture = NNS_G3dGetTex(modelSetHeader);
}

void YA3DA_LoadModelFromSet(YA3DA_Model *dest, u32 modelIdx, NARC *narc, u32 modelSetNarcIdx, u32 heapID, BOOL allocAtEnd)
{
    NNSG3dResFileHeader *modelSetHeader = LoadMemberFromOpenNARC(narc, modelSetNarcIdx, FALSE, heapID, allocAtEnd);
    LoadModelFromSet(dest, modelSetHeader, modelIdx);
}

static void BindModelTexture(YA3DA_Model *model)
{
    Easy3D_UploadTextureToVRAM(model->texture);
    NNS_G3dBindMdlSet(model->modelSet, model->texture);
    model->isTextureBound = TRUE;
}

static void BindModelTextureSysTaskCB(SysTask *sysTask, void *_model)
{
    YA3DA_Model *model = _model;

    BindModelTexture(model);
    SysTask_Done(sysTask);
}

void YA3DA_ScheduleBindModelTexture(YA3DA_Model *model)
{
    SysTask *sysTask = SysTask_ExecuteOnVBlank(BindModelTextureSysTaskCB, model, 0xffff);
    GF_ASSERT(sysTask != NULL);
}

static void FreeMdlSetHeader(YA3DA_Model *model)
{
    if (model->modelSetHeader) {
        Heap_Free(model->modelSetHeader);
    }
}

static void UnloadModelTexture(YA3DA_Model *model)
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

void YA3DA_FreeModel(YA3DA_Model *model)
{
    UnloadModelTexture(model);
    FreeMdlSetHeader(model);
    ZeroOutModel(model);
}

void YA3DA_ZeroOutAnimation(YA3DA_Animation *anim)
{
    memset(anim, 0, sizeof(YA3DA_Animation));
}

static void LoadAnimFromSet_NewAlloc(YA3DA_Animation *dest, void *animSet, u32 unused)
{
    LoadAnimFromSet(dest, animSet, unused);
    dest->flags |= ANIM_OWNS_SET;
}

void YA3DA_LoadFromAllocatedSet(YA3DA_Animation *dest, void *animSet, u32 unused)
{
    LoadAnimFromSet(dest, animSet, unused);
    dest->flags &= ~ANIM_OWNS_SET;
}

static void CreateAnimCopy(YA3DA_Animation *dest, YA3DA_Animation *src, u32 unused)
{
    void *v0 = src->animSet;
    YA3DA_LoadFromAllocatedSet(dest, v0, unused);
}

void YA3DA_LoadAnimFromOpenNARC(YA3DA_Animation *anim, u32 unused, NARC *narc, u32 animSetNarcIdx, u32 heapID, BOOL allocAtEnd)
{
    void *v0 = LoadMemberFromOpenNARC(narc, animSetNarcIdx, FALSE, heapID, allocAtEnd);
    LoadAnimFromSet_NewAlloc(anim, v0, unused);
}

static void LoadAnimFromSet(YA3DA_Animation *dest, void *animSet, u32 unused)
{
    YA3DA_ZeroOutAnimation(dest);

    dest->animSet = animSet;
    dest->g3DAnim = NNS_G3dGetAnmByIdx(dest->animSet, 0);
}

void YA3DA_FreeAnimationSet(YA3DA_Animation *anim)
{
    if (anim->flags & ANIM_OWNS_SET) {
        Heap_Free(anim->animSet);
        anim->flags &= ~ANIM_OWNS_SET;
    }

    anim->animSet = NULL;
    anim->g3DAnim = NULL;
}

static void BindAnimToModel(YA3DA_Animation *anim, const NNSG3dResMdl *model, u32 heapID)
{
    HeapExp_FndInitAllocator(&anim->allocator, heapID, 4);
    anim->animObj = NNS_G3dAllocAnmObj(&anim->allocator, anim->g3DAnim, model);

    GF_ASSERT(anim->animObj != NULL);
}

void YA3DA_BindModelToAnim(YA3DA_Animation *anim, const YA3DA_Model *model, u32 heapID)
{
    BindAnimToModel(anim, model->g3DModel, heapID);
}

static void InitG3DAnimObject(YA3DA_Animation *anim, const NNSG3dResMdl *model, const NNSG3dResTex *texture)
{
    NNS_G3dAnmObjInit(anim->animObj, anim->g3DAnim, model, texture);
}

void YA3DA_InitG3DAnimObject(YA3DA_Animation *anim, const YA3DA_Model *model)
{
    InitG3DAnimObject(anim, model->g3DModel, model->texture);
}

void YA3DA_ApplyAnimCopyToModel(YA3DA_Animation *dest, const YA3DA_Model *model, YA3DA_Animation *src, u32 unused, u32 heapID)
{
    CreateAnimCopy(dest, src, unused);
    YA3DA_BindModelToAnim(dest, model, heapID);
    YA3DA_InitG3DAnimObject(dest, model);
}

void YA3DA_FreeAnimObject(YA3DA_Animation *anim)
{
    if (anim->animObj) {
        NNS_G3dFreeAnmObj(&anim->allocator, anim->animObj);
        anim->animObj = NULL;
    }
}

void YA3DA_FreeAnimation(YA3DA_Animation *anim)
{
    YA3DA_FreeAnimObject(anim);
    YA3DA_FreeAnimationSet(anim);
    YA3DA_ZeroOutAnimation(anim);
}

BOOL YA3DA_UpdateAnim(YA3DA_Animation *anim, fx32 frameDelta, BOOL loop)
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

void YA3DA_SetAnimFrame(YA3DA_Animation *anim, fx32 frame)
{
    anim->currFrame = frame;
}

fx32 YA3DA_GetAnimFrame(const YA3DA_Animation *anim)
{
    return anim->currFrame;
}

fx32 YA3DA_GetAnimFrameCount(const YA3DA_Animation *anim)
{
    GF_ASSERT(anim->animObj != NULL);
    return NNS_G3dAnmObjGetNumFrame(anim->animObj);
}

BOOL YA3DA_HasAnimationReachedEnd(const YA3DA_Animation *anim)
{
    return (anim->flags & ANIM_REACHED_END) != 0;
}

static void ZeroOutRenderObj(YA3DA_RenderObj *renderObj)
{
    memset(renderObj, 0, sizeof(YA3DA_RenderObj));
}

static void BindModelToRenderObj(YA3DA_RenderObj *renderObj, NNSG3dResMdl *model)
{
    ZeroOutRenderObj(renderObj);
    NNS_G3dRenderObjInit(&renderObj->g3DRenderObj, model);
}

void YA3DA_CreateRenderObject(YA3DA_RenderObj *renderObj, YA3DA_Model *model)
{
    BindModelToRenderObj(renderObj, model->g3DModel);
}

static void BindAnimToRenderObj(YA3DA_RenderObj *renderObj, NNSG3dAnmObj *anim)
{
    NNS_G3dRenderObjAddAnmObj(&renderObj->g3DRenderObj, anim);
}

void YA3DA_BindAnimToRenderObj(YA3DA_RenderObj *renderObj, YA3DA_Animation *anim)
{
    BindAnimToRenderObj(renderObj, anim->animObj);
}

void YA3DA_CreateRenderObjectWithAnim(YA3DA_RenderObj *renderObj, YA3DA_Model *model, YA3DA_Animation *anim)
{
    YA3DA_CreateRenderObject(renderObj, model);
    YA3DA_BindAnimToRenderObj(renderObj, anim);
}

void YA3DA_DrawRenderObj(YA3DA_RenderObj *renderObj, const VecFx32 *pos, const VecFx32 *scale, const MtxFx33 *rot)
{
    Easy3D_DrawRenderObj(&renderObj->g3DRenderObj, pos, rot, scale);
}

void YA3DA_DrawRenderObjWithPos(YA3DA_RenderObj *renderObj, const VecFx32 *pos)
{
    YA3DA_DrawRenderObj(renderObj, pos, &sVecOnes, &sIdentity);
}

void YA3DA_DrawRenderObjRotationAngles(YA3DA_RenderObj *renderObj, const VecFx32 *pos, const VecFx32 *scale, const YA3DA_RotationAngles *rotAngles)
{
    MtxFx33 rotMatrix;

    MTX_Rot33Angles(&rotMatrix, rotAngles->alpha, rotAngles->beta, rotAngles->gamma);
    YA3DA_DrawRenderObj(renderObj, pos, scale, &rotMatrix);
}

void YA3DA_DrawRenderObjWithPosAndRotationAngles(YA3DA_RenderObj *renderObj, const VecFx32 *pos, const YA3DA_RotationAngles *rotAngles)
{
    MtxFx33 rotMatrix;

    MTX_Rot33Angles(&rotMatrix, rotAngles->alpha, rotAngles->beta, rotAngles->gamma);
    YA3DA_DrawRenderObj(renderObj, pos, &sVecOnes, &rotMatrix);
}

void YA3DA_DrawRenderObjSimple(YA3DA_RenderObj *renderObj, const VecFx32 *pos, const VecFx32 *scale, const MtxFx33 *rot)
{
    Easy3D_DrawRenderObjSimple(&renderObj->g3DRenderObj, pos, rot, scale);
}
