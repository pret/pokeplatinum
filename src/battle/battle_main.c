#include "battle/battle_main.h"

#include <dwc.h>
#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_controller.h"
#include "constants/communication/comm_error.h"
#include "constants/heap.h"
#include "generated/game_records.h"
#include "generated/trainer_classes.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_system.h"
#include "struct_defs/battler_data.h"
#include "struct_defs/link_battle_comm_state.h"

#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_controller_player.h"
#include "battle/battle_cursor.h"
#include "battle/battle_display.h"
#include "battle/battle_io_command.h"
#include "battle/battle_lib.h"
#include "battle/battle_system.h"
#include "battle/common.h"
#include "battle/healthbox.h"
#include "battle/ov16_02268520.h"
#include "battle/ov16_0226E148.h"
#include "battle/trainer_intro_data.h"
#include "battle_anim/battle_anim_system.h"
#include "overlay010/ov10_0221F800.h"
#include "overlay011/particle_helper.h"

#include "bag.h"
#include "bg_window.h"
#include "cell_transfer.h"
#include "comm_manager.h"
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
#include "network_icon.h"
#include "overlay_manager.h"
#include "palette.h"
#include "particle_system.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "trainer_info.h"
#include "unk_0202419C.h"
#include "unk_0202F1D4.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_02038F8C.h"
#include "unk_0207A6DC.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

#include "res/text/bank/battle_strings.h"

FS_EXTERN_OVERLAY(overlay10);
FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(battle_anim);
FS_EXTERN_OVERLAY(battle_sub_menus);
FS_EXTERN_OVERLAY(trainer_ai);
FS_EXTERN_OVERLAY(pokedex);

static const u32 BattleServerVersion = 0x140;

static void BattleMain_InitGraphics(ApplicationManager *appMan);
static int BattleMain_ExecuteBattlerCommands(ApplicationManager *appMan);
static void BattleMain_CopyBattleSysToDTOAndFree(ApplicationManager *appMan);
static BOOL BattleMain_InitPartnerIntro(ApplicationManager *appMan);
static BOOL BattleMain_WaitPartnerIntro(ApplicationManager *appMan);
static BOOL BattleMain_InitTrainerIntro(ApplicationManager *appMan);
static BOOL BattleMain_WaitTrainerIntro(ApplicationManager *appMan);
static BOOL BattleMain_HandleLinkBattleResult(ApplicationManager *appMan);
static BOOL BattleMain_WaitLinkBattleEnd(ApplicationManager *appMan);
static void BattleMain_InitLinkCommScreen(ApplicationManager *appMan, FieldBattleDTO *dto);
static BOOL BattleMain_HandleLinkCommHandshake(ApplicationManager *appMan);
static void BattleMain_FreeeLinkCommScreen(ApplicationManager *appMan);
static void BattleMain_InitBattleGraphics(BattleSystem *battleSys, BgConfig *bgConfig);
static void BattleMain_InitTerrains(BattleSystem *battleSys);
static void BattleMain_FreeBgLayers(BgConfig *bgConfig);
static void Dummy_0223C2BC(BattleSystem *battleSys);
static void BattleSys_New(BattleSystem *battleSys, FieldBattleDTO *dto);
static void BattleMain_InitParticleSystem(void);
static void BattleMain_VBlankCallback(void *inBattleSys);
static void BattleMain_LinkCommVBlankCallback(void *inBattleSys);
static void SysTask_DrawSprites(SysTask *task, void *inBattleSys);
static void SysTask_UpdateRedHPSound(SysTask *task, void *inBattleSys);
static G3DPipelineBuffers *InitG3DPipelineBuffers(void);
static void FreeG3DPipelineBuffers(G3DPipelineBuffers *pipelineBuffers);
static void G3DPipeline_SetupCallback(void);
static void BattleSys_SetRenderControlFlags(BattleSystem *battleSys);
static void SysTask_FlyInMessageBox(SysTask *task, void *inBattleSys);
static BOOL TrainerIsGymLeaderE4OrChampion(u16 trainerClass);
static void BattleMain_AssignRecordingRoles(BattleSystem *battleSys, FieldBattleDTO *dto);
static void BattleMain_SetNetworkIconStrength(void);

static const RenderOamTemplate sOamTemplate = {
    .mainOamStart = 0,
    .mainOamCount = 128,
    .mainAffineOamStart = 0,
    .mainAffineOamCount = 32,
    .subOamStart = 0,
    .subOamCount = 128,
    .subAffineOamStart = 0,
    .subAffineOamCount = 32,
};

static const CharTransferTemplateWithModes sTransferTemplate = {
    .maxTasks = 0x60,
    .sizeMain = 0x10000,
    .sizeSub = 0x4000,
    .modeMain = GX_OBJVRAMMODE_CHAR_1D_64K,
    .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K
};

const SpriteResourceCapacities sCapacities = {
    .asStruct = {
        .charCapacity = 96,
        .plttCapacity = 32,
        .cellCapacity = 64,
        .animCapacity = 64,
        .mcellCapacity = 8,
        .manimCapacity = 8,
    }
};

enum BattleState {
    BATTLE_STATE_CREATE_HEAP,
    BATTLE_STATE_INIT_LINK_COMM,
    BATTLE_STATE_WAIT_LINK_COMM,
    BATTLE_STATE_INIT_PARTNER_INTRO,
    BATTLE_STATE_WAIT_PARTNER_INTRO,
    BATTLE_STATE_INIT_TRAINER_INTRO,
    BATTLE_STATE_WAIT_TRAINER_INTRO,
    BATTLE_STATE_SYNC_BATTLE_START,
    BATTLE_STATE_INIT_GRAPHICS,
    BATTLE_STATE_MAIN,
    BATTLE_STATE_HANDLE_BATTLE_RESULT,
    BATTLE_STATE_LINK_BATTLE_END,
    BATTLE_STATE_LINK_BATTLE_FINISH,
    BATTLE_STATE_CHECK_EVOLUTION,
    BATTLE_STATE_WAIT_FOR_EVOLUTION,
    BATTLE_STATE_FINISH,
};

BOOL Battle_Main(ApplicationManager *appMan, int *state)
{
    FieldBattleDTO *dto = ApplicationManager_Args(appMan);

    switch (*state) {
    case BATTLE_STATE_CREATE_HEAP:
        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE, 0xB0000);

        if (dto->battleType & BATTLE_TYPE_LINK && (dto->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
            *state = BATTLE_STATE_INIT_LINK_COMM;
        } else {
            *state = BATTLE_STATE_INIT_PARTNER_INTRO;
        }
        break;
    case BATTLE_STATE_INIT_LINK_COMM:
        BattleMain_InitLinkCommScreen(appMan, dto);
        WiFiHistory_FlagGeonetLinkInfo(dto->wiFiHistory);

        if (!CommManager_IsConnectedToWifi()) {
            GameRecords_IncrementRecordValue(dto->records, RECORD_UNK_020);
        } else {
            GameRecords_IncrementRecordValue(dto->records, RECORD_UNK_025);
        }
        *state = BATTLE_STATE_WAIT_LINK_COMM;
        break;
    case BATTLE_STATE_WAIT_LINK_COMM:
        if (BattleMain_HandleLinkCommHandshake(appMan) == TRUE) {
            BattleMain_FreeeLinkCommScreen(appMan);
            *state = BATTLE_STATE_INIT_PARTNER_INTRO;
        }
        break;
    case BATTLE_STATE_INIT_PARTNER_INTRO:
        if (BattleMain_InitPartnerIntro(appMan) == TRUE) {
            *state = BATTLE_STATE_WAIT_PARTNER_INTRO;
        } else {
            *state = BATTLE_STATE_INIT_TRAINER_INTRO;
        }
        break;
    case BATTLE_STATE_WAIT_PARTNER_INTRO:
        if (BattleMain_WaitPartnerIntro(appMan) == TRUE) {
            *state = BATTLE_STATE_INIT_TRAINER_INTRO;
        }
        break;
    case BATTLE_STATE_INIT_TRAINER_INTRO:
        if (BattleMain_InitTrainerIntro(appMan) == TRUE) {
            *state = BATTLE_STATE_WAIT_TRAINER_INTRO;
        } else {
            *state = BATTLE_STATE_INIT_GRAPHICS;
        }
        break;
    case BATTLE_STATE_WAIT_TRAINER_INTRO:
        if (BattleMain_WaitTrainerIntro(appMan) == TRUE) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay10));
            *state = BATTLE_STATE_SYNC_BATTLE_START;
            CommTiming_StartSync(61);
        }
        break;
    case BATTLE_STATE_SYNC_BATTLE_START:
        if (CommTiming_IsSyncState(61)) {
            *state = BATTLE_STATE_INIT_GRAPHICS;
        }
        break;
    case BATTLE_STATE_INIT_GRAPHICS:
        Overlay_LoadByID(FS_OVERLAY_ID(overlay11), OVERLAY_LOAD_ASYNC);
        Overlay_LoadByID(FS_OVERLAY_ID(battle_anim), OVERLAY_LOAD_ASYNC);
        BattleMain_InitGraphics(appMan);
        *state = BATTLE_STATE_MAIN;
        break;
    case BATTLE_STATE_MAIN:
        if (BattleMain_ExecuteBattlerCommands(appMan) == TRUE) {
            BattleMain_CopyBattleSysToDTOAndFree(appMan);
            *state = BATTLE_STATE_HANDLE_BATTLE_RESULT;
        }
        break;
    case BATTLE_STATE_HANDLE_BATTLE_RESULT:
        if (BattleMain_HandleLinkBattleResult(appMan) == TRUE) {
            *state = BATTLE_STATE_LINK_BATTLE_END;
        } else {
            Heap_Destroy(HEAP_ID_BATTLE);
            *state = BATTLE_STATE_CHECK_EVOLUTION;
        }
        break;
    case BATTLE_STATE_LINK_BATTLE_END:
        if (BattleMain_WaitLinkBattleEnd(appMan) == TRUE) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay10));
            Heap_Destroy(HEAP_ID_BATTLE);
            *state = BATTLE_STATE_LINK_BATTLE_FINISH;
        }
        break;
    case BATTLE_STATE_LINK_BATTLE_FINISH:
        *state = BATTLE_STATE_FINISH;
        break;
    case BATTLE_STATE_CHECK_EVOLUTION: {
        int slot;
        int evoType;
        int targetSpecies = Battle_FindEvolvingPartyMember(dto, &slot, &evoType);
        Pokemon *mon;

        if (targetSpecies) {
            Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_EVOLUTION, HEAP_SIZE_EVOLUTION);
            mon = Party_GetPokemonBySlotIndex(dto->parties[0], slot);
            dto->unk_170 = Evolution_Begin(dto->parties[0], mon, targetSpecies, dto->options, dto->visitedContestHall, dto->pokedex, dto->bag, dto->records, dto->poketch, evoType, 0x1 | 0x2, HEAP_ID_EVOLUTION);
            *state = BATTLE_STATE_WAIT_FOR_EVOLUTION;
        } else {
            *state = BATTLE_STATE_FINISH;
        }
    } break;
    case BATTLE_STATE_WAIT_FOR_EVOLUTION: {
        EvolutionData *evolutionData = (EvolutionData *)dto->unk_170;

        if (Evolution_IsDone(evolutionData) == TRUE) {
            Evolution_Free(evolutionData);
            Heap_Destroy(HEAP_ID_EVOLUTION);
            *state = BATTLE_STATE_CHECK_EVOLUTION;
        }
    } break;
    case BATTLE_STATE_FINISH:
        return TRUE;
    }

    return FALSE;
}

