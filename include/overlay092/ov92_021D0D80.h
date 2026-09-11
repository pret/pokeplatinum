#ifndef POKEPLATINUM_OV92_021D0D80_H
#define POKEPLATINUM_OV92_021D0D80_H

#include "overlay_manager.h"
#include "string_gf.h"

int WiFiEarth_Init(ApplicationManager *appMan, int *unused);
int WiFiEarth_Main(ApplicationManager *appMan, int *state);
int WiFiEarth_Exit(ApplicationManager *appMan, int *unused);
BOOL WiFiEarth_GetLocationNames(int country, int region, String *countryName, String *regionName, enum HeapID heapID);
BOOL WiFiEarth_CountryHasRegions(int country);

#endif // POKEPLATINUM_OV92_021D0D80_H
