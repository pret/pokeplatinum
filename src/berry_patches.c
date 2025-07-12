#include "berry_patches.h"

#include "constants/heap.h"
#include "constants/items.h"

#include "berry_data.h"
#include "heap.h"
#include "narc.h"

#define BASE_HARVEST_STAGES    4
#define BASE_MAX_REPLANT_COUNT 10
#define MAX_MOISTURE_RATING    100
#define MAX_YIELD_RATING       5

static void ZeroBerryPatch(BerryPatch *berryPatch);
static int CalcBerryYield(BerryPatch *berryPatch, const BerryGrowthData *growthData);
static int CalcMinutesRemainingInStage(const BerryGrowthData *growthData, int berryID, enum MulchType mulchType);
static int CalcMoistureDrainRate(const BerryGrowthData *growthData, int berryID, enum MulchType mulchType);
static int GetHarvestTimeWithMulch(const BerryPatch *berryPatch);
static int GetTotalReplantCountWithMulch(const BerryPatch *berryPatch);
static int CalcTotalStageCount(BerryPatch *berryPatch);
static void AdvancePatchGrowth(BerryPatch *berryPatch, const BerryGrowthData *growthData);
static void DrainPatchMoisture(BerryPatch *berryPatch, const BerryGrowthData *growthData, int minutesPassed);

void BerryPatches_Clear(BerryPatch *patches)
{
    MI_CpuClear8(patches, sizeof(BerryPatch) * MAX_BERRY_PATCHES);
    for (int i = 0; i < MAX_BERRY_PATCHES; i++) {
        patches[i].growthStage = BERRY_GROWTH_STAGE_NONE;
        patches[i].berryID = 0;
    }
}

void BerryPatches_Init(BerryPatch *patches, enum HeapId heapID, const u16 *initPatches, int initSize)
{
    BerryGrowthData *growthData = BerryGrowthData_Init(heapID);

    for (int i = 0; i < MAX_BERRY_PATCHES || i < initSize; i++) {
        ZeroBerryPatch(&patches[i]);

        patches[i].berryID = initPatches[i * 2] - FIRST_BERRY_IDX + 1;
        patches[i].growthStage = BERRY_GROWTH_STAGE_FRUIT;
        patches[i].stageMinutesRemaining = CalcMinutesRemainingInStage(growthData, patches[i].berryID, patches[i].mulchType) * 4;
        patches[i].yield = initPatches[i * 2 + 1];
        patches[i].moistureRating = MAX_MOISTURE_RATING;
        patches[i].yieldRating = 3;
    }

    Heap_Free(growthData);
}

BerryGrowthData *BerryGrowthData_Init(enum HeapId heapID)
{
    BerryGrowthData *growthData;
    BerryData *berryData;
    NARC *narc = BerryData_NARC_ctor(heapID);
    growthData = Heap_Alloc(heapID, sizeof(BerryGrowthData) * NUM_BERRIES);

    for (int i = 0; i < NUM_BERRIES; i++) {
        berryData = BerryData_LoadFromOpenNARC(narc, i, heapID);

        growthData[i].stageDuration = BerryData_GetAttribute(berryData, BERRYATTR_STAGE_DURATION);
        growthData[i].moistureDrainRate = BerryData_GetAttribute(berryData, BERRYATTR_MOISTURE_DRAIN_RATE);
        growthData[i].yieldCategory = BerryData_GetAttribute(berryData, BERRYATTR_YIELD_CATEGORY);

        Heap_Free(berryData);
    }

    BerryData_NARC_dtor(narc);
    return growthData;
}

static void ZeroBerryPatch(BerryPatch *berryPatch)
{
    berryPatch->berryID = 0;
    berryPatch->growthStage = BERRY_GROWTH_STAGE_NONE;
    berryPatch->stageMinutesRemaining = 0;
    berryPatch->moistureMinutesRemaining = 0;
    berryPatch->replantCount = 0;
    berryPatch->yield = 0;
    berryPatch->moistureRating = 0;
    berryPatch->yieldRating = 0;
    berryPatch->mulchType = 0;
    berryPatch->isGrowing = FALSE;
}

static int CalcBerryYield(BerryPatch *berryPatch, const BerryGrowthData *growthData)
{
    return growthData[berryPatch->berryID - 1].yieldCategory * berryPatch->yieldRating;
}

