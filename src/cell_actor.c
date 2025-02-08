#include "cell_actor.h"

#include "nitro/gx/g2_oam.h"
#include <nitro.h>
#include <string.h>

#include "nnsys/g2d/g2d_Image.h"
#include "nnsys/g2d/g2d_RendererCore.h"

#include "heap.h"
#include "system.h"

typedef void (*CellActorDrawFunc)(const CellActorCollection *, CellActor *);
typedef void (*CellActorAnimUpdateFunc)(CellActor *);

static void CellActorCollection_Reset(CellActorCollection *collection);
static enum CellAnimType CellActorResourceData_GetCellType(const CellActorResourceData *resourceData);
static void CellActor_SetCellBank(const NNSG2dCellDataBank *cellBank, CellActor *actor);
static void CellActor_SetCellAnimBank(const NNSG2dCellAnimBankData *cellAnimBank, CellActor *actor);
static void CellActor_SetMultiCellBank(const NNSG2dMultiCellDataBank *multiCellBank, CellActor *actor);
static void CellActor_SetMultiCellAnimBank(const NNSG2dMultiCellAnimBankData *multiCellAnimBank, CellActor *actor);
static void CellActor_CreateCellAnim(CellActor *actor, enum HeapId heapID);
static void CellActor_CreateVRamCellAnim(const CellActorResourceData *resourceData, CellActor *actor, enum HeapId heapID);
static void CellActor_CreateMultiCellAnim(CellActor *actor, enum HeapId heapID);
static BOOL CellActorCollection_InitActor(const CellActorCollection *collection,
    const CellActorResourceData *resourceData,
    CellActor *actor,
    enum HeapId heapID);
static u32 GetPaletteIndexForProxy(const NNSG2dImagePaletteProxy *paletteProxy, u32 vramType);
static void CellActorCollection_DrawActor(const CellActorCollection *collection, CellActor *actor);
static void CellActorCollection_DrawActor_Stub(const CellActorCollection *collection, CellActor *actor);
static void CellActor_UpdateAnimInternal(CellActor *collection);
static void CellActor_UpdateAnimInternal_Stub(CellActor *collection);
static void CellActorCollection_Insert(CellActorCollection *collection, CellActor *actor);
static void CellActorCollection_Remove(CellActor *actor);
static void CellActorCollection_InitActors(CellActorCollection *collection);
static CellActor *CellActorCollection_AllocActor(CellActorCollection *collection);
static BOOL CellActorCollection_FreeActor(CellActorCollection *collection, CellActor *actor);

CellActorCollection *CellActorCollection_New(const CellActorCollectionParams *params)
{
    GF_ASSERT(params);
    GF_ASSERT(params->renderer);

    CellActorCollection *collection = Heap_AllocFromHeap(params->heapID, sizeof(CellActorCollection));
    GF_ASSERT(collection);

    CellActorCollection_Reset(collection);

    collection->actors = Heap_AllocFromHeap(params->heapID, sizeof(CellActor) * params->maxElements);
    GF_ASSERT(collection->actors);
    collection->maxActors = params->maxElements;

    collection->actorStack = Heap_AllocFromHeap(params->heapID, sizeof(CellActor *) * params->maxElements);
    GF_ASSERT(collection->actorStack);

    CellActorCollection_InitActors(collection);
    CellActor_Reset(&collection->sentinelData);

    collection->sentinelData.prev = &collection->sentinelData;
    collection->sentinelData.next = &collection->sentinelData;
    collection->renderer = params->renderer;
    collection->rawAnimData = ReadFileToHeap(params->heapID, "data/clact_default.NANR");

    NNS_G2dGetUnpackedAnimBank(collection->rawAnimData, &collection->defaultAnimBank);
    collection->active = TRUE;

    return collection;
}

BOOL CellActorCollection_Delete(CellActorCollection *collection)
{
    if (collection == NULL) {
        return FALSE;
    }

    if (collection->actors == NULL) {
        return TRUE;
    }

    CellActorCollection_DeleteAll(collection);

    Heap_FreeToHeap(collection->rawAnimData);
    Heap_FreeToHeap(collection->actorStack);
    Heap_FreeToHeap(collection->actors);

    CellActorCollection_Reset(collection);
    Heap_FreeToHeap(collection);

    collection = NULL;

    return TRUE;
}

