#include "char_transfer.h"

#include <nitro/gx.h>
#include <nnsys.h>

#include "heap.h"
#include "unk_0201DBEC.h"

#define CHAR_RESOURCE_ID_NONE -1
#define CHAR_TRANSFER_SHIFT   8

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
    BOOL haveRange;
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

static int AlignToBlockSize(int size, int blockSize, int rightAlign);
static int CalcBlockMaximum(int size, int blockSize);
static int CalcBlockOffset(int blockNum, int blockSize);
static void CalcByteAndBitIndices(int val, u32 *top, u8 *bottom);
static void FixOffsetAndSize(u32 base, u32 offset, u32 size, int *outOffset, int *outSize);
static u32 GetNumBlocks(u8 *buf);

static void InitTransferBuffers(u32 numBlocksMain, u32 numBlocksSub, enum HeapId heapID);
static void FreeBlockTransferBuffer(u8 *buf);
static void ReserveTransferRange(u32 start, u32 count, u8 *buf);
static void ReserveVramSpace(u32 size, NNS_G2D_VRAM_TYPE vramType);
static void ClearTransferRange(u32 start, u32 count, u8 *buf);
static void ClearTransferBuffer(u8 *buf);
static void ClearBothTransferBuffers(void);
static u32 FindAvailableTransferRange(u32 size, u8 *buf);
static BOOL TryGetDestOffsets(u32 size, NNS_G2D_VRAM_TYPE vramType, u32 *outOffsetMain, u32 *outOffsetSub);

static CharTransferTaskManager *sTaskManager = NULL;

void sub_0201E86C(const CharTransferTemplate *param0)
{
    sub_0201E88C(param0, GX_GetOBJVRamModeChar(), GXS_GetOBJVRamModeChar());
}

void sub_0201E88C(const CharTransferTemplate *param0, GXOBJVRamModeChar param1, GXOBJVRamModeChar param2)
{
    int v0;
    int v1;
    int v2;

    if (sTaskManager == NULL) {
        sTaskManager = Heap_AllocFromHeap(param0->heapID, sizeof(CharTransferTaskManager));
        MI_CpuClear32(sTaskManager, sizeof(CharTransferTaskManager));

        sTaskManager->capacity = param0->maxTasks;
        sTaskManager->tasks = Heap_AllocFromHeap(param0->heapID, sizeof(CharTransferTask) * sTaskManager->capacity);

        for (v0 = 0; v0 < param0->maxTasks; v0++) {
            InitTransferTask(sTaskManager->tasks + v0);
        }

        sTaskManager->blockSizeMain = sub_0201F6F4(param1);
        sTaskManager->blockSizeSub = sub_0201F6F4(param2);

        GX_SetOBJVRamModeChar(param1);
        GXS_SetOBJVRamModeChar(param2);

        v1 = CalcBlockMaximum(param0->sizeMain, sTaskManager->blockSizeMain);
        v2 = CalcBlockMaximum(param0->sizeSub, sTaskManager->blockSizeSub);

        InitTransferBuffers(v1, v2, param0->heapID);
    }
}

void sub_0201E958(void)
{
    if (sTaskManager != NULL) {
        FreeBlockTransferBuffer(sTaskManager->bufMain);
        FreeBlockTransferBuffer(sTaskManager->bufSub);

        sub_0201EBA0();

        Heap_FreeToHeap(sTaskManager->tasks);
        Heap_FreeToHeap(sTaskManager);

        sTaskManager = NULL;
    }
}

void sub_0201E994(void)
{
    sTaskManager->offsetMain = 0;
    sTaskManager->offsetSub = 0;

    ClearTransferBuffer(sTaskManager->bufMain);
    ClearTransferBuffer(sTaskManager->bufSub);

    UpdateVramCapacities();
}

void sub_0201E9C0(u32 param0, u32 param1, u32 param2)
{
    int v0;
    int v1;

    if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        FixOffsetAndSize(sTaskManager->freeSizeMain, param0, param1, &v0, &v1);

        if (v1 > 0) {
            ReserveTransferRangeByOffsetAndSize(NNS_G2D_VRAM_TYPE_2DMAIN, v0, 0, v1, 0);
        }
    } else {
        FixOffsetAndSize(sTaskManager->freeSizeSub, param0, param1, &v0, &v1);

        if (v1 > 0) {
            ReserveTransferRangeByOffsetAndSize(NNS_G2D_VRAM_TYPE_2DSUB, 0, v0, 0, v1);
        }
    }
}

