#include "char_transfer.h"

#include <nitro/gx.h>
#include <nnsys.h>

#include "heap.h"
#include "vram_transfer.h"

#define CHAR_RESOURCE_ID_NONE -1
#define CHAR_TRANSFER_SHIFT   8

enum CharTransferTaskState {
    CTT_INIT = 0,
    CTT_IN_PROGRESS,
    CTT_WAITING_FOR_VRAM,
    CTT_VRAM_READY,
    CTT_VRAM_COPIED,
};

typedef struct CharTransferTask {
    NNSG2dCharacterData *data;
    NNS_G2D_VRAM_TYPE vramType;
    u8 done;
    u32 resourceID;
    NNSG2dImageProxy imageProxy;
    u32 baseAddrMain;
    u32 baseAddrSub;
    u8 state;
    BOOL useHardwareMappingType;
    BOOL atEnd;
    BOOL hasRange;
    u32 regionSizeMain;
    u32 regionSizeSub;
} CharTransferTask;

typedef struct CharTransferTaskManager {
    CharTransferTask *tasks;
    int capacity;
    int length;
    u32 offsetMain;
    u32 offsetSub;
    s32 vramSizeMain;
    s32 vramSizeSub;
    s32 freeSizeMain;
    s32 freeSizeSub;
    u32 numBlocksMain;
    u32 numBlocksSub;
    u32 blockSizeMain;
    u32 blockSizeSub;
    u8 *bufMain;
    u8 *bufSub;
} CharTransferTaskManager;

static void InitTransferTask(CharTransferTask *task);
static BOOL InitTransferTaskFromTemplate(const CharTransferTaskTemplate *template, CharTransferTask *task);
static void ResetTransferTask(CharTransferTask *task);
static BOOL ReserveAndTransfer(CharTransferTask *task);
static BOOL ReserveAndTransferFromHead(CharTransferTask *task);
static BOOL ReserveAndTransferFromTail(CharTransferTask *task);
static void ReserveTransferRangeByOffsetAndSize(NNS_G2D_VRAM_TYPE vramType, u32 offsetMain, u32 offsetSub, u32 sizeMain, u32 sizeSub);
static void ClearTransferTaskRange(CharTransferTask *task);
static CharTransferTask *FindNextFreeTask(void);
static CharTransferTask *FindTransferTaskByImageProxy(const NNSG2dImageProxy *search);
static CharTransferTask *FindTransferTaskByResourceID(int resourceID);
static GXOBJVRamModeChar UpdateMappingTypeFromHardware(CharTransferTask *task, NNS_G2D_VRAM_TYPE vramType);
static void SetBaseAddresses(CharTransferTask *task, u32 baseAddrMain, u32 baseAddrSub);
static void UpdateBaseAddresses(CharTransferTask *task, u32 offsetMain, u32 offsetSub);
static void UpdateVramCapacities(void);
static BOOL TryGetFreeTransferSpace(int vramType, u32 *outOffsetMain, u32 *outOffsetSub, u32 size, u32 *outSizeMain, u32 *outSizeSub);
static void LoadImageMapping(CharTransferTask *task);
static void LoadImageMappingForScreen(CharTransferTask *task, NNS_G2D_VRAM_TYPE vramType);
static void LoadImageVramTransfer(CharTransferTask *task);
static void LoadImageVramTransferForScreen(CharTransferTask *task, int vramType);

static int AlignToBlockSize(int size, int blockSize, BOOL rightAlign);
static int CalcBlockMaximum(int size, int blockSize);
static int CalcBlockOffset(int blockNum, int blockSize);
static void CalcByteAndBitIndices(int val, u32 *top, u8 *bottom);
static void FixOffsetAndSize(u32 base, u32 offset, u32 size, int *outOffset, int *outSize);
static u32 GetNumBlocks(u8 *buf);

static void InitTransferBuffers(u32 numBlocksMain, u32 numBlocksSub, enum HeapID heapID);
static void FreeBlockTransferBuffer(u8 *buf);
static void ReserveTransferRange(u32 start, u32 count, u8 *buf);
static void ReserveVramSpace(u32 size, NNS_G2D_VRAM_TYPE vramType);
static void ClearTransferRange(u32 start, u32 count, u8 *buf);
static void ClearTransferBuffer(u8 *buf);
static void ClearBothTransferBuffers(void);
static u32 FindAvailableTransferRange(u32 size, u8 *buf);
static BOOL TryGetDestOffsets(u32 size, NNS_G2D_VRAM_TYPE vramType, u32 *outOffsetMain, u32 *outOffsetSub);

