#include "applications/pokedex/pokedex_search.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021D4340.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021D5B68.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "font.h"
#include "heap.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "text.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

#define EXITSEARCH (1 << 1)

enum ScreenState {
    SS_MENU,
    SS_SEARCH,
    SS_LOADING,
    SS_RETURN,
    SS_EXIT
};

typedef struct {
    int *exitFlag;
    PokedexSortData *unk_04;
    UnkStruct_ov21_021D5B68 *unk_08;
    enum FilterMethod filterMethod;
    enum SortOrder sortOrder;
    enum FilterName filterName;
    enum FilterType typeFilter1;
    enum FilterType typeFilter2;
    enum FilterForm filterForm;
    BOOL screenChange;
    BOOL applyFilter;
    BOOL noneFound;
    enum ScreenState screenState;
    int screenTimer;
} PokedexSearchSettings;

typedef struct {
    enum FilterMethod filterMethod;
    enum SortOrder sortOrder;
    enum FilterName filterName;
    enum FilterType typeFilter1;
    enum FilterType typeFilter2;
    enum FilterForm filterForm;
    BOOL noneFound;
    int noneFoundTimer;
    Sprite *form;
    SpriteResource *searchGraphics[4];
    PokedexLoadingScreen loadingScreen;
    Sprite *pokeball;
    void *tileMap;
    NNSG2dScreenData *screenData;
} PokedexSearchDisplay;