void BattleSystem_EnterSubMenu(BattleSystem *battleSys)
{
    ov16_02268A14(battleSys->unk_198);
    ov16_022687A0(battleSys->bgConfig);

    battleSys->pendingSubMenuVRAMSetup = 1;

    Font_Free(FONT_SUBSCREEN);
    BattleSystem_SetRenderMode(battleSys, 3);

    if (battleSys->overlayFlags == FALSE) {
        Overlay_UnloadByID(FS_OVERLAY_ID(battle_anim));
    } else {
        Overlay_UnloadByID(FS_OVERLAY_ID(trainer_ai));
    }

    Overlay_LoadByID(FS_OVERLAY_ID(battle_sub_menus), OVERLAY_LOAD_ASYNC);
}

void BattleSystem_FreeGraphics(BattleSystem *battleSys)
{
    SetVBlankCallback(NULL, NULL);
    ov16_02268A14(battleSys->unk_198);
    Window_Remove(&battleSys->windows[0]);

    BattleMain_FreeBgLayers(battleSys->bgConfig);
    Dummy_0223C2BC(battleSys);

    SpriteSystem_FreeResourcesAndManager(battleSys->spriteSys, battleSys->spriteMan);
    SpriteSystem_Free(battleSys->spriteSys);
    VramTransfer_Free();
    Font_Free(FONT_SUBSCREEN);
}

void BattleSystem_ExitSubMenu(BattleSystem *battleSys)
{
    Overlay_UnloadByID(FS_OVERLAY_ID(battle_sub_menus));

    if (battleSys->overlayFlags == FALSE) {
        Overlay_LoadByID(FS_OVERLAY_ID(battle_anim), OVERLAY_LOAD_ASYNC);
    } else {
        Overlay_LoadByID(FS_OVERLAY_ID(trainer_ai), OVERLAY_LOAD_ASYNC);
    }

    BattleSystem_SetRenderMode(battleSys, 0);
    MI_CpuFill16((void *)GetHardwareSubBgPaletteAddress(), 0, GetHardwareSubBgPaletteSize());

    NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
    NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
    battleSys->unk_198 = ov16_022687C8(bgNarc, objNarc, battleSys, BattleSystem_GetTrainerGender(battleSys, BattleSystem_GetNetworkID(battleSys)), battleSys->subscreenCursorOn);

    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_BATTLE);

    battleSys->pendingBattleVRAMSetup = 1;

    ov16_02268744(battleSys->bgConfig);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    ov16_02268A88(battleSys->unk_198);
    ov16_02268C04(bgNarc, objNarc, battleSys->unk_198, 0, 1, NULL);
    ov16_02268D40(objNarc, battleSys->unk_198);
    NARC_dtor(bgNarc);
    NARC_dtor(objNarc);
    TextPrinter_SetScrollArrowBaseTile(1);
    BattleSys_SetRenderControlFlags(battleSys);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(battleSys->spriteSys), 0, (192 + 80) << FX32_SHIFT);
}

void BattleSystem_HideBattleScreen(BattleSystem *battleSys)
{
    Window_Remove(&battleSys->windows[0]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    Bg_FreeTilemapBuffer(battleSys->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(battleSys->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(battleSys->bgConfig, BG_LAYER_MAIN_3);
    BattleSystem_HideHealthboxes(battleSys);
}

void BattleSystem_SetupBattleScreen(BattleSystem *battleSys)
{
    battleSys->pendingBlendReset = 1;

    BgTemplate bgTemplates[] = {
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

    Bg_InitFromTemplate(battleSys->bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], 0);
    Bg_ClearTilemap(battleSys->bgConfig, BG_LAYER_MAIN_1);
    Bg_InitFromTemplate(battleSys->bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], 0);
    Bg_ClearTilemap(battleSys->bgConfig, BG_LAYER_MAIN_2);
    Bg_InitFromTemplate(battleSys->bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], 0);
    Bg_ClearTilemap(battleSys->bgConfig, BG_LAYER_MAIN_3);

    G2_SetBG0Priority(1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    int frame = BattleSystem_GetOptionsFrame(battleSys);

    ReplaceTransparentTiles(battleSys->bgConfig, 1, 1, 10, frame, HEAP_ID_BATTLE);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 3 + battleSys->background, battleSys->bgConfig, BG_LAYER_MAIN_3, 0, 0, 1, HEAP_ID_BATTLE);
    PaletteData_LoadBufferFromFileStart(battleSys->paletteData, 7, 172 + battleSys->background * 3 + BattleSystem_GetBackgroundTimeOffset(battleSys), HEAP_ID_BATTLE, 0, 0, 0);
    PaletteData_LoadBufferFromFileStart(battleSys->paletteData, 38, GetMessageBoxPaletteNARCMember(frame), HEAP_ID_BATTLE, 0, PALETTE_SIZE_BYTES, 10 * 16);
    PaletteData_LoadBufferFromFileStart(battleSys->paletteData, 14, 7, HEAP_ID_BATTLE, 0, PALETTE_SIZE_BYTES, 11 * 16);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 2, battleSys->bgConfig, 3, 0, 0, 1, HEAP_ID_BATTLE);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, NULL);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, NULL);

    GXLayers_TurnBothDispOn();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    SetVBlankCallback(BattleMain_VBlankCallback, battleSys);

    battleSys->pendingBattleVRAMSetup = 1;

    Window_Add(battleSys->bgConfig, battleSys->windows, 1, 2, 19, 27, 4, 11, (18 + 12) + 1);
    Window_FillTilemap(battleSys->windows, 0xFF);
    Window_DrawMessageBoxWithScrollCursor(&battleSys->windows[0], 0, 1, 10);

    BattleSys_SetRenderControlFlags(battleSys);
}

void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int flags)
{
    GF_ASSERT(battleSys->overlayFlags != flags);

    battleSys->overlayFlags = flags;

    if (flags == FALSE) {
        Overlay_UnloadByID(FS_OVERLAY_ID(trainer_ai));
        Overlay_LoadByID(FS_OVERLAY_ID(battle_anim), OVERLAY_LOAD_ASYNC);
    } else {
        Overlay_UnloadByID(FS_OVERLAY_ID(battle_anim));
        Overlay_LoadByID(FS_OVERLAY_ID(trainer_ai), OVERLAY_LOAD_ASYNC);
    }
}