static int CalcMinutesRemainingInStage(const BerryGrowthData *growthData, int berryID, enum MulchType mulchType)
{
    int minutesRemaining = growthData[berryID - 1].stageDuration * 60;

    if (mulchType == MULCH_TYPE_GROWTH) {
        minutesRemaining = (minutesRemaining * 3) / 4;
    } else if (mulchType == MULCH_TYPE_DAMP) {
        minutesRemaining = minutesRemaining + (minutesRemaining / 2);
    }

    return minutesRemaining;
}

static int CalcMoistureDrainRate(const BerryGrowthData *growthData, int berryID, enum MulchType mulchType)
{
    int drainRate = growthData[berryID - 1].moistureDrainRate;

    if (mulchType == MULCH_TYPE_DAMP) {
        return drainRate / 2;
    } else if (mulchType == MULCH_TYPE_GROWTH) {
        return drainRate + drainRate / 2;
    } else {
        return drainRate;
    }
}

static int GetHarvestTimeWithMulch(const BerryPatch *berryPatch)
{
    if (berryPatch->mulchType == MULCH_TYPE_STABLE) {
        return BASE_HARVEST_STAGES + (BASE_HARVEST_STAGES / 2);
    } else {
        return BASE_HARVEST_STAGES;
    }
}

static int GetTotalReplantCountWithMulch(const BerryPatch *berryPatch)
{
    if (berryPatch->mulchType == MULCH_TYPE_GOOEY) {
        return BASE_MAX_REPLANT_COUNT + (BASE_MAX_REPLANT_COUNT / 2);
    } else {
        return BASE_MAX_REPLANT_COUNT;
    }
}

static int CalcTotalStageCount(BerryPatch *berryPatch)
{
    return 1 + (3 + GetHarvestTimeWithMulch(berryPatch)) * GetTotalReplantCountWithMulch(berryPatch);
}

enum BerryGrowthStage BerryPatches_GetPatchGrowthStage(const BerryPatch *patches, int patchID)
{
    return patches[patchID].growthStage;
}

int BerryPatches_GetPatchBerryID(const BerryPatch *patches, int patchID)
{
    return patches[patchID].berryID;
}

enum SoilMoisture BerryPatches_GetPatchMoisture(const BerryPatch *patches, int patchID)
{
    int moistureRating = patches[patchID].moistureRating;
    if (moistureRating == 0) {
        return SOIL_VERY_DRY;
    } else if (moistureRating <= 50) {
        return SOIL_DRY;
    } else {
        return SOIL_MOIST;
    }
}

int BerryPatches_GetPatchYieldRating(const BerryPatch *patches, int patchID)
{
    return patches[patchID].yieldRating;
}

void BerryPatches_PlantInPatch(BerryPatch *patches, int patchID, const BerryGrowthData *growthData, int berryID)
{
    patches[patchID].berryID = berryID;
    patches[patchID].growthStage = BERRY_GROWTH_STAGE_PLANTED;
    patches[patchID].stageMinutesRemaining = CalcMinutesRemainingInStage(growthData, berryID, patches[patchID].mulchType);
    patches[patchID].moistureMinutesRemaining = 0;
    patches[patchID].replantCount = 0;
    patches[patchID].yield = 0;
    patches[patchID].moistureRating = MAX_MOISTURE_RATING;
    patches[patchID].yieldRating = MAX_YIELD_RATING;
    patches[patchID].isGrowing = TRUE;
}

void BerryPatches_ResetPatchMoisture(BerryPatch *patches, int patchID)
{
    patches[patchID].moistureRating = MAX_MOISTURE_RATING;
}

BOOL BerryPatches_IsPatchGrowing(const BerryPatch *patches, int patchID)
{
    return patches[patchID].isGrowing;
}

void BerryPatches_SetIsPatchGrowing(BerryPatch *patches, int patchID, BOOL isGrowing)
{
    patches[patchID].isGrowing = isGrowing;
}

enum MulchType BerryPatches_GetPatchMulchType(const BerryPatch *patches, int patchID)
{
    return patches[patchID].mulchType;
}

void BerryPatches_SetPatchMulchType(BerryPatch *patches, int patchID, enum MulchType mulchType)
{
    patches[patchID].mulchType = mulchType;
}

int BerryPatches_GetPatchYield(const BerryPatch *patches, int patchID)
{
    return patches[patchID].yield;
}

