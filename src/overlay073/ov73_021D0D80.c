#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "generated/genders.h"

#include "struct_decls/struct_02015920_decl.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_02099F80.h"

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

FS_EXTERN_OVERLAY(game_start);

enum RowanIntroManagerState {
    RIM_STATE_FIRST_FADE_BLACK_START = 0,
    RIM_STATE_FIRST_FADE_BLACK_END,
    RIM_STATE_DIALOGUE_WELCOME,
    RIM_STATE_FADE_IN_ROWAN_START,
    RIM_STATE_FADE_IN_ROWAN_END,
    RIM_STATE_DIALOGUE_ROWAN_INTRO,
    RIM_STATE_MOVE_ROWAN_RIGHT_FOR_INFO,
    RIM_STATE_INFO_CHOICE_BOX,
    RIM_STATE_INFO_FADE_BLACK_START,
    RIM_STATE_INFO_FADE_BLACK_END,
    RIM_STATE_CONTROL_INFO_FADE_IN_START,
    RIM_STATE_CONTROL_INFO_FADE_IN_END,
    RIM_STATE_CONTROL_INFO_TEXT_0,
    RIM_STATE_CONTROL_INFO_SHOW_XY_ICONS,
    RIM_STATE_CONTROL_INFO_TEXT_1,
    RIM_STATE_CONTROL_INFO_HIDE_XY_ICONS,
    RIM_STATE_CONTROL_INFO_TEXT_2,
    RIM_STATE_CONTROL_INFO_DIALOGUE_DS_ICON,
    RIM_STATE_CONTROL_INFO_TEXT_3,
    RIM_STATE_CONTROL_INFO_HIDE_FG,
    RIM_STATE_CONTROL_INFO_DIALOGUE_UNDERSTOOD,
    RIM_STATE_CONTROL_INFO_SHOW_YESNO,
    RIM_STATE_CONTROL_INFO_WAIT_INPUT,
    RIM_STATE_CONTROL_INFO_PROCESS_YESNO,
    RIM_STATE_CONTROL_INFO_FADE_OUT_START,
    RIM_STATE_CONTROL_INFO_FADE_OUT_END,
    RIM_STATE_CONTROL_INFO_REPEAT,
    RIM_STATE_CONTROL_INFO_DIALOGUE_USE_TOUCHSCREEN,
    RIM_STATE_FADE_IN_ROWAN_2_START,
    RIM_STATE_FADE_IN_ROWAN_2_END,
    RIM_STATE_DIALOGUE_ANOTHER_INFO,
    RIM_STATE_ADVENTURE_INFO_FADE_IN_START,
    RIM_STATE_ADVENTURE_INFO_FADE_IN_END,
    RIM_STATE_ADVENTURE_INFO_TEXT_0,
    RIM_STATE_ADVENTURE_INFO_TEXT_1,
    RIM_STATE_ADVENTURE_INFO_TEXT_2,
    RIM_STATE_ADVENTURE_INFO_TEXT_3,
    RIM_STATE_ADVENTURE_INFO_TEXT_4,
    RIM_STATE_ADVENTURE_INFO_TEXT_5,
    RIM_STATE_ADVENTURE_INFO_FADE_OUT_START,
    RIM_STATE_ADVENTURE_INFO_FADE_OUT_END,
    RIM_STATE_LEFT_ROWAN_AFTER_INFO,
    RIM_STATE_DIALOGUE_WIDELY_INHABITED,
    RIM_STATE_PKBL_FADE_START,
    RIM_STATE_PKBL_FADE_MIDDLE,
    RIM_STATE_PKBL_FADE_END,
    RIM_STATE_PKBL_DIALOGUE,
    RIM_STATE_PKBL_WAIT_INPUT,
    RIM_STATE_PKBL_ANIM_PUSH_IN,
    RIM_STATE_PKBL_DIALOGUE_USE_TOUCHSCREEN,
    RIM_STATE_PKBL_ANIM_FLASH_0,
    RIM_STATE_PKBL_ANIM_FLASH_1,
    RIM_STATE_PKBL_ANIM_FLASH_2,
    RIM_STATE_PKBL_ANIM_FLASH_3,
    RIM_STATE_PKBL_ANIM_SPAWN_PKM_AND_FLASH_4,
    RIM_STATE_PKBL_ANIM_MV_PKM_UP_AND_FLASH_END,
    RIM_STATE_PKBL_ANIM_MV_PKM_DOWN_AND_BOUNCE,
    RIM_STATE_PKBL_ANIM_END_DELAY,
    RIM_STATE_PKBL_DIALOGUE_LIVE_ALONGSIDE,
    RIM_STATE_PKBL_PUT_AWAY_PKM,
    RIM_STATE_BETWEEN_DIALOGUE_DELAY,
    RIM_STATE_DIALOGUE_ABOUT_YOURSELF,
    RIM_STATE_GENDR_FADE_OUT_ROWAN,
    RIM_STATE_GENDR_FADE_IN_AVATAR_PREP,
    RIM_STATE_GENDR_FADE_IN_AVATAR_MALE,
    RIM_STATE_GENDR_FADE_IN_AVATAR_FEMALE,
    RIM_STATE_GENDR_DIALOGUE,
    RIM_STATE_GENDR_CHOICE,
    RIM_STATE_GENDR_FADE_OUT_AVATAR_FEMALE,
    RIM_STATE_GENDR_CENTRE_AVATAR_MALE,
    RIM_STATE_GENDR_FADE_OUT_AVATAR_MALE,
    RIM_STATE_GENDR_CENTRE_AVATAR_FEMALE,
    RIM_STATE_GENDR_CONFIRM_DIALOGUE,
    RIM_STATE_GENDR_CONFIRM_CHOICE_BOX,
    RIM_STATE_GENDR_REPEAT,
    RIM_STATE_NAME_DIALOGUE,
    RIM_STATE_NAME_KEYBOARD_PREP,
    RIM_STATE_NAME_KEYBOARD,
    RIM_STATE_NAME_KEYBOARD_FADE_INTO_AVATAR,
    RIM_STATE_NAME_CONFIRM_DIALOGUE,
    RIM_STATE_NAME_CONFIRM_CHOICE_BOX,
    RIM_STATE_NAME_FADE_OUT_AVATAR,
    RIM_STATE_LOAD_ROWAN_TILEMAP_0,
    RIM_STATE_FADE_IN_ROWAN_AFTER_NAME,
    RIM_STATE_DIALOGUE_SO_YOURE,
    RIM_STATE_FADE_OUT_ROWAN_FOR_BARRY,
    RIM_STATE_LOAD_BARRY_TILEMAP,
    RIM_STATE_FADE_IN_BARRY,
    RIM_STATE_BARRY_NAME_DIALOGUE,
    RIM_STATE_MOVE_BARRY_RIGHT_FOR_NAMES,
    RIM_STATE_BARRY_NAME_CHOICE_BOX,
    RIM_STATE_MOVE_BARRY_LEFT_AFTER_NAME,
    RIM_STATE_BARRY_NAME_KEYBOARD_PREP,
    RIM_STATE_BARRY_NAME_KEYBOARD,
    RIM_STATE_BARRY_NAME_KEYBOARD_FADE_INTO_AVATAR,
    RIM_STATE_BARRY_NAME_CONFIRM_DIALOGUE,
    RIM_STATE_BARRY_NAME_CONFIRM_CHOICE_BOX,
    RIM_STATE_FADE_OUT_BARRY,
    RIM_LOAD_ROWAN_TILEMAP_1,
    RIM_STATE_FADE_IN_ROWAN_AFTER_BARRY,
    RIM_STATE_DELAY_BEFORE_END_0,
    RIM_STATE_DIALOGUE_END,
    RIM_STATE_FADE_OUT_ROWAN_END,
    RIM_STATE_DELAY_BEFORE_END_1,
    RIM_STATE_LOAD_MINI_AVATAR,
    RIM_STATE_FADE_IN_AVATAR_END,
    RIM_STATE_DELAY_BEFORE_END_2,
    RIM_STATE_AVATAR_SHRINK_ANIMATION,
    RIM_STATE_END,
    RIM_STATE_EXIT,
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
    BAN_INIT = 0,
    BAN_MOVE_UP,
    BAN_PLACEHOLDER_2,
    BAN_PLACEHOLDER_3,
    BAN_PLACEHOLDER_4,
    BAN_PLACEHOLDER_5,
    BAN_PLACEHOLDER_6,
};

typedef struct {
    int heapID;
    SaveData *saveData;
    Options *options;
    enum RowanIntroManagerState state;
    int bufferedState;
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
    int displayTextBlockState;
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
    u32 playerGender;
    // This is an index into the tilemapLocations structure in RowanIntroManager_LoadLayer3Tilemap
    u8 bgLayer3TilemapIndex;
    // These are indices into the tilemapLocations structure in RowanIntroManager_LoadTilemap.
    u8 bgLayer1TilemapIndex;
    u8 bgLayer2TilemapIndex;
    // This is an index into the tilemapLocations structure in RowanIntroManager_LoadSubLayer3Tilemap
    u8 bgSubLayer3TilemapIndex;
    u8 unk_8C;
    u8 unk_8D;
    u8 unk_8E;
    u8 unk_8F;
    int delayUpdateCounter;
    union {
        int progressCounter;
        enum BunearyAnimState bunearyAnimState;
    } animData;
    int animDelayUpdateCounter;
    int unused2[3];
    int unk_A8;
    int unk_AC;
    int unk_B0;
    int unk_B4;
    u16 *unk_B8;
    u16 *unk_BC;
} RowanIntroManager;

