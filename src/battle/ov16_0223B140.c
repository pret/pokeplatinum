#include "battle/ov16_0223B140.h"

#include <dwc.h>
#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "constants/battle.h"
#include "consts/game_records.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0207AE68_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/struct_0207A778.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_display.h"
#include "battle/battle_io.h"
#include "battle/battle_io_command.h"
#include "battle/battle_lib.h"
#include "battle/ov16_0223DF00.h"
#include "battle/ov16_02268520.h"
#include "battle/ov16_0226871C.h"
#include "battle/ov16_0226E148.h"
#include "battle/struct_ov16_0223C2C0.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_022674C4.h"
#include "overlay006/battle_params.h"
#include "overlay010/ov10_0221F800.h"
#include "overlay010/struct_ov10_0221F800.h"
#include "overlay011/ov11_0221F840.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "bag.h"
#include "communication_system.h"
#include "flags.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "party.h"
#include "pokemon.h"
#include "render_text.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200C440.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02014000.h"
#include "unk_0201567C.h"
#include "unk_02015F84.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0202419C.h"
#include "unk_020241F0.h"
#include "unk_02024220.h"
#include "unk_0202631C.h"
#include "unk_0202F1D4.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038F8C.h"
#include "unk_020393C8.h"
#include "unk_0207A6DC.h"
#include "unk_0207AE68.h"
#include "unk_0208C098.h"

FS_EXTERN_OVERLAY(overlay10);
FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay12);
FS_EXTERN_OVERLAY(overlay13);
FS_EXTERN_OVERLAY(trainer_ai);
FS_EXTERN_OVERLAY(overlay21);

static const u32 BattleServerVersion = 0x140;

void ov16_0223B384(BattleSystem *param0);
void ov16_0223B3E4(BattleSystem *param0);
void ov16_0223B430(BattleSystem *param0);
void ov16_0223B53C(BattleSystem *param0);
void ov16_0223B578(BattleSystem *param0);
void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int flags);
static void ov16_0223B790(OverlayManager *param0);
static int ov16_0223BBD0(OverlayManager *param0);
static void ov16_0223BCB4(OverlayManager *param0);
static BOOL ov16_0223D800(OverlayManager *param0);
static BOOL ov16_0223D944(OverlayManager *param0);
static BOOL ov16_0223D98C(OverlayManager *param0);
static BOOL ov16_0223DAD4(OverlayManager *param0);
static BOOL ov16_0223DB1C(OverlayManager *param0);
static BOOL ov16_0223DD10(OverlayManager *param0);
static void ov16_0223D10C(OverlayManager *param0, BattleParams *param1);
static BOOL ov16_0223D354(OverlayManager *param0);
static void ov16_0223D7B4(OverlayManager *param0);
static void ov16_0223C004(BattleSystem *param0, BGL *param1);
static void ov16_0223C210(BattleSystem *param0);
static void ov16_0223C288(BGL *param0);
static void ov16_0223C2BC(BattleSystem *param0);
static void ov16_0223C2C0(BattleSystem *param0, BattleParams *param1);
static void ov16_0223CE28(void);
static void ov16_0223CE68(void *param0);
static void ov16_0223CF1C(void *param0);
static void ov16_0223CF48(SysTask *param0, void *param1);
static void ov16_0223CF8C(SysTask *param0, void *param1);
static GenericPointerData *ov16_0223CD7C(void);
static void ov16_0223CE20(GenericPointerData *param0);
static void ov16_0223CD9C(void);
static void ov16_0223DD4C(BattleSystem *param0);
static void ov16_0223D0C4(SysTask *param0, void *param1);
static BOOL ov16_0223CD3C(u16 param0);
static void ov16_0223DD90(BattleSystem *param0, BattleParams *param1);
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

BOOL Battle_Main(OverlayManager *param0, int *param1)
{
    BattleParams *v0 = OverlayManager_Args(param0);

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
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_020);
        } else {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_025);
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
            CommTiming_StartSync(61);
        }
        break;
    case 7:
        if (CommTiming_IsSyncState(61)) {
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
    case 13: {
        int v1;
        int v2;
        int v3;
        Pokemon *v4;

        v2 = ov16_0223ECC4(v0, &v1, &v3);

        if (v2) {
            Heap_Create(3, 73, 0x30000);
            v4 = Party_GetPokemonBySlotIndex(v0->parties[0], v1);
            v0->unk_170 = sub_0207AE68(v0->parties[0], v4, v2, v0->unk_108, v0->unk_140, v0->unk_E8, v0->unk_E0, v0->records, v0->poketchData, v3, 0x1 | 0x2, 73);
            *param1 = 14;
        } else {
            *param1 = 15;
        }
    } break;
    case 14: {
        UnkStruct_0207AE68 *v5 = (UnkStruct_0207AE68 *)v0->unk_170;

        if (sub_0207B0D0(v5) == 1) {
            sub_0207B0E0(v5);
            Heap_Destroy(73);
            *param1 = 13;
        }
    } break;
    case 15:
        return 1;
    }

    return 0;
}

void ov16_0223B384(BattleSystem *param0)
{
    ov16_02268A14(param0->unk_198);
    ov16_022687A0(param0->unk_04);

    param0->unk_23FB_2 = 1;

    Font_Free(FONT_SUBSCREEN);
    ov16_0223F314(param0, 3);

    if (param0->overlayFlags == 0) {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));
    } else {
        Overlay_UnloadByID(FS_OVERLAY_ID(trainer_ai));
    }

    Overlay_LoadByID(FS_OVERLAY_ID(overlay13), 2);
}

void ov16_0223B3E4(BattleSystem *param0)
{
    SetMainCallback(NULL, NULL);
    ov16_02268A14(param0->unk_198);
    BGL_DeleteWindow(&param0->windows[0]);

    ov16_0223C288(param0->unk_04);
    ov16_0223C2BC(param0);

    sub_0200D0B0(param0->unk_90, param0->unk_94);
    sub_0200C8D4(param0->unk_90);
    sub_0201DC3C();
    Font_Free(FONT_SUBSCREEN);
}

