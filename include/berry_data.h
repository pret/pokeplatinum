#ifndef POKEPLATINUM_BERRY_DATA_H
#define POKEPLATINUM_BERRY_DATA_H

#include "narc.h"
#include "strbuf.h"

// These must be #defines for csv2bin
#define FIRMNESS_VERY_SOFT  1
#define FIRMNESS_SOFT       2
#define FIRMNESS_HARD       3
#define FIRMNESS_VERY_HARD  4
#define FIRMNESS_SUPER_HARD 5

enum BerryAttribute {
    BERRYATTR_SIZE = 0,
    BERRYATTR_FIRMNESS,
    BERRYATTR_YIELD_CATEGORY,
    BERRYATTR_STAGE_DURATION,
    BERRYATTR_MOISTURE_DRAIN_RATE,
    BERRYATTR_SPICINESS,
    BERRYATTR_DRYNESS,
    BERRYATTR_SWEETNESS,
    BERRYATTR_BITTERNESS,
    BERRYATTR_SOURNESS,
    BERRYATTR_SMOOTHNESS,
};

typedef struct BerryData {
    u16 size;
    u8 firmness;
    u8 yieldCategory;
    u8 stageDuration;
    u8 moistureDrainRate;
    u8 spiciness;
    u8 dryness;
    u8 sweetness;
    u8 bitterness;
    u8 sourness;
    u8 smoothness;
} BerryData;

NARC *BerryData_NARC_ctor(u32 heapID);
BerryData *BerryData_LoadFromOpenNARC(NARC *narc, u32 memberIdx, u32 heapID);
void BerryData_NARC_dtor(NARC *narc);
BerryData *BerryData_Load(u32 memberIdx, u32 heapID);
BerryData *BerryData_LoadDataByItemID(u32 itemID, u32 heapID);
u32 BerryData_GetAttribute(BerryData *berryData, u32 attributeID);
Strbuf *BerryData_AllocAndGetName(u16 memberIdx, u32 heapID);
Strbuf *BerryData_AllocAndGetDescription(u16 memberIdx, u16 heapID);

#endif // POKEPLATINUM_BERRY_DATA_H
