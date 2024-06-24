#include <nitro.h>
#include <string.h>

#include "nnsys/g2d/g2d_RendererCore.h"
#include "struct_defs/struct_020095C4.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02017728.h"
#include "heap.h"
#include "unk_020218BC.h"

#define GRAPHIC_ELEMENT_DATA_FLIP_NONE 0
#define GRAPHIC_ELEMENT_DATA_FLIP_H 1
#define GRAPHIC_ELEMENT_DATA_FLIP_V 2

enum CellType {
    CELL_TYPE_NONE = 0,
    CELL_TYPE_CELL,
    CELL_TYPE_MULTI_CELL,
    CELL_TYPE_VRAM_CELL,
};

typedef struct {
    const NNSG2dCellDataBank * unk_00;
    const NNSG2dCellAnimBankData * unk_04;
    NNSG2dCellAnimation unk_08;
} CellAnimationData;

typedef struct {
    NNSG2dCellDataBank * unk_00;
    const NNSG2dCellAnimBankData * unk_04;
    NNSG2dCellAnimation unk_08;
    u32 transferHandle;
} VRamCellAnimationData;

typedef struct {
    const NNSG2dCellDataBank * unk_00;
    const NNSG2dCellAnimBankData * unk_04;
    NNSG2dMultiCellAnimation unk_08;
    const NNSG2dMultiCellDataBank * unk_6C;
    const NNSG2dMultiCellAnimBankData * unk_70;
    NNSG2dNode * unk_74;
    NNSG2dCellAnimation * unk_78;
} MultiCellAnimationData;

typedef struct GraphicElementData_t {
    VecFx32 position;
    VecFx32 affineTranslation;
    VecFx32 affineScale;
    u16 affineZRotation;
    u8 affineOverwriteMode;
    u8 flip;
    u8 overwriteFlags;
    u8 explicitPalette;
    u8 explicitPaletteOffset;
    BOOL explicitMosaic;
    GXOamMode explicitOamMode;
    u8 draw;
    u8 unk_35;
    fx32 unk_38;
    GraphicElementManager * manager;
    u32 unk_40[29];
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy paletteProxy;
    u32 type;
    u16 unk_F0;
    u8 explicitPriority;
    u16 priority;
    NNS_G2D_VRAM_TYPE vramType;
    struct GraphicElementData_t *prev;
    struct GraphicElementData_t *next;
} GraphicElementData;

typedef struct GraphicElementManager_t {
    GraphicElementData * elements;
    int maxElements;
    GraphicElementData ** elementStack; // Stack of currently unused elements
    int stackPointer;
    GraphicElementData sentinelData;
    NNSG2dRendererInstance * renderer;
    void * rawAnimData;
    NNSG2dCellAnimBankData * animData;
    BOOL active;
} GraphicElementManager;

typedef void (* GraphicElementDrawFunc)(const GraphicElementManager *, GraphicElementData *);
typedef void (* GraphicElementInitializeFunc)(GraphicElementData *);