void ov16_0223B430(BattleSystem *param0)
{
    NARC *v0;
    NARC *v1;

    Overlay_UnloadByID(FS_OVERLAY_ID(overlay13));

    if (param0->overlayFlags == 0) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay12), 2);
    } else {
        Overlay_LoadByID(FS_OVERLAY_ID(trainer_ai), 2);
    }

    ov16_0223F314(param0, 0);
    MI_CpuFill16((void *)sub_02024200(), 0x0, sub_02024208());

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
    v1 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);
    param0->unk_198 = ov16_022687C8(v0, v1, param0, ov16_0223E1B4(param0, ov16_0223F6E4(param0)), param0->unk_1BC);

    Font_InitManager(FONT_SUBSCREEN, 5);

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
    TextPrinter_SetScrollArrowBaseTile(1);
    ov16_0223DD4C(param0);
    sub_0200964C(sub_0200C738(param0->unk_90), 0, ((192 + 80) << FX32_SHIFT));
}

void ov16_0223B53C(BattleSystem *param0)
{
    BGL_DeleteWindow(&param0->windows[0]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(param0->unk_04, 1);
    sub_02019044(param0->unk_04, 2);
    sub_02019044(param0->unk_04, 3);
    ov16_0223F3EC(param0);
}

void ov16_0223B578(BattleSystem *param0)
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
                0,
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
                0,
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
                0,
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
        PaletteSys_LoadPalette(param0->unk_28, 7, 172 + (param0->unk_2400 * 3) + ov16_0223EC04(param0), 5, 0, 0, 0);
        PaletteSys_LoadPalette(param0->unk_28, 38, sub_0200DD08(v1), 5, 0, 0x20, 10 * 0x10);
        PaletteSys_LoadPalette(param0->unk_28, 14, 7, 5, 0, 0x20, 0xb * 0x10);
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
    SetMainCallback(ov16_0223CE68, param0);

    param0->unk_23FB_1 = 1;

    BGL_AddWindow(param0->unk_04, param0->windows, 1, 0x2, 0x13, 27, 4, 0xb, (18 + 12) + 1);
    BGL_FillWindow(param0->windows, 0xff);
    sub_0200E060(&param0->windows[0], 0, 1, 10);

    ov16_0223DD4C(param0);
}

void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int flags)
{
    GF_ASSERT(battleSys->overlayFlags != flags);

    battleSys->overlayFlags = flags;

    if (flags == 0) {
        Overlay_UnloadByID(FS_OVERLAY_ID(trainer_ai));
        Overlay_LoadByID(FS_OVERLAY_ID(overlay12), 2);
    } else {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));
        Overlay_LoadByID(FS_OVERLAY_ID(trainer_ai), 2);
    }
}

static const int Unk_ov16_0226E44C[][3] = {
    { 0x7b51, GX_RGB(30, 17, 0), GX_RGB(0, 16, 23) },
    { 0x7b51, GX_RGB(30, 17, 0), GX_RGB(0, 16, 23) },
    { 0x7b51, GX_RGB(30, 17, 0), GX_RGB(0, 16, 23) },
    { GX_RGB(11, 21, 5), GX_RGB(11, 21, 5), GX_RGB(11, 21, 5) },
    { 0x7b51, GX_RGB(30, 17, 0), GX_RGB(0, 16, 23) },
    { GX_RGB(31, 26, 31), GX_RGB(31, 26, 22), GX_RGB(24, 22, 22) },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { GX_RGB(5, 5, 7), GX_RGB(5, 5, 7), GX_RGB(5, 5, 7) },
    { GX_RGB(5, 5, 7), GX_RGB(5, 5, 7), GX_RGB(5, 5, 7) },
    { GX_RGB(5, 5, 7), GX_RGB(5, 5, 7), GX_RGB(5, 5, 7) },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
    { 0x7fff, 0x7fff, 0x7fff },
};

static void ov16_0223B790(OverlayManager *param0)
{
    BattleSystem *v0 = OverlayManager_Data(param0);
    BattleParams *v1 = OverlayManager_Args(param0);
    ArchivedSprite v2;
    int v3;
    RTCDate v4;
    RTCTime v5;

    MI_CpuFill16((void *)sub_020241F0(), 0x0, sub_020241F8());
    MI_CpuFill16((void *)sub_02024200(), 0x0, sub_02024208());

    v0->unk_00 = ov16_0223CD7C();

    DisableHBlank();
    Font_InitManager(FONT_SUBSCREEN, 5);

    if (v0->battleType & 0x20) {
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
    v0->windows = sub_0201A778(5, 3);

    for (v3 = 0; v3 < 4; v3++) {
        v0->unk_1CC[v3].unk_00 = Heap_AllocFromHeap(5, (32 * 10 * 10));
    }

    sub_0201DBEC(64, 5);

    {
        NARC *v6 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 5);
        NARC *v7 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

        v0->unk_198 = ov16_022687C8(v6, v7, v0, ov16_0223E1B4(v0, ov16_0223F6E4(v0)), v0->unk_1BC);

        NARC_dtor(v6);
        NARC_dtor(v7);
    }

    ov16_0223C004(v0, v0->unk_04);

    BGL_AddWindow(v0->unk_04, &v0->windows[0], 1, 2, 0x13, 27, 4, 11, ((18 + 12) + 1));
    BGL_FillWindow(&v0->windows[0], 0xff);
    sub_0200E060(&v0->windows[0], 0, 1, 10);

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
        NARC *v8;
        NARC *v9;

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
    v0->strFormatter = StringTemplate_Default(5);
    v0->msgBuffer = Strbuf_Init((2 * 160), 5);

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

    v0->unk_1C = SysTask_Start(ov16_0223CF48, v0, 60000);
    v0->unk_20 = SysTask_Start(ov16_0223CF8C, v0, 50000);
    v0->unk_24 = SysTask_ExecuteOnVBlank(ov16_0223D0C4, v0, 1200);
    v0->unk_2434 = -51;

    ov16_0223DD4C(v0);
    sub_0207D9F8(BattleSystem_BagCursor(v0));

    v0->unk_1C4 = sub_02015F84(5, 4, 0);
    v0->cellTransferState = sub_0201DCC8(4, 5);

    if (v0->battleStatusMask & 0x10) {
        for (v3 = 0; v3 < 4; v3++) {
            v0->unk_247C[v3] = v1->unk_194[v3];
        }
    }
}

