#include "overlay021/pokedex_search.h"

#include <nitro.h>
#include <string.h>

#include "generated/sdat.h"

#include "struct_decls/sprite_decl.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4340.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D5B68.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "font.h"
#include "heap.h"
#include "narc.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"

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
    UnkStruct_ov21_021D3320 *unk_04;
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
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021D879C;

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

static PokedexSearchSettings *InitSearchSettings(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D879C *ov21_021D8724(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D4660 *ov21_021D874C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static void FreeSearchSettings(PokedexSearchSettings *searchSettings);
static void ov21_021D879C(UnkStruct_ov21_021D879C *param0);
static void ov21_021D87B0(UnkStruct_ov21_021D4660 *param0);
static int ov21_021D87C8(void);
static int ResetSearchSettings(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int UpdateScreenState(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D8928(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int EnterPokedexSearch(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int UpdateDisplay(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ExitPokedexSearch(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void LoadingScreenTransition(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID);
static void LoadingScreenAnimation(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID);
static void SearchingMessage(UnkStruct_ov21_021D879C *param0, enum HeapId heapID);
static void ReturnSearchDisplay(UnkStruct_ov21_021D879C *param0, PokedexSearchDisplay *searchDisplay, enum HeapId heapID);
static void DefaultDisplay(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, const int *param3, int heapID);
static void ClearScreen(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1);
static void ov21_021D8B8C(UnkStruct_ov21_021D879C *param0, const PokedexSearchSettings *searchSettings, enum HeapId heapID);
static void GetSearchGraphics(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, enum HeapId heapID);
static void FreeSearchGraphics(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1);
static void InitCellActors(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID);
static void FreeCellActors(PokedexSearchDisplay *searchDisplay);
static void GetDisplayMap(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID, int param4);
static void FreeDisplayMap(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1);
static void UpdateSelectionDisplay(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID);
static void FilterMethodMap(UnkStruct_ov21_021D879C *param0, int filterMethod, enum HeapId heapID);
static void DescriptionMessage(UnkStruct_ov21_021D879C *param0, int filterMethod, enum HeapId heapID);
static void SortOrderMessage(UnkStruct_ov21_021D879C *param0, int sortOrder, enum HeapId heapID);
static void FilterNameMessage(UnkStruct_ov21_021D879C *param0, int filterName, enum HeapId heapID);
static void FilterType1Message(UnkStruct_ov21_021D879C *param0, int typeFilter1, enum HeapId heapID);
static void FilterType2Message(UnkStruct_ov21_021D879C *param0, int typeFilter2, enum HeapId heapID);
static void FilterTypeMessage(UnkStruct_ov21_021D879C *param0, int typeFilter, enum HeapId heapID, int y);
static void FilterFormSilhouette(PokedexSearchDisplay *searchDisplay, int filterForm);
static void EmptyDexMessage(UnkStruct_ov21_021D879C *param0, enum HeapId heapID);
static void ov21_021D8C00(UnkStruct_ov21_021D879C *param0);

void PokedexSearch_TransitionFunctions(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, enum HeapId heapID)
{
    PokedexSearchSettings *searchSettings = InitSearchSettings(heapID, param1);
    UnkStruct_ov21_021D879C *v1 = ov21_021D8724(heapID, param1);
    UnkStruct_ov21_021D4660 *v2 = ov21_021D874C(heapID, param1);

    param0->unk_00 = searchSettings;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021D87C8();

    param0->unk_08[0] = ResetSearchSettings;
    param0->unk_08[1] = UpdateScreenState;
    param0->unk_08[2] = ov21_021D8928;
    param0->unk_14[0] = EnterPokedexSearch;
    param0->unk_14[1] = UpdateDisplay;
    param0->unk_14[2] = ExitPokedexSearch;
}

void PokedexSearch_FreeData(UnkStruct_ov21_021E68F4 *param0)
{
    FreeSearchSettings(param0->unk_00);
    ov21_021D879C(param0->unk_04);
    ov21_021D87B0(param0->unk_20);
}

void PokedexSearch_SetFilterMethod(UnkStruct_ov21_021E68F4 *param0, enum FilterMethod filterMethod)
{
    PokedexSearchSettings *searchSettings = param0->unk_00;

    GF_ASSERT(filterMethod < MAX_FILTER_METHOD);
    searchSettings->filterMethod = filterMethod;
}

enum FilterMethod PokedexSearch_GetFilterMethod(const UnkStruct_ov21_021E68F4 *param0)
{
    const PokedexSearchSettings *searchSettings = param0->unk_00;
    return searchSettings->filterMethod;
}

void PokedexSearch_SetSortOrder(UnkStruct_ov21_021E68F4 *param0, enum SortOrder sortOrder)
{
    PokedexSearchSettings *searchSettings = param0->unk_00;

    GF_ASSERT(sortOrder < MAX_SORT_ORDER);
    searchSettings->sortOrder = sortOrder;
}

enum SortOrder PokedexSearch_GetSortOrder(const UnkStruct_ov21_021E68F4 *param0)
{
    const PokedexSearchSettings *searchSettings = param0->unk_00;
    return searchSettings->sortOrder;
}

void PokedexSearch_SetFilterName(UnkStruct_ov21_021E68F4 *param0, enum FilterName filterName)
{
    PokedexSearchSettings *searchSettings = param0->unk_00;

    GF_ASSERT(filterName < MAX_FILTER_NAME);
    searchSettings->filterName = filterName;
}

enum FilterName PokedexSearch_GetFilterName(const UnkStruct_ov21_021E68F4 *param0)
{
    const PokedexSearchSettings *searchSettings = param0->unk_00;
    return searchSettings->filterName;
}

void PokedexSearch_SetFilterType(UnkStruct_ov21_021E68F4 *param0, enum FilterType filterType, int typeSlot)
{
    PokedexSearchSettings *searchSettings = param0->unk_00;

    GF_ASSERT(filterType < MAX_FILTER_TYPE);

    if (typeSlot == 0) {
        searchSettings->typeFilter1 = filterType;
    } else {
        searchSettings->typeFilter2 = filterType;
    }
}

enum FilterType PokedexSearch_GetFilterType(const UnkStruct_ov21_021E68F4 *param0, int typeSlot)
{
    const PokedexSearchSettings *searchSettings = param0->unk_00;

    if (typeSlot == 0) {
        return searchSettings->typeFilter1;
    }

    return searchSettings->typeFilter2;
}

void PokedexSearch_SetFilterForm(UnkStruct_ov21_021E68F4 *param0, enum FilterForm filterForm)
{
    PokedexSearchSettings *searchSettings = param0->unk_00;

    GF_ASSERT(filterForm < MAX_FILTER_FORM);
    searchSettings->filterForm = filterForm;
}

enum FilterForm PokedexSearch_GetFilterForm(const UnkStruct_ov21_021E68F4 *param0)
{
    const PokedexSearchSettings *searchSettings = param0->unk_00;
    return searchSettings->filterForm;
}

void PokedexSearch_SetFilteredState(UnkStruct_ov21_021E68F4 *param0, BOOL applyFilter)
{
    PokedexSearchSettings *searchSettings = param0->unk_00;

    searchSettings->screenChange = TRUE;
    searchSettings->applyFilter = applyFilter;
}

BOOL PokedexSearch_GetFilteredState(const UnkStruct_ov21_021E68F4 *param0)
{
    const PokedexSearchSettings *searchSettings = param0->unk_00;
    return searchSettings->applyFilter;
}

int PokedexSearch_GetScreenState(const UnkStruct_ov21_021E68F4 *param0)
{
    const PokedexSearchSettings *searchSettings = param0->unk_00;
    return searchSettings->screenState;
}

int PokedexSearch_GetScreenTimer(const UnkStruct_ov21_021E68F4 *param0)
{
    const PokedexSearchSettings *searchSettings = param0->unk_00;
    return searchSettings->screenTimer;
}

static PokedexSearchSettings *InitSearchSettings(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    PokedexSearchSettings *searchSettings = Heap_AllocFromHeap(heapID, sizeof(PokedexSearchSettings));

    GF_ASSERT(searchSettings);
    memset(searchSettings, 0, sizeof(PokedexSearchSettings));

    searchSettings->exitFlag = ov21_021D138C(param1);
    searchSettings->unk_04 = ov21_021D13EC(param1);
    UnkStruct_ov21_021E68F4 *v1 = ov21_021D1410(param1, 0);
    searchSettings->unk_08 = v1->unk_00;

    return searchSettings;
}

static UnkStruct_ov21_021D879C *ov21_021D8724(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D879C *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D879C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D879C));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021D874C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    int v1 = ov21_021D87C8();

    UnkStruct_ov21_021D4660 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D47F0(heapID, &v0[0], param1, (1 << 1));

    return v0;
}

static void FreeSearchSettings(PokedexSearchSettings *searchSettings)
{
    GF_ASSERT(searchSettings);
    Heap_FreeToHeap(searchSettings);
}

static void ov21_021D879C(UnkStruct_ov21_021D879C *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021D87B0(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    Heap_FreeToHeap(param0);
}

static int ov21_021D87C8(void)
{
    return 1;
}

static int ResetSearchSettings(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    PokedexSearchSettings *searchSettings = param1;
    int *v1 = Heap_AllocFromHeap(param0->heapID, sizeof(int));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(int));

    param0->unk_08 = v1;

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

static int UpdateScreenState(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    PokedexSearchSettings *searchSettings = param1;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    switch (param0->unk_00) {
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
                param0->unk_00++;
            }
        }
        break;
    case 1:
        searchSettings->screenTimer--;

        if (searchSettings->screenTimer < 0) {
            param0->unk_00++;

            searchSettings->screenState = SS_LOADING;
            searchSettings->screenTimer = 32;

            Sound_PlayEffect(SEQ_SE_DP_Z_SEARCH);
        }
        break;
    case 2:
        searchSettings->screenTimer--;

        if (searchSettings->screenTimer < 0) {
            param0->unk_00++;
        }
        break;
    case 3:
        BOOL dexExists = TRUE;
        dexExists = PokedexSort_Sort(searchSettings->unk_04, searchSettings->sortOrder, searchSettings->filterName, searchSettings->typeFilter1, searchSettings->typeFilter2, searchSettings->filterForm, PokedexStatus_IsNationalDex(searchSettings->unk_04), param0->heapID, TRUE);

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

            param0->unk_00++;
        }
        break;
    case 4:
        searchSettings->screenTimer--;

        if (searchSettings->screenTimer < 0) {
            searchSettings->screenState = SS_MENU;
            searchSettings->screenTimer = 0;
            param0->unk_00 = 0;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 0;
}

static int ov21_021D8928(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    int *v0 = param0->unk_08;

    Heap_FreeToHeap(v0);
    param0->unk_08 = NULL;

    return 1;
}

static int EnterPokedexSearch(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const PokedexSearchSettings *searchSettings = param2;
    const int *v1 = param3->unk_08;
    UnkStruct_ov21_021D879C *v2 = param0;
    PokedexSearchDisplay *searchDisplay = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(PokedexSearchDisplay));
        memset(param1->unk_08, 0, sizeof(PokedexSearchDisplay));
        param1->unk_00++;
        break;
    case 1:
        DefaultDisplay(searchDisplay, v2, searchSettings, v1, param1->heapID);
        BrightnessController_StartTransition(1, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_MAIN_SCREEN);
        param1->unk_00++;
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
            param1->unk_00++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int UpdateDisplay(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const PokedexSearchSettings *searchSettings = param2;
    UnkStruct_ov21_021D879C *v2 = param0;
    PokedexSearchDisplay *searchDisplay = param1->unk_08;

    if (searchSettings->screenState == SS_MENU) {
        UpdateSelectionDisplay(searchDisplay, v2, searchSettings, param1->heapID);
    } else if ((searchSettings->screenState == SS_SEARCH) || (searchSettings->screenState == SS_RETURN)) {
        LoadingScreenTransition(searchDisplay, v2, searchSettings, param1->heapID);
    } else if (searchSettings->screenState != SS_EXIT) {
        LoadingScreenAnimation(searchDisplay, v2, searchSettings, param1->heapID);
    }

    return 0;
}

static int ExitPokedexSearch(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const PokedexSearchSettings *searchSettings = param2;
    UnkStruct_ov21_021D879C *v2 = param0;
    PokedexSearchDisplay *searchDisplay = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        if (searchSettings->applyFilter == FALSE) {
            BrightnessController_StartTransition(6, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_MAIN_SCREEN);
            param1->unk_00++;
        } else {
            param1->unk_00 = 2;
        }
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ClearScreen(searchDisplay, v2);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void DefaultDisplay(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, const int *param3, int heapID)
{
    Bg_ClearTilemap(param1->unk_00->unk_00, 2);
    Bg_ClearTilemap(param1->unk_00->unk_00, 1);
    Window_FillTilemap(&param1->unk_00->unk_04, 0);
    Window_SetPalette(&param1->unk_00->unk_04, 7);

    ov21_021D8C00(param1);
    ov21_021D8B8C(param1, searchSettings, heapID);
    GetDisplayMap(searchDisplay, param1, searchSettings, heapID, PokedexStatus_IsNationalDex(searchSettings->unk_04));
    GetSearchGraphics(searchDisplay, param1, heapID);
    InitCellActors(searchDisplay, param1, searchSettings, heapID);

    DescriptionMessage(param1, searchSettings->filterMethod, heapID);
    FilterMethodMap(param1, searchSettings->filterMethod, heapID);
    SortOrderMessage(param1, searchSettings->sortOrder, heapID);
    FilterNameMessage(param1, searchSettings->filterName, heapID);
    FilterType1Message(param1, searchSettings->typeFilter1, heapID);
    FilterType2Message(param1, searchSettings->typeFilter2, heapID);
    FilterFormSilhouette(searchDisplay, searchSettings->filterForm);

    Bg_SetPriority(1, 1);
    Bg_SetPriority(2, 0);
}

static void ClearScreen(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1)
{
    FreeCellActors(searchDisplay);
    FreeSearchGraphics(searchDisplay, param1);
    FreeDisplayMap(searchDisplay, param1);

    Bg_ClearTilemap(param1->unk_00->unk_00, 1);
    Window_FillTilemap(&param1->unk_00->unk_04, 0);
    Window_SetPalette(&param1->unk_00->unk_04, 0);
    Bg_SetPriority(1, 0);
    Bg_SetPriority(2, 1);
}

static void ov21_021D8B8C(UnkStruct_ov21_021D879C *param0, const PokedexSearchSettings *searchSettings, enum HeapId heapID)
{
    ov21_021D2724(param0->unk_00, 28, param0->unk_00->unk_00, 3, 0, 0, 1, heapID);
    ov21_021D276C(param0->unk_00, 5, 0, 0, 32, heapID);
}

static void GetDisplayMap(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID, int param4)
{
    int mapIndex;

    if (param4 == 1) {
        mapIndex = 42;
    } else {
        mapIndex = 40;
    }

    searchDisplay->tileMap = ov21_021D27B8(param1->unk_00, mapIndex, 1, &searchDisplay->screenData, heapID);
}

static void FreeDisplayMap(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1)
{
    Heap_FreeToHeap(searchDisplay->tileMap);
    searchDisplay->tileMap = NULL;
    searchDisplay->screenData = NULL;
}

static void ov21_021D8C00(UnkStruct_ov21_021D879C *param0)
{
    PokemonSprite *v0 = ov21_021D2170(param0->unk_00);

    sub_02007DEC(v0, 6, 1);
    sub_02008780(v0);
}

static void GetSearchGraphics(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *pokedexGraphics = ov21_021D26E0(v0);

    searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], pokedexGraphics, 81, 1, 81 + 15000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR]);

    searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], pokedexGraphics, 3, 0, 3 + 15000, NNS_G2D_VRAM_TYPE_2DMAIN, 12, heapID);

    SpriteTransfer_RequestPlttFreeSpace(searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT]);

    searchDisplay->searchGraphics[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], pokedexGraphics, 79, 1, 79 + 15000, SPRITE_RESOURCE_CELL, heapID);
    searchDisplay->searchGraphics[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], pokedexGraphics, 80, 1, 80 + 15000, SPRITE_RESOURCE_ANIM, heapID);
}