static PokedexSearchSettings *InitSearchSettings(enum HeapID heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021D8724(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021D874C(enum HeapID heapID, PokedexApp *param1);
static void FreeSearchSettings(PokedexSearchSettings *searchSettings);
static void ov21_021D879C(PokedexGraphicData **param0);
static void ov21_021D87B0(UnkStruct_ov21_021D4660 *param0);
static int ov21_021D87C8(void);
static int ResetSearchSettings(PokedexDataManager *dataMan, void *data);
static int UpdateScreenState(PokedexDataManager *dataMan, void *data);
static int ov21_021D8928(PokedexDataManager *dataMan, void *data);
static int EnterPokedexSearch(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int UpdateDisplay(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ExitPokedexSearch(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void LoadingScreenTransition(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID);
static void LoadingScreenAnimation(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID);
static void SearchingMessage(PokedexGraphicData **param0, enum HeapID heapID);
static void ReturnSearchDisplay(PokedexGraphicData **param0, PokedexSearchDisplay *searchDisplay, enum HeapID heapID);
static void DefaultDisplay(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, const int *param3, enum HeapID heapID);
static void ClearScreen(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1);
static void ov21_021D8B8C(PokedexGraphicData **param0, const PokedexSearchSettings *searchSettings, enum HeapID heapID);
static void GetSearchGraphics(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, enum HeapID heapID);
static void FreeSearchGraphics(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1);
static void InitCellActors(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID);
static void FreeCellActors(PokedexSearchDisplay *searchDisplay);
static void GetDisplayMap(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID, int param4);
static void FreeDisplayMap(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1);
static void UpdateSelectionDisplay(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID);
static void FilterMethodMap(PokedexGraphicData **param0, int filterMethod, enum HeapID heapID);
static void DescriptionMessage(PokedexGraphicData **param0, int filterMethod, enum HeapID heapID);
static void SortOrderMessage(PokedexGraphicData **param0, int sortOrder, enum HeapID heapID);
static void FilterNameMessage(PokedexGraphicData **param0, int filterName, enum HeapID heapID);
static void FilterType1Message(PokedexGraphicData **param0, int typeFilter1, enum HeapID heapID);
static void FilterType2Message(PokedexGraphicData **param0, int typeFilter2, enum HeapID heapID);
static void FilterTypeMessage(PokedexGraphicData **param0, int typeFilter, enum HeapID heapID, int y);
static void FilterFormSilhouette(PokedexSearchDisplay *searchDisplay, int filterForm);
static void EmptyDexMessage(PokedexGraphicData **param0, enum HeapID heapID);
static void ov21_021D8C00(PokedexGraphicData **param0);

void PokedexSearch_TransitionFunctions(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    PokedexSearchSettings *searchSettings = InitSearchSettings(heapID, param1);
    PokedexGraphicData **v1 = ov21_021D8724(heapID, param1);
    UnkStruct_ov21_021D4660 *v2 = ov21_021D874C(heapID, param1);

    param0->pageData = searchSettings;
    param0->pageGraphics = v1;
    param0->screenStates = v2;
    param0->numStates = ov21_021D87C8();

    param0->dataFunc[0] = ResetSearchSettings;
    param0->dataFunc[1] = UpdateScreenState;
    param0->dataFunc[2] = ov21_021D8928;
    param0->graphicsFunc[0] = EnterPokedexSearch;
    param0->graphicsFunc[1] = UpdateDisplay;
    param0->graphicsFunc[2] = ExitPokedexSearch;
}

void PokedexSearch_FreeData(PokedexScreenManager *param0)
{
    FreeSearchSettings(param0->pageData);
    ov21_021D879C(param0->pageGraphics);
    ov21_021D87B0(param0->screenStates);
}

void PokedexSearch_SetFilterMethod(PokedexScreenManager *param0, enum FilterMethod filterMethod)
{
    PokedexSearchSettings *searchSettings = param0->pageData;

    GF_ASSERT(filterMethod < MAX_FILTER_METHOD);
    searchSettings->filterMethod = filterMethod;
}

enum FilterMethod PokedexSearch_GetFilterMethod(const PokedexScreenManager *param0)
{
    const PokedexSearchSettings *searchSettings = param0->pageData;
    return searchSettings->filterMethod;
}

void PokedexSearch_SetSortOrder(PokedexScreenManager *param0, enum SortOrder sortOrder)
{
    PokedexSearchSettings *searchSettings = param0->pageData;

    GF_ASSERT(sortOrder < MAX_SORT_ORDER);
    searchSettings->sortOrder = sortOrder;
}

enum SortOrder PokedexSearch_GetSortOrder(const PokedexScreenManager *param0)
{
    const PokedexSearchSettings *searchSettings = param0->pageData;
    return searchSettings->sortOrder;
}

void PokedexSearch_SetFilterName(PokedexScreenManager *param0, enum FilterName filterName)
{
    PokedexSearchSettings *searchSettings = param0->pageData;

    GF_ASSERT(filterName < MAX_FILTER_NAME);
    searchSettings->filterName = filterName;
}

enum FilterName PokedexSearch_GetFilterName(const PokedexScreenManager *param0)
{
    const PokedexSearchSettings *searchSettings = param0->pageData;
    return searchSettings->filterName;
}

void PokedexSearch_SetFilterType(PokedexScreenManager *param0, enum FilterType filterType, int typeSlot)
{
    PokedexSearchSettings *searchSettings = param0->pageData;

    GF_ASSERT(filterType < MAX_FILTER_TYPE);

    if (typeSlot == 0) {
        searchSettings->typeFilter1 = filterType;
    } else {
        searchSettings->typeFilter2 = filterType;
    }
}

enum FilterType PokedexSearch_GetFilterType(const PokedexScreenManager *param0, int typeSlot)
{
    const PokedexSearchSettings *searchSettings = param0->pageData;

    if (typeSlot == 0) {
        return searchSettings->typeFilter1;
    }

    return searchSettings->typeFilter2;
}

void PokedexSearch_SetFilterForm(PokedexScreenManager *param0, enum FilterForm filterForm)
{
    PokedexSearchSettings *searchSettings = param0->pageData;

    GF_ASSERT(filterForm < MAX_FILTER_FORM);
    searchSettings->filterForm = filterForm;
}

enum FilterForm PokedexSearch_GetFilterForm(const PokedexScreenManager *param0)
{
    const PokedexSearchSettings *searchSettings = param0->pageData;
    return searchSettings->filterForm;
}

void PokedexSearch_SetFilteredState(PokedexScreenManager *param0, BOOL applyFilter)
{
    PokedexSearchSettings *searchSettings = param0->pageData;

    searchSettings->screenChange = TRUE;
    searchSettings->applyFilter = applyFilter;
}

BOOL PokedexSearch_GetFilteredState(const PokedexScreenManager *param0)
{
    const PokedexSearchSettings *searchSettings = param0->pageData;
    return searchSettings->applyFilter;
}

int PokedexSearch_GetScreenState(const PokedexScreenManager *param0)
{
    const PokedexSearchSettings *searchSettings = param0->pageData;
    return searchSettings->screenState;
}

int PokedexSearch_GetScreenTimer(const PokedexScreenManager *param0)
{
    const PokedexSearchSettings *searchSettings = param0->pageData;
    return searchSettings->screenTimer;
}

static PokedexSearchSettings *InitSearchSettings(enum HeapID heapID, PokedexApp *param1)
{
    PokedexSearchSettings *searchSettings = Heap_Alloc(heapID, sizeof(PokedexSearchSettings));

    GF_ASSERT(searchSettings);
    memset(searchSettings, 0, sizeof(PokedexSearchSettings));

    searchSettings->exitFlag = ov21_021D138C(param1);
    searchSettings->unk_04 = PokedexMain_GetSortData(param1);
    PokedexScreenManager *v1 = ov21_021D1410(param1, 0);
    searchSettings->unk_08 = v1->pageData;

    return searchSettings;
}

static PokedexGraphicData **ov21_021D8724(enum HeapID heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData **));

    *v0 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021D874C(enum HeapID heapID, PokedexApp *param1)
{
    int v1 = ov21_021D87C8();

    UnkStruct_ov21_021D4660 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D47F0(heapID, &v0[0], param1, (1 << 1));

    return v0;
}

static void FreeSearchSettings(PokedexSearchSettings *searchSettings)
{
    GF_ASSERT(searchSettings);
    Heap_Free(searchSettings);
}

static void ov21_021D879C(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021D87B0(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    Heap_Free(param0);
}

static int ov21_021D87C8(void)
{
    return 1;
}

static int ResetSearchSettings(PokedexDataManager *dataMan, void *data)
{
    PokedexSearchSettings *searchSettings = data;
    int *v1 = Heap_Alloc(dataMan->heapID, sizeof(int));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(int));

    dataMan->pageData = v1;

    searchSettings->filterMethod = FM_ORDER;
    searchSettings->sortOrder = SO_NUMERICAL;
    searchSettings->filterName = FN_NONE;
    searchSettings->typeFilter1 = FT_NONE;
    searchSettings->typeFilter2 = FT_NONE;
    searchSettings->filterForm = FF_NONE;
    searchSettings->screenChange = FALSE;
    searchSettings->applyFilter = FALSE;
    searchSettings->screenState = SS_MENU;

    return 1;
}

static int UpdateScreenState(PokedexDataManager *dataMan, void *data)
{
    PokedexSearchSettings *searchSettings = data;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    switch (dataMan->state) {
    case 0:

        if (searchSettings->noneFound) {
            searchSettings->noneFound = FALSE;
        }

        if (searchSettings->screenChange == TRUE) {
            if (searchSettings->applyFilter == FALSE) {
                *searchSettings->exitFlag |= EXITSEARCH;
                searchSettings->screenState = SS_EXIT;
            } else {
                searchSettings->screenState = SS_SEARCH;
                searchSettings->screenTimer = 4;
                dataMan->state++;
            }
        }
        break;
    case 1:
        searchSettings->screenTimer--;

        if (searchSettings->screenTimer < 0) {
            dataMan->state++;

            searchSettings->screenState = SS_LOADING;
            searchSettings->screenTimer = 32;

            Sound_PlayEffect(SEQ_SE_DP_Z_SEARCH);
        }
        break;
    case 2:
        searchSettings->screenTimer--;

        if (searchSettings->screenTimer < 0) {
            dataMan->state++;
        }
        break;
    case 3:
        BOOL dexExists = TRUE;
        dexExists = PokedexSort_Sort(searchSettings->unk_04, searchSettings->sortOrder, searchSettings->filterName, searchSettings->typeFilter1, searchSettings->typeFilter2, searchSettings->filterForm, PokedexSort_IsNationalDex(searchSettings->unk_04), dataMan->heapID, TRUE);

        if (dexExists == TRUE) {
            *searchSettings->exitFlag |= EXITSEARCH;
            PokedexSort_SetCurrentValues(searchSettings->unk_04, 0);
            searchSettings->unk_04->unk_1740 = 1;
            searchSettings->unk_08->unk_18 = 1;
        } else {
            searchSettings->applyFilter = FALSE;
            searchSettings->screenChange = FALSE;
            searchSettings->noneFound = TRUE;
            searchSettings->screenState = SS_RETURN;
            searchSettings->screenTimer = 4;

            dataMan->state++;
        }
        break;
    case 4:
        searchSettings->screenTimer--;

        if (searchSettings->screenTimer < 0) {
            searchSettings->screenState = SS_MENU;
            searchSettings->screenTimer = 0;
            dataMan->state = 0;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 0;
}

static int ov21_021D8928(PokedexDataManager *dataMan, void *data)
{
    int *v0 = dataMan->pageData;

    Heap_Free(v0);
    dataMan->pageData = NULL;

    return 1;
}

static int EnterPokedexSearch(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexSearchSettings *searchSettings = data;
    const int *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    PokedexSearchDisplay *searchDisplay = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(PokedexSearchDisplay));
        memset(graphicsMan->pageGraphics, 0, sizeof(PokedexSearchDisplay));
        graphicsMan->state++;
        break;
    case 1:
        DefaultDisplay(searchDisplay, v2, searchSettings, v1, graphicsMan->heapID);
        BrightnessController_StartTransition(1, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_MAIN_SCREEN);
        graphicsMan->state++;
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int UpdateDisplay(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexSearchSettings *searchSettings = data;
    PokedexGraphicData **v2 = graphics;
    PokedexSearchDisplay *searchDisplay = graphicsMan->pageGraphics;

    if (searchSettings->screenState == SS_MENU) {
        UpdateSelectionDisplay(searchDisplay, v2, searchSettings, graphicsMan->heapID);
    } else if ((searchSettings->screenState == SS_SEARCH) || (searchSettings->screenState == SS_RETURN)) {
        LoadingScreenTransition(searchDisplay, v2, searchSettings, graphicsMan->heapID);
    } else if (searchSettings->screenState != SS_EXIT) {
        LoadingScreenAnimation(searchDisplay, v2, searchSettings, graphicsMan->heapID);
    }

    return 0;
}

static int ExitPokedexSearch(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexSearchSettings *searchSettings = data;
    PokedexGraphicData **v2 = graphics;
    PokedexSearchDisplay *searchDisplay = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        if (searchSettings->applyFilter == FALSE) {
            BrightnessController_StartTransition(6, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_MAIN_SCREEN);
            graphicsMan->state++;
        } else {
            graphicsMan->state = 2;
        }
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ClearScreen(searchDisplay, v2);
        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->pageGraphics = NULL;
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void DefaultDisplay(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, const int *param3, enum HeapID heapID)
{
    Bg_ClearTilemap((*param1)->bgConfig, 2);
    Bg_ClearTilemap((*param1)->bgConfig, 1);
    Window_FillTilemap(&(*param1)->window, 0);
    Window_SetPalette(&(*param1)->window, 7);

    ov21_021D8C00(param1);
    ov21_021D8B8C(param1, searchSettings, heapID);
    GetDisplayMap(searchDisplay, param1, searchSettings, heapID, PokedexSort_IsNationalDex(searchSettings->unk_04));
    GetSearchGraphics(searchDisplay, param1, heapID);
    InitCellActors(searchDisplay, param1, searchSettings, heapID);

    DescriptionMessage(param1, searchSettings->filterMethod, heapID);
    FilterMethodMap(param1, searchSettings->filterMethod, heapID);
    SortOrderMessage(param1, searchSettings->sortOrder, heapID);
    FilterNameMessage(param1, searchSettings->filterName, heapID);
    FilterType1Message(param1, searchSettings->typeFilter1, heapID);
    FilterType2Message(param1, searchSettings->typeFilter2, heapID);
    FilterFormSilhouette(searchDisplay, searchSettings->filterForm);

    Bg_SetPriority(BG_LAYER_MAIN_1, 1);
    Bg_SetPriority(BG_LAYER_MAIN_2, 0);
}

static void ClearScreen(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1)
{
    FreeCellActors(searchDisplay);
    FreeSearchGraphics(searchDisplay, param1);
    FreeDisplayMap(searchDisplay, param1);

    Bg_ClearTilemap((*param1)->bgConfig, 1);
    Window_FillTilemap(&(*param1)->window, 0);
    Window_SetPalette(&(*param1)->window, 0);
    Bg_SetPriority(BG_LAYER_MAIN_1, 0);
    Bg_SetPriority(BG_LAYER_MAIN_2, 1);
}

static void ov21_021D8B8C(PokedexGraphicData **param0, const PokedexSearchSettings *searchSettings, enum HeapID heapID)
{
    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, scroll_main_background_NCGR_lz, (*param0)->bgConfig, 3, 0, 0, TRUE, heapID);
    PokedexGraphics_LoadGraphicNarcPaletteData(*param0, search_NCLR, 0, 0, 32, heapID);
}

static void GetDisplayMap(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID, int param4)
{
    int mapIndex;

    if (param4 == 1) {
        mapIndex = search_national_NSCR_lz;
    } else {
        mapIndex = search_sinnoh_NSCR_lz;
    }

    searchDisplay->tileMap = PokedexGraphics_GetGraphicNarcTilemapData(*param1, mapIndex, TRUE, &searchDisplay->screenData, heapID);
}

static void FreeDisplayMap(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1)
{
    Heap_Free(searchDisplay->tileMap);
    searchDisplay->tileMap = NULL;
    searchDisplay->screenData = NULL;
}

static void ov21_021D8C00(PokedexGraphicData **param0)
{
    PokemonSprite *v0 = PokemonGraphics_GetPokemonChar(*param0);

    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 1);
    PokemonSprite_ClearFade(v0);
}

static void GetSearchGraphics(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, enum HeapID heapID)
{
    PokedexGraphicData *v0 = *param1;
    NARC *pokedexGraphics = PokedexGraphics_GetNARC(v0);

    searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[SPRITE_RESOURCE_CHAR], pokedexGraphics, search_body_shapes_NCGR_lz, TRUE, search_body_shapes_NCGR_lz + 15000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR]);

    searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[SPRITE_RESOURCE_PLTT], pokedexGraphics, buttons_NCLR, FALSE, buttons_NCLR + 15000, NNS_G2D_VRAM_TYPE_2DMAIN, 12, heapID);

    SpriteTransfer_RequestPlttFreeSpace(searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT]);

    searchDisplay->searchGraphics[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[SPRITE_RESOURCE_CELL], pokedexGraphics, search_body_shapes_cell_NCER_lz, TRUE, search_body_shapes_cell_NCER_lz + 15000, SPRITE_RESOURCE_CELL, heapID);
    searchDisplay->searchGraphics[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[SPRITE_RESOURCE_ANIM], pokedexGraphics, search_body_shapes_anim_NANR_lz, TRUE, search_body_shapes_anim_NANR_lz + 15000, SPRITE_RESOURCE_ANIM, heapID);
}

static void FreeSearchGraphics(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[SPRITE_RESOURCE_CHAR], searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[SPRITE_RESOURCE_PLTT], searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[SPRITE_RESOURCE_CELL], searchDisplay->searchGraphics[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[SPRITE_RESOURCE_ANIM], searchDisplay->searchGraphics[SPRITE_RESOURCE_ANIM]);
}

static void InitCellActors(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;

    SpriteResourcesHeader_Init(&v0, search_body_shapes_NCGR_lz + 15000, buttons_NCLR + 15000, search_body_shapes_cell_NCER_lz + 15000, search_body_shapes_anim_NANR_lz + 15000, 0xffffffff, 0xffffffff, FALSE, 2, v2->spriteResourceCollection[SPRITE_RESOURCE_CHAR], v2->spriteResourceCollection[SPRITE_RESOURCE_PLTT], v2->spriteResourceCollection[SPRITE_RESOURCE_CELL], v2->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;

    v1.position.x = 128 << FX32_SHIFT;
    v1.position.y = 164 << FX32_SHIFT;
    searchDisplay->form = SpriteList_Add(&v1);

    Sprite_SetAnim(searchDisplay->form, 3);

    v1.position.x = 128 << FX32_SHIFT;
    v1.position.y = 96 << FX32_SHIFT;

    searchDisplay->pokeball = SpriteList_Add(&v1);

    Sprite_SetAnim(searchDisplay->pokeball, 17);
    Sprite_SetDrawFlag(searchDisplay->pokeball, FALSE);
    Sprite_SetAffineOverwriteMode(searchDisplay->pokeball, AFFINE_OVERWRITE_MODE_NORMAL);
    Sprite_SetExplicitPriority(searchDisplay->pokeball, 0);
}

static void FreeCellActors(PokedexSearchDisplay *searchDisplay)
{
    Sprite_Delete(searchDisplay->form);
    Sprite_Delete(searchDisplay->pokeball);
}

static void DescriptionMessage(PokedexGraphicData **param0, int filterMethod, enum HeapID heapID)
{
    PokedexGraphicData *v0 = *param0;
    int entryID;

    Window_FillRectWithColor(&v0->window, 0, 24, 8, 208, 32);

    switch (filterMethod) {
    case FM_ORDER:
        entryID = pl_msg_pokedex_listing_description;
        break;
    case FM_NAME:
        entryID = pl_msg_pokedex_alphabetical_description;
        break;
    case FM_TYPE:
        entryID = pl_msg_pokedex_type_description;
        break;
    case FM_FORM:
        entryID = pl_msg_pokedex_body_description;
        break;
    default:
        break;
    }

    String *descriptionMessage = PokedexMain_GetMessage(entryID, heapID);

    u32 xOffset = 24 + (208 - Font_CalcMaxLineWidth(FONT_SYSTEM, descriptionMessage, 0)) / 2;
    u32 yOffset = 8 + (32 - String_NumLines(descriptionMessage) * 16) / 2;
    Text_AddPrinterWithParamsAndColor(&v0->window, FONT_SYSTEM, descriptionMessage, xOffset, yOffset, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    String_Free(descriptionMessage);
}

static void EmptyDexMessage(PokedexGraphicData **param0, enum HeapID heapID)
{
    PokedexGraphicData *v0 = *param0;

    Window_FillRectWithColor(&v0->window, 0, 24, 8, 208, 32);

    String *noneMessage = PokedexMain_GetMessage(pl_msg_pokedex_nonefound, heapID);

    {
        u32 xOffset = 24 + (208 - Font_CalcMaxLineWidth(FONT_SYSTEM, noneMessage, 0)) / 2;
        u32 yOffset = 8 + (32 - String_NumLines(noneMessage) * 16) / 2;
        Text_AddPrinterWithParamsAndColor(&v0->window, FONT_SYSTEM, noneMessage, xOffset, yOffset, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    String_Free(noneMessage);
}

static void UpdateSelectionDisplay(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID)
{
    if (searchSettings->noneFound != searchDisplay->noneFound) {
        searchDisplay->noneFound = searchSettings->noneFound;

        if (searchDisplay->noneFound == TRUE) {
            searchDisplay->noneFoundTimer = 64;
            EmptyDexMessage(param1, heapID);
        }
    }

    if (searchDisplay->noneFoundTimer > 0) {
        searchDisplay->noneFoundTimer--;
    } else if (searchDisplay->noneFoundTimer == 0) {
        DescriptionMessage(param1, searchSettings->filterMethod, heapID);
        searchDisplay->noneFoundTimer--;
    }

    if (searchDisplay->filterMethod != searchSettings->filterMethod) {
        FilterMethodMap(param1, searchSettings->filterMethod, heapID);
        DescriptionMessage(param1, searchSettings->filterMethod, heapID);
        searchDisplay->filterMethod = searchSettings->filterMethod;
    }

    if (searchDisplay->sortOrder != searchSettings->sortOrder) {
        SortOrderMessage(param1, searchSettings->sortOrder, heapID);
        searchDisplay->sortOrder = searchSettings->sortOrder;
    }

    if (searchDisplay->filterName != searchSettings->filterName) {
        FilterNameMessage(param1, searchSettings->filterName, heapID);
        searchDisplay->filterName = searchSettings->filterName;
    }

    if (searchDisplay->typeFilter1 != searchSettings->typeFilter1) {
        FilterType1Message(param1, searchSettings->typeFilter1, heapID);
        searchDisplay->typeFilter1 = searchSettings->typeFilter1;
    }

    if (searchDisplay->typeFilter2 != searchSettings->typeFilter2) {
        FilterType2Message(param1, searchSettings->typeFilter2, heapID);
        searchDisplay->typeFilter2 = searchSettings->typeFilter2;
    }

    if (searchDisplay->filterForm != searchSettings->filterForm) {
        FilterFormSilhouette(searchDisplay, searchSettings->filterForm);
        searchDisplay->filterForm = searchSettings->filterForm;
    }
}

static void FilterMethodMap(PokedexGraphicData **param0, int filterMethod, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;
    int y;
    int mapIndex;

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, search_filter_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);

    switch (filterMethod) {
    case FM_ORDER:
        y = 6;
        mapIndex = search_filter_order_NSCR_lz;
        break;
    case FM_NAME:
        y = 9;
        mapIndex = search_filter_name_NSCR_lz;
        break;
    case FM_TYPE:
        y = 12;
        mapIndex = search_filter_type_NSCR_lz;
        break;
    case FM_FORM:
        y = 17;
        mapIndex = search_filter_form_NSCR_lz;
        break;
    default:
        break;
    }

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, mapIndex, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 6, y, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 3);
}

static void SortOrderMessage(PokedexGraphicData **param0, int sortOrder, enum HeapID heapID)
{
    PokedexGraphicData *v0 = *param0;

    Window_FillRectWithColor(&v0->window, 0, 88, 52, 80, 16);

    int entryID = pl_msg_pokedex_numerical + sortOrder;
    String *sortMessage = PokedexMain_GetMessage(entryID, heapID);

    u32 xOffset = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, sortMessage, 0, 80);
    Text_AddPrinterWithParamsAndColor(&v0->window, FONT_SYSTEM, sortMessage, xOffset, 52, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);

    String_Free(sortMessage);
}

static void FilterNameMessage(PokedexGraphicData **param0, int filterName, enum HeapID heapID)
{
    PokedexGraphicData *v0 = *param0;
    int entryID;

    Window_FillRectWithColor(&v0->window, 0, 88, 77, 80, 16);

    switch (filterName) {
    case FN_NONE:
        entryID = pl_msg_pokedex_nonealphabetical;
        break;
    case FN_ABC:
        entryID = pl_msg_pokedex_abc;
        break;
    case FN_DEF:
        entryID = pl_msg_pokedex_def;
        break;
    case FN_GHI:
        entryID = pl_msg_pokedex_ghi;
        break;
    case FN_JKL:
        entryID = pl_msg_pokedex_jkl;
        break;
    case FN_MNO:
        entryID = pl_msg_pokedex_mno;
        break;
    case FN_PQR:
        entryID = pl_msg_pokedex_pqr;
        break;
    case FN_STU:
        entryID = pl_msg_pokedex_stu;
        break;
    case FN_VWX:
        entryID = pl_msg_pokedex_vwx;
        break;
    case FN_YZ:
        entryID = pl_msg_pokedex_yz;
        break;
    }

    String *filterMessage = PokedexMain_GetMessage(entryID, heapID);

    {
        u32 xOffset = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, filterMessage, 0, 80);
        Text_AddPrinterWithParamsAndColor(&v0->window, FONT_SYSTEM, filterMessage, xOffset, 77, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);
    }

    String_Free(filterMessage);
}

static void FilterTypeMessage(PokedexGraphicData **param0, int typeFilter, enum HeapID heapID, int y)
{
    PokedexGraphicData *v0 = *param0;
    int entryID;

    Window_FillRectWithColor(&v0->window, 0, 88, y, 80, 16);

    switch (typeFilter) {
    case FT_NONE:
        entryID = pl_msg_pokedex_dash;
        break;
    case FT_NORMAL:
        entryID = pl_msg_pokedex_normal;
        break;
    case FT_FIGHTING:
        entryID = pl_msg_pokedex_fight;
        break;
    case FT_FLYING:
        entryID = pl_msg_pokedex_flying;
        break;
    case FT_POISON:
        entryID = pl_msg_pokedex_poison;
        break;
    case FT_GROUND:
        entryID = pl_msg_pokedex_ground;
        break;
    case FT_ROCK:
        entryID = pl_msg_pokedex_rock;
        break;
    case FT_BUG:
        entryID = pl_msg_pokedex_bug;
        break;
    case FT_GHOST:
        entryID = pl_msg_pokedex_ghost;
        break;
    case FT_STEEL:
        entryID = pl_msg_pokedex_steel;
        break;
    case FT_FIRE:
        entryID = pl_msg_pokedex_fire;
        break;
    case FT_WATER:
        entryID = pl_msg_pokedex_water;
        break;
    case FT_GRASS:
        entryID = pl_msg_pokedex_grass;
        break;
    case FT_ELECTRIC:
        entryID = pl_msg_pokedex_electric;
        break;
    case FT_PSYCHIC:
        entryID = pl_msg_pokedex_psychic;
        break;
    case FT_ICE:
        entryID = pl_msg_pokedex_ice;
        break;
    case FT_DRAGON:
        entryID = pl_msg_pokedex_dragon;
        break;
    case FT_DARK:
        entryID = pl_msg_pokedex_dark;
        break;
    }

    String *filterMessage = PokedexMain_GetMessage(entryID, heapID);

    {
        u32 x = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, filterMessage, 0, 80);
        Text_AddPrinterWithParamsAndColor(&v0->window, FONT_SYSTEM, filterMessage, x, y, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);
    }

    String_Free(filterMessage);
}

