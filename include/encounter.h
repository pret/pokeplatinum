#ifndef POKEPLATINUM_ENCOUNTER_H
#define POKEPLATINUM_ENCOUNTER_H

#include "struct_decls/struct_party_decl.h"

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"
#include "field_task.h"

void sub_02050E10(FieldSystem *fieldSystem, FieldBattleDTO *param1);
void sub_02050E78(FieldSystem *fieldSystem, FieldTask *param1, FieldBattleDTO *param2);
void sub_0205120C(FieldTask *param0, int *param1);
void sub_02051270(FieldTask *param0, u16 param1, u8 param2, int *param3, BOOL param4);
void sub_020512E4(FieldTask *param0, u16 param1, u8 param2, int *param3, BOOL param4);
void sub_02051450(FieldSystem *fieldSystem, FieldBattleDTO *param1);
void sub_02051480(FieldTask *param0, int param1, int param2, int *param3);
void sub_02051590(FieldTask *param0);
void sub_020515CC(FieldTask *param0, int param1, int param2, int param3, int param4, int *param5);
void sub_0205167C(FieldTask *param0, const u8 *param1, int param2);
void sub_020516F4(FieldTask *param0, int param1, int param2, int param3);
void sub_020517E8(FieldSystem *fieldSystem, const u8 *param1, int param2);
void sub_0205184C(FieldSystem *fieldSystem, const Party *param1, int param2);
void sub_02051ABC(FieldTask *param0, u16 param1, u8 param2, int *param3, BOOL param4);

#endif // POKEPLATINUM_ENCOUNTER_H
