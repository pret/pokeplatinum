#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A790_decl.h"
#include "unk_020244AC.h"

#include "struct_defs/struct_02049FA8.h"

#include "unk_0203A6DC.h"
#include "unk_0203D178.h"

void sub_0203D178 (UnkStruct_02049FA8 * param0)
{
    static const UnkStruct_02049FA8 v0 = {
        415, -1, 4, 6, 0
    };

    *param0 = v0;
}

void sub_0203D190 (UnkStruct_02049FA8 * param0)
{
    static const UnkStruct_02049FA8 v0 = {
        411, -1, 116, 886, 1
    };

    *param0 = v0;
}

void sub_0203D1A8 (SaveData * param0)
{
    UnkStruct_0203A790 * v0 = sub_0203A790(param0);
    UnkStruct_02049FA8 * v1 = sub_0203A720(v0);

    sub_0203D178(v1);
}
