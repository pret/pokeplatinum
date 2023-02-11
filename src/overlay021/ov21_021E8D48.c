#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "overlay021/struct_ov21_021D4C0C_decl.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay021/struct_ov21_021D1FA4.h"
#include "overlay021/struct_ov21_021D22F8.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E8E0C.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200AC5C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02023790.h"
#include "unk_02073C2C.h"
#include "unk_02098988.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1F90.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021DE668.h"
#include "overlay021/ov21_021E8D48.h"

typedef struct {
    UnkStruct_02022550 * unk_00;
    UnkStruct_02009DC8 * unk_04[4];
} UnkStruct_ov21_021E94F8;

typedef struct {
    UnkStruct_02022550 * unk_00;
    UnkStruct_ov21_021D4CA0 * unk_04;
} UnkStruct_ov21_021E95B0;

typedef struct {
    UnkStruct_02022550 * unk_00[2];
    UnkStruct_02009DC8 * unk_08[4];
} UnkStruct_ov21_021E968C;

typedef struct {
    void * unk_00[2];
    NNSG2dPaletteData * unk_08[2];
    int unk_10;
    int unk_14[2];
    int unk_1C;
} UnkStruct_ov21_021E9A9C;

typedef struct UnkStruct_ov21_021E8D48_t {
    UnkStruct_02018340 * unk_00;
    UnkStruct_0205AA50 * unk_04;
    UnkStruct_02002F38 * unk_08;
    UnkStruct_02007C7C * unk_0C;
    UnkStruct_0200C738 unk_10;
    UnkStruct_020218BC * unk_19C;
    UnkStruct_02009714 * unk_1A0[4];
    UnkStruct_ov21_021D4C0C * unk_1B0;
    UnkStruct_ov21_021D22F8 unk_1B4;
    UnkStruct_ov21_021E94F8 unk_1E4;
    UnkStruct_ov21_021E95B0 unk_1F8;
    UnkStruct_ov21_021E968C unk_200;
    u32 unk_218;
    u32 unk_21C;
    u32 unk_220;
    UnkStruct_0201CD38 * unk_224;
    UnkStruct_ov21_021E9A9C unk_228;
    BOOL unk_248;
} UnkStruct_ov21_021E8D48;

