#include "applications/pokedex/pokedex_entry_display.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "text.h"
#include "unk_02012744.h"

#include "res/graphics/pokedex/zukan.naix.h"
#include "res/text/bank/pokedex.h"

// Type icon cell 17 displays the background box in the Pokedex sprite sheet
#define POKEDEX_TYPE_ICON_BACKGROUND_BOX_CELL 0x11

typedef struct {
    int *displayWorkData;  // Work data pointer set from ov21_021D138C
    PokedexSortData *sortData;  // Pokemon sort/listing data
    int displayPositionX;  // X coordinate for display position animation
    int displayPositionY;  // Y coordinate for display position animation
    const PokedexScreenManager *screenManager;  // Screen manager reference
    int animationMode;  // Display animation mode (0=position+blend, 1=blend, 2=position)
    int languageID;  // Selected language for text display
    int displayAllInfoFlag;  // Flag to display all info or selective info
} PokedexEntryDisplayState;

typedef struct {
    Sprite *displayedIconSprite;
    PokedexTextData *textData;
    SpriteResource *spriteResources[4];
    SpriteTransformation transformMain;
    SpriteTransformation transformSub;
} PokedexEntryDisplayGraphics;

static PokedexEntryDisplayState *PokedexEntryDisplay_AllocateState(enum HeapID heapID, PokedexApp *param1);
static PokedexGraphicData **PokedexEntryDisplay_AllocateGraphicsData(enum HeapID heapID, PokedexApp *param1);
static void PokedexEntryDisplay_FreeState(PokedexEntryDisplayState *param0);
static void PokedexEntryDisplay_FreeGraphicsData(PokedexGraphicData **param0);
static int PokedexEntryDisplay_GetNumScreenStates(void);
static int PokedexEntryDisplay_ProcessInitData(PokedexDataManager *dataMan, void *data);
static int PokedexEntryDisplay_ProcessUpdateData(PokedexDataManager *dataMan, void *data);
static int PokedexEntryDisplay_ProcessFinalizeData(PokedexDataManager *dataMan, void *data);
static int PokedexEntryDisplay_ProcessInitGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int PokedexEntryDisplay_ProcessUpdateGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int PokedexEntryDisplay_ProcessFinalizeGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void PokedexEntryDisplay_InitBlendMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3);
static BOOL PokedexEntryDisplay_UpdateBlendMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3);
static void PokedexEntryDisplay_InitPositionBlendMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3);
static BOOL PokedexEntryDisplay_UpdatePositionBlendMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3);
static void PokedexEntryDisplay_InitPositionMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3);
static BOOL PokedexEntryDisplay_UpdatePositionMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3);
static void PokedexEntryDisplay_BlendPokemonSprite(PokedexGraphicData **param0);
static void PokedexEntryDisplay_SetXluMode(PokedexEntryDisplayGraphics *param0);
static void PokedexEntryDisplay_SetNormalMode(PokedexEntryDisplayGraphics *param0);
static void PokedexEntryDisplay_InitPokemonTransform(PokedexEntryDisplayGraphics *param0, int param1, int param2, int param3);
static BOOL PokedexEntryDisplay_UpdatePokemonTransform(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1);
static void PokedexEntryDisplay_InitLabelTransform(PokedexEntryDisplayGraphics *param0);
static BOOL PokedexEntryDisplay_UpdateLabelTransform(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1);
static void PokedexEntryDisplay_SetupGraphics(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, enum HeapID heapID);
static void PokedexEntryDisplay_CleanupGraphics(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1);
static void PokedexEntryDisplay_LoadBackground(PokedexGraphicData **param0, enum HeapID heapID);
static void PokedexEntryDisplay_RenderAllText(PokedexGraphicData **param0, const PokedexEntryDisplayState *param1, enum HeapID heapID);
static void PokedexEntryDisplay_RenderDexEntry(PokedexGraphicData **param0, int param1, int param2, int param3, int param4);
static int LanguageMessage(int param0);
static void PokedexEntryDisplay_RenderNameNumber(PokedexGraphicData **param0, int param1, int param2, int param3);
static void PokedexEntryDisplay_RenderCategory(PokedexGraphicData **param0, int param1, int param2, int param3);
static void PokedexEntryDisplay_CreateCategoryBox(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, int param3);
static void PokedexEntryDisplay_DeleteCategoryBox(PokedexEntryDisplayGraphics *param0);
static Window *PokedexEntryDisplay_CreateCategoryWindow(PokedexGraphicData **param0, int param1, int param2);
static void PokedexEntryDisplay_LoadTypeIconSprites(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, int param2);
static void PokedexEntryDisplay_UnloadTypeIconSprites(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1);
static void PokedexEntryDisplay_RenderEntryName(PokedexGraphicData **param0, const PokedexEntryDisplayState *param1, int param2);
static void PokedexEntryDisplay_ConfigureLabel(PokedexGraphicData **param0);
static void PokedexEntryDisplay_ShowPokemonSprite(PokedexGraphicData **param0, const PokedexEntryDisplayState *param1);
static void PokedexEntryDisplay_HidePokemonSprite(PokedexGraphicData **param0);

