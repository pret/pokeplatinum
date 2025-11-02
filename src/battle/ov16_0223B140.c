#include "battle/ov16_0223B140.h"

#include <dwc.h>
#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/heap.h"
#include "generated/game_records.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/struct_0207A778.h"
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
#include "battle_anim/battle_anim_system.h"
#include "overlay010/ov10_0221F800.h"
#include "overlay010/struct_ov10_0221F800.h"
#include "overlay011/particle_helper.h"

#include "bag.h"
#include "bg_window.h"
#include "cell_transfer.h"
#include "communication_system.h"
#include "evolution.h"
#include "field_battle_data_transfer.h"
#include "flags.h"
#include "font.h"
#include "font_special_chars.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "game_overlay.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "hardware_palette.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "particle_system.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "trainer_info.h"
#include "unk_02015F84.h"
#include "unk_0202419C.h"
#include "unk_0202F1D4.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_02038F8C.h"
#include "unk_020393C8.h"
#include "unk_0207A6DC.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay10);
FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(battle_anim);
FS_EXTERN_OVERLAY(overlay13);
FS_EXTERN_OVERLAY(trainer_ai);
FS_EXTERN_OVERLAY(pokedex);

static const u32 BattleServerVersion = 0x140;

void ov16_0223B384(BattleSystem *battleSys);
void ov16_0223B3E4(BattleSystem *battleSys);
void ov16_0223B430(BattleSystem *battleSys);
void ov16_0223B53C(BattleSystem *battleSys);
void ov16_0223B578(BattleSystem *battleSys);
void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int flags);
static void ov16_0223B790(ApplicationManager *appMan);
static int ov16_0223BBD0(ApplicationManager *appMan);
static void ov16_0223BCB4(ApplicationManager *appMan);
static BOOL ov16_0223D800(ApplicationManager *appMan);
static BOOL ov16_0223D944(ApplicationManager *appMan);
static BOOL ov16_0223D98C(ApplicationManager *appMan);
static BOOL ov16_0223DAD4(ApplicationManager *appMan);
static BOOL ov16_0223DB1C(ApplicationManager *appMan);
static BOOL ov16_0223DD10(ApplicationManager *appMan);
static void ov16_0223D10C(ApplicationManager *appMan, FieldBattleDTO *param1);
static BOOL ov16_0223D354(ApplicationManager *appMan);
static void ov16_0223D7B4(ApplicationManager *appMan);
static void ov16_0223C004(BattleSystem *battleSys, BgConfig *param1);
static void ov16_0223C210(BattleSystem *battleSys);
static void ov16_0223C288(BgConfig *param0);
static void ov16_0223C2BC(BattleSystem *battleSys);
static void ov16_0223C2C0(BattleSystem *battleSys, FieldBattleDTO *param1);
static void ov16_0223CE28(void);
static void ov16_0223CE68(void *param0);
static void ov16_0223CF1C(void *param0);
static void ov16_0223CF48(SysTask *param0, void *param1);
static void ov16_0223CF8C(SysTask *param0, void *param1);
static G3DPipelineBuffers *ov16_0223CD7C(void);
static void ov16_0223CE20(G3DPipelineBuffers *param0);
static void ov16_0223CD9C(void);
static void ov16_0223DD4C(BattleSystem *battleSys);
static void ov16_0223D0C4(SysTask *param0, void *param1);
static BOOL ov16_0223CD3C(u16 param0);
static void ov16_0223DD90(BattleSystem *battleSys, FieldBattleDTO *param1);
static void ov16_0223DECC(void);

static const RenderOamTemplate Unk_ov16_0226E2E4 = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const CharTransferTemplateWithModes Unk_ov16_0226E29C = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_64K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

const SpriteResourceCapacities Unk_ov16_0226E2B0 = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

BOOL Battle_Main(ApplicationManager *appMan, int *param1)
{
    FieldBattleDTO *v0 = ApplicationManager_Args(appMan);

    switch (*param1) {
    case 0:
        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE, 0xb0000);

        if ((v0->battleType & BATTLE_TYPE_LINK) && ((v0->battleStatusMask & BATTLE_STATUS_RECORDING) == 0)) {
            *param1 = 1;
        } else {
            *param1 = 3;
        }
        break;
    case 1:
        ov16_0223D10C(appMan, v0);
        WiFiHistory_FlagGeonetLinkInfo(v0->wiFiHistory);

        if (!CommMan_IsConnectedToWifi()) {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_020);
        } else {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_025);
        }
        *param1 = 2;
        break;
    case 2:
        if (ov16_0223D354(appMan) == 1) {
            ov16_0223D7B4(appMan);
            *param1 = 3;
        }
        break;
    case 3:
        if (ov16_0223D800(appMan) == 1) {
            *param1 = 4;
        } else {
            *param1 = 5;
        }
        break;
    case 4:
        if (ov16_0223D944(appMan) == 1) {
            *param1 = 5;
        }
        break;
    case 5:
        if (ov16_0223D98C(appMan) == 1) {
            *param1 = 6;
        } else {
            *param1 = 8;
        }
        break;
    case 6:
        if (ov16_0223DAD4(appMan) == 1) {
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
        Overlay_LoadByID(FS_OVERLAY_ID(battle_anim), 2);
        ov16_0223B790(appMan);
        *param1 = 9;
        break;
    case 9:
        if (ov16_0223BBD0(appMan) == 1) {
            ov16_0223BCB4(appMan);
            *param1 = 10;
        }
        break;
    case 10:
        if (ov16_0223DB1C(appMan) == 1) {
            *param1 = 11;
        } else {
            Heap_Destroy(HEAP_ID_BATTLE);
            *param1 = 13;
        }
        break;
    case 11:
        if (ov16_0223DD10(appMan) == 1) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay10));
            Heap_Destroy(HEAP_ID_BATTLE);
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

        v2 = Battle_FindEvolvingPartyMember(v0, &v1, &v3);

        if (v2) {
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_73, 0x30000);
            v4 = Party_GetPokemonBySlotIndex(v0->parties[0], v1);
            v0->unk_170 = Evolution_Begin(v0->parties[0], v4, v2, v0->options, v0->visitedContestHall, v0->pokedex, v0->bag, v0->records, v0->poketch, v3, 0x1 | 0x2, HEAP_ID_73);
            *param1 = 14;
        } else {
            *param1 = 15;
        }
    } break;
    case 14: {
        EvolutionData *v5 = (EvolutionData *)v0->unk_170;

        if (Evolution_IsDone(v5) == 1) {
            sub_0207B0E0(v5);
            Heap_Destroy(HEAP_ID_73);
            *param1 = 13;
        }
    } break;
    case 15:
        return 1;
    }

    return 0;
}

void ov16_0223B384(BattleSystem *battleSys)
{
    ov16_02268A14(battleSys->unk_198);
    ov16_022687A0(battleSys->unk_04);

    battleSys->unk_23FB_2 = 1;

    Font_Free(FONT_SUBSCREEN);
    ov16_0223F314(battleSys, 3);

    if (battleSys->overlayFlags == 0) {
        Overlay_UnloadByID(FS_OVERLAY_ID(battle_anim));
    } else {
        Overlay_UnloadByID(FS_OVERLAY_ID(trainer_ai));
    }

    Overlay_LoadByID(FS_OVERLAY_ID(overlay13), 2);
}

void ov16_0223B3E4(BattleSystem *battleSys)
{
    SetVBlankCallback(NULL, NULL);
    ov16_02268A14(battleSys->unk_198);
    Window_Remove(&battleSys->windows[0]);

    ov16_0223C288(battleSys->unk_04);
    ov16_0223C2BC(battleSys);

    SpriteSystem_FreeResourcesAndManager(battleSys->spriteSys, battleSys->spriteMan);
    SpriteSystem_Free(battleSys->spriteSys);
    VramTransfer_Free();
    Font_Free(FONT_SUBSCREEN);
}

