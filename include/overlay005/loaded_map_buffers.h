#ifndef POKEPLATINUM_OV5_LOADED_MAP_BUFFERS_H
#define POKEPLATINUM_OV5_LOADED_MAP_BUFFERS_H

#include <nitro/types.h>

#define LOADED_MAP_BUFFERS_FILE_COUNT 4

typedef struct LoadedMapBuffers {
    u16 mapModelAllocType;
    u16 bdhcAllocType;
    void *mapModelFiles[LOADED_MAP_BUFFERS_FILE_COUNT];
    void *bdhcFiles[LOADED_MAP_BUFFERS_FILE_COUNT];
} LoadedMapBuffers;

LoadedMapBuffers *LoadedMapBuffers_New(const BOOL allocBDHCFiles);
void LoadedMapBuffers_Free(LoadedMapBuffers *buffers);
void LoadedMapBuffers_GetMapModelFileBufPtr(const u8 index, const LoadedMapBuffers *buffers, void **mapModelFile);
void LoadedMapBuffers_GetBDHCFileBufPtr(const u8 index, const LoadedMapBuffers *buffers, void **bdhcFile);
LoadedMapBuffers *LoadedMapBuffers_NewWithHeapMapModelFiles(const BOOL allocBDHCFiles);
void LoadedMapBuffers_SwapMapModelData(LoadedMapBuffers *a, LoadedMapBuffers *b);

#endif // POKEPLATINUM_OV5_LOADED_MAP_BUFFERS_H