BOOL CellActorCollection_SetActive(CellActorCollection *collection, u8 active)
{
    if (collection == NULL) {
        return FALSE;
    }

    if (collection->actors == NULL) {
        return FALSE;
    }

    collection->active = active;

    return TRUE;
}

BOOL CellActorCollection_DeleteAll(CellActorCollection *collection)
{
    if (collection == NULL) {
        return FALSE;
    }

    if (collection->actors == NULL) {
        return TRUE;
    }

    CellActor *actor = collection->sentinelData.next;
    while (actor != &collection->sentinelData) {
        CellActor *next = actor->next;
        CellActor_Delete(actor);
        actor = next;
    }

    return TRUE;
}

void CellActorCollection_Update(const CellActorCollection *collection)
{
    static const CellActorDrawFunc sDrawFuncs[] = {
        CellActorCollection_DrawActor_Stub,
        CellActorCollection_DrawActor
    };
    static const CellActorAnimUpdateFunc sAnimUpdateFuncs[] = {
        CellActor_UpdateAnimInternal_Stub,
        CellActor_UpdateAnimInternal
    };

    GF_ASSERT(collection);

    if (collection->active == FALSE) {
        return;
    }

    CellActor *actor = collection->sentinelData.next;

    while (actor != &collection->sentinelData) {
        sDrawFuncs[actor->draw](collection, actor);
        sAnimUpdateFuncs[actor->animate](actor);
        actor = actor->next;
    }
}

static void CellActorCollection_Reset(CellActorCollection *collection)
{
    collection->actors = NULL;
    collection->maxActors = 0;
    collection->actorStack = NULL;
    collection->stackPointer = 0;
    collection->renderer = NULL;

    CellActor_Reset(&collection->sentinelData);
    collection->active = FALSE;
}

void CellActor_Reset(CellActor *actor)
{
    actor->collection = NULL;
    memset(actor, 0, sizeof(CellActor));

    NNS_G2dInitImageProxy(&actor->imageProxy);
    NNS_G2dInitImagePaletteProxy(&actor->paletteProxy);

    actor->explicitOamMode = GX_OAM_MODE_NORMAL;
}

CellActor *CellActorCollection_AddEx(const CellActorInitParamsEx *params)
{
    CellActor *actor = CellActorCollection_AllocActor(params->collection);
    if (actor == NULL) {
        return NULL;
    }

    actor->collection = params->collection;
    actor->activeAnimID = 0;
    actor->position = params->position;
    actor->affineScale = params->affineScale;
    actor->affineZRotation = params->affineZRotation;
    actor->vramType = params->vramType;
    actor->priority = params->priority;
    actor->affineOverwriteMode = NNS_G2D_RND_AFFINE_OVERWRITE_NONE;
    actor->flip = CELL_ACTOR_FLIP_NONE;
    actor->explicitMosaic = FALSE;
    actor->explicitOamMode = GX_OAM_MODE_NORMAL;
    actor->overwriteFlags = NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS | NNS_G2D_RND_OVERWRITE_PRIORITY;

    NNS_G2dSetRndCoreAffineOverwriteMode(
        &params->collection->renderer->rendererCore,
        actor->affineOverwriteMode);
    NNS_G2dSetRndCoreFlipMode(
        &params->collection->renderer->rendererCore,
        actor->flip & CELL_ACTOR_FLIP_H,
        actor->flip & CELL_ACTOR_FLIP_V);

    actor->draw = TRUE;
    actor->animate = FALSE;
    actor->animSpeed = (FX32_ONE * 2);

    if (CellActorCollection_InitActor(params->collection, params->resourceData, actor, params->heapID) == FALSE) {
        CellActor_Delete(actor);
        return NULL;
    }

    actor->explicitPaletteOffset = GetPaletteIndexForProxy(&actor->paletteProxy, actor->vramType);
    actor->explicitPalette = actor->explicitPaletteOffset;

    CellActorCollection_Insert(params->collection, actor);

    return actor;
}

