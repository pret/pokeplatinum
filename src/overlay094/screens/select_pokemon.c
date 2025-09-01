#include "overlay094/screens/select_pokemon.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "generated/items.h"
#include "generated/species.h"

#include "struct_decls/pc_boxes_decl.h"

#include "global/utility.h"
#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/screens/deposit.h"
#include "overlay094/screens/wfc_init.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_020393C8.h"

#include "res/text/bank/gts.h"

typedef struct PokemonIcon {
    int unk_00;
    int paletteIndex;
    Sprite *sprite;
    u8 unk_0C[512]; // icon bytes
} PokemonIcon;

static void ov94_0223FC08(BgConfig *param0);
static void ov94_0223FD20(BgConfig *param0);
static void ov94_0223FD4C(GTSApplicationState *param0);
static void ov94_0223FE24(GTSApplicationState *param0);
static void ov94_0223FFC8(GTSApplicationState *param0);
static void ov94_02240028(GTSApplicationState *param0);
static void ov94_02240190(GTSApplicationState *param0);
static void ov94_022401E0(GTSApplicationState *param0);
static void ov94_02240268(GTSApplicationState *param0);
static int ov94_022402A8(GTSApplicationState *param0);
static int ov94_022402BC(GTSApplicationState *param0);
static int ov94_02240A6C(GTSApplicationState *param0);
static int ov94_02240AC4(GTSApplicationState *param0);
static int ov94_02240AE8(GTSApplicationState *param0);
static int ov94_02240D08(GTSApplicationState *param0);
static int ov94_02240D28(GTSApplicationState *param0);
static void ov94_02240D58(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4, int param5);
static void ov94_02240DF8(int param0, int param1, int param2, int param3, Sprite *param4, NARC *param5, PokemonIcon *param6);
static void ov94_02240FA0(GTSApplicationState *param0, int boxID);
static int ov94_022405CC(int param0, int param1, int param2);
static void ov94_022404F0(GTSApplicationState *param0);
static int ov94_022405DC(GTSApplicationState *param0);
static int ov94_02240688(GTSApplicationState *param0);
static int ov94_02240830(GTSApplicationState *param0);
static int ov94_022408E8(GTSApplicationState *param0);
static int ov94_02240B70(GTSApplicationState *param0);
static int ov94_02240B4C(GTSApplicationState *param0);
static int ov94_02240B20(GTSApplicationState *param0);
static int ov94_02240C58(GTSApplicationState *param0);
static int ov94_02240C84(GTSApplicationState *param0);
static int ov94_02240CA8(GTSApplicationState *param0);
static int ov94_02241384(BoxPokemon *boxMon, GTSPokemonRequirements *param1);
static void ov94_022413BC(GTSPokemonListing *param0, GTSApplicationState *param1);
static void ov94_02240EAC(BoxPokemon *boxMon, Sprite *param1, Sprite *param2, u16 *param3, int param4, NARC *param5, GTSPokemonCriteria *param6, PokemonIcon *param7);
void *ov94_02240DD0(NARC *param0, u32 param1, NNSG2dCharacterData **param2, u32 param3);
static BOOL GTSApplication_SelectPokemon_MatchesRequirements(GTSPokemonCriteria *param0, GTSPokemonRequirements *param1);
static void GTSApplication_SelectPokemon_DarkenNonMatchingMons(GTSPokemonCriteria *param0, Sprite **param1, GTSPokemonRequirements *param2, PokemonIcon *param3);
static int ov94_0224121C(Party *party, PCBoxes *pcBoxes, int boxID, int param3);
static int ov94_022412F4(Party *param0, PCBoxes *pcBoxes, int param2, int param3);
static int ov94_02240BB0(GTSApplicationState *param0);
static int BoxPokemon_HasUnusedRibbons(BoxPokemon *boxMon);
static BOOL BoxPokemon_FormNotInDP(BoxPokemon *boxMon);
static BOOL BoxPokemon_HeldItemNotInDP(BoxPokemon *boxMon);

static int (*sGTSPokemonSelectScreenStates[])(GTSApplicationState *) = {
    ov94_022402A8,
    ov94_022402BC,
    ov94_02240A6C,
    ov94_02240D08,
    ov94_02240D28,
    ov94_02240AC4,
    ov94_02240AE8,
    ov94_022405DC,
    ov94_02240688,
    ov94_02240830,
    ov94_022408E8,
    ov94_02240B20,
    ov94_02240B4C,
    ov94_02240B70,
    ov94_02240C58,
    ov94_02240C84,
    ov94_02240CA8
};

int GTSApplication_SelectPokemon_Init(GTSApplicationState *appState, int unused1)
{
    UNUSED(unused1);

    ov94_022401E0(appState);
    ov94_0223FC08(appState->bgConfig);
    ov94_0223FD4C(appState);
    ov94_02240028(appState);
    ov94_0223FE24(appState);

    if (appState->previousScreen == 8) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    ov94_02240FA0(appState, appState->selectedBoxId);
    ov94_02245934(appState);

    appState->currentScreenInstruction = 0;

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_SelectPokemon_Main(GTSApplicationState *appState, int param1)
{
    UNUSED(param1);

    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());

    return (*sGTSPokemonSelectScreenStates[appState->currentScreenInstruction])(appState);
}

