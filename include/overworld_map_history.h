#ifndef POKEPLATINUM_OVERWORLD_MAP_HISTORY_H
#define POKEPLATINUM_OVERWORLD_MAP_HISTORY_H

typedef struct OverworldMapHistoryItem {
    u8 mapX;
    u8 mapZ;
    u8 faceDirection;
    u8 dummy_03; // this is always set to 1
} OverworldMapHistoryItem;

typedef struct OverworldMapHistory {
    int historyPointer;
    u8 currentMapX;
    u8 currentMapZ;
    OverworldMapHistoryItem items[6];
} OverworldMapHistory;

void OverworldMapHistory_Clear(OverworldMapHistory *mapHistory);
void OverworldMapHistory_PushViaWarp(OverworldMapHistory *mapHistory, int x, int z);
void OverworldMapHistory_Push(OverworldMapHistory *mapHistory, int x, int z, int faceDirection);

#endif // POKEPLATINUM_OVERWORLD_MAP_HISTORY_H
