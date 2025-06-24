#ifndef POKEPLATINUM_POKETCH_TASK_H
#define POKEPLATINUM_POKETCH_TASK_H

#include "sys_task_manager.h"

#define POKETCH_TASK_LIST_VALIDATOR 0x12345678 // If activeList[VALIDATOR_IDX] is not this value, tasks will not be added or removed.
#define POKETCH_EMPTY_TASK          0xFFFFFFFF

#define NUM_SLOTS_IDX 0
#define VALIDATOR_IDX 1
#define BASE_IDX      2

typedef struct PoketchTask {
    u32 taskId;
    SysTaskFunc taskFunc;
    u32 extraDataSize;
} PoketchTask;

typedef struct PoketchTaskManager {
    u32 taskId;
    u32 poketchTaskState;
    void *taskData;
    void *extraData;
    const void *constTaskData;
    SysTask *task;
} PoketchTaskManager;

#include "bg_window.h"

void PoketchTask_InitActiveTaskList(u32 *activeList, u32 numTaskSlots);
BOOL PoketchTask_TaskIsNotActive(u32 *activeList, u32 taskId);
BOOL PoketchTask_NoActiveTasks(u32 *activeList);
void PoketchTask_Start(const PoketchTask *appTasks, u32 taskId, void *taskData, const void *constTaskData, u32 *activeList, u32 taskPriority, u32 heapID);
void PoketchTask_EndTask(u32 *activeList, PoketchTaskManager *taskMan);
void *PoketchTask_GetTaskData(PoketchTaskManager *taskMan);
const void *PoketchTask_GetConstTaskData(PoketchTaskManager *taskMan);
void *PoketchTask_GetExtraData(PoketchTaskManager *taskMan);
u32 PoketchTask_GetState(PoketchTaskManager *taskMan);
void PoketchTask_IncrementState(PoketchTaskManager *taskMan);
void PoketchTask_SetState(PoketchTaskManager *taskMan, u32 state);
void ov25_02255258(u16 *tileBuffer, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6);
void PoketchTask_MapToActivePaletteFromLuminance(u16 *rawData, u32 numPaletteEntries);
void PoketchTask_FillPaletteFromActivePaletteSlot(u32 slot, u32 offset);
void PoketchTask_LoadPokemonIconLuminancePalette(u32 offset);
void PoketchTask_LoadPokemonIcons(u32 offset, const u32 *iconIdxList, u32 numIcons, BOOL isLarge);
void ov25_02255440(BgConfig *bgConfig, u32 digit, u32 bgLayer);

#endif // POKEPLATINUM_POKETCH_TASK_H