static void ov21_021E9828(UnkStruct_0201CD38 * param0, void * param1);
static void ov21_021E98D8(UnkStruct_02002F38 * param0, UnkStruct_02007C7C * param1);
static void ov21_021E98F8(UnkStruct_02002F38 * param0, UnkStruct_02007C7C * param1, int param2, int param3, int param4, int param5, int param6);
static BOOL ov21_021E9948(UnkStruct_02002F38 * param0, UnkStruct_02007C7C * param1);
static void ov21_021E8E0C(UnkStruct_ov21_021E8D48 * param0, const UnkStruct_ov21_021E8E0C * param1);
static void ov21_021E900C(UnkStruct_ov21_021E8D48 * param0);
static void ov21_021E90B0(UnkStruct_02018340 * param0, int param1);
static void ov21_021E9194(UnkStruct_02018340 * param0);
static UnkStruct_0205AA50 * ov21_021E91B0(UnkStruct_02018340 * param0, int param1);
static void ov21_021E91F0(UnkStruct_0205AA50 * param0);
static void ov21_021E9208(UnkStruct_02009714 ** param0, int param1);
static void ov21_021E9228(UnkStruct_02009714 ** param0);
static void ov21_021E9240(UnkStruct_ov21_021D22F8 * param0, UnkStruct_ov21_021D4C0C * param1, int param2, int param3, int param4);
static void ov21_021E92B0(UnkStruct_ov21_021D22F8 * param0);
static UnkStruct_02007C7C * ov21_021E99E0(UnkStruct_02007768 * param0, Pokemon * param1, int param2, int param3, int param4);
static void ov21_021E92C4(UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9);
static void ov21_021E9344(UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, int param2, NARC * param3, int param4, int param5, int param6, int param7, int param8, int param9);
static void ov21_021E93C4(UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1);
static void ov21_021E93F8(UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, UnkStruct_ov19_021DA864 * param2, int param3);
static void ov21_021E9458(UnkStruct_ov21_021E94F8 * param0, UnkStruct_02009714 ** param1, int param2, int param3);
static void ov21_021E94A4(UnkStruct_ov21_021E94F8 * param0, UnkStruct_02009714 ** param1);
static void ov21_021E94B0(UnkStruct_ov21_021E94F8 * param0, UnkStruct_020218BC * param1, UnkStruct_02009714 ** param2, int param3);
static void ov21_021E94F8(UnkStruct_ov21_021E94F8 * param0);
static void ov21_021E9504(UnkStruct_ov21_021E95B0 * param0, UnkStruct_020218BC * param1, UnkStruct_02009714 ** param2, int param3, UnkStruct_02009DC8 ** param4);
static void ov21_021E9554(UnkStruct_ov21_021E95B0 * param0);
static void ov21_021E9560(UnkStruct_ov21_021E95B0 * param0, UnkStruct_ov21_021D4C0C * param1, int param2, int param3, UnkStruct_02009DC8 * param4);
static void ov21_021E95B0(UnkStruct_ov21_021E95B0 * param0);
static void ov21_021E95BC(UnkStruct_ov21_021E968C * param0, UnkStruct_02009714 ** param1, int param2, int param3, NARC * param4);
static void ov21_021E95EC(UnkStruct_ov21_021E968C * param0, UnkStruct_02009714 ** param1);
static void ov21_021E95F8(UnkStruct_ov21_021E968C * param0, UnkStruct_020218BC * param1, UnkStruct_02009714 ** param2, int param3, int param4);
static void ov21_021E968C(UnkStruct_ov21_021E968C * param0);
static void ov21_021E96A8(UnkStruct_02018340 * param0, int param1, NARC * param2);
static void ov21_021E97C4(UnkStruct_02018340 * param0, int param1, NARC * param2);
static void ov21_021E9968(UnkStruct_0205AA50 * param0, int param1, int param2);
static void ov21_021E998C(UnkStruct_0205AA50 * param0, int param1);
static void ov21_021E9A0C(int param0);
static void ov21_021E9A38(void);
static void ov21_021E9A40(UnkStruct_ov21_021E9A9C * param0, int param1, int param2, NARC * param3);
static void ov21_021E9A9C(UnkStruct_ov21_021E9A9C * param0);
static void ov21_021E9AC8(UnkStruct_ov21_021E9A9C * param0);
static void ov21_021E9AE8(UnkStruct_ov21_021E9A9C * param0, int param1);
static void ov21_021E9B08(UnkStruct_ov21_021E9A9C * param0, int param1);

UnkStruct_ov21_021E8D48 * ov21_021E8D48 (const UnkStruct_ov21_021E8E0C * param0)
{
    UnkStruct_ov21_021E8D48 * v0 = Heap_AllocFromHeap(param0->unk_0C, sizeof(UnkStruct_ov21_021E8D48));

    memset(v0, 0, sizeof(UnkStruct_ov21_021E8D48));

    {
        u32 v1;
        u32 v2;

        v1 = GetMonData(param0->unk_10, 5, NULL);
        v2 = GetMonData(param0->unk_10, 112, NULL);

        if (v1 == 487) {
            sub_02098988(v2);
        } else {
            sub_02098988(1);
        }
    }

    ov21_021E8E0C(v0, param0);
    ov21_021E98D8(v0->unk_08, v0->unk_0C);
    ov21_021E98F8(v0->unk_08, v0->unk_0C, 10, 15, 0, 0, 0x0);

    v0->unk_224 = sub_0200D9E8(ov21_021E9828, v0, 0);

    return v0;
}

void ov21_021E8DD0 (UnkStruct_ov21_021E8D48 * param0)
{
    ov21_021E900C(param0);

    sub_0200DA58(param0->unk_224);
    Heap_FreeToHeap(param0);
}

BOOL ov21_021E8DEC (const UnkStruct_ov21_021E8D48 * param0)
{
    if (param0->unk_21C == 4) {
        return 1;
    }

    return 0;
}

UnkStruct_02007C7C * ov21_021E8E00 (UnkStruct_ov21_021E8D48 * param0)
{
    return param0->unk_0C;
}

void ov21_021E8E04 (UnkStruct_ov21_021E8D48 * param0, BOOL param1)
{
    param0->unk_248 = param1;
}

