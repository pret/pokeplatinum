#include "pltt_transfer.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "vram_transfer.h"

typedef struct PlttTransferTask {
    NNSG2dPaletteData *data;
    NNS_G2D_VRAM_TYPE vramType;
    u32 numPalettes;
    u32 resourceID;
    NNSG2dImagePaletteProxy paletteProxy;
    u32 baseAddrMain;
    u32 baseAddrSub;
    u8 hasWork;
} PlttTransferTask;

typedef struct PlttTransferTaskManager {
    PlttTransferTask *tasks;
    int capacity;
    int length;
    u32 offsetMain;
    u32 offsetSub;
    u32 extPlttOffsetMain;
    u32 extPlttOffsetSub;
    u32 extPlttVramSizeMain;
    u32 extPlttVramSizeSub;
    u16 vramPlttMain;
    u16 vramPlttSub;
} PlttTransferTaskManager;

static void sub_0201FB20(PlttTransferTask *param0);
static BOOL sub_0201FB3C(const PlttTransferTaskTemplate *param0, PlttTransferTask *param1);
static BOOL sub_0201FB94(const PlttTransferTaskTemplate *param0, PlttTransferTask *param1);
static BOOL sub_0201FAEC(const PlttTransferTaskTemplate *param0, PlttTransferTask *param1);
static void sub_0201FCD4(PlttTransferTask *param0);
static void sub_0201FCE4(void *param0);
static void sub_0201FC8C(void);
static void sub_0201FAE4(PlttTransferTask *param0);
static PlttTransferTask *sub_0201FC18(int param0);
static PlttTransferTask *sub_0201FC50(void);
static void sub_0201FD18(u16 *param0, int param1, int param2);
static void sub_0201FD3C(u16 *param0, int param1, int param2);
static int sub_0201FD5C(u16 param0, int param1);
static void sub_0201FD9C(PlttTransferTaskManager *param0);
static void sub_0201FDA4(PlttTransferTask *param0);
static void sub_0201FDE0(PlttTransferTask *param0);
static BOOL sub_0201FE1C(PlttTransferTask *param0, u32 param1, u32 param2, u32 param3, u32 param4);
static void sub_0201FE68(PlttTransferTask *param0, u32 *param1, u32 *param2);

static PlttTransferTaskManager *sTaskManager = NULL;

void sub_0201F834(int param0, int param1)
{
    int v0;

    if (sTaskManager == NULL) {
        sTaskManager = Heap_AllocFromHeap(param1, sizeof(PlttTransferTaskManager));
        MI_CpuClear32(sTaskManager, sizeof(PlttTransferTaskManager));

        sTaskManager->capacity = param0;
        sTaskManager->tasks = Heap_AllocFromHeap(param1, sizeof(PlttTransferTask) * param0);

        for (v0 = 0; v0 < param0; v0++) {
            sub_0201FB20(sTaskManager->tasks + v0);
        }
    }
}

void sub_0201F890(u16 param0, u32 param1)
{
    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        sTaskManager->vramPlttMain |= param0;
    } else if (param1 == NNS_G2D_VRAM_TYPE_2DSUB) {
        sTaskManager->vramPlttSub |= param0;
    }
}

void sub_0201F8B4(void)
{
    if (sTaskManager != NULL) {
        sub_0201FA18();
        Heap_FreeToHeap(sTaskManager->tasks);
        Heap_FreeToHeap(sTaskManager);
        sTaskManager = NULL;
    }
}

static void sub_0201F8E0(void)
{
    return;
}

void sub_0201F8E4(void)
{
    sTaskManager->offsetMain = 0;
    sTaskManager->offsetSub = 0;
    sTaskManager->extPlttOffsetMain = 0;
    sTaskManager->extPlttOffsetSub = 0;

    sub_0201FC8C();
    sub_0201FD9C(sTaskManager);
}

BOOL sub_0201F90C(const PlttTransferTaskTemplate *param0)
{
    PlttTransferTask *v0;

    v0 = sub_0201FC50();

    if (v0 == NULL) {
        GF_ASSERT(0 && ("テーブルが一杯で登録できません"));
        return 0;
    }

    if (sub_0201FAEC(param0, v0) == 0) {
        return 0;
    }

    if (sub_0201FB3C(param0, v0) == 0) {
        sub_0201F9F0(param0->resourceID);
        return 0;
    }

    sub_0201FDA4(v0);

    return 1;
}

