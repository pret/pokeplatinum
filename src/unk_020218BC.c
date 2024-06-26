#include <nitro.h>
#include <string.h>

#include "nnsys/g2d/g2d_Image.h"
#include "nnsys/g2d/g2d_RendererCore.h"
#include "struct_defs/struct_020095C4.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02017728.h"
#include "heap.h"
#include "unk_020218BC.h"

#define GRAPHIC_ELEMENT_ANIM_DATA_SIZE 29

enum CellType {
    CELL_TYPE_NONE = 0,
    CELL_TYPE_CELL,
    CELL_TYPE_MULTI_CELL,
    CELL_TYPE_VRAM_CELL,
};

typedef struct CellAnimationData {
    const NNSG2dCellDataBank *cellBank;
    const NNSG2dCellAnimBankData *animBank;
    NNSG2dCellAnimation anim;
} CellAnimationData;

typedef struct VRamCellAnimationData {
    NNSG2dCellDataBank *cellBank;
    const NNSG2dCellAnimBankData *animBank;
    NNSG2dCellAnimation anim;
    u32 transferHandle;
} VRamCellAnimationData;

typedef struct MultiCellAnimationData {
    const NNSG2dCellDataBank *individualCellBank;
    const NNSG2dCellAnimBankData *individualAnimBank;
    NNSG2dMultiCellAnimation anim;
    const NNSG2dMultiCellDataBank *cellBank;
    const NNSG2dMultiCellAnimBankData *animBank;
    NNSG2dNode *nodes;
    NNSG2dCellAnimation *cellAnims;
} MultiCellAnimationData;

typedef struct GraphicElementData {
    VecFx32 position;
    VecFx32 affineTranslation;
    VecFx32 affineScale;
    u16 affineZRotation;
    u8 affineOverwriteMode;
    u8 flip;
    u8 overwriteFlags; // Specifies which of the 'explicit' fields are used. Overwrites data provided by the OAM.
    u8 explicitPalette; // An explicit palette index.
    u8 explicitPaletteOffset; // An explicit palette index offset added onto the index specified by the OAM.
    BOOL explicitMosaic;
    GXOamMode explicitOamMode;
    u8 draw;
    u8 animate;
    fx32 animSpeed;
    GraphicElementManager *manager;
    u32 animData[GRAPHIC_ELEMENT_ANIM_DATA_SIZE];
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy paletteProxy;
    u32 type;
    u16 unk_F0;
    u8 explicitPriority;
    u16 priority;
    NNS_G2D_VRAM_TYPE vramType;
    struct GraphicElementData *prev;
    struct GraphicElementData *next;
} GraphicElementData;

typedef struct GraphicElementManager {
    GraphicElementData *elements;
    int maxElements;
    GraphicElementData **elementStack; // Stack of currently unused elements
    int stackPointer;
    GraphicElementData sentinelData;
    NNSG2dRendererInstance *renderer;
    void *rawAnimData;
    NNSG2dCellAnimBankData *defaultAnimBank;
    BOOL active;
} GraphicElementManager;

typedef void (* GraphicElementDrawFunc)(const GraphicElementManager *, GraphicElementData *);
typedef void (* GraphicElementAnimUpdateFunc)(GraphicElementData *);

static void GraphicElementManager_Reset(GraphicElementManager *gfxElemMgr);
static enum CellType CellActorResourceData_GetCellType(const CellActorResourceData *resourceData);
static void GraphicElementData_SetCellBank(const NNSG2dCellDataBank *cellBank, GraphicElementData *elem);
static void GraphicElementData_SetCellAnimBank(const NNSG2dCellAnimBankData *cellAnimBank, GraphicElementData *elem);
static void GraphicElementData_SetMultiCellBank(const NNSG2dMultiCellDataBank *multiCellBank, GraphicElementData *elem);
static void GraphicElementData_SetMultiCellAnimBank(const NNSG2dMultiCellAnimBankData *multiCellAnimBank, GraphicElementData *elem);
static void GraphicElementData_CreateCellAnim(GraphicElementData *elem, enum HeapId heapID);
static void GraphicElementData_CreateVRamCellAnim(const CellActorResourceData *resourceData, GraphicElementData *elem, enum HeapId heapID);
static void GraphicElementData_CreateMultiCellAnim(GraphicElementData *elem, enum HeapId heapID);
static BOOL GraphicElementManager_InitElement(const GraphicElementManager *gfxElemMgr, 
    const CellActorResourceData *resourceData, GraphicElementData *elem, enum HeapId heapID);