int GTSApplication_SelectPokemon_Exit(GTSApplicationState *appState, int param1)
{
    NetworkIcon_Destroy();

    ov94_0223FFC8(appState);
    ov94_02240268(appState);
    ov94_02240190(appState);
    ov94_0223FD20(appState->bgConfig);
    GTSApplication_MoveToNextScreen(appState);

    return 1;
}

static void ov94_0223FC08(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
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
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v1, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2, 0);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v4, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v5 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v5, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov94_0223FD20(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
}

static void ov94_0223FD4C(GTSApplicationState *param0)
{
    BgConfig *v0 = param0->bgConfig;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 2, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(v1, 5, 4, 0, 16 * 8 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 12, v0, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 24, v0, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 29, v0, 2, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    NARC_dtor(v1);
}

static const u16 Unk_ov94_02245ED4[][2] = {
    { 0x19, 0x3C },
    { 0x33, 0x3C },
    { 0x4D, 0x3C },
    { 0x67, 0x3C },
    { 0x81, 0x3C },
    { 0x9B, 0x3C },
    { 0x19, 0x54 },
    { 0x33, 0x54 },
    { 0x4D, 0x54 },
    { 0x67, 0x54 },
    { 0x81, 0x54 },
    { 0x9B, 0x54 },
    { 0x19, 0x6C },
    { 0x33, 0x6C },
    { 0x4D, 0x6C },
    { 0x67, 0x6C },
    { 0x81, 0x6C },
    { 0x9B, 0x6C },
    { 0x19, 0x84 },
    { 0x33, 0x84 },
    { 0x4D, 0x84 },
    { 0x67, 0x84 },
    { 0x81, 0x84 },
    { 0x9B, 0x84 },
    { 0x19, 0x9C },
    { 0x33, 0x9C },
    { 0x4D, 0x9C },
    { 0x67, 0x9C },
    { 0x81, 0x9C },
    { 0x9B, 0x9C },
    { 0xE0, 0xAF },
    { 0x62, 0x20 }
};

static const u16 Unk_ov94_02245E1C[][2] = {
    { 0xA2, 0x24 },
    { 0x16, 0x24 }
};

static void ov94_0223FE24(GTSApplicationState *param0)
{
    int v0;
    AffineSpriteListTemplate v1;

    GTSApplication_InitAffineTemplate(&v1, param0, &param0->cursorSpriteResourceHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

    v1.position.x = FX32_ONE * Unk_ov94_02245ED4[param0->unk_112][0];
    v1.position.y = FX32_ONE * Unk_ov94_02245ED4[param0->unk_112][1];

    param0->cursorSprite = SpriteList_AddAffine(&v1);

    Sprite_SetAnimateFlag(param0->cursorSprite, 1);
    Sprite_SetAnim(param0->cursorSprite, 4);

    if ((param0->unk_112 == 31) || ((param0->unk_112 >= 0) && (param0->unk_112 <= 5))) {
        Sprite_SetExplicitPriority(param0->cursorSprite, 0);
    } else {
        Sprite_SetExplicitPriority(param0->cursorSprite, 1);
    }

    for (v0 = 0; v0 < 30; v0++) {
        v1.position.x = FX32_ONE * Unk_ov94_02245ED4[v0][0];
        v1.position.y = FX32_ONE * Unk_ov94_02245ED4[v0][1];
        v1.priority = 20;

        param0->unk_E28[v0] = SpriteList_AddAffine(&v1);

        Sprite_SetAnim(param0->unk_E28[v0], 6 + v0);
        Sprite_SetExplicitPriority(param0->unk_E28[v0], 1);
    }

    for (v0 = 0; v0 < 30; v0++) {
        v1.position.x = FX32_ONE * (Unk_ov94_02245ED4[v0][0] + 4);
        v1.position.y = FX32_ONE * (Unk_ov94_02245ED4[v0][1] + 6);
        v1.priority = 10;

        param0->unk_EA0[v0] = SpriteList_AddAffine(&v1);

        Sprite_SetAnim(param0->unk_EA0[v0], 40);
        Sprite_SetExplicitPriority(param0->unk_EA0[v0], 1);
    }

    for (v0 = 0; v0 < 6; v0++) {
        v1.position.x = FX32_ONE * (Unk_ov94_02245ED4[v0][0] + 4 + 8);
        v1.position.y = FX32_ONE * (Unk_ov94_02245ED4[v0][1] + 6);
        v1.priority = 10;

        param0->selectPokemonPartySprites[v0] = SpriteList_AddAffine(&v1);

        Sprite_SetAnim(param0->selectPokemonPartySprites[v0], 42);
        Sprite_SetExplicitPriority(param0->selectPokemonPartySprites[v0], 1);
    }

    for (v0 = 0; v0 < 2; v0++) {
        v1.position.x = FX32_ONE * Unk_ov94_02245E1C[v0][0];
        v1.position.y = FX32_ONE * Unk_ov94_02245E1C[v0][1];

        param0->unk_F54[v0] = SpriteList_AddAffine(&v1);

        Sprite_SetAnimateFlag(param0->unk_F54[v0], 1);
        Sprite_SetAnim(param0->unk_F54[v0], 38 + v0);
        Sprite_SetExplicitPriority(param0->unk_F54[v0], 1);
    }
}

static void ov94_0223FFC8(GTSApplicationState *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_Delete(param0->unk_F54[v0]);
    }

    Sprite_Delete(param0->cursorSprite);

    for (v0 = 0; v0 < 30; v0++) {
        Sprite_Delete(param0->unk_E28[v0]);
        Sprite_Delete(param0->unk_EA0[v0]);
    }

    for (v0 = 0; v0 < 6; v0++) {
        Sprite_Delete(param0->selectPokemonPartySprites[v0]);
    }
}

static void ov94_02240028(GTSApplicationState *param0)
{
    Window_Add(param0->bgConfig, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&param0->unk_F7C, 0x0);

    ov94_02245900(&param0->unk_F7C, param0->title, 0, 1, 0, TEXT_COLOR(15, 14, 0));

    Window_Add(param0->bgConfig, &param0->unk_F8C, 0, 5, 3, 13, 3, 13, ((1 + (18 + 12)) + 9) + 28 * 2);
    Window_FillTilemap(&param0->unk_F8C, 0x0);
    Window_CopyToVRAM(&param0->unk_F8C);
    Window_Add(param0->bgConfig, &param0->bottomInstructionWindow, 0, 2, 21, 27, 2, 13, (((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13);
    Window_FillTilemap(&param0->bottomInstructionWindow, 0x0);
    Window_Add(param0->bgConfig, &param0->unk_109C, 0, 2, 19, 27, 4, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2);
    Window_FillTilemap(&param0->unk_109C, 0x0);
    Window_Add(param0->bgConfig, &param0->unk_F9C[1], 1, 25, 21, 6, 2, 0, (((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19);
    Window_FillTilemap(&param0->unk_F9C[1], 0x606);

    ov94_02245900(&param0->unk_F9C[1], param0->unk_BA8, 0, 1, 1, TEXT_COLOR(1, 3, 6));

    Window_Add(param0->bgConfig, &param0->unk_F9C[0], 0, 21, 13, 5 * 2, 6, 13, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2);
}

static void ov94_02240190(GTSApplicationState *param0)
{
    Window_Remove(&param0->unk_109C);
    Window_Remove(&param0->unk_F9C[1]);
    Window_Remove(&param0->unk_F9C[0]);
    Window_Remove(&param0->bottomInstructionWindow);
    Window_Remove(&param0->unk_F8C);
    Window_Remove(&param0->unk_F7C);
}

static void ov94_022401E0(GTSApplicationState *param0)
{
    param0->selectPokemonBoxName = Strbuf_Init(9 * 2, HEAP_ID_62);
    param0->genericMessageBuffer = Strbuf_Init(90 * 2, HEAP_ID_62);

    if (param0->screenArgument == SCREEN_ARGUMENT_5) {
        param0->title = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, GTS_Text_ChooseYourOfferPokemon);
    } else if (param0->screenArgument == SCREEN_ARGUMENT_6) {
        param0->title = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, GTS_Text_ChooseYourListedPokemon);
    }

    param0->unk_BA8 = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, GTS_Text_CancelPokemonSelection);

    if (param0->unk_112 == 30) {
        param0->unk_112 = 0;
    }

    param0->boxCriteria = Heap_Alloc(HEAP_ID_62, sizeof(GTSBoxPokemonCriteria));
}

static void ov94_02240268(GTSApplicationState *param0)
{
    Heap_Free(param0->boxCriteria);
    Strbuf_Free(param0->selectPokemonBoxName);
    Strbuf_Free(param0->genericMessageBuffer);
    Strbuf_Free(param0->unk_BA8);
    Strbuf_Free(param0->title);
}

static int ov94_022402A8(GTSApplicationState *param0)
{
    if (IsScreenFadeDone()) {
        param0->currentScreenInstruction = 1;
    }

    return 3;
}

static const u8 Unk_ov94_02245F54[][4] = {
    { 0x1F, 0x6, 0x5, 0x1 },
    { 0x1F, 0x7, 0x0, 0x2 },
    { 0x1F, 0x8, 0x1, 0x3 },
    { 0x1F, 0x9, 0x2, 0x4 },
    { 0x1F, 0xA, 0x3, 0x5 },
    { 0x1F, 0xB, 0x4, 0x0 },
    { 0x0, 0xC, 0xB, 0x7 },
    { 0x1, 0xD, 0x6, 0x8 },
    { 0x2, 0xE, 0x7, 0x9 },
    { 0x3, 0xF, 0x8, 0xA },
    { 0x4, 0x10, 0x9, 0xB },
    { 0x5, 0x11, 0xA, 0x6 },
    { 0x6, 0x12, 0x11, 0xD },
    { 0x7, 0x13, 0xC, 0xE },
    { 0x8, 0x14, 0xD, 0xF },
    { 0x9, 0x15, 0xE, 0x10 },
    { 0xA, 0x16, 0xF, 0x11 },
    { 0xB, 0x17, 0x10, 0xC },
    { 0xC, 0x18, 0x17, 0x13 },
    { 0xD, 0x19, 0x12, 0x14 },
    { 0xE, 0x1A, 0x13, 0x15 },
    { 0xF, 0x1B, 0x14, 0x16 },
    { 0x10, 0x1C, 0x15, 0x17 },
    { 0x11, 0x1D, 0x16, 0x12 },
    { 0x12, 0x1F, 0x1E, 0x19 },
    { 0x13, 0x1F, 0x18, 0x1A },
    { 0x14, 0x1F, 0x19, 0x1B },
    { 0x15, 0x1F, 0x1A, 0x1C },
    { 0x16, 0x1F, 0x1B, 0x1D },
    { 0x17, 0x1F, 0x1C, 0x1E },
    { 0x1E, 0x1E, 0x1D, 0x18 },
    { 0x1A, 0x2, 0x63, 0x65 }
};

static int ov94_022402BC(GTSApplicationState *param0)
{
    ov94_022404F0(param0);

    if (param0->screenArgument == SCREEN_ARGUMENT_5) { // from main menu
        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
            param0->currentScreenInstruction = 2;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (param0->unk_112 == 30) {
                GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
                param0->currentScreenInstruction = 2;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (param0->unk_112 != 31) {
                    Sound_PlayEffect(SEQ_SE_CONFIRM);

                    switch (ov94_022412F4(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112)) {
                    case 1: // a pokemon exists
                        if (ov94_0224121C(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112)) {
                            StringTemplate_SetNickname(param0->stringTemplate, 0, ov94_022411DC(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112));
                            ov94_02240D58(param0, pl_msg_00000671_00022, TEXT_SPEED_FAST, 0, 0xf0f, 0);
                            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 3, 7);
                        } else {
                            ov94_02240D58(param0, GTS_Text_Error_PokemonCannotBeOffered, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
                        }
                        break;
                    case 2: // is egg
                        ov94_02240D58(param0, pl_msg_00000671_00027, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                        GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
                        break;
                    }
                }
            }
        }
    } else if (param0->screenArgument == SCREEN_ARGUMENT_6) {
        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_SEARCH_LISTING, SCREEN_ARGUMENT_0);
            param0->currentScreenInstruction = 2;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
            if (param0->unk_112 == 30) {
                GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_SEARCH_LISTING, SCREEN_ARGUMENT_0);
                param0->currentScreenInstruction = 2;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (param0->unk_112 != 31) {
                    switch (ov94_022412F4(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112)) {
                    case 1: {
                        BoxPokemon *v0 = ov94_022411DC(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112);

                        if (ov94_02241384(v0, &param0->searchResults[param0->selectedSearchResult].unk_F0)) {
                            if (ov94_0224121C(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112)) {
                                StringTemplate_SetNickname(param0->stringTemplate, 0, v0);
                                ov94_02240D58(param0, 18, TEXT_SPEED_FAST, 0, 0xf0f, 0);
                                GTSApplication_SetCurrentAndNextScreenInstruction(param0, 3, 9);
                                Sound_PlayEffect(SEQ_SE_CONFIRM);
                            } else {
                                ov94_02240D58(param0, 26, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                                GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
                            }
                        } else {
                            Sound_PlayEffect(SEQ_SE_CONFIRM);
                        }
                    } break;
                    case 2:
                    case 0:
                        Sound_PlayEffect(SEQ_SE_CONFIRM);
                        break;
                    }
                }
            }
        }
    }

    return 3;
}

static void ov94_022404F0(GTSApplicationState *param0)
{
    int v0 = 0, v1 = 0, v2 = 0;

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        v1 = 1;
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        v1 = 2;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        v1 = 3;
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        v1 = 4;
    }

    if (v1 != 0) {
        v2 = Unk_ov94_02245F54[param0->unk_112][v1 - 1];

        if (v2 != param0->unk_112) {
            if ((v2 == 99) || (v2 == 101)) {
                param0->selectedBoxId = ov94_022405CC(param0->selectedBoxId, 19, v2 - 100);
                ov94_02240FA0(param0, param0->selectedBoxId);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                v0 = 1;
                param0->unk_112 = v2;
            }
        }
    }

    if (v0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        GTSApplication_SetSpritePosition(param0->cursorSprite, Unk_ov94_02245ED4[param0->unk_112][0], Unk_ov94_02245ED4[param0->unk_112][1]);
    }

    if ((param0->unk_112 == 31) || ((param0->unk_112 >= 0) && (param0->unk_112 <= 5))) {
        Sprite_SetExplicitPriority(param0->cursorSprite, 0);
    } else {
        Sprite_SetExplicitPriority(param0->cursorSprite, 1);
    }
}

static int ov94_022405CC(int param0, int param1, int param2)
{
    param0 += param2;

    if (param0 < 0) {
        return param1 - 1;
    }

    if (param0 == param1) {
        return 0;
    }

    return param0;
}

static int ov94_022405DC(GTSApplicationState *param0)
{
    MenuTemplate v0;

    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 3;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    param0->unk_10CC = StringList_New(3, HEAP_ID_62);

    StringList_AddFromMessageBank(param0->unk_10CC, param0->gtsMessageLoader, GTS_Text_Option_Summary, 1);
    StringList_AddFromMessageBank(param0->unk_10CC, param0->gtsMessageLoader, GTS_Text_Option_Offer, 2);
    StringList_AddFromMessageBank(param0->unk_10CC, param0->gtsMessageLoader, GTS_Text_Option_Cancel, 3);

    v0.choices = param0->unk_10CC;
    v0.window = &param0->unk_F9C[0];

    Window_DrawStandardFrame(&param0->unk_F9C[0], 1, 1 + (18 + 12), 11);

    param0->unk_10D4 = Menu_NewAndCopyToVRAM(&v0, 9, 0, 0, 62, PAD_BUTTON_B);
    param0->currentScreenInstruction = 8;

    return 3;
}

static int ov94_02240688(GTSApplicationState *param0)
{
    BoxPokemon *v0;

    switch (Menu_ProcessInput(param0->unk_10D4)) {
    case 1:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        param0->currentScreenInstruction = 2;
        GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_POKEMON_SUMMARY, SCREEN_ARGUMENT_5);
        break;
    case 2:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);

        v0 = ov94_022411DC(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112);

        if (BoxPokemon_HasUnusedRibbons(v0)) {
            ov94_02240D58(param0, 37, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
        } else if (BoxPokemon_FormNotInDP(v0)) {
            ov94_02240D58(param0, 170, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
        } else if (BoxPokemon_HeldItemNotInDP(v0)) {
            ov94_02240D58(param0, 171, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
        } else {
            int v1 = 0;

            if (GTSApplication_IsBoxIDParty(param0->selectedBoxId)) {
                Pokemon *v2;

                v2 = Party_GetPokemonBySlotIndex(param0->playerData->party, param0->unk_112);

                if (Pokemon_GetValue(v2, MON_DATA_BALL_CAPSULE_ID, NULL)) {
                    v1 = 1;
                    param0->currentScreenInstruction = 14;
                }
            }

            if (v1 == 0) {
                param0->unk_114 = ov94_022411DC(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112);
                param0->currentScreenInstruction = 2;

                GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_DEPOSIT, SCREEN_ARGUMENT_0);
            }
        }
        break;
    case 3:
    case 0xfffffffe:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->bottomInstructionWindow, 0);
        param0->currentScreenInstruction = 1;
        break;
    }

    return 3;
}