BOOL sub_0201F950(const PlttTransferTaskTemplate *param0)
{
    PlttTransferTask *v0;

    v0 = sub_0201FC50();

    if (v0 == NULL) {
        GF_ASSERT(0 && ("テーブルが一杯で登録できません"));
        return 0;
    }

    if (sub_0201FAEC(param0, v0) == 0) {
        return 0;
    }

    if (sub_0201FB94(param0, v0) == 0) {
        sub_0201F9F0(param0->resourceID);
        return 0;
    }

    return 1;
}

void sub_0201F990(int param0, NNSG2dPaletteData *param1)
{
    PlttTransferTask *v0;

    GF_ASSERT(param1);
    v0 = sub_0201FC18(param0);

    GF_ASSERT(v0);
    v0->data = param1;

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_PLTT_MAIN, v0->baseAddrMain, param1->pRawData, v0->numPalettes * 32);
    }

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_PLTT_SUB, v0->baseAddrSub, param1->pRawData, v0->numPalettes * 32);
    }
}

BOOL sub_0201F9DC(int param0)
{
    PlttTransferTask *v0;

    v0 = sub_0201FC18(param0);

    if (v0) {
        return 1;
    }

    return 0;
}

void sub_0201F9F0(int param0)
{
    PlttTransferTask *v0;

    v0 = sub_0201FC18(param0);

    GF_ASSERT(v0);

    if (v0->hasWork == 1) {
        sub_0201FDE0(v0);
        sub_0201FAE4(v0);
    }
}

void sub_0201FA18(void)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].hasWork == 1) {
            sub_0201FDE0(&sTaskManager->tasks[v0]);
            sub_0201FAE4(&sTaskManager->tasks[v0]);
        }
    }
}

NNSG2dImagePaletteProxy *sub_0201FA58(int param0)
{
    PlttTransferTask *v0;

    v0 = sub_0201FC18(param0);

    if (v0 == NULL) {
        GF_ASSERT(v0);
        return NULL;
    }

    if (v0->hasWork == 1) {
        return &v0->paletteProxy;
    }

    return NULL;
}

NNSG2dImagePaletteProxy *sub_0201FA80(int param0, NNSG2dImageProxy *param1)
{
    PlttTransferTask *v0;

    v0 = sub_0201FC18(param0);

    if (v0 == NULL) {
        GF_ASSERT(v0);
        return NULL;
    }

    if (v0->hasWork != 1) {
        return NULL;
    }

    if (v0->data->bExtendedPlt) {
        NNS_G2dSetImageExtPaletteFlag(param1, 1);
    }

    return &v0->paletteProxy;
}

u32 sub_0201FAB4(const NNSG2dImagePaletteProxy *param0, u32 param1)
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

static void sub_0201FAE4(PlttTransferTask *param0)
{
    sub_0201FB20(param0);
}

static BOOL sub_0201FAEC(const PlttTransferTaskTemplate *param0, PlttTransferTask *param1)
{
    param1->data = param0->data;

    if (sub_0201F9DC(param0->resourceID) == 1) {
        GF_ASSERT(0);
        return 0;
    }

    param1->resourceID = param0->resourceID;
    param1->vramType = param0->vramType;
    param1->hasWork = 1;
    param1->numPalettes = param0->plttIndex;

    return 1;
}

static void sub_0201FB20(PlttTransferTask *param0)
{
    memset(param0, 0, sizeof(PlttTransferTask));
    param0->resourceID = 0xffffffff;
    NNS_G2dInitImagePaletteProxy(&param0->paletteProxy);
}

static BOOL sub_0201FB3C(const PlttTransferTaskTemplate *param0, PlttTransferTask *param1)
{
    u32 *v0;
    u32 *v1;
    BOOL v2 = 1;
    u32 v3;
    u32 v4;

    if (param1->data->bExtendedPlt) {
        v0 = &sTaskManager->extPlttOffsetMain;
        v1 = &sTaskManager->extPlttOffsetSub;
        v3 = sTaskManager->extPlttVramSizeMain;
        v4 = sTaskManager->extPlttVramSizeSub;
    } else {
        v0 = &sTaskManager->offsetMain;
        v1 = &sTaskManager->offsetSub;
        v3 = (32 * 16);
        v4 = (32 * 16);
    }

    sub_0201FE1C(param1, *v0, *v1, v3, v4);
    sub_0201FCD4(param1);
    sub_0201FE68(param1, v0, v1);

    return v2;
}

