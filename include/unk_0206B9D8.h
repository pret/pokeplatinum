#ifndef POKEPLATINUM_UNK_0206B9D8_H
#define POKEPLATINUM_UNK_0206B9D8_H

#include "field/field_system_decl.h"

#include "field_task.h"
#include "savedata.h"

void sub_0206BBFC(FieldTask *param0, void **param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7);
void sub_0206BCE4(FieldTask *param0, u16 param1, u16 param2, u16 param3);
void sub_0206BD88(FieldTask *param0, u16 param1, u16 param2);
u16 sub_0206BDBC(SaveData *saveData);
u16 sub_0206BF04(SaveData *saveData);
u32 sub_0206BFF0(u32 param0);
u32 sub_0206BFFC(u32 param0);
u32 sub_0206C008(SaveData *saveData);
u32 sub_0206C02C(SaveData *saveData);
u32 sub_0206C068(SaveData *saveData);
BOOL FieldSystem_IsInBattleTowerSalon(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_UNK_0206B9D8_H