void PokedexEntryDisplay_InitScreen(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    // Initialize the Pokedex type icon screen with data manager and graphics processor
    PokedexEntryDisplayState *v0;
    PokedexGraphicData **v1;

    v0 = PokedexEntryDisplay_AllocateState(heapID, param1);
    v1 = PokedexEntryDisplay_AllocateGraphicsData(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = NULL;
    param0->numStates = PokedexEntryDisplay_GetNumScreenStates();
    param0->dataFunc[0] = PokedexEntryDisplay_ProcessInitData;
    param0->dataFunc[1] = PokedexEntryDisplay_ProcessUpdateData;
    param0->dataFunc[2] = PokedexEntryDisplay_ProcessFinalizeData;
    param0->graphicsFunc[0] = PokedexEntryDisplay_ProcessInitGraphics;
    param0->graphicsFunc[1] = PokedexEntryDisplay_ProcessUpdateGraphics;
    param0->graphicsFunc[2] = PokedexEntryDisplay_ProcessFinalizeGraphics;
}

void PokedexEntryDisplay_DeinitScreen(PokedexScreenManager *param0)
{
    // Clean up and free resources allocated by PokedexEntryDisplay_InitScreen
    PokedexEntryDisplay_FreeState(param0->pageData);
    PokedexEntryDisplay_FreeGraphicsData(param0->pageGraphics);
}

void PokedexEntryDisplay_SetDisplayPosition(PokedexScreenManager *param0, int param1, int param2)
{
    // Set the display position coordinates for the type icon animation
    PokedexEntryDisplayState *v0 = param0->pageData;

    v0->displayPositionX = param1;
    v0->displayPositionY = param2;
}

void PokedexEntryDisplay_SetAnimationMode(PokedexScreenManager *param0, int param1)
{
    // Set which animation mode to use (0=position+blend, 1=blend, 2=position)
    PokedexEntryDisplayState *v0 = param0->pageData;
    v0->animationMode = param1;
}

BOOL PokedexEntryDisplay_GetScreenStateCount(PokedexScreenManager *param0)
{
    // Get the number of screen states (always returns 0 for this module)
    PokedexEntryDisplayState *v0 = param0->pageData;
    return 0;
}

BOOL PokedexEntryDisplay_SetDisplayMode(PokedexScreenManager *param0, int param1)
{
    // Set display mode (whether to show all info or selective display)
    PokedexEntryDisplayState *v0 = param0->pageData;
    BOOL v1 = 1;

    if (param1 == 1) {
        param1 = 0;
        v1 = 0;
    }

    v0->displayAllInfoFlag = param1;

    return v1;
}

void PokedexEntryDisplay_SetLanguage(PokedexScreenManager *param0, int param1)
{
    // Set the language for text display in the type icon display
    PokedexEntryDisplayState *v0 = param0->pageData;

    v0->languageID = param1;
    v0->displayAllInfoFlag = 0;
}

static PokedexEntryDisplayState *PokedexEntryDisplay_AllocateState(enum HeapID heapID, PokedexApp *param1)
{
    PokedexEntryDisplayState *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(PokedexEntryDisplayState));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexEntryDisplayState));

    v0->displayWorkData = ov21_021D138C(param1);
    v0->sortData = PokedexMain_GetSortData(param1);

    v1 = ov21_021D1410(param1, 5);

    v0->screenManager = v1;

    return v0;
}