int BerryPatches_HarvestPatch(BerryPatch *patches, int patchID)
{
    int yield = patches[patchID].yield;
    ZeroBerryPatch(&patches[patchID]);
    return yield;
}

static void AdvancePatchGrowth(BerryPatch *berryPatch, const BerryGrowthData *growthData)
{
    switch (berryPatch->growthStage) {
    case BERRY_GROWTH_STAGE_NONE:
        GF_ASSERT(FALSE);
        break;

    case BERRY_GROWTH_STAGE_PLANTED:
    case BERRY_GROWTH_STAGE_SPROUTED:
    case BERRY_GROWTH_STAGE_GROWING:
        berryPatch->growthStage++;
        break;

    case BERRY_GROWTH_STAGE_BLOOMING:
        berryPatch->yield = CalcBerryYield(berryPatch, growthData);
        if (berryPatch->yield < 2) {
            berryPatch->yield = 2;
        }

        berryPatch->growthStage++;

        break;

    case BERRY_GROWTH_STAGE_FRUIT:
        berryPatch->yield = 0;
        berryPatch->growthStage = BERRY_GROWTH_STAGE_SPROUTED;
        berryPatch->yieldRating = MAX_YIELD_RATING;
        berryPatch->replantCount++;
        if (berryPatch->replantCount == GetTotalReplantCountWithMulch(berryPatch)) {
            ZeroBerryPatch(berryPatch);
        }

        break;
    }
}

static void DrainPatchMoisture(BerryPatch *berryPatch, const BerryGrowthData *growthData, int minutesPassed)
{
    if (berryPatch->growthStage == BERRY_GROWTH_STAGE_FRUIT) {
        return;
    }

    int drainageRate = CalcMoistureDrainRate(growthData, berryPatch->berryID, berryPatch->mulchType);
    minutesPassed += berryPatch->moistureMinutesRemaining;

    int hoursPassed = minutesPassed / 60;
    berryPatch->moistureMinutesRemaining = minutesPassed % 60;

    if (hoursPassed == 0) {
        return;
    }

    if (berryPatch->moistureRating >= drainageRate * hoursPassed) {
        berryPatch->moistureRating -= drainageRate * hoursPassed;
        return;
    }

    if (berryPatch->moistureRating > 0) {
        int hoursUntilPenalty = (berryPatch->moistureRating + (drainageRate - 1)) / drainageRate;
        hoursPassed -= hoursUntilPenalty;
        berryPatch->moistureRating = 0;
    }

    if (berryPatch->yieldRating > hoursPassed) {
        berryPatch->yieldRating -= hoursPassed;
    } else {
        berryPatch->yieldRating = 0;
    }
}

void BerryPatches_ElapseMinutes(BerryPatch *patches, const BerryGrowthData *growthData, int minutesPassed)
{
    int i;
    s32 totalMinutes;
    BerryPatch *patch;

    for (i = 0; i < MAX_BERRY_PATCHES; i++) {
        patch = &patches[i];

        if (patch->berryID == 0 || patch->growthStage == BERRY_GROWTH_STAGE_NONE || patch->isGrowing == FALSE) {
            continue;
        }

        int maxPatchLifetime = CalcMinutesRemainingInStage(growthData, patch->berryID, patch->mulchType) * CalcTotalStageCount(patch);
        if (minutesPassed >= maxPatchLifetime) {
            ZeroBerryPatch(patch);
            continue;
        }

        totalMinutes = minutesPassed;
        while (patch->growthStage != BERRY_GROWTH_STAGE_NONE && totalMinutes != 0) {
            if (patch->stageMinutesRemaining > totalMinutes) {
                DrainPatchMoisture(patch, growthData, totalMinutes);
                patch->stageMinutesRemaining -= totalMinutes;
                totalMinutes = 0;
                break;
            } else {
                DrainPatchMoisture(patch, growthData, patch->stageMinutesRemaining);
                AdvancePatchGrowth(patch, growthData);

                totalMinutes -= patch->stageMinutesRemaining;
                patch->stageMinutesRemaining = CalcMinutesRemainingInStage(growthData, patch->berryID, patch->mulchType);

                if (patch->growthStage == BERRY_GROWTH_STAGE_FRUIT) {
                    patch->stageMinutesRemaining *= GetHarvestTimeWithMulch(patch);
                }
            }
        }
    }
}