static u32 GetPaletteIndexForProxy(const NNSG2dImagePaletteProxy *paletteProxy, u32 vramType);
static void GraphicElementManager_DrawElement(const GraphicElementManager *gfxElemMgr, GraphicElementData *elem);
static void GraphicElementManager_DrawElement_Stub(const GraphicElementManager *gfxElemMgr, GraphicElementData *elem);
static void GraphicElementData_UpdateAnimInternal(GraphicElementData *gfxElemMgr);
static void GraphicElementData_UpdateAnimInternal_Stub(GraphicElementData *gfxElemMgr);
static void GraphicElementManager_InsertElement(GraphicElementManager *gfxElemMgr, GraphicElementData *elem);
static void GraphicElementManager_RemoveElement(GraphicElementData *elem);
static void GraphicElementManager_InitElements(GraphicElementManager *gfxElemMgr);
static GraphicElementData *GraphicElementManager_AllocElement(GraphicElementManager *gfxElemMgr);
static BOOL GraphicElementManager_FreeElement(GraphicElementManager *gfxElemMgr, GraphicElementData *elem);

GraphicElementManager *GraphicElementManager_New(const GraphicElementManagerParams *params)
{
    GF_ASSERT(params);
    GF_ASSERT(params->renderer);

    GraphicElementManager *gfxElemMgr = Heap_AllocFromHeap(params->heapID, sizeof(GraphicElementManager));
    GF_ASSERT(gfxElemMgr);

    GraphicElementManager_Reset(gfxElemMgr);

    gfxElemMgr->elements = Heap_AllocFromHeap(params->heapID, sizeof(GraphicElementData) * params->maxElements);
    GF_ASSERT(gfxElemMgr->elements);
    gfxElemMgr->maxElements = params->maxElements;

    gfxElemMgr->elementStack = Heap_AllocFromHeap(params->heapID, sizeof(GraphicElementData *) * params->maxElements);
    GF_ASSERT(gfxElemMgr->elementStack);

    GraphicElementManager_InitElements(gfxElemMgr);
    GraphicElementData_Reset(&gfxElemMgr->sentinelData);

    gfxElemMgr->sentinelData.prev = &gfxElemMgr->sentinelData;
    gfxElemMgr->sentinelData.next = &gfxElemMgr->sentinelData;
    gfxElemMgr->renderer = params->renderer;
    gfxElemMgr->rawAnimData = ReadFileToHeap(params->heapID, "data/clact_default.NANR");

    NNS_G2dGetUnpackedAnimBank(gfxElemMgr->rawAnimData, &gfxElemMgr->defaultAnimBank);
    gfxElemMgr->active = TRUE;

    return gfxElemMgr;
}

BOOL GraphicElementManager_Delete(GraphicElementManager *gfxElemMgr)
{
    if (gfxElemMgr == NULL) {
        return FALSE;
    }

    if (gfxElemMgr->elements == NULL) {
        return TRUE;
    }

    GraphicElementManager_DeleteAll(gfxElemMgr);

    Heap_FreeToHeap(gfxElemMgr->rawAnimData);
    Heap_FreeToHeap(gfxElemMgr->elementStack);
    Heap_FreeToHeap(gfxElemMgr->elements);

    GraphicElementManager_Reset(gfxElemMgr);
    Heap_FreeToHeap(gfxElemMgr);

    gfxElemMgr = NULL;

    return TRUE;
}

BOOL GraphicElementManager_SetActive(GraphicElementManager *gfxElemMgr, u8 active)
{
    if (gfxElemMgr == NULL) {
        return FALSE;
    }

    if (gfxElemMgr->elements == NULL) {
        return FALSE;
    }

    gfxElemMgr->active = active;

    return TRUE;
}

BOOL GraphicElementManager_DeleteAll(GraphicElementManager *gfxElemMgr)
{
    if (gfxElemMgr == NULL) {
        return FALSE;
    }

    if (gfxElemMgr->elements == NULL) {
        return TRUE;
    }

    GraphicElementData *elem = gfxElemMgr->sentinelData.next;
    while (elem != &gfxElemMgr->sentinelData) {
        GraphicElementData *next = elem->next;
        GraphicElementData_Delete(elem);
        elem = next;
    }

    return TRUE;
}

void sub_020219F8 (const GraphicElementManager *gfxElemMgr)
{
    static const GraphicElementDrawFunc sDrawFuncs[] = {
        GraphicElementManager_DrawElement_Stub,
        GraphicElementManager_DrawElement
    };
    static const GraphicElementAnimUpdateFunc sAnimUpdateFuncs[] = {
        GraphicElementData_UpdateAnimInternal_Stub,
        GraphicElementData_UpdateAnimInternal
    };

    GF_ASSERT(gfxElemMgr);

    if (gfxElemMgr->active == FALSE) {
        return;
    }

    GraphicElementData *elem = gfxElemMgr->sentinelData.next;

    while (elem != &gfxElemMgr->sentinelData) {
        sDrawFuncs[elem->draw](gfxElemMgr, elem);
        sAnimUpdateFuncs[elem->animate](elem);
        elem = elem->next;
    }
}