static void FilterType1Message(PokedexGraphicData **param0, int typeFilter1, enum HeapID heapID)
{
    FilterTypeMessage(param0, typeFilter1, heapID, 102);
}

static void FilterType2Message(PokedexGraphicData **param0, int typeFilter2, enum HeapID heapID)
{
    FilterTypeMessage(param0, typeFilter2, heapID, 120);
}

static void FilterFormSilhouette(PokedexSearchDisplay *searchDisplay, int filterForm)
{
    if (filterForm == FF_NONE) {
        Sprite_SetDrawFlag(searchDisplay->form, FALSE);
    } else {
        Sprite_SetDrawFlag(searchDisplay->form, TRUE);

        switch (filterForm) {
        case FF_QUADRUPED:
            Sprite_SetAnim(searchDisplay->form, 3);
            break;
        case FF_BIPEDALTAILLESS:
            Sprite_SetAnim(searchDisplay->form, 4);
            break;
        case FF_BIPEDALTAILED:
            Sprite_SetAnim(searchDisplay->form, 5);
            break;
        case FF_SERPENTINE:
            Sprite_SetAnim(searchDisplay->form, 6);
            break;
        case FF_MULTIWINGED:
            Sprite_SetAnim(searchDisplay->form, 7);
            break;
        case FF_WINGED:
            Sprite_SetAnim(searchDisplay->form, 8);
            break;
        case FF_INSECTOID:
            Sprite_SetAnim(searchDisplay->form, 9);
            break;
        case FF_HEADBASE:
            Sprite_SetAnim(searchDisplay->form, 10);
            break;
        case FF_HEADARMS:
            Sprite_SetAnim(searchDisplay->form, 11);
            break;
        case FF_HEADLEGS:
            Sprite_SetAnim(searchDisplay->form, 12);
            break;
        case FF_TENTACLES:
            Sprite_SetAnim(searchDisplay->form, 13);
            break;
        case FF_FINS:
            Sprite_SetAnim(searchDisplay->form, 14);
            break;
        case FF_HEAD:
            Sprite_SetAnim(searchDisplay->form, 15);
            break;
        case FF_MULTIBODY:
            Sprite_SetAnim(searchDisplay->form, 16);
            break;
        default:
            break;
        }
    }
}

