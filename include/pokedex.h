#ifndef POKEPLATINUM_POKEDEX_H
#define POKEPLATINUM_POKEDEX_H

#include "heap.h"
#include "pokemon.h"
#include "savedata.h"

#define DEX_SIZE_U32 ((int)((NATIONAL_DEX_COUNT - 1) / 32) + 1) // default 16

typedef struct Pokedex {
    u32 magic;
    u32 caughtPokemon[DEX_SIZE_U32];
    u32 seenPokemon[DEX_SIZE_U32];
    u32 recordedGenders[2][DEX_SIZE_U32];
    u32 spindaForm;
    u8 shellosFormsSeen;
    u8 gastrodonFormsSeen;
    u8 burmyFormsSeen;
    u8 wormadamFormsSeen;
    u8 unownFormsSeen[UNOWN_FORM_COUNT];
    u8 recordedLanguages[MAX_SPECIES + 1];
    u8 canDetectForms;
    u8 canDetectLanguages;
    u8 pokedexObtained;
    u8 nationalDexObtained;
    u32 rotomFormsSeen;
    u8 shayminFormsSeen;
    u8 giratinaFormsSeen;
    // u8 padding[2]; // implicit padding in vanilla
} Pokedex;

int Pokedex_SaveSize(void);
Pokedex *Pokedex_New(enum HeapID heapID);
void Pokedex_Copy(const Pokedex *src, Pokedex *dest);
void Pokedex_Init(Pokedex *pokedex);
u16 Pokedex_CountCaught_National(const Pokedex *pokedex);
u16 Pokedex_CountSeen_National(const Pokedex *pokedex);
u16 Pokedex_CountSeen(const Pokedex *pokedex);
u16 Pokedex_CountCaught_Local(const Pokedex *pokedex);
u16 Pokedex_CountSeen_Local(const Pokedex *pokedex);
BOOL Pokedex_NationalDexCompleted(const Pokedex *pokedex);
BOOL Pokedex_LocalDexCompleted(const Pokedex *pokedex);
u16 Pokedex_NumCaught_National(const Pokedex *pokedex);
u16 Pokedex_NumCaught_Local(const Pokedex *pokedex);
BOOL Pokedex_HasCaughtSpecies(const Pokedex *pokedex, u16 species);
BOOL Pokedex_HasSeenSpecies(const Pokedex *pokedex, u16 species);
u32 Pokedex_GetForm_Spinda(const Pokedex *pokedex, u8 formIndex);
u32 Pokedex_DisplayedGender(const Pokedex *pokedex, u16 species, int displaySecondary);
u32 Pokedex_GetForm_Unown(const Pokedex *pokedex, int formIndex);
u32 Pokedex_NumFormsSeen_Unown(const Pokedex *pokedex);
u32 Pokedex_GetForm_Shellos(const Pokedex *pokedex, int formIndex);
u32 Pokedex_NumFormsSeen_Shellos(const Pokedex *pokedex);
u32 Pokedex_GetForm_Gastrodon(const Pokedex *pokedex, int formIndex);
u32 Pokedex_NumFormsSeen_Gastrodon(const Pokedex *pokedex);
u32 Pokedex_GetForm_Burmy(const Pokedex *pokedex, int formIndex);
u32 Pokedex_NumFormsSeen_Burmy(const Pokedex *pokedex);
u32 Pokedex_GetForm_Wormadam(const Pokedex *pokedex, int formIndex);
u32 Pokedex_NumFormsSeen_Wormadam(const Pokedex *pokedex);
u32 Pokedex_GetForm_Deoxys(const Pokedex *pokedex, int formIndex);
u32 Pokedex_NumFormsSeen_Deoxys(const Pokedex *pokedex);
void Pokedex_Encounter(Pokedex *pokedex, Pokemon *mon);
void Pokedex_Capture(Pokedex *pokedex, Pokemon *mon);
void Pokedex_ObtainNationalDex(Pokedex *pokedex);
BOOL Pokedex_IsNationalDexObtained(const Pokedex *pokedex);
BOOL Pokedex_CanDetectForms(const Pokedex *pokedex);
void Pokedex_TurnOnFormDetection(Pokedex *pokedex);
BOOL Pokedex_IsLanguageObtained(const Pokedex *pokedex, u16 species, u32 languageIndex);
void Pokedex_TurnOnLanguageDetection(Pokedex *pokedex);
BOOL Pokedex_CanDetectLanguages(const Pokedex *pokedex);
BOOL Pokedex_IsObtained(const Pokedex *pokedex);
void Pokedex_ObtainPokedex(Pokedex *pokedex);
Pokedex *SaveData_GetPokedex(SaveData *saveData);
u32 Pokedex_GetDisplayForm(const Pokedex *pokedex, int species, int formIndex);
u32 Pokedex_NumFormsSeen(const Pokedex *pokedex, int species);

#endif // POKEPLATINUM_POKEDEX_H