CellActor *CellActorCollection_Add(const CellActorInitParams *params)
{
    CellActorInitParamsEx paramsEx;

    paramsEx.collection = params->collection;
    paramsEx.resourceData = params->resourceData;
    paramsEx.position = params->position;
    paramsEx.affineScale.x = FX32_ONE;
    paramsEx.affineScale.y = FX32_ONE;
    paramsEx.affineScale.z = FX32_ONE;
    paramsEx.affineZRotation = 0;
    paramsEx.priority = params->priority;
    paramsEx.vramType = params->vramType;
    paramsEx.heapID = params->heapID;

    return CellActorCollection_AddEx(&paramsEx);
}

void CellActor_Delete(CellActor *actor)
{
    if (actor->type == CELL_ANIM_TYPE_NONE) {
        return;
    }

    if (actor->prev != NULL) {
        CellActorCollection_Remove(actor);
    }

    if (actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        VRamCellAnimationData *vramCellAnim = (VRamCellAnimationData *)&actor->animData;

        if (NNS_G2dGetImageLocation(&actor->imageProxy, actor->vramType) != NNS_G2D_VRAM_ADDR_NONE) {
            NNS_G2dFreeCellTransferStateHandle(vramCellAnim->transferHandle);
        }
    }

    if (actor->type == CELL_ANIM_TYPE_MULTI_CELL) {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;

        if (multiCellAnim->nodes != NULL) {
            Heap_FreeToHeap(multiCellAnim->nodes);
        }

        if (multiCellAnim->cellAnims != NULL) {
            Heap_FreeToHeap(multiCellAnim->cellAnims);
        }
    }

    actor->type = CELL_ANIM_TYPE_NONE;

    CellActorCollection_FreeActor(actor->collection, actor);
}

void CellActor_SetPosition(CellActor *actor, const VecFx32 *position)
{
    actor->position = *position;
}

void CellActor_SetAffineTranslation(CellActor *actor, const VecFx32 *translation)
{
    actor->affineTranslation = *translation;
}

void CellActor_SetAffineScale(CellActor *actor, const VecFx32 *scale)
{
    actor->affineScale = *scale;
}

void CellActor_SetAffineScaleEx(CellActor *actor, const VecFx32 *scale, enum AffineOverwriteMode mode)
{
    CellActor_SetAffineScale(actor, scale);
    CellActor_SetAffineOverwriteMode(actor, mode);
}

void CellActor_SetAffineZRotation(CellActor *actor, u16 angle)
{
    actor->affineZRotation = angle;
}

void CellActor_SetAffineZRotationEx(CellActor *actor, u16 angle, enum AffineOverwriteMode mode)
{
    CellActor_SetAffineZRotation(actor, angle);
    CellActor_SetAffineOverwriteMode(actor, mode);
}

void CellActor_SetDrawFlag(CellActor *actor, BOOL draw)
{
    GF_ASSERT(actor);
    GF_ASSERT(draw < 2); // This value is used as an index into an array of size 2 inside CellActorCollection_Update

    actor->draw = draw;
}

void CellActor_SetAnimateFlag(CellActor *actor, BOOL animate)
{
    GF_ASSERT(actor);
    GF_ASSERT(animate < 2); // This value is used as an index into an array of size 2 inside CellActorCollection_Update

    actor->animate = animate;
}

void CellActor_SetAnimSpeed(CellActor *actor, fx32 speed)
{
    GF_ASSERT(actor);
    actor->animSpeed = speed;
}

void CellActor_SetAffineOverwriteMode(CellActor *actor, enum AffineOverwriteMode mode)
{
    GF_ASSERT(actor);
    actor->affineOverwriteMode = mode;
}

void CellActor_SetFlipMode(CellActor *actor, u32 mode)
{
    GF_ASSERT(actor);
    actor->flip = mode;
    actor->affineOverwriteMode = NNS_G2D_RND_AFFINE_OVERWRITE_NONE;
}

const VecFx32 *CellActor_GetPosition(const CellActor *actor)
{
    return &actor->position;
}

const VecFx32 *CellActor_GetAffineScale(const CellActor *actor)
{
    return &actor->affineScale;
}

u16 CellActor_GetAffineZRotation(const CellActor *actor)
{
    return actor->affineZRotation;
}

