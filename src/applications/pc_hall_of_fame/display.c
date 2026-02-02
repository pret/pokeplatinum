#include "applications/pc_hall_of_fame/display.h"

#include <nitro.h>
#include <string.h>

#include "generated/genders.h"
#include "generated/string_padding_mode.h"

#include "struct_defs/pc_hall_of_fame_screen_def.h"

#include "applications/pc_hall_of_fame/manager.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "enums.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "hall_of_fame_entries.h"
#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "render_oam.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_chatot.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/pc_hall_of_fame.h"

typedef struct PCHallOfFameApp {
    PCHallOfFameMan *pcHallOfFameMan;
    const PCHallOfFameScreen *pcHallOfFameScreen;
    int state;
    int transition;
    BgConfig *bgConfig;
    Window windows[2];
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    Sprite *sprites[MAX_PARTY_SIZE];
    void *cellBank;
    void *animBank;
    MessageLoader *msgLoaderHallOfFame;
    MessageLoader *msgLoaderSpeciesNames;
    MessageLoader *msgLoaderMoveNames;
    StringTemplate *strTemplate;
    String *unk_1F4;
    String *unk_1F8;
    Pokemon *mon;
    u8 unk_200[3200];
} PCHallOfFameApp;

static void ov87_021D11AC(void *param0);
static BOOL PCHallOfFame_Open(PCHallOfFameApp *pcHallOfFameApp, int *state);
static BOOL PCHallOfFame_Close(PCHallOfFameApp *pcHallOfFameApp, int *state);
static BOOL PCHallOfFame_HighlightCurrentPokemon(PCHallOfFameApp *pcHallOfFameApp, int *state);
static BOOL PCHallOfFame_DrawNewEntry(PCHallOfFameApp *pcHallOfFameApp, int *state);
static BOOL PCHallOfFame_LoadCurrentTextState(PCHallOfFameApp *pcHallOfFameApp, int *state);
static void ov87_021D139C(PCHallOfFameApp *pcHallOfFameApp);
static void ov87_021D14B8(PCHallOfFameApp *pcHallOfFameApp);
static u32 ov87_021D14D4(PCHallOfFameApp *pcHallOfFameApp, u32 param1);
static void PCHallOfFame_RemoveWindows(PCHallOfFameApp *pcHallOfFameApp);
static void PCHallOfFame_PrintAllText(PCHallOfFameApp *pcHallOfFameApp);
static void PCHallOfFame_ClearScreen(PCHallOfFameApp *pcHallOfFameApp);
static void PCHallOfFame_PrintEntryTitleText(PCHallOfFameApp *pcHallOfFameApp);
static void PCHallOfFame_PrintCurrentTextState(PCHallOfFameApp *pcHallOfFameApp);
static void ov87_021D1818(PCHallOfFameApp *pcHallOfFameApp);
static void ov87_021D186C(PCHallOfFameApp *pcHallOfFameApp);
static void ov87_021D18A0(PCHallOfFameApp *pcHallOfFameApp, NNSG2dCellDataBank *cellBank, NNSG2dAnimBankData *animBank);
static void PCHallOfFame_DrawAllPokemon(PCHallOfFameApp *pcHallOfFameApp);
static void PCHallOfFame_SetAllDrawFlagsFalse(PCHallOfFameApp *pcHallOfFameApp);

static BOOL (*PCHallOfFame_Transitions[])(PCHallOfFameApp *, int *) = {
    PCHallOfFame_Open,
    PCHallOfFame_Close,
    PCHallOfFame_HighlightCurrentPokemon,
    PCHallOfFame_DrawNewEntry,
    PCHallOfFame_LoadCurrentTextState,
};