static void GraphicElementManager_Reset(GraphicElementManager * param0);
static enum CellType sub_020221B8(const CellActorResourceData * param0);
static void sub_020221D0(const NNSG2dCellDataBank * param0, GraphicElementData * param1);
static void sub_020221D4(const NNSG2dCellAnimBankData * param0, GraphicElementData * param1);
static void sub_020221D8(const NNSG2dMultiCellDataBank * param0, GraphicElementData * param1);
static void sub_020221E0(const NNSG2dMultiCellAnimBankData * param0, GraphicElementData * param1);
static void sub_020221E8(GraphicElementData * param0, int param1);
static void sub_02022208(const CellActorResourceData * param0, GraphicElementData * param1, int param2);
static void sub_02022264(GraphicElementData * param0, int param1);
static BOOL GraphicElementManager_InitElementFromResource(const GraphicElementManager * param0, const CellActorResourceData * param1, GraphicElementData * param2, int param3);
static u32 sub_020222C4(const NNSG2dImagePaletteProxy * param0, u32 param1);
static void GraphicElementManager_DrawElement(const GraphicElementManager * param0, GraphicElementData * param1);
static void GraphicElementManager_DrawElement_Stub(const GraphicElementManager * param0, GraphicElementData * param1);
static void sub_02022454(GraphicElementData * param0);
static void sub_02022460(GraphicElementData * param0);
static void GraphicElementManager_InsertElement(GraphicElementManager * param0, GraphicElementData * param1);
static void GraphicElementManager_RemoveElement(GraphicElementData * param0);
static void GraphicElementManager_InitElements(GraphicElementManager * param0);
static GraphicElementData * GraphicElementManager_AllocElement(GraphicElementManager * param0);
static BOOL GraphicElementManager_FreeElement(GraphicElementManager * param0, GraphicElementData * param1);

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

    NNS_G2dGetUnpackedAnimBank(gfxElemMgr->rawAnimData, &gfxElemMgr->animData);
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
    GraphicElementData * elem;
    static const GraphicElementDrawFunc sDrawFuncs[] = {
        GraphicElementManager_DrawElement_Stub,
        GraphicElementManager_DrawElement
    };
    static const GraphicElementInitializeFunc v2[] = {
        sub_02022460,
        sub_02022454
    };

    GF_ASSERT(gfxElemMgr);

    if (gfxElemMgr->active == FALSE) {
        return;
    }

    elem = gfxElemMgr->sentinelData.next;

    while (elem != &gfxElemMgr->sentinelData) {
        sDrawFuncs[elem->draw](gfxElemMgr, elem);
        v2[elem->unk_35](elem);
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
    gfxElemMgr->active = 0;
}

void GraphicElementData_Reset(GraphicElementData *elem)
{
    int v0;

    elem->manager = NULL;
    memset(elem, 0, sizeof(GraphicElementData));

    NNS_G2dInitImageProxy(&elem->imageProxy);
    NNS_G2dInitImagePaletteProxy(&elem->paletteProxy);

    elem->explicitOamMode = GX_OAM_MODE_NORMAL;
}

GraphicElementData * GraphicElementManager_AddElement(const CellActorInitParamsEx * param0)
{
    GraphicElementData *elem = GraphicElementManager_AllocElement(param0->manager);
    if (elem == NULL) {
        return NULL;
    }

    elem->manager = param0->manager;
    elem->unk_F0 = 0;
    elem->position = param0->position;
    elem->affineScale = param0->affineScale;
    elem->affineZRotation = param0->affineZRotation;
    elem->vramType = param0->vramType;
    elem->priority = param0->priority;
    elem->affineOverwriteMode = NNS_G2D_RND_AFFINE_OVERWRITE_NONE;
    elem->flip = GRAPHIC_ELEMENT_DATA_FLIP_NONE;
    elem->explicitMosaic = FALSE;
    elem->explicitOamMode = GX_OAM_MODE_NORMAL;
    elem->overwriteFlags = NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS | NNS_G2D_RND_OVERWRITE_PRIORITY;

    NNS_G2dSetRndCoreAffineOverwriteMode(
        &param0->manager->renderer->rendererCore, 
        elem->affineOverwriteMode
    );
    NNS_G2dSetRndCoreFlipMode(
        &param0->manager->renderer->rendererCore, 
        elem->flip & GRAPHIC_ELEMENT_DATA_FLIP_H,
        elem->flip & GRAPHIC_ELEMENT_DATA_FLIP_V
    );

    elem->draw = TRUE;
    elem->unk_35 = 0;
    elem->unk_38 = (FX32_ONE * 2);

    if (GraphicElementManager_InitElementFromResource(param0->manager, param0->resourceData, elem, param0->heapID) == 0) {
        GraphicElementData_Delete(elem);
        return NULL;
    }

    elem->explicitPaletteOffset = sub_020222C4(&elem->paletteProxy, elem->vramType);
    elem->explicitPalette = elem->explicitPaletteOffset;

    GraphicElementManager_InsertElement(param0->manager, elem);

    return elem;
}

GraphicElementData * sub_02021B90 (const CellActorInitParams * params)
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

    return GraphicElementManager_AddElement(&paramsEx);
}

