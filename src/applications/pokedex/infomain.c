#include "applications/pokedex/infomain.h"

#include <nitro.h>
#include <string.h>

#include "generated/pokemon_types.h"

#include "applications/pokedex/footprint.h"
#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_text.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/species_caught_status.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokedex_data_index.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sound_playback.h"
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
#define STRING_BUFFER_SIZE                    64

enum InfoMainGraphicsSpriteIndex {
    INFOMAIN_SPRITE_FOOTPRINT = 0, // Footprint sprite
    INFOMAIN_SPRITE_TYPE_ICON_1 = 1, // Type icon sprite 1
    INFOMAIN_SPRITE_TYPE_ICON_2 = 2, // Type icon sprite 2
    INFOMAIN_SPRITE_MAX = 3, // Maximum number of sprites
};

typedef struct InfoMainGraphics {
    Sprite *footprintAndTypeSprites[INFOMAIN_SPRITE_MAX];
    Sprite *categoryBoxSprite;
    PokedexTextData *categoryTextData;
    SpriteResource *typeIconResources[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResource *footprintResources[MAX_SPRITE_RESOURCE_GEN4];
    SpriteTransformation transformPokemon;
    SpriteTransformation transformLabel;
} InfoMainGraphics;

static InfoMainState *AllocateState(enum HeapID heapID, PokedexApp *pokedexApp);
static PokedexGraphicData **AllocateGraphicsData(enum HeapID heapID, PokedexApp *pokedexApp);
static void FreeState(InfoMainState *displayState);
static void FreeGraphicsData(PokedexGraphicData **graphicsData);
static int GetNumScreenStates(void);
static int InitData(PokedexDataManager *dataMan, void *data);
static int UpdateData(PokedexDataManager *dataMan, void *data);
static int FinalizeData(PokedexDataManager *dataMan, void *data);
static int InitGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int UpdateGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int FinalizeGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void InitBlendMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing);
static BOOL UpdateBlendMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing);
static void InitPositionBlendMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing);
static BOOL UpdatePositionBlendMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing);
static void InitPositionMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing);
static BOOL UpdatePositionMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing);
static void BlendPokemonSprite(PokedexGraphicData **graphicsData);
static void SetXluMode(InfoMainGraphics *graphicsStruct);
static void SetNormalMode(InfoMainGraphics *graphicsStruct);
static void InitPokemonTransform(InfoMainGraphics *graphicsStruct, int posX, int posY, int numSteps);
static BOOL UpdatePokemonTransform(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void InitLabelTransform(InfoMainGraphics *graphicsStruct);
static BOOL UpdateLabelTransform(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void SetupGraphics(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, enum HeapID heapID);
static void CleanupGraphics(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void LoadBackground(PokedexGraphicData **graphicsData, enum HeapID heapID);
static void RenderAllText(PokedexGraphicData **graphicsData, const InfoMainState *displayState, enum HeapID heapID);
static void RenderHeight(Window *window, enum HeapID heapID, int species, u32 textColor);
static void RenderWeight(Window *window, enum HeapID heapID, int species, u32 textColor);
static void RenderDexEntry(Window *window, enum HeapID heapID, int species, int entryOffset, u32 textColor);
static void CreateFootprintSprite(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, int heapID);
static void DeleteFootprintSprite(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void LoadFootprintResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, int heapID, int footprintSpecies);
static void UnloadFootprintResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void CreateFootprintSpriteFromResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, int heapID);
static void DeleteFootprintSpriteInstance(InfoMainGraphics *graphicsStruct);
static void RenderEntryName(PokedexGraphicData **graphicsData, const InfoMainState *displayState, int heapID);
static void ConfigureLabel(PokedexGraphicData **graphicsData);
static void ShowPokemonSprite(PokedexGraphicData **graphicsData, const InfoMainState *displayState);
static void HidePokemonSprite(PokedexGraphicData **graphicsData);
static void LoadTypeIconResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, int heapID);
static void UnloadTypeIconResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData);
static void CreateTypeIconSprites(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, int heapID);
static void DeleteTypeIconSprites(InfoMainGraphics *graphicsStruct);
static void CreateCategoryBox(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, int heapID);
static void DeleteCategoryBox(InfoMainGraphics *graphicsStruct);