static PokedexGraphicData **PokedexEntryDisplay_AllocateGraphicsData(enum HeapID heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData *));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData *));

    *v0 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static void PokedexEntryDisplay_FreeState(PokedexEntryDisplayState *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void PokedexEntryDisplay_FreeGraphicsData(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static int PokedexEntryDisplay_GetNumScreenStates(void)
{
    return 0;
}

static int PokedexEntryDisplay_ProcessInitData(PokedexDataManager *dataMan, void *data)
{
    return 1;
}

static int PokedexEntryDisplay_ProcessUpdateData(PokedexDataManager *dataMan, void *data)
{
    PokedexEntryDisplayState *v0 = data;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    return 0;
}

static int PokedexEntryDisplay_ProcessFinalizeData(PokedexDataManager *dataMan, void *data)
{
    return 1;
}

static int PokedexEntryDisplay_ProcessInitGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexEntryDisplayState *v0 = data;
    PokedexGraphicData **v1 = graphics;
    PokedexEntryDisplayGraphics *v2 = graphicsMan->pageGraphics;
    BOOL v3;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(PokedexEntryDisplayGraphics));
        memset(graphicsMan->pageGraphics, 0, sizeof(PokedexEntryDisplayGraphics));
        graphicsMan->state++;
        break;
    case 1:
        PokedexEntryDisplay_SetupGraphics(v2, v1, v0, graphicsMan->heapID);

        switch (v0->animationMode) {
        case 0:
            PokedexEntryDisplay_InitPositionBlendMode(v2, v1, v0, 1);
            break;
        case 1:
            PokedexEntryDisplay_InitBlendMode(v2, v1, v0, 1);
            break;
        case 2:
            PokedexEntryDisplay_InitPositionMode(v2, v1, v0, 1);
            break;
        }

        graphicsMan->state++;
        break;

    case 2:
        switch (v0->animationMode) {
        case 0:
            v3 = PokedexEntryDisplay_UpdatePositionBlendMode(v2, v1, v0, 1);
            break;
        case 1:
            v3 = PokedexEntryDisplay_UpdateBlendMode(v2, v1, v0, 1);
            break;
        case 2:
            v3 = PokedexEntryDisplay_UpdatePositionMode(v2, v1, v0, 1);
            break;
        }

        if (v3) {
            graphicsMan->state++;
        }
        break;
    case 3:
        G2_BlendNone();
        return 1;
    default:
        break;
    }

    return 0;
}

static int PokedexEntryDisplay_ProcessUpdateGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    return 0;
}

static int PokedexEntryDisplay_ProcessFinalizeGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexEntryDisplayState *v0 = data;
    PokedexGraphicData **v1 = graphics;
    PokedexEntryDisplayGraphics *v2 = graphicsMan->pageGraphics;
    BOOL v3;

    switch (graphicsMan->state) {
    case 0:
        switch (v0->animationMode) {
        case 0:
            PokedexEntryDisplay_InitPositionBlendMode(v2, v1, v0, 0);
            break;
        case 1:
            PokedexEntryDisplay_InitBlendMode(v2, v1, v0, 0);
            break;
        case 2:
            PokedexEntryDisplay_InitPositionMode(v2, v1, v0, 0);
            break;
        }

        graphicsMan->state++;
        break;
    case 1:
        switch (v0->animationMode) {
        case 0:
            v3 = PokedexEntryDisplay_UpdatePositionBlendMode(v2, v1, v0, 0);
            break;
        case 1:
            v3 = PokedexEntryDisplay_UpdateBlendMode(v2, v1, v0, 0);
            break;
        case 2:
            v3 = PokedexEntryDisplay_UpdatePositionMode(v2, v1, v0, 0);
            break;
        }

        if (v3) {
            graphicsMan->state++;
        }
        break;
    case 2:
        PokedexEntryDisplay_CleanupGraphics(v2, v1);
        graphicsMan->state++;
        break;

    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static void PokedexEntryDisplay_SetupGraphics(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, enum HeapID heapID)
{
    PokedexEntryDisplay_RenderEntryName(param1, param2, heapID);
    PokedexEntryDisplay_ShowPokemonSprite(param1, param2);
    PokedexEntryDisplay_LoadTypeIconSprites(param0, param1, heapID);
    PokedexEntryDisplay_CreateCategoryBox(param0, param1, param2, heapID);
    PokedexEntryDisplay_LoadBackground(param1, heapID);
    PokedexEntryDisplay_RenderAllText(param1, param2, heapID);
}

static void PokedexEntryDisplay_CleanupGraphics(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1)
{
    PokedexEntryDisplay_DeleteCategoryBox(param0);
    Window_FillTilemap(&(*param1)->window, 0);

    PokedexEntryDisplay_UnloadTypeIconSprites(param0, param1);
    Bg_ClearTilemap((*param1)->bgConfig, 1);
}

static void PokedexEntryDisplay_LoadBackground(PokedexGraphicData **param0, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, entry_main_NCGR_lz, (*param0)->bgConfig, 3, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, info_main_NSCR_lz, TRUE, &v1, heapID);
    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, info_species_window_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, foreign_entry_window_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 16, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, foreign_summary_window_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 12, 8, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 3);
}

