#include "overlay005/bdhc.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/bdhc.h"
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
    int pointsCount;
    int normalsCount;
    int constantsCount;
    int platesCount;
    int stripsCount;
    int accessListCount;
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

static BOOL BDHC_FindStripIndexByScanline(const BDHCStrip *strips, const u16 stripsCount, const fx32 scanline, u16 *stripIndex);

static void BDHC_PrepareBuffers(const BDHCHeader *bdhcHeader, BDHC *bdhc, void **buffer);
static void BDHC_LoadPoints(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHC_LoadNormals(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
static void BDHC_LoadConstants(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader);
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

    if (boundingBoxFirstPoint->z <= boundingBoxSecondPoint->z) {
        boundingBoxUp = &boundingBoxFirstPoint->z;
        boundingBoxDown = &boundingBoxSecondPoint->z;
    } else {
        boundingBoxUp = &boundingBoxSecondPoint->z;
        boundingBoxDown = &boundingBoxFirstPoint->z;
    }

    if (((*boundingBoxLeft <= point->x) && (point->x <= *boundingBoxRight)) && ((*boundingBoxUp <= point->z) && (point->z <= *boundingBoxDown))) {
        return TRUE;
    }

    return FALSE;
}

static void BDHC_GetPointsFromPlate(const BDHC *bdhc, u16 plateIndex, BDHCPoint *platePoints)
{
    platePoints[0] = bdhc->points[bdhc->plates[plateIndex].firstPointIndex];
    platePoints[1] = bdhc->points[bdhc->plates[plateIndex].secondPointIndex];
}

static void BDHC_GetNormalFromPlate(const BDHC *bdhc, u16 plateIndex, VecFx32 *normal)
{
    *normal = bdhc->normals[bdhc->plates[plateIndex].normalIndex];
}

static void BDHC_GetConstantFromPlate(const BDHC *bdhc, u16 plateIndex, fx32 *constant)
{
    *constant = bdhc->constants[bdhc->plates[plateIndex].constantIndex];
}

static void BDHC_InitCandidateObjectHeightsArray(BDHCCandidateObjectHeight *candidateObjectHeights)
{
    for (int i = 0; i < BDHC_NEW_OBJECT_HEIGHT_CANDIDATES_ARRAY_SIZE; i++) {
        candidateObjectHeights[i].val = 0;
        candidateObjectHeights[i].dummy04 = -1;
        candidateObjectHeights[i].dummy08 = -1;
    }
}

static BOOL BDHC_FindStripIndexByScanline(const BDHCStrip *strips, const u16 stripsCount, const fx32 scanline, u16 *stripIndex)
{
    if (stripsCount == 0) {
        return FALSE;
    } else if (stripsCount == 1) {
        *stripIndex = 0;
        return TRUE;
    }

    // Simple binary search.
    int low = 0;
    int high = stripsCount - 1;
    u32 mid = high / 2;

    do {
        if (strips[mid].scanline > scanline) {
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
    u16 i, plateIndex;

    if (bdhc->loaded == FALSE) {
        return FALSE;
    }

    BOOL isPointInBoundingBox = FALSE;

    BDHCPoint objectPosition;
    objectPosition.x = objectX;
    objectPosition.z = objectZ;

    int newObjectHeightCandidateCount = 0;
    BDHCCandidateObjectHeight newObjectHeightCandidates[BDHC_NEW_OBJECT_HEIGHT_CANDIDATES_ARRAY_SIZE];
    BDHC_InitCandidateObjectHeightsArray(newObjectHeightCandidates);

    u32 stripsCount = bdhc->stripsCount;
    const BDHCStrip *strips = bdhc->strips;
    u16 stripIndex;

    if (BDHC_FindStripIndexByScanline(strips, stripsCount, objectPosition.z, &stripIndex) == FALSE) {
        return FALSE;
    }

    u16 accessListElementCount = strips[stripIndex].accessListElementCount;
    u32 accessListStartIndex = strips[stripIndex].accessListStartIndex;

    for (i = 0; i < accessListElementCount; i++) {
        BDHCPoint platePoints[2];

        plateIndex = bdhc->accessList[accessListStartIndex + i];
        BDHC_GetPointsFromPlate(bdhc, plateIndex, &platePoints[0]);
        isPointInBoundingBox = BDHC_IsPointInBoundingBox(&platePoints[0], &platePoints[1], &objectPosition);

        if (isPointInBoundingBox == TRUE) {
            VecFx32 normal;
            fx32 constant;

            BDHC_GetNormalFromPlate(bdhc, plateIndex, &normal);
            BDHC_GetConstantFromPlate(bdhc, plateIndex, &constant);

            // This is an equation of a plane: Ax + By + Cz + D = 0
            // We know (A, B, C), the normal vector of the plane, and D, the constant of the plane.
            // We know the (x, z) coordinates of the object, and we want solve the equation for y.
            fx32 calculatedObjectHeight = -(FX_Mul(normal.x, objectPosition.x) + FX_Mul(normal.z, objectPosition.z) + constant);
            calculatedObjectHeight = FX_Div(calculatedObjectHeight, normal.y);

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
        fx32 minObjectHeightDiff = FX_Max(objectHeight, newObjectHeightCandidates[0].val) - FX_Min(objectHeight, newObjectHeightCandidates[0].val);

        for (i = 1; i < newObjectHeightCandidateCount; i++) {
            fx32 objectHeightDiff = FX_Max(objectHeight, newObjectHeightCandidates[i].val) - FX_Min(objectHeight, newObjectHeightCandidates[i].val);

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
    NARC_ReadFile(narc, 2, &bdhcHeader->pointsCount);
    NARC_ReadFile(narc, 2, &bdhcHeader->normalsCount);
    NARC_ReadFile(narc, 2, &bdhcHeader->constantsCount);
    NARC_ReadFile(narc, 2, &bdhcHeader->platesCount);
    NARC_ReadFile(narc, 2, &bdhcHeader->stripsCount);
    NARC_ReadFile(narc, 2, &bdhcHeader->accessListCount);
}

static void BDHC_PrepareBuffers(const BDHCHeader *bdhcHeader, BDHC *bdhc, void **buffer)
{
    int offset = 0;

    void *ptr = (u8 *)*buffer;
    bdhc->points = ptr;
    offset += (sizeof(BDHCPoint) * bdhcHeader->pointsCount);

    ptr = (u8 *)*buffer + offset;
    bdhc->normals = ptr;
    offset += (sizeof(VecFx32) * bdhcHeader->normalsCount);

    ptr = (u8 *)*buffer + offset;
    bdhc->constants = ptr;
    offset += (sizeof(fx32) * bdhcHeader->constantsCount);

    ptr = (u8 *)*buffer + offset;
    bdhc->plates = ptr;
    offset += (sizeof(BDHCPlate) * bdhcHeader->platesCount);

    ptr = (u8 *)*buffer + offset;
    bdhc->strips = ptr;
    offset += sizeof(BDHCStrip) * bdhcHeader->stripsCount;

    ptr = (u8 *)*buffer + offset;
    bdhc->accessList = ptr;
    offset += sizeof(u16) * bdhcHeader->accessListCount;

    GF_ASSERT(offset <= BDHC_BUFFER_SIZE);
}

static void BDHC_LoadPoints(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCPoint) * bdhcHeader->pointsCount, bdhc->points);
}

static void BDHC_LoadNormals(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(VecFx32) * bdhcHeader->normalsCount, bdhc->normals);
}

static void BDHC_LoadConstants(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(fx32) * bdhcHeader->constantsCount, bdhc->constants);
}

static void BDHC_LoadPlates(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCPlate) * bdhcHeader->platesCount, bdhc->plates);
}