void GraphicElementData_Delete(GraphicElementData *gfxElem)
{
    if (gfxElem->type != CELL_TYPE_NONE) {
        CellAnimationData *cellAnim = (CellAnimationData *)&gfxElem->unk_40;

        if (gfxElem->prev != NULL) {
            GraphicElementManager_RemoveElement(gfxElem);
        }

        if (gfxElem->type == CELL_TYPE_VRAM_CELL) {
            VRamCellAnimationData *vramCellAnim = (VRamCellAnimationData *)&gfxElem->unk_40;

            if (NNS_G2dGetImageLocation(&gfxElem->imageProxy, gfxElem->vramType) != NNS_G2D_VRAM_ADDR_NONE) {
                NNS_G2dFreeCellTransferStateHandle(vramCellAnim->transferHandle);
            }
        }

        if (gfxElem->type == CELL_TYPE_MULTI_CELL) {
            MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&gfxElem->unk_40;

            if (multiCellAnim->unk_74 != NULL) {
                Heap_FreeToHeap(multiCellAnim->unk_74);
            }

            if (multiCellAnim->unk_78 != NULL) {
                Heap_FreeToHeap(multiCellAnim->unk_78);
            }
        }

        gfxElem->type = CELL_TYPE_NONE;

        GraphicElementManager_FreeElement(gfxElem->manager, gfxElem);
    }
}

void sub_02021C50 (GraphicElementData * param0, const VecFx32 * param1)
{
    param0->position = *param1;
}

void sub_02021C60 (GraphicElementData * param0, const VecFx32 * param1)
{
    param0->affineTranslation = *param1;
}

void sub_02021C70 (GraphicElementData * param0, const VecFx32 * param1)
{
    param0->affineScale = *param1;
}

void sub_02021C80 (GraphicElementData * param0, const VecFx32 * param1, int param2)
{
    sub_02021C70(param0, param1);
    sub_02021CF8(param0, param2);
}

void sub_02021C94 (GraphicElementData * param0, u16 param1)
{
    param0->affineZRotation = param1;
}

void sub_02021C98 (GraphicElementData * param0, u16 param1, int param2)
{
    sub_02021C94(param0, param1);
    sub_02021CF8(param0, param2);
}

void sub_02021CAC (GraphicElementData * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < 2);

    param0->draw = param1;
}

void sub_02021CC8 (GraphicElementData * param0, int param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1 < 2);

    param0->unk_35 = param1;
}

void sub_02021CE4 (GraphicElementData * param0, fx32 param1)
{
    GF_ASSERT(param0);

    param0->unk_38 = param1;
}

void sub_02021CF8 (GraphicElementData * param0, int param1)
{
    GF_ASSERT(param0);

    param0->affineOverwriteMode = param1;
}

void sub_02021D0C (GraphicElementData * param0, int param1)
{
    GF_ASSERT(param0);

    param0->flip = param1;
    param0->affineOverwriteMode = 0;
}

const VecFx32 * sub_02021D28 (const GraphicElementData * param0)
{
    return &param0->position;
}

const VecFx32 * sub_02021D2C (const GraphicElementData * param0)
{
    return &param0->affineScale;
}

u16 sub_02021D30 (const GraphicElementData * param0)
{
    return param0->affineZRotation;
}

int sub_02021D34 (const GraphicElementData * param0)
{
    return param0->draw;
}

int sub_02021D3C (const GraphicElementData * param0)
{
    return param0->unk_35;
}

u32 sub_02021D44 (const GraphicElementData * param0)
{
    u32 v0;

    GF_ASSERT(param0);

    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v1 = (CellAnimationData *)&param0->unk_40;
        v0 = v1->unk_04->numSequences;
    } else {
        MultiCellAnimationData * v2 = (MultiCellAnimationData *)&param0->unk_40;
        v0 = v2->unk_70->numSequences;
    }

    return v0;
}

