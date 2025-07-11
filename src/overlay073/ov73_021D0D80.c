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
    RIM_STATE_PLACEHOLDER_0,
    RIM_STATE_FADE_IN_ROWAN_AFTER_NAME,
    RIM_STATE_DIALOGUE_SO_YOURE,
    RIM_STATE_FADE_OUT_ROWAN_FOR_BARRY,
    RIM_STATE_PLACEHOLDER_1,
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
    RIM_STATE_PLACEHOLDER_2,
    RIM_STATE_FADE_IN_ROWAN_AFTER_BARRY,
    RIM_STATE_DELAY_BEFORE_END_0,
    RIM_STATE_DIALOGUE_END,
    RIM_STATE_FADE_OUT_ROWAN_END,
    RIM_STATE_DELAY_BEFORE_END_1,
    RIM_STATE_PLACEHOLDER_3,
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

typedef struct {
    int heapID;
    SaveData *saveData;
    Options *options;
    enum RowanIntroManagerState state;
    int bufferedState;
    ApplicationManager *appMan;
    BgConfig *bgConfig;
    Window unk_1C;
    int unk_2C;
    Window unk_30;
    ListMenu *unk_40;
    StringList *unk_44;
    int playerChoice;
    MessageLoader *unk_4C;
    int unk_50;
    int unk_54;
    int unk_58;
    Strbuf *unk_5C;
    void *unk_60;
    StringTemplate *unk_64;
    UnkStruct_02015920 *unk_68;
    SysTask *unk_6C;
    UnkStruct_0208737C *unk_70;
    UnkStruct_0208737C *unk_74;
    int unk_78;
    int unk_7C;
    int unk_80;
    u32 playerGender;
    u8 unk_88;
    u8 unk_89;
    u8 unk_8A;
    u8 unk_8B;
    u8 unk_8C;
    u8 unk_8D;
    u8 unk_8E;
    u8 unk_8F;
    int delayUpdateCounter;
    int unk_94[9];
    u16 *unk_B8;
    u16 *unk_BC;
} RowanIntroManager;

void EnqueueApplication(FSOverlayID param0, const ApplicationManagerTemplate *param1);
int ov73_021D0D80(ApplicationManager *appMan, int *param1);
int ov73_021D0E20(ApplicationManager *appMan, int *param1);
int ov73_021D0F7C(ApplicationManager *appMan, int *param1);
static void ov73_021D0FF0(void *param0);
static void ov73_021D1058(RowanIntroManager *manager);
static void ov73_021D1238(RowanIntroManager *manager);
static void ov73_021D12C4(RowanIntroManager *manager);
static void ov73_021D1300(RowanIntroManager *manager);
static void ov73_021D1318(RowanIntroManager *manager);
static void ov73_021D1328(RowanIntroManager *manager);
static void ov73_021D1930(RowanIntroManager *manager);
static void ov73_021D19DC(RowanIntroManager *manager);
static void ov73_021D1A20(RowanIntroManager *manager);
static void ov73_021D1B14(RowanIntroManager *manager);
static void ov73_021D1CE0(RowanIntroManager *manager);
static BOOL ov73_021D2318(RowanIntroManager *manager);
int ov73_021D3250(ApplicationManager *appMan, int *param1);
int ov73_021D3280(ApplicationManager *appMan, int *param1);
int ov73_021D3404(ApplicationManager *appMan, int *param1);

const ApplicationManagerTemplate dummy_ApplicationManagerTemplate = {
    ov73_021D0D80,
    ov73_021D0E20,
    ov73_021D0F7C,
    0xffffffff
};

static const ApplicationManagerTemplate Unk_ov72_021D3820 = {
    ov73_021D3250,
    ov73_021D3280,
    ov73_021D3404,
    0xffffffff
};

int ov73_021D0D80(ApplicationManager *appMan, int *param1)
{
    RowanIntroManager *manager;
    int childHeapID = HEAP_ID_82;

    Heap_Create(HEAP_ID_APPLICATION, childHeapID, 0x40000);

    manager = ApplicationManager_NewData(appMan, sizeof(RowanIntroManager), childHeapID);
    memset(manager, 0, sizeof(RowanIntroManager));

    manager->heapID = childHeapID;
    manager->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    manager->options = SaveData_GetOptions(manager->saveData);
    manager->state = 0;
    manager->bufferedState = 0;
    manager->appMan = NULL;
    manager->unk_70 = sub_0208712C(childHeapID, 0, 0, 7, manager->options);
    manager->unk_74 = sub_0208712C(childHeapID, 3, 0, 7, manager->options);
    manager->unk_88 = 0;
    manager->unk_89 = 0;
    manager->unk_8A = 0;
    manager->unk_8B = 0;
    manager->delayUpdateCounter = 0;
    manager->unk_B8 = Heap_AllocFromHeap(childHeapID, 0x20);
    manager->unk_BC = Heap_AllocFromHeap(childHeapID, 0x20);

    return 1;
}

