#include "render_oam.h"

#include <nnsys.h>

#include "constants/heap.h"

#include "cell_actor.h"
#include "heap.h"
#include "render_view.h"

typedef struct OamManager {
    NNSG2dOamManagerInstance mainScreenOam;
    NNSG2dOamManagerInstance subScreenOam;
    enum HeapId heapID;
} OamManager;

static BOOL sub_0200A94C(const GXOamAttr *param0, u16 param1, BOOL param2);
static BOOL sub_0200A96C(const GXOamAttr *param0, u16 param1, BOOL param2);
static u16 sub_0200A990(const MtxFx22 *param0);
static u16 sub_0200A9B4(const MtxFx22 *param0);
static void sub_0200A7C8(int param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8);

static OamManager *sOamManager;

void sub_0200A784(int param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    int v0;
    int v1;
    int v2;
    int v3;

    if (param0 < 4) {
        v0 = 4;

        if (param1 > 124) {
            v1 = param1 - (4 - param0);
        } else {
            v1 = param1;
        }
    } else {
        v0 = param0;
        v1 = param1;
    }

    if (param2 < 1) {
        v2 = 1;

        if (param3 > 30) {
            v3 = param3 - (1 - param2);
        } else {
            v3 = param3;
        }
    } else {
        v2 = param2;
        v3 = param3;
    }

    sub_0200A7C8(v0, v1, v2, v3, param4, param5, param6, param7, param8);
}

static void sub_0200A7C8(int param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    BOOL v0;

    GF_ASSERT(sOamManager == NULL);
    sOamManager = Heap_AllocFromHeap(param8, sizeof(OamManager));

    GF_ASSERT(sOamManager);
    sOamManager->heapID = param8;

    v0 = NNS_G2dGetNewOamManagerInstance(&sOamManager->mainScreenOam, param0, param1, param2, param3, NNS_G2D_OAMTYPE_MAIN);
    GF_ASSERT(v0);

    v0 = NNS_G2dGetNewOamManagerInstance(&sOamManager->subScreenOam, param4, param5, param6, param7, NNS_G2D_OAMTYPE_SUB);
    GF_ASSERT(v0);
}

void sub_0200A858(void)
{
    if (sOamManager) {
        NNS_G2dApplyAndResetOamManagerBuffer(&sOamManager->mainScreenOam);
        NNS_G2dApplyAndResetOamManagerBuffer(&sOamManager->subScreenOam);
    }
}

void sub_0200A878(void)
{
    GF_ASSERT(sOamManager);

    sub_0200A93C(sOamManager->heapID);
    sub_0200A944(sOamManager->heapID);
    Heap_FreeToHeap(sOamManager);

    sOamManager = NULL;
}

void sub_0200A8B0(NNSG2dRenderSurface *param0, NNSG2dViewRect *param1, NNSG2dSurfaceType param2, NNSG2dRendererInstance *param3)
{
    GF_ASSERT(sOamManager);

    if (param2 == NNS_G2D_SURFACETYPE_MAIN2D) {
        InitRenderSurface(param0, param1, sub_0200A94C, sub_0200A990, IsObjectInView, param2, param3);
    } else {
        InitRenderSurface(param0, param1, sub_0200A96C, sub_0200A9B4, IsObjectInView, param2, param3);
    }
}

NNSG2dOamManagerInstance *sub_0200A914(int param0)
{
    NNSG2dOamManagerInstance *v0;

    GF_ASSERT(sOamManager);

    if (param0 == 0) {
        v0 = &sOamManager->mainScreenOam;
    } else {
        v0 = &sOamManager->subScreenOam;
    }

    return v0;
}

void sub_0200A93C(int param0)
{
    Utility_Clear2DMainOAM(param0);
}

void sub_0200A944(int param0)
{
    Utility_Clear2DSubOAM(param0);
}

static BOOL sub_0200A94C(const GXOamAttr *param0, u16 param1, BOOL param2)
{
    BOOL v0;

    v0 = NNS_G2dEntryOamManagerOamWithAffineIdx(&sOamManager->mainScreenOam, param0, param1);
    GF_ASSERT(v0);

    return v0;
}

static BOOL sub_0200A96C(const GXOamAttr *param0, u16 param1, BOOL param2)
{
    BOOL v0;

    v0 = NNS_G2dEntryOamManagerOamWithAffineIdx(&sOamManager->subScreenOam, param0, param1);
    GF_ASSERT(v0);

    return v0;
}

static u16 sub_0200A990(const MtxFx22 *param0)
{
    u16 v0;

    v0 = NNS_G2dEntryOamManagerAffine(&sOamManager->mainScreenOam, param0);
    GF_ASSERT(v0 != NNS_G2D_OAM_AFFINE_IDX_NONE);

    return v0;
}

static u16 sub_0200A9B4(const MtxFx22 *param0)
{
    u16 v0;

    v0 = NNS_G2dEntryOamManagerAffine(&sOamManager->subScreenOam, param0);
    GF_ASSERT(v0 != NNS_G2D_OAM_AFFINE_IDX_NONE);

    return v0;
}