static void GraphicElementManager_Reset(GraphicElementManager *gfxElemMgr)
{
    gfxElemMgr->elements = NULL;
    gfxElemMgr->maxElements = 0;
    gfxElemMgr->elementStack = NULL;
    gfxElemMgr->stackPointer = 0;
    gfxElemMgr->renderer = NULL;

    GraphicElementData_Reset(&gfxElemMgr->sentinelData);
    gfxElemMgr->active = FALSE;
}

void GraphicElementData_Reset(GraphicElementData *elem)
{
    elem->manager = NULL;
    memset(elem, 0, sizeof(GraphicElementData));

    NNS_G2dInitImageProxy(&elem->imageProxy);
    NNS_G2dInitImagePaletteProxy(&elem->paletteProxy);

    elem->explicitOamMode = GX_OAM_MODE_NORMAL;
}

GraphicElementData *GraphicElementManager_AddElementEx(const CellActorInitParamsEx *params)
{
    GraphicElementData *elem = GraphicElementManager_AllocElement(params->manager);
    if (elem == NULL) {
        return NULL;
    }

    elem->manager = params->manager;
    elem->unk_F0 = 0;
    elem->position = params->position;
    elem->affineScale = params->affineScale;
    elem->affineZRotation = params->affineZRotation;
    elem->vramType = params->vramType;
    elem->priority = params->priority;
    elem->affineOverwriteMode = NNS_G2D_RND_AFFINE_OVERWRITE_NONE;
    elem->flip = GRAPHIC_ELEMENT_DATA_FLIP_NONE;
    elem->explicitMosaic = FALSE;
    elem->explicitOamMode = GX_OAM_MODE_NORMAL;
    elem->overwriteFlags = NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS | NNS_G2D_RND_OVERWRITE_PRIORITY;

    NNS_G2dSetRndCoreAffineOverwriteMode(
        &params->manager->renderer->rendererCore, 
        elem->affineOverwriteMode
    );
    NNS_G2dSetRndCoreFlipMode(
        &params->manager->renderer->rendererCore, 
        elem->flip & GRAPHIC_ELEMENT_DATA_FLIP_H,
        elem->flip & GRAPHIC_ELEMENT_DATA_FLIP_V
    );

    elem->draw = TRUE;
    elem->animate = 0;
    elem->animSpeed = (FX32_ONE * 2);

    if (GraphicElementManager_InitElement(params->manager, params->resourceData, elem, params->heapID) == FALSE) {
        GraphicElementData_Delete(elem);
        return NULL;
    }

    elem->explicitPaletteOffset = GetPaletteIndexForProxy(&elem->paletteProxy, elem->vramType);
    elem->explicitPalette = elem->explicitPaletteOffset;

    GraphicElementManager_InsertElement(params->manager, elem);

    return elem;
}

GraphicElementData * GraphicElementManager_AddElement(const CellActorInitParams *params)
{
    CellActorInitParamsEx paramsEx;

    paramsEx.manager = params->manager;
    paramsEx.resourceData = params->resourceData;
    paramsEx.position = params->position;
    paramsEx.affineScale.x = FX32_ONE;
    paramsEx.affineScale.y = FX32_ONE;
    paramsEx.affineScale.z = FX32_ONE;
    paramsEx.affineZRotation = 0;
    paramsEx.priority = params->priority;
    paramsEx.vramType = params->vramType;
    paramsEx.heapID = params->heapID;

    return GraphicElementManager_AddElementEx(&paramsEx);
}

void GraphicElementData_Delete(GraphicElementData *gfxElem)
{
    if (gfxElem->type != CELL_TYPE_NONE) {
        CellAnimationData *cellAnim = (CellAnimationData *)&gfxElem->animData;

        if (gfxElem->prev != NULL) {
            GraphicElementManager_RemoveElement(gfxElem);
        }

        if (gfxElem->type == CELL_TYPE_VRAM_CELL) {
            VRamCellAnimationData *vramCellAnim = (VRamCellAnimationData *)&gfxElem->animData;

            if (NNS_G2dGetImageLocation(&gfxElem->imageProxy, gfxElem->vramType) != NNS_G2D_VRAM_ADDR_NONE) {
                NNS_G2dFreeCellTransferStateHandle(vramCellAnim->transferHandle);
            }
        }

        if (gfxElem->type == CELL_TYPE_MULTI_CELL) {
            MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&gfxElem->animData;

            if (multiCellAnim->nodes != NULL) {
                Heap_FreeToHeap(multiCellAnim->nodes);
            }

            if (multiCellAnim->cellAnims != NULL) {
                Heap_FreeToHeap(multiCellAnim->cellAnims);
            }
        }

        gfxElem->type = CELL_TYPE_NONE;

        GraphicElementManager_FreeElement(gfxElem->manager, gfxElem);
    }
}

