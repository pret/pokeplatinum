#include "unk_0202414C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202144C.h"
#include "struct_defs/struct_02024184.h"

UnkStruct_0202144C sub_0202414C(const UnkStruct_02024184 *param0, const u16 param1)
{
    int v0;
    UnkStruct_0202144C v1;

    for (v0 = 0; v0 < param0->unk_0C - 1; v0++) {
        if (param0->unk_00[v0 + 1] > param1) {
            break;
        }
    }

    v1.unk_00 = param0->unk_04[v0];
    v1.unk_01 = param0->unk_08[v0];

    return v1;
}

void sub_02024184(const void *param0, UnkStruct_02024184 *param1)
{
    const u8 *v0 = param0;
    param1->unk_0C = *((u32 *)v0);

    v0 = v0 + sizeof(u32);
    param1->unk_00 = (u16 *)v0;

    v0 = v0 + (sizeof(u16) * param1->unk_0C);
    param1->unk_04 = (u8 *)v0;

    v0 = v0 + (sizeof(u8) * param1->unk_0C);
    param1->unk_08 = (u8 *)v0;
}
