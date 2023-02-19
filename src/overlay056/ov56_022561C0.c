#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_decls/struct_0205B43C_decl.h"
#include "overlay056/struct_ov56_02256468_decl.h"

#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02014A84.h"
#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_0203330C.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0205C22C.h"
#include "struct_defs/struct_0205C924.h"
#include "struct_defs/struct_0205C95C.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "unk_0200679C.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_02014A84.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02022594.h"
#include "plstring.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_02027F84.h"
#include "unk_02033200.h"
#include "unk_020508D4.h"
#include "unk_0205B33C.h"
#include "unk_0205D8CC.h"
#include "overlay056/ov56_022561C0.h"

FS_EXTERN_OVERLAY(overlay56);

struct UnkStruct_02023790_t {
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u16 unk_08[1];
};

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov56_02256294;

typedef struct {
    UnkStruct_0205AA50 unk_00;
    UnkStruct_0205AA50 unk_10;
    UnkStruct_0205AA50 unk_20;
    int unk_30;
    int unk_34;
} UnkStruct_ov56_022562EC;

struct UnkStruct_ov56_02256468_t {
    int unk_00;
    UnkStruct_0205C22C * unk_04;
    UnkStruct_0205B43C * unk_08;
    UnkStruct_0203CDB0 * unk_0C;
    UnkStruct_02025E6C * unk_10;
    UnkStruct_02018340 * unk_14;
    UnkStruct_0200B358 * unk_18;
    UnkStruct_0200B144 * unk_1C;
    u16 * unk_20;
    NNSG2dScreenData * unk_24;
    UnkStruct_020218BC * unk_28;
    UnkStruct_0200C738 unk_2C;
    UnkStruct_02009714 * unk_1B8[4];
    UnkStruct_02009DC8 * unk_1C8[4];
    UnkStruct_ov19_021DA864 unk_1D8;
    UnkStruct_02022550 * unk_1FC[8];
    int unk_21C;
    int unk_220;
    int unk_224;
    int unk_228;
    UnkStruct_ov56_022562EC unk_22C[3];
    UnkStruct_0205C95C * unk_2D4;
    UnkStruct_ov56_02256294 unk_2D8;
    int unk_2E0;
    int unk_2E4;
    BOOL unk_2E8;
    u8 unk_2EC;
    s8 unk_2ED;
    u8 unk_2EE;
    u8 unk_2EF;
    BOOL unk_2F0;
    u16 unk_2F4[2];
    UnkStruct_0201CD38 * unk_2F8;
};

static void ov56_02256294(UnkStruct_ov56_02256468 * param0);
static void ov56_022564E4(UnkStruct_02018340 * param0);
static void ov56_02256508(UnkStruct_02018340 * param0);
static void ov56_02256634(UnkStruct_ov56_02256468 * param0);
static void ov56_02256704(UnkStruct_ov56_02256468 * param0);
static void ov56_022562EC(UnkStruct_02018340 * param0, UnkStruct_ov56_022562EC * param1);
static void ov56_022563E8(UnkStruct_ov56_022562EC * param0);
static void ov56_022568E0(UnkStruct_ov56_02256468 * param0);
static void ov56_022567FC(UnkStruct_ov56_02256468 * param0, int param1, UnkStruct_0205C924 * param2);
static void ov56_02256D04(UnkStruct_ov56_02256468 * param0);
static void ov56_022569E0(UnkStruct_ov56_02256468 * param0);
static void ov56_02256994(UnkStruct_02022550 * param0, int param1);
static void ov56_02257098(UnkStruct_ov56_02256468 * param0);
static void ov56_02256EE8(UnkStruct_ov56_02256468 * param0, u32 param1, UnkStruct_02014A84 * param2, UnkStruct_02025E6C * param3);
static int ov56_02256FC8(UnkStruct_ov56_02256468 * param0, UnkStruct_02014A84 * param1, int param2);
static int ov56_022567E4(UnkStruct_0205C95C * param0, int param1);
static int ov56_022567F0(int param0, int param1);
static int ov56_02256A68(UnkStruct_ov56_02256468 * param0);
static int ov56_02256BC0(UnkStruct_ov56_02256468 * param0);
static void ov56_02257100(UnkStruct_ov56_02256468 * param0);
static void ov56_02257048(UnkStruct_ov56_02256468 * param0, UnkStruct_02025E6C * param1, UnkStruct_02014A84 * param2, u32 param3);
static PLString * ov56_02256E5C(UnkStruct_02027F8C * param0, u32 param1, UnkStruct_0200B358 * param2, UnkStruct_0200B144 * param3, UnkStruct_02025E6C * param4);
static void ov56_02256D64(UnkStruct_02018340 * param0, NNSG2dScreenData * param1, UnkStruct_ov56_022562EC * param2, int param3, int param4, int * param5);
static void ov56_0225710C(UnkStruct_ov56_02256468 * param0);
static void ov56_0225712C(UnkStruct_ov56_02256468 * param0);
static BOOL ov56_02257174(const UnkStruct_ov56_02256468 * param0);
static void ov56_0225717C(UnkStruct_ov56_02256468 * param0, BOOL param1);
static BOOL ov56_02257184(const UnkStruct_ov56_02256468 * param0);
static void ov56_0225718C(UnkStruct_ov56_02256468 * param0, int param1);
static void ov56_022571D0(UnkStruct_ov56_02256468 * param0);