void GraphicElementData_SetPosition(GraphicElementData *elem, const VecFx32 *position)
{
    elem->position = *position;
}

void GraphicElementData_SetAffineTranslation(GraphicElementData *elem, const VecFx32 *translation)
{
    elem->affineTranslation = *translation;
}

void GraphicElementData_SetAffineScale(GraphicElementData *elem, const VecFx32 *scale)
{
    elem->affineScale = *scale;
}

void GraphicElementData_SetAffineScaleEx(GraphicElementData *elem, const VecFx32 *scale, enum AffineOverwriteMode mode)
{
    GraphicElementData_SetAffineScale(elem, scale);
    GraphicElementData_SetAffineOverwriteMode(elem, mode);
}

void GraphicElementData_SetAffineZRotation(GraphicElementData *elem, u16 angle)
{
    elem->affineZRotation = angle;
}

void GraphicElementData_SetAffineZRotationEx(GraphicElementData *elem, u16 angle, enum AffineOverwriteMode mode)
{
    GraphicElementData_SetAffineZRotation(elem, angle);
    GraphicElementData_SetAffineOverwriteMode(elem, mode);
}

void GraphicElementData_SetDrawFlag(GraphicElementData *elem, BOOL draw)
{
    GF_ASSERT(elem);
    GF_ASSERT(draw < 2); // This value is used as an index into an array of size 2 inside GraphicElementManager_Update

    elem->draw = draw;
}

void GraphicElementData_SetAnimateFlag(GraphicElementData *elem, BOOL animate)
{
    GF_ASSERT(elem);
    GF_ASSERT(animate < 2); // This value is used as an index into an array of size 2 inside GraphicElementManager_Update

    elem->animate = animate;
}

void GraphicElementData_SetAnimSpeed(GraphicElementData *elem, fx32 speed)
{
    GF_ASSERT(elem);
    elem->animSpeed = speed;
}

void GraphicElementData_SetAffineOverwriteMode(GraphicElementData *elem, enum AffineOverwriteMode mode)
{
    GF_ASSERT(elem);
    elem->affineOverwriteMode = mode;
}

void GraphicElementData_SetFlipMode(GraphicElementData *elem, u32 mode)
{
    GF_ASSERT(elem);
    elem->flip = mode;
    elem->affineOverwriteMode = NNS_G2D_RND_AFFINE_OVERWRITE_NONE;
}

const VecFx32 *GraphicElementData_GetPosition(const GraphicElementData *elem)
{
    return &elem->position;
}

const VecFx32 *GraphicElementData_GetAffineScale(const GraphicElementData *elem)
{
    return &elem->affineScale;
}

u16 GraphicElementData_GetAffineZRotation(const GraphicElementData *elem)
{
    return elem->affineZRotation;
}

BOOL GraphicElementData_GetDrawFlag(const GraphicElementData *elem)
{
    return elem->draw;
}

BOOL GraphicElementData_GetAnimateFlag(const GraphicElementData *elem)
{
    return elem->animate;
}

u32 GraphicElementData_GetAnimSequenceCount(const GraphicElementData *elem)
{
    GF_ASSERT(elem);

    if (elem->type == CELL_TYPE_CELL || elem->type == CELL_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&elem->animData;
        return cellAnim->animBank->numSequences;
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&elem->animData;
        return multiCellAnim->animBank->numSequences;
    }
}

void SpriteActor_SetSpriteAnimActive (GraphicElementData * param0, u32 param1)
{
    const NNSG2dAnimSequence * v0;

    GF_ASSERT(GraphicElementData_GetAnimSequenceCount(param0) > param1);
    param0->unk_F0 = param1;

    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v1 = (CellAnimationData *)&param0->animData;

        v0 = NNS_G2dGetAnimSequenceByIdx(v1->animBank, param1);
        NNS_G2dSetCellAnimationSequence(&v1->anim, v0);
        NNS_G2dStartAnimCtrl(&v1->anim.animCtrl);
    } else {
        MultiCellAnimationData * v2 = (MultiCellAnimationData *)&param0->animData;

        v0 = NNS_G2dGetAnimSequenceByIdx(v2->animBank, param1);
        NNS_G2dSetAnimSequenceToMCAnimation(&v2->anim, v0);
        NNS_G2dStartAnimCtrl(&v2->anim.animCtrl);
    }
}

void sub_02021DCC (GraphicElementData * param0, u32 param1)
{
    if (param0->unk_F0 != param1) {
        SpriteActor_SetSpriteAnimActive(param0, param1);
    }
}

