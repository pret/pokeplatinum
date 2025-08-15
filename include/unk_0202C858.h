#ifndef POKEPLATINUM_UNK_0202C858_H
#define POKEPLATINUM_UNK_0202C858_H

#include "struct_defs/wi_fi_history.h"

#include "savedata.h"

int WiFiHistory_SaveSize(void);
void WiFiHistory_Init(WiFiHistory *wiFiHistory);
WiFiHistory *SaveData_WiFiHistory(SaveData *saveData);
void WiFiHistory_SetCountryAndRegion(WiFiHistory *wiFiHistory, int param1, int param2);
int WiFiHistory_GetCountry(const WiFiHistory *wiFiHistory);
int WiFiHistory_GetRegion(const WiFiHistory *wiFiHistory);
int WiFiHistory_GetGeonetCommunicatedWith(const WiFiHistory *wiFiHistory, int param1, int param2);
void WiFiHistory_SetGeonetCommunicatedWith(WiFiHistory *wiFiHistory, int param1, int param2, int param3);
BOOL WiFiHistory_HasInteractedOutsideJapan(const WiFiHistory *wiFiHistory);
void WiFiHistory_SetInteractedOutsideJapan(WiFiHistory *wiFiHistory, BOOL param1);
void WiFiHistory_UpdateGeonetCommunicationMap(WiFiHistory *wiFiHistory);

#endif // POKEPLATINUM_UNK_0202C858_H
