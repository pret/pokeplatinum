#include "applications/mail_viewer.h"

#include <nitro.h>

#include "constants/narc.h"

#include "applications/mail.h"

#include "bg_window.h"
#include "enums.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "palette.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_02014A84.h"
#include "vram_transfer.h"

#include "res/fonts/pl_font.naix"
#include "res/graphics/mail/mail.naix"
#include "res/graphics/windows/pl_winframe.naix"
#include "res/pokemon/pl_poke_icon.naix"
#include "res/text/bank/mail.h"

#define MAIL_SENTENCE_WINDOW_WIDTH  26
#define MAIL_SENTENCE_WINDOW_HEIGHT 4

#define MAIL_CONFIRM_CANCEL_WINDOW_WIDTH  8
#define MAIL_CONFIRM_CANCEL_WINDOW_HEIGHT 2

#define MAIL_OPTION_PALETTE_SLOT_START 34

#define BASE_TILE_MAIL_SENTENCE_WINDOW_1 (1023 - MAIL_SENTENCE_WINDOW_WIDTH * MAIL_SENTENCE_WINDOW_HEIGHT)
#define BASE_TILE_MAIL_SENTENCE_WINDOW_2 (BASE_TILE_MAIL_SENTENCE_WINDOW_1 - MAIL_SENTENCE_WINDOW_WIDTH * MAIL_SENTENCE_WINDOW_HEIGHT)
#define BASE_TILE_MAIL_SENTENCE_WINDOW_3 (BASE_TILE_MAIL_SENTENCE_WINDOW_2 - MAIL_SENTENCE_WINDOW_WIDTH * MAIL_SENTENCE_WINDOW_HEIGHT)
#define BASE_TILE_MAIL_CONFIRM_WINDOW    (BASE_TILE_MAIL_SENTENCE_WINDOW_3 - MAIL_CONFIRM_CANCEL_WINDOW_WIDTH * MAIL_CONFIRM_CANCEL_WINDOW_HEIGHT)
#define BASE_TILE_MAIL_CANCEL_WINDOW     (BASE_TILE_MAIL_CONFIRM_WINDOW - MAIL_CONFIRM_CANCEL_WINDOW_WIDTH * MAIL_CONFIRM_CANCEL_WINDOW_HEIGHT)
#define BASE_TILE_MAIL_MESSAGE_WINDOW    (BASE_TILE_MAIL_CANCEL_WINDOW - MAIL_CONFIRM_CANCEL_WINDOW_WIDTH * MAIL_CONFIRM_CANCEL_WINDOW_HEIGHT)
#define BASE_TILE_MAIL_YES_NO_MENU       (BASE_TILE_MAIL_MESSAGE_WINDOW - MESSAGE_WINDOW_TILE_COUNT)

enum MailViewerMode {
    MAIL_VIEWER_MODE_READ = 0,
    MAIL_VIEWER_MODE_WRITE,
    MAIL_VIEWER_MODE_CONFIRM_EMPTY,
    MAIL_VIEWER_MODE_CANCEL,
};

enum MailViewerState {
    MAIL_VIEWER_STATE_INIT = 0,
    MAIL_VIEWER_STATE_INIT_GRAPHICS,
    MAIL_VIEWER_STATE_FADE_IN,
    MAIL_VIEWER_STATE_MAIN,
    MAIL_VIEWER_STATE_FADE_OUT,
    MAIL_VIEWER_STATE_EXIT,
};

enum MailViewerWindow {
    MAIL_VIEWER_WINDOW_SENTENCE_1 = 0,
    MAIL_VIEWER_WINDOW_SENTENCE_2,
    MAIL_VIEWER_WINDOW_SENTENCE_3,
    MAIL_VIEWER_WINDOW_CONFIRM,
    MAIL_VIEWER_WINDOW_CANCEL,
    MAIL_VIEWER_WINDOW_MESSAGE,
    MAIL_VIEWER_WINDOW_COUNT,
};

enum VerticalSelectionIndex {
    SELECTION_INDEX_SENTENCE_1 = 0,
    SELECTION_INDEX_SENTENCE_2,
    SELECTION_INDEX_SENTENCE_3,
    SELECTION_INDEX_CONFIRM_CANCEL,
    VERTICAL_SELECTION_INDEX_COUNT,
};

typedef struct MailViewerApp {
    enum HeapID heapID;
    int state;
    u16 subState;
    u16 frame;
    u8 mode;
    u8 initialMode;
    u8 padding;
    u8 printerID;
    u8 textFrameDelay;
    u8 verticalSelectionIndex;
    u8 horizontalSelectionIndex;
    u8 pauseGlowEffect;
    u8 blendFraction;
    u8 blendDirection;
    u8 blendIndex;
    u8 prevBlendIndex;
    BgConfig *bgConfig;
    MailViewerAppArgs *args;
    MessageLoader *loader;
    void *dummy[1];
    u8 padding2[8];
    PaletteData *paletteData;
    void *backgroundNSCRBuffer;
    void *interfaceNSCRBuffer;
    NNSG2dScreenData *backgroundScreenData;
    NNSG2dScreenData *interfaceScreenData;
    Window windows[MAIL_VIEWER_WINDOW_COUNT];
    Menu *yesNoMenu;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    ManagedSprite *managedSprites[MAIL_MAX_ICONS];
} MailViewerApp;

