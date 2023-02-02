#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02022550_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208D7BC.h"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "unk_0200C6E4.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "unk_02079D40.h"
#include "unk_0207C908.h"
#include "unk_0208C324.h"
#include "unk_0208EA44.h"
#include "unk_020920C0.h"
#include "unk_020923C0.h"

static void sub_0208F194(UnkStruct_0208D7BC * param0, u8 param1, u8 param2, u8 param3);
static void sub_0208EF0C(UnkStruct_0208D7BC * param0);
static void sub_0208FC30(UnkStruct_02022550 * param0, u32 param1, u32 param2, const s16 * param3);

static const UnkStruct_ov7_0224F358 Unk_020F41A8[] = {
    {0x1, 0x80, 0x18, 0x0, 0x0, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1, 0x90, 0x18, 0x0, 0x1, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1, 0xA0, 0x18, 0x0, 0x2, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1, 0xB0, 0x18, 0x0, 0x3, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1, 0xC0, 0x18, 0x0, 0x4, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1, 0xD0, 0x18, 0x0, 0x5, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1, 0xE0, 0x18, 0x0, 0x6, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1, 0xF0, 0x18, 0x0, 0x7, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x0, 0x10, 0x20, 0x0, 0x0, 0x0, 0xC, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x2, 0xC2, 0x30, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x2, 0xC2, 0x30, 0x0, 0x1, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x6, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xA, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xB, 0x18, 0x30, 0x0, 0x0, 0x0, 0x4, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xC, 0x50, 0x34, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xE, 0x0, 0x18, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xE, 0x0, 0x18, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x12, 0x30, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x13, 0x38, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x14, 0x40, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x15, 0x48, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x16, 0x50, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x17, 0x58, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0x98, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xA0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xA8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xB0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xB8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xC0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xC8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xD0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xD8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xE0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xE8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xD, 0xF0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0xF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x10, 0xD0, 0x30, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x10, 0xE0, 0x58, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x10, 0xD8, 0x78, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x10, 0x90, 0x78, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x10, 0x88, 0x58, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x19, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x19, 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x19, 0x0, 0x0, 0x0, 0x3, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x19, 0x0, 0x0, 0x0, 0x2, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x19, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x18, 0x62, 0x48, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x18, 0x62, 0x84, 0x0, 0x1, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1A, 0x84, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1B, 0xA4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1C, 0xC4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1D, 0xE4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1E, 0x84, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x1F, 0xA4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x20, 0xC4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x21, 0xE4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x22, 0x84, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x23, 0xA4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x24, 0xC4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x25, 0xE4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x26, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x27, 0xB4, 0x20, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x27, 0xB4, 0x78, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x28, 0x8, 0x84, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0},
    {0x2A, 0x4C, 0x30, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0}
};

static const u8 Unk_020F411C[] = {
    0x2,
    0x0,
    0x2,
    0x2,
    0x0,
    0x1,
    0x1,
    0x1,
    0x1,
    0x2,
    0x2,
    0x2,
    0x2,
    0x3,
    0x3,
    0x2,
    0x0
};

void sub_0208EA44 (UnkStruct_0208D7BC * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_0201DBEC(32, 19);

    param0->unk_414 = sub_0200C6E4(19);
    param0->unk_418 = sub_0200C704(param0->unk_414);

    {
        UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        UnkStruct_ov104_022412F4 v1 = {
            77,
            1024,
            1024,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->unk_414, &v0, &v1, 32);
        sub_0200C7C0(param0->unk_414, param0->unk_418, 77);
    }

    {
        UnkStruct_ov7_0224F2EC v2 = {
            "data/pst_chr.resdat",
            "data/pst_pal.resdat",
            "data/pst_cell.resdat",
            "data/pst_canm.resdat",
            NULL,
            NULL,
            "data/pst_h.cldat"
        };

        sub_0200C8F0(param0->unk_414, param0->unk_418, &v2);
    }
}

void sub_0208EAF4 (UnkStruct_0208D7BC * param0)
{
    sub_0200C8B0(param0->unk_414, param0->unk_418);
    sub_0200C8D4(param0->unk_414);
}

