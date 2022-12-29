#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E6C_decl.h"

#include "struct_defs/struct_0207E060.h"

#include "unk_02017E74.h"
#include "unk_02025E68.h"
#include "unk_0207E060.h"
#include "overlay004/ov4_021D0D80.h"

UnkStruct_0207E060 * sub_0207E060 (const UnkStruct_02025E6C * param0, u32 param1)
{
    UnkStruct_0207E060 * v0;
    BOOL v1;

    v0 = sub_02018144(param1, (sizeof(UnkStruct_0207E060)));
    memset(v0, 0, (sizeof(UnkStruct_0207E060)));

    v0->unk_1B = 28;
    v0->unk_1E = sub_02025F30(param0);
    v0->unk_1D = sub_02025F8C(param0);
    v0->unk_18 = sub_02025FCC(param0);
    v0->unk_19 = sub_02025FD8(param0);

    v1 = ov4_021D222C(v0, (sizeof(UnkStruct_0207E060)));
    GF_ASSERT(v1 == 1);

    return v0;
}

void sub_0207E0B0 (UnkStruct_0207E060 * param0)
{
    sub_020181C4(param0);
}