static int ov16_0223BBD0(OverlayManager *param0)
{
    BattleSystem *v0 = OverlayManager_Data(param0);
    int v1;

    if ((v0->battleType & 0x4) && ((v0->battleStatusMask & 0x10) == 0)) {
        if (v0->unk_23F8) {
            BattleController_Main(v0, v0->battleCtx);
        }

        for (v1 = 0; v1 < v0->maxBattlers; v1++) {
            ov16_0225C0DC(v0, v0->battlers[v1]);
        }
    } else {
        if (v0->unk_23F8) {
            v0->unk_23FA = BattleController_Main(v0, v0->battleCtx);
            ov16_02264988(v0, 1);
        }

        for (v1 = 0; v1 < v0->maxBattlers; v1++) {
            ov16_0225C0DC(v0, v0->battlers[v1]);
            ov16_02264988(v0, 0);
        }

        if (v0->unk_23FA == 0) {
            if (v0->unk_23F8) {
                v0->unk_23FA = BattleController_Main(v0, v0->battleCtx);
                ov16_02264988(v0, 1);
            }

            for (v1 = 0; v1 < v0->maxBattlers; v1++) {
                ov16_0225C0DC(v0, v0->battlers[v1]);
                ov16_02264988(v0, 0);
            }
        }
    }

    return v0->unk_23FA;
}

static void ov16_0223BCB4(OverlayManager *param0)
{
    BattleSystem *v0 = OverlayManager_Data(param0);
    BattleParams *v1 = OverlayManager_Args(param0);
    int v2;

    v1->unk_174 = v0->unk_2448;
    v1->unk_164 = v0->battleStatusMask;

    if ((v0->battleStatusMask & 0x10) == 0) {
        sub_0202F8AC(v1);
    }

    if (v0->overlayFlags != 0) {
        BattleSystem_LoadFightOverlay(v0, 0);
    }

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);
    ov16_0223EE70(v0);

    if (v0->resultMask != 0x4) {
        ov16_0223EF68(v0, Party_GetPokemonBySlotIndex(v0->parties[1], 0));
    }

    for (v2 = 0; v2 < 4; v2++) {
        Party_cpy(v0->parties[v2], v1->parties[v2]);
        Heap_FreeToHeap(v0->parties[v2]);
        TrainerInfo_Copy(v0->trainerInfo[v2], v1->unk_D0[v2]);
        Heap_FreeToHeap(v0->trainerInfo[v2]);
    }

    sub_02015760(v0->unk_1AC);
    Bag_Copy(v0->unk_58, v1->unk_E0);
    Heap_FreeToHeap(v0->unk_58);
    sub_02026338(v0->pokedex, v1->unk_E8);
    Heap_FreeToHeap(v0->pokedex);

    v1->unk_EC = v0->pcBoxes;
    v1->unk_E4 = v0->unk_5C;
    v1->unk_190 = v0->unk_1BC;
    v1->poketchData = v0->poketchData;
    v1->unk_10C = v0->unk_9C;
    v1->unk_168 = v0->safariBalls;
    v1->unk_14 = v0->resultMask & (0xc0 ^ 0xff);
    v1->unk_148 = v0->unk_2438;
    v1->unk_150 = BattleContext_Get(v0, v0->battleCtx, 4, NULL);
    v1->unk_110.unk_00 += BattleContext_Get(v0, v0->battleCtx, 3, NULL);
    v1->unk_110.unk_04 += (BattleContext_Get(v0, v0->battleCtx, 6, 0) + BattleContext_Get(v0, v0->battleCtx, 6, 2));
    v1->unk_110.unk_08 += (BattleContext_Get(v0, v0->battleCtx, 7, 0) + BattleContext_Get(v0, v0->battleCtx, 7, 2));
    v1->unk_18C = BattleContext_Get(v0, v0->battleCtx, 3, NULL);
    v1->unk_19C = v0->unk_2474_0;

    for (v2 = 0; v2 < 4; v2++) {
        Heap_FreeToHeap(v0->unk_1CC[v2].unk_00);
    }

    Heap_FreeToHeap(v0->msgBuffer);
    sub_02002FA0(v0->unk_28, 0);
    sub_02002FA0(v0->unk_28, 1);
    sub_02002FA0(v0->unk_28, 2);
    sub_02002FA0(v0->unk_28, 3);
    sub_02002F54(v0->unk_28);
    MessageLoader_Free(v0->unk_0C);
    MessageLoader_Free(v0->unk_10);
    StringTemplate_Free(v0->strFormatter);
    sub_02015FB8(v0->unk_1C4);
    sub_020141E4();

    ov12_0221FDF4(v0->unk_8C);
    BattleContext_Free(v0->battleCtx);

    for (v2 = 0; v2 < v0->maxBattlers; v2++) {
        ov16_0225C104(v0, v0->battlers[v2], v0->unk_23F9);
    }

    sub_02007B6C(v0->unk_88);

    if (v0->unk_23F9 != 2) {
        ov16_0223B3E4(v0);
    }

    RenderControlFlags_SetCanABSpeedUpPrint(0);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
    sub_0201A928(v0->windows, 3);
    Heap_FreeToHeap(v0->unk_04);
    Heap_FreeToHeap(v0->unk_21C);
    Heap_FreeToHeap(v0->unk_220);
    sub_0200C560(v0->unk_1A4);
    Font_Free(FONT_SUBSCREEN);
    SysTask_Done(v0->unk_1C);
    SysTask_Done(v0->unk_20);
    sub_0201E530();

    ov16_0223CE20(v0->unk_00);

    LCRNG_SetSeed(v0->unk_2430);

    if (ov16_0223F450(v0)) {
        sub_020057A4(1796, 0);
    }

    sub_0201DCF0(v0->cellTransferState);

    if (BattleSystem_RecordingStopped(v0)) {
        sub_0200500C(127);
    }

    if (v0->playbackStopButton) {
        ov16_0226E174(v0->playbackStopButton);
    }

    Heap_FreeToHeap(v0);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));

    if (!sub_020389B8()) {
        Overlay_UnloadByID(FS_OVERLAY_ID(overlay21));
    }
}

