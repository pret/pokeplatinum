#ifndef POKEPLATINUM_HBLANK_SYSTEM_H
#define POKEPLATINUM_HBLANK_SYSTEM_H

#include "constants/heap.h"

#define MAX_HBLANK_TASKS 2

typedef struct HBlankTask HBlankTask;

typedef void (* HBlankCallback)(HBlankTask *task, void *param);

struct HBlankTask {
    BOOL used;
    void *param;
    HBlankCallback callback;
};

typedef struct HBlankSystem {
    BOOL active;
    HBlankTask tasks[MAX_HBLANK_TASKS];
} HBlankSystem;

HBlankSystem *HBlankSystem_New(enum HeapId heapID);
void HBlankSystem_Delete(HBlankSystem *hBlankSystem);
void HBlankSystem_Start(HBlankSystem *hBlankSystem);
void HBlankSystem_Stop(HBlankSystem *hBlankSystem);
HBlankTask *HBlankSystem_StartTask(HBlankSystem *hBlankSystem, HBlankCallback callback, void *param);
void HBlankTask_Delete(HBlankTask *hBlankSystem);

#endif // POKEPLATINUM_HBLANK_SYSTEM_H