BOOL CellActor_GetDrawFlag(const CellActor *actor)
{
    return actor->draw;
}

BOOL CellActor_GetAnimateFlag(const CellActor *actor)
{
    return actor->animate;
}

u32 CellActor_GetAnimCount(const CellActor *actor)
{
    GF_ASSERT(actor);

    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
        return cellAnim->animBank->numSequences;
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
        return multiCellAnim->animBank->numSequences;
    }
}

void CellActor_SetAnim(CellActor *actor, u32 animID)
{
    GF_ASSERT(CellActor_GetAnimCount(actor) > animID);
    actor->activeAnimID = animID;

    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;

        const NNSG2dAnimSequence *animSequence = NNS_G2dGetAnimSequenceByIdx(cellAnim->animBank, animID);
        NNS_G2dSetCellAnimationSequence(&cellAnim->anim, animSequence);
        NNS_G2dStartAnimCtrl(&cellAnim->anim.animCtrl);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;

        const NNSG2dAnimSequence *animSequence = NNS_G2dGetAnimSequenceByIdx(multiCellAnim->animBank, animID);
        NNS_G2dSetAnimSequenceToMCAnimation(&multiCellAnim->anim, animSequence);
        NNS_G2dStartAnimCtrl(&multiCellAnim->anim.animCtrl);
    }
}

void CellActor_SetAnimNoRestart(CellActor *actor, u32 animID)
{
    if (actor->activeAnimID != animID) {
        CellActor_SetAnim(actor, animID);
    }
}

void CellActor_RestartAnim(CellActor *actor)
{
    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;

        NNS_G2dResetAnimCtrlState(&cellAnim->anim.animCtrl);
        NNS_G2dStartAnimCtrl(&cellAnim->anim.animCtrl);
        SpriteActor_SetAnimFrame(actor, 0);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;

        NNS_G2dResetAnimCtrlState(&multiCellAnim->anim.animCtrl);
        NNS_G2dStartAnimCtrl(&multiCellAnim->anim.animCtrl);
        SpriteActor_SetAnimFrame(actor, 0);
    }
}

u32 CellActor_GetActiveAnim(const CellActor *actor)
{
    return actor->activeAnimID;
}

void CellActor_UpdateAnim(CellActor *actor, fx32 frames)
{
    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
        NNS_G2dTickCellAnimation(&cellAnim->anim, frames);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
        NNS_G2dTickMCAnimation(&multiCellAnim->anim, frames);
    }
}

void SpriteActor_SetAnimFrame(CellActor *actor, u16 frame)
{
    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
        NNS_G2dSetCellAnimationCurrentFrame(&cellAnim->anim, frame);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
        NNS_G2dSetMCAnimationCurrentFrame(&multiCellAnim->anim, frame);
    }
}

u16 CellActor_GetAnimFrame(const CellActor *actor)
{
    NNSG2dAnimController *controller;

    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
        controller = NNS_G2dGetCellAnimationAnimCtrl(&cellAnim->anim);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
        controller = NNS_G2dGetMCAnimAnimCtrl(&multiCellAnim->anim);
    }

    return NNS_G2dGetAnimCtrlCurrentFrame(controller);
}

void CellActor_SetExplicitPriority(CellActor *actor, u8 priority)
{
    actor->explicitPriority = priority;
}

u8 CellActor_GetExplicitPriority(const CellActor *actor)
{
    return actor->explicitPriority;
}

void CellActor_SetExplicitPalette(CellActor *actor, u32 palette)
{
    GF_ASSERT(actor);

    actor->explicitPalette = palette;
    actor->overwriteFlags |= NNS_G2D_RND_OVERWRITE_PLTTNO;
    actor->overwriteFlags &= ~NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS;
}

void CellActor_SetExplicitPaletteWithOffset(CellActor *actor, u32 palette)
{
    CellActor_SetExplicitPalette(actor, palette);
    actor->explicitPalette += GetPaletteIndexForProxy(&actor->paletteProxy, actor->vramType);
}

u32 CellActor_GetExplicitPalette(const CellActor *actor)
{
    return actor->explicitPalette;
}