static void ov21_021E8E0C (UnkStruct_ov21_021E8D48 * param0, const UnkStruct_ov21_021E8E0C * param1)
{
    UnkStruct_ov21_021D1FA4 v0;
    NARC * v1 = NARC_ctor(69, param1->unk_0C);
    int v2;

    param0->unk_220 = GetMonData(param1->unk_10, 5, NULL);
    v2 = GetMonData(param1->unk_10, 112, NULL);

    param0->unk_00 = param1->unk_00;
    param0->unk_19C = sub_020095C4(32, &param0->unk_10, param1->unk_0C);

    sub_02022014(param1->unk_0C);
    ov21_021E9A0C(param1->unk_0C);

    param0->unk_0C = ov21_021E99E0(param1->unk_08, param1->unk_10, 48, 72, param1->unk_0C);
    param0->unk_08 = param1->unk_04;

    v0.unk_00 = param0->unk_19C;
    v0.unk_04 = param0->unk_00;
    v0.unk_08 = 3;
    v0.unk_0C = param1->unk_0C;

    param0->unk_1B0 = ov21_021D4C0C(&v0);

    ov21_021E90B0(param0->unk_00, param1->unk_0C);
    G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), -16);

    param0->unk_04 = ov21_021E91B0(param0->unk_00, param1->unk_0C);

    ov21_021E9208(param0->unk_1A0, param1->unk_0C);
    ov21_021D2B88(&param0->unk_1B4, param0->unk_1A0, param1->unk_0C, v1);
    ov21_021D2D88(&param0->unk_1B4, param0->unk_19C, param0->unk_1A0, param1->unk_0C, 2);
    ov21_021E9240(&param0->unk_1B4, param0->unk_1B0, param1->unk_0C, param0->unk_220, param1->unk_14);
    ov21_021D1858(&param0->unk_1B4, 172, 32);
    ov21_021D2E44(&param0->unk_1B4, 1);

    {
        int v3;

        if ((param0->unk_220 == 487) && (v2 > 0)) {
            v3 = 11;
        } else {
            v3 = param0->unk_220;
        }

        ov21_021E9458(&param0->unk_1E4, param0->unk_1A0, v3, param1->unk_0C);
        ov21_021E94B0(&param0->unk_1E4, param0->unk_19C, param0->unk_1A0, param1->unk_0C);
    }

    ov21_021E95BC(&param0->unk_200, param0->unk_1A0, param0->unk_220, param1->unk_0C, v1);
    ov21_021E95F8(&param0->unk_200, param0->unk_19C, param0->unk_1A0, param1->unk_0C, param0->unk_220);
    ov21_021E9504(&param0->unk_1F8, param0->unk_19C, param0->unk_1A0, param1->unk_0C, param0->unk_200.unk_08);
    ov21_021E9560(&param0->unk_1F8, param0->unk_1B0, param1->unk_0C, param0->unk_220, param0->unk_1B4.unk_0C[1]);
    ov21_021E96A8(param0->unk_00, param1->unk_0C, v1);
    ov21_021E97C4(param0->unk_00, param1->unk_0C, v1);
    ov21_021E9968(param0->unk_04, param1->unk_0C, param0->unk_220);
    ov21_021E9A40(&param0->unk_228, param1->unk_0C, param1->unk_14, v1);

    param0->unk_248 = 1;

    NARC_dtor(v1);
}

static void ov21_021E900C (UnkStruct_ov21_021E8D48 * param0)
{
    ov21_021E9AC8(&param0->unk_228);
    ov21_021E968C(&param0->unk_200);
    ov21_021E95EC(&param0->unk_200, param0->unk_1A0);
    ov21_021E95B0(&param0->unk_1F8);
    ov21_021E9554(&param0->unk_1F8);
    ov21_021E94F8(&param0->unk_1E4);
    ov21_021E94A4(&param0->unk_1E4, param0->unk_1A0);
    ov21_021E92B0(&param0->unk_1B4);
    ov21_021D2E1C(&param0->unk_1B4);
    ov21_021D2C58(&param0->unk_1B4, param0->unk_1A0);
    ov21_021E9228(param0->unk_1A0);

    sub_02021964(param0->unk_19C);

    ov21_021E91F0(param0->unk_04);
    ov21_021E9194(param0->unk_00);
    ov21_021D4C6C(param0->unk_1B0);
    ov21_021E9A38();
}

