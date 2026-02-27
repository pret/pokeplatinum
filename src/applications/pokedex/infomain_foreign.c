#include "applications/pokedex/infomain_foreign.h"

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
#include "applications/pokedex/species_caught_status.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "text.h"
#include "unk_02012744.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

#define POKEDEX_TYPE_ICON_BACKGROUND_BOX_CELL 0x11
#define POKEDEX_TYPE_ICON_RESOURCE_OFFSET     4000

typedef struct PokedexEntryDisplayState {
    int *displayWorkData; // Work data pointer set from ov21_021D138C
    PokedexSortData *sortData; // Pokemon sort/listing data
    int displayPositionX; // X coordinate for display position animation
    int displayPositionY; // Y coordinate for display position animation
    const PokedexScreenManager *screenManager; // Screen manager reference
    enum AnimationMode animationMode; // Display animation mode
    int languageID; // Language constant (JAPANESE, ENGLISH, FRENCH, GERMAN, ITALIAN, SPANISH)
    int entryOffset; // Dex entry offset (0 = current entry)
} PokedexEntryDisplayState;

typedef struct PokedexEntryDisplayGraphics {
    Sprite *displayedIconSprite;
    PokedexTextData *textData;
    SpriteResource *spriteResources[MAX_SPRITE_RESOURCE_GEN4];
    SpriteTransformation transformPokemon;
    SpriteTransformation transformLabel;
} PokedexEntryDisplayGraphics;

