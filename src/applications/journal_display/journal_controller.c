#include "applications/journal_display/journal_controller.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "consts/gender.h"
#include "generated/sdat.h"

#include "struct_defs/struct_02099F80.h"

#include "applications/journal_display/journal_printer.h"
#include "text/pl_msg.naix"

#include "bg_window.h"
#include "core_sys.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"

static void JournalController_MainCallback(void *data);
static void JournalController_SetVRAMBanks(void);
static void JournalController_SetupBgs(BgConfig *bgConfig);
static void JournalController_TeardownBgs(BgConfig *bgConfig);
static void JournalController_LoadGraphics(JournalManager *journalManager);
static void JournalController_InitStringUtil(JournalManager *journalManager);
static void JournalController_FreeStringUtil(JournalManager *journalManager);
static int JournalController_IsOpeningTransitionDone(JournalManager *journalManager);
static int JournalController_HandleInput(JournalManager *journalManager);
static int JournalController_TurnPageLeft(JournalManager *journalManager);
static int JournalController_TurnPageRight(JournalManager *journalManager);
static int JournalController_IsClosingTransitionDone(JournalManager *journalManager);
static u8 JournalController_NewDirectionPageExists(JournalManager *journalManager, s8 pageChance);
static void ov81_021D1360(JournalManager *journalManager);
static void JournalController_LoadNewPagePalette(JournalManager *journalManager, u8 bgLayer, u8 palette);
static void ov81_021D1434(JournalManager *journalManager);
static u8 ov81_021D14E0(JournalManager *journalManager);
static u8 ov81_021D156C(JournalManager *journalManager);

static const u8 Unk_ov81_021D33E8[9][32] = {
    { 0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F },
    { 0x0, 0x1, 0x2, 0x3, 0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x0, 0x1, 0x2, 0x3, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x0, 0x1, 0x2, 0x3, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x1C, 0x1D, 0x1E, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x0, 0x1, 0x2, 0x3, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x0, 0x1, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x1C, 0x1D, 0x1E, 0x1F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF }
};

int JournalController_Init(OverlayManager *ovyManager, int *state)
{
    JournalManager *journalManager;
    SaveData *saveData;

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    SetAutorepeat(4, 8);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_JOURNAL, 0x20000);

    saveData = OverlayManager_Args(ovyManager);
    journalManager = OverlayManager_NewData(ovyManager, sizeof(JournalManager), HEAP_ID_JOURNAL);
    memset(journalManager, 0, sizeof(JournalManager));
    journalManager->bgConfig = BgConfig_New(HEAP_ID_JOURNAL);

    journalManager->saveData = saveData;
    journalManager->journalEntry = SaveData_GetJournal(saveData);
    journalManager->trainerInfo = SaveData_GetTrainerInfo(saveData);

    sub_0208C120(0, HEAP_ID_JOURNAL);
    Font_UseImmediateGlyphAccess(FONT_SYSTEM, HEAP_ID_JOURNAL);

    JournalController_SetVRAMBanks();
    JournalController_SetupBgs(journalManager->bgConfig);
    JournalController_LoadGraphics(journalManager);
    JournalController_InitStringUtil(journalManager);
    JournalPrinter_AddWindows(journalManager);
    JournalPrinter_PrintEntry(journalManager, 0);
    ov81_021D1434(journalManager);

    SetMainCallback(JournalController_MainCallback, journalManager);
    GXLayers_TurnBothDispOn();
    sub_02039734();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02004550(67, 0, 0);

    return TRUE;
}

int JournalController_Main(OverlayManager *ovyManager, int *state)
{
    JournalManager *journalManager = OverlayManager_Data(ovyManager);

    switch (*state) {
    case JOURNAL_STATE_OPEN:
        *state = JournalController_IsOpeningTransitionDone(journalManager);
        break;
    case JOURNAL_STATE_HANDLE_INPUT:
        *state = JournalController_HandleInput(journalManager);
        break;
    case JOURNAL_STATE_TURN_LEFT:
        *state = JournalController_TurnPageLeft(journalManager);
        break;
    case JOURNAL_STATE_TURN_RIGHT:
        *state = JournalController_TurnPageRight(journalManager);
        break;
    case JOURNAL_STATE_CLOSE:
        if (JournalController_IsClosingTransitionDone(journalManager) == 1) {
            return TRUE;
        }
    }

    return FALSE;
}