int ov73_021D0E20(ApplicationManager *appMan, int *param1)
{
    RowanIntroManager *manager = ApplicationManager_Data(appMan);
    int v1 = 0;

    switch (*param1) {
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

        *param1 = 1;
        break;
    case 1:
        if (ov73_021D2318(manager) == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, manager->heapID);
            *param1 = 2;
        }

        if (manager->appMan != NULL) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, manager->heapID);
            *param1 = 3;
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
            *param1 = 4;
        }
        break;
    case 4:
        if (ApplicationManager_Exec(manager->appMan) == 1) {
            ApplicationManager_Free(manager->appMan);
            manager->appMan = NULL;
            *param1 = 5;
        }
        break;
    case 5:
        *param1 = 0;
        break;
    }

    return v1;
}

int ov73_021D0F7C(ApplicationManager *appMan, int *param1)
{
    RowanIntroManager *manager = ApplicationManager_Data(appMan);
    int heapID = manager->heapID;

    Heap_FreeToHeap(manager->unk_B8);
    Heap_FreeToHeap(manager->unk_BC);

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

static BOOL ov73_021D0FFC(void)
{
    BOOL v0 = 0;
    u16 v1, v2;

    if (gSystem.touchPressed) {
        if ((gSystem.touchX < 256) && (gSystem.touchY < 192)) {
            if (gSystem.touchX < 128) {
                v1 = 128 - gSystem.touchX;
            } else {
                v1 = gSystem.touchX - 128;
            }

            if (gSystem.touchY < 100) {
                v2 = 100 - gSystem.touchY;
            } else {
                v2 = gSystem.touchY - 100;
            }

            if ((v1 * v1 + v2 * v2) <= 16 * 16) {
                v0 = 1;
            }
        }
    }

    return v0;
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

    manager->unk_78 = 0;
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

    Heap_FreeToHeap(manager->bgConfig);
}

static void ov73_021D12C4(RowanIntroManager *manager)
{
    manager->unk_4C = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ROWAN_INTRO, manager->heapID);

    Text_ResetAllPrinters();

    manager->unk_60 = sub_0201567C(NULL, 0, 6, manager->heapID);
    manager->unk_64 = StringTemplate_Default(manager->heapID);
    manager->unk_50 = 0;
    manager->unk_54 = 0;
    manager->unk_2C = 0;
}

static void ov73_021D1300(RowanIntroManager *manager)
{
    StringTemplate_Free(manager->unk_64);
    sub_02015760(manager->unk_60);
    MessageLoader_Free(manager->unk_4C);
}

static void ov73_021D1318(RowanIntroManager *manager)
{
    manager->unk_68 = sub_02015920(manager->heapID);
}

static void ov73_021D1328(RowanIntroManager *manager)
{
    sub_02015938(manager->unk_68);
}

static BOOL ov73_021D1334(RowanIntroManager *manager, int param1, int param2)
{
    BOOL v0 = 0;
    GXBlendPlaneMask v1;
    int v2;

    switch (param1) {
    default:
    case 0:
        v1 = GX_BLEND_PLANEMASK_BG0;
        v2 = 0;
        break;
    case 1:
        v1 = GX_BLEND_PLANEMASK_BG1;
        v2 = 0;
        break;
    case 2:
        v1 = GX_BLEND_PLANEMASK_BG2;
        v2 = 0;
        break;
    case 4:
        v1 = GX_BLEND_PLANEMASK_BG0;
        v2 = 1;
        break;
    case 5:
        v1 = GX_BLEND_PLANEMASK_BG1;
        v2 = 1;
        break;
    case 6:
        v1 = GX_BLEND_PLANEMASK_BG2;
        v2 = 1;
        break;
    }

    switch (manager->unk_78) {
    case 0:
        if (param2 == 0) {
            manager->unk_7C = 0;
            manager->unk_80 = 16;
            manager->unk_78 = 1;

            if (v2 == 0) {
                G2_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->unk_7C, manager->unk_80);
            } else {
                G2S_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->unk_7C, manager->unk_80);
            }

            Bg_ToggleLayer(param1, 1);
        } else {
            manager->unk_7C = 16;
            manager->unk_80 = 0;
            manager->unk_78 = 2;
        }
        break;
    case 1:
        if (manager->unk_80) {
            manager->unk_7C++;
            manager->unk_80--;

            if (v2 == 0) {
                G2_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->unk_7C, manager->unk_80);
            } else {
                G2S_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->unk_7C, manager->unk_80);
            }
        } else {
            manager->unk_78 = 3;
        }
        break;
    case 2:
        if (manager->unk_7C) {
            manager->unk_7C--;
            manager->unk_80++;

            if (v2 == 0) {
                G2_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->unk_7C, manager->unk_80);
            } else {
                G2S_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, manager->unk_7C, manager->unk_80);
            }
        } else {
            manager->unk_78 = 3;
            Bg_ToggleLayer(param1, 0);
        }
        break;
    case 3:
        G2_BlendNone();
        G2S_BlendNone();
        manager->unk_78 = 0;
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL RowanIntroManager_Delay(RowanIntroManager *manager, int param1)
{
    if (manager->delayUpdateCounter < param1) {
        manager->delayUpdateCounter++;
        return 0;
    } else {
        manager->delayUpdateCounter = 0;
        return 1;
    }
}