static int ov94_02240830(GTSApplicationState *param0)
{
    MenuTemplate v0;

    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 3;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    param0->unk_10CC = StringList_New(3, HEAP_ID_62);

    StringList_AddFromMessageBank(param0->unk_10CC, param0->gtsMessageLoader, 84, 1);
    StringList_AddFromMessageBank(param0->unk_10CC, param0->gtsMessageLoader, 85, 2);
    StringList_AddFromMessageBank(param0->unk_10CC, param0->gtsMessageLoader, 86, 3);

    v0.choices = param0->unk_10CC;
    v0.window = &param0->unk_F9C[0];

    Window_FillTilemap(v0.window, 0xf0f);
    Window_DrawStandardFrame(&param0->unk_F9C[0], 1, 1 + (18 + 12), 11);

    param0->unk_10D4 = Menu_NewAndCopyToVRAM(&v0, 9, 0, 0, 62, PAD_BUTTON_B);
    param0->currentScreenInstruction = 10;

    return 3;
}

static int ov94_022408E8(GTSApplicationState *param0)
{
    BoxPokemon *boxMon;

    switch (Menu_ProcessInput(param0->unk_10D4)) {
    case 1:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        param0->currentScreenInstruction = 2;
        GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_POKEMON_SUMMARY, SCREEN_ARGUMENT_6);
        break;
    case 2:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);

        boxMon = ov94_022411DC(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112);

        if (BoxPokemon_HasUnusedRibbons(boxMon)) {
            ov94_02240D58(param0, 37, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
        } else if (BoxPokemon_FormNotInDP(boxMon)) {
            ov94_02240D58(param0, 170, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
        } else if (BoxPokemon_HeldItemNotInDP(boxMon)) {
            ov94_02240D58(param0, 171, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
        } else {
            int v1 = 0;

            if (GTSApplication_IsBoxIDParty(param0->selectedBoxId)) {
                Pokemon *v2;

                v2 = Party_GetPokemonBySlotIndex(param0->playerData->party, param0->unk_112);

                if (Pokemon_GetValue(v2, MON_DATA_BALL_CAPSULE_ID, NULL)) {
                    v1 = 1;
                    param0->currentScreenInstruction = 11;
                }
            }

            if (v1 == 0) {
                ov94_02240BB0(param0);
            }
        }
        break;
    case 3:
    case 0xfffffffe:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->bottomInstructionWindow, 0);
        param0->currentScreenInstruction = 1;
        break;
    }

    return 3;
}

