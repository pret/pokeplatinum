#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>
#include <dwc.h>

#include "constants/battle.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "strbuf.h"
#include "struct_decls/struct_0207ADB4_decl.h"
#include "struct_decls/struct_0207AE68_decl.h"
#include "battle/battle_context.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/struct_0207A778.h"
#include "struct_defs/struct_0207ADB4_t.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay006/battle_params.h"
#include "overlay010/struct_ov10_0221F800.h"
#include "overlay016/struct_ov16_0223C2C0.h"
#include "overlay016/struct_ov16_022674C4.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "game_overlay.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200C440.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02014000.h"
#include "unk_0201567C.h"
#include "unk_02015F84.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "gx_layers.h"
#include "strbuf.h"
#include "unk_0202419C.h"
#include "unk_020241F0.h"
#include "unk_02024220.h"
#include "unk_02025E68.h"
#include "unk_0202631C.h"
#include "unk_020279FC.h"
#include "unk_0202CD50.h"
#include "unk_0202F1D4.h"
#include "unk_02033200.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038F8C.h"
#include "unk_020393C8.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0207A6DC.h"
#include "unk_0207AE68.h"
#include "unk_0207D3B8.h"
#include "unk_0208C098.h"
#include "overlay010/ov10_0221F800.h"
#include "overlay011/ov11_0221F840.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay016/ov16_0223B140.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0224B940.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225BFFC.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_0226485C.h"
#include "overlay016/ov16_02268520.h"
#include "overlay016/ov16_0226871C.h"
#include "overlay016/ov16_0226E148.h"

FS_EXTERN_OVERLAY(overlay10);
FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay12);
FS_EXTERN_OVERLAY(overlay13);
FS_EXTERN_OVERLAY(overlay14);
FS_EXTERN_OVERLAY(overlay21);

static const u32 BattleServerVersion = 0x140;

BOOL ov16_0223B140(UnkStruct_020067E8 * param0, int * param1);
void ov16_0223B384(UnkStruct_0207ADB4 * param0);
void ov16_0223B3E4(UnkStruct_0207ADB4 * param0);
void ov16_0223B430(UnkStruct_0207ADB4 * param0);
void ov16_0223B53C(UnkStruct_0207ADB4 * param0);
void ov16_0223B578(UnkStruct_0207ADB4 * param0);
void ov16_0223B748(UnkStruct_0207ADB4 * param0, int param1);
static void ov16_0223B790(UnkStruct_020067E8 * param0);
static int ov16_0223BBD0(UnkStruct_020067E8 * param0);
static void ov16_0223BCB4(UnkStruct_020067E8 * param0);
static BOOL ov16_0223D800(UnkStruct_020067E8 * param0);
static BOOL ov16_0223D944(UnkStruct_020067E8 * param0);
static BOOL ov16_0223D98C(UnkStruct_020067E8 * param0);
static BOOL ov16_0223DAD4(UnkStruct_020067E8 * param0);
static BOOL ov16_0223DB1C(UnkStruct_020067E8 * param0);
static BOOL ov16_0223DD10(UnkStruct_020067E8 * param0);
static void ov16_0223D10C(UnkStruct_020067E8 * param0, BattleParams * param1);
static BOOL ov16_0223D354(UnkStruct_020067E8 * param0);
static void ov16_0223D7B4(UnkStruct_020067E8 * param0);
static void ov16_0223C004(UnkStruct_0207ADB4 * param0, UnkStruct_02018340 * param1);
static void ov16_0223C210(UnkStruct_0207ADB4 * param0);
static void ov16_0223C288(UnkStruct_02018340 * param0);
static void ov16_0223C2BC(UnkStruct_0207ADB4 * param0);
static void ov16_0223C2C0(UnkStruct_0207ADB4 * param0, BattleParams * param1);
static void ov16_0223CE28(void);
static void ov16_0223CE68(void * param0);
static void ov16_0223CF1C(void * param0);
static void ov16_0223CF48(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0223CF8C(UnkStruct_0201CD38 * param0, void * param1);
static UnkStruct_0207C690 * ov16_0223CD7C(void);
static void ov16_0223CE20(UnkStruct_0207C690 * param0);
static void ov16_0223CD9C(void);
static void ov16_0223DD4C(UnkStruct_0207ADB4 * param0);
static void ov16_0223D0C4(UnkStruct_0201CD38 * param0, void * param1);
static BOOL ov16_0223CD3C(u16 param0);
static void ov16_0223DD90(UnkStruct_0207ADB4 * param0, BattleParams * param1);
static void ov16_0223DECC(void);

static const UnkStruct_ov104_0224133C Unk_ov16_0226E2E4 = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const UnkStruct_ov104_022412F4 Unk_ov16_0226E29C = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_64K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

const UnkStruct_ov104_02241308 Unk_ov16_0226E2B0 = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

BOOL ov16_0223B140 (UnkStruct_020067E8 * param0, int * param1)
{
    BattleParams * v0 = sub_02006840(param0);

    switch (*param1) {
    case 0:
        Heap_Create(3, 5, 0xb0000);

        if ((v0->battleType & BATTLE_TYPE_LINK) && ((v0->unk_164 & 0x10) == 0)) {
            *param1 = 1;
        } else {
            *param1 = 3;
        }
        break;
    case 1:
        ov16_0223D10C(param0, v0);
        sub_02038F8C(v0->unk_104);

        if (!sub_020389B8()) {
            sub_0202CF28(v0->unk_11C, (1 + 19));
        } else {
            sub_0202CF28(v0->unk_11C, (1 + 24));
        }
        *param1 = 2;
        break;
    case 2:
        if (ov16_0223D354(param0) == 1) {
            ov16_0223D7B4(param0);
            *param1 = 3;
        }
        break;
    case 3:
        if (ov16_0223D800(param0) == 1) {
            *param1 = 4;
        } else {
            *param1 = 5;
        }
        break;
    case 4:
        if (ov16_0223D944(param0) == 1) {
            *param1 = 5;
        }
        break;
    case 5:
        if (ov16_0223D98C(param0) == 1) {
            *param1 = 6;
        } else {
            *param1 = 8;
        }
        break;
    case 6:
        if (ov16_0223DAD4(param0) == 1) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay10));
            *param1 = 7;
            sub_020364F0(61);
        }
        break;
    case 7:
        if (sub_02036540(61)) {
            *param1 = 8;
        }
        break;
    case 8:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay11), 2);
        Overlay_LoadByID(FS_OVERLAY_ID(overlay12), 2);
        ov16_0223B790(param0);
        *param1 = 9;
        break;
    case 9:
        if (ov16_0223BBD0(param0) == 1) {
            ov16_0223BCB4(param0);
            *param1 = 10;
        }
        break;
    case 10:
        if (ov16_0223DB1C(param0) == 1) {
            *param1 = 11;
        } else {
            Heap_Destroy(5);
            *param1 = 13;
        }
        break;
    case 11:
        if (ov16_0223DD10(param0) == 1) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay10));
            Heap_Destroy(5);
            *param1 = 12;
        }
        break;
    case 12:
        *param1 = 15;
        break;
    case 13:
    {
        int v1;
        int v2;
        int v3;
        Pokemon * v4;

        v2 = ov16_0223ECC4(v0, &v1, &v3);

        if (v2) {
            Heap_Create(3, 73, 0x30000);
            v4 = Party_GetPokemonBySlotIndex(v0->parties[0], v1);
            v0->unk_170 = sub_0207AE68(v0->parties[0], v4, v2, v0->unk_108, v0->unk_140, v0->unk_E8, v0->unk_E0, v0->unk_11C, v0->unk_100, v3, 0x1 | 0x2, 73);
            *param1 = 14;
        } else {
            *param1 = 15;
        }
    }
    break;
    case 14:
    {
        UnkStruct_0207AE68 * v5 = (UnkStruct_0207AE68 *)v0->unk_170;

        if (sub_0207B0D0(v5) == 1) {
            sub_0207B0E0(v5);
            Heap_Destroy(73);
            *param1 = 13;
        }
    }
    break;
    case 15:
        return 1;
    }

    return 0;
}