static void PokedexEntryDisplay_RenderAllText(PokedexGraphicData **param0, const PokedexEntryDisplayState *param1, enum HeapID heapID)
{
    String *v0 = String_Init(64, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);
    int species = PokedexSort_CurrentSpecies(param1->sortData);
    int entryID;
    int v4;

    if (PokedexSort_CurrentCaughtStatus(param1->sortData) != 2) {
        species = 0;
        GF_ASSERT(0);
    }

    entryID = LanguageMessage(param1->languageID);

    MessageLoader_GetString(pokedexMessageBank, entryID, v0);

    v4 = Font_CalcStringWidth(FONT_SYSTEM, v0, 0);
    v4 /= 2;

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, v0, 176 - v4, 72, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    String_Free(v0);
    MessageLoader_Free(pokedexMessageBank);

    PokedexEntryDisplay_RenderDexEntry(param0, heapID, species, param1->languageID, param1->displayAllInfoFlag);
    PokedexEntryDisplay_RenderNameNumber(param0, heapID, species, param1->languageID);
    PokedexEntryDisplay_RenderCategory(param0, heapID, species, param1->languageID);
}

static void PokedexEntryDisplay_RenderDexEntry(PokedexGraphicData **param0, int param1, int param2, int param3, int param4)
{
    String *v0 = PokedexText_DexEntry(param2, param3, param4, param1);
    u32 v1 = Font_CalcMaxLineWidth(FONT_SYSTEM, v0, 0);
    u32 v2 = (v1 < 240) ? 128 - v1 / 2 : 8;

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, v0, v2, 136, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}

static void PokedexEntryDisplay_RenderEntryName(PokedexGraphicData **param0, const PokedexEntryDisplayState *param1, int param2)
{
    PokedexMain_EntryNameNumber(*param0, param1->sortData, param2, PokedexSort_CurrentStatusIndex(param1->sortData), (172 * FX32_ONE), (32 * FX32_ONE));
    PokedexGraphics_SetSpeciesLabelPriority(*param0, 0);
}

static void PokedexEntryDisplay_ConfigureLabel(PokedexGraphicData **param0)
{
    PokedexGraphics_SetPokedexSpeciesLabelDraw(*param0, 0);
    PokedexGraphics_SetSpeciesLabelGXOamMode(*param0, GX_OAM_MODE_NORMAL);
}

static void PokedexEntryDisplay_ShowPokemonSprite(PokedexGraphicData **param0, const PokedexEntryDisplayState *param1)
{
    PokemonSprite *v0 = PokemonGraphics_GetPokemonChar(*param0);
    int species = PokedexSort_CurrentSpecies(param1->sortData);

    PokedexMain_DisplayPokemonSprite(*param0, param1->sortData, species, 2, 48, 72);
    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 0);
}

static void PokedexEntryDisplay_HidePokemonSprite(PokedexGraphicData **param0)
{
    PokemonSprite *v0 = PokemonGraphics_GetPokemonChar(*param0);

    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 1);
    PokemonSprite_ClearFade(v0);
}

static void PokedexEntryDisplay_LoadTypeIconSprites(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, int param2)
{
    PokedexGraphicData *v0 = *param1;
    NARC *v1 = PokedexGraphics_GetNARC(*param1);

    param0->spriteResources[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, type_icons_NCGR_lz, TRUE, type_icons_NCGR_lz + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0->spriteResources[0]);
    SpriteResource_ReleaseData(param0->spriteResources[0]);

    param0->spriteResources[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, type_icons_NCLR, FALSE, type_icons_NCLR + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->spriteResources[1]);
    SpriteResource_ReleaseData(param0->spriteResources[1]);

    param0->spriteResources[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, type_icons_cell_NCER_lz, TRUE, type_icons_cell_NCER_lz + 4000, 2, param2);
    param0->spriteResources[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, type_icons_anim_NANR_lz, TRUE, type_icons_anim_NANR_lz + 4000, 3, param2);
}