void EnqueueApplication(FSOverlayID param0, const ApplicationManagerTemplate *param1);
int RowanIntroManager_Init(ApplicationManager *appMan, int *state);
int RowanIntroManager_Main(ApplicationManager *appMan, int *state);
int RowanIntroManager_Exit(ApplicationManager *appMan, int *state);
static void ov73_021D0FF0(void *param0);
static void ov73_021D1058(RowanIntroManager *manager);
static void ov73_021D1238(RowanIntroManager *manager);
static void ov73_021D12C4(RowanIntroManager *manager);
static void ov73_021D1300(RowanIntroManager *manager);
static void ov73_021D1318(RowanIntroManager *manager);
static void ov73_021D1328(RowanIntroManager *manager);
static void ov73_021D1930(RowanIntroManager *manager);
static void RowanIntroManager_LoadLayer3Tilemap(RowanIntroManager *manager);
static void RowanIntroManager_LoadTilemap(RowanIntroManager *manager);
static void RowanIntroManager_LoadSubLayer3Tilemap(RowanIntroManager *manager);
static BOOL ov73_021D2318(RowanIntroManager *manager);
int ov73_021D3250(ApplicationManager *appMan, int *param1);
int ov73_021D3280(ApplicationManager *appMan, int *param1);
int ov73_021D3404(ApplicationManager *appMan, int *param1);

const ApplicationManagerTemplate dummy_ApplicationManagerTemplate = {
    RowanIntroManager_Init,
    RowanIntroManager_Main,
    RowanIntroManager_Exit,
    0xffffffff
};

static const ApplicationManagerTemplate Unk_ov72_021D3820 = {
    ov73_021D3250,
    ov73_021D3280,
    ov73_021D3404,
    0xffffffff
};

int RowanIntroManager_Init(ApplicationManager *appMan, int *unusedState)
{
    RowanIntroManager *manager;
    int childHeapID = HEAP_ID_82;

    Heap_Create(HEAP_ID_APPLICATION, childHeapID, 0x40000);

    manager = ApplicationManager_NewData(appMan, sizeof(RowanIntroManager), childHeapID);
    memset(manager, 0, sizeof(RowanIntroManager));

    manager->heapID = childHeapID;
    manager->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    manager->options = SaveData_GetOptions(manager->saveData);
    manager->state = RIM_STATE_FIRST_FADE_BLACK_START;
    manager->bufferedState = RIM_STATE_FIRST_FADE_BLACK_START;
    manager->appMan = NULL;
    manager->unk_70 = sub_0208712C(childHeapID, 0, 0, 7, manager->options);
    manager->unk_74 = sub_0208712C(childHeapID, 3, 0, 7, manager->options);
    manager->bgLayer3TilemapIndex = 0;
    manager->bgLayer1TilemapIndex = 0;
    manager->bgLayer2TilemapIndex = 0;
    manager->bgSubLayer3TilemapIndex = 0;
    manager->delayUpdateCounter = 0;
    manager->unk_B8 = Heap_AllocFromHeap(childHeapID, 0x20);
    manager->unk_BC = Heap_AllocFromHeap(childHeapID, 0x20);

    return 1;
}

int RowanIntroManager_Main(ApplicationManager *appMan, int *state)
{
    RowanIntroManager *manager = ApplicationManager_Data(appMan);
    int v1 = 0;

    switch (*state) {
    case 0:
        SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, FADE_TO_BLACK);

        SetVBlankCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        SetAutorepeat(4, 8);

        ov73_021D1058(manager);
        ov73_021D12C4(manager);
        ov73_021D1318(manager);

        SetVBlankCallback(ov73_021D0FF0, (void *)manager);
        GXLayers_TurnBothDispOn();

        *state = 1;
        break;
    case 1:
        if (ov73_021D2318(manager) == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, manager->heapID);
            *state = 2;
        }

        if (manager->appMan != NULL) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, manager->heapID);
            *state = 3;
        }
        break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            ov73_021D1300(manager);
            ov73_021D1238(manager);
            ov73_021D1328(manager);
            SetVBlankCallback(NULL, NULL);

            v1 = 1;
        }
        break;
    case 3:
        if (IsScreenFadeDone() == TRUE) {
            ov73_021D1300(manager);
            ov73_021D1238(manager);
            ov73_021D1328(manager);
            SetVBlankCallback(NULL, NULL);
            *state = 4;
        }
        break;
    case 4:
        if (ApplicationManager_Exec(manager->appMan) == 1) {
            ApplicationManager_Free(manager->appMan);
            manager->appMan = NULL;
            *state = 5;
        }
        break;
    case 5:
        *state = 0;
        break;
    }

    return v1;
}

int RowanIntroManager_Exit(ApplicationManager *appMan, int *unusedState)
{
    RowanIntroManager *manager = ApplicationManager_Data(appMan);
    int heapID = manager->heapID;

    Heap_Free(manager->unk_B8);
    Heap_Free(manager->unk_BC);

    TrainerInfo_SetNameFromStrbuf(SaveData_GetTrainerInfo(manager->saveData), manager->unk_70->textInputStr);
    TrainerInfo_SetGender(SaveData_GetTrainerInfo(manager->saveData), manager->unk_70->unk_04);

    {
        MiscSaveBlock *v2 = SaveData_MiscSaveBlock(manager->saveData);

        MiscSaveBlock_SetRivalName(v2, manager->unk_74->textInputStr);
    }

    sub_0208716C(manager->unk_70);
    sub_0208716C(manager->unk_74);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);
    EnqueueApplication(FS_OVERLAY_ID(game_start), &gGameStartNewSaveAppTemplate);

    return 1;
}

static void ov73_021D0FF0(void *param0)
{
    RowanIntroManager *manager = param0;
    Bg_RunScheduledUpdates(manager->bgConfig);
}

static BOOL RowanIntroManager_WasPokeballOpened(void)
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

static void ov73_021D1058(RowanIntroManager *manager)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_B,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_128_C,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_NONE,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_NONE,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_NONE,
            GX_VRAM_TEXPLTT_NONE
        };

        GXLayers_SetBanks(&v0);
    }

    {
        manager->bgConfig = BgConfig_New(manager->heapID);
    }

    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v1);
    }
    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            0,
            0,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        v2.screenBase = GX_BG_SCRBASE_0x7800;
        v2.charBase = GX_BG_CHARBASE_0x18000;
        Bg_InitFromTemplate(manager->bgConfig, BG_LAYER_MAIN_0, &v2, 0);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);

        v2.screenBase = GX_BG_SCRBASE_0x7000;
        v2.charBase = GX_BG_CHARBASE_0x14000;
        Bg_InitFromTemplate(manager->bgConfig, BG_LAYER_MAIN_1, &v2, 0);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_1);

        v2.screenBase = GX_BG_SCRBASE_0x6800;
        v2.charBase = GX_BG_CHARBASE_0x10000;
        Bg_InitFromTemplate(manager->bgConfig, BG_LAYER_MAIN_2, &v2, 0);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_2);

        v2.screenBase = GX_BG_SCRBASE_0x6000;
        v2.charBase = GX_BG_CHARBASE_0x0c000;
        Bg_InitFromTemplate(manager->bgConfig, BG_LAYER_MAIN_3, &v2, 0);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_3);

        LoadMessageBoxGraphics(manager->bgConfig, BG_LAYER_MAIN_0, 0x400 - (18 + 12), 4, 0, manager->heapID);
        LoadStandardWindowGraphics(manager->bgConfig, BG_LAYER_MAIN_0, (0x400 - (18 + 12)) - 9, 3, 0, manager->heapID);
        Font_LoadTextPalette(0, 5 * (2 * 16), manager->heapID);
        Font_LoadScreenIndicatorsPalette(0, 6 * (2 * 16), manager->heapID);
    }
    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            0,
            0,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        v2.screenBase = GX_BG_SCRBASE_0x7800;
        v2.charBase = GX_BG_CHARBASE_0x18000;
        Bg_InitFromTemplate(manager->bgConfig, BG_LAYER_SUB_0, &v2, 0);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_SUB_0);

        v2.screenBase = GX_BG_SCRBASE_0x7000;
        v2.charBase = GX_BG_CHARBASE_0x14000;
        Bg_InitFromTemplate(manager->bgConfig, BG_LAYER_SUB_1, &v2, 0);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_SUB_1);

        v2.screenBase = GX_BG_SCRBASE_0x6800;
        v2.charBase = GX_BG_CHARBASE_0x10000;
        Bg_InitFromTemplate(manager->bgConfig, BG_LAYER_SUB_2, &v2, 0);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_SUB_2);

        v2.screenBase = GX_BG_SCRBASE_0x6000;
        v2.charBase = GX_BG_CHARBASE_0x0c000;
        Bg_InitFromTemplate(manager->bgConfig, BG_LAYER_SUB_3, &v2, 0);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_SUB_3);
    }

    Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_0, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_2, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_3, 0);

    ov73_021D1930(manager);

    manager->fadeBgLayerState = FBL_STATE_INIT;
}

static void ov73_021D1238(RowanIntroManager *manager)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_0, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_2, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_3, 0);

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

static void ov73_021D12C4(RowanIntroManager *manager)
{
    manager->msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ROWAN_INTRO, manager->heapID);

    Text_ResetAllPrinters();

    manager->unk_60 = sub_0201567C(NULL, 0, 6, manager->heapID);
    manager->strFormatter = StringTemplate_Default(manager->heapID);
    manager->displayMessageState = DM_STATE_INIT;
    manager->displayTextBlockState = 0;
    manager->choiceBoxState = 0;
}

static void ov73_021D1300(RowanIntroManager *manager)
{
    StringTemplate_Free(manager->strFormatter);
    sub_02015760(manager->unk_60);
    MessageLoader_Free(manager->msgLoader);
}

static void ov73_021D1318(RowanIntroManager *manager)
{
    manager->unk_68 = sub_02015920(manager->heapID);
}

static void ov73_021D1328(RowanIntroManager *manager)
{
    sub_02015938(manager->unk_68);
}

