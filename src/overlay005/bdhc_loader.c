#include "overlay005/bdhc_loader.h"

#include <nitro.h>
#include <string.h>

#include "constants/bdhc.h"
#include "constants/heap.h"

#include "overlay005/bdhc.h"

#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"

enum BDHCSubTask {
    BDHC_LOADER_SUBTASK_PREPARE_FILE_LOAD = 0,
    BDHC_LOADER_SUBTASK_LOAD_FILE,
    BDHC_LOADER_SUBTASK_END_TASK,
};

typedef struct {
    int pointsSize;
    int slopesSize;
    int heightsSize;
    int platesSize;
    int stripsSize;
    int accessListSize;
} BDHCHeader;

typedef struct {
    FSFile unk_00;
    int unk_AC;
    BDHCHeader bdhcHeader;
    BOOL unk_C8;
    u8 currentSubTask;
    u8 *buffer;
    BDHC *bdhc;
    BOOL forceExit;
    int *unk_DC;
    NARC *landDataNARC;
    int unk_E4;
    int *unk_E8;
} BDHCLoaderTaskContext;

static void BDHCLoader_PrepareBuffers(const BDHCHeader *bdhcHeader, BDHC *bdhc, void **buffer);
static void BDHCLoader_LoadPoints(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHCLoader_LoadSlopes(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHCLoader_LoadHeights(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHCLoader_LoadPlates(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHCLoader_LoadStrips(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHCLoader_LoadAccessList(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);

static void BDHCLoader_LoadHeader(NARC *narc, BDHCHeader *bdhcHeader)
{
    u16 magic[BDHC_MAGIC_LENGTH];

    MI_CpuClear32(bdhcHeader, sizeof(BDHCHeader));

    NARC_ReadFile(narc, BDHC_MAGIC_LENGTH, magic);
    NARC_ReadFile(narc, 2, &bdhcHeader->pointsSize);
    NARC_ReadFile(narc, 2, &bdhcHeader->slopesSize);
    NARC_ReadFile(narc, 2, &bdhcHeader->heightsSize);
    NARC_ReadFile(narc, 2, &bdhcHeader->platesSize);
    NARC_ReadFile(narc, 2, &bdhcHeader->stripsSize);
    NARC_ReadFile(narc, 2, &bdhcHeader->accessListSize);
}

static void BDHCLoader_PrepareBuffers(const BDHCHeader *bdhcHeader, BDHC *bdhc, void **buffer)
{
    void *ptr;
    int offset = 0;

    ptr = (u8 *)*buffer;
    bdhc->points = ptr;
    offset += (sizeof(BDHCPoint) * bdhcHeader->pointsSize);

    ptr = (u8 *)*buffer + offset;
    bdhc->slopes = ptr;
    offset += (sizeof(VecFx32) * bdhcHeader->slopesSize);

    ptr = (u8 *)*buffer + offset;
    bdhc->heights = ptr;
    offset += (sizeof(fx32) * bdhcHeader->heightsSize);

    ptr = (u8 *)*buffer + offset;
    bdhc->plates = ptr;
    offset += (sizeof(BDHCPlate) * bdhcHeader->platesSize);

    ptr = (u8 *)*buffer + offset;
    bdhc->strips = ptr;
    offset += sizeof(BDHCStrip) * bdhcHeader->stripsSize;

    ptr = (u8 *)*buffer + offset;
    bdhc->accessList = ptr;
    offset += sizeof(u16) * bdhcHeader->accessListSize;

    GF_ASSERT(offset <= BDHC_BUFFER_SIZE);
}

static void BDHCLoader_LoadPoints(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCPoint) * bdhcHeader->pointsSize, bdhc->points);
}

static void BDHCLoader_LoadSlopes(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(VecFx32) * bdhcHeader->slopesSize, bdhc->slopes);
}

static void BDHCLoader_LoadHeights(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(fx32) * bdhcHeader->heightsSize, bdhc->heights);
}

static void BDHCLoader_LoadPlates(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCPlate) * bdhcHeader->platesSize, bdhc->plates);
}

static void BDHCLoader_LoadStrips(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCStrip) * bdhcHeader->stripsSize, bdhc->strips);
}

static void BDHCLoader_LoadAccessList(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(u16) * bdhcHeader->accessListSize, bdhc->accessList);
}