void ov16_0223B384 (UnkStruct_0207ADB4 * param0)
{
    ov16_02268A14(param0->unk_198);
    ov16_022687A0(param0->unk_04);

    param0->unk_23FB_2 = 1;

    sub_02002C60(2);
    ov16_0223F314(param0, 3);

    if (param0->unk_2441 == 0) {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));
    } else {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay14));
    }

    Overlay_LoadByID(FS_OVERLAY_ID(overlay13), 2);
}

void ov16_0223B3E4 (UnkStruct_0207ADB4 * param0)
{
    sub_02017798(NULL, NULL);
    ov16_02268A14(param0->unk_198);
    sub_0201A8FC(&param0->unk_08[0]);

    ov16_0223C288(param0->unk_04);
    ov16_0223C2BC(param0);

    sub_0200D0B0(param0->unk_90, param0->unk_94);
    sub_0200C8D4(param0->unk_90);
    sub_0201DC3C();
    sub_02002C60(2);
}

void ov16_0223B430 (UnkStruct_0207ADB4 * param0)
{
    NARC * v0;
    NARC * v1;

    Overlay_UnloadByID(FS_OVERLAY_ID(overlay13));

    if (param0->unk_2441 == 0) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay12), 2);
    } else {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay14), 2);
    }

    ov16_0223F314(param0, 0);
    MI_CpuFill16((void *)sub_02024200(), 0x0, sub_02024208());

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
    v1 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);
    param0->unk_198 = ov16_022687C8(v0, v1, param0, ov16_0223E1B4(param0, ov16_0223F6E4(param0)), param0->unk_1BC);

    sub_02002BB8(2, 5);

    param0->unk_23FB_1 = 1;

    {
        ov16_02268744(param0->unk_04);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    ov16_02268A88(param0->unk_198);
    ov16_02268C04(v0, v1, param0->unk_198, 0, 1, NULL);
    ov16_02268D40(v1, param0->unk_198);
    NARC_dtor(v0);
    NARC_dtor(v1);
    sub_020027A8(1);
    ov16_0223DD4C(param0);
    sub_0200964C(sub_0200C738(param0->unk_90), 0, ((192 + 80) << FX32_SHIFT));
}

void ov16_0223B53C (UnkStruct_0207ADB4 * param0)
{
    sub_0201A8FC(&param0->unk_08[0]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(param0->unk_04, 1);
    sub_02019044(param0->unk_04, 2);
    sub_02019044(param0->unk_04, 3);
    ov16_0223F3EC(param0);
}

void ov16_0223B578 (UnkStruct_0207ADB4 * param0)
{
    {
        param0->unk_23FB_0 = 1;
    }

    {
        UnkStruct_ov97_0222DB78 v0[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_256,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0
            },
        };

        sub_020183C4(param0->unk_04, 1, &v0[0], 0);
        sub_02019EBC(param0->unk_04, 1);
        sub_020183C4(param0->unk_04, 2, &v0[1], 0);
        sub_02019EBC(param0->unk_04, 2);
        sub_020183C4(param0->unk_04, 3, &v0[2], 0);
        sub_02019EBC(param0->unk_04, 3);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        int v1;

        v1 = ov16_0223EDE0(param0);

        sub_0200E218(param0->unk_04, 1, 1, 10, v1, 5);
        sub_02006E3C(7, 3 + param0->unk_2400, param0->unk_04, 3, 0, 0, 1, 5);
        sub_02003050(param0->unk_28, 7, 172 + (param0->unk_2400 * 3) + ov16_0223EC04(param0), 5, 0, 0, 0);
        sub_02003050(param0->unk_28, 38, sub_0200DD08(v1), 5, 0, 0x20, 10 * 0x10);
        sub_02003050(param0->unk_28, 14, 7, 5, 0, 0x20, 0xb * 0x10);
        sub_02006E60(7, 2, param0->unk_04, 3, 0, 0, 1, 5);
    }

    {
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        GXS_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, NULL);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, NULL);
    }

    GXLayers_TurnBothDispOn();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02017798(ov16_0223CE68, param0);

    param0->unk_23FB_1 = 1;

    sub_0201A7E8(param0->unk_04, param0->unk_08, 1, 0x2, 0x13, 27, 4, 0xb, (18 + 12) + 1);
    sub_0201ADA4(param0->unk_08, 0xff);
    sub_0200E060(&param0->unk_08[0], 0, 1, 10);

    ov16_0223DD4C(param0);
}

void ov16_0223B748 (UnkStruct_0207ADB4 * param0, int param1)
{
    GF_ASSERT(param0->unk_2441 != param1);

    param0->unk_2441 = param1;

    if (param1 == 0) {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay14));
        Overlay_LoadByID(FS_OVERLAY_ID(overlay12), 2);
    } else {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));
        Overlay_LoadByID(FS_OVERLAY_ID(overlay14), 2);
    }
}

static const int Unk_ov16_0226E44C[][3] = {
    {0x7b51, GX_RGB(30, 17, 0), GX_RGB(0, 16, 23)},
    {0x7b51, GX_RGB(30, 17, 0), GX_RGB(0, 16, 23)},
    {0x7b51, GX_RGB(30, 17, 0), GX_RGB(0, 16, 23)},
    {GX_RGB(11, 21, 5), GX_RGB(11, 21, 5), GX_RGB(11, 21, 5)},
    {0x7b51, GX_RGB(30, 17, 0), GX_RGB(0, 16, 23)},
    {GX_RGB(31, 26, 31), GX_RGB(31, 26, 22), GX_RGB(24, 22, 22)},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {GX_RGB(5, 5, 7), GX_RGB(5, 5, 7), GX_RGB(5, 5, 7)},
    {GX_RGB(5, 5, 7), GX_RGB(5, 5, 7), GX_RGB(5, 5, 7)},
    {GX_RGB(5, 5, 7), GX_RGB(5, 5, 7), GX_RGB(5, 5, 7)},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
    {0x7fff, 0x7fff, 0x7fff},
};

