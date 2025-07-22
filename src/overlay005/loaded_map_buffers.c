#include "overlay005/loaded_map_buffers.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/bdhc.h"
#include "constants/heap.h"

#include "heap.h"

#define MAP_MODEL_FILE_SIZE 0xF000

enum LoadedMapBuffersAllocType {
    LOADED_MAP_BUFFERS_ALLOC_STATIC = 1,
    LOADED_MAP_BUFFERS_ALLOC_HEAP
};

static void LoadedMapBuffers_InitFileBuffers(const u8 index, const int mapModelFileSize, const int bdhcFileSize, LoadedMapBuffers *buffers);

static u8 sGlobalMapModelFiles[LOADED_MAP_BUFFERS_FILE_COUNT][MAP_MODEL_FILE_SIZE];

LoadedMapBuffers *LoadedMapBuffers_New(const BOOL allocBDHCFiles) {
    LoadedMapBuffers *buffers = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(LoadedMapBuffers));

    memset(buffers, 0, sizeof(LoadedMapBuffers));
    buffers->mapModelAllocType = LOADED_MAP_BUFFERS_ALLOC_STATIC;

    if (allocBDHCFiles) {
        buffers->bdhcAllocType = LOADED_MAP_BUFFERS_ALLOC_HEAP;
    }

    for (u8 i = 0; i < LOADED_MAP_BUFFERS_FILE_COUNT; i++) {
        int bdhcFileSize;

        buffers->mapModelFiles[i] = (void *)&sGlobalMapModelFiles[i];

        if (buffers->mapModelFiles[i] == NULL) {
            return NULL;
        }

        if (allocBDHCFiles) {
            buffers->bdhcFiles[i] = Heap_AllocFromHeap(HEAP_ID_FIELD, BDHC_BUFFER_SIZE);

            if (buffers->bdhcFiles[i] == NULL) {
                return NULL;
            }

            bdhcFileSize = BDHC_BUFFER_SIZE;
        } else {
            buffers->bdhcFiles[i] = NULL;
            bdhcFileSize = 0;
        }

        LoadedMapBuffers_InitFileBuffers(i, MAP_MODEL_FILE_SIZE, bdhcFileSize, buffers);
    }

    return buffers;
}

void LoadedMapBuffers_Free(LoadedMapBuffers *buffers) {
    for (int i = 0; i < LOADED_MAP_BUFFERS_FILE_COUNT; i++) {
        if (buffers->mapModelAllocType == LOADED_MAP_BUFFERS_ALLOC_HEAP) {
            Heap_Free(buffers->mapModelFiles[i]);
        }

        buffers->mapModelFiles[i] = NULL;

        if (buffers->bdhcFiles[i] != NULL) {
            if (buffers->bdhcAllocType == LOADED_MAP_BUFFERS_ALLOC_HEAP) {
                Heap_Free(buffers->bdhcFiles[i]);
            }

            buffers->bdhcFiles[i] = NULL;
        }
    }

    Heap_Free(buffers);
    buffers = NULL;
}

void LoadedMapBuffers_GetMapModelFileBufPtr(const u8 index, const LoadedMapBuffers *buffers, void **mapModelFile) {
    *mapModelFile = buffers->mapModelFiles[index];
}

void LoadedMapBuffers_GetBDHCFileBufPtr(const u8 index, const LoadedMapBuffers *buffers, void **bdhcFile) {
    *bdhcFile = buffers->bdhcFiles[index];
}

static void LoadedMapBuffers_InitFileBuffers(const u8 index, const int mapModelFileSize, const int bdhcFileSize, LoadedMapBuffers *buffers) {
    MI_CpuClear8(buffers->mapModelFiles[index], mapModelFileSize);
    MI_CpuClear8(buffers->bdhcFiles[index], bdhcFileSize);
}

LoadedMapBuffers *LoadedMapBuffers_NewWithHeapMapModelFiles(const BOOL allocBDHCFiles) {
    LoadedMapBuffers *buffers = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(LoadedMapBuffers));

    memset(buffers, 0, sizeof(LoadedMapBuffers));
    buffers->mapModelAllocType = LOADED_MAP_BUFFERS_ALLOC_HEAP;

    if (allocBDHCFiles) {
        buffers->bdhcAllocType = LOADED_MAP_BUFFERS_ALLOC_HEAP;
    }

    for (u32 i = 0; i < LOADED_MAP_BUFFERS_FILE_COUNT; i++) {
        buffers->mapModelFiles[i] = Heap_AllocFromHeap(HEAP_ID_FIELD, MAP_MODEL_FILE_SIZE);
        MI_CpuClear8(buffers->mapModelFiles[i], MAP_MODEL_FILE_SIZE);

        if (allocBDHCFiles == TRUE) {
            buffers->bdhcFiles[i] = Heap_AllocFromHeap(HEAP_ID_FIELD, BDHC_BUFFER_SIZE);
            MI_CpuClear8(buffers->bdhcFiles[i], BDHC_BUFFER_SIZE);
        }
    }

    return buffers;
}

void LoadedMapBuffers_SwapMapModelData(LoadedMapBuffers *a, LoadedMapBuffers *b) {
    LoadedMapBuffers tmp = *a;

    a->mapModelAllocType = b->mapModelAllocType;
    b->mapModelAllocType = tmp.mapModelAllocType;

    for (int i = 0; i < LOADED_MAP_BUFFERS_FILE_COUNT; i++) {
        a->mapModelFiles[i] = b->mapModelFiles[i];
        b->mapModelFiles[i] = tmp.mapModelFiles[i];
    }
}
