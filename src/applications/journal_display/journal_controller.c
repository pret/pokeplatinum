#include "applications/journal_display/journal_controller.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_defs/struct_02099F80.h"

#include "applications/journal_display/journal_printer.h"
#include "applications/journal_display/struct_ov81_021D1610.h"

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
static void JournalController_SetupBgs(BgConfig *param0);
static void JournalController_TeardownBgs(BgConfig *param0);
static void ov81_021D1050(UnkStruct_ov81_021D1610 *param0);
static void ov81_021D1130(UnkStruct_ov81_021D1610 *param0);
static void ov81_021D115C(UnkStruct_ov81_021D1610 *param0);
static int JournalController_IsOpeningTransitionDone(UnkStruct_ov81_021D1610 *param0);
static int JournalController_HandleInput(UnkStruct_ov81_021D1610 *param0);
static int JournalController_TurnPageLeft(UnkStruct_ov81_021D1610 *param0);
static int JournalController_TurnPageRight(UnkStruct_ov81_021D1610 *param0);
static int JournalController_IsClosingTransitionDone(UnkStruct_ov81_021D1610 *param0);
static u8 JournalController_NewDirectionPageExists(UnkStruct_ov81_021D1610 *param0, s8 pageChance);
static void ov81_021D1360(UnkStruct_ov81_021D1610 *param0);
static void ov81_021D140C(UnkStruct_ov81_021D1610 *param0, u8 bgLayer, u8 palette);
static void ov81_021D1434(UnkStruct_ov81_021D1610 *param0);
static u8 ov81_021D14E0(UnkStruct_ov81_021D1610 *param0);
static u8 ov81_021D156C(UnkStruct_ov81_021D1610 *param0);

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
    UnkStruct_ov81_021D1610 *v0;
    SaveData *v1;

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

    v1 = OverlayManager_Args(ovyManager);
    v0 = OverlayManager_NewData(ovyManager, sizeof(UnkStruct_ov81_021D1610), HEAP_ID_JOURNAL);
    memset(v0, 0, sizeof(UnkStruct_ov81_021D1610));
    v0->bgConfig = BgConfig_New(HEAP_ID_JOURNAL);

    v0->saveData = v1;
    v0->journalEntry = SaveData_GetJournal(v1);
    v0->trainerInfo = SaveData_GetTrainerInfo(v1);

    sub_0208C120(0, HEAP_ID_JOURNAL);
    Font_UseImmediateGlyphAccess(FONT_SYSTEM, HEAP_ID_JOURNAL);

    JournalController_SetVRAMBanks();
    JournalController_SetupBgs(v0->bgConfig);
    ov81_021D1050(v0);
    ov81_021D1130(v0);
    ov81_021D1610(v0);
    ov81_021D164C(v0, 0);
    ov81_021D1434(v0);

    SetMainCallback(JournalController_MainCallback, v0);
    GXLayers_TurnBothDispOn();
    sub_02039734();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02004550(67, 0, 0);

    return TRUE;
}

int JournalController_Main(OverlayManager *ovyManager, int *state)
{
    UnkStruct_ov81_021D1610 *v0 = OverlayManager_Data(ovyManager);

    switch (*state) {
    case JOURNAL_STATE_OPEN:
        *state = JournalController_IsOpeningTransitionDone(v0);
        break;
    case JOURNAL_STATE_HANDLE_INPUT:
        *state = JournalController_HandleInput(v0);
        break;
    case JOURNAL_STATE_TURN_LEFT:
        *state = JournalController_TurnPageLeft(v0);
        break;
    case JOURNAL_STATE_TURN_RIGHT:
        *state = JournalController_TurnPageRight(v0);
        break;
    case JOURNAL_STATE_CLOSE:
        if (JournalController_IsClosingTransitionDone(v0) == 1) {
            return TRUE;
        }
    }

    return FALSE;
}

int JournalController_Exit(OverlayManager *ovyManager, int *state)
{
    UnkStruct_ov81_021D1610 *v0 = OverlayManager_Data(ovyManager);

    SetMainCallback(NULL, NULL);

    ov81_021D1634(v0);
    JournalController_TeardownBgs(v0->bgConfig);
    ov81_021D115C(v0);

    Font_UseLazyGlyphAccess(FONT_SYSTEM);
    OverlayManager_FreeData(ovyManager);
    Heap_Destroy(HEAP_ID_JOURNAL);

    return TRUE;
}

