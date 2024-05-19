#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A790_decl.h"
#include "savedata.h"

#include "struct_defs/struct_02049FA8.h"

#include "unk_0203A6DC.h"
#include "unk_0203D178.h"

void sub_0203D178 (Location * param0)
{
    static const Location v0 = {
        415, -1, 4, 6, 0
    };

    *param0 = v0;
}

void sub_0203D190 (Location * param0)
{
    static const Location v0 = {
        411, -1, 116, 886, 1
    };

    *param0 = v0;
}

void sub_0203D1A8 (SaveData * param0)
{
    UnkStruct_0203A790 * v0 = sub_0203A790(param0);
    Location * v1 = sub_0203A720(v0);

    sub_0203D178(v1);
}
