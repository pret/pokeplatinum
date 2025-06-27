#include "overworld_map_history.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map.h"

void OverworldMapHistory_Clear(OverworldMapHistory *mapHistory)
{
    for (u8 i = 0; i < 6; i++) {
        mapHistory->items[i].mapX = 0;
        mapHistory->items[i].mapZ = 0;
        mapHistory->items[i].faceDirection = 0;
        mapHistory->items[i].dummy_03 = 0;
    }

    mapHistory->historyPointer = 0;
    mapHistory->currentMapX = 0;
    mapHistory->currentMapZ = 0;
}

void OverworldMapHistory_PushViaWarp(OverworldMapHistory *mapHistory, int x, int z)
{
    u8 mapX = x / MAP_TILES_COUNT_X;
    u8 mapZ = z / MAP_TILES_COUNT_Z;

    if (mapX != mapHistory->currentMapX || mapZ != mapHistory->currentMapZ) {
        mapHistory->items[mapHistory->historyPointer].mapX = mapX;
        mapHistory->items[mapHistory->historyPointer].mapZ = mapZ;
        mapHistory->items[mapHistory->historyPointer].faceDirection = -1;
        mapHistory->items[mapHistory->historyPointer].dummy_03 = 1;
        mapHistory->historyPointer = (mapHistory->historyPointer + 1) % 6;
    }
}

void OverworldMapHistory_Push(OverworldMapHistory *mapHistory, int x, int z, int faceDirection)
{
    u8 mapX = x, mapZ;
    mapZ = z;

    if (mapX != mapHistory->currentMapX || mapZ != mapHistory->currentMapZ) {
        mapHistory->items[mapHistory->historyPointer].mapX = mapX;
        mapHistory->items[mapHistory->historyPointer].mapZ = mapZ;
        mapHistory->items[mapHistory->historyPointer].faceDirection = faceDirection;
        mapHistory->items[mapHistory->historyPointer].dummy_03 = 1;

        mapHistory->currentMapX = mapX;
        mapHistory->currentMapZ = mapZ;
        mapHistory->historyPointer = (mapHistory->historyPointer + 1) % 6;
    }
}
