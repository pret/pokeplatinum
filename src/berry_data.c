#include "berry_data.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "message.h"
#include "narc.h"
#include "strbuf.h"

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

NARC *BerryData_NARC_ctor(u32 heapID)
{
    return NARC_ctor(NARC_INDEX_ITEMTOOL__ITEMDATA__NUTS_DATA, heapID);
}

BerryData *sub_020973A8(NARC *param0, u32 param1, u32 param2)
{
    return NARC_AllocAndReadWholeMember(param0, 0 + param1, param2);
}

void BerryData_NARC_dtor(NARC *narc)
{
    NARC_dtor(narc);
}

BerryData *BerryData_LoadDataByNarcMemberIndex(u32 index, u32 heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_ITEMTOOL__ITEMDATA__NUTS_DATA, 0 + index, heapID);
}

BerryData *BerryData_LoadDataByItemID(u32 itemID, u32 heapID)
{
    return BerryData_LoadDataByNarcMemberIndex(itemID - 149, heapID);
}

u32 BerryData_GetAttribute(BerryData *berryData, u32 attributeID)
{
    switch (attributeID) {
    case 0:
        return berryData->size;
    case 1:
        return berryData->firmness;
    case 2:
        return berryData->yieldCategory;
    case 3:
        return berryData->stageDuration;
    case 4:
        return berryData->moistureDrainRate;
    case 5:
        return berryData->spiciness;
    case 6:
        return berryData->dryness;
    case 7:
        return berryData->sweetness;
    case 8:
        return berryData->bitterness;
    case 9:
        return berryData->sourness;
    case 10:
        return berryData->smoothness;
    }

    return 0;
}

Strbuf *BerryData_AllocAndGetName(u16 index, u32 heapID)
{
    MessageLoader *v0;
    Strbuf *v1;

    v0 = MessageLoader_Init(1, 26, 424, heapID);
    v1 = MessageLoader_GetNewStrbuf(v0, index);

    MessageLoader_Free(v0);
    return v1;
}

Strbuf *BerryData_AllocAndGetDescription(u16 index, u16 heapID)
{
    MessageLoader *v0;
    Strbuf *v1;

    v0 = MessageLoader_Init(1, 26, 423, heapID);
    v1 = MessageLoader_GetNewStrbuf(v0, index);

    MessageLoader_Free(v0);
    return v1;
}