static void ov16_0223B790 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0207ADB4 * v0 = sub_0200682C(param0);
    BattleParams * v1 = sub_02006840(param0);
    UnkStruct_02008A90 v2;
    int v3;
    RTCDate v4;
    RTCTime v5;

    MI_CpuFill16((void *)sub_020241F0(), 0x0, sub_020241F8());
    MI_CpuFill16((void *)sub_02024200(), 0x0, sub_02024208());

    v0->unk_00 = ov16_0223CD7C();

    sub_020177A4();
    sub_02002BB8(2, 5);

    if (v0->unk_2C & 0x20) {
        v0->unk_1A4 = sub_0200C440(0xe, 2, 0xf, 5);
    } else {
        v0->unk_1A4 = sub_0200C440(0xe, 2, 0xf, 5);
    }

    v0->unk_1A8 = v0->unk_1A4;
    v0->unk_28 = sub_02002F38(5);

    sub_02003858(v0->unk_28, 1);
    sub_02002F70(v0->unk_28, 0, 0x200, 5);
    sub_02002F70(v0->unk_28, 1, 0x200, 5);
    sub_02002F70(v0->unk_28, 2, (((16 - 2) * 16) * sizeof(u16)), 5);
    sub_02002F70(v0->unk_28, 3, 0x200, 5);

    v0->unk_04 = sub_02018340(5);
    v0->unk_08 = sub_0201A778(5, 3);

    for (v3 = 0; v3 < 4; v3++) {
        v0->unk_1CC[v3].unk_00 = Heap_AllocFromHeap(5, (32 * 10 * 10));
    }

    sub_0201DBEC(64, 5);

    {
        NARC * v6 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
        NARC * v7 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

        v0->unk_198 = ov16_022687C8(v6, v7, v0, ov16_0223E1B4(v0, ov16_0223F6E4(v0)), v0->unk_1BC);

        NARC_dtor(v6);
        NARC_dtor(v7);
    }

    ov16_0223C004(v0, v0->unk_04);

    sub_0201A7E8(v0->unk_04, &v0->unk_08[0], 1, 2, 0x13, 27, 4, 11, ((18 + 12) + 1));
    sub_0201ADA4(&v0->unk_08[0], 0xff);
    sub_0200E060(&v0->unk_08[0], 0, 1, 10);

    v0->unk_90 = sub_0200C6E4(5);

    sub_0200C73C(v0->unk_90, &Unk_ov16_0226E2E4, &Unk_ov16_0226E29C, (16 + 16));
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_94 = sub_0200C704(v0->unk_90);

    sub_0200C7C0(v0->unk_90, v0->unk_94, (64 + 64));
    sub_0200CB30(v0->unk_90, v0->unk_94, &Unk_ov16_0226E2B0);
    sub_0200964C(sub_0200C738(v0->unk_90), 0, ((192 + 80) << FX32_SHIFT));

    ov16_02268A88(v0->unk_198);

    {
        NARC * v8;
        NARC * v9;

        v8 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
        v9 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

        ov16_02268C04(v8, v9, v0->unk_198, 0, 1, NULL);
        ov16_02268D40(v9, v0->unk_198);

        NARC_dtor(v8);
        NARC_dtor(v9);
    }

    v0->unk_88 = sub_0200762C(5);
    sub_02008A84(v0->unk_88, 0, (0x20 * 6));

    ov16_0223F36C(v0);
    ov16_0223CE28();

    v0->unk_8C = ov12_0221FCDC(5);

    ov16_0223C210(v0);

    sub_0201E3D8();
    sub_0201E450(4);

    v0->unk_0C = MessageLoader_Init(1, 26, 368, 5);
    v0->unk_10 = MessageLoader_Init(1, 26, 0, 5);
    v0->unk_14 = sub_0200B358(5);
    v0->unk_18 = Strbuf_Init((2 * 160), 5);

    MI_CpuCopy16(sub_02003164(v0->unk_28, 0), &v0->unk_2224[0], 0x20 * 7);
    MI_CpuCopy16(sub_02003164(v0->unk_28, 2), &v0->unk_2304[0], 0x20 * 7);

    {
        int v10;
        v10 = ov16_0223EC04(v0);

        sub_020038B0(v0->unk_28, 0, 2, Unk_ov16_0226E44C[v0->unk_2400][v10], 0, 112);
        sub_020038B0(v0->unk_28, 0, 2, Unk_ov16_0226E44C[v0->unk_2400][v10], 0xc * 16, 0xc * 16 + 4 * 16);
        sub_020038B0(v0->unk_28, 2, 2, Unk_ov16_0226E44C[v0->unk_2400][v10], 0, ((16 - 2) * 16) - 1);
    }

    sub_020038B0(v0->unk_28, 0, 0, 0x0, 0xa * 16, 0xa * 16 + 2 * 16);
    sub_020038B0(v0->unk_28, 1, 0, 0x0, 0, 255);
    sub_020038B0(v0->unk_28, 3, 0, 0xffff, 0, 255);

    v0->unk_1AC = sub_0201567C(v0->unk_28, 0, 0xb, 5);
    sub_02015738(v0->unk_1AC, 1);

    v0->unk_1C = sub_0200D9E8(ov16_0223CF48, v0, 60000);
    v0->unk_20 = sub_0200D9E8(ov16_0223CF8C, v0, 50000);
    v0->unk_24 = sub_0200DA04(ov16_0223D0C4, v0, 1200);
    v0->unk_2434 = -51;

    ov16_0223DD4C(v0);
    sub_0207D9F8(ov16_0223E1B0(v0));

    v0->unk_1C4 = sub_02015F84(5, 4, 0);
    v0->unk_1C8 = sub_0201DCC8(4, 5);

    if (v0->unk_2408 & 0x10) {
        for (v3 = 0; v3 < 4; v3++) {
            v0->unk_247C[v3] = v1->unk_194[v3];
        }
    }
}

static int ov16_0223BBD0 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0207ADB4 * v0 = sub_0200682C(param0);
    int v1;

    if ((v0->unk_2C & 0x4) && ((v0->unk_2408 & 0x10) == 0)) {
        if (v0->unk_23F8) {
            ov16_0224B990(v0, v0->unk_30);
        }

        for (v1 = 0; v1 < v0->unk_44; v1++) {
            ov16_0225C0DC(v0, v0->unk_34[v1]);
        }
    } else {
        if (v0->unk_23F8) {
            v0->unk_23FA = ov16_0224B990(v0, v0->unk_30);
            ov16_02264988(v0, 1);
        }

        for (v1 = 0; v1 < v0->unk_44; v1++) {
            ov16_0225C0DC(v0, v0->unk_34[v1]);
            ov16_02264988(v0, 0);
        }

        if (v0->unk_23FA == 0) {
            if (v0->unk_23F8) {
                v0->unk_23FA = ov16_0224B990(v0, v0->unk_30);
                ov16_02264988(v0, 1);
            }

            for (v1 = 0; v1 < v0->unk_44; v1++) {
                ov16_0225C0DC(v0, v0->unk_34[v1]);
                ov16_02264988(v0, 0);
            }
        }
    }

    return v0->unk_23FA;
}

static void ov16_0223BCB4 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0207ADB4 * v0 = sub_0200682C(param0);
    BattleParams * v1 = sub_02006840(param0);
    int v2;

    v1->unk_174 = v0->unk_2448;
    v1->unk_164 = v0->unk_2408;

    if ((v0->unk_2408 & 0x10) == 0) {
        sub_0202F8AC(v1);
    }

    if (v0->unk_2441 != 0) {
        ov16_0223B748(v0, 0);
    }

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);
    ov16_0223EE70(v0);

    if (v0->unk_241C != 0x4) {
        ov16_0223EF68(v0, Party_GetPokemonBySlotIndex(v0->unk_68[1], 0));
    }

    for (v2 = 0; v2 < 4; v2++) {
        Party_cpy(v0->unk_68[v2], v1->parties[v2]);
        Heap_FreeToHeap(v0->unk_68[v2]);
        sub_02025E80(v0->unk_48[v2], v1->unk_D0[v2]);
        Heap_FreeToHeap(v0->unk_48[v2]);
    }

    sub_02015760(v0->unk_1AC);
    sub_0207D3EC(v0->unk_58, v1->unk_E0);
    Heap_FreeToHeap(v0->unk_58);
    sub_02026338(v0->unk_60, v1->unk_E8);
    Heap_FreeToHeap(v0->unk_60);

    v1->unk_EC = v0->unk_64;
    v1->unk_E4 = v0->unk_5C;
    v1->unk_190 = v0->unk_1BC;
    v1->unk_100 = v0->unk_98;
    v1->unk_10C = v0->unk_9C;
    v1->unk_168 = v0->unk_2410;
    v1->unk_14 = v0->unk_241C & (0xc0 ^ 0xff);
    v1->unk_148 = v0->unk_2438;
    v1->unk_150 = ov16_0225B45C(v0, v0->unk_30, 4, NULL);
    v1->unk_110.unk_00 += ov16_0225B45C(v0, v0->unk_30, 3, NULL);
    v1->unk_110.unk_04 += (ov16_0225B45C(v0, v0->unk_30, 6, 0) + ov16_0225B45C(v0, v0->unk_30, 6, 2));
    v1->unk_110.unk_08 += (ov16_0225B45C(v0, v0->unk_30, 7, 0) + ov16_0225B45C(v0, v0->unk_30, 7, 2));
    v1->unk_18C = ov16_0225B45C(v0, v0->unk_30, 3, NULL);
    v1->unk_19C = v0->unk_2474_0;

    for (v2 = 0; v2 < 4; v2++) {
        Heap_FreeToHeap(v0->unk_1CC[v2].unk_00);
    }

    Heap_FreeToHeap(v0->unk_18);
    sub_02002FA0(v0->unk_28, 0);
    sub_02002FA0(v0->unk_28, 1);
    sub_02002FA0(v0->unk_28, 2);
    sub_02002FA0(v0->unk_28, 3);
    sub_02002F54(v0->unk_28);
    MessageLoader_Free(v0->unk_0C);
    MessageLoader_Free(v0->unk_10);
    sub_0200B3F0(v0->unk_14);
    sub_02015FB8(v0->unk_1C4);
    sub_020141E4();

    ov12_0221FDF4(v0->unk_8C);
    ov16_0224B9DC(v0->unk_30);

    for (v2 = 0; v2 < v0->unk_44; v2++) {
        ov16_0225C104(v0, v0->unk_34[v2], v0->unk_23F9);
    }

    sub_02007B6C(v0->unk_88);

    if (v0->unk_23F9 != 2) {
        ov16_0223B3E4(v0);
    }

    sub_02002AC8(0);
    sub_02002AE4(0);
    sub_02002B20(0);
    sub_0201A928(v0->unk_08, 3);
    Heap_FreeToHeap(v0->unk_04);
    Heap_FreeToHeap(v0->unk_21C);
    Heap_FreeToHeap(v0->unk_220);
    sub_0200C560(v0->unk_1A4);
    sub_02002C60(2);
    sub_0200DA58(v0->unk_1C);
    sub_0200DA58(v0->unk_20);
    sub_0201E530();

    ov16_0223CE20(v0->unk_00);

    sub_0201D2DC(v0->unk_2430);

    if (ov16_0223F450(v0)) {
        sub_020057A4(1796, 0);
    }

    sub_0201DCF0(v0->unk_1C8);

    if (ov16_0223F710(v0)) {
        sub_0200500C(127);
    }

    if (v0->unk_2478) {
        ov16_0226E174(v0->unk_2478);
    }

    Heap_FreeToHeap(v0);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));

    if (!sub_020389B8()) {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay21));
    }
}