int JournalController_Exit(OverlayManager *ovyManager, int *state)
{
    JournalManager *journalManager = OverlayManager_Data(ovyManager);

    SetMainCallback(NULL, NULL);

    JournalPrinter_RemoveWindows(journalManager);
    JournalController_TeardownBgs(journalManager->bgConfig);
    JournalController_FreeStringUtil(journalManager);

    Font_UseLazyGlyphAccess(FONT_SYSTEM);
    OverlayManager_FreeData(ovyManager);
    Heap_Destroy(HEAP_ID_JOURNAL);

    return TRUE;
}

static void JournalController_MainCallback(void *data)
{
    JournalManager *journalManager = data;

    Bg_RunScheduledUpdates(journalManager->bgConfig);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void JournalController_SetVRAMBanks(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_256_AB,
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

    GXLayers_SetBanks(&v0);
}

static void JournalController_SetupBgs(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplate1 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &bgTemplate1, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate bgTemplate2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x20000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplate2, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate bgTemplate3 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplate3, BG_TYPE_STATIC);

    BgTemplate bgTemplate4 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        3,
        0,
        0,
        0
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplate4, BG_TYPE_STATIC);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_JOURNAL);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_JOURNAL);
}

static void JournalController_TeardownBgs(BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Heap_FreeToHeapExplicit(HEAP_ID_JOURNAL, bgConfig);
}

static void JournalController_LoadGraphics(JournalManager *journalManager)
{
    u16 *tilemapBuffer;
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__F_NOTE_GRA, HEAP_ID_JOURNAL);

    if (TrainerInfo_Gender(journalManager->trainerInfo) == GENDER_MALE) {
        Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, journalManager->bgConfig, 2, 0, 0, 0, HEAP_ID_JOURNAL);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 0, journalManager->bgConfig, 2, 0, 0, 0, HEAP_ID_JOURNAL);
        Graphics_LoadPaletteFromOpenNARC(narc, 4, 0, 0, 0, HEAP_ID_JOURNAL);
    } else {
        Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 3, journalManager->bgConfig, 2, 0, 0, 0, HEAP_ID_JOURNAL);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 1, journalManager->bgConfig, 2, 0, 0, 0, HEAP_ID_JOURNAL);
        Graphics_LoadPaletteFromOpenNARC(narc, 5, 0, 0, 0, HEAP_ID_JOURNAL);
    }

    NARC_dtor(narc);

    tilemapBuffer = Bg_GetTilemapBuffer(journalManager->bgConfig, 2);
    MI_CpuCopy16(tilemapBuffer, journalManager->tilemapBuffer_5C, 0x800);
    Bg_LoadTilemapBuffer(journalManager->bgConfig, 3, journalManager->tilemapBuffer_5C, 0x800);

    Font_LoadTextPalette(0, 15 * 32, HEAP_ID_JOURNAL);
    Bg_MaskPalette(4, 0);
}

static void JournalController_InitStringUtil(JournalManager *journalManager)
{
    journalManager->loader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, message_bank_journal_entries, HEAP_ID_JOURNAL);
    journalManager->template = StringTemplate_Default(HEAP_ID_JOURNAL);
    journalManager->strbuf = Strbuf_Init(128, HEAP_ID_JOURNAL);
}

static void JournalController_FreeStringUtil(JournalManager *journalManager)
{
    MessageLoader_Free(journalManager->loader);
    StringTemplate_Free(journalManager->template);
    Strbuf_Free(journalManager->strbuf);
}

static int JournalController_IsOpeningTransitionDone(JournalManager *journalManager)
{
    if (IsScreenTransitionDone() == TRUE) {
        return JOURNAL_STATE_HANDLE_INPUT;
    }

    return JOURNAL_STATE_OPEN;
}

