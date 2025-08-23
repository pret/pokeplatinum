#ifndef POKEPLATINUM_SCREEN_SCROLL_MANAGER_H
#define POKEPLATINUM_SCREEN_SCROLL_MANAGER_H

#include "constants/heap.h"

#include "sys_task_manager.h"
// #include "buffer_manager.h"

#define SCREEN_SCROLL_MANAGER_BUFFER_SIZE    192
#define SCREEN_SCROLL_MANAGER_SCALING_FACTOR 100
#define SCREEN_SCROLL_MANAGER_MAX_SCROLL     (SCREEN_SCROLL_MANAGER_BUFFER_SIZE * SCREEN_SCROLL_MANAGER_SCALING_FACTOR)

struct BufferManager;

typedef struct ScreenScrollManager {
    u32 buffer1[SCREEN_SCROLL_MANAGER_BUFFER_SIZE];
    u32 buffer2[SCREEN_SCROLL_MANAGER_BUFFER_SIZE];
    struct BufferManager *bufferManager;
    SysTask *scrollTask;
    BOOL unused;
    s16 sineTable[SCREEN_SCROLL_MANAGER_BUFFER_SIZE];
    u8 start;
    u8 end;
    u32 offsetRegisterAddr;
    u32 initValue;
    s16 scrollPos;
    s16 scrollSpeed;
} ScreenScrollManager;

ScreenScrollManager *ScreenScrollManager_New(enum HeapId heapID);
void ScreenScrollManager_ScrollX(ScreenScrollManager *screenScrollMgr, u8 start, u8 end, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bg, u32 initValue, u32 priority);
void ScreenScrollManager_ScrollY(ScreenScrollManager *screenScrollMgr, u8 start, u8 end, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bg, u32 initValue, u32 priority);
void ScreenScrollManager_Stop(ScreenScrollManager *screenScrollMgr);
void ScreenScrollManager_Delete(ScreenScrollManager *screenScrollMgr);
void *ScreenScrollManager_GetWriteBuffer(ScreenScrollManager *screenScrollMgr);
void ScreenScrollManager_SwapBuffers(ScreenScrollManager *screenScrollMgr);
void ScreenScrollManager_RestartDMA(ScreenScrollManager *screenScrollMgr);
void ScreenScrollManager_CreateSineTable(s16 *dest, u32 entryCount, u16 angleIncrement, fx32 amplitude);

#endif // POKEPLATINUM_SCREEN_SCROLL_MANAGER_H