void sub_02021DE0 (GraphicElementData * param0)
{
    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v0 = (CellAnimationData *)&param0->animData;

        NNS_G2dResetAnimCtrlState(&v0->anim.animCtrl);
        NNS_G2dStartAnimCtrl(&v0->anim.animCtrl);
        SpriteActor_SetAnimFrame(param0, 0);
    } else {
        MultiCellAnimationData * v1 = (MultiCellAnimationData *)&param0->animData;

        NNS_G2dResetAnimCtrlState(&v1->anim.animCtrl);
        NNS_G2dStartAnimCtrl(&v1->anim.animCtrl);
        SpriteActor_SetAnimFrame(param0, 0);
    }
}

u32 sub_02021E24 (const GraphicElementData * param0)
{
    return param0->unk_F0;
}

void GraphicElementData_UpdateAnim(GraphicElementData *elem, fx32 frames)
{
    if (elem->type == CELL_TYPE_CELL || elem->type == CELL_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&elem->animData;
        NNS_G2dTickCellAnimation(&cellAnim->anim, frames);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&elem->animData;
        NNS_G2dTickMCAnimation(&multiCellAnim->anim, frames);
    }
}

void SpriteActor_SetAnimFrame (GraphicElementData * param0, u16 param1)
{
    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v0 = (CellAnimationData *)&param0->animData;
        NNS_G2dSetCellAnimationCurrentFrame(&v0->anim, param1);
    } else {
        MultiCellAnimationData * v1 = (MultiCellAnimationData *)&param0->animData;
        NNS_G2dSetMCAnimationCurrentFrame(&v1->anim, param1);
    }
}

u16 sub_02021E74 (const GraphicElementData * param0)
{
    NNSG2dAnimController * v0;

    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v1 = (CellAnimationData *)&param0->animData;
        v0 = NNS_G2dGetCellAnimationAnimCtrl(&v1->anim);
    } else {
        MultiCellAnimationData * v2 = (MultiCellAnimationData *)&param0->animData;
        v0 = NNS_G2dGetMCAnimAnimCtrl(&v2->anim);
    }

    return NNS_G2dGetAnimCtrlCurrentFrame(v0);
}

void GraphicElementData_SetExplicitPriority(GraphicElementData *elem, u8 priority)
{
    elem->explicitPriority = priority;
}

u8 GraphicElementData_GetExplicitPriority(const GraphicElementData *elem)
{
    return elem->explicitPriority;
}

void GraphicElementData_SetExplicitPalette(GraphicElementData *elem, u32 palette)
{
    GF_ASSERT(elem);

    elem->explicitPalette = palette;
    elem->overwriteFlags |= NNS_G2D_RND_OVERWRITE_PLTTNO;
    elem->overwriteFlags &= ~NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS;
}

void GraphicElementData_SetExplicitPaletteWithOffset(GraphicElementData *elem, u32 palette)
{
    GraphicElementData_SetExplicitPalette(elem, palette);
    elem->explicitPalette += GetPaletteIndexForProxy(&elem->paletteProxy, elem->vramType);
}

u32 GraphicElementData_GetExplicitPalette(const GraphicElementData *elem)
{
    return elem->explicitPalette;
}

void GraphicElementData_SetExplicitPaletteOffset(GraphicElementData *elem, u32 paletteOffset)
{
    GF_ASSERT(elem);

    elem->explicitPaletteOffset = paletteOffset;
    elem->overwriteFlags |= NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS;
    elem->overwriteFlags &= ~NNS_G2D_RND_OVERWRITE_PLTTNO;
}

void GraphicElementData_SetExplicitPaletteOffsetAutoAdjust(GraphicElementData *elem, u32 paletteOffset)
{
    GraphicElementData_SetExplicitPaletteOffset(elem, paletteOffset);
    elem->explicitPaletteOffset += GetPaletteIndexForProxy(&elem->paletteProxy, elem->vramType);
}

u32 GraphicElementData_GetExplicitPaletteOffset(const GraphicElementData *elem)
{
    GF_ASSERT(elem);
    return elem->explicitPaletteOffset;
}

void GraphicElementData_SetPriority(GraphicElementData *elem, u32 priority)
{
    GraphicElementManager *gfxElemMgr = elem->manager;
    elem->priority = priority;

    GraphicElementManager_RemoveElement(elem);
    GraphicElementManager_InsertElement(gfxElemMgr, elem);
}

u32 GraphicElementData_GetPriority(const GraphicElementData *elem)
{
    return elem->priority;
}

void GraphicElementData_SetImageProxy(GraphicElementData *elem, const NNSG2dImageProxy *imageProxy)
{
    elem->imageProxy = *imageProxy;
}

NNSG2dImageProxy * SpriteActor_ImageProxy (GraphicElementData * param0)
{
    return &param0->imageProxy;
}

NNSG2dImagePaletteProxy *GraphicElementData_GetPaletteProxy(GraphicElementData *paletteProxy)
{
    return &paletteProxy->paletteProxy;
}

