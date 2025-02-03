#include "pltt_transfer.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "palette.h"
#include "vram_transfer.h"

#define NUM_VRAM_PALETTES     16
#define PLTT_RESOURCE_ID_NONE -1
#define PLTT_RANGE_SIZE       (PALETTE_SIZE_BYTES * NUM_VRAM_PALETTES)
#define PLTT_EXT_RANGE_SIZE   (PALETTE_SIZE_EXT_BYTES * NUM_VRAM_PALETTES)

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
    u16 vramTransferMain;
    u16 vramTransferSub;
} PlttTransferTaskManager;

static void InitTransferTask(PlttTransferTask *task);
static BOOL InitTransferTaskFromTemplate(const PlttTransferTaskTemplate *template, PlttTransferTask *task);
static void ResetTransferTask(PlttTransferTask *task);
static void LoadImagePalette(PlttTransferTask *task);
static BOOL ReserveAndTransferWholeRange(const PlttTransferTaskTemplate *unused, PlttTransferTask *task);
static BOOL ReserveAndTransferFreeSpace(const PlttTransferTaskTemplate *unused, PlttTransferTask *task);
static void ReserveTaskTransferRanges(PlttTransferTask *task);
static void ClearTaskTransferRanges(PlttTransferTask *task);
static PlttTransferTask *FindTransferTask(int resourceID);
static PlttTransferTask *FindNextFreeTask(void);
static void UpdateVramCapacities(void);
static void UpdateTransferSize(PlttTransferTask *task);
static BOOL TryGetDestOffsets(PlttTransferTask *task, u32 offsetMain, u32 offsetSub, u32 sizeMain, u32 sizeSub);
static void ReserveVramSpace(PlttTransferTask *task, u32 *offsetMain, u32 *offsetSub);

static void ReserveTransferRange(u16 *range, int count, int start);
static void ClearTransferRange(u16 *range, int count, int start);
static int FindAvailableTransferSlot(u16 palette, int size);

static void ResetBothTransferRanges(PlttTransferTaskManager *task);

static PlttTransferTaskManager *sTaskManager = NULL;

void PlttTransfer_Init(int param0, int param1)
{
    int v0;

    if (sTaskManager == NULL) {
        sTaskManager = Heap_AllocFromHeap(param1, sizeof(PlttTransferTaskManager));
        MI_CpuClear32(sTaskManager, sizeof(PlttTransferTaskManager));

        sTaskManager->capacity = param0;
        sTaskManager->tasks = Heap_AllocFromHeap(param1, sizeof(PlttTransferTask) * param0);

        for (v0 = 0; v0 < param0; v0++) {
            InitTransferTask(sTaskManager->tasks + v0);
        }
    }
}

void PlttTransfer_MarkReservedSlots(u16 param0, u32 param1)
{
    if (param1 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        sTaskManager->vramTransferMain |= param0;
    } else if (param1 == NNS_G2D_VRAM_TYPE_2DSUB) {
        sTaskManager->vramTransferSub |= param0;
    }
}

void PlttTransfer_Free(void)
{
    if (sTaskManager != NULL) {
        PlttTransfer_ResetAllTasks();
        Heap_FreeToHeap(sTaskManager->tasks);
        Heap_FreeToHeap(sTaskManager);
        sTaskManager = NULL;
    }
}

static void DummyFunc(void)
{
    return;
}

void PlttTransfer_Clear(void)
{
    sTaskManager->offsetMain = 0;
    sTaskManager->offsetSub = 0;
    sTaskManager->extPlttOffsetMain = 0;
    sTaskManager->extPlttOffsetSub = 0;

    UpdateVramCapacities();
    ResetBothTransferRanges(sTaskManager);
}

// not sure about this one...
BOOL PlttTransfer_RequestWholeRange(const PlttTransferTaskTemplate *param0)
{
    PlttTransferTask *v0;

    v0 = FindNextFreeTask();

    if (v0 == NULL) {
        GF_ASSERT(0 && ("テーブルが一杯で登録できません"));
        return 0;
    }

    if (InitTransferTaskFromTemplate(param0, v0) == 0) {
        return 0;
    }

    if (ReserveAndTransferWholeRange(param0, v0) == 0) {
        PlttTransfer_ResetTask(param0->resourceID);
        return 0;
    }

    ReserveTaskTransferRanges(v0);

    return 1;
}

BOOL PlttTransfer_RequestFreeSpace(const PlttTransferTaskTemplate *param0)
{
    PlttTransferTask *v0;

    v0 = FindNextFreeTask();

    if (v0 == NULL) {
        GF_ASSERT(0 && ("テーブルが一杯で登録できません"));
        return 0;
    }

    if (InitTransferTaskFromTemplate(param0, v0) == 0) {
        return 0;
    }

    if (ReserveAndTransferFreeSpace(param0, v0) == 0) {
        PlttTransfer_ResetTask(param0->resourceID);
        return 0;
    }

    return 1;
}

