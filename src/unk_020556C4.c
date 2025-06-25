#include "unk_020556C4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020556C4.h"

void OverworldMapHistory_Clear(OverworldMapHistory *mapHistory)
{
    u8 v0;

    for (v0 = 0; v0 < 6; v0++) {
        mapHistory->items[v0].mapX = 0;
        mapHistory->items[v0].mapZ = 0;
        mapHistory->items[v0].faceDirection = 0;
        mapHistory->items[v0].unused_03 = 0;
    }

    mapHistory->historyPointer = 0;
    mapHistory->currentMapX = 0;
    mapHistory->currentMapZ = 0;
}

void OverworldMapHistory_PushViaWarp(OverworldMapHistory *mapHistory, int x, int z)
{
    u8 mapX = x / 32;
    u8 mapZ = z / 32;

    if ((mapX != mapHistory->currentMapX) || (mapZ != mapHistory->currentMapZ)) {
        mapHistory->items[mapHistory->historyPointer].mapX = mapX;
        mapHistory->items[mapHistory->historyPointer].mapZ = mapZ;
        mapHistory->items[mapHistory->historyPointer].faceDirection = -1;
        mapHistory->items[mapHistory->historyPointer].unused_03 = 1;
        mapHistory->historyPointer = (mapHistory->historyPointer + 1) % 6;
    }
}

void OverworldMapHistory_Push(OverworldMapHistory *mapHistory, int x, int z, int faceDirection)
{
    u8 mapX = x, mapZ;
    mapZ = z;

    if ((mapX != mapHistory->currentMapX) || (mapZ != mapHistory->currentMapZ)) {
        mapHistory->items[mapHistory->historyPointer].mapX = mapX;
        mapHistory->items[mapHistory->historyPointer].mapZ = mapZ;
        mapHistory->items[mapHistory->historyPointer].faceDirection = faceDirection;
        mapHistory->items[mapHistory->historyPointer].unused_03 = 1;

        mapHistory->currentMapX = mapX;
        mapHistory->currentMapZ = mapZ;
        mapHistory->historyPointer = (mapHistory->historyPointer + 1) % 6;
    }
}