static PokedexEntryDisplayState *AllocateState(enum HeapID heapID, PokedexApp *pokedexApp);
static PokedexGraphicData **AllocateGraphicsData(enum HeapID heapID, PokedexApp *pokedexApp);
static void FreeState(PokedexEntryDisplayState *displayState);
static void FreeGraphicsData(PokedexGraphicData **graphicsData);
static int GetNumScreenStates(void);
static int InitData(PokedexDataManager *dataMan, void *data);
static int UpdateData(PokedexDataManager *dataMan, void *data);
static int FinalizeData(PokedexDataManager *dataMan, void *data);
static int InitGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int UpdateGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int FinalizeGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void InitBlendMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing);
static BOOL UpdateBlendMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing);
static void InitPositionBlendMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing);
static BOOL UpdatePositionBlendMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing);
static void InitPositionMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing);
static BOOL UpdatePositionMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing);
static void BlendPokemonSprite(PokedexGraphicData **graphicsData);
static void SetXluMode(PokedexEntryDisplayGraphics *graphicsStruct);
static void SetNormalMode(PokedexEntryDisplayGraphics *graphicsStruct);
static void InitPokemonTransform(PokedexEntryDisplayGraphics *graphicsStruct, int posX, int posY, int numSteps);
static BOOL UpdatePokemonTransform(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void InitLabelTransform(PokedexEntryDisplayGraphics *graphicsStruct);
static BOOL UpdateLabelTransform(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void SetupGraphics(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, enum HeapID heapID);
static void CleanupGraphics(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void LoadBackground(PokedexGraphicData **graphicsData, enum HeapID heapID);
static void RenderAllText(PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, enum HeapID heapID);
static void RenderDexEntry(PokedexGraphicData **graphicsData, int heapID, enum Species species, int languageID, int entryOffset);
static int LanguageMessage(int languageID);
static void RenderNameNumber(PokedexGraphicData **graphicsData, int heapID, enum Species species, int languageID);
static void RenderCategory(PokedexGraphicData **graphicsData, int heapID, enum Species species, int languageID);
static void CreateCategoryBox(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, int heapID);
static void DeleteCategoryBox(PokedexEntryDisplayGraphics *graphicsStruct);
static Window *CreateCategoryWindow(PokedexGraphicData **graphicsData, int species, int heapID);
static void LoadTypeIconSprites(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, int heapID);
static void UnloadTypeIconSprites(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void RenderEntryName(PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, int heapID);
static void ConfigureLabel(PokedexGraphicData **graphicsData);
static void ShowPokemonSprite(PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState);
static void HidePokemonSprite(PokedexGraphicData **graphicsData);

void InfoMainForeign_InitScreen(PokedexScreenManager *screenManager, PokedexApp *pokedexApp, enum HeapID heapID)
{
    // Initialize the Pokedex type icon screen with data manager and graphics processor
    PokedexEntryDisplayState *displayState = AllocateState(heapID, pokedexApp);
    PokedexGraphicData **graphicsData = AllocateGraphicsData(heapID, pokedexApp);

    screenManager->pageData = displayState;
    screenManager->pageGraphics = graphicsData;
    screenManager->screenStates = NULL;
    screenManager->numStates = GetNumScreenStates();
    screenManager->dataFunc[0] = InitData;
    screenManager->dataFunc[1] = UpdateData;
    screenManager->dataFunc[2] = FinalizeData;
    screenManager->graphicsFunc[0] = InitGraphics;
    screenManager->graphicsFunc[1] = UpdateGraphics;
    screenManager->graphicsFunc[2] = FinalizeGraphics;
}

void InfoMainForeign_FreeScreen(PokedexScreenManager *screenManager)
{
    // Clean up and free resources allocated by InfoMainForeign_InitScreen
    FreeState(screenManager->pageData);
    FreeGraphicsData(screenManager->pageGraphics);
}

void InfoMainForeign_SetDisplayPosition(PokedexScreenManager *screenManager, int posX, int posY)
{
    // Set the display position coordinates for the type icon animation
    PokedexEntryDisplayState *displayState = screenManager->pageData;

    displayState->displayPositionX = posX;
    displayState->displayPositionY = posY;
}

void InfoMainForeign_SetAnimationMode(PokedexScreenManager *screenManager, enum AnimationMode animationMode)
{
    // Set which animation mode to use
    PokedexEntryDisplayState *displayState = screenManager->pageData;
    displayState->animationMode = animationMode;
}

int InfoMainForeign_GetScreenStateCount(PokedexScreenManager *screenManager)
{
    // Get the number of screen states (always returns 0 for this module)
    return 0;
}

BOOL InfoMainForeign_SetEntryOffset(PokedexScreenManager *screenManager, int entryOffset)
{
    // Set dex entry offset (0 = current entry)
    PokedexEntryDisplayState *displayState = screenManager->pageData;
    BOOL result = TRUE;

    if (entryOffset == 1) {
        entryOffset = 0;
        result = FALSE;
    }

    displayState->entryOffset = entryOffset;

    return result;
}

void InfoMainForeign_SetLanguage(PokedexScreenManager *screenManager, int languageID)
{
    // Set the language for text display in the type icon display
    PokedexEntryDisplayState *displayState = screenManager->pageData;

    displayState->languageID = languageID;
    displayState->entryOffset = 0;
}

static PokedexEntryDisplayState *AllocateState(enum HeapID heapID, PokedexApp *pokedexApp)
{
    PokedexEntryDisplayState *displayState = Heap_Alloc(heapID, sizeof(PokedexEntryDisplayState));

    GF_ASSERT(displayState);
    memset(displayState, 0, sizeof(PokedexEntryDisplayState));

    displayState->displayWorkData = ov21_021D138C(pokedexApp);
    displayState->sortData = PokedexMain_GetSortData(pokedexApp);

    displayState->screenManager = ov21_021D1410(pokedexApp, 5);

    return displayState;
}

static PokedexGraphicData **AllocateGraphicsData(enum HeapID heapID, PokedexApp *pokedexApp)
{
    PokedexGraphicData **graphicsData = Heap_Alloc(heapID, sizeof(PokedexGraphicData *));

    GF_ASSERT(graphicsData);
    memset(graphicsData, 0, sizeof(PokedexGraphicData *));

    *graphicsData = PokedexMain_GetGraphicData(pokedexApp);

    return graphicsData;
}

static void FreeState(PokedexEntryDisplayState *displayState)
{
    GF_ASSERT(displayState);
    Heap_Free(displayState);
}

static void FreeGraphicsData(PokedexGraphicData **graphicsData)
{
    GF_ASSERT(graphicsData);
    Heap_Free(graphicsData);
}

static int GetNumScreenStates(void)
{
    return 0;
}

static int InitData(PokedexDataManager *dataMan, void *data)
{
    return TRUE;
}

static int UpdateData(PokedexDataManager *dataMan, void *data)
{
    if (dataMan->exit == TRUE) {
        return TRUE;
    }

    if (dataMan->unchanged == TRUE) {
        return FALSE;
    }

    return FALSE;
}

static int FinalizeData(PokedexDataManager *dataMan, void *data)
{
    return TRUE;
}

static int InitGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexEntryDisplayState *displayState = data;
    PokedexGraphicData **graphicsData = graphics;
    PokedexEntryDisplayGraphics *graphicsStruct = graphicsMan->pageGraphics;
    BOOL animationComplete;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(PokedexEntryDisplayGraphics));
        memset(graphicsMan->pageGraphics, 0, sizeof(PokedexEntryDisplayGraphics));
        graphicsMan->state++;
        break;
    case 1:
        SetupGraphics(graphicsStruct, graphicsData, displayState, graphicsMan->heapID);

        switch (displayState->animationMode) {
        case ANIM_POSITION_BLEND:
            InitPositionBlendMode(graphicsStruct, graphicsData, displayState, 1);
            break;
        case ANIM_BLEND:
            InitBlendMode(graphicsStruct, graphicsData, displayState, 1);
            break;
        case ANIM_POSITION:
            InitPositionMode(graphicsStruct, graphicsData, displayState, 1);
            break;
        }

        graphicsMan->state++;
        break;

    case 2:
        switch (displayState->animationMode) {
        case ANIM_POSITION_BLEND:
            animationComplete = UpdatePositionBlendMode(graphicsStruct, graphicsData, displayState, 1);
            break;
        case ANIM_BLEND:
            animationComplete = UpdateBlendMode(graphicsStruct, graphicsData, displayState, 1);
            break;
        case ANIM_POSITION:
            animationComplete = UpdatePositionMode(graphicsStruct, graphicsData, displayState, 1);
            break;
        }

        if (animationComplete) {
            graphicsMan->state++;
        }
        break;
    case 3:
        G2_BlendNone();
        return TRUE;
    default:
        break;
    }

    return FALSE;
}

static int UpdateGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    return FALSE;
}