void InfoMain_InitScreen(PokedexScreenManager *screenManager, PokedexApp *pokedexApp, enum HeapID heapID)
{
    InfoMainState *displayState = AllocateState(heapID, pokedexApp);
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

void InfoMain_FreeScreen(PokedexScreenManager *screenManager)
{
    FreeState(screenManager->pageData);
    FreeGraphicsData(screenManager->pageGraphics);
}

// Compatibility stub for InfoMainForeign_SetDisplayPosition. Main screen doesn't support position animations.
BOOL InfoMain_SetDisplayPosition(InfoMainState *displayState, int unused)
{
    return FALSE;
}

BOOL InfoMain_SetEntryOffset(InfoMainState *displayState, int entryOffset)
{
    BOOL result = TRUE;

    if (entryOffset == 1) {
        entryOffset = 0;
        result = FALSE;
    }

    displayState->entryOffset = entryOffset;
    return result;
}

static InfoMainState *AllocateState(enum HeapID heapID, PokedexApp *pokedexApp)
{
    InfoMainState *displayState = Heap_Alloc(heapID, sizeof(InfoMainState));

    GF_ASSERT(displayState);
    memset(displayState, 0, sizeof(InfoMainState));

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

static void FreeState(InfoMainState *displayState)
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
    InfoMainState *displayState = data;

    PokedexSort_SetCurrentSpecies(displayState->sortData, PokedexSort_CurrentSpecies(displayState->sortData));
    PokedexSort_SetBootMode(displayState->sortData, PokedexSort_IsNationalDex(displayState->sortData));

    return TRUE;
}

static int UpdateData(PokedexDataManager *dataMan, void *data)
{
    InfoMainState *displayState = data;

    if (dataMan->exit == TRUE) {
        return TRUE;
    }

    if (dataMan->unchanged == TRUE) {
        return FALSE;
    }

    switch (dataMan->state) {
    case 0:
        if (displayState->playCry == TRUE) {
            // The pan, volume, and heapID parameters are unused by the sound system's code path, which is why their values are set to 0x1ff
            Sound_PlayPokemonCryEx(POKECRY_POKEDEX, PokedexSort_CurrentSpecies(displayState->sortData), 0x1ff, 0x1ff, 0x1ff, 0);
            displayState->playCry = FALSE;
        }

        dataMan->state++;
        break;
    default:
        break;
    }

    return FALSE;
}

static int FinalizeData(PokedexDataManager *dataMan, void *data)
{
    Sound_StopPokemonCries(0);
    return TRUE;
}

static int InitGraphics(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const InfoMainState *displayState = data;
    PokedexGraphicData **graphicsData = graphics;
    InfoMainGraphics *graphicsStruct = graphicsMan->pageGraphics;
    BOOL animationComplete;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(InfoMainGraphics));
        memset(graphicsMan->pageGraphics, 0, sizeof(InfoMainGraphics));
        graphicsMan->state++;
        break;
    case 1:
        SetupGraphics(graphicsStruct, graphicsData, displayState, graphicsMan->heapID);

        switch (displayState->animationMode) {
        case ANIM_POSITION_BLEND:
            InitPositionBlendMode(graphicsStruct, graphicsData, displayState, TRUE);
            break;
        case ANIM_BLEND:
            InitBlendMode(graphicsStruct, graphicsData, displayState, TRUE);
            break;
        case ANIM_POSITION:
            InitPositionMode(graphicsStruct, graphicsData, displayState, TRUE);
            break;
        }

        graphicsMan->state++;
        break;
    case 2:
        switch (displayState->animationMode) {
        case ANIM_POSITION_BLEND:
            animationComplete = UpdatePositionBlendMode(graphicsStruct, graphicsData, displayState, TRUE);
            break;
        case ANIM_BLEND:
            animationComplete = UpdateBlendMode(graphicsStruct, graphicsData, displayState, TRUE);
            break;
        case ANIM_POSITION:
            animationComplete = UpdatePositionMode(graphicsStruct, graphicsData, displayState, TRUE);
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
    const InfoMainState *displayState = data;
    PokedexGraphicData **graphicsData = graphics;
    InfoMainGraphics *graphicsStruct = graphicsMan->pageGraphics;
    BOOL animationComplete;

    switch (graphicsMan->state) {
    case 0:
        switch (displayState->animationMode) {
        case ANIM_POSITION_BLEND:
            InitPositionBlendMode(graphicsStruct, graphicsData, displayState, FALSE);
            break;
        case ANIM_BLEND:
            InitBlendMode(graphicsStruct, graphicsData, displayState, FALSE);
            break;
        case ANIM_POSITION:
            InitPositionMode(graphicsStruct, graphicsData, displayState, FALSE);
            break;
        }

        graphicsMan->state++;
        break;
    case 1:
        switch (displayState->animationMode) {
        case ANIM_POSITION_BLEND:
            animationComplete = UpdatePositionBlendMode(graphicsStruct, graphicsData, displayState, FALSE);
            break;
        case ANIM_BLEND:
            animationComplete = UpdateBlendMode(graphicsStruct, graphicsData, displayState, FALSE);
            break;
        case ANIM_POSITION:
            animationComplete = UpdatePositionMode(graphicsStruct, graphicsData, displayState, FALSE);
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
        return TRUE;
    default:
        break;
    }

    return FALSE;
}

static void SetupGraphics(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, enum HeapID heapID)
{
    RenderEntryName(graphicsData, displayState, heapID);
    ShowPokemonSprite(graphicsData, displayState);
    LoadTypeIconResources(graphicsStruct, graphicsData, heapID);
    CreateCategoryBox(graphicsStruct, graphicsData, displayState, heapID);
    LoadBackground(graphicsData, heapID);
    RenderAllText(graphicsData, displayState, heapID);

    if (PokedexSort_CurrentCaughtStatus(displayState->sortData) == CS_CAUGHT) {
        CreateFootprintSprite(graphicsStruct, graphicsData, displayState, heapID);
        CreateTypeIconSprites(graphicsStruct, graphicsData, displayState, heapID);
    }
}

static void CleanupGraphics(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    DeleteCategoryBox(graphicsStruct);

    Window_FillTilemap(&(*graphicsData)->window, 0);

    DeleteFootprintSprite(graphicsStruct, graphicsData);
    DeleteTypeIconSprites(graphicsStruct);
    UnloadTypeIconResources(graphicsStruct, graphicsData);

    Bg_ClearTilemap((*graphicsData)->bgConfig, BG_LAYER_MAIN_1);
}

static void LoadBackground(PokedexGraphicData **graphicsData, enum HeapID heapID)
{
    void *tilemapData;
    NNSG2dScreenData *screenData;

    PokedexGraphics_LoadGraphicNarcCharacterData(*graphicsData, entry_main_NCGR_lz, (*graphicsData)->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, heapID);

    tilemapData = PokedexGraphics_GetGraphicNarcTilemapData(*graphicsData, info_main_NSCR_lz, TRUE, &screenData, heapID);
    Bg_LoadToTilemapRect((*graphicsData)->bgConfig, BG_LAYER_MAIN_3, screenData->rawData, 0, 0, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemapData);

    tilemapData = PokedexGraphics_GetGraphicNarcTilemapData(*graphicsData, info_species_window_NSCR_lz, TRUE, &screenData, heapID);
    Bg_LoadToTilemapRect((*graphicsData)->bgConfig, BG_LAYER_MAIN_3, screenData->rawData, 0, 3, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemapData);

    tilemapData = PokedexGraphics_GetGraphicNarcTilemapData(*graphicsData, info_footprint_window_NSCR_lz, TRUE, &screenData, heapID);
    Bg_LoadToTilemapRect((*graphicsData)->bgConfig, BG_LAYER_MAIN_3, screenData->rawData, 12, 8, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemapData);

    tilemapData = PokedexGraphics_GetGraphicNarcTilemapData(*graphicsData, info_entry_window_NSCR_lz, TRUE, &screenData, heapID);
    Bg_LoadToTilemapRect((*graphicsData)->bgConfig, BG_LAYER_MAIN_3, screenData->rawData, 0, 16, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemapData);
    Bg_ScheduleTilemapTransfer((*graphicsData)->bgConfig, BG_LAYER_MAIN_3);
}

static void RenderAllText(PokedexGraphicData **graphicsData, const InfoMainState *displayState, enum HeapID heapID)
{
    int species = PokedexSort_CurrentSpecies(displayState->sortData);

    if (PokedexSort_CurrentCaughtStatus(displayState->sortData) != CS_CAUGHT) {
        species = SPECIES_NONE;
    }

    InfoMain_RenderHeightWeightEntry(&(*graphicsData)->window, species, heapID, displayState->entryOffset, TEXT_COLOR(2, 1, 0));
}

void InfoMain_RenderHeightWeightEntry(Window *window, int species, enum HeapID heapID, int entryOffset, u32 textColor)
{
    String *labelString = String_Init(STRING_BUFFER_SIZE, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_ht, labelString);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, labelString, 152, 88, TEXT_SPEED_INSTANT, textColor, NULL);

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_wt, labelString);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, labelString, 152, 104, TEXT_SPEED_INSTANT, textColor, NULL);
    String_Free(labelString);
    MessageLoader_Free(pokedexMessageBank);

    RenderHeight(window, heapID, species, textColor);
    RenderWeight(window, heapID, species, textColor);
    RenderDexEntry(window, heapID, species, entryOffset, textColor);
}