static int ov94_02240A6C(GTSApplicationState *param0)
{
    if ((param0->nextScreen == GTS_SCREEN_WFC_INIT) || (param0->nextScreen == GTS_SCREEN_POKEMON_SUMMARY)) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
        param0->fadeBothScreens = 1;
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    param0->currentScreenInstruction = 0;

    return 4;
}

static int ov94_02240AC4(GTSApplicationState *param0)
{
    param0->yesNoMenu = GTSApplication_CreateYesNoMenu(param0->bgConfig, 15, (((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6);
    param0->currentScreenInstruction = 6;

    return 3;
}

static int ov94_02240AE8(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->currentScreenInstruction = 0;
        } else {
            param0->currentScreenInstruction = 2;
            GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
        }
    }

    return 3;
}

static int ov94_02240B20(GTSApplicationState *param0)
{
    ov94_02240D58(param0, 25, TEXT_SPEED_FAST, 0, 0xf0f, 1);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 3, 12);

    return 3;
}

static int ov94_02240B4C(GTSApplicationState *param0)
{
    param0->yesNoMenu = GTSApplication_CreateYesNoMenu(param0->bgConfig, 13, (((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6);
    param0->currentScreenInstruction = 13;

    return 3;
}

static int ov94_02240B70(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            Window_EraseMessageBox(&param0->unk_109C, 0);
            param0->currentScreenInstruction = 1;
        } else {
            ov94_02240BB0(param0);
        }
    }

    return 3;
}

static int ov94_02240BB0(GTSApplicationState *param0)
{
    Pokemon *mon = (Pokemon *)param0->searchResults[param0->selectedSearchResult].pokemon.bytes;

    if (Pokemon_IsHoldingMail(mon) && (param0->selectedBoxId != MAX_PC_BOXES)) {
        if (Party_GetCurrentCount(param0->playerData->party) == MAX_PARTY_SIZE) {
            ov94_02240D58(param0, 28, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            GTSApplication_SetCurrentAndNextScreenInstruction(param0, 4, 1);
            return 0;
        }
    }

    param0->unk_114 = ov94_022411DC(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112);
    param0->currentScreenInstruction = 2;
    param0->fadeBothScreens = 1;

    GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_9);
    ov94_022413BC(&param0->receivedListing, param0);

    param0->unk_118 = 0;

    return 1;
}

static int ov94_02240C58(GTSApplicationState *param0)
{
    ov94_02240D58(param0, 25, TEXT_SPEED_FAST, 0, 0xf0f, 1);
    GTSApplication_SetCurrentAndNextScreenInstruction(param0, 3, 15);

    return 3;
}

static int ov94_02240C84(GTSApplicationState *param0)
{
    param0->yesNoMenu = GTSApplication_CreateYesNoMenu(param0->bgConfig, 13, (((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6);
    param0->currentScreenInstruction = 16;

    return 3;
}

static int ov94_02240CA8(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            Window_EraseMessageBox(&param0->unk_109C, 0);
            param0->currentScreenInstruction = 1;
        } else {
            param0->unk_114 = ov94_022411DC(param0->playerData->party, param0->playerData->pcBoxes, param0->selectedBoxId, param0->unk_112);
            param0->currentScreenInstruction = 2;
            GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_DEPOSIT, SCREEN_ARGUMENT_0);
        }
    }

    return 3;
}

static int ov94_02240D08(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->textPrinter) == 0) {
        param0->currentScreenInstruction = param0->nextScreenInstruction;
    }

    return 3;
}

