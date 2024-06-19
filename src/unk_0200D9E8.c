#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/sys_task.h"

#include "functypes/sys_task_func.h"

#include "unk_0200D9E8.h"
#include "sys_task_manager.h"

SysTask *SysTask_Start(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gCoreSys.mainTaskMgr, callback, param, priority);
}

SysTask *CoreSys_ExecuteOnVBlank(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gCoreSys.vBlankTaskMgr, callback, param, priority);
}

SysTask *sub_0200DA20(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gCoreSys.unk_24, callback, param, priority);
}

SysTask *CoreSys_ExecuteAfterVBlank(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTaskManager_AddTask(gCoreSys.postVBlankTaskMgr, callback, param, priority);
}

void SysTask_Done(SysTask *task)
{
    SysTask_Delete(task);
}
