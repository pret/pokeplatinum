#include "overlay022/ov22_0225894C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02029D04_decl.h"

#include "overlay022/struct_ov22_0225899C.h"

#include "unk_020298BC.h"

void ov22_0225894C(const UnkStruct_02029D04 *param0, UnkStruct_ov22_0225899C *param1)
{
    int v0;
    u32 v1;

    for (v0 = 0; v0 < 100; v0++) {
        param1->unk_00[v0] = sub_02029D94(param0, v0);
    }

    for (v0 = 0; v0 < 18; v0++) {
        param1->unk_190[v0] = 18;
    }

    for (v0 = 0; v0 < 18; v0++) {
        v1 = sub_02029DD4(param0, v0);

        if (v1 != 18) {
            param1->unk_190[v1] = v0;
        }
    }
}

u32 ov22_0225899C(const UnkStruct_ov22_0225899C *param0, u32 param1)
{
    GF_ASSERT(param1 < 100);
    return param0->unk_00[param1];
}

u32 ov22_022589B0(const UnkStruct_ov22_0225899C *param0, u32 param1)
{
    return param0->unk_190[param1];
}

u32 ov22_022589BC(const UnkStruct_ov22_0225899C *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < 18; v0++) {
        if (param0->unk_190[v0] == param1) {
            return v0;
        }
    }

    return v0;
}