void ov16_0223B430(BattleSystem *battleSys)
{
    NARC *v0;
    NARC *v1;

    Overlay_UnloadByID(FS_OVERLAY_ID(overlay13));

    if (battleSys->overlayFlags == 0) {
        Overlay_LoadByID(FS_OVERLAY_ID(battle_anim), 2);
    } else {
        Overlay_LoadByID(FS_OVERLAY_ID(trainer_ai), 2);
    }

    ov16_0223F314(battleSys, 0);
    MI_CpuFill16((void *)GetHardwareSubBgPaletteAddress(), 0x0, GetHardwareSubBgPaletteSize());

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
    v1 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
    battleSys->unk_198 = ov16_022687C8(v0, v1, battleSys, BattleSystem_GetTrainerGender(battleSys, ov16_0223F6E4(battleSys)), battleSys->unk_1BC);

    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_BATTLE);

    battleSys->unk_23FB_1 = 1;

    {
        ov16_02268744(battleSys->unk_04);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    ov16_02268A88(battleSys->unk_198);
    ov16_02268C04(v0, v1, battleSys->unk_198, 0, 1, NULL);
    ov16_02268D40(v1, battleSys->unk_198);
    NARC_dtor(v0);
    NARC_dtor(v1);
    TextPrinter_SetScrollArrowBaseTile(1);
    ov16_0223DD4C(battleSys);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(battleSys->spriteSys), 0, (192 + 80) << FX32_SHIFT);
}

void ov16_0223B53C(BattleSystem *battleSys)
{
    Window_Remove(&battleSys->windows[0]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(battleSys->unk_04, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(battleSys->unk_04, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(battleSys->unk_04, BG_LAYER_MAIN_3);
    ov16_0223F3EC(battleSys);
}

void ov16_0223B578(BattleSystem *battleSys)
{
    {
        battleSys->unk_23FB_0 = 1;
    }

    {
        BgTemplate v0[] = {
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x0000,
                .charBase = GX_BG_CHARBASE_0x04000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 0,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x2000,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_512x512,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x1000,
                .charBase = GX_BG_CHARBASE_0x0c000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 1,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x1000,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_512x256,
                .colorMode = GX_BG_COLORMODE_256,
                .screenBase = GX_BG_SCRBASE_0x3000,
                .charBase = GX_BG_CHARBASE_0x10000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 3,
                .areaOver = 0,
                .mosaic = FALSE,
            },
        };

        Bg_InitFromTemplate(battleSys->unk_04, BG_LAYER_MAIN_1, &v0[0], 0);
        Bg_ClearTilemap(battleSys->unk_04, BG_LAYER_MAIN_1);
        Bg_InitFromTemplate(battleSys->unk_04, BG_LAYER_MAIN_2, &v0[1], 0);
        Bg_ClearTilemap(battleSys->unk_04, BG_LAYER_MAIN_2);
        Bg_InitFromTemplate(battleSys->unk_04, BG_LAYER_MAIN_3, &v0[2], 0);
        Bg_ClearTilemap(battleSys->unk_04, BG_LAYER_MAIN_3);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        int v1;

        v1 = ov16_0223EDE0(battleSys);

        ReplaceTransparentTiles(battleSys->unk_04, 1, 1, 10, v1, 5);
        Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 3 + battleSys->background, battleSys->unk_04, 3, 0, 0, 1, HEAP_ID_BATTLE);
        PaletteData_LoadBufferFromFileStart(battleSys->paletteSys, 7, 172 + (battleSys->background * 3) + ov16_0223EC04(battleSys), 5, 0, 0, 0);
        PaletteData_LoadBufferFromFileStart(battleSys->paletteSys, 38, GetMessageBoxPaletteNARCMember(v1), 5, 0, 0x20, 10 * 0x10);
        PaletteData_LoadBufferFromFileStart(battleSys->paletteSys, 14, 7, 5, 0, 0x20, 0xb * 0x10);
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 2, battleSys->unk_04, 3, 0, 0, 1, HEAP_ID_BATTLE);
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
    SetVBlankCallback(ov16_0223CE68, battleSys);

    battleSys->unk_23FB_1 = 1;

    Window_Add(battleSys->unk_04, battleSys->windows, 1, 0x2, 0x13, 27, 4, 0xb, (18 + 12) + 1);
    Window_FillTilemap(battleSys->windows, 0xff);
    Window_DrawMessageBoxWithScrollCursor(&battleSys->windows[0], 0, 1, 10);

    ov16_0223DD4C(battleSys);
}

void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int flags)
{
    GF_ASSERT(battleSys->overlayFlags != flags);

    battleSys->overlayFlags = flags;

    if (flags == 0) {
        Overlay_UnloadByID(FS_OVERLAY_ID(trainer_ai));
        Overlay_LoadByID(FS_OVERLAY_ID(battle_anim), 2);
    } else {
        Overlay_UnloadByID(FS_OVERLAY_ID(battle_anim));
        Overlay_LoadByID(FS_OVERLAY_ID(trainer_ai), 2);
    }
}

// clang-format off
static const int Unk_ov16_0226E44C[][3] = {
    [BACKGROUND_PLAIN]            = { GX_RGB(17, 26, 30), GX_RGB(30, 17, 0),  GX_RGB(0, 16, 23) },
    [BACKGROUND_WATER]            = { GX_RGB(17, 26, 30), GX_RGB(30, 17, 0),  GX_RGB(0, 16, 23) },
    [BACKGROUND_CITY]             = { GX_RGB(17, 26, 30), GX_RGB(30, 17, 0),  GX_RGB(0, 16, 23) },
    [BACKGROUND_FOREST]           = { GX_RGB(11, 21, 5),  GX_RGB(11, 21, 5),  GX_RGB(11, 21, 5) },
    [BACKGROUND_MOUNTAIN]         = { GX_RGB(17, 26, 30), GX_RGB(30, 17, 0),  GX_RGB(0, 16, 23) },
    [BACKGROUND_SNOW]             = { GX_RGB(31, 26, 31), GX_RGB(31, 26, 22), GX_RGB(24, 22, 22) },
    [BACKGROUND_INDOORS_1]        = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_INDOORS_2]        = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_INDOORS_3]        = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_CAVE_1]           = { GX_RGB(5, 5, 7),    GX_RGB(5, 5, 7),    GX_RGB(5, 5, 7) },
    [BACKGROUND_CAVE_2]           = { GX_RGB(5, 5, 7),    GX_RGB(5, 5, 7),    GX_RGB(5, 5, 7) },
    [BACKGROUND_CAVE_3]           = { GX_RGB(5, 5, 7),    GX_RGB(5, 5, 7),    GX_RGB(5, 5, 7) },
    [BACKGROUND_AARON]            = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_BERTHA]           = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_FLINT]            = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_LUCIAN]           = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_CYNTHIA]          = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_DISTORTION_WORLD] = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_BATTLE_TOWER]     = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_BATTLE_FACTORY]   = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_BATTLE_ARCADE]    = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_BATTLE_CASTLE]    = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
    [BACKGROUND_BATTLE_HALL]      = { GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), GX_RGB(31, 31, 31) },
};
// clang-format on

