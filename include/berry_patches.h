#ifndef POKEPLATINUM_BERRY_PATCHES_H
#define POKEPLATINUM_BERRY_PATCHES_H

#include "constants/heap.h"

#define MAX_BERRY_PATCHES 128

enum BerryGrowthStage {
    BERRY_GROWTH_STAGE_NONE = 0,
    BERRY_GROWTH_STAGE_PLANTED,
    BERRY_GROWTH_STAGE_SPROUTED,
    BERRY_GROWTH_STAGE_GROWING,
    BERRY_GROWTH_STAGE_BLOOMING,
    BERRY_GROWTH_STAGE_FRUIT,
};

enum MulchType {
    MULCH_TYPE_NONE = 0,
    MULCH_TYPE_GROWTH,
    MULCH_TYPE_DAMP,
    MULCH_TYPE_STABLE,
    MULCH_TYPE_GOOEY,
};

enum SoilMoisture {
    SOIL_VERY_DRY = 0,
    SOIL_DRY,
    SOIL_MOIST,
};

typedef struct BerryPatch {
    u8 berryID;
    u8 growthStage;
    u16 stageMinutesRemaining;
    u16 moistureMinutesRemaining;
    u8 replantCount;
    u16 yield;
    u8 moistureRating;
    u8 yieldRating;
    u8 mulchType;
    u8 isGrowing;
} BerryPatch;

typedef struct BerryGrowthData {
    u8 stageDuration;
    u8 moistureDrainRate;
    u8 yieldCategory;
} BerryGrowthData;

void BerryPatches_Clear(BerryPatch *patches);
void BerryPatches_Init(BerryPatch *patches, enum HeapId heapID, const u16 *initPatches, int initSize);
BerryGrowthData *BerryGrowthData_Init(enum HeapId heapID);
enum BerryGrowthStage BerryPatches_GetPatchGrowthStage(const BerryPatch *patches, int patchID);
int BerryPatches_GetPatchBerryID(const BerryPatch *patches, int patchID);
enum SoilMoisture BerryPatches_GetPatchMoisture(const BerryPatch *patches, int patchID);
int BerryPatches_GetPatchYieldRating(const BerryPatch *patches, int patchID);
void BerryPatches_PlantInPatch(BerryPatch *patches, int patchID, const BerryGrowthData *growthData, int berryID);
void BerryPatches_ResetPatchMoisture(BerryPatch *patches, int patchID);
BOOL BerryPatches_IsPatchGrowing(const BerryPatch *patches, int patchID);
void BerryPatches_SetIsPatchGrowing(BerryPatch *patches, int patchID, BOOL isGrowing);
enum MulchType BerryPatches_GetPatchMulchType(const BerryPatch *patches, int patchID);
void BerryPatches_SetPatchMulchType(BerryPatch *patches, int patchID, enum MulchType mulchType);
int BerryPatches_GetPatchYield(const BerryPatch *patches, int patchID);
int BerryPatches_HarvestPatch(BerryPatch *patches, int patchID);
void BerryPatches_ElapseMinutes(BerryPatch *patches, const BerryGrowthData *growthData, int minutesPassed);

#endif // POKEPLATINUM_BERRY_PATCHES_H
