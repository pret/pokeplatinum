#ifndef POKEPLATINUM_APPLICATIONS_WIFI_EARTH_H
#define POKEPLATINUM_APPLICATIONS_WIFI_EARTH_H

#include "overlay_manager.h"
#include "string_gf.h"

BOOL WiFiEarth_Init(ApplicationManager *appMan, int *unused);
BOOL WiFiEarth_Main(ApplicationManager *appMan, int *state);
BOOL WiFiEarth_Exit(ApplicationManager *appMan, int *unused);
BOOL WiFiEarth_GetLocationNames(int country, int region, String *countryName, String *regionName, enum HeapID heapID);
BOOL WiFiEarth_CountryHasRegions(int country);

#endif // POKEPLATINUM_APPLICATIONS_WIFI_EARTH_H