// clang-format off
static const int sBackgroundColors[][3] = {
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

static void BattleMain_InitGraphics(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);
    FieldBattleDTO *dto = ApplicationManager_Args(appMan);
    int idx;

    MI_CpuFill16((void *)GetHardwareMainBgPaletteAddress(), 0, GetHardwareMainBgPaletteSize());
    MI_CpuFill16((void *)GetHardwareSubBgPaletteAddress(), 0, GetHardwareSubBgPaletteSize());

    battleSys->pipelineBuffers = InitG3DPipelineBuffers();

    DisableHBlank();
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_BATTLE);

    battleSys->specialCharsHP = FontSpecialChars_Init(14, 2, 15, HEAP_ID_BATTLE);

    battleSys->specialCharsLevel = battleSys->specialCharsHP;
    battleSys->paletteData = PaletteData_New(HEAP_ID_BATTLE);

    PaletteData_SetAutoTransparent(battleSys->paletteData, 1);
    PaletteData_AllocBuffer(battleSys->paletteData, 0, 0x200, HEAP_ID_BATTLE);
    PaletteData_AllocBuffer(battleSys->paletteData, 1, 0x200, HEAP_ID_BATTLE);
    PaletteData_AllocBuffer(battleSys->paletteData, 2, ((16 - 2) * 16) * sizeof(u16), HEAP_ID_BATTLE);
    PaletteData_AllocBuffer(battleSys->paletteData, 3, 0x200, HEAP_ID_BATTLE);

    battleSys->bgConfig = BgConfig_New(HEAP_ID_BATTLE);
    battleSys->windows = Window_New(HEAP_ID_BATTLE, 3);

    for (idx = 0; idx < 4; idx++) {
        battleSys->pokemonSpriteDataArray[idx].tiles = Heap_Alloc(HEAP_ID_BATTLE, 32 * 10 * 10);
    }

    VramTransfer_New(64, HEAP_ID_BATTLE);

    NARC *bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
    NARC *objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

    battleSys->unk_198 = ov16_022687C8(bgNarc, objNarc, battleSys, BattleSystem_GetTrainerGender(battleSys, BattleSystem_GetNetworkID(battleSys)), battleSys->subscreenCursorOn);

    NARC_dtor(bgNarc);
    NARC_dtor(objNarc);

    BattleMain_InitBattleGraphics(battleSys, battleSys->bgConfig);

    Window_Add(battleSys->bgConfig, &battleSys->windows[0], 1, 2, 0x13, 27, 4, 11, (18 + 12) + 1);
    Window_FillTilemap(&battleSys->windows[0], 0xFF);
    Window_DrawMessageBoxWithScrollCursor(&battleSys->windows[0], 0, 1, 10);

    battleSys->spriteSys = SpriteSystem_Alloc(HEAP_ID_BATTLE);

    SpriteSystem_Init(battleSys->spriteSys, &sOamTemplate, &sTransferTemplate, 16 + 16);
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    battleSys->spriteMan = SpriteManager_New(battleSys->spriteSys);

    SpriteSystem_InitSprites(battleSys->spriteSys, battleSys->spriteMan, 64 + 64);
    SpriteSystem_InitManagerWithCapacities(battleSys->spriteSys, battleSys->spriteMan, &sCapacities);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(battleSys->spriteSys), 0, (192 + 80) << FX32_SHIFT);

    ov16_02268A88(battleSys->unk_198);

    NARC *bgNarc2 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
    NARC *objNarc2 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

    ov16_02268C04(bgNarc2, objNarc2, battleSys->unk_198, 0, 1, NULL);
    ov16_02268D40(objNarc2, battleSys->unk_198);

    NARC_dtor(bgNarc2);
    NARC_dtor(objNarc2);

    battleSys->monSpriteMan = PokemonSpriteManager_New(HEAP_ID_BATTLE);
    PokemonSpriteManager_SetPlttBaseAddrAndSize(battleSys->monSpriteMan, 0, PALETTE_SIZE_BYTES * 6);

    BattleSystem_CreateHealthboxes(battleSys);
    BattleMain_InitParticleSystem();

    battleSys->battleAnimSys = BattleAnimSystem_New(HEAP_ID_BATTLE);

    BattleMain_InitTerrains(battleSys);

    EnableTouchPad();
    InitializeTouchPad(4);

    battleSys->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_STRINGS, HEAP_ID_BATTLE);
    battleSys->attackMsgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVES_USED_IN_BATTLE, HEAP_ID_BATTLE);
    battleSys->strFormatter = StringTemplate_Default(HEAP_ID_BATTLE);
    battleSys->msgBuffer = String_Init(2 * 160, HEAP_ID_BATTLE);

    MI_CpuCopy16(PaletteData_GetUnfadedBuffer(battleSys->paletteData, 0), &battleSys->savedBgPalettes[0], PALETTE_SIZE_BYTES * 7);
    MI_CpuCopy16(PaletteData_GetUnfadedBuffer(battleSys->paletteData, 2), &battleSys->savedObjPalettes[0], PALETTE_SIZE_BYTES * 7);

    int offset = BattleSystem_GetBackgroundTimeOffset(battleSys);

    PaletteData_FillBufferRange(battleSys->paletteData, 0, 2, sBackgroundColors[battleSys->background][offset], 0, 112);
    PaletteData_FillBufferRange(battleSys->paletteData, 0, 2, sBackgroundColors[battleSys->background][offset], 0xC * 16, 0xC * 16 + 4 * 16);
    PaletteData_FillBufferRange(battleSys->paletteData, 2, 2, sBackgroundColors[battleSys->background][offset], 0, ((16 - 2) * 16) - 1);

    PaletteData_FillBufferRange(battleSys->paletteData, 0, 0, 0, 10 * 16, 10 * 16 + 2 * 16);
    PaletteData_FillBufferRange(battleSys->paletteData, 1, 0, 0, 0, 255);
    PaletteData_FillBufferRange(battleSys->paletteData, 3, 0, 0xFFFF, 0, 255);

    battleSys->unk_1AC = sub_0201567C(battleSys->paletteData, 0, 11, HEAP_ID_BATTLE);
    sub_02015738(battleSys->unk_1AC, 1);

    battleSys->taskDrawSprites = SysTask_Start(SysTask_DrawSprites, battleSys, 60000);
    battleSys->taskUpdateRedHPSound = SysTask_Start(SysTask_UpdateRedHPSound, battleSys, 50000);
    battleSys->taskFlyInMessageBox = SysTask_ExecuteOnVBlank(SysTask_FlyInMessageBox, battleSys, 1200);
    battleSys->yOffset = -51;

    BattleSys_SetRenderControlFlags(battleSys);
    BagCursor_ResetBattle(BattleSystem_GetBagCursor(battleSys));

    battleSys->monAnimMan = PokemonAnimManager_New(HEAP_ID_BATTLE, 4, FALSE);
    battleSys->cellTransferState = CellTransfer_New(4, HEAP_ID_BATTLE);

    if (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) {
        for (idx = 0; idx < 4; idx++) {
            battleSys->recordedChatter[idx] = dto->unk_194[idx];
        }
    }
}

static int BattleMain_ExecuteBattlerCommands(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);
    int battler;

    if (battleSys->battleType & BATTLE_TYPE_LINK && (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
        if (battleSys->battleInitialized) {
            BattleContext_Main(battleSys, battleSys->battleCtx);
        }

        for (battler = 0; battler < battleSys->maxBattlers; battler++) {
            BattleSystem_ExecuteBattlerCommand(battleSys, battleSys->battlers[battler]);
        }
    } else {
        if (battleSys->battleInitialized) {
            battleSys->commandIsEndWait = BattleContext_Main(battleSys, battleSys->battleCtx);
            BattleController_TryRecvLocalMessage(battleSys, COMM_RECIPIENT_CLIENT);
        }

        for (battler = 0; battler < battleSys->maxBattlers; battler++) {
            BattleSystem_ExecuteBattlerCommand(battleSys, battleSys->battlers[battler]);
            BattleController_TryRecvLocalMessage(battleSys, COMM_RECIPIENT_SERVER);
        }

        if (battleSys->commandIsEndWait == FALSE) {
            if (battleSys->battleInitialized) {
                battleSys->commandIsEndWait = BattleContext_Main(battleSys, battleSys->battleCtx);
                BattleController_TryRecvLocalMessage(battleSys, COMM_RECIPIENT_CLIENT);
            }

            for (battler = 0; battler < battleSys->maxBattlers; battler++) {
                BattleSystem_ExecuteBattlerCommand(battleSys, battleSys->battlers[battler]);
                BattleController_TryRecvLocalMessage(battleSys, COMM_RECIPIENT_SERVER);
            }
        }
    }

    return battleSys->commandIsEndWait;
}

static void BattleMain_CopyBattleSysToDTOAndFree(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);
    FieldBattleDTO *dto = ApplicationManager_Args(appMan);
    int battlerId;

    dto->seed = battleSys->seedDTO;
    dto->battleStatusMask = battleSys->battleStatusMask;

    if ((battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) == FALSE) {
        sub_0202F8AC(dto);
    }

    if (battleSys->overlayFlags != FALSE) {
        BattleSystem_LoadFightOverlay(battleSys, FALSE);
    }

    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
    BattleSystem_SetBurmyForm(battleSys);

    if (battleSys->resultMask != BATTLE_RESULT_CAPTURED_MON) {
        BattleSystem_InitCaptureAttempt(battleSys, Party_GetPokemonBySlotIndex(battleSys->parties[BATTLER_ENEMY_1], 0));
    }

    for (battlerId = 0; battlerId < MAX_BATTLERS; battlerId++) {
        Party_Copy(battleSys->parties[battlerId], dto->parties[battlerId]);
        Heap_Free(battleSys->parties[battlerId]);
        TrainerInfo_Copy(battleSys->trainerInfo[battlerId], dto->trainerInfo[battlerId]);
        Heap_Free(battleSys->trainerInfo[battlerId]);
    }

    sub_02015760(battleSys->unk_1AC);
    Bag_Copy(battleSys->bag, dto->bag);
    Heap_Free(battleSys->bag);
    Pokedex_Copy(battleSys->pokedex, dto->pokedex);
    Heap_Free(battleSys->pokedex);
    dto->pcBoxes = battleSys->pcBoxes;
    dto->bagCursor = battleSys->bagCursor;
    dto->subscreenCursorOn = battleSys->subscreenCursorOn;
    dto->poketch = battleSys->poketch;
    dto->captureAttempt = battleSys->captureAttempt;
    dto->countSafariBalls = battleSys->safariBalls;
    dto->resultMask = battleSys->resultMask & (0xC0 ^ 0xFF);
    dto->caughtBattlerIdx = battleSys->caughtBattlerIdx;
    dto->leveledUpMonsMask = BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_LEVEL_UP_MONS, NULL);
    dto->battleRecords.totalTurns += BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_TOTAL_TURNS, NULL);
    dto->battleRecords.totalFainted += BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_TOTAL_FAINTED_FOR, BATTLER_PLAYER_1) + BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_TOTAL_FAINTED_FOR, BATTLER_PLAYER_2);
    dto->battleRecords.totalDamage += BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_TOTAL_DAMAGE_FOR, BATTLER_PLAYER_1) + BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_TOTAL_DAMAGE_FOR, BATTLER_PLAYER_2);
    dto->totalTurnsElapsed = BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_TOTAL_TURNS, NULL);
    dto->unk_19C = battleSys->recordingStopped;

    for (battlerId = 0; battlerId < MAX_BATTLERS; battlerId++) {
        Heap_Free(battleSys->pokemonSpriteDataArray[battlerId].tiles);
    }

    Heap_Free(battleSys->msgBuffer);
    PaletteData_FreeBuffer(battleSys->paletteData, PLTTBUF_MAIN_BG);
    PaletteData_FreeBuffer(battleSys->paletteData, PLTTBUF_SUB_BG);
    PaletteData_FreeBuffer(battleSys->paletteData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(battleSys->paletteData, PLTTBUF_SUB_OBJ);
    PaletteData_Free(battleSys->paletteData);
    MessageLoader_Free(battleSys->msgLoader);
    MessageLoader_Free(battleSys->attackMsgLoader);
    StringTemplate_Free(battleSys->strFormatter);
    PokemonAnimManager_Free(battleSys->monAnimMan);
    ParticleSystem_FreeAll();

    BattleAnimSystem_Delete(battleSys->battleAnimSys);
    BattleContext_Free(battleSys->battleCtx);

    for (battlerId = 0; battlerId < battleSys->maxBattlers; battlerId++) {
        ov16_0225C104(battleSys, battleSys->battlers[battlerId], battleSys->renderMode);
    }

    PokemonSpriteManager_Free(battleSys->monSpriteMan);

    if (battleSys->renderMode != 2) {
        BattleSystem_FreeGraphics(battleSys);
    }

    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    Windows_Delete(battleSys->windows, 3);
    Heap_Free(battleSys->bgConfig);
    Heap_Free(battleSys->bgTileSnapshot);
    Heap_Free(battleSys->bgPaletteSnapshot);
    FontSpecialChars_Free(battleSys->specialCharsHP);
    Font_Free(FONT_SUBSCREEN);
    SysTask_Done(battleSys->taskDrawSprites);
    SysTask_Done(battleSys->taskUpdateRedHPSound);
    DisableTouchPad();

    FreeG3DPipelineBuffers(battleSys->pipelineBuffers);

    LCRNG_SetSeed(battleSys->seedLCRNG);

    if (BattleSystem_GetRedHPSoundFlag(battleSys)) {
        Sound_StopEffect(SEQ_SE_DP_HINSI, 0);
    }

    CellTransfer_Free(battleSys->cellTransferState);

    if (BattleSystem_GetRecordingStopped(battleSys)) {
        Sound_SetMasterVolume(SOUND_VOLUME_MAX);
    }

    if (battleSys->playbackStopButton) {
        ov16_0226E174(battleSys->playbackStopButton);
    }

    Heap_Free(battleSys);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(battle_anim));

    if (!CommManager_IsConnectedToWifi()) {
        Overlay_UnloadByID(FS_OVERLAY_ID(pokedex));
    }
}