void SpriteActor_SetSpriteAnimActive (GraphicElementData * param0, u32 param1)
{
    const NNSG2dAnimSequence * v0;

    GF_ASSERT(sub_02021D44(param0) > param1);
    param0->unk_F0 = param1;

    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v1 = (CellAnimationData *)&param0->unk_40;

        v0 = NNS_G2dGetAnimSequenceByIdx(v1->unk_04, param1);
        NNS_G2dSetCellAnimationSequence(&v1->unk_08, v0);
        NNS_G2dStartAnimCtrl(&v1->unk_08.animCtrl);
    } else {
        MultiCellAnimationData * v2 = (MultiCellAnimationData *)&param0->unk_40;

        v0 = NNS_G2dGetAnimSequenceByIdx(v2->unk_70, param1);
        NNS_G2dSetAnimSequenceToMCAnimation(&v2->unk_08, v0);
        NNS_G2dStartAnimCtrl(&v2->unk_08.animCtrl);
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
        CellAnimationData * v0 = (CellAnimationData *)&param0->unk_40;

        NNS_G2dResetAnimCtrlState(&v0->unk_08.animCtrl);
        NNS_G2dStartAnimCtrl(&v0->unk_08.animCtrl);
        SpriteActor_SetAnimFrame(param0, 0);
    } else {
        MultiCellAnimationData * v1 = (MultiCellAnimationData *)&param0->unk_40;

        NNS_G2dResetAnimCtrlState(&v1->unk_08.animCtrl);
        NNS_G2dStartAnimCtrl(&v1->unk_08.animCtrl);
        SpriteActor_SetAnimFrame(param0, 0);
    }
}

u32 sub_02021E24 (const GraphicElementData * param0)
{
    return param0->unk_F0;
}

void sub_02021E2C (GraphicElementData * param0, fx32 param1)
{
    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v0 = (CellAnimationData *)&param0->unk_40;
        NNS_G2dTickCellAnimation(&v0->unk_08, param1);
    } else {
        MultiCellAnimationData * v1 = (MultiCellAnimationData *)&param0->unk_40;
        NNS_G2dTickMCAnimation(&v1->unk_08, param1);
    }
}

void SpriteActor_SetAnimFrame (GraphicElementData * param0, u16 param1)
{
    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v0 = (CellAnimationData *)&param0->unk_40;
        NNS_G2dSetCellAnimationCurrentFrame(&v0->unk_08, param1);
    } else {
        MultiCellAnimationData * v1 = (MultiCellAnimationData *)&param0->unk_40;
        NNS_G2dSetMCAnimationCurrentFrame(&v1->unk_08, param1);
    }
}

u16 sub_02021E74 (const GraphicElementData * param0)
{
    NNSG2dAnimController * v0;

    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v1 = (CellAnimationData *)&param0->unk_40;
        v0 = NNS_G2dGetCellAnimationAnimCtrl(&v1->unk_08);
    } else {
        MultiCellAnimationData * v2 = (MultiCellAnimationData *)&param0->unk_40;
        v0 = NNS_G2dGetMCAnimAnimCtrl(&v2->unk_08);
    }

    return NNS_G2dGetAnimCtrlCurrentFrame(v0);
}

void sub_02021E80 (GraphicElementData * param0, u8 param1)
{
    param0->explicitPriority = param1;
}

u8 sub_02021E88 (const GraphicElementData * param0)
{
    return param0->explicitPriority;
}

void sub_02021E90 (GraphicElementData * param0, u32 param1)
{
    GF_ASSERT(param0);

    param0->explicitPalette = param1;
    param0->overwriteFlags |= NNS_G2D_RND_OVERWRITE_PLTTNO;
    param0->overwriteFlags &= ~NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS;
}

void sub_02021EC4 (GraphicElementData * param0, u32 param1)
{
    sub_02021E90(param0, param1);
    param0->explicitPalette += sub_020222C4(&param0->paletteProxy, param0->vramType);
}

u32 sub_02021EE8 (const GraphicElementData * param0)
{
    return param0->explicitPalette;
}

void sub_02021EF0 (GraphicElementData * param0, u32 param1)
{
    GF_ASSERT(param0);

    param0->explicitPaletteOffset = param1;
    param0->overwriteFlags |= NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS;
    param0->overwriteFlags &= ~NNS_G2D_RND_OVERWRITE_PLTTNO;
}

void sub_02021F24 (GraphicElementData * param0, u32 param1)
{
    sub_02021EF0(param0, param1);
    param0->explicitPaletteOffset += sub_020222C4(&param0->paletteProxy, param0->vramType);
}