typedef BOOL (*MailViewerModeFunc)(MailViewerApp *mailViewerApp);

static BOOL Main(MailViewerApp *mailViewerApp);
static BOOL MailViewer_InitGraphics(MailViewerApp *mailViewerApp);
static BOOL MailViewer_FreeResources(MailViewerApp *mailViewerApp);
static void MailViewer_VBlankCallback(void *data);
static void MailViewer_InitBackgrounds(MailViewerApp *mailViewerApp);
static void MailViewer_TeardownBgs(MailViewerApp *mailViewerApp);
static void MailViewer_DrawMail(MailViewerApp *mailViewerApp);
static void MailViewer_FreeAssets(MailViewerApp *mailViewerApp);
static void MailViewer_AddWindows(MailViewerApp *mailViewerApp);
static void MailViewer_RemoveWindows(MailViewerApp *mailViewerApp);
static void MailViewer_PrintText(MailViewerApp *mailViewerApp);
static void MailViewer_InitSprites(MailViewerApp *mailViewerApp);
static void MailViewer_FreeSprites(MailViewerApp *mailViewerApp);

int gDummy; // necessary for matching

BOOL MailViewer_Init(ApplicationManager *appMan, int *state)
{
    MailViewerApp *mailViewerApp = (MailViewerApp *)ApplicationManager_Data(appMan);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MAIL_VIEWER, HEAP_SIZE_MAIL_VIEWER);
    mailViewerApp = ApplicationManager_NewData(appMan, sizeof(MailViewerApp), HEAP_ID_MAIL_VIEWER);
    memset(mailViewerApp, 0, sizeof(MailViewerApp));

    mailViewerApp->heapID = HEAP_ID_MAIL_VIEWER;

    mailViewerApp->args = (MailViewerAppArgs *)ApplicationManager_Args(appMan);
    mailViewerApp->initialMode = mailViewerApp->mode = mailViewerApp->args->writeMode;
    mailViewerApp->verticalSelectionIndex = mailViewerApp->args->sentenceIndex;
    mailViewerApp->horizontalSelectionIndex = mailViewerApp->args->horizontalSelectionIndex;
    mailViewerApp->prevBlendIndex = mailViewerApp->blendIndex = mailViewerApp->verticalSelectionIndex;
    mailViewerApp->args->result = MAIL_VIEWER_RESULT_CANCEL;
    mailViewerApp->textFrameDelay = Options_TextFrameDelay(mailViewerApp->args->options);
    mailViewerApp->frame = Options_Frame(mailViewerApp->args->options);

    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    return TRUE;
}

BOOL MailViewer_Main(ApplicationManager *appMan, int *state)
{
    MailViewerApp *mailViewerApp = (MailViewerApp *)ApplicationManager_Data(appMan);

    return !!Main(mailViewerApp);
}

BOOL MailViewer_Exit(ApplicationManager *appMan, int *state)
{
    MailViewerApp *mailViewerApp = (MailViewerApp *)ApplicationManager_Data(appMan);

    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);

    int heapID = mailViewerApp->heapID;

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);

    return TRUE;
}

static BOOL MailViewer_AreSentencesEmpty(MailViewerApp *mailViewerApp)
{
    for (int i = 0; i < MAIL_MAX_SENTENCES; i++) {
        if (Sentence_IsValid(&mailViewerApp->args->sentences[i])) {
            return FALSE;
        }
    }

    return TRUE;
}

static BOOL MailViewer_HandleInput_Read(MailViewerApp *unused)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
        return TRUE;
    }

    return FALSE;
}

static BOOL MailViewer_HandleInput_Write(MailViewerApp *mailViewerApp)
{
    BOOL selectionChanged = FALSE;

    if (JOY_NEW(PAD_BUTTON_A)) {
        if (mailViewerApp->verticalSelectionIndex == SELECTION_INDEX_CONFIRM_CANCEL) {
            if (mailViewerApp->horizontalSelectionIndex == 0) {
                if (MailViewer_AreSentencesEmpty(mailViewerApp)) {
                    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    mailViewerApp->mode = MAIL_VIEWER_MODE_CONFIRM_EMPTY;
                    return FALSE;
                } else {
                    mailViewerApp->args->result = MAIL_VIEWER_RESULT_CONFIRM;
                    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
                }
            } else {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                mailViewerApp->mode = MAIL_VIEWER_MODE_CANCEL;
                return FALSE;
            }

            mailViewerApp->args->sentenceIndex = mailViewerApp->args->horizontalSelectionIndex = 0;
        } else {
            mailViewerApp->args->result = mailViewerApp->args->sentenceIndex = mailViewerApp->verticalSelectionIndex;
            mailViewerApp->args->horizontalSelectionIndex = mailViewerApp->horizontalSelectionIndex;
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }

        return TRUE;
    } else if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        mailViewerApp->mode = MAIL_VIEWER_MODE_CANCEL;
        return FALSE;
    }

    if (JOY_NEW(PAD_BUTTON_START)) {
        mailViewerApp->verticalSelectionIndex = SELECTION_INDEX_CONFIRM_CANCEL;
        mailViewerApp->horizontalSelectionIndex = 0;
        selectionChanged = TRUE;
    } else if (JOY_NEW(PAD_KEY_DOWN)) {
        mailViewerApp->verticalSelectionIndex = (mailViewerApp->verticalSelectionIndex + 1) % VERTICAL_SELECTION_INDEX_COUNT;
        selectionChanged = TRUE;
    } else if (JOY_NEW(PAD_KEY_UP)) {
        mailViewerApp->verticalSelectionIndex = (mailViewerApp->verticalSelectionIndex + VERTICAL_SELECTION_INDEX_COUNT - 1) % VERTICAL_SELECTION_INDEX_COUNT;
        selectionChanged = TRUE;
    } else if (JOY_NEW(PAD_KEY_RIGHT | PAD_KEY_LEFT)) {
        if (mailViewerApp->verticalSelectionIndex == SELECTION_INDEX_CONFIRM_CANCEL) {
            mailViewerApp->horizontalSelectionIndex ^= 1;
            selectionChanged = TRUE;
        }
    } else {
        return FALSE;
    }

    if (!selectionChanged) {
        return FALSE;
    }

    Sound_PlayEffect(SEQ_SE_CONFIRM);

    if (mailViewerApp->verticalSelectionIndex == SELECTION_INDEX_CONFIRM_CANCEL) {
        mailViewerApp->blendIndex = mailViewerApp->verticalSelectionIndex + mailViewerApp->horizontalSelectionIndex;
    } else {
        mailViewerApp->blendIndex = mailViewerApp->verticalSelectionIndex;
    }

    return FALSE;
}