void CellActor_SetExplicitPaletteOffset(CellActor *actor, u32 paletteOffset)
{
    GF_ASSERT(actor);

    actor->explicitPaletteOffset = paletteOffset;
    actor->overwriteFlags |= NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS;
    actor->overwriteFlags &= ~NNS_G2D_RND_OVERWRITE_PLTTNO;
}

void CellActor_SetExplicitPaletteOffsetAutoAdjust(CellActor *actor, u32 paletteOffset)
{
    CellActor_SetExplicitPaletteOffset(actor, paletteOffset);
    actor->explicitPaletteOffset += GetPaletteIndexForProxy(&actor->paletteProxy, actor->vramType);
}

u32 CellActor_GetExplicitPaletteOffset(const CellActor *actor)
{
    GF_ASSERT(actor);
    return actor->explicitPaletteOffset;
}

void CellActor_SetPriority(CellActor *actor, u32 priority)
{
    CellActorCollection *collection = actor->collection; // Required to match
    actor->priority = priority;

    CellActorCollection_Remove(actor);
    CellActorCollection_Insert(collection, actor);
}

u32 CellActor_GetPriority(const CellActor *actor)
{
    return actor->priority;
}

void CellActor_SetImageProxy(CellActor *actor, const NNSG2dImageProxy *imageProxy)
{
    actor->imageProxy = *imageProxy;
}

NNSG2dImageProxy *SpriteActor_ImageProxy(CellActor *actor)
{
    return &actor->imageProxy;
}

NNSG2dImagePaletteProxy *CellActor_GetPaletteProxy(CellActor *paletteProxy)
{
    return &paletteProxy->paletteProxy;
}

void CellActor_SetPixelated(CellActor *actor, BOOL pixelated)
{
    actor->explicitMosaic = pixelated;

    if (pixelated == TRUE) {
        actor->overwriteFlags |= NNS_G2D_RND_OVERWRITE_MOSAIC;
    } else {
        actor->overwriteFlags ^= NNS_G2D_RND_OVERWRITE_MOSAIC;
    }
}

NNS_G2D_VRAM_TYPE CellActor_GetVRamType(const CellActor *actor)
{
    return actor->vramType;
}

BOOL CellActor_IsAnimated(CellActor *actor)
{
    GF_ASSERT(actor);

    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
        return NNS_G2dIsAnimCtrlActive(&cellAnim->anim.animCtrl);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
        return NNS_G2dIsAnimCtrlActive(&multiCellAnim->anim.animCtrl);
    }
}

void CellActor_SetExplicitOAMMode(CellActor *actor, GXOamMode mode)
{
    GF_ASSERT(actor);

    actor->explicitOamMode = mode;

    if (mode == GX_OAM_MODE_NORMAL) {
        actor->overwriteFlags ^= NNS_G2D_RND_OVERWRITE_OBJMODE;
    } else {
        actor->overwriteFlags |= NNS_G2D_RND_OVERWRITE_OBJMODE;
    }
}

void Utility_Clear2DMainOAM(enum HeapId heapID)
{
    GXOamAttr *oam = Heap_AllocFromHeap(heapID, sizeof(GXOamAttr) * MAX_SIMULTANEOUS_SPRITES);

    MI_CpuFill16(oam, 0x2C0, sizeof(GXOamAttr) * MAX_SIMULTANEOUS_SPRITES);
    DC_FlushRange(oam, sizeof(GXOamAttr) * MAX_SIMULTANEOUS_SPRITES);
    GX_LoadOAM(oam, 0, sizeof(GXOamAttr) * MAX_SIMULTANEOUS_SPRITES);

    Heap_FreeToHeap(oam);
}

void Utility_Clear2DSubOAM(enum HeapId heapID)
{
    GXOamAttr *oam = Heap_AllocFromHeap(heapID, sizeof(GXOamAttr) * MAX_SIMULTANEOUS_SPRITES);

    MI_CpuFill16(oam, 0x2C0, sizeof(GXOamAttr) * MAX_SIMULTANEOUS_SPRITES);
    // According to the NitroSDK docs there should be a call to DC_FlushRange here.
    GXS_LoadOAM(oam, 0, sizeof(GXOamAttr) * MAX_SIMULTANEOUS_SPRITES);

    Heap_FreeToHeap(oam);
}

