#ifndef POKEPLATINUM_POKEDEX_SORT_H
#define POKEPLATINUM_POKEDEX_SORT_H

#include "overlay021/struct_ov21_021D3208.h"
#include "overlay021/struct_pokedexstatus.h"
#include "overlay021/struct_speciesCaughtStatus.h"

#include "strbuf.h"

void Pokedex_Sort_PopulatepokedexStatus(pokedexStatus *param0, UnkStruct_ov21_021D3208 *param1, int param2);
void pokedexstatus(pokedexStatus *param0);
u32 ov21_021D334C(const pokedexStatus *param0, int param1, int param2);
u32 ov21_021D335C(const pokedexStatus *param0, int param1);
u32 ov21_021D3374(const pokedexStatus *param0, int param1);
u32 ov21_021D338C(const pokedexStatus *param0, int param1);
u32 ov21_021D33A4(const pokedexStatus *param0, int param1);
u32 ov21_021D33BC(const pokedexStatus *param0, int param1);
u32 ov21_021D33D4(const pokedexStatus *param0, u32 param1);
u32 ov21_021D33E0(const pokedexStatus *param0, int param1);
u32 ov21_021D33F8(const pokedexStatus *param0);
u32 ov21_021D3404(const pokedexStatus *param0, int param1);
u32 ov21_021D3410(const pokedexStatus *param0, u32 param1, int param2);
u32 ov21_021D341C(const pokedexStatus *param0, u32 param1);
BOOL Pokedex_Sort_PokedexUnlocked(const pokedexStatus *param0);
void ov21_021D3434(pokedexStatus *param0, u32 param1);
u32 ov21_021D3440(const pokedexStatus *param0);
void ov21_021D344C(pokedexStatus *param0, u32 param1);
u32 ov21_021D3458(const pokedexStatus *param0);
BOOL Pokedex_Sort(pokedexStatus *dexStatus, int sortCategory, int firstLetterFilter, int typeFilter1, int typeFilter2, int bodyShapeFilter, int isNationalDex, int heapID, BOOL isFiltered);
BOOL Pokedex_Sort_Unfiltered(pokedexStatus *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7);
BOOL ov21_021D36A4(const pokedexStatus *param0, int param1);
BOOL ov21_021D36C0(pokedexStatus *param0, int param1);
int ov21_021D36D8(const pokedexStatus *param0);
BOOL Pokedex_Sort_IsValidDexIndex(const pokedexStatus *dexStatus, int dexIndex);
BOOL ov21_021D36FC(pokedexStatus *param0, int param1);
BOOL ov21_021D371C(pokedexStatus *param0, int param1);
int ov21_021D375C(const pokedexStatus *param0);
int Pokedex_Sort_CompletionNumEncountered(const pokedexStatus *param0);
int ov21_021D3770(const pokedexStatus *param0, u32 param1);
BOOL ov21_021D3794(pokedexStatus *param0, int param1);
int Pokedex_Sort_CurrentSpecies(const pokedexStatus *param0);
int Pokedex_Sort_CurrentCaughtStatus(const pokedexStatus *param0);
const speciesCaughtStatus *Pokedex_Sort_SpeciesCaughtStatus(const pokedexStatus *param0, int dexIndex);
BOOL ov21_021D37F8(const pokedexStatus *param0, int param1);
BOOL ov21_021D3810(pokedexStatus *param0, int param1);
BOOL ov21_021D3844(pokedexStatus *param0, int param1);
BOOL ov21_021D387C(pokedexStatus *param0, int param1);
int ov21_021D3898(const pokedexStatus *param0);
int ov21_021D38A4(const pokedexStatus *param0);
int Pokedex_Sort_SeenIndexToSpecies(const pokedexStatus *param0, int param1);
void ov21_021D38C0(pokedexStatus *param0);
int Pokedex_Sort_NumEncountered(const pokedexStatus *param0);
int Pokedex_Sort_NumCaught(const pokedexStatus *param0);
Strbuf *Pokedex_Sort_TrainerName(const pokedexStatus *param0);
u32 Pokedex_Sort_TrainerGender(const pokedexStatus *param0);
BOOL ov21_021D392C(const pokedexStatus *param0, int param1);
BOOL Pokedex_Sort_CanDetectForms(const pokedexStatus *param0);
void ov21_021D3960(pokedexStatus *param0);
u32 ov21_021D3998(const pokedexStatus *param0);

#endif // POKEPLATINUM_POKEDEX_SORT_H