static void ov16_0223C004 (UnkStruct_0207ADB4 * param0, UnkStruct_02018340 * param1)
{
    GXLayers_DisableEngineALayers();
    sub_0200F338(0);
    sub_0200F338(1);

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v1);
    }

    {
        param0->unk_23FB_0 = 1;
    }

    {
        UnkStruct_ov97_0222DB78 v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_256,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0
            },
        };

        sub_020183C4(param1, 1, &v2[0], 0);
        sub_02019EBC(param1, 1);
        sub_020183C4(param1, 2, &v2[1], 0);
        sub_02019EBC(param1, 2);
        sub_020183C4(param1, 3, &v2[2], 0);
        sub_02019EBC(param1, 3);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        ov16_02268744(param1);
    }

    {
        int v3;

        v3 = ov16_0223EDE0(param0);

        sub_0200E218(param1, 1, 1, 10, v3, 5);
        sub_02006E3C(7, 3 + param0->unk_2400, param1, 3, 0, 0, 1, 5);
        sub_02003050(param0->unk_28, 7, 172 + (param0->unk_2400 * 3) + ov16_0223EC04(param0), 5, 0, 0, 0);
        sub_02003050(param0->unk_28, 38, sub_0200DD08(v3), 5, 0, 0x20, 10 * 0x10);
        sub_02003050(param0->unk_28, 14, 7, 5, 0, 0x20, 0xb * 0x10);
        sub_02006E60(7, 2, param1, 3, 0, 0, 1, 5);
    }

    {
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        GXS_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, NULL);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, NULL);
    }

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02017798(ov16_0223CE68, param0);
}

static void ov16_0223C210 (UnkStruct_0207ADB4 * param0)
{
    int v0;
    int v1;
    int v2;
    BattleContext * v3;
    Pokemon * v4;

    v0 = ov16_0223E22C(param0);

    ov16_022686CC(&param0->unk_17C[0], param0, 0, v0);
    ov16_022686CC(&param0->unk_17C[1], param0, 1, v0);

    v3 = ov16_0223DF10(param0);

    for (v1 = 0; v1 < param0->unk_44; v1++) {
        v2 = ov16_0225B45C(param0, v3, 2, v1);
        v4 = ov16_0223DFAC(param0, v1, v2);
        ov16_0225C038(param0, param0->unk_34[v1], GetMonData(v4, MON_DATA_POKEBALL, NULL), v2);
    }

    ov16_0223DECC();
}

static void ov16_0223C288 (UnkStruct_02018340 * param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(param0, 1);
    sub_02019044(param0, 2);
    sub_02019044(param0, 3);

    ov16_022687A0(param0);
}

static void ov16_0223C2BC (UnkStruct_0207ADB4 * param0)
{
    int v0;
}

static const u8 Unk_ov16_0226E25C[] = {
    {0x0},
    {0x1}
};

static const u8 Unk_ov16_0226E260[][2] = {
    {
        {0x0},
        {0x1}
    },
    {
        {0x1},
        {0x0}
    }
};

static const u8 Unk_ov16_0226E560[] = {
    {0x2},
    {0x3},
    {0x4},
    {0x5}
};

static const u8 Unk_ov16_0226E264[][4] = {
    {
        {0x2},
        {0x3},
        {0x4},
        {0x5}
    },
    {
        {0x3},
        {0x2},
        {0x5},
        {0x4}
    }
};

static const u8 Unk_ov16_0226E28C[][4] = {
    {
        {0x2},
        {0x5},
        {0x4},
        {0x3}
    },
    {
        {0x3},
        {0x4},
        {0x5},
        {0x2}
    },
    {
        {0x2},
        {0x5},
        {0x4},
        {0x3}
    },
    {
        {0x3},
        {0x4},
        {0x5},
        {0x2}
    }
};