static BOOL RowanIntroManager_FadeBgLayer(RowanIntroManager *manager, int bgLayer, enum FadeDirection fadeDirection)
{
    BOOL isFinished = FALSE;
    GXBlendPlaneMask blendPlaneMask;
    int isSubLayer;

    switch (bgLayer) {
    default:
    case BG_LAYER_MAIN_0:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG0;
        isSubLayer = 0;
        break;
    case BG_LAYER_MAIN_1:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG1;
        isSubLayer = 0;
        break;
    case BG_LAYER_MAIN_2:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG2;
        isSubLayer = 0;
        break;
    case BG_LAYER_SUB_0:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG0;
        isSubLayer = 1;
        break;
    case BG_LAYER_SUB_1:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG1;
        isSubLayer = 1;
        break;
    case BG_LAYER_SUB_2:
        blendPlaneMask = GX_BLEND_PLANEMASK_BG2;
        isSubLayer = 1;
        break;
    }

    switch (manager->fadeBgLayerState) {
    case FBL_STATE_INIT:
        if (fadeDirection == FADE_IN) {
            manager->fadeBgLayerCurAlpha = 0;
            manager->fadeBgLayerCurAlphaInv = 16;
            manager->fadeBgLayerState = FBL_STATE_FADE_IN;

            if (isSubLayer == FALSE) {
                G2_SetBlendAlpha(blendPlaneMask, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->fadeBgLayerCurAlpha, manager->fadeBgLayerCurAlphaInv);
            } else {
                G2S_SetBlendAlpha(blendPlaneMask, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->fadeBgLayerCurAlpha, manager->fadeBgLayerCurAlphaInv);
            }

            Bg_ToggleLayer(bgLayer, 1);
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
                G2_SetBlendAlpha(blendPlaneMask, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->fadeBgLayerCurAlpha, manager->fadeBgLayerCurAlphaInv);
            } else {
                G2S_SetBlendAlpha(blendPlaneMask, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->fadeBgLayerCurAlpha, manager->fadeBgLayerCurAlphaInv);
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
                G2_SetBlendAlpha(blendPlaneMask, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->fadeBgLayerCurAlpha, manager->fadeBgLayerCurAlphaInv);
            } else {
                G2S_SetBlendAlpha(blendPlaneMask, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->fadeBgLayerCurAlpha, manager->fadeBgLayerCurAlphaInv);
            }
        } else {
            manager->fadeBgLayerState = FBL_STATE_END;
            Bg_ToggleLayer(bgLayer, 0);
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

static BOOL RowanIntroManager_Delay(RowanIntroManager *manager, int updateCount)
{
    if (manager->delayUpdateCounter < updateCount) {
        manager->delayUpdateCounter++;
        return FALSE;
    } else {
        manager->delayUpdateCounter = 0;
        return TRUE;
    }
}

static void RowanIntroManager_ChangePaletteAndCopyTilemap(RowanIntroManager *manager, int bgLayer, int palette)
{
    Bg_ChangeTilemapRectPalette(manager->bgConfig, bgLayer, 0, 0, 32, 24, palette);
    Bg_CopyTilemapBufferToVRAM(manager->bgConfig, bgLayer);
}

typedef struct UnkStruct_ov72_021D3840_t {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov72_021D3840;

static const WindowTemplate displayMessageTemplate = {
    0x0,
    0x2,
    0x13,
    0x1B,
    0x4,
    0x6,
    0x36D
};
static const WindowTemplate Unk_ov72_021D37C4 = {
    0x0,
    0x2,
    0x3,
    0x6,
    0x4,
    0x5,
    0x355
};
static const WindowTemplate Unk_ov72_021D37DC = {
    0x0,
    0x1,
    0x3,
    0x10,
    0x6,
    0x5,
    0x30D
};
static const WindowTemplate Unk_ov72_021D37CC = {
    0x0,
    0x2,
    0x3,
    0xE,
    0xA,
    0x5,
    0x2E1
};
const WindowTemplate Unk_ov72_021D37E4 = {
    0x0,
    0x8,
    0x0,
    0x18,
    0x18,
    0x5,
    0x12D
};
const WindowTemplate Unk_ov72_021D37D4 = {
    0x0,
    0x4,
    0x0,
    0x18,
    0x18,
    0x5,
    0x12D
};

static const ListMenuTemplate Unk_ov72_021D390C = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x0,
    0x0,
    0xC,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0
};

static const UnkStruct_ov72_021D3840 Unk_ov72_021D3840[] = {
    { 0x22, 0x1 },
    { 0x23, 0x2 }
};

static const UnkStruct_ov72_021D3840 Unk_ov72_021D38A4[] = {
    { 0x1F, 0x1 },
    { 0x20, 0x2 },
    { 0x21, 0x3 }
};

static const UnkStruct_ov72_021D3840 Unk_ov72_021D3954[] = {
    { 0x24, 0x1 },
    { 0x25, 0x2 },
    { 0x26, 0x3 },
    { 0x27, 0x4 },
    { 0x28, 0x5 }
};

static const UnkStruct_ov72_021D3840 Unk_ov73_021D1648[] = {
    { 0x24, 0x1 },
    { 0x29, 0x2 },
    { 0x2A, 0x3 },
    { 0x2B, 0x4 },
    { 0x2C, 0x5 }
};

static BOOL RowanIntroManager_DisplayMessage(RowanIntroManager *manager, u32 textID, int endEarly)
{
    BOOL isFinished = FALSE;

    switch (manager->displayMessageState) {
    case DM_STATE_INIT:
        Window_AddFromTemplate(manager->bgConfig, &manager->textWindow, &displayMessageTemplate);
        Window_FillRectWithColor(&manager->textWindow, 15, 0, 0, 27 * 8, 4 * 8);
        Window_DrawMessageBoxWithScrollCursor(&manager->textWindow, 0, 0x400 - (18 + 12), 4);
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetAutoScrollFlags(0);

        {
            Strbuf *tmpStrbuf = Strbuf_Init(0x400, manager->heapID);

            manager->strbuf = Strbuf_Init(0x400, manager->heapID);

            MessageLoader_GetStrbuf(manager->msgLoader, textID, tmpStrbuf);
            StringTemplate_SetStrbuf(manager->strFormatter, 0, manager->unk_70->textInputStr, manager->playerGender, 1, GAME_LANGUAGE);
            StringTemplate_SetStrbuf(manager->strFormatter, 1, manager->unk_74->textInputStr, 0, 1, GAME_LANGUAGE);
            StringTemplate_Format(manager->strFormatter, manager->strbuf, tmpStrbuf);
            Strbuf_Free(tmpStrbuf);
        }

        manager->textPrinterID = Text_AddPrinterWithParams(&manager->textWindow, FONT_MESSAGE, manager->strbuf, 0, 0, Options_TextFrameDelay(manager->options), NULL);
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

static void ov73_021D1634(ListMenu *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static BOOL RowanIntroManager_ChoiceBox(RowanIntroManager *manager, int param1, int param2)
{
    BOOL v0 = 0;
    ListMenuTemplate v1;
    const WindowTemplate *v2;
    const UnkStruct_ov72_021D3840 *v3;
    int v4, v5;

    switch (manager->choiceBoxState) {
    case 0:
        switch (param1) {
        default:
        case 0:
            v2 = &Unk_ov72_021D37C4;
            v3 = Unk_ov72_021D3840;
            v5 = NELEMS(Unk_ov72_021D3840);
            break;
        case 1:
            v2 = &Unk_ov72_021D37DC;
            v3 = Unk_ov72_021D38A4;
            v5 = NELEMS(Unk_ov72_021D38A4);
            break;
        case 2:
            v2 = &Unk_ov72_021D37CC;

            if ((gGameVersion == VERSION_DIAMOND) || (GAME_VERSION == VERSION_PLATINUM)) {
                v3 = Unk_ov72_021D3954;
                v5 = NELEMS(Unk_ov72_021D3954);
            } else {
                v3 = Unk_ov73_021D1648;
                v5 = NELEMS(Unk_ov73_021D1648);
            }
            break;
        }

        Window_AddFromTemplate(manager->bgConfig, &manager->choiceBoxWindow, v2);

        manager->choices = StringList_New(v5, manager->heapID);

        for (v4 = 0; v4 < v5; v4++) {
            StringList_AddFromMessageBank(manager->choices, manager->msgLoader, v3[v4].unk_00, v3[v4].unk_04);
        }

        v1 = Unk_ov72_021D390C;
        v1.choices = manager->choices;
        v1.count = v5;
        v1.maxDisplay = v5;
        v1.cursorCallback = ov73_021D1634;
        v1.window = &manager->choiceBoxWindow;

        manager->listMenu = ListMenu_New(&v1, 0, 0, manager->heapID);

        Window_DrawStandardFrame(v1.window, 1, (0x400 - (18 + 12)) - 9, 3);
        Window_CopyToVRAM(&manager->choiceBoxWindow);

        manager->choiceBoxState = 1;
        break;
    case 1:
        manager->playerChoice = ListMenu_ProcessInput(manager->listMenu);

        if (manager->playerChoice == 0xffffffff) {
            break;
        }

        if ((manager->playerChoice == 0xfffffffe) && (param2 == 1)) {
            break;
        }

        Window_EraseStandardFrame(&manager->choiceBoxWindow, 0);
        Window_Remove(&manager->choiceBoxWindow);
        ListMenu_Free(manager->listMenu, NULL, NULL);
        StringList_Free(manager->choices);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        manager->choiceBoxState = 0;
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL RowanIntroManager_DisplayTextBlock(RowanIntroManager *manager, u32 textID, int param2, int param3, int param4)
{
    BOOL v0 = 0;
    WindowTemplate v1;

    switch (manager->displayTextBlockState) {
    case 0:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
        manager->strbuf = Strbuf_Init(0x400, manager->heapID);
        MessageLoader_GetStrbuf(manager->msgLoader, textID, manager->strbuf);

        if (param2 == 1) {
            v1 = Unk_ov72_021D37D4;

            {
                u32 numLines = Strbuf_NumLines(manager->strbuf);

                v1.tilemapTop = 12 - numLines;
                v1.height = numLines * 2;
            }

            Window_AddFromTemplate(manager->bgConfig, &manager->textWindow, &v1);
            Window_FillRectWithColor(&manager->textWindow, 0, 0, 0, 24 * 8, 24 * 8);
            Text_AddPrinterWithParamsAndColor(&manager->textWindow, FONT_SYSTEM, manager->strbuf, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        } else {
            v1 = Unk_ov72_021D37E4;

            if (param2 == 2) {
                u32 numLines = Strbuf_NumLines(manager->strbuf);

                v1.tilemapTop = param3 + param4 / 2 - numLines;
                v1.height = numLines * 2;
            } else {
                v1.tilemapTop = param3;
                v1.height = param4;
            }

            Window_AddFromTemplate(manager->bgConfig, &manager->textWindow, &v1);
            Window_FillRectWithColor(&manager->textWindow, 0, 0, 0, 24 * 8, 24 * 8);
            Text_AddPrinterWithParamsAndColor(&manager->textWindow, FONT_SYSTEM, manager->strbuf, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 2, 0), NULL);
        }

        Strbuf_Free(manager->strbuf);
        manager->displayTextBlockState = 1;
        break;
    case 1:
        Window_CopyToVRAM(&manager->textWindow);
        manager->displayTextBlockState = 2;
        break;
    case 2:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_0, FADE_IN) == TRUE) {
            manager->displayTextBlockState = 3;
        }
        break;
    case 3:
        if (((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) || ((gSystem.pressedKeys & PAD_BUTTON_B) == PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            manager->displayTextBlockState = 4;
        }
        break;
    case 4:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_0, FADE_OUT) == TRUE) {
            manager->displayTextBlockState = 5;
        }
        break;
    case 5:
        Window_Remove(&manager->textWindow);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
        manager->displayTextBlockState = 0;
        v0 = 1;
        break;
    }

    return v0;
}

static void ov73_021D1930(RowanIntroManager *manager)
{
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 0, manager->bgConfig, BG_LAYER_MAIN_3, 0, 0, 0, manager->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, manager->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 24, manager->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, manager->heapID);

    {
        int v0, v1;

        if (gGameVersion == VERSION_PLATINUM) {
            v0 = 3;
            v1 = 27;
        } else if (gGameVersion == VERSION_DIAMOND) {
            v0 = 1;
            v1 = 25;
        } else {
            v0 = 2;
            v1 = 26;
        }

        Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO, v0, 0, 0 * (2 * 16), (2 * 16) * 3, manager->heapID);
        Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO, v1, 4, 0 * (2 * 16), (2 * 16) * 5, manager->heapID);
    }

    RowanIntroManager_LoadLayer3Tilemap(manager);
    RowanIntroManager_LoadTilemap(manager);
    RowanIntroManager_LoadSubLayer3Tilemap(manager);

    Bg_MaskPalette(BG_LAYER_MAIN_0, 0x0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0x0);
}

static void RowanIntroManager_LoadLayer3Tilemap(RowanIntroManager *manager)
{
    int tilemapLocations[] = { 4, 5, 6, 7, 8 };

    if (manager->bgLayer3TilemapIndex >= 5) {
        return;
    }

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, tilemapLocations[manager->bgLayer3TilemapIndex], manager->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, manager->heapID);
}

static void RowanIntroManager_LoadTilemap(RowanIntroManager *manager)
{
    int tilemapLocations[][2] = {
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
        Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, tilemapLocations[manager->bgLayer1TilemapIndex][0], manager->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, manager->heapID);
        Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO, tilemapLocations[manager->bgLayer1TilemapIndex][1], PAL_LOAD_MAIN_BG, 7 * (2 * 16), 2 * 16, manager->heapID);
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 23, manager->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, manager->heapID);
        RowanIntroManager_ChangePaletteAndCopyTilemap(manager, BG_LAYER_MAIN_1, 7);
    }

    if ((manager->bgLayer2TilemapIndex != 0) && (manager->bgLayer2TilemapIndex < 12)) {
        Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, tilemapLocations[manager->bgLayer2TilemapIndex][0], manager->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, manager->heapID);
        Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO, tilemapLocations[manager->bgLayer2TilemapIndex][1], PAL_LOAD_MAIN_BG, 8 * (2 * 16), 2 * 16, manager->heapID);
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 23, manager->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, manager->heapID);
        RowanIntroManager_ChangePaletteAndCopyTilemap(manager, BG_LAYER_MAIN_2, 8);
    }
}

