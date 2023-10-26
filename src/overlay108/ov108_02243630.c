#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_02018340.h"
#include "overlay108/ov108_02243630.h"

void ov108_02243630(BGL * param0, Window * param1);
void ov108_02243660(Window * param0);

static const UnkStruct_ov61_0222C884 Unk_ov108_02243774[] = {
    {0x1, 0x2, 0x13, 0x1B, 0x4, 0xC, 0x1},
    {0x1, 0x18, 0xD, 0x7, 0x4, 0xD, 0x6D}
};

void ov108_02243630 (BGL * param0, Window * param1)
{
    u8 v0;
    const UnkStruct_ov61_0222C884 * v1 = Unk_ov108_02243774;

    for (v0 = 0; v0 < 2; v0++) {
        sub_0201A8D4(param0, &param1[v0], &v1[v0]);
        BGL_FillWindow(&param1[v0], 0);
    }

    return;
}

void ov108_02243660 (Window * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 2; v0++) {
        BGL_DeleteWindow(&param0[v0]);
    }

    return;
}