static void RenderHeight(Window *window, enum HeapID heapID, int species, u32 textColor)
{
    String *heightString = String_Init(STRING_BUFFER_SIZE, heapID);
    MessageLoader *heightMsgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, Height_Message_Bank_Index(), heapID);

    MessageLoader_GetString(heightMsgLoader, species, heightString);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, heightString, 184, 88, TEXT_SPEED_INSTANT, textColor, NULL);
    String_Free(heightString);
    MessageLoader_Free(heightMsgLoader);
}

static void RenderWeight(Window *window, enum HeapID heapID, int species, u32 textColor)
{
    String *weightString = String_Init(STRING_BUFFER_SIZE, heapID);
    MessageLoader *weightMsgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, Weight_Message_Bank_Index(), heapID);

    MessageLoader_GetString(weightMsgLoader, species, weightString);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, weightString, 184, 104, TEXT_SPEED_INSTANT, textColor, NULL);
    String_Free(weightString);
    MessageLoader_Free(weightMsgLoader);
}

static void RenderDexEntry(Window *window, enum HeapID heapID, int species, int entryOffset, u32 textColor)
{
    String *entryString = PokedexText_DexEntry(species, GAME_LANGUAGE, entryOffset, heapID);
    u32 stringWidth = Font_CalcMaxLineWidth(FONT_SYSTEM, entryString, 0);
    u32 xPosition = (stringWidth < 240) ? 128 - stringWidth / 2 : 8;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, entryString, xPosition, 136, TEXT_SPEED_INSTANT, textColor, NULL);
    PokedexText_Free(entryString);
}

