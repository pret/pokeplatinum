#ifndef POKEPLATINUM_APPLICATIONS_WIFI_EARTH_H
#define POKEPLATINUM_APPLICATIONS_WIFI_EARTH_H

#include "overlay_manager.h"
#include "string_gf.h"

int WiFiEarth_Init(ApplicationManager *appMan, int *unused);
int WiFiEarth_Main(ApplicationManager *appMan, int *state);
int WiFiEarth_Exit(ApplicationManager *appMan, int *unused);
BOOL WiFiEarth_GetLocationNames(int country, int region, String *countryName, String *regionName, enum HeapID heapID);
BOOL WiFiEarth_CountryHasRegions(int country);

#endif // POKEPLATINUM_APPLICATIONS_WIFI_EARTH_H
