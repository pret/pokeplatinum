#ifndef POKEPLATINUM_BUFFER_MANAGER_H
#define POKEPLATINUM_BUFFER_MANAGER_H

#include "constants/heap.h"

#define BUFFER_MANAGER_MODE_SINGLE 0
#define BUFFER_MANAGER_MODE_DOUBLE 1

enum BufferManagerDMAType {
    BUFFER_MANAGER_DMA_TYPE_16BIT = 0,
    BUFFER_MANAGER_DMA_TYPE_32BIT = 1
};

typedef struct BufferManager {
    void *buffers[2];
    u8 writeBuffer;
    u8 mode;
    u8 padding[2];
} BufferManager;

BufferManager *BufferManager_New(enum HeapID heapID, void *buffer1, void *buffer2);
void BufferManager_Delete(BufferManager *bufferManager);
void *BufferManager_GetWriteBuffer(const BufferManager *bufferManager);
const void *BufferManager_GetReadBuffer(const BufferManager *bufferManager);
void BufferManager_SetMode(BufferManager *bufferManager, u8 mode);
void BufferManager_SwapBuffers(BufferManager *bufferManager);
void BufferManager_StopDMA(void);
void BufferManager_StartDMA(const void *src, void *dst, int size, enum BufferManagerDMAType dmaType);

#endif // POKEPLATINUM_BUFFER_MANAGER_H
