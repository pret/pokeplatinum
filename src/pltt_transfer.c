#include "pltt_transfer.h"

#include "nitro/gx/g3.h"
#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"

#include "heap.h"
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
    u8 initialized;
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

void PlttTransfer_Init(int capacity, enum HeapId heapID)
{
    if (sTaskManager == NULL) {
        sTaskManager = Heap_Alloc(heapID, sizeof(PlttTransferTaskManager));
        MI_CpuClear32(sTaskManager, sizeof(PlttTransferTaskManager));

        sTaskManager->capacity = capacity;
        sTaskManager->tasks = Heap_Alloc(heapID, sizeof(PlttTransferTask) * capacity);

        for (int i = 0; i < capacity; i++) {
            InitTransferTask(sTaskManager->tasks + i);
        }
    }
}

void PlttTransfer_MarkReservedSlots(u16 reservedMask, NNS_G2D_VRAM_TYPE vramType)
{
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        sTaskManager->vramTransferMain |= reservedMask;
    } else if (vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
        sTaskManager->vramTransferSub |= reservedMask;
    }
}

void PlttTransfer_Free(void)
{
    if (sTaskManager != NULL) {
        PlttTransfer_ResetAllTasks();
        Heap_Free(sTaskManager->tasks);
        Heap_Free(sTaskManager);
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

BOOL PlttTransfer_RequestWholeRange(const PlttTransferTaskTemplate *template)
{
    PlttTransferTask *task = FindNextFreeTask();
    if (task == NULL) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (InitTransferTaskFromTemplate(template, task) == FALSE) {
        return FALSE;
    }

    if (ReserveAndTransferWholeRange(template, task) == FALSE) {
        // unreachable
        PlttTransfer_ResetTask(template->resourceID);
        return FALSE;
    }

    ReserveTaskTransferRanges(task);
    return TRUE;
}

BOOL PlttTransfer_RequestFreeSpace(const PlttTransferTaskTemplate *template)
{
    PlttTransferTask *task = FindNextFreeTask();
    if (task == NULL) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (InitTransferTaskFromTemplate(template, task) == FALSE) {
        return FALSE;
    }

    if (ReserveAndTransferFreeSpace(template, task) == FALSE) {
        PlttTransfer_ResetTask(template->resourceID);
        return FALSE;
    }

    return TRUE;
}

void PlttTransfer_ReplacePlttData(int resourceID, NNSG2dPaletteData *data)
{
    GF_ASSERT(data);

    PlttTransferTask *task = FindTransferTask(resourceID);
    GF_ASSERT(task);
    task->data = data;

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_PLTT_MAIN, task->baseAddrMain, data->pRawData, task->numPalettes * PALETTE_SIZE_BYTES);
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_PLTT_SUB, task->baseAddrSub, data->pRawData, task->numPalettes * PALETTE_SIZE_BYTES);
    }
}

BOOL PlttTransfer_HasTask(int resourceID)
{
    return FindTransferTask(resourceID) != NULL;
}

void PlttTransfer_ResetTask(int resourceID)
{
    PlttTransferTask *task = FindTransferTask(resourceID);
    GF_ASSERT(task);

    if (task->initialized == TRUE) {
        ClearTaskTransferRanges(task);
        ResetTransferTask(task);
    }
}

void PlttTransfer_ResetAllTasks(void)
{
    for (int i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].initialized == TRUE) {
            ClearTaskTransferRanges(&sTaskManager->tasks[i]);
            ResetTransferTask(&sTaskManager->tasks[i]);
        }
    }
}

NNSG2dImagePaletteProxy *PlttTransfer_GetPaletteProxy(int resourceID)
{
    PlttTransferTask *task = FindTransferTask(resourceID);
    if (task == NULL) {
        GF_ASSERT(task);
        return NULL;
    }

    if (task->initialized == TRUE) {
        return &task->paletteProxy;
    }

    return NULL;
}

NNSG2dImagePaletteProxy *PlttTransfer_ToggleExtPalette(int resourceID, NNSG2dImageProxy *imageProxy)
{
    PlttTransferTask *task = FindTransferTask(resourceID);
    if (task == NULL) {
        GF_ASSERT(task);
        return NULL;
    }

    if (task->initialized != TRUE) {
        return NULL;
    }

    if (task->data->bExtendedPlt) {
        NNS_G2dSetImageExtPaletteFlag(imageProxy, TRUE);
    }

    return &task->paletteProxy;
}

u32 PlttTransfer_GetPlttOffset(const NNSG2dImagePaletteProxy *paletteProxy, NNS_G2D_VRAM_TYPE vramType)
{
    u32 size;
    if (paletteProxy->bExtendedPlt) {
        size = PALETTE_SIZE_EXT_BYTES;
    } else if (paletteProxy->fmt == GX_TEXFMT_PLTT256) {
        size = 0;
    } else {
        size = PALETTE_SIZE_BYTES;
    }

    return size != 0 ? NNS_G2dGetImagePaletteLocation(paletteProxy, vramType) / size : 0;
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
    task->initialized = TRUE;
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
        if (sTaskManager->tasks[i].initialized == FALSE) {
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
