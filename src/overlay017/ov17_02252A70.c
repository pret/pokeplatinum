#include "overlay017/ov17_02252A70.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02029C88_decl.h"

#include "graphics.h"
#include "unk_020298BC.h"

u32 ov17_02252A70(const UnkStruct_02029C88 *param0, const u8 *param1)
{
    u8 v0;
    u32 v1;
    int v2;

    v1 = 0;

    for (v2 = 0; v2 < (21 - 1); v2++) {
        if (sub_0202A488(param0, v2) == 1) {
            v0 = sub_0202A580(param0, v2);
            v1 += param1[v0];
        }
    }

    return v1;
}

u8 *ov17_02252A9C(u32 param0, u32 param1)
{
    return LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, 3 + param1, 0, param0, 0);
}