static void BattleMain_InitBattleGraphics(BattleSystem *battleSys, BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();
    ResetScreenMasterBrightness(DS_SCREEN_MAIN);
    ResetScreenMasterBrightness(DS_SCREEN_SUB);

    GXBanks banks = {
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

    GXLayers_SetBanks(&banks);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);

    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&graphicsModes);

    battleSys->pendingBlendReset = 1;

    BgTemplate bgTemplates[] = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    G2_SetBG0Priority(1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    ov16_02268744(bgConfig);

    int frame = BattleSystem_GetOptionsFrame(battleSys);

    ReplaceTransparentTiles(bgConfig, 1, 1, 10, frame, HEAP_ID_BATTLE);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 3 + battleSys->background, bgConfig, BG_LAYER_MAIN_3, 0, 0, 1, HEAP_ID_BATTLE);
    PaletteData_LoadBufferFromFileStart(battleSys->paletteData, NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 172 + battleSys->background * 3 + BattleSystem_GetBackgroundTimeOffset(battleSys), HEAP_ID_BATTLE, 0, 0, 0);
    PaletteData_LoadBufferFromFileStart(battleSys->paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(frame), HEAP_ID_BATTLE, 0, PALETTE_SIZE_BYTES, 10 * 16);
    PaletteData_LoadBufferFromFileStart(battleSys->paletteData, NARC_INDEX_GRAPHIC__PL_FONT, 7, HEAP_ID_BATTLE, 0, PALETTE_SIZE_BYTES, 11 * 16);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, 2, bgConfig, 3, 0, 0, 1, HEAP_ID_BATTLE);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, NULL);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, NULL);

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    SetVBlankCallback(BattleMain_VBlankCallback, battleSys);
}

static void BattleMain_InitTerrains(BattleSystem *battleSys)
{
    int terrain = BattleSystem_GetTerrain(battleSys);
    int selectedPartySlot;
    Pokemon *mon;

    ov16_022686CC(&battleSys->terrains[0], battleSys, 0, terrain);
    ov16_022686CC(&battleSys->terrains[1], battleSys, 1, terrain);

    BattleContext *battleCtx = BattleSystem_GetBattleContext(battleSys);

    for (int battler = 0; battler < battleSys->maxBattlers; battler++) {
        selectedPartySlot = BattleContext_Get(battleSys, battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, battler);
        mon = BattleSystem_GetPartyPokemon(battleSys, battler, selectedPartySlot);
        ov16_0225C038(battleSys, battleSys->battlers[battler], Pokemon_GetValue(mon, MON_DATA_POKEBALL, NULL), selectedPartySlot);
    }

    BattleMain_SetNetworkIconStrength();
}

static void BattleMain_FreeBgLayers(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);

    ov16_022687A0(bgConfig);
}

static void Dummy_0223C2BC(BattleSystem *battleSys) // CLEANUP: remove
{
}

static const u8 sSingleBattleBattlerTypes[] = {
    BATTLER_TYPE_SOLO_PLAYER,
    BATTLER_TYPE_SOLO_ENEMY
};

static const u8 sLinkSingleBattleBattlerTypes[][MAX_BATTLERS / 2] = {
    {
        BATTLER_TYPE_SOLO_PLAYER,
        BATTLER_TYPE_SOLO_ENEMY,
    },
    {
        BATTLER_TYPE_SOLO_ENEMY,
        BATTLER_TYPE_SOLO_PLAYER,
    },
};

static const u8 sDoubleBattleBattlerTypes[] = {
    BATTLER_TYPE_PLAYER_SIDE_SLOT_1,
    BATTLER_TYPE_ENEMY_SIDE_SLOT_1,
    BATTLER_TYPE_PLAYER_SIDE_SLOT_2,
    BATTLER_TYPE_ENEMY_SIDE_SLOT_2
};

static const u8 sLinkDoubleBattleBattlerTypes[][MAX_BATTLERS] = {
    {
        BATTLER_TYPE_PLAYER_SIDE_SLOT_1,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_1,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_2,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_2,
    },
    {
        BATTLER_TYPE_ENEMY_SIDE_SLOT_1,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_1,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_2,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_2,
    },
};

static const u8 sLink2vs2BattleBattlerTypes[][MAX_BATTLERS] = {
    {
        BATTLER_TYPE_PLAYER_SIDE_SLOT_1,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_2,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_2,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_1,
    },
    {
        BATTLER_TYPE_ENEMY_SIDE_SLOT_1,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_2,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_2,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_1,
    },
    {
        BATTLER_TYPE_PLAYER_SIDE_SLOT_1,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_2,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_2,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_1,
    },
    {
        BATTLER_TYPE_ENEMY_SIDE_SLOT_1,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_2,
        BATTLER_TYPE_ENEMY_SIDE_SLOT_2,
        BATTLER_TYPE_PLAYER_SIDE_SLOT_1,
    },
};