void sub_0208EB14 (UnkStruct_0208D7BC * param0)
{
    sub_02021E2C(param0->unk_41C[21], FX32_ONE);
    sub_02021E2C(param0->unk_41C[22], FX32_ONE);
    sub_02021E2C(param0->unk_41C[41], FX32_ONE);
    sub_02021E2C(param0->unk_41C[68], FX32_ONE);
    sub_02021E2C(param0->unk_41C[69], FX32_ONE);
}

void sub_0208EB64 (UnkStruct_0208D7BC * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 77; v0++) {
        param0->unk_41C[v0] = sub_0200CA08(param0->unk_414, param0->unk_418, &Unk_020F41A8[v0]);
    }

    sub_0208EF0C(param0);

    sub_02021CAC(param0->unk_41C[9], 0);
    sub_02021CAC(param0->unk_41C[10], 0);
    sub_02021CAC(param0->unk_41C[41], 0);

    sub_02021CAC(param0->unk_41C[42], 0);
    sub_02021CAC(param0->unk_41C[43], 0);
    sub_02021CAC(param0->unk_41C[44], 0);
    sub_02021CAC(param0->unk_41C[45], 0);
    sub_02021CAC(param0->unk_41C[46], 0);

    sub_02021CAC(param0->unk_41C[47], 0);

    sub_02021CAC(param0->unk_41C[48], 0);
    sub_02021CAC(param0->unk_41C[49], 0);
    sub_02021CAC(param0->unk_41C[50], 0);
    sub_02021CAC(param0->unk_41C[51], 0);
    sub_02021CAC(param0->unk_41C[52], 0);

    sub_02021CAC(param0->unk_41C[71], 0);
    sub_02021CAC(param0->unk_41C[72], 0);
    sub_02021CAC(param0->unk_41C[73], 0);
    sub_02021CAC(param0->unk_41C[74], 0);
    sub_02021CAC(param0->unk_41C[75], 0);

    sub_02021CAC(param0->unk_41C[76], 0);
}

static u8 sub_0208ECB8 (UnkStruct_0208D7BC * param0)
{
    u8 v0, v1 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (sub_0208D790(param0, v0) != 0) {
            v1++;
        }
    }

    return (23 * 8 + 4) - (24 + (v1 - 1) * 16) / 2;
}

void sub_0208ECF4 (UnkStruct_0208D7BC * param0)
{
    UnkStruct_02022550 ** v0;
    s16 v1, v2;
    s16 v3;
    u16 v4;
    u8 v5;
    u8 v6 = 0;

    v3 = sub_0208ECB8(param0);
    v0 = &param0->unk_41C[0];
    v6 = 0;

    for (v5 = 0; v5 < 8; v5++) {
        if (sub_0208D790(param0, v5) == 0) {
            sub_02021CAC(v0[v5], 0);
            continue;
        }

        v4 = sub_02021E24(v0[v5]);

        if (param0->unk_6A4 == v5) {
            if (v4 < 8) {
                sub_02021D6C(v0[v5], v4 + 8);
            }
        } else {
            if (v4 >= 8) {
                sub_02021D6C(v0[v5], v4 - 8);
            }
        }

        sub_0200D50C(v0[v5], &v1, &v2);

        if (param0->unk_6A4 >= v5) {
            v1 = v3 + v6 * 16;
        } else {
            v1 = v3 + 24 + (v6 - 1) * 16;
        }

        sub_0200D494(param0->unk_41C[v5], v1, v2);
        sub_02021CAC(v0[v5], 1);

        v6++;
    }
}

void sub_0208EDC4 (UnkStruct_0208D7BC * param0)
{
    u8 v0;

    if (sub_0208D7BC(param0) <= 1) {
        sub_0208EE10(param0, 0);
    }

    v0 = sub_0208ECB8(param0);

    sub_0200D494(param0->unk_41C[21], v0 + -12, 24);
    sub_0200D494(param0->unk_41C[22], (23 * 8 + 4) + ((23 * 8 + 4) - v0) + -4, 24);
}

void sub_0208EE10 (UnkStruct_0208D7BC * param0, u8 param1)
{
    if (sub_0208D7BC(param0) <= 1) {
        param1 = 0;
    }

    sub_02021CAC(param0->unk_41C[21], param1);
    sub_02021CAC(param0->unk_41C[22], param1);
}