static void ov56_022561C0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov56_02256468 * v0 = param1;
    UnkStruct_02018340 * v1 = v0->unk_14;
    int v2;

    if (v0->unk_0C->unk_80 == NULL) {
        return;
    }

    switch (v0->unk_00) {
    case 0:
        ov56_02256508(v1);
        ov56_02256294(v0);
        sub_02017DD4(4, 8);
        ov56_0225710C(v0);
        ov56_0225717C(v0, 1);
        v0->unk_00++;
        break;
    case 1:
        ov56_02256634(v0);
        ov56_02256704(v0);
        sub_02002BEC(1, 4);
        ov56_022562EC(v0->unk_14, v0->unk_22C);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        ov56_02257100(v0);
        v0->unk_00++;
        break;
    case 2:
        ov56_0225712C(v0);
        ov56_02257098(v0);
        ov56_022569E0(v0);
        ov56_02256D04(v0);
        ov56_022568E0(v0);
        ov56_022571D0(v0);
        sub_020219F8(v0->unk_28);
        break;
    case 3:
        break;
    }
}

static void ov56_02256294 (UnkStruct_ov56_02256468 * param0)
{
    int v0;

    param0->unk_2E8 = 0;
    param0->unk_2D8.unk_00 = 0;
    param0->unk_2D8.unk_02 = 0;
    param0->unk_2D8.unk_04 = 0;
    param0->unk_2D8.unk_06 = 0;
    param0->unk_18 = sub_0200B358(4);
    param0->unk_1C = sub_0200B144(0, 26, 635, 4);
    param0->unk_20 = sub_02006F6C(74, 3, 1, &(param0->unk_24), 4);
}

static void ov56_022562EC (UnkStruct_02018340 * param0, UnkStruct_ov56_022562EC * param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0201A7E8(param0, &param1[v0].unk_00, 4 + v0, 1, 1 + v0 * 8, 8, 2, 12, (32 * 5) + v0 * (8 * 2));
        sub_0201ADA4(&param1[v0].unk_00, 0x0);

        sub_0201A954(&param1[v0].unk_00);

        sub_0201A7E8(param0, &param1[v0].unk_10, 4 + v0, 2, 3 + v0 * 8, 27, 5, 12, ((32 * 5) + (8 * 2) * 3) + v0 * (27 * 5));
        sub_0201ADA4(&param1[v0].unk_10, 0x0);
        sub_0201A954(&param1[v0].unk_10);

        sub_0201A7E8(param0, &param1[v0].unk_20, 4 + v0, 12, 1 + v0 * 8, 15, 2, 12, (((32 * 5) + (8 * 2) * 3) + (27 * 5) * 3) + v0 * (15 * 2));
        sub_0201ADA4(&param1[v0].unk_20, 0x0);
        sub_0201A954(&param1[v0].unk_20);
    }
}

