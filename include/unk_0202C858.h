#ifndef POKEPLATINUM_UNK_0202C858_H
#define POKEPLATINUM_UNK_0202C858_H

#include "struct_defs/wi_fi_history.h"

#include "savedata.h"

int WiFiHistory_SaveSize(void);
void WiFiHistory_Init(WiFiHistory *wiFiHistory);
WiFiHistory *SaveData_WiFiHistory(SaveData *saveData);
void sub_0202C88C(WiFiHistory *wiFiHistory, int param1, int param2);
int WiFiHistory_GetCountry(const WiFiHistory *wiFiHistory);
int sub_0202C8C4(const WiFiHistory *wiFiHistory);
int sub_0202C8C8(const WiFiHistory *wiFiHistory, int param1, int param2);
void sub_0202C918(WiFiHistory *wiFiHistory, int param1, int param2, int param3);
BOOL sub_0202C990(const WiFiHistory *wiFiHistory);
void sub_0202C994(WiFiHistory *wiFiHistory, BOOL param1);
void sub_0202C9A0(WiFiHistory *wiFiHistory);

#endif // POKEPLATINUM_UNK_0202C858_H