void sub_0208EE3C (UnkStruct_0208D7BC * param0)
{
    u32 v0;

    if (param0->unk_250.unk_13_2 == 0) {
        v0 = 21;
    } else {
        v0 = 21 + param0->unk_250.unk_13_2 - 1;
    }

    sub_0200D948(param0->unk_414, param0->unk_418, 39, v0, 0, 0);
    sub_0200D97C(param0->unk_414, param0->unk_418, 39, 37 + Unk_020F411C[param0->unk_250.unk_13_2], 0, 6);
}

void sub_0208EE9C (UnkStruct_0208D7BC * param0)
{
    if (param0->unk_250.unk_50_0 == 7) {
        sub_02021CAC(param0->unk_41C[20], 0);
        sub_02021CAC(param0->unk_41C[76], 0);
    } else if (param0->unk_250.unk_50_0 != 0) {
        sub_02021CAC(param0->unk_41C[76], 0);
        sub_02021CAC(param0->unk_41C[20], 1);
        sub_02021D6C(param0->unk_41C[20], param0->unk_250.unk_50_0);
    } else {
        sub_02021CAC(param0->unk_41C[76], 1);
        sub_02021CAC(param0->unk_41C[20], 0);
    }
}

static void sub_0208EF0C (UnkStruct_0208D7BC * param0)
{
    u16 v0;

    sub_0208F16C(param0);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_250.unk_34[v0] == 0) {
            continue;
        }

        sub_0208F194(param0, 13 + v0, 5 + v0, MoveTable_GetMoveAttribute(param0->unk_250.unk_34[v0], 3));
    }

    sub_0208F71C(param0);
}

void sub_0208EF58 (UnkStruct_0208D7BC * param0)
{
    u16 v0;

    for (v0 = 11; v0 <= 19; v0++) {
        sub_0200D3EC(param0->unk_41C[v0], 0);
    }

    switch (param0->unk_6A4) {
    case 0:
        sub_0200D3EC(param0->unk_41C[11], 1);

        if (param0->unk_250.unk_10 == param0->unk_250.unk_11) {
            sub_0200D494(param0->unk_41C[11], 216, 80);
        } else {
            sub_0200D494(param0->unk_41C[11], 199, 80);
            sub_0200D3EC(param0->unk_41C[12], 1);
            sub_0200D494(
                param0->unk_41C[12], 233, 80);
        }
        break;
    case 3:
        for (v0 = 0; v0 < 4; v0++) {
            if (param0->unk_250.unk_34[v0] == 0) {
                continue;
            }

            sub_0208F194(param0, 13 + v0, 5 + v0, MoveTable_GetMoveAttribute(param0->unk_250.unk_34[v0], 3));
            sub_0200D3EC(param0->unk_41C[13 + v0], 1);
            sub_0200D494(param0->unk_41C[13 + v0], 151, 42 + v0 * 32);
        }

        if (param0->unk_24C->unk_18 != 0) {
            sub_0208F194(param0, 13 + 4, 5 + 4, MoveTable_GetMoveAttribute(param0->unk_24C->unk_18, 3));
            sub_0200D3EC(param0->unk_41C[13 + 4], 1);
            sub_0200D494(param0->unk_41C[13 + 4], 151, 42 + 4 * 32);
        }

        sub_0200D494(param0->unk_41C[11], 63, 52);
        sub_0200D494(param0->unk_41C[12], 63 + 34, 52);
        sub_0200D494(param0->unk_41C[18], (92 + 16), 72);
        break;
    case 5:
        for (v0 = 0; v0 < 4; v0++) {
            if (param0->unk_250.unk_34[v0] == 0) {
                continue;
            }

            sub_0208F194(param0, 13 + v0, 5 + v0, MoveTable_GetMoveAttribute(param0->unk_250.unk_34[v0], 11) + 18);
            sub_0200D3EC(param0->unk_41C[13 + v0], 1);
            sub_0200D494(param0->unk_41C[13 + v0], 151, 42 + v0 * 32);
        }

        if (param0->unk_24C->unk_18 != 0) {
            sub_0208F194(param0, 13 + 4, 5 + 4, MoveTable_GetMoveAttribute(param0->unk_24C->unk_18, 11) + 18);
            sub_0200D3EC(param0->unk_41C[13 + 4], 1);
            sub_0200D494(param0->unk_41C[13 + 4], 151, 42 + 4 * 32);
        }

        sub_0200D494(param0->unk_41C[11], 63, 52);
        sub_0200D494(param0->unk_41C[12], 63 + 34, 52);
        sub_0200D494(param0->unk_41C[18], (92 + 16), 72);
        break;
    }
}