static void ov16_0223C004(BattleSystem *param0, BGL *param1)
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
                0,
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
                0,
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
                0,
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
        PaletteSys_LoadPalette(param0->unk_28, 7, 172 + (param0->unk_2400 * 3) + ov16_0223EC04(param0), 5, 0, 0, 0);
        PaletteSys_LoadPalette(param0->unk_28, 38, sub_0200DD08(v3), 5, 0, 0x20, 10 * 0x10);
        PaletteSys_LoadPalette(param0->unk_28, 14, 7, 5, 0, 0x20, 0xb * 0x10);
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
    SetMainCallback(ov16_0223CE68, param0);
}

static void ov16_0223C210(BattleSystem *param0)
{
    int v0;
    int v1;
    int v2;
    BattleContext *v3;
    Pokemon *v4;

    v0 = BattleSystem_Terrain(param0);

    ov16_022686CC(&param0->unk_17C[0], param0, 0, v0);
    ov16_022686CC(&param0->unk_17C[1], param0, 1, v0);

    v3 = BattleSystem_Context(param0);

    for (v1 = 0; v1 < param0->maxBattlers; v1++) {
        v2 = BattleContext_Get(param0, v3, 2, v1);
        v4 = BattleSystem_PartyPokemon(param0, v1, v2);
        ov16_0225C038(param0, param0->battlers[v1], Pokemon_GetValue(v4, MON_DATA_POKEBALL, NULL), v2);
    }

    ov16_0223DECC();
}

static void ov16_0223C288(BGL *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(param0, 1);
    sub_02019044(param0, 2);
    sub_02019044(param0, 3);

    ov16_022687A0(param0);
}

static void ov16_0223C2BC(BattleSystem *param0)
{
    int v0;
}

static const u8 Unk_ov16_0226E25C[] = {
    0x0,
    0x1
};

static const u8 Unk_ov16_0226E260[][2] = {
    {
        0x0,
        0x1,
    },
    {
        0x1,
        0x0,
    },
};

static const u8 Unk_ov16_0226E560[] = {
    0x2,
    0x3,
    0x4,
    0x5
};

static const u8 Unk_ov16_0226E264[][4] = {
    {
        0x2,
        0x3,
        0x4,
        0x5,
    },
    {
        0x3,
        0x2,
        0x5,
        0x4,
    },
};

static const u8 Unk_ov16_0226E28C[][4] = {
    {
        0x2,
        0x5,
        0x4,
        0x3,
    },
    {
        0x3,
        0x4,
        0x5,
        0x2,
    },
    {
        0x2,
        0x5,
        0x4,
        0x3,
    },
    {
        0x3,
        0x4,
        0x5,
        0x2,
    },
};

