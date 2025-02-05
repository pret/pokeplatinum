#include "overlay005/bdhc_util.h"

#include <nitro.h>
#include <string.h>

#include "overlay005/bdhc.h"

#include "fx_util.h"

#define BDHC_NEW_OBJECT_Y_CANDIDATES_ARRAY_SIZE 10

typedef struct {
    fx32 y;
    int unk_04;
    int unk_08;
} BDHCCandidateObjectY;

static BOOL BDHCUtil_FindStripIndexByLowerBound(const BDHCStrip *strips, const u16 stripsSize, const fx32 targetLowerBound, u16 *stripIndex);

static BOOL BDHCUtil_IsPointInBoundingBox(const BDHCPoint *boundingBoxFirstPoint, const BDHCPoint *boundingBoxSecondPoint, const BDHCPoint *point)
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

static void BDHCUtil_GetPointsFromPlate(const BDHC *bdhc, u16 plateIndex, BDHCPoint *platePoints)
{
    platePoints[0] = bdhc->points[bdhc->plates[plateIndex].firstPointIndex];
    platePoints[1] = bdhc->points[bdhc->plates[plateIndex].secondPointIndex];
}

static void BDHCUtil_GetSlopeFromPlate(const BDHC *bdhc, u16 plateIndex, VecFx32 *slope)
{
    *slope = bdhc->slopes[bdhc->plates[plateIndex].slopeIndex];
}

static void BDHCUtil_GetHeightFromPlate(const BDHC *bdhc, u16 plateIndex, fx32 *height)
{
    *height = bdhc->heights[bdhc->plates[plateIndex].heightIndex];
}

static void BDHCCandidateObjectY_Init(BDHCCandidateObjectY *BDHCCandidateObjectY)
{
    for (int i = 0; i < BDHC_NEW_OBJECT_Y_CANDIDATES_ARRAY_SIZE; i++) {
        BDHCCandidateObjectY[i].y = 0;
        BDHCCandidateObjectY[i].unk_04 = -1;
        BDHCCandidateObjectY[i].unk_08 = -1;
    }
}

static BOOL BDHCUtil_FindStripIndexByLowerBound(const BDHCStrip *strips, const u16 stripsSize, const fx32 targetLowerBound, u16 *stripIndex)
{
    int low, high;
    u32 mid;
    fx32 stripLowerBound;

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
        stripLowerBound = strips[mid].lowerBound;

        if (stripLowerBound > targetLowerBound) {
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

BOOL BDHCUtil_CalculateObjectHeight(const fx32 objectY, const fx32 objectX, const fx32 objectZ, const BDHC *bdhc, fx32 *newObjectY)
{
    BDHCPoint platePoints[2];
    BDHCPoint objectPosition;
    VecFx32 slope;
    fx32 minObjectYDiff, objectYDiff;
    BOOL isPointInBoundingBox;
    u16 i, plateIndex;
    fx32 height, calculatedObjectY;
    int newObjectYCandidateCount;
    u32 stripsSize;
    BDHCCandidateObjectY newObjectYCandidates[BDHC_NEW_OBJECT_Y_CANDIDATES_ARRAY_SIZE];
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

    newObjectYCandidateCount = 0;
    BDHCCandidateObjectY_Init(newObjectYCandidates);

    stripsSize = bdhc->stripsSize;
    strips = bdhc->strips;

    if (BDHCUtil_FindStripIndexByLowerBound(strips, stripsSize, objectPosition.y, &stripIndex) == FALSE) {
        return FALSE;
    }

    accessListElementCount = strips[stripIndex].accessListElementCount;
    accessListStartIndex = strips[stripIndex].accessListStartIndex;

    for (i = 0; i < accessListElementCount; i++) {
        plateIndex = bdhc->accessList[accessListStartIndex + i];
        BDHCUtil_GetPointsFromPlate(bdhc, plateIndex, platePoints);
        isPointInBoundingBox = BDHCUtil_IsPointInBoundingBox(&platePoints[0], &platePoints[1], &objectPosition);

        if (isPointInBoundingBox == TRUE) {
            BDHCUtil_GetSlopeFromPlate(bdhc, plateIndex, &slope);
            BDHCUtil_GetHeightFromPlate(bdhc, plateIndex, &height);

            // On the next line, `slope.z` and `objectPosition.y` represent the same axis.
            // Remember that `objectPosition.y` is, in fact, `objectZ`.
            // Also, remember that `slope` is a normal vector, pointing upwards for a flat surface.
            calculatedObjectY = -(FX_Mul(slope.x, objectPosition.x) + FX_Mul(slope.z, objectPosition.y) + height);
            calculatedObjectY = FX_Div(calculatedObjectY, slope.y);

            newObjectYCandidates[newObjectYCandidateCount].y = calculatedObjectY;
            newObjectYCandidateCount++;

            if (newObjectYCandidateCount >= BDHC_NEW_OBJECT_Y_CANDIDATES_ARRAY_SIZE) {
                break;
            }
        }
    }

    if (newObjectYCandidateCount > 1) {
        // Find the candidate with the smallest difference between the object's current Y and the calculated Y.
        plateIndex = 0;
        minObjectYDiff = FX_Max(objectY, newObjectYCandidates[0].y) - FX_Min(objectY, newObjectYCandidates[0].y);

        for (i = 1; i < newObjectYCandidateCount; i++) {
            objectYDiff = FX_Max(objectY, newObjectYCandidates[i].y) - FX_Min(objectY, newObjectYCandidates[i].y);

            if (minObjectYDiff > objectYDiff) {
                minObjectYDiff = objectYDiff;
                plateIndex = i;
            }
        }

        *newObjectY = newObjectYCandidates[plateIndex].y;
        return TRUE;
    } else if (newObjectYCandidateCount == 1) {
        *newObjectY = newObjectYCandidates[0].y;
        return TRUE;
    }

    if (newObjectYCandidateCount != 0) {
        *newObjectY = newObjectYCandidates[0].y;
        return TRUE;
    }

    return FALSE;
}