void sub_0208F16C (UnkStruct_0208D7BC * param0)
{
    sub_0208F194(param0, 11, 3, param0->unk_250.unk_10);
    sub_0208F194(param0, 12, 4, param0->unk_250.unk_11);
}

static void sub_0208F194 (UnkStruct_0208D7BC * param0, u8 param1, u8 param2, u8 param3)
{
    sub_0200D948(param0->unk_414, param0->unk_418, sub_0207C944(), sub_0207C908(param3), 1, param2);
    sub_0200D414(param0->unk_41C[param1], sub_0207C92C(param3) + 3);
}

static void sub_0208F1E4 (UnkStruct_0208D7BC * param0, u8 * param1, s16 * param2, s16 * param3)
{
    s16 v0, v1;

    v1 = 42 + *param1 * 32;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D50C(param0->unk_41C[13 + v0], param2, param3);

        if (v1 == *param3) {
            *param1 = (u8)v0;
            break;
        }
    }
}

void sub_0208F22C (UnkStruct_0208D7BC * param0, u8 param1, u8 param2)
{
    s16 v0, v1, v2, v3;

    sub_0208F1E4(param0, &param1, &v0, &v1);
    sub_0208F1E4(param0, &param2, &v2, &v3);

    sub_0200D494(param0->unk_41C[13 + param1], v2, v3);
    sub_0200D494(param0->unk_41C[13 + param2], v0, v1);
}

void sub_0208F294 (UnkStruct_0208D7BC * param0, u32 param1)
{
    u32 v0 = MoveTable_GetMoveAttribute(param1, 1);

    sub_0200D948(param0->unk_414, param0->unk_418, sub_0207CAC0(), sub_0207CA90(v0), 1, 10);
    sub_0200D414(param0->unk_41C[18], sub_0207CAA8(v0) + 3);
}

void sub_0208F2E8 (UnkStruct_0208D7BC * param0)
{
    sub_0200D494(param0->unk_41C[9], 194, 48 + param0->unk_6A5_0 * 32);
}

void sub_0208F310 (UnkStruct_0208D7BC * param0)
{
    s16 v0, v1;

    sub_0200D50C(param0->unk_41C[9], &v0, &v1);
    sub_0200D494(param0->unk_41C[10], v0, v1);
    sub_02021CAC(param0->unk_41C[10], 1);
}

void sub_0208F34C (UnkStruct_0208D7BC * param0)
{
    u32 v0;

    param0->unk_6A8 = 0;
    param0->unk_6AB = 0;
    param0->unk_6AA = 0;

    if (param0->unk_250.unk_4A == 0) {
        param0->unk_6A9 = 0;
    } else if (param0->unk_250.unk_4A == 255) {
        param0->unk_6A9 = 12;
    } else {
        param0->unk_6A9 = (((12 << 8) / 255) * param0->unk_250.unk_4A) >> 8;
    }

    for (v0 = 29; v0 <= 40; v0++) {
        sub_02021CAC(param0->unk_41C[v0], 0);
        sub_02021E50(param0->unk_41C[v0], 0);
    }
}

