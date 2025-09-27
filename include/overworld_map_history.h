#ifndef POKEPLATINUM_OVERWORLD_MAP_HISTORY_H
#define POKEPLATINUM_OVERWORLD_MAP_HISTORY_H

#define OVERWORLD_MAP_HISTORY_LENGTH 6

typedef struct OverworldMapHistoryItem {
    u8 mapX;
    u8 mapZ;
    u8 faceDirection;
    u8 isSet;
} OverworldMapHistoryItem;

typedef struct OverworldMapHistory {
    int historyPointer;
    u8 currentMapX;
    u8 currentMapZ;
    OverworldMapHistoryItem items[OVERWORLD_MAP_HISTORY_LENGTH];
} OverworldMapHistory;

void OverworldMapHistory_Clear(OverworldMapHistory *mapHistory);
void OverworldMapHistory_PushViaWarp(OverworldMapHistory *mapHistory, int x, int z);
void OverworldMapHistory_Push(OverworldMapHistory *mapHistory, int x, int z, int faceDirection);

#endif // POKEPLATINUM_OVERWORLD_MAP_HISTORY_H
