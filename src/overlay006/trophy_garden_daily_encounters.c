#include "overlay006/trophy_garden_daily_encounters.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "inlines.h"
#include "narc.h"
#include "savedata.h"
#include "special_encounter.h"

void TrophyGarden_AddNewMon(SaveData *saveData)
{
    u16 newMonIndex;
    u16 index1, index2;
    int currentMons[2];
    int *encData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 8, HEAP_ID_FIELD);

    SpecialEncounter_GetTrophyGardenMons(saveData, &index1, &index2);

    if (index1 != TROPHY_GARDEN_SLOT_NONE) {
        currentMons[0] = encData[index1];
    } else {
        currentMons[0] = 0;
    }

    if (index2 != TROPHY_GARDEN_SLOT_NONE) {
        currentMons[1] = encData[index2];
    } else {
        currentMons[1] = 0;
    }

    while (TRUE) {
        newMonIndex = LCRNG_RandMod(16);

        if ((currentMons[0] != encData[newMonIndex]) && (currentMons[1] != encData[newMonIndex])) {
            TrophyGarden_ShiftSlotsForNewMon(saveData, newMonIndex);
            break;
        }
    }

    Heap_FreeToHeap(encData);
}

int TrophyGarden_GetSlot1Species(SaveData *saveData)
{
    int species;
    int *encData;
    u16 slot1, slot2;

    SpecialEncounter_GetTrophyGardenMons(saveData, &slot1, &slot2);

    GF_ASSERT(slot1 != TROPHY_GARDEN_SLOT_NONE);

    encData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 8, HEAP_ID_FIELD);
    species = encData[slot1];

    Heap_FreeToHeap(encData);

    return species;
}