void sub_0208F3B0 (UnkStruct_0208D7BC * param0)
{
    u32 v0;

    if (param0->unk_6A4 != 4) {
        return;
    }

    if (param0->unk_6A9 == 0) {
        return;
    }

    switch (param0->unk_6A8) {
    case 0:
        param0->unk_6AB++;

        if (param0->unk_6AB == 8) {
            param0->unk_6A8 = 1;
            param0->unk_6AB = 0;
            param0->unk_6AA = 0;
        }
        break;
    case 1:
        if (param0->unk_6AB == 0) {
            sub_02021CAC(param0->unk_41C[29 + param0->unk_6AA], 1);
            sub_02021E50(param0->unk_41C[29 + param0->unk_6AA], 0);
            sub_02021D6C(param0->unk_41C[29 + param0->unk_6AA], 0);

            param0->unk_6AA++;

            if (param0->unk_6AA == param0->unk_6A9) {
                param0->unk_6A8 = 2;
                break;
            }
        }

        param0->unk_6AB = (param0->unk_6AB + 1) % 10;
        break;
    case 2:
        if (sub_02021D34(param0->unk_41C[29 + param0->unk_6A9 - 1]) == 0) {
            param0->unk_6AB = 0;
            param0->unk_6A8 = 3;
            break;
        }
        break;
    case 3:
        param0->unk_6AB++;

        if (param0->unk_6AB == 32) {
            for (v0 = 29; v0 < 29 + param0->unk_6A9; v0++) {
                sub_02021CAC(param0->unk_41C[v0], 1);
                sub_02021E50(param0->unk_41C[v0], 0);
                sub_02021D6C(param0->unk_41C[v0], 0);
            }

            param0->unk_6AB = 0;
            param0->unk_6A8 = 4;
        }
        break;
    case 4:
        param0->unk_6AB++;

        if (param0->unk_6AB == 32) {
            param0->unk_6A8 = 0;
            param0->unk_6AB = 0;
            param0->unk_6AA = 0;
        }
        break;
    }

    for (v0 = 29; v0 < 29 + param0->unk_6A9; v0++) {
        if (sub_02021D34(param0->unk_41C[v0]) == 0) {
            continue;
        }

        sub_02021E2C(param0->unk_41C[v0], FX32_ONE);

        if (sub_02021E74(param0->unk_41C[v0]) == 6) {
            sub_02021CAC(param0->unk_41C[v0], 0);
        }
    }
}

void sub_0208F574 (UnkStruct_0208D7BC * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_250.unk_4C & (1 << v0)) {
            sub_02021D6C(param0->unk_41C[23 + v0], 1);
        } else {
            sub_02021D6C(param0->unk_41C[23 + v0], 0);
        }
    }

    if ((param0->unk_250.unk_50_29 == 1) && (param0->unk_250.unk_50_28 == 0)) {
        sub_0200D3EC(param0->unk_41C[53], 1);
    } else {
        sub_0200D3EC(param0->unk_41C[53], 0);
    }

    if (param0->unk_250.unk_50_30 == 2) {
        sub_0200D3EC(param0->unk_41C[54], 1);
    } else {
        sub_0200D3EC(param0->unk_41C[54], 0);
    }
}

void sub_0208F600 (UnkStruct_0208D7BC * param0)
{
    s16 v0, v1;

    sub_02021CAC(param0->unk_41C[41], 1);
    sub_02021E50(param0->unk_41C[41], 0);
    sub_02021D6C(param0->unk_41C[41], 0);

    sub_02092368(param0, &v0, &v1);

    if (param0->unk_6A7_0 == 0) {
        sub_0200D494(param0->unk_41C[41], v0, v1 + 192);
    } else {
        sub_0200D494(param0->unk_41C[41], v0 - 4, v1 + 192);
    }
}

void sub_0208F684 (UnkStruct_0208D7BC * param0)
{
    if (sub_02021E74(param0->unk_41C[41]) == 2) {
        sub_02021CAC(param0->unk_41C[41], 0);
    }
}

void sub_0208F6A4 (UnkStruct_0208D7BC * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 5; v0++) {
        if ((param0->unk_6A6 & (1 << v0))) {
            sub_02021CAC(param0->unk_41C[42 + v0], 1);
        }
    }
}

void sub_0208F6DC (UnkStruct_0208D7BC * param0, UnkStruct_0205AA50 * param1)
{
    if (param1 == NULL) {
        sub_02021CAC(param0->unk_41C[47], 0);
        return;
    }

    sub_0200D494(param0->unk_41C[47], sub_0201C29C(param1) * 8 - 10, 8);
    sub_02021CAC(param0->unk_41C[47], 1);
}