static int ov94_02240D28(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->textPrinter) == 0) {
        Window_EraseMessageBox(&param0->unk_109C, 0);
        param0->currentScreenInstruction = param0->nextScreenInstruction;
    }

    return 3;
}

static void ov94_02240D58(GTSApplicationState *param0, int param1, int param2, int param3, u16 param4, int param5)
{
    Window *v0;
    Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, param1);
    StringTemplate_Format(param0->stringTemplate, param0->genericMessageBuffer, v1);

    if (param5 == 0) {
        v0 = &param0->bottomInstructionWindow;
    } else {
        v0 = &param0->unk_109C;
    }

    Window_FillTilemap(v0, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(v0, 0, 1, 10);

    param0->textPrinter = Text_AddPrinterWithParams(v0, FONT_MESSAGE, param0->genericMessageBuffer, 0, 0, param2, NULL);

    Strbuf_Free(v1);
}

void *ov94_02240DD0(NARC *param0, u32 param1, NNSG2dCharacterData **param2, u32 param3)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0, param1, param3);

    if (v0 != NULL) {
        if (NNS_G2dGetUnpackedBGCharacterData(v0, param2) == 0) {
            Heap_Free(v0);
            return NULL;
        }
    }

    return v0;
}

static void ov94_02240DF8(int param0, int param1, int param2, int param3, Sprite *param4, NARC *param5, PokemonIcon *param6)
{
    u8 *v0;
    u8 *v1;
    NNSG2dCharacterData *v2;

    v1 = ov94_02240DD0(param5, PokeIconSpriteIndex(param0, param2, param1), &v2, 62);

    MI_CpuCopyFast(v2->pRawData, param6->unk_0C, (4 * 4) * 0x20);

    param6->unk_00 = (12 + param3 * (4 * 4)) * 0x20;
    param6->sprite = param4;
    param6->paletteIndex = PokeIconPaletteIndex(param0, param1, param2) + 3;

    Heap_Free(v1);
}