static void ov56_022563E8 (UnkStruct_ov56_022562EC * param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0201A8FC(&param0[v0].unk_10);
        sub_0201A8FC(&param0[v0].unk_00);
        sub_0201A8FC(&param0[v0].unk_20);
    }
}

UnkStruct_ov56_02256468 * ov56_02256410 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_ov56_02256468 * v0;
    UnkStruct_0201CD38 * v1;

    v1 = sub_0200679C(ov56_022561C0, sizeof(UnkStruct_ov56_02256468), 4, 4);
    v0 = sub_0201CED0(v1);

    v0->unk_0C = param0;
    v0->unk_14 = param0->unk_08;
    v0->unk_04 = param0->unk_80;
    v0->unk_08 = param0->unk_7C;
    v0->unk_10 = sub_02025E38(param0->unk_0C);
    v0->unk_00 = 0;
    v0->unk_2F8 = v1;
    v0->unk_2D4 = param0->unk_80->unk_478;

    return v0;
}

void ov56_02256468 (UnkStruct_ov56_02256468 * param0)
{
    if (param0->unk_00 == 2) {
        UnkStruct_02018340 * v0 = param0->unk_14;
        int v1;

        param0->unk_00 = 3;

        sub_02002C28(1);
        sub_0200A4E4(param0->unk_1C8[0]);
        sub_0200A6DC(param0->unk_1C8[1]);

        for (v1 = 0; v1 < 4; v1++) {
            sub_02009754(param0->unk_1B8[v1]);
        }

        sub_02021964(param0->unk_28);
        sub_0200B190(param0->unk_1C);
        sub_0200B3F0(param0->unk_18);

        ov56_022563E8(param0->unk_22C);
        ov56_022564E4(v0);

        Heap_FreeToHeap(param0->unk_20);
        sub_020067D0(param0->unk_2F8);
    } else {
        GF_ASSERT(0);
    }
}

static void ov56_022564E4 (UnkStruct_02018340 * param0)
{
    sub_02019044(param0, 4);
    sub_02019044(param0, 5);
    sub_02019044(param0, 6);
    sub_02019044(param0, 7);
}

static void ov56_02256508 (UnkStruct_02018340 * param0)
{
    ov56_022564E4(param0);

    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x6000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v0, 0);
        sub_02019EBC(param0, 4);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x6800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v1, 0);
        sub_02019EBC(param0, 5);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 6, &v2, 0);
        sub_02019EBC(param0, 6);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x7800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 7, &v3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    }

    sub_02006E84(74, 0, 4, 0, 0x20 * 3, 4);
    sub_02006E3C(74, 2, param0, 7, 0, (32 * 5) * 0x20, 1, 4);
    sub_02006E60(74, 4, param0, 7, 0, 32 * 24 * 2, 1, 4);
    sub_0205D8CC(4, 0);
}

static void ov56_02256634 (UnkStruct_ov56_02256468 * param0)
{
    int v0;

    param0->unk_28 = sub_020095C4(10, &param0->unk_2C, 4);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1B8[v0] = sub_02009714(1, v0, 4);
    }

    param0->unk_1C8[0] = sub_0200985C(param0->unk_1B8[0], 74, 5, 1, 999, NNS_G2D_VRAM_TYPE_2DSUB, 4);
    param0->unk_1C8[1] = sub_020098B8(param0->unk_1B8[1], 74, 1, 0, 999, NNS_G2D_VRAM_TYPE_2DSUB, 1, 4);
    param0->unk_1C8[2] = sub_02009918(param0->unk_1B8[2], 74, 6, 1, 999, 2, 4);
    param0->unk_1C8[3] = sub_02009918(param0->unk_1B8[3], 74, 7, 1, 999, 3, 4);

    sub_0200A3DC(param0->unk_1C8[0]);
    sub_0200A640(param0->unk_1C8[1]);
}

static const int Unk_ov56_02257238[] = {
    0x0,
    0xA0,
    0x60
};