static void ov16_0223B790(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);
    FieldBattleDTO *v1 = ApplicationManager_Args(appMan);
    PokemonSpriteTemplate v2;
    int idx;
    RTCDate v4;
    RTCTime v5;

    MI_CpuFill16((void *)GetHardwareMainBgPaletteAddress(), 0x0, GetHardwareMainBgPaletteSize());
    MI_CpuFill16((void *)GetHardwareSubBgPaletteAddress(), 0x0, GetHardwareSubBgPaletteSize());

    battleSys->unk_00 = ov16_0223CD7C();

    DisableHBlank();
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_BATTLE);

    if (battleSys->battleType & BATTLE_TYPE_SAFARI) {
        battleSys->unk_1A4 = FontSpecialChars_Init(0xe, 2, 0xf, HEAP_ID_BATTLE);
    } else {
        battleSys->unk_1A4 = FontSpecialChars_Init(0xe, 2, 0xf, HEAP_ID_BATTLE);
    }

    battleSys->unk_1A8 = battleSys->unk_1A4;
    battleSys->paletteSys = PaletteData_New(HEAP_ID_BATTLE);

    PaletteData_SetAutoTransparent(battleSys->paletteSys, 1);
    PaletteData_AllocBuffer(battleSys->paletteSys, 0, 0x200, HEAP_ID_BATTLE);
    PaletteData_AllocBuffer(battleSys->paletteSys, 1, 0x200, HEAP_ID_BATTLE);
    PaletteData_AllocBuffer(battleSys->paletteSys, 2, ((16 - 2) * 16) * sizeof(u16), HEAP_ID_BATTLE);
    PaletteData_AllocBuffer(battleSys->paletteSys, 3, 0x200, HEAP_ID_BATTLE);

    battleSys->unk_04 = BgConfig_New(HEAP_ID_BATTLE);
    battleSys->windows = Window_New(HEAP_ID_BATTLE, 3);

    for (idx = 0; idx < 4; idx++) {
        battleSys->pokemonSpriteDataArray[idx].tiles = Heap_Alloc(HEAP_ID_BATTLE, 32 * 10 * 10);
    }

    VramTransfer_New(64, HEAP_ID_BATTLE);

    {
        NARC *v6 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
        NARC *v7 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

        battleSys->unk_198 = ov16_022687C8(v6, v7, battleSys, BattleSystem_GetTrainerGender(battleSys, ov16_0223F6E4(battleSys)), battleSys->unk_1BC);

        NARC_dtor(v6);
        NARC_dtor(v7);
    }

    ov16_0223C004(battleSys, battleSys->unk_04);

    Window_Add(battleSys->unk_04, &battleSys->windows[0], 1, 2, 0x13, 27, 4, 11, (18 + 12) + 1);
    Window_FillTilemap(&battleSys->windows[0], 0xff);
    Window_DrawMessageBoxWithScrollCursor(&battleSys->windows[0], 0, 1, 10);

    battleSys->spriteSys = SpriteSystem_Alloc(5);

    SpriteSystem_Init(battleSys->spriteSys, &Unk_ov16_0226E2E4, &Unk_ov16_0226E29C, 16 + 16);
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    battleSys->spriteMan = SpriteManager_New(battleSys->spriteSys);

    SpriteSystem_InitSprites(battleSys->spriteSys, battleSys->spriteMan, 64 + 64);
    SpriteSystem_InitManagerWithCapacities(battleSys->spriteSys, battleSys->spriteMan, &Unk_ov16_0226E2B0);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(battleSys->spriteSys), 0, (192 + 80) << FX32_SHIFT);

    ov16_02268A88(battleSys->unk_198);

    {
        NARC *v8;
        NARC *v9;

        v8 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
        v9 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

        ov16_02268C04(v8, v9, battleSys->unk_198, 0, 1, NULL);
        ov16_02268D40(v9, battleSys->unk_198);

        NARC_dtor(v8);
        NARC_dtor(v9);
    }

    battleSys->unk_88 = PokemonSpriteManager_New(HEAP_ID_BATTLE);
    PokemonSpriteManager_SetPlttBaseAddrAndSize(battleSys->unk_88, 0, 0x20 * 6);

    ov16_0223F36C(battleSys);
    ov16_0223CE28();

    battleSys->unk_8C = BattleAnimSystem_New(HEAP_ID_BATTLE);

    ov16_0223C210(battleSys);

    EnableTouchPad();
    InitializeTouchPad(4);

    battleSys->unk_0C = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_STRINGS, HEAP_ID_BATTLE);
    battleSys->unk_10 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVES_USED_IN_BATTLE, HEAP_ID_BATTLE);
    battleSys->strFormatter = StringTemplate_Default(HEAP_ID_BATTLE);
    battleSys->msgBuffer = Strbuf_Init(2 * 160, HEAP_ID_BATTLE);

    MI_CpuCopy16(PaletteData_GetUnfadedBuffer(battleSys->paletteSys, 0), &battleSys->unk_2224[0], 0x20 * 7);
    MI_CpuCopy16(PaletteData_GetUnfadedBuffer(battleSys->paletteSys, 2), &battleSys->unk_2304[0], 0x20 * 7);

    {
        int v10;
        v10 = ov16_0223EC04(battleSys);

        PaletteData_FillBufferRange(battleSys->paletteSys, 0, 2, Unk_ov16_0226E44C[battleSys->background][v10], 0, 112);
        PaletteData_FillBufferRange(battleSys->paletteSys, 0, 2, Unk_ov16_0226E44C[battleSys->background][v10], 0xc * 16, 0xc * 16 + 4 * 16);
        PaletteData_FillBufferRange(battleSys->paletteSys, 2, 2, Unk_ov16_0226E44C[battleSys->background][v10], 0, ((16 - 2) * 16) - 1);
    }

    PaletteData_FillBufferRange(battleSys->paletteSys, 0, 0, 0x0, 0xa * 16, 0xa * 16 + 2 * 16);
    PaletteData_FillBufferRange(battleSys->paletteSys, 1, 0, 0x0, 0, 255);
    PaletteData_FillBufferRange(battleSys->paletteSys, 3, 0, 0xffff, 0, 255);

    battleSys->unk_1AC = sub_0201567C(battleSys->paletteSys, 0, 0xb, HEAP_ID_BATTLE);
    sub_02015738(battleSys->unk_1AC, 1);

    battleSys->unk_1C = SysTask_Start(ov16_0223CF48, battleSys, 60000);
    battleSys->unk_20 = SysTask_Start(ov16_0223CF8C, battleSys, 50000);
    battleSys->unk_24 = SysTask_ExecuteOnVBlank(ov16_0223D0C4, battleSys, 1200);
    battleSys->unk_2434 = -51;

    ov16_0223DD4C(battleSys);
    BagCursor_ResetBattle(BattleSystem_BagCursor(battleSys));

    battleSys->pokemonAnimationSys = sub_02015F84(HEAP_ID_BATTLE, 4, 0);
    battleSys->cellTransferState = CellTransfer_New(4, HEAP_ID_BATTLE);

    if (battleSys->battleStatusMask & 0x10) {
        for (idx = 0; idx < 4; idx++) {
            battleSys->unk_247C[idx] = v1->unk_194[idx];
        }
    }
}

static int ov16_0223BBD0(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);
    int v1;

    if ((battleSys->battleType & BATTLE_TYPE_LINK) && ((battleSys->battleStatusMask & 0x10) == 0)) {
        if (battleSys->unk_23F8) {
            BattleController_Main(battleSys, battleSys->battleCtx);
        }

        for (v1 = 0; v1 < battleSys->maxBattlers; v1++) {
            ov16_0225C0DC(battleSys, battleSys->battlers[v1]);
        }
    } else {
        if (battleSys->unk_23F8) {
            battleSys->unk_23FA = BattleController_Main(battleSys, battleSys->battleCtx);
            ov16_02264988(battleSys, 1);
        }

        for (v1 = 0; v1 < battleSys->maxBattlers; v1++) {
            ov16_0225C0DC(battleSys, battleSys->battlers[v1]);
            ov16_02264988(battleSys, 0);
        }

        if (battleSys->unk_23FA == 0) {
            if (battleSys->unk_23F8) {
                battleSys->unk_23FA = BattleController_Main(battleSys, battleSys->battleCtx);
                ov16_02264988(battleSys, 1);
            }

            for (v1 = 0; v1 < battleSys->maxBattlers; v1++) {
                ov16_0225C0DC(battleSys, battleSys->battlers[v1]);
                ov16_02264988(battleSys, 0);
            }
        }
    }

    return battleSys->unk_23FA;
}