static void FreeSearchGraphics(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT]);

    SpriteResourceCollection_Remove(v0->unk_13C[0], searchDisplay->searchGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], searchDisplay->searchGraphics[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], searchDisplay->searchGraphics[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], searchDisplay->searchGraphics[SPRITE_RESOURCE_ANIM]);
}

static void InitCellActors(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;

    SpriteResourcesHeader_Init(&v0, 81 + 15000, 3 + 15000, 79 + 15000, 80 + 15000, 0xffffffff, 0xffffffff, 0, 2, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.list = v2->unk_138;
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

static void DescriptionMessage(UnkStruct_ov21_021D879C *param0, int filterMethod, enum HeapId heapID)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    int entryID;

    Window_FillRectWithColor(&v0->unk_04, 0, 24, 8, 208, 32);

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

    Strbuf *descriptionMessage = GetPokedexMessage(entryID, heapID);

    u32 xOffset = 24 + (208 - Font_CalcMaxLineWidth(FONT_SYSTEM, descriptionMessage, 0)) / 2;
    u32 yOffset = 8 + (32 - Strbuf_NumLines(descriptionMessage) * 16) / 2;
    Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, descriptionMessage, xOffset, yOffset, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    Strbuf_Free(descriptionMessage);
}

static void EmptyDexMessage(UnkStruct_ov21_021D879C *param0, enum HeapId heapID)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;

    Window_FillRectWithColor(&v0->unk_04, 0, 24, 8, 208, 32);

    Strbuf *noneMessage = GetPokedexMessage(pl_msg_pokedex_nonefound, heapID);

    {
        u32 xOffset = 24 + (208 - Font_CalcMaxLineWidth(FONT_SYSTEM, noneMessage, 0)) / 2;
        u32 yOffset = 8 + (32 - Strbuf_NumLines(noneMessage) * 16) / 2;
        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, noneMessage, xOffset, yOffset, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(noneMessage);
}

static void UpdateSelectionDisplay(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID)
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

static void FilterMethodMap(UnkStruct_ov21_021D879C *param0, int filterMethod, enum HeapId heapID)
{
    void *v0;
    NNSG2dScreenData *v1;
    int y;
    int mapIndex;

    v0 = ov21_021D27B8(param0->unk_00, 43, 1, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    switch (filterMethod) {
    case FM_ORDER:
        y = 6;
        mapIndex = 44;
        break;
    case FM_NAME:
        y = 9;
        mapIndex = 45;
        break;
    case FM_TYPE:
        y = 12;
        mapIndex = 46;
        break;
    case FM_FORM:
        y = 17;
        mapIndex = 47;
        break;
    default:
        break;
    }

    v0 = ov21_021D27B8(param0->unk_00, mapIndex, 1, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->unk_00, 3, v1->rawData, 6, y, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->unk_00, 3);
}

static void SortOrderMessage(UnkStruct_ov21_021D879C *param0, int sortOrder, enum HeapId heapID)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;

    Window_FillRectWithColor(&v0->unk_04, 0, 88, 52, 80, 16);

    int entryID = pl_msg_pokedex_numerical + sortOrder;
    Strbuf *sortMessage = GetPokedexMessage(entryID, heapID);

    u32 xOffset = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, sortMessage, 0, 80);
    Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, sortMessage, xOffset, 52, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);

    Strbuf_Free(sortMessage);
}

