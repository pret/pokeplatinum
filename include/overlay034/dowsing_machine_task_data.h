#ifndef POKEPLATINUM_DOWSING_MACHINE_TASK_DATA_H
#define POKEPLATINUM_DOWSING_MACHINE_TASK_DATA_H

#define DOWSING_MACHINE_FOUND_NO_ITEMS     0
#define DOWSING_MACHINE_FOUND_FAR_ITEMS    1
#define DOWSING_MACHINE_FOUND_NEARBY_ITEMS 2

typedef struct HiddenItemTilePosition {
    u16 screenTileX;
    u16 screenTileZ;
    u8 range;
} HiddenItemTilePosition;

typedef struct HiddenItemPixelPosition {
    u16 screenX;
    u16 screenZ;
    u16 range;
} HiddenItemPixelPosition;

typedef struct DowsingMachineTaskData {
    u32 touchX;
    u32 touchZ;
    int foundItemType;
    u32 nearbyItemCount;
    HiddenItemPixelPosition hiddenItemPositions[8];
    BOOL unused;
} DowsingMachineTaskData;

#endif // POKEPLATINUM_DOWSING_MACHINE_TASK_DATA_H
