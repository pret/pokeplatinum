#ifndef POKEPLATINUM_UNK_02038FFC_H
#define POKEPLATINUM_UNK_02038FFC_H

#include "struct_decls/wi_fi_list.h"

#include "savedata.h"

int sub_02038FFC(enum HeapID heapID);
void sub_02039034(WiFiList *param0);
int WiFiList_GetUserGsProfileId(WiFiList *wifiList);
BOOL WiFiList_HasValidLogin(SaveData *saveData);

#endif // POKEPLATINUM_UNK_02038FFC_H
