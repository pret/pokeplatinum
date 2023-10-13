#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_0201CD38_decl.h"

#include "functypes/funcptr_0201CE28.h"

#include "unk_0200D9E8.h"
#include "unk_0201CCF0.h"

UnkStruct_0201CD38 * SysTask_Start (UnkFuncPtr_0201CE28 param0, void * param1, u32 param2)
{
    return sub_0201CE14(gCoreSys.unk_18, param0, param1, param2);
}

UnkStruct_0201CD38 * sub_0200DA04 (UnkFuncPtr_0201CE28 param0, void * param1, u32 param2)
{
    return sub_0201CE14(gCoreSys.unk_1C, param0, param1, param2);
}

UnkStruct_0201CD38 * sub_0200DA20 (UnkFuncPtr_0201CE28 param0, void * param1, u32 param2)
{
    return sub_0201CE14(gCoreSys.unk_24, param0, param1, param2);
}

UnkStruct_0201CD38 * sub_0200DA3C (UnkFuncPtr_0201CE28 param0, void * param1, u32 param2)
{
    return sub_0201CE14(gCoreSys.unk_20, param0, param1, param2);
}

void sub_0200DA58 (UnkStruct_0201CD38 * param0)
{
    sub_0201CEA8(param0);
}