static BOOL MailViewer_HandleConfirmEmpty(MailViewerApp *mailViewerApp)
{
    switch (mailViewerApp->subState) {
    case 0:
        Window_DrawMessageBoxWithScrollCursor(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE], TRUE, 1 + STANDARD_WINDOW_TILE_COUNT, 6);
        Window_FillTilemap(&(mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE]), PIXEL_FILL(15));

        String *string = String_Init(38 * 2, mailViewerApp->heapID);

        MessageLoader_GetString(mailViewerApp->loader, Mail_Text_EnterPhraseOrWord, string);
        Text_AddPrinterWithParamsAndColor(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE], FONT_MESSAGE, string, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
        String_Free(string);
        break;
    case 1:
        if (!JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            return FALSE;
        }

        Window_EraseMessageBox(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE], TRUE);
        Window_ClearAndCopyToVRAM(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE]);

        mailViewerApp->subState = 0;
        mailViewerApp->mode = mailViewerApp->initialMode;

        return FALSE;
    }

    mailViewerApp->subState++;
    return FALSE;
}

static void MailViewer_OpenYesNoMenu(MailViewerApp *mailViewerApp)
{
    static const WindowTemplate template = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 25,
        .tilemapTop = 13,
        .width = YES_NO_MENU_TILE_W,
        .height = YES_NO_MENU_TILE_H,
        .palette = 3,
        .baseTile = BASE_TILE_MAIL_YES_NO_MENU,
    };

    mailViewerApp->yesNoMenu = Menu_MakeYesNoChoice(mailViewerApp->bgConfig, &template, 1, 5, mailViewerApp->heapID);
}

static int MailViewer_CheckYesNoMenuInput(MailViewerApp *mailViewerApp)
{
    switch (Menu_ProcessInputAndHandleExit(mailViewerApp->yesNoMenu, mailViewerApp->heapID)) {
    case MENU_YES:
        return 1;
    case MENU_CANCEL:
        return 0;
    }

    return -1;
}

static BOOL MailViewer_HandleCancel(MailViewerApp *mailViewerApp)
{
    switch (mailViewerApp->subState) {
    case 0:
        mailViewerApp->pauseGlowEffect = TRUE;

        Window_DrawMessageBoxWithScrollCursor(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE], TRUE, 1 + STANDARD_WINDOW_TILE_COUNT, 6);
        Window_FillTilemap(&(mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE]), PIXEL_FILL(15));

        String *string = String_Init(38 * 2, mailViewerApp->heapID);
        MessageLoader_GetString(mailViewerApp->loader, Mail_Text_StopGivingMailPrompt, string);
        mailViewerApp->printerID = Text_AddPrinterWithParamsAndColor(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE], FONT_MESSAGE, string, 0, 0, mailViewerApp->textFrameDelay, TEXT_COLOR(1, 2, 15), NULL);

        String_Free(string);
        PaletteData_Blend(mailViewerApp->paletteData, PLTTBUF_MAIN_BG, MAIL_OPTION_PALETTE_SLOT_START + mailViewerApp->prevBlendIndex, 1, 0, COLOR_WHITE);

        mailViewerApp->prevBlendIndex = mailViewerApp->blendIndex;
        mailViewerApp->blendDirection = 0;
        mailViewerApp->blendFraction = 0;
        break;
    case 1:
        if (Text_IsPrinterActive(mailViewerApp->printerID)) {
            return FALSE;
        }

        MailViewer_OpenYesNoMenu(mailViewerApp);
        break;
    case 2:
        int result = MailViewer_CheckYesNoMenuInput(mailViewerApp);

        if (result < 0) {
            return FALSE;
        }

        Window_EraseMessageBox(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE], TRUE);
        Window_ClearAndCopyToVRAM(&(mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE]));
        mailViewerApp->subState = 0;

        if (result) {
            mailViewerApp->args->result = MAIL_VIEWER_RESULT_CANCEL;
            return TRUE;
        } else {
            mailViewerApp->mode = mailViewerApp->initialMode;
            mailViewerApp->pauseGlowEffect = FALSE;
            return FALSE;
        }
    }

    mailViewerApp->subState++;
    return FALSE;
}