static int FinalizeGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexEntryDisplayState *displayState = data;
    PokedexGraphicData **graphicsData = graphics;
    PokedexEntryDisplayGraphics *graphicsStruct = graphicsMan->pageGraphics;
    BOOL animationComplete;

    switch (graphicsMan->state) {
    case 0:
        switch (displayState->animationMode) {
        case ANIM_POSITION_BLEND:
            InitPositionBlendMode(graphicsStruct, graphicsData, displayState, 0);
            break;
        case ANIM_BLEND:
            InitBlendMode(graphicsStruct, graphicsData, displayState, 0);
            break;
        case ANIM_POSITION:
            InitPositionMode(graphicsStruct, graphicsData, displayState, 0);
            break;
        }

        graphicsMan->state++;
        break;
    case 1:
        switch (displayState->animationMode) {
        case ANIM_POSITION_BLEND:
            animationComplete = UpdatePositionBlendMode(graphicsStruct, graphicsData, displayState, 0);
            break;
        case ANIM_BLEND:
            animationComplete = UpdateBlendMode(graphicsStruct, graphicsData, displayState, 0);
            break;
        case ANIM_POSITION:
            animationComplete = UpdatePositionMode(graphicsStruct, graphicsData, displayState, 0);
            break;
        }

        if (animationComplete) {
            graphicsMan->state++;
        }
        break;
    case 2:
        CleanupGraphics(graphicsStruct, graphicsData);
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

static void SetupGraphics(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, enum HeapID heapID)
{
    RenderEntryName(graphicsData, displayState, heapID);
    ShowPokemonSprite(graphicsData, displayState);
    LoadTypeIconSprites(graphicsStruct, graphicsData, heapID);
    CreateCategoryBox(graphicsStruct, graphicsData, displayState, heapID);
    LoadBackground(graphicsData, heapID);
    RenderAllText(graphicsData, displayState, heapID);
}

static void CleanupGraphics(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    DeleteCategoryBox(graphicsStruct);
    Window_FillTilemap(&(*graphicsData)->window, 0);

    UnloadTypeIconSprites(graphicsStruct, graphicsData);
    Bg_ClearTilemap((*graphicsData)->bgConfig, BG_LAYER_MAIN_1);
}

static void LoadBackground(PokedexGraphicData **graphicsData, enum HeapID heapID)
{
    void *tilemapData;
    NNSG2dScreenData *screenData;

    PokedexGraphics_LoadGraphicNarcCharacterData(*graphicsData, entry_main_NCGR_lz, (*graphicsData)->bgConfig, 3, 0, 0, TRUE, heapID);

    tilemapData = PokedexGraphics_GetGraphicNarcTilemapData(*graphicsData, info_main_NSCR_lz, TRUE, &screenData, heapID);
    Bg_LoadToTilemapRect((*graphicsData)->bgConfig, 3, screenData->rawData, 0, 0, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemapData);

    tilemapData = PokedexGraphics_GetGraphicNarcTilemapData(*graphicsData, info_species_window_NSCR_lz, TRUE, &screenData, heapID);

    Bg_LoadToTilemapRect((*graphicsData)->bgConfig, 3, screenData->rawData, 0, 3, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemapData);

    tilemapData = PokedexGraphics_GetGraphicNarcTilemapData(*graphicsData, foreign_entry_window_NSCR_lz, TRUE, &screenData, heapID);

    Bg_LoadToTilemapRect((*graphicsData)->bgConfig, 3, screenData->rawData, 0, 16, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemapData);

    tilemapData = PokedexGraphics_GetGraphicNarcTilemapData(*graphicsData, foreign_summary_window_NSCR_lz, TRUE, &screenData, heapID);

    Bg_LoadToTilemapRect((*graphicsData)->bgConfig, 3, screenData->rawData, 12, 8, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemapData);
    Bg_ScheduleTilemapTransfer((*graphicsData)->bgConfig, 3);
}

static void RenderAllText(PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, enum HeapID heapID)
{
    String *text = String_Init(64, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);
    enum Species species = PokedexSort_CurrentSpecies(displayState->sortData);

    if (PokedexSort_CurrentCaughtStatus(displayState->sortData) != CS_CAUGHT) {
        species = SPECIES_NONE;
        GF_ASSERT(FALSE);
    }

    int entryID = LanguageMessage(displayState->languageID);

    MessageLoader_GetString(pokedexMessageBank, entryID, text);

    int textWidth = Font_CalcStringWidth(FONT_SYSTEM, text, 0);
    textWidth /= 2;

    Text_AddPrinterWithParamsAndColor(&(*graphicsData)->window, FONT_SYSTEM, text, 176 - textWidth, 72, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    String_Free(text);
    MessageLoader_Free(pokedexMessageBank);

    RenderDexEntry(graphicsData, heapID, species, displayState->languageID, displayState->entryOffset);
    RenderNameNumber(graphicsData, heapID, species, displayState->languageID);
    RenderCategory(graphicsData, heapID, species, displayState->languageID);
}

static void RenderDexEntry(PokedexGraphicData **graphicsData, int heapID, enum Species species, int languageID, int entryOffset)
{
    String *entryText = PokedexText_DexEntry(species, languageID, entryOffset, heapID);
    u32 textWidth = Font_CalcMaxLineWidth(FONT_SYSTEM, entryText, 0);
    u32 xPos = (textWidth < 240) ? 128 - textWidth / 2 : 8;

    Text_AddPrinterWithParamsAndColor(&(*graphicsData)->window, FONT_SYSTEM, entryText, xPos, 136, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(entryText);
}

static void RenderEntryName(PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, int heapID)
{
    PokedexMain_EntryNameNumber(*graphicsData, displayState->sortData, heapID, PokedexSort_CurrentStatusIndex(displayState->sortData), (172 * FX32_ONE), (32 * FX32_ONE));
    PokedexGraphics_SetSpeciesLabelPriority(*graphicsData, 0);
}

static void ConfigureLabel(PokedexGraphicData **graphicsData)
{
    PokedexGraphics_SetPokedexSpeciesLabelDraw(*graphicsData, 0);
    PokedexGraphics_SetSpeciesLabelGXOamMode(*graphicsData, GX_OAM_MODE_NORMAL);
}

static void ShowPokemonSprite(PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState)
{
    PokemonSprite *pokemonSprite = PokemonGraphics_GetPokemonChar(*graphicsData);
    enum Species species = PokedexSort_CurrentSpecies(displayState->sortData);

    PokedexMain_DisplayPokemonSprite(*graphicsData, displayState->sortData, species, 2, 48, 72);
    PokemonSprite_SetAttribute(pokemonSprite, MON_SPRITE_HIDE, 0);
}

static void HidePokemonSprite(PokedexGraphicData **graphicsData)
{
    PokemonSprite *pokemonSprite = PokemonGraphics_GetPokemonChar(*graphicsData);

    PokemonSprite_SetAttribute(pokemonSprite, MON_SPRITE_HIDE, 1);
    PokemonSprite_ClearFade(pokemonSprite);
}

static void LoadTypeIconSprites(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, int heapID)
{
    PokedexGraphicData *pokedexGraphicData = *graphicsData;
    NARC *narc = PokedexGraphics_GetNARC(*graphicsData);

    graphicsStruct->spriteResources[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(pokedexGraphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, type_icons_NCGR_lz, TRUE, type_icons_NCGR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(graphicsStruct->spriteResources[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(graphicsStruct->spriteResources[SPRITE_RESOURCE_CHAR]);

    graphicsStruct->spriteResources[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(pokedexGraphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narc, type_icons_NCLR, FALSE, type_icons_NCLR + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, NNS_G2D_VRAM_TYPE_2DMAIN, 5, heapID);

    SpriteTransfer_RequestPlttFreeSpace(graphicsStruct->spriteResources[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(graphicsStruct->spriteResources[SPRITE_RESOURCE_PLTT]);

    graphicsStruct->spriteResources[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(pokedexGraphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, type_icons_cell_NCER_lz, TRUE, type_icons_cell_NCER_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, SPRITE_RESOURCE_CELL, heapID);
    graphicsStruct->spriteResources[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(pokedexGraphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, type_icons_anim_NANR_lz, TRUE, type_icons_anim_NANR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, SPRITE_RESOURCE_ANIM, heapID);
}

static void UnloadTypeIconSprites(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    PokedexGraphicData *pokedexGraphicData = *graphicsData;

    SpriteTransfer_ResetCharTransfer(graphicsStruct->spriteResources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(graphicsStruct->spriteResources[SPRITE_RESOURCE_PLTT]);

    SpriteResourceCollection_Remove(pokedexGraphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], graphicsStruct->spriteResources[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(pokedexGraphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], graphicsStruct->spriteResources[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(pokedexGraphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], graphicsStruct->spriteResources[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(pokedexGraphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], graphicsStruct->spriteResources[SPRITE_RESOURCE_ANIM]);
}

static void CreateCategoryBox(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, int heapID)
{
    SpriteResourcesHeader spriteResourcesHeader;
    SpriteListTemplate spriteListTemplate;
    PokedexGraphicData *graphicData = *graphicsData;
    enum Species species = PokedexSort_CurrentSpecies(displayState->sortData);
    Window *categoryWindow;
    PokedexDisplayBox displayBox;
    SpriteResource *labelSpriteResource;

    SpriteResourcesHeader_Init(&spriteResourcesHeader, type_icons_NCGR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_NCLR + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_cell_NCER_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_anim_NANR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, 0xffffffff, 0xffffffff, FALSE, 0, graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    spriteListTemplate.list = graphicData->spriteList;
    spriteListTemplate.resourceData = &spriteResourcesHeader;
    spriteListTemplate.priority = 32;
    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteListTemplate.heapID = heapID;
    spriteListTemplate.position.x = (192 * FX32_ONE);
    spriteListTemplate.position.y = (52 * FX32_ONE);

    graphicsStruct->displayedIconSprite = SpriteList_Add(&spriteListTemplate);

    Sprite_SetAnim(graphicsStruct->displayedIconSprite, POKEDEX_TYPE_ICON_BACKGROUND_BOX_CELL);

    if (PokedexSort_CurrentCaughtStatus(displayState->sortData) != CS_CAUGHT) {
        species = SPECIES_NONE;
    }

    categoryWindow = CreateCategoryWindow(graphicsData, species, heapID);
    labelSpriteResource = PokedexGraphics_GetSpeciesLabelSpriteResource(*graphicsData, 1);

    displayBox.textMan = (*graphicsData)->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(labelSpriteResource, NULL);
    displayBox.sprite = graphicsStruct->displayedIconSprite;
    displayBox.x = -78;
    displayBox.y = -8;
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 32 - 1;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = heapID;
    displayBox.window = categoryWindow;

    graphicsStruct->textData = PokedexTextManager_NextTextData(&displayBox);

    PokedexTextManager_FreeWindow(categoryWindow);
}

static Window *CreateCategoryWindow(PokedexGraphicData **graphicsData, int species, int heapID)
{
    Window *window = PokedexTextManager_NewWindow((*graphicsData)->textMan, 18, 2);
    String *categoryText = PokedexText_Category(species, GAME_LANGUAGE, heapID);

    {
        u32 textWidth = Font_CalcStringWidth(FONT_SUBSCREEN, categoryText, 0);
        u32 xOffset = (textWidth < 136) ? (136 - textWidth) / 2 : 0;
        PokedexTextManager_DisplayString((*graphicsData)->textMan, window, categoryText, xOffset, 0);
    }

    PokedexText_Free(categoryText);

    return window;
}

static void DeleteCategoryBox(PokedexEntryDisplayGraphics *graphicsStruct)
{
    Sprite_Delete(graphicsStruct->displayedIconSprite);
    graphicsStruct->displayedIconSprite = NULL;
    PokedexTextManager_FreeTextData(graphicsStruct->textData);
}

static void InitBlendMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing)
{
    PokedexGraphics_SetSpeciesLabelGXOamMode(*graphicsData, GX_OAM_MODE_XLU);
    SetXluMode(graphicsStruct);

    if (ov21_021E2A54(displayState->screenManager)) {
        if (isInitializing) {
            PokedexGraphics_InitBlendTransition(&(*graphicsData)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*graphicsData)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    BlendPokemonSprite(graphicsData);
}

static BOOL UpdateBlendMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing)
{
    BOOL transitionComplete;

    if (ov21_021E2A54(displayState->screenManager)) {
        transitionComplete = PokedexGraphics_TakeBlendTransitionStep(&(*graphicsData)->blendMain);
    } else {
        transitionComplete = PokedexGraphics_BlendTransitionComplete(&(*graphicsData)->blendMain);
    }

    if (transitionComplete == TRUE) {
        if (isInitializing == TRUE) {
            SetNormalMode(graphicsStruct);
            PokedexGraphics_SetSpeciesLabelGXOamMode(*graphicsData, GX_OAM_MODE_NORMAL);
        } else {
            HidePokemonSprite(graphicsData);
            ConfigureLabel(graphicsData);
        }
    } else {
        BlendPokemonSprite(graphicsData);
    }

    return transitionComplete;
}

static void InitPositionBlendMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing)
{
    SetXluMode(graphicsStruct);

    if (isInitializing == FALSE) {
        InitPokemonTransform(graphicsStruct, displayState->displayPositionX, displayState->displayPositionY, 4);
        InitLabelTransform(graphicsStruct);
    }

    if (ov21_021E2A54(displayState->screenManager)) {
        if (isInitializing) {
            PokedexGraphics_InitBlendTransition(&(*graphicsData)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*graphicsData)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL UpdatePositionBlendMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing)
{
    BOOL transitionsComplete[3];
    int i;

    if (isInitializing == FALSE) {
        transitionsComplete[0] = UpdatePokemonTransform(graphicsStruct, graphicsData);

        transitionsComplete[1] = UpdateLabelTransform(graphicsStruct, graphicsData);
    } else {
        transitionsComplete[0] = TRUE;
        transitionsComplete[1] = TRUE;
    }

    if (ov21_021E2A54(displayState->screenManager)) {
        transitionsComplete[2] = PokedexGraphics_TakeBlendTransitionStep(&(*graphicsData)->blendMain);
    } else {
        transitionsComplete[2] = PokedexGraphics_BlendTransitionComplete(&(*graphicsData)->blendMain);
    }

    for (i = 0; i < 3; i++) {
        if (transitionsComplete[i] == FALSE) {
            break;
        }
    }

    if (i == 3) {
        if (isInitializing == TRUE) {
            SetNormalMode(graphicsStruct);
        }

        return TRUE;
    }

    return FALSE;
}

static void InitPositionMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing)
{
    SetXluMode(graphicsStruct);
    PokedexGraphics_SetSpeciesLabelGXOamMode(*graphicsData, GX_OAM_MODE_XLU);

    if (isInitializing == FALSE) {
        InitPokemonTransform(graphicsStruct, displayState->displayPositionX, displayState->displayPositionY, 1);
    }

    if (ov21_021E2A54(displayState->screenManager)) {
        if (isInitializing) {
            PokedexGraphics_InitBlendTransition(&(*graphicsData)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*graphicsData)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL UpdatePositionMode(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const PokedexEntryDisplayState *displayState, BOOL isInitializing)
{
    BOOL transformComplete[2];
    int i;

    if (isInitializing == FALSE) {
        transformComplete[0] = UpdatePokemonTransform(graphicsStruct, graphicsData);
    } else {
        transformComplete[0] = TRUE;
    }

    if (ov21_021E2A54(displayState->screenManager)) {
        transformComplete[1] = PokedexGraphics_TakeBlendTransitionStep(&(*graphicsData)->blendMain);
    } else {
        transformComplete[1] = PokedexGraphics_BlendTransitionComplete(&(*graphicsData)->blendMain);
    }

    for (i = 0; i < 2; i++) {
        if (transformComplete[i] == FALSE) {
            break;
        }
    }

    if (i == 2) {
        if (isInitializing == TRUE) {
            SetNormalMode(graphicsStruct);
            PokedexGraphics_SetSpeciesLabelGXOamMode(*graphicsData, GX_OAM_MODE_NORMAL);
        } else {
            ConfigureLabel(graphicsData);
        }

        return TRUE;
    }

    return FALSE;
}

static void SetXluMode(PokedexEntryDisplayGraphics *graphicsStruct)
{
    Sprite_SetExplicitOAMMode(graphicsStruct->displayedIconSprite, GX_OAM_MODE_XLU);
    sub_02012AF0(graphicsStruct->textData->fontOAM, GX_OAM_MODE_XLU);
}

static void SetNormalMode(PokedexEntryDisplayGraphics *graphicsStruct)
{
    Sprite_SetExplicitOAMMode(graphicsStruct->displayedIconSprite, GX_OAM_MODE_NORMAL);
    sub_02012AF0(graphicsStruct->textData->fontOAM, GX_OAM_MODE_NORMAL);
}

static void BlendPokemonSprite(PokedexGraphicData **graphicsData)
{
    PokedexGraphics_BlendPokemonChar(*graphicsData, &(*graphicsData)->blendMain);
}

static void InitPokemonTransform(PokedexEntryDisplayGraphics *graphicsStruct, int posX, int posY, int numSteps)
{
    PokedexGraphics_InitTransformation(&graphicsStruct->transformPokemon, 48, posX, 72, posY, numSteps);
}

static BOOL UpdatePokemonTransform(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    BOOL transformComplete = PokedexGraphics_TakeTransformStep(&graphicsStruct->transformPokemon);
    PokemonGraphics_SetCharCenterXY(*graphicsData, graphicsStruct->transformPokemon.currentX, graphicsStruct->transformPokemon.currentY);

    return transformComplete;
}

static void InitLabelTransform(PokedexEntryDisplayGraphics *graphicsStruct)
{
    PokedexGraphics_InitTransformation(&graphicsStruct->transformLabel, 172, 170, 32, 82, 4);
}

static BOOL UpdateLabelTransform(PokedexEntryDisplayGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    BOOL transformComplete = PokedexGraphics_TakeTransformStep(&graphicsStruct->transformLabel);
    ov21_021D1848(*graphicsData, graphicsStruct->transformLabel.currentX, graphicsStruct->transformLabel.currentY);

    return transformComplete;
}

static int LanguageMessage(int languageID)
{
    int entryID;

    switch (languageID) {
    case JAPANESE:
        entryID = pl_msg_pokedex_japanese;
        break;
    case ENGLISH:
        entryID = pl_msg_pokedex_english;
        break;
    case FRENCH:
        entryID = pl_msg_pokedex_french;
        break;
    case ITALIAN:
        entryID = pl_msg_pokedex_italian;
        break;
    case GERMAN:
        entryID = pl_msg_pokedex_german;
        break;
    case SPANISH:
        entryID = pl_msg_pokedex_spanish;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return entryID;
}

static void RenderNameNumber(PokedexGraphicData **graphicsData, int heapID, enum Species species, int languageID)
{
    String *nameNumberText = PokedexText_NameNumber(species, languageID, heapID);

    Text_AddPrinterWithParamsAndColor(&(*graphicsData)->window, FONT_SYSTEM, nameNumberText, 120, 96, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(nameNumberText);
}

static void RenderCategory(PokedexGraphicData **graphicsData, int heapID, enum Species species, int languageID)
{
    String *categoryText = PokedexText_Category(species, languageID, heapID);
    u32 xPosition = 240 - Font_CalcStringWidth(FONT_SYSTEM, categoryText, 0);

    Text_AddPrinterWithParamsAndColor(&(*graphicsData)->window, FONT_SYSTEM, categoryText, xPosition, 112, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(categoryText);
}
