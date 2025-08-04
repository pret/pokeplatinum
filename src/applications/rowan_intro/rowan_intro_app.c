#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "generated/genders.h"

#include "struct_decls/struct_02015920_decl.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_02099F80.h"

#include "applications/rowan_intro/main.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "font.h"
#include "game_options.h"
#include "game_start.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
#include "main.h"
#include "message.h"
#include "overlay_manager.h"
#include "palette.h"
#include "pokemon.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "text_banks.h"
#include "trainer_info.h"
#include "unk_020131EC.h"
#include "unk_0201567C.h"
#include "unk_02015920.h"
#include "unk_0208694C.h"

#include "constdata/const_020F2DAC.h"
#include "res/text/bank/rowan_intro.h"

FS_EXTERN_OVERLAY(game_start);

enum RowanIntroState {
    RI_STATE_FIRST_FADE_BLACK_START = 0,
    RI_STATE_FIRST_FADE_BLACK_END,
    RI_STATE_DIALOGUE_WELCOME,
    RI_STATE_FADE_IN_ROWAN_START,
    RI_STATE_FADE_IN_ROWAN_END,
    RI_STATE_DIALOGUE_ROWAN_INTRO,
    RI_STATE_MOVE_ROWAN_RIGHT_FOR_INFO,
    RI_STATE_INFO_CHOICE_BOX,
    RI_STATE_INFO_FADE_BLACK_START,
    RI_STATE_INFO_FADE_BLACK_END,
    RI_STATE_CONTROL_INFO_FADE_IN_START,
    RI_STATE_CONTROL_INFO_FADE_IN_END,
    RI_STATE_CONTROL_INFO_TEXT_0,
    RI_STATE_CONTROL_INFO_SHOW_XY_ICONS,
    RI_STATE_CONTROL_INFO_TEXT_1,
    RI_STATE_CONTROL_INFO_HIDE_XY_ICONS,
    RI_STATE_CONTROL_INFO_TEXT_2,
    RI_STATE_CONTROL_INFO_DIALOGUE_DS_ICON,
    RI_STATE_CONTROL_INFO_TEXT_3,
    RI_STATE_CONTROL_INFO_HIDE_FG,
    RI_STATE_CONTROL_INFO_DIALOGUE_UNDERSTOOD,
    RI_STATE_CONTROL_INFO_SHOW_YESNO,
    RI_STATE_CONTROL_INFO_WAIT_INPUT,
    RI_STATE_CONTROL_INFO_PROCESS_YESNO,
    RI_STATE_CONTROL_INFO_FADE_OUT_START,
    RI_STATE_CONTROL_INFO_FADE_OUT_END,
    RI_STATE_CONTROL_INFO_REPEAT,
    RI_STATE_CONTROL_INFO_DIALOGUE_USE_TOUCHSCREEN,
    RI_STATE_FADE_IN_ROWAN_2_START,
    RI_STATE_FADE_IN_ROWAN_2_END,
    RI_STATE_DIALOGUE_ANOTHER_INFO,
    RI_STATE_ADVENTURE_INFO_FADE_IN_START,
    RI_STATE_ADVENTURE_INFO_FADE_IN_END,
    RI_STATE_ADVENTURE_INFO_TEXT_0,
    RI_STATE_ADVENTURE_INFO_TEXT_1,
    RI_STATE_ADVENTURE_INFO_TEXT_2,
    RI_STATE_ADVENTURE_INFO_TEXT_3,
    RI_STATE_ADVENTURE_INFO_TEXT_4,
    RI_STATE_ADVENTURE_INFO_TEXT_5,
    RI_STATE_ADVENTURE_INFO_FADE_OUT_START,
    RI_STATE_ADVENTURE_INFO_FADE_OUT_END,
    RI_STATE_LEFT_ROWAN_AFTER_INFO,
    RI_STATE_DIALOGUE_WIDELY_INHABITED,
    RI_STATE_PKBL_FADE_START,
    RI_STATE_PKBL_FADE_MIDDLE,
    RI_STATE_PKBL_FADE_END,
    RI_STATE_PKBL_DIALOGUE,
    RI_STATE_PKBL_WAIT_INPUT,
    RI_STATE_PKBL_ANIM_PUSH_IN,
    RI_STATE_PKBL_DIALOGUE_USE_TOUCHSCREEN,
    RI_STATE_PKBL_ANIM_FLASH_0,
    RI_STATE_PKBL_ANIM_FLASH_1,
    RI_STATE_PKBL_ANIM_FLASH_2,
    RI_STATE_PKBL_ANIM_FLASH_3,
    RI_STATE_PKBL_ANIM_SPAWN_PKM_AND_FLASH_4,
    RI_STATE_PKBL_ANIM_MV_PKM_UP_AND_FLASH_END,
    RI_STATE_PKBL_ANIM_MV_PKM_DOWN_AND_BOUNCE,
    RI_STATE_PKBL_ANIM_END_DELAY,
    RI_STATE_PKBL_DIALOGUE_LIVE_ALONGSIDE,
    RI_STATE_PKBL_PUT_AWAY_PKM,
    RI_STATE_BETWEEN_DIALOGUE_DELAY,
    RI_STATE_DIALOGUE_ABOUT_YOURSELF,
    RI_STATE_GENDR_FADE_OUT_ROWAN,
    RI_STATE_GENDR_FADE_IN_AVATAR_PREP,
    RI_STATE_GENDR_FADE_IN_AVATAR_MALE,
    RI_STATE_GENDR_FADE_IN_AVATAR_FEMALE,
    RI_STATE_GENDR_DIALOGUE,
    RI_STATE_GENDR_CHOICE,
    RI_STATE_GENDR_FADE_OUT_AVATAR_FEMALE,
    RI_STATE_GENDR_CENTRE_AVATAR_MALE,
    RI_STATE_GENDR_FADE_OUT_AVATAR_MALE,
    RI_STATE_GENDR_CENTRE_AVATAR_FEMALE,
    RI_STATE_GENDR_CONFIRM_DIALOGUE,
    RI_STATE_GENDR_CONFIRM_CHOICE_BOX,
    RI_STATE_GENDR_REPEAT,
    RI_STATE_NAME_DIALOGUE,
    RI_STATE_NAME_APP_KEYBOARD,
    RI_STATE_NAME_KEYBOARD,
    RI_STATE_NAME_KEYBOARD_FADE_INTO_AVATAR,
    RI_STATE_NAME_CONFIRM_DIALOGUE,
    RI_STATE_NAME_CONFIRM_CHOICE_BOX,
    RI_STATE_NAME_FADE_OUT_AVATAR,
    RI_STATE_LOAD_ROWAN_TILEMAP_0,
    RI_STATE_FADE_IN_ROWAN_AFTER_NAME,
    RI_STATE_DIALOGUE_SO_YOURE,
    RI_STATE_FADE_OUT_ROWAN_FOR_RIVAL,
    RI_STATE_LOAD_RIVAL_TILEMAP,
    RI_STATE_FADE_IN_RIVAL,
    RI_STATE_RIVAL_NAME_DIALOGUE,
    RI_STATE_MOVE_RIVAL_RIGHT_FOR_NAMES,
    RI_STATE_RIVAL_NAME_CHOICE_BOX,
    RI_STATE_MOVE_RIVAL_LEFT_AFTER_NAME,
    RI_STATE_RIVAL_NAME_APP_KEYBOARD,
    RI_STATE_RIVAL_NAME_KEYBOARD,
    RI_STATE_RIVAL_NAME_KEYBOARD_FADE_INTO_AVATAR,
    RI_STATE_RIVAL_NAME_CONFIRM_DIALOGUE,
    RI_STATE_RIVAL_NAME_CONFIRM_CHOICE_BOX,
    RI_STATE_FADE_OUT_RIVAL,
    RI_STATE_LOAD_ROWAN_TILEMAP_1,
    RI_STATE_FADE_IN_ROWAN_AFTER_RIVAL,
    RI_STATE_DELAY_BEFORE_END_0,
    RI_STATE_DIALOGUE_END,
    RI_STATE_FADE_OUT_ROWAN_END,
    RI_STATE_DELAY_BEFORE_END_1,
    RI_STATE_LOAD_MINI_AVATAR,
    RI_STATE_FADE_IN_AVATAR_END,
    RI_STATE_DELAY_BEFORE_END_2,
    RI_STATE_AVATAR_SHRINK_ANIMATION,
    RI_STATE_END,
    RI_STATE_EXIT,
};

enum RowanIntroAppState {
    RI_APP_STATE_INIT = 0,
    RI_APP_STATE_RUNNING,
    RI_APP_STATE_EXIT,
    RI_APP_STATE_CHANGE_APP_WAIT_FADE,
    RI_APP_STATE_CHANGE_APP,
    RI_APP_STATE_INIT_AGAIN,
};

enum MoveBgLayerCases {
    MBL_CASE_CENTRE_AVATAR = 0,
    MBL_CASE_MOVE_RIGHT,
    MBL_CASE_MOVE_LEFT,
};

enum FadeBgLayerState {
    FBL_STATE_INIT = 0,
    FBL_STATE_FADE_IN,
    FBL_STATE_FADE_OUT,
    FBL_STATE_END,
};

enum DisplayMessageState {
    DM_STATE_INIT = 0,
    DM_STATE_PRINT,
    DM_STATE_END,
};

enum BunearyAnimState {
    BA_STATE_INIT = 0,
    BA_STATE_MOVE_UP_BOTTOM_SCREEN,
    BA_STATE_SHOW_ON_TOP_SCREEN,
    BA_STATE_JUMP_UP_AND_DOWN,
    BA_STATE_JUMP_RIGHT,
    BA_STATE_JUMP_LEFT,
    BA_STATE_END,
};

enum ChoicesCase {
    CC_YESNO = 0,
    CC_INFO,
    CC_RIVAL_NAMES,
};

enum DisplayTextBlockCase {
    DTBC_CONTROL_INFO_0 = 0,
    DTBC_ADVENTURE_INFO,
    DTBC_CONTROL_INFO_1,
};

enum DisplayTextBlockState {
    DTB_STATE_INIT = 0,
    DTB_STATE_COPY_WINDOW_TO_VRAM,
    DTB_STATE_FADE_IN_TEXT,
    DTB_STATE_WAIT_FOR_INPUT,
    DTB_STATE_FADE_OUT_TEXT,
    DTB_STATE_EXIT,
};

typedef struct RowanIntro {
    enum HeapId heapID;
    SaveData *saveData;
    Options *options;
    enum RowanIntroState state;
    enum RowanIntroState bufferedState;
    ApplicationManager *appMan;
    BgConfig *bgConfig;
    Window textWindow;
    int choiceBoxState;
    Window choiceBoxWindow;
    ListMenu *listMenu;
    StringList *choices;
    int playerChoice;
    MessageLoader *msgLoader;
    enum DisplayMessageState displayMessageState;
    enum DisplayTextBlockState displayTextBlockState;
    int textPrinterID;
    Strbuf *strbuf;
    UnkStruct_020157E4 *unk_60;
    StringTemplate *strFormatter;
    UnkStruct_02015920 *unk_68;
    SysTask *unused;
    UnkStruct_0208737C *unk_70;
    UnkStruct_0208737C *unk_74;
    enum FadeBgLayerState fadeBgLayerState;
    int fadeBgLayerCurAlpha;
    int fadeBgLayerCurAlphaInv;
    enum Gender playerGender;
    // This is an index into the tilemapLocations structure in RowanIntro_LoadLayer3Tilemap
    u8 bgLayer3TilemapIndex;
    // These are indices into the tilemapLocations structure in RowanIntro_LoadTilemap.
    u8 bgLayer1TilemapIndex;
    u8 bgLayer2TilemapIndex;
    // This is an index into the tilemapLocations structure in RowanIntro_LoadSubLayer3Tilemap
    u8 bgSubLayer3TilemapIndex;
    u8 maleRunAnimSpriteIndex;
    u8 maleRunAnimUpdateCounter;
    u8 femaleRunAnimSpriteIndex;
    u8 femaleRunAnimUpdateCounter;
    int delayUpdateCounter;
    union {
        int progressCounter;
        enum BunearyAnimState bunearyAnimState;
    } animData;
    int animDelayUpdateCounter;
    int unused2[3];
    int bunearyAnimCarryover;
    int bunearyParabolaCoeff;
    int bunearyAnimUpdateCounter;
    int bunearyPaletteBlendUpdateCounter;
    u16 *bunearyPalette;
    u16 *bunearyBlendedPalette;
} RowanIntro;

static void RowanIntro_VBlankCallback(void *manager);
static void RowanIntro_InitGraphics(RowanIntro *manager);
static void RowanIntro_FreeGraphics(RowanIntro *manager);
static void RowanIntro_InitMessageStructs(RowanIntro *manager);
static void RowanIntro_FreeMessageStructs(RowanIntro *manager);
// relating to unkown structure
static void ov73_021D1318(RowanIntro *manager);
static void ov73_021D1328(RowanIntro *manager);
static void RowanIntro_LoadInitialTilemaps(RowanIntro *manager);
static void RowanIntro_LoadLayer3Tilemap(RowanIntro *manager);
static void RowanIntro_LoadTilemap(RowanIntro *manager);
static void RowanIntro_LoadSubLayer3Tilemap(RowanIntro *manager);
static BOOL RowanIntro_Run(RowanIntro *manager);