void PlttTransfer_ReplacePlttData(int param0, NNSG2dPaletteData *param1)
{
    PlttTransferTask *v0;

    GF_ASSERT(param1);
    v0 = FindTransferTask(param0);

    GF_ASSERT(v0);
    v0->data = param1;

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_PLTT_MAIN, v0->baseAddrMain, param1->pRawData, v0->numPalettes * 32);
    }

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_PLTT_SUB, v0->baseAddrSub, param1->pRawData, v0->numPalettes * 32);
    }
}

BOOL PlttTransfer_HasTask(int resourceID)
{
    if (FindTransferTask(resourceID)) {
        return TRUE;
    }

    return FALSE;
}

void PlttTransfer_ResetTask(int param0)
{
    PlttTransferTask *v0;

    v0 = FindTransferTask(param0);

    GF_ASSERT(v0);

    if (v0->hasWork == 1) {
        ClearTaskTransferRanges(v0);
        ResetTransferTask(v0);
    }
}

void PlttTransfer_ResetAllTasks(void)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].hasWork == 1) {
            ClearTaskTransferRanges(&sTaskManager->tasks[v0]);
            ResetTransferTask(&sTaskManager->tasks[v0]);
        }
    }
}

NNSG2dImagePaletteProxy *PlttTransfer_GetPaletteProxy(int param0)
{
    PlttTransferTask *v0;

    v0 = FindTransferTask(param0);

    if (v0 == NULL) {
        GF_ASSERT(v0);
        return NULL;
    }

    if (v0->hasWork == 1) {
        return &v0->paletteProxy;
    }

    return NULL;
}

NNSG2dImagePaletteProxy *PlttTransfer_ToggleExtPalette(int param0, NNSG2dImageProxy *param1)
{
    PlttTransferTask *v0;

    v0 = FindTransferTask(param0);

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

u32 PlttTransfer_GetPlttOffset(const NNSG2dImagePaletteProxy *param0, u32 param1)
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

static void ResetTransferTask(PlttTransferTask *task)
{
    InitTransferTask(task);
}

static BOOL InitTransferTaskFromTemplate(const PlttTransferTaskTemplate *template, PlttTransferTask *task)
{
    task->data = template->data;

    if (PlttTransfer_HasTask(template->resourceID) == TRUE) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    task->resourceID = template->resourceID;
    task->vramType = template->vramType;
    task->hasWork = 1;
    task->numPalettes = template->plttIndex;
    return TRUE;
}

static void InitTransferTask(PlttTransferTask *task)
{
    memset(task, 0, sizeof(PlttTransferTask));
    task->resourceID = PLTT_RESOURCE_ID_NONE;
    NNS_G2dInitImagePaletteProxy(&task->paletteProxy);
}

static BOOL ReserveAndTransferWholeRange(const PlttTransferTaskTemplate *unused, PlttTransferTask *task)
{
    u32 *targetOffsetMain;
    u32 *targetOffsetSub;
    u32 plttSizeMain;
    u32 plttSizeSub;

    if (task->data->bExtendedPlt) {
        targetOffsetMain = &sTaskManager->extPlttOffsetMain;
        targetOffsetSub = &sTaskManager->extPlttOffsetSub;
        plttSizeMain = sTaskManager->extPlttVramSizeMain;
        plttSizeSub = sTaskManager->extPlttVramSizeSub;
    } else {
        targetOffsetMain = &sTaskManager->offsetMain;
        targetOffsetSub = &sTaskManager->offsetSub;
        plttSizeMain = PLTT_RANGE_SIZE;
        plttSizeSub = PLTT_RANGE_SIZE;
    }

    TryGetDestOffsets(task, *targetOffsetMain, *targetOffsetSub, plttSizeMain, plttSizeSub);
    UpdateTransferSize(task);
    ReserveVramSpace(task, targetOffsetMain, targetOffsetSub);
    return TRUE;
}

static BOOL ReserveAndTransferFreeSpace(const PlttTransferTaskTemplate *unused, PlttTransferTask *task)
{
    if (task->data->bExtendedPlt) {
        GF_ASSERT(FALSE);
    }

    int offsetMain;
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        offsetMain = FindAvailableTransferSlot(sTaskManager->vramTransferMain, task->numPalettes);
        if (offsetMain == -1) {
            return FALSE;
        }
    }

    int offsetSub;
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        offsetSub = FindAvailableTransferSlot(sTaskManager->vramTransferSub, task->numPalettes);
        if (offsetSub == -1) {
            return FALSE;
        }
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        task->baseAddrMain = offsetMain;
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        task->baseAddrSub = offsetSub;
    }

    task->data->szByte = task->numPalettes * PALETTE_SIZE_BYTES;
    LoadImagePalette(task);
    ReserveTaskTransferRanges(task);
    return TRUE;
}

