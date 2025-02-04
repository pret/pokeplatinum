#ifndef POKEPLATINUM_POKEDEXSORT_H
#define POKEPLATINUM_POKEDEXSORT_H

#include "overlay021/species_caught_status.h"
#include "overlay021/struct_ov21_021D3208.h"
#include "overlay021/struct_ov21_021D3320.h"

#include "heap.h"
#include "strbuf.h"

enum SortOrder {
    SO_NUMERICAL,
    SO_ALPHABETICAL,
    SO_HEAVIEST,
    SO_LIGHTEST,
    SO_TALLEST,
    SO_SMALLEST,
    MAX_SORT_ORDER
};

enum FilterName {
    FN_NONE,
    FN_ABC,
    FN_DEF,
    FN_GHI,
    FN_JKL,
    FN_MNO,
    FN_PQR,
    FN_STU,
    FN_VWX,
    FN_YZ,
    MAX_FILTER_NAME
};

enum FilterType {
    FT_NONE,
    FT_NORMAL,
    FT_FIGHTING,
    FT_FLYING,
    FT_POISON,
    FT_GROUND,
    FT_ROCK,
    FT_BUG,
    FT_GHOST,
    FT_STEEL,
    FT_FIRE,
    FT_WATER,
    FT_GRASS,
    FT_ELECTRIC,
    FT_PSYCHIC,
    FT_ICE,
    FT_DRAGON,
    FT_DARK,
    MAX_FILTER_TYPE
};

enum FilterForm { // called form in game, but refers to body shape
    FF_NONE,
    FF_QUADRUPED,
    FF_BIPEDALTAILLESS,
    FF_BIPEDALTAILED,
    FF_SERPENTINE,
    FF_MULTIWINGED,
    FF_WINGED,
    FF_INSECTOID,
    FF_HEADBASE,
    FF_HEADARMS,
    FF_HEADLEGS,
    FF_TENTACLES,
    FF_FINS,
    FF_HEAD,
    FF_MULTIBODY,
    MAX_FILTER_FORM
};

