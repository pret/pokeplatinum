#ifndef POKEPLATINUM_UNK_0202ACE0_H
#define POKEPLATINUM_UNK_0202ACE0_H

#include <dwc.h>

#include "struct_decls/struct_0202B370_decl.h"

#include "savedata.h"
#include "string_gf.h"

#define MAX_FRIENDS 32

int WiFiList_SaveSize(void);
void WiFiList_Init(WiFiList *param0);
DWCUserData *WiFiList_GetUserData(WiFiList *param0);
u32 sub_0202AD2C(WiFiList *param0, int param1, int param2);
void sub_0202AE2C(WiFiList *param0, int param1, int param2, u32 param3);
DWCFriendData *sub_0202AED8(WiFiList *param0, int param1);
u16 *sub_0202AEF0(WiFiList *param0, int param1);
void sub_0202AF0C(WiFiList *param0, int param1, String *param2);
u16 *sub_0202AF34(WiFiList *param0, int param1);
void sub_0202AF50(WiFiList *param0, int param1, String *param2);
BOOL sub_0202AF78(WiFiList *param0, int param1);
int sub_0202AF94(WiFiList *param0);
int sub_0202AFB4(WiFiList *param0);
void sub_0202AFD4(WiFiList *param0, int param1);
void sub_0202B0F8(WiFiList *param0);
void WiFiList_SetHostFriendCurrentDate(WiFiList *param0, int param1);
void sub_0202B174(WiFiList *param0, int param1, int param2, int param3, int param4);
void sub_0202B1D0(WiFiList *param0, int param1, int param2);
void sub_0202B1F8(WiFiList *param0, int param1, int param2);
void sub_0202B220(WiFiList *param0, int param1, int param2);
void sub_0202B248(WiFiList *param0, int param1, int param2);
void sub_0202B270(WiFiList *param0, int param1, int param2);
WiFiList *SaveData_GetWiFiList(SaveData *saveData);

#endif // POKEPLATINUM_UNK_0202ACE0_H
