#include "sys_task.h"

#include <nitro.h>
#include <string.h>

#include "sys_task_manager.h"
#include "system.h"

SysTask *SysTask_Start(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gSystem.mainTaskMgr, callback, param, priority);
}

SysTask *SysTask_ExecuteOnVBlank(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gSystem.vBlankTaskMgr, callback, param, priority);
}

SysTask *SysTask_CreateOnPrintQueue(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gSystem.printTaskMgr, callback, param, priority);
}

SysTask *SysTask_ExecuteAfterVBlank(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gSystem.postVBlankTaskMgr, callback, param, priority);
}

void SysTask_Done(SysTask *task)
{
    SysTask_Delete(task);
}