u32 CellActor_GetUserAttrForAnimFrame(const CellActor *actor, u32 animID, u32 frame)
{
    const NNSG2dAnimBankData *animBank;

    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
        animBank = cellAnim->animBank;
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
        animBank = multiCellAnim->animBank;
    }

    const NNSG2dUserExAnimAttrBank *animAttrBank = NNS_G2dGetUserExAnimAttrBank(animBank);

    // Guard clauses don't match here so the nested if's are required
    if (animAttrBank) {
        const NNSG2dUserExAnimSequenceAttr *animAttr = NNS_G2dGetUserExAnimSequenceAttr(animAttrBank, animID);

        if (animAttr) {
            const NNSG2dUserExAnimFrameAttr *frameAttr = NNS_G2dGetUserExAnimFrameAttr(animAttr, frame);

            if (frameAttr) {
                return NNS_G2dGetUserExAnimFrmAttrValue(frameAttr);
            }
        }
    }

    return 0;
}

u32 CellActor_GetUserAttrForCurrentAnimFrame(const CellActor *actor)
{
    u32 animID = CellActor_GetActiveAnim(actor);
    u32 frame = CellActor_GetAnimFrame(actor);

    return CellActor_GetUserAttrForAnimFrame(actor, animID, frame);
}

static BOOL CellActorCollection_InitActor(const CellActorCollection *collection,
    const CellActorResourceData *resourceData,
    CellActor *actor,
    enum HeapId heapID)
{
    actor->type = CellActorResourceData_GetCellType(resourceData);
    actor->imageProxy = *resourceData->imageProxy;
    actor->paletteProxy = *resourceData->paletteProxy;

    CellActor_SetCellBank(resourceData->cellBank, actor);

    if (resourceData->cellAnimBank) {
        CellActor_SetCellAnimBank(resourceData->cellAnimBank, actor);
    } else {
        CellActor_SetCellAnimBank(collection->defaultAnimBank, actor);
    }

    if (actor->type == CELL_ANIM_TYPE_MULTI_CELL) {
        CellActor_SetMultiCellBank(resourceData->multiCellBank, actor);
        CellActor_SetMultiCellAnimBank(resourceData->multiCellAnimBank, actor);
        CellActor_CreateMultiCellAnim(actor, heapID);
    } else if (actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellActor_CreateVRamCellAnim(resourceData, actor, heapID);
    } else {
        CellActor_CreateCellAnim(actor, heapID);
    }

    actor->explicitPriority = resourceData->priority;

    return TRUE;
}

static enum CellAnimType CellActorResourceData_GetCellType(const CellActorResourceData *resourceData)
{
    if (resourceData->multiCellBank != NULL) {
        return CELL_ANIM_TYPE_MULTI_CELL;
    }

    if (resourceData->isVRamTransfer == TRUE) {
        return CELL_ANIM_TYPE_VRAM_CELL;
    }

    return CELL_ANIM_TYPE_CELL;
}

static void CellActor_SetCellBank(const NNSG2dCellDataBank *cellBank, CellActor *actor)
{
    CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
    cellAnim->cellBank = cellBank;
}

static void CellActor_SetCellAnimBank(const NNSG2dCellAnimBankData *cellAnimBank, CellActor *actor)
{
    CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
    cellAnim->animBank = cellAnimBank;
}

static void CellActor_SetMultiCellBank(const NNSG2dMultiCellDataBank *multiCellBank, CellActor *actor)
{
    MultiCellAnimationData *multiCell = (MultiCellAnimationData *)&actor->animData;
    multiCell->cellBank = multiCellBank;
}

static void CellActor_SetMultiCellAnimBank(const NNSG2dMultiCellAnimBankData *multiCellAnimBank, CellActor *actor)
{
    MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
    multiCellAnim->animBank = multiCellAnimBank;
}

static void CellActor_CreateCellAnim(CellActor *actor, enum HeapId heapID)
{
    CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
    NNS_G2dInitCellAnimation(
        &cellAnim->anim,
        NNS_G2dGetAnimSequenceByIdx(cellAnim->animBank, 0),
        cellAnim->cellBank);
}