static BOOL Main(MailViewerApp *mailViewerApp)
{
    switch (mailViewerApp->state) {
    case MAIL_VIEWER_STATE_INIT:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        break;
    case MAIL_VIEWER_STATE_INIT_GRAPHICS:
        if (!MailViewer_InitGraphics(mailViewerApp)) {
            return FALSE;
        }

        SetVBlankCallback(MailViewer_VBlankCallback, mailViewerApp);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
        ResetScreenMasterBrightness(DS_SCREEN_MAIN);

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 28, 4);

        PaletteData_StartFade(mailViewerApp->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xFFFF, -1, 16, 0, 0x0);
        break;
    case MAIL_VIEWER_STATE_FADE_IN:
        if (mailViewerApp->spriteMan != NULL) {
            SpriteSystem_DrawSprites(mailViewerApp->spriteMan);
        }

        if (PaletteData_GetSelectedBuffersMask(mailViewerApp->paletteData)) {
            return FALSE;
        }
        break;
    case MAIL_VIEWER_STATE_MAIN:
        static const MailViewerModeFunc funcs[] = {
            [MAIL_VIEWER_MODE_READ] = MailViewer_HandleInput_Read,
            [MAIL_VIEWER_MODE_WRITE] = MailViewer_HandleInput_Write,
            [MAIL_VIEWER_MODE_CONFIRM_EMPTY] = MailViewer_HandleConfirmEmpty,
            [MAIL_VIEWER_MODE_CANCEL] = MailViewer_HandleCancel,
        };

        if (mailViewerApp->spriteMan != NULL) {
            SpriteSystem_DrawSprites(mailViewerApp->spriteMan);
        }

        if (!funcs[mailViewerApp->mode](mailViewerApp)) {
            return FALSE;
        }

        PaletteData_StartFade(mailViewerApp->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xFFFF, -1, 0, 16, 0x0);
        break;
    case MAIL_VIEWER_STATE_FADE_OUT:
        if (PaletteData_GetSelectedBuffersMask(mailViewerApp->paletteData)) {
            if (mailViewerApp->spriteMan != NULL) {
                SpriteSystem_DrawSprites(mailViewerApp->spriteMan);
            }

            return FALSE;
        }

        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        SetVBlankCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        break;
    case MAIL_VIEWER_STATE_EXIT:
        if (MailViewer_FreeResources(mailViewerApp)) {
            return TRUE;
        }

        return FALSE;
    }

    mailViewerApp->state++;
    return FALSE;
}

static void MailViewer_VBlankCallback(void *data)
{
    MailViewerApp *mailViewerApp = (MailViewerApp *)data;

    if (mailViewerApp->paletteData != NULL) {
        PaletteData_CommitFadedBuffers(mailViewerApp->paletteData);
    }

    if (mailViewerApp->spriteSys != NULL) {
        SpriteSystem_TransferOam();
    }

    NNS_GfdDoVramTransfer();
    Bg_RunScheduledUpdates(mailViewerApp->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void MailViewer_SelectedGlowEffectTask(SysTask *sysTask, void *data)
{
    MailViewerApp *mailViewerApp = (MailViewerApp *)data;

    if (mailViewerApp->paletteData == NULL) {
        SysTask_Done(sysTask);
        return;
    }

    if (mailViewerApp->pauseGlowEffect) {
        return;
    }

    if (mailViewerApp->prevBlendIndex != mailViewerApp->blendIndex) {
        PaletteData_Blend(mailViewerApp->paletteData, PLTTBUF_MAIN_BG, MAIL_OPTION_PALETTE_SLOT_START + mailViewerApp->prevBlendIndex, 1, 0, COLOR_WHITE);
        mailViewerApp->prevBlendIndex = mailViewerApp->blendIndex;
        mailViewerApp->blendDirection = 0;
        mailViewerApp->blendFraction = 0;
    }

    PaletteData_Blend(mailViewerApp->paletteData, PLTTBUF_MAIN_BG, MAIL_OPTION_PALETTE_SLOT_START + mailViewerApp->blendIndex, 1, mailViewerApp->blendFraction, COLOR_WHITE);

    if (mailViewerApp->blendDirection) {
        if (mailViewerApp->blendFraction-- == 1) {
            mailViewerApp->blendDirection ^= 1;
        }
    } else {
        if (mailViewerApp->blendFraction++ == 12) {
            mailViewerApp->blendDirection ^= 1;
        }
    }
}

static BOOL MailViewer_InitGraphics(MailViewerApp *mailViewerApp)
{
    switch (mailViewerApp->subState) {
    case 0:
        MailViewer_InitBackgrounds(mailViewerApp);
        break;
    case 1:
        MailViewer_DrawMail(mailViewerApp);
        break;
    case 2:
        MailViewer_AddWindows(mailViewerApp);
        MailViewer_PrintText(mailViewerApp);
        break;
    case 3:
        MailViewer_InitSprites(mailViewerApp);
        mailViewerApp->subState = 0;
        return TRUE;
    }

    mailViewerApp->subState++;
    return FALSE;
}

static BOOL MailViewer_FreeResources(MailViewerApp *mailViewerApp)
{
    MailViewer_FreeSprites(mailViewerApp);

    // bug: dummy is never initialized
    // heap is destroyed soon after this so memory shouldn't leak
    if (mailViewerApp->dummy != NULL) {
        MessageLoader_Free(mailViewerApp->loader);
    }

    MailViewer_RemoveWindows(mailViewerApp);
    MailViewer_FreeAssets(mailViewerApp);
    MailViewer_TeardownBgs(mailViewerApp);

    return TRUE;
}

static void MailViewer_SetVRAMBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&banks);
}