static void ov16_0223C2C0 (UnkStruct_0207ADB4 * param0, BattleParams * param1)
{
    int v0, v1;
    UnkStruct_ov16_0223C2C0 v2;
    Pokemon * v3;
    Pokemon * v4;

    param0->unk_2C = param1->battleType;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_48[v0] = sub_02025E6C(5);
        sub_02025E80(param1->unk_D0[v0], param0->unk_48[v0]);
        param0->unk_78[v0] = param1->unk_F0[v0];
    }

    param0->unk_2442 = param1->unk_188;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_2464[v0] = param1->unk_178[v0];
    }

    param0->unk_2430 = sub_0201D2D0();
    param0->unk_2444 = param1->unk_174;
    param0->unk_2448 = param1->unk_174;
    param0->unk_2408 = param1->unk_164;
    param0->unk_58 = sub_0207D3C0(5);

    sub_0207D3EC(param1->unk_E0, param0->unk_58);
    param0->unk_60 = sub_02026324(5);
    sub_02026338(param1->unk_E8, param0->unk_60);

    param0->unk_64 = param1->unk_EC;
    param0->unk_1B0 = param1->unk_108;
    param0->unk_1B4 = param1->unk_124;
    param0->unk_5C = param1->unk_E4;
    param0->unk_1BC = param1->unk_190;
    param0->unk_98 = param1->unk_100;
    param0->unk_2420 = param1->unk_13C;
    param0->unk_9C = param1->unk_10C;
    param0->unk_2410 = param1->unk_168;
    param0->unk_23FC = param1->unk_12C;
    param0->unk_2400 = param1->unk_128;
    param0->unk_2404 = param1->unk_130;
    param0->unk_240C = param1->unk_138;
    param0->unk_2418 = param1->unk_16C;
    param0->unk_2424 = param1->unk_140;
    param0->unk_242C = param1->unk_144;
    param0->unk_2428 = param1->unk_14C;
    param0->unk_218 = param1->unk_11C;

    GF_ASSERT(param1->unk_11C != NULL);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_A0[v0] = param1->unk_18[v0];
        param0->unk_AC[v0] = param1->trainerData[v0];
    }

    param0->unk_30 = ov16_0224B940(param0);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_68[v0] = sub_02079FF4(5);
    }

    {
        int v5;

        for (v0 = 0; v0 < 4; v0++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(param1->parties[v0]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(param1->parties[v0], v1);
                v5 = sub_02075D6C(v3);
                sub_02074B30(v3, 111, &v5);
            }
        }
    }

    if (param0->unk_2C & 0x4) {
        sub_0207A6DC(param0);
        {
            u8 v6 = ov16_0223F6E4(param0);
            int v7;

            ov16_0223DD90(param0, param1);

            if (param0->unk_2C & 0x80) {
                for (v0 = 0; v0 < 4; v0++) {
                    v2.unk_00 = v0;
                    v2.unk_01 = Unk_ov16_0226E560[v0];
                    param0->unk_34[v0] = ov16_0225BFFC(param0, &v2);
                }

                param0->unk_44 = v0;

                for (v0 = 0; v0 < 4; v0++) {
                    ov16_02263730(param0, param0->unk_34[v0]);
                    Party_cpy(param1->parties[v0], param0->unk_68[v0]);
                }

                for (v0 = 0; v0 < param0->unk_44; v0++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(param0->unk_68[v0]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(param0->unk_68[v0], v1);

                        if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                            break;
                        }
                    }

                    ov16_0225B540(param0, param0->unk_30, 2, v0, v1);
                }

                ov16_0225A1B0(param0, param0->unk_30);
            } else if (param0->unk_2C & 0x8) {
                for (v0 = 0; v0 < 4; v0++) {
                    v2.unk_00 = v0;
                    v2.unk_01 = Unk_ov16_0226E28C[ov16_0223F6F0(param0, v6)][ov16_0223F6F0(param0, v0)];
                    param0->unk_34[v0] = ov16_0225BFFC(param0, &v2);
                }

                param0->unk_44 = v0;

                for (v0 = 0; v0 < 4; v0++) {
                    ov16_02263730(param0, param0->unk_34[v0]);
                    Party_cpy(param1->parties[v0], param0->unk_68[v0]);
                }

                for (v0 = 0; v0 < param0->unk_44; v0++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(param0->unk_68[v0]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(param0->unk_68[v0], v1);

                        if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                            break;
                        }
                    }

                    ov16_0225B540(param0, param0->unk_30, 2, v0, v1);
                }

                ov16_0225A1B0(param0, param0->unk_30);
            } else if (param0->unk_2C & 0x2) {
                for (v0 = 0; v0 < 4; v0++) {
                    v2.unk_00 = v0;
                    v2.unk_01 = Unk_ov16_0226E264[v6][v0];
                    param0->unk_34[v0] = ov16_0225BFFC(param0, &v2);
                    ov16_02263730(param0, param0->unk_34[v0]);
                }

                param0->unk_44 = v0;

                for (v0 = 0; v0 < 4; v0++) {
                    Party_cpy(param1->parties[v0], param0->unk_68[v0]);
                }

                for (v0 = 0; v0 < param0->unk_44; v0++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(param0->unk_68[v0 & 1]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(param0->unk_68[v0 & 1], v1);

                        if (v0 > 1) {
                            if ((ov16_0225B45C(param0, param0->unk_30, 2, v0 & 1) != v1) && (GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                                break;
                            }
                        } else {
                            if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                                break;
                            }
                        }
                    }

                    ov16_0225B540(param0, param0->unk_30, 2, v0, v1);
                }
            } else {
                for (v0 = 0; v0 < 2; v0++) {
                    v2.unk_00 = v0;
                    v2.unk_01 = Unk_ov16_0226E260[v6][v0];
                    param0->unk_34[v0] = ov16_0225BFFC(param0, &v2);
                    ov16_02263730(param0, param0->unk_34[v0]);
                }

                param0->unk_44 = v0;

                for (v0 = 0; v0 < 4; v0++) {
                    Party_cpy(param1->parties[v0], param0->unk_68[v0]);

                    for (v1 = 0; v1 < Party_GetCurrentCount(param0->unk_68[v0]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(param0->unk_68[v0], v1);

                        if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                            break;
                        }
                    }

                    ov16_0225B540(param0, param0->unk_30, 2, v0, v1);
                }
            }
        }
        ov16_0225A1B0(param0, param0->unk_30);
    } else if (param0->unk_2C & 0x10) {
        {
            int v8;

            for (v0 = 0; v0 < 4; v0++) {
                v2.unk_00 = v0;
                v2.unk_01 = Unk_ov16_0226E560[v0];
                param0->unk_34[v0] = ov16_0225BFFC(param0, &v2);
                ov16_02263730(param0, param0->unk_34[v0]);
            }

            param0->unk_44 = v0;

            for (v0 = 0; v0 < 4; v0++) {
                Party_cpy(param1->parties[v0], param0->unk_68[v0]);
            }

            for (v0 = 0; v0 < param0->unk_44; v0++) {
                for (v1 = 0; v1 < ov16_0223DF60(param0, v0); v1++) {
                    v3 = ov16_0223DFAC(param0, v0, v1);

                    if (v0 == 2) {
                        if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL)) && (v8 != v1)) {
                            break;
                        }
                    } else {
                        if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                            break;
                        }
                    }
                }

                ov16_0225B540(param0, param0->unk_30, 2, v0, v1);

                if (v0 == 0) {
                    v8 = v1;
                }
            }
        }
        ov16_0225A1B0(param0, param0->unk_30);
        param0->unk_23F8 = 1;
    } else if (param0->unk_2C & 0x8) {
        for (v0 = 0; v0 < 4; v0++) {
            v2.unk_00 = v0;
            v2.unk_01 = Unk_ov16_0226E560[v0];
            param0->unk_34[v0] = ov16_0225BFFC(param0, &v2);
            ov16_02263730(param0, param0->unk_34[v0]);
        }

        param0->unk_44 = v0;

        for (v0 = 0; v0 < 4; v0++) {
            Party_cpy(param1->parties[v0], param0->unk_68[v0]);
        }

        for (v0 = 0; v0 < param0->unk_44; v0++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(param0->unk_68[v0]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(param0->unk_68[v0], v1);

                if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                    break;
                }
            }

            ov16_0225B540(param0, param0->unk_30, 2, v0, v1);
        }

        ov16_0225A1B0(param0, param0->unk_30);
        param0->unk_23F8 = 1;
    } else if (param0->unk_2C & 0x2) {
        for (v0 = 0; v0 < 4; v0++) {
            v2.unk_00 = v0;
            v2.unk_01 = Unk_ov16_0226E560[v0];
            param0->unk_34[v0] = ov16_0225BFFC(param0, &v2);
            ov16_02263730(param0, param0->unk_34[v0]);
        }

        param0->unk_44 = v0;

        for (v0 = 0; v0 < 4; v0++) {
            Party_cpy(param1->parties[v0], param0->unk_68[v0]);
        }

        for (v0 = 0; v0 < param0->unk_44; v0++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(param0->unk_68[v0 & 1]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(param0->unk_68[v0 & 1], v1);

                if (v0 > 1) {
                    if ((ov16_0225B45C(param0, param0->unk_30, 2, v0 & 1) != v1) && (GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                        break;
                    }
                } else {
                    if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                        break;
                    }
                }
            }

            ov16_0225B540(param0, param0->unk_30, 2, v0, v1);
        }

        ov16_0225A1B0(param0, param0->unk_30);
        param0->unk_23F8 = 1;
    } else {
        for (v0 = 0; v0 < 2; v0++) {
            v2.unk_00 = v0;
            v2.unk_01 = Unk_ov16_0226E25C[v0];
            param0->unk_34[v0] = ov16_0225BFFC(param0, &v2);
            ov16_02263730(param0, param0->unk_34[v0]);
        }

        param0->unk_44 = v0;

        for (v0 = 0; v0 < 4; v0++) {
            Party_cpy(param1->parties[v0], param0->unk_68[v0]);

            for (v1 = 0; v1 < Party_GetCurrentCount(param0->unk_68[v0]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(param0->unk_68[v0], v1);

                if ((GetMonData(v3, MON_DATA_SPECIES, NULL)) && (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) && (GetMonData(v3, MON_DATA_163, NULL))) {
                    break;
                }
            }

            ov16_0225B540(param0, param0->unk_30, 2, v0, v1);
        }

        ov16_0225A1B0(param0, param0->unk_30);
        param0->unk_23F8 = 1;
    }

    if (param0->unk_2C & 0x200) {
        v3 = Party_GetPokemonBySlotIndex(param0->unk_68[1], 0);
        GetMonData(v3, MON_DATA_144, (u8 *)&param0->unk_AC[1].unk_14);
    }

    if (param0->unk_2C & 0x1) {
        if ((ov16_0223CD3C(param0->unk_AC[1].class) == 1) || (ov16_0223CD3C(param0->unk_AC[3].class) == 1)) {
            for (v0 = 0; v0 < Party_GetCurrentCount(param0->unk_68[0]); v0++) {
                v3 = Party_GetPokemonBySlotIndex(param0->unk_68[0], v0);
                sub_02075C74(v3, 3, param0->unk_2404);
            }

            for (v0 = 0; v0 < Party_GetCurrentCount(param0->unk_68[2]); v0++) {
                v3 = Party_GetPokemonBySlotIndex(param0->unk_68[2], v0);
                sub_02075C74(v3, 3, param0->unk_2404);
            }
        }
    }
}

static BOOL ov16_0223CD3C (u16 param0)
{
    switch (param0) {
    case 62:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 64:
    case 79:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
        return 1;
        break;
    }

    return 0;
}