static CharTransferTaskManager *sTaskManager = NULL;

void CharTransfer_Init(const CharTransferTemplate *template)
{
    CharTransfer_InitWithVramModes(template, GX_GetOBJVRamModeChar(), GXS_GetOBJVRamModeChar());
}

void CharTransfer_InitWithVramModes(const CharTransferTemplate *template, GXOBJVRamModeChar modeMain, GXOBJVRamModeChar modeSub)
{
    if (sTaskManager == NULL) {
        sTaskManager = Heap_Alloc(template->heapID, sizeof(CharTransferTaskManager));
        MI_CpuClear32(sTaskManager, sizeof(CharTransferTaskManager));

        sTaskManager->capacity = template->maxTasks;
        sTaskManager->tasks = Heap_Alloc(template->heapID, sizeof(CharTransferTask) * sTaskManager->capacity);
        for (int i = 0; i < template->maxTasks; i++) {
            InitTransferTask(sTaskManager->tasks + i);
        }

        sTaskManager->blockSizeMain = CharTransfer_GetBlockSize(modeMain);
        sTaskManager->blockSizeSub = CharTransfer_GetBlockSize(modeSub);

        GX_SetOBJVRamModeChar(modeMain);
        GXS_SetOBJVRamModeChar(modeSub);

        int numBlocksMain = CalcBlockMaximum(template->sizeMain, sTaskManager->blockSizeMain);
        int numBlocksSub = CalcBlockMaximum(template->sizeSub, sTaskManager->blockSizeSub);

        InitTransferBuffers(numBlocksMain, numBlocksSub, template->heapID);
    }
}

void CharTransfer_Free(void)
{
    if (sTaskManager != NULL) {
        FreeBlockTransferBuffer(sTaskManager->bufMain);
        FreeBlockTransferBuffer(sTaskManager->bufSub);

        CharTransfer_ResetAllTasks();

        Heap_Free(sTaskManager->tasks);
        Heap_Free(sTaskManager);
        sTaskManager = NULL;
    }
}

void CharTransfer_ClearBuffers(void)
{
    sTaskManager->offsetMain = 0;
    sTaskManager->offsetSub = 0;

    ClearTransferBuffer(sTaskManager->bufMain);
    ClearTransferBuffer(sTaskManager->bufSub);
    UpdateVramCapacities();
}

void CharTransfer_ReserveVramRange(u32 offset, u32 size, NNS_G2D_VRAM_TYPE vramType)
{
    int fixedOffset, fixedSize;
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        FixOffsetAndSize(sTaskManager->freeSizeMain, offset, size, &fixedOffset, &fixedSize);
        if (fixedSize > 0) {
            ReserveTransferRangeByOffsetAndSize(NNS_G2D_VRAM_TYPE_2DMAIN, fixedOffset, 0, fixedSize, 0);
        }
    } else {
        FixOffsetAndSize(sTaskManager->freeSizeSub, offset, size, &fixedOffset, &fixedSize);
        if (fixedSize > 0) {
            ReserveTransferRangeByOffsetAndSize(NNS_G2D_VRAM_TYPE_2DSUB, 0, fixedOffset, 0, fixedSize);
        }
    }
}

BOOL CharTransfer_Request(const CharTransferTaskTemplate *template)
{
    if (CharTransfer_HasTask(template->resourceID) == TRUE) {
        GF_ASSERT(FALSE);
    }

    CharTransferTask *task = FindNextFreeTask();
    if (task == NULL) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (InitTransferTaskFromTemplate(template, task) == FALSE) {
        return FALSE;
    }

    if (ReserveAndTransfer(task) == FALSE) {
        CharTransfer_ResetTask(task->resourceID);
        return FALSE;
    }

    sTaskManager->length++;
    return TRUE;
}