PCHallOfFameApp *PCHallOfFame_InitApp(PCHallOfFameMan *pcHallOfFameMan, const PCHallOfFameScreen *pcHallOfFameScreen)
{
    PCHallOfFameApp *pcHallOfFameApp = Heap_Alloc(HEAP_ID_PC_HALL_OF_FAME, sizeof(PCHallOfFameApp));

    if (pcHallOfFameApp) {
        pcHallOfFameApp->pcHallOfFameMan = pcHallOfFameMan;
        pcHallOfFameApp->pcHallOfFameScreen = pcHallOfFameScreen;
        pcHallOfFameApp->bgConfig = BgConfig_New(HEAP_ID_PC_HALL_OF_FAME);

        NNS_G2dInitOamManagerModule();
        RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 61);

        pcHallOfFameApp->spriteList = SpriteList_InitRendering(64, &pcHallOfFameApp->g2dRenderer, HEAP_ID_PC_HALL_OF_FAME);
        pcHallOfFameApp->msgLoaderHallOfFame = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_PC_HALL_OF_FAME, HEAP_ID_PC_HALL_OF_FAME);
        pcHallOfFameApp->msgLoaderSpeciesNames = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_PC_HALL_OF_FAME);
        pcHallOfFameApp->msgLoaderMoveNames = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_PC_HALL_OF_FAME);
        pcHallOfFameApp->strTemplate = StringTemplate_Default(HEAP_ID_PC_HALL_OF_FAME);
        pcHallOfFameApp->unk_1F4 = String_Init(256, HEAP_ID_PC_HALL_OF_FAME);
        pcHallOfFameApp->unk_1F8 = String_Init(256, HEAP_ID_PC_HALL_OF_FAME);
        pcHallOfFameApp->mon = Pokemon_New(HEAP_ID_PC_HALL_OF_FAME);

        SetVBlankCallback(ov87_021D11AC, pcHallOfFameApp);
    }

    return pcHallOfFameApp;
}

void PCHallOfFame_FreeApp(PCHallOfFameApp *pcHallOfFameApp)
{
    if (pcHallOfFameApp) {
        SetVBlankCallback(NULL, NULL);
        Heap_Free(pcHallOfFameApp->mon);
        String_Free(pcHallOfFameApp->unk_1F8);
        String_Free(pcHallOfFameApp->unk_1F4);
        StringTemplate_Free(pcHallOfFameApp->strTemplate);
        MessageLoader_Free(pcHallOfFameApp->msgLoaderMoveNames);
        MessageLoader_Free(pcHallOfFameApp->msgLoaderSpeciesNames);
        MessageLoader_Free(pcHallOfFameApp->msgLoaderHallOfFame);
        SpriteList_Delete(pcHallOfFameApp->spriteList);
        RenderOam_Free();
        Heap_Free(pcHallOfFameApp->bgConfig);
        Heap_Free(pcHallOfFameApp);
    }
}

static void ov87_021D11AC(void *param0)
{
    PCHallOfFameApp *pcHallOfFameApp = param0;

    SpriteList_Update(pcHallOfFameApp->spriteList);
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

BOOL PCHallOfFame_DoTransition(PCHallOfFameApp *pcHallOfFameApp, int transition)
{
    pcHallOfFameApp->transition = transition;
    pcHallOfFameApp->state = 0;
    return PCHallOfFame_Transitions[transition](pcHallOfFameApp, &(pcHallOfFameApp->state)) == FALSE;
}

BOOL PCHallOfFame_IsTransitionDone(PCHallOfFameApp *pcHallOfFameApp)
{
    return PCHallOfFame_Transitions[pcHallOfFameApp->transition](pcHallOfFameApp, &(pcHallOfFameApp->state));
}

static BOOL PCHallOfFame_Open(PCHallOfFameApp *pcHallOfFameApp, int *state)
{
    switch (*state) {
    case 0:
        ov87_021D139C(pcHallOfFameApp);
        ov87_021D1818(pcHallOfFameApp);
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_PC_HALL_OF_FAME);
        (*state)++;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}

static BOOL PCHallOfFame_Close(PCHallOfFameApp *pcHallOfFameApp, int *state)
{
    switch (*state) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGOFF);
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_PC_HALL_OF_FAME);
        (*state)++;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            ov87_021D186C(pcHallOfFameApp);
            ov87_021D14B8(pcHallOfFameApp);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL PCHallOfFame_HighlightCurrentPokemon(PCHallOfFameApp *pcHallOfFameApp, int *state)
{
    const PCHallOfFameScreen *pcHallOfFameScreen;
    int i;

    pcHallOfFameScreen = pcHallOfFameApp->pcHallOfFameScreen;

    for (i = 0; i < pcHallOfFameScreen->pokemonCount; i++) {
        if (i == pcHallOfFameScreen->pokemonIndex) {
            Sprite_SetExplicitOAMMode(pcHallOfFameApp->sprites[i], GX_OAM_MODE_NORMAL);
            Sprite_SetPriority(pcHallOfFameApp->sprites[i], 0);
            Sound_SetUsingDefaultChatotCry(TRUE);

            Sound_PlayPokemonCry(pcHallOfFameScreen->pokemon[i].species, pcHallOfFameScreen->pokemon[i].form);
        } else {
            Sprite_SetExplicitOAMMode(pcHallOfFameApp->sprites[i], GX_OAM_MODE_XLU);
            Sprite_SetPriority(pcHallOfFameApp->sprites[i], i + 1);
        }
    }

    PCHallOfFame_PrintCurrentTextState(pcHallOfFameApp);

    return TRUE;
}