int RowanIntroTv_Init(ApplicationManager *appMan, int *state);
int RowanIntroTv_Main(ApplicationManager *appMan, int *state);
int RowanIntroTv_Exit(ApplicationManager *appMan, int *state);

const ApplicationManagerTemplate sDummyApplicationManagerTemplate = {
    .init = RowanIntro_Init,
    .main = RowanIntro_Main,
    .exit = RowanIntro_Exit,
    .overlayID = FS_OVERLAY_ID_NONE,
};

static const ApplicationManagerTemplate sTvApplicationTemplate = {
    .init = RowanIntroTv_Init,
    .main = RowanIntroTv_Main,
    .exit = RowanIntroTv_Exit,
    .overlayID = FS_OVERLAY_ID_NONE,
};

BOOL RowanIntro_Init(ApplicationManager *appMan, int *unusedState)
{
    RowanIntro *manager;
    int heapID = HEAP_ID_ROWAN_INTRO;

    Heap_Create(HEAP_ID_APPLICATION, heapID, 0x40000);

    manager = ApplicationManager_NewData(appMan, sizeof(RowanIntro), heapID);
    memset(manager, 0, sizeof(RowanIntro));

    manager->heapID = heapID;
    manager->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    manager->options = SaveData_GetOptions(manager->saveData);
    manager->state = RI_STATE_FIRST_FADE_BLACK_START;
    manager->bufferedState = RI_STATE_FIRST_FADE_BLACK_START;
    manager->appMan = NULL;
    manager->unk_70 = sub_0208712C(heapID, 0, 0, 7, manager->options);
    manager->unk_74 = sub_0208712C(heapID, 3, 0, 7, manager->options);
    manager->bgLayer3TilemapIndex = 0;
    manager->bgLayer1TilemapIndex = 0;
    manager->bgLayer2TilemapIndex = 0;
    manager->bgSubLayer3TilemapIndex = 0;
    manager->delayUpdateCounter = 0;
    manager->bunearyPalette = Heap_AllocFromHeap(heapID, 0x20);
    manager->bunearyBlendedPalette = Heap_AllocFromHeap(heapID, 0x20);

    return TRUE;
}

BOOL RowanIntro_Main(ApplicationManager *appMan, int *state)
{
    RowanIntro *manager = ApplicationManager_Data(appMan);
    BOOL isFinished = FALSE;

    switch (*state) {
    case RI_APP_STATE_INIT:
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

        SetVBlankCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        SetAutorepeat(4, 8);

        RowanIntro_InitGraphics(manager);
        RowanIntro_InitMessageStructs(manager);
        ov73_021D1318(manager);

        SetVBlankCallback(RowanIntro_VBlankCallback, (void *)manager);
        GXLayers_TurnBothDispOn();

        *state = RI_APP_STATE_RUNNING;
        break;
    case RI_APP_STATE_RUNNING:
        if (RowanIntro_Run(manager) == TRUE) {
            StartScreenFade(
                FADE_BOTH_SCREENS,
                FADE_TYPE_BRIGHTNESS_OUT,
                FADE_TYPE_BRIGHTNESS_OUT,
                COLOR_BLACK,
                6,
                1,
                manager->heapID);
            *state = RI_APP_STATE_EXIT;
        }

        if (manager->appMan != NULL) {
            StartScreenFade(
                FADE_BOTH_SCREENS,
                FADE_TYPE_BRIGHTNESS_OUT,
                FADE_TYPE_BRIGHTNESS_OUT,
                COLOR_BLACK,
                6,
                1,
                manager->heapID);
            *state = RI_APP_STATE_CHANGE_APP_WAIT_FADE;
        }
        break;
    case RI_APP_STATE_EXIT:
        if (IsScreenFadeDone() == TRUE) {
            RowanIntro_FreeMessageStructs(manager);
            RowanIntro_FreeGraphics(manager);
            ov73_021D1328(manager);
            SetVBlankCallback(NULL, NULL);

            isFinished = TRUE;
        }
        break;
    case RI_APP_STATE_CHANGE_APP_WAIT_FADE:
        if (IsScreenFadeDone() == TRUE) {
            RowanIntro_FreeMessageStructs(manager);
            RowanIntro_FreeGraphics(manager);
            ov73_021D1328(manager);
            SetVBlankCallback(NULL, NULL);
            *state = RI_APP_STATE_CHANGE_APP;
        }
        break;
    case RI_APP_STATE_CHANGE_APP:
        if (ApplicationManager_Exec(manager->appMan) == TRUE) {
            ApplicationManager_Free(manager->appMan);
            manager->appMan = NULL;
            *state = RI_APP_STATE_INIT_AGAIN;
        }
        break;
    case RI_APP_STATE_INIT_AGAIN:
        *state = RI_APP_STATE_INIT;
        break;
    }

    return isFinished;
}

BOOL RowanIntro_Exit(ApplicationManager *appMan, int *unusedState)
{
    RowanIntro *manager = ApplicationManager_Data(appMan);
    enum HeapId heapID = manager->heapID;

    Heap_Free(manager->bunearyPalette);
    Heap_Free(manager->bunearyBlendedPalette);

    TrainerInfo_SetNameFromStrbuf(
        SaveData_GetTrainerInfo(manager->saveData),
        manager->unk_70->textInputStr);
    TrainerInfo_SetGender(
        SaveData_GetTrainerInfo(manager->saveData),
        manager->unk_70->unk_04);

    {
        MiscSaveBlock *miscSaveBlock = SaveData_MiscSaveBlock(manager->saveData);

        MiscSaveBlock_SetRivalName(miscSaveBlock, manager->unk_74->textInputStr);
    }

    sub_0208716C(manager->unk_70);
    sub_0208716C(manager->unk_74);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);
    EnqueueApplication(FS_OVERLAY_ID(game_start), &gGameStartNewSaveAppTemplate);

    return TRUE;
}

static void RowanIntro_VBlankCallback(void *managerVoid)
{
    RowanIntro *manager = managerVoid;
    Bg_RunScheduledUpdates(manager->bgConfig);
}

static BOOL RowanIntro_WasPokeballOpened(void)
{
    BOOL wasTouched = FALSE;
    u16 xOffset, yOffset;

    if (gSystem.touchPressed) {
        if ((gSystem.touchX < 256) && (gSystem.touchY < 192)) {
            if (gSystem.touchX < 128) {
                xOffset = 128 - gSystem.touchX;
            } else {
                xOffset = gSystem.touchX - 128;
            }

            if (gSystem.touchY < 100) {
                yOffset = 100 - gSystem.touchY;
            } else {
                yOffset = gSystem.touchY - 100;
            }

            // check that touched within or on boundary of
            // circle of radius 16 from centre.
            if ((xOffset * xOffset + yOffset * yOffset) <= 16 * 16) {
                wasTouched = TRUE;
            }
        }
    }

    return wasTouched;
}

static void RowanIntro_InitGraphics(RowanIntro *manager)
{
    {
        UnkStruct_02099F80 banks = {
            .unk_00 = GX_VRAM_BG_128_B,
            .unk_04 = GX_VRAM_BGEXTPLTT_NONE,
            .unk_08 = GX_VRAM_SUB_BG_128_C,
            .unk_0C = GX_VRAM_SUB_BGEXTPLTT_NONE,
            .unk_10 = GX_VRAM_OBJ_NONE,
            .unk_14 = GX_VRAM_OBJEXTPLTT_NONE,
            .unk_18 = GX_VRAM_SUB_OBJ_NONE,
            .unk_1C = GX_VRAM_SUB_OBJEXTPLTT_NONE,
            .unk_20 = GX_VRAM_TEX_NONE,
            .unk_24 = GX_VRAM_TEXPLTT_NONE
        };

        GXLayers_SetBanks(&banks);
    }

    {
        manager->bgConfig = BgConfig_New(manager->heapID);
    }

    {
        GraphicsModes graphicsModes = {
            .displayMode = GX_DISPMODE_GRAPHICS,
            .mainBgMode = GX_BGMODE_0,
            .subBgMode = GX_BGMODE_0,
            .bg0As2DOr3D = GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&graphicsModes);
    }
    {
        BgTemplate bgConfig = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        bgConfig.screenBase = GX_BG_SCRBASE_0x7800;
        bgConfig.charBase = GX_BG_CHARBASE_0x18000;
        Bg_InitFromTemplate(
            manager->bgConfig,
            BG_LAYER_MAIN_0,
            &bgConfig,
            BG_TYPE_STATIC);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);

        bgConfig.screenBase = GX_BG_SCRBASE_0x7000;
        bgConfig.charBase = GX_BG_CHARBASE_0x14000;
        Bg_InitFromTemplate(
            manager->bgConfig,
            BG_LAYER_MAIN_1,
            &bgConfig,
            BG_TYPE_STATIC);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_1);

        bgConfig.screenBase = GX_BG_SCRBASE_0x6800;
        bgConfig.charBase = GX_BG_CHARBASE_0x10000;
        Bg_InitFromTemplate(
            manager->bgConfig,
            BG_LAYER_MAIN_2,
            &bgConfig,
            BG_TYPE_STATIC);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_2);

        bgConfig.screenBase = GX_BG_SCRBASE_0x6000;
        bgConfig.charBase = GX_BG_CHARBASE_0x0c000;
        Bg_InitFromTemplate(
            manager->bgConfig,
            BG_LAYER_MAIN_3,
            &bgConfig,
            BG_TYPE_STATIC);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_3);

        LoadMessageBoxGraphics(
            manager->bgConfig,
            BG_LAYER_MAIN_0,
            0x400 - (18 + 12),
            4,
            0,
            manager->heapID);
        LoadStandardWindowGraphics(
            manager->bgConfig,
            BG_LAYER_MAIN_0,
            (0x400 - (18 + 12)) - 9,
            3,
            0,
            manager->heapID);
        Font_LoadTextPalette(PAL_LOAD_MAIN_BG, 5 * (2 * 16), manager->heapID);
        Font_LoadScreenIndicatorsPalette(
            PAL_LOAD_MAIN_BG,
            6 * (2 * 16),
            manager->heapID);
    }
    {
        BgTemplate bgConfig = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        bgConfig.screenBase = GX_BG_SCRBASE_0x7800;
        bgConfig.charBase = GX_BG_CHARBASE_0x18000;
        Bg_InitFromTemplate(
            manager->bgConfig,
            BG_LAYER_SUB_0,
            &bgConfig,
            BG_TYPE_STATIC);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_SUB_0);

        bgConfig.screenBase = GX_BG_SCRBASE_0x7000;
        bgConfig.charBase = GX_BG_CHARBASE_0x14000;
        Bg_InitFromTemplate(
            manager->bgConfig,
            BG_LAYER_SUB_1,
            &bgConfig,
            BG_TYPE_STATIC);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_SUB_1);

        bgConfig.screenBase = GX_BG_SCRBASE_0x6800;
        bgConfig.charBase = GX_BG_CHARBASE_0x10000;
        Bg_InitFromTemplate(
            manager->bgConfig,
            BG_LAYER_SUB_2,
            &bgConfig,
            BG_TYPE_STATIC);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_SUB_2);

        bgConfig.screenBase = GX_BG_SCRBASE_0x6000;
        bgConfig.charBase = GX_BG_CHARBASE_0x0c000;
        Bg_InitFromTemplate(
            manager->bgConfig,
            BG_LAYER_SUB_3,
            &bgConfig,
            BG_TYPE_STATIC);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_SUB_3);
    }

    Bg_ToggleLayer(BG_LAYER_MAIN_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);

    RowanIntro_LoadInitialTilemaps(manager);

    manager->fadeBgLayerState = FBL_STATE_INIT;
}