static void ov94_02240E50(BoxPokemon *boxMon, GTSPokemonCriteria *param1)
{
    param1->level = BoxPokemon_GetLevel(boxMon);
}

static void ov94_02240E5C(void *param0)
{
    GTSApplicationState *v0 = param0;
    int v1;
    PokemonIcon *v2 = v0->selectPokemonIconHeapPtr;

    for (v1 = 0; v1 < 30; v1++, v2++) {
        if (v2->sprite) {
            DC_FlushRange(v2->unk_0C, (4 * 4) * 0x20);
            GX_LoadOBJ(v2->unk_0C, v2->unk_00, (4 * 4) * 0x20);

            Sprite_SetExplicitPalette(v2->sprite, v2->paletteIndex);
        }
    }

    Heap_Free(v0->selectPokemonIconHeapPtr);
}

static void ov94_02240EAC(BoxPokemon *boxMon, Sprite *param1, Sprite *param2, u16 *species, int param4, NARC *param5, GTSPokemonCriteria *param6, PokemonIcon *param7)
{
    int v0, item, isEgg, form;

    BoxPokemon_EnterDecryptionContext(boxMon);

    v0 = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL);
    *species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);

    form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);
    isEgg = BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL);
    item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);

    param6->species = *species;
    param6->gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL) + 1;

    if (isEgg) {
        param6->level = 0;
    }

    BoxPokemon_ExitDecryptionContext(boxMon, 1);

    if (v0) {
        ov94_02240DF8(*species, form, isEgg, param4, param1, param5, param7);
        Sprite_SetDrawFlag(param1, TRUE);

        if (item != 0) {
            Sprite_SetDrawFlag(param2, TRUE);

            if (Item_IsMail(item)) {
                Sprite_SetAnim(param2, 41);
            } else {
                Sprite_SetAnim(param2, 40);
            }
        } else {
            Sprite_SetDrawFlag(param2, FALSE);
        }
    } else {
        Sprite_SetDrawFlag(param1, FALSE);
        Sprite_SetDrawFlag(param2, FALSE);

        param7->sprite = NULL;
    }
}

