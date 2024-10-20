#ifndef POKEPLATINUM_POKEDEX_SORT_H
#define POKEPLATINUM_POKEDEX_SORT_H

#include "overlay021/struct_ov21_021D3208.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_speciesCaughtStatus.h"

#include "strbuf.h"

void Pokedex_Sort_PopulatePokedexStruct(pokedexStruct *param0, UnkStruct_ov21_021D3208 *param1, int param2);
void ov21_021D3320(pokedexStruct *param0);
u32 ov21_021D334C(const pokedexStruct *param0, int param1, int param2);
u32 ov21_021D335C(const pokedexStruct *param0, int param1);
u32 ov21_021D3374(const pokedexStruct *param0, int param1);
u32 ov21_021D338C(const pokedexStruct *param0, int param1);
u32 ov21_021D33A4(const pokedexStruct *param0, int param1);
u32 ov21_021D33BC(const pokedexStruct *param0, int param1);
u32 ov21_021D33D4(const pokedexStruct *param0, u32 param1);
u32 ov21_021D33E0(const pokedexStruct *param0, int param1);
u32 ov21_021D33F8(const pokedexStruct *param0);
u32 ov21_021D3404(const pokedexStruct *param0, int param1);
u32 ov21_021D3410(const pokedexStruct *param0, u32 param1, int param2);
u32 ov21_021D341C(const pokedexStruct *param0, u32 param1);
BOOL Pokedex_Sort_PokedexUnlocked(const pokedexStruct *param0);
void ov21_021D3434(pokedexStruct *param0, u32 param1);
u32 ov21_021D3440(const pokedexStruct *param0);
void ov21_021D344C(pokedexStruct *param0, u32 param1);
u32 ov21_021D3458(const pokedexStruct *param0);
BOOL Pokedex_Sort(pokedexStruct *pokedexS, int sortCategory, int firstLetterFilter, int typeFilter1, int typeFilter2, int bodyShapeFilter, int isNationalDex, int heapID, BOOL isFiltered);
BOOL Pokedex_Sort_Unfiltered(pokedexStruct *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7);
BOOL ov21_021D36A4(const pokedexStruct *param0, int param1);
BOOL ov21_021D36C0(pokedexStruct *param0, int param1);
int ov21_021D36D8(const pokedexStruct *param0);
BOOL Pokedex_Sort_IsValidDexIndex(const pokedexStruct *pokedexS, int dexIndex);
BOOL ov21_021D36FC(pokedexStruct *param0, int param1);
BOOL ov21_021D371C(pokedexStruct *param0, int param1);
int ov21_021D375C(const pokedexStruct *param0);
int Pokedex_Sort_CompletionNumEncountered(const pokedexStruct *param0);
int ov21_021D3770(const pokedexStruct *param0, u32 param1);
BOOL ov21_021D3794(pokedexStruct *param0, int param1);
int Pokedex_Sort_CurrentSpecies(const pokedexStruct *param0);
int Pokedex_Sort_CurrentCaughtStatus(const pokedexStruct *param0);
const speciesCaughtStatus *Pokedex_Sort_SpeciesCaughtStatus(const pokedexStruct *param0, int dexIndex);
BOOL ov21_021D37F8(const pokedexStruct *param0, int param1);
BOOL ov21_021D3810(pokedexStruct *param0, int param1);
BOOL ov21_021D3844(pokedexStruct *param0, int param1);
BOOL ov21_021D387C(pokedexStruct *param0, int param1);
int ov21_021D3898(const pokedexStruct *param0);
int ov21_021D38A4(const pokedexStruct *param0);
int Pokedex_Sort_SeenIndexToSpecies(const pokedexStruct *param0, int param1);
void ov21_021D38C0(pokedexStruct *param0);
int Pokedex_Sort_NumEncountered(const pokedexStruct *param0);
int Pokedex_Sort_NumCaught(const pokedexStruct *param0);
Strbuf *Pokedex_Sort_TrainerName(const pokedexStruct *param0);
u32 Pokedex_Sort_TrainerGender(const pokedexStruct *param0);
BOOL ov21_021D392C(const pokedexStruct *param0, int param1);
BOOL Pokedex_Sort_CanDetectForms(const pokedexStruct *param0);
void ov21_021D3960(pokedexStruct *param0);
u32 ov21_021D3998(const pokedexStruct *param0);

#endif // POKEPLATINUM_POKEDEX_SORT_H
