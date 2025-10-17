#include "applications/town_map/map_blocks.h"

#include "applications/town_map/defs.h"

#include "heap.h"

TownMapBlockList *TownMap_ReadBlocks(const char *path, enum HeapID heapID)
{
    FSFile tmapBlockFile;
    FS_InitFile(&tmapBlockFile);

    if (!FS_OpenFile(&tmapBlockFile, path)) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    int blockCount;
    int readLength = FS_ReadFile(&tmapBlockFile, &blockCount, sizeof(int));
    GF_ASSERT(readLength >= 0);

    TownMapBlockList *blockList = Heap_Alloc(heapID, sizeof(TownMapBlockList));
    memset(blockList, 0, sizeof(TownMapBlockList));

    blockList->entries = Heap_Alloc(heapID, sizeof(TownMapBlock) * blockCount);
    memset(blockList->entries, 0, sizeof(TownMapBlock) * blockCount);

    blockList->count = blockCount;

    for (int i = 0; i < blockList->count; i++) {
        TownMapBlock *block = &(blockList->entries[i]);
        readLength = FS_ReadFile(&tmapBlockFile, block, sizeof(TownMapBlock));
        block->index = i;
    }

    (void)FS_CloseFile(&tmapBlockFile);

    return blockList;
}

void TownMap_FreeBlocks(TownMapBlockList *blockList)
{
    Heap_Free(blockList->entries);
    Heap_Free(blockList);
}

TownMapBlock *TownMap_GetMapBlockAtPosition(TownMapBlockList *blockList, int x, int z, u16 unlockedHiddenLocations)
{
    for (int i = 0; i < blockList->count; i++) {
        TownMapBlock *block = &(blockList->entries[i]);

        if (block->x == x && block->z == z) {
            if (block->hiddenLocationFlags == 0 || block->hiddenLocationFlags & unlockedHiddenLocations) {
                return block;
            } else {
                return NULL;
            }
        }
    }

    return NULL;
}
