#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "sys_task_manager.h"

#include "buffer_manager.h"
#include "sys_task.h"
#include "screen_scroll_manager.h"
#include "heap.h"

static void ScreenScrollManager_StopDMA(void);
static void ScreenScrollManager_StartDMA(const ScreenScrollManager *screenScrollMgr);
static void ScreenScrollManager_UpdateScrollX(SysTask *task, void *param);
static void ScreenScrollManager_UpdateScrollY(SysTask *task, void *param);

BufferManager *BufferManager_New(enum HeapId heapID, void *buffer1, void *buffer2)
{
    BufferManager *bufferManager = Heap_AllocFromHeap(heapID, sizeof(BufferManager));
    memset(bufferManager, 0, sizeof(BufferManager));

    bufferManager->mode = BUFFER_MANAGER_MODE_DOUBLE;
    bufferManager->buffers[0] = buffer1;
    bufferManager->buffers[1] = buffer2;

    return bufferManager;
}

void BufferManager_Delete(BufferManager *bufferManager)
{
    GF_ASSERT(bufferManager);
    Heap_FreeToHeap(bufferManager);
}

void *BufferManager_GetWriteBuffer(const BufferManager *bufferManager)
{
    GF_ASSERT(bufferManager);
    return bufferManager->buffers[bufferManager->writeBuffer];
}

const void *BufferManager_GetReadBuffer(const BufferManager *bufferManager)
{
    GF_ASSERT(bufferManager);
    return bufferManager->buffers[bufferManager->writeBuffer ^ 1];
}

// mode can be either BUFFER_MANAGER_MODE_SINGLE or BUFFER_MANAGER_MODE_DOUBLE
void BufferManager_SetMode(BufferManager *bufferManager, u8 mode)
{
    GF_ASSERT(bufferManager);
    bufferManager->mode = mode;
}

void BufferManager_SwapBuffers(BufferManager *bufferManager)
{
    if (bufferManager == NULL) {
        return;
    }

    if (bufferManager->mode == BUFFER_MANAGER_MODE_SINGLE) {
        return;
    }

    bufferManager->writeBuffer ^= 1;
}

void BufferManager_StopDMA(void)
{
    MI_StopDma(0);
    MI_WaitDma(0);
}

void BufferManager_StartDMA(const void *src, void *dst, int size, enum BufferManagerDMAType dmaType)
{
    if (dmaType == BUFFER_MANAGER_DMA_TYPE_32BIT) {
        MI_HBlankDmaCopy32(0, src, dst, size);
    } else {
        MI_HBlankDmaCopy16(0, src, dst, size);
    }
}

ScreenScrollManager *ScreenScrollManager_New(enum HeapId heapID)
{
    ScreenScrollManager *screenScrollMgr = Heap_AllocFromHeap(heapID, sizeof(ScreenScrollManager));
    memset(screenScrollMgr, 0, sizeof(ScreenScrollManager));
    screenScrollMgr->bufferManager = BufferManager_New(heapID, screenScrollMgr->buffer1, screenScrollMgr->buffer2);

    return screenScrollMgr;
}

void ScreenScrollManager_ScrollX(ScreenScrollManager *screenScrollMgr, u8 start, u8 end, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bg, u32 initValue, u32 priority)
{
    GF_ASSERT(screenScrollMgr);
    GF_ASSERT(screenScrollMgr->scrollTask == NULL);

    screenScrollMgr->start = start;
    screenScrollMgr->end = end;
    screenScrollMgr->scrollPos = 0;
    screenScrollMgr->scrollSpeed = speed;
    screenScrollMgr->offsetRegisterAddr = bg;
    screenScrollMgr->initValue = initValue;

    ScreenScrollManager_CreateSineTable(screenScrollMgr->sineTable, SCREEN_SCROLL_MANAGER_BUFFER_SIZE, angleIncrement, amplitude);

    screenScrollMgr->scrollTask = SysTask_Start(ScreenScrollManager_UpdateScrollX, screenScrollMgr, priority);

    MI_CpuFill32(screenScrollMgr->buffer1, screenScrollMgr->initValue, sizeof(u32) * SCREEN_SCROLL_MANAGER_BUFFER_SIZE);
    MI_CpuFill32(screenScrollMgr->buffer2, screenScrollMgr->initValue, sizeof(u32) * SCREEN_SCROLL_MANAGER_BUFFER_SIZE);
}

