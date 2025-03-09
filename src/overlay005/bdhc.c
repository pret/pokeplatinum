#include "overlay005/bdhc.h"

#include <nitro.h>
#include <string.h>

#include "constants/bdhc.h"
#include "constants/heap.h"

#include "fx_util.h"
#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define BDHC_NEW_OBJECT_HEIGHT_CANDIDATES_ARRAY_SIZE 10

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
    FSFile dummy00;
    int dummyAC;
    BDHCHeader bdhcHeader;
    BOOL dummyC8;
    u8 currentSubTask;
    u8 *buffer;
    BDHC *bdhc;
    BOOL killLoadTask;
    BOOL *loadTaskRunning;
    NARC *landDataNARC;
    int dummyE4;
    BOOL *mapModelLoadTaskRunning;
} BDHCLoaderTaskContext;

typedef struct {
    fx32 val;
    int dummy04;
    int dummy08;
} BDHCCandidateObjectHeight;

static BOOL BDHC_FindStripIndexByLowerBound(const BDHCStrip *strips, const u16 stripsSize, const fx32 targetLowerBound, u16 *stripIndex);

static void BDHC_PrepareBuffers(const BDHCHeader *bdhcHeader, BDHC *bdhc, void **buffer);
static void BDHC_LoadPoints(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHC_LoadSlopes(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHC_LoadHeights(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHC_LoadPlates(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHC_LoadStrips(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHC_LoadAccessList(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);

static BOOL BDHC_IsPointInBoundingBox(const BDHCPoint *boundingBoxFirstPoint, const BDHCPoint *boundingBoxSecondPoint, const BDHCPoint *point)
{
    const fx32 *boundingBoxLeft, *boundingBoxRight, *boundingBoxUp, *boundingBoxDown;

    if (boundingBoxFirstPoint->x <= boundingBoxSecondPoint->x) {
        boundingBoxLeft = &boundingBoxFirstPoint->x;
        boundingBoxRight = &boundingBoxSecondPoint->x;
    } else {
        boundingBoxLeft = &boundingBoxSecondPoint->x;
        boundingBoxRight = &boundingBoxFirstPoint->x;
    }

    if (boundingBoxFirstPoint->y <= boundingBoxSecondPoint->y) {
        boundingBoxUp = &boundingBoxFirstPoint->y;
        boundingBoxDown = &boundingBoxSecondPoint->y;
    } else {
        boundingBoxUp = &boundingBoxSecondPoint->y;
        boundingBoxDown = &boundingBoxFirstPoint->y;
    }

    if (((*boundingBoxLeft <= point->x) && (point->x <= *boundingBoxRight)) && ((*boundingBoxUp <= point->y) && (point->y <= *boundingBoxDown))) {
        return TRUE;
    }

    return FALSE;
}

static void BDHC_GetPointsFromPlate(const BDHC *bdhc, u16 plateIndex, BDHCPoint *platePoints)
{
    platePoints[0] = bdhc->points[bdhc->plates[plateIndex].firstPointIndex];
    platePoints[1] = bdhc->points[bdhc->plates[plateIndex].secondPointIndex];
}

static void BDHC_GetSlopeFromPlate(const BDHC *bdhc, u16 plateIndex, VecFx32 *slope)
{
    *slope = bdhc->slopes[bdhc->plates[plateIndex].slopeIndex];
}

static void BDHC_GetHeightFromPlate(const BDHC *bdhc, u16 plateIndex, fx32 *height)
{
    *height = bdhc->heights[bdhc->plates[plateIndex].heightIndex];
}

static void BDHC_InitCandidateObjectHeightsArray(BDHCCandidateObjectHeight *candidateObjectHeights)
{
    for (int i = 0; i < BDHC_NEW_OBJECT_HEIGHT_CANDIDATES_ARRAY_SIZE; i++) {
        candidateObjectHeights[i].val = 0;
        candidateObjectHeights[i].dummy04 = -1;
        candidateObjectHeights[i].dummy08 = -1;
    }
}

static BOOL BDHC_FindStripIndexByLowerBound(const BDHCStrip *strips, const u16 stripsSize, const fx32 targetLowerBound, u16 *stripIndex)
{
    int low, high;
    u32 mid;

    if (stripsSize == 0) {
        return FALSE;
    } else if (stripsSize == 1) {
        *stripIndex = 0;
        return TRUE;
    }

    // Simple binary search.
    low = 0;
    high = stripsSize - 1;
    mid = high / 2;

    do {
        if (strips[mid].lowerBound > targetLowerBound) {
            if (high - 1 > low) {
                high = mid;
                mid = (low + high) / 2;
            } else {
                *stripIndex = mid;
                return TRUE;
            }
        } else {
            if (low + 1 < high) {
                low = mid;
                mid = (low + high) / 2;
            } else {
                *stripIndex = mid + 1;
                return TRUE;
            }
        }
    } while (TRUE);

    return FALSE;
}

BOOL CalculateObjectHeight(const fx32 objectHeight, const fx32 objectX, const fx32 objectZ, const BDHC *bdhc, fx32 *newObjectHeight)
{
    BDHCPoint platePoints[2];
    BDHCPoint objectPosition;
    VecFx32 slope;
    fx32 minObjectHeightDiff, objectHeightDiff;
    BOOL isPointInBoundingBox;
    u16 i, plateIndex;
    fx32 height, calculatedObjectHeight;
    int newObjectHeightCandidateCount;
    u32 stripsSize;
    BDHCCandidateObjectHeight newObjectHeightCandidates[BDHC_NEW_OBJECT_HEIGHT_CANDIDATES_ARRAY_SIZE];
    u32 accessListStartIndex;
    u16 stripIndex;
    u16 accessListElementCount;
    const BDHCStrip *strips;

    if (bdhc->loaded == FALSE) {
        return FALSE;
    }

    isPointInBoundingBox = FALSE;

    objectPosition.x = objectX;
    objectPosition.y = objectZ;

    newObjectHeightCandidateCount = 0;
    BDHC_InitCandidateObjectHeightsArray(newObjectHeightCandidates);

    stripsSize = bdhc->stripsSize;
    strips = bdhc->strips;

    if (BDHC_FindStripIndexByLowerBound(strips, stripsSize, objectPosition.y, &stripIndex) == FALSE) {
        return FALSE;
    }

    accessListElementCount = strips[stripIndex].accessListElementCount;
    accessListStartIndex = strips[stripIndex].accessListStartIndex;

    for (i = 0; i < accessListElementCount; i++) {
        plateIndex = bdhc->accessList[accessListStartIndex + i];
        BDHC_GetPointsFromPlate(bdhc, plateIndex, platePoints);
        isPointInBoundingBox = BDHC_IsPointInBoundingBox(&platePoints[0], &platePoints[1], &objectPosition);

        if (isPointInBoundingBox == TRUE) {
            BDHC_GetSlopeFromPlate(bdhc, plateIndex, &slope);
            BDHC_GetHeightFromPlate(bdhc, plateIndex, &height);

            // On the next line, `slope.z` and `objectPosition.y` represent the same axis.
            // Remember that `objectPosition.y` is, in fact, `objectZ`.
            // Also, remember that `slope` is a normal vector, pointing upwards for a flat surface.
            calculatedObjectHeight = -(FX_Mul(slope.x, objectPosition.x) + FX_Mul(slope.z, objectPosition.y) + height);
            calculatedObjectHeight = FX_Div(calculatedObjectHeight, slope.y);

            newObjectHeightCandidates[newObjectHeightCandidateCount].val = calculatedObjectHeight;
            newObjectHeightCandidateCount++;

            if (newObjectHeightCandidateCount >= BDHC_NEW_OBJECT_HEIGHT_CANDIDATES_ARRAY_SIZE) {
                break;
            }
        }
    }

    if (newObjectHeightCandidateCount > 1) {
        // Find the candidate with the smallest difference between the object's current height and the calculated height.
        plateIndex = 0;
        minObjectHeightDiff = FX_Max(objectHeight, newObjectHeightCandidates[0].val) - FX_Min(objectHeight, newObjectHeightCandidates[0].val);

        for (i = 1; i < newObjectHeightCandidateCount; i++) {
            objectHeightDiff = FX_Max(objectHeight, newObjectHeightCandidates[i].val) - FX_Min(objectHeight, newObjectHeightCandidates[i].val);

            if (minObjectHeightDiff > objectHeightDiff) {
                minObjectHeightDiff = objectHeightDiff;
                plateIndex = i;
            }
        }

        *newObjectHeight = newObjectHeightCandidates[plateIndex].val;
        return TRUE;
    } else if (newObjectHeightCandidateCount == 1) {
        *newObjectHeight = newObjectHeightCandidates[0].val;
        return TRUE;
    }

    if (newObjectHeightCandidateCount != 0) {
        *newObjectHeight = newObjectHeightCandidates[0].val;
        return TRUE;
    }

    return FALSE;
}

static void BDHC_LoadHeader(NARC *narc, BDHCHeader *bdhcHeader)
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

static void BDHC_PrepareBuffers(const BDHCHeader *bdhcHeader, BDHC *bdhc, void **buffer)
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

static void BDHC_LoadPoints(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCPoint) * bdhcHeader->pointsSize, bdhc->points);
}

static void BDHC_LoadSlopes(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(VecFx32) * bdhcHeader->slopesSize, bdhc->slopes);
}

static void BDHC_LoadHeights(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(fx32) * bdhcHeader->heightsSize, bdhc->heights);
}

static void BDHC_LoadPlates(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCPlate) * bdhcHeader->platesSize, bdhc->plates);
}

