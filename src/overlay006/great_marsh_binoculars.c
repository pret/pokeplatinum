#include "overlay006/great_marsh_binoculars.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay006/dual_slot_encounters.h"
#include "overlay006/great_marsh_daily_encounters.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/wild_encounters.h"

#include "field_system.h"
#include "great_marsh_lookout.h"
#include "heap.h"
#include "inlines.h"
#include "location.h"
#include "map_header_data.h"
#include "map_matrix.h"
#include "narc.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "unk_0202D7A8.h"

int GreatMarshBinoculars_GetMonSpecies(FieldSystem *fieldSystem)
{
    int encounterTable[MAX_GRASS_ENCOUNTERS];

    WildEncounters *encounterData = MapHeaderData_GetWildEncounters(fieldSystem);

    for (u8 i = 0; i < MAX_GRASS_ENCOUNTERS; i++) {
        encounterTable[i] = encounterData->grassEncounters.encounters[i].species;
    }

    BOOL natDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(FieldSystem_GetSaveData(fieldSystem)));

    ReplaceGreatMarshDailyEncounters(SpecialEncounter_GetDailyMon(SaveData_GetSpecialEncounters(fieldSystem->saveData), DAILY_MARSH), natDexObtained, fieldSystem->location->mapId, &encounterTable[6], &encounterTable[7]);
    WildEncounters_ReplaceTimedEncounters(encounterData, &encounterTable[2], &encounterTable[3]);
    WildEncounters_ReplaceDualSlotEncounters(encounterData, natDexObtained, &encounterTable[8], &encounterTable[9]);

    return encounterTable[LCRNG_RandMod(MAX_GRASS_ENCOUNTERS)];
}

GreatMarshBinoculars *GreatMarshBinoculars_InitData(const int heapId, FieldSystem *fieldSystem)
{
    u8 i;
    GreatMarshBinoculars *binocularsData;

    binocularsData = Heap_AllocFromHeapAtEnd(heapId, sizeof(GreatMarshBinoculars));
    binocularsData->fieldSystem = fieldSystem;

    u8 randIndex;
    BinocularCoords *coordData;

    coordData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 11, HEAP_ID_FIELD);

    for (i = 0; i < BINOCULARS_CYCLE_COUNT; i++) {
        randIndex = LCRNG_RandMod(36);
        binocularsData->coordsList[i].x = coordData[randIndex].x;
        binocularsData->coordsList[i].z = coordData[randIndex].z;
    }

    binocularsData->coordsList[BINOCULARS_CYCLE_COUNT].x = Player_GetXPos(fieldSystem->playerAvatar);
    binocularsData->coordsList[BINOCULARS_CYCLE_COUNT].z = Player_GetZPos(fieldSystem->playerAvatar);
    binocularsData->lookoutMapId = fieldSystem->location->mapId;
    Heap_FreeToHeap(coordData);

    return binocularsData;
}

void GreatMarshBinoculars_FreeData(GreatMarshBinoculars *data)
{
    Heap_FreeToHeap(data);
}

void GreatMarshBinoculars_SetNextLocationWithCoords(const u8 cycleNum, GreatMarshBinoculars *binocularsData)
{
    int nextMapId;
    int nextX, nextZ;

    if (cycleNum == 0) {
        int v3 = 240; // member number for NARC_INDEX_FIELDDATA__MAPMATRIX__MAP_MATRIX. Not sure what it represents exactly.
        nextX = binocularsData->coordsList[cycleNum].x / 32;
        nextZ = binocularsData->coordsList[cycleNum].z / 32;
        nextMapId = MapMatrixData_GetMapHeaderIDAtCoords(v3, nextX, nextZ);
    } else if (cycleNum == BINOCULARS_CYCLE_COUNT) {
        nextMapId = binocularsData->lookoutMapId;
    } else {
        nextX = binocularsData->coordsList[cycleNum].x / 32;
        nextZ = binocularsData->coordsList[cycleNum].z / 32;
        nextMapId = MapMatrix_GetMapHeaderIDAtCoords(binocularsData->fieldSystem->mapMatrix, nextX, nextZ);
    }

    Location_Set(&binocularsData->viewLocation, nextMapId, -1, binocularsData->coordsList[cycleNum].x, binocularsData->coordsList[cycleNum].z, 0);
}

Location *GreatMarshBinoculars_GetLocation(GreatMarshBinoculars *binocData)
{
    return &binocData->viewLocation;
}