static void ov16_0223C2C0(BattleSystem *param0, BattleParams *param1)
{
    int v0, v1;
    UnkStruct_ov16_0223C2C0 v2;
    Pokemon *v3;
    Pokemon *v4;

    param0->battleType = param1->battleType;

    for (v0 = 0; v0 < 4; v0++) {
        param0->trainerInfo[v0] = TrainerInfo_New(5);
        TrainerInfo_Copy(param1->unk_D0[v0], param0->trainerInfo[v0]);
        param0->unk_78[v0] = param1->unk_F0[v0];
    }

    param0->unk_2442 = param1->unk_188;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_2464[v0] = param1->unk_178[v0];
    }

    param0->unk_2430 = LCRNG_GetSeed();
    param0->unk_2444 = param1->unk_174;
    param0->unk_2448 = param1->unk_174;
    param0->battleStatusMask = param1->unk_164;
    param0->unk_58 = Bag_New(5);

    Bag_Copy(param1->unk_E0, param0->unk_58);
    param0->pokedex = sub_02026324(5);
    sub_02026338(param1->unk_E8, param0->pokedex);

    param0->pcBoxes = param1->unk_EC;
    param0->unk_1B0 = param1->unk_108;
    param0->unk_1B4 = param1->unk_124;
    param0->unk_5C = param1->unk_E4;
    param0->unk_1BC = param1->unk_190;
    param0->poketchData = param1->poketchData;
    param0->unk_2420 = param1->unk_13C;
    param0->unk_9C = param1->unk_10C;
    param0->safariBalls = param1->unk_168;
    param0->terrain = param1->unk_12C;
    param0->unk_2400 = param1->unk_128;
    param0->unk_2404 = param1->unk_130;
    param0->time = param1->unk_138;
    param0->unk_2418 = param1->unk_16C;
    param0->unk_2424 = param1->unk_140;
    param0->unk_242C = param1->unk_144;
    param0->fieldWeather = param1->unk_14C;
    param0->records = param1->records;

    GF_ASSERT(param1->records != NULL);

    for (v0 = 0; v0 < 4; v0++) {
        param0->trainerIDs[v0] = param1->trainerIDs[v0];
        param0->trainers[v0] = param1->trainerData[v0];
    }

    param0->battleCtx = BattleContext_New(param0);

    for (v0 = 0; v0 < 4; v0++) {
        param0->parties[v0] = Party_New(5);
    }

    {
        int v5;

        for (v0 = 0; v0 < 4; v0++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(param1->parties[v0]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(param1->parties[v0], v1);
                v5 = Pokemon_GetGender(v3);
                Pokemon_SetValue(v3, 111, &v5);
            }
        }
    }

    if (param0->battleType & 0x4) {
        sub_0207A6DC(param0);
        {
            u8 v6 = ov16_0223F6E4(param0);
            int v7;

            ov16_0223DD90(param0, param1);

            if (param0->battleType & 0x80) {
                for (v0 = 0; v0 < 4; v0++) {
                    v2.unk_00 = v0;
                    v2.unk_01 = Unk_ov16_0226E560[v0];
                    param0->battlers[v0] = ov16_0225BFFC(param0, &v2);
                }

                param0->maxBattlers = v0;

                for (v0 = 0; v0 < 4; v0++) {
                    ov16_02263730(param0, param0->battlers[v0]);
                    Party_cpy(param1->parties[v0], param0->parties[v0]);
                }

                for (v0 = 0; v0 < param0->maxBattlers; v0++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(param0->parties[v0]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(param0->parties[v0], v1);

                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                            break;
                        }
                    }

                    BattleContext_Set(param0, param0->battleCtx, 2, v0, v1);
                }

                BattleSystem_InitPartyOrder(param0, param0->battleCtx);
            } else if (param0->battleType & 0x8) {
                for (v0 = 0; v0 < 4; v0++) {
                    v2.unk_00 = v0;
                    v2.unk_01 = Unk_ov16_0226E28C[ov16_0223F6F0(param0, v6)][ov16_0223F6F0(param0, v0)];
                    param0->battlers[v0] = ov16_0225BFFC(param0, &v2);
                }

                param0->maxBattlers = v0;

                for (v0 = 0; v0 < 4; v0++) {
                    ov16_02263730(param0, param0->battlers[v0]);
                    Party_cpy(param1->parties[v0], param0->parties[v0]);
                }

                for (v0 = 0; v0 < param0->maxBattlers; v0++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(param0->parties[v0]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(param0->parties[v0], v1);

                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                            break;
                        }
                    }

                    BattleContext_Set(param0, param0->battleCtx, 2, v0, v1);
                }

                BattleSystem_InitPartyOrder(param0, param0->battleCtx);
            } else if (param0->battleType & 0x2) {
                for (v0 = 0; v0 < 4; v0++) {
                    v2.unk_00 = v0;
                    v2.unk_01 = Unk_ov16_0226E264[v6][v0];
                    param0->battlers[v0] = ov16_0225BFFC(param0, &v2);
                    ov16_02263730(param0, param0->battlers[v0]);
                }

                param0->maxBattlers = v0;

                for (v0 = 0; v0 < 4; v0++) {
                    Party_cpy(param1->parties[v0], param0->parties[v0]);
                }

                for (v0 = 0; v0 < param0->maxBattlers; v0++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(param0->parties[v0 & 1]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(param0->parties[v0 & 1], v1);

                        if (v0 > 1) {
                            if ((BattleContext_Get(param0, param0->battleCtx, 2, v0 & 1) != v1) && (Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                                break;
                            }
                        } else {
                            if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                                break;
                            }
                        }
                    }

                    BattleContext_Set(param0, param0->battleCtx, 2, v0, v1);
                }
            } else {
                for (v0 = 0; v0 < 2; v0++) {
                    v2.unk_00 = v0;
                    v2.unk_01 = Unk_ov16_0226E260[v6][v0];
                    param0->battlers[v0] = ov16_0225BFFC(param0, &v2);
                    ov16_02263730(param0, param0->battlers[v0]);
                }

                param0->maxBattlers = v0;

                for (v0 = 0; v0 < 4; v0++) {
                    Party_cpy(param1->parties[v0], param0->parties[v0]);

                    for (v1 = 0; v1 < Party_GetCurrentCount(param0->parties[v0]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(param0->parties[v0], v1);

                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                            break;
                        }
                    }

                    BattleContext_Set(param0, param0->battleCtx, 2, v0, v1);
                }
            }
        }
        BattleSystem_InitPartyOrder(param0, param0->battleCtx);
    } else if (param0->battleType & 0x10) {
        {
            int v8;

            for (v0 = 0; v0 < 4; v0++) {
                v2.unk_00 = v0;
                v2.unk_01 = Unk_ov16_0226E560[v0];
                param0->battlers[v0] = ov16_0225BFFC(param0, &v2);
                ov16_02263730(param0, param0->battlers[v0]);
            }

            param0->maxBattlers = v0;

            for (v0 = 0; v0 < 4; v0++) {
                Party_cpy(param1->parties[v0], param0->parties[v0]);
            }

            for (v0 = 0; v0 < param0->maxBattlers; v0++) {
                for (v1 = 0; v1 < BattleSystem_PartyCount(param0, v0); v1++) {
                    v3 = BattleSystem_PartyPokemon(param0, v0, v1);

                    if (v0 == 2) {
                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL)) && (v8 != v1)) {
                            break;
                        }
                    } else {
                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                            break;
                        }
                    }
                }

                BattleContext_Set(param0, param0->battleCtx, 2, v0, v1);

                if (v0 == 0) {
                    v8 = v1;
                }
            }
        }
        BattleSystem_InitPartyOrder(param0, param0->battleCtx);
        param0->unk_23F8 = 1;
    } else if (param0->battleType & 0x8) {
        for (v0 = 0; v0 < 4; v0++) {
            v2.unk_00 = v0;
            v2.unk_01 = Unk_ov16_0226E560[v0];
            param0->battlers[v0] = ov16_0225BFFC(param0, &v2);
            ov16_02263730(param0, param0->battlers[v0]);
        }

        param0->maxBattlers = v0;

        for (v0 = 0; v0 < 4; v0++) {
            Party_cpy(param1->parties[v0], param0->parties[v0]);
        }

        for (v0 = 0; v0 < param0->maxBattlers; v0++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(param0->parties[v0]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(param0->parties[v0], v1);

                if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                    break;
                }
            }

            BattleContext_Set(param0, param0->battleCtx, 2, v0, v1);
        }

        BattleSystem_InitPartyOrder(param0, param0->battleCtx);
        param0->unk_23F8 = 1;
    } else if (param0->battleType & 0x2) {
        for (v0 = 0; v0 < 4; v0++) {
            v2.unk_00 = v0;
            v2.unk_01 = Unk_ov16_0226E560[v0];
            param0->battlers[v0] = ov16_0225BFFC(param0, &v2);
            ov16_02263730(param0, param0->battlers[v0]);
        }

        param0->maxBattlers = v0;

        for (v0 = 0; v0 < 4; v0++) {
            Party_cpy(param1->parties[v0], param0->parties[v0]);
        }

        for (v0 = 0; v0 < param0->maxBattlers; v0++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(param0->parties[v0 & 1]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(param0->parties[v0 & 1], v1);

                if (v0 > 1) {
                    if ((BattleContext_Get(param0, param0->battleCtx, 2, v0 & 1) != v1) && (Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                        break;
                    }
                } else {
                    if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                        break;
                    }
                }
            }

            BattleContext_Set(param0, param0->battleCtx, 2, v0, v1);
        }

        BattleSystem_InitPartyOrder(param0, param0->battleCtx);
        param0->unk_23F8 = 1;
    } else {
        for (v0 = 0; v0 < 2; v0++) {
            v2.unk_00 = v0;
            v2.unk_01 = Unk_ov16_0226E25C[v0];
            param0->battlers[v0] = ov16_0225BFFC(param0, &v2);
            ov16_02263730(param0, param0->battlers[v0]);
        }

        param0->maxBattlers = v0;

        for (v0 = 0; v0 < 4; v0++) {
            Party_cpy(param1->parties[v0], param0->parties[v0]);

            for (v1 = 0; v1 < Party_GetCurrentCount(param0->parties[v0]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(param0->parties[v0], v1);

                if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_CURRENT_HP, NULL))) {
                    break;
                }
            }

            BattleContext_Set(param0, param0->battleCtx, 2, v0, v1);
        }

        BattleSystem_InitPartyOrder(param0, param0->battleCtx);
        param0->unk_23F8 = 1;
    }

    if (param0->battleType & 0x200) {
        v3 = Party_GetPokemonBySlotIndex(param0->parties[1], 0);
        Pokemon_GetValue(v3, MON_DATA_OTNAME, (u8 *)&param0->trainers[1].name);
    }

    if (param0->battleType & 0x1) {
        if ((ov16_0223CD3C(param0->trainers[1].class) == 1) || (ov16_0223CD3C(param0->trainers[3].class) == 1)) {
            for (v0 = 0; v0 < Party_GetCurrentCount(param0->parties[0]); v0++) {
                v3 = Party_GetPokemonBySlotIndex(param0->parties[0], v0);
                Pokemon_UpdateFriendship(v3, 3, param0->unk_2404);
            }

            for (v0 = 0; v0 < Party_GetCurrentCount(param0->parties[2]); v0++) {
                v3 = Party_GetPokemonBySlotIndex(param0->parties[2], v0);
                Pokemon_UpdateFriendship(v3, 3, param0->unk_2404);
            }
        }
    }
}

