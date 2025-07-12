#ifndef POKEPLATINUM_GTS_SCREENS_DEPOSIT_H
#define POKEPLATINUM_GTS_SCREENS_DEPOSIT_H

#include "struct_decls/pokedexdata_decl.h"

#include "overlay094/gts_application_state.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_02242AAC.h"

#include "bg_window.h"
#include "list_menu.h"
#include "message.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"

int GTSApplication_Deposit_Init(GTSApplicationState *appState, int unused1);
int GTSApplication_Deposit_Main(GTSApplicationState *appState, int unused1);
int GTSApplication_Deposit_Exit(GTSApplicationState *appState, int unused1);
int ov94_02241B80(GTSPokemonRequirements *requirements, int genderRatio);
void ov94_02242158(Window *window, MessageLoader *speciesMessageLoader, int messageId, int centered, int y, TextColor textColor);
void ov94_0224218C(Window *window, MessageLoader *countryMessageLoader, MessageLoader *gtsMessageLoader, int messageId, int centered, int y, TextColor textColor);
void ov94_02242204(Window *window, MessageLoader *gtsMessageLoader, int gender, int param3, int y, int x, TextColor fallback);
void ov94_0224226C(Window *window, MessageLoader *gtsMessageLoader, int messageIndex, int centered, int y, TextColor textColor, BOOL isRange, int x);
void ov94_022422B8(Window *window, MessageLoader *gtsMessageLoader, int messageIndex, int centered, int y, TextColor textColor, BOOL isRange);
void ov94_022422D4(MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, StringTemplate *param2, Window windows[], int species, int gender, int levelRange);
void ov94_02242368(MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, StringTemplate *param2, Window windows[], int species, int gender, int levelRange);
u16 *ov94_Pokedex_Alphabetical(int heapID, int unused, int *pokedexLength);
u8 *ov94_02242548(int heapID);
void ov94_022425A8(GTSPokemonListing *listing, GTSApplicationState *appState);
ListMenu *ov94_022426A8(GTSApplicationState *appState, StringList **stringList, Window *window, MessageLoader *gtsMessageLoader);
ListMenu *ov94_022427C0(GTSApplicationState *appState, StringList **stringList, Window *window, MessageLoader *gtsMessageLoader, MessageLoader *speciesMessageLoader, GTSApplicationState_sub3 *appSubState, Pokedex *pokedex);
ListMenu *ov94_02242840(StringList **stringList, Window *window, MessageLoader *gtsMessageLoader);
ListMenu *ov94_022428B0(StringList **stringList, Window *window, MessageLoader *gtsMessageLoader, BOOL isRange);
void ov94_02242934(GTSPokemonRequirements *requirements, int levelIndex, BOOL isRange);
int ov94_02242970(int minLevel, int maxLevel, BOOL isRange);
ListMenu *ov94_022429B4(StringList **stringList, Window *window, MessageLoader *countryMessageLoader, MessageLoader *gtsMessageLoader);
void ov94_02242A44(GTSApplicationState *appState, int selectedCountryIndex);
u32 ov94_02242A6C(ListMenu *menu, u16 *input);
void ov94_02242AAC(UnkStruct_ov94_02242AAC *param0);
void ov94_02242AC4(UnkStruct_ov94_02242AAC *param0, int param1, int param2, int param3);

#endif // POKEPLATINUM_GTS_SCREENS_DEPOSIT_H