static void CellActor_CreateVRamCellAnim(const CellActorResourceData *resourceData, CellActor *actor, enum HeapId heapID)
{
    VRamCellAnimationData *vramCellAnim = (VRamCellAnimationData *)&actor->animData;
    vramCellAnim->transferHandle = NNS_G2dGetNewCellTransferStateHandle();
    const NNSG2dCharacterData *charData = resourceData->charData;

    NNS_G2dInitCellAnimationVramTransfered(
        &vramCellAnim->anim,
        NNS_G2dGetAnimSequenceByIdx(vramCellAnim->animBank, 0),
        vramCellAnim->cellBank,
        vramCellAnim->transferHandle,
        NNS_G2D_VRAM_ADDR_NONE,
        NNS_G2dGetImageLocation(&actor->imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN),
        NNS_G2dGetImageLocation(&actor->imageProxy, NNS_G2D_VRAM_TYPE_2DSUB),
        charData->pRawData,
        NULL,
        charData->szByte);
}

static void CellActor_CreateMultiCellAnim(CellActor *actor, enum HeapId heapID)
{
    MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
    const NNSG2dMultiCellAnimSequence *animSequence = NNS_G2dGetAnimSequenceByIdx(multiCellAnim->animBank, 0);
    u16 maxNodes = NNS_G2dGetMCBankNumNodesRequired(multiCellAnim->cellBank);
    multiCellAnim->nodes = Heap_AllocFromHeap(heapID, sizeof(NNSG2dNode) * maxNodes);
    multiCellAnim->cellAnims = Heap_AllocFromHeap(heapID, sizeof(NNSG2dCellAnimation) * maxNodes);

    NNS_G2dInitMCAnimation(
        &multiCellAnim->anim,
        multiCellAnim->nodes,
        multiCellAnim->cellAnims,
        maxNodes,
        multiCellAnim->individualAnimBank,
        multiCellAnim->individualCellBank,
        multiCellAnim->cellBank);

    NNS_G2dSetAnimSequenceToMCAnimation(
        &multiCellAnim->anim,
        animSequence);
}

static u32 GetPaletteIndexForProxy(const NNSG2dImagePaletteProxy *paletteProxy, u32 vramType)
{
    u32 paletteSize;

    if (paletteProxy->bExtendedPlt) {
        paletteSize = 32 * 16;
    } else {
        if (paletteProxy->fmt == GX_TEXFMT_PLTT256) {
            paletteSize = 0;
        } else {
            paletteSize = 32;
        }
    }

    return paletteSize != 0
        ? NNS_G2dGetImagePaletteLocation(paletteProxy, vramType) / paletteSize
        : 0;
}