static UnkStruct_0207C690 * ov16_0223CD7C (void)
{
    UnkStruct_0207C690 * v0;

    v0 = sub_02024220(5, 0, 2, 0, 2, ov16_0223CD9C);
    return v0;
}

static void ov16_0223CD9C (void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void ov16_0223CE20 (UnkStruct_0207C690 * param0)
{
    sub_020242C4(param0);
}

static void ov16_0223CE28 (void)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    u32 v2, v3;

    v0 = NNS_GfdAllocTexVram(0x2000 * 4, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x20 * (4 + 2), 0, 0);

    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    v2 = NNS_GfdGetTexKeyAddr(v0);
    v3 = NNS_GfdGetPlttKeyAddr(v1);

    sub_02014000();
}

static void ov16_0223CE68 (void * param0)
{
    UnkStruct_0207ADB4 * v0 = param0;

    if (v0->unk_23FB_0) {
        v0->unk_23FB_0 = 0;
        G2_BlendNone();
        G2S_BlendNone();
    }

    if (v0->unk_23FB_1) {
        v0->unk_23FB_1 = 0;
        {
            UnkStruct_02099F80 v1 = {
                GX_VRAM_BG_128_A,
                GX_VRAM_BGEXTPLTT_NONE,
                GX_VRAM_SUB_BG_32_H,
                GX_VRAM_SUB_BGEXTPLTT_NONE,
                GX_VRAM_OBJ_64_E,
                GX_VRAM_OBJEXTPLTT_NONE,
                GX_VRAM_SUB_OBJ_16_I,
                GX_VRAM_SUB_OBJEXTPLTT_NONE,
                GX_VRAM_TEX_01_BC,
                GX_VRAM_TEXPLTT_01_FG
            };

            GXLayers_SetBanks(&v1);
        }
    }

    if (v0->unk_23FB_2) {
        v0->unk_23FB_2 = 0;
        {
            UnkStruct_02099F80 v2 = {
                GX_VRAM_BG_128_A,
                GX_VRAM_BGEXTPLTT_NONE,
                GX_VRAM_SUB_BG_128_C,
                GX_VRAM_SUB_BGEXTPLTT_NONE,
                GX_VRAM_OBJ_64_E,
                GX_VRAM_OBJEXTPLTT_NONE,
                GX_VRAM_SUB_OBJ_16_I,
                GX_VRAM_SUB_OBJEXTPLTT_NONE,
                GX_VRAM_TEX_0_B,
                GX_VRAM_TEXPLTT_01_FG
            };

            GXLayers_SetBanks(&v2);
        }
    }

    sub_02008A94(v0->unk_88);
    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_28);
    sub_0201C2B8(v0->unk_04);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov16_0223CF1C (void * param0)
{
    UnkStruct_0207A778 * v0 = param0;

    sub_02003694(v0->unk_0C);
    sub_0201DCAC();
    sub_0201C2B8(v0->unk_04);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov16_0223CF48 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_0207ADB4 * v0 = param1;

    sub_02038A1C(5, v0->unk_04);

    if ((v0->unk_23F9 == 0) || (v0->unk_23F9 == 3)) {
        if (v0->unk_23F9 == 0) {
            ov11_0221F8F0();
        }

        sub_02007768(v0->unk_88);
        sub_0200C7EC(v0->unk_94);
        sub_0200C808();
        sub_020241BC(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
    }
}

static void ov16_0223CF8C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_0207ADB4 * v0 = param1;
    UnkStruct_ov16_0225BFFC * v1;
    UnkStruct_ov16_022674C4 * v2;
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;

    v4 = ov16_0223DF1C(v0);
    v5 = 0;
    v6 = ov16_0223F450(v0);

    if (ov16_0223DF0C(v0) & (0x20 | 0x200)) {
        return;
    }

    if (v6 & 2) {
        if (v6 & 1) {
            sub_020057A4(1796, 0);
            ov16_0223F460(v0, 2);
        }

        return;
    }

    for (v3 = 0; v3 < v4; v3++) {
        v1 = ov16_0223DF14(v0, v3);

        if (((ov16_02263AF0(v1) == 0x0) && ((ov16_0223EBEC(v0) & 0x10) == 0)) || ((ov16_0223E208(v0, v3) == 0) && (ov16_0223EBEC(v0) & 0x10))) {
            v2 = ov16_02263B08(v1);

            if (v2 != NULL) {
                if (sub_0208C104(v2->unk_28, v2->unk_2C, (8 * 6)) == 1) {
                    v5 |= sub_020787CC(v3);
                }
            }
        }
    }

    if ((v5) && (ov16_0223F450(v0) == 0)) {
        sub_02005748(1796);
        ov16_0223F460(v0, 1);
        ov16_0223F48C(v0, 4);
    } else if ((v5 == 0) && (ov16_0223F450(v0))) {
        sub_020057A4(1796, 0);
        ov16_0223F460(v0, 0);
    }

    if (ov16_0223F450(v0)) {
        v7 = ov16_0223F47C(v0);

        if (sub_020057D4(1796) == 0) {
            if (--v7 == 0) {
                sub_02005748(1796);
                ov16_0223F48C(v0, 4);
            } else {
                ov16_0223F48C(v0, v7);
            }
        }
    }
}

static void ov16_0223D0C4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_0207ADB4 * v0 = param1;

    v0->unk_2434 += 3;
    sub_02019184(v0->unk_04, 1, 3, v0->unk_2434);

    if (v0->unk_2434 == 0) {
        sub_0200DA58(param0);
    }
}

static void NitroStaticInit (void)
{
    if (!sub_020389B8()) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay21), 2);
    }
}

static void ov16_0223D10C (UnkStruct_020067E8 * param0, BattleParams * param1)
{
    UnkStruct_0207A778 * v0 = sub_0200681C(param0, sizeof(UnkStruct_0207A778), 5);

    v0->unk_00 = param1;
    v0->unk_1020 = 0;
    v0->unk_1021 = 0;
    v0->unk_1022 = 0;
    v0->unk_0C = sub_02002F38(5);

    sub_02003858(v0->unk_0C, 1);
    sub_02002F70(v0->unk_0C, 0, 0x200, 5);
    sub_020038B0(v0->unk_0C, 0, 2, 0x0, 0, 256);

    v0->unk_04 = sub_02018340(5);
    v0->unk_08 = sub_0201A778(5, 1);

    sub_0207A744(v0);
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_02099F80 v1 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v1);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
        MI_CpuFill16((void *)HW_BG_PLTT, 0x0, HW_BG_PLTT_SIZE);
    }

    {
        UnkStruct_ov84_0223BA5C v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        sub_02018368(&v2);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(v0->unk_04, 1, &v3, 0);
        sub_02019EBC(v0->unk_04, 1);
    }

    {
        int v4;

        v4 = sub_02027B50(param1->unk_108);

        sub_0200E218(v0->unk_04, 1, 1, 10, v4, 5);
        sub_02003050(v0->unk_0C, 14, 7, 5, 0, 0x20, 0xb * 0x10);
        sub_02003050(v0->unk_0C, 38, sub_0200DD08(v4), 5, 0, 0x20, 10 * 0x10);
        sub_020038B0(v0->unk_0C, 0, 0, 0x0, 0, 256);
    }

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_0201A7E8(v0->unk_04, v0->unk_08, 1, 2, 0x13, 27, 4, 11, ((18 + 12) + 1));
    sub_0201ADA4(v0->unk_08, 0xff);
    sub_0200E060(v0->unk_08, 0, 1, 10);

    {
        MessageLoader * v5;
        Strbuf* v6;

        v5 = MessageLoader_Init(1, 26, 368, 5);
        v6 = Strbuf_Init(0x100, 5);

        MessageLoader_GetStrbuf(v5, 923, v6);
        sub_0201D738(v0->unk_08, 1, v6, 0, 0, NULL, NULL);

        Strbuf_Free(v6);
        MessageLoader_Free(v5);
    }

    sub_02017798(ov16_0223CF1C, v0);
    sub_02003178(v0->unk_0C, (0x1 | 0x4), 0xffff, 0, 16, 0, 0x0);

    v0->unk_1024 = sub_0200E7FC(v0->unk_08, 1);

    ov16_0223DECC();
}