static void RowanIntro_FreeGraphics(RowanIntro *manager)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);

    Bg_FreeTilemapBuffer(manager->bgConfig, BG_LAYER_MAIN_0);

    Bg_FreeTilemapBuffer(manager->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(manager->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(manager->bgConfig, BG_LAYER_MAIN_3);

    Bg_FreeTilemapBuffer(manager->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(manager->bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(manager->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(manager->bgConfig, BG_LAYER_SUB_3);

    Heap_Free(manager->bgConfig);
}

static void RowanIntro_InitMessageStructs(RowanIntro *manager)
{
    manager->msgLoader = MessageLoader_Init(
        MESSAGE_LOADER_NARC_HANDLE,
        NARC_INDEX_MSGDATA__PL_MSG,
        TEXT_BANK_ROWAN_INTRO,
        manager->heapID);

    Text_ResetAllPrinters();

    manager->unk_60 = sub_0201567C(NULL, 0, 6, manager->heapID);
    manager->strFormatter = StringTemplate_Default(manager->heapID);
    manager->displayMessageState = DM_STATE_INIT;
    manager->displayTextBlockState = DTB_STATE_INIT;
    manager->choiceBoxState = 0;
}

static void RowanIntro_FreeMessageStructs(RowanIntro *manager)
{
    StringTemplate_Free(manager->strFormatter);
    sub_02015760(manager->unk_60);
    MessageLoader_Free(manager->msgLoader);
}

static void ov73_021D1318(RowanIntro *manager)
{
    manager->unk_68 = sub_02015920(manager->heapID);
}

static void ov73_021D1328(RowanIntro *manager)
{
    sub_02015938(manager->unk_68);
}

static BOOL RowanIntro_FadeBgLayer(
    RowanIntro *manager,
    enum BgLayer bgLayer,
    enum FadeDirection fadeDirection)
{
    BOOL isFinished = FALSE;
    GXBlendPlaneMask blendPlaneMask;
    BOOL isSubLayer;

    switch (bgLayer) {
    default:
    case BG_LAYER_MAIN_0:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG0;
        isSubLayer = FALSE;
        break;
    case BG_LAYER_MAIN_1:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG1;
        isSubLayer = FALSE;
        break;
    case BG_LAYER_MAIN_2:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG2;
        isSubLayer = FALSE;
        break;
    case BG_LAYER_SUB_0:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG0;
        isSubLayer = TRUE;
        break;
    case BG_LAYER_SUB_1:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG1;
        isSubLayer = TRUE;
        break;
    case BG_LAYER_SUB_2:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG2;
        isSubLayer = TRUE;
        break;
    }

    switch (manager->fadeBgLayerState) {
    case FBL_STATE_INIT:
        if (fadeDirection == FADE_IN) {
            manager->fadeBgLayerCurAlpha = 0;
            manager->fadeBgLayerCurAlphaInv = 16;
            manager->fadeBgLayerState = FBL_STATE_FADE_IN;

            if (isSubLayer == FALSE) {
                G2_SetBlendAlpha(
                    blendPlaneMask,
                    GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3,
                    manager->fadeBgLayerCurAlpha,
                    manager->fadeBgLayerCurAlphaInv);
            } else {
                G2S_SetBlendAlpha(
                    blendPlaneMask,
                    GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3,
                    manager->fadeBgLayerCurAlpha,
                    manager->fadeBgLayerCurAlphaInv);
            }

            Bg_ToggleLayer(bgLayer, TRUE);
        } else {
            manager->fadeBgLayerCurAlpha = 16;
            manager->fadeBgLayerCurAlphaInv = 0;
            manager->fadeBgLayerState = FBL_STATE_FADE_OUT;
        }
        break;
    case FBL_STATE_FADE_IN:
        if (manager->fadeBgLayerCurAlphaInv) {
            manager->fadeBgLayerCurAlpha++;
            manager->fadeBgLayerCurAlphaInv--;

            if (isSubLayer == FALSE) {
                G2_SetBlendAlpha(
                    blendPlaneMask,
                    GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3,
                    manager->fadeBgLayerCurAlpha,
                    manager->fadeBgLayerCurAlphaInv);
            } else {
                G2S_SetBlendAlpha(
                    blendPlaneMask,
                    GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3,
                    manager->fadeBgLayerCurAlpha,
                    manager->fadeBgLayerCurAlphaInv);
            }
        } else {
            manager->fadeBgLayerState = FBL_STATE_END;
        }
        break;
    case FBL_STATE_FADE_OUT:
        if (manager->fadeBgLayerCurAlpha) {
            manager->fadeBgLayerCurAlpha--;
            manager->fadeBgLayerCurAlphaInv++;

            if (isSubLayer == FALSE) {
                G2_SetBlendAlpha(
                    blendPlaneMask,
                    GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3,
                    manager->fadeBgLayerCurAlpha,
                    manager->fadeBgLayerCurAlphaInv);
            } else {
                G2S_SetBlendAlpha(
                    blendPlaneMask,
                    GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3,
                    manager->fadeBgLayerCurAlpha,
                    manager->fadeBgLayerCurAlphaInv);
            }
        } else {
            manager->fadeBgLayerState = FBL_STATE_END;
            Bg_ToggleLayer(bgLayer, FALSE);
        }
        break;
    case FBL_STATE_END:
        G2_BlendNone();
        G2S_BlendNone();
        manager->fadeBgLayerState = FBL_STATE_INIT;
        isFinished = TRUE;
        break;
    }

    return isFinished;
}

static BOOL RowanIntro_Delay(RowanIntro *manager, int updateCount)
{
    if (manager->delayUpdateCounter < updateCount) {
        manager->delayUpdateCounter++;
        return FALSE;
    } else {
        manager->delayUpdateCounter = 0;
        return TRUE;
    }
}

static void RowanIntro_ChangePaletteAndCopyTilemap(RowanIntro *manager, enum BgLayer bgLayer, int palette)
{
    Bg_ChangeTilemapRectPalette(
        manager->bgConfig,
        bgLayer,
        0,
        0,
        32,
        24,
        palette);
    Bg_CopyTilemapBufferToVRAM(manager->bgConfig, bgLayer);
}

typedef struct ChoiceInfo {
    u32 textID;
    u32 choiceIndex;
} ChoiceInfo;

static const WindowTemplate sDisplayMessageTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 2,
    .tilemapTop = 0x13,
    .width = 0x1B,
    .height = 4,
    .palette = 6,
    .baseTile = 0x36D,
};
static const WindowTemplate sYesNoWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 2,
    .tilemapTop = 3,
    .width = 6,
    .height = 4,
    .palette = 5,
    .baseTile = 0x355,
};
static const WindowTemplate sInfoChoiceBoxWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 1,
    .tilemapTop = 3,
    .width = 0x10,
    .height = 6,
    .palette = 5,
    .baseTile = 0x30D,
};
static const WindowTemplate sRivalNamesChoiceBoxTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 2,
    .tilemapTop = 3,
    .width = 14,
    .height = 10,
    .palette = 5,
    .baseTile = 0x2E1,
};
const WindowTemplate sControlInfoTextWindow = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 8,
    .tilemapTop = 0,
    .width = 0x18,
    .height = 0x18,
    .palette = 5,
    .baseTile = 0x12D,
};
const WindowTemplate sAdventureInfoTextWindow = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 4,
    .tilemapTop = 0,
    .width = 0x18,
    .height = 0x18,
    .palette = 5,
    .baseTile = 0x12D,
};

static const ListMenuTemplate sChoiceBoxTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = 0,
    .maxDisplay = 0,
    .headerXOffset = 0,
    .textXOffset = 12,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 15,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 0,
    .pagerMode = PAGER_MODE_NONE,
    .fontID = FONT_SYSTEM,
    .cursorType = 0,
    .parent = NULL,
};

static const ChoiceInfo sYesNoChoiceInfos[] = {
    { .textID = RowanIntro_Text_ChoiceYes, .choiceIndex = 1 },
    { .textID = RowanIntro_Text_ChoiceNo, .choiceIndex = 2 }
};

static const ChoiceInfo sInfoChoiceInfos[] = {
    { .textID = RowanIntro_Text_ChoiceControlInfo, .choiceIndex = 1 },
    { .textID = RowanIntro_Text_ChoiceAdventureInfo, .choiceIndex = 2 },
    { .textID = RowanIntro_Text_ChoiceNoInfo, .choiceIndex = 3 }
};

static const ChoiceInfo sRivalNameChoiceInfos[] = {
    { .textID = RowanIntro_Text_RivalChoiceNew, .choiceIndex = 1 },
    { .textID = RowanIntro_Text_RivalChoiceBarry, .choiceIndex = 2 },
    { .textID = RowanIntro_Text_RivalChoiceNolan, .choiceIndex = 3 },
    { .textID = RowanIntro_Text_RivalChoiceRoy, .choiceIndex = 4 },
    { .textID = RowanIntro_Text_RivalChoiceGavin, .choiceIndex = 5 }
};

static const ChoiceInfo sUnusedRivalNameChoiceInfos[] = {
    { .textID = RowanIntro_Text_RivalChoiceNew, .choiceIndex = 0x1 },
    { .textID = RowanIntro_Text_RivalChoiceClint, .choiceIndex = 0x2 },
    { .textID = RowanIntro_Text_RivalChoiceRalph, .choiceIndex = 0x3 },
    { .textID = RowanIntro_Text_RivalChoiceLewis, .choiceIndex = 0x4 },
    { .textID = RowanIntro_Text_RivalChoiceTommy, .choiceIndex = 0x5 }
};

