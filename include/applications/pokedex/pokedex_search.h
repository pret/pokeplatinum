#ifndef POKEPLATINUM_POKEDEX_SEARCH_H
#define POKEPLATINUM_POKEDEX_SEARCH_H

#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "heap.h"

enum FilterMethod {
    FM_ORDER,
    FM_NAME,
    FM_TYPE,
    FM_FORM,
    MAX_FILTER_METHOD
};

void PokedexSearch_TransitionFunctions(PokedexScreenManager *param0, PokedexApp *param1, enum HeapId heapID);
void PokedexSearch_FreeData(PokedexScreenManager *param0);
void PokedexSearch_SetFilterMethod(PokedexScreenManager *param0, enum FilterMethod filterMethod);
enum FilterMethod PokedexSearch_GetFilterMethod(const PokedexScreenManager *param0);
void PokedexSearch_SetSortOrder(PokedexScreenManager *param0, enum SortOrder sortOrder);
enum SortOrder PokedexSearch_GetSortOrder(const PokedexScreenManager *param0);
void PokedexSearch_SetFilterName(PokedexScreenManager *param0, enum FilterName filterName);
enum FilterName PokedexSearch_GetFilterName(const PokedexScreenManager *param0);
void PokedexSearch_SetFilterType(PokedexScreenManager *param0, enum FilterType filterType, int typeSlot);
enum FilterType PokedexSearch_GetFilterType(const PokedexScreenManager *param0, int typeSlot);
void PokedexSearch_SetFilterForm(PokedexScreenManager *param0, enum FilterForm filterForm);
enum FilterForm PokedexSearch_GetFilterForm(const PokedexScreenManager *param0);
void PokedexSearch_SetFilteredState(PokedexScreenManager *param0, BOOL applyFilter);
BOOL PokedexSearch_GetFilteredState(const PokedexScreenManager *param0);
int PokedexSearch_GetScreenState(const PokedexScreenManager *param0);
int PokedexSearch_GetScreenTimer(const PokedexScreenManager *param0);

#endif // POKEPLATINUM_POKEDEX_SEARCH_H