static BOOL ov16_0223D354 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0207A778 * v0 = sub_0200682C(param0);
    BOOL v1;

    sub_02038A1C(5, v0->unk_04);

    v1 = 0;

    switch (v0->unk_1021) {
    case 0:
        sub_0200F338(0);
        sub_02036378(1);
        v0->unk_1021++;
        break;
    case 1:
        if (sub_0200384C(v0->unk_0C) == 0) {
            v0->unk_1021++;
        }
        break;
    case 2:
        sub_020364F0(50);
        v0->unk_1021++;
        break;
    case 3:
        if (sub_02036540(50)) {
            sub_020364F0(51);
            v0->unk_1022 = 0;
            v0->unk_1021++;
        } else {
            v0->unk_1022++;

            if (v0->unk_1022 > (60 * 30)) {
                sub_02038AE0(1);
            }
        }
        break;
    case 4:
        if (sub_0207A8F4(v0, BattleServerVersion) == 1) {
            v0->unk_1021++;
        }
        break;
    case 6:
        if (sub_0207A960(v0) == 1) {
            sub_020364F0(52);
            v0->unk_1021++;
        }
        break;
    case 7:
        if (sub_0207A988(v0) == 1) {
            v0->unk_1021++;
        }
        break;
    case 9:
        if (sub_0207A9CC(v0) == 1) {
            sub_020364F0(53);
            v0->unk_1021++;
        }
        break;
    case 10:
        if (sub_0207A9F8(v0) == 1) {
            v0->unk_1021++;
        }
        break;
    case 12:
        if (sub_0207AA38(v0) == 1) {
            sub_020364F0(54);
            v0->unk_1021++;
        }
        break;
    case 13:
        if (sub_0207AA5C(v0) == 1) {
            v0->unk_1021++;
        }
        break;
    case 15:
        if (sub_0207AAA0(v0) == 1) {
            sub_020364F0(55);
            v0->unk_1021++;
        }
        break;
    case 16:
        if (sub_0207AAC8(v0) == 1) {
            v0->unk_1021++;
        }
        break;
    case 18:
        if (sub_0207AAFC(v0) == 1) {
            sub_020364F0(56);
            v0->unk_1021++;
        }
        break;
    case 19:
        if (sub_0207AB58(v0) == 1) {
            v0->unk_1021++;
        }
        break;
    case 21:
        if ((v0->unk_00->battleType & BATTLE_TYPE_FRONTIER) == 0) {
            v0->unk_1021 = 33;
        } else {
            if (sub_0203608C()) {
                sub_020364F0(57);
                v0->unk_1021++;
            } else if (sub_0207AB9C(v0, 1) == 1) {
                sub_020364F0(57);
                v0->unk_1021++;
            }
        }
        break;
    case 22:
        v0->unk_1020 = 1;

        if (sub_0203608C()) {
            if (sub_02036540(57) == 1) {
                v0->unk_1021++;
            }
        } else if (sub_0207ABD0(v0, 1, 57) == 1) {
            v0->unk_1021++;
        }
        break;
    case 24:
        if (sub_0203608C()) {
            sub_020364F0(58);
            v0->unk_1021++;
        } else if (sub_0207AB9C(v0, 3) == 1) {
            sub_020364F0(58);
            v0->unk_1021++;
        }
        break;
    case 25:
        v0->unk_1020 = 1;

        if (sub_0203608C()) {
            if (sub_02036540(58) == 1) {
                v0->unk_1021++;
            }
        } else if (sub_0207ABD0(v0, 3, 58) == 1) {
            v0->unk_1021++;
        }
        break;
    case 27:
        if (sub_0203608C()) {
            sub_020364F0(59);
            v0->unk_1021++;
        } else if (sub_0207AC28(v0, 1) == 1) {
            sub_020364F0(59);
            v0->unk_1021++;
        }
        break;
    case 28:
        v0->unk_1020 = 1;

        if (sub_0203608C()) {
            if (sub_02036540(59) == 1) {
                v0->unk_1021++;
            }
        } else if (sub_0207AC54(v0, 1, 59) == 1) {
            v0->unk_1021++;
        }
        break;
    case 30:
        if (sub_0203608C()) {
            sub_020364F0(60);
            v0->unk_1021++;
        } else if (sub_0207AC28(v0, 3) == 1) {
            sub_020364F0(60);
            v0->unk_1021++;
        }
        break;
    case 31:
        v0->unk_1020 = 1;

        if (sub_0203608C()) {
            if (sub_02036540(60) == 1) {
                v0->unk_1021++;
            }
        } else if (sub_0207AC54(v0, 3, 60) == 1) {
            v0->unk_1021++;
        }
        break;
    case 5:
    case 8:
    case 11:
    case 14:
    case 17:
    case 20:
    case 23:
    case 26:
    case 29:
    case 32:
        if (v0->unk_1020 == sub_02035E18()) {
            if (v0->unk_1021 == 20) {
                int v2;

                for (v2 = 0; v2 < 4; v2++) {
                    Heap_FreeToHeap(v0->unk_10[v2]);
                }
            }

            v0->unk_1020 = 0;
            v0->unk_1022 = 0;
            v0->unk_1021++;

            if (v0->unk_1021 == 33) {
                sub_02003178(v0->unk_0C, (0x1 | 0x4), 0xffff, 0, 0, 16, 0x0);
            }
        } else {
            v0->unk_1022++;

            if (v0->unk_1022 > (60 * 30)) {
                sub_02038AE0(1);
            }
        }
        break;
    case 33:
        if (sub_0200384C(v0->unk_0C) == 0) {
            v1 = 1;
            sub_0200EBA0(v0->unk_1024);
            sub_02036378(0);
        }
        break;
    }

    return v1;
}

static void ov16_0223D7B4 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0207A778 * v0 = sub_0200682C(param0);

    sub_02017798(NULL, NULL);
    sub_0200F344(0, 0x0);
    sub_02002FA0(v0->unk_0C, 0);
    sub_02002F54(v0->unk_0C);
    sub_0201A928(v0->unk_08, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(v0->unk_04, 1);
    Heap_FreeToHeap(v0->unk_04);
    Heap_FreeToHeap(v0);
}

static BOOL ov16_0223D800 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0207ADB4 * v0 = sub_0200681C(param0, sizeof(UnkStruct_0207ADB4), 5);
    BattleParams * v1 = sub_02006840(param0);
    u8 v2;

    MI_CpuClearFast(v0, sizeof(UnkStruct_0207ADB4));
    ov16_0223C2C0(v0, v1);

    if (((v0->unk_2C & 0x4) == 0) || (v0->unk_2408 & 0x10) || (v0->unk_2C & 0x80)) {
        sub_02039794();
        return 0;
    }

    Overlay_LoadByID(FS_OVERLAY_ID(overlay10), 2);

    if ((v0->unk_2C & 0x8) == 0) {
        return 0;
    }

    v0->unk_1C0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov10_0221F800));
    MI_CpuClearFast(v0->unk_1C0, sizeof(UnkStruct_ov10_0221F800));
    v2 = sub_0203608C();

    switch (sub_020362F4(v2)) {
    case 0:
    case 3:
        v0->unk_1C0->unk_04[0] = v0->unk_68[v2];
        v0->unk_1C0->unk_04[2] = v0->unk_68[ov16_0223E258(v0, v2)];
        break;
    case 1:
    case 2:
        v0->unk_1C0->unk_04[0] = v0->unk_68[ov16_0223E258(v0, v2)];
        v0->unk_1C0->unk_04[2] = v0->unk_68[v2];
        break;
    }

    v0->unk_1C0->unk_24 = 5;
    v0->unk_1C0->unk_28 = 0;

    switch (sub_020362F4(v2)) {
    case 0:
    case 3:
        v0->unk_1C0->unk_29 = 0;
        break;
    case 1:
    case 2:
        v0->unk_1C0->unk_29 = 1;
        break;
    }

    ov10_0221F800(v0->unk_1C0);

    return 1;
}

static BOOL ov16_0223D944 (UnkStruct_020067E8 * param0)
{
    int v0;
    UnkStruct_0207ADB4 * v1 = sub_0200682C(param0);

    if (v1->unk_1C0->unk_2B) {
        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_1C0->unk_14[v0] != NULL) {
                Heap_FreeToHeap(v1->unk_1C0->unk_14[v0]);
            }
        }

        Heap_FreeToHeap(v1->unk_1C0);
        return 1;
    }

    return 0;
}