static void PokedexEntryDisplay_UnloadTypeIconSprites(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(param0->spriteResources[0]);
    SpriteTransfer_ResetPlttTransfer(param0->spriteResources[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->spriteResources[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->spriteResources[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->spriteResources[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->spriteResources[3]);
}

static void PokedexEntryDisplay_CreateCategoryBox(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, int param3)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;
    int species = PokedexSort_CurrentSpecies(param2->sortData);
    Window *v4;
    PokedexDisplayBox displayBox;
    SpriteResource *v6;

    SpriteResourcesHeader_Init(&v0, type_icons_NCGR_lz + 4000, type_icons_NCLR + 4000, type_icons_cell_NCER_lz + 4000, type_icons_anim_NANR_lz + 4000, 0xffffffff, 0xffffffff, FALSE, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = (192 * FX32_ONE);
    v1.position.y = (52 * FX32_ONE);

    param0->displayedIconSprite = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->displayedIconSprite, POKEDEX_TYPE_ICON_BACKGROUND_BOX_CELL);

    if (PokedexSort_CurrentCaughtStatus(param2->sortData) != 2) {
        species = 0;
    }

    v4 = PokedexEntryDisplay_CreateCategoryWindow(param1, species, param3);
    v6 = PokedexGraphics_GetSpeciesLabelSpriteResource(*param1, 1);

    displayBox.textMan = (*param1)->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v6, NULL);
    displayBox.sprite = param0->displayedIconSprite;
    displayBox.x = -78;
    displayBox.y = -8;
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 32 - 1;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = param3;
    displayBox.window = v4;

    param0->textData = PokedexTextManager_NextTextData(&displayBox);

    PokedexTextManager_FreeWindow(v4);
}

static Window *PokedexEntryDisplay_CreateCategoryWindow(PokedexGraphicData **param0, int param1, int param2)
{
    Window *v0 = PokedexTextManager_NewWindow((*param0)->textMan, 18, 2);
    String *v1 = PokedexText_Category(param1, GAME_LANGUAGE, param2);

    {
        u32 v2 = Font_CalcStringWidth(FONT_SUBSCREEN, v1, 0);
        u32 v3 = (v2 < 136) ? (136 - v2) / 2 : 0;
        PokedexTextManager_DisplayString((*param0)->textMan, v0, v1, v3, 0);
    }

    PokedexText_Free(v1);

    return v0;
}

static void PokedexEntryDisplay_DeleteCategoryBox(PokedexEntryDisplayGraphics *param0)
{
    Sprite_Delete(param0->displayedIconSprite);
    param0->displayedIconSprite = NULL;
    PokedexTextManager_FreeTextData(param0->textData);
}

static void PokedexEntryDisplay_InitBlendMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3)
{
    PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_XLU);
    PokedexEntryDisplay_SetXluMode(param0);

    if (ov21_021E2A54(param2->screenManager)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    PokedexEntryDisplay_BlendPokemonSprite(param1);
}

static BOOL PokedexEntryDisplay_UpdateBlendMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->screenManager)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendMain);
    } else {
        v0 = PokedexGraphics_BlendTransitionComplete(&(*param1)->blendMain);
    }

    if (v0 == 1) {
        if (param3 == 1) {
            PokedexEntryDisplay_SetNormalMode(param0);
            PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_NORMAL);
        } else {
            PokedexEntryDisplay_HidePokemonSprite(param1);
            PokedexEntryDisplay_ConfigureLabel(param1);
        }
    } else {
        PokedexEntryDisplay_BlendPokemonSprite(param1);
    }

    return v0;
}

static void PokedexEntryDisplay_InitPositionBlendMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3)
{
    PokedexEntryDisplay_SetXluMode(param0);

    if (param3 == 0) {
        PokedexEntryDisplay_InitPokemonTransform(param0, param2->displayPositionX, param2->displayPositionY, 4);
        PokedexEntryDisplay_InitLabelTransform(param0);
    }

    if (ov21_021E2A54(param2->screenManager)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL PokedexEntryDisplay_UpdatePositionBlendMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3)
{
    BOOL v0[3];
    int v1;

    if (param3 == 0) {
        v0[0] = PokedexEntryDisplay_UpdatePokemonTransform(param0, param1);

        v0[1] = PokedexEntryDisplay_UpdateLabelTransform(param0, param1);
    } else {
        v0[0] = 1;
        v0[1] = 1;
    }

    if (ov21_021E2A54(param2->screenManager)) {
        v0[2] = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendMain);
    } else {
        v0[2] = PokedexGraphics_BlendTransitionComplete(&(*param1)->blendMain);
    }

    for (v1 = 0; v1 < 3; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 3) {
        if (param3 == 1) {
            PokedexEntryDisplay_SetNormalMode(param0);
        }

        return 1;
    }

    return 0;
}