static BOOL RowanIntro_DisplayMessage(RowanIntro *manager, u32 textID, BOOL endEarly)
{
    BOOL isFinished = FALSE;

    switch (manager->displayMessageState) {
    case DM_STATE_INIT:
        Window_AddFromTemplate(
            manager->bgConfig,
            &manager->textWindow,
            &sDisplayMessageTemplate);
        Window_FillRectWithColor(&manager->textWindow, 15, 0, 0, 27 * 8, 4 * 8);
        Window_DrawMessageBoxWithScrollCursor(
            &manager->textWindow,
            FALSE,
            0x400 - (18 + 12),
            4);
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetAutoScrollFlags(0);

        {
            Strbuf *tmpStrbuf = Strbuf_Init(0x400, manager->heapID);

            manager->strbuf = Strbuf_Init(0x400, manager->heapID);

            MessageLoader_GetStrbuf(manager->msgLoader, textID, tmpStrbuf);
            StringTemplate_SetStrbuf(
                manager->strFormatter,
                0,
                manager->unk_70->textInputStr,
                manager->playerGender,
                1,
                GAME_LANGUAGE);
            StringTemplate_SetStrbuf(
                manager->strFormatter,
                1,
                manager->unk_74->textInputStr,
                0,
                1,
                GAME_LANGUAGE);
            StringTemplate_Format(
                manager->strFormatter,
                manager->strbuf,
                tmpStrbuf);
            Strbuf_Free(tmpStrbuf);
        }

        manager->textPrinterID = Text_AddPrinterWithParams(
            &manager->textWindow,
            FONT_MESSAGE,
            manager->strbuf,
            0,
            0,
            Options_TextFrameDelay(manager->options),
            NULL);
        manager->displayMessageState = DM_STATE_PRINT;
        break;
    case DM_STATE_PRINT:
        if (!(Text_IsPrinterActive(manager->textPrinterID))) {
            Strbuf_Free(manager->strbuf);
            manager->displayMessageState = DM_STATE_END;
        }
        break;
    case DM_STATE_END:
        if (endEarly || ((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A)) {
            Window_Remove(&manager->textWindow);
            manager->displayMessageState = DM_STATE_INIT;
            isFinished = TRUE;
        }
    }

    return isFinished;
}

static void RowanIntro_ListMenuCursorCallback(ListMenu *menu, u32 index, u8 onInit)
{
    if (onInit == FALSE) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static BOOL RowanIntro_ChoiceBox(RowanIntro *manager, enum ChoicesCase choicesCase, BOOL allowCancel)
{
    BOOL isFinished = FALSE;
    ListMenuTemplate menuTemplate;
    const WindowTemplate *windowTemplate;
    const ChoiceInfo *choiceInfos;
    int i, choiceInfosLength;

    // case 0: starting up, case 1: waiting for choice
    switch (manager->choiceBoxState) {
    case 0:
        switch (choicesCase) {
        default:
        case CC_YESNO:
            windowTemplate = &sYesNoWindowTemplate;
            choiceInfos = sYesNoChoiceInfos;
            choiceInfosLength = NELEMS(sYesNoChoiceInfos);
            break;
        case CC_INFO:
            windowTemplate = &sInfoChoiceBoxWindowTemplate;
            choiceInfos = sInfoChoiceInfos;
            choiceInfosLength = NELEMS(sInfoChoiceInfos);
            break;
        case CC_RIVAL_NAMES:
            windowTemplate = &sRivalNamesChoiceBoxTemplate;

            if ((gGameVersion == VERSION_DIAMOND) || (GAME_VERSION == VERSION_PLATINUM)) {
                choiceInfos = sRivalNameChoiceInfos;
                choiceInfosLength = NELEMS(sRivalNameChoiceInfos);
            } else {
                choiceInfos = sUnusedRivalNameChoiceInfos;
                choiceInfosLength = NELEMS(sUnusedRivalNameChoiceInfos);
            }
            break;
        }

        Window_AddFromTemplate(
            manager->bgConfig,
            &manager->choiceBoxWindow,
            windowTemplate);

        manager->choices = StringList_New(choiceInfosLength, manager->heapID);

        for (i = 0; i < choiceInfosLength; i++) {
            StringList_AddFromMessageBank(
                manager->choices,
                manager->msgLoader,
                choiceInfos[i].textID,
                choiceInfos[i].choiceIndex);
        }

        menuTemplate = sChoiceBoxTemplate;
        menuTemplate.choices = manager->choices;
        menuTemplate.count = choiceInfosLength;
        menuTemplate.maxDisplay = choiceInfosLength;
        menuTemplate.cursorCallback = RowanIntro_ListMenuCursorCallback;
        menuTemplate.window = &manager->choiceBoxWindow;

        manager->listMenu = ListMenu_New(&menuTemplate, 0, 0, manager->heapID);

        Window_DrawStandardFrame(
            menuTemplate.window,
            1,
            (0x400 - (18 + 12)) - 9,
            3);
        Window_CopyToVRAM(&manager->choiceBoxWindow);

        manager->choiceBoxState = 1;
        break;
    case 1:
        manager->playerChoice = ListMenu_ProcessInput(manager->listMenu);

        if (manager->playerChoice == LIST_NOTHING_CHOSEN) {
            break;
        }

        if ((manager->playerChoice == LIST_CANCEL) && (allowCancel == TRUE)) {
            break;
        }

        Window_EraseStandardFrame(&manager->choiceBoxWindow, 0);
        Window_Remove(&manager->choiceBoxWindow);
        ListMenu_Free(manager->listMenu, NULL, NULL);
        StringList_Free(manager->choices);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        manager->choiceBoxState = 0;
        isFinished = TRUE;
        break;
    }

    return isFinished;
}

static BOOL RowanIntro_DisplayTextBlock(
    RowanIntro *manager,
    u32 textID,
    enum DisplayTextBlockCase whichCase,
    int param3,
    int param4)
{
    // param3 and param4 have different uses depending on what value is passed to whichCase

    BOOL isFinished = FALSE;
    WindowTemplate windowTemplate;

    switch (manager->displayTextBlockState) {
    case DTB_STATE_INIT:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, FALSE);
        manager->strbuf = Strbuf_Init(0x400, manager->heapID);
        MessageLoader_GetStrbuf(manager->msgLoader, textID, manager->strbuf);

        if (whichCase == DTBC_ADVENTURE_INFO) {
            windowTemplate = sAdventureInfoTextWindow;

            {
                u32 numLines = Strbuf_NumLines(manager->strbuf);

                windowTemplate.tilemapTop = 12 - numLines;
                windowTemplate.height = numLines * 2;
            }

            Window_AddFromTemplate(
                manager->bgConfig,
                &manager->textWindow,
                &windowTemplate);
            Window_FillRectWithColor(
                &manager->textWindow,
                0,
                0,
                0,
                24 * 8,
                24 * 8);
            Text_AddPrinterWithParamsAndColor(
                &manager->textWindow,
                FONT_SYSTEM,
                manager->strbuf,
                0,
                0,
                TEXT_SPEED_INSTANT,
                TEXT_COLOR(1, 2, 0),
                NULL);
        } else {
            windowTemplate = sControlInfoTextWindow;

            if (whichCase == DTBC_CONTROL_INFO_1) {
                u32 numLines = Strbuf_NumLines(manager->strbuf);

                windowTemplate.tilemapTop = param3 + param4 / 2 - numLines;
                windowTemplate.height = numLines * 2;
            } else {
                windowTemplate.tilemapTop = param3;
                windowTemplate.height = param4;
            }

            Window_AddFromTemplate(
                manager->bgConfig,
                &manager->textWindow,
                &windowTemplate);
            Window_FillRectWithColor(
                &manager->textWindow,
                0,
                0,
                0,
                24 * 8,
                24 * 8);
            Text_AddPrinterWithParamsAndColor(
                &manager->textWindow,
                FONT_SYSTEM,
                manager->strbuf,
                0,
                0,
                TEXT_SPEED_INSTANT,
                TEXT_COLOR(15, 2, 0),
                NULL);
        }

        Strbuf_Free(manager->strbuf);
        manager->displayTextBlockState = DTB_STATE_COPY_WINDOW_TO_VRAM;
        break;
    case DTB_STATE_COPY_WINDOW_TO_VRAM:
        Window_CopyToVRAM(&manager->textWindow);
        manager->displayTextBlockState = DTB_STATE_FADE_IN_TEXT;
        break;
    case DTB_STATE_FADE_IN_TEXT:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_0, FADE_IN) == TRUE) {
            manager->displayTextBlockState = DTB_STATE_WAIT_FOR_INPUT;
        }
        break;
    case DTB_STATE_WAIT_FOR_INPUT:
        if (((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) || ((gSystem.pressedKeys & PAD_BUTTON_B) == PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            manager->displayTextBlockState = DTB_STATE_FADE_OUT_TEXT;
        }
        break;
    case DTB_STATE_FADE_OUT_TEXT:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_0, FADE_OUT) == TRUE) {
            manager->displayTextBlockState = DTB_STATE_EXIT;
        }
        break;
    case DTB_STATE_EXIT:
        Window_Remove(&manager->textWindow);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
        manager->displayTextBlockState = DTB_STATE_INIT;
        isFinished = TRUE;
        break;
    }

    return isFinished;
}

static void RowanIntro_LoadInitialTilemaps(RowanIntro *manager)
{
    Graphics_LoadTilesToBgLayer(
        NARC_INDEX_DEMO__INTRO__INTRO,
        0,
        manager->bgConfig,
        BG_LAYER_MAIN_3,
        0,
        0,
        FALSE,
        manager->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, manager->heapID);
    Graphics_LoadTilesToBgLayer(
        NARC_INDEX_DEMO__INTRO__INTRO,
        24,
        manager->bgConfig,
        BG_LAYER_SUB_3,
        0,
        0,
        FALSE,
        manager->heapID);

    {
        int mainBgPaletteIdx, subBgPaletteIdx;

        if (gGameVersion == VERSION_PLATINUM) {
            mainBgPaletteIdx = 3;
            subBgPaletteIdx = 27;
        } else if (gGameVersion == VERSION_DIAMOND) {
            mainBgPaletteIdx = 1;
            subBgPaletteIdx = 25;
        } else {
            mainBgPaletteIdx = 2;
            subBgPaletteIdx = 26;
        }

        Graphics_LoadPalette(
            NARC_INDEX_DEMO__INTRO__INTRO,
            mainBgPaletteIdx,
            PAL_LOAD_MAIN_BG,
            0 * (2 * 16),
            (2 * 16) * 3,
            manager->heapID);
        Graphics_LoadPalette(
            NARC_INDEX_DEMO__INTRO__INTRO,
            subBgPaletteIdx,
            PAL_LOAD_SUB_BG,
            0 * (2 * 16),
            (2 * 16) * 5,
            manager->heapID);
    }

    RowanIntro_LoadLayer3Tilemap(manager);
    RowanIntro_LoadTilemap(manager);
    RowanIntro_LoadSubLayer3Tilemap(manager);

    Bg_MaskPalette(BG_LAYER_MAIN_0, 0x0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0x0);
}

static void RowanIntro_LoadLayer3Tilemap(RowanIntro *manager)
{
    int tilemapNarcMemberIdx[] = { 4, 5, 6, 7, 8 };

    if (manager->bgLayer3TilemapIndex >= 5) {
        return;
    }

    Graphics_LoadTilemapToBgLayer(
        NARC_INDEX_DEMO__INTRO__INTRO,
        tilemapNarcMemberIdx[manager->bgLayer3TilemapIndex],
        manager->bgConfig,
        BG_LAYER_MAIN_3,
        0,
        0,
        FALSE,
        manager->heapID);
}

static void RowanIntro_LoadTilemap(RowanIntro *manager)
{
    int tilemapNarcMemberIdx[][2] = {
        { 0, 0 },
        { 19, 20 },
        { 9, 13 },
        { 10, 13 },
        { 11, 13 },
        { 12, 13 },
        { 14, 18 },
        { 15, 18 },
        { 16, 18 },
        { 17, 18 },
        { 21, 22 }
    };

    if ((manager->bgLayer1TilemapIndex != 0) && (manager->bgLayer1TilemapIndex < 12)) {
        Graphics_LoadTilesToBgLayer(
            NARC_INDEX_DEMO__INTRO__INTRO,
            tilemapNarcMemberIdx[manager->bgLayer1TilemapIndex][0],
            manager->bgConfig,
            BG_LAYER_MAIN_1,
            0,
            0,
            FALSE,
            manager->heapID);
        Graphics_LoadPalette(
            NARC_INDEX_DEMO__INTRO__INTRO,
            tilemapNarcMemberIdx[manager->bgLayer1TilemapIndex][1],
            PAL_LOAD_MAIN_BG,
            7 * (2 * 16),
            2 * 16,
            manager->heapID);
        Graphics_LoadTilemapToBgLayer(
            NARC_INDEX_DEMO__INTRO__INTRO,
            23,
            manager->bgConfig,
            BG_LAYER_MAIN_1,
            0,
            0,
            FALSE,
            manager->heapID);
        RowanIntro_ChangePaletteAndCopyTilemap(manager, BG_LAYER_MAIN_1, 7);
    }

    if ((manager->bgLayer2TilemapIndex != 0) && (manager->bgLayer2TilemapIndex < 12)) {
        Graphics_LoadTilesToBgLayer(
            NARC_INDEX_DEMO__INTRO__INTRO,
            tilemapNarcMemberIdx[manager->bgLayer2TilemapIndex][0],
            manager->bgConfig,
            BG_LAYER_MAIN_2,
            0,
            0,
            FALSE,
            manager->heapID);
        Graphics_LoadPalette(
            NARC_INDEX_DEMO__INTRO__INTRO,
            tilemapNarcMemberIdx[manager->bgLayer2TilemapIndex][1],
            PAL_LOAD_MAIN_BG,
            8 * (2 * 16),
            2 * 16,
            manager->heapID);
        Graphics_LoadTilemapToBgLayer(
            NARC_INDEX_DEMO__INTRO__INTRO,
            23,
            manager->bgConfig,
            BG_LAYER_MAIN_2,
            0,
            0,
            FALSE,
            manager->heapID);
        RowanIntro_ChangePaletteAndCopyTilemap(manager, BG_LAYER_MAIN_2, 8);
    }
}

static void RowanIntro_LoadSubLayer3Tilemap(RowanIntro *manager)
{
    int tilemapNarcMemberIdx[] = { 28, 29, 29, 30, 31 };

    if (manager->bgSubLayer3TilemapIndex >= 5) {
        return;
    }

    Graphics_LoadTilemapToBgLayer(
        NARC_INDEX_DEMO__INTRO__INTRO,
        tilemapNarcMemberIdx[manager->bgSubLayer3TilemapIndex],
        manager->bgConfig,
        BG_LAYER_SUB_3,
        0,
        0,
        FALSE,
        manager->heapID);

    if (manager->bgSubLayer3TilemapIndex == 1) {
        RowanIntro_ChangePaletteAndCopyTilemap(manager, 7, 3);
    } else if (manager->bgSubLayer3TilemapIndex == 2) {
        RowanIntro_ChangePaletteAndCopyTilemap(manager, 7, 2);
    }
}

static const u8 sBunearyLoadTilemapRectRawData[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x40,
    0x41,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x42,
    0x43,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x44,
    0x45,
    0x18,
    0x19,
    0x1A,
    0x1B,
    0x1C,
    0x1D,
    0x1E,
    0x1F,
    0x46,
    0x47,
    0x20,
    0x21,
    0x22,
    0x23,
    0x24,
    0x25,
    0x26,
    0x27,
    0x48,
    0x49,
    0x28,
    0x29,
    0x2A,
    0x2B,
    0x2C,
    0x2D,
    0x2E,
    0x2F,
    0x4A,
    0x4B,
    0x30,
    0x31,
    0x32,
    0x33,
    0x34,
    0x35,
    0x36,
    0x37,
    0x4C,
    0x4D,
    0x38,
    0x39,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x3F,
    0x4E,
    0x4F,
    0x50,
    0x51,
    0x52,
    0x53,
    0x58,
    0x59,
    0x5A,
    0x5B,
    0x60,
    0x61,
    0x54,
    0x55,
    0x56,
    0x57,
    0x5C,
    0x5D,
    0x5E,
    0x5F,
    0x62,
    0x63
};