void sub_0208F71C (UnkStruct_0208D7BC * param0)
{
    void * v0 = sub_0208DD48(param0);
    u32 v1;

    if (param0->unk_24C->unk_11 == 2) {
        v1 = sub_02079D40(v0);
    } else {
        v1 = sub_02079D80(v0);
    }

    sub_0200D948(param0->unk_414, param0->unk_418, 19, v1, 0, 11);
    sub_0200D414(param0->unk_41C[19], sub_02079EDC(param0->unk_250.unk_0C, param0->unk_250.unk_4E, param0->unk_250.unk_50_28) + 7);
    sub_02021D0C(param0->unk_41C[19], (sub_020759CC(param0->unk_250.unk_0C, param0->unk_250.unk_4E, 28) ^ 1));
}

void sub_0208F7A4 (UnkStruct_0208D7BC * param0)
{
    sub_0200D97C(param0->unk_414, param0->unk_418, 19, sub_02079FD0(), 0, 5);

    if (param0->unk_6A4 == 3) {
        sub_0200D494(param0->unk_41C[19], 24, 48);
    } else {
        sub_0200D494(param0->unk_41C[19], 32, 68);
    }

    sub_0200D3EC(param0->unk_41C[19], 1);
}

static s16 sub_0208F800 (u32 param0, s16 param1, s16 param2)
{
    u32 v0;

    param0 += 44;

    if (param2 > param1) {
        v0 = ((param2 - param1) * param0) << 16;
        v0 = (v0 / 300) >> 16;

        return param2 + (s16)v0 * -1;
    }

    v0 = ((param1 - param2) * param0) << 16;
    v0 = (v0 / 300) >> 16;

    return param2 + (s16)v0;
}

void sub_0208F844 (UnkStruct_0208D7BC * param0)
{
    sub_0200D494(param0->unk_41C[48], sub_0208F800(param0->unk_250.unk_45, 88, 88), sub_0208F800(param0->unk_250.unk_45, 49, 73));
    sub_0200D494(param0->unk_41C[49], sub_0208F800(param0->unk_250.unk_46, 110, 88), sub_0208F800(param0->unk_250.unk_46, 65, 73));
    sub_0200D494(param0->unk_41C[50], sub_0208F800(param0->unk_250.unk_47, 103, 88), sub_0208F800(param0->unk_250.unk_47, 92, 73));
    sub_0200D494(param0->unk_41C[51], sub_0208F800(param0->unk_250.unk_48, 72, 87), sub_0208F800(param0->unk_250.unk_48, 92, 73));
    sub_0200D494(param0->unk_41C[52], sub_0208F800(param0->unk_250.unk_49, 65, 87), sub_0208F800(param0->unk_250.unk_49, 65, 73));

    sub_02021CAC(param0->unk_41C[48], 1);
    sub_02021CAC(param0->unk_41C[49], 1);
    sub_02021CAC(param0->unk_41C[50], 1);
    sub_02021CAC(param0->unk_41C[51], 1);
    sub_02021CAC(param0->unk_41C[52], 1);
}

void sub_0208F964 (UnkStruct_0208D7BC * param0)
{
    sub_02021CAC(param0->unk_41C[48], 0);
    sub_02021CAC(param0->unk_41C[49], 0);
    sub_02021CAC(param0->unk_41C[50], 0);
    sub_02021CAC(param0->unk_41C[51], 0);
    sub_02021CAC(param0->unk_41C[52], 0);
}

static void sub_0208F9B0 (UnkStruct_0208D7BC * param0, u8 param1, u8 param2)
{
    sub_0200D948(param0->unk_414, param0->unk_418, 39, sub_020923C0(param1, 1), 0, 26 + param2);
    sub_0200D414(param0->unk_41C[55 + param2], sub_020923C0(param1, 2) + 7);
}

void sub_0208FA04 (UnkStruct_0208D7BC * param0)
{
    u16 v0;

    for (v0 = 55; v0 <= 70; v0++) {
        sub_02021CAC(param0->unk_41C[v0], 0);
    }

    if (param0->unk_6A4 != 6) {
        return;
    }

    sub_0200D97C(param0->unk_414, param0->unk_418, 39, 136, 0, 5);

    for (v0 = 0; v0 < 12; v0++) {
        if (v0 < param0->unk_6B1) {
            sub_02021CAC(param0->unk_41C[55 + v0], 1);
            sub_0208F9B0(param0, sub_0208E904(param0, v0), v0);
        }
    }

    sub_02021D6C(param0->unk_41C[70], 0);
}