BOOL CharTransfer_RequestWithHardwareMappingType(const CharTransferTaskTemplate *template)
{
    if (CharTransfer_HasTask(template->resourceID) == TRUE) {
        GF_ASSERT(FALSE);
    }

    CharTransferTask *task = FindNextFreeTask();
    if (task == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (InitTransferTaskFromTemplate(template, task) == FALSE) {
        return FALSE;
    }

    task->useHardwareMappingType = TRUE;
    if (ReserveAndTransfer(task) == FALSE) {
        CharTransfer_ResetTask(task->resourceID);
        return FALSE;
    }

    sTaskManager->length++;
    return TRUE;
}

BOOL CharTransfer_HasTask(int resourceID)
{
    for (int i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].resourceID == resourceID) {
            return TRUE;
        }
    }

    return FALSE;
}

void CharTransfer_ReplaceCharData(int resourceID, NNSG2dCharacterData *data)
{
    GF_ASSERT(data);

    CharTransferTask *task = FindTransferTaskByResourceID(resourceID);
    GF_ASSERT(task);

    task->data = data;
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, task->baseAddrMain, data->pRawData, data->szByte);
    }
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        VramTransfer_Request(NNS_GFD_DST_2D_OBJ_CHAR_SUB, task->baseAddrSub, data->pRawData, data->szByte);
    }
}

void CharTransfer_ResetTask(int resourceID)
{
    CharTransferTask *task;
    BOOL stillSearching = TRUE;

    do {
        task = FindTransferTaskByResourceID(resourceID);
        GF_ASSERT(task);

        if (task->state == CTT_VRAM_COPIED) {
            CharTransfer_DeleteTask(&task->imageProxy);
        } else {
            stillSearching = FALSE;
        }
    } while (stillSearching);

    if (task->state != CTT_INIT) {
        ResetTransferTask(task);
        sTaskManager->length--;
    }
}

void CharTransfer_ResetAllTasks(void)
{
    for (int i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].state != CTT_INIT) {
            ResetTransferTask(&sTaskManager->tasks[i]);
            sTaskManager->length--;
        }
    }
}

NNSG2dImageProxy *CharTransfer_GetImageProxy(int resourceID)
{
    CharTransferTask *task = FindTransferTaskByResourceID(resourceID);
    GF_ASSERT(task);

    if (task->state == CTT_INIT) {
        return NULL;
    }

    return &task->imageProxy;
}

NNSG2dImageProxy *CharTransfer_ResizeTaskRange(int resourceID, u32 size)
{
    CharTransferTask *task = FindTransferTaskByResourceID(resourceID);
    GF_ASSERT(task);

    if (task->state == CTT_INIT) {
        return NULL;
    }

    u32 offsetMain, offsetSub;
    u32 sizeMain, sizeSub;
    TryGetFreeTransferSpace(task->vramType, &offsetMain, &offsetSub, size, &sizeMain, &sizeSub);

    if (task->state == CTT_VRAM_READY) {
        return NULL;
    }

    task->state = CTT_VRAM_READY;
    UpdateBaseAddresses(task, offsetMain, offsetSub);

    task->hasRange = TRUE;
    task->regionSizeMain = sizeMain;
    task->regionSizeSub = sizeSub;

    LoadImageVramTransfer(task);
    ReserveTransferRangeByOffsetAndSize(task->vramType, offsetMain, offsetSub, sizeMain, sizeSub);
    return &task->imageProxy;
}

NNSG2dImageProxy *CharTransfer_CopyTask(const NNSG2dImageProxy *imageProxy)
{
    CharTransferTask *srcTask = FindTransferTaskByImageProxy(imageProxy);
    GF_ASSERT(srcTask);

    CharTransferTask *dstTask = FindNextFreeTask();
    GF_ASSERT(dstTask);

    if (srcTask->state != CTT_VRAM_READY) {
        return NULL;
    }

    *dstTask = *srcTask;
    dstTask->state = CTT_VRAM_COPIED;

    u32 size;
    if (dstTask->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        size = dstTask->regionSizeMain;
    } else {
        size = dstTask->regionSizeSub;
    }

    u32 offsetMain, offsetSub;
    u32 sizeMain, sizeSub;
    TryGetFreeTransferSpace(dstTask->vramType, &offsetMain, &offsetSub, size, &sizeMain, &sizeSub);
    UpdateBaseAddresses(dstTask, offsetMain, offsetSub);

    dstTask->hasRange = TRUE;
    dstTask->regionSizeMain = sizeMain;
    dstTask->regionSizeSub = sizeSub;

    LoadImageVramTransfer(dstTask);
    ReserveTransferRangeByOffsetAndSize(dstTask->vramType, offsetMain, offsetSub, sizeMain, sizeSub);

    return &dstTask->imageProxy;
}

