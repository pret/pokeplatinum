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

typedef struct {
    const NNSG2dCellDataBank * unk_00;
    const NNSG2dCellAnimBankData * unk_04;
    NNSG2dCellAnimation unk_08;
} CellAnimationData;

typedef struct {
    NNSG2dCellDataBank * unk_00;
    const NNSG2dCellAnimBankData * unk_04;
    NNSG2dCellAnimation unk_08;
    u32 unk_60;
} CellDataAnimationWrapper;

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
    u8 unk_34;
    u8 unk_35;
    fx32 unk_38;
    GraphicElementManager * manager;
    u32 unk_40[29];
    NNSG2dImageProxy imageProxy;
    NNSG2dImagePaletteProxy paletteProxy;
    u32 unk_EC;
    u16 unk_F0;
    u8 explicitPriority;
    u16 unk_F4;
    NNS_G2D_VRAM_TYPE type;
    struct GraphicElementData_t *prev;
    struct GraphicElementData_t *next;
} GraphicElementData;

typedef struct GraphicElementManager_t {
    GraphicElementData * elements;
    int maxElements;
    GraphicElementData ** unk_08;
    int unk_0C;
    GraphicElementData sentinelData;
    NNSG2dRendererInstance * renderer;
    void * rawAnimData;
    NNSG2dCellAnimBankData * animData;
    u32 unk_11C;
} GraphicElementManager;

typedef void (* GraphicElementUpdateFunc)(const GraphicElementManager *, GraphicElementData *);
typedef void (* GraphicElementInitializeFunc)(GraphicElementData *);

static void GraphicElementManager_Reset(GraphicElementManager * param0);
static u32 sub_020221B8(const UnkStruct_ov19_021DA864 * param0);
static void sub_020221D0(const NNSG2dCellDataBank * param0, GraphicElementData * param1);
static void sub_020221D4(const NNSG2dCellAnimBankData * param0, GraphicElementData * param1);
static void sub_020221D8(const NNSG2dMultiCellDataBank * param0, GraphicElementData * param1);
static void sub_020221E0(const NNSG2dMultiCellAnimBankData * param0, GraphicElementData * param1);
static void sub_020221E8(GraphicElementData * param0, int param1);
static void sub_02022208(const UnkStruct_ov19_021DA864 * param0, GraphicElementData * param1, int param2);
static void sub_02022264(GraphicElementData * param0, int param1);
static BOOL sub_02022110(const GraphicElementManager * param0, const UnkStruct_ov19_021DA864 * param1, GraphicElementData * param2, int param3);
static u32 sub_020222C4(const NNSG2dImagePaletteProxy * param0, u32 param1);
static void GraphicElementManager_DrawElement(const GraphicElementManager * param0, GraphicElementData * param1);
static void sub_02022450(const GraphicElementManager * param0, GraphicElementData * param1);
static void sub_02022454(GraphicElementData * param0);
static void sub_02022460(GraphicElementData * param0);
static void sub_02022464(GraphicElementManager * param0, GraphicElementData * param1);
static void sub_020224FC(GraphicElementData * param0);
static void GraphicElementManager_InitElements(GraphicElementManager * param0);
static GraphicElementData * sub_02022550(GraphicElementManager * param0);
static BOOL sub_0202256C(GraphicElementManager * param0, GraphicElementData * param1);

GraphicElementManager *GraphicElementManager_New(const GraphicElementManagerParams *params)
{
    GraphicElementManager *gfxElemMgr;
    int v1;

    GF_ASSERT(params);
    GF_ASSERT(params->renderer);

    gfxElemMgr = Heap_AllocFromHeap(params->heapID, sizeof(GraphicElementManager));
    GF_ASSERT(gfxElemMgr);

    GraphicElementManager_Reset(gfxElemMgr);

    gfxElemMgr->elements = Heap_AllocFromHeap(params->heapID, sizeof(GraphicElementData) * params->maxElements);
    GF_ASSERT(gfxElemMgr->elements);
    gfxElemMgr->maxElements = params->maxElements;

    gfxElemMgr->unk_08 = Heap_AllocFromHeap(params->heapID, sizeof(GraphicElementData *) * params->maxElements);
    GF_ASSERT(gfxElemMgr->unk_08);

    GraphicElementManager_InitElements(gfxElemMgr);
    GraphicElementData_Reset(&gfxElemMgr->sentinelData);

    gfxElemMgr->sentinelData.prev = &gfxElemMgr->sentinelData;
    gfxElemMgr->sentinelData.next = &gfxElemMgr->sentinelData;
    gfxElemMgr->renderer = params->renderer;
    gfxElemMgr->rawAnimData = ReadFileToHeap(params->heapID, "data/clact_default.NANR");

    NNS_G2dGetUnpackedAnimBank(gfxElemMgr->rawAnimData, &gfxElemMgr->animData);
    gfxElemMgr->unk_11C = 1;

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

    sub_020219C0(gfxElemMgr);

    Heap_FreeToHeap(gfxElemMgr->rawAnimData);
    Heap_FreeToHeap(gfxElemMgr->unk_08);
    Heap_FreeToHeap(gfxElemMgr->elements);

    GraphicElementManager_Reset(gfxElemMgr);
    Heap_FreeToHeap(gfxElemMgr);

    gfxElemMgr = NULL;

    return TRUE;
}