static void ov16_0223BCB4(ApplicationManager *appMan)
{
    BattleSystem *battleSystem = ApplicationManager_Data(appMan);
    FieldBattleDTO *v1 = ApplicationManager_Args(appMan);
    int battlerId;

    v1->seed = battleSystem->unk_2448;
    v1->battleStatusMask = battleSystem->battleStatusMask;

    if ((battleSystem->battleStatusMask & 0x10) == 0) {
        sub_0202F8AC(v1);
    }

    if (battleSystem->overlayFlags != 0) {
        BattleSystem_LoadFightOverlay(battleSystem, 0);
    }

    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
    BattleSystem_SetBurmyForm(battleSystem);

    if (battleSystem->resultMask != 0x4) {
        ov16_0223EF68(battleSystem, Party_GetPokemonBySlotIndex(battleSystem->parties[1], 0));
    }

    for (battlerId = 0; battlerId < MAX_BATTLERS; battlerId++) {
        Party_Copy(battleSystem->parties[battlerId], v1->parties[battlerId]);
        Heap_Free(battleSystem->parties[battlerId]);
        TrainerInfo_Copy(battleSystem->trainerInfo[battlerId], v1->trainerInfo[battlerId]);
        Heap_Free(battleSystem->trainerInfo[battlerId]);
    }

    sub_02015760(battleSystem->unk_1AC);
    Bag_Copy(battleSystem->bag, v1->bag);
    Heap_Free(battleSystem->bag);
    Pokedex_Copy(battleSystem->pokedex, v1->pokedex);
    Heap_Free(battleSystem->pokedex);
    v1->pcBoxes = battleSystem->pcBoxes;
    v1->bagCursor = battleSystem->bagCursor;
    v1->subscreenCursorOn = battleSystem->unk_1BC;
    v1->poketch = battleSystem->poketch;
    v1->unk_10C = battleSystem->unk_9C;
    v1->countSafariBalls = battleSystem->safariBalls;
    v1->resultMask = battleSystem->resultMask & (0xc0 ^ 0xff);
    v1->caughtBattlerIdx = battleSystem->unk_2438;
    v1->leveledUpMonsMask = BattleContext_Get(battleSystem, battleSystem->battleCtx, 4, NULL);
    v1->battleRecords.totalTurns += BattleContext_Get(battleSystem, battleSystem->battleCtx, 3, NULL);
    v1->battleRecords.totalFainted += (BattleContext_Get(battleSystem, battleSystem->battleCtx, 6, 0) + BattleContext_Get(battleSystem, battleSystem->battleCtx, 6, 2));
    v1->battleRecords.totalDamage += (BattleContext_Get(battleSystem, battleSystem->battleCtx, 7, 0) + BattleContext_Get(battleSystem, battleSystem->battleCtx, 7, 2));
    v1->totalTurnsElapsed = BattleContext_Get(battleSystem, battleSystem->battleCtx, 3, NULL);
    v1->unk_19C = battleSystem->recordingStopped;

    for (battlerId = 0; battlerId < 4; battlerId++) {
        Heap_Free(battleSystem->pokemonSpriteDataArray[battlerId].tiles);
    }

    Heap_Free(battleSystem->msgBuffer);
    PaletteData_FreeBuffer(battleSystem->paletteSys, 0);
    PaletteData_FreeBuffer(battleSystem->paletteSys, 1);
    PaletteData_FreeBuffer(battleSystem->paletteSys, 2);
    PaletteData_FreeBuffer(battleSystem->paletteSys, 3);
    PaletteData_Free(battleSystem->paletteSys);
    MessageLoader_Free(battleSystem->unk_0C);
    MessageLoader_Free(battleSystem->unk_10);
    StringTemplate_Free(battleSystem->strFormatter);
    sub_02015FB8(battleSystem->pokemonAnimationSys);
    ParticleSystem_FreeAll();

    BattleAnimSystem_Delete(battleSystem->unk_8C);
    BattleContext_Free(battleSystem->battleCtx);

    for (battlerId = 0; battlerId < battleSystem->maxBattlers; battlerId++) {
        ov16_0225C104(battleSystem, battleSystem->battlers[battlerId], battleSystem->unk_23F9);
    }

    PokemonSpriteManager_Free(battleSystem->unk_88);

    if (battleSystem->unk_23F9 != 2) {
        ov16_0223B3E4(battleSystem);
    }

    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    Windows_Delete(battleSystem->windows, 3);
    Heap_Free(battleSystem->unk_04);
    Heap_Free(battleSystem->unk_21C);
    Heap_Free(battleSystem->unk_220);
    FontSpecialChars_Free(battleSystem->unk_1A4);
    Font_Free(FONT_SUBSCREEN);
    SysTask_Done(battleSystem->unk_1C);
    SysTask_Done(battleSystem->unk_20);
    DisableTouchPad();

    ov16_0223CE20(battleSystem->unk_00);

    LCRNG_SetSeed(battleSystem->unk_2430);

    if (ov16_0223F450(battleSystem)) {
        Sound_StopEffect(1796, 0);
    }

    CellTransfer_Free(battleSystem->cellTransferState);

    if (BattleSystem_RecordingStopped(battleSystem)) {
        Sound_SetMasterVolume(SOUND_VOLUME_MAX);
    }

    if (battleSystem->playbackStopButton) {
        ov16_0226E174(battleSystem->playbackStopButton);
    }

    Heap_Free(battleSystem);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(battle_anim));

    if (!CommMan_IsConnectedToWifi()) {
        Overlay_UnloadByID(FS_OVERLAY_ID(pokedex));
    }
}

static void ov16_0223C004(BattleSystem *battleSys, BgConfig *param1)
{
    GXLayers_DisableEngineALayers();
    ResetScreenMasterBrightness(DS_SCREEN_MAIN);
    ResetScreenMasterBrightness(DS_SCREEN_SUB);

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
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v1);
    }

    {
        battleSys->unk_23FB_0 = 1;
    }

    {
        BgTemplate v2[] = {
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x0000,
                .charBase = GX_BG_CHARBASE_0x04000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 0,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x2000,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_512x512,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x1000,
                .charBase = GX_BG_CHARBASE_0x0c000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 1,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x1000,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_512x256,
                .colorMode = GX_BG_COLORMODE_256,
                .screenBase = GX_BG_SCRBASE_0x3000,
                .charBase = GX_BG_CHARBASE_0x10000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 3,
                .areaOver = 0,
                .mosaic = FALSE,
            },
        };

        Bg_InitFromTemplate(param1, BG_LAYER_MAIN_1, &v2[0], 0);
        Bg_ClearTilemap(param1, BG_LAYER_MAIN_1);
        Bg_InitFromTemplate(param1, BG_LAYER_MAIN_2, &v2[1], 0);
        Bg_ClearTilemap(param1, BG_LAYER_MAIN_2);
        Bg_InitFromTemplate(param1, BG_LAYER_MAIN_3, &v2[2], 0);
        Bg_ClearTilemap(param1, BG_LAYER_MAIN_3);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        ov16_02268744(param1);
    }

    {
        int v3;

        v3 = ov16_0223EDE0(battleSys);

        ReplaceTransparentTiles(param1, 1, 1, 10, v3, 5);
        Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 3 + battleSys->background, param1, 3, 0, 0, 1, HEAP_ID_BATTLE);
        PaletteData_LoadBufferFromFileStart(battleSys->paletteSys, NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 172 + (battleSys->background * 3) + ov16_0223EC04(battleSys), 5, 0, 0, 0);
        PaletteData_LoadBufferFromFileStart(battleSys->paletteSys, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(v3), 5, 0, 0x20, 10 * 0x10);
        PaletteData_LoadBufferFromFileStart(battleSys->paletteSys, NARC_INDEX_GRAPHIC__PL_FONT, 7, 5, 0, 0x20, 0xb * 0x10);
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 2, param1, 3, 0, 0, 1, HEAP_ID_BATTLE);
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
    SetVBlankCallback(ov16_0223CE68, battleSys);
}

