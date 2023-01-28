#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02022550_decl.h"

#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay105/struct_ov105_02245AAC.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "overlay105/ov105_02245AAC.h"

void ov105_02245AAC(UnkStruct_ov105_02245AAC * param0);
UnkStruct_02022550 * ov105_02245BA4(UnkStruct_ov105_02245AAC * param0, u32 param1, u32 param2, u32 param3, int param4, u8 param5);
void ov105_02245C50(UnkStruct_ov105_02245AAC * param0);
static void ov105_02245C98(void);

static const u8 Unk_ov105_02246444[4] = {
    0x1,
    0x1,
    0x1,
    0x1
};

void ov105_02245AAC (UnkStruct_ov105_02245AAC * param0)
{
    int v0;

    ov105_02245C98();
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 93);

    param0->unk_00 = sub_020095C4((6 + 2 + 1), &param0->unk_04, 93);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(Unk_ov105_02246444[v0], v0, 93);
    }

    param0->unk_1A0[0][0] = sub_0200985C(param0->unk_190[0], 151, 0, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 93);
    param0->unk_1A0[0][1] = sub_020098B8(param0->unk_190[1], 151, 36, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 8, 93);
    param0->unk_1A0[0][2] = sub_02009918(param0->unk_190[2], 151, 2, 1, 0, 2, 93);
    param0->unk_1A0[0][3] = sub_02009918(param0->unk_190[3], 151, 1, 1, 0, 3, 93);

    for (v0 = 0; v0 < 1; v0++) {
        sub_0200A328(param0->unk_1A0[v0][0]);
        sub_0200A5C8(param0->unk_1A0[v0][1]);
    }

    GX_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GX_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    return;
}

UnkStruct_02022550 * ov105_02245BA4 (UnkStruct_ov105_02245AAC * param0, u32 param1, u32 param2, u32 param3, int param4, u8 param5)
{
    int v0;
    UnkStruct_ov19_021DA864 v1;
    UnkStruct_02022550 * v2;

    sub_020093B4(&v1, param1, param1, param1, param1, 0xffffffff, 0xffffffff, 0, param4, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v3;

        v3.unk_00 = param0->unk_00;
        v3.unk_04 = &v1;
        v3.unk_08.x = 0;
        v3.unk_08.y = 0;
        v3.unk_08.z = 0;
        v3.unk_14.x = FX32_ONE;
        v3.unk_14.y = FX32_ONE;
        v3.unk_14.z = FX32_ONE;
        v3.unk_20 = 0;
        v3.unk_24 = param3;

        if (param5 == 0) {
            v3.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        } else {
            v3.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
        }

        v3.unk_2C = 93;

        if (param5 == 1) {
            v3.unk_08.y += (192 << FX32_SHIFT);
        }

        v2 = sub_02021AA0(&v3);

        sub_02021CC8(v2, 1);
        sub_02021D6C(v2, param2);
    }

    return v2;
}

void ov105_02245C50 (UnkStruct_ov105_02245AAC * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 1; v0++) {
        sub_0200A4E4(param0->unk_1A0[v0][0]);
        sub_0200A6DC(param0->unk_1A0[v0][1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_190[v0]);
    }

    sub_02021964(param0->unk_00);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    return;
}

static void ov105_02245C98 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            32, 2048, 2048, 93
        };

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_64K);
    }

    sub_0201F834(8, 93);
    sub_0201E994();
    sub_0201F8E4();

    return;
}