static void RowanIntro_LoadBunearySprite(RowanIntro *manager)
{
    PokemonSpriteTemplate spriteTemplate;
    u16 *rawData;
    void *tileSrc;
    void *paletteBuffer;
    // changing these to enum BgLayer causes the ROM checksum to fail.
    int mainBgLayer = BG_LAYER_MAIN_2;
    int subBgLayer = BG_LAYER_SUB_1;
    int mainPalette = 8;
    int subPalette = 10;

    BuildPokemonSpriteTemplate(
        &spriteTemplate,
        SPECIES_BUNEARY,
        GENDER_MALE,
        FACE_FRONT,
        FALSE,
        NULL,
        NULL);

    rawData = Heap_AllocFromHeap(manager->heapID, (10 * 10) * 2);

    {
        int i;

        for (i = 0; i < (10 * 10); i++) {
            rawData[i] = sBunearyLoadTilemapRectRawData[i] + 1;
        }
    }

    tileSrc = sub_0201363C(
        spriteTemplate.narcID,
        spriteTemplate.character,
        manager->heapID);
    paletteBuffer = sub_02013660(
        spriteTemplate.narcID,
        spriteTemplate.palette,
        manager->heapID);

    MI_CpuCopy32(paletteBuffer, manager->bunearyPalette, 0x20);

    BlendPalettes(manager->bunearyPalette, paletteBuffer, 1, 16, 0x6a3c);
    Bg_FillTilemapRect(
        manager->bgConfig,
        mainBgLayer,
        0,
        0,
        0,
        32,
        24,
        mainPalette);
    Bg_LoadToTilemapRect(
        manager->bgConfig,
        mainBgLayer,
        rawData,
        11,
        9,
        10,
        10);

    RowanIntro_ChangePaletteAndCopyTilemap(manager, mainBgLayer, mainPalette);

    Bg_ClearTilesRange(mainBgLayer, 32, 0, manager->heapID);
    Bg_LoadTiles(manager->bgConfig, mainBgLayer, tileSrc, (10 * 10) * 0x20, 1);
    Bg_LoadPalette(mainBgLayer, paletteBuffer, 2 * 16, (2 * 16) * mainPalette);
    Bg_FillTilemapRect(
        manager->bgConfig,
        subBgLayer,
        0,
        0,
        0,
        32,
        24,
        subPalette);
    Bg_LoadToTilemapRect(manager->bgConfig, subBgLayer, rawData, 11, 7, 10, 10);

    RowanIntro_ChangePaletteAndCopyTilemap(manager, subBgLayer, subPalette);

    Bg_ClearTilesRange(subBgLayer, 32, 0, manager->heapID);
    Bg_LoadTiles(manager->bgConfig, subBgLayer, tileSrc, (10 * 10) * 0x20, 1);
    Bg_LoadPalette(subBgLayer, paletteBuffer, 2 * 16, (2 * 16) * subPalette);
    Heap_Free(paletteBuffer);
    Heap_Free(tileSrc);
    Heap_Free(rawData);
}

static void RowanIntro_LoadPokeballTilemap(RowanIntro *manager)
{
    Graphics_LoadTilemapToBgLayer(
        NARC_INDEX_DEMO__INTRO__INTRO,
        40,
        manager->bgConfig,
        BG_LAYER_SUB_2,
        0,
        0,
        FALSE,
        manager->heapID);
    RowanIntro_ChangePaletteAndCopyTilemap(manager, 6, 9);

    Graphics_LoadPalette(
        NARC_INDEX_DEMO__INTRO__INTRO,
        41,
        PAL_LOAD_SUB_BG,
        7 * (2 * 16),
        (2 * 16) * 3,
        manager->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_2, 32, 0, manager->heapID);
    Graphics_LoadTilesToBgLayer(
        NARC_INDEX_DEMO__INTRO__INTRO,
        32,
        manager->bgConfig,
        BG_LAYER_SUB_2,
        0x20,
        0,
        FALSE,
        manager->heapID);
}

static BOOL RowanIntro_MoveBgLayer(RowanIntro *manager, enum BgLayer bgLayer, enum MoveBgLayerCases mBLCase)
{
    BOOL isFinished = FALSE;

    if (mBLCase == MBL_CASE_CENTRE_AVATAR) {
        {
            int currentXOffset = Bg_GetXOffset(manager->bgConfig, bgLayer);

            if (currentXOffset != 0) {
                if (currentXOffset > 0) {
                    Bg_SetOffset(
                        manager->bgConfig,
                        bgLayer,
                        BG_OFFSET_UPDATE_SUB_X,
                        4);
                } else {
                    Bg_SetOffset(
                        manager->bgConfig,
                        bgLayer,
                        BG_OFFSET_UPDATE_ADD_X,
                        4);
                }
            } else {
                isFinished = TRUE;
            }
        }
    } else if (mBLCase == MBL_CASE_MOVE_RIGHT) {
        if (Bg_GetXOffset(manager->bgConfig, bgLayer) != -8 * 6) {
            Bg_SetOffset(manager->bgConfig, bgLayer, BG_OFFSET_UPDATE_SUB_X, 4);
        } else {
            isFinished = TRUE;
        }
    } else if (mBLCase == MBL_CASE_MOVE_LEFT) {
        if (Bg_GetXOffset(manager->bgConfig, bgLayer) != 0) {
            Bg_SetOffset(manager->bgConfig, bgLayer, BG_OFFSET_UPDATE_ADD_X, 4);
        } else {
            isFinished = TRUE;
        }
    }

    return isFinished;
}

static void RowanIntro_ResetAvatarRunAnimation(RowanIntro *manager)
{
    manager->maleRunAnimSpriteIndex = 0;
    manager->maleRunAnimUpdateCounter = 0;
    manager->femaleRunAnimSpriteIndex = 0;
    manager->femaleRunAnimUpdateCounter = 0;
}

static void RowanIntro_AnimateAvatarRun(RowanIntro *manager)
{
    if (manager->playerGender == GENDER_MALE) {
        if (manager->maleRunAnimUpdateCounter) {
            manager->maleRunAnimUpdateCounter--;
        } else {
            manager->maleRunAnimSpriteIndex++;
            manager->maleRunAnimSpriteIndex &= 3;
            manager->maleRunAnimUpdateCounter = 4;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 6, 10);

        {
            int maleSpriteNARCIndices[] = { 9, 10, 11, 12 };
            Graphics_LoadTilesToBgLayer(
                NARC_INDEX_DEMO__INTRO__INTRO,
                maleSpriteNARCIndices[manager->maleRunAnimSpriteIndex],
                manager->bgConfig,
                BG_LAYER_MAIN_1,
                0,
                0,
                FALSE,
                manager->heapID);
        }
    } else {
        if (manager->femaleRunAnimUpdateCounter) {
            manager->femaleRunAnimUpdateCounter--;
        } else {
            manager->femaleRunAnimSpriteIndex++;
            manager->femaleRunAnimSpriteIndex &= 3;
            manager->femaleRunAnimUpdateCounter = 4;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG3, 6, 10);

        {
            int femaleSpriteNARCIndices[] = { 14, 15, 16, 17 };
            Graphics_LoadTilesToBgLayer(
                NARC_INDEX_DEMO__INTRO__INTRO,
                femaleSpriteNARCIndices[manager->femaleRunAnimSpriteIndex],
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                0,
                0,
                FALSE,
                manager->heapID);
        }
    }
}

static void RowanIntro_ResetBlending(RowanIntro *manager)
{
    G2_BlendNone();
}

static void RowanIntro_ResetAnimationCounters(RowanIntro *manager)
{
    manager->animData.progressCounter = 0;
    manager->animDelayUpdateCounter = 0;
}

static BOOL RowanIntro_AnimateAvatarShrink(RowanIntro *manager)
{
    BOOL isFinished = FALSE;
    int spriteID;

    if (manager->animDelayUpdateCounter) {
        manager->animDelayUpdateCounter--;
    } else {
        manager->animData.progressCounter++;
        manager->animDelayUpdateCounter = 8;
    }

    if (manager->playerGender == GENDER_MALE) {
        {
            int maleSpriteIDs[] = { 9, 42, 43, 44, 45, 0xff };
            spriteID = maleSpriteIDs[manager->animData.progressCounter];
        }
    } else {
        {
            int femaleSpriteIDs[] = { 14, 46, 47, 48, 49, 0xff };
            spriteID = femaleSpriteIDs[manager->animData.progressCounter];
        }
    }

    if (spriteID == 0xff) {
        isFinished = TRUE;
    } else {
        Graphics_LoadTilesToBgLayer(
            NARC_INDEX_DEMO__INTRO__INTRO,
            spriteID,
            manager->bgConfig,
            BG_LAYER_MAIN_1,
            0,
            0,
            FALSE,
            manager->heapID);
    }

    return isFinished;
}

static void RowanIntro_AnimateBuneary_BlendSpritePalette(RowanIntro *manager)
{
    if (manager->bunearyPaletteBlendUpdateCounter > 0) {
        manager->bunearyPaletteBlendUpdateCounter--;

        BlendPalettes(
            manager->bunearyPalette,
            manager->bunearyBlendedPalette,
            1,
            manager->bunearyPaletteBlendUpdateCounter / 3,
            0x6a3c);
        Bg_LoadPalette(
            BG_LAYER_MAIN_2,
            manager->bunearyBlendedPalette,
            2 * 16,
            (2 * 16) * 8);
        Bg_LoadPalette(
            BG_LAYER_SUB_1,
            manager->bunearyBlendedPalette,
            2 * 16,
            (2 * 16) * 10);
    }
}

static BOOL RowanIntro_AnimateBuneary(RowanIntro *manager, enum BunearyAnimState *state)
{
    BOOL isFinished = FALSE;

    switch (*state) {
    case BA_STATE_INIT:
        Bg_SetOffset(
            manager->bgConfig,
            BG_LAYER_MAIN_2,
            BG_OFFSET_UPDATE_SET_X,
            0);
        Bg_SetOffset(
            manager->bgConfig,
            BG_LAYER_MAIN_2,
            BG_OFFSET_UPDATE_SET_Y,
            -8 * 13);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);
        Bg_ToggleLayer(BG_LAYER_SUB_1, TRUE);

        manager->bunearyAnimCarryover = 0;
        manager->bunearyParabolaCoeff = 8;
        manager->bunearyAnimUpdateCounter = 0;
        manager->bunearyPaletteBlendUpdateCounter = (16 * 3);
        *state = BA_STATE_MOVE_UP_BOTTOM_SCREEN;
        break;
    case BA_STATE_MOVE_UP_BOTTOM_SCREEN: {
        Bg_GetXOffset(manager->bgConfig, 2);
        int yOffset = Bg_GetYOffset(manager->bgConfig, 5);
        int linearTerm = manager->bunearyParabolaCoeff * 9 * manager->bunearyAnimUpdateCounter;
        int quadraticTerm = 9 * manager->bunearyAnimUpdateCounter * manager->bunearyAnimUpdateCounter / 2;
        int newYOffset = linearTerm - quadraticTerm;

        if (yOffset < 8 * 11) {
            manager->bunearyAnimUpdateCounter++;
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_ADD_X,
                2);
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_SUB_1,
                BG_OFFSET_UPDATE_ADD_X,
                2);
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_SUB_1,
                BG_OFFSET_UPDATE_SET_Y,
                newYOffset);
        } else {
            Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
            manager->bunearyAnimUpdateCounter = 0;
            *state = BA_STATE_SHOW_ON_TOP_SCREEN;
        }
    } break;
    case BA_STATE_SHOW_ON_TOP_SCREEN:
        if (manager->bunearyAnimUpdateCounter) {
            manager->bunearyAnimUpdateCounter--;
        } else {
            Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
            manager->bunearyAnimCarryover = 0;
            manager->bunearyParabolaCoeff = 9;
            manager->bunearyAnimUpdateCounter = 0;
            *state = BA_STATE_JUMP_UP_AND_DOWN;
        }
        break;
    case BA_STATE_JUMP_UP_AND_DOWN: {
        Bg_GetXOffset(manager->bgConfig, 2);
        Bg_GetYOffset(manager->bgConfig, 2);
        int linearTerm = manager->bunearyParabolaCoeff * 9 * manager->bunearyAnimUpdateCounter;
        int quadraticTerm = 9 * manager->bunearyAnimUpdateCounter * manager->bunearyAnimUpdateCounter / 2;
        int newYOffset = (-8 * 13) + linearTerm - quadraticTerm;

        if ((manager->bunearyAnimCarryover > 0) && (newYOffset <= 0)) {
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_SET_Y,
                0);
            manager->bunearyAnimCarryover = 0;
            manager->bunearyParabolaCoeff = 3;
            manager->bunearyAnimUpdateCounter = 0;
            *state = BA_STATE_JUMP_RIGHT;
        } else {
            manager->bunearyAnimUpdateCounter++;
            manager->bunearyAnimCarryover = newYOffset;
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_ADD_X,
                1);
            newYOffset = newYOffset >> 1;

            if (newYOffset > 8 * 18) {
                newYOffset = 8 * 18;
            }

            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_SET_Y,
                newYOffset);
        }
    } break;
    case BA_STATE_JUMP_RIGHT: {
        Bg_GetXOffset(manager->bgConfig, 2);
        Bg_GetYOffset(manager->bgConfig, 2);
        int linearTerm = manager->bunearyParabolaCoeff * 9 * manager->bunearyAnimUpdateCounter;
        int quadraticTerm = 9 * manager->bunearyAnimUpdateCounter * manager->bunearyAnimUpdateCounter / 3;
        int newYOffset = linearTerm - quadraticTerm;

        if ((manager->bunearyAnimCarryover > 0) && (newYOffset <= 0)) {
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_SET_Y,
                0);
            manager->bunearyAnimCarryover = 0;
            manager->bunearyParabolaCoeff = 3;
            manager->bunearyAnimUpdateCounter = 0;
            *state = BA_STATE_JUMP_LEFT;
        } else {
            manager->bunearyAnimUpdateCounter++;
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_SUB_X,
                2);
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_SET_Y,
                newYOffset);
            manager->bunearyAnimCarryover = newYOffset;
        }
    } break;
    case BA_STATE_JUMP_LEFT: {
        Bg_GetXOffset(manager->bgConfig, 2);
        Bg_GetYOffset(manager->bgConfig, 2);
        int linearTerm = manager->bunearyParabolaCoeff * 9 * manager->bunearyAnimUpdateCounter;
        int quadraticTerm = 9 * manager->bunearyAnimUpdateCounter * manager->bunearyAnimUpdateCounter / 3;
        int newYOffset = linearTerm - quadraticTerm;

        if ((manager->bunearyAnimCarryover > 0) && (newYOffset <= 0)) {
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_SET_Y,
                0);
            *state = BA_STATE_END;
        } else {
            manager->bunearyAnimUpdateCounter++;
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_ADD_X,
                4);
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_SET_Y,
                newYOffset);
            manager->bunearyAnimCarryover = newYOffset;
        }
    } break;
    case BA_STATE_END:
        Sound_PlayPokemonCry(SPECIES_BUNEARY, 0);
        isFinished = TRUE;
        break;
    }

    RowanIntro_AnimateBuneary_BlendSpritePalette(manager);

    return isFinished;
}