static void ov16_0223C210(BattleSystem *battleSys)
{
    int v0;
    int v1;
    int v2;
    BattleContext *v3;
    Pokemon *v4;

    v0 = BattleSystem_Terrain(battleSys);

    ov16_022686CC(&battleSys->unk_17C[0], battleSys, 0, v0);
    ov16_022686CC(&battleSys->unk_17C[1], battleSys, 1, v0);

    v3 = BattleSystem_Context(battleSys);

    for (v1 = 0; v1 < battleSys->maxBattlers; v1++) {
        v2 = BattleContext_Get(battleSys, v3, 2, v1);
        v4 = BattleSystem_PartyPokemon(battleSys, v1, v2);
        ov16_0225C038(battleSys, battleSys->battlers[v1], Pokemon_GetValue(v4, MON_DATA_POKEBALL, NULL), v2);
    }

    ov16_0223DECC();
}

static void ov16_0223C288(BgConfig *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);

    ov16_022687A0(param0);
}

static void ov16_0223C2BC(BattleSystem *battleSys)
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

static void ov16_0223C2C0(BattleSystem *battleSys, FieldBattleDTO *dto)
{
    int i, v1;
    UnkStruct_ov16_0223C2C0 v2;
    Pokemon *v3;
    Pokemon *v4;

    battleSys->battleType = dto->battleType;

    for (i = 0; i < 4; i++) {
        battleSys->trainerInfo[i] = TrainerInfo_New(HEAP_ID_BATTLE);
        TrainerInfo_Copy(dto->trainerInfo[i], battleSys->trainerInfo[i]);
        battleSys->unk_78[i] = dto->chatotCries[i];
    }

    battleSys->unk_2442 = dto->networkID;

    for (i = 0; i < 4; i++) {
        battleSys->unk_2464[i] = dto->unk_178[i];
    }

    battleSys->unk_2430 = LCRNG_GetSeed();
    battleSys->unk_2444 = dto->seed;
    battleSys->unk_2448 = dto->seed;
    battleSys->battleStatusMask = dto->battleStatusMask;
    battleSys->bag = Bag_New(HEAP_ID_BATTLE);

    Bag_Copy(dto->bag, battleSys->bag);
    battleSys->pokedex = Pokedex_New(HEAP_ID_BATTLE);
    Pokedex_Copy(dto->pokedex, battleSys->pokedex);

    battleSys->pcBoxes = dto->pcBoxes;
    battleSys->options = dto->options;
    battleSys->palPad = dto->palPad;
    battleSys->bagCursor = dto->bagCursor;
    battleSys->unk_1BC = dto->subscreenCursorOn;
    battleSys->poketch = dto->poketch;
    battleSys->mapEvolutionMethod = dto->mapEvolutionMethod;
    battleSys->unk_9C = dto->unk_10C;
    battleSys->safariBalls = dto->countSafariBalls;
    battleSys->terrain = dto->terrain;
    battleSys->background = dto->background;
    battleSys->mapHeader = dto->mapLabelTextID;
    battleSys->time = dto->timeOfDay;
    battleSys->unk_2418 = dto->rulesetMask;
    battleSys->unk_2424 = dto->visitedContestHall;
    battleSys->unk_242C = dto->metBebe;
    battleSys->fieldWeather = dto->fieldWeather;
    battleSys->records = dto->records;

    GF_ASSERT(dto->records != NULL);

    for (i = 0; i < 4; i++) {
        battleSys->trainerIDs[i] = dto->trainerIDs[i];
        battleSys->trainers[i] = dto->trainer[i];
    }

    battleSys->battleCtx = BattleContext_New(battleSys);

    for (i = 0; i < 4; i++) {
        battleSys->parties[i] = Party_New(HEAP_ID_BATTLE);
    }

    {
        int v5;

        for (i = 0; i < 4; i++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(dto->parties[i]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(dto->parties[i], v1);
                v5 = Pokemon_GetGender(v3);
                Pokemon_SetValue(v3, MON_DATA_GENDER, &v5);
            }
        }
    }

    if (battleSys->battleType & BATTLE_TYPE_LINK) {
        sub_0207A6DC(battleSys);
        {
            u8 v6 = ov16_0223F6E4(battleSys);
            int v7;

            ov16_0223DD90(battleSys, dto);

            if (battleSys->battleType & BATTLE_TYPE_FRONTIER) {
                for (i = 0; i < 4; i++) {
                    v2.unk_00 = i;
                    v2.unk_01 = Unk_ov16_0226E560[i];
                    battleSys->battlers[i] = ov16_0225BFFC(battleSys, &v2);
                }

                battleSys->maxBattlers = i;

                for (i = 0; i < 4; i++) {
                    ov16_02263730(battleSys, battleSys->battlers[i]);
                    Party_Copy(dto->parties[i], battleSys->parties[i]);
                }

                for (i = 0; i < battleSys->maxBattlers; i++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(battleSys->parties[i]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(battleSys->parties[i], v1);

                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                            break;
                        }
                    }

                    BattleContext_Set(battleSys, battleSys->battleCtx, 2, i, v1);
                }

                BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
            } else if (battleSys->battleType & BATTLE_TYPE_2vs2) {
                for (i = 0; i < 4; i++) {
                    v2.unk_00 = i;
                    v2.unk_01 = Unk_ov16_0226E28C[ov16_0223F6F0(battleSys, v6)][ov16_0223F6F0(battleSys, i)];
                    battleSys->battlers[i] = ov16_0225BFFC(battleSys, &v2);
                }

                battleSys->maxBattlers = i;

                for (i = 0; i < 4; i++) {
                    ov16_02263730(battleSys, battleSys->battlers[i]);
                    Party_Copy(dto->parties[i], battleSys->parties[i]);
                }

                for (i = 0; i < battleSys->maxBattlers; i++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(battleSys->parties[i]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(battleSys->parties[i], v1);

                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                            break;
                        }
                    }

                    BattleContext_Set(battleSys, battleSys->battleCtx, 2, i, v1);
                }

                BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
            } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
                for (i = 0; i < 4; i++) {
                    v2.unk_00 = i;
                    v2.unk_01 = Unk_ov16_0226E264[v6][i];
                    battleSys->battlers[i] = ov16_0225BFFC(battleSys, &v2);
                    ov16_02263730(battleSys, battleSys->battlers[i]);
                }

                battleSys->maxBattlers = i;

                for (i = 0; i < 4; i++) {
                    Party_Copy(dto->parties[i], battleSys->parties[i]);
                }

                for (i = 0; i < battleSys->maxBattlers; i++) {
                    for (v1 = 0; v1 < Party_GetCurrentCount(battleSys->parties[i & 1]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(battleSys->parties[i & 1], v1);

                        if (i > 1) {
                            if ((BattleContext_Get(battleSys, battleSys->battleCtx, 2, i & 1) != v1) && (Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                                break;
                            }
                        } else {
                            if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                                break;
                            }
                        }
                    }

                    BattleContext_Set(battleSys, battleSys->battleCtx, 2, i, v1);
                }
            } else {
                for (i = 0; i < 2; i++) {
                    v2.unk_00 = i;
                    v2.unk_01 = Unk_ov16_0226E260[v6][i];
                    battleSys->battlers[i] = ov16_0225BFFC(battleSys, &v2);
                    ov16_02263730(battleSys, battleSys->battlers[i]);
                }

                battleSys->maxBattlers = i;

                for (i = 0; i < 4; i++) {
                    Party_Copy(dto->parties[i], battleSys->parties[i]);

                    for (v1 = 0; v1 < Party_GetCurrentCount(battleSys->parties[i]); v1++) {
                        v3 = Party_GetPokemonBySlotIndex(battleSys->parties[i], v1);

                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                            break;
                        }
                    }

                    BattleContext_Set(battleSys, battleSys->battleCtx, 2, i, v1);
                }
            }
        }
        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
    } else if (battleSys->battleType & BATTLE_TYPE_TAG) {
        {
            int v8;

            for (i = 0; i < 4; i++) {
                v2.unk_00 = i;
                v2.unk_01 = Unk_ov16_0226E560[i];
                battleSys->battlers[i] = ov16_0225BFFC(battleSys, &v2);
                ov16_02263730(battleSys, battleSys->battlers[i]);
            }

            battleSys->maxBattlers = i;

            for (i = 0; i < 4; i++) {
                Party_Copy(dto->parties[i], battleSys->parties[i]);
            }

            for (i = 0; i < battleSys->maxBattlers; i++) {
                for (v1 = 0; v1 < BattleSystem_PartyCount(battleSys, i); v1++) {
                    v3 = BattleSystem_PartyPokemon(battleSys, i, v1);

                    if (i == 2) {
                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL)) && (v8 != v1)) {
                            break;
                        }
                    } else {
                        if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                            break;
                        }
                    }
                }

                BattleContext_Set(battleSys, battleSys->battleCtx, 2, i, v1);

                if (i == 0) {
                    v8 = v1;
                }
            }
        }
        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        battleSys->unk_23F8 = 1;
    } else if (battleSys->battleType & BATTLE_TYPE_2vs2) {
        for (i = 0; i < 4; i++) {
            v2.unk_00 = i;
            v2.unk_01 = Unk_ov16_0226E560[i];
            battleSys->battlers[i] = ov16_0225BFFC(battleSys, &v2);
            ov16_02263730(battleSys, battleSys->battlers[i]);
        }

        battleSys->maxBattlers = i;

        for (i = 0; i < 4; i++) {
            Party_Copy(dto->parties[i], battleSys->parties[i]);
        }

        for (i = 0; i < battleSys->maxBattlers; i++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(battleSys->parties[i]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(battleSys->parties[i], v1);

                if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                    break;
                }
            }

            BattleContext_Set(battleSys, battleSys->battleCtx, 2, i, v1);
        }

        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        battleSys->unk_23F8 = 1;
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        for (i = 0; i < 4; i++) {
            v2.unk_00 = i;
            v2.unk_01 = Unk_ov16_0226E560[i];
            battleSys->battlers[i] = ov16_0225BFFC(battleSys, &v2);
            ov16_02263730(battleSys, battleSys->battlers[i]);
        }

        battleSys->maxBattlers = i;

        for (i = 0; i < 4; i++) {
            Party_Copy(dto->parties[i], battleSys->parties[i]);
        }

        for (i = 0; i < battleSys->maxBattlers; i++) {
            for (v1 = 0; v1 < Party_GetCurrentCount(battleSys->parties[i & 1]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(battleSys->parties[i & 1], v1);

                if (i > 1) {
                    if ((BattleContext_Get(battleSys, battleSys->battleCtx, 2, i & 1) != v1) && (Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                        break;
                    }
                } else {
                    if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                        break;
                    }
                }
            }

            BattleContext_Set(battleSys, battleSys->battleCtx, 2, i, v1);
        }

        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        battleSys->unk_23F8 = 1;
    } else {
        for (i = 0; i < 2; i++) {
            v2.unk_00 = i;
            v2.unk_01 = Unk_ov16_0226E25C[i];
            battleSys->battlers[i] = ov16_0225BFFC(battleSys, &v2);
            ov16_02263730(battleSys, battleSys->battlers[i]);
        }

        battleSys->maxBattlers = i;

        for (i = 0; i < 4; i++) {
            Party_Copy(dto->parties[i], battleSys->parties[i]);

            for (v1 = 0; v1 < Party_GetCurrentCount(battleSys->parties[i]); v1++) {
                v3 = Party_GetPokemonBySlotIndex(battleSys->parties[i], v1);

                if ((Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL)) && (Pokemon_GetValue(v3, MON_DATA_IS_EGG, NULL) == 0) && (Pokemon_GetValue(v3, MON_DATA_HP, NULL))) {
                    break;
                }
            }

            BattleContext_Set(battleSys, battleSys->battleCtx, 2, i, v1);
        }

        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        battleSys->unk_23F8 = 1;
    }

    if (battleSys->battleType & BATTLE_TYPE_PAL_PARK) {
        v3 = Party_GetPokemonBySlotIndex(battleSys->parties[1], 0);
        Pokemon_GetValue(v3, MON_DATA_OT_NAME, (u8 *)&battleSys->trainers[1].name);
    }

    if (battleSys->battleType & BATTLE_TYPE_TRAINER) {
        if ((ov16_0223CD3C(battleSys->trainers[1].header.trainerType) == 1) || (ov16_0223CD3C(battleSys->trainers[3].header.trainerType) == 1)) {
            for (i = 0; i < Party_GetCurrentCount(battleSys->parties[0]); i++) {
                v3 = Party_GetPokemonBySlotIndex(battleSys->parties[0], i);
                Pokemon_UpdateFriendship(v3, 3, battleSys->mapHeader);
            }

            for (i = 0; i < Party_GetCurrentCount(battleSys->parties[2]); i++) {
                v3 = Party_GetPokemonBySlotIndex(battleSys->parties[2], i);
                Pokemon_UpdateFriendship(v3, 3, battleSys->mapHeader);
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

static G3DPipelineBuffers *ov16_0223CD7C(void)
{
    return G3DPipeline_Init(
        HEAP_ID_BATTLE,
        TEXTURE_VRAM_SIZE_256K,
        PALETTE_VRAM_SIZE_32K,
        ov16_0223CD9C);
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

static void ov16_0223CE20(G3DPipelineBuffers *param0)
{
    G3DPipelineBuffers_Free(param0);
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

    ParticleSystem_ZeroAll();
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

    PokemonSpriteManager_UpdateCharAndPltt(v0->unk_88);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(v0->paletteSys);
    Bg_RunScheduledUpdates(v0->unk_04);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov16_0223CF1C(void *param0)
{
    UnkStruct_0207A778 *v0 = param0;

    PaletteData_CommitFadedBuffers(v0->unk_0C);
    VramTransfer_Process();
    Bg_RunScheduledUpdates(v0->unk_04);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov16_0223CF48(SysTask *param0, void *param1)
{
    BattleSystem *v0 = param1;

    sub_02038A1C(5, v0->unk_04);

    if ((v0->unk_23F9 == 0) || (v0->unk_23F9 == 3)) {
        if (v0->unk_23F9 == 0) {
            ParticleHelper_DrawParticleSystems();
        }

        PokemonSpriteManager_DrawSprites(v0->unk_88);
        SpriteSystem_DrawSprites(v0->spriteMan);
        SpriteSystem_UpdateTransfer();
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

    if (BattleSystem_BattleType(v0) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    if (v6 & 2) {
        if (v6 & 1) {
            Sound_StopEffect(1796, 0);
            BattleSystem_SetRedHPSoundFlag(v0, 2);
        }

        return;
    }

    for (v3 = 0; v3 < v4; v3++) {
        v1 = BattleSystem_BattlerData(v0, v3);

        if (((Battler_BootState(v1) == 0x0) && ((BattleSystem_BattleStatus(v0) & 0x10) == 0)) || ((Battler_Side(v0, v3) == 0) && (BattleSystem_BattleStatus(v0) & 0x10))) {
            v2 = ov16_02263B08(v1);

            if (v2 != NULL) {
                if (HealthBar_Color(v2->curHP, v2->maxHP, 8 * 6) == 1) {
                    v5 |= FlagIndex(v3);
                }
            }
        }
    }

    if ((v5) && (ov16_0223F450(v0) == 0)) {
        Sound_PlayEffect(SEQ_SE_DP_HINSI);
        BattleSystem_SetRedHPSoundFlag(v0, 1);
        ov16_0223F48C(v0, 4);
    } else if ((v5 == 0) && (ov16_0223F450(v0))) {
        Sound_StopEffect(1796, 0);
        BattleSystem_SetRedHPSoundFlag(v0, 0);
    }

    if (ov16_0223F450(v0)) {
        v7 = ov16_0223F47C(v0);

        if (Sound_IsEffectPlaying(1796) == 0) {
            if (--v7 == 0) {
                Sound_PlayEffect(SEQ_SE_DP_HINSI);
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
    Bg_SetOffset(v0->unk_04, BG_LAYER_MAIN_1, 3, v0->unk_2434);

    if (v0->unk_2434 == 0) {
        SysTask_Done(param0);
    }
}

static void NitroStaticInit(void)
{
    if (!CommMan_IsConnectedToWifi()) {
        Overlay_LoadByID(FS_OVERLAY_ID(pokedex), 2);
    }
}

static void ov16_0223D10C(ApplicationManager *appMan, FieldBattleDTO *param1)
{
    UnkStruct_0207A778 *v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_0207A778), HEAP_ID_BATTLE);

    v0->unk_00 = param1;
    v0->unk_1020 = 0;
    v0->unk_1021 = 0;
    v0->unk_1022 = 0;
    v0->unk_0C = PaletteData_New(HEAP_ID_BATTLE);

    PaletteData_SetAutoTransparent(v0->unk_0C, 1);
    PaletteData_AllocBuffer(v0->unk_0C, 0, 0x200, HEAP_ID_BATTLE);
    PaletteData_FillBufferRange(v0->unk_0C, 0, 2, 0x0, 0, 256);

    v0->unk_04 = BgConfig_New(HEAP_ID_BATTLE);
    v0->unk_08 = Window_New(HEAP_ID_BATTLE, 1);

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
        GraphicsModes v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        SetAllGraphicsModes(&v2);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(v0->unk_04, BG_LAYER_MAIN_1, &v3, 0);
        Bg_ClearTilemap(v0->unk_04, BG_LAYER_MAIN_1);
    }

    {
        int v4;

        v4 = Options_Frame(param1->options);

        ReplaceTransparentTiles(v0->unk_04, 1, 1, 10, v4, 5);
        PaletteData_LoadBufferFromFileStart(v0->unk_0C, 14, 7, 5, 0, 0x20, 0xb * 0x10);
        PaletteData_LoadBufferFromFileStart(v0->unk_0C, 38, GetMessageBoxPaletteNARCMember(v4), 5, 0, 0x20, 10 * 0x10);
        PaletteData_FillBufferRange(v0->unk_0C, 0, 0, 0x0, 0, 256);
    }

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    Window_Add(v0->unk_04, v0->unk_08, 1, 2, 0x13, 27, 4, 11, (18 + 12) + 1);
    Window_FillTilemap(v0->unk_08, 0xff);
    Window_DrawMessageBoxWithScrollCursor(v0->unk_08, 0, 1, 10);

    {
        MessageLoader *v5;
        Strbuf *v6;

        v5 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_STRINGS, HEAP_ID_BATTLE);
        v6 = Strbuf_Init(0x100, HEAP_ID_BATTLE);

        MessageLoader_GetStrbuf(v5, 923, v6);
        Text_AddPrinterWithParams(v0->unk_08, FONT_MESSAGE, v6, 0, 0, NULL, NULL);

        Strbuf_Free(v6);
        MessageLoader_Free(v5);
    }

    SetVBlankCallback(ov16_0223CF1C, v0);
    PaletteData_StartFade(v0->unk_0C, 0x1 | 0x4, 0xffff, 0, 16, 0, 0x0);

    v0->unk_1024 = Window_AddWaitDial(v0->unk_08, 1);

    ov16_0223DECC();
}

static BOOL ov16_0223D354(ApplicationManager *appMan)
{
    UnkStruct_0207A778 *v0 = ApplicationManager_Data(appMan);
    BOOL v1;

    sub_02038A1C(5, v0->unk_04);

    v1 = 0;

    switch (v0->unk_1021) {
    case 0:
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        sub_02036378(1);
        v0->unk_1021++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v0->unk_0C) == 0) {
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
                    Heap_Free(v0->unk_10[v2]);
                }
            }

            v0->unk_1020 = 0;
            v0->unk_1022 = 0;
            v0->unk_1021++;

            if (v0->unk_1021 == 33) {
                PaletteData_StartFade(v0->unk_0C, 0x1 | 0x4, 0xffff, 0, 0, 16, 0x0);
            }
        } else {
            v0->unk_1022++;

            if (v0->unk_1022 > (60 * 30)) {
                Link_SetErrorState(1);
            }
        }
        break;
    case 33:
        if (PaletteData_GetSelectedBuffersMask(v0->unk_0C) == 0) {
            v1 = 1;
            DestroyWaitDial(v0->unk_1024);
            sub_02036378(0);
        }
        break;
    }

    return v1;
}

static void ov16_0223D7B4(ApplicationManager *appMan)
{
    UnkStruct_0207A778 *v0 = ApplicationManager_Data(appMan);

    SetVBlankCallback(NULL, NULL);
    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    PaletteData_FreeBuffer(v0->unk_0C, 0);
    PaletteData_Free(v0->unk_0C);
    Windows_Delete(v0->unk_08, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(v0->unk_04, BG_LAYER_MAIN_1);
    Heap_Free(v0->unk_04);
    Heap_Free(v0);
}

static BOOL ov16_0223D800(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_NewData(appMan, sizeof(BattleSystem), HEAP_ID_BATTLE);
    FieldBattleDTO *v1 = ApplicationManager_Args(appMan);
    u8 v2;

    MI_CpuClearFast(battleSys, sizeof(BattleSystem));
    ov16_0223C2C0(battleSys, v1);

    if (((battleSys->battleType & BATTLE_TYPE_LINK) == FALSE) || (battleSys->battleStatusMask & 0x10) || (battleSys->battleType & BATTLE_TYPE_FRONTIER)) {
        NetworkIcon_Destroy();
        return 0;
    }

    Overlay_LoadByID(FS_OVERLAY_ID(overlay10), 2);

    if ((battleSys->battleType & BATTLE_TYPE_2vs2) == FALSE) {
        return 0;
    }

    battleSys->unk_1C0 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov10_0221F800));
    MI_CpuClearFast(battleSys->unk_1C0, sizeof(UnkStruct_ov10_0221F800));
    v2 = CommSys_CurNetId();

    switch (sub_020362F4(v2)) {
    case 0:
    case 3:
        battleSys->unk_1C0->unk_04[0] = battleSys->parties[v2];
        battleSys->unk_1C0->unk_04[2] = battleSys->parties[BattleSystem_Partner(battleSys, v2)];
        break;
    case 1:
    case 2:
        battleSys->unk_1C0->unk_04[0] = battleSys->parties[BattleSystem_Partner(battleSys, v2)];
        battleSys->unk_1C0->unk_04[2] = battleSys->parties[v2];
        break;
    }

    battleSys->unk_1C0->heapID = HEAP_ID_BATTLE;
    battleSys->unk_1C0->unk_28 = 0;

    switch (sub_020362F4(v2)) {
    case 0:
    case 3:
        battleSys->unk_1C0->unk_29 = 0;
        break;
    case 1:
    case 2:
        battleSys->unk_1C0->unk_29 = 1;
        break;
    }

    ov10_0221F800(battleSys->unk_1C0);

    return 1;
}

static BOOL ov16_0223D944(ApplicationManager *appMan)
{
    int v0;
    BattleSystem *v1 = ApplicationManager_Data(appMan);

    if (v1->unk_1C0->unk_2B) {
        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_1C0->unk_14[v0] != NULL) {
                Heap_Free(v1->unk_1C0->unk_14[v0]);
            }
        }

        Heap_Free(v1->unk_1C0);
        return 1;
    }

    return 0;
}

