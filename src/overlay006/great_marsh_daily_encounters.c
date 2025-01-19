#include "overlay006/great_marsh_daily_encounters.h"

#include <nitro.h>
#include <string.h>

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

    narc = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, encDataGroup, 4);
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
    case 504:
        areaNum = 0;
        break;
    case 505:
        areaNum = 1;
        break;
    case 506:
        areaNum = 2;
        break;
    case 507:
        areaNum = 3;
        break;
    case 508:
        areaNum = 4;
        break;
    case 509:
        areaNum = 5;
        break;
    default:
        GF_ASSERT(FALSE);
    }

    return areaNum;
}
