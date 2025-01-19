#ifndef POKEPLATINUM_POKEDEX_DATA_H
#define POKEPLATINUM_POKEDEX_DATA_H

#include "struct_decls/pokedexdata_decl.h"
#include "struct_defs/pokemon.h"

#include "savedata.h"

int PokedexData_SaveSize(void);
PokedexData *PokedexData_Alloc(u32 heapID);
void PokedexData_Copy(const PokedexData *src, PokedexData *dest);
void PokedexData_Init(PokedexData *pokedexData);
u16 PokedexData_CountCaught_National(const PokedexData *pokedexData);
u16 PokedexData_CountSeen_National(const PokedexData *pokedexData);
u16 PokedexData_CountSeen(const PokedexData *pokedexData);
u16 PokedexData_CountCaught_Local(const PokedexData *pokedexData);
u16 PokedexData_CountSeen_Local(const PokedexData *pokedexData);
BOOL PokedexData_NationalDexCompleted(const PokedexData *pokedexData);
BOOL PokedexData_LocalDexCompleted(const PokedexData *pokedexData);
u16 PokedexData_NumCaught_National(const PokedexData *pokedexData);
u16 PokedexData_NumCaught_Local(const PokedexData *pokedexData);
BOOL PokedexData_HasCaughtSpecies(const PokedexData *pokedexData, u16 species);
BOOL PokedexData_HasSeenSpecies(const PokedexData *pokedexData, u16 species);
u32 PokedexData_GetForm_Spinda(const PokedexData *pokedexData, u8 formIndex);
u32 PokedexData_DisplayedGender(const PokedexData *pokedexData, u16 species, int displaySecondary);
u32 PokedexData_GetForm_Unown(const PokedexData *pokedexData, int formIndex);
u32 PokedexData_NumFormsSeen_Unown(const PokedexData *pokedexData);
u32 PokedexData_GetForm_Shellos(const PokedexData *pokedexData, int formIndex);
u32 PokedexData_NumFormsSeen_Shellos(const PokedexData *pokedexData);
u32 PokedexData_GetForm_Gastrodon(const PokedexData *pokedexData, int formIndex);
u32 PokedexData_NumFormsSeen_Gastrodon(const PokedexData *pokedexData);
u32 PokedexData_GetForm_Burmy(const PokedexData *pokedexData, int formIndex);
u32 PokedexData_NumFormsSeen_Burmy(const PokedexData *pokedexData);
u32 PokedexData_GetForm_Wormadam(const PokedexData *pokedexData, int formIndex);
u32 PokedexData_NumFormsSeen_Wormadam(const PokedexData *pokedexData);
u32 PokedexData_GetForm_Deoxys(const PokedexData *pokedexData, int formIndex);
u32 PokedexData_NumFormsSeen_Deoxys(const PokedexData *pokedexData);
void PokedexData_Encounter(PokedexData *pokedexData, Pokemon *pokemon);
void PokedexData_Capture(PokedexData *pokedexData, Pokemon *pokemon);
void PokedexData_ObtainNationalDex(PokedexData *pokedexData);
BOOL PokedexData_IsNationalDexObtained(const PokedexData *pokedexData);
BOOL PokedexData_CanDetectForms(const PokedexData *pokedexData);
void PokedexData_TurnOnFormDetection(PokedexData *pokedexData);
BOOL PokedexData_IsLanguageObtained(const PokedexData *pokedexData, u16 species, u32 languageIndex);
void PokedexData_TurnOnLanguageDetection(PokedexData *pokedexData);
BOOL PokedexData_CanDetectLanguages(const PokedexData *pokedexData);
BOOL PokedexData_IsObtained(const PokedexData *pokedexData);
void PokedexData_ObtainPokedex(PokedexData *pokedexData);
PokedexData *SaveData_PokedexData(SaveData *saveData);
u32 PokedexData_GetDisplayForm(const PokedexData *pokedexData, int species, int formIndex);
u32 PokedexData_NumFormsSeen(const PokedexData *pokedexData, int species);

#endif // POKEPLATINUM_POKEDEX_DATA_H