static void ov56_02256704 (UnkStruct_ov56_02256468 * param0)
{
    int v0;

    sub_020093B4(&param0->unk_1D8, 999, 999, 999, 999, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1B8[0], param0->unk_1B8[1], param0->unk_1B8[2], param0->unk_1B8[3], NULL, NULL);

    {
        UnkStruct_ov115_02261520 v1;

        v1.unk_00 = param0->unk_28;
        v1.unk_04 = &param0->unk_1D8;
        v1.unk_08.z = 0;
        v1.unk_14.x = FX32_ONE;
        v1.unk_14.y = FX32_ONE;
        v1.unk_14.z = FX32_ONE;
        v1.unk_20 = 0;
        v1.unk_24 = 0;
        v1.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
        v1.unk_2C = 4;

        for (v0 = 0; v0 < 3; v0++) {
            v1.unk_08.x = FX32_CONST((256 - 24));
            v1.unk_08.y = FX32_CONST(Unk_ov56_02257238[v0]) + (192 << FX32_SHIFT);

            param0->unk_1FC[v0] = sub_02021AA0(&v1);

            sub_02021CC8(param0->unk_1FC[v0], 1);
            sub_02021D6C(param0->unk_1FC[v0], v0);
        }
    }
}

static int ov56_022567E4 (UnkStruct_0205C95C * param0, int param1)
{
    param1++;

    if (param1 == 30) {
        param1 = 0;
    }

    return param1;
}

static int ov56_022567F0 (int param0, int param1)
{
    int v0 = param0 + param1;

    if (v0 >= 30) {
        v0 -= 30;
    }

    return v0;
}