static void ov21_021E90B0 (UnkStruct_02018340 * param0, int param1)
{
    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_02019044(param0, 1);
        sub_020183C4(param0, 1, &v0, 0);
        sub_02019690(1, 32, 0, param1);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_02019044(param0, 2);
        sub_020183C4(param0, 2, &v1, 0);
        sub_02019690(2, 32, 0, param1);
        sub_02019EBC(param0, 2);
    }

    sub_02019060(0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    sub_02019044(param0, 0);

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_02019044(param0, 3);
        sub_020183C4(param0, 3, &v2, 0);
        sub_02019690(3, 32, 0, param1);
        sub_02019EBC(param0, 3);
    }
}

static void ov21_021E9194 (UnkStruct_02018340 * param0)
{
    sub_02019044(param0, 1);
    sub_02019044(param0, 2);
    sub_02019044(param0, 3);
}

static UnkStruct_0205AA50 * ov21_021E91B0 (UnkStruct_02018340 * param0, int param1)
{
    UnkStruct_0205AA50 * v0;

    v0 = sub_0201A778(param1, 1);

    sub_0201A7E8(param0, v0, 1, 0, 0, 32, 32, 0xc, 0);
    sub_0201ADA4(v0, 0);
    sub_0201A954(v0);

    return v0;
}

static void ov21_021E91F0 (UnkStruct_0205AA50 * param0)
{
    sub_0201ACF4(param0);
    sub_0201A8FC(param0);
    sub_0201A928(param0, 1);
}

static void ov21_021E9208 (UnkStruct_02009714 ** param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0[v0] = sub_02009714(8, v0, param1);
    }
}

static void ov21_021E9228 (UnkStruct_02009714 ** param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0[v0]);
        param0[v0] = NULL;
    }
}

static void ov21_021E9240 (UnkStruct_ov21_021D22F8 * param0, UnkStruct_ov21_021D4C0C * param1, int param2, int param3, int param4)
{
    UnkStruct_ov21_021D4CB8 v0;
    UnkStruct_0205AA50 * v1;
    UnkStruct_02009DC8 * v2;

    v2 = param0->unk_0C[1];

    v0.unk_00 = param1;
    v0.unk_08 = sub_0200A72C(v2, NULL);
    v0.unk_0C = param0->unk_00;
    v0.unk_10 = -(128 / 2);
    v0.unk_14 = -(16 / 2);
    v0.unk_18 = 2;
    v0.unk_1C = 0;
    v0.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_24 = param2;

    if (param4 == 0) {
        v1 = ov21_021D172C(param1, param2, param3);
    } else {
        v1 = ov21_021D170C(param1, param2, param3);
    }

    v0.unk_04 = v1;

    ov21_021D22F8(param0, &v0, 0, param3, param4);
    ov21_021D4DA0(v1);
}

static void ov21_021E92B0 (UnkStruct_ov21_021D22F8 * param0)
{
    if (param0->unk_08) {
        ov21_021D4D1C(param0->unk_08);
        param0->unk_08 = NULL;
    }
}

static void ov21_021E92C4 (UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    param0[0] = sub_0200985C(param1[0], param3, param4, 1, param9, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0[0]);
    sub_02009D4C(param0[0]);

    param0[1] = sub_020098B8(param1[1], param3, param5, 0, param9, NNS_G2D_VRAM_TYPE_2DMAIN, param8, param2);

    sub_0200A640(param0[1]);
    sub_02009D4C(param0[1]);

    param0[2] = sub_02009918(param1[2], param3, param6, 1, param9, 2, param2);
    param0[3] = sub_02009918(param1[3], param3, param7, 1, param9, 3, param2);
}

static void ov21_021E9344 (UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, int param2, NARC * param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    param0[0] = sub_02009A4C(param1[0], param3, param4, 1, param9, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0[0]);
    sub_02009D4C(param0[0]);

    param0[1] = sub_02009B04(param1[1], param3, param5, 0, param9, NNS_G2D_VRAM_TYPE_2DMAIN, param8, param2);

    sub_0200A640(param0[1]);
    sub_02009D4C(param0[1]);

    param0[2] = sub_02009BC4(param1[2], param3, param6, 1, param9, 2, param2);
    param0[3] = sub_02009BC4(param1[3], param3, param7, 1, param9, 3, param2);
}