static BOOL ov16_0223D98C(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);
    FieldBattleDTO *v1 = ApplicationManager_Args(appMan);
    u8 v2;
    int v3;

    if (((battleSys->battleType & BATTLE_TYPE_LINK) == FALSE) || (battleSys->battleStatusMask & 0x10) || (battleSys->battleType & BATTLE_TYPE_FRONTIER)) {
        NetworkIcon_Destroy();
        return 0;
    }

    v2 = CommSys_CurNetId();
    battleSys->unk_1C0 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov10_0221F800));

    MI_CpuClearFast(battleSys->unk_1C0, sizeof(UnkStruct_ov10_0221F800));

    if (battleSys->battleType & BATTLE_TYPE_2vs2) {
        for (v3 = 0; v3 < 4; v3++) {
            battleSys->unk_1C0->unk_04[sub_020362F4(v3)] = battleSys->parties[v3];
            battleSys->unk_1C0->unk_14[sub_020362F4(v3)] = TrainerInfo_NameNewStrbuf(battleSys->trainerInfo[v3], 5);
        }

        battleSys->unk_1C0->heapID = HEAP_ID_BATTLE;
        battleSys->unk_1C0->unk_28 = 1;
        battleSys->unk_1C0->unk_29 = 1;
    } else {
        battleSys->unk_1C0->unk_04[sub_020362F4(v2)] = battleSys->parties[v2];
        battleSys->unk_1C0->unk_04[sub_020362F4(v2 ^ 1)] = battleSys->parties[v2 ^ 1];
        battleSys->unk_1C0->unk_14[sub_020362F4(v2)] = TrainerInfo_NameNewStrbuf(battleSys->trainerInfo[v2], 5);
        battleSys->unk_1C0->unk_14[sub_020362F4(v2 ^ 1)] = TrainerInfo_NameNewStrbuf(battleSys->trainerInfo[v2 ^ 1], 5);
        battleSys->unk_1C0->heapID = HEAP_ID_BATTLE;
        battleSys->unk_1C0->unk_28 = 1;
        battleSys->unk_1C0->unk_29 = 0;
    }

    ov10_0221F800(battleSys->unk_1C0);

    return 1;
}