u32 sub_02021F48 (const GraphicElementData * param0)
{
    GF_ASSERT(param0);
    return param0->explicitPaletteOffset;
}

void sub_02021F58 (GraphicElementData * param0, u32 param1)
{
    GraphicElementManager * v0 = (GraphicElementManager *)param0->manager;

    param0->priority = param1;

    GraphicElementManager_RemoveElement(param0);
    GraphicElementManager_InsertElement(v0, param0);
}

u32 sub_02021F74 (const GraphicElementData * param0)
{
    return param0->priority;
}

void sub_02021F7C (GraphicElementData * param0, const NNSG2dImageProxy * param1)
{
    param0->imageProxy = *param1;
}

NNSG2dImageProxy * SpriteActor_ImageProxy (GraphicElementData * param0)
{
    return &param0->imageProxy;
}

NNSG2dImagePaletteProxy * sub_02021F9C (GraphicElementData * param0)
{
    return &param0->paletteProxy;
}

void sub_02021FA0 (GraphicElementData * param0, BOOL param1)
{
    param0->explicitMosaic = param1;

    if (param1 == 1) {
        param0->overwriteFlags |= NNS_G2D_RND_OVERWRITE_MOSAIC;
    } else {
        param0->overwriteFlags ^= NNS_G2D_RND_OVERWRITE_MOSAIC;
    }
}

NNS_G2D_VRAM_TYPE sub_02021FC8 (const GraphicElementData * param0)
{
    return param0->vramType;
}