static void PokedexEntryDisplay_InitPositionMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3)
{
    PokedexEntryDisplay_SetXluMode(param0);
    PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_XLU);

    if (param3 == 0) {
        PokedexEntryDisplay_InitPokemonTransform(param0, param2->displayPositionX, param2->displayPositionY, 1);
    }

    if (ov21_021E2A54(param2->screenManager)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL PokedexEntryDisplay_UpdatePositionMode(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1, const PokedexEntryDisplayState *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = PokedexEntryDisplay_UpdatePokemonTransform(param0, param1);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->screenManager)) {
        v0[1] = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendMain);
    } else {
        v0[1] = PokedexGraphics_BlendTransitionComplete(&(*param1)->blendMain);
    }

    for (v1 = 0; v1 < 2; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 2) {
        if (param3 == 1) {
            PokedexEntryDisplay_SetNormalMode(param0);
            PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_NORMAL);
        } else {
            PokedexEntryDisplay_ConfigureLabel(param1);
        }

        return 1;
    }

    return 0;
}

static void PokedexEntryDisplay_SetXluMode(PokedexEntryDisplayGraphics *param0)
{
    Sprite_SetExplicitOAMMode(param0->displayedIconSprite, GX_OAM_MODE_XLU);
    sub_02012AF0(param0->textData->fontOAM, GX_OAM_MODE_XLU);
}

static void PokedexEntryDisplay_SetNormalMode(PokedexEntryDisplayGraphics *param0)
{
    Sprite_SetExplicitOAMMode(param0->displayedIconSprite, GX_OAM_MODE_NORMAL);
    sub_02012AF0(param0->textData->fontOAM, GX_OAM_MODE_NORMAL);
}

static void PokedexEntryDisplay_BlendPokemonSprite(PokedexGraphicData **param0)
{
    PokedexGraphics_BlendPokemonChar(*param0, &(*param0)->blendMain);
}

static void PokedexEntryDisplay_InitPokemonTransform(PokedexEntryDisplayGraphics *param0, int param1, int param2, int param3)
{
    PokedexGraphics_InitTransformation(&param0->transformMain, 48, param1, 72, param2, param3);
}

static BOOL PokedexEntryDisplay_UpdatePokemonTransform(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1)
{
    BOOL v0 = PokedexGraphics_TakeTransformStep(&param0->transformMain);
    PokemonGraphics_SetCharCenterXY(*param1, param0->transformMain.currentX, param0->transformMain.currentY);

    return v0;
}

static void PokedexEntryDisplay_InitLabelTransform(PokedexEntryDisplayGraphics *param0)
{
    PokedexGraphics_InitTransformation(&param0->transformSub, 172, 170, 32, 82, 4);
}

static BOOL PokedexEntryDisplay_UpdateLabelTransform(PokedexEntryDisplayGraphics *param0, PokedexGraphicData **param1)
{
    BOOL v0 = PokedexGraphics_TakeTransformStep(&param0->transformSub);
    ov21_021D1848(*param1, param0->transformSub.currentX, param0->transformSub.currentY);

    return v0;
}

static int LanguageMessage(int param0)
{
    int entryID;

    switch (param0) {
    case 1:
        entryID = pl_msg_pokedex_japanese;
        break;
    case 2:
        entryID = pl_msg_pokedex_english;
        break;
    case 3:
        entryID = pl_msg_pokedex_french;
        break;
    case 4:
        entryID = pl_msg_pokedex_italian;
        break;
    case 5:
        entryID = pl_msg_pokedex_german;
        break;
    case 7:
        entryID = pl_msg_pokedex_spanish;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return entryID;
}

static void PokedexEntryDisplay_RenderNameNumber(PokedexGraphicData **param0, int param1, int param2, int param3)
{
    String *v0 = PokedexText_NameNumber(param2, param3, param1);

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, v0, 120, 96, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}

static void PokedexEntryDisplay_RenderCategory(PokedexGraphicData **param0, int param1, int param2, int param3)
{
    String *v0 = PokedexText_Category(param2, param3, param1);
    u32 v1 = 240 - Font_CalcStringWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, v0, v1, 112, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}
