#ifndef POKEPLATINUM_WIFI_LIST_H
#define POKEPLATINUM_WIFI_LIST_H

#include <dwc.h>

#include "struct_decls/wi_fi_list.h"

#include "savedata.h"
#include "string_gf.h"

#define MAX_FRIENDS 32

int WiFiList_SaveSize(void);
void WiFiList_Init(WiFiList *wiFiList);
DWCUserData *WiFiList_GetUserData(WiFiList *wiFiList);
u32 sub_0202AD2C(WiFiList *wiFiList, int param1, int param2);
void sub_0202AE2C(WiFiList *wiFiList, int param1, int param2, u32 param3);
DWCFriendData *sub_0202AED8(WiFiList *wiFiList, int param1);
u16 *sub_0202AEF0(WiFiList *wiFiList, int param1);
void sub_0202AF0C(WiFiList *wiFiList, int param1, String *param2);
u16 *sub_0202AF34(WiFiList *wiFiList, int param1);
void sub_0202AF50(WiFiList *wiFiList, int param1, String *param2);
BOOL sub_0202AF78(WiFiList *wiFiList, int param1);
int sub_0202AF94(WiFiList *wiFiList);
int sub_0202AFB4(WiFiList *wiFiList);
void sub_0202AFD4(WiFiList *wiFiList, int param1);
void sub_0202B0F8(WiFiList *wiFiList);
void WiFiList_SetHostFriendCurrentDate(WiFiList *wiFiList, int param1);
void sub_0202B174(WiFiList *wiFiList, int param1, int param2, int param3, int param4);
void sub_0202B1D0(WiFiList *wiFiList, int param1, int param2);
void sub_0202B1F8(WiFiList *wiFiList, int param1, int param2);
void sub_0202B220(WiFiList *wiFiList, int param1, int param2);
void sub_0202B248(WiFiList *wiFiList, int param1, int param2);
void sub_0202B270(WiFiList *wiFiList, int param1, int param2);
WiFiList *SaveData_GetWiFiList(SaveData *saveData);

#endif // POKEPLATINUM_WIFI_LIST_H
