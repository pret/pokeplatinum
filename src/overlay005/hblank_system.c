#include "overlay005/hblank_system.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "system.h"

static void HBlankSystem_Init(HBlankSystem *hBlankSystem);
static void HBlankTask_Init(HBlankTask *task);
static void HBlankSystem_HBlankCallback(void *param);
static void HBlankTask_DummyCallback(HBlankTask *task, void *param);
static HBlankTask *HBlankSystem_GetAvailableTask(HBlankSystem *hBlankSystem);

HBlankSystem *HBlankSystem_New(enum HeapId heapID)
{
    HBlankSystem *hBlankSystem = Heap_AllocFromHeap(heapID, sizeof(HBlankSystem));
    HBlankSystem_Init(hBlankSystem);

    return hBlankSystem;
}

void HBlankSystem_Delete(HBlankSystem *hBlankSystem)
{
    if (hBlankSystem == NULL) {
        return;
    }

    if (hBlankSystem->active == TRUE) {
        HBlankSystem_Stop(hBlankSystem);
    }

    HBlankSystem_Init(hBlankSystem);
    Heap_FreeToHeap(hBlankSystem);
}

void HBlankSystem_Start(HBlankSystem *hBlankSystem)
{
    BOOL result = SetHBlankCallback(HBlankSystem_HBlankCallback, hBlankSystem);
    GF_ASSERT(result == TRUE);

    hBlankSystem->active = TRUE;
}

void HBlankSystem_Stop(HBlankSystem *hBlankSystem)
{
    BOOL result = SetHBlankCallback(NULL, NULL);
    GF_ASSERT(result == TRUE);

    hBlankSystem->active = FALSE;
}

HBlankTask *HBlankSystem_StartTask(HBlankSystem *hBlankSystem, HBlankCallback callback, void *param)
{
    HBlankTask *task = HBlankSystem_GetAvailableTask(hBlankSystem);
    GF_ASSERT(task);

    if (task) {
        task->param = param;
        task->callback = callback;
        task->used = TRUE;
    }

    return task;
}

void HBlankTask_Delete(HBlankTask *task)
{
    HBlankTask_Init(task);
}

static void HBlankSystem_Init(HBlankSystem *hBlankSystem)
{
    memset(hBlankSystem, 0, sizeof(HBlankSystem));
    hBlankSystem->active = FALSE;

    for (int i = 0; i < MAX_HBLANK_TASKS; i++) {
        HBlankTask_Init(&hBlankSystem->tasks[i]);
    }
}

static void HBlankTask_Init(HBlankTask *task)
{
    task->used = FALSE;
    task->callback = HBlankTask_DummyCallback;
    task->param = NULL;
}

static void HBlankSystem_HBlankCallback(void *param)
{
    HBlankSystem *hBlankSystem = param;

    for (int i = 0; i < MAX_HBLANK_TASKS; i++) {
        hBlankSystem->tasks[i].callback(&hBlankSystem->tasks[i], hBlankSystem->tasks[i].param);
    }
}

static void HBlankTask_DummyCallback(HBlankTask *task, void *param)
{
}

static HBlankTask *HBlankSystem_GetAvailableTask(HBlankSystem *hBlankSystem)
{
    for (int i = 0; i < MAX_HBLANK_TASKS; i++) {
        if (hBlankSystem->tasks[i].used == FALSE) {
            return &hBlankSystem->tasks[i];
        }
    }

    return NULL;
}