static BOOL PCHallOfFame_DrawNewEntry(PCHallOfFameApp *pcHallOfFameApp, int *state)
{
    switch (*state) {
    case 0:
        PCHallOfFame_ClearScreen(pcHallOfFameApp);
        (*state)++;
        break;
    case 1:
        PCHallOfFame_SetAllDrawFlagsFalse(pcHallOfFameApp);
        (*state)++;
        break;
    case 2:
        PCHallOfFame_DrawAllPokemon(pcHallOfFameApp);
        (*state)++;
        break;
    case 3:
        PCHallOfFame_PrintAllText(pcHallOfFameApp);
        return TRUE;
    }

    return FALSE;
}

static BOOL PCHallOfFame_LoadCurrentTextState(PCHallOfFameApp *pcHallOfFameApp, int *state)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    PCHallOfFame_PrintCurrentTextState(pcHallOfFameApp);
    return TRUE;
}

static void ov87_021D139C(PCHallOfFameApp *pcHallOfFameApp)
{
    static const GXBanks v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };
    static const GraphicsModes v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D,
    };
    static const BgTemplate v2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 1,
        .mosaic = FALSE,
    };
    static const BgTemplate v3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 2,
        .mosaic = FALSE,
    };
    u32 v4;

    GXLayers_SetBanks(&v0);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    SetAllGraphicsModes(&v1);
    Bg_InitFromTemplate(pcHallOfFameApp->bgConfig, BG_LAYER_MAIN_1, &v2, 0);
    Bg_InitFromTemplate(pcHallOfFameApp->bgConfig, BG_LAYER_MAIN_2, &v3, 0);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DENDOU_PC, 1, pcHallOfFameApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, 1, HEAP_ID_PC_HALL_OF_FAME);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DENDOU_PC, 0, pcHallOfFameApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, 1, HEAP_ID_PC_HALL_OF_FAME);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DENDOU_PC, 2, 0, 0, 0x40, HEAP_ID_PC_HALL_OF_FAME);
    Bg_FillTilesRange(pcHallOfFameApp->bgConfig, 1, 0x0, 1, 0);
    Bg_FillTilemapRect(pcHallOfFameApp->bgConfig, 1, 0x0, 0, 0, 32, 32, 0);

    v4 = ov87_021D14D4(pcHallOfFameApp, 1);

    PCHallOfFame_PrintAllText(pcHallOfFameApp);
    LoadStandardWindowGraphics(pcHallOfFameApp->bgConfig, BG_LAYER_MAIN_1, v4, 2, 0, HEAP_ID_PC_HALL_OF_FAME);
    Window_DrawStandardFrame(&(pcHallOfFameApp->windows[0]), 0, v4, 2);
    Window_DrawStandardFrame(&(pcHallOfFameApp->windows[1]), 0, v4, 2);
    Bg_CopyTilemapBufferToVRAM(pcHallOfFameApp->bgConfig, 1);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1, 8, 8);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov87_021D14B8(PCHallOfFameApp *pcHallOfFameApp)
{
    Bg_FreeTilemapBuffer(pcHallOfFameApp->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(pcHallOfFameApp->bgConfig, BG_LAYER_MAIN_2);
    PCHallOfFame_RemoveWindows(pcHallOfFameApp);
}

static u32 ov87_021D14D4(PCHallOfFameApp *pcHallOfFameApp, u32 param1)
{
    Window_Add(pcHallOfFameApp->bgConfig, &(pcHallOfFameApp->windows[0]), BG_LAYER_MAIN_1, 1, 1, 30, 2, 0, param1);

    param1 += (30 * 2);

    Window_Add(pcHallOfFameApp->bgConfig, &(pcHallOfFameApp->windows[1]), BG_LAYER_MAIN_1, 1, 19, 30, 4, 0, param1);

    param1 += (30 * 4);

    Window_PutToTilemap(&(pcHallOfFameApp->windows[0]));
    Window_PutToTilemap(&(pcHallOfFameApp->windows[1]));

    return param1;
}

static void PCHallOfFame_RemoveWindows(PCHallOfFameApp *pcHallOfFameApp)
{
    int i;

    for (i = 0; i < 2; i++) {
        Window_Remove(&(pcHallOfFameApp->windows[i]));
    }
}

static void PCHallOfFame_PrintAllText(PCHallOfFameApp *pcHallOfFameApp)
{
    PCHallOfFame_PrintEntryTitleText(pcHallOfFameApp);
    PCHallOfFame_PrintCurrentTextState(pcHallOfFameApp);
}

static void PCHallOfFame_ClearScreen(PCHallOfFameApp *pcHallOfFameApp)
{
    Window_FillTilemap(&(pcHallOfFameApp->windows[0]), 15);
    Window_FillTilemap(&(pcHallOfFameApp->windows[1]), 15);
    Window_LoadTiles(&(pcHallOfFameApp->windows[0]));
    Window_LoadTiles(&(pcHallOfFameApp->windows[1]));
}

static void PCHallOfFame_PrintEntryTitleText(PCHallOfFameApp *pcHallOfFameApp)
{
    const PCHallOfFameScreen *pcHallOfFameScreen = pcHallOfFameApp->pcHallOfFameScreen;
    Window *v1 = &(pcHallOfFameApp->windows[0]);

    StringTemplate_SetNumber(pcHallOfFameApp->strTemplate, 0, pcHallOfFameScreen->entryNum, 4, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNumber(pcHallOfFameApp->strTemplate, 1, pcHallOfFameScreen->date.year + 2000, 4, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetMonthName(pcHallOfFameApp->strTemplate, 2, pcHallOfFameScreen->date.month);
    StringTemplate_SetNumber(pcHallOfFameApp->strTemplate, 3, pcHallOfFameScreen->date.day, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    MessageLoader_GetString(pcHallOfFameApp->msgLoaderHallOfFame, PCHallOfFame_Text_Title, pcHallOfFameApp->unk_1F4);
    StringTemplate_Format(pcHallOfFameApp->strTemplate, pcHallOfFameApp->unk_1F8, pcHallOfFameApp->unk_1F4);
    Window_FillTilemap(v1, 15);
    Text_AddPrinterWithParams(v1, FONT_SYSTEM, pcHallOfFameApp->unk_1F8, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_LoadTiles(v1);
}

static void PCHallOfFame_PrintCurrentTextState(PCHallOfFameApp *pcHallOfFameApp)
{
    const PCHallOfFameScreen *pcHallOfFameScreen = pcHallOfFameApp->pcHallOfFameScreen;
    const PCHallOfFamePokemon *pcHallOfFameMon = &(pcHallOfFameScreen->pokemon[pcHallOfFameScreen->pokemonIndex]);
    Window *window = &(pcHallOfFameApp->windows[1]);

    Window_FillTilemap(window, 15);

    switch (pcHallOfFameScreen->textState) {
    case PC_HALL_OF_FAME_TEXT_GENERAL:
        Text_AddPrinterWithParams(window, FONT_SYSTEM, pcHallOfFameMon->nickname, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_GetString(pcHallOfFameApp->msgLoaderHallOfFame, PCHallOfFame_Text_Slash, pcHallOfFameApp->unk_1F4);
        Text_AddPrinterWithParams(window, FONT_SYSTEM, pcHallOfFameApp->unk_1F4, 72, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_GetString(pcHallOfFameApp->msgLoaderSpeciesNames, pcHallOfFameMon->species, pcHallOfFameApp->unk_1F4);
        Text_AddPrinterWithParams(window, FONT_SYSTEM, pcHallOfFameApp->unk_1F4, 94, 0, TEXT_SPEED_NO_TRANSFER, NULL);

        switch (Pokemon_GetGenderOf(pcHallOfFameMon->species, pcHallOfFameMon->personality)) {
        case GENDER_MALE:
            MessageLoader_GetString(pcHallOfFameApp->msgLoaderHallOfFame, PCHallOfFame_Text_MaleSign, pcHallOfFameApp->unk_1F4);
            break;
        case GENDER_FEMALE:
            MessageLoader_GetString(pcHallOfFameApp->msgLoaderHallOfFame, PCHallOfFame_Text_FemaleSign, pcHallOfFameApp->unk_1F4);
            break;
        default:
            String_Clear(pcHallOfFameApp->unk_1F4);
            break;
        }

        Text_AddPrinterWithParams(window, FONT_SYSTEM, pcHallOfFameApp->unk_1F4, 174, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_GetString(pcHallOfFameApp->msgLoaderHallOfFame, PCHallOfFame_Text_Level, pcHallOfFameApp->unk_1F4);
        StringTemplate_SetNumber(pcHallOfFameApp->strTemplate, 0, pcHallOfFameMon->level, 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_Format(pcHallOfFameApp->strTemplate, pcHallOfFameApp->unk_1F8, pcHallOfFameApp->unk_1F4);
        Text_AddPrinterWithParams(window, FONT_SYSTEM, pcHallOfFameApp->unk_1F8, 194, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_GetString(pcHallOfFameApp->msgLoaderHallOfFame, PCHallOfFame_Text_OT, pcHallOfFameApp->unk_1F4);
        Text_AddPrinterWithParams(window, FONT_SYSTEM, pcHallOfFameApp->unk_1F4, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);
        Text_AddPrinterWithParams(window, FONT_SYSTEM, pcHallOfFameMon->OTName, Font_CalcStringWidth(FONT_SYSTEM, pcHallOfFameApp->unk_1F4, 0), 16, TEXT_SPEED_NO_TRANSFER, NULL);
        break;
    case PC_HALL_OF_FAME_TEXT_MOVES: {
        int i;

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (pcHallOfFameMon->moves[i]) {
                MessageLoader_GetString(pcHallOfFameApp->msgLoaderMoveNames, pcHallOfFameMon->moves[i], pcHallOfFameApp->unk_1F4);
                Text_AddPrinterWithParams(window, FONT_SYSTEM, pcHallOfFameApp->unk_1F4, (i & 1) * 96, (i / 2) * 16, TEXT_SPEED_NO_TRANSFER, NULL);
            } else {
                break;
            }
        }
    } break;
    }

    Window_LoadTiles(window);
}

static void ov87_021D1818(PCHallOfFameApp *pcHallOfFameApp)
{
    NNSG2dCellDataBank *cellBank;
    NNSG2dAnimBankData *animBank;
    int unused;

    pcHallOfFameApp->cellBank = Graphics_GetCellBank(27, 77, FALSE, &cellBank, HEAP_ID_PC_HALL_OF_FAME);
    pcHallOfFameApp->animBank = Graphics_GetAnimBank(27, 78, FALSE, &animBank, HEAP_ID_PC_HALL_OF_FAME);

    MI_CpuClearFast(pcHallOfFameApp->unk_200, sizeof(pcHallOfFameApp->unk_200));

    ov87_021D18A0(pcHallOfFameApp, cellBank, animBank);
    PCHallOfFame_DrawAllPokemon(pcHallOfFameApp);
}

static void ov87_021D186C(PCHallOfFameApp *pcHallOfFameApp)
{
    int i;

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        if (pcHallOfFameApp->sprites[i]) {
            Sprite_Delete(pcHallOfFameApp->sprites[i]);
        }
    }

    Heap_Free(pcHallOfFameApp->cellBank);
    Heap_Free(pcHallOfFameApp->animBank);
}

static void ov87_021D18A0(PCHallOfFameApp *pcHallOfFameApp, NNSG2dCellDataBank *cellBank, NNSG2dAnimBankData *animBank)
{
    static const struct {
        int x;
        int y;
    } spriteCoordinates[] = {
        { 120, 56 },
        { 40, 56 },
        { 200, 56 },
        { 136, 112 },
        { 216, 112 },
        { 56, 112 },
    };
    SpriteResourcesHeader v1;
    SpriteListTemplate v2;
    NNSG2dImageProxy v3;
    NNSG2dImagePaletteProxy v4;
    NNSG2dCharacterData *v5;
    NNSG2dPaletteData *v6;
    void *v7;
    void *v8;
    int i;

    v1.charData = NULL;
    v1.multiCellBank = NULL;
    v1.multiCellAnimBank = NULL;
    v1.isVRamTransfer = 0;
    v1.cellBank = cellBank;
    v1.cellAnimBank = animBank;
    v1.priority = 0;
    v1.imageProxy = &v3;
    v1.paletteProxy = &v4;
    v2.list = pcHallOfFameApp->spriteList;
    v2.resourceData = &v1;
    v2.position.z = 0;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.heapID = HEAP_ID_PC_HALL_OF_FAME;

    v7 = Graphics_GetCharData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 76, 0, &v5, HEAP_ID_PC_HALL_OF_FAME);
    v8 = Graphics_GetPlttData(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 75, &v6, HEAP_ID_PC_HALL_OF_FAME);

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        NNS_G2dInitImageProxy(&v3);
        NNS_G2dInitImagePaletteProxy(&v4);
        NNS_G2dLoadImage1DMapping(v5, i * 3200, NNS_G2D_VRAM_TYPE_2DMAIN, &v3);
        NNS_G2dLoadPalette(v6, i * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v4);

        v2.position.x = spriteCoordinates[i].x << FX32_SHIFT;
        v2.position.y = spriteCoordinates[i].y << FX32_SHIFT;
        v2.priority = i + 1;

        pcHallOfFameApp->sprites[i] = SpriteList_Add(&v2);
        Sprite_SetDrawFlag(pcHallOfFameApp->sprites[i], FALSE);
    }

    Heap_Free(v8);
    Heap_Free(v7);
}

static void PCHallOfFame_DrawAllPokemon(PCHallOfFameApp *pcHallOfFameApp)
{
    static const TileRegion tileRegion = FRAME_0_REGION;
    PokemonSpriteTemplate spriteTemplate;
    const PCHallOfFameScreen *pcHallOfFameScreen;
    int i;

    pcHallOfFameScreen = pcHallOfFameApp->pcHallOfFameScreen;

    for (i = 0; i < pcHallOfFameScreen->pokemonCount; i++) {
        Pokemon_InitWith(pcHallOfFameApp->mon, pcHallOfFameScreen->pokemon[i].species, pcHallOfFameScreen->pokemon[i].level, INIT_IVS_RANDOM, TRUE, pcHallOfFameScreen->pokemon[i].personality, OTID_SET, pcHallOfFameScreen->pokemon[i].OTID);
        Pokemon_SetValue(pcHallOfFameApp->mon, MON_DATA_FORM, (void *)(&(pcHallOfFameScreen->pokemon[i].form)));
        Pokemon_BuildSpriteTemplate(&spriteTemplate, pcHallOfFameApp->mon, FACE_FRONT);
        CharacterSprite_LoadPokemonSpriteRegion(spriteTemplate.narcID, spriteTemplate.character, HEAP_ID_PC_HALL_OF_FAME, &tileRegion, pcHallOfFameApp->unk_200, pcHallOfFameScreen->pokemon[i].personality, FALSE, FACE_FRONT, pcHallOfFameScreen->pokemon[i].species);

        DC_FlushRange(pcHallOfFameApp->unk_200, sizeof(pcHallOfFameApp->unk_200));
        GX_LoadOBJ(pcHallOfFameApp->unk_200, 3200 * i, 3200);

        Graphics_LoadPalette(spriteTemplate.narcID, spriteTemplate.palette, PAL_LOAD_MAIN_OBJ, i * 0x20, 0x20, HEAP_ID_PC_HALL_OF_FAME);

        if (i == pcHallOfFameScreen->pokemonIndex) {
            Sound_SetUsingDefaultChatotCry(TRUE);
            Sound_PlayPokemonCry(pcHallOfFameScreen->pokemon[i].species, pcHallOfFameScreen->pokemon[i].form);
            Sprite_SetExplicitOAMMode(pcHallOfFameApp->sprites[i], GX_OAM_MODE_NORMAL);
        } else {
            Sprite_SetExplicitOAMMode(pcHallOfFameApp->sprites[i], GX_OAM_MODE_XLU);
        }

        Sprite_SetDrawFlag(pcHallOfFameApp->sprites[i], TRUE);
    }

    for (; i < MAX_PARTY_SIZE; i++) {
        Sprite_SetDrawFlag(pcHallOfFameApp->sprites[i], FALSE);
    }
}

static void PCHallOfFame_SetAllDrawFlagsFalse(PCHallOfFameApp *pcHallOfFameApp)
{
    int i;

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        Sprite_SetDrawFlag(pcHallOfFameApp->sprites[i], FALSE);
    }
}