static void ov94_02240FA0(GTSApplicationState *appState, int boxID)
{
    u16 species[MAX_MONS_PER_BOX], i;

    PCBoxes *pcBoxes = appState->playerData->pcBoxes;
    NARC *v6; // compiler
    PokemonIcon *icons;

    appState->selectPokemonIconHeapPtr = icons = Heap_AllocAtEnd(HEAP_ID_APPLICATION, sizeof(PokemonIcon) * MAX_MONS_PER_BOX);
    v6 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_62);

    if ((boxID >= 0) && (boxID < MAX_PC_BOXES)) {
        for (i = 0; i < MAX_MONS_PER_BOX; i++) {
            ov94_02240E50(PCBoxes_GetBoxMonAt(pcBoxes, boxID, i), &appState->boxCriteria->criteria[i]);
        }

        for (i = 0; i < MAX_MONS_PER_BOX; i++) {
            appState->boxCriteria->criteria[i].species = SPECIES_NONE;
            ov94_02240EAC(PCBoxes_GetBoxMonAt(pcBoxes, boxID, i), appState->unk_E28[i], appState->unk_EA0[i], &species[i], i, v6, &appState->boxCriteria->criteria[i], &icons[i]);

            // "in party" shows as its own box, so when in a box context we want to hide the party
            if (i < MAX_PARTY_SIZE) {
                Sprite_SetDrawFlag(appState->selectPokemonPartySprites[i], 0);
            }
        }

        PCBoxes_BufferBoxName(pcBoxes, boxID, appState->selectPokemonBoxName);
    } else {
        int partyCount = Party_GetCurrentCount(appState->playerData->party);

        for (i = 0; i < partyCount; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(appState->playerData->party, i);
            BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

            ov94_02240E50(boxMon, &appState->boxCriteria->criteria[i]);
            ov94_02240EAC(boxMon, appState->unk_E28[i], appState->unk_EA0[i], &species[i], i, v6, &appState->boxCriteria->criteria[i], &icons[i]);

            if (Pokemon_GetValue(mon, MON_DATA_BALL_CAPSULE_ID, NULL)) {
                Sprite_SetDrawFlag(appState->selectPokemonPartySprites[i], 1);
            } else {
                Sprite_SetDrawFlag(appState->selectPokemonPartySprites[i], 0);
            }
        }

        for (; i < MAX_MONS_PER_BOX; i++) {
            appState->boxCriteria->criteria[i].species = SPECIES_NONE;
            Sprite_SetDrawFlag(appState->unk_E28[i], 0);
            Sprite_SetDrawFlag(appState->unk_EA0[i], 0);
            icons[i].sprite = NULL;

            if (i < MAX_PARTY_SIZE) {
                Sprite_SetDrawFlag(appState->selectPokemonPartySprites[i], 0);
            }
        }

        MessageLoader_GetStrbuf(appState->gtsMessageLoader, pl_msg_00000671_00089, appState->selectPokemonBoxName);
    }

    NARC_dtor(v6);
    Window_FillTilemap(&appState->unk_F8C, 0x0);

    ov94_02245900(&appState->unk_F8C, appState->selectPokemonBoxName, 0, 5, 1, TEXT_COLOR(1, 2, 0));

    if (appState->screenArgument == SCREEN_ARGUMENT_6) {
        GTSApplication_SelectPokemon_DarkenNonMatchingMons(appState->boxCriteria->criteria, appState->unk_E28, &appState->searchResults[appState->selectedSearchResult].unk_F0, icons);
    }

    appState->updateBoxPalettesFunc = ov94_02240E5C;
}

BOOL GTSApplication_IsBoxIDParty(int boxID)
{
    return boxID == MAX_PC_BOXES;
}

BoxPokemon *ov94_022411DC(Party *party, PCBoxes *pcBoxes, int boxID, int slot)
{
    if (GTSApplication_IsBoxIDParty(boxID)) {
        if (slot > (Party_GetCurrentCount(party) - 1)) {
            return NULL;
        }

        return Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(party, slot));
    }

    return PCBoxes_GetBoxMonAt(pcBoxes, boxID, slot);
}