static void FilterNameMessage(UnkStruct_ov21_021D879C *param0, int filterName, enum HeapId heapID)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    int entryID;

    Window_FillRectWithColor(&v0->unk_04, 0, 88, 77, 80, 16);

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

    Strbuf *filterMessage = GetPokedexMessage(entryID, heapID);

    {
        u32 xOffset = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, filterMessage, 0, 80);
        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, filterMessage, xOffset, 77, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);
    }

    Strbuf_Free(filterMessage);
}

static void FilterTypeMessage(UnkStruct_ov21_021D879C *param0, int typeFilter, enum HeapId heapID, int y)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    int entryID;

    Window_FillRectWithColor(&v0->unk_04, 0, 88, y, 80, 16);

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

    Strbuf *filterMessage = GetPokedexMessage(entryID, heapID);

    {
        u32 x = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, filterMessage, 0, 80);
        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, filterMessage, x, y, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);
    }

    Strbuf_Free(filterMessage);
}

static void FilterType1Message(UnkStruct_ov21_021D879C *param0, int typeFilter1, enum HeapId heapID)
{
    FilterTypeMessage(param0, typeFilter1, heapID, 102);
}

static void FilterType2Message(UnkStruct_ov21_021D879C *param0, int typeFilter2, enum HeapId heapID)
{
    FilterTypeMessage(param0, typeFilter2, heapID, 120);
}

