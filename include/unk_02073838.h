#ifndef POKEPLATINUM_UNK_02073838_H
#define POKEPLATINUM_UNK_02073838_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "narc.h"

typedef struct {
    u16 alpha;
    u16 beta;
    u16 gamma;
    u8 padding_06[2];
} YA3DA_RotationAngles;

typedef struct {
    BOOL isTextureBound;
    NNSG3dResFileHeader *modelSetHeader;
    NNSG3dResMdlSet *modelSet;
    NNSG3dResMdl *g3DModel;
    NNSG3dResTex *texture;
} YA3DA_Model;

typedef struct {
    u32 flags;
    fx32 currFrame;
    void *animSet;
    void *g3DAnim;
    NNSG3dAnmObj *animObj;
    NNSFndAllocator allocator;
} YA3DA_Animation;

typedef struct {
    NNSG3dRenderObj g3DRenderObj;
} YA3DA_RenderObj;

void YA3DA_LoadModelFromSet(YA3DA_Model *model, u32 modelIdx, NARC *narc, u32 modelSetNarcIdx, u32 heapID, BOOL allocAtEnd);
void YA3DA_ScheduleBindModelTexture(YA3DA_Model *model);
void YA3DA_FreeModel(YA3DA_Model *model);
void YA3DA_ZeroOutAnimation(YA3DA_Animation *anim);
void YA3DA_LoadFromAllocatedSet(YA3DA_Animation *anim, void *animSet, u32 unused);
void YA3DA_LoadAnimFromOpenNARC(YA3DA_Animation *anim, u32 unused, NARC *narc, u32 animSetNarcIdx, u32 heapID, BOOL allocAtEnd);
void YA3DA_FreeG3DAnimation(YA3DA_Animation *anim);
void YA3DA_BindAnimToModel(YA3DA_Animation *anim, const YA3DA_Model *model, u32 heapID);
void YA3DA_InitG3DAnimObject(YA3DA_Animation *anim, const YA3DA_Model *model);
void YA3DA_ApplyAnimCopyToModel(YA3DA_Animation *dest, const YA3DA_Model *model, YA3DA_Animation *src, u32 unused, u32 heapID);
void YA3DA_FreeAnimObject(YA3DA_Animation *anim);
void YA3DA_FreeAnimation(YA3DA_Animation *anim);
BOOL YA3DA_AdvanceAnim(YA3DA_Animation *anim, fx32 amount, BOOL loop);
void YA3DA_SetAnimFrame(YA3DA_Animation *anim, fx32 frame);
fx32 YA3DA_GetAnimFrame(const YA3DA_Animation *anim);
fx32 YA3DA_GetAnimFrameCount(const YA3DA_Animation *anim);
BOOL YA3DA_HasAnimationReachedEnd(const YA3DA_Animation *anim);
void YA3DA_BindModelToRenderObj(YA3DA_RenderObj *renderObj, YA3DA_Model *model);
void YA3DA_BindAnimToRenderObj(YA3DA_RenderObj *renderObj, YA3DA_Animation *anim);
void YA3DA_BindModelAndAnimToRenderObj(YA3DA_RenderObj *renderObj, YA3DA_Model *model, YA3DA_Animation *anim);
void YA3DA_DrawRenderObj(YA3DA_RenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const MtxFx33 *rotation);
void YA3DA_DrawRenderObjWithPos(YA3DA_RenderObj *renderObj, const VecFx32 *position);
void YA3DA_DrawRenderObjRotationAngles(YA3DA_RenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const YA3DA_RotationAngles *rotation);
void YA3DA_DrawRenderObjWithPosAndRotationAngles(YA3DA_RenderObj *renderObj, const VecFx32 *position, const YA3DA_RotationAngles *rotation);
void YA3DA_DrawRenderObjSimple(YA3DA_RenderObj *renderObj, const VecFx32 *position, const VecFx32 *scale, const MtxFx33 *rotation);

#endif // POKEPLATINUM_UNK_02073838_H
