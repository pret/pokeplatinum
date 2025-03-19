#include "berry_data.h"

#include "constants/items.h"
#include "constants/narc.h"

#include "message.h"
#include "narc.h"
#include "strbuf.h"

NARC *BerryData_NARC_ctor(u32 heapID)
{
    return NARC_ctor(NARC_INDEX_ITEMTOOL__ITEMDATA__NUTS_DATA, heapID);
}

BerryData *BerryData_LoadFromOpenNARC(NARC *narc, u32 memberIdx, u32 heapID)
{
    return NARC_AllocAndReadWholeMember(narc, memberIdx, heapID);
}

void BerryData_NARC_dtor(NARC *narc)
{
    NARC_dtor(narc);
}

BerryData *BerryData_Load(u32 memberIdx, u32 heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__NUTS_DATA, memberIdx, heapID);
}

BerryData *BerryData_LoadDataByItemID(u32 itemID, u32 heapID)
{
    return BerryData_Load(itemID - FIRST_BERRY_IDX, heapID);
}

u32 BerryData_GetAttribute(BerryData *berryData, u32 attributeID)
{
    switch (attributeID) {
    case BERRYATTR_SIZE:
        return berryData->size;
    case BERRYATTR_FIRMNESS:
        return berryData->firmness;
    case BERRYATTR_YIELD_CATEGORY:
        return berryData->yieldCategory;
    case BERRYATTR_STAGE_DURATION:
        return berryData->stageDuration;
    case BERRYATTR_MOISTURE_DRAIN_RATE:
        return berryData->moistureDrainRate;
    case BERRYATTR_SPICINESS:
        return berryData->spiciness;
    case BERRYATTR_DRYNESS:
        return berryData->dryness;
    case BERRYATTR_SWEETNESS:
        return berryData->sweetness;
    case BERRYATTR_BITTERNESS:
        return berryData->bitterness;
    case BERRYATTR_SOURNESS:
        return berryData->sourness;
    case BERRYATTR_SMOOTHNESS:
        return berryData->smoothness;
    }

    return 0;
}

Strbuf *BerryData_AllocAndGetName(u16 memberIdx, u32 heapID)
{
    MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BERRY_NAMES, heapID);
    Strbuf *name = MessageLoader_GetNewStrbuf(loader, memberIdx);
    MessageLoader_Free(loader);
    return name;
}

Strbuf *BerryData_AllocAndGetDescription(u16 memberIdx, u16 heapID)
{
    MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BERRY_DESCRIPTIONS, heapID);
    Strbuf *desc = MessageLoader_GetNewStrbuf(loader, memberIdx);
    MessageLoader_Free(loader);
    return desc;
}