BOOL sub_0201EA24(const CharTransferTaskTemplate *param0)
{
    CharTransferTask *v0;
    u32 *v1;
    u8 v2 = 0;
    u32 v3;

    if (sub_0201EAD8(param0->resourceID) == 1) {
        GF_ASSERT(FALSE);
    }

    v0 = FindNextFreeTask();

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (InitTransferTaskFromTemplate(param0, v0) == 0) {
        return 0;
    }

    if (ReserveAndTransfer(v0) == 0) {
        sub_0201EB50(v0->resourceID);
        return 0;
    }

    sTaskManager->length++;

    return 1;
}

BOOL sub_0201EA7C(const CharTransferTaskTemplate *param0)
{
    CharTransferTask *v0;
    u32 *v1;
    u8 v2 = 0;
    u32 v3;

    if (sub_0201EAD8(param0->resourceID) == 1) {
        GF_ASSERT(FALSE);
    }

    v0 = FindNextFreeTask();

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (InitTransferTaskFromTemplate(param0, v0) == 0) {
        return 0;
    }

    v0->useHardwareMappingType = 1;

    if (ReserveAndTransfer(v0) == 0) {
        sub_0201EB50(v0->resourceID);
        return 0;
    }

    sTaskManager->length++;

    return 1;
}

BOOL sub_0201EAD8(int param0)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].resourceID == param0) {
            return 1;
        }
    }

    return 0;
}

void sub_0201EB08(int param0, NNSG2dCharacterData *param1)
{
    CharTransferTask *v0;

    GF_ASSERT(param1);

    v0 = FindTransferTaskByResourceID(param0);
    GF_ASSERT(v0);
    v0->data = param1;

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_0201DC68(NNS_GFD_DST_2D_OBJ_CHAR_MAIN, v0->baseAddrMain, param1->pRawData, param1->szByte);
    }

    if (v0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0201DC68(NNS_GFD_DST_2D_OBJ_CHAR_SUB, v0->baseAddrSub, param1->pRawData, param1->szByte);
    }
}

void sub_0201EB50(int param0)
{
    CharTransferTask *v0;
    int v1 = 1;

    do {
        v0 = FindTransferTaskByResourceID(param0);
        GF_ASSERT(v0);

        if (v0->state == 4) {
            sub_0201ED1C(&v0->imageProxy);
        } else {
            v1 = 0;
        }
    } while (v1);

    if (v0->state != 0) {
        ResetTransferTask(v0);
        sTaskManager->length--;
    }
}

void sub_0201EBA0(void)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if (sTaskManager->tasks[v0].state != 0) {
            ResetTransferTask(&sTaskManager->tasks[v0]);
            sTaskManager->length--;
        }
    }
}

NNSG2dImageProxy *sub_0201EBDC(int param0)
{
    CharTransferTask *v0;

    v0 = FindTransferTaskByResourceID(param0);
    GF_ASSERT(v0);

    if (v0->state == 0) {
        return NULL;
    }

    return &v0->imageProxy;
}

NNSG2dImageProxy *sub_0201EC00(int param0, u32 param1)
{
    u32 v0, v1;
    CharTransferTask *v2;
    CharTransferTask *v3;
    u32 v4, v5;

    v2 = FindTransferTaskByResourceID(param0);
    GF_ASSERT(v2);

    if (v2->state == 0) {
        return NULL;
    }

    TryGetFreeTransferSpace(v2->vramType, &v0, &v1, param1, &v4, &v5);

    if (v2->state == 3) {
        return NULL;
    } else {
        v2->state = 3;
        v3 = v2;
    }

    UpdateBaseAddresses(v3, v0, v1);

    v3->haveRange = 1;
    v3->regionSizeMain = v4;
    v3->regionSizeSub = v5;

    LoadImageVramTransfer(v3);
    ReserveTransferRangeByOffsetAndSize(v3->vramType, v0, v1, v4, v5);

    return &v3->imageProxy;
}

NNSG2dImageProxy *sub_0201EC84(const NNSG2dImageProxy *param0)
{
    CharTransferTask *v0;
    CharTransferTask *v1;
    u32 v2, v3;
    u32 v4, v5;
    u32 v6;

    v0 = FindTransferTaskByImageProxy(param0);
    GF_ASSERT(v0);

    v1 = FindNextFreeTask();
    GF_ASSERT(v1);

    if (v0->state != 3) {
        return NULL;
    }

    *v1 = *v0;
    v1->state = 4;

    if (v1->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v6 = v1->regionSizeMain;
    } else {
        v6 = v1->regionSizeSub;
    }

    TryGetFreeTransferSpace(v1->vramType, &v2, &v3, v6, &v4, &v5);
    UpdateBaseAddresses(v1, v2, v3);

    v1->haveRange = 1;
    v1->regionSizeMain = v4;
    v1->regionSizeSub = v5;

    LoadImageVramTransfer((void *)v1);
    ReserveTransferRangeByOffsetAndSize(v1->vramType, v2, v3, v4, v5);

    return &v1->imageProxy;
}

