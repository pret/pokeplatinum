#ifndef POKEPLATINUM_GTS_SCREENS_DEPOSIT_H
#define POKEPLATINUM_GTS_SCREENS_DEPOSIT_H

#include "overlay094/gts_application_state.h"
#include "overlay094/gts_charpad_scroll_state.h"

#include "bg_window.h"
#include "list_menu.h"
#include "message.h"
#include "pokedex.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"

int GTSApplication_Deposit_Init(GTSApplicationState *appState, int unused);
int GTSApplication_Deposit_Main(GTSApplicationState *appState, int unused);
int GTSApplication_Deposit_Exit(GTSApplicationState *appState, int unused);
int GTSDeposit_TryAutoSetGender(GTSPokemonRequirements *requirements, int genderRatio);
void GTSDeposit_DrawSpeciesText(Window *window, MessageLoader *speciesMessageLoader, int messageId, int centered, int y, TextColor textColor);
void GTSDeposit_DrawCountryText(Window *window, MessageLoader *countryMessageLoader, MessageLoader *gtsMessageLoader, int messageId, int centered, int y, TextColor textColor);
void GTSDeposit_DrawGenderText(Window *window, MessageLoader *gtsMessageLoader, int gender, int param3, int y, int x, TextColor fallback);
void GTSDeposit_DrawLevelText(Window *window, MessageLoader *gtsMessageLoader, int messageIndex, int centered, int y, TextColor textColor, BOOL isRange, int x);
void GTSDeposit_DrawLevelTextAtOrigin(Window *window, MessageLoader *gtsMessageLoader, int messageIndex, int centered, int y, TextColor textColor, BOOL isRange);
void GTSDeposit_DrawWantedCriteria(MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, StringTemplate *unused, Window windows[], int species, int gender, int levelRange);
void GTS_DrawWantedCriteria(MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, StringTemplate *unused, Window windows[], int species, int gender, int levelRange);
u16 *GTS_LoadAlphabeticalPokedex(enum HeapID heapID, int unused, int *pokedexLength);
u8 *GTS_LoadNationalDexLookup(enum HeapID heapID);
void GTS_FillListing(GTSPokemonListing *listing, GTSApplicationState *appState);
ListMenu *GTS_CreateCharpadMenu(GTSApplicationState *appState, StringList **stringList, Window *window, MessageLoader *gtsMessageLoader);
ListMenu *GTS_CreateSpeciesMenu(GTSApplicationState *appState, StringList **stringList, Window *window, MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, GTSApplicationState_sub3 *appSubState, Pokedex *pokedex);
ListMenu *GTS_CreateGenderMenu(StringList **stringList, Window *window, MessageLoader *gtsMessageLoader);
ListMenu *GTS_CreateLevelMenu(StringList **stringList, Window *window, MessageLoader *gtsMessageLoader, BOOL isRange);
void GTS_SetLevelRequirement(GTSPokemonRequirements *requirements, int levelIndex, BOOL isRange);
int GTS_FindLevelMessageIndex(int minLevel, int maxLevel, BOOL isRange);
ListMenu *GTS_CreateCountryMenu(StringList **stringList, Window *window, MessageLoader *countryMessageLoader, MessageLoader *gtsMessageLoader);
void GTS_SetSelectedCountry(GTSApplicationState *appState, int selectedCountryIndex);
u32 GTS_ProcessListMenuInput(ListMenu *menu, u16 *input);
void GTS_InitTabScrollState(GTSCharpadScrollState *state);
void GTS_SaveTabScrollState(GTSCharpadScrollState *state, int index, int cursorPos, int scrollPos);

#endif // POKEPLATINUM_GTS_SCREENS_DEPOSIT_H