void CharTransfer_DeleteTask(const NNSG2dImageProxy *imageProxy)
{
    int i;
    for (i = 0; i < sTaskManager->capacity; i++) {
        if ((sTaskManager->tasks[i].state == CTT_VRAM_READY || sTaskManager->tasks[i].state == CTT_VRAM_COPIED)
            && &sTaskManager->tasks[i].imageProxy == imageProxy) {
            break;
        }
    }

    if (i >= sTaskManager->capacity) {
        return;
    }

    ClearTransferTaskRange(sTaskManager->tasks + i);
    if (sTaskManager->tasks[i].state == CTT_VRAM_READY) {
        sTaskManager->tasks[i].state = CTT_WAITING_FOR_VRAM;
    } else {
        sTaskManager->tasks[i].state = CTT_INIT;
        InitTransferTask(&sTaskManager->tasks[i]);
    }
}

BOOL CharTransfer_AllocRange(int size, BOOL atEnd, NNS_G2D_VRAM_TYPE vramType, CharTransferAllocation *allocation)
{
    u32 offsetMain, offsetSub;
    u32 sizeMain, sizeSub;
    BOOL result;

    if (atEnd == FALSE) {
        result = TryGetDestOffsets(size, vramType, &offsetMain, &offsetSub);
        if (result) {
            ReserveVramSpace(size, vramType);
            allocation->vramType = vramType;
            allocation->size = size;

            if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
                allocation->offset = offsetMain;
            } else {
                allocation->offset = offsetSub;
            }

            allocation->atEnd = FALSE;
        }
    } else {
        result = TryGetFreeTransferSpace(vramType, &offsetMain, &offsetSub, size, &sizeMain, &sizeSub);
        if (result) {
            ReserveTransferRangeByOffsetAndSize(vramType, offsetMain, offsetSub, sizeMain, sizeSub);
            allocation->vramType = vramType;

            if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
                allocation->size = sizeMain;
                allocation->offset = offsetMain + sTaskManager->freeSizeMain;
            } else {
                allocation->size = sizeSub;
                allocation->offset = offsetSub + sTaskManager->freeSizeSub;
            }

            allocation->atEnd = TRUE;
        }
    }

    return result;
}

void CharTransfer_ClearRange(CharTransferAllocation *allocation)
{
    if (allocation->atEnd == FALSE) {
        return;
    }

    if (allocation->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        int count = CalcBlockMaximum(allocation->size, sTaskManager->blockSizeMain);
        int start = CalcBlockMaximum(allocation->offset - sTaskManager->freeSizeMain, sTaskManager->blockSizeMain);
        ClearTransferRange(start, count, sTaskManager->bufMain);
    }

    if (allocation->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        int count = CalcBlockMaximum(allocation->size, sTaskManager->blockSizeSub);
        int start = CalcBlockMaximum(allocation->offset - sTaskManager->freeSizeSub, sTaskManager->blockSizeSub);
        ClearTransferRange(start, count, sTaskManager->bufSub);
    }
}

void *CharTransfer_PopTaskManager(void)
{
    GF_ASSERT(sTaskManager);

    void *manager = sTaskManager;
    sTaskManager = NULL;
    return manager;
}

void CharTransfer_PushTaskManager(void *manager)
{
    GF_ASSERT(sTaskManager == NULL);
    sTaskManager = manager;
}

static void InitTransferTask(CharTransferTask *task)
{
    task->data = NULL;
    task->vramType = 0;
    task->done = FALSE;
    task->resourceID = CHAR_RESOURCE_ID_NONE;
    task->baseAddrMain = 0;
    task->baseAddrSub = 0;
    task->state = CTT_INIT;
    task->useHardwareMappingType = FALSE;

    NNS_G2dInitImageProxy(&task->imageProxy);
}

static BOOL InitTransferTaskFromTemplate(const CharTransferTaskTemplate *template, CharTransferTask *task)
{
    task->data = template->data;
    task->resourceID = template->resourceID;
    task->vramType = template->vramType;
    task->done = task->data->characterFmt >> CHAR_TRANSFER_SHIFT;
    task->atEnd = template->atEnd;
    task->hasRange = FALSE;
    task->regionSizeMain = 0;
    task->regionSizeSub = 0;

    return TRUE;
}