void sub_0201ED1C(const NNSG2dImageProxy *param0)
{
    int v0;

    for (v0 = 0; v0 < sTaskManager->capacity; v0++) {
        if ((sTaskManager->tasks[v0].state == 3) || (sTaskManager->tasks[v0].state == 4)) {
            if (&sTaskManager->tasks[v0].imageProxy == param0) {
                break;
            }
        }
    }

    if (v0 >= sTaskManager->capacity) {
        return;
    }

    ClearTransferTaskRange(sTaskManager->tasks + v0);

    if (sTaskManager->tasks[v0].state == 3) {
        sTaskManager->tasks[v0].state = 2;
    } else {
        sTaskManager->tasks[v0].state = 0;
        InitTransferTask(&sTaskManager->tasks[v0]);
    }
}

BOOL sub_0201ED94(int param0, int param1, int param2, CharTransferAllocation *param3)
{
    u32 v0, v1;
    u32 v2, v3;
    BOOL v4;

    if (param1 == 0) {
        v4 = TryGetDestOffsets(param0, param2, &v0, &v1);

        if (v4) {
            ReserveVramSpace(param0, param2);

            param3->vramType = param2;
            param3->size = param0;

            if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
                param3->offset = v0;
            } else {
                param3->offset = v1;
            }

            param3->atEnd = 0;
        }
    } else {
        v4 = TryGetFreeTransferSpace(param2, &v0, &v1, param0, &v2, &v3);

        if (v4) {
            ReserveTransferRangeByOffsetAndSize(param2, v0, v1, v2, v3);

            param3->vramType = param2;

            if (param2 == NNS_G2D_VRAM_TYPE_2DMAIN) {
                param3->size = v2;
                param3->offset = v0 + sTaskManager->freeSizeMain;
            } else {
                param3->size = v3;
                param3->offset = v1 + sTaskManager->freeSizeSub;
            }

            param3->atEnd = 1;
        }
    }

    return v4;
}

void sub_0201EE28(CharTransferAllocation *param0)
{
    int v0;
    int v1;

    if (param0->atEnd == 0) {
        return;
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = CalcBlockMaximum(param0->size, sTaskManager->blockSizeMain);
        v1 = CalcBlockMaximum(param0->offset - sTaskManager->freeSizeMain, sTaskManager->blockSizeMain);

        ClearTransferRange(v1, v0, sTaskManager->bufMain);
    }

    if (param0->vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        v0 = CalcBlockMaximum(param0->size, sTaskManager->blockSizeSub);
        v1 = CalcBlockMaximum(param0->offset - sTaskManager->freeSizeSub, sTaskManager->blockSizeSub);

        ClearTransferRange(v1, v0, sTaskManager->bufSub);
    }
}

void *sub_0201EE9C(void)
{
    void *v0;

    GF_ASSERT(sTaskManager);

    v0 = sTaskManager;
    sTaskManager = NULL;

    return v0;
}

void sub_0201EEB8(void *param0)
{
    GF_ASSERT(sTaskManager == NULL);
    sTaskManager = param0;
}

static void InitTransferTask(CharTransferTask *task)
{
    task->data = NULL;
    task->vramType = 0;
    task->done = FALSE;
    task->resourceID = CHAR_RESOURCE_ID_NONE;
    task->baseAddrMain = 0;
    task->baseAddrSub = 0;
    task->state = 0;
    task->useHardwareMappingType = 0;

    NNS_G2dInitImageProxy(&task->imageProxy);
}

static BOOL InitTransferTaskFromTemplate(const CharTransferTaskTemplate *template, CharTransferTask *task)
{
    task->data = template->data;
    task->resourceID = template->resourceID;
    task->vramType = template->vramType;
    task->done = task->data->characterFmt >> CHAR_TRANSFER_SHIFT;
    task->atEnd = template->atEnd;
    task->haveRange = FALSE;
    task->regionSizeMain = 0;
    task->regionSizeSub = 0;

    return TRUE;
}