static void CellActorCollection_DrawActor(const CellActorCollection *collection, CellActor *actor)
{
    VecFx32 pos = actor->position;

    NNS_G2dSetRendererImageProxy(collection->renderer, &actor->imageProxy, &actor->paletteProxy);
    NNS_G2dBeginRendering(collection->renderer);
    NNS_G2dPushMtx();

    NNS_G2dSetRndCoreAffineOverwriteMode(&collection->renderer->rendererCore, actor->affineOverwriteMode);

    if (actor->affineOverwriteMode == NNS_G2D_RND_AFFINE_OVERWRITE_NONE) {
        NNS_G2dSetRndCoreFlipMode(
            &collection->renderer->rendererCore,
            actor->flip & CELL_ACTOR_FLIP_H,
            actor->flip & CELL_ACTOR_FLIP_V);
    } else {
        NNS_G2dSetRndCoreFlipMode(&collection->renderer->rendererCore, FALSE, FALSE);
    }

    NNS_G2dTranslate(pos.x, pos.y, pos.z);

    if (actor->affineOverwriteMode != NNS_G2D_RND_AFFINE_OVERWRITE_NONE) {
        NNS_G2dTranslate(actor->affineTranslation.x, actor->affineTranslation.y, actor->affineTranslation.z);
        NNS_G2dScale(actor->affineScale.x, actor->affineScale.y, actor->affineScale.z);
        NNS_G2dRotZ(FX_SinIdx(actor->affineZRotation), FX_CosIdx(actor->affineZRotation));

        // affineTranslation only serves as a pivot point for rotation and scaling
        // so we undo this translation after applying these transformations.
        NNS_G2dTranslate(-actor->affineTranslation.x, -actor->affineTranslation.y, -actor->affineTranslation.z);
    }

    // Set the overwrite parameters
    // We always want the actual overwrite flags to be equal to overwriteParam
    // so we set the flags that are not in overwriteParam to 0 with the second call
    NNS_G2dSetRendererOverwriteEnable(collection->renderer, actor->overwriteFlags);
    NNS_G2dSetRendererOverwriteDisable(collection->renderer, ~actor->overwriteFlags);

    NNS_G2dSetRendererOverwritePlttNo(collection->renderer, actor->explicitPalette);
    NNS_G2dSetRendererOverwritePlttNoOffset(collection->renderer, actor->explicitPaletteOffset);
    NNS_G2dSetRendererOverwriteMosaicFlag(collection->renderer, actor->explicitMosaic);
    NNS_G2dSetRendererOverwriteOBJMode(collection->renderer, actor->explicitOamMode);
    NNS_G2dSetRendererOverwritePriority(collection->renderer, actor->explicitPriority);

    if (actor->type == CELL_ANIM_TYPE_CELL || actor->type == CELL_ANIM_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&actor->animData;
        NNS_G2dDrawCellAnimation(&cellAnim->anim);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&actor->animData;
        NNS_G2dDrawMultiCellAnimation(&multiCellAnim->anim);
    }

    NNS_G2dPopMtx();
    NNS_G2dEndRendering();
}

static void CellActorCollection_DrawActor_Stub(const CellActorCollection *collection, CellActor *actor)
{
    return;
}

static void CellActor_UpdateAnimInternal(CellActor *actor)
{
    CellActor_UpdateAnim(actor, actor->animSpeed);
}

static void CellActor_UpdateAnimInternal_Stub(CellActor *actor)
{
    return;
}

static void CellActorCollection_Insert(CellActorCollection *collection, CellActor *actor)
{
    // If the list is empty, insert the actor as the only actor
    if (collection->sentinelData.next == &collection->sentinelData) {
        collection->sentinelData.next = actor;
        collection->sentinelData.prev = actor;
        actor->prev = &collection->sentinelData;
        actor->next = &collection->sentinelData;
        return;
    }

    // Check if the actor should be inserted at the end of the list (lowest priority)
    if (collection->sentinelData.prev->priority <= actor->priority) {
        actor->prev = collection->sentinelData.prev;
        collection->sentinelData.prev->next = actor;
        actor->next = &collection->sentinelData;
        collection->sentinelData.prev = actor;
        return;
    }

    // Insert the actor in the correct position according to its priority
    CellActor *cur = collection->sentinelData.next;
    while (cur != &collection->sentinelData) {
        if (cur->priority > actor->priority) {
            cur->prev->next = actor;
            actor->prev = cur->prev;
            cur->prev = actor;
            actor->next = cur;
            break;
        }

        cur = cur->next;
    }
}

static void CellActorCollection_Remove(CellActor *actor)
{
    actor->prev->next = actor->next;
    actor->next->prev = actor->prev;
}

static void CellActorCollection_InitActors(CellActorCollection *collection)
{
    for (int i = 0; i < collection->maxActors; i++) {
        CellActor_Reset(&collection->actors[i]);
        collection->actorStack[i] = collection->actors + i;
    }

    collection->stackPointer = 0;
}

static CellActor *CellActorCollection_AllocActor(CellActorCollection *collection)
{
    if (collection->stackPointer >= collection->maxActors) {
        return NULL;
    }

    CellActor *actor = collection->actorStack[collection->stackPointer];
    collection->stackPointer++;

    return actor;
}

static BOOL CellActorCollection_FreeActor(CellActorCollection *collection, CellActor *actor)
{
    if (collection->stackPointer <= 0) {
        return FALSE;
    }

    CellActor_Reset(actor);

    collection->stackPointer--;
    collection->actorStack[collection->stackPointer] = actor;

    return TRUE;
}