static void RowanIntroManager_LoadSubLayer3Tilemap(RowanIntroManager *manager)
{
    int tilemapLocations[] = { 28, 29, 29, 30, 31 };

    if (manager->bgSubLayer3TilemapIndex >= 5) {
        return;
    }

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, tilemapLocations[manager->bgSubLayer3TilemapIndex], manager->bgConfig, BG_LAYER_SUB_3, 0, 0, 0, manager->heapID);

    if (manager->bgSubLayer3TilemapIndex == 1) {
        RowanIntroManager_ChangePaletteAndCopyTilemap(manager, 7, 3);
    } else if (manager->bgSubLayer3TilemapIndex == 2) {
        RowanIntroManager_ChangePaletteAndCopyTilemap(manager, 7, 2);
    }
}

static const u8 Unk_ov72_021D39D4[] = {
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

static void ov73_021D1B80(RowanIntroManager *manager)
{
    PokemonSpriteTemplate v0;
    void *v1;
    void *v2;
    void *v3;
    int v4 = 2;
    int v5 = 5;
    int v6 = 8;
    int v7 = 10;

    BuildPokemonSpriteTemplate(&v0, 427, 0, 2, 0, 0, 0);

    v1 = Heap_AllocFromHeap(manager->heapID, (10 * 10) * 2);

    {
        int v8;

        for (v8 = 0; v8 < (10 * 10); v8++) {
            ((u16 *)v1)[v8] = Unk_ov72_021D39D4[v8] + 1;
        }
    }

    v2 = sub_0201363C(v0.narcID, v0.character, manager->heapID);
    v3 = sub_02013660(v0.narcID, v0.palette, manager->heapID);

    MI_CpuCopy32(v3, manager->unk_B8, 0x20);

    BlendPalettes(manager->unk_B8, v3, 1, 16, 0x6a3c);
    Bg_FillTilemapRect(manager->bgConfig, v4, 0, 0, 0, 32, 24, v6);
    Bg_LoadToTilemapRect(manager->bgConfig, v4, v1, 11, 9, 10, 10);

    RowanIntroManager_ChangePaletteAndCopyTilemap(manager, v4, v6);

    Bg_ClearTilesRange(v4, 32, 0, manager->heapID);
    Bg_LoadTiles(manager->bgConfig, v4, v2, (10 * 10) * 0x20, 1);
    Bg_LoadPalette(v4, v3, 2 * 16, (2 * 16) * v6);
    Bg_FillTilemapRect(manager->bgConfig, v5, 0, 0, 0, 32, 24, v7);
    Bg_LoadToTilemapRect(manager->bgConfig, v5, v1, 11, 7, 10, 10);

    RowanIntroManager_ChangePaletteAndCopyTilemap(manager, v5, v7);

    Bg_ClearTilesRange(v5, 32, 0, manager->heapID);
    Bg_LoadTiles(manager->bgConfig, v5, v2, (10 * 10) * 0x20, 1);
    Bg_LoadPalette(v5, v3, 2 * 16, (2 * 16) * v7);
    Heap_Free(v3);
    Heap_Free(v2);
    Heap_Free(v1);
}

static void RowanIntroManager_LoadPokeballTilemap(RowanIntroManager *manager)
{
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 40, manager->bgConfig, 6, 0, 0, 0, manager->heapID);
    RowanIntroManager_ChangePaletteAndCopyTilemap(manager, 6, 9);

    Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO, 41, 4, 7 * (2 * 16), (2 * 16) * 3, manager->heapID);
    Bg_ClearTilesRange(6, 32, 0, manager->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 32, manager->bgConfig, 6, 0x20, 0, 0, manager->heapID);
}

static BOOL RowanIntroManager_MoveBgLayer(RowanIntroManager *manager, enum BgLayer bgLayer, enum MoveBgLayerCases mBLCase)
{
    BOOL ret = 0;
    GXBlendPlaneMask unused;

    if (mBLCase == MBL_CASE_CENTRE_AVATAR) {
        {
            int currentXOffset = Bg_GetXOffset(manager->bgConfig, bgLayer);

            if (currentXOffset != 0) {
                if (currentXOffset > 0) {
                    Bg_SetOffset(manager->bgConfig, bgLayer, BG_OFFSET_UPDATE_SUB_X, 4);
                } else {
                    Bg_SetOffset(manager->bgConfig, bgLayer, BG_OFFSET_UPDATE_ADD_X, 4);
                }
            } else {
                ret = 1;
            }
        }
    } else if (mBLCase == MBL_CASE_MOVE_RIGHT) {
        if (Bg_GetXOffset(manager->bgConfig, bgLayer) != -8 * 6) {
            Bg_SetOffset(manager->bgConfig, bgLayer, BG_OFFSET_UPDATE_SUB_X, 4);
        } else {
            ret = 1;
        }
    } else if (mBLCase == MBL_CASE_MOVE_LEFT) {
        if (Bg_GetXOffset(manager->bgConfig, bgLayer) != 0) {
            Bg_SetOffset(manager->bgConfig, bgLayer, BG_OFFSET_UPDATE_ADD_X, 4);
        } else {
            ret = 1;
        }
    }

    return ret;
}

static void ov73_021D1DCC(RowanIntroManager *manager)
{
    manager->unk_8C = 0;
    manager->unk_8D = 0;
    manager->unk_8E = 0;
    manager->unk_8F = 0;
}