static BOOL ov16_0223DAD4(ApplicationManager *appMan)
{
    int v0;
    BattleSystem *v1 = ApplicationManager_Data(appMan);

    if (v1->unk_1C0->unk_2B) {
        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_1C0->unk_14[v0] != NULL) {
                Heap_Free(v1->unk_1C0->unk_14[v0]);
            }
        }

        Heap_Free(v1->unk_1C0);
        return 1;
    }

    return 0;
}

static BOOL ov16_0223DB1C(ApplicationManager *appMan)
{
    FieldBattleDTO *v0 = ApplicationManager_Args(appMan);
    UnkStruct_ov10_0221F800 *v1;
    u8 v2;
    int v3;

    if (((v0->battleType & BATTLE_TYPE_LINK) == FALSE)
        || (v0->battleStatusMask & BATTLE_STATUS_RECORDING)
        || (v0->battleType & BATTLE_TYPE_FRONTIER)) {
        return 0;
    }

    v2 = CommSys_CurNetId();
    Overlay_LoadByID(FS_OVERLAY_ID(overlay10), 2);
    v1 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov10_0221F800));

    v0->unk_170 = v1;
    MI_CpuClearFast(v1, sizeof(UnkStruct_ov10_0221F800));
    v1->unk_00 = v0;

    switch (v0->resultMask) {
    case BATTLE_RESULT_WIN:
        if (!CommMan_IsConnectedToWifi()) {
            GameRecords_IncrementRecordValue(v0->records, RECORD_LOCAL_LINK_BATTLE_WINS);
        } else {
            GameRecords_IncrementRecordValue(v0->records, RECORD_WIFI_BATTLE_WINS);
        }
        break;
    case BATTLE_RESULT_LOSE:
        if (!CommMan_IsConnectedToWifi()) {
            GameRecords_IncrementRecordValue(v0->records, RECORD_LOCAL_LINK_BATTLE_LOSSES);
        } else {
            GameRecords_IncrementRecordValue(v0->records, RECORD_WIFI_BATTLE_LOSSES);
        }
        break;
    case BATTLE_RESULT_DRAW:
    case BATTLE_RESULT_PLAYER_FLED:
        if (!CommMan_IsConnectedToWifi()) {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_023);
        } else {
            GameRecords_IncrementRecordValue(v0->records, RECORD_UNK_028);
        }
        break;
    }

    if (v0->battleType & BATTLE_TYPE_2vs2) {
        for (v3 = 0; v3 < 4; v3++) {
            v1->unk_04[sub_020362F4(v3)] = v0->parties[v3];
            v1->unk_14[sub_020362F4(v3)] = TrainerInfo_NameNewStrbuf(v0->trainerInfo[v3], 5);
        }

        v1->heapID = HEAP_ID_BATTLE;
        v1->unk_28 = 2;
        v1->unk_29 = 1;

        if (v0->resultMask != BATTLE_RESULT_PLAYER_FLED) {
            v1->unk_2A = v0->resultMask;
        } else {
            v1->unk_2A = 3;
        }
    } else {
        v1->unk_04[sub_020362F4(v2)] = v0->parties[v2];
        v1->unk_04[sub_020362F4(v2 ^ 1)] = v0->parties[v2 ^ 1];
        v1->unk_14[sub_020362F4(v2)] = TrainerInfo_NameNewStrbuf(v0->trainerInfo[v2], 5);
        v1->unk_14[sub_020362F4(v2 ^ 1)] = TrainerInfo_NameNewStrbuf(v0->trainerInfo[v2 ^ 1], 5);
        v1->heapID = HEAP_ID_BATTLE;
        v1->unk_28 = 2;
        v1->unk_29 = 0;

        if (v0->resultMask != BATTLE_RESULT_PLAYER_FLED) {
            v1->unk_2A = v0->resultMask;
        } else {
            v1->unk_2A = 3;
        }
    }

    v1->unk_2C = v0->unk_18A;

    ov10_0221F800(v1);

    return 1;
}