void ScreenScrollManager_ScrollY(ScreenScrollManager *screenScrollMgr, u8 start, u8 end, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bg, u32 initValue, u32 priority)
{
    GF_ASSERT(screenScrollMgr);
    GF_ASSERT(screenScrollMgr->scrollTask == NULL);

    screenScrollMgr->start = start;
    screenScrollMgr->end = end;
    screenScrollMgr->scrollPos = 0;
    screenScrollMgr->scrollSpeed = speed;
    screenScrollMgr->offsetRegisterAddr = bg;
    screenScrollMgr->initValue = initValue;

    ScreenScrollManager_CreateSineTable(screenScrollMgr->sineTable, SCREEN_SCROLL_MANAGER_BUFFER_SIZE, angleIncrement, amplitude);

    screenScrollMgr->scrollTask = SysTask_Start(ScreenScrollManager_UpdateScrollY, screenScrollMgr, priority);

    MI_CpuFill32(screenScrollMgr->buffer1, screenScrollMgr->initValue, sizeof(u32) * SCREEN_SCROLL_MANAGER_BUFFER_SIZE);
    MI_CpuFill32(screenScrollMgr->buffer2, screenScrollMgr->initValue, sizeof(u32) * SCREEN_SCROLL_MANAGER_BUFFER_SIZE);
}

void ScreenScrollManager_Stop(ScreenScrollManager *screenScrollMgr)
{
    GF_ASSERT(screenScrollMgr);

    if (screenScrollMgr->scrollTask) {
        SysTask_Done(screenScrollMgr->scrollTask);
        screenScrollMgr->scrollTask = NULL;

        void *writeBuffer = BufferManager_GetWriteBuffer(screenScrollMgr->bufferManager);
        memset(writeBuffer, screenScrollMgr->initValue, sizeof(u32) * SCREEN_SCROLL_MANAGER_BUFFER_SIZE);
    }
}

void ScreenScrollManager_Delete(ScreenScrollManager *screenScrollMgr)
{
    ScreenScrollManager_Stop(screenScrollMgr);
    ScreenScrollManager_StopDMA();
    BufferManager_Delete(screenScrollMgr->bufferManager);
    Heap_FreeToHeap(screenScrollMgr);
}

void *ScreenScrollManager_GetWriteBuffer(ScreenScrollManager *screenScrollMgr)
{
    return BufferManager_GetWriteBuffer(screenScrollMgr->bufferManager);
}

void ScreenScrollManager_SwapBuffers(ScreenScrollManager *screenScrollMgr)
{
    if (screenScrollMgr == NULL) {
        return;
    }

    if (screenScrollMgr->scrollTask) {
        BufferManager_SwapBuffers(screenScrollMgr->bufferManager);

        void *writeBuffer = BufferManager_GetWriteBuffer(screenScrollMgr->bufferManager);
        MI_CpuFill32(writeBuffer, screenScrollMgr->initValue, sizeof(u32) * SCREEN_SCROLL_MANAGER_BUFFER_SIZE);
    }
}

void ScreenScrollManager_RestartDMA(ScreenScrollManager *screenScrollMgr)
{
    if (screenScrollMgr == NULL) {
        return;
    }

    if (screenScrollMgr->scrollTask) {
        ScreenScrollManager_StopDMA();
        ScreenScrollManager_StartDMA(screenScrollMgr);
    }
}