static BOOL ov16_0223D98C (UnkStruct_020067E8 * param0)
{
    UnkStruct_0207ADB4 * v0 = sub_0200682C(param0);
    BattleParams * v1 = sub_02006840(param0);
    u8 v2;
    int v3;

    if (((v0->unk_2C & 0x4) == 0) || (v0->unk_2408 & 0x10) || (v0->unk_2C & 0x80)) {
        sub_02039794();
        return 0;
    }

    v2 = sub_0203608C();
    v0->unk_1C0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov10_0221F800));

    MI_CpuClearFast(v0->unk_1C0, sizeof(UnkStruct_ov10_0221F800));

    if (v0->unk_2C & 0x8) {
        for (v3 = 0; v3 < 4; v3++) {
            v0->unk_1C0->unk_04[sub_020362F4(v3)] = v0->unk_68[v3];
            v0->unk_1C0->unk_14[sub_020362F4(v3)] = sub_02025F04(v0->unk_48[v3], 5);
        }

        v0->unk_1C0->unk_24 = 5;
        v0->unk_1C0->unk_28 = 1;
        v0->unk_1C0->unk_29 = 1;
    } else {
        v0->unk_1C0->unk_04[sub_020362F4(v2)] = v0->unk_68[v2];
        v0->unk_1C0->unk_04[sub_020362F4(v2 ^ 1)] = v0->unk_68[v2 ^ 1];
        v0->unk_1C0->unk_14[sub_020362F4(v2)] = sub_02025F04(v0->unk_48[v2], 5);
        v0->unk_1C0->unk_14[sub_020362F4(v2 ^ 1)] = sub_02025F04(v0->unk_48[v2 ^ 1], 5);
        v0->unk_1C0->unk_24 = 5;
        v0->unk_1C0->unk_28 = 1;
        v0->unk_1C0->unk_29 = 0;
    }

    ov10_0221F800(v0->unk_1C0);

    return 1;
}

static BOOL ov16_0223DAD4 (UnkStruct_020067E8 * param0)
{
    int v0;
    UnkStruct_0207ADB4 * v1 = sub_0200682C(param0);

    if (v1->unk_1C0->unk_2B) {
        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_1C0->unk_14[v0] != NULL) {
                Heap_FreeToHeap(v1->unk_1C0->unk_14[v0]);
            }
        }

        Heap_FreeToHeap(v1->unk_1C0);
        return 1;
    }

    return 0;
}

static BOOL ov16_0223DB1C (UnkStruct_020067E8 * param0)
{
    BattleParams * v0 = sub_02006840(param0);
    UnkStruct_ov10_0221F800 * v1;
    u8 v2;
    int v3;

    if (((v0->battleType & BATTLE_TYPE_LINK) == 0)
            || (v0->unk_164 & 0x10)
            || (v0->battleType & BATTLE_TYPE_FRONTIER)) {
        return 0;
    }

    v2 = sub_0203608C();
    Overlay_LoadByID(FS_OVERLAY_ID(overlay10), 2);
    v1 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov10_0221F800));

    v0->unk_170 = v1;
    MI_CpuClearFast(v1, sizeof(UnkStruct_ov10_0221F800));
    v1->unk_00 = v0;

    switch (v0->unk_14) {
    case 0x1:
        if (!sub_020389B8()) {
            sub_0202CF28(v0->unk_11C, (1 + 20));
        } else {
            sub_0202CF28(v0->unk_11C, (1 + 25));
        }
        break;
    case 0x2:
        if (!sub_020389B8()) {
            sub_0202CF28(v0->unk_11C, (1 + 21));
        } else {
            sub_0202CF28(v0->unk_11C, (1 + 26));
        }
        break;
    case 0x3:
    case 0x5:
        if (!sub_020389B8()) {
            sub_0202CF28(v0->unk_11C, (1 + 22));
        } else {
            sub_0202CF28(v0->unk_11C, (1 + 27));
        }
        break;
    }

    if (v0->battleType & BATTLE_TYPE_2vs2) {
        for (v3 = 0; v3 < 4; v3++) {
            v1->unk_04[sub_020362F4(v3)] = v0->parties[v3];
            v1->unk_14[sub_020362F4(v3)] = sub_02025F04(v0->unk_D0[v3], 5);
        }

        v1->unk_24 = 5;
        v1->unk_28 = 2;
        v1->unk_29 = 1;

        if (v0->unk_14 != 0x5) {
            v1->unk_2A = v0->unk_14;
        } else {
            v1->unk_2A = 3;
        }
    } else {
        v1->unk_04[sub_020362F4(v2)] = v0->parties[v2];
        v1->unk_04[sub_020362F4(v2 ^ 1)] = v0->parties[v2 ^ 1];
        v1->unk_14[sub_020362F4(v2)] = sub_02025F04(v0->unk_D0[v2], 5);
        v1->unk_14[sub_020362F4(v2 ^ 1)] = sub_02025F04(v0->unk_D0[v2 ^ 1], 5);
        v1->unk_24 = 5;
        v1->unk_28 = 2;
        v1->unk_29 = 0;

        if (v0->unk_14 != 0x5) {
            v1->unk_2A = v0->unk_14;
        } else {
            v1->unk_2A = 3;
        }
    }

    v1->unk_2C = v0->unk_18A;

    ov10_0221F800(v1);

    return 1;
}

static BOOL ov16_0223DD10 (UnkStruct_020067E8 * param0)
{
    int v0;
    BattleParams * v1 = sub_02006840(param0);
    UnkStruct_ov10_0221F800 * v2 = v1->unk_170;

    if (v2->unk_2B) {
        for (v0 = 0; v0 < 4; v0++) {
            if (v2->unk_14[v0] != NULL) {
                Heap_FreeToHeap(v2->unk_14[v0]);
            }
        }

        Heap_FreeToHeap(v2);
        return 1;
    }

    return 0;
}

static void ov16_0223DD4C (UnkStruct_0207ADB4 * param0)
{
    if ((param0->unk_2C & (0x4 | 0x400)) || (param0->unk_2408 & 0x10)) {
        sub_02002AE4(1);
        sub_02002AC8(1);
        sub_02002B20(0);
    } else {
        sub_02002AE4(3);
        sub_02002AC8(1);
        sub_02002B20(1);
    }
}

static void ov16_0223DD90 (UnkStruct_0207ADB4 * param0, BattleParams * param1)
{
    int v0, v1, v2;
    int v3, v4;
    int v5[4];
    int v6[4];

    if (param0->unk_2408 & 0x10) {
        param0->unk_23F8 = 1;
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v5[v0] = v0;
        v6[v0] = param1->unk_154[v0];
    }

    v3 = sub_0203608C();
    v4 = sub_02035E18();

    for (v0 = 0; v0 < v4 - 1; v0++) {
        for (v1 = v0 + 1; v1 < v4; v1++) {
            if (v6[v0] < v6[v1]) {
                v2 = v5[v0];
                v5[v0] = v5[v1];
                v5[v1] = v2;
                v2 = v6[v0];
                v6[v0] = v6[v1];
                v6[v1] = v2;
            }
        }
    }

    if (v5[0] == v3) {
        param0->unk_23F8 = 1;
    } else {
        if ((param0->unk_2C & 0x80) == 0) {
            if (param0->unk_2C & 0x8) {
                v2 = sub_020362F4(v3);

                switch (sub_020362F4(v5[0])) {
                case 0:
                case 2:
                    if (v2 & 1) {
                        param0->unk_2408 |= 0x20;
                    }
                    break;
                case 1:
                case 3:
                    if ((v2 & 1) == 0) {
                        param0->unk_2408 |= 0x20;
                    }
                    break;
                }
            } else {
                param0->unk_2408 |= 0x20;
            }
        }
    }
}

static void ov16_0223DECC (void)
{
    sub_02039734();

    if (sub_020389B8()) {
        sub_020397B0(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    } else if (sub_02033E1C()) {
        sub_020397B0(WM_LINK_LEVEL_3 - WM_GetLinkLevel());
    }
}