static BOOL ov16_0223DD10(ApplicationManager *appMan)
{
    int v0;
    FieldBattleDTO *v1 = ApplicationManager_Args(appMan);
    UnkStruct_ov10_0221F800 *v2 = v1->unk_170;

    if (v2->unk_2B) {
        for (v0 = 0; v0 < 4; v0++) {
            if (v2->unk_14[v0] != NULL) {
                Heap_Free(v2->unk_14[v0]);
            }
        }

        Heap_Free(v2);
        return 1;
    }

    return 0;
}

static void ov16_0223DD4C(BattleSystem *battleSys)
{
    if ((battleSys->battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_CATCH_TUTORIAL)) || (battleSys->battleStatusMask & 0x10)) {
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_ENABLED);
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    } else {
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_NO_WAIT);
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetSpeedUpOnTouch(TRUE);
    }
}

static void ov16_0223DD90(BattleSystem *battleSys, FieldBattleDTO *param1)
{
    int v0, v1, v2;
    int v3, v4;
    int v5[4];
    int v6[4];

    if (battleSys->battleStatusMask & 0x10) {
        battleSys->unk_23F8 = 1;
        return;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v5[v0] = v0;
        v6[v0] = param1->systemVersion[v0];
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
        battleSys->unk_23F8 = 1;
    } else {
        if ((battleSys->battleType & BATTLE_TYPE_FRONTIER) == FALSE) {
            if (battleSys->battleType & BATTLE_TYPE_2vs2) {
                v2 = sub_020362F4(v3);

                switch (sub_020362F4(v5[0])) {
                case 0:
                case 2:
                    if (v2 & 1) {
                        battleSys->battleStatusMask |= 0x20;
                    }
                    break;
                case 1:
                case 3:
                    if ((v2 & 1) == 0) {
                        battleSys->battleStatusMask |= 0x20;
                    }
                    break;
                }
            } else {
                battleSys->battleStatusMask |= 0x20;
            }
        }
    }
}

static void ov16_0223DECC(void)
{
    sub_02039734();

    if (CommMan_IsConnectedToWifi()) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    } else if (CommServerClient_IsInitialized()) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - WM_GetLinkLevel());
    }
}
