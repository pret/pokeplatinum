#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "overlay106/ov106_022436E0.h"

void ov106_022436E0(UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1);
void ov106_02243710(UnkStruct_0205AA50 * param0);
void ov106_0224372C(UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1);
void ov106_02243758(UnkStruct_0205AA50 * param0, int param1);

static const UnkStruct_ov61_0222C884 Unk_ov106_02243860[] = {
    {0x0, 0x2, 0x13, 0x1B, 0x4, 0xC, 0x1},
    {0x0, 0x18, 0xD, 0x7, 0x4, 0xD, 0x6D},
    {0x0, 0xA, 0x14, 0x9, 0x2, 0xD, 0x89},
    {0x1, 0x1, 0x0, 0x1F, 0x16, 0xD, 0x1}
};

void ov106_022436E0 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1)
{
    u8 v0;
    const UnkStruct_ov61_0222C884 * v1 = Unk_ov106_02243860;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0201A8D4(param0, &param1[v0], &v1[v0]);
        sub_0201ADA4(&param1[v0], 0);
    }

    return;
}

void ov106_02243710 (UnkStruct_0205AA50 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0201A8FC(&param0[v0]);
    }

    return;
}

void ov106_0224372C (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1)
{
    sub_0200DAA4(param0, 0, (1024 - 9), 11, 0, 98);
    sub_0200DC48(param1, 1, (1024 - 9), 11);

    return;
}

void ov106_02243758 (UnkStruct_0205AA50 * param0, int param1)
{
    sub_0200DD0C(param0->unk_00, sub_0201C290(param0), ((1024 - 9) - ((18 + 12))), 10, param1, 98);
    sub_0201ADA4(param0, 15);
    sub_0200E060(param0, 0, ((1024 - 9) - ((18 + 12))), 10);

    return;
}
