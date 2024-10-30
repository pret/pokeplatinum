#ifndef POKEPLATINUM_OV21_021D3208_H
#define POKEPLATINUM_OV21_021D3208_H

#include "overlay021/struct_ov21_021D3208.h"
#include "overlay021/struct_pokedexstatus.h"
#include "overlay021/speciesCaughtStatus.h"

#include "strbuf.h"

enum SortCategory {
    SC_NUMERIC,
    SC_ALPHABETICAL,
    SC_HEAVIEST,
    SC_LIGHTEST,
    SC_TALLEST,
    SC_SHORTEST
};

enum FilterFirstLetter {
    FFL_NONE,
    FFL_ABC,
    FFL_DEF,
    FFL_GHI,
    FFL_JKL,
    FFL_MNO,
    FFL_PQR,
    FFL_STU,
    FFL_VWX,
    FFL_YZ
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
    FT_DARK
};

enum FilterBodyShape {
    FBS_NONE,
    FBS_QUADRUPED,
    FBS_BIPEDALTAILLESS,
    FBS_BIPEDALTAILED,
    FBS_SERPENTINE,
    FBS_MULTIWINGED,
    FBS_WINGED,
    FBS_INSECTOID,
    FBS_HEADBASE,
    FBS_HEADARMS,
    FBS_HEADLEGS,
    FBS_TENTACLES,
    FBS_FINS,
    FBS_HEAD,
    FBS_MULTIBODY
};

void Pokedex_Sort_PopulatepokedexStatus(PokedexStatus *param0, UnkStruct_ov21_021D3208 *param1, int param2);
void Pokedex_Sort_PokedexStatusFreeHWData(PokedexStatus *param0);
u32 ov21_021D334C(const PokedexStatus *param0, int param1, int param2);
u32 ov21_021D335C(const PokedexStatus *param0, int param1);
u32 ov21_021D3374(const PokedexStatus *param0, int param1);
u32 ov21_021D338C(const PokedexStatus *param0, int param1);
u32 ov21_021D33A4(const PokedexStatus *param0, int param1);
u32 ov21_021D33BC(const PokedexStatus *param0, int param1);
u32 ov21_021D33D4(const PokedexStatus *param0, u32 param1);
u32 ov21_021D33E0(const PokedexStatus *param0, int param1);
u32 ov21_021D33F8(const PokedexStatus *param0);
u32 ov21_021D3404(const PokedexStatus *param0, int param1);
u32 ov21_021D3410(const PokedexStatus *param0, u32 param1, int param2);
u32 ov21_021D341C(const PokedexStatus *param0, u32 param1);
BOOL Pokedex_Sort_PokedexUnlocked(const PokedexStatus *param0);
void ov21_021D3434(PokedexStatus *param0, u32 param1);
u32 ov21_021D3440(const PokedexStatus *param0);
void ov21_021D344C(PokedexStatus *param0, u32 param1);
u32 ov21_021D3458(const PokedexStatus *param0);
BOOL Pokedex_Sort(PokedexStatus *dexStatus, int sortCategory, int firstLetterFilter, int typeFilter1, int typeFilter2, int bodyShapeFilter, int isNationalDex, int heapID, BOOL isFiltered);
BOOL Pokedex_Sort_Unfiltered(PokedexStatus *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7);
BOOL ov21_021D36A4(const PokedexStatus *param0, int param1);
BOOL ov21_021D36C0(PokedexStatus *param0, int param1);
int ov21_021D36D8(const PokedexStatus *param0);
BOOL Pokedex_Sort_IsValidDexIndex(const PokedexStatus *dexStatus, int dexIndex);
BOOL ov21_021D36FC(PokedexStatus *param0, int param1);
BOOL ov21_021D371C(PokedexStatus *param0, int param1);
int ov21_021D375C(const PokedexStatus *param0);
int Pokedex_Sort_CompletionNumEncountered(const PokedexStatus *param0);
int ov21_021D3770(const PokedexStatus *param0, u32 param1);
BOOL ov21_021D3794(PokedexStatus *param0, int param1);
int Pokedex_Sort_CurrentSpecies(const PokedexStatus *param0);
int Pokedex_Sort_CurrentCaughtStatus(const PokedexStatus *param0);
const SpeciesCaughtStatus *Pokedex_Sort_SpeciesCaughtStatus(const PokedexStatus *param0, int dexIndex);
BOOL ov21_021D37F8(const PokedexStatus *param0, int param1);
BOOL ov21_021D3810(PokedexStatus *param0, int param1);
BOOL ov21_021D3844(PokedexStatus *param0, int param1);
BOOL ov21_021D387C(PokedexStatus *param0, int param1);
int ov21_021D3898(const PokedexStatus *param0);
int ov21_021D38A4(const PokedexStatus *param0);
int Pokedex_Sort_SeenIndexToSpecies(const PokedexStatus *param0, int param1);
void ov21_021D38C0(PokedexStatus *param0);
int Pokedex_Sort_NumEncountered(const PokedexStatus *param0);
int Pokedex_Sort_NumCaught(const PokedexStatus *param0);
Strbuf *Pokedex_Sort_TrainerName(const PokedexStatus *param0);
u32 Pokedex_Sort_TrainerGender(const PokedexStatus *param0);
BOOL ov21_021D392C(const PokedexStatus *param0, int param1);
BOOL Pokedex_Sort_CanDetectForms(const PokedexStatus *param0);
void ov21_021D3960(PokedexStatus *param0);
u32 ov21_021D3998(const PokedexStatus *param0);

#endif // POKEPLATINUM_OV21_021D3208_H
