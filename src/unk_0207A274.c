#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_0202631C.h"
#include "unk_02073C2C.h"
#include "unk_0207A274.h"

u32 sub_0207A274 (UnkStruct_021C0794 * param0)
{
    UnkStruct_02026324 * v0;

    v0 = sub_02027560(param0);
    return sub_0207A280(v0);
}

u32 sub_0207A280 (const UnkStruct_02026324 * param0)
{
    BOOL v0;

    v0 = sub_02027474(param0);

    if (v0 == 1) {
        return 1;
    }

    return 0;
}

u32 sub_0207A294 (u32 param0, u32 param1)
{
    if (param0 == 0) {
        return sub_020775A4(param1);
    }

    return param1;
}