static BOOL ov94_0224121C(Party *party, PCBoxes *pcBoxes, int boxID, int param3)
{
    if (GTSApplication_IsBoxIDParty(boxID)) {
        if (Party_GetCurrentCount(party) < 2) {
            return FALSE;
        }
    }

    return TRUE;
}

static const u16 sUnusedRibbons[] = {
    MON_DATA_MARINE_RIBBON,
    MON_DATA_LAND_RIBBON,
    MON_DATA_SKY_RIBBON,
    MON_DATA_RED_RIBBON,
    MON_DATA_GREEN_RIBBON,
    MON_DATA_BLUE_RIBBON,
    MON_DATA_FESTIVAL_RIBBON,
    MON_DATA_CARNIVAL_RIBBON,
    MON_DATA_CLASSIC_RIBBON,
    MON_DATA_PREMIER_RIBBON,
};

static int BoxPokemon_HasUnusedRibbons(BoxPokemon *boxMon)
{
    int count = 0;
    int reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);

    for (int i = 0; i < (int)NELEMS(sUnusedRibbons); i++) {
        count += BoxPokemon_GetValue(boxMon, sUnusedRibbons[i], NULL);
    }

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    if (count) {
        return TRUE;
    }

    return FALSE;
}

static BOOL BoxPokemon_FormNotInDP(BoxPokemon *boxMon)
{
    int reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    int species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    int form = BoxPokemon_GetValue(boxMon, MON_DATA_FORM, NULL);

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    if (form > 0) {
        switch (species) {
        case SPECIES_GIRATINA:
        case SPECIES_SHAYMIN:
        case SPECIES_ROTOM:
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL BoxPokemon_HeldItemNotInDP(BoxPokemon *boxMon)
{
    int reencrypt = BoxPokemon_EnterDecryptionContext(boxMon);
    int item = BoxPokemon_GetValue(boxMon, MON_DATA_HELD_ITEM, NULL);

    BoxPokemon_ExitDecryptionContext(boxMon, reencrypt);

    switch (item) {
    case ITEM_GRISEOUS_ORB:
        return TRUE;
    }

    return FALSE;
}

static int ov94_022412F4(Party *param0, PCBoxes *pcBoxes, int param2, int param3)
{
    BoxPokemon *boxMon = ov94_022411DC(param0, pcBoxes, param2, param3);

    if (boxMon == NULL) {
        return 0;
    }

    if (!BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES_EXISTS, NULL)) {
        return 0;
    }

    if (BoxPokemon_GetValue(boxMon, MON_DATA_SANITY_IS_EGG, NULL)) {
        return 2;
    }

    return 1;
}

static BOOL GTSApplication_SelectPokemon_MatchesRequirements(GTSPokemonCriteria *criteria, GTSPokemonRequirements *requirements)
{
    if (criteria->species != requirements->species) {
        return FALSE;
    }

    if (requirements->gender != 3) {
        if (requirements->gender != criteria->gender) {
            return FALSE;
        }
    }

    if (criteria->level == 0) {
        return FALSE;
    }

    if (requirements->level != 0) {
        if (requirements->level > criteria->level) {
            return FALSE;
        }
    }

    if (requirements->level2 != 0) {
        if (requirements->level2 < criteria->level) {
            return FALSE;
        }
    }

    return TRUE;
}

static int ov94_02241384(BoxPokemon *boxMon, GTSPokemonRequirements *param1)
{
    GTSPokemonCriteria v0;

    v0.species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    v0.gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL) + 1;
    v0.level = BoxPokemon_GetLevel(boxMon);

    return GTSApplication_SelectPokemon_MatchesRequirements(&v0, param1);
}

static void ov94_022413BC(GTSPokemonListing *param0, GTSApplicationState *param1)
{
    GTSPokemonCriteria v0;
    GTSPokemonRequirements v1;
    BoxPokemon *boxMon;

    v0.species = BoxPokemon_GetValue(param1->unk_114, MON_DATA_SPECIES, NULL);
    v0.gender = BoxPokemon_GetValue(param1->unk_114, MON_DATA_GENDER, NULL) + 1;
    v0.level = BoxPokemon_GetLevel(param1->unk_114);

    param0->unk_EC = v0;

    ov94_022425A8(param0, param1);

    boxMon = Pokemon_GetBoxPokemon((Pokemon *)param1->searchResults[param1->selectedSearchResult].pokemon.bytes);

    v1.species = BoxPokemon_GetValue(boxMon, MON_DATA_SPECIES, NULL);
    v1.gender = BoxPokemon_GetValue(boxMon, MON_DATA_GENDER, NULL) + 1;
    v1.level = 0;
    v1.level2 = 0;

    param0->unk_F0 = v1;
}

static void GTSApplication_SelectPokemon_DarkenNonMatchingMons(GTSPokemonCriteria *criteria, Sprite **param1, GTSPokemonRequirements *requirements, PokemonIcon *icons)
{
    UNUSED(param1);

    for (int i = 0; i < MAX_MONS_PER_BOX; i++) {
        if (criteria[i].species != SPECIES_NONE) {
            if (GTSApplication_SelectPokemon_MatchesRequirements(&criteria[i], requirements) == FALSE) {
                icons[i].paletteIndex += 3; // greyed out
            }
        }
    }
}

BOOL Pokemon_IsHoldingMail(Pokemon *mon)
{
    if (Item_IsMail(Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL))) {
        return TRUE;
    }

    return FALSE;
}