void GraphicElementData_SetPixelated(GraphicElementData *elem, BOOL pixelated)
{
    elem->explicitMosaic = pixelated;

    if (pixelated == TRUE) {
        elem->overwriteFlags |= NNS_G2D_RND_OVERWRITE_MOSAIC;
    } else {
        elem->overwriteFlags ^= NNS_G2D_RND_OVERWRITE_MOSAIC;
    }
}

NNS_G2D_VRAM_TYPE GraphicElementData_GetVRamType(const GraphicElementData *elem)
{
    return elem->vramType;
}

BOOL sub_02021FD0 (GraphicElementData * param0)
{
    GF_ASSERT(param0);

    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v0 = (CellAnimationData *)&param0->animData;
        return NNS_G2dIsAnimCtrlActive(&v0->anim.animCtrl);
    } else {
        MultiCellAnimationData * v1 = (MultiCellAnimationData *)&param0->animData;
        return NNS_G2dIsAnimCtrlActive(&v1->anim.animCtrl);
    }
}

void sub_02021FE0 (GraphicElementData * param0, GXOamMode param1)
{
    GF_ASSERT(param0);

    param0->explicitOamMode = param1;

    if (param1 == GX_OAM_MODE_NORMAL) {
        param0->overwriteFlags ^= NNS_G2D_RND_OVERWRITE_OBJMODE;
    } else {
        param0->overwriteFlags |= NNS_G2D_RND_OVERWRITE_OBJMODE;
    }
}

void sub_02022014 (int param0)
{
    void * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(GXOamAttr) * 128);

    MI_CpuFill16(v0, 0x2C0, sizeof(GXOamAttr) * 128);
    DC_FlushRange(v0, sizeof(GXOamAttr) * 128);
    GX_LoadOAM(v0, 0, sizeof(GXOamAttr) * 128);

    Heap_FreeToHeap(v0);
}

void sub_0202204C (int param0)
{
    void * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(GXOamAttr) * 128);

    MI_CpuFill16(v0, 0x2C0, sizeof(GXOamAttr) * 128);
    GXS_LoadOAM(v0, 0, sizeof(GXOamAttr) * 128);

    Heap_FreeToHeap(v0);
}

u32 sub_0202207C (const GraphicElementData * param0, u32 param1, u32 param2)
{
    const NNSG2dAnimBankData * v0;
    const NNSG2dUserExAnimAttrBank * v1;
    const NNSG2dUserExAnimSequenceAttr * v2;
    const NNSG2dUserExAnimFrameAttr * v3;

    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v4 = (CellAnimationData *)&param0->animData;
        v0 = v4->animBank;
    } else {
        MultiCellAnimationData * v5 = (MultiCellAnimationData *)&param0->animData;
        v0 = v5->animBank;
    }

    v1 = NNS_G2dGetUserExAnimAttrBank(v0);

    if (v1) {
        v2 = NNS_G2dGetUserExAnimSequenceAttr(v1, param1);

        if (v2) {
            v3 = NNS_G2dGetUserExAnimFrameAttr(v2, param2);

            if (v3) {
                return NNS_G2dGetUserExAnimFrmAttrValue(v3);
            }
        }
    }

    return 0;
}

u32 sub_020220F4 (const GraphicElementData * param0)
{
    u32 v0;
    u32 v1;

    v0 = sub_02021E24(param0);
    v1 = sub_02021E74(param0);

    return sub_0202207C(param0, v0, v1);
}

static BOOL GraphicElementManager_InitElement(const GraphicElementManager *gfxElemMgr, 
    const CellActorResourceData *resourceData, GraphicElementData *elem, enum HeapId heapID)
{
    elem->type = CellActorResourceData_GetCellType(resourceData);
    elem->imageProxy = *resourceData->imageProxy;
    elem->paletteProxy = *resourceData->paletteProxy;

    GraphicElementData_SetCellBank(resourceData->cellBank, elem);

    if (resourceData->cellAnimBank) {
        GraphicElementData_SetCellAnimBank(resourceData->cellAnimBank, elem);
    } else {
        GraphicElementData_SetCellAnimBank(gfxElemMgr->defaultAnimBank, elem);
    }

    if (elem->type == CELL_TYPE_MULTI_CELL) {
        GraphicElementData_SetMultiCellBank(resourceData->multiCellBank, elem);
        GraphicElementData_SetMultiCellAnimBank(resourceData->multiCellAnimBank, elem);
        GraphicElementData_CreateMultiCellAnim(elem, heapID);
    } else if (elem->type == CELL_TYPE_VRAM_CELL) {
        GraphicElementData_CreateVRamCellAnim(resourceData, elem, heapID);
    } else {
        GraphicElementData_CreateCellAnim(elem, heapID);
    }

    elem->explicitPriority = resourceData->priority;

    return TRUE;
}

static enum CellType CellActorResourceData_GetCellType(const CellActorResourceData *resourceData)
{
    if (resourceData->multiCellBank != NULL) {
        return CELL_TYPE_MULTI_CELL;
    }