static void BDHCLoader_RunTask(SysTask *sysTask, void *sysTaskParam)
{
    BOOL subTaskCompleted;
    BDHCLoaderTaskContext *ctx = (BDHCLoaderTaskContext *)sysTaskParam;

    if (ctx->forceExit == TRUE) {
        ctx->currentSubTask = BDHC_LOADER_SUBTASK_END_TASK;
    }

    switch (ctx->currentSubTask) {
    case BDHC_LOADER_SUBTASK_PREPARE_FILE_LOAD:
        if (*ctx->unk_E8) {
            subTaskCompleted = FALSE;
            break;
        }

        BDHCLoader_LoadHeader(ctx->landDataNARC, &ctx->bdhcHeader);
        ctx->bdhc->stripsSize = ctx->bdhcHeader.stripsSize;
        BDHCLoader_PrepareBuffers(&ctx->bdhcHeader, ctx->bdhc, (void **)&ctx->buffer);

        subTaskCompleted = TRUE;
        break;

    case BDHC_LOADER_SUBTASK_LOAD_FILE:
        BDHCLoader_LoadPoints(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHCLoader_LoadSlopes(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHCLoader_LoadHeights(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHCLoader_LoadPlates(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHCLoader_LoadStrips(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHCLoader_LoadAccessList(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);

        subTaskCompleted = TRUE;
        break;

    case BDHC_LOADER_SUBTASK_END_TASK:
        *ctx->unk_DC = 0;

        Heap_FreeToHeap((void *)sysTaskParam);
        SysTask_Done(sysTask);

        return;
    }

    if (subTaskCompleted == TRUE) {
        ctx->currentSubTask++;

        if (ctx->currentSubTask == BDHC_LOADER_SUBTASK_END_TASK) {
            ctx->bdhc->loaded = TRUE;
        }
    }
}

BDHC *BDHC_New(void)
{
    BDHC *bdhc = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(BDHC));

    bdhc->points = NULL;
    bdhc->slopes = NULL;
    bdhc->plates = NULL;
    bdhc->strips = NULL;
    bdhc->accessList = NULL;
    bdhc->accessList = NULL;
    bdhc->loaded = FALSE;
    bdhc->stripsSize = 0;

    return bdhc;
}

void BDHCLoader_Load(NARC *narc, const int bdhcSize, BDHC *bdhc, u8 *buffer)
{
    BDHCHeader *bdhcHeader = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(BDHCHeader));

    BDHCLoader_LoadHeader(narc, bdhcHeader);
    bdhc->stripsSize = bdhcHeader->stripsSize;
    BDHCLoader_PrepareBuffers(bdhcHeader, bdhc, (void **)&buffer);

    BDHCLoader_LoadPoints(narc, bdhc, bdhcHeader);
    BDHCLoader_LoadSlopes(narc, bdhc, bdhcHeader);
    BDHCLoader_LoadHeights(narc, bdhc, bdhcHeader);
    BDHCLoader_LoadPlates(narc, bdhc, bdhcHeader);
    BDHCLoader_LoadStrips(narc, bdhc, bdhcHeader);
    BDHCLoader_LoadAccessList(narc, bdhc, bdhcHeader);

    Heap_FreeToHeap(bdhcHeader);
    bdhc->loaded = TRUE;
}

void BDHC_Free(BDHC *bdhc)
{
    if (bdhc == NULL) {
        return;
    }

    Heap_FreeToHeap(bdhc);
    bdhc = NULL;
}

void BDHC_Reset(BDHC *bdhc)
{
    if (bdhc == NULL) {
        return;
    }

    bdhc->loaded = FALSE;
    bdhc->points = NULL;
    bdhc->slopes = NULL;
    bdhc->plates = NULL;
    bdhc->strips = NULL;
    bdhc->accessList = NULL;
}

SysTask *BDHCLoader_StartTask(NARC *landDataNARC, const int param1, BDHC *bdhc, int *param3, u8 **buffer, int *param5)
{
    BDHCLoaderTaskContext *ctx = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(BDHCLoaderTaskContext));

    ctx->currentSubTask = BDHC_LOADER_SUBTASK_PREPARE_FILE_LOAD;
    ctx->landDataNARC = landDataNARC;
    ctx->unk_E4 = param1;
    ctx->bdhc = bdhc;
    ctx->unk_DC = param3;
    ctx->forceExit = FALSE;
    ctx->unk_C8 = FALSE;
    ctx->unk_AC = 0;
    ctx->buffer = *buffer;
    ctx->unk_E8 = param5;

    return SysTask_Start(BDHCLoader_RunTask, (void *)ctx, 1);
}

void BDHCLoader_ForceExitTask(SysTask *sysTask)
{
    BDHCLoaderTaskContext *ctx = SysTask_GetParam(sysTask);
    ctx->forceExit = TRUE;
}

void BDHCLoader_MarkBDHCNotLoaded(BDHC *bdhc)
{
    bdhc->loaded = FALSE;
}