static CharTransferTask *FindTransferTaskByImageProxy(const NNSG2dImageProxy *search)
{
    int i;
    for (i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].state != CTT_INIT
            && &sTaskManager->tasks[i].imageProxy == search) {
            break;
        }
    }

    if (i >= sTaskManager->capacity) {
        return NULL;
    }

    return sTaskManager->tasks + i;
}

static BOOL ReserveAndTransfer(CharTransferTask *task)
{
    BOOL result = TRUE;

    if (task->done) {
        task->state = CTT_WAITING_FOR_VRAM;
    } else {
        task->state = CTT_IN_PROGRESS;
        if (task->atEnd == FALSE) {
            result = ReserveAndTransferFromHead(task);
        } else {
            result = ReserveAndTransferFromTail(task);
        }
    }

    return result;
}

static BOOL ReserveAndTransferFromHead(CharTransferTask *task)
{
    u32 offsetMain, offsetSub;

    BOOL result = TryGetDestOffsets(task->data->szByte, task->vramType, &offsetMain, &offsetSub);
    if (result) {
        SetBaseAddresses(task, offsetMain, offsetSub);
        ReserveVramSpace(task->data->szByte, task->vramType);
    }

    return result;
}

static BOOL ReserveAndTransferFromTail(CharTransferTask *task)
{
    u32 offsetMain, offsetSub;
    u32 sizeMain, sizeSub;

    if (TryGetFreeTransferSpace(task->vramType, &offsetMain, &offsetSub, task->data->szByte, &sizeMain, &sizeSub) == FALSE) {
        return FALSE;
    }

    UpdateBaseAddresses(task, offsetMain, offsetSub);
    task->hasRange = TRUE;
    task->regionSizeMain = sizeMain;
    task->regionSizeSub = sizeSub;

    LoadImageMapping(task);
    ReserveTransferRangeByOffsetAndSize(task->vramType, offsetMain, offsetSub, sizeMain, sizeSub);

    return TRUE;
}

static void ResetTransferTask(CharTransferTask *task)
{
    if (task->hasRange) {
        ClearTransferTaskRange(task);
    }

    InitTransferTask(task);
}

static CharTransferTask *FindTransferTaskByResourceID(int resourceID)
{
    for (int i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].resourceID == resourceID) {
            return &sTaskManager->tasks[i];
        }
    }

    return NULL;
}

static GXOBJVRamModeChar UpdateMappingTypeFromHardware(CharTransferTask *task, NNS_G2D_VRAM_TYPE vramType)
{
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        task->data->mappingType = GX_GetOBJVRamModeChar();
    } else {
        task->data->mappingType = GXS_GetOBJVRamModeChar();
    }

    return task->data->mappingType;
}

static void SetBaseAddresses(CharTransferTask *task, u32 baseAddrMain, u32 baseAddrSub)
{
    task->baseAddrMain = baseAddrMain;
    task->baseAddrSub = baseAddrSub;

    if (!task->done) {
        LoadImageMapping(task);
    }
}