static void MailViewer_InitBackgrounds(MailViewerApp *mailViewerApp)
{
    MailViewer_SetVRAMBanks();

    mailViewerApp->bgConfig = BgConfig_New(mailViewerApp->heapID);

    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplates[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(mailViewerApp->bgConfig, BG_LAYER_MAIN_0, &bgTemplates[0], BG_TYPE_STATIC);
    Bg_InitFromTemplate(mailViewerApp->bgConfig, BG_LAYER_MAIN_1, &bgTemplates[1], BG_TYPE_STATIC);
    Bg_InitFromTemplate(mailViewerApp->bgConfig, BG_LAYER_MAIN_2, &bgTemplates[2], BG_TYPE_STATIC);
    Bg_InitFromTemplate(mailViewerApp->bgConfig, BG_LAYER_MAIN_3, &bgTemplates[3], BG_TYPE_STATIC);
    Bg_InitFromTemplate(mailViewerApp->bgConfig, BG_LAYER_SUB_0, &bgTemplates[4], BG_TYPE_STATIC);

    Bg_ClearTilemap(mailViewerApp->bgConfig, BG_LAYER_MAIN_0);
    Bg_ClearTilemap(mailViewerApp->bgConfig, BG_LAYER_MAIN_1);
    Bg_ClearTilemap(mailViewerApp->bgConfig, BG_LAYER_MAIN_2);
    Bg_ClearTilemap(mailViewerApp->bgConfig, BG_LAYER_MAIN_3);
    Bg_ClearTilemap(mailViewerApp->bgConfig, BG_LAYER_SUB_0);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, TILE_SIZE_4BPP, 0, mailViewerApp->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, TILE_SIZE_4BPP, 0, mailViewerApp->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, TILE_SIZE_4BPP, 0, mailViewerApp->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, TILE_SIZE_4BPP, 0, mailViewerApp->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, TILE_SIZE_4BPP, 0, mailViewerApp->heapID);
}

