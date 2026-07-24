#ifndef POKEPLATINUM_GTS_SCREENS_LISTING_H
#define POKEPLATINUM_GTS_SCREENS_LISTING_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "message.h"
#include "pokemon.h"
#include "string_template.h"

int GTSApplication_Listing_Init(GTSApplicationState *appState, int unused);
int GTSApplication_Listing_Main(GTSApplicationState *appState, int unused);
int GTSApplication_Listing_Exit(GTSApplicationState *appState, int unused);
void GTS_DrawOfferedPokemonInfo(MessageLoader *msgLoader, MessageLoader *speciesMessageLoader, StringTemplate *template, Window windows[], BoxPokemon *boxMon, GTSPokemonCriteria *criteria);
void GTS_DrawTrainerInfo(MessageLoader *msgLoader, Window trainerNameWindows[], u16 *trainerName, Pokemon *mon, Window otNameWindows[]);
void GTS_LoadListingPokemonSprite(Pokemon *mon);

#endif // POKEPLATINUM_GTS_SCREENS_LISTING_H