static CharTransferTask *FindTransferTaskByImageProxy(const NNSG2dImageProxy *search)
{
    int i;
    for (i = 0; i < sTaskManager->capacity; i++) {
        if (sTaskManager->tasks[i].state != 0
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
        task->state = 2;
    } else {
        task->state = 1;
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
    task->haveRange = TRUE;
    task->regionSizeMain = sizeMain;
    task->regionSizeSub = sizeSub;

    LoadImageMapping(task);
    ReserveTransferRangeByOffsetAndSize(task->vramType, offsetMain, offsetSub, sizeMain, sizeSub);

    return TRUE;
}

static void ResetTransferTask(CharTransferTask *task)
{
    if (task->haveRange) {
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
        task->data->mapingType = GX_GetOBJVRamModeChar();
    } else {
        task->data->mapingType = GXS_GetOBJVRamModeChar();
    }

    return task->data->mapingType;
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
        *outSizeMain = AlignToBlockSize(size, sTaskManager->blockSizeMain, 1);
        u32 blockMax = CalcBlockMaximum(*outSizeMain, sTaskManager->blockSizeMain);
        *outOffsetMain = FindAvailableTransferRange(blockMax, sTaskManager->bufMain);

        if (*outOffsetMain == -1) {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        *outOffsetMain = CalcBlockOffset(*outOffsetMain, sTaskManager->blockSizeMain);
    }

    if (vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        *outSizeSub = AlignToBlockSize(size, sTaskManager->blockSizeSub, 1);
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

    if (task->vramType != NNS_G2D_VRAM_TYPE_MAX) {
        LoadImageMappingForScreen(task, task->vramType);
    } else {
        LoadImageMappingForScreen(task, NNS_G2D_VRAM_TYPE_2DMAIN);
        LoadImageMappingForScreen(task, NNS_G2D_VRAM_TYPE_2DSUB);
    }
}

static void LoadImageMappingForScreen(CharTransferTask *task, NNS_G2D_VRAM_TYPE vramType)
{
    int mappingType = task->useHardwareMappingType
        ? UpdateMappingTypeFromHardware(task, vramType)
        : vramType;

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

    if (task->vramType != NNS_G2D_VRAM_TYPE_MAX) {
        LoadImageVramTransferForScreen(task, task->vramType);
    } else {
        LoadImageVramTransferForScreen(task, NNS_G2D_VRAM_TYPE_2DMAIN);
        LoadImageVramTransferForScreen(task, NNS_G2D_VRAM_TYPE_2DSUB);
    }
}

static void LoadImageVramTransferForScreen(CharTransferTask *task, int vramType)
{
    int mappingType = task->useHardwareMappingType
        ? UpdateMappingTypeFromHardware(task, vramType)
        : vramType;

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
        if (sTaskManager->tasks[i].state == 0) {
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

static void InitTransferBuffers(u32 numBlocksMain, u32 numBlocksSub, enum HeapId heapID)
{
    sTaskManager->numBlocksMain = numBlocksMain;
    sTaskManager->numBlocksSub = numBlocksSub;

    if (sTaskManager->bufMain != NULL) {
        Heap_FreeToHeap(sTaskManager->bufMain);
    }

    if (sTaskManager->bufSub != NULL) {
        Heap_FreeToHeap(sTaskManager->bufSub);
    }

    if (sTaskManager->numBlocksMain != 0) {
        sTaskManager->bufMain = Heap_AllocFromHeap(heapID, numBlocksMain / 8);
    }

    if (sTaskManager->numBlocksSub != 0) {
        sTaskManager->bufSub = Heap_AllocFromHeap(heapID, numBlocksSub / 8);
    }

    ClearBothTransferBuffers();
}

static void FreeBlockTransferBuffer(u8 *buf)
{
    if (buf != NULL) {
        if (buf == sTaskManager->bufMain) {
            sTaskManager->numBlocksMain = 0;
            Heap_FreeToHeap(buf);
        } else {
            sTaskManager->numBlocksSub = 0;
            Heap_FreeToHeap(buf);
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

    task->haveRange = FALSE;
}

int sub_0201F6F4(int param0)
{
    int v0;

    switch (param0) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        v0 = 1;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_64K:
        v0 = 2;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        v0 = 4;
        break;
    case GX_OBJVRAMMODE_CHAR_1D_256K:
        v0 = 8;
        break;
    default:
        v0 = 1;
        break;
    }

    return v0;
}

static int AlignToBlockSize(int size, int blockSize, int rightAlign)
{
    blockSize *= 32;

    if (size % blockSize) {
        size -= (size % blockSize);
        if (rightAlign == 1) {
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
        sTaskManager->offsetMain = AlignToBlockSize(sTaskManager->offsetMain, sTaskManager->blockSizeMain, 1);
    }

    if (vramType & NNS_G2D_VRAM_TYPE_2DSUB) {
        sTaskManager->offsetSub += size;
        sTaskManager->offsetSub = AlignToBlockSize(sTaskManager->offsetSub, sTaskManager->blockSizeSub, 1);
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