static void ov21_021E93C4 (UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1)
{
    sub_0200A4E4(param0[0]);
    sub_0200A6DC(param0[1]);

    sub_02009D68(param1[0], param0[0]);
    sub_02009D68(param1[1], param0[1]);
    sub_02009D68(param1[2], param0[2]);
    sub_02009D68(param1[3], param0[3]);
}

static void ov21_021E93F8 (UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, UnkStruct_ov19_021DA864 * param2, int param3)
{
    sub_020093B4(param2, sub_02009E08(param0[0]), sub_02009E08(param0[1]), sub_02009E08(param0[2]), sub_02009E08(param0[3]), 0xffffffff, 0xffffffff, 0, param3, param1[0], param1[1], param1[2], param1[3], NULL, NULL);
}

static void ov21_021E9458 (UnkStruct_ov21_021E94F8 * param0, UnkStruct_02009714 ** param1, int param2, int param3)
{
    int v0 = ov21_021D1F90();
    int v1 = ov21_021D1F94(param2);
    int v2 = ov21_021D1F98();
    int v3 = ov21_021D1F9C();
    int v4 = ov21_021D1FA0();

    ov21_021E92C4(param0->unk_04, param1, param3, v0, v1, v2, v3, v4, 1, 4000);
}

static void ov21_021E94A4 (UnkStruct_ov21_021E94F8 * param0, UnkStruct_02009714 ** param1)
{
    ov21_021E93C4(param0->unk_04, param1);
}

static void ov21_021E94B0 (UnkStruct_ov21_021E94F8 * param0, UnkStruct_020218BC * param1, UnkStruct_02009714 ** param2, int param3)
{
    UnkStruct_ov83_0223D9A8 v0;
    UnkStruct_ov19_021DA864 v1;

    ov21_021E93F8(param0->unk_04, param2, &v1, 2);

    v0.unk_00 = param1;
    v0.unk_04 = &v1;
    v0.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_14 = 32;
    v0.unk_1C = param3;
    v0.unk_08.x = (120 * FX32_ONE);
    v0.unk_08.y = (88 * FX32_ONE);

    param0->unk_00 = sub_02021B90(&v0);
    GF_ASSERT(param0->unk_00);
}

static void ov21_021E94F8 (UnkStruct_ov21_021E94F8 * param0)
{
    sub_02021BD4(param0->unk_00);
}

static void ov21_021E9504 (UnkStruct_ov21_021E95B0 * param0, UnkStruct_020218BC * param1, UnkStruct_02009714 ** param2, int param3, UnkStruct_02009DC8 ** param4)
{
    UnkStruct_ov83_0223D9A8 v0;
    UnkStruct_ov19_021DA864 v1;

    ov21_021E93F8(param4, param2, &v1, 2);

    v0.unk_00 = param1;
    v0.unk_04 = &v1;
    v0.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_14 = 32;
    v0.unk_1C = param3;
    v0.unk_08.x = (192 * FX32_ONE);
    v0.unk_08.y = (52 * FX32_ONE);

    param0->unk_00 = sub_02021B90(&v0);

    GF_ASSERT(param0->unk_00);
    sub_02021D6C(param0->unk_00, 0x11);
}

static void ov21_021E9554 (UnkStruct_ov21_021E95B0 * param0)
{
    sub_02021BD4(param0->unk_00);
}

static void ov21_021E9560 (UnkStruct_ov21_021E95B0 * param0, UnkStruct_ov21_021D4C0C * param1, int param2, int param3, UnkStruct_02009DC8 * param4)
{
    UnkStruct_0205AA50 * v0;
    UnkStruct_ov21_021D4CB8 v1;

    v0 = ov21_021DF30C(param1, param3, param2);

    v1.unk_00 = param1;
    v1.unk_08 = sub_0200A72C(param4, NULL);
    v1.unk_0C = param0->unk_00;
    v1.unk_10 = -78;
    v1.unk_14 = -8;
    v1.unk_18 = 2;
    v1.unk_1C = 32 - 1;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_24 = param2;
    v1.unk_04 = v0;

    param0->unk_04 = ov21_021D4CA0(&v1);

    ov21_021D4DA0(v0);
}

static void ov21_021E95B0 (UnkStruct_ov21_021E95B0 * param0)
{
    ov21_021D4D1C(param0->unk_04);
}