static int JournalController_HandleInput(JournalManager *journalManager)
{
    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (JournalController_NewDirectionPageExists(journalManager, -1) == TRUE) {
            return JOURNAL_STATE_TURN_LEFT;
        }

        return JOURNAL_STATE_HANDLE_INPUT;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_KEY_RIGHT)) {
        if (JournalController_NewDirectionPageExists(journalManager, 1) == TRUE) {
            return JOURNAL_STATE_TURN_RIGHT;
        }

        return JOURNAL_STATE_HANDLE_INPUT;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        if (journalManager->page != 0) {
            if (JournalController_NewDirectionPageExists(journalManager, -1) == TRUE) {
                return JOURNAL_STATE_TURN_LEFT;
            }
        } else {
            sub_0208C120(1, HEAP_ID_JOURNAL);
            return JOURNAL_STATE_CLOSE;
        }
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_START) {
        sub_0208C120(1, HEAP_ID_JOURNAL);
        return JOURNAL_STATE_CLOSE;
    }

    return JOURNAL_STATE_HANDLE_INPUT;
}

static int JournalController_TurnPageLeft(JournalManager *journalManager)
{
    switch (journalManager->state) {
    case 0:
        ov81_021D1360(journalManager);
        JournalController_LoadNewPagePalette(journalManager, journalManager->bgLayer3, journalManager->page - 1);
        journalManager->page--;
        JournalPrinter_PrintEntry(journalManager, journalManager->unk_1060 ^ 1);
        journalManager->state = 1;
        Sound_PlayEffect(SEQ_SE_DP_MEKURU3);
        break;
    case 1:
        if (ov81_021D14E0(journalManager) == TRUE) {
            journalManager->unk_105F = 0;
            journalManager->state = 0;
            journalManager->unk_1060 ^= 1;

            Bg_LoadToTilemapRect(journalManager->bgConfig, journalManager->bgLayer2, journalManager->tilemapBuffer_85C, 0, 0, 32, 32);
            Bg_LoadToTilemapRect(journalManager->bgConfig, journalManager->bgLayer1, journalManager->tilemapBuffer_5C, 0, 0, 32, 32);
            Bg_ScheduleTilemapTransfer(journalManager->bgConfig, journalManager->bgLayer2);
            Bg_ScheduleTilemapTransfer(journalManager->bgConfig, journalManager->bgLayer1);

            return JOURNAL_STATE_HANDLE_INPUT;
        }
    }

    return JOURNAL_STATE_TURN_LEFT;
}

static int JournalController_TurnPageRight(JournalManager *journalManager)
{
    switch (journalManager->state) {
    case 0:
        ov81_021D1360(journalManager);
        journalManager->page++;
        JournalPrinter_PrintEntry(journalManager, journalManager->unk_1060 ^ 1);
        journalManager->state = 1;
        Sound_PlayEffect(SEQ_SE_DP_MEKURU3);
        break;
    case 1:
        if (ov81_021D156C(journalManager) == TRUE) {
            journalManager->unk_105F = 0;
            journalManager->state = 0;
            journalManager->unk_1060 ^= 1;

            return JOURNAL_STATE_HANDLE_INPUT;
        }
    }

    return JOURNAL_STATE_TURN_RIGHT;
}

static int JournalController_IsClosingTransitionDone(JournalManager *journalManager)
{
    return IsScreenTransitionDone();
}

static void ov81_021D1360(JournalManager *journalManager)
{
    if (journalManager->unk_1060 == 0) {
        journalManager->bgLayer2 = 0;
        journalManager->bgLayer1 = 2;
        journalManager->bgLayer4 = 1;
        journalManager->bgLayer3 = 3;
    } else {
        journalManager->bgLayer2 = 1;
        journalManager->bgLayer1 = 3;
        journalManager->bgLayer4 = 0;
        journalManager->bgLayer3 = 2;
    }
}