static void FilterFormSilhouette(PokedexSearchDisplay *searchDisplay, int filterForm)
{
    if (filterForm == FF_NONE) {
        Sprite_SetDrawFlag(searchDisplay->form, 0);
    } else {
        Sprite_SetDrawFlag(searchDisplay->form, 1);

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

static void LoadingScreenTransition(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID)
{
    if (searchSettings->screenTimer == 4) {
        if (searchSettings->screenState == SS_SEARCH) {
            Pokedex_SetLoadingScreenParams(&searchDisplay->loadingScreen, param1->unk_00->unk_00, 2, searchDisplay->screenData, 0, 12, 0, 20, 4);
        } else {
            ReturnSearchDisplay(param1, searchDisplay, heapID);

            Pokedex_SetLoadingScreenParams(&searchDisplay->loadingScreen, param1->unk_00->unk_00, 2, searchDisplay->screenData, 12, 0, 20, 0, 4);
        }
    }

    Pokedex_LoadingScreenMove(&searchDisplay->loadingScreen);
}

static void LoadingScreenAnimation(PokedexSearchDisplay *searchDisplay, UnkStruct_ov21_021D879C *param1, const PokedexSearchSettings *searchSettings, enum HeapId heapID)
{
    if (searchSettings->screenTimer == 32) {
        Sprite_SetDrawFlag(searchDisplay->pokeball, TRUE);
        SearchingMessage(param1, heapID);
    } else if (searchSettings->screenTimer == 0) {
        Sprite_SetDrawFlag(searchDisplay->pokeball, FALSE);
        Window_FillTilemap(&param1->unk_00->unk_04, 0);
        Window_ScheduleCopyToVRAM(&param1->unk_00->unk_04);
    }

    int time = 4 - searchSettings->screenTimer;
    int angle = ((180 * 0xffff) / 360) * time;
    angle = angle / 4;

    Sprite_SetAffineZRotation(searchDisplay->pokeball, (u16)angle);
}

static void SearchingMessage(UnkStruct_ov21_021D879C *param0, enum HeapId heapID)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;

    Window_FillTilemap(&param0->unk_00->unk_04, 0);

    Strbuf *searchingMessage = GetPokedexMessage(pl_msg_pokedex_searching, heapID);

    u32 xOffset = (256 - Font_CalcMaxLineWidth(FONT_SYSTEM, searchingMessage, 0)) / 2;

    Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, searchingMessage, xOffset, 128, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    Strbuf_Free(searchingMessage);
    Bg_SetPriority(1, 0);
    Bg_SetPriority(2, 1);
}

static void ReturnSearchDisplay(UnkStruct_ov21_021D879C *param0, PokedexSearchDisplay *searchDisplay, enum HeapId heapID)
{
    Bg_SetPriority(1, 1);
    Bg_SetPriority(2, 0);
    Window_FillTilemap(&param0->unk_00->unk_04, 0);

    FilterMethodMap(param0, searchDisplay->filterMethod, heapID);
    DescriptionMessage(param0, searchDisplay->filterMethod, heapID);
    SortOrderMessage(param0, searchDisplay->sortOrder, heapID);
    FilterNameMessage(param0, searchDisplay->filterName, heapID);
    FilterType1Message(param0, searchDisplay->typeFilter1, heapID);
    FilterType2Message(param0, searchDisplay->typeFilter2, heapID);
    FilterFormSilhouette(searchDisplay, searchDisplay->filterForm);
}