void PokedexSort_PopulatePokedexStatus(UnkStruct_ov21_021D3320 *param0, UnkStruct_ov21_021D3208 *param1, enum HeapId heapID);
void PokedexSort_PokedexStatusFreeHWData(UnkStruct_ov21_021D3320 *param0);
u32 PokedexSort_Gender(const UnkStruct_ov21_021D3320 *param0, int species, int formIndex);
u32 PokedexSort_UnownForm(const UnkStruct_ov21_021D3320 *param0, int formIndex);
u32 PokedexSort_ShellosForm(const UnkStruct_ov21_021D3320 *param0, int formIndex);
u32 PokedexSort_GastrodonForm(const UnkStruct_ov21_021D3320 *param0, int formIndex);
u32 PokedexSort_BurmyForm(const UnkStruct_ov21_021D3320 *param0, int formIndex);
u32 PokedexSort_WormadamForm(const UnkStruct_ov21_021D3320 *param0, int formIndex);
u32 PokedexSort_DefaultForm(const UnkStruct_ov21_021D3320 *param0, u32 species);
u32 PokedexSort_NumGendersVisible(const UnkStruct_ov21_021D3320 *param0, int species);
u32 PokedexSort_SpindaForm(const UnkStruct_ov21_021D3320 *param0);
u32 PokedexSort_DeoxysForm(const UnkStruct_ov21_021D3320 *param0, int formIndex);
u32 PokedexSort_Form(const UnkStruct_ov21_021D3320 *param0, u32 species, int formIndex);
u32 PokedexSort_NumFormsSeem(const UnkStruct_ov21_021D3320 *param0, u32 species);
BOOL PokedexSort_IsNationalUnlocked(const UnkStruct_ov21_021D3320 *param0);
void ov21_021D3434(UnkStruct_ov21_021D3320 *param0, u32 param1);
u32 ov21_021D3440(const UnkStruct_ov21_021D3320 *param0);
void ov21_021D344C(UnkStruct_ov21_021D3320 *param0, u32 param1);
u32 ov21_021D3458(const UnkStruct_ov21_021D3320 *param0);
BOOL PokedexSort_Sort(UnkStruct_ov21_021D3320 *param0, enum SortOrder sortOrder, enum FilterName filterName, enum FilterType typeFilter1, enum FilterType typeFilter2, enum FilterForm filterForm, int isNationalDex, enum HeapId heapID, BOOL isFiltered);
BOOL PokedexSort_SortUnfiltered(UnkStruct_ov21_021D3320 *param0, enum SortOrder sortOrder, enum FilterName filterName, enum FilterType filterType1, enum FilterType filterType2, enum FilterForm filterForm, int isNationalDex, enum HeapId heapID);
BOOL ov21_021D36A4(const UnkStruct_ov21_021D3320 *param0, int param1);
BOOL ov21_021D36C0(UnkStruct_ov21_021D3320 *param0, int param1);
int PokedexStatus_IsNationalDex(const UnkStruct_ov21_021D3320 *param0);
BOOL PokedexSort_IsValidStatusIndex(const UnkStruct_ov21_021D3320 *param0, int dexIndex);
BOOL PokedexSort_SetCurrentStatusIndex(UnkStruct_ov21_021D3320 *param0, int param1);
BOOL PokedexSort_TakeStep_Loop(UnkStruct_ov21_021D3320 *param0, int param1);
int PokedexSort_CurrentStatusIndex(const UnkStruct_ov21_021D3320 *param0);
int PokedexSort_CaughtStatusLength(const UnkStruct_ov21_021D3320 *param0);
int PokedexSort_SpeciesToStatusIndex(const UnkStruct_ov21_021D3320 *param0, u32 param1);
BOOL PokedexSort_SetCurrentStatusIndexWithSpecies(UnkStruct_ov21_021D3320 *param0, int param1);
int PokedexSort_CurrentSpecies(const UnkStruct_ov21_021D3320 *param0);
int PokedexSort_CurrentCaughtStatus(const UnkStruct_ov21_021D3320 *param0);
const SpeciesCaughtStatus *PokedexSort_StatusIndexToCaughtStatus(const UnkStruct_ov21_021D3320 *param0, int dexIndex);
BOOL PokedexSort_IsValidDisplayIndex(const UnkStruct_ov21_021D3320 *param0, int param1);
BOOL PokedexSort_SetCurrentValues(UnkStruct_ov21_021D3320 *param0, int param1);
BOOL PokedexSort_TakeStep(UnkStruct_ov21_021D3320 *param0, int param1);
BOOL PokedexSort_IsValidStep(UnkStruct_ov21_021D3320 *param0, int param1);
int PokedexSort_CurrentDisplayIndex(const UnkStruct_ov21_021D3320 *param0);
int PokedexSort_NumSpeciesDisplayed(const UnkStruct_ov21_021D3320 *param0);
int PokedexSort_DisplayIndexToStatusIndex(const UnkStruct_ov21_021D3320 *param0, int param1);
void PokedexSort_UpdateCurrentValues(UnkStruct_ov21_021D3320 *param0);
int PokedexSort_NumEncountered(const UnkStruct_ov21_021D3320 *param0);
int PokedexSort_NumCaught(const UnkStruct_ov21_021D3320 *param0);
Strbuf *PokedexSort_TrainerName(const UnkStruct_ov21_021D3320 *param0);
u32 PokedexSort_TrainerGender(const UnkStruct_ov21_021D3320 *param0);
BOOL ov21_021D392C(const UnkStruct_ov21_021D3320 *param0, int param1);
BOOL PokedexSort_CanDetectForms(const UnkStruct_ov21_021D3320 *param0);
void ov21_021D3960(UnkStruct_ov21_021D3320 *param0);
u32 ov21_021D3998(const UnkStruct_ov21_021D3320 *param0);

#endif // POKEPLATINUM_POKEDEXSORT_H