static void ov73_021D1DE8(RowanIntroManager *manager)
{
    if (manager->playerGender == GENDER_MALE) {
        if (manager->unk_8D) {
            manager->unk_8D--;
        } else {
            manager->unk_8C++;
            manager->unk_8C &= 3;
            manager->unk_8D = 4;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 6, 10);

        {
            int v0[] = { 9, 10, 11, 12 };
            Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v0[manager->unk_8C], manager->bgConfig, 1, 0, 0, 0, manager->heapID);
        }
    } else {
        if (manager->unk_8F) {
            manager->unk_8F--;
        } else {
            manager->unk_8E++;
            manager->unk_8E &= 3;
            manager->unk_8F = 4;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG3, 6, 10);

        {
            int v1[] = { 14, 15, 16, 17 };
            Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v1[manager->unk_8E], manager->bgConfig, 2, 0, 0, 0, manager->heapID);
        }
    }
}

static void ov73_021D1EFC(RowanIntroManager *manager)
{
    G2_BlendNone();
}

static void ov73_021D1F08(RowanIntroManager *manager)
{
    manager->animData.progressCounter = 0;
    manager->animDelayUpdateCounter = 0;
}

static BOOL ov73_021D1F18(RowanIntroManager *manager)
{
    BOOL v0 = 0;
    int v1;

    if (manager->animDelayUpdateCounter) {
        manager->animDelayUpdateCounter--;
    } else {
        manager->animData.progressCounter++;
        manager->animDelayUpdateCounter = 8;
    }

    if (manager->playerGender == GENDER_MALE) {
        {
            int v2[] = { 9, 42, 43, 44, 45, 0xff };
            v1 = v2[manager->animData.progressCounter];
        }
    } else {
        {
            int v3[] = { 14, 46, 47, 48, 49, 0xff };
            v1 = v3[manager->animData.progressCounter];
        }
    }

    if (v1 == 0xff) {
        v0 = 1;
    } else {
        Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v1, manager->bgConfig, 1, 0, 0, 0, manager->heapID);
    }

    return v0;
}

static void ov73_021D1FA0(RowanIntroManager *manager)
{
    if (manager->unk_B4 > 0) {
        manager->unk_B4--;

        BlendPalettes(manager->unk_B8, manager->unk_BC, 1, manager->unk_B4 / 3, 0x6a3c);
        Bg_LoadPalette(2, manager->unk_BC, 2 * 16, (2 * 16) * 8);
        Bg_LoadPalette(5, manager->unk_BC, 2 * 16, (2 * 16) * 10);
    }
}

static BOOL RowanIntroManager_AnimateBuneary(RowanIntroManager *manager, enum BunearyAnimState *state)
{
    BOOL isFinished = 0;

    switch (*state) {
    case BAN_INIT:
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 0, 0);
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, -8 * 13);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);
        Bg_ToggleLayer(BG_LAYER_SUB_1, 1);

        manager->unk_A8 = 0;
        manager->unk_AC = 8;
        manager->unk_B0 = 0;
        manager->unk_B4 = (16 * 3);
        *state = BAN_MOVE_UP;
        break;
    case BAN_MOVE_UP: {
        int v1 = Bg_GetXOffset(manager->bgConfig, 2);
        int v2 = Bg_GetYOffset(manager->bgConfig, 5);
        int v3 = manager->unk_AC * 9 * manager->unk_B0;
        int v4 = 9 * manager->unk_B0 * manager->unk_B0 / 2;
        int v5 = v3 - v4;

        if (v2 < 8 * 11) {
            manager->unk_B0++;
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 1, 2);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_SUB_1, 1, 2);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_SUB_1, 3, v5);
        } else {
            Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
            manager->unk_B0 = 0;
            *state = BAN_PLACEHOLDER_2;
        }
    } break;
    case BAN_PLACEHOLDER_2:
        if (manager->unk_B0) {
            manager->unk_B0--;
        } else {
            Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
            manager->unk_A8 = 0;
            manager->unk_AC = 9;
            manager->unk_B0 = 0;
            *state = BAN_PLACEHOLDER_3;
        }
        break;
    case BAN_PLACEHOLDER_3: {
        int v6 = Bg_GetXOffset(manager->bgConfig, 2);
        int v7 = Bg_GetYOffset(manager->bgConfig, 2);
        int v8 = manager->unk_AC * 9 * manager->unk_B0;
        int v9 = 9 * manager->unk_B0 * manager->unk_B0 / 2;
        int v10 = (-8 * 13) + v8 - v9;

        if ((manager->unk_A8 > 0) && (v10 <= 0)) {
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, 0);
            manager->unk_A8 = 0;
            manager->unk_AC = 3;
            manager->unk_B0 = 0;
            *state = BAN_PLACEHOLDER_4;
        } else {
            manager->unk_B0++;
            manager->unk_A8 = v10;
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 1, 1);
            v10 = v10 >> 1;

            if (v10 > 8 * 18) {
                v10 = 8 * 18;
            }

            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, v10);
        }
    } break;
    case BAN_PLACEHOLDER_4: {
        int v11 = Bg_GetXOffset(manager->bgConfig, 2);
        int v12 = Bg_GetYOffset(manager->bgConfig, 2);
        int v13 = manager->unk_AC * 9 * manager->unk_B0;
        int v14 = 9 * manager->unk_B0 * manager->unk_B0 / 3;
        int v15 = v13 - v14;

        if ((manager->unk_A8 > 0) && (v15 <= 0)) {
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, 0);
            manager->unk_A8 = 0;
            manager->unk_AC = 3;
            manager->unk_B0 = 0;
            *state = BAN_PLACEHOLDER_5;
        } else {
            manager->unk_B0++;
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 2, 2);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, v15);
            manager->unk_A8 = v15;
        }
    } break;
    case BAN_PLACEHOLDER_5: {
        int v16 = Bg_GetXOffset(manager->bgConfig, 2);
        int v17 = Bg_GetYOffset(manager->bgConfig, 2);
        int v18 = manager->unk_AC * 9 * manager->unk_B0;
        int v19 = 9 * manager->unk_B0 * manager->unk_B0 / 3;
        int v20 = v18 - v19;

        if ((manager->unk_A8 > 0) && (v20 <= 0)) {
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, 0);
            *state = BAN_PLACEHOLDER_6;
        } else {
            manager->unk_B0++;
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 1, 4);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, v20);
            manager->unk_A8 = v20;
        }
    } break;
    case BAN_PLACEHOLDER_6:
        Sound_PlayPokemonCry(SPECIES_BUNEARY, 0);
        isFinished = TRUE;
        break;
    }

    ov73_021D1FA0(manager);

    return isFinished;
}

static void ov73_021D230C(RowanIntroManager *manager)
{
    Bg_SetPriority(BG_LAYER_MAIN_2, 1);
}