static void BDHC_LoadStrips(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCStrip) * bdhcHeader->stripsSize, bdhc->strips);
}

static void BDHC_LoadAccessList(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(u16) * bdhcHeader->accessListSize, bdhc->accessList);
}

static void BDHC_LazyLoadTask(SysTask *sysTask, void *sysTaskParam)
{
    BOOL subTaskCompleted;
    BDHCLoaderTaskContext *ctx = (BDHCLoaderTaskContext *)sysTaskParam;

    if (ctx->killLoadTask == TRUE) {
        ctx->currentSubTask = BDHC_LOADER_SUBTASK_END_TASK;
    }

    switch (ctx->currentSubTask) {
    case BDHC_LOADER_SUBTASK_PREPARE_FILE_LOAD:
        if (*ctx->mapModelLoadTaskRunning) {
            subTaskCompleted = FALSE;
            break;
        }

        BDHC_LoadHeader(ctx->landDataNARC, &ctx->bdhcHeader);
        ctx->bdhc->stripsSize = ctx->bdhcHeader.stripsSize;
        BDHC_PrepareBuffers(&ctx->bdhcHeader, ctx->bdhc, (void **)&ctx->buffer);

        subTaskCompleted = TRUE;
        break;

    case BDHC_LOADER_SUBTASK_LOAD_FILE:
        BDHC_LoadPoints(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHC_LoadSlopes(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHC_LoadHeights(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHC_LoadPlates(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHC_LoadStrips(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHC_LoadAccessList(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);

        subTaskCompleted = TRUE;
        break;

    case BDHC_LOADER_SUBTASK_END_TASK:
        *ctx->loadTaskRunning = FALSE;

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

void BDHC_Load(NARC *narc, const int bdhcSize, BDHC *bdhc, u8 *buffer)
{
    BDHCHeader *bdhcHeader = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(BDHCHeader));

    BDHC_LoadHeader(narc, bdhcHeader);
    bdhc->stripsSize = bdhcHeader->stripsSize;
    BDHC_PrepareBuffers(bdhcHeader, bdhc, (void **)&buffer);

    BDHC_LoadPoints(narc, bdhc, bdhcHeader);
    BDHC_LoadSlopes(narc, bdhc, bdhcHeader);
    BDHC_LoadHeights(narc, bdhc, bdhcHeader);
    BDHC_LoadPlates(narc, bdhc, bdhcHeader);
    BDHC_LoadStrips(narc, bdhc, bdhcHeader);
    BDHC_LoadAccessList(narc, bdhc, bdhcHeader);

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

SysTask *BDHC_LazyLoad(NARC *landDataNARC, const int unused1, BDHC *bdhc, BOOL *loadTaskRunning, u8 **buffer, BOOL *mapModelLoadTaskRunning)
{
    BDHCLoaderTaskContext *ctx = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(BDHCLoaderTaskContext));

    ctx->currentSubTask = BDHC_LOADER_SUBTASK_PREPARE_FILE_LOAD;
    ctx->landDataNARC = landDataNARC;
    ctx->dummyE4 = unused1;
    ctx->bdhc = bdhc;
    ctx->loadTaskRunning = loadTaskRunning;
    ctx->killLoadTask = FALSE;
    ctx->dummyC8 = FALSE;
    ctx->dummyAC = 0;
    ctx->buffer = *buffer;
    ctx->mapModelLoadTaskRunning = mapModelLoadTaskRunning;

    return SysTask_Start(BDHC_LazyLoadTask, ctx, 1);
}

void BDHC_KillLoad(SysTask *sysTask)
{
    BDHCLoaderTaskContext *ctx = SysTask_GetParam(sysTask);
    ctx->killLoadTask = TRUE;
}

void BDHC_MarkNotLoaded(BDHC *bdhc)
{
    bdhc->loaded = FALSE;
}