static void BattleSys_New(BattleSystem *battleSys, FieldBattleDTO *dto)
{
    int i, slot;
    BattlerInitData battlerInitData;
    Pokemon *mon;

    battleSys->battleType = dto->battleType;

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleSys->trainerInfo[i] = TrainerInfo_New(HEAP_ID_BATTLE);
        TrainerInfo_Copy(dto->trainerInfo[i], battleSys->trainerInfo[i]);
        battleSys->chatotCries[i] = dto->chatotCries[i];
    }

    battleSys->networkID = dto->networkID;

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleSys->unk_2464[i] = dto->unk_178[i];
    }

    battleSys->seedLCRNG = LCRNG_GetSeed();
    battleSys->seedRandNext = dto->seed;
    battleSys->seedDTO = dto->seed;
    battleSys->battleStatusMask = dto->battleStatusMask;
    battleSys->bag = Bag_New(HEAP_ID_BATTLE);

    Bag_Copy(dto->bag, battleSys->bag);
    battleSys->pokedex = Pokedex_New(HEAP_ID_BATTLE);
    Pokedex_Copy(dto->pokedex, battleSys->pokedex);

    battleSys->pcBoxes = dto->pcBoxes;
    battleSys->options = dto->options;
    battleSys->palPad = dto->palPad;
    battleSys->bagCursor = dto->bagCursor;
    battleSys->subscreenCursorOn = dto->subscreenCursorOn;
    battleSys->poketch = dto->poketch;
    battleSys->mapEvolutionMethod = dto->mapEvolutionMethod;
    battleSys->captureAttempt = dto->captureAttempt;
    battleSys->safariBalls = dto->countSafariBalls;
    battleSys->terrain = dto->terrain;
    battleSys->background = dto->background;
    battleSys->mapHeader = dto->mapLabelTextID;
    battleSys->time = dto->timeOfDay;
    battleSys->rulesetMask = dto->rulesetMask;
    battleSys->visitedContestHall = dto->visitedContestHall;
    battleSys->metBebe = dto->metBebe;
    battleSys->fieldWeather = dto->fieldWeather;
    battleSys->records = dto->records;

    GF_ASSERT(dto->records != NULL);

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleSys->trainerIDs[i] = dto->trainerIDs[i];
        battleSys->trainers[i] = dto->trainer[i];
    }

    battleSys->battleCtx = BattleContext_New(battleSys);

    for (i = 0; i < MAX_BATTLERS; i++) {
        battleSys->parties[i] = Party_New(HEAP_ID_BATTLE);
    }

    int gender;

    for (i = 0; i < MAX_BATTLERS; i++) {
        for (slot = 0; slot < Party_GetCurrentCount(dto->parties[i]); slot++) {
            mon = Party_GetPokemonBySlotIndex(dto->parties[i], slot);
            gender = Pokemon_GetGender(mon);
            Pokemon_SetValue(mon, MON_DATA_GENDER, &gender);
        }
    }

    if (battleSys->battleType & BATTLE_TYPE_LINK) {
        sub_0207A6DC(battleSys);
        u8 networkID = BattleSystem_GetNetworkID(battleSys);

        BattleMain_AssignRecordingRoles(battleSys, dto);

        if (battleSys->battleType & BATTLE_TYPE_FRONTIER) {
            for (i = 0; i < MAX_BATTLERS; i++) {
                battlerInitData.battler = i;
                battlerInitData.battlerType = sDoubleBattleBattlerTypes[i];
                battleSys->battlers[i] = BattlerData_New(battleSys, &battlerInitData);
            }

            battleSys->maxBattlers = i;

            for (i = 0; i < MAX_BATTLERS; i++) {
                BattlerData_SetTaskFuncs(battleSys, battleSys->battlers[i]);
                Party_Copy(dto->parties[i], battleSys->parties[i]);
            }

            for (i = 0; i < battleSys->maxBattlers; i++) {
                for (slot = 0; slot < Party_GetCurrentCount(battleSys->parties[i]); slot++) {
                    mon = Party_GetPokemonBySlotIndex(battleSys->parties[i], slot);

                    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                        && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                        && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                        break;
                    }
                }

                BattleContext_Set(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i, slot);
            }

            BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        } else if (battleSys->battleType & BATTLE_TYPE_2vs2) {
            for (i = 0; i < MAX_BATTLERS; i++) {
                battlerInitData.battler = i;
                battlerInitData.battlerType = sLink2vs2BattleBattlerTypes[ov16_0223F6F0(battleSys, networkID)][ov16_0223F6F0(battleSys, i)];
                battleSys->battlers[i] = BattlerData_New(battleSys, &battlerInitData);
            }

            battleSys->maxBattlers = i;

            for (i = 0; i < MAX_BATTLERS; i++) {
                BattlerData_SetTaskFuncs(battleSys, battleSys->battlers[i]);
                Party_Copy(dto->parties[i], battleSys->parties[i]);
            }

            for (i = 0; i < battleSys->maxBattlers; i++) {
                for (slot = 0; slot < Party_GetCurrentCount(battleSys->parties[i]); slot++) {
                    mon = Party_GetPokemonBySlotIndex(battleSys->parties[i], slot);

                    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                        && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                        && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                        break;
                    }
                }

                BattleContext_Set(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i, slot);
            }

            BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
            for (i = 0; i < MAX_BATTLERS; i++) {
                battlerInitData.battler = i;
                battlerInitData.battlerType = sLinkDoubleBattleBattlerTypes[networkID][i];
                battleSys->battlers[i] = BattlerData_New(battleSys, &battlerInitData);
                BattlerData_SetTaskFuncs(battleSys, battleSys->battlers[i]);
            }

            battleSys->maxBattlers = i;

            for (i = 0; i < MAX_BATTLERS; i++) {
                Party_Copy(dto->parties[i], battleSys->parties[i]);
            }

            for (i = 0; i < battleSys->maxBattlers; i++) {
                for (slot = 0; slot < Party_GetCurrentCount(battleSys->parties[i & 1]); slot++) {
                    mon = Party_GetPokemonBySlotIndex(battleSys->parties[i & 1], slot);

                    if (i > BATTLER_ENEMY_1) {
                        if ((BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i & 1) != slot)
                            && Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                            && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                            && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                            break;
                        }
                    } else {
                        if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                            && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                            && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                            break;
                        }
                    }
                }

                BattleContext_Set(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i, slot);
            }
        } else {
            for (i = 0; i < MAX_BATTLERS / 2; i++) {
                battlerInitData.battler = i;
                battlerInitData.battlerType = sLinkSingleBattleBattlerTypes[networkID][i];
                battleSys->battlers[i] = BattlerData_New(battleSys, &battlerInitData);
                BattlerData_SetTaskFuncs(battleSys, battleSys->battlers[i]);
            }

            battleSys->maxBattlers = i;

            for (i = 0; i < MAX_BATTLERS; i++) {
                Party_Copy(dto->parties[i], battleSys->parties[i]);

                for (slot = 0; slot < Party_GetCurrentCount(battleSys->parties[i]); slot++) {
                    mon = Party_GetPokemonBySlotIndex(battleSys->parties[i], slot);

                    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                        && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                        && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                        break;
                    }
                }

                BattleContext_Set(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i, slot);
            }
        }
        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
    } else if (battleSys->battleType & BATTLE_TYPE_TAG) {
        int playerSlot;

        for (i = 0; i < MAX_BATTLERS; i++) {
            battlerInitData.battler = i;
            battlerInitData.battlerType = sDoubleBattleBattlerTypes[i];
            battleSys->battlers[i] = BattlerData_New(battleSys, &battlerInitData);
            BattlerData_SetTaskFuncs(battleSys, battleSys->battlers[i]);
        }

        battleSys->maxBattlers = i;

        for (i = 0; i < MAX_BATTLERS; i++) {
            Party_Copy(dto->parties[i], battleSys->parties[i]);
        }

        for (i = 0; i < battleSys->maxBattlers; i++) {
            for (slot = 0; slot < BattleSystem_GetPartyCount(battleSys, i); slot++) {
                mon = BattleSystem_GetPartyPokemon(battleSys, i, slot);

                if (i == BATTLER_PLAYER_2) {
                    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                        && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                        && Pokemon_GetValue(mon, MON_DATA_HP, NULL)
                        && playerSlot != slot) {
                        break;
                    }
                } else {
                    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                        && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                        && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                        break;
                    }
                }
            }

            BattleContext_Set(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i, slot);

            if (i == BATTLER_PLAYER_1) {
                playerSlot = slot;
            }
        }
        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        battleSys->battleInitialized = 1;
    } else if (battleSys->battleType & BATTLE_TYPE_2vs2) {
        for (i = 0; i < MAX_BATTLERS; i++) {
            battlerInitData.battler = i;
            battlerInitData.battlerType = sDoubleBattleBattlerTypes[i];
            battleSys->battlers[i] = BattlerData_New(battleSys, &battlerInitData);
            BattlerData_SetTaskFuncs(battleSys, battleSys->battlers[i]);
        }

        battleSys->maxBattlers = i;

        for (i = 0; i < MAX_BATTLERS; i++) {
            Party_Copy(dto->parties[i], battleSys->parties[i]);
        }

        for (i = 0; i < battleSys->maxBattlers; i++) {
            for (slot = 0; slot < Party_GetCurrentCount(battleSys->parties[i]); slot++) {
                mon = Party_GetPokemonBySlotIndex(battleSys->parties[i], slot);

                if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                    && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                    && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                    break;
                }
            }

            BattleContext_Set(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i, slot);
        }

        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        battleSys->battleInitialized = 1;
    } else if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        for (i = 0; i < MAX_BATTLERS; i++) {
            battlerInitData.battler = i;
            battlerInitData.battlerType = sDoubleBattleBattlerTypes[i];
            battleSys->battlers[i] = BattlerData_New(battleSys, &battlerInitData);
            BattlerData_SetTaskFuncs(battleSys, battleSys->battlers[i]);
        }

        battleSys->maxBattlers = i;

        for (i = 0; i < MAX_BATTLERS; i++) {
            Party_Copy(dto->parties[i], battleSys->parties[i]);
        }

        for (i = 0; i < battleSys->maxBattlers; i++) {
            for (slot = 0; slot < Party_GetCurrentCount(battleSys->parties[i & 1]); slot++) {
                mon = Party_GetPokemonBySlotIndex(battleSys->parties[i & 1], slot);

                if (i > BATTLER_ENEMY_1) {
                    if (BattleContext_Get(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i & 1) != slot
                        && Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                        && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                        && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                        break;
                    }
                } else {
                    if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                        && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                        && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                        break;
                    }
                }
            }

            BattleContext_Set(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i, slot);
        }

        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        battleSys->battleInitialized = 1;
    } else {
        for (i = 0; i < MAX_BATTLERS / 2; i++) {
            battlerInitData.battler = i;
            battlerInitData.battlerType = sSingleBattleBattlerTypes[i];
            battleSys->battlers[i] = BattlerData_New(battleSys, &battlerInitData);
            BattlerData_SetTaskFuncs(battleSys, battleSys->battlers[i]);
        }

        battleSys->maxBattlers = i;

        for (i = 0; i < MAX_BATTLERS; i++) {
            Party_Copy(dto->parties[i], battleSys->parties[i]);

            for (slot = 0; slot < Party_GetCurrentCount(battleSys->parties[i]); slot++) {
                mon = Party_GetPokemonBySlotIndex(battleSys->parties[i], slot);

                if (Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL)
                    && Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE
                    && Pokemon_GetValue(mon, MON_DATA_HP, NULL)) {
                    break;
                }
            }

            BattleContext_Set(battleSys, battleSys->battleCtx, BATTLECTX_SELECTED_PARTY_SLOT, i, slot);
        }

        BattleSystem_InitPartyOrder(battleSys, battleSys->battleCtx);
        battleSys->battleInitialized = 1;
    }

    if (battleSys->battleType & BATTLE_TYPE_PAL_PARK) {
        mon = Party_GetPokemonBySlotIndex(battleSys->parties[BATTLER_ENEMY_1], 0);
        Pokemon_GetValue(mon, MON_DATA_OT_NAME, (u8 *)&battleSys->trainers[BATTLER_ENEMY_1].name);
    }

    if (battleSys->battleType & BATTLE_TYPE_TRAINER) {
        if (TrainerIsGymLeaderE4OrChampion(battleSys->trainers[BATTLER_ENEMY_1].header.trainerType) == TRUE
            || TrainerIsGymLeaderE4OrChampion(battleSys->trainers[BATTLER_ENEMY_2].header.trainerType) == TRUE) {
            for (i = 0; i < Party_GetCurrentCount(battleSys->parties[BATTLER_PLAYER_1]); i++) {
                mon = Party_GetPokemonBySlotIndex(battleSys->parties[BATTLER_PLAYER_1], i);
                Pokemon_UpdateFriendship(mon, FRIENDSHIP_EVENT_BEAT_GYM_LEADER_E4_OR_CHAMPION, battleSys->mapHeader);
            }

            for (i = 0; i < Party_GetCurrentCount(battleSys->parties[BATTLER_PLAYER_2]); i++) {
                mon = Party_GetPokemonBySlotIndex(battleSys->parties[BATTLER_PLAYER_2], i);
                Pokemon_UpdateFriendship(mon, FRIENDSHIP_EVENT_BEAT_GYM_LEADER_E4_OR_CHAMPION, battleSys->mapHeader);
            }
        }
    }
}

