#ifndef POKEPLATINUM_GTS_SCREENS_LISTING_H
#define POKEPLATINUM_GTS_SCREENS_LISTING_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "message.h"
#include "pokemon.h"
#include "string_template.h"

int GTSApplication_Listing_Init(GTSApplicationState *param0, int param1);
int GTSApplication_Listing_Main(GTSApplicationState *param0, int param1);
int GTSApplication_Listing_Exit(GTSApplicationState *param0, int param1);
void ov94_0223D910(MessageLoader *param0, MessageLoader *param1, StringTemplate *param2, Window param3[], BoxPokemon *boxMon, GTSPokemonCriteria *param5);
void ov94_0223DA78(MessageLoader *param0, Window param1[], u16 *param2, Pokemon *param3, Window param4[]);
void ov94_0223DB2C(Pokemon *param0);

#endif // POKEPLATINUM_GTS_SCREENS_LISTING_H
