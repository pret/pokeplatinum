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

void PokedexSearch_TransitionFunctions(UnkStruct_ov21_021E68F4 *param0, PokedexApp *param1, enum HeapID heapID);
void PokedexSearch_FreeData(UnkStruct_ov21_021E68F4 *param0);
void PokedexSearch_SetFilterMethod(UnkStruct_ov21_021E68F4 *param0, enum FilterMethod filterMethod);
enum FilterMethod PokedexSearch_GetFilterMethod(const UnkStruct_ov21_021E68F4 *param0);
void PokedexSearch_SetSortOrder(UnkStruct_ov21_021E68F4 *param0, enum SortOrder sortOrder);
enum SortOrder PokedexSearch_GetSortOrder(const UnkStruct_ov21_021E68F4 *param0);
void PokedexSearch_SetFilterName(UnkStruct_ov21_021E68F4 *param0, enum FilterName filterName);
enum FilterName PokedexSearch_GetFilterName(const UnkStruct_ov21_021E68F4 *param0);
void PokedexSearch_SetFilterType(UnkStruct_ov21_021E68F4 *param0, enum FilterType filterType, int typeSlot);
enum FilterType PokedexSearch_GetFilterType(const UnkStruct_ov21_021E68F4 *param0, int typeSlot);
void PokedexSearch_SetFilterForm(UnkStruct_ov21_021E68F4 *param0, enum FilterForm filterForm);
enum FilterForm PokedexSearch_GetFilterForm(const UnkStruct_ov21_021E68F4 *param0);
void PokedexSearch_SetFilteredState(UnkStruct_ov21_021E68F4 *param0, BOOL applyFilter);
BOOL PokedexSearch_GetFilteredState(const UnkStruct_ov21_021E68F4 *param0);
int PokedexSearch_GetScreenState(const UnkStruct_ov21_021E68F4 *param0);
int PokedexSearch_GetScreenTimer(const UnkStruct_ov21_021E68F4 *param0);

#endif // POKEPLATINUM_POKEDEX_SEARCH_H