BOOL sub_02021FD0 (GraphicElementData * param0)
{
    GF_ASSERT(param0);

    if ((param0->type == 1) || (param0->type == 3)) {
        CellAnimationData * v0 = (CellAnimationData *)&param0->unk_40;
        return NNS_G2dIsAnimCtrlActive(&v0->unk_08.animCtrl);
    } else {
        MultiCellAnimationData * v1 = (MultiCellAnimationData *)&param0->unk_40;
        return NNS_G2dIsAnimCtrlActive(&v1->unk_08.animCtrl);
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
        CellAnimationData * v4 = (CellAnimationData *)&param0->unk_40;
        v0 = v4->unk_04;
    } else {
        MultiCellAnimationData * v5 = (MultiCellAnimationData *)&param0->unk_40;
        v0 = v5->unk_70;
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

static BOOL GraphicElementManager_InitElementFromResource(const GraphicElementManager *gfxElemMgr, 
    const CellActorResourceData * param1, GraphicElementData *elem, int param3)
{
    elem->type = sub_020221B8(param1);
    elem->imageProxy = *param1->unk_00;
    elem->paletteProxy = *param1->unk_08;

    sub_020221D0(param1->unk_0C, elem);

    if (param1->unk_10) {
        sub_020221D4(param1->unk_10, elem);
    } else {
        sub_020221D4(gfxElemMgr->animData, elem);
    }

    if (elem->type == 2) {
        sub_020221D8(param1->multiCellBank, elem);
        sub_020221E0(param1->unk_18, elem);
        sub_02022264(elem, param3);
    } else {
        if (elem->type == 3) {
            VRamCellAnimationData * v0 = (VRamCellAnimationData *)&elem->unk_40;
            sub_02022208(param1, elem, param3);
        } else {
            sub_020221E8(elem, param3);
        }
    }

    elem->explicitPriority = param1->unk_20;

    return 1;
}

static enum CellType sub_020221B8 (const CellActorResourceData * param0)
{
    if (param0->multiCellBank != NULL) {
        return CELL_TYPE_MULTI_CELL;
    }

    if (param0->unk_1C == 1) {
        return CELL_TYPE_VRAM_CELL;
    }

    return CELL_TYPE_CELL;
}

static void sub_020221D0 (const NNSG2dCellDataBank * param0, GraphicElementData * param1)
{
    CellAnimationData * v0;

    v0 = (CellAnimationData *)&param1->unk_40;
    v0->unk_00 = param0;
}

static void sub_020221D4 (const NNSG2dCellAnimBankData * param0, GraphicElementData * param1)
{
    CellAnimationData * v0;

    v0 = (CellAnimationData *)&param1->unk_40;
    v0->unk_04 = param0;
}

static void sub_020221D8 (const NNSG2dMultiCellDataBank * param0, GraphicElementData * param1)
{
    MultiCellAnimationData * v0;

    v0 = (MultiCellAnimationData *)&param1->unk_40;
    v0->unk_6C = param0;
}

static void sub_020221E0 (const NNSG2dMultiCellAnimBankData * param0, GraphicElementData * param1)
{
    MultiCellAnimationData * v0;

    v0 = (MultiCellAnimationData *)&param1->unk_40;
    v0->unk_70 = param0;
}

static void sub_020221E8 (GraphicElementData * param0, int param1)
{
    CellAnimationData * v0;

    v0 = (CellAnimationData *)&param0->unk_40;
    NNS_G2dInitCellAnimation((NNSG2dCellAnimation *)&v0->unk_08, NNS_G2dGetAnimSequenceByIdx(v0->unk_04, 0), v0->unk_00);
}

static void sub_02022208 (const CellActorResourceData * param0, GraphicElementData * param1, int param2)
{
    VRamCellAnimationData * v0;
    const NNSG2dCharacterData * v1;

    v0 = (VRamCellAnimationData *)&param1->unk_40;
    v0->transferHandle = NNS_G2dGetNewCellTransferStateHandle();
    v1 = param0->unk_04;

    NNS_G2dInitCellAnimationVramTransfered((NNSG2dCellAnimation *)&v0->unk_08, NNS_G2dGetAnimSequenceByIdx(v0->unk_04, 0), v0->unk_00, v0->transferHandle, NNS_G2D_VRAM_ADDR_NONE, NNS_G2dGetImageLocation(&param1->imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN), NNS_G2dGetImageLocation(&param1->imageProxy, NNS_G2D_VRAM_TYPE_2DSUB), v1->pRawData, NULL, v1->szByte);
}

static void sub_02022264 (GraphicElementData * param0, int param1)
{
    MultiCellAnimationData * v0;
    const NNSG2dMultiCellAnimSequence * v1;
    u16 v2;

    v0 = (MultiCellAnimationData *)&param0->unk_40;
    v1 = NNS_G2dGetAnimSequenceByIdx(v0->unk_70, 0);
    v2 = NNS_G2dGetMCBankNumNodesRequired(v0->unk_6C);

    v0->unk_74 = Heap_AllocFromHeap(param1, sizeof(NNSG2dNode) * v2);
    v0->unk_78 = Heap_AllocFromHeap(param1, sizeof(NNSG2dCellAnimation) * v2);

    NNS_G2dInitMCAnimation((NNSG2dMultiCellAnimation *)&v0->unk_08, v0->unk_74, v0->unk_78, v2, v0->unk_04, v0->unk_00, v0->unk_6C);
    NNS_G2dSetAnimSequenceToMCAnimation((NNSG2dMultiCellAnimation *)&v0->unk_08, v1);
}

static u32 sub_020222C4 (const NNSG2dImagePaletteProxy * param0, u32 param1)
{
    u32 v0;
    u32 v1;

    if (param0->bExtendedPlt) {
        v0 = 32 * 16;
    } else {
        if (param0->fmt == GX_TEXFMT_PLTT256) {
            v0 = 0;
        } else {
            v0 = 32;
        }
    }

    if (v0 != 0) {
        v1 = NNS_G2dGetImagePaletteLocation(param0, param1);
        v1 /= v0;
    } else {
        v1 = 0;
    }

    return v1;
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

    if (elem->type == 1 || elem->type == 3) {
        CellAnimationData *cellAnim = (CellAnimationData *)&elem->unk_40;
        NNS_G2dDrawCellAnimation(&cellAnim->unk_08);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&elem->unk_40;
        NNS_G2dDrawMultiCellAnimation(&multiCellAnim->unk_08);
    }

    NNS_G2dPopMtx();
    NNS_G2dEndRendering();
}

static void GraphicElementManager_DrawElement_Stub(const GraphicElementManager *gfxElemMgr, GraphicElementData *elem)
{
    return;
}

static void sub_02022454 (GraphicElementData * param0)
{
    sub_02021E2C(param0, param0->unk_38);
}

static void sub_02022460 (GraphicElementData * param0)
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