static BOOL ov16_0223CD3C(u16 param0)
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

static GenericPointerData *ov16_0223CD7C(void)
{
    GenericPointerData *v0;

    v0 = sub_02024220(5, 0, 2, 0, 2, ov16_0223CD9C);
    return v0;
}

static void ov16_0223CD9C(void)
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

static void ov16_0223CE20(GenericPointerData *param0)
{
    sub_020242C4(param0);
}

static void ov16_0223CE28(void)
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

static void ov16_0223CE68(void *param0)
{
    BattleSystem *v0 = param0;

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

static void ov16_0223CF1C(void *param0)
{
    UnkStruct_0207A778 *v0 = param0;

    sub_02003694(v0->unk_0C);
    sub_0201DCAC();
    sub_0201C2B8(v0->unk_04);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov16_0223CF48(SysTask *param0, void *param1)
{
    BattleSystem *v0 = param1;

    sub_02038A1C(5, v0->unk_04);

    if ((v0->unk_23F9 == 0) || (v0->unk_23F9 == 3)) {
        if (v0->unk_23F9 == 0) {
            ov11_0221F8F0();
        }

        sub_02007768(v0->unk_88);
        sub_0200C7EC(v0->unk_94);
        sub_0200C808();
        G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
    }
}

static void ov16_0223CF8C(SysTask *param0, void *param1)
{
    BattleSystem *v0 = param1;
    BattlerData *v1;
    Healthbar *v2;
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;

    v4 = BattleSystem_MaxBattlers(v0);
    v5 = 0;
    v6 = ov16_0223F450(v0);

    if (BattleSystem_BattleType(v0) & (0x20 | 0x200)) {
        return;
    }

    if (v6 & 2) {
        if (v6 & 1) {
            sub_020057A4(1796, 0);
            BattleSystem_SetRedHPSoundFlag(v0, 2);
        }

        return;
    }

    for (v3 = 0; v3 < v4; v3++) {
        v1 = BattleSystem_BattlerData(v0, v3);

        if (((Battler_BootState(v1) == 0x0) && ((BattleSystem_BattleStatus(v0) & 0x10) == 0)) || ((Battler_Side(v0, v3) == 0) && (BattleSystem_BattleStatus(v0) & 0x10))) {
            v2 = ov16_02263B08(v1);

            if (v2 != NULL) {
                if (HealthBar_Color(v2->curHP, v2->maxHP, (8 * 6)) == 1) {
                    v5 |= FlagIndex(v3);
                }
            }
        }
    }

    if ((v5) && (ov16_0223F450(v0) == 0)) {
        Sound_PlayEffect(1796);
        BattleSystem_SetRedHPSoundFlag(v0, 1);
        ov16_0223F48C(v0, 4);
    } else if ((v5 == 0) && (ov16_0223F450(v0))) {
        sub_020057A4(1796, 0);
        BattleSystem_SetRedHPSoundFlag(v0, 0);
    }

    if (ov16_0223F450(v0)) {
        v7 = ov16_0223F47C(v0);

        if (Sound_IsEffectPlaying(1796) == 0) {
            if (--v7 == 0) {
                Sound_PlayEffect(1796);
                ov16_0223F48C(v0, 4);
            } else {
                ov16_0223F48C(v0, v7);
            }
        }
    }
}

static void ov16_0223D0C4(SysTask *param0, void *param1)
{
    BattleSystem *v0 = param1;

    v0->unk_2434 += 3;
    sub_02019184(v0->unk_04, 1, 3, v0->unk_2434);

    if (v0->unk_2434 == 0) {
        SysTask_Done(param0);
    }
}

static void NitroStaticInit(void)
{
    if (!sub_020389B8()) {
        Overlay_LoadByID(FS_OVERLAY_ID(overlay21), 2);
    }
}

static void ov16_0223D10C(OverlayManager *param0, BattleParams *param1)
{
    UnkStruct_0207A778 *v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_0207A778), 5);

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

        v4 = Options_Frame(param1->unk_108);

        sub_0200E218(v0->unk_04, 1, 1, 10, v4, 5);
        PaletteSys_LoadPalette(v0->unk_0C, 14, 7, 5, 0, 0x20, 0xb * 0x10);
        PaletteSys_LoadPalette(v0->unk_0C, 38, sub_0200DD08(v4), 5, 0, 0x20, 10 * 0x10);
        sub_020038B0(v0->unk_0C, 0, 0, 0x0, 0, 256);
    }

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    BGL_AddWindow(v0->unk_04, v0->unk_08, 1, 2, 0x13, 27, 4, 11, ((18 + 12) + 1));
    BGL_FillWindow(v0->unk_08, 0xff);
    sub_0200E060(v0->unk_08, 0, 1, 10);

    {
        MessageLoader *v5;
        Strbuf *v6;

        v5 = MessageLoader_Init(1, 26, 368, 5);
        v6 = Strbuf_Init(0x100, 5);

        MessageLoader_GetStrbuf(v5, 923, v6);
        Text_AddPrinterWithParams(v0->unk_08, FONT_MESSAGE, v6, 0, 0, NULL, NULL);

        Strbuf_Free(v6);
        MessageLoader_Free(v5);
    }

    SetMainCallback(ov16_0223CF1C, v0);
    sub_02003178(v0->unk_0C, (0x1 | 0x4), 0xffff, 0, 16, 0, 0x0);

    v0->unk_1024 = sub_0200E7FC(v0->unk_08, 1);

    ov16_0223DECC();
}