static void LoadingScreenTransition(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID)
{
    if (searchSettings->screenTimer == 4) {
        if (searchSettings->screenState == SS_SEARCH) {
            PokedexMain_SetLoadingScreenParams(&searchDisplay->loadingScreen, (*param1)->bgConfig, 2, searchDisplay->screenData, 0, 12, 0, 20, 4);
        } else {
            ReturnSearchDisplay(param1, searchDisplay, heapID);

            PokedexMain_SetLoadingScreenParams(&searchDisplay->loadingScreen, (*param1)->bgConfig, 2, searchDisplay->screenData, 12, 0, 20, 0, 4);
        }
    }

    PokedexMain_LoadingScreenMove(&searchDisplay->loadingScreen);
}

static void LoadingScreenAnimation(PokedexSearchDisplay *searchDisplay, PokedexGraphicData **param1, const PokedexSearchSettings *searchSettings, enum HeapID heapID)
{
    if (searchSettings->screenTimer == 32) {
        Sprite_SetDrawFlag(searchDisplay->pokeball, TRUE);
        SearchingMessage(param1, heapID);
    } else if (searchSettings->screenTimer == 0) {
        Sprite_SetDrawFlag(searchDisplay->pokeball, FALSE);
        Window_FillTilemap(&(*param1)->window, 0);
        Window_ScheduleCopyToVRAM(&(*param1)->window);
    }

    int time = 4 - searchSettings->screenTimer;
    int angle = ((180 * 0xffff) / 360) * time;
    angle = angle / 4;

    Sprite_SetAffineZRotation(searchDisplay->pokeball, (u16)angle);
}