BOOL sub_020219A4 (GraphicElementManager * param0, u8 param1)
{
    if (param0 == NULL) {
        return 0;
    }

    if (param0->elements == NULL) {
        return 0;
    }

    param0->unk_11C = param1;

    return 1;
}

BOOL sub_020219C0(GraphicElementManager *gfxElemMgr)
{
    GraphicElementData *elem;
    GraphicElementData *next;

    if (gfxElemMgr == NULL) {
        return FALSE;
    }

    if (gfxElemMgr->elements == NULL) {
        return TRUE;
    }

    elem = gfxElemMgr->sentinelData.next;
    while (elem != &gfxElemMgr->sentinelData) {
        next = elem->next;
        sub_02021BD4(elem);
        elem = next;
    }

    return TRUE;
}

void sub_020219F8 (const GraphicElementManager * param0)
{
    GraphicElementData * v0;
    static const GraphicElementUpdateFunc v1[] = {
        sub_02022450,
        GraphicElementManager_DrawElement
    };
    static const GraphicElementInitializeFunc v2[] = {
        sub_02022460,
        sub_02022454
    };

    GF_ASSERT(param0);

    if (param0->unk_11C == 0) {
        return;
    }

    v0 = param0->sentinelData.next;

    while (v0 != &param0->sentinelData) {
        v1[v0->unk_34](param0, v0);
        v2[v0->unk_35](v0);
        v0 = v0->next;
    }
}