// NNS_G2D_VRAM_TYPE does not match against int here, for some reason.
static BOOL TryGetFreeTransferSpace(int vramType, u32 *outOffsetMain, u32 *outOffsetSub, u32 size, u32 *outSizeMain, u32 *outSizeSub)
{
    if (vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        *outSizeMain = AlignToBlockSize(size, sTaskManager->blockSizeMain, TRUE);
        u32 blockMax = CalcBlockMaximum(*outSizeMain, sTaskManager->blockSizeMain);
        *outOffsetMain = FindAvailableTransferRange(blockMax, sTaskManager->bufMain);

        if (*outOffsetMain == -1) {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        *outOffsetMain = CalcBlockOffset(*outOffsetMain, sTaskManager->blockSizeMain);
    }

    if (vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        *outSizeSub = AlignToBlockSize(size, sTaskManager->blockSizeSub, TRUE);
        u32 blockMax = CalcBlockMaximum(*outSizeSub, sTaskManager->blockSizeSub);
        *outOffsetSub = FindAvailableTransferRange(blockMax, sTaskManager->bufSub);

        if (*outOffsetSub == -1) {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        *outOffsetSub = CalcBlockOffset(*outOffsetSub, sTaskManager->blockSizeSub);
    }

    return TRUE;
}

static void UpdateBaseAddresses(CharTransferTask *task, u32 offsetMain, u32 offsetSub)
{
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        task->baseAddrMain = offsetMain + sTaskManager->freeSizeMain;
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        task->baseAddrSub = offsetSub + sTaskManager->freeSizeSub;
    }
}

static void ReserveTransferRangeByOffsetAndSize(NNS_G2D_VRAM_TYPE vramType, u32 offsetMain, u32 offsetSub, u32 sizeMain, u32 sizeSub)
{
    if (vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        int count = CalcBlockMaximum(sizeMain, sTaskManager->blockSizeMain);
        int start = CalcBlockMaximum(offsetMain, sTaskManager->blockSizeMain);
        ReserveTransferRange(start, count, sTaskManager->bufMain);
    }

    if (vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        int count = CalcBlockMaximum(sizeSub, sTaskManager->blockSizeSub);
        int start = CalcBlockMaximum(offsetSub, sTaskManager->blockSizeSub);
        ReserveTransferRange(start, count, sTaskManager->bufSub);
    }
}

static void LoadImageMapping(CharTransferTask *task)
{
    NNS_G2dInitImageProxy(&task->imageProxy);

    if (task->vramType != NNS_G2D_VRAM_TYPE_2DBOTH) {
        LoadImageMappingForScreen(task, task->vramType);
    } else {
        LoadImageMappingForScreen(task, NNS_G2D_VRAM_TYPE_2DMAIN);
        LoadImageMappingForScreen(task, NNS_G2D_VRAM_TYPE_2DSUB);
    }
}

static void LoadImageMappingForScreen(CharTransferTask *task, NNS_G2D_VRAM_TYPE vramType)
{
    int mappingType = task->useHardwareMappingType ? UpdateMappingTypeFromHardware(task, vramType) : vramType;

    u32 baseAddr;
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        baseAddr = task->baseAddrMain;
        GX_GetOBJVRamModeChar(); // result unused
    } else {
        baseAddr = task->baseAddrSub;
        GXS_GetOBJVRamModeChar(); // result unused
    }

    if (mappingType == GX_OBJVRAMMODE_CHAR_2D) {
        NNS_G2dLoadImage2DMapping(task->data, baseAddr, vramType, &task->imageProxy);
    } else {
        NNS_G2dLoadImage1DMapping(task->data, baseAddr, vramType, &task->imageProxy);
    }
}

static void LoadImageVramTransfer(CharTransferTask *task)
{
    NNS_G2dInitImageProxy(&task->imageProxy);

    if (task->vramType != NNS_G2D_VRAM_TYPE_2DBOTH) {
        LoadImageVramTransferForScreen(task, task->vramType);
    } else {
        LoadImageVramTransferForScreen(task, NNS_G2D_VRAM_TYPE_2DMAIN);
        LoadImageVramTransferForScreen(task, NNS_G2D_VRAM_TYPE_2DSUB);
    }
}

static void LoadImageVramTransferForScreen(CharTransferTask *task, int vramType)
{
    int mappingType = task->useHardwareMappingType ? UpdateMappingTypeFromHardware(task, vramType) : vramType;

    int baseAddr;
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        baseAddr = task->baseAddrMain;
        GX_GetOBJVRamModeChar(); // result unused
    } else {
        baseAddr = task->baseAddrSub;
        GXS_GetOBJVRamModeChar(); // result unused
    }

    NNS_G2dLoadImageVramTransfer(task->data, baseAddr, vramType, &task->imageProxy);
}

static CharTransferTask *FindNextFreeTask(void)
{
    for (int i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].state == CTT_INIT) {
            return &sTaskManager->tasks[i];
        }
    }

    return NULL;
}

