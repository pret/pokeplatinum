#include "overlay006/great_marsh_daily_encounters.h"

#include "constants/heap.h"
#include "generated/map_headers.h"

#include "heap.h"
#include "narc.h"

static u8 GreatMarsh_GetAreaNumFromMapId(const enum MapHeaderID mapHeaderID);

void ReplaceGreatMarshDailyEncounters(const int dailyMon, const BOOL nationalDexObtained, const enum MapHeaderID mapHeaderID, int *encounterSlot1, int *encounterSlot2)
{
    int encDataGroup;
    u8 areaNum = GreatMarsh_GetAreaNumFromMapId(mapHeaderID);

    if (nationalDexObtained) {
        encDataGroup = 9;
    } else {
        encDataGroup = 10;
    }

    int *narc = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, encDataGroup, HEAP_ID_FIELD1);
    u8 encounterIndex = ((dailyMon >> (5 * areaNum)) & 0x1f);
    encounterIndex %= 32;

    (*encounterSlot1) = narc[encounterIndex];
    (*encounterSlot2) = narc[encounterIndex];

    Heap_Free(narc);
}

static u8 GreatMarsh_GetAreaNumFromMapId(const enum MapHeaderID mapHeaderID)
{
    u8 areaNum = 0;

    switch (mapHeaderID) {
    case MAP_HEADER_GREAT_MARSH_1:
        areaNum = 0;
        break;
    case MAP_HEADER_GREAT_MARSH_2:
        areaNum = 1;
        break;
    case MAP_HEADER_GREAT_MARSH_3:
        areaNum = 2;
        break;
    case MAP_HEADER_GREAT_MARSH_4:
        areaNum = 3;
        break;
    case MAP_HEADER_GREAT_MARSH_5:
        areaNum = 4;
        break;
    case MAP_HEADER_GREAT_MARSH_6:
        areaNum = 5;
        break;
    default:
        GF_ASSERT(FALSE);
    }

    return areaNum;
}
