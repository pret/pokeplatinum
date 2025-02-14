#include "render_oam.h"

#include <nnsys.h>

#include "constants/heap.h"
#include "constants/screen.h"

#include "heap.h"
#include "render_view.h"
#include "sprite.h"

#define NUM_HW_OAM_ATTR            128
#define NUM_HW_OAM_ATTR_RESERVED   4
#define NUM_HW_OAM_AFFINES         32
#define NUM_HW_OAM_AFFINE_RESERVED 1

typedef struct OamManager {
    NNSG2dOamManagerInstance mainScreenOam;
    NNSG2dOamManagerInstance subScreenOam;
    enum HeapId heapID;
} OamManager;

static void InitOamManager(int mainOamStart, int mainOamCount, int mainAffineOamStart, int mainAffineOamCount, int subOamStart, int subOamCount, int subAffineOamStart, int subAffineOamCount, enum HeapId heapID);
static BOOL AddToMainOamManager(const GXOamAttr *oam, u16 affineIdx, BOOL unused);
static BOOL AddToSubOamManager(const GXOamAttr *oam, u16 affineIdx, BOOL unused);
static u16 AddAffineToMainOamManager(const MtxFx22 *affineTransform);
static u16 AddAffineToSubOamManager(const MtxFx22 *affineTransform);

static OamManager *sOamManager;

void RenderOam_Init(int mainOamStart, int mainOamCount, int mainAffineOamStart, int mainAffineOamCount, int subOamStart, int subOamCount, int subAffineOamStart, int subAffineOamCount, enum HeapId heapID)
{
    int trueMainOamStart;
    int trueMainOamCount;
    int trueMainAffineOamStart;
    int trueMainAffineOamCount;

    // The first 4 OAM managers are reserved.
    if (mainOamStart < NUM_HW_OAM_ATTR_RESERVED) {
        trueMainOamStart = NUM_HW_OAM_ATTR_RESERVED;

        if (mainOamCount > NUM_HW_OAM_ATTR - NUM_HW_OAM_ATTR_RESERVED) {
            trueMainOamCount = mainOamCount - (NUM_HW_OAM_ATTR_RESERVED - mainOamStart);
        } else {
            trueMainOamCount = mainOamCount;
        }
    } else {
        trueMainOamStart = mainOamStart;
        trueMainOamCount = mainOamCount;
    }

    // The first affine-enabled manager is reserved.
    if (mainAffineOamStart < NUM_HW_OAM_AFFINE_RESERVED) {
        trueMainAffineOamStart = NUM_HW_OAM_AFFINE_RESERVED;

        if (mainAffineOamCount > NUM_HW_OAM_AFFINES - NUM_HW_OAM_AFFINE_RESERVED - 1) {
            trueMainAffineOamCount = mainAffineOamCount - (NUM_HW_OAM_AFFINE_RESERVED - mainAffineOamStart);
        } else {
            trueMainAffineOamCount = mainAffineOamCount;
        }
    } else {
        trueMainAffineOamStart = mainAffineOamStart;
        trueMainAffineOamCount = mainAffineOamCount;
    }

    InitOamManager(trueMainOamStart,
        trueMainOamCount,
        trueMainAffineOamStart,
        trueMainAffineOamCount,
        subOamStart,
        subOamCount,
        subAffineOamStart,
        subAffineOamCount,
        heapID);
}

static void InitOamManager(int mainOamStart, int mainOamCount, int mainAffineOamStart, int mainAffineOamCount, int subOamStart, int subOamCount, int subAffineOamStart, int subAffineOamCount, enum HeapId heapID)
{
    GF_ASSERT(sOamManager == NULL);
    sOamManager = Heap_AllocFromHeap(heapID, sizeof(OamManager));
    GF_ASSERT(sOamManager);

    sOamManager->heapID = heapID;
    GF_ASSERT(NNS_G2dGetNewOamManagerInstance(&sOamManager->mainScreenOam, mainOamStart, mainOamCount, mainAffineOamStart, mainAffineOamCount, NNS_G2D_OAMTYPE_MAIN));
    GF_ASSERT(NNS_G2dGetNewOamManagerInstance(&sOamManager->subScreenOam, subOamStart, subOamCount, subAffineOamStart, subAffineOamCount, NNS_G2D_OAMTYPE_SUB));
}

void RenderOam_Transfer(void)
{
    if (sOamManager) {
        NNS_G2dApplyAndResetOamManagerBuffer(&sOamManager->mainScreenOam);
        NNS_G2dApplyAndResetOamManagerBuffer(&sOamManager->subScreenOam);
    }
}

void RenderOam_Free(void)
{
    GF_ASSERT(sOamManager);
    RenderOam_ClearMain(sOamManager->heapID);
    RenderOam_ClearSub(sOamManager->heapID);
    Heap_FreeToHeap(sOamManager);
    sOamManager = NULL;
}

void RenderOam_InitSurface(NNSG2dRenderSurface *surface, NNSG2dViewRect *viewRect, NNSG2dSurfaceType surfaceType, NNSG2dRendererInstance *renderer)
{
    GF_ASSERT(sOamManager);
    if (surfaceType == NNS_G2D_SURFACETYPE_MAIN2D) {
        InitRenderSurface(surface, viewRect, AddToMainOamManager, AddAffineToMainOamManager, IsObjectInView, surfaceType, renderer);
    } else {
        InitRenderSurface(surface, viewRect, AddToSubOamManager, AddAffineToSubOamManager, IsObjectInView, surfaceType, renderer);
    }
}

NNSG2dOamManagerInstance *RenderOam_GetScreenOam(enum DSScreen screen)
{
    GF_ASSERT(sOamManager);

    NNSG2dOamManagerInstance *manager;
    if (screen == DS_SCREEN_MAIN) {
        manager = &sOamManager->mainScreenOam;
    } else {
        manager = &sOamManager->subScreenOam;
    }

    return manager;
}

void RenderOam_ClearMain(enum HeapId heapID)
{
    Utility_Clear2DMainOAM(heapID);
}

void RenderOam_ClearSub(enum HeapId heapID)
{
    Utility_Clear2DSubOAM(heapID);
}

static BOOL AddToMainOamManager(const GXOamAttr *oam, u16 affineIdx, BOOL unused)
{
    BOOL result = NNS_G2dEntryOamManagerOamWithAffineIdx(&sOamManager->mainScreenOam, oam, affineIdx);
    GF_ASSERT(result);
    return result;
}

static BOOL AddToSubOamManager(const GXOamAttr *oam, u16 affineIdx, BOOL unused)
{
    BOOL result = NNS_G2dEntryOamManagerOamWithAffineIdx(&sOamManager->subScreenOam, oam, affineIdx);
    GF_ASSERT(result);
    return result;
}

static u16 AddAffineToMainOamManager(const MtxFx22 *affineTransform)
{
    u16 result = NNS_G2dEntryOamManagerAffine(&sOamManager->mainScreenOam, affineTransform);
    GF_ASSERT(result != NNS_G2D_OAM_AFFINE_IDX_NONE);
    return result;
}

static u16 AddAffineToSubOamManager(const MtxFx22 *affineTransform)
{
    u16 result = NNS_G2dEntryOamManagerAffine(&sOamManager->subScreenOam, affineTransform);
    GF_ASSERT(result != NNS_G2D_OAM_AFFINE_IDX_NONE);
    return result;
}