static BOOL ov16_0223D354(OverlayManager *param0)
{
    UnkStruct_0207A778 *v0 = OverlayManager_Data(param0);
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
        CommTiming_StartSync(50);
        v0->unk_1021++;
        break;
    case 3:
        if (CommTiming_IsSyncState(50)) {
            CommTiming_StartSync(51);
            v0->unk_1022 = 0;
            v0->unk_1021++;
        } else {
            v0->unk_1022++;

            if (v0->unk_1022 > (60 * 30)) {
                Link_SetErrorState(1);
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
            CommTiming_StartSync(52);
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
            CommTiming_StartSync(53);
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
            CommTiming_StartSync(54);
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
            CommTiming_StartSync(55);
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
            CommTiming_StartSync(56);
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
            if (CommSys_CurNetId()) {
                CommTiming_StartSync(57);
                v0->unk_1021++;
            } else if (sub_0207AB9C(v0, 1) == 1) {
                CommTiming_StartSync(57);
                v0->unk_1021++;
            }
        }
        break;
    case 22:
        v0->unk_1020 = 1;

        if (CommSys_CurNetId()) {
            if (CommTiming_IsSyncState(57) == 1) {
                v0->unk_1021++;
            }
        } else if (sub_0207ABD0(v0, 1, 57) == 1) {
            v0->unk_1021++;
        }
        break;
    case 24:
        if (CommSys_CurNetId()) {
            CommTiming_StartSync(58);
            v0->unk_1021++;
        } else if (sub_0207AB9C(v0, 3) == 1) {
            CommTiming_StartSync(58);
            v0->unk_1021++;
        }
        break;
    case 25:
        v0->unk_1020 = 1;

        if (CommSys_CurNetId()) {
            if (CommTiming_IsSyncState(58) == 1) {
                v0->unk_1021++;
            }
        } else if (sub_0207ABD0(v0, 3, 58) == 1) {
            v0->unk_1021++;
        }
        break;
    case 27:
        if (CommSys_CurNetId()) {
            CommTiming_StartSync(59);
            v0->unk_1021++;
        } else if (sub_0207AC28(v0, 1) == 1) {
            CommTiming_StartSync(59);
            v0->unk_1021++;
        }
        break;
    case 28:
        v0->unk_1020 = 1;

        if (CommSys_CurNetId()) {
            if (CommTiming_IsSyncState(59) == 1) {
                v0->unk_1021++;
            }
        } else if (sub_0207AC54(v0, 1, 59) == 1) {
            v0->unk_1021++;
        }
        break;
    case 30:
        if (CommSys_CurNetId()) {
            CommTiming_StartSync(60);
            v0->unk_1021++;
        } else if (sub_0207AC28(v0, 3) == 1) {
            CommTiming_StartSync(60);
            v0->unk_1021++;
        }
        break;
    case 31:
        v0->unk_1020 = 1;

        if (CommSys_CurNetId()) {
            if (CommTiming_IsSyncState(60) == 1) {
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
        if (v0->unk_1020 == CommSys_ConnectedCount()) {
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
                Link_SetErrorState(1);
            }
        }
        break;
    case 33:
        if (sub_0200384C(v0->unk_0C) == 0) {
            v1 = 1;
            DeleteWaitDial(v0->unk_1024);
            sub_02036378(0);
        }
        break;
    }

    return v1;
}

static void ov16_0223D7B4(OverlayManager *param0)
{
    UnkStruct_0207A778 *v0 = OverlayManager_Data(param0);

    SetMainCallback(NULL, NULL);
    sub_0200F344(0, 0x0);
    sub_02002FA0(v0->unk_0C, 0);
    sub_02002F54(v0->unk_0C);
    sub_0201A928(v0->unk_08, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(v0->unk_04, 1);
    Heap_FreeToHeap(v0->unk_04);
    Heap_FreeToHeap(v0);
}

static BOOL ov16_0223D800(OverlayManager *param0)
{
    BattleSystem *v0 = OverlayManager_NewData(param0, sizeof(BattleSystem), 5);
    BattleParams *v1 = OverlayManager_Args(param0);
    u8 v2;

    MI_CpuClearFast(v0, sizeof(BattleSystem));
    ov16_0223C2C0(v0, v1);

    if (((v0->battleType & 0x4) == 0) || (v0->battleStatusMask & 0x10) || (v0->battleType & 0x80)) {
        sub_02039794();
        return 0;
    }

    Overlay_LoadByID(FS_OVERLAY_ID(overlay10), 2);

    if ((v0->battleType & 0x8) == 0) {
        return 0;
    }

    v0->unk_1C0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov10_0221F800));
    MI_CpuClearFast(v0->unk_1C0, sizeof(UnkStruct_ov10_0221F800));
    v2 = CommSys_CurNetId();

    switch (sub_020362F4(v2)) {
    case 0:
    case 3:
        v0->unk_1C0->unk_04[0] = v0->parties[v2];
        v0->unk_1C0->unk_04[2] = v0->parties[BattleSystem_Partner(v0, v2)];
        break;
    case 1:
    case 2:
        v0->unk_1C0->unk_04[0] = v0->parties[BattleSystem_Partner(v0, v2)];
        v0->unk_1C0->unk_04[2] = v0->parties[v2];
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

static BOOL ov16_0223D944(OverlayManager *param0)
{
    int v0;
    BattleSystem *v1 = OverlayManager_Data(param0);

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

static BOOL ov16_0223D98C(OverlayManager *param0)
{
    BattleSystem *v0 = OverlayManager_Data(param0);
    BattleParams *v1 = OverlayManager_Args(param0);
    u8 v2;
    int v3;

    if (((v0->battleType & 0x4) == 0) || (v0->battleStatusMask & 0x10) || (v0->battleType & 0x80)) {
        sub_02039794();
        return 0;
    }

    v2 = CommSys_CurNetId();
    v0->unk_1C0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov10_0221F800));

    MI_CpuClearFast(v0->unk_1C0, sizeof(UnkStruct_ov10_0221F800));

    if (v0->battleType & 0x8) {
        for (v3 = 0; v3 < 4; v3++) {
            v0->unk_1C0->unk_04[sub_020362F4(v3)] = v0->parties[v3];
            v0->unk_1C0->unk_14[sub_020362F4(v3)] = TrainerInfo_NameNewStrbuf(v0->trainerInfo[v3], 5);
        }

        v0->unk_1C0->unk_24 = 5;
        v0->unk_1C0->unk_28 = 1;
        v0->unk_1C0->unk_29 = 1;
    } else {
        v0->unk_1C0->unk_04[sub_020362F4(v2)] = v0->parties[v2];
        v0->unk_1C0->unk_04[sub_020362F4(v2 ^ 1)] = v0->parties[v2 ^ 1];
        v0->unk_1C0->unk_14[sub_020362F4(v2)] = TrainerInfo_NameNewStrbuf(v0->trainerInfo[v2], 5);
        v0->unk_1C0->unk_14[sub_020362F4(v2 ^ 1)] = TrainerInfo_NameNewStrbuf(v0->trainerInfo[v2 ^ 1], 5);
        v0->unk_1C0->unk_24 = 5;
        v0->unk_1C0->unk_28 = 1;
        v0->unk_1C0->unk_29 = 0;
    }

    ov10_0221F800(v0->unk_1C0);

    return 1;
}

static BOOL ov16_0223DAD4(OverlayManager *param0)
{
    int v0;
    BattleSystem *v1 = OverlayManager_Data(param0);

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

static BOOL ov16_0223DB1C(OverlayManager *param0)
{
    BattleParams *v0 = OverlayManager_Args(param0);
    UnkStruct_ov10_0221F800 *v1;
    u8 v2;
    int v3;

    if (((v0->battleType & BATTLE_TYPE_LINK) == 0)
        || (v0->unk_164 & 0x10)
        || (v0->battleType & BATTLE_TYPE_FRONTIER)) {
        return 0;
    }

    v2 = CommSys_CurNetId();
    Overlay_LoadByID(FS_OVERLAY_ID(overlay10), 2);
    v1 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov10_0221F800));

    v0->unk_170 = v1;
    MI_CpuClearFast(v1, sizeof(UnkStruct_ov10_0221F800));
    v1->unk_00 = v0;

    switch (v0->unk_14) {
    case 0x1:
        if (!sub_020389B8()) {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_021);
        } else {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_026);
        }
        break;
    case 0x2:
        if (!sub_020389B8()) {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_022);
        } else {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_027);
        }
        break;
    case 0x3:
    case 0x5:
        if (!sub_020389B8()) {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_023);
        } else {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_028);
        }
        break;
    }

    if (v0->battleType & BATTLE_TYPE_2vs2) {
        for (v3 = 0; v3 < 4; v3++) {
            v1->unk_04[sub_020362F4(v3)] = v0->parties[v3];
            v1->unk_14[sub_020362F4(v3)] = TrainerInfo_NameNewStrbuf(v0->unk_D0[v3], 5);
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
        v1->unk_14[sub_020362F4(v2)] = TrainerInfo_NameNewStrbuf(v0->unk_D0[v2], 5);
        v1->unk_14[sub_020362F4(v2 ^ 1)] = TrainerInfo_NameNewStrbuf(v0->unk_D0[v2 ^ 1], 5);
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

static BOOL ov16_0223DD10(OverlayManager *param0)
{
    int v0;
    BattleParams *v1 = OverlayManager_Args(param0);
    UnkStruct_ov10_0221F800 *v2 = v1->unk_170;

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

static void ov16_0223DD4C(BattleSystem *param0)
{
    if ((param0->battleType & (0x4 | 0x400)) || (param0->battleStatusMask & 0x10)) {
        RenderControlFlags_SetAutoScrollFlags(1);
        RenderControlFlags_SetCanABSpeedUpPrint(1);
        RenderControlFlags_SetSpeedUpOnTouch(0);
    } else {
        RenderControlFlags_SetAutoScrollFlags(3);
        RenderControlFlags_SetCanABSpeedUpPrint(1);
        RenderControlFlags_SetSpeedUpOnTouch(1);
    }
}

static void ov16_0223DD90(BattleSystem *param0, BattleParams *param1)
{
    int v0, v1, v2;
    int v3, v4;
    int v5[4];
    int v6[4];

    if (param0->battleStatusMask & 0x10) {
        param0->unk_23F8 = 1;
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v5[v0] = v0;
        v6[v0] = param1->unk_154[v0];
    }

    v3 = CommSys_CurNetId();
    v4 = CommSys_ConnectedCount();

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
        if ((param0->battleType & 0x80) == 0) {
            if (param0->battleType & 0x8) {
                v2 = sub_020362F4(v3);

                switch (sub_020362F4(v5[0])) {
                case 0:
                case 2:
                    if (v2 & 1) {
                        param0->battleStatusMask |= 0x20;
                    }
                    break;
                case 1:
                case 3:
                    if ((v2 & 1) == 0) {
                        param0->battleStatusMask |= 0x20;
                    }
                    break;
                }
            } else {
                param0->battleStatusMask |= 0x20;
            }
        }
    }
}

static void ov16_0223DECC(void)
{
    sub_02039734();

    if (sub_020389B8()) {
        sub_020397B0(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    } else if (CommServerClient_IsInitialized()) {
        sub_020397B0(WM_LINK_LEVEL_3 - WM_GetLinkLevel());
    }
}