static BOOL ov73_021D2318(RowanIntroManager *manager)
{
    BOOL v0 = 0;

    switch (manager->state) {
    case RIM_STATE_FIRST_FADE_BLACK_START:
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_2, SEQ_OPENING, 1);
        Sound_StopBGM(SEQ_OPENING, 0);
        Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
        Bg_ToggleLayer(BG_LAYER_SUB_3, 1);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_FIRST_FADE_BLACK_END;
        break;
    case RIM_STATE_FIRST_FADE_BLACK_END:
        if (IsScreenFadeDone() == TRUE) {
            if (RowanIntroManager_Delay(manager, 40) == TRUE) {
                manager->state = RIM_STATE_DIALOGUE_WELCOME;
            }
        }
        break;
    case RIM_STATE_DIALOGUE_WELCOME:
        if (RowanIntroManager_DisplayMessage(manager, 0, 1) == 1) {
            manager->state = RIM_STATE_FADE_IN_ROWAN_START;
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
        }
        break;
    case RIM_STATE_FADE_IN_ROWAN_START:
        Sound_PlayBGM(SEQ_OPENING);
        manager->bgLayer1TilemapIndex = 1;
        manager->bgLayer2TilemapIndex = 0;
        RowanIntroManager_LoadTilemap(manager);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, 1);
        Bg_ToggleLayer(BG_LAYER_MAIN_1, 1);
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 16, 4, manager->heapID);
        manager->state = RIM_STATE_FADE_IN_ROWAN_END;
        break;
    case RIM_STATE_FADE_IN_ROWAN_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_DIALOGUE_ROWAN_INTRO;
        }
        break;
    case RIM_STATE_DIALOGUE_ROWAN_INTRO:
        if (RowanIntroManager_DisplayMessage(manager, 1, 1) == 1) {
            manager->state = RIM_STATE_MOVE_ROWAN_RIGHT_FOR_INFO;
        }
        break;
    case RIM_STATE_MOVE_ROWAN_RIGHT_FOR_INFO:
        if (RowanIntroManager_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_MOVE_RIGHT) == 1) {
            manager->state = RIM_STATE_INFO_CHOICE_BOX;
        }
        break;
    case RIM_STATE_INFO_CHOICE_BOX:
        if (RowanIntroManager_ChoiceBox(manager, 1, 1) == 1) {
            switch (manager->playerChoice) {
            case 1:
                manager->bufferedState = RIM_STATE_CONTROL_INFO_FADE_IN_START;
                manager->state = RIM_STATE_INFO_FADE_BLACK_START;
                break;
            case 2:
                manager->bufferedState = RIM_STATE_ADVENTURE_INFO_FADE_IN_START;
                manager->state = RIM_STATE_INFO_FADE_BLACK_START;
                {
                    Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
                }
                break;
            case 3:
                manager->state = RIM_STATE_LEFT_ROWAN_AFTER_INFO;
                break;
            }
        }
        break;
    case RIM_STATE_INFO_FADE_BLACK_START:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_INFO_FADE_BLACK_END;
        break;
    case RIM_STATE_INFO_FADE_BLACK_END:
        if (IsScreenFadeDone() == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
            {
                manager->state = manager->bufferedState;
            }
        }
        break;
    case RIM_STATE_CONTROL_INFO_FADE_IN_START:
        manager->bgLayer3TilemapIndex = 1;
        RowanIntroManager_LoadLayer3Tilemap(manager);
        manager->bgSubLayer3TilemapIndex = 1;
        RowanIntroManager_LoadSubLayer3Tilemap(manager);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_CONTROL_INFO_FADE_IN_END;
        break;
    case RIM_STATE_CONTROL_INFO_FADE_IN_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_CONTROL_INFO_TEXT_0;
        }
        break;
    case RIM_STATE_CONTROL_INFO_TEXT_0:
        if (RowanIntroManager_DisplayTextBlock(manager, 2, 0, 3, 18) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_SHOW_XY_ICONS;
        }
        break;
    case RIM_STATE_CONTROL_INFO_SHOW_XY_ICONS:
        manager->bgLayer3TilemapIndex = 2;
        RowanIntroManager_LoadLayer3Tilemap(manager);
        manager->state = RIM_STATE_CONTROL_INFO_TEXT_1;
        break;
    case RIM_STATE_CONTROL_INFO_TEXT_1:
        if (RowanIntroManager_DisplayTextBlock(manager, 3, 0, 7, 12) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_HIDE_XY_ICONS;
        }
        break;
    case RIM_STATE_CONTROL_INFO_HIDE_XY_ICONS:
        manager->bgLayer3TilemapIndex = 3;
        RowanIntroManager_LoadLayer3Tilemap(manager);
        manager->state = RIM_STATE_CONTROL_INFO_TEXT_2;
        break;
    case RIM_STATE_CONTROL_INFO_TEXT_2:
        if (RowanIntroManager_DisplayTextBlock(manager, 4, 2, 4, 12) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_DIALOGUE_DS_ICON;
        }
        break;
    case RIM_STATE_CONTROL_INFO_DIALOGUE_DS_ICON:
        if (RowanIntroManager_DisplayMessage(manager, 6, 1) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_TEXT_3;
        }
        break;
    case RIM_STATE_CONTROL_INFO_TEXT_3:
        if (RowanIntroManager_DisplayTextBlock(manager, 5, 2, 4, 10) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_HIDE_FG;
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
        }
        break;
    case RIM_STATE_CONTROL_INFO_HIDE_FG:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
        manager->state = RIM_STATE_CONTROL_INFO_DIALOGUE_UNDERSTOOD;
        break;
    case RIM_STATE_CONTROL_INFO_DIALOGUE_UNDERSTOOD:
        if (RowanIntroManager_DisplayMessage(manager, 7, 1) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_SHOW_YESNO;
        }
        break;
    case RIM_STATE_CONTROL_INFO_SHOW_YESNO: {
        UnkStruct_02015958 v1 = { NULL, 6, 1, 12, 12, 8 };

        v1.unk_00 = manager->bgConfig;
        sub_02015958(manager->unk_68, &v1);
        Bg_ToggleLayer(BG_LAYER_SUB_2, 1);
    }
        manager->bgSubLayer3TilemapIndex = 3;
        RowanIntroManager_LoadSubLayer3Tilemap(manager);
        manager->state = RIM_STATE_CONTROL_INFO_WAIT_INPUT;
        break;
    case RIM_STATE_CONTROL_INFO_WAIT_INPUT:
        if (gSystem.pressedKeys) {
            manager->state = RIM_STATE_CONTROL_INFO_DIALOGUE_USE_TOUCHSCREEN;
            break;
        }

        {
            int v2 = sub_020159C0(manager->unk_68);

            if ((v2 == 3) || (v2 == 4)) {
                manager->state = RIM_STATE_CONTROL_INFO_PROCESS_YESNO;
            }
        }
        break;
    case RIM_STATE_CONTROL_INFO_PROCESS_YESNO:
        switch (sub_020159C0(manager->unk_68)) {
        case 1:
            manager->state = RIM_STATE_CONTROL_INFO_FADE_OUT_START;
            break;
        case 2:
            manager->state = RIM_STATE_CONTROL_INFO_REPEAT;
            break;
        }
        break;
    case RIM_STATE_CONTROL_INFO_FADE_OUT_START:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_SUB_2, FADE_OUT) == TRUE) {
            sub_02015A54(manager->unk_68);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, manager->heapID);
            manager->state = RIM_STATE_CONTROL_INFO_FADE_OUT_END;
        }
        break;
    case RIM_STATE_CONTROL_INFO_FADE_OUT_END:
        if (IsScreenFadeDone() == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RIM_STATE_FADE_IN_ROWAN_2_START;
        }
        break;
    case RIM_STATE_CONTROL_INFO_REPEAT:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_SUB_2, FADE_OUT) == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            sub_02015A54(manager->unk_68);
            manager->bgLayer3TilemapIndex = 1;
            RowanIntroManager_LoadLayer3Tilemap(manager);
            manager->bgSubLayer3TilemapIndex = 1;
            RowanIntroManager_LoadSubLayer3Tilemap(manager);
            manager->state = RIM_STATE_CONTROL_INFO_TEXT_0;
        }
        break;
    case RIM_STATE_CONTROL_INFO_DIALOGUE_USE_TOUCHSCREEN:
        if (RowanIntroManager_DisplayMessage(manager, 8, 1) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_WAIT_INPUT;
        }
        break;
    case RIM_STATE_FADE_IN_ROWAN_2_START:
        manager->bgLayer3TilemapIndex = 0;
        RowanIntroManager_LoadLayer3Tilemap(manager);
        manager->bgSubLayer3TilemapIndex = 0;
        RowanIntroManager_LoadSubLayer3Tilemap(manager);
        Bg_ToggleLayer(BG_LAYER_MAIN_1, 1);
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_1, 0, 0);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_FADE_IN_ROWAN_2_END;
        break;
    case RIM_STATE_FADE_IN_ROWAN_2_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_DIALOGUE_ANOTHER_INFO;
        }
        break;
    case RIM_STATE_DIALOGUE_ANOTHER_INFO:
        if (RowanIntroManager_DisplayMessage(manager, 9, 1) == 1) {
            manager->state = RIM_STATE_MOVE_ROWAN_RIGHT_FOR_INFO;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_FADE_IN_START:
        manager->bgLayer3TilemapIndex = 4;
        RowanIntroManager_LoadLayer3Tilemap(manager);
        manager->bgSubLayer3TilemapIndex = 2;
        RowanIntroManager_LoadSubLayer3Tilemap(manager);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_ADVENTURE_INFO_FADE_IN_END;
        break;
    case RIM_STATE_ADVENTURE_INFO_FADE_IN_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_0;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_0:
        if (RowanIntroManager_DisplayTextBlock(manager, 10, 1, 9, 6) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_1;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_1:
        if (RowanIntroManager_DisplayTextBlock(manager, 11, 1, 8, 8) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_2;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_2:
        if (RowanIntroManager_DisplayTextBlock(manager, 12, 1, 9, 6) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_3;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_3:
        if (RowanIntroManager_DisplayTextBlock(manager, 13, 1, 5, 14) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_4;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_4:
        if (RowanIntroManager_DisplayTextBlock(manager, 14, 1, 10, 4) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_5;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_5:
        if (RowanIntroManager_DisplayTextBlock(manager, 15, 1, 6, 12) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_FADE_OUT_START;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_FADE_OUT_START:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_ADVENTURE_INFO_FADE_OUT_END;
        break;
    case RIM_STATE_ADVENTURE_INFO_FADE_OUT_END:
        if (IsScreenFadeDone() == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
            manager->state = RIM_STATE_FADE_IN_ROWAN_2_START;
        }
        break;
    case RIM_STATE_LEFT_ROWAN_AFTER_INFO:
        if (RowanIntroManager_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_MOVE_LEFT) == 1) {
            manager->state = RIM_STATE_DIALOGUE_WIDELY_INHABITED;
        }
        break;
    case RIM_STATE_DIALOGUE_WIDELY_INHABITED:
        if (RowanIntroManager_DisplayMessage(manager, 16, 1) == 1) {
            manager->state = RIM_STATE_PKBL_FADE_START;
        }
        break;
    case RIM_STATE_PKBL_FADE_START:
        StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_PKBL_FADE_MIDDLE;
        break;
    case RIM_STATE_PKBL_FADE_MIDDLE:
        if (IsScreenFadeDone() == TRUE) {
            RowanIntroManager_LoadPokeballTilemap(manager);
            manager->bgSubLayer3TilemapIndex = 4;
            RowanIntroManager_LoadSubLayer3Tilemap(manager);
            Bg_ToggleLayer(BG_LAYER_SUB_2, 1);
            StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
            manager->state = RIM_STATE_PKBL_FADE_END;
        }
        break;
    case RIM_STATE_PKBL_FADE_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_PKBL_DIALOGUE;
        }
        break;
    case RIM_STATE_PKBL_DIALOGUE:
        if (RowanIntroManager_DisplayMessage(manager, 17, 1) == 1) {
            manager->state = RIM_STATE_PKBL_WAIT_INPUT;
        }
        break;
    case RIM_STATE_PKBL_WAIT_INPUT:
        if (RowanIntroManager_WasPokeballOpened() == TRUE) {
            manager->animData.progressCounter = 0;
            manager->animDelayUpdateCounter = 0;
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RIM_STATE_PKBL_ANIM_PUSH_IN;
        } else if (gSystem.pressedKeys) {
            manager->state = RIM_STATE_PKBL_DIALOGUE_USE_TOUCHSCREEN;
        }
        break;
    case RIM_STATE_PKBL_ANIM_PUSH_IN:
        if (manager->animDelayUpdateCounter) {
            manager->animDelayUpdateCounter--;
        } else {
            {
                int v3[] = { 33, 34, 0xffff };

                if (v3[manager->animData.progressCounter] == 0xffff) {
                    Sound_PlayEffect(SEQ_SE_DP_BOWA2);

                    manager->state = RIM_STATE_PKBL_ANIM_FLASH_0;
                } else {
                    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v3[manager->animData.progressCounter], manager->bgConfig, 6, 0x20, 0, 0, manager->heapID);
                    manager->animData.progressCounter++;
                    manager->animDelayUpdateCounter = 4;
                }
            }
        }
        break;
    case RIM_STATE_PKBL_DIALOGUE_USE_TOUCHSCREEN:
        if (RowanIntroManager_DisplayMessage(manager, 18, 1) == 1) {
            manager->state = RIM_STATE_PKBL_WAIT_INPUT;
        }
        break;
    case RIM_STATE_PKBL_ANIM_FLASH_0:
        BrightnessController_StartTransition(1, 16, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
        BrightnessController_StartTransition(1, 16, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_SUB_SCREEN);
        manager->state = RIM_STATE_PKBL_ANIM_FLASH_1;
        break;
    case RIM_STATE_PKBL_ANIM_FLASH_1:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            BrightnessController_StartTransition(1, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
            BrightnessController_StartTransition(1, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_SUB_SCREEN);
            manager->state = RIM_STATE_PKBL_ANIM_FLASH_2;
        }
        break;
    case RIM_STATE_PKBL_ANIM_FLASH_2:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            BrightnessController_StartTransition(4, 16, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
            BrightnessController_StartTransition(4, 16, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_SUB_SCREEN);
            manager->state = RIM_STATE_PKBL_ANIM_FLASH_3;
        }
        break;
    case RIM_STATE_PKBL_ANIM_FLASH_3:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            manager->state = RIM_STATE_PKBL_ANIM_SPAWN_PKM_AND_FLASH_4;
        }
        break;
    case RIM_STATE_PKBL_ANIM_SPAWN_PKM_AND_FLASH_4:
        ov73_021D1B80(manager);
        Bg_ToggleLayer(BG_LAYER_SUB_2, 0);
        manager->animData.bunearyAnimState = BAN_INIT;
        RowanIntroManager_AnimateBuneary(manager, &manager->animData.bunearyAnimState);
        manager->bgSubLayer3TilemapIndex = 0;
        RowanIntroManager_LoadSubLayer3Tilemap(manager);
        BrightnessController_StartTransition(16, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
        BrightnessController_StartTransition(16, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_SUB_SCREEN);
        manager->state = RIM_STATE_PKBL_ANIM_MV_PKM_UP_AND_FLASH_END;
        break;
    case RIM_STATE_PKBL_ANIM_MV_PKM_UP_AND_FLASH_END:
        RowanIntroManager_AnimateBuneary(manager, &manager->animData.bunearyAnimState);

        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            manager->state = RIM_STATE_PKBL_ANIM_MV_PKM_DOWN_AND_BOUNCE;
        }
        break;
    case RIM_STATE_PKBL_ANIM_MV_PKM_DOWN_AND_BOUNCE:
        if (RowanIntroManager_AnimateBuneary(manager, &manager->animData.bunearyAnimState) == TRUE) {
            manager->state = RIM_STATE_PKBL_ANIM_END_DELAY;
        }
        break;
    case RIM_STATE_PKBL_ANIM_END_DELAY:
        if (RowanIntroManager_Delay(manager, 40) == TRUE) {
            manager->state = RIM_STATE_PKBL_DIALOGUE_LIVE_ALONGSIDE;
        }
        break;
    case RIM_STATE_PKBL_DIALOGUE_LIVE_ALONGSIDE:
        if (RowanIntroManager_DisplayMessage(manager, 19, 1) == 1) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RIM_STATE_PKBL_PUT_AWAY_PKM;
        }
        break;
    case RIM_STATE_PKBL_PUT_AWAY_PKM:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_2, FADE_OUT) == TRUE) {
            ov73_021D230C(manager);
            manager->state = RIM_STATE_BETWEEN_DIALOGUE_DELAY;
        }
        break;
    case RIM_STATE_BETWEEN_DIALOGUE_DELAY:
        if (RowanIntroManager_Delay(manager, 30) == TRUE) {
            manager->state = RIM_STATE_DIALOGUE_ABOUT_YOURSELF;
        }
        break;
    case RIM_STATE_DIALOGUE_ABOUT_YOURSELF:
        if (RowanIntroManager_DisplayMessage(manager, 20, 1) == 1) {
            manager->state = RIM_STATE_GENDR_FADE_OUT_ROWAN;
        }
        break;
    case RIM_STATE_GENDR_FADE_OUT_ROWAN:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            manager->state = RIM_STATE_GENDR_FADE_IN_AVATAR_PREP;
        }
        break;
    case RIM_STATE_GENDR_FADE_IN_AVATAR_PREP:
        ov73_021D1DCC(manager);
        manager->bgLayer1TilemapIndex = 2;
        manager->bgLayer2TilemapIndex = 6;
        RowanIntroManager_LoadTilemap(manager);
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_1, 0, -8 * 6);
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 0, 8 * 6);
        manager->state = RIM_STATE_GENDR_FADE_IN_AVATAR_MALE;
        break;
    case RIM_STATE_GENDR_FADE_IN_AVATAR_MALE:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            manager->state = RIM_STATE_GENDR_FADE_IN_AVATAR_FEMALE;
        }
        break;
    case RIM_STATE_GENDR_FADE_IN_AVATAR_FEMALE:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_2, FADE_IN) == TRUE) {
            manager->state = 66;
        }
        break;
    case RIM_STATE_GENDR_DIALOGUE:
        if (RowanIntroManager_DisplayMessage(manager, 21, 1) == 1) {
            manager->playerGender = GENDER_MALE;
            manager->state = RIM_STATE_GENDR_CHOICE;
        }
        break;
    case RIM_STATE_GENDR_CHOICE:
        if ((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) {
            manager->fadeBgLayerCurAlpha = 6;
            manager->fadeBgLayerCurAlphaInv = 10;
            manager->fadeBgLayerState = FBL_STATE_FADE_OUT;

            if (manager->playerGender == GENDER_MALE) {
                manager->state = RIM_STATE_GENDR_FADE_OUT_AVATAR_FEMALE;
            } else {
                manager->state = RIM_STATE_GENDR_FADE_OUT_AVATAR_MALE;
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

        ov73_021D1DE8(manager);
        break;
    case RIM_STATE_GENDR_FADE_OUT_AVATAR_FEMALE:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_2, FADE_OUT) == TRUE) {
            manager->state = RIM_STATE_GENDR_CENTRE_AVATAR_MALE;
        }
        break;
    case RIM_STATE_GENDR_CENTRE_AVATAR_MALE:
        if (RowanIntroManager_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_CENTRE_AVATAR) == 1) {
            ov73_021D1EFC(manager);
            manager->state = RIM_STATE_GENDR_CONFIRM_DIALOGUE;
        }
        break;
    case RIM_STATE_GENDR_FADE_OUT_AVATAR_MALE:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            manager->state = RIM_STATE_GENDR_CENTRE_AVATAR_FEMALE;
        }
        break;
    case RIM_STATE_GENDR_CENTRE_AVATAR_FEMALE:
        if (RowanIntroManager_MoveBgLayer(manager, BG_LAYER_MAIN_2, MBL_CASE_CENTRE_AVATAR) == 1) {
            ov73_021D1EFC(manager);
            manager->state = RIM_STATE_GENDR_CONFIRM_DIALOGUE;
        }
        break;
    case RIM_STATE_GENDR_CONFIRM_DIALOGUE: {
        u32 v4;

        if (manager->playerGender == GENDER_MALE) {
            v4 = 22;
        } else {
            v4 = 23;
        }

        if (RowanIntroManager_DisplayMessage(manager, v4, 1) == 1) {
            manager->state = RIM_STATE_GENDR_CONFIRM_CHOICE_BOX;
        }
    } break;
    case RIM_STATE_GENDR_CONFIRM_CHOICE_BOX:
        if (RowanIntroManager_ChoiceBox(manager, 0, 0) == 1) {
            switch (manager->playerChoice) {
            case 1:
                manager->state = RIM_STATE_NAME_DIALOGUE;
                break;
            case 2:
            case 0xfffffffe: {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
                manager->state = RIM_STATE_GENDR_REPEAT;
                break;
            }
        }
        break;
    case RIM_STATE_GENDR_REPEAT: {
        int genderRepeatBgLayer;

        if (manager->playerGender == GENDER_MALE) {
            genderRepeatBgLayer = 1;
        } else {
            genderRepeatBgLayer = 2;
        }

        if (RowanIntroManager_FadeBgLayer(manager, genderRepeatBgLayer, FADE_OUT) == TRUE) {
            manager->state = RIM_STATE_GENDR_FADE_IN_AVATAR_PREP;
        }
    } break;
    case RIM_STATE_NAME_DIALOGUE:
        if (RowanIntroManager_DisplayMessage(manager, 24, FADE_OUT) == 1) {
            manager->state = RIM_STATE_NAME_KEYBOARD_PREP;
        }
        break;
    case RIM_STATE_NAME_KEYBOARD_PREP:
        manager->unk_70->unk_04 = manager->playerGender;
        manager->appMan = ApplicationManager_New(&Unk_020F2DAC, manager->unk_70, manager->heapID);
        manager->state = RIM_STATE_NAME_KEYBOARD;
        break;
    case RIM_STATE_NAME_KEYBOARD:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, 1);
        Bg_ToggleLayer(BG_LAYER_SUB_3, 1);

        if (manager->playerGender == GENDER_MALE) {
            Bg_ToggleLayer(BG_LAYER_MAIN_1, 1);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_1, 0, 0);
        } else {
            Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 0, 0);
        }

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_NAME_KEYBOARD_FADE_INTO_AVATAR;
        break;
    case RIM_STATE_NAME_KEYBOARD_FADE_INTO_AVATAR:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_NAME_CONFIRM_DIALOGUE;
        }
        break;
    case RIM_STATE_NAME_CONFIRM_DIALOGUE: {
        u32 v6;
        int v7;

        if (manager->playerGender == GENDER_MALE) {
            v6 = 25;
        } else {
            v6 = 26;
        }

        if (RowanIntroManager_DisplayMessage(manager, v6, 1) == 1) {
            manager->state = RIM_STATE_NAME_CONFIRM_CHOICE_BOX;
        }
    } break;
    case RIM_STATE_NAME_CONFIRM_CHOICE_BOX:
        if (RowanIntroManager_ChoiceBox(manager, 0, 0) == 1) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }

            switch (manager->playerChoice) {
            case 1:
                manager->bufferedState = RIM_STATE_LOAD_ROWAN_TILEMAP_0;
                manager->state = RIM_STATE_NAME_FADE_OUT_AVATAR;
                break;
            case 2:
            case 0xfffffffe:
                Strbuf_Clear(manager->unk_70->textInputStr);
                manager->bufferedState = RIM_STATE_GENDR_FADE_IN_AVATAR_PREP;
                manager->state = RIM_STATE_NAME_FADE_OUT_AVATAR;
                break;
            }
        }
        break;
    case RIM_STATE_NAME_FADE_OUT_AVATAR: {
        int fadeoutAvaterBgLayer;

        if (manager->playerGender == GENDER_MALE) {
            fadeoutAvaterBgLayer = 1;
        } else {
            fadeoutAvaterBgLayer = 2;
        }

        if (RowanIntroManager_FadeBgLayer(manager, fadeoutAvaterBgLayer, FADE_OUT) == TRUE) {
            {
                manager->state = manager->bufferedState;
            }
        }
    } break;
    case RIM_STATE_LOAD_ROWAN_TILEMAP_0:
        manager->bgLayer1TilemapIndex = 1;
        manager->bgLayer2TilemapIndex = 0;
        RowanIntroManager_LoadTilemap(manager);
        manager->state = RIM_STATE_FADE_IN_ROWAN_AFTER_NAME;
        break;
    case RIM_STATE_FADE_IN_ROWAN_AFTER_NAME:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            manager->state = RIM_STATE_DIALOGUE_SO_YOURE;
        }
        break;
    case RIM_STATE_DIALOGUE_SO_YOURE:
        if (RowanIntroManager_DisplayMessage(manager, 27, 1) == 1) {
            manager->state = RIM_STATE_FADE_OUT_ROWAN_FOR_BARRY;
        }
        break;
    case RIM_STATE_FADE_OUT_ROWAN_FOR_BARRY:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            manager->state = RIM_STATE_LOAD_BARRY_TILEMAP;
        }
        break;
    case RIM_STATE_LOAD_BARRY_TILEMAP:
        manager->bgLayer1TilemapIndex = 10;
        manager->bgLayer2TilemapIndex = 0;
        RowanIntroManager_LoadTilemap(manager);
        manager->state = RIM_STATE_FADE_IN_BARRY;
        break;
    case RIM_STATE_FADE_IN_BARRY:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            manager->state = RIM_STATE_BARRY_NAME_DIALOGUE;
        }
        break;
    case RIM_STATE_BARRY_NAME_DIALOGUE:
        if (RowanIntroManager_DisplayMessage(manager, 28, 1) == 1) {
            manager->state = RIM_STATE_MOVE_BARRY_RIGHT_FOR_NAMES;
        }
        break;
    case RIM_STATE_MOVE_BARRY_RIGHT_FOR_NAMES:
        if (RowanIntroManager_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_MOVE_RIGHT) == 1) {
            manager->state = RIM_STATE_BARRY_NAME_CHOICE_BOX;
        }
        break;
    case RIM_STATE_BARRY_NAME_CHOICE_BOX:
        if (RowanIntroManager_ChoiceBox(manager, 2, 1) == 1) {
            switch (manager->playerChoice) {
            case 1:
                manager->state = RIM_STATE_BARRY_NAME_KEYBOARD_PREP;
                break;
            case 2:
            case 3:
            case 4:
            case 5: {
                u32 v9;

                if ((gGameVersion == VERSION_DIAMOND) || (GAME_VERSION == VERSION_PLATINUM)) {
                    v9 = Unk_ov72_021D3954[manager->playerChoice - 1].unk_00;
                } else {
                    v9 = Unk_ov73_021D1648[manager->playerChoice - 1].unk_00;
                }

                {
                    Strbuf *v10 = MessageLoader_GetNewStrbuf(manager->msgLoader, v9);

                    Strbuf_Copy(manager->unk_74->textInputStr, v10);
                    Strbuf_Free(v10);
                }
            }
                manager->state = RIM_STATE_MOVE_BARRY_LEFT_AFTER_NAME;
                break;
            }
        }
        break;
    case RIM_STATE_MOVE_BARRY_LEFT_AFTER_NAME:
        if (RowanIntroManager_MoveBgLayer(manager, BG_LAYER_MAIN_1, MBL_CASE_MOVE_LEFT) == 1) {
            manager->state = RIM_STATE_BARRY_NAME_CONFIRM_DIALOGUE;
        }
        break;
    case RIM_STATE_BARRY_NAME_KEYBOARD_PREP:
        manager->appMan = ApplicationManager_New(&Unk_020F2DAC, manager->unk_74, manager->heapID);
        manager->state = RIM_STATE_BARRY_NAME_KEYBOARD;
        break;
    case RIM_STATE_BARRY_NAME_KEYBOARD:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, 1);
        Bg_ToggleLayer(BG_LAYER_SUB_3, 1);
        Bg_ToggleLayer(BG_LAYER_MAIN_1, 1);
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_1, 0, 0);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_BARRY_NAME_KEYBOARD_FADE_INTO_AVATAR;
        break;
    case RIM_STATE_BARRY_NAME_KEYBOARD_FADE_INTO_AVATAR:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_BARRY_NAME_CONFIRM_DIALOGUE;
        }
        break;
    case RIM_STATE_BARRY_NAME_CONFIRM_DIALOGUE:
        if (RowanIntroManager_DisplayMessage(manager, 29, 1) == 1) {
            manager->state = RIM_STATE_BARRY_NAME_CONFIRM_CHOICE_BOX;
        }
        break;
    case RIM_STATE_BARRY_NAME_CONFIRM_CHOICE_BOX:
        if (RowanIntroManager_ChoiceBox(manager, 0, 0) == 1) {
            switch (manager->playerChoice) {
            case 1: {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
                manager->state = RIM_STATE_FADE_OUT_BARRY;
                break;
            case 2:
            case 0xfffffffe:
                Strbuf_Clear(manager->unk_74->textInputStr);
                manager->state = RIM_STATE_BARRY_NAME_DIALOGUE;
                break;
            }
        }
        break;
    case RIM_STATE_FADE_OUT_BARRY:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            manager->state = RIM_LOAD_ROWAN_TILEMAP_1;
        }
        break;
    case RIM_LOAD_ROWAN_TILEMAP_1:
        manager->bgLayer1TilemapIndex = 1;
        manager->bgLayer2TilemapIndex = 0;
        RowanIntroManager_LoadTilemap(manager);
        manager->state = RIM_STATE_FADE_IN_ROWAN_AFTER_BARRY;
        break;
    case RIM_STATE_FADE_IN_ROWAN_AFTER_BARRY:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            manager->state = RIM_STATE_DELAY_BEFORE_END_0;
        }
        break;
    case RIM_STATE_DELAY_BEFORE_END_0:
        if (RowanIntroManager_Delay(manager, 30) == TRUE) {
            manager->state = RIM_STATE_DIALOGUE_END;
        }
        break;
    case RIM_STATE_DIALOGUE_END:
        if (RowanIntroManager_DisplayMessage(manager, 30, 1) == 1) {
            Sound_FadeOutBGM(0, 50);
            manager->state = RIM_STATE_FADE_OUT_ROWAN_END;
        }
        break;
    case RIM_STATE_FADE_OUT_ROWAN_END:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_OUT) == TRUE) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RIM_STATE_DELAY_BEFORE_END_1;
        }
        break;
    case RIM_STATE_DELAY_BEFORE_END_1:
        if (RowanIntroManager_Delay(manager, 30) == TRUE) {
            manager->state = RIM_STATE_LOAD_MINI_AVATAR;
        }
        break;
    case RIM_STATE_LOAD_MINI_AVATAR:
        if (manager->playerGender == GENDER_MALE) {
            manager->bgLayer1TilemapIndex = 2;
            manager->bgLayer2TilemapIndex = 0;
            RowanIntroManager_LoadTilemap(manager);
        } else {
            manager->bgLayer1TilemapIndex = 6;
            manager->bgLayer2TilemapIndex = 0;
            RowanIntroManager_LoadTilemap(manager);
        }

        manager->state = RIM_STATE_FADE_IN_AVATAR_END;
        break;
    case RIM_STATE_FADE_IN_AVATAR_END:
        if (RowanIntroManager_FadeBgLayer(manager, BG_LAYER_MAIN_1, FADE_IN) == TRUE) {
            ov73_021D1F08(manager);
            manager->state = RIM_STATE_DELAY_BEFORE_END_2;
        }
        break;
    case RIM_STATE_DELAY_BEFORE_END_2:
        if (RowanIntroManager_Delay(manager, 30) == TRUE) {
            manager->state = RIM_STATE_AVATAR_SHRINK_ANIMATION;
        }
        break;
    case RIM_STATE_AVATAR_SHRINK_ANIMATION:
        if (ov73_021D1F18(manager) == 1) {
            manager->state = RIM_STATE_END;
        }
        break;
    case RIM_STATE_END:
        manager->appMan = ApplicationManager_New(&Unk_ov72_021D3820, NULL, manager->heapID);
        manager->state = RIM_STATE_EXIT;
        break;
    case RIM_STATE_EXIT:
        v0 = 1;
        break;
    }

    return v0;
}