void ScreenScrollManager_CreateSineTable(s16 *dest, u32 entryCount, u16 angleIncrement, fx32 amplitude)
{
    u16 angle = 0;
    for (int i = 0; i < entryCount; i++) {
        dest[i] = FX_Mul(FX_SinIdx(angle), amplitude) >> FX32_SHIFT;
        angle += angleIncrement;
    }
}

static void ScreenScrollManager_UpdateScrollX(SysTask *task, void *param)
{
    ScreenScrollManager *screenScrollMgr = param;
    u32 *writeBuffer = BufferManager_GetWriteBuffer(screenScrollMgr->bufferManager);
    u8 scrollPos = screenScrollMgr->scrollPos / SCREEN_SCROLL_MANAGER_SCALING_FACTOR;

    for (int i = screenScrollMgr->start; i <= screenScrollMgr->end; i++) {
        s16 xOff = writeBuffer[i] & 0xffff;
        u16 yOff = writeBuffer[i] >> 16;

        xOff += screenScrollMgr->sineTable[scrollPos];
        writeBuffer[i] = (yOff << 16) | (xOff & 0xffff);
        scrollPos = (scrollPos + 1) % SCREEN_SCROLL_MANAGER_BUFFER_SIZE;
    }

    screenScrollMgr->scrollPos += screenScrollMgr->scrollSpeed;

    if (screenScrollMgr->scrollPos >= SCREEN_SCROLL_MANAGER_MAX_SCROLL) {
        screenScrollMgr->scrollPos %= SCREEN_SCROLL_MANAGER_MAX_SCROLL;
    } else if (screenScrollMgr->scrollPos < 0) {
        screenScrollMgr->scrollPos += SCREEN_SCROLL_MANAGER_MAX_SCROLL;
    }
}

static void ScreenScrollManager_UpdateScrollY(SysTask *task, void *param)
{
    ScreenScrollManager *screenScrollMgr = param;
    u32 *writeBuffer = BufferManager_GetWriteBuffer(screenScrollMgr->bufferManager);
    u8 scrollPos = screenScrollMgr->scrollPos / SCREEN_SCROLL_MANAGER_SCALING_FACTOR;

    for (int i = screenScrollMgr->start; i <= screenScrollMgr->end; i++) {
        s16 xOff = writeBuffer[i] & 0xffff;
        u16 yOff = writeBuffer[i] >> 16;

        yOff += screenScrollMgr->sineTable[(scrollPos + 180) % SCREEN_SCROLL_MANAGER_BUFFER_SIZE];
        writeBuffer[i] = (yOff << 16) | (xOff & 0xffff);
        scrollPos = (scrollPos + 1) % SCREEN_SCROLL_MANAGER_BUFFER_SIZE;
    }

    screenScrollMgr->scrollPos += screenScrollMgr->scrollSpeed;

    if (screenScrollMgr->scrollPos >= SCREEN_SCROLL_MANAGER_MAX_SCROLL) {
        screenScrollMgr->scrollPos %= SCREEN_SCROLL_MANAGER_MAX_SCROLL;
    } else if (screenScrollMgr->scrollPos < 0) {
        screenScrollMgr->scrollPos += SCREEN_SCROLL_MANAGER_MAX_SCROLL;
    }
}

void ScreenScrollManager_StopDMA(void)
{
    BufferManager_StopDMA();
}

void ScreenScrollManager_StartDMA(const ScreenScrollManager *screenScrollManager)
{
    GF_ASSERT(screenScrollManager);
    const void *readBuffer = BufferManager_GetReadBuffer(screenScrollManager->bufferManager);
    DC_FlushRange(readBuffer, sizeof(u32) * SCREEN_SCROLL_MANAGER_BUFFER_SIZE);

    BufferManager_StartDMA(readBuffer, (void *)screenScrollManager->offsetRegisterAddr, sizeof(u32), BUFFER_MANAGER_DMA_TYPE_32BIT);
}