static void MailViewer_TeardownBgs(MailViewerApp *mailViewerApp)
{
    Bg_FreeTilemapBuffer(mailViewerApp->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(mailViewerApp->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(mailViewerApp->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(mailViewerApp->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(mailViewerApp->bgConfig, BG_LAYER_MAIN_0);
    Heap_Free(mailViewerApp->bgConfig);
}

static void MailViewer_DrawMail(MailViewerApp *mailViewerApp)
{
    NNSG2dCharacterData *charData;
    NNSG2dPaletteData *plttData;
    int tilesNarcIndex = grass_mail_tiles_NCGR + mailViewerApp->args->mailType;
    int screenDataNarcIndex = grass_mail_NSCR + mailViewerApp->args->mailType;
    int plttNarcIndex = grass_mail_tiles_NCLR + mailViewerApp->args->mailType;
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__MAIL_GRA, mailViewerApp->heapID);

    LoadStandardWindowGraphics(mailViewerApp->bgConfig, BG_LAYER_MAIN_0, 1, 5, STANDARD_WINDOW_SYSTEM, mailViewerApp->heapID);
    LoadMessageBoxGraphics(mailViewerApp->bgConfig, BG_LAYER_MAIN_0, 1 + STANDARD_WINDOW_TILE_COUNT, 6, mailViewerApp->frame, mailViewerApp->heapID);

    u32 size = NARC_GetMemberSize(narc, tilesNarcIndex);
    void *narcMemberBuffer = Heap_AllocAtEnd(mailViewerApp->heapID, size);
    NARC_ReadWholeMember(narc, tilesNarcIndex, (void *)narcMemberBuffer);

    NNS_G2dGetUnpackedCharacterData(narcMemberBuffer, &charData);
    Bg_LoadTiles(mailViewerApp->bgConfig, BG_LAYER_MAIN_1, charData->pRawData, charData->szByte, 0);
    Bg_LoadTiles(mailViewerApp->bgConfig, BG_LAYER_SUB_0, charData->pRawData, charData->szByte, 0);
    Heap_Free(narcMemberBuffer);

    size = NARC_GetMemberSize(narc, plttNarcIndex);
    narcMemberBuffer = Heap_AllocAtEnd(mailViewerApp->heapID, size);
    NARC_ReadWholeMember(narc, plttNarcIndex, (void *)narcMemberBuffer);

    NNS_G2dGetUnpackedPaletteData(narcMemberBuffer, &plttData);
    Bg_LoadPalette(BG_LAYER_SUB_0, plttData->pRawData, plttData->szByte, 0);

    mailViewerApp->paletteData = PaletteData_New(mailViewerApp->heapID);

    PaletteData_AllocBuffer(mailViewerApp->paletteData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * 7, mailViewerApp->heapID);
    PaletteData_AllocBuffer(mailViewerApp->paletteData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * 3, mailViewerApp->heapID);
    PaletteData_LoadBuffer(mailViewerApp->paletteData, plttData->pRawData, PLTTBUF_MAIN_BG, 0, PALETTE_SIZE_BYTES * 3);

    if (mailViewerApp->mode == MAIL_VIEWER_MODE_WRITE) {
        PaletteData_LoadBuffer(mailViewerApp->paletteData, &((u16 *)plttData->pRawData)[PLTT_OFFSET(3) / sizeof(u16)], PLTTBUF_MAIN_BG, PLTT_OFFSET(1) / sizeof(u16), PALETTE_SIZE_BYTES);
    }

    PaletteData_LoadBufferFromFileStart(mailViewerApp->paletteData, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, shared_pals_NCLR, mailViewerApp->heapID, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * 3, 0);
    PaletteData_LoadBufferFromFileStart(mailViewerApp->paletteData, NARC_INDEX_GRAPHIC__PL_FONT, font_NCLR, mailViewerApp->heapID, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, (PALETTE_SIZE_BYTES / sizeof(u16)) * 3);
    PaletteData_LoadBufferFromFileStart(mailViewerApp->paletteData, NARC_INDEX_GRAPHIC__PL_FONT, screen_indicators_NCLR, mailViewerApp->heapID, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, (PALETTE_SIZE_BYTES / sizeof(u16)) * 4);
    PaletteData_LoadBufferFromFileStart(mailViewerApp->paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, standard_system_NCLR, mailViewerApp->heapID, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, (PALETTE_SIZE_BYTES / sizeof(u16)) * 5);
    PaletteData_LoadBufferFromFileStart(mailViewerApp->paletteData, NARC_INDEX_GRAPHIC__PL_WINFRAME, message_box_00_NCLR + mailViewerApp->frame, mailViewerApp->heapID, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, (PALETTE_SIZE_BYTES / sizeof(u16)) * 6);
    PaletteData_Blend(mailViewerApp->paletteData, PLTTBUF_MAIN_BG, 0, (PALETTE_SIZE_BYTES / sizeof(u16)) * 7, 16, COLOR_BLACK);
    PaletteData_Blend(mailViewerApp->paletteData, PLTTBUF_MAIN_OBJ, 0, (PALETTE_SIZE_BYTES / sizeof(u16)) * 3, 16, COLOR_BLACK);
    PaletteData_SetAutoTransparent(mailViewerApp->paletteData, TRUE);
    PaletteData_CommitFadedBuffers(mailViewerApp->paletteData);
    Heap_Free(narcMemberBuffer);

    size = NARC_GetMemberSize(narc, screenDataNarcIndex);
    mailViewerApp->backgroundNSCRBuffer = Heap_Alloc(mailViewerApp->heapID, size);
    NARC_ReadWholeMember(narc, screenDataNarcIndex, (void *)mailViewerApp->backgroundNSCRBuffer);
    NNS_G2dGetUnpackedScreenData(mailViewerApp->backgroundNSCRBuffer, &mailViewerApp->backgroundScreenData);

    size = NARC_GetMemberSize(narc, interface_NSCR);
    mailViewerApp->interfaceNSCRBuffer = Heap_Alloc(mailViewerApp->heapID, size);
    NARC_ReadWholeMember(narc, interface_NSCR, (void *)mailViewerApp->interfaceNSCRBuffer);
    NNS_G2dGetUnpackedScreenData(mailViewerApp->interfaceNSCRBuffer, &mailViewerApp->interfaceScreenData);

    NARC_dtor(narc);
    Bg_FillTilemapRect(mailViewerApp->bgConfig, BG_LAYER_SUB_0, TILEMAP_PALETTE_SHIFT(2) | 1, 0, 0, SCREEN_WIDTH_TILES, 32, TILEMAP_FILL_VAL_INCLUDES_PALETTE);
    Bg_CopyToTilemapRect(mailViewerApp->bgConfig, BG_LAYER_MAIN_3, 0, 0, SCREEN_WIDTH_TILES, SCREEN_HEIGHT_TILES, mailViewerApp->backgroundScreenData->rawData, 0, 0, mailViewerApp->backgroundScreenData->screenWidth / TILE_WIDTH_PIXELS, mailViewerApp->backgroundScreenData->screenHeight / TILE_HEIGHT_PIXELS);
    Bg_ScheduleTilemapTransfer(mailViewerApp->bgConfig, BG_LAYER_MAIN_3);
    Bg_ScheduleTilemapTransfer(mailViewerApp->bgConfig, BG_LAYER_SUB_0);

    if (mailViewerApp->mode == MAIL_VIEWER_MODE_WRITE) {
        Bg_CopyToTilemapRect(mailViewerApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, SCREEN_WIDTH_TILES, SCREEN_HEIGHT_TILES, mailViewerApp->interfaceScreenData->rawData, 0, 0, mailViewerApp->interfaceScreenData->screenWidth / TILE_WIDTH_PIXELS, mailViewerApp->interfaceScreenData->screenHeight / TILE_HEIGHT_PIXELS);
        Bg_ScheduleTilemapTransfer(mailViewerApp->bgConfig, BG_LAYER_MAIN_2);

        mailViewerApp->blendFraction = 0;
        mailViewerApp->blendDirection = 0;

        SysTask_Start(MailViewer_SelectedGlowEffectTask, mailViewerApp, 0);
    }
}

static void MailViewer_FreeAssets(MailViewerApp *mailViewerApp)
{
    Heap_Free(mailViewerApp->interfaceNSCRBuffer);
    Heap_Free(mailViewerApp->backgroundNSCRBuffer);
    PaletteData_FreeBuffer(mailViewerApp->paletteData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(mailViewerApp->paletteData, PLTTBUF_MAIN_BG);
    PaletteData_Free(mailViewerApp->paletteData);

    mailViewerApp->paletteData = NULL;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_NONE, 31, 0);
}

static void MailViewer_AddWindows(MailViewerApp *mailViewerApp)
{
    Window_Add(mailViewerApp->bgConfig, &mailViewerApp->windows[MAIL_VIEWER_WINDOW_SENTENCE_1], BG_LAYER_MAIN_1, 3, 3, MAIL_SENTENCE_WINDOW_WIDTH, MAIL_SENTENCE_WINDOW_HEIGHT, 1, BASE_TILE_MAIL_SENTENCE_WINDOW_1);
    Window_Add(mailViewerApp->bgConfig, &mailViewerApp->windows[MAIL_VIEWER_WINDOW_SENTENCE_2], BG_LAYER_MAIN_1, 3, 3 + MAIL_SENTENCE_WINDOW_HEIGHT + 1, MAIL_SENTENCE_WINDOW_WIDTH, MAIL_SENTENCE_WINDOW_HEIGHT, 1, BASE_TILE_MAIL_SENTENCE_WINDOW_2);
    Window_Add(mailViewerApp->bgConfig, &mailViewerApp->windows[MAIL_VIEWER_WINDOW_SENTENCE_3], BG_LAYER_MAIN_1, 3, 3 + (MAIL_SENTENCE_WINDOW_HEIGHT + 1) * 2, MAIL_SENTENCE_WINDOW_WIDTH, MAIL_SENTENCE_WINDOW_HEIGHT, 1, BASE_TILE_MAIL_SENTENCE_WINDOW_3);
    Window_Add(mailViewerApp->bgConfig, &mailViewerApp->windows[MAIL_VIEWER_WINDOW_CONFIRM], BG_LAYER_MAIN_1, 21, 20, MAIL_CONFIRM_CANCEL_WINDOW_WIDTH, MAIL_CONFIRM_CANCEL_WINDOW_HEIGHT, 1, BASE_TILE_MAIL_CONFIRM_WINDOW);
    Window_Add(mailViewerApp->bgConfig, &mailViewerApp->windows[MAIL_VIEWER_WINDOW_CANCEL], BG_LAYER_MAIN_1, 3, 20, MAIL_CONFIRM_CANCEL_WINDOW_WIDTH, MAIL_CONFIRM_CANCEL_WINDOW_HEIGHT, 1, BASE_TILE_MAIL_CANCEL_WINDOW);
    Window_Add(mailViewerApp->bgConfig, &mailViewerApp->windows[MAIL_VIEWER_WINDOW_MESSAGE], BG_LAYER_MAIN_0, 2, 19, MESSAGE_WINDOW_TILE_W, MESSAGE_WINDOW_TILE_H, 4, BASE_TILE_MAIL_MESSAGE_WINDOW);

    for (int i = 0; i < MAIL_VIEWER_WINDOW_COUNT; i++) {
        Window_FillTilemap(&(mailViewerApp->windows[i]), 0);

        if (i < MAIL_VIEWER_WINDOW_MESSAGE) {
            Window_CopyToVRAM(&mailViewerApp->windows[i]);
        }
    }
}

static void MailViewer_RemoveWindows(MailViewerApp *mailViewerApp)
{
    for (int i = 0; i < MAIL_VIEWER_WINDOW_COUNT; i++) {
        Window_ClearAndCopyToVRAM(&mailViewerApp->windows[i]);
        Window_Remove(&mailViewerApp->windows[i]);
    }
}

static void MailViewer_PrintText(MailViewerApp *mailViewerApp)
{
    for (int i = 0; i < MAIL_MAX_SENTENCES; i++) {
        if (!Sentence_IsValid(&mailViewerApp->args->sentences[i])) {
            continue;
        }

        String *sentenceStr = Sentence_AsString(&mailViewerApp->args->sentences[i], mailViewerApp->heapID);

        Text_AddPrinterWithParamsAndColor(&mailViewerApp->windows[i], FONT_MESSAGE, sentenceStr, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        String_Free(sentenceStr);
        Window_CopyToVRAM(&mailViewerApp->windows[i]);
    }

    if (mailViewerApp->mode == MAIL_VIEWER_MODE_WRITE) {
        mailViewerApp->loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MAIL, mailViewerApp->heapID);

        String *string = String_Init(8 * 2, mailViewerApp->heapID);

        for (int i = 0; i < 2; i++) {
            String_Clear(string);
            MessageLoader_GetString(mailViewerApp->loader, Mail_Text_Confirm + i, string);

            int xOffset = 8 * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_MESSAGE, string, 0);
            xOffset /= 2;

            Text_AddPrinterWithParamsAndColor(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_CONFIRM + i], FONT_MESSAGE, string, xOffset, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
            Window_CopyToVRAM(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_CONFIRM + i]);
        }

        String_Free(string);
    } else {
        Text_AddPrinterWithParamsAndColor(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_CONFIRM], FONT_MESSAGE, mailViewerApp->args->trainerName, 0, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        Window_CopyToVRAM(&mailViewerApp->windows[MAIL_VIEWER_WINDOW_CONFIRM]);
    }
}

static void MailViewer_InitSprites(MailViewerApp *mailViewerApp)
{
    SpriteTemplate spriteTemplate;

    NetworkIcon_InitIfConnected();

    if (mailViewerApp->mode == MAIL_VIEWER_MODE_WRITE) {
        return;
    }

    VramTransfer_New(32, mailViewerApp->heapID);

    mailViewerApp->spriteSys = SpriteSystem_Alloc(mailViewerApp->heapID);
    mailViewerApp->spriteMan = SpriteManager_New(mailViewerApp->spriteSys);

    RenderOamTemplate oamTemplate = {
        .mainOamStart = 0,
        .mainOamCount = 7,
        .mainAffineOamStart = 1,
        .mainAffineOamCount = 1,
        .subOamStart = 0,
        .subOamCount = 1,
        .subAffineOamStart = 1,
        .subAffineOamCount = 1,
    };

    CharTransferTemplateWithModes transferTemplate = {
        .maxTasks = 3,
        .sizeMain = 1024,
        .sizeSub = 0,
        .modeMain = GX_OBJVRAMMODE_CHAR_1D_32K,
        .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K,
    };

    const SpriteResourceCapacities capacities = {
        .asStruct = {
            .charCapacity = 3,
            .plttCapacity = 1,
            .cellCapacity = 1,
            .animCapacity = 1,
            .mcellCapacity = 0,
            .manimCapacity = 0,
        }
    };

    SpriteSystem_Init(mailViewerApp->spriteSys, &oamTemplate, &transferTemplate, 32);
    SpriteSystem_InitSprites(mailViewerApp->spriteSys, mailViewerApp->spriteMan, 3);
    SpriteSystem_InitManagerWithCapacities(mailViewerApp->spriteSys, mailViewerApp->spriteMan, &capacities);
    RenderOam_ClearMain(mailViewerApp->heapID);

    SpriteSystem_LoadPlttResObj(mailViewerApp->spriteSys, mailViewerApp->spriteMan, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 0);
    SpriteSystem_LoadCellResObj(mailViewerApp->spriteSys, mailViewerApp->spriteMan, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconCellsFileIndex(), FALSE, 0);
    SpriteSystem_LoadAnimResObj(mailViewerApp->spriteSys, mailViewerApp->spriteMan, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconAnimationFileIndex(), FALSE, 0);

    for (int i = 0; i < MAIL_MAX_ICONS; i++) {
        if (mailViewerApp->args->iconData[i].asValue == MAIL_MON_ICON_NONE) {
            break;
        }

        SpriteSystem_LoadCharResObjWithHardwareMappingType(mailViewerApp->spriteSys, mailViewerApp->spriteMan, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, mailViewerApp->args->iconData[i].asStruct.spriteIndex, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, i);
        MI_CpuClear8(&spriteTemplate, sizeof(SpriteTemplate));

        spriteTemplate.x = 128 - 40 * i;
        spriteTemplate.y = 160;
        spriteTemplate.z = 0;

        spriteTemplate.animIdx = 0;
        spriteTemplate.bgPriority = 2;
        spriteTemplate.plttIdx = mailViewerApp->args->iconData[i].asStruct.palIndex;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;

        spriteTemplate.resources[SPRITE_RESOURCE_CHAR] = i;
        spriteTemplate.resources[SPRITE_RESOURCE_PLTT] = 0;
        spriteTemplate.resources[SPRITE_RESOURCE_CELL] = 0;
        spriteTemplate.resources[SPRITE_RESOURCE_ANIM] = 0;
        spriteTemplate.resources[SPRITE_RESOURCE_MULTI_CELL] = SPRITE_RESOURCE_NONE;
        spriteTemplate.resources[SPRITE_RESOURCE_MULTI_ANIM] = SPRITE_RESOURCE_NONE;

        mailViewerApp->managedSprites[i] = SpriteSystem_NewSprite(mailViewerApp->spriteSys, mailViewerApp->spriteMan, &spriteTemplate);

        if (mailViewerApp->args->iconData[i].asStruct.spriteIndex == icon_00000_NCGR) {
            ManagedSprite_SetDrawFlag(mailViewerApp->managedSprites[i], FALSE);
        }
    }
}

static void MailViewer_FreeSprites(MailViewerApp *mailViewerApp)
{
    if (mailViewerApp->mode == MAIL_VIEWER_MODE_READ) {
        for (int i = 0; i < MAIL_MAX_ICONS; i++) {
            if (mailViewerApp->managedSprites[i] != NULL) {
                Sprite_DeleteAndFreeResources(mailViewerApp->managedSprites[i]);
            }
        }

        SpriteSystem_FreeResourcesAndManager(mailViewerApp->spriteSys, mailViewerApp->spriteMan);
        SpriteSystem_Free(mailViewerApp->spriteSys);
        VramTransfer_Free();
    }
}