static void RowanIntro_SetBunearyLayerPriority(RowanIntro *manager)
{
    Bg_SetPriority(BG_LAYER_MAIN_2, 1);
}

static BOOL RowanIntro_Run(RowanIntro *manager)
{
    BOOL isFinished = FALSE;

    switch (manager->state) {
    case RI_STATE_FIRST_FADE_BLACK_START:
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_2, SEQ_OPENING, 1);
        Sound_StopBGM(SEQ_OPENING, 0);
        Bg_ToggleLayer(BG_LAYER_MAIN_0, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);
        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_IN,
            FADE_TYPE_BRIGHTNESS_IN,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_FIRST_FADE_BLACK_END;
        break;
    case RI_STATE_FIRST_FADE_BLACK_END:
        if (IsScreenFadeDone() == TRUE) {
            if (RowanIntro_Delay(manager, 40) == TRUE) {
                manager->state = RI_STATE_DIALOGUE_WELCOME;
            }
        }
        break;
    case RI_STATE_DIALOGUE_WELCOME:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_HelloThere, TRUE) == TRUE) {
            manager->state = RI_STATE_FADE_IN_ROWAN_START;
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
        }
        break;
    case RI_STATE_FADE_IN_ROWAN_START:
        Sound_PlayBGM(SEQ_OPENING);
        manager->bgLayer1TilemapIndex = 1;
        manager->bgLayer2TilemapIndex = 0;
        RowanIntro_LoadTilemap(manager);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, TRUE);
        Bg_ToggleLayer(BG_LAYER_MAIN_1, TRUE);
        StartScreenFade(
            FADE_MAIN_ONLY,
            FADE_TYPE_BRIGHTNESS_IN,
            FADE_TYPE_BRIGHTNESS_IN,
            COLOR_BLACK,
            16,
            4,
            manager->heapID);
        manager->state = RI_STATE_FADE_IN_ROWAN_END;
        break;
    case RI_STATE_FADE_IN_ROWAN_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RI_STATE_DIALOGUE_ROWAN_INTRO;
        }
        break;
    case RI_STATE_DIALOGUE_ROWAN_INTRO:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_MyNameRowan, TRUE) == TRUE) {
            manager->state = RI_STATE_MOVE_ROWAN_RIGHT_FOR_INFO;
        }
        break;
    case RI_STATE_MOVE_ROWAN_RIGHT_FOR_INFO:
        if (RowanIntro_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_MOVE_RIGHT) == TRUE) {
            manager->state = RI_STATE_INFO_CHOICE_BOX;
        }
        break;
    case RI_STATE_INFO_CHOICE_BOX:
        if (RowanIntro_ChoiceBox(manager, CC_INFO, TRUE) == TRUE) {
            switch (manager->playerChoice) {
            case 1:
                manager->bufferedState = RI_STATE_CONTROL_INFO_FADE_IN_START;
                manager->state = RI_STATE_INFO_FADE_BLACK_START;
                break;
            case 2:
                manager->bufferedState = RI_STATE_ADVENTURE_INFO_FADE_IN_START;
                manager->state = RI_STATE_INFO_FADE_BLACK_START;
                {
                    Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
                }
                break;
            case 3:
                manager->state = RI_STATE_LEFT_ROWAN_AFTER_INFO;
                break;
            }
        }
        break;
    case RI_STATE_INFO_FADE_BLACK_START:
        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_OUT,
            FADE_TYPE_BRIGHTNESS_OUT,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_INFO_FADE_BLACK_END;
        break;
    case RI_STATE_INFO_FADE_BLACK_END:
        if (IsScreenFadeDone() == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            Bg_ToggleLayer(BG_LAYER_MAIN_1, FALSE);
            {
                manager->state = manager->bufferedState;
            }
        }
        break;
    case RI_STATE_CONTROL_INFO_FADE_IN_START:
        manager->bgLayer3TilemapIndex = 1;
        RowanIntro_LoadLayer3Tilemap(manager);
        manager->bgSubLayer3TilemapIndex = 1;
        RowanIntro_LoadSubLayer3Tilemap(manager);
        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_IN,
            FADE_TYPE_BRIGHTNESS_IN,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_CONTROL_INFO_FADE_IN_END;
        break;
    case RI_STATE_CONTROL_INFO_FADE_IN_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RI_STATE_CONTROL_INFO_TEXT_0;
        }
        break;
    case RI_STATE_CONTROL_INFO_TEXT_0:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_ControlInfo0, DTBC_CONTROL_INFO_0, 3, 18) == TRUE) {
            manager->state = RI_STATE_CONTROL_INFO_SHOW_XY_ICONS;
        }
        break;
    case RI_STATE_CONTROL_INFO_SHOW_XY_ICONS:
        manager->bgLayer3TilemapIndex = 2;
        RowanIntro_LoadLayer3Tilemap(manager);
        manager->state = RI_STATE_CONTROL_INFO_TEXT_1;
        break;
    case RI_STATE_CONTROL_INFO_TEXT_1:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_ControlInfo1, DTBC_CONTROL_INFO_0, 7, 12) == TRUE) {
            manager->state = RI_STATE_CONTROL_INFO_HIDE_XY_ICONS;
        }
        break;
    case RI_STATE_CONTROL_INFO_HIDE_XY_ICONS:
        manager->bgLayer3TilemapIndex = 3;
        RowanIntro_LoadLayer3Tilemap(manager);
        manager->state = RI_STATE_CONTROL_INFO_TEXT_2;
        break;
    case RI_STATE_CONTROL_INFO_TEXT_2:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_ControlInfo2, DTBC_CONTROL_INFO_1, 4, 12) == TRUE) {
            manager->state = RI_STATE_CONTROL_INFO_DIALOGUE_DS_ICON;
        }
        break;
    case RI_STATE_CONTROL_INFO_DIALOGUE_DS_ICON:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_ControlInfoDsIcon, TRUE) == TRUE) {
            manager->state = RI_STATE_CONTROL_INFO_TEXT_3;
        }
        break;
    case RI_STATE_CONTROL_INFO_TEXT_3:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_ControlInfo3, DTBC_CONTROL_INFO_1, 4, 10) == TRUE) {
            manager->state = RI_STATE_CONTROL_INFO_HIDE_FG;
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
        }
        break;
    case RI_STATE_CONTROL_INFO_HIDE_FG:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, TRUE);
        manager->state = RI_STATE_CONTROL_INFO_DIALOGUE_UNDERSTOOD;
        break;
    case RI_STATE_CONTROL_INFO_DIALOGUE_UNDERSTOOD:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_ControlInfoUnderstood, TRUE) == TRUE) {
            manager->state = RI_STATE_CONTROL_INFO_SHOW_YESNO;
        }
        break;
    case RI_STATE_CONTROL_INFO_SHOW_YESNO: {
        UnkStruct_02015958 v1 = {
            .unk_00 = NULL,
            .unk_04 = BG_LAYER_SUB_2,
            .unk_08 = 1,
            .unk_0C = 12,
            .unk_10 = 12,
            .unk_11 = 8,
        };

        v1.unk_00 = manager->bgConfig;
        sub_02015958(manager->unk_68, &v1);
        Bg_ToggleLayer(BG_LAYER_SUB_2, TRUE);
    }
        manager->bgSubLayer3TilemapIndex = 3;
        RowanIntro_LoadSubLayer3Tilemap(manager);
        manager->state = RI_STATE_CONTROL_INFO_WAIT_INPUT;
        break;
    case RI_STATE_CONTROL_INFO_WAIT_INPUT:
        if (gSystem.pressedKeys) {
            manager->state = RI_STATE_CONTROL_INFO_DIALOGUE_USE_TOUCHSCREEN;
            break;
        }

        {
            int yesNoResult = sub_020159C0(manager->unk_68);

            if ((yesNoResult == 3) || (yesNoResult == 4)) {
                manager->state = RI_STATE_CONTROL_INFO_PROCESS_YESNO;
            }
        }
        break;
    case RI_STATE_CONTROL_INFO_PROCESS_YESNO:
        switch (sub_020159C0(manager->unk_68)) {
        case 1:
            manager->state = RI_STATE_CONTROL_INFO_FADE_OUT_START;
            break;
        case 2:
            manager->state = RI_STATE_CONTROL_INFO_REPEAT;
            break;
        }
        break;
    case RI_STATE_CONTROL_INFO_FADE_OUT_START:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_SUB_2, FADE_OUT) == TRUE) {
            sub_02015A54(manager->unk_68);
            StartScreenFade(
                FADE_BOTH_SCREENS,
                FADE_TYPE_BRIGHTNESS_OUT,
                FADE_TYPE_BRIGHTNESS_OUT,
                COLOR_BLACK,
                6,
                1,
                manager->heapID);
            manager->state = RI_STATE_CONTROL_INFO_FADE_OUT_END;
        }
        break;
    case RI_STATE_CONTROL_INFO_FADE_OUT_END:
        if (IsScreenFadeDone() == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RI_STATE_FADE_IN_ROWAN_2_START;
        }
        break;
    case RI_STATE_CONTROL_INFO_REPEAT:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_SUB_2, FADE_OUT) == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            sub_02015A54(manager->unk_68);
            manager->bgLayer3TilemapIndex = 1;
            RowanIntro_LoadLayer3Tilemap(manager);
            manager->bgSubLayer3TilemapIndex = 1;
            RowanIntro_LoadSubLayer3Tilemap(manager);
            manager->state = RI_STATE_CONTROL_INFO_TEXT_0;
        }
        break;
    case RI_STATE_CONTROL_INFO_DIALOGUE_USE_TOUCHSCREEN:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_ControlInfoUseTouchscreen, TRUE) == TRUE) {
            manager->state = RI_STATE_CONTROL_INFO_WAIT_INPUT;
        }
        break;
    case RI_STATE_FADE_IN_ROWAN_2_START:
        manager->bgLayer3TilemapIndex = 0;
        RowanIntro_LoadLayer3Tilemap(manager);
        manager->bgSubLayer3TilemapIndex = 0;
        RowanIntro_LoadSubLayer3Tilemap(manager);
        Bg_ToggleLayer(BG_LAYER_MAIN_1, TRUE);
        Bg_SetOffset(
            manager->bgConfig,
            BG_LAYER_MAIN_1,
            BG_OFFSET_UPDATE_SET_X,
            0);
        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_IN,
            FADE_TYPE_BRIGHTNESS_IN,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_FADE_IN_ROWAN_2_END;
        break;
    case RI_STATE_FADE_IN_ROWAN_2_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RI_STATE_DIALOGUE_ANOTHER_INFO;
        }
        break;
    case RI_STATE_DIALOGUE_ANOTHER_INFO:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_InfoAnythingElse, TRUE) == TRUE) {
            manager->state = RI_STATE_MOVE_ROWAN_RIGHT_FOR_INFO;
        }
        break;
    case RI_STATE_ADVENTURE_INFO_FADE_IN_START:
        manager->bgLayer3TilemapIndex = 4;
        RowanIntro_LoadLayer3Tilemap(manager);
        manager->bgSubLayer3TilemapIndex = 2;
        RowanIntro_LoadSubLayer3Tilemap(manager);
        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_IN,
            FADE_TYPE_BRIGHTNESS_IN,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_ADVENTURE_INFO_FADE_IN_END;
        break;
    case RI_STATE_ADVENTURE_INFO_FADE_IN_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RI_STATE_ADVENTURE_INFO_TEXT_0;
        }
        break;
    case RI_STATE_ADVENTURE_INFO_TEXT_0:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_AdventureInfo0, DTBC_ADVENTURE_INFO, 9, 6) == TRUE) {
            manager->state = RI_STATE_ADVENTURE_INFO_TEXT_1;
        }
        break;
    case RI_STATE_ADVENTURE_INFO_TEXT_1:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_AdventureInfo1, DTBC_ADVENTURE_INFO, 8, 8) == TRUE) {
            manager->state = RI_STATE_ADVENTURE_INFO_TEXT_2;
        }
        break;
    case RI_STATE_ADVENTURE_INFO_TEXT_2:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_AdventureInfo2, DTBC_ADVENTURE_INFO, 9, 6) == TRUE) {
            manager->state = RI_STATE_ADVENTURE_INFO_TEXT_3;
        }
        break;
    case RI_STATE_ADVENTURE_INFO_TEXT_3:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_AdventureInfo3, DTBC_ADVENTURE_INFO, 5, 14) == TRUE) {
            manager->state = RI_STATE_ADVENTURE_INFO_TEXT_4;
        }
        break;
    case RI_STATE_ADVENTURE_INFO_TEXT_4:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_AdventureInfo4, DTBC_ADVENTURE_INFO, 10, 4) == TRUE) {
            manager->state = RI_STATE_ADVENTURE_INFO_TEXT_5;
        }
        break;
    case RI_STATE_ADVENTURE_INFO_TEXT_5:
        if (RowanIntro_DisplayTextBlock(manager, RowanIntro_Text_AdventureInfo5, DTBC_ADVENTURE_INFO, 6, 12) == TRUE) {
            manager->state = RI_STATE_ADVENTURE_INFO_FADE_OUT_START;
        }
        break;
    case RI_STATE_ADVENTURE_INFO_FADE_OUT_START:
        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_OUT,
            FADE_TYPE_BRIGHTNESS_OUT,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_ADVENTURE_INFO_FADE_OUT_END;
        break;
    case RI_STATE_ADVENTURE_INFO_FADE_OUT_END:
        if (IsScreenFadeDone() == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            Bg_ToggleLayer(BG_LAYER_MAIN_0, TRUE);
            manager->state = RI_STATE_FADE_IN_ROWAN_2_START;
        }
        break;
    case RI_STATE_LEFT_ROWAN_AFTER_INFO:
        if (RowanIntro_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_MOVE_LEFT) == TRUE) {
            manager->state = RI_STATE_DIALOGUE_WIDELY_INHABITED;
        }
        break;
    case RI_STATE_DIALOGUE_WIDELY_INHABITED:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_WidelyInhabited, TRUE) == TRUE) {
            manager->state = RI_STATE_PKBL_FADE_START;
        }
        break;
    case RI_STATE_PKBL_FADE_START:
        StartScreenFade(
            FADE_SUB_ONLY,
            FADE_TYPE_BRIGHTNESS_OUT,
            FADE_TYPE_BRIGHTNESS_OUT,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_PKBL_FADE_MIDDLE;
        break;
    case RI_STATE_PKBL_FADE_MIDDLE:
        if (IsScreenFadeDone() == TRUE) {
            RowanIntro_LoadPokeballTilemap(manager);
            manager->bgSubLayer3TilemapIndex = 4;
            RowanIntro_LoadSubLayer3Tilemap(manager);
            Bg_ToggleLayer(BG_LAYER_SUB_2, TRUE);
            StartScreenFade(
                FADE_SUB_ONLY,
                FADE_TYPE_BRIGHTNESS_IN,
                FADE_TYPE_BRIGHTNESS_IN,
                COLOR_BLACK,
                6,
                1,
                manager->heapID);
            manager->state = RI_STATE_PKBL_FADE_END;
        }
        break;
    case RI_STATE_PKBL_FADE_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RI_STATE_PKBL_DIALOGUE;
        }
        break;
    case RI_STATE_PKBL_DIALOGUE:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_HavePokeBall, TRUE) == TRUE) {
            manager->state = RI_STATE_PKBL_WAIT_INPUT;
        }
        break;
    case RI_STATE_PKBL_WAIT_INPUT:
        if (RowanIntro_WasPokeballOpened() == TRUE) {
            manager->animData.progressCounter = 0;
            manager->animDelayUpdateCounter = 0;
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RI_STATE_PKBL_ANIM_PUSH_IN;
        } else if (gSystem.pressedKeys) {
            manager->state = RI_STATE_PKBL_DIALOGUE_USE_TOUCHSCREEN;
        }
        break;
    case RI_STATE_PKBL_ANIM_PUSH_IN:
        if (manager->animDelayUpdateCounter) {
            manager->animDelayUpdateCounter--;
        } else {
            {
                int pokeballTextureNARCIndices[] = { 33, 34, 0xffff };

                if (pokeballTextureNARCIndices[manager->animData.progressCounter] == 0xffff) {
                    Sound_PlayEffect(SEQ_SE_DP_BOWA2);

                    manager->state = RI_STATE_PKBL_ANIM_FLASH_0;
                } else {
                    Graphics_LoadTilesToBgLayer(
                        NARC_INDEX_DEMO__INTRO__INTRO,
                        pokeballTextureNARCIndices[manager->animData.progressCounter],
                        manager->bgConfig,
                        6,
                        0x20,
                        0,
                        0,
                        manager->heapID);
                    manager->animData.progressCounter++;
                    manager->animDelayUpdateCounter = 4;
                }
            }
        }
        break;
    case RI_STATE_PKBL_DIALOGUE_USE_TOUCHSCREEN:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_PokeBallUseTouchscreen, TRUE) == TRUE) {
            manager->state = RI_STATE_PKBL_WAIT_INPUT;
        }
        break;
    case RI_STATE_PKBL_ANIM_FLASH_0:
        BrightnessController_StartTransition(
            1,
            16,
            0,
            GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3,
            BRIGHTNESS_MAIN_SCREEN);
        BrightnessController_StartTransition(
            1,
            16,
            0,
            GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3,
            BRIGHTNESS_SUB_SCREEN);
        manager->state = RI_STATE_PKBL_ANIM_FLASH_1;
        break;
    case RI_STATE_PKBL_ANIM_FLASH_1:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            BrightnessController_StartTransition(1, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
            BrightnessController_StartTransition(1, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_SUB_SCREEN);
            manager->state = RI_STATE_PKBL_ANIM_FLASH_2;
        }
        break;
    case RI_STATE_PKBL_ANIM_FLASH_2:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            BrightnessController_StartTransition(4, 16, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
            BrightnessController_StartTransition(4, 16, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_SUB_SCREEN);
            manager->state = RI_STATE_PKBL_ANIM_FLASH_3;
        }
        break;
    case RI_STATE_PKBL_ANIM_FLASH_3:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            manager->state = RI_STATE_PKBL_ANIM_SPAWN_PKM_AND_FLASH_4;
        }
        break;
    case RI_STATE_PKBL_ANIM_SPAWN_PKM_AND_FLASH_4:
        RowanIntro_LoadBunearySprite(manager);
        Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
        manager->animData.bunearyAnimState = BA_STATE_INIT;
        RowanIntro_AnimateBuneary(manager, &manager->animData.bunearyAnimState);
        manager->bgSubLayer3TilemapIndex = 0;
        RowanIntro_LoadSubLayer3Tilemap(manager);
        BrightnessController_StartTransition(
            16,
            0,
            16,
            GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3,
            BRIGHTNESS_MAIN_SCREEN);
        BrightnessController_StartTransition(
            16,
            0,
            16,
            GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3,
            BRIGHTNESS_SUB_SCREEN);
        manager->state = RI_STATE_PKBL_ANIM_MV_PKM_UP_AND_FLASH_END;
        break;
    case RI_STATE_PKBL_ANIM_MV_PKM_UP_AND_FLASH_END:
        RowanIntro_AnimateBuneary(manager, &manager->animData.bunearyAnimState);

        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            manager->state = RI_STATE_PKBL_ANIM_MV_PKM_DOWN_AND_BOUNCE;
        }
        break;
    case RI_STATE_PKBL_ANIM_MV_PKM_DOWN_AND_BOUNCE:
        if (RowanIntro_AnimateBuneary(manager, &manager->animData.bunearyAnimState) == TRUE) {
            manager->state = RI_STATE_PKBL_ANIM_END_DELAY;
        }
        break;
    case RI_STATE_PKBL_ANIM_END_DELAY:
        if (RowanIntro_Delay(manager, 40) == TRUE) {
            manager->state = RI_STATE_PKBL_DIALOGUE_LIVE_ALONGSIDE;
        }
        break;
    case RI_STATE_PKBL_DIALOGUE_LIVE_ALONGSIDE:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_LiveAlongsidePokemon, TRUE) == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RI_STATE_PKBL_PUT_AWAY_PKM;
        }
        break;
    case RI_STATE_PKBL_PUT_AWAY_PKM:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_2, FADE_OUT) == TRUE) {
            RowanIntro_SetBunearyLayerPriority(manager);
            manager->state = RI_STATE_BETWEEN_DIALOGUE_DELAY;
        }
        break;
    case RI_STATE_BETWEEN_DIALOGUE_DELAY:
        if (RowanIntro_Delay(manager, 30) == TRUE) {
            manager->state = RI_STATE_DIALOGUE_ABOUT_YOURSELF;
        }
        break;
    case RI_STATE_DIALOGUE_ABOUT_YOURSELF:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_AboutYourself, TRUE) == TRUE) {
            manager->state = RI_STATE_GENDR_FADE_OUT_ROWAN;
        }
        break;
    case RI_STATE_GENDR_FADE_OUT_ROWAN:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            manager->state = RI_STATE_GENDR_FADE_IN_AVATAR_PREP;
        }
        break;
    case RI_STATE_GENDR_FADE_IN_AVATAR_PREP:
        RowanIntro_ResetAvatarRunAnimation(manager);
        manager->bgLayer1TilemapIndex = 2;
        manager->bgLayer2TilemapIndex = 6;
        RowanIntro_LoadTilemap(manager);
        Bg_SetOffset(
            manager->bgConfig,
            BG_LAYER_MAIN_1,
            BG_OFFSET_UPDATE_SET_X,
            -8 * 6);
        Bg_SetOffset(
            manager->bgConfig,
            BG_LAYER_MAIN_2,
            BG_OFFSET_UPDATE_SET_X,
            8 * 6);
        manager->state = RI_STATE_GENDR_FADE_IN_AVATAR_MALE;
        break;
    case RI_STATE_GENDR_FADE_IN_AVATAR_MALE:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            manager->state = RI_STATE_GENDR_FADE_IN_AVATAR_FEMALE;
        }
        break;
    case RI_STATE_GENDR_FADE_IN_AVATAR_FEMALE:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_2, FADE_IN) == TRUE) {
            manager->state = RI_STATE_GENDR_DIALOGUE;
        }
        break;
    case RI_STATE_GENDR_DIALOGUE:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_GenderDialogue, TRUE) == TRUE) {
            manager->playerGender = GENDER_MALE;
            manager->state = RI_STATE_GENDR_CHOICE;
        }
        break;
    case RI_STATE_GENDR_CHOICE:
        if ((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) {
            manager->fadeBgLayerCurAlpha = 6;
            manager->fadeBgLayerCurAlphaInv = 10;
            manager->fadeBgLayerState = FBL_STATE_FADE_OUT;

            if (manager->playerGender == GENDER_MALE) {
                manager->state = RI_STATE_GENDR_FADE_OUT_AVATAR_FEMALE;
            } else {
                manager->state = RI_STATE_GENDR_FADE_OUT_AVATAR_MALE;
            }
            break;
        }

        if ((gSystem.pressedKeys & PAD_KEY_LEFT) == PAD_KEY_LEFT || (gSystem.pressedKeys & PAD_KEY_RIGHT) == PAD_KEY_RIGHT) {
            if (manager->playerGender == GENDER_MALE) {
                manager->playerGender = GENDER_FEMALE;
            } else {
                manager->playerGender = GENDER_MALE;
            }

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        RowanIntro_AnimateAvatarRun(manager);
        break;
    case RI_STATE_GENDR_FADE_OUT_AVATAR_FEMALE:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_2, FADE_OUT) == TRUE) {
            manager->state = RI_STATE_GENDR_CENTRE_AVATAR_MALE;
        }
        break;
    case RI_STATE_GENDR_CENTRE_AVATAR_MALE:
        if (RowanIntro_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_CENTRE_AVATAR) == TRUE) {
            RowanIntro_ResetBlending(manager);
            manager->state = RI_STATE_GENDR_CONFIRM_DIALOGUE;
        }
        break;
    case RI_STATE_GENDR_FADE_OUT_AVATAR_MALE:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            manager->state = RI_STATE_GENDR_CENTRE_AVATAR_FEMALE;
        }
        break;
    case RI_STATE_GENDR_CENTRE_AVATAR_FEMALE:
        if (RowanIntro_MoveBgLayer(manager, BG_LAYER_MAIN_2, MBL_CASE_CENTRE_AVATAR) == TRUE) {
            RowanIntro_ResetBlending(manager);
            manager->state = RI_STATE_GENDR_CONFIRM_DIALOGUE;
        }
        break;
    case RI_STATE_GENDR_CONFIRM_DIALOGUE: {
        u32 genderConfirmTextID;

        if (manager->playerGender == GENDER_MALE) {
            genderConfirmTextID = RowanIntro_Text_ConfirmBoy;
        } else {
            genderConfirmTextID = RowanIntro_Text_ConfirmGirl;
        }

        if (RowanIntro_DisplayMessage(manager, genderConfirmTextID, TRUE) == TRUE) {
            manager->state = RI_STATE_GENDR_CONFIRM_CHOICE_BOX;
        }
    } break;
    case RI_STATE_GENDR_CONFIRM_CHOICE_BOX:
        if (RowanIntro_ChoiceBox(manager, CC_YESNO, FALSE) == TRUE) {
            switch (manager->playerChoice) {
            case 1:
                manager->state = RI_STATE_NAME_DIALOGUE;
                break;
            case 2:
            case LIST_CANCEL: {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
                manager->state = RI_STATE_GENDR_REPEAT;
                break;
            }
        }
        break;
    case RI_STATE_GENDR_REPEAT: {
        int genderRepeatBgLayer;

        if (manager->playerGender == GENDER_MALE) {
            genderRepeatBgLayer = BG_LAYER_MAIN_1;
        } else {
            genderRepeatBgLayer = BG_LAYER_MAIN_2;
        }

        if (RowanIntro_FadeBgLayer(manager, genderRepeatBgLayer, FADE_OUT) == TRUE) {
            manager->state = RI_STATE_GENDR_FADE_IN_AVATAR_PREP;
        }
    } break;
    case RI_STATE_NAME_DIALOGUE:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_NameDialogue, TRUE) == TRUE) {
            manager->state = RI_STATE_NAME_APP_KEYBOARD;
        }
        break;
    case RI_STATE_NAME_APP_KEYBOARD:
        manager->unk_70->unk_04 = manager->playerGender;
        manager->appMan = ApplicationManager_New(
            &Unk_020F2DAC,
            manager->unk_70,
            manager->heapID);
        manager->state = RI_STATE_NAME_KEYBOARD;
        break;
    case RI_STATE_NAME_KEYBOARD:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, TRUE);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);

        if (manager->playerGender == GENDER_MALE) {
            Bg_ToggleLayer(BG_LAYER_MAIN_1, TRUE);
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_1,
                BG_OFFSET_UPDATE_SET_X,
                0);
        } else {
            Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
            Bg_SetOffset(
                manager->bgConfig,
                BG_LAYER_MAIN_2,
                BG_OFFSET_UPDATE_SET_X,
                0);
        }

        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_IN,
            FADE_TYPE_BRIGHTNESS_IN,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_NAME_KEYBOARD_FADE_INTO_AVATAR;
        break;
    case RI_STATE_NAME_KEYBOARD_FADE_INTO_AVATAR:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RI_STATE_NAME_CONFIRM_DIALOGUE;
        }
        break;
    case RI_STATE_NAME_CONFIRM_DIALOGUE: {
        u32 nameConfirmTextID;

        if (manager->playerGender == GENDER_MALE) {
            nameConfirmTextID = RowanIntro_Text_ConfirmNameMale;
        } else {
            nameConfirmTextID = RowanIntro_Text_ConfirmNameFemale;
        }

        if (RowanIntro_DisplayMessage(manager, nameConfirmTextID, TRUE) == TRUE) {
            manager->state = RI_STATE_NAME_CONFIRM_CHOICE_BOX;
        }
    } break;
    case RI_STATE_NAME_CONFIRM_CHOICE_BOX:
        if (RowanIntro_ChoiceBox(manager, CC_YESNO, FALSE) == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }

            switch (manager->playerChoice) {
            case 1:
                manager->bufferedState = RI_STATE_LOAD_ROWAN_TILEMAP_0;
                manager->state = RI_STATE_NAME_FADE_OUT_AVATAR;
                break;
            case 2:
            case LIST_CANCEL:
                Strbuf_Clear(manager->unk_70->textInputStr);
                manager->bufferedState = RI_STATE_GENDR_FADE_IN_AVATAR_PREP;
                manager->state = RI_STATE_NAME_FADE_OUT_AVATAR;
                break;
            }
        }
        break;
    case RI_STATE_NAME_FADE_OUT_AVATAR: {
        int fadeoutAvaterBgLayer;

        if (manager->playerGender == GENDER_MALE) {
            fadeoutAvaterBgLayer = BG_LAYER_MAIN_1;
        } else {
            fadeoutAvaterBgLayer = BG_LAYER_MAIN_2;
        }

        if (RowanIntro_FadeBgLayer(manager, fadeoutAvaterBgLayer, FADE_OUT) == TRUE) {
            {
                manager->state = manager->bufferedState;
            }
        }
    } break;
    case RI_STATE_LOAD_ROWAN_TILEMAP_0:
        manager->bgLayer1TilemapIndex = 1;
        manager->bgLayer2TilemapIndex = 0;
        RowanIntro_LoadTilemap(manager);
        manager->state = RI_STATE_FADE_IN_ROWAN_AFTER_NAME;
        break;
    case RI_STATE_FADE_IN_ROWAN_AFTER_NAME:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            manager->state = RI_STATE_DIALOGUE_SO_YOURE;
        }
        break;
    case RI_STATE_DIALOGUE_SO_YOURE:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_SoYoure, TRUE) == TRUE) {
            manager->state = RI_STATE_FADE_OUT_ROWAN_FOR_RIVAL;
        }
        break;
    case RI_STATE_FADE_OUT_ROWAN_FOR_RIVAL:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            manager->state = RI_STATE_LOAD_RIVAL_TILEMAP;
        }
        break;
    case RI_STATE_LOAD_RIVAL_TILEMAP:
        manager->bgLayer1TilemapIndex = 10;
        manager->bgLayer2TilemapIndex = 0;
        RowanIntro_LoadTilemap(manager);
        manager->state = RI_STATE_FADE_IN_RIVAL;
        break;
    case RI_STATE_FADE_IN_RIVAL:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            manager->state = RI_STATE_RIVAL_NAME_DIALOGUE;
        }
        break;
    case RI_STATE_RIVAL_NAME_DIALOGUE:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_RivalNameDialogue, TRUE) == TRUE) {
            manager->state = RI_STATE_MOVE_RIVAL_RIGHT_FOR_NAMES;
        }
        break;
    case RI_STATE_MOVE_RIVAL_RIGHT_FOR_NAMES:
        if (RowanIntro_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_MOVE_RIGHT) == TRUE) {
            manager->state = RI_STATE_RIVAL_NAME_CHOICE_BOX;
        }
        break;
    case RI_STATE_RIVAL_NAME_CHOICE_BOX:
        if (RowanIntro_ChoiceBox(manager, CC_RIVAL_NAMES, TRUE) == TRUE) {
            switch (manager->playerChoice) {
            case 1:
                manager->state = RI_STATE_RIVAL_NAME_APP_KEYBOARD;
                break;
            case 2:
            case 3:
            case 4:
            case 5: {
                u32 rivalNameTextID;

                if ((gGameVersion == VERSION_DIAMOND) || (GAME_VERSION == VERSION_PLATINUM)) {
                    rivalNameTextID = sRivalNameChoiceInfos[manager->playerChoice - 1].textID;
                } else {
                    rivalNameTextID = sUnusedRivalNameChoiceInfos[manager->playerChoice - 1].textID;
                }

                {
                    Strbuf *tmpStrbuf = MessageLoader_GetNewStrbuf(manager->msgLoader, rivalNameTextID);

                    Strbuf_Copy(manager->unk_74->textInputStr, tmpStrbuf);
                    Strbuf_Free(tmpStrbuf);
                }
            }
                manager->state = RI_STATE_MOVE_RIVAL_LEFT_AFTER_NAME;
                break;
            }
        }
        break;
    case RI_STATE_MOVE_RIVAL_LEFT_AFTER_NAME:
        if (RowanIntro_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_MOVE_LEFT) == TRUE) {
            manager->state = RI_STATE_RIVAL_NAME_CONFIRM_DIALOGUE;
        }
        break;
    case RI_STATE_RIVAL_NAME_APP_KEYBOARD:
        manager->appMan = ApplicationManager_New(
            &Unk_020F2DAC,
            manager->unk_74,
            manager->heapID);
        manager->state = RI_STATE_RIVAL_NAME_KEYBOARD;
        break;
    case RI_STATE_RIVAL_NAME_KEYBOARD:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, TRUE);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);
        Bg_ToggleLayer(BG_LAYER_MAIN_1, TRUE);
        Bg_SetOffset(
            manager->bgConfig,
            BG_LAYER_MAIN_1,
            BG_OFFSET_UPDATE_SET_X,
            0);
        StartScreenFade(
            FADE_BOTH_SCREENS,
            FADE_TYPE_BRIGHTNESS_IN,
            FADE_TYPE_BRIGHTNESS_IN,
            COLOR_BLACK,
            6,
            1,
            manager->heapID);
        manager->state = RI_STATE_RIVAL_NAME_KEYBOARD_FADE_INTO_AVATAR;
        break;
    case RI_STATE_RIVAL_NAME_KEYBOARD_FADE_INTO_AVATAR:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RI_STATE_RIVAL_NAME_CONFIRM_DIALOGUE;
        }
        break;
    case RI_STATE_RIVAL_NAME_CONFIRM_DIALOGUE:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_ConfirmRivalName, TRUE) == TRUE) {
            manager->state = RI_STATE_RIVAL_NAME_CONFIRM_CHOICE_BOX;
        }
        break;
    case RI_STATE_RIVAL_NAME_CONFIRM_CHOICE_BOX:
        if (RowanIntro_ChoiceBox(manager, CC_YESNO, FALSE) == TRUE) {
            switch (manager->playerChoice) {
            case 1: {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
                manager->state = RI_STATE_FADE_OUT_RIVAL;
                break;
            case 2:
            case LIST_CANCEL:
                Strbuf_Clear(manager->unk_74->textInputStr);
                manager->state = RI_STATE_RIVAL_NAME_DIALOGUE;
                break;
            }
        }
        break;
    case RI_STATE_FADE_OUT_RIVAL:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            manager->state = RI_STATE_LOAD_ROWAN_TILEMAP_1;
        }
        break;
    case RI_STATE_LOAD_ROWAN_TILEMAP_1:
        manager->bgLayer1TilemapIndex = 1;
        manager->bgLayer2TilemapIndex = 0;
        RowanIntro_LoadTilemap(manager);
        manager->state = RI_STATE_FADE_IN_ROWAN_AFTER_RIVAL;
        break;
    case RI_STATE_FADE_IN_ROWAN_AFTER_RIVAL:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            manager->state = RI_STATE_DELAY_BEFORE_END_0;
        }
        break;
    case RI_STATE_DELAY_BEFORE_END_0:
        if (RowanIntro_Delay(manager, 30) == TRUE) {
            manager->state = RI_STATE_DIALOGUE_END;
        }
        break;
    case RI_STATE_DIALOGUE_END:
        if (RowanIntro_DisplayMessage(manager, RowanIntro_Text_EndDialogue, TRUE) == TRUE) {
            Sound_FadeOutBGM(0, 50);
            manager->state = RI_STATE_FADE_OUT_ROWAN_END;
        }
        break;
    case RI_STATE_FADE_OUT_ROWAN_END:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RI_STATE_DELAY_BEFORE_END_1;
        }
        break;
    case RI_STATE_DELAY_BEFORE_END_1:
        if (RowanIntro_Delay(manager, 30) == TRUE) {
            manager->state = RI_STATE_LOAD_MINI_AVATAR;
        }
        break;
    case RI_STATE_LOAD_MINI_AVATAR:
        if (manager->playerGender == GENDER_MALE) {
            manager->bgLayer1TilemapIndex = 2;
            manager->bgLayer2TilemapIndex = 0;
            RowanIntro_LoadTilemap(manager);
        } else {
            manager->bgLayer1TilemapIndex = 6;
            manager->bgLayer2TilemapIndex = 0;
            RowanIntro_LoadTilemap(manager);
        }

        manager->state = RI_STATE_FADE_IN_AVATAR_END;
        break;
    case RI_STATE_FADE_IN_AVATAR_END:
        if (RowanIntro_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            RowanIntro_ResetAnimationCounters(manager);
            manager->state = RI_STATE_DELAY_BEFORE_END_2;
        }
        break;
    case RI_STATE_DELAY_BEFORE_END_2:
        if (RowanIntro_Delay(manager, 30) == TRUE) {
            manager->state = RI_STATE_AVATAR_SHRINK_ANIMATION;
        }
        break;
    case RI_STATE_AVATAR_SHRINK_ANIMATION:
        if (RowanIntro_AnimateAvatarShrink(manager) == TRUE) {
            manager->state = RI_STATE_END;
        }
        break;
    case RI_STATE_END:
        manager->appMan = ApplicationManager_New(
            &sTvApplicationTemplate,
            NULL,
            manager->heapID);
        manager->state = RI_STATE_EXIT;
        break;
    case RI_STATE_EXIT:
        isFinished = TRUE;
        break;
    }

    return isFinished;
}
