#ifndef POKEPLATINUM_WIFI_HISTORY_SAVE_DATA_H
#define POKEPLATINUM_WIFI_HISTORY_SAVE_DATA_H

#include "struct_defs/wi_fi_history.h"

#include "savedata.h"

int WiFiHistory_SaveSize(void);
void WiFiHistory_Init(WiFiHistory *wiFiHistory);
WiFiHistory *SaveData_WiFiHistory(SaveData *saveData);
void WiFiHistory_SetCountryAndRegion(WiFiHistory *wiFiHistory, int country, int region);
int WiFiHistory_GetCountry(const WiFiHistory *wiFiHistory);
int WiFiHistory_GetRegion(const WiFiHistory *wiFiHistory);
int WiFiHistory_GetGeonetCommunicatedWith(const WiFiHistory *wiFiHistory, int country, int region);
void WiFiHistory_SetGeonetCommunicatedWith(WiFiHistory *wiFiHistory, int country, int region, int recency);
BOOL WiFiHistory_HasInteractedOutsideJapan(const WiFiHistory *wiFiHistory);
void WiFiHistory_SetInteractedOutsideJapan(WiFiHistory *wiFiHistory, BOOL interactedOutsideJapan);
void WiFiHistory_UpdateGeonetCommunicationMap(WiFiHistory *wiFiHistory);

#endif // POKEPLATINUM_WIFI_HISTORY_SAVE_DATA_H