static void UpdateVramCapacities(void)
{
    switch (GX_GetBankForOBJ()) {
    case GX_VRAM_OBJ_NONE:
        sTaskManager->vramSizeMain = 0;
        break;
    case GX_VRAM_OBJ_16_F:
    case GX_VRAM_OBJ_16_G:
        sTaskManager->vramSizeMain = 16 * 1024;
        break;
    case GX_VRAM_OBJ_32_FG:
        sTaskManager->vramSizeMain = 32 * 1024;
        break;
    case GX_VRAM_OBJ_64_E:
        sTaskManager->vramSizeMain = 64 * 1024;
        break;
    case GX_VRAM_OBJ_80_EF:
    case GX_VRAM_OBJ_80_EG:
        sTaskManager->vramSizeMain = 80 * 1024;
        break;
    case GX_VRAM_OBJ_96_EFG:
        sTaskManager->vramSizeMain = 96 * 1024;
        break;
    case GX_VRAM_OBJ_128_A:
    case GX_VRAM_OBJ_128_B:
        sTaskManager->vramSizeMain = 128 * 1024;
        break;
    case GX_VRAM_OBJ_256_AB:
        sTaskManager->vramSizeMain = 256 * 1024;
        break;
    default:
        sTaskManager->vramSizeMain = 0;
        break;
    }

    switch (GX_GetBankForSubOBJ()) {
    case GX_VRAM_SUB_OBJ_NONE:
        sTaskManager->vramSizeSub = 0;
        break;
    case GX_VRAM_SUB_OBJ_16_I:
        sTaskManager->vramSizeSub = 16 * 1024;
        break;
    case GX_VRAM_SUB_OBJ_128_D:
        sTaskManager->vramSizeSub = 128 * 1024;
        break;
    default:
        sTaskManager->vramSizeSub = 0;
        break;
    }

    int toReserve = CalcBlockOffset(sTaskManager->numBlocksMain, sTaskManager->blockSizeMain);
    sTaskManager->freeSizeMain = sTaskManager->vramSizeMain - toReserve;
    toReserve = CalcBlockOffset(sTaskManager->numBlocksSub, sTaskManager->blockSizeSub);
    sTaskManager->freeSizeSub = sTaskManager->vramSizeSub - toReserve;

    GF_ASSERT(sTaskManager->freeSizeMain >= 0 && sTaskManager->freeSizeSub >= 0);
    GF_ASSERT(sTaskManager->freeSizeMain >= 0 && sTaskManager->freeSizeSub >= 0);
}

static void ClearBothTransferBuffers(void)
{
    ClearTransferBuffer(sTaskManager->bufMain);
    ClearTransferBuffer(sTaskManager->bufSub);
}

static void InitTransferBuffers(u32 numBlocksMain, u32 numBlocksSub, enum HeapID heapID)
{
    sTaskManager->numBlocksMain = numBlocksMain;
    sTaskManager->numBlocksSub = numBlocksSub;

    if (sTaskManager->bufMain != NULL) {
        Heap_Free(sTaskManager->bufMain);
    }

    if (sTaskManager->bufSub != NULL) {
        Heap_Free(sTaskManager->bufSub);
    }

    if (sTaskManager->numBlocksMain != 0) {
        sTaskManager->bufMain = Heap_Alloc(heapID, numBlocksMain / 8);
    }

    if (sTaskManager->numBlocksSub != 0) {
        sTaskManager->bufSub = Heap_Alloc(heapID, numBlocksSub / 8);
    }

    ClearBothTransferBuffers();
}

static void FreeBlockTransferBuffer(u8 *buf)
{
    if (buf != NULL) {
        if (buf == sTaskManager->bufMain) {
            sTaskManager->numBlocksMain = 0;
            Heap_Free(buf);
        } else {
            sTaskManager->numBlocksSub = 0;
            Heap_Free(buf);
        }
        buf = NULL;
    }
}

static u32 GetNumBlocks(u8 *buf)
{
    if (buf == sTaskManager->bufMain) {
        return sTaskManager->numBlocksMain;
    }

    return sTaskManager->numBlocksSub;
}

static void ClearTransferBuffer(u8 *buf)
{
    if (buf != NULL) {
        memset(buf, 0, GetNumBlocks(buf) / 8);
    }
}

static void ReserveTransferRange(u32 start, u32 count, u8 *buf)
{
    if (buf == NULL) {
        return;
    }

    u32 max = GetNumBlocks(buf);
    u32 end = start + count;
    for (int i = start; i < end; i++) {
        if (i >= max) {
            break;
        }

        u32 byte;
        u8 bit;
        CalcByteAndBitIndices(i, &byte, &bit);
        GF_ASSERT((buf[byte] & (1 << bit)) == 0);

        u8 mask = (1 << bit);
        buf[byte] |= mask;
    }
}