static void CreateFootprintSprite(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, int heapID)
{
    enum Species species = PokedexSort_CurrentSpecies(displayState->sortData);
    int form = PokedexSort_DefaultForm(displayState->sortData, species);

    if ((species == SPECIES_GIRATINA) && (form > 0)) {
        species = SPECIES_METAPOD;
    }

    LoadFootprintResources(graphicsStruct, graphicsData, heapID, species);
    CreateFootprintSpriteFromResources(graphicsStruct, graphicsData, heapID);
}

static void DeleteFootprintSprite(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    DeleteFootprintSpriteInstance(graphicsStruct);
    UnloadFootprintResources(graphicsStruct, graphicsData);
}

static void LoadFootprintResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, int heapID, int footprintSpecies)
{
    PokedexGraphicData *gfxData = *graphicsData;
    int narcID = GetPokedexFootprintsNarcID();
    int tilesFileID = GetSpeciesFootprintTiles(footprintSpecies);
    int paletteFileID = GetSharedFootprintPalette();
    int cellsFileID = GetSharedFootprintCells();
    int animsFileID = GetSharedFootprintAnims();

    graphicsStruct->footprintResources[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(gfxData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narcID, tilesFileID, TRUE, POKEDEX_TYPE_ICON_RESOURCE_OFFSET, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(graphicsStruct->footprintResources[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(graphicsStruct->footprintResources[SPRITE_RESOURCE_CHAR]);

    graphicsStruct->footprintResources[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(gfxData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narcID, paletteFileID, FALSE, POKEDEX_TYPE_ICON_RESOURCE_OFFSET, NNS_G2D_VRAM_TYPE_2DMAIN, 1, heapID);

    SpriteTransfer_RequestPlttFreeSpace(graphicsStruct->footprintResources[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(graphicsStruct->footprintResources[SPRITE_RESOURCE_PLTT]);

    graphicsStruct->footprintResources[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(gfxData->spriteResourceCollection[SPRITE_RESOURCE_CELL], narcID, cellsFileID, TRUE, POKEDEX_TYPE_ICON_RESOURCE_OFFSET, SPRITE_RESOURCE_CELL, heapID);
    graphicsStruct->footprintResources[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(gfxData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narcID, animsFileID, TRUE, POKEDEX_TYPE_ICON_RESOURCE_OFFSET, SPRITE_RESOURCE_ANIM, heapID);
}

static void UnloadFootprintResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    PokedexGraphicData *gfxData = *graphicsData;

    if (graphicsStruct->footprintResources[SPRITE_RESOURCE_CHAR] == NULL) {
        return;
    }

    SpriteTransfer_ResetCharTransfer(graphicsStruct->footprintResources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(graphicsStruct->footprintResources[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(gfxData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], graphicsStruct->footprintResources[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(gfxData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], graphicsStruct->footprintResources[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(gfxData->spriteResourceCollection[SPRITE_RESOURCE_CELL], graphicsStruct->footprintResources[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(gfxData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], graphicsStruct->footprintResources[SPRITE_RESOURCE_ANIM]);
}

static void CreateFootprintSpriteFromResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, int heapID)
{
    SpriteResourcesHeader resourceHeader;
    SpriteListTemplate spriteTemplate;
    PokedexGraphicData *gfxData = *graphicsData;

    SpriteResourcesHeader_Init(&resourceHeader, POKEDEX_TYPE_ICON_RESOURCE_OFFSET, POKEDEX_TYPE_ICON_RESOURCE_OFFSET, POKEDEX_TYPE_ICON_RESOURCE_OFFSET, POKEDEX_TYPE_ICON_RESOURCE_OFFSET, 0xffffffff, 0xffffffff, FALSE, 0, gfxData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], gfxData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], gfxData->spriteResourceCollection[SPRITE_RESOURCE_CELL], gfxData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    spriteTemplate.list = gfxData->spriteList;
    spriteTemplate.resourceData = &resourceHeader;
    spriteTemplate.priority = 32;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteTemplate.heapID = heapID;
    spriteTemplate.position.y = (88 * FX32_ONE);
    spriteTemplate.position.x = (120 * FX32_ONE);

    graphicsStruct->footprintAndTypeSprites[0] = SpriteList_Add(&spriteTemplate);
}

static void DeleteFootprintSpriteInstance(InfoMainGraphics *graphicsStruct)
{
    if (graphicsStruct->footprintAndTypeSprites[0]) {
        Sprite_Delete(graphicsStruct->footprintAndTypeSprites[0]);
    }
}

static void RenderEntryName(PokedexGraphicData **graphicsData, const InfoMainState *displayState, int heapID)
{
    PokedexMain_EntryNameNumber(*graphicsData, displayState->sortData, heapID, PokedexSort_CurrentStatusIndex(displayState->sortData), (172 * FX32_ONE), (32 * FX32_ONE));
    PokedexGraphics_SetSpeciesLabelPriority(*graphicsData, 0);
}

static void ConfigureLabel(PokedexGraphicData **graphicsData)
{
    PokedexGraphics_SetPokedexSpeciesLabelDraw(*graphicsData, 0);
    PokedexGraphics_SetSpeciesLabelGXOamMode(*graphicsData, GX_OAM_MODE_NORMAL);
}

static void ShowPokemonSprite(PokedexGraphicData **graphicsData, const InfoMainState *displayState)
{
    PokemonSprite *pokemonSprite = PokemonGraphics_GetPokemonChar(*graphicsData);
    int species = PokedexSort_CurrentSpecies(displayState->sortData);

    PokedexMain_DisplayPokemonSprite(*graphicsData, displayState->sortData, species, 2, 48, 72);
    PokemonSprite_SetAttribute(pokemonSprite, MON_SPRITE_HIDE, FALSE);
}

static void HidePokemonSprite(PokedexGraphicData **graphicsData)
{
    PokemonSprite *pokemonSprite = PokemonGraphics_GetPokemonChar(*graphicsData);

    PokemonSprite_SetAttribute(pokemonSprite, MON_SPRITE_HIDE, TRUE);
    PokemonSprite_ClearFade(pokemonSprite);
}

static void LoadTypeIconResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, int heapID)
{
    PokedexGraphicData *gfxData = *graphicsData;
    NARC *pokedexNarc = PokedexGraphics_GetNARC(*graphicsData);

    graphicsStruct->typeIconResources[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(gfxData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], pokedexNarc, type_icons_NCGR_lz, TRUE, type_icons_NCGR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(graphicsStruct->typeIconResources[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(graphicsStruct->typeIconResources[SPRITE_RESOURCE_CHAR]);

    graphicsStruct->typeIconResources[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(gfxData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], pokedexNarc, type_icons_NCLR, FALSE, type_icons_NCLR + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, NNS_G2D_VRAM_TYPE_2DMAIN, 5, heapID);

    SpriteTransfer_RequestPlttFreeSpace(graphicsStruct->typeIconResources[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(graphicsStruct->typeIconResources[SPRITE_RESOURCE_PLTT]);

    graphicsStruct->typeIconResources[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(gfxData->spriteResourceCollection[SPRITE_RESOURCE_CELL], pokedexNarc, type_icons_cell_NCER_lz, TRUE, type_icons_cell_NCER_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, SPRITE_RESOURCE_CELL, heapID);
    graphicsStruct->typeIconResources[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(gfxData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], pokedexNarc, type_icons_anim_NANR_lz, TRUE, type_icons_anim_NANR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, SPRITE_RESOURCE_ANIM, heapID);
}

static void UnloadTypeIconResources(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    PokedexGraphicData *gfxData = *graphicsData;

    SpriteTransfer_ResetCharTransfer(graphicsStruct->typeIconResources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(graphicsStruct->typeIconResources[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(gfxData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], graphicsStruct->typeIconResources[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(gfxData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], graphicsStruct->typeIconResources[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(gfxData->spriteResourceCollection[SPRITE_RESOURCE_CELL], graphicsStruct->typeIconResources[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(gfxData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], graphicsStruct->typeIconResources[SPRITE_RESOURCE_ANIM]);
}

static void CreateTypeIconSprites(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, int heapID)
{
    SpriteResourcesHeader resourceHeader;
    SpriteListTemplate spriteTemplate;
    PokedexGraphicData *gfxData = *graphicsData;
    int species = PokedexSort_CurrentSpecies(displayState->sortData);
    int formID = PokedexSort_DefaultForm(displayState->sortData, species);
    int type1 = SpeciesData_GetFormValue(species, formID, SPECIES_DATA_TYPE_1);
    int type2 = SpeciesData_GetFormValue(species, formID, SPECIES_DATA_TYPE_2);
    type1 = PokedexGraphics_GetAnimIDfromType(type1);
    type2 = PokedexGraphics_GetAnimIDfromType(type2);

    SpriteResourcesHeader_Init(&resourceHeader, type_icons_NCGR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_NCLR + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_cell_NCER_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_anim_NANR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, 0xffffffff, 0xffffffff, FALSE, 0, gfxData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], gfxData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], gfxData->spriteResourceCollection[SPRITE_RESOURCE_CELL], gfxData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    spriteTemplate.list = gfxData->spriteList;
    spriteTemplate.resourceData = &resourceHeader;
    spriteTemplate.priority = 32;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteTemplate.heapID = heapID;
    spriteTemplate.position.x = (170 * FX32_ONE);
    spriteTemplate.position.y = (72 * FX32_ONE);

    graphicsStruct->footprintAndTypeSprites[1] = SpriteList_Add(&spriteTemplate);

    Sprite_SetAnim(graphicsStruct->footprintAndTypeSprites[1], 0 + type1);

    if (type1 != type2) {
        spriteTemplate.position.x = (220 * FX32_ONE);
        spriteTemplate.position.y = (72 * FX32_ONE);
        graphicsStruct->footprintAndTypeSprites[2] = SpriteList_Add(&spriteTemplate);
        Sprite_SetAnim(graphicsStruct->footprintAndTypeSprites[2], 0 + type2);
    } else {
        graphicsStruct->footprintAndTypeSprites[2] = NULL;
    }
}

// This maps the type to an animation ID used in the Pokedex graphics. See zukan.narc -> files type_icons_cell_NCER_lz, type_icons_anim_NANR_lz, type_icons_NCGR_lz
int PokedexGraphics_GetAnimIDfromType(int monType)
{
    int animID;

    switch (monType) {
    case TYPE_NORMAL:
        animID = 0;
        break;
    case TYPE_FIGHTING:
        animID = 6;
        break;
    case TYPE_FLYING:
        animID = 14;
        break;
    case TYPE_POISON:
        animID = 10;
        break;
    case TYPE_GROUND:
        animID = 8;
        break;
    case TYPE_ROCK:
        animID = 5;
        break;
    case TYPE_BUG:
        animID = 11;
        break;
    case TYPE_GHOST:
    case TYPE_MYSTERY:
        animID = 7;
        break;
    case TYPE_STEEL:
        animID = 9;
        break;
    case TYPE_FIRE:
        animID = 1;
        break;
    case TYPE_WATER:
        animID = 3;
        break;
    case TYPE_GRASS:
        animID = 2;
        break;
    case TYPE_ELECTRIC:
        animID = 4;
        break;
    case TYPE_PSYCHIC:
        animID = 15;
        break;
    case TYPE_ICE:
        animID = 13;
        break;
    case TYPE_DRAGON:
        animID = 16;
        break;
    case TYPE_DARK:
        animID = 12;
        break;
    }

    return animID;
}

static void DeleteTypeIconSprites(InfoMainGraphics *graphicsStruct)
{
    if (graphicsStruct->footprintAndTypeSprites[1]) {
        Sprite_Delete(graphicsStruct->footprintAndTypeSprites[1]);
    }

    if (graphicsStruct->footprintAndTypeSprites[2]) {
        Sprite_Delete(graphicsStruct->footprintAndTypeSprites[2]);
    }
}

static void CreateCategoryBox(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, int heapID)
{
    SpriteResourcesHeader resourceHeader;
    SpriteListTemplate spriteTemplate;
    PokedexGraphicData *gfxData = *graphicsData;
    int species = PokedexSort_CurrentSpecies(displayState->sortData);
    PokedexDisplayBox displayBox;

    SpriteResourcesHeader_Init(&resourceHeader, type_icons_NCGR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_NCLR + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_cell_NCER_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, type_icons_anim_NANR_lz + POKEDEX_TYPE_ICON_RESOURCE_OFFSET, 0xffffffff, 0xffffffff, FALSE, 0, gfxData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], gfxData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], gfxData->spriteResourceCollection[SPRITE_RESOURCE_CELL], gfxData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    spriteTemplate.list = gfxData->spriteList;
    spriteTemplate.resourceData = &resourceHeader;
    spriteTemplate.priority = 32;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteTemplate.heapID = heapID;
    spriteTemplate.position.x = (192 * FX32_ONE);
    spriteTemplate.position.y = (52 * FX32_ONE);

    graphicsStruct->categoryBoxSprite = SpriteList_Add(&spriteTemplate);

    Sprite_SetAnim(graphicsStruct->categoryBoxSprite, POKEDEX_TYPE_ICON_BACKGROUND_BOX_CELL);

    if (PokedexSort_CurrentCaughtStatus(displayState->sortData) != CS_CAUGHT) {
        species = SPECIES_NONE;
    }

    Window *categoryWindow = InfoMain_CreateCategoryWindow((*graphicsData)->textMan, species, heapID);
    SpriteResource *paletteResource = PokedexGraphics_GetSpeciesLabelSpriteResource(*graphicsData, SPRITE_RESOURCE_PLTT);

    displayBox.textMan = (*graphicsData)->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(paletteResource, NULL);
    displayBox.sprite = graphicsStruct->categoryBoxSprite;
    displayBox.x = -78;
    displayBox.y = -8;
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 32 - 1;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = heapID;
    displayBox.window = categoryWindow;

    graphicsStruct->categoryTextData = PokedexTextManager_NextTextData(&displayBox);

    PokedexTextManager_FreeWindow(categoryWindow);
}

Window *InfoMain_CreateCategoryWindow(PokedexTextManager *textMan, enum Species species, enum HeapID heapID)
{
    Window *categoryWindow = PokedexTextManager_NewWindow(textMan, 18, 2);
    String *categoryString = PokedexText_Category(species, GAME_LANGUAGE, heapID);

    {
        u32 stringWidth = Font_CalcStringWidth(FONT_SUBSCREEN, categoryString, 0);
        u32 xOffset = (stringWidth < 136) ? (136 - stringWidth) / 2 : 0;

        PokedexTextManager_DisplayString(textMan, categoryWindow, categoryString, xOffset, 0);
    }

    PokedexText_Free(categoryString);

    return categoryWindow;
}

static void DeleteCategoryBox(InfoMainGraphics *graphicsStruct)
{
    Sprite_Delete(graphicsStruct->categoryBoxSprite);
    graphicsStruct->categoryBoxSprite = NULL;
    PokedexTextManager_FreeTextData(graphicsStruct->categoryTextData);
}

static void InitBlendMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing)
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

static BOOL UpdateBlendMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing)
{
    BOOL blendComplete;

    if (ov21_021E2A54(displayState->screenManager)) {
        blendComplete = PokedexGraphics_TakeBlendTransitionStep(&(*graphicsData)->blendMain);
    } else {
        blendComplete = PokedexGraphics_BlendTransitionComplete(&(*graphicsData)->blendMain);
    }

    if (blendComplete == TRUE) {
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

    return blendComplete;
}

static void InitPositionBlendMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing)
{
    SetXluMode(graphicsStruct);

    if (isInitializing == FALSE) {
        InitPokemonTransform(graphicsStruct, displayState->displayPositionX, displayState->displayPositionY, 4);
        InitLabelTransform(graphicsStruct);
    }

    if (ov21_021E2A54(displayState->screenManager)) {
        if (isInitializing) {
            PokedexGraphics_InitBlendTransition(&(*graphicsData)->blendMain, 4, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*graphicsData)->blendMain, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL UpdatePositionBlendMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing)
{
    BOOL allComplete[3];
    int i;

    if (isInitializing == FALSE) {
        allComplete[0] = UpdatePokemonTransform(graphicsStruct, graphicsData);
        allComplete[1] = UpdateLabelTransform(graphicsStruct, graphicsData);
    } else {
        allComplete[0] = TRUE;
        allComplete[1] = TRUE;
    }

    if (ov21_021E2A54(displayState->screenManager)) {
        allComplete[2] = PokedexGraphics_TakeBlendTransitionStep(&(*graphicsData)->blendMain);
    } else {
        allComplete[2] = PokedexGraphics_BlendTransitionComplete(&(*graphicsData)->blendMain);
    }

    for (i = 0; i < 3; i++) {
        if (allComplete[i] == FALSE) {
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

static void InitPositionMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing)
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

static BOOL UpdatePositionMode(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData, const InfoMainState *displayState, BOOL isInitializing)
{
    BOOL allComplete[2];
    int i;

    if (isInitializing == FALSE) {
        allComplete[0] = UpdatePokemonTransform(graphicsStruct, graphicsData);
    } else {
        allComplete[0] = TRUE;
    }

    if (ov21_021E2A54(displayState->screenManager)) {
        allComplete[1] = PokedexGraphics_TakeBlendTransitionStep(&(*graphicsData)->blendMain);
    } else {
        allComplete[1] = PokedexGraphics_BlendTransitionComplete(&(*graphicsData)->blendMain);
    }

    for (i = 0; i < 2; i++) {
        if (allComplete[i] == FALSE) {
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

static void SetXluMode(InfoMainGraphics *graphicsStruct)
{
    int i;

    for (i = 0; i < 3; i++) {
        if (graphicsStruct->footprintAndTypeSprites[i]) {
            Sprite_SetExplicitOAMMode(graphicsStruct->footprintAndTypeSprites[i], GX_OAM_MODE_XLU);
        }
    }

    Sprite_SetExplicitOAMMode(graphicsStruct->categoryBoxSprite, GX_OAM_MODE_XLU);
    sub_02012AF0(graphicsStruct->categoryTextData->fontOAM, GX_OAM_MODE_XLU);
}

static void SetNormalMode(InfoMainGraphics *graphicsStruct)
{
    int i;

    for (i = 0; i < 3; i++) {
        if (graphicsStruct->footprintAndTypeSprites[i]) {
            Sprite_SetExplicitOAMMode(graphicsStruct->footprintAndTypeSprites[i], GX_OAM_MODE_NORMAL);
        }
    }

    Sprite_SetExplicitOAMMode(graphicsStruct->categoryBoxSprite, GX_OAM_MODE_NORMAL);
    sub_02012AF0(graphicsStruct->categoryTextData->fontOAM, GX_OAM_MODE_NORMAL);
}

static void BlendPokemonSprite(PokedexGraphicData **graphicsData)
{
    PokedexGraphics_BlendPokemonChar(*graphicsData, &(*graphicsData)->blendMain);
}

static void InitPokemonTransform(InfoMainGraphics *graphicsStruct, int posX, int posY, int numSteps)
{
    PokedexGraphics_InitTransformation(&graphicsStruct->transformPokemon, 48, posX, 72, posY, numSteps);
}

static BOOL UpdatePokemonTransform(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    BOOL transformComplete = PokedexGraphics_TakeTransformStep(&graphicsStruct->transformPokemon);
    PokemonGraphics_SetCharCenterXY(*graphicsData, graphicsStruct->transformPokemon.currentX, graphicsStruct->transformPokemon.currentY);

    return transformComplete;
}

static void InitLabelTransform(InfoMainGraphics *graphicsStruct)
{
    PokedexGraphics_InitTransformation(&graphicsStruct->transformLabel, 172, 170, 32, 82, 4);
}

static BOOL UpdateLabelTransform(InfoMainGraphics *graphicsStruct, PokedexGraphicData **graphicsData)
{
    BOOL transformComplete = PokedexGraphics_TakeTransformStep(&graphicsStruct->transformLabel);
    ov21_021D1848(*graphicsData, graphicsStruct->transformLabel.currentX, graphicsStruct->transformLabel.currentY);

    return transformComplete;
}