static PlttTransferTask *FindTransferTask(int resourceID)
{
    for (int i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].resourceID == resourceID) {
            return sTaskManager->tasks + i;
        }
    }

    return NULL;
}

static PlttTransferTask *FindNextFreeTask(void)
{
    for (int i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].hasWork == 0) {
            return sTaskManager->tasks + i;
        }
    }

    return NULL;
}

static void UpdateVramCapacities(void)
{
    switch (GX_GetBankForOBJExtPltt()) {
    case GX_VRAM_OBJEXTPLTT_0_F:
    case GX_VRAM_OBJEXTPLTT_0_G:
        sTaskManager->extPlttVramSizeMain = PLTT_EXT_RANGE_SIZE;
        break;
    default:
        sTaskManager->extPlttVramSizeMain = 0;
        break;
    }

    switch (GX_GetBankForSubOBJExtPltt()) {
    case GX_VRAM_SUB_OBJEXTPLTT_0_I:
        sTaskManager->extPlttVramSizeSub = PLTT_EXT_RANGE_SIZE;
        break;
    default:
        sTaskManager->extPlttVramSizeSub = 0;
        break;
    }
}

static void UpdateTransferSize(PlttTransferTask *task)
{
    task->data->szByte = task->numPalettes * PALETTE_SIZE_BYTES;
    LoadImagePalette(task);
}

static void LoadImagePalette(PlttTransferTask *task)
{
    NNS_G2dInitImagePaletteProxy(&task->paletteProxy);
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        NNS_G2dLoadPalette(task->data, task->baseAddrMain, NNS_G2D_VRAM_TYPE_2DMAIN, &task->paletteProxy);
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        NNS_G2dLoadPalette(task->data, task->baseAddrSub, NNS_G2D_VRAM_TYPE_2DSUB, &task->paletteProxy);
    }
}

static void ReserveTransferRange(u16 *range, int count, int start)
{
    for (int i = 0; i < count; i++) {
        *range |= 1 << (start + i);
    }
}

static void ClearTransferRange(u16 *range, int count, int start)
{
    for (int i = 0; i < count; i++) {
        *range &= ~(1 << (start + i));
    }
}

static int FindAvailableTransferSlot(u16 palette, int size)
{
    int slot;
    for (slot = 0; slot < NUM_VRAM_PALETTES; slot++) {
        int colorIdx = 0;
        while ((palette & (1 << (slot + colorIdx))) == 0 && colorIdx < size) {
            if (slot + colorIdx >= NUM_VRAM_PALETTES) {
                break;
            }
            colorIdx++;
        }

        if (colorIdx >= size) {
            break;
        }

        slot += colorIdx;
    }

    if (slot >= NUM_VRAM_PALETTES) {
        return -1;
    }

    return PLTT_OFFSET(slot);
}

static void ResetBothTransferRanges(PlttTransferTaskManager *manager)
{
    manager->vramTransferMain = 0;
    manager->vramTransferSub = 0;
}

static void ReserveTaskTransferRanges(PlttTransferTask *task)
{
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        ReserveTransferRange(&sTaskManager->vramTransferMain, task->numPalettes, task->baseAddrMain / PALETTE_SIZE_BYTES);
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        ReserveTransferRange(&sTaskManager->vramTransferSub, task->numPalettes, task->baseAddrSub / PALETTE_SIZE_BYTES);
    }
}

static void ClearTaskTransferRanges(PlttTransferTask *task)
{
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        ClearTransferRange(&sTaskManager->vramTransferMain, task->numPalettes, task->baseAddrMain / PALETTE_SIZE_BYTES);
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        ClearTransferRange(&sTaskManager->vramTransferSub, task->numPalettes, task->baseAddrSub / PALETTE_SIZE_BYTES);
    }
}

static BOOL TryGetDestOffsets(PlttTransferTask *task, u32 offsetMain, u32 offsetSub, u32 sizeMain, u32 sizeSub)
{
    BOOL result = TRUE;

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        if (offsetMain + (task->numPalettes * PALETTE_SIZE_BYTES) > sizeMain) {
            GF_ASSERT(FALSE);
            DummyFunc();
            result = FALSE;
        } else {
            task->baseAddrMain = offsetMain;
        }
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        if (offsetSub + (task->numPalettes * PALETTE_SIZE_BYTES) > sizeSub) {
            GF_ASSERT(FALSE);
            DummyFunc();
            result = FALSE;
        } else {
            task->baseAddrSub = offsetSub;
        }
    }

    return result;
}

static void ReserveVramSpace(PlttTransferTask *task, u32 *offsetMain, u32 *offsetSub)
{
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        *offsetMain += task->numPalettes * PALETTE_SIZE_BYTES;
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        *offsetSub += task->numPalettes * PALETTE_SIZE_BYTES;
    }
}