static BOOL TrainerIsGymLeaderE4OrChampion(u16 trainerClass)
{
    switch (trainerClass) {
    case TRAINER_CLASS_LEADER_ROARK:
    case TRAINER_CLASS_LEADER_GARDENIA:
    case TRAINER_CLASS_LEADER_WAKE:
    case TRAINER_CLASS_LEADER_MAYLENE:
    case TRAINER_CLASS_LEADER_FANTINA:
    case TRAINER_CLASS_LEADER_CANDICE:
    case TRAINER_CLASS_LEADER_BYRON:
    case TRAINER_CLASS_LEADER_VOLKNER:
    case TRAINER_CLASS_ELITE_FOUR_AARON:
    case TRAINER_CLASS_ELITE_FOUR_BERTHA:
    case TRAINER_CLASS_ELITE_FOUR_FLINT:
    case TRAINER_CLASS_ELITE_FOUR_LUCIAN:
    case TRAINER_CLASS_CHAMPION_CYNTHIA:
        return TRUE;
        break;
    }

    return FALSE;
}

static G3DPipelineBuffers *InitG3DPipelineBuffers(void)
{
    return G3DPipeline_Init(
        HEAP_ID_BATTLE,
        TEXTURE_VRAM_SIZE_256K,
        PALETTE_VRAM_SIZE_32K,
        G3DPipeline_SetupCallback);
}

static void G3DPipeline_SetupCallback(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, G3X_DEPTH_MAX, 63, 0);
    G3_ViewPort(0, 0, HW_LCD_WIDTH - 1, HW_LCD_HEIGHT - 1);
}

static void FreeG3DPipelineBuffers(G3DPipelineBuffers *pipelineBuffers)
{
    G3DPipelineBuffers_Free(pipelineBuffers);
}

