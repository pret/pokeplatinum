#include "sys_task.h"

#include <nitro.h>
#include <string.h>

#include "core_sys.h"
#include "sys_task_manager.h"

SysTask *SysTask_Start(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gCoreSys.mainTaskMgr, callback, param, priority);
}

SysTask *SysTask_ExecuteOnVBlank(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gCoreSys.vBlankTaskMgr, callback, param, priority);
}

SysTask *SysTask_CreateOnPrintQueue(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gCoreSys.unk_24, callback, param, priority);
}

SysTask *SysTask_ExecuteAfterVBlank(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gCoreSys.postVBlankTaskMgr, callback, param, priority);
}

void SysTask_Done(SysTask *task)
{
    SysTask_Delete(task);
}