static void ov73_021D14DC(RowanIntroManager *manager, int param1, int param2)
{
    Bg_ChangeTilemapRectPalette(manager->bgConfig, param1, 0, 0, 32, 24, param2);
    Bg_CopyTilemapBufferToVRAM(manager->bgConfig, param1);
}

typedef struct UnkStruct_ov72_021D3840_t {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov72_021D3840;

static const WindowTemplate Unk_ov72_021D37EC = {
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

static BOOL RowanIntroManager_DisplayMessage(RowanIntroManager *manager, u32 param1, int param2)
{
    BOOL v0 = 0;

    switch (manager->unk_50) {
    case 0:
        Window_AddFromTemplate(manager->bgConfig, &manager->unk_1C, &Unk_ov72_021D37EC);
        Window_FillRectWithColor(&manager->unk_1C, 15, 0, 0, 27 * 8, 4 * 8);
        Window_DrawMessageBoxWithScrollCursor(&manager->unk_1C, 0, 0x400 - (18 + 12), 4);
        RenderControlFlags_SetCanABSpeedUpPrint(1);
        RenderControlFlags_SetAutoScrollFlags(0);

        {
            Strbuf *v1 = Strbuf_Init(0x400, manager->heapID);

            manager->unk_5C = Strbuf_Init(0x400, manager->heapID);

            MessageLoader_GetStrbuf(manager->unk_4C, param1, v1);
            StringTemplate_SetStrbuf(manager->unk_64, 0, manager->unk_70->textInputStr, manager->playerGender, 1, GAME_LANGUAGE);
            StringTemplate_SetStrbuf(manager->unk_64, 1, manager->unk_74->textInputStr, 0, 1, GAME_LANGUAGE);
            StringTemplate_Format(manager->unk_64, manager->unk_5C, v1);
            Strbuf_Free(v1);
        }

        manager->unk_58 = Text_AddPrinterWithParams(&manager->unk_1C, FONT_MESSAGE, manager->unk_5C, 0, 0, Options_TextFrameDelay(manager->options), NULL);
        manager->unk_50 = 1;
        break;
    case 1:
        if (!(Text_IsPrinterActive(manager->unk_58))) {
            Strbuf_Free(manager->unk_5C);
            manager->unk_50 = 2;
        }
        break;
    case 2:
        if ((param2 != 0) || ((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A)) {
            Window_Remove(&manager->unk_1C);
            manager->unk_50 = 0;
            v0 = 1;
        }
    }

    return v0;
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

    switch (manager->unk_2C) {
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

        Window_AddFromTemplate(manager->bgConfig, &manager->unk_30, v2);

        manager->unk_44 = StringList_New(v5, manager->heapID);

        for (v4 = 0; v4 < v5; v4++) {
            StringList_AddFromMessageBank(manager->unk_44, manager->unk_4C, v3[v4].unk_00, v3[v4].unk_04);
        }

        v1 = Unk_ov72_021D390C;
        v1.choices = manager->unk_44;
        v1.count = v5;
        v1.maxDisplay = v5;
        v1.cursorCallback = ov73_021D1634;
        v1.window = &manager->unk_30;

        manager->unk_40 = ListMenu_New(&v1, 0, 0, manager->heapID);

        Window_DrawStandardFrame(v1.window, 1, (0x400 - (18 + 12)) - 9, 3);
        Window_CopyToVRAM(&manager->unk_30);

        manager->unk_2C = 1;
        break;
    case 1:
        manager->playerChoice = ListMenu_ProcessInput(manager->unk_40);

        if (manager->playerChoice == 0xffffffff) {
            break;
        }

        if ((manager->playerChoice == 0xfffffffe) && (param2 == 1)) {
            break;
        }

        Window_EraseStandardFrame(&manager->unk_30, 0);
        Window_Remove(&manager->unk_30);
        ListMenu_Free(manager->unk_40, NULL, NULL);
        StringList_Free(manager->unk_44);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        manager->unk_2C = 0;
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL ov73_021D1784(RowanIntroManager *manager, u32 param1, int param2, int param3, int param4)
{
    BOOL v0 = 0;
    WindowTemplate v1;

    switch (manager->unk_54) {
    case 0:
        Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
        manager->unk_5C = Strbuf_Init(0x400, manager->heapID);
        MessageLoader_GetStrbuf(manager->unk_4C, param1, manager->unk_5C);

        if (param2 == 1) {
            v1 = Unk_ov72_021D37D4;

            {
                u32 v2 = Strbuf_NumLines(manager->unk_5C);

                v1.tilemapTop = 12 - v2;
                v1.height = v2 * 2;
            }

            Window_AddFromTemplate(manager->bgConfig, &manager->unk_1C, &v1);
            Window_FillRectWithColor(&manager->unk_1C, 0, 0, 0, 24 * 8, 24 * 8);
            Text_AddPrinterWithParamsAndColor(&manager->unk_1C, FONT_SYSTEM, manager->unk_5C, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        } else {
            v1 = Unk_ov72_021D37E4;

            if (param2 == 2) {
                u32 v3 = Strbuf_NumLines(manager->unk_5C);

                v1.tilemapTop = param3 + param4 / 2 - v3;
                v1.height = v3 * 2;
            } else {
                v1.tilemapTop = param3;
                v1.height = param4;
            }

            Window_AddFromTemplate(manager->bgConfig, &manager->unk_1C, &v1);
            Window_FillRectWithColor(&manager->unk_1C, 0, 0, 0, 24 * 8, 24 * 8);
            Text_AddPrinterWithParamsAndColor(&manager->unk_1C, FONT_SYSTEM, manager->unk_5C, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 2, 0), NULL);
        }

        Strbuf_Free(manager->unk_5C);
        manager->unk_54 = 1;
        break;
    case 1:
        Window_CopyToVRAM(&manager->unk_1C);
        manager->unk_54 = 2;
        break;
    case 2:
        if (ov73_021D1334(manager, 0, 0) == 1) {
            manager->unk_54 = 3;
        }
        break;
    case 3:
        if (((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) || ((gSystem.pressedKeys & PAD_BUTTON_B) == PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            manager->unk_54 = 4;
        }
        break;
    case 4:
        if (ov73_021D1334(manager, 0, 1) == 1) {
            manager->unk_54 = 5;
        }
        break;
    case 5:
        Window_Remove(&manager->unk_1C);
        Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
        manager->unk_54 = 0;
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

    ov73_021D19DC(manager);
    ov73_021D1A20(manager);
    ov73_021D1B14(manager);

    Bg_MaskPalette(BG_LAYER_MAIN_0, 0x0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0x0);
}

static void ov73_021D19DC(RowanIntroManager *manager)
{
    int v0[] = { 4, 5, 6, 7, 8 };

    if (manager->unk_88 >= 5) {
        return;
    }

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v0[manager->unk_88], manager->bgConfig, 3, 0, 0, 0, manager->heapID);
}

static void ov73_021D1A20(RowanIntroManager *manager)
{
    int v0[][2] = {
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

    if ((manager->unk_89 != 0) && (manager->unk_89 < 12)) {
        Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v0[manager->unk_89][0], manager->bgConfig, 1, 0, 0, 0, manager->heapID);
        Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO, v0[manager->unk_89][1], 0, 7 * (2 * 16), 2 * 16, manager->heapID);
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 23, manager->bgConfig, 1, 0, 0, 0, manager->heapID);
        ov73_021D14DC(manager, 1, 7);
    }

    if ((manager->unk_8A != 0) && (manager->unk_8A < 12)) {
        Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v0[manager->unk_8A][0], manager->bgConfig, 2, 0, 0, 0, manager->heapID);
        Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO, v0[manager->unk_8A][1], 0, 8 * (2 * 16), 2 * 16, manager->heapID);
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 23, manager->bgConfig, 2, 0, 0, 0, manager->heapID);
        ov73_021D14DC(manager, 2, 8);
    }
}

static void ov73_021D1B14(RowanIntroManager *manager)
{
    int v0[] = { 28, 29, 29, 30, 31 };

    if (manager->unk_8B >= 5) {
        return;
    }

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v0[manager->unk_8B], manager->bgConfig, 7, 0, 0, 0, manager->heapID);

    if (manager->unk_8B == 1) {
        ov73_021D14DC(manager, 7, 3);
    } else if (manager->unk_8B == 2) {
        ov73_021D14DC(manager, 7, 2);
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

    ov73_021D14DC(manager, v4, v6);

    Bg_ClearTilesRange(v4, 32, 0, manager->heapID);
    Bg_LoadTiles(manager->bgConfig, v4, v2, (10 * 10) * 0x20, 1);
    Bg_LoadPalette(v4, v3, 2 * 16, (2 * 16) * v6);
    Bg_FillTilemapRect(manager->bgConfig, v5, 0, 0, 0, 32, 24, v7);
    Bg_LoadToTilemapRect(manager->bgConfig, v5, v1, 11, 7, 10, 10);

    ov73_021D14DC(manager, v5, v7);

    Bg_ClearTilesRange(v5, 32, 0, manager->heapID);
    Bg_LoadTiles(manager->bgConfig, v5, v2, (10 * 10) * 0x20, 1);
    Bg_LoadPalette(v5, v3, 2 * 16, (2 * 16) * v7);
    Heap_FreeToHeap(v3);
    Heap_FreeToHeap(v2);
    Heap_FreeToHeap(v1);
}

static void ov73_021D1CE0(RowanIntroManager *manager)
{
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, 40, manager->bgConfig, 6, 0, 0, 0, manager->heapID);
    ov73_021D14DC(manager, 6, 9);

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
    manager->unk_94[0] = 0;
    manager->unk_94[1] = 0;
}

static BOOL ov73_021D1F18(RowanIntroManager *manager)
{
    BOOL v0 = 0;
    int v1;

    if (manager->unk_94[1]) {
        manager->unk_94[1]--;
    } else {
        manager->unk_94[0]++;
        manager->unk_94[1] = 8;
    }

    if (manager->playerGender == GENDER_MALE) {
        {
            int v2[] = { 9, 42, 43, 44, 45, 0xff };
            v1 = v2[manager->unk_94[0]];
        }
    } else {
        {
            int v3[] = { 14, 46, 47, 48, 49, 0xff };
            v1 = v3[manager->unk_94[0]];
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
    if (manager->unk_94[8] > 0) {
        manager->unk_94[8]--;

        BlendPalettes(manager->unk_B8, manager->unk_BC, 1, manager->unk_94[8] / 3, 0x6a3c);
        Bg_LoadPalette(2, manager->unk_BC, 2 * 16, (2 * 16) * 8);
        Bg_LoadPalette(5, manager->unk_BC, 2 * 16, (2 * 16) * 10);
    }
}

static BOOL ov73_021D200C(RowanIntroManager *manager, int *param1)
{
    BOOL v0 = 0;

    switch (*param1) {
    case 0:
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 0, 0);
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, -8 * 13);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);
        Bg_ToggleLayer(BG_LAYER_SUB_1, 1);

        manager->unk_94[5] = 0;
        manager->unk_94[6] = 8;
        manager->unk_94[7] = 0;
        manager->unk_94[8] = (16 * 3);
        *param1 = 1;
        break;
    case 1: {
        int v1 = Bg_GetXOffset(manager->bgConfig, 2);
        int v2 = Bg_GetYOffset(manager->bgConfig, 5);
        int v3 = manager->unk_94[6] * 9 * manager->unk_94[7];
        int v4 = 9 * manager->unk_94[7] * manager->unk_94[7] / 2;
        int v5 = v3 - v4;

        if (v2 < 8 * 11) {
            manager->unk_94[7]++;
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 1, 2);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_SUB_1, 1, 2);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_SUB_1, 3, v5);
        } else {
            Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
            manager->unk_94[7] = 0;
            *param1 = 2;
        }
    } break;
    case 2:
        if (manager->unk_94[7]) {
            manager->unk_94[7]--;
        } else {
            Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
            manager->unk_94[5] = 0;
            manager->unk_94[6] = 9;
            manager->unk_94[7] = 0;
            *param1 = 3;
        }
        break;
    case 3: {
        int v6 = Bg_GetXOffset(manager->bgConfig, 2);
        int v7 = Bg_GetYOffset(manager->bgConfig, 2);
        int v8 = manager->unk_94[6] * 9 * manager->unk_94[7];
        int v9 = 9 * manager->unk_94[7] * manager->unk_94[7] / 2;
        int v10 = (-8 * 13) + v8 - v9;

        if ((manager->unk_94[5] > 0) && (v10 <= 0)) {
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, 0);
            manager->unk_94[5] = 0;
            manager->unk_94[6] = 3;
            manager->unk_94[7] = 0;
            *param1 = 4;
        } else {
            manager->unk_94[7]++;
            manager->unk_94[5] = v10;
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 1, 1);
            v10 = v10 >> 1;

            if (v10 > 8 * 18) {
                v10 = 8 * 18;
            }

            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, v10);
        }
    } break;
    case 4: {
        int v11 = Bg_GetXOffset(manager->bgConfig, 2);
        int v12 = Bg_GetYOffset(manager->bgConfig, 2);
        int v13 = manager->unk_94[6] * 9 * manager->unk_94[7];
        int v14 = 9 * manager->unk_94[7] * manager->unk_94[7] / 3;
        int v15 = v13 - v14;

        if ((manager->unk_94[5] > 0) && (v15 <= 0)) {
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, 0);
            manager->unk_94[5] = 0;
            manager->unk_94[6] = 3;
            manager->unk_94[7] = 0;
            *param1 = 5;
        } else {
            manager->unk_94[7]++;
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 2, 2);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, v15);
            manager->unk_94[5] = v15;
        }
    } break;
    case 5: {
        int v16 = Bg_GetXOffset(manager->bgConfig, 2);
        int v17 = Bg_GetYOffset(manager->bgConfig, 2);
        int v18 = manager->unk_94[6] * 9 * manager->unk_94[7];
        int v19 = 9 * manager->unk_94[7] * manager->unk_94[7] / 3;
        int v20 = v18 - v19;

        if ((manager->unk_94[5] > 0) && (v20 <= 0)) {
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, 0);
            *param1 = 6;
        } else {
            manager->unk_94[7]++;
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 1, 4);
            Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 3, v20);
            manager->unk_94[5] = v20;
        }
    } break;
    case 6:
        Sound_PlayPokemonCry(SPECIES_BUNEARY, 0);
        v0 = 1;
        break;
    }

    ov73_021D1FA0(manager);

    return v0;
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
            if (RowanIntroManager_Delay(manager, 40) == 1) {
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
        manager->unk_89 = 1;
        manager->unk_8A = 0;
        ov73_021D1A20(manager);
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
        manager->unk_88 = 1;
        ov73_021D19DC(manager);
        manager->unk_8B = 1;
        ov73_021D1B14(manager);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_CONTROL_INFO_FADE_IN_END;
        break;
    case RIM_STATE_CONTROL_INFO_FADE_IN_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_CONTROL_INFO_TEXT_0;
        }
        break;
    case RIM_STATE_CONTROL_INFO_TEXT_0:
        if (ov73_021D1784(manager, 2, 0, 3, 18) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_SHOW_XY_ICONS;
        }
        break;
    case RIM_STATE_CONTROL_INFO_SHOW_XY_ICONS:
        manager->unk_88 = 2;
        ov73_021D19DC(manager);
        manager->state = RIM_STATE_CONTROL_INFO_TEXT_1;
        break;
    case RIM_STATE_CONTROL_INFO_TEXT_1:
        if (ov73_021D1784(manager, 3, 0, 7, 12) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_HIDE_XY_ICONS;
        }
        break;
    case RIM_STATE_CONTROL_INFO_HIDE_XY_ICONS:
        manager->unk_88 = 3;
        ov73_021D19DC(manager);
        manager->state = RIM_STATE_CONTROL_INFO_TEXT_2;
        break;
    case RIM_STATE_CONTROL_INFO_TEXT_2:
        if (ov73_021D1784(manager, 4, 2, 4, 12) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_DIALOGUE_DS_ICON;
        }
        break;
    case RIM_STATE_CONTROL_INFO_DIALOGUE_DS_ICON:
        if (RowanIntroManager_DisplayMessage(manager, 6, 1) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_TEXT_3;
        }
        break;
    case RIM_STATE_CONTROL_INFO_TEXT_3:
        if (ov73_021D1784(manager, 5, 2, 4, 10) == 1) {
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
        manager->unk_8B = 3;
        ov73_021D1B14(manager);
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
        if (ov73_021D1334(manager, 6, 1) == 1) {
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
        if (ov73_021D1334(manager, 6, 1) == 1) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            sub_02015A54(manager->unk_68);
            manager->unk_88 = 1;
            ov73_021D19DC(manager);
            manager->unk_8B = 1;
            ov73_021D1B14(manager);
            manager->state = RIM_STATE_CONTROL_INFO_TEXT_0;
        }
        break;
    case RIM_STATE_CONTROL_INFO_DIALOGUE_USE_TOUCHSCREEN:
        if (RowanIntroManager_DisplayMessage(manager, 8, 1) == 1) {
            manager->state = RIM_STATE_CONTROL_INFO_WAIT_INPUT;
        }
        break;
    case RIM_STATE_FADE_IN_ROWAN_2_START:
        manager->unk_88 = 0;
        ov73_021D19DC(manager);
        manager->unk_8B = 0;
        ov73_021D1B14(manager);
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
        manager->unk_88 = 4;
        ov73_021D19DC(manager);
        manager->unk_8B = 2;
        ov73_021D1B14(manager);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, manager->heapID);
        manager->state = RIM_STATE_ADVENTURE_INFO_FADE_IN_END;
        break;
    case RIM_STATE_ADVENTURE_INFO_FADE_IN_END:
        if (IsScreenFadeDone() == TRUE) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_0;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_0:
        if (ov73_021D1784(manager, 10, 1, 9, 6) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_1;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_1:
        if (ov73_021D1784(manager, 11, 1, 8, 8) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_2;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_2:
        if (ov73_021D1784(manager, 12, 1, 9, 6) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_3;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_3:
        if (ov73_021D1784(manager, 13, 1, 5, 14) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_4;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_4:
        if (ov73_021D1784(manager, 14, 1, 10, 4) == 1) {
            manager->state = RIM_STATE_ADVENTURE_INFO_TEXT_5;
        }
        break;
    case RIM_STATE_ADVENTURE_INFO_TEXT_5:
        if (ov73_021D1784(manager, 15, 1, 6, 12) == 1) {
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
            ov73_021D1CE0(manager);
            manager->unk_8B = 4;
            ov73_021D1B14(manager);
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
        if (ov73_021D0FFC() == 1) {
            manager->unk_94[0] = 0;
            manager->unk_94[1] = 0;
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RIM_STATE_PKBL_ANIM_PUSH_IN;
        } else if (gSystem.pressedKeys) {
            manager->state = RIM_STATE_PKBL_DIALOGUE_USE_TOUCHSCREEN;
        }
        break;
    case RIM_STATE_PKBL_ANIM_PUSH_IN:
        if (manager->unk_94[1]) {
            manager->unk_94[1]--;
        } else {
            {
                int v3[] = { 33, 34, 0xffff };

                if (v3[manager->unk_94[0]] == 0xffff) {
                    Sound_PlayEffect(SEQ_SE_DP_BOWA2);

                    manager->state = RIM_STATE_PKBL_ANIM_FLASH_0;
                } else {
                    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO, v3[manager->unk_94[0]], manager->bgConfig, 6, 0x20, 0, 0, manager->heapID);
                    manager->unk_94[0]++;
                    manager->unk_94[1] = 4;
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
        manager->unk_94[0] = 0;
        ov73_021D200C(manager, &manager->unk_94[0]);
        manager->unk_8B = 0;
        ov73_021D1B14(manager);
        BrightnessController_StartTransition(16, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
        BrightnessController_StartTransition(16, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_SUB_SCREEN);
        manager->state = RIM_STATE_PKBL_ANIM_MV_PKM_UP_AND_FLASH_END;
        break;
    case RIM_STATE_PKBL_ANIM_MV_PKM_UP_AND_FLASH_END:
        ov73_021D200C(manager, &manager->unk_94[0]);

        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            manager->state = RIM_STATE_PKBL_ANIM_MV_PKM_DOWN_AND_BOUNCE;
        }
        break;
    case RIM_STATE_PKBL_ANIM_MV_PKM_DOWN_AND_BOUNCE:
        if (ov73_021D200C(manager, &manager->unk_94[0]) == 1) {
            manager->state = RIM_STATE_PKBL_ANIM_END_DELAY;
        }
        break;
    case RIM_STATE_PKBL_ANIM_END_DELAY:
        if (RowanIntroManager_Delay(manager, 40) == 1) {
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
        if (ov73_021D1334(manager, 2, 1) == 1) {
            ov73_021D230C(manager);
            manager->state = RIM_STATE_BETWEEN_DIALOGUE_DELAY;
        }
        break;
    case RIM_STATE_BETWEEN_DIALOGUE_DELAY:
        if (RowanIntroManager_Delay(manager, 30) == 1) {
            manager->state = RIM_STATE_DIALOGUE_ABOUT_YOURSELF;
        }
        break;
    case RIM_STATE_DIALOGUE_ABOUT_YOURSELF:
        if (RowanIntroManager_DisplayMessage(manager, 20, 1) == 1) {
            manager->state = RIM_STATE_GENDR_FADE_OUT_ROWAN;
        }
        break;
    case RIM_STATE_GENDR_FADE_OUT_ROWAN:
        if (ov73_021D1334(manager, 1, 1) == 1) {
            manager->state = RIM_STATE_GENDR_FADE_IN_AVATAR_PREP;
        }
        break;
    case RIM_STATE_GENDR_FADE_IN_AVATAR_PREP:
        ov73_021D1DCC(manager);
        manager->unk_89 = 2;
        manager->unk_8A = 6;
        ov73_021D1A20(manager);
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_1, 0, -8 * 6);
        Bg_SetOffset(manager->bgConfig, BG_LAYER_MAIN_2, 0, 8 * 6);
        manager->state = RIM_STATE_GENDR_FADE_IN_AVATAR_MALE;
        break;
    case RIM_STATE_GENDR_FADE_IN_AVATAR_MALE:
        if (ov73_021D1334(manager, 1, 0) == 1) {
            manager->state = RIM_STATE_GENDR_FADE_IN_AVATAR_FEMALE;
        }
        break;
    case RIM_STATE_GENDR_FADE_IN_AVATAR_FEMALE:
        if (ov73_021D1334(manager, 2, 0) == 1) {
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
            manager->unk_7C = 6;
            manager->unk_80 = 10;
            manager->unk_78 = 2;

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
        if (ov73_021D1334(manager, 2, 1) == 1) {
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
        if (ov73_021D1334(manager, 1, 1) == 1) {
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
        int v5;

        if (manager->playerGender == GENDER_MALE) {
            v5 = 1;
        } else {
            v5 = 2;
        }

        if (ov73_021D1334(manager, v5, 1) == 1) {
            manager->state = RIM_STATE_GENDR_FADE_IN_AVATAR_PREP;
        }
    } break;
    case RIM_STATE_NAME_DIALOGUE:
        if (RowanIntroManager_DisplayMessage(manager, 24, 1) == 1) {
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
                manager->bufferedState = RIM_STATE_PLACEHOLDER_0;
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
        int v8;

        if (manager->playerGender == GENDER_MALE) {
            v8 = 1;
        } else {
            v8 = 2;
        }

        if (ov73_021D1334(manager, v8, 1) == 1) {
            {
                manager->state = manager->bufferedState;
            }
        }
    } break;
    case RIM_STATE_PLACEHOLDER_0:
        manager->unk_89 = 1;
        manager->unk_8A = 0;
        ov73_021D1A20(manager);
        manager->state = RIM_STATE_FADE_IN_ROWAN_AFTER_NAME;
        break;
    case RIM_STATE_FADE_IN_ROWAN_AFTER_NAME:
        if (ov73_021D1334(manager, 1, 0) == 1) {
            manager->state = RIM_STATE_DIALOGUE_SO_YOURE;
        }
        break;
    case RIM_STATE_DIALOGUE_SO_YOURE:
        if (RowanIntroManager_DisplayMessage(manager, 27, 1) == 1) {
            manager->state = RIM_STATE_FADE_OUT_ROWAN_FOR_BARRY;
        }
        break;
    case RIM_STATE_FADE_OUT_ROWAN_FOR_BARRY:
        if (ov73_021D1334(manager, 1, 1) == 1) {
            manager->state = RIM_STATE_PLACEHOLDER_1;
        }
        break;
    case RIM_STATE_PLACEHOLDER_1:
        manager->unk_89 = 10;
        manager->unk_8A = 0;
        ov73_021D1A20(manager);
        manager->state = RIM_STATE_FADE_IN_BARRY;
        break;
    case RIM_STATE_FADE_IN_BARRY:
        if (ov73_021D1334(manager, 1, 0) == 1) {
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
                    Strbuf *v10 = MessageLoader_GetNewStrbuf(manager->unk_4C, v9);

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
        if (ov73_021D1334(manager, 1, 1) == 1) {
            manager->state = RIM_STATE_PLACEHOLDER_2;
        }
        break;
    case RIM_STATE_PLACEHOLDER_2:
        manager->unk_89 = 1;
        manager->unk_8A = 0;
        ov73_021D1A20(manager);
        manager->state = RIM_STATE_FADE_IN_ROWAN_AFTER_BARRY;
        break;
    case RIM_STATE_FADE_IN_ROWAN_AFTER_BARRY:
        if (ov73_021D1334(manager, 1, 0) == 1) {
            manager->state = RIM_STATE_DELAY_BEFORE_END_0;
        }
        break;
    case RIM_STATE_DELAY_BEFORE_END_0:
        if (RowanIntroManager_Delay(manager, 30) == 1) {
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
        if (ov73_021D1334(manager, 1, 1) == 1) {
            {
                Bg_ClearTilemap(manager->bgConfig, BG_LAYER_MAIN_0);
            }
            manager->state = RIM_STATE_DELAY_BEFORE_END_1;
        }
        break;
    case RIM_STATE_DELAY_BEFORE_END_1:
        if (RowanIntroManager_Delay(manager, 30) == 1) {
            manager->state = RIM_STATE_PLACEHOLDER_3;
        }
        break;
    case RIM_STATE_PLACEHOLDER_3:
        if (manager->playerGender == GENDER_MALE) {
            manager->unk_89 = 2;
            manager->unk_8A = 0;
            ov73_021D1A20(manager);
        } else {
            manager->unk_89 = 6;
            manager->unk_8A = 0;
            ov73_021D1A20(manager);
        }

        manager->state = RIM_STATE_FADE_IN_AVATAR_END;
        break;
    case RIM_STATE_FADE_IN_AVATAR_END:
        if (ov73_021D1334(manager, 1, 0) == 1) {
            ov73_021D1F08(manager);
            manager->state = RIM_STATE_DELAY_BEFORE_END_2;
        }
        break;
    case RIM_STATE_DELAY_BEFORE_END_2:
        if (RowanIntroManager_Delay(manager, 30) == 1) {
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