static void JournalController_MainCallback(void *data)
{
    UnkStruct_ov81_021D1610 *v0 = data;

    Bg_RunScheduledUpdates(v0->bgConfig);
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
    GraphicsModes v0 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&v0);

    BgTemplate v1 = {
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

    Bg_InitFromTemplate(bgConfig, 0, &v1, 0);
    Bg_ClearTilemap(bgConfig, 0);

    BgTemplate v2 = {
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

    Bg_InitFromTemplate(bgConfig, 1, &v2, 0);
    Bg_ClearTilemap(bgConfig, 1);

    BgTemplate v3 = {
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

    Bg_InitFromTemplate(bgConfig, 2, &v3, 0);

    BgTemplate v4 = {
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

    Bg_InitFromTemplate(bgConfig, 3, &v4, 0);

    Bg_ClearTilesRange(0, 32, 0, HEAP_ID_JOURNAL);
    Bg_ClearTilesRange(1, 32, 0, HEAP_ID_JOURNAL);
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

static void ov81_021D1050(UnkStruct_ov81_021D1610 *param0)
{
    u16 *v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__F_NOTE_GRA, HEAP_ID_JOURNAL);

    if (TrainerInfo_Gender(param0->trainerInfo) == 0) {
        Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 2, param0->bgConfig, 2, 0, 0, 0, HEAP_ID_JOURNAL);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 0, param0->bgConfig, 2, 0, 0, 0, HEAP_ID_JOURNAL);
        Graphics_LoadPaletteFromOpenNARC(v1, 4, 0, 0, 0, HEAP_ID_JOURNAL);
    } else {
        Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 3, param0->bgConfig, 2, 0, 0, 0, HEAP_ID_JOURNAL);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 1, param0->bgConfig, 2, 0, 0, 0, HEAP_ID_JOURNAL);
        Graphics_LoadPaletteFromOpenNARC(v1, 5, 0, 0, 0, HEAP_ID_JOURNAL);
    }

    NARC_dtor(v1);

    v0 = Bg_GetTilemapBuffer(param0->bgConfig, 2);
    MI_CpuCopy16(v0, param0->unk_5C, 0x800);
    Bg_LoadTilemapBuffer(param0->bgConfig, 3, param0->unk_5C, 0x800);

    Font_LoadTextPalette(0, 15 * 32, HEAP_ID_JOURNAL);
    Bg_MaskPalette(4, 0);
}

static void ov81_021D1130(UnkStruct_ov81_021D1610 *param0)
{
    param0->loader = MessageLoader_Init(0, 26, 366, HEAP_ID_JOURNAL);
    param0->template = StringTemplate_Default(HEAP_ID_JOURNAL);
    param0->strbuf = Strbuf_Init(128, HEAP_ID_JOURNAL);
}

static void ov81_021D115C(UnkStruct_ov81_021D1610 *param0)
{
    MessageLoader_Free(param0->loader);
    StringTemplate_Free(param0->template);
    Strbuf_Free(param0->strbuf);
}

static int JournalController_IsOpeningTransitionDone(UnkStruct_ov81_021D1610 *param0)
{
    if (IsScreenTransitionDone() == TRUE) {
        return JOURNAL_STATE_HANDLE_INPUT;
    }

    return JOURNAL_STATE_OPEN;
}

