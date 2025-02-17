#include "overlay006/great_marsh_daily_encounters.h"

#include "constants/heap.h"
#include "generated/map_headers.h"

#include "heap.h"
#include "narc.h"

static u8 GreatMarsh_GetAreaNumFromMapId(const int mapId);

void ReplaceGreatMarshDailyEncounters(const int dailyMon, const BOOL nationalDexObtained, const int mapId, int *encounterSlot1, int *encounterSlot2)
{
    int *narc;
    int encDataGroup;
    u8 encounterIndex;
    u8 areaNum = GreatMarsh_GetAreaNumFromMapId(mapId);

    if (nationalDexObtained) {
        encDataGroup = 9;
    } else {
        encDataGroup = 10;
    }

    narc = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, encDataGroup, HEAP_ID_FIELD);
    encounterIndex = ((dailyMon >> (5 * areaNum)) & 0x1f);
    encounterIndex %= 32;

    (*encounterSlot1) = narc[encounterIndex];
    (*encounterSlot2) = narc[encounterIndex];

    Heap_FreeToHeap(narc);
}

static u8 GreatMarsh_GetAreaNumFromMapId(const int mapId)
{
    u8 areaNum = 0;

    switch (mapId) {
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