static void ov56_022567FC (UnkStruct_ov56_02256468 * param0, int param1, UnkStruct_0205C924 * param2)
{
    param0->unk_22C[param1].unk_30 = param2->unk_10;

    sub_020198E8(param0->unk_14, 7, 0, param1 * 8, 32, 8, param0->unk_24->rawData, 0, 24 * param0->unk_22C[param1].unk_30, 32, 48);
    sub_0201ADA4(&param0->unk_22C[param1].unk_00, 0x0);
    sub_0201ADA4(&param0->unk_22C[param1].unk_10, 0x0);
    sub_0201ADA4(&param0->unk_22C[param1].unk_20, 0x0);
    sub_0201D78C(&param0->unk_22C[param1].unk_00, 1, param2->unk_00, 0, 1, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
    sub_0201D78C(&param0->unk_22C[param1].unk_10, 1, param2->unk_04, 0, 6, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
    sub_0201A9A4(&param0->unk_22C[param1].unk_00);
    sub_0201A9A4(&param0->unk_22C[param1].unk_10);

    if (param2->unk_08) {
        sub_0201D78C(&param0->unk_22C[param1].unk_20, 1, param2->unk_08, 0, 1, 0xff, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
    }

    sub_0201A9A4(&param0->unk_22C[param1].unk_20);
}

static void ov56_022568E0 (UnkStruct_ov56_02256468 * param0)
{
    int v0, v1;
    int v2 = ov56_022567F0(param0->unk_2D4->unk_34C, param0->unk_2D8.unk_04);
    int v3 = param0->unk_2D4->unk_348;

    if (v3 > 3) {
        v3 = 3;
    }

    if (param0->unk_2D8.unk_04 != param0->unk_2E0) {
        ov56_02257100(param0);
        param0->unk_2E0 = param0->unk_2D8.unk_04;
    }

    if (param0->unk_2E8 == 1) {
        for (v0 = 0; v0 < v3; v0++) {
            ov56_022567FC(param0, v0, &param0->unk_2D4->unk_00[v2]);
            v2 = ov56_022567E4(param0->unk_2D4, v2);
        }

        DC_FlushRange((void *)sub_02019FE4(param0->unk_14, 7), 32 * 24 * 2);
        sub_02019460(param0->unk_14, 7, sub_02019FE4(param0->unk_14, 7), 32 * 24 * 2, 0);

        param0->unk_2E8 = 0;
    }
}

static const UnkUnion_02022594 Unk_ov56_02257264[] = {
    {0x0, 0x20, 0xE8, 0xF8},
    {0xA0, 0x20, 0xE8, 0xF8},
    {0x0, 0x40, 0x0, 0xE8},
    {0x40, 0x80, 0x0, 0xE8},
    {0x80, 0xC0, 0x0, 0xE8},
    {0x30, 0x90, 0xE8, 0x100},
    {0xff, 0x0, 0x0, 0x0}
};

static const UnkUnion_02022594 Unk_ov56_02257250[] = {
    {0x30, 0x90, 0xE8, 0x100},
    {0x0, 0x40, 0x0, 0xE8},
    {0x40, 0x80, 0x0, 0xE8},
    {0x80, 0xC0, 0x0, 0xE8},
    {0xff, 0x0, 0x0, 0x0}
};

static void ov56_02256994 (UnkStruct_02022550 * param0, int param1)
{
    VecFx32 v0;

    v0.x = FX32_CONST((256 - 24));
    v0.y = FX32_CONST(param1) + (192 << FX32_SHIFT);
    v0.z = 0;

    sub_02021C50(param0, &v0);
}

static void ov56_022569E0 (UnkStruct_ov56_02256468 * param0)
{
    param0->unk_2D8.unk_00 = param0->unk_2D4->unk_348;

    if ((param0->unk_2D8.unk_00 > 3) && (param0->unk_2D8.unk_02 <= 3)) {
        param0->unk_2D8.unk_06 = 1;
        param0->unk_2D8.unk_04 = param0->unk_2D8.unk_00 - 3;
    }

    sub_02021CAC(param0->unk_1FC[2], param0->unk_2D8.unk_06);

    if (param0->unk_2D8.unk_06) {
        if (ov56_02257184(param0) == 1) {
            int v0, v1;

            v1 = (8 * 4 + 16) + (param0->unk_2D8.unk_04 * (192 - 8 * 8 - 16 * 2)) / (param0->unk_2D8.unk_00 - 3);
            ov56_02256994(param0->unk_1FC[2], v1);
        }
    }

    param0->unk_2D8.unk_02 = param0->unk_2D8.unk_00;
}

static int ov56_02256A68 (UnkStruct_ov56_02256468 * param0)
{
    int v0, v1, v2, v3;
    WMBssDesc * v4;
    UnkStruct_0203330C * v5;

    v0 = sub_02022644(Unk_ov56_02257264);
    v3 = ov56_02257174(param0);

    if ((v0 != 0xffffffff)) {
        switch (v0) {
        case 0:
            ov56_0225718C(param0, v0);

            if (v3 == 1) {
                if (param0->unk_2D8.unk_04 != 0) {
                    sub_02005748(1509);
                    param0->unk_2D8.unk_04--;
                }

                param0->unk_228 = v0 - 2;
            }
            break;
        case 1:
            ov56_0225718C(param0, v0);

            if (v3 == 1) {
                if (param0->unk_2D8.unk_04 < param0->unk_2D8.unk_00 - 3) {
                    sub_02005748(1509);
                    param0->unk_2D8.unk_04++;
                }

                param0->unk_228 = v0 - 2;
            }
            break;
        case 5:
            param0->unk_228 = v0 - 2;
            break;
        default:
            if (Unk_021BF67C.unk_60 == 0) {
                break;
            }

            if (param0->unk_2D4->unk_348 >= (v0 - 1)) {
                v2 = ov56_022567F0(param0->unk_2D4->unk_34C, param0->unk_2D8.unk_04 + v0 - 2);

                for (v1 = 0; v1 < 10; v1++) {
                    v4 = sub_02033F3C(v1);

                    if (v4 != NULL) {
                        v5 = (UnkStruct_0203330C *)&v4->gameInfo.userGameInfo;

                        if ((param0->unk_04->unk_0C[v1].unk_01 == 2) && (v5->unk_00 == param0->unk_2D4->unk_00[v2].unk_0C)) {
                            sub_02005748(1509);
                            param0->unk_04->unk_0C[v1].unk_03 = 1;
                            break;
                        }
                    }
                }

                {
                    UnkStruct_02025E6C * v6 = sub_02033F9C();

                    if (param0->unk_2D4->unk_00[v2].unk_0C == sub_02025F20(v6)) {
                        sub_02005748(1509);
                        param0->unk_04->unk_0C[50].unk_03 = 1;
                    }
                }
            }

            param0->unk_228 = v0 - 2;
            break;
        }
    }

    return v0;
}

static int ov56_02256BC0 (UnkStruct_ov56_02256468 * param0)
{
    int v0;

    v0 = sub_02022644(Unk_ov56_02257250);

    if (v0 != 0xffffffff) {
        u32 v1, v2;

        switch (v0) {
        case 0:
            ov56_0225717C(param0, 0);
            sub_020227A4(&v1, &v2);
            ov56_02256994(param0->unk_1FC[2], v2);

            if (param0->unk_2D8.unk_00 > 3) {
                int v3, v4;

                v3 = (192 - 8 * 8 - 16 * 2) / (param0->unk_2D8.unk_00 - 2);

                for (v4 = 0; v4 < param0->unk_2D8.unk_00 - 2; v4++) {
                    if ((v2 >= (8 * 4 + 16) + v3 * v4) && (v2 < (8 * 4 + 16) + v3 * (v4 + 1))) {
                        param0->unk_2D8.unk_04 = v4;
                        break;
                    }
                }
            }
            break;
        default:
            if (param0->unk_2D4->unk_348 >= v0) {
                if (param0->unk_228 == (v0 - 1)) {
                    if (param0->unk_22C[v0 - 1].unk_34 < 2 * 2 + 1) {
                        param0->unk_22C[v0 - 1].unk_34++;
                    }
                }
            }
            break;
        }
    } else {
        ov56_0225717C(param0, 1);
    }

    return v0;
}

static void ov56_02256C84 (UnkStruct_ov56_02256468 * param0)
{
    if (Unk_021BF67C.unk_44 & PAD_BUTTON_L) {
        ov56_0225718C(param0, 0);

        if (Unk_021BF67C.unk_4C & PAD_BUTTON_L) {
            if (param0->unk_2D8.unk_04 != 0) {
                param0->unk_2D8.unk_04--;
                sub_02005748(1509);
            }
        }
    } else if (Unk_021BF67C.unk_44 & PAD_BUTTON_R) {
        ov56_0225718C(param0, 1);

        if (Unk_021BF67C.unk_4C & PAD_BUTTON_R) {
            if (param0->unk_2D8.unk_04 < param0->unk_2D8.unk_00 - 3) {
                param0->unk_2D8.unk_04++;
                sub_02005748(1509);
            }
        }
    }
}

static void ov56_02256D04 (UnkStruct_ov56_02256468 * param0)
{
    int v0 = 0xffffffff;

    if (!sub_020509A4(param0->unk_0C)) {
        int v1;

        v1 = ov56_02256A68(param0);
        v0 = ov56_02256BC0(param0);

        if ((v1 == 0xffffffff) && (v0 == 0xffffffff)) {
            ov56_02256C84(param0);
        }
    }

    ov56_02256D64(param0->unk_14, param0->unk_24, param0->unk_22C, v0 - 1, param0->unk_2D4->unk_348, &param0->unk_2E4);
}

static const int Unk_ov56_02257244[] = {
    0x0,
    0x3,
    0x5
};

static void ov56_02256D64 (UnkStruct_02018340 * param0, NNSG2dScreenData * param1, UnkStruct_ov56_022562EC * param2, int param3, int param4, int * param5)
{
    int v0, v1 = 0;

    if (param4 > 3) {
        param4 = 3;
    }

    for (v0 = 0; v0 < param4; v0++) {
        if (param3 != v0) {
            if (param2[v0].unk_34 != 0) {
                param2[v0].unk_34--;
            }
        }

        v1 += param2[v0].unk_34;
    }

    if ((v1 == 0) && (*param5 == 0)) {
        *param5 = v1;
        return;
    }

    *param5 = v1;

    for (v0 = 0; v0 < param4; v0++) {
        int v2 = param2[v0].unk_34 / 2;

        sub_020198E8(param0, 7, 0, v0 * 8, 32, 8, param1->rawData, 0, 24 * param2[v0].unk_30 + 8 * v2, 32, 48);
        sub_02019184(param0, 4 + v0, 3, Unk_ov56_02257244[v2]);
    }

    DC_FlushRange((void *)sub_02019FE4(param0, 7), 32 * 24 * 2);
    sub_02019460(param0, 7, sub_02019FE4(param0, 7), 32 * 24 * 2, 0);
}

static PLString * ov56_02256E5C (UnkStruct_02027F8C * param0, u32 param1, UnkStruct_0200B358 * param2, UnkStruct_0200B144 * param3, UnkStruct_02025E6C * param4)
{
    PLString * v0 = NULL;
    PLString * v1;
    int v2 = 0;

    if (param1 != sub_02025F20(param4)) {
        v2 = sub_020280E0(param0, param1);
    }

    if (v2 > 0) {
        if (v2 == 1) {
            sub_0200B498(param2, 0, param4);
        } else if (v2 >= 2) {
            int v3 = v2 - 2;

            v1 = PLString_AllocFromHeap(10, 89);

            PLString_ImportChars(v1, sub_02027FBC(param0, v3));
            sub_0200B48C(param2, 0, v1, 0, 0, sub_02027FC4(param0, v3));
            PLString_FreeToHeap(v1);
        }

        v0 = sub_0200B29C(param2, param3, 208, 89);
    }

    return v0;
}

static void ov56_02256EE8 (UnkStruct_ov56_02256468 * param0, u32 param1, UnkStruct_02014A84 * param2, UnkStruct_02025E6C * param3)
{
    UnkStruct_0205C95C * v0 = param0->unk_2D4;
    UnkStruct_02027F8C * v1 = param0->unk_04->unk_474;
    int * v2;

    if (v0->unk_348 == 30) {
        v2 = &v0->unk_34C;
    } else {
        v2 = &v0->unk_348;
    }

    if (v0->unk_00[*v2].unk_04 != NULL) {
        PLString_FreeToHeap(v0->unk_00[*v2].unk_04);
    }

    if (v0->unk_00[*v2].unk_08 != NULL) {
        PLString_FreeToHeap(v0->unk_00[*v2].unk_08);
    }

    PLString_ImportChars(v0->unk_00[*v2].unk_00, sub_02025EF0(param3));

    v0->unk_00[*v2].unk_14 = *param2;
    v0->unk_00[*v2].unk_0C = param1;
    v0->unk_00[*v2].unk_10 = sub_02025F30(param3);
    v0->unk_00[*v2].unk_04 = sub_02014B34(param2, 89);
    v0->unk_00[*v2].unk_08 = ov56_02256E5C(v1, param1, param0->unk_18, param0->unk_1C, param0->unk_10);

    (*v2)++;

    if (v0->unk_34C == 30) {
        v0->unk_34C = 0;
    }
}

static int ov56_02256FC8 (UnkStruct_ov56_02256468 * param0, UnkStruct_02014A84 * param1, int param2)
{
    int v0, v1;

    if (!sub_02014BBC(param1)) {
        return 0;
    }

    for (v0 = 0; v0 < param0->unk_2D4->unk_348; v0++) {
        if (param2 == param0->unk_2D4->unk_00[v0].unk_0C) {
            if (sub_02014C88(param1, &param0->unk_2D4->unk_00[v0].unk_14)) {
                break;
            }
        }
    }

    if ((v0 != param0->unk_2D4->unk_348) && (param0->unk_2D4->unk_348 != 0)) {
        return 0;
    }

    if (param2 == param0->unk_2D4->unk_00[v0].unk_0C) {
        (void)0;
    } else if (sub_02014C88(param1, &param0->unk_2D4->unk_00[v0].unk_14)) {
        (void)0;
    }

    return 1;
}

static void ov56_02257048 (UnkStruct_ov56_02256468 * param0, UnkStruct_02025E6C * param1, UnkStruct_02014A84 * param2, u32 param3)
{
    int v0 = 0;

    if (param0->unk_2D8.unk_04 == param0->unk_2D8.unk_00 - 3) {
        v0 = 1;
    }

    ov56_02256EE8(param0, param3, param2, param1);

    if (param0->unk_2D8.unk_06) {
        if (v0) {
            param0->unk_2D8.unk_04 = param0->unk_2D4->unk_348 - 3;
        }
    }

    ov56_02257100(param0);
}

static void ov56_02257098 (UnkStruct_ov56_02256468 * param0)
{
    int v0, v1;
    WMBssDesc * v2;
    UnkStruct_0203330C * v3;
    UnkStruct_02014A84 * v4;
    UnkStruct_02025E6C * v5;
    UnkStruct_02014A84 v6;

    if (sub_020509A4(param0->unk_0C)) {
        return;
    }

    for (v0 = 0; v0 < 16; v0++) {
        v2 = sub_02033F3C(v0);

        if (v2 != NULL) {
            v3 = (UnkStruct_0203330C *)&v2->gameInfo.userGameInfo;
            v4 = (UnkStruct_02014A84 *)&v3->unk_08;

            if (ov56_02256FC8(param0, v4, v3->unk_00)) {
                ov56_02257048(param0, sub_02033FB0(v0), v4, v3->unk_00);
            }
        }
    }

    if ((v4 = sub_0205C028(param0->unk_08)) != NULL) {
        u32 v7 = sub_02025F20(param0->unk_10);
        ov56_02257048(param0, param0->unk_10, v4, v7);
    }
}

static void ov56_02257100 (UnkStruct_ov56_02256468 * param0)
{
    param0->unk_2E8 = 1;
}

static void ov56_0225710C (UnkStruct_ov56_02256468 * param0)
{
    param0->unk_2EC = 0;
    param0->unk_2EE = 8;
    param0->unk_2EF = 4;
    param0->unk_2ED = param0->unk_2EE;
}

static void ov56_0225712C (UnkStruct_ov56_02256468 * param0)
{
    param0->unk_2EC = 0;

    if (Unk_021BF67C.unk_60) {
        param0->unk_2EC = 1;
    } else {
        if (Unk_021BF67C.unk_62) {
            param0->unk_2ED--;

            if (param0->unk_2ED < 0) {
                param0->unk_2EC = 1;
                param0->unk_2ED = param0->unk_2EF;
            }
        } else {
            param0->unk_2ED = param0->unk_2EE;
        }
    }
}

static BOOL ov56_02257174 (const UnkStruct_ov56_02256468 * param0)
{
    return param0->unk_2EC;
}

static void ov56_0225717C (UnkStruct_ov56_02256468 * param0, BOOL param1)
{
    param0->unk_2F0 = param1;
}

static BOOL ov56_02257184 (const UnkStruct_ov56_02256468 * param0)
{
    return param0->unk_2F0;
}

static void ov56_0225718C (UnkStruct_ov56_02256468 * param0, int param1)
{
    u16 v0;
    u16 v1;

    v0 = sub_02021E74(param0->unk_1FC[param1]);
    v1 = sub_02021E24(param0->unk_1FC[param1]);

    if ((v0 > 1) || (v1 != param1 + 4)) {
        sub_02021D6C(param0->unk_1FC[param1], param1 + 4);
    }

    param0->unk_2F4[param1] = 1;
}

static void ov56_022571D0 (UnkStruct_ov56_02256468 * param0)
{
    int v0;
    u16 v1;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = sub_02021E74(param0->unk_1FC[v0]);

        if (param0->unk_2F4[v0] == 1) {
            if (v1 >= 1) {
                sub_02021CC8(param0->unk_1FC[v0], 0);
            }

            param0->unk_2F4[v0] = 0;
        } else {
            if (sub_02021D3C(param0->unk_1FC[v0]) == 0) {
                sub_02021CC8(param0->unk_1FC[v0], 1);
                sub_02021E50(param0->unk_1FC[v0], 1 + 1);
            }
        }
    }
}