static int JournalController_HandleInput(UnkStruct_ov81_021D1610 *param0)
{
    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (JournalController_NewDirectionPageExists(param0, -1) == 1) {
            return JOURNAL_STATE_TURN_LEFT;
        }

        return JOURNAL_STATE_HANDLE_INPUT;
    }

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_KEY_RIGHT)) {
        if (JournalController_NewDirectionPageExists(param0, 1) == 1) {
            return JOURNAL_STATE_TURN_RIGHT;
        }

        return JOURNAL_STATE_HANDLE_INPUT;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        if (param0->page != 0) {
            if (JournalController_NewDirectionPageExists(param0, -1) == 1) {
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

static int JournalController_TurnPageLeft(UnkStruct_ov81_021D1610 *param0)
{
    switch (param0->state) {
    case 0:
        ov81_021D1360(param0);
        ov81_021D140C(param0, param0->bgLayer3, param0->page - 1);
        param0->page--;
        ov81_021D164C(param0, param0->unk_1060 ^ 1);
        param0->state = 1;
        Sound_PlayEffect(1681);
        break;
    case 1:
        if (ov81_021D14E0(param0) == TRUE) {
            param0->unk_105F = 0;
            param0->state = 0;
            param0->unk_1060 ^= 1;

            Bg_LoadToTilemapRect(param0->bgConfig, param0->bgLayer2, param0->unk_85C, 0, 0, 32, 32);
            Bg_LoadToTilemapRect(param0->bgConfig, param0->bgLayer1, param0->unk_5C, 0, 0, 32, 32);
            Bg_ScheduleTilemapTransfer(param0->bgConfig, param0->bgLayer2);
            Bg_ScheduleTilemapTransfer(param0->bgConfig, param0->bgLayer1);

            return JOURNAL_STATE_HANDLE_INPUT;
        }
    }

    return JOURNAL_STATE_TURN_LEFT;
}

static int JournalController_TurnPageRight(UnkStruct_ov81_021D1610 *param0)
{
    switch (param0->state) {
    case 0:
        ov81_021D1360(param0);
        param0->page++;
        ov81_021D164C(param0, param0->unk_1060 ^ 1);
        param0->state = 1;
        Sound_PlayEffect(1681);
        break;
    case 1:
        if (ov81_021D156C(param0) == TRUE) {
            param0->unk_105F = 0;
            param0->state = 0;
            param0->unk_1060 ^= 1;

            return JOURNAL_STATE_HANDLE_INPUT;
        }
    }

    return JOURNAL_STATE_TURN_RIGHT;
}

static int JournalController_IsClosingTransitionDone(UnkStruct_ov81_021D1610 *param0)
{
    return IsScreenTransitionDone();
}

static void ov81_021D1360(UnkStruct_ov81_021D1610 *param0)
{
    if (param0->unk_1060 == 0) {
        param0->bgLayer2 = 0;
        param0->bgLayer1 = 2;
        param0->bgLayer4 = 1;
        param0->bgLayer3 = 3;
    } else {
        param0->bgLayer2 = 1;
        param0->bgLayer1 = 3;
        param0->bgLayer4 = 0;
        param0->bgLayer3 = 2;
    }
}

static u8 JournalController_PageExists(UnkStruct_ov81_021D1610 *param0, u8 param1)
{
    JournalEntryTitle journalEntryTitle;

    JournalEntry_GetData(param0->journalEntry, &journalEntryTitle, JOURNAL_TITLE, param1);

    if (journalEntryTitle.year == 0 && journalEntryTitle.month == 0 && journalEntryTitle.day == 0) {
        return FALSE;
    }

    return TRUE;
}

static u8 JournalController_NewDirectionPageExists(UnkStruct_ov81_021D1610 *param0, s8 pageChange)
{
    if (pageChange == 1) {
        if (param0->page != 9 && JournalController_PageExists(param0, param0->page + 1) == TRUE) {
            return TRUE;
        }
    } else if (param0->page != 0 && JournalController_PageExists(param0, param0->page - 1) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static void ov81_021D140C(UnkStruct_ov81_021D1610 *param0, u8 bgLayer, u8 palette)
{
    Bg_ChangeTilemapRectPalette(param0->bgConfig, bgLayer, 0, 0, 32, 32, palette);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, bgLayer);
}

static void ov81_021D1434(UnkStruct_ov81_021D1610 *param0)
{
    u16 *v0 = Bg_GetTilemapBuffer(param0->bgConfig, 0);
    MI_CpuCopy16(v0, param0->unk_85C, 0x800);
}

static void ov81_021D1450(UnkStruct_ov81_021D1610 *param0, u16 *param1, u16 param2, u16 param3)
{
    u16 *v0 = Bg_GetTilemapBuffer(param0->bgConfig, param2);
    u16 j, i;

    for (i = 0; i < 32; i++) {
        if (Unk_ov81_021D33E8[param3][i] == 0xff) {
            Bg_FillTilemapRect(param0->bgConfig, param2, 0, i, 0, 1, 32, 0);
            continue;
        }

        for (j = 0; j < 32; j++) {
            v0[j * 32 + i] = param1[j * 32 + Unk_ov81_021D33E8[param3][i]];
        }
    }

    Bg_ScheduleTilemapTransfer(param0->bgConfig, param2);
}

static u8 ov81_021D14E0(UnkStruct_ov81_021D1610 *param0)
{
    ov81_021D1450(param0, param0->unk_85C, param0->bgLayer2, param0->unk_105F);
    ov81_021D1450(param0, param0->unk_5C, param0->bgLayer1, param0->unk_105F);
    ov81_021D140C(param0, param0->bgLayer1, param0->page + 1);

    param0->unk_105F++;

    if (param0->unk_105F == 9) {
        Bg_SetPriority(param0->bgLayer4, 0);
        Bg_SetPriority(param0->bgLayer3, 1);
        Bg_SetPriority(param0->bgLayer2, 2);
        Bg_SetPriority(param0->bgLayer1, 3);
        return TRUE;
    }

    return FALSE;
}

static u8 ov81_021D156C(UnkStruct_ov81_021D1610 *param0)
{
    ov81_021D1450(param0, param0->unk_85C, param0->bgLayer4, 8 - param0->unk_105F);
    ov81_021D1450(param0, param0->unk_5C, param0->bgLayer3, 8 - param0->unk_105F);
    ov81_021D140C(param0, param0->bgLayer3, param0->page);

    if (param0->unk_105F == 1) {
        Bg_SetPriority(param0->bgLayer4, 0);
        Bg_SetPriority(param0->bgLayer3, 1);
        Bg_SetPriority(param0->bgLayer2, 2);
        Bg_SetPriority(param0->bgLayer1, 3);
    }

    param0->unk_105F++;

    if (param0->unk_105F == 9) {
        return TRUE;
    }

    return FALSE;
}
