#ifndef POKEPLATINUM_UNK_0205DFC4_H
#define POKEPLATINUM_UNK_0205DFC4_H

#include "struct_decls/struct_02061AB4_decl.h"

#include "field_task.h"
#include "savedata.h"

u16 GetNumberDigitCount(u32 number);
u16 Item_IsTMHM(u16 item);
u16 sub_0205E078(u16 param0, u16 param1);
u16 sub_0205E0E4(u16 param0, u16 param1);
u16 SaveData_GetFirstNonEggInParty(SaveData *saveData);
BOOL HasAllLegendaryTitansInParty(SaveData *saveData);
void sub_0205E318(FieldTask *param0, MapObject *param1, u16 param2, u16 param3, u16 param4, u16 param5);
void sub_0205E3F4(FieldTask *param0, MapObject *param1, u16 param2, u16 param3);
int sub_0205E430(u8 param0, u8 param1);
int sub_0205E45C(u8 param0, u8 param1);
int sub_0205E488(u8 param0, u8 param1);
int sub_0205E4B4(u8 param0, u8 param1);
int sub_0205E4E0(u8 param0, u8 param1);
int sub_0205E50C(u8 param0);
int sub_0205E534(u8 param0);
int sub_0205E55C(u8 param0);
int sub_0205E584(u8 param0);
int sub_0205E5B4(u8 param0, u8 param1);
int sub_0205E5E0(u8 param0);
int sub_0205E608(u8 param0);
int sub_0205E630(u8 param0);
int sub_0205E658(u8 param0);
int sub_0205E680(u8 param0);
int sub_0205E6A8(u32 param0);
u8 sub_0205E6B8(void);
u8 sub_0205E6D8(SaveData *saveData);
int sub_0205E700(u8 param0);
int sub_0205E728(u8 param0);
int sub_0205E750(u8 param0);
int sub_0205E790(u8 param0);

#endif // POKEPLATINUM_UNK_0205DFC4_H