static void BattleMain_InitParticleSystem(void)
{
    NNSGfdTexKey texKey = NNS_GfdAllocTexVram(0x2000 * 4, 0, 0);
    NNSGfdPlttKey plttKey = NNS_GfdAllocPlttVram(0x20 * (4 + 2), 0, 0);

    GF_ASSERT(texKey != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    ParticleSystem_ZeroAll();
}

static void BattleMain_VBlankCallback(void *inBattleSys)
{
    BattleSystem *battleSys = inBattleSys;

    if (battleSys->pendingBlendReset) {
        battleSys->pendingBlendReset = 0;
        G2_BlendNone();
        G2S_BlendNone();
    }

    if (battleSys->pendingBattleVRAMSetup) {
        battleSys->pendingBattleVRAMSetup = 0;

        GXBanks banks = {
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

        GXLayers_SetBanks(&banks);
    }

    if (battleSys->pendingSubMenuVRAMSetup) {
        battleSys->pendingSubMenuVRAMSetup = 0;

        GXBanks banks = {
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

        GXLayers_SetBanks(&banks);
    }

    PokemonSpriteManager_UpdateCharAndPltt(battleSys->monSpriteMan);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(battleSys->paletteData);
    Bg_RunScheduledUpdates(battleSys->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void BattleMain_LinkCommVBlankCallback(void *commState)
{
    LinkBattleCommState *linkBattleCommState = commState;

    PaletteData_CommitFadedBuffers(linkBattleCommState->paletteData);
    VramTransfer_Process();
    Bg_RunScheduledUpdates(linkBattleCommState->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SysTask_DrawSprites(SysTask *task, void *inBattleSys)
{
    BattleSystem *battleSys = inBattleSys;

    CommManager_deadstripped_02038A1C(HEAP_ID_BATTLE, battleSys->bgConfig);

    if (battleSys->renderMode == 0 || battleSys->renderMode == 3) {
        if (battleSys->renderMode == 0) {
            ParticleHelper_DrawParticleSystems();
        }

        PokemonSpriteManager_DrawSprites(battleSys->monSpriteMan);
        SpriteSystem_DrawSprites(battleSys->spriteMan);
        SpriteSystem_UpdateTransfer();
        G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
    }
}

static void SysTask_UpdateRedHPSound(SysTask *task, void *inBattleSys)
{
    BattleSystem *battleSys = inBattleSys;
    BattlerData *battlerData;
    HealthBox *healthbox;

    int maxBattlers = BattleSystem_GetMaxBattlers(battleSys);
    int flags = 0;
    int redHPSoundFlag = BattleSystem_GetRedHPSoundFlag(battleSys);

    if (BattleSystem_GetBattleType(battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    if (redHPSoundFlag & 2) {
        if (redHPSoundFlag & 1) {
            Sound_StopEffect(SEQ_SE_DP_HINSI, 0);
            BattleSystem_SetRedHPSoundFlag(battleSys, 2);
        }

        return;
    }

    for (int i = 0; i < maxBattlers; i++) {
        battlerData = BattleSystem_GetBattlerData(battleSys, i);

        if ((BattlerData_GetBootState(battlerData) == BATTLER_BOOT_STATE_NORMAL && (BattleSystem_GetBattleStatusMask(battleSys) & BATTLE_STATUS_RECORDING) == FALSE)
            || (BattleSystem_GetBattlerSide(battleSys, i) == BATTLER_US && BattleSystem_GetBattleStatusMask(battleSys) & BATTLE_STATUS_RECORDING)) {
            healthbox = BattlerData_GetHealthBox(battlerData);

            if (healthbox != NULL) {
                if (HealthBar_Color(healthbox->curHP, healthbox->maxHP, 8 * 6) == BARCOLOR_RED) {
                    flags |= FlagIndex(i);
                }
            }
        }
    }

    if (flags && BattleSystem_GetRedHPSoundFlag(battleSys) == FALSE) {
        Sound_PlayEffect(SEQ_SE_DP_HINSI);
        BattleSystem_SetRedHPSoundFlag(battleSys, 1);
        BattleSystem_SetRedHPSoundEffectDelay(battleSys, 4);
    } else if (flags == 0 && BattleSystem_GetRedHPSoundFlag(battleSys)) {
        Sound_StopEffect(SEQ_SE_DP_HINSI, 0);
        BattleSystem_SetRedHPSoundFlag(battleSys, 0);
    }

    if (BattleSystem_GetRedHPSoundFlag(battleSys)) {
        int delay = BattleSystem_GetRedHPSoundEffectDelay(battleSys);

        if (Sound_IsEffectPlaying(SEQ_SE_DP_HINSI) == FALSE) {
            if (--delay == 0) {
                Sound_PlayEffect(SEQ_SE_DP_HINSI);
                BattleSystem_SetRedHPSoundEffectDelay(battleSys, 4);
            } else {
                BattleSystem_SetRedHPSoundEffectDelay(battleSys, delay);
            }
        }
    }
}

static void SysTask_FlyInMessageBox(SysTask *task, void *inBattleSys)
{
    BattleSystem *battleSys = inBattleSys;

    battleSys->yOffset += 3;
    Bg_SetOffset(battleSys->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, battleSys->yOffset);

    if (battleSys->yOffset == 0) {
        SysTask_Done(task);
    }
}

static void NitroStaticInit(void)
{
    if (!CommManager_IsConnectedToWifi()) {
        Overlay_LoadByID(FS_OVERLAY_ID(pokedex), OVERLAY_LOAD_ASYNC);
    }
}

static void BattleMain_InitLinkCommScreen(ApplicationManager *appMan, FieldBattleDTO *dto)
{
    LinkBattleCommState *linkBattleCommState = ApplicationManager_NewData(appMan, sizeof(LinkBattleCommState), HEAP_ID_BATTLE);

    linkBattleCommState->dto = dto;
    linkBattleCommState->recvCount = 0;
    linkBattleCommState->handshakeStep = 0;
    linkBattleCommState->syncTimer = 0;
    linkBattleCommState->paletteData = PaletteData_New(HEAP_ID_BATTLE);

    PaletteData_SetAutoTransparent(linkBattleCommState->paletteData, 1);
    PaletteData_AllocBuffer(linkBattleCommState->paletteData, 0, 0x200, HEAP_ID_BATTLE);
    PaletteData_FillBufferRange(linkBattleCommState->paletteData, 0, 2, 0, 0, 256);

    linkBattleCommState->bgConfig = BgConfig_New(HEAP_ID_BATTLE);
    linkBattleCommState->window = Window_New(HEAP_ID_BATTLE, 1);

    sub_0207A744(linkBattleCommState);
    GXLayers_DisableEngineALayers();

    GXBanks banks = {
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

    GXLayers_SetBanks(&banks);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    MI_CpuFill16((void *)HW_BG_PLTT, 0, HW_BG_PLTT_SIZE);

    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplate = {
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

    Bg_InitFromTemplate(linkBattleCommState->bgConfig, BG_LAYER_MAIN_1, &bgTemplate, 0);
    Bg_ClearTilemap(linkBattleCommState->bgConfig, BG_LAYER_MAIN_1);

    int frame = Options_Frame(dto->options);

    ReplaceTransparentTiles(linkBattleCommState->bgConfig, 1, 1, 10, frame, HEAP_ID_BATTLE);
    PaletteData_LoadBufferFromFileStart(linkBattleCommState->paletteData, 14, 7, HEAP_ID_BATTLE, 0, PALETTE_SIZE_BYTES, 0xB * 0x10);
    PaletteData_LoadBufferFromFileStart(linkBattleCommState->paletteData, 38, GetMessageBoxPaletteNARCMember(frame), HEAP_ID_BATTLE, 0, PALETTE_SIZE_BYTES, 10 * 0x10);
    PaletteData_FillBufferRange(linkBattleCommState->paletteData, 0, 0, 0, 0, 256);

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    Window_Add(linkBattleCommState->bgConfig, linkBattleCommState->window, 1, 2, 0x13, 27, 4, 11, (18 + 12) + 1);
    Window_FillTilemap(linkBattleCommState->window, 0xFF);
    Window_DrawMessageBoxWithScrollCursor(linkBattleCommState->window, 0, 1, 10);

    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_STRINGS, HEAP_ID_BATTLE);
    String *string = String_Init(0x100, HEAP_ID_BATTLE);

    MessageLoader_GetString(msgLoader, BattleStrings_Text_CommunicatingPleaseStandBy, string);
    Text_AddPrinterWithParams(linkBattleCommState->window, FONT_MESSAGE, string, 0, 0, NULL, NULL);

    String_Free(string);
    MessageLoader_Free(msgLoader);

    SetVBlankCallback(BattleMain_LinkCommVBlankCallback, linkBattleCommState);
    PaletteData_StartFade(linkBattleCommState->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xFFFF, 0, 16, 0, 0);

    linkBattleCommState->waitDial = Window_AddWaitDial(linkBattleCommState->window, 1);

    BattleMain_SetNetworkIconStrength();
}

static BOOL BattleMain_HandleLinkCommHandshake(ApplicationManager *appMan)
{
    LinkBattleCommState *linkBattleCommState = ApplicationManager_Data(appMan);

    CommManager_deadstripped_02038A1C(HEAP_ID_BATTLE, linkBattleCommState->bgConfig);

    BOOL result = 0;

    switch (linkBattleCommState->handshakeStep) {
    case 0:
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        sub_02036378(1);
        linkBattleCommState->handshakeStep++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(linkBattleCommState->paletteData) == 0) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 2:
        CommTiming_StartSync(50);
        linkBattleCommState->handshakeStep++;
        break;
    case 3:
        if (CommTiming_IsSyncState(50)) {
            CommTiming_StartSync(51);
            linkBattleCommState->syncTimer = 0;
            linkBattleCommState->handshakeStep++;
        } else {
            linkBattleCommState->syncTimer++;

            if (linkBattleCommState->syncTimer > (60 * 30)) {
                CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);
            }
        }
        break;
    case 4:
        if (sub_0207A8F4(linkBattleCommState, BattleServerVersion) == 1) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 6:
        if (sub_0207A960(linkBattleCommState) == TRUE) {
            CommTiming_StartSync(52);
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 7:
        if (sub_0207A988(linkBattleCommState) == TRUE) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 9:
        if (sub_0207A9CC(linkBattleCommState) == TRUE) {
            CommTiming_StartSync(53);
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 10:
        if (sub_0207A9F8(linkBattleCommState) == TRUE) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 12:
        if (sub_0207AA38(linkBattleCommState) == TRUE) {
            CommTiming_StartSync(54);
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 13:
        if (sub_0207AA5C(linkBattleCommState) == TRUE) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 15:
        if (sub_0207AAA0(linkBattleCommState) == TRUE) {
            CommTiming_StartSync(55);
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 16:
        if (sub_0207AAC8(linkBattleCommState) == TRUE) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 18:
        if (sub_0207AAFC(linkBattleCommState) == TRUE) {
            CommTiming_StartSync(56);
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 19:
        if (sub_0207AB58(linkBattleCommState) == TRUE) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 21:
        if ((linkBattleCommState->dto->battleType & BATTLE_TYPE_FRONTIER) == 0) {
            linkBattleCommState->handshakeStep = 33;
        } else {
            if (CommSys_CurNetId()) {
                CommTiming_StartSync(57);
                linkBattleCommState->handshakeStep++;
            } else if (sub_0207AB9C(linkBattleCommState, 1) == TRUE) {
                CommTiming_StartSync(57);
                linkBattleCommState->handshakeStep++;
            }
        }
        break;
    case 22:
        linkBattleCommState->recvCount = 1;

        if (CommSys_CurNetId()) {
            if (CommTiming_IsSyncState(57) == TRUE) {
                linkBattleCommState->handshakeStep++;
            }
        } else if (sub_0207ABD0(linkBattleCommState, 1, 57) == TRUE) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 24:
        if (CommSys_CurNetId()) {
            CommTiming_StartSync(58);
            linkBattleCommState->handshakeStep++;
        } else if (sub_0207AB9C(linkBattleCommState, 3) == TRUE) {
            CommTiming_StartSync(58);
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 25:
        linkBattleCommState->recvCount = 1;

        if (CommSys_CurNetId()) {
            if (CommTiming_IsSyncState(58) == TRUE) {
                linkBattleCommState->handshakeStep++;
            }
        } else if (sub_0207ABD0(linkBattleCommState, 3, 58) == TRUE) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 27:
        if (CommSys_CurNetId()) {
            CommTiming_StartSync(59);
            linkBattleCommState->handshakeStep++;
        } else if (sub_0207AC28(linkBattleCommState, 1) == TRUE) {
            CommTiming_StartSync(59);
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 28:
        linkBattleCommState->recvCount = 1;

        if (CommSys_CurNetId()) {
            if (CommTiming_IsSyncState(59) == TRUE) {
                linkBattleCommState->handshakeStep++;
            }
        } else if (sub_0207AC54(linkBattleCommState, 1, 59) == TRUE) {
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 30:
        if (CommSys_CurNetId()) {
            CommTiming_StartSync(60);
            linkBattleCommState->handshakeStep++;
        } else if (sub_0207AC28(linkBattleCommState, 3) == TRUE) {
            CommTiming_StartSync(60);
            linkBattleCommState->handshakeStep++;
        }
        break;
    case 31:
        linkBattleCommState->recvCount = 1;

        if (CommSys_CurNetId()) {
            if (CommTiming_IsSyncState(60) == TRUE) {
                linkBattleCommState->handshakeStep++;
            }
        } else if (sub_0207AC54(linkBattleCommState, 3, 60) == TRUE) {
            linkBattleCommState->handshakeStep++;
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
        if (linkBattleCommState->recvCount == CommSys_ConnectedCount()) {
            if (linkBattleCommState->handshakeStep == 20) {
                int i;

                for (i = 0; i < 4; i++) {
                    Heap_Free(linkBattleCommState->palPad[i]);
                }
            }

            linkBattleCommState->recvCount = 0;
            linkBattleCommState->syncTimer = 0;
            linkBattleCommState->handshakeStep++;

            if (linkBattleCommState->handshakeStep == 33) {
                PaletteData_StartFade(linkBattleCommState->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xFFFF, 0, 0, 16, 0);
            }
        } else {
            linkBattleCommState->syncTimer++;

            if (linkBattleCommState->syncTimer > (60 * 30)) {
                CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);
            }
        }
        break;
    case 33:
        if (PaletteData_GetSelectedBuffersMask(linkBattleCommState->paletteData) == 0) {
            result = 1;
            DestroyWaitDial(linkBattleCommState->waitDial);
            sub_02036378(0);
        }
        break;
    }

    return result;
}

static void BattleMain_FreeeLinkCommScreen(ApplicationManager *appMan)
{
    LinkBattleCommState *linkBattleCommState = ApplicationManager_Data(appMan);

    SetVBlankCallback(NULL, NULL);
    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    PaletteData_FreeBuffer(linkBattleCommState->paletteData, 0);
    PaletteData_Free(linkBattleCommState->paletteData);
    Windows_Delete(linkBattleCommState->window, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    Bg_FreeTilemapBuffer(linkBattleCommState->bgConfig, BG_LAYER_MAIN_1);
    Heap_Free(linkBattleCommState->bgConfig);
    Heap_Free(linkBattleCommState);
}

static BOOL BattleMain_InitPartnerIntro(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_NewData(appMan, sizeof(BattleSystem), HEAP_ID_BATTLE);
    FieldBattleDTO *dto = ApplicationManager_Args(appMan);
    u8 netID;

    MI_CpuClearFast(battleSys, sizeof(BattleSystem));
    BattleSys_New(battleSys, dto);

    if ((battleSys->battleType & BATTLE_TYPE_LINK) == FALSE
        || battleSys->battleStatusMask & BATTLE_STATUS_RECORDING
        || battleSys->battleType & BATTLE_TYPE_FRONTIER) {
        NetworkIcon_Destroy();
        return FALSE;
    }

    Overlay_LoadByID(FS_OVERLAY_ID(overlay10), OVERLAY_LOAD_ASYNC);

    if ((battleSys->battleType & BATTLE_TYPE_2vs2) == FALSE) {
        return FALSE;
    }

    battleSys->trainerIntroData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(TrainerIntroData));
    MI_CpuClearFast(battleSys->trainerIntroData, sizeof(TrainerIntroData));
    netID = CommSys_CurNetId();

    switch (sub_020362F4(netID)) {
    case 0:
    case 3:
        battleSys->trainerIntroData->party[0] = battleSys->parties[netID];
        battleSys->trainerIntroData->party[2] = battleSys->parties[BattleSystem_GetPartner(battleSys, netID)];
        break;
    case 1:
    case 2:
        battleSys->trainerIntroData->party[0] = battleSys->parties[BattleSystem_GetPartner(battleSys, netID)];
        battleSys->trainerIntroData->party[2] = battleSys->parties[netID];
        break;
    }

    battleSys->trainerIntroData->heapID = HEAP_ID_BATTLE;
    battleSys->trainerIntroData->mode = 0;

    switch (sub_020362F4(netID)) {
    case 0:
    case 3:
        battleSys->trainerIntroData->playerSide = 0;
        break;
    case 1:
    case 2:
        battleSys->trainerIntroData->playerSide = 1;
        break;
    }

    ov10_0221F800(battleSys->trainerIntroData);

    return TRUE;
}

static BOOL BattleMain_WaitPartnerIntro(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);

    if (battleSys->trainerIntroData->isDone) {
        for (int i = 0; i < 4; i++) {
            if (battleSys->trainerIntroData->trainerNames[i] != NULL) {
                Heap_Free(battleSys->trainerIntroData->trainerNames[i]);
            }
        }

        Heap_Free(battleSys->trainerIntroData);
        return TRUE;
    }

    return FALSE;
}

static BOOL BattleMain_InitTrainerIntro(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);
    FieldBattleDTO *dto = ApplicationManager_Args(appMan);

    if ((battleSys->battleType & BATTLE_TYPE_LINK) == FALSE
        || battleSys->battleStatusMask & BATTLE_STATUS_RECORDING
        || battleSys->battleType & BATTLE_TYPE_FRONTIER) {
        NetworkIcon_Destroy();
        return FALSE;
    }

    u8 netID = CommSys_CurNetId();
    battleSys->trainerIntroData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(TrainerIntroData));

    MI_CpuClearFast(battleSys->trainerIntroData, sizeof(TrainerIntroData));

    if (battleSys->battleType & BATTLE_TYPE_2vs2) {
        for (int i = 0; i < MAX_BATTLERS; i++) {
            battleSys->trainerIntroData->party[sub_020362F4(i)] = battleSys->parties[i];
            battleSys->trainerIntroData->trainerNames[sub_020362F4(i)] = TrainerInfo_NameNewString(battleSys->trainerInfo[i], HEAP_ID_BATTLE);
        }

        battleSys->trainerIntroData->heapID = HEAP_ID_BATTLE;
        battleSys->trainerIntroData->mode = 1;
        battleSys->trainerIntroData->playerSide = 1;
    } else {
        battleSys->trainerIntroData->party[sub_020362F4(netID)] = battleSys->parties[netID];
        battleSys->trainerIntroData->party[sub_020362F4(netID ^ 1)] = battleSys->parties[netID ^ 1];
        battleSys->trainerIntroData->trainerNames[sub_020362F4(netID)] = TrainerInfo_NameNewString(battleSys->trainerInfo[netID], HEAP_ID_BATTLE);
        battleSys->trainerIntroData->trainerNames[sub_020362F4(netID ^ 1)] = TrainerInfo_NameNewString(battleSys->trainerInfo[netID ^ 1], HEAP_ID_BATTLE);
        battleSys->trainerIntroData->heapID = HEAP_ID_BATTLE;
        battleSys->trainerIntroData->mode = 1;
        battleSys->trainerIntroData->playerSide = 0;
    }

    ov10_0221F800(battleSys->trainerIntroData);

    return TRUE;
}

static BOOL BattleMain_WaitTrainerIntro(ApplicationManager *appMan)
{
    BattleSystem *battleSys = ApplicationManager_Data(appMan);

    if (battleSys->trainerIntroData->isDone) {
        for (int i = 0; i < 4; i++) {
            if (battleSys->trainerIntroData->trainerNames[i] != NULL) {
                Heap_Free(battleSys->trainerIntroData->trainerNames[i]);
            }
        }

        Heap_Free(battleSys->trainerIntroData);
        return TRUE;
    }

    return FALSE;
}

static BOOL BattleMain_HandleLinkBattleResult(ApplicationManager *appMan)
{
    FieldBattleDTO *dto = ApplicationManager_Args(appMan);

    if ((dto->battleType & BATTLE_TYPE_LINK) == FALSE
        || dto->battleStatusMask & BATTLE_STATUS_RECORDING
        || dto->battleType & BATTLE_TYPE_FRONTIER) {
        return FALSE;
    }

    u8 netID = CommSys_CurNetId();
    Overlay_LoadByID(FS_OVERLAY_ID(overlay10), OVERLAY_LOAD_ASYNC);
    TrainerIntroData *trainerIntroData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(TrainerIntroData));

    dto->unk_170 = trainerIntroData;
    MI_CpuClearFast(trainerIntroData, sizeof(TrainerIntroData));
    trainerIntroData->dto = dto;

    switch (dto->resultMask) {
    case BATTLE_RESULT_WIN:
        if (!CommManager_IsConnectedToWifi()) {
            GameRecords_IncrementRecordValue(dto->records, RECORD_LOCAL_LINK_BATTLE_WINS);
        } else {
            GameRecords_IncrementRecordValue(dto->records, RECORD_WIFI_BATTLE_WINS);
        }
        break;
    case BATTLE_RESULT_LOSE:
        if (!CommManager_IsConnectedToWifi()) {
            GameRecords_IncrementRecordValue(dto->records, RECORD_LOCAL_LINK_BATTLE_LOSSES);
        } else {
            GameRecords_IncrementRecordValue(dto->records, RECORD_WIFI_BATTLE_LOSSES);
        }
        break;
    case BATTLE_RESULT_DRAW:
    case BATTLE_RESULT_PLAYER_FLED:
        if (!CommManager_IsConnectedToWifi()) {
            GameRecords_IncrementRecordValue(dto->records, RECORD_UNK_023);
        } else {
            GameRecords_IncrementRecordValue(dto->records, RECORD_UNK_028);
        }
        break;
    }

    if (dto->battleType & BATTLE_TYPE_2vs2) {
        for (int i = 0; i < MAX_BATTLERS; i++) {
            trainerIntroData->party[sub_020362F4(i)] = dto->parties[i];
            trainerIntroData->trainerNames[sub_020362F4(i)] = TrainerInfo_NameNewString(dto->trainerInfo[i], HEAP_ID_BATTLE);
        }

        trainerIntroData->heapID = HEAP_ID_BATTLE;
        trainerIntroData->mode = 2;
        trainerIntroData->playerSide = 1;

        if (dto->resultMask != BATTLE_RESULT_PLAYER_FLED) {
            trainerIntroData->battleResult = dto->resultMask;
        } else {
            trainerIntroData->battleResult = 3;
        }
    } else {
        trainerIntroData->party[sub_020362F4(netID)] = dto->parties[netID];
        trainerIntroData->party[sub_020362F4(netID ^ 1)] = dto->parties[netID ^ 1];
        trainerIntroData->trainerNames[sub_020362F4(netID)] = TrainerInfo_NameNewString(dto->trainerInfo[netID], HEAP_ID_BATTLE);
        trainerIntroData->trainerNames[sub_020362F4(netID ^ 1)] = TrainerInfo_NameNewString(dto->trainerInfo[netID ^ 1], HEAP_ID_BATTLE);
        trainerIntroData->heapID = HEAP_ID_BATTLE;
        trainerIntroData->mode = 2;
        trainerIntroData->playerSide = 0;

        if (dto->resultMask != BATTLE_RESULT_PLAYER_FLED) {
            trainerIntroData->battleResult = dto->resultMask;
        } else {
            trainerIntroData->battleResult = 3;
        }
    }

    trainerIntroData->recordingType = dto->unk_18A;

    ov10_0221F800(trainerIntroData);

    return TRUE;
}

static BOOL BattleMain_WaitLinkBattleEnd(ApplicationManager *appMan)
{
    FieldBattleDTO *dto = ApplicationManager_Args(appMan);
    TrainerIntroData *trainerIntroData = dto->unk_170;

    if (trainerIntroData->isDone) {
        for (int i = 0; i < 4; i++) {
            if (trainerIntroData->trainerNames[i] != NULL) {
                Heap_Free(trainerIntroData->trainerNames[i]);
            }
        }

        Heap_Free(trainerIntroData);
        return TRUE;
    }

    return FALSE;
}

static void BattleSys_SetRenderControlFlags(BattleSystem *battleSys)
{
    if ((battleSys->battleType & (BATTLE_TYPE_LINK | BATTLE_TYPE_CATCH_TUTORIAL))
        || battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) {
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_ENABLED);
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    } else {
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_NO_WAIT);
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetSpeedUpOnTouch(TRUE);
    }
}

static void BattleMain_AssignRecordingRoles(BattleSystem *battleSys, FieldBattleDTO *dto)
{
    int i, j, temp;
    int netIDs[4];
    int versions[4];

    if (battleSys->battleStatusMask & BATTLE_STATUS_RECORDING) {
        battleSys->battleInitialized = 1;
        return;
    }

    for (i = 0; i < 4; i++) {
        netIDs[i] = i;
        versions[i] = dto->systemVersion[i];
    }

    int netID = CommSys_CurNetId();
    int connectedCount = CommSys_ConnectedCount();

    for (i = 0; i < connectedCount - 1; i++) {
        for (j = i + 1; j < connectedCount; j++) {
            if (versions[i] < versions[j]) {
                temp = netIDs[i];
                netIDs[i] = netIDs[j];
                netIDs[j] = temp;
                temp = versions[i];
                versions[i] = versions[j];
                versions[j] = temp;
            }
        }
    }

    if (netIDs[0] == netID) {
        battleSys->battleInitialized = 1;
    } else {
        if ((battleSys->battleType & BATTLE_TYPE_FRONTIER) == FALSE) {
            if (battleSys->battleType & BATTLE_TYPE_2vs2) {
                temp = sub_020362F4(netID);

                switch (sub_020362F4(netIDs[0])) {
                case 0:
                case 2:
                    if (temp & 1) {
                        battleSys->battleStatusMask |= BATTLE_STATUS_RECORDED;
                    }
                    break;
                case 1:
                case 3:
                    if ((temp & 1) == 0) {
                        battleSys->battleStatusMask |= BATTLE_STATUS_RECORDED;
                    }
                    break;
                }
            } else {
                battleSys->battleStatusMask |= BATTLE_STATUS_RECORDED;
            }
        }
    }
}

static void BattleMain_SetNetworkIconStrength(void)
{
    NetworkIcon_Init();

    if (CommManager_IsConnectedToWifi()) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - DWC_GetLinkLevel());
    } else if (CommServerClient_IsInitialized()) {
        NetworkIcon_SetStrength(WM_LINK_LEVEL_3 - WM_GetLinkLevel());
    }
}
