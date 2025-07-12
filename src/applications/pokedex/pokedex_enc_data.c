#include "applications/pokedex/pokedex_enc_data.h"

#include <nitro.h>
#include <string.h>

#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "sprite.h"

#include "res/pokemon/pokedex_sizes.h"

enum PokedexEncFileIndex {
    PEFI_DUNGEONMORNING = 4,
    PEFI_DUNGEONDAY = (4 + MAX_SPECIES),
    PEFI_DUNGEONNIGHT = (4 + MAX_SPECIES * 2),
    PEFI_DUNGEONSPECIAL = (4 + MAX_SPECIES * 3),
    PEFI_DUNGEONSPECIALNATDEX = (4 + MAX_SPECIES * 4),
    PEFI_FIELDMORNING = (4 + MAX_SPECIES * 5),
    PEFI_FIELDDAY = (4 + MAX_SPECIES * 6),
    PEFI_FIELDNIGHT = (4 + MAX_SPECIES * 7),
    PEFI_FIELDSPECIAL = (4 + MAX_SPECIES * 8),
    PEFI_FIELDSPECIALNATDEX = (4 + MAX_SPECIES * 9),
};

void PokedexEncData_PopulateEncounterLocations(EncounterLocations *encounterLocations, int species, int encounterCategory, enum HeapId heapID)
{
    int fileIndex;
    u32 fileSize;

    switch (encounterCategory) {
    case PEFC_DUNGEONMORNING:
        fileIndex = PEFI_DUNGEONMORNING;
        break;
    case PEFC_DUNGEONDAY:
        fileIndex = PEFI_DUNGEONDAY;
        break;
    case PEFC_DUNGEONNIGHT:
        fileIndex = PEFI_DUNGEONNIGHT;
        break;
    case PEFC_DUNGEONSPECIAL:
        fileIndex = PEFI_DUNGEONSPECIAL;
        break;
    case PEFC_DUNGEONSPECIALNATDEX:
        fileIndex = PEFI_DUNGEONSPECIALNATDEX;
        break;
    case PEFC_FIELDMORNING:
        fileIndex = PEFI_FIELDMORNING;
        break;
    case PEFC_FIELDDAY:
        fileIndex = PEFI_FIELDDAY;
        break;
    case PEFC_FIELDNIGHT:
        fileIndex = PEFI_FIELDNIGHT;
        break;
    case PEFC_FIELDSPECIAL:
        fileIndex = PEFI_FIELDSPECIAL;
        break;
    case PEFC_FIELDSPECIALNATDEX:
        fileIndex = PEFI_FIELDSPECIALNATDEX;
        break;
    }

    encounterLocations->locations = LoadMemberFromNARC_OutFileSize(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, fileIndex + species, 0, heapID, 0, &fileSize);
    encounterLocations->numLocations = fileSize / sizeof(int);
}

void PokedexEncData_FreeEncounterLocations(EncounterLocations *encounterLocations)
{
    GF_ASSERT(encounterLocations);
    GF_ASSERT(encounterLocations->locations);

    Heap_FreeToHeap(encounterLocations->locations);

    encounterLocations->locations = NULL;
    encounterLocations->numLocations = 0;
}

DungeonCoordinates *PokedexEncData_GetDungeonCoordinates(enum HeapId heapID, int *numDungeons)
{
    u32 fileSize;

    DungeonCoordinates *dungeonCoordinatesArray = LoadMemberFromNARC_OutFileSize(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, 0, 0, heapID, 0, &fileSize);

    if (numDungeons) {
        *numDungeons = fileSize / sizeof(DungeonCoordinates);
    }

    return dungeonCoordinatesArray;
}

FieldCoordinates *PokedexEncData_GetFieldCoordinates(enum HeapId heapID, int *numFields)
{
    u32 fileSize;

    FieldCoordinates *fieldCoordinatesArray = LoadMemberFromNARC_OutFileSize(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, 2, 0, heapID, 0, &fileSize);

    if (numFields) {
        *numFields = fileSize / sizeof(FieldCoordinates);
    }

    return fieldCoordinatesArray;
}