static u32 FindAvailableTransferRange(u32 size, u8 *buf)
{
    int i, j;
    u32 max;

    if (buf != NULL) {
        max = GetNumBlocks(buf);

        for (i = 0; i < max; i++) {
            u32 byte;
            u8 bit, mask;
            CalcByteAndBitIndices(i, &byte, &bit);

            mask = (1 << bit);
            j = 0;

            while ((buf[byte] & mask) == 0 && j <= size) {
                int count = i + j;
                CalcByteAndBitIndices(count, &byte, &bit);

                mask = (1 << bit);
                if (count >= max) {
                    return -1;
                }

                j++;
            }

            if (j > size) {
                return i;
            }

            i += j;
        }
    }

    return -1;
}

static void ClearTransferRange(u32 start, u32 count, u8 *buf)
{
    if (buf == NULL) {
        return;
    }

    u32 end = start + count;
    for (int i = start; i < end; i++) {
        u32 byte;
        u8 bit;
        CalcByteAndBitIndices(i, &byte, &bit);

        GF_ASSERT(buf[byte] & (1 << bit));

        u8 mask = (1 << bit) ^ 0xFF;
        buf[byte] &= mask;
    }
}

static void ClearTransferTaskRange(CharTransferTask *task)
{
    if (task->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        u32 location = NNS_G2dGetImageLocation(&task->imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN);
        u32 start = CalcBlockMaximum(location - sTaskManager->freeSizeMain, sTaskManager->blockSizeMain);
        u32 count = CalcBlockMaximum(task->regionSizeMain, sTaskManager->blockSizeMain);
        ClearTransferRange(start, count, sTaskManager->bufMain);
    }

    if (task->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        u32 location = NNS_G2dGetImageLocation(&task->imageProxy, NNS_G2D_VRAM_TYPE_2DSUB);
        u32 start = CalcBlockMaximum(location - sTaskManager->freeSizeSub, sTaskManager->blockSizeSub);
        u32 count = CalcBlockMaximum(task->regionSizeSub, sTaskManager->blockSizeSub);
        ClearTransferRange(start, count, sTaskManager->bufSub);
    }

    task->hasRange = FALSE;
}

int CharTransfer_GetBlockSize(GXOBJVRamModeChar vramMode)
{
    switch (vramMode) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        return 1;
    case GX_OBJVRAMMODE_CHAR_1D_64K:
        return 2;
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        return 4;
    case GX_OBJVRAMMODE_CHAR_1D_256K:
        return 8;
    default:
        return 1;
    }
}

static int AlignToBlockSize(int size, int blockSize, BOOL rightAlign)
{
    blockSize *= 32;

    if (size % blockSize) {
        size -= (size % blockSize);
        if (rightAlign == TRUE) {
            size += blockSize;
        }
    }

    return size;
}

static int CalcBlockMaximum(int size, int blockSize)
{
    return size / 32 / blockSize;
}

static int CalcBlockOffset(int blockNum, int blockSize)
{
    return blockNum * blockSize * 32;
}

static BOOL TryGetDestOffsets(u32 size, NNS_G2D_VRAM_TYPE vramType, u32 *outOffsetMain, u32 *outOffsetSub)
{
    BOOL result = TRUE;

    if (vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        if (sTaskManager->offsetMain + size > sTaskManager->freeSizeMain) {
            GF_ASSERT(FALSE);
            result = FALSE;
        } else {
            *outOffsetMain = sTaskManager->offsetMain;
        }
    }

    if (vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        if (sTaskManager->offsetSub + size > sTaskManager->freeSizeSub) {
            GF_ASSERT(FALSE);
            result = FALSE;
        } else {
            *outOffsetSub = sTaskManager->offsetSub;
        }
    }

    return result;
}

static void ReserveVramSpace(u32 size, NNS_G2D_VRAM_TYPE vramType)
{
    if (vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sTaskManager->offsetMain += size;
        sTaskManager->offsetMain = AlignToBlockSize(sTaskManager->offsetMain, sTaskManager->blockSizeMain, TRUE);
    }

    if (vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        sTaskManager->offsetSub += size;
        sTaskManager->offsetSub = AlignToBlockSize(sTaskManager->offsetSub, sTaskManager->blockSizeSub, TRUE);
    }
}

static void CalcByteAndBitIndices(int val, u32 *top, u8 *bottom)
{
    *top = val >> 3;
    *bottom = val & 7;
}

static void FixOffsetAndSize(u32 base, u32 offset, u32 size, int *outOffset, int *outSize)
{
    *outOffset = offset - base;
    if (*outOffset < 0) {
        *outSize = size + *outOffset;
        *outOffset = 0;
    } else {
        *outSize = size;
    }
}