static void ov21_021E95BC (UnkStruct_ov21_021E968C * param0, UnkStruct_02009714 ** param1, int param2, int param3, NARC * param4)
{
    ov21_021E9344(param0->unk_08, param1, param3, param4, 90, 13, 88, 89, 5, 17000);
}

static void ov21_021E95EC (UnkStruct_ov21_021E968C * param0, UnkStruct_02009714 ** param1)
{
    ov21_021E93C4(param0->unk_08, param1);
}

static void ov21_021E95F8 (UnkStruct_ov21_021E968C * param0, UnkStruct_020218BC * param1, UnkStruct_02009714 ** param2, int param3, int param4)
{
    UnkStruct_ov83_0223D9A8 v0;
    UnkStruct_ov19_021DA864 v1;
    int v2, v3;

    v2 = sub_020759F0(param4, 6);
    v3 = sub_020759F0(param4, 7);
    v2 = ov21_021DF180(v2);
    v3 = ov21_021DF180(v3);

    ov21_021E93F8(param0->unk_08, param2, &v1, 2);

    v0.unk_00 = param1;
    v0.unk_04 = &v1;
    v0.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_14 = 32;
    v0.unk_1C = param3;
    v0.unk_08.x = (170 * FX32_ONE);
    v0.unk_08.y = (72 * FX32_ONE);

    param0->unk_00[0] = sub_02021B90(&v0);

    sub_02021D6C(param0->unk_00[0], 0 + v2);

    if (v2 != v3) {
        v0.unk_08.x = (220 * FX32_ONE);
        v0.unk_08.y = (72 * FX32_ONE);
        param0->unk_00[1] = sub_02021B90(&v0);
        sub_02021D6C(param0->unk_00[1], 0 + v3);
    } else {
        param0->unk_00[1] = NULL;
    }
}

static void ov21_021E968C (UnkStruct_ov21_021E968C * param0)
{
    if (param0->unk_00[0]) {
        sub_02021BD4(param0->unk_00[0]);
    }

    if (param0->unk_00[1]) {
        sub_02021BD4(param0->unk_00[1]);
    }
}

