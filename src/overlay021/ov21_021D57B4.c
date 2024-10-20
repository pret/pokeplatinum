#include "overlay021/ov21_021D57B4.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "overlay021/struct_dungeoncoordinates.h"
#include "overlay021/struct_fieldCoordinates.h"
#include "overlay021/struct_ov21_021D5844.h"

#include "cell_actor.h"
#include "heap.h"
#include "narc.h"
#include "unk_02006E3C.h"

void PokedexEncData_PopulateMapsEncounteredOn(mapsEncounteredOn *mapsEncOn, int species, int encounterCategory, int heapID)
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

    mapsEncOn->mapsEncounteredOnArray = (int *)sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, fileIndex + species, 0, heapID, 0, &fileSize);
    mapsEncOn->numMapsEncounteredOn = fileSize / sizeof(int);
}

void PokedexEncData_FreeMapsEncounteredOn(mapsEncounteredOn *mapsEncOn)
{
    GF_ASSERT(mapsEncOn);
    GF_ASSERT(mapsEncOn->mapsEncounteredOnArray);

    Heap_FreeToHeap(mapsEncOn->mapsEncounteredOnArray);

    mapsEncOn->mapsEncounteredOnArray = NULL;
    mapsEncOn->numMapsEncounteredOn = 0;
}

dungeonCoordinates *PokedexEncData_GetDungeonLocations(int heapID, int *numDungeons)
{
    dungeonCoordinates *dungeonCoordinatesArray;
    u32 fileSize;

    dungeonCoordinatesArray = (dungeonCoordinates *)sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, 0, 0, heapID, 0, &fileSize);

    if (numDungeons) {
        *numDungeons = fileSize / sizeof(dungeonCoordinates);
    }

    return dungeonCoordinatesArray;
}

fieldCoordinates *PokedexEncData_GetFieldLocations(int heapID, int *numFields)
{
    fieldCoordinates *fieldCoordinatesArray;
    u32 fileSize;

    fieldCoordinatesArray = (fieldCoordinates *)sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, 2, 0, heapID, 0, &fileSize);

    if (numFields) {
        *numFields = fileSize / sizeof(fieldCoordinates);
    }

    return fieldCoordinatesArray;
}

void ov21_021D58C0(u8 *mapFieldCellMatrix, u8 mapHeight, u8 mapWidth, const fieldCoordinates *fieldCoords)
{
    int xCoord, yCoord;

    GF_ASSERT((fieldCoords->xCoordinate + fieldCoords->width) < mapWidth); // param 1 and 2 are 30
    GF_ASSERT((fieldCoords->yCoordinate + fieldCoords->height) < mapHeight);

    for (xCoord = fieldCoords->xCoordinate; xCoord < fieldCoords->xCoordinate + fieldCoords->width; xCoord++) {
        for (yCoord = fieldCoords->yCoordinate; yCoord < fieldCoords->yCoordinate + fieldCoords->height; yCoord++) {
            mapFieldCellMatrix[(xCoord * mapHeight) + yCoord] |= fieldCoords->cellMatrix[((xCoord - fieldCoords->xCoordinate) * fieldCoords->height) + (yCoord - fieldCoords->yCoordinate)];
        }
    }
}

u32 ov21_021D5948(u8 *mapFieldCellMatrix, int mapHeight, int mapWidth, const fieldCoordinates *fieldCoordArray, const mapsEncounteredOn *mapsEncOn, const u8 *mapArray, u32 mapArrayLength)
{
    int index;
    int mapArrayIndex;
    u32 v2 = 0;

    for (index = 0; index < mapsEncOn->numMapsEncounteredOn - 1; index++) {
        GF_ASSERT(mapsEncOn->mapsEncounteredOnArray[index]);

        for (mapArrayIndex = 0; mapArrayIndex < mapArrayLength; mapArrayIndex++) {
            if (mapsEncOn->mapsEncounteredOnArray[index] == mapArray[mapArrayIndex]) {
                break;
            }
        }

        if (mapArrayIndex >= mapArrayLength) {
            ov21_021D58C0(mapFieldCellMatrix, mapHeight, mapWidth, &fieldCoordArray[mapsEncOn->mapsEncounteredOnArray[index]]);
            v2++;
        }
    }

    return v2;
}

void ov21_021D59D8(CellActor *actor, int xOffset, int yOffset, int xScale, int yScale, const dungeonCoordinates *dungeonCoords, int animID_1, int animID_2)
{
    VecFx32 position;

    position.x = (dungeonCoords->xCoordinate * xScale) + xOffset;
    position.y = (dungeonCoords->yCoordinate * yScale) + yOffset;
    position.x <<= FX32_SHIFT;
    position.y <<= FX32_SHIFT;

    CellActor_SetPosition(actor, &position);

    if (dungeonCoords->unk_02) {
        CellActor_SetAnim(actor, animID_2);
    } else {
        CellActor_SetAnim(actor, animID_1);
    }
}

int ov21_021D5A20(CellActor **cellActorArray, int initialNumDungeons, int param2, int xOffset, int yOffset, int xScale, int yScale, const dungeonCoordinates *dungeonCoordinatesArray, const mapsEncounteredOn *mapsEncOn, int animID_1, int animID_2, const u8 *mapArray, u32 mapArrayLength, u32 *param13)
{
    int index, mapArrayIndex;
    int numDungeons = initialNumDungeons;
    int v3 = 0;

    for (index = 0; index < mapsEncOn->numMapsEncounteredOn - 1; index++) {
        GF_ASSERT(mapsEncOn->mapsEncounteredOnArray[index]);
        GF_ASSERT(numDungeons < param2);

        for (mapArrayIndex = 0; mapArrayIndex < mapArrayLength; mapArrayIndex++) {
            if (mapsEncOn->mapsEncounteredOnArray[index] == mapArray[mapArrayIndex]) {
                break;
            }
        }

        if (mapArrayIndex >= mapArrayLength) {
            ov21_021D59D8(cellActorArray[numDungeons], xOffset, yOffset, xScale, yScale, &dungeonCoordinatesArray[mapsEncOn->mapsEncounteredOnArray[index]], animID_1, animID_2);
            numDungeons++;
            v3++;
        }
    }

    *param13 = v3;

    return numDungeons;
}