static BOOL sub_0201FB94(const PlttTransferTaskTemplate *param0, PlttTransferTask *param1)
{
    int v0, v1;

    if (param1->data->bExtendedPlt) {
        GF_ASSERT(0);
    }

    if (param1->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = sub_0201FD5C(sTaskManager->vramPlttMain, param1->numPalettes);

        if (v0 == 0xffffffff) {
            return 0;
        }
    }

    if (param1->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        v1 = sub_0201FD5C(sTaskManager->vramPlttSub, param1->numPalettes);

        if (v1 == 0xffffffff) {
            return 0;
        }
    }

    if (param1->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        param1->baseAddrMain = v0;
    }

    if (param1->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        param1->baseAddrSub = v1;
    }

    param1->data->szByte = param1->numPalettes * 32;

    sub_0201FCE4(param1);
    sub_0201FDA4(param1);

    return 1;
}

static PlttTransferTask *sub_0201FC18(int param0)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].resourceID == param0) {
            return sTaskManager->tasks + v0;
        }
    }

    return NULL;
}

static PlttTransferTask *sub_0201FC50(void)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].hasWork == 0) {
            return sTaskManager->tasks + v0;
        }
    }

    return NULL;
}

static void sub_0201FC8C(void)
{
    GXVRamOBJExtPltt v0;
    GXVRamSubOBJExtPltt v1;

    v0 = GX_GetBankForOBJExtPltt();

    switch (v0) {
    case GX_VRAM_OBJEXTPLTT_0_F:
    case GX_VRAM_OBJEXTPLTT_0_G:
        sTaskManager->extPlttVramSizeMain = (32 * 16 * 16);
        break;
    default:
        sTaskManager->extPlttVramSizeMain = 0;
        break;
    }

    v1 = GX_GetBankForSubOBJExtPltt();

    switch (v1) {
    case GX_VRAM_SUB_OBJEXTPLTT_0_I:
        sTaskManager->extPlttVramSizeSub = (32 * 16 * 16);
        break;
    default:
        sTaskManager->extPlttVramSizeSub = 0;
        break;
    }
}

static void sub_0201FCD4(PlttTransferTask *param0)
{
    param0->data->szByte = param0->numPalettes * 32;
    sub_0201FCE4(param0);
}

static void sub_0201FCE4(void *param0)
{
    PlttTransferTask *v0 = (PlttTransferTask *)param0;

    NNS_G2dInitImagePaletteProxy(&v0->paletteProxy);

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        NNS_G2dLoadPalette(v0->data, v0->baseAddrMain, NNS_G2D_VRAM_TYPE_2DMAIN, &v0->paletteProxy);
    }

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        NNS_G2dLoadPalette(v0->data, v0->baseAddrSub, NNS_G2D_VRAM_TYPE_2DSUB, &v0->paletteProxy);
    }
}

static void sub_0201FD18(u16 *param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        *param0 |= 1 << (param2 + v0);
    }
}

static void sub_0201FD3C(u16 *param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        *param0 &= ~(1 << (param2 + v0));
    }
}

static int sub_0201FD5C(u16 param0, int param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 16; v0++) {
        v1 = 0;

        while (((param0 & (1 << (v0 + v1))) == 0) && (v1 < param1)) {
            if ((v0 + v1) >= 16) {
                break;
            }

            v1++;
        }

        if (v1 >= param1) {
            break;
        }

        v0 += v1;
    }

    if (v0 >= 16) {
        return 0xffffffff;
    }

    return v0 * 32;
}

static void sub_0201FD9C(PlttTransferTaskManager *param0)
{
    param0->vramPlttMain = 0;
    param0->vramPlttSub = 0;
}

static void sub_0201FDA4(PlttTransferTask *param0)
{
    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201FD18(&sTaskManager->vramPlttMain, param0->numPalettes, param0->baseAddrMain / 32);
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0201FD18(&sTaskManager->vramPlttSub, param0->numPalettes, param0->baseAddrSub / 32);
    }
}

static void sub_0201FDE0(PlttTransferTask *param0)
{
    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201FD3C(&sTaskManager->vramPlttMain, param0->numPalettes, param0->baseAddrMain / 32);
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0201FD3C(&sTaskManager->vramPlttSub, param0->numPalettes, param0->baseAddrSub / 32);
    }
}

static BOOL sub_0201FE1C(PlttTransferTask *param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    BOOL v0 = 1;

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        if (param1 + (param0->numPalettes * 32) > param3) {
            GF_ASSERT(FALSE);
            sub_0201F8E0();
            v0 = 0;
        } else {
            param0->baseAddrMain = param1;
        }
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        if (param2 + (param0->numPalettes * 32) > param4) {
            GF_ASSERT(FALSE);
            sub_0201F8E0();
            v0 = 0;
        } else {
            param0->baseAddrSub = param2;
        }
    }

    return v0;
}

static void sub_0201FE68(PlttTransferTask *param0, u32 *param1, u32 *param2)
{
    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        *param1 += param0->numPalettes * 32;
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        *param2 += param0->numPalettes * 32;
    }
}