    if (resourceData->isVRamTransfer == TRUE) {
        return CELL_TYPE_VRAM_CELL;
    }

    return CELL_TYPE_CELL;
}

static void GraphicElementData_SetCellBank(const NNSG2dCellDataBank *cellBank, GraphicElementData *elem)
{
    CellAnimationData *cellAnim = (CellAnimationData *)&elem->animData;
    cellAnim->cellBank = cellBank;
}

static void GraphicElementData_SetCellAnimBank(const NNSG2dCellAnimBankData *cellAnimBank, GraphicElementData *elem)
{
    CellAnimationData *cellAnim = (CellAnimationData *)&elem->animData;
    cellAnim->animBank = cellAnimBank;
}

static void GraphicElementData_SetMultiCellBank(const NNSG2dMultiCellDataBank *multiCellBank, GraphicElementData *elem)
{
    MultiCellAnimationData *multiCell = (MultiCellAnimationData *)&elem->animData;
    multiCell->cellBank = multiCellBank;
}

static void GraphicElementData_SetMultiCellAnimBank(const NNSG2dMultiCellAnimBankData *multiCellAnimBank, GraphicElementData *elem)
{
    MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&elem->animData;
    multiCellAnim->animBank = multiCellAnimBank;
}

static void GraphicElementData_CreateCellAnim(GraphicElementData *elem, enum HeapId heapID)
{
    CellAnimationData *cellAnim = (CellAnimationData *)&elem->animData;
    NNS_G2dInitCellAnimation(
        &cellAnim->anim, 
        NNS_G2dGetAnimSequenceByIdx(cellAnim->animBank, 0), 
        cellAnim->cellBank
    );
}

static void GraphicElementData_CreateVRamCellAnim(const CellActorResourceData *resourceData, GraphicElementData *elem, enum HeapId heapID)
{
    VRamCellAnimationData *vramCellAnim = (VRamCellAnimationData *)&elem->animData;
    vramCellAnim->transferHandle = NNS_G2dGetNewCellTransferStateHandle();
    const NNSG2dCharacterData *charData = resourceData->charData;

    NNS_G2dInitCellAnimationVramTransfered(
        &vramCellAnim->anim, 
        NNS_G2dGetAnimSequenceByIdx(vramCellAnim->animBank, 0), 
        vramCellAnim->cellBank, 
        vramCellAnim->transferHandle, 
        NNS_G2D_VRAM_ADDR_NONE, 
        NNS_G2dGetImageLocation(&elem->imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN), 
        NNS_G2dGetImageLocation(&elem->imageProxy, NNS_G2D_VRAM_TYPE_2DSUB), 
        charData->pRawData, 
        NULL, 
        charData->szByte
    );
}

static void GraphicElementData_CreateMultiCellAnim(GraphicElementData *elem, enum HeapId heapID)
{
    MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&elem->animData;
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
        multiCellAnim->cellBank
    );

    NNS_G2dSetAnimSequenceToMCAnimation(
        &multiCellAnim->anim, 
        animSequence
    );
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

static void GraphicElementManager_DrawElement(const GraphicElementManager *gfxElemMgr, GraphicElementData *elem)
{
    VecFx32 pos = elem->position;

    NNS_G2dSetRendererImageProxy(gfxElemMgr->renderer, &elem->imageProxy, &elem->paletteProxy);
    NNS_G2dBeginRendering(gfxElemMgr->renderer);
    NNS_G2dPushMtx();

    NNS_G2dSetRndCoreAffineOverwriteMode(&gfxElemMgr->renderer->rendererCore, elem->affineOverwriteMode);

    if (elem->affineOverwriteMode == NNS_G2D_RND_AFFINE_OVERWRITE_NONE) {
        NNS_G2dSetRndCoreFlipMode(
            &gfxElemMgr->renderer->rendererCore, 
            elem->flip & GRAPHIC_ELEMENT_DATA_FLIP_H, 
            elem->flip & GRAPHIC_ELEMENT_DATA_FLIP_V
        );
    } else {
        NNS_G2dSetRndCoreFlipMode(&gfxElemMgr->renderer->rendererCore, FALSE, FALSE);
    }

    NNS_G2dTranslate(pos.x, pos.y, pos.z);

    if (elem->affineOverwriteMode != NNS_G2D_RND_AFFINE_OVERWRITE_NONE) {
        NNS_G2dTranslate(elem->affineTranslation.x, elem->affineTranslation.y, elem->affineTranslation.z);
        NNS_G2dScale(elem->affineScale.x, elem->affineScale.y, elem->affineScale.z);
        NNS_G2dRotZ(FX_SinIdx(elem->affineZRotation), FX_CosIdx(elem->affineZRotation));

        // affineTranslation only serves as a pivot point for rotation and scaling
        // so we undo this translation after applying these transformations.
        NNS_G2dTranslate(-elem->affineTranslation.x, -elem->affineTranslation.y, -elem->affineTranslation.z);
    }

    // Set the overwrite parameters
    // We always want the actual overwrite flags to be equal to overwriteParam
    // so we set the flags that are not in overwriteParam to 0 with the second call
    NNS_G2dSetRendererOverwriteEnable(gfxElemMgr->renderer, elem->overwriteFlags);
    NNS_G2dSetRendererOverwriteDisable(gfxElemMgr->renderer, ~elem->overwriteFlags);

    NNS_G2dSetRendererOverwritePlttNo(gfxElemMgr->renderer, elem->explicitPalette);
    NNS_G2dSetRendererOverwritePlttNoOffset(gfxElemMgr->renderer, elem->explicitPaletteOffset);
    NNS_G2dSetRendererOverwriteMosaicFlag(gfxElemMgr->renderer, elem->explicitMosaic);
    NNS_G2dSetRendererOverwriteOBJMode(gfxElemMgr->renderer, elem->explicitOamMode);
    NNS_G2dSetRendererOverwritePriority(gfxElemMgr->renderer, elem->explicitPriority);

    if (elem->type == CELL_TYPE_CELL || elem->type == CELL_TYPE_VRAM_CELL) {
        CellAnimationData *cellAnim = (CellAnimationData *)&elem->animData;
        NNS_G2dDrawCellAnimation(&cellAnim->anim);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&elem->animData;
        NNS_G2dDrawMultiCellAnimation(&multiCellAnim->anim);
    }

    NNS_G2dPopMtx();
    NNS_G2dEndRendering();
}