static void BDHC_LoadStrips(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(BDHCStrip) * bdhcHeader->stripsCount, bdhc->strips);
}

static void BDHC_LoadAccessList(NARC *narc, BDHC *bdhc, const BDHCHeader *bdhcHeader)
{
    NARC_ReadFile(narc, sizeof(u16) * bdhcHeader->accessListCount, bdhc->accessList);
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
        ctx->bdhc->stripsCount = ctx->bdhcHeader.stripsCount;
        BDHC_PrepareBuffers(&ctx->bdhcHeader, ctx->bdhc, (void **)&ctx->buffer);

        subTaskCompleted = TRUE;
        break;

    case BDHC_LOADER_SUBTASK_LOAD_FILE:
        BDHC_LoadPoints(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHC_LoadNormals(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
        BDHC_LoadConstants(ctx->landDataNARC, ctx->bdhc, &ctx->bdhcHeader);
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
    BDHC *bdhc = Heap_AllocFromHeap(HEAP_ID_FIELD1, sizeof(BDHC));

    bdhc->points = NULL;
    bdhc->normals = NULL;
    bdhc->plates = NULL;
    bdhc->strips = NULL;
    bdhc->accessList = NULL;
    bdhc->accessList = NULL;
    bdhc->loaded = FALSE;
    bdhc->stripsCount = 0;

    return bdhc;
}

void BDHC_Load(NARC *narc, const int bdhcSize, BDHC *bdhc, u8 *buffer)
{
    BDHCHeader *bdhcHeader = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD1, sizeof(BDHCHeader));

    BDHC_LoadHeader(narc, bdhcHeader);
    bdhc->stripsCount = bdhcHeader->stripsCount;
    BDHC_PrepareBuffers(bdhcHeader, bdhc, (void **)&buffer);

    BDHC_LoadPoints(narc, bdhc, bdhcHeader);
    BDHC_LoadNormals(narc, bdhc, bdhcHeader);
    BDHC_LoadConstants(narc, bdhc, bdhcHeader);
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
    bdhc->normals = NULL;
    bdhc->plates = NULL;
    bdhc->strips = NULL;
    bdhc->accessList = NULL;
}

SysTask *BDHC_LazyLoad(NARC *landDataNARC, const int unused1, BDHC *bdhc, BOOL *loadTaskRunning, u8 **buffer, BOOL *mapModelLoadTaskRunning)
{
    BDHCLoaderTaskContext *ctx = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD1, sizeof(BDHCLoaderTaskContext));

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