void sub_0208FAA4 (UnkStruct_0208D7BC * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 8; v0++) {
        if ((param0->unk_6B0 * 4 + v0) < param0->unk_6B1) {
            sub_02021CAC(param0->unk_41C[55 + v0], 1);
            sub_0208F9B0(param0, sub_0208E904(param0, v0), v0);
        } else {
            sub_02021CAC(param0->unk_41C[55 + v0], 0);
        }
    }
}

void sub_0208FB00 (UnkStruct_0208D7BC * param0)
{
    sub_0200D494(
        param0->unk_41C[67], 132 + (param0->unk_6AF & 3) * 32, 56 + (param0->unk_6AF / 4) * 40);
}

void sub_0208FB30 (UnkStruct_0208D7BC * param0)
{
    if (sub_02021D34(param0->unk_41C[70]) == 1) {
        sub_02021E2C(param0->unk_41C[70], FX32_ONE);
    }
}

static const s16 Unk_020F4180[][4] = {
    {0xB4, 0x39, 0xB4, 0x5A},
    {0xD5, 0x55, 0xB8, 0x5D},
    {0xC8, 0x7D, 0xB6, 0x61},
    {0x9F, 0x7D, 0xB2, 0x61},
    {0x92, 0x55, 0xB0, 0x5D}
};

void sub_0208FB54 (UnkStruct_0208D7BC * param0, u8 param1)
{
    u16 v0, v1;

    if (param1 == 0) {
        for (v0 = 0; v0 < 5; v0++) {
            sub_02021CAC(param0->unk_41C[71 + v0], 0);
        }
    } else {
        v1 = param0->unk_250.unk_45;

        if (v1 < param0->unk_250.unk_46) {
            v1 = param0->unk_250.unk_46;
        }

        if (v1 < param0->unk_250.unk_47) {
            v1 = param0->unk_250.unk_47;
        }

        if (v1 < param0->unk_250.unk_48) {
            v1 = param0->unk_250.unk_48;
        }

        if (v1 < param0->unk_250.unk_49) {
            v1 = param0->unk_250.unk_49;
        }

        sub_0208FC30(param0->unk_41C[71], param0->unk_250.unk_45, v1, Unk_020F4180[0]);
        sub_0208FC30(param0->unk_41C[72], param0->unk_250.unk_46, v1, Unk_020F4180[1]);
        sub_0208FC30(param0->unk_41C[73], param0->unk_250.unk_47, v1, Unk_020F4180[2]);
        sub_0208FC30(param0->unk_41C[74], param0->unk_250.unk_48, v1, Unk_020F4180[3]);
        sub_0208FC30(param0->unk_41C[75], param0->unk_250.unk_49, v1, Unk_020F4180[4]);
    }
}

static void sub_0208FC30 (UnkStruct_02022550 * param0, u32 param1, u32 param2, const s16 * param3)
{
    s32 v0, v1;

    if ((param1 == 0) || (param1 != param2)) {
        sub_02021CAC(param0, 0);
        return;
    }

    sub_02021CAC(param0, 1);

    if (param3[0] >= param3[2]) {
        v0 = param3[2] + (((((param3[0] - param3[2]) << 8) / 256) * param1) >> 8);
    } else {
        v0 = param3[2] - (((((param3[2] - param3[0]) << 8) / 256) * param1) >> 8);
    }

    if (param3[1] >= param3[3]) {
        v1 = param3[3] + (((((param3[1] - param3[3]) << 8) / 256) * param1) >> 8);
    } else {
        v1 = param3[3] - (((((param3[3] - param3[1]) << 8) / 256) * param1) >> 8);
    }

    sub_0200D494(param0, v0, v1);
    sub_02021E50(param0, 0);
    sub_02021D6C(param0, 0);
}

void sub_0208FCD4 (UnkStruct_0208D7BC * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_02021E2C(param0->unk_41C[71 + v0], FX32_ONE);
    }
}