static void GraphicElementManager_Reset(GraphicElementManager *gfxElemMgr)
{
    gfxElemMgr->elements = NULL;
    gfxElemMgr->maxElements = 0;
    gfxElemMgr->unk_08 = NULL;
    gfxElemMgr->unk_0C = 0;
    gfxElemMgr->renderer = NULL;

    GraphicElementData_Reset(&gfxElemMgr->sentinelData);
    gfxElemMgr->unk_11C = 0;
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

GraphicElementData * sub_02021AA0 (const UnkStruct_ov115_02261520 * param0)
{
    GraphicElementData * v0;

    v0 = sub_02022550(param0->unk_00);

    if (v0 == NULL) {
        return NULL;
    }

    v0->manager = param0->unk_00;
    v0->unk_F0 = 0;
    v0->position = param0->unk_08;
    v0->affineScale = param0->unk_14;
    v0->affineZRotation = param0->unk_20;
    v0->type = param0->unk_28;
    v0->unk_F4 = param0->unk_24;
    v0->affineOverwriteMode = NNS_G2D_RND_AFFINE_OVERWRITE_NONE;
    v0->flip = GRAPHIC_ELEMENT_DATA_FLIP_NONE;
    v0->explicitMosaic = FALSE;
    v0->explicitOamMode = GX_OAM_MODE_NORMAL;
    v0->overwriteFlags = NNS_G2D_RND_OVERWRITE_PLTTNO_OFFS | NNS_G2D_RND_OVERWRITE_PRIORITY;

    NNS_G2dSetRndCoreAffineOverwriteMode(&(param0->unk_00->renderer->rendererCore), v0->affineOverwriteMode);
    NNS_G2dSetRndCoreFlipMode(&(param0->unk_00->renderer->rendererCore), v0->flip & 1, v0->flip & 2);

    v0->unk_34 = 1;
    v0->unk_35 = 0;
    v0->unk_38 = (FX32_ONE * 2);

    if (sub_02022110(param0->unk_00, param0->unk_04, v0, param0->unk_2C) == 0) {
        sub_02021BD4(v0);
        return NULL;
    }

    v0->explicitPaletteOffset = sub_020222C4(&v0->paletteProxy, v0->type);
    v0->explicitPalette = v0->explicitPaletteOffset;

    sub_02022464(param0->unk_00, v0);

    return v0;
}

GraphicElementData * sub_02021B90 (const UnkStruct_ov83_0223D9A8 * param0)
{
    UnkStruct_ov115_02261520 v0;

    v0.unk_00 = param0->unk_00;
    v0.unk_04 = param0->unk_04;
    v0.unk_08 = param0->unk_08;
    v0.unk_14.x = FX32_ONE;
    v0.unk_14.y = FX32_ONE;
    v0.unk_14.z = FX32_ONE;
    v0.unk_20 = 0;
    v0.unk_24 = param0->unk_14;
    v0.unk_28 = param0->unk_18;
    v0.unk_2C = param0->unk_1C;

    return sub_02021AA0(&v0);
}

void sub_02021BD4 (GraphicElementData *gfxElem)
{
    GraphicElementManager *gfxElemMgr;

    if (gfxElem->unk_EC != 0) {
        CellAnimationData *v1 = (CellAnimationData *)&gfxElem->unk_40;

        if (gfxElem->prev != NULL) {
            sub_020224FC(gfxElem);
        }

        if (gfxElem->unk_EC == 3) {
            CellDataAnimationWrapper * v2 = (CellDataAnimationWrapper *)&gfxElem->unk_40;

            if (NNS_G2dGetImageLocation(&gfxElem->imageProxy, gfxElem->type) != NNS_G2D_VRAM_ADDR_NONE) {
                NNS_G2dFreeCellTransferStateHandle(v2->unk_60);
            }
        }

        if (gfxElem->unk_EC == 2) {
            MultiCellAnimationData * v3 = (MultiCellAnimationData *)&gfxElem->unk_40;

            if (v3->unk_74 != NULL) {
                Heap_FreeToHeap(v3->unk_74);
            }

            if (v3->unk_78 != NULL) {
                Heap_FreeToHeap(v3->unk_78);
            }
        }

        gfxElem->unk_EC = 0;

        gfxElemMgr = (GraphicElementManager *)gfxElem->manager;
        sub_0202256C(gfxElemMgr, gfxElem);
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

    param0->unk_34 = param1;
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
    return param0->unk_34;
}

int sub_02021D3C (const GraphicElementData * param0)
{
    return param0->unk_35;
}

u32 sub_02021D44 (const GraphicElementData * param0)
{
    u32 v0;

    GF_ASSERT(param0);

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
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

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
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
    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
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
    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
        CellAnimationData * v0 = (CellAnimationData *)&param0->unk_40;
        NNS_G2dTickCellAnimation(&v0->unk_08, param1);
    } else {
        MultiCellAnimationData * v1 = (MultiCellAnimationData *)&param0->unk_40;
        NNS_G2dTickMCAnimation(&v1->unk_08, param1);
    }
}

void SpriteActor_SetAnimFrame (GraphicElementData * param0, u16 param1)
{
    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
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

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
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
    param0->explicitPalette += sub_020222C4(&param0->paletteProxy, param0->type);
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
    param0->explicitPaletteOffset += sub_020222C4(&param0->paletteProxy, param0->type);
}

u32 sub_02021F48 (const GraphicElementData * param0)
{
    GF_ASSERT(param0);
    return param0->explicitPaletteOffset;
}

void sub_02021F58 (GraphicElementData * param0, u32 param1)
{
    GraphicElementManager * v0 = (GraphicElementManager *)param0->manager;

    param0->unk_F4 = param1;

    sub_020224FC(param0);
    sub_02022464(v0, param0);
}

u32 sub_02021F74 (const GraphicElementData * param0)
{
    return param0->unk_F4;
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
    return param0->type;
}

BOOL sub_02021FD0 (GraphicElementData * param0)
{
    GF_ASSERT(param0);

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
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

    if ((param0->unk_EC == 1) || (param0->unk_EC == 3)) {
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

static BOOL sub_02022110 (const GraphicElementManager * param0, const UnkStruct_ov19_021DA864 * param1, GraphicElementData * param2, int param3)
{
    param2->unk_EC = sub_020221B8(param1);
    param2->imageProxy = *param1->unk_00;
    param2->paletteProxy = *param1->unk_08;

    sub_020221D0(param1->unk_0C, param2);

    if (param1->unk_10) {
        sub_020221D4(param1->unk_10, param2);
    } else {
        sub_020221D4(param0->animData, param2);
    }

    if (param2->unk_EC == 2) {
        sub_020221D8(param1->unk_14, param2);
        sub_020221E0(param1->unk_18, param2);
        sub_02022264(param2, param3);
    } else {
        if (param2->unk_EC == 3) {
            CellDataAnimationWrapper * v0 = (CellDataAnimationWrapper *)&param2->unk_40;
            sub_02022208(param1, param2, param3);
        } else {
            sub_020221E8(param2, param3);
        }
    }

    param2->explicitPriority = param1->unk_20;

    return 1;
}

static u32 sub_020221B8 (const UnkStruct_ov19_021DA864 * param0)
{
    if (param0->unk_14 != NULL) {
        return 2;
    }

    if (param0->unk_1C == 1) {
        return 3;
    }

    return 1;
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

static void sub_02022208 (const UnkStruct_ov19_021DA864 * param0, GraphicElementData * param1, int param2)
{
    CellDataAnimationWrapper * v0;
    const NNSG2dCharacterData * v1;

    v0 = (CellDataAnimationWrapper *)&param1->unk_40;
    v0->unk_60 = NNS_G2dGetNewCellTransferStateHandle();
    v1 = param0->unk_04;

    NNS_G2dInitCellAnimationVramTransfered((NNSG2dCellAnimation *)&v0->unk_08, NNS_G2dGetAnimSequenceByIdx(v0->unk_04, 0), v0->unk_00, v0->unk_60, NNS_G2D_VRAM_ADDR_NONE, NNS_G2dGetImageLocation(&param1->imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN), NNS_G2dGetImageLocation(&param1->imageProxy, NNS_G2D_VRAM_TYPE_2DSUB), v1->pRawData, NULL, v1->szByte);
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

    if (elem->unk_EC == 1 || elem->unk_EC == 3) {
        CellAnimationData *cellAnim = (CellAnimationData *)&elem->unk_40;
        NNS_G2dDrawCellAnimation(&cellAnim->unk_08);
    } else {
        MultiCellAnimationData *multiCellAnim = (MultiCellAnimationData *)&elem->unk_40;
        NNS_G2dDrawMultiCellAnimation(&multiCellAnim->unk_08);
    }

    NNS_G2dPopMtx();
    NNS_G2dEndRendering();
}

static void sub_02022450 (const GraphicElementManager * param0, GraphicElementData * param1)
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

static void sub_02022464 (GraphicElementManager * param0, GraphicElementData * param1)
{
    GraphicElementData * v0;

    if (param0->sentinelData.next == &param0->sentinelData) {
        param0->sentinelData.next = param1;
        param0->sentinelData.prev = param1;
        param1->prev = &param0->sentinelData;
        param1->next = &param0->sentinelData;
    } else {
        if (param0->sentinelData.prev->unk_F4 <= param1->unk_F4) {
            param1->prev = param0->sentinelData.prev;
            param0->sentinelData.prev->next = param1;
            param1->next = &param0->sentinelData;
            param0->sentinelData.prev = param1;
        } else {
            v0 = param0->sentinelData.next;

            while (v0 != &param0->sentinelData) {
                if (v0->unk_F4 > param1->unk_F4) {
                    v0->prev->next = param1;
                    param1->prev = v0->prev;
                    v0->prev = param1;
                    param1->next = v0;
                    break;
                }

                v0 = v0->next;
            }
        }
    }
}

static void sub_020224FC (GraphicElementData * param0)
{
    param0->prev->next = param0->next;
    param0->next->prev = param0->prev;
}

static void GraphicElementManager_InitElements(GraphicElementManager *gfxElemMgr)
{
    for (int i = 0; i < gfxElemMgr->maxElements; i++) {
        GraphicElementData_Reset(&gfxElemMgr->elements[i]);
        gfxElemMgr->unk_08[i] = gfxElemMgr->elements + i;
    }

    gfxElemMgr->unk_0C = 0;
}

static GraphicElementData * sub_02022550 (GraphicElementManager * param0)
{
    GraphicElementData * v0;

    if (param0->unk_0C >= param0->maxElements) {
        return NULL;
    }

    v0 = param0->unk_08[param0->unk_0C];
    param0->unk_0C++;

    return v0;
}

static BOOL sub_0202256C (GraphicElementManager * param0, GraphicElementData * param1)
{
    if (param0->unk_0C <= 0) {
        return 0;
    }

    GraphicElementData_Reset(param1);

    param0->unk_0C--;
    param0->unk_08[param0->unk_0C] = param1;

    return 1;
}