static u8 JournalController_PageExists(JournalManager *journalManager, u8 page)
{
    JournalEntryTitle journalEntryTitle;

    JournalEntry_GetData(journalManager->journalEntry, &journalEntryTitle, JOURNAL_TITLE, page);

    if (journalEntryTitle.year == 0 && journalEntryTitle.month == 0 && journalEntryTitle.day == 0) {
        return FALSE;
    }

    return TRUE;
}

static u8 JournalController_NewDirectionPageExists(JournalManager *journalManager, s8 pageChange)
{
    if (pageChange == 1) {
        if (journalManager->page != (MAX_JOURNAL_ENTRIES - 1) && JournalController_PageExists(journalManager, journalManager->page + 1) == TRUE) {
            return TRUE;
        }
    } else if (journalManager->page != 0 && JournalController_PageExists(journalManager, journalManager->page - 1) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static void JournalController_LoadNewPagePalette(JournalManager *journalManager, u8 bgLayer, u8 palette)
{
    Bg_ChangeTilemapRectPalette(journalManager->bgConfig, bgLayer, 0, 0, 32, 32, palette);
    Bg_ScheduleTilemapTransfer(journalManager->bgConfig, bgLayer);
}

static void ov81_021D1434(JournalManager *journalManager)
{
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(journalManager->bgConfig, 0);
    MI_CpuCopy16(tilemapBuffer, journalManager->tilemapBuffer_85C, 0x800);
}

static void ov81_021D1450(JournalManager *journalManager, u16 *tilemapBufferSrc, u16 bgLayer, u16 param3)
{
    u16 *tilemapBuffer = Bg_GetTilemapBuffer(journalManager->bgConfig, bgLayer);
    u16 j, i;

    for (i = 0; i < 32; i++) {
        if (Unk_ov81_021D33E8[param3][i] == 0xff) {
            Bg_FillTilemapRect(journalManager->bgConfig, bgLayer, 0, i, 0, 1, 32, 0);
            continue;
        }

        for (j = 0; j < 32; j++) {
            tilemapBuffer[j * 32 + i] = tilemapBufferSrc[j * 32 + Unk_ov81_021D33E8[param3][i]];
        }
    }

    Bg_ScheduleTilemapTransfer(journalManager->bgConfig, bgLayer);
}

static u8 ov81_021D14E0(JournalManager *journalManager)
{
    ov81_021D1450(journalManager, journalManager->tilemapBuffer_85C, journalManager->bgLayer2, journalManager->unk_105F);
    ov81_021D1450(journalManager, journalManager->tilemapBuffer_5C, journalManager->bgLayer1, journalManager->unk_105F);
    JournalController_LoadNewPagePalette(journalManager, journalManager->bgLayer1, journalManager->page + 1);

    journalManager->unk_105F++;

    if (journalManager->unk_105F == 9) {
        Bg_SetPriority(journalManager->bgLayer4, 0);
        Bg_SetPriority(journalManager->bgLayer3, 1);
        Bg_SetPriority(journalManager->bgLayer2, 2);
        Bg_SetPriority(journalManager->bgLayer1, 3);
        return TRUE;
    }

    return FALSE;
}

static u8 ov81_021D156C(JournalManager *journalManager)
{
    ov81_021D1450(journalManager, journalManager->tilemapBuffer_85C, journalManager->bgLayer4, 8 - journalManager->unk_105F);
    ov81_021D1450(journalManager, journalManager->tilemapBuffer_5C, journalManager->bgLayer3, 8 - journalManager->unk_105F);
    JournalController_LoadNewPagePalette(journalManager, journalManager->bgLayer3, journalManager->page);

    if (journalManager->unk_105F == 1) {
        Bg_SetPriority(journalManager->bgLayer4, 0);
        Bg_SetPriority(journalManager->bgLayer3, 1);
        Bg_SetPriority(journalManager->bgLayer2, 2);
        Bg_SetPriority(journalManager->bgLayer1, 3);
    }

    journalManager->unk_105F++;

    if (journalManager->unk_105F == 9) {
        return TRUE;
    }

    return FALSE;
}
