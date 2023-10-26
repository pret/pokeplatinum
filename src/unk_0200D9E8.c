#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/sys_task.h"

#include "functypes/sys_task_func.h"

#include "unk_0200D9E8.h"
#include "unk_0201CCF0.h"

SysTask * SysTask_Start (SysTaskFunc param0, void * param1, u32 param2)
{
    return sub_0201CE14(gCoreSys.unk_18, param0, param1, param2);
}

SysTask * sub_0200DA04 (SysTaskFunc param0, void * param1, u32 param2)
{
    return sub_0201CE14(gCoreSys.unk_1C, param0, param1, param2);
}

SysTask * sub_0200DA20 (SysTaskFunc param0, void * param1, u32 param2)
{
    return sub_0201CE14(gCoreSys.unk_24, param0, param1, param2);
}

SysTask * sub_0200DA3C (SysTaskFunc param0, void * param1, u32 param2)
{
    return sub_0201CE14(gCoreSys.unk_20, param0, param1, param2);
}

void SysTask_Done (SysTask * param0)
{
    sub_0201CEA8(param0);
}