static void GraphicElementManager_DrawElement_Stub(const GraphicElementManager *gfxElemMgr, GraphicElementData *elem)
{
    return;
}

static void GraphicElementData_UpdateAnimInternal(GraphicElementData *elem)
{
    GraphicElementData_UpdateAnim(elem, elem->animSpeed);
}

static void GraphicElementData_UpdateAnimInternal_Stub(GraphicElementData *elem)
{
    return;
}

static void GraphicElementManager_InsertElement(GraphicElementManager *gfxElemMgr, GraphicElementData *elem)
{
    // If the list is empty, insert the element as the only element
    if (gfxElemMgr->sentinelData.next == &gfxElemMgr->sentinelData) {
        gfxElemMgr->sentinelData.next = elem;
        gfxElemMgr->sentinelData.prev = elem;
        elem->prev = &gfxElemMgr->sentinelData;
        elem->next = &gfxElemMgr->sentinelData;
        return;
    }

    // Check if the element should be inserted at the end of the list (lowest priority)
    if (gfxElemMgr->sentinelData.prev->priority <= elem->priority) {
        elem->prev = gfxElemMgr->sentinelData.prev;
        gfxElemMgr->sentinelData.prev->next = elem;
        elem->next = &gfxElemMgr->sentinelData;
        gfxElemMgr->sentinelData.prev = elem;
        return;
    }

    // Insert the element in the correct position according to its priority
    GraphicElementData *cur = gfxElemMgr->sentinelData.next;
    while (cur != &gfxElemMgr->sentinelData) {
        if (cur->priority > elem->priority) {
            cur->prev->next = elem;
            elem->prev = cur->prev;
            cur->prev = elem;
            elem->next = cur;
            break;
        }

        cur = cur->next;
    }
}

static void GraphicElementManager_RemoveElement(GraphicElementData *elem)
{
    elem->prev->next = elem->next;
    elem->next->prev = elem->prev;
}

static void GraphicElementManager_InitElements(GraphicElementManager *gfxElemMgr)
{
    for (int i = 0; i < gfxElemMgr->maxElements; i++) {
        GraphicElementData_Reset(&gfxElemMgr->elements[i]);
        gfxElemMgr->elementStack[i] = gfxElemMgr->elements + i;
    }

    gfxElemMgr->stackPointer = 0;
}

static GraphicElementData *GraphicElementManager_AllocElement(GraphicElementManager *gfxElemMgr)
{
    if (gfxElemMgr->stackPointer >= gfxElemMgr->maxElements) {
        return NULL;
    }

    GraphicElementData *elem = gfxElemMgr->elementStack[gfxElemMgr->stackPointer];
    gfxElemMgr->stackPointer++;

    return elem;
}

static BOOL GraphicElementManager_FreeElement(GraphicElementManager *gfxElemMgr, GraphicElementData *elem)
{
    if (gfxElemMgr->stackPointer <= 0) {
        return FALSE;
    }

    GraphicElementData_Reset(elem);

    gfxElemMgr->stackPointer--;
    gfxElemMgr->elementStack[gfxElemMgr->stackPointer] = elem;

    return TRUE;
}
