#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "narc.h"
#include "unk_0200AC5C.h"
#include "berry_data.h"

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

NARC * BerryData_NARC_ctor (u32 heapID)
{
    return NARC_ctor(68, heapID);
}

BerryData * sub_020973A8 (NARC * param0, u32 param1, u32 param2)
{
    return NARC_AllocAndReadWholeMember(param0, 0 + param1, param2);
}

void BerryData_NARC_dtor (NARC * narc)
{
    NARC_dtor(narc);
}

BerryData * BerryData_LoadDataByNarcMemberIndex (u32 index, u32 heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(68, 0 + index, heapID);
}

BerryData * BerryData_LoadDataByItemID (u32 itemID, u32 heapID)
{
    return BerryData_LoadDataByNarcMemberIndex(itemID - 149, heapID);
}

u32 BerryData_GetAttribute (BerryData * berryData, u32 attributeID)
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

Strbuf* BerryData_AllocAndGetName (u16 index, u32 heapID)
{
    UnkStruct_0200B144 * v0;
    Strbuf* v1;

    v0 = sub_0200B144(1, 26, 424, heapID);
    v1 = sub_0200B1EC(v0, index);

    sub_0200B190(v0);
    return v1;
}

Strbuf* BerryData_AllocAndGetDescription (u16 index, u16 heapID)
{
    UnkStruct_0200B144 * v0;
    Strbuf* v1;

    v0 = sub_0200B144(1, 26, 423, heapID);
    v1 = sub_0200B1EC(v0, index);

    sub_0200B190(v0);
    return v1;
}
