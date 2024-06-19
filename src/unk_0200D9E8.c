#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/sys_task.h"

#include "functypes/sys_task_func.h"

#include "unk_0200D9E8.h"
#include "sys_task_manager.h"

SysTask * SysTask_Start (SysTaskFunc param0, void * param1, u32 param2)
{
    return SysTaskManager_AddTask(gCoreSys.unk_18, param0, param1, param2);
}

SysTask * CoreSys_ExecuteOnVBlank (SysTaskFunc param0, void * param1, u32 param2)
{
    return SysTaskManager_AddTask(gCoreSys.unk_1C, param0, param1, param2);
}

SysTask * sub_0200DA20 (SysTaskFunc param0, void * param1, u32 param2)
{
    return SysTaskManager_AddTask(gCoreSys.unk_24, param0, param1, param2);
}

SysTask * CoreSys_ExecuteAfterVBlank (SysTaskFunc param0, void * param1, u32 param2)
{
    return SysTaskManager_AddTask(gCoreSys.unk_20, param0, param1, param2);
}

void SysTask_Done (SysTask * param0)
{
    SysTask_Delete(param0);
}