static void SearchingMessage(PokedexGraphicData **param0, enum HeapID heapID)
{
    PokedexGraphicData *v0 = *param0;

    Window_FillTilemap(&(*param0)->window, 0);

    String *searchingMessage = PokedexMain_GetMessage(pl_msg_pokedex_searching, heapID);

    u32 xOffset = (256 - Font_CalcMaxLineWidth(FONT_SYSTEM, searchingMessage, 0)) / 2;

    Text_AddPrinterWithParamsAndColor(&v0->window, FONT_SYSTEM, searchingMessage, xOffset, 128, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    String_Free(searchingMessage);
    Bg_SetPriority(BG_LAYER_MAIN_1, 0);
    Bg_SetPriority(BG_LAYER_MAIN_2, 1);
}

static void ReturnSearchDisplay(PokedexGraphicData **param0, PokedexSearchDisplay *searchDisplay, enum HeapID heapID)
{
    Bg_SetPriority(BG_LAYER_MAIN_1, 1);
    Bg_SetPriority(BG_LAYER_MAIN_2, 0);
    Window_FillTilemap(&(*param0)->window, 0);

    FilterMethodMap(param0, searchDisplay->filterMethod, heapID);
    DescriptionMessage(param0, searchDisplay->filterMethod, heapID);
    SortOrderMessage(param0, searchDisplay->sortOrder, heapID);
    FilterNameMessage(param0, searchDisplay->filterName, heapID);
    FilterType1Message(param0, searchDisplay->typeFilter1, heapID);
    FilterType2Message(param0, searchDisplay->typeFilter2, heapID);
    FilterFormSilhouette(searchDisplay, searchDisplay->filterForm);
}