void PokedexEncData_LocateFieldOnMap(u8 *pokedexFieldMap, u8 mapHeight, u8 mapWidth, const FieldCoordinates *fieldCoordinates)
{
    GF_ASSERT((fieldCoordinates->x + fieldCoordinates->width) < mapWidth);
    GF_ASSERT((fieldCoordinates->y + fieldCoordinates->height) < mapHeight);

    for (int x = fieldCoordinates->x; x < fieldCoordinates->x + fieldCoordinates->width; x++) {
        for (int y = fieldCoordinates->y; y < fieldCoordinates->y + fieldCoordinates->height; y++) {
            pokedexFieldMap[(x * mapHeight) + y] |= fieldCoordinates->cellMatrix[((x - fieldCoordinates->x) * fieldCoordinates->height) + (y - fieldCoordinates->y)];
        }
    }
}

u32 PokedexEncData_LocateVisibleFields(u8 *pokedexFieldMap, int mapHeight, int mapWidth, const FieldCoordinates *fieldCoordinatesArray, const EncounterLocations *encounterLocations, const u8 *invisibleFields, u32 numInvisibleFields)
{
    int locationIndex;
    int skipIndex;
    u32 numVisibleFields = 0;

    for (locationIndex = 0; locationIndex < encounterLocations->numLocations - 1; locationIndex++) {
        GF_ASSERT(encounterLocations->locations[locationIndex]);

        for (skipIndex = 0; skipIndex < numInvisibleFields; skipIndex++) {
            if (encounterLocations->locations[locationIndex] == invisibleFields[skipIndex]) {
                break;
            }
        }

        if (skipIndex >= numInvisibleFields) {
            PokedexEncData_LocateFieldOnMap(pokedexFieldMap, mapHeight, mapWidth, &fieldCoordinatesArray[encounterLocations->locations[locationIndex]]);
            numVisibleFields++;
        }
    }

    return numVisibleFields;
}

void PokedexEncData_LocateDungeonOnMap(Sprite *cellActor, int xOffset, int yOffset, int xScale, int yScale, const DungeonCoordinates *dungeonCoordinates, int animID, int coronetAnimID)
{
    VecFx32 position;

    position.x = (dungeonCoordinates->x * xScale) + xOffset;
    position.y = (dungeonCoordinates->y * yScale) + yOffset;
    position.x <<= FX32_SHIFT;
    position.y <<= FX32_SHIFT;

    Sprite_SetPosition(cellActor, &position);

    if (dungeonCoordinates->isMtCoronet) {
        Sprite_SetAnim(cellActor, coronetAnimID);
    } else {
        Sprite_SetAnim(cellActor, animID);
    }
}

int PokedexEncData_LocateVisibleDungeons(Sprite **cellActorArray, int initialNumVisibleDungeons, int maxNumDungeons, int xOffset, int yOffset, int xScale, int yScale, const DungeonCoordinates *dungeonCoordinatesArray, const EncounterLocations *encounterLocations, int animID, int coronetAnimID, const u8 *invisibleDungeons, u32 numInvisibleDungeons, u32 *cellActorsModified)
{
    int locationIndex, skipIndex;
    int numVisibleDungeons = initialNumVisibleDungeons;
    int DungeonCount = 0;

    for (locationIndex = 0; locationIndex < encounterLocations->numLocations - 1; locationIndex++) {
        GF_ASSERT(encounterLocations->locations[locationIndex]);
        GF_ASSERT(numVisibleDungeons < maxNumDungeons);

        for (skipIndex = 0; skipIndex < numInvisibleDungeons; skipIndex++) {
            if (encounterLocations->locations[locationIndex] == invisibleDungeons[skipIndex]) {
                break;
            }
        }

        if (skipIndex >= numInvisibleDungeons) {
            PokedexEncData_LocateDungeonOnMap(cellActorArray[numVisibleDungeons], xOffset, yOffset, xScale, yScale, &dungeonCoordinatesArray[encounterLocations->locations[locationIndex]], animID, coronetAnimID);
            numVisibleDungeons++;
            DungeonCount++;
        }
    }

    *cellActorsModified = DungeonCount;

    return numVisibleDungeons;
}
