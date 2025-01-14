#ifndef POKEPLATINUM_POKEDEX_DATA_H
#define POKEPLATINUM_POKEDEX_DATA_H

#include "struct_decls/pokedexdata_decl.h"

#include "pokemon.h"
#include "savedata.h"

int Pokedex_SaveSize(void);
Pokedex *Pokedex_New(u32 heapID);
void Pokedex_Copy(const Pokedex *src, Pokedex *dest);
void Pokedex_Init(Pokedex *pokedex);
u16 Pokedex_CountCaught_National(const Pokedex *pokedex);
u16 Pokedex_CountSeen_National(const Pokedex *pokedex);
u16 Pokedex_CountSeen(const Pokedex *pokedex);
u16 PokedexData_CountCaught_Local(const Pokedex *pokedex);
u16 PokedexData_CountSeen_Local(const Pokedex *pokedex);
BOOL PokedexData_NationalDexCompleted(const Pokedex *pokedex);
BOOL PokedexData_LocalDexCompleted(const Pokedex *pokedex);
u16 PokedexData_NumCaught_National(const Pokedex *pokedex);
u16 PokedexData_NumCaught_Local(const Pokedex *pokedex);
BOOL PokedexData_HasCaughtSpecies(const Pokedex *pokedex, u16 species);
BOOL PokedexData_HasSeenSpecies(const Pokedex *pokedex, u16 species);
u32 PokedexData_GetForm_Spinda(const Pokedex *pokedex, u8 formIndex);
u32 PokedexData_DisplayedGender(const Pokedex *pokedex, u16 species, int displaySecondary);
u32 PokedexData_GetForm_Unown(const Pokedex *pokedex, int formIndex);
u32 PokedexData_NumFormsSeen_Unown(const Pokedex *pokedex);
u32 PokedexData_GetForm_Shellos(const Pokedex *pokedex, int formIndex);
u32 PokedexData_NumFormsSeen_Shellos(const Pokedex *pokedex);
u32 PokedexData_GetForm_Gastrodon(const Pokedex *pokedex, int formIndex);
u32 PokedexData_NumFormsSeen_Gastrodon(const Pokedex *pokedex);
u32 PokedexData_GetForm_Burmy(const Pokedex *pokedex, int formIndex);
u32 PokedexData_NumFormsSeen_Burmy(const Pokedex *pokedex);
u32 PokedexData_GetForm_Wormadam(const Pokedex *pokedex, int formIndex);
u32 PokedexData_NumFormsSeen_Wormadam(const Pokedex *pokedex);
u32 PokedexData_GetForm_Deoxys(const Pokedex *pokedex, int formIndex);
u32 PokedexData_NumFormsSeen_Deoxys(const Pokedex *pokedex);
void Pokedex_Encounter(Pokedex *pokedex, Pokemon *pokemon);
void PokedexData_Capture(Pokedex *pokedex, Pokemon *pokemon);
void PokedexData_ObtainNationalDex(Pokedex *pokedex);
BOOL PokedexData_IsNationalDexObtained(const Pokedex *pokedex);
BOOL PokedexData_CanDetectForms(const Pokedex *pokedex);
void PokedexData_TurnOnFormDetection(Pokedex *pokedex);
BOOL PokedexData_IsLanguageObtained(const Pokedex *pokedex, u16 species, u32 languageIndex);
void PokedexData_TurnOnLanguageDetection(Pokedex *pokedex);
BOOL PokedexData_CanDetectLanguages(const Pokedex *pokedex);
BOOL Pokedex_IsObtained(const Pokedex *pokedex);
void PokedexData_ObtainPokedex(Pokedex *pokedex);
Pokedex *SaveData_Pokedex(SaveData *saveData);
u32 Pokedex_GetDisplayForm(const Pokedex *pokedex, int species, int formIndex);
u32 PokedexData_NumFormsSeen(const Pokedex *pokedex, int species);

#endif // POKEPLATINUM_POKEDEX_DATA_H
