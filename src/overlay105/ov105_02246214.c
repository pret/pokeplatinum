#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "overlay105/ov105_02246214.h"

void ov105_02246214(UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1);
void ov105_02246244(UnkStruct_0205AA50 * param0);
void ov105_02246260(UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1);
void ov105_0224628C(UnkStruct_0205AA50 * param0, int param1);

static const UnkStruct_ov61_0222C884 Unk_ov105_02246458[] = {
    {0x1, 0x1, 0x1, 0xA, 0x2, 0xD, 0x1},
    {0x1, 0x16, 0x1, 0xA, 0x2, 0xD, 0x15},
    {0x1, 0x1, 0x4, 0x9, 0x2, 0xD, 0x29},
    {0x1, 0x1, 0x6, 0x9, 0x2, 0xD, 0x3B},
    {0x1, 0x1, 0x8, 0x9, 0x2, 0xD, 0x4D},
    {0x1, 0x2, 0x13, 0x11, 0x4, 0xC, 0x5F},
    {0x1, 0x17, 0x13, 0x8, 0x4, 0xD, 0xA3},
    {0x1, 0x17, 0x11, 0x8, 0x6, 0xD, 0xC3},
    {0x1, 0x16, 0x4, 0x9, 0x2, 0xD, 0xF3},
    {0x1, 0x16, 0x6, 0x9, 0x2, 0xD, 0x105}
};

void ov105_02246214 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1)
{
    u8 v0;
    const UnkStruct_ov61_0222C884 * v1 = Unk_ov105_02246458;

    for (v0 = 0; v0 < 10; v0++) {
        sub_0201A8D4(param0, &param1[v0], &v1[v0]);
        sub_0201ADA4(&param1[v0], 0);
    }

    return;
}

void ov105_02246244 (UnkStruct_0205AA50 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 10; v0++) {
        sub_0201A8FC(&param0[v0]);
    }

    return;
}

void ov105_02246260 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1)
{
    sub_0200DAA4(param0, 1, (1024 - 9), 11, 0, 93);
    sub_0200DC48(param1, 1, (1024 - 9), 11);

    return;
}

void ov105_0224628C (UnkStruct_0205AA50 * param0, int param1)
{
    sub_0200DD0C(param0->unk_00, sub_0201C290(param0), ((1024 - 9) - ((18 + 12))), 10, param1, 93);
    sub_0201ADA4(param0, 15);
    sub_0200E060(param0, 1, ((1024 - 9) - ((18 + 12))), 10);

    return;
}