static void ov21_021E96A8 (UnkStruct_02018340 * param0, int param1, NARC * param2)
{
    void * v0;
    NNSG2dScreenData * v1;

    sub_02007130(param2, 6, 0, 0, 0, param1);
    sub_020070E8(param2, 33, param0, 3, 0, 0, 1, param1);

    v0 = sub_020071D0(param2, 50, 1, &v1, param1);

    sub_020198C0(param0, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = sub_020071D0(param2, 51, 1, &v1, param1);

    sub_020198C0(param0, 3, v1->rawData, 0, 3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = sub_020071D0(param2, 52, 1, &v1, param1);

    sub_020198C0(param0, 3, v1->rawData, 12, 8, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = sub_020071D0(param2, 54, 1, &v1, param1);

    sub_020198C0(param0, 3, v1->rawData, 0, 16, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0, 3);
}

static void ov21_021E97C4 (UnkStruct_02018340 * param0, int param1, NARC * param2)
{
    void * v0;
    NNSG2dScreenData * v1;

    sub_020070E8(param2, 33, param0, 2, 0, 0, 1, param1);

    v0 = sub_020071D0(param2, 57, 1, &v1, param1);

    sub_020198C0(param0, 2, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0, 2);
}

static void ov21_021E9828 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov21_021E8D48 * v0 = param1;
    BOOL v1;

    switch (v0->unk_21C) {
    case 0:
        G2_BlendNone();
        v0->unk_21C++;
        break;
    case 1:
        if (ov21_021E9948(v0->unk_08, v0->unk_0C)) {
            v0->unk_21C++;
        }
        break;
    case 2:
        v1 = sub_020059D0(14, v0->unk_220, 0x1ff, 0x1ff, 0x1ff, 0);
        GF_ASSERT(v1);
        v0->unk_21C++;
        break;
    case 3:
        if (sub_0200598C() == 0) {
            v0->unk_21C++;
        }
        break;
    case 4:
        break;
    default:
        break;
    }

    if (v0->unk_248) {
        ov21_021E9A9C(&v0->unk_228);
    }

    sub_020219F8(v0->unk_19C);
}

static void ov21_021E98D8 (UnkStruct_02002F38 * param0, UnkStruct_02007C7C * param1)
{
    sub_02003070(param0, 0, 0, 32 * 0x10);
    sub_02003070(param0, 2, 0, (((16 - 2) * 16) * sizeof(u16)));
}

static void ov21_021E98F8 (UnkStruct_02002F38 * param0, UnkStruct_02007C7C * param1, int param2, int param3, int param4, int param5, int param6)
{
    sub_020086FC(param1, param2, param4, param5, param6);
    sub_02003178(param0, 0x1 | 0x4, 0xffff, param5, param3, param4, param6);
    sub_02003858(param0, 0);
}

static BOOL ov21_021E9948 (UnkStruct_02002F38 * param0, UnkStruct_02007C7C * param1)
{
    BOOL v0[2];

    v0[0] = sub_0200384C(param0);
    v0[1] = sub_020087B4(param1);

    if ((v0[0] == 0) && (v0[1] == 0)) {
        return 1;
    }

    return 0;
}

static void ov21_021E9968 (UnkStruct_0205AA50 * param0, int param1, int param2)
{
    ov21_021DEB8C(param0, param2, param1, 0, ((u32)(((2 & 0xff) << 16) | ((1 & 0xff) << 8) | ((0 & 0xff) << 0))));
    ov21_021E998C(param0, param1);
}

static void ov21_021E998C (UnkStruct_0205AA50 * param0, int param1)
{
    UnkStruct_02023790 * v0 = sub_02023790(64, param1);
    UnkStruct_0200B144 * v1 = sub_0200B144(0, 26, 697, param1);

    sub_0200B1B8(v1, 110, v0);
    sub_0201D78C(param0, 0, v0, 32, 0, 0, ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);

    sub_020237BC(v0);
    sub_0200B190(v1);
}

static UnkStruct_02007C7C * ov21_021E99E0 (UnkStruct_02007768 * param0, Pokemon * param1, int param2, int param3, int param4)
{
    UnkStruct_02008A90 v0;

    sub_02075EF4(&v0, param1, 2);
    return sub_02007C34(param0, &v0, param2, param3, 0, 0, NULL, NULL);
}

static void ov21_021E9A0C (int param0)
{
    UnkStruct_ov22_022559F8 v0 = {
        32, (1024 * 0x40), (512 * 0x20), 0
    };

    v0.unk_0C = param0;
    sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
}

static void ov21_021E9A38 (void)
{
    sub_0201E958();
}

static void ov21_021E9A40 (UnkStruct_ov21_021E9A9C * param0, int param1, int param2, NARC * param3)
{
    int v0;

    if (param2 == 0) {
        param0->unk_00[0] = sub_020071EC(param3, 23, &param0->unk_08[0], param1);
    } else {
        param0->unk_00[0] = sub_020071EC(param3, 24, &param0->unk_08[0], param1);
    }

    param0->unk_00[1] = sub_020071EC(param3, 26, &param0->unk_08[1], param1);
    param0->unk_10 = 0;
    param0->unk_1C = 0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_14[v0] = (v0 + 1) * 16;
    }

    ov21_021E9AE8(param0, param0->unk_1C);
}

static void ov21_021E9A9C (UnkStruct_ov21_021E9A9C * param0)
{
    if (param0->unk_14[param0->unk_1C] <= param0->unk_10) {
        param0->unk_1C++;

        if (param0->unk_1C >= 2) {
            param0->unk_1C = 0;
            param0->unk_10 = 0;
        }

        ov21_021E9B08(param0, param0->unk_1C);
    } else {
        param0->unk_10++;
    }
}

static void ov21_021E9AC8 (UnkStruct_ov21_021E9A9C * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Heap_FreeToHeap(param0->unk_00[0]);
    }

    memset(param0, 0, sizeof(UnkStruct_ov21_021E9A9C));
}

static void ov21_021E9AE8 (UnkStruct_ov21_021E9A9C * param0, int param1)
{
    DC_FlushRange((void *)param0->unk_08[param1]->pRawData, 1 * 32);
    GX_LoadBGPltt(param0->unk_08[param1]->pRawData, 0 * 32, 1 * 32);
}

static void ov21_021E9B08 (UnkStruct_ov21_021E9A9C * param0, int param1)
{
    sub_0201DC68(NNS_GFD_DST_2D_BG_PLTT_MAIN, 0 * 32, param0->unk_08[param1]->pRawData, 1 * 32);
}
