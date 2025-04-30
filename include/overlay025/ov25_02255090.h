#ifndef POKEPLATINUM_OV25_02255090_H
#define POKEPLATINUM_OV25_02255090_H

#include "sys_task_manager.h"

typedef struct PoketchTask {
    u32 taskId;
    SysTaskFunc taskFunc;
    u32 extraDataSize;
} PoketchTask;

typedef struct PoketchTaskManager {
    u32 taskId;
    u32 poketchTaskState;
    void *taskData;
    void *extraData; // only used by ov25, ov27, ov34
    const void *constTaskData;
    SysTask *task;
} PoketchTaskManager;

#include "bg_window.h"

void PoketchTask_InitActiveTaskList(u32 *activeList, u32 numTaskSlots);
BOOL PoketchTask_TaskIsNotActive(u32 *activeList, u32 taskId);
BOOL PoketchTask_NoActiveTasks(u32 *activeList);
void PoketchTask_Start(const PoketchTask *appTasks, u32 taskId, void *taskData, const void *constTaskData, u32 *activeList, u32 taskPriority, u32 heapID);
void PoketchTask_EndTask(u32 *activeList, PoketchTaskManager *task);
void *PoketchTask_GetTaskData(PoketchTaskManager *taskMan);
const void *PoketchTask_GetConstTaskData(PoketchTaskManager *taskMan);
void *PoketchTask_GetExtraData(PoketchTaskManager *taskMan);
u32 PoketchTask_GetState(PoketchTaskManager *taskMan);
void PoketchTask_IncrementState(PoketchTaskManager *taskMan);
void PoketchTask_SetState(PoketchTaskManager *taskMan, u32 state);
void ov25_02255258(u16 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6);
void ov25_MapToActivePaletteFromLuminance(u16 *param0, u32 param1);
void ov25_FillPaletteFromActivePaletteSlot(u32 param0, u32 param1);
void ov25_02255360(u32 param0);
void ov25_022553A0(u32 param0, const u32 *param1, u32 param2, BOOL param3);
void ov25_02255440(BgConfig *param0, u32 param1, u32 param2);

#endif // POKEPLATINUM_OV25_02255090_H
