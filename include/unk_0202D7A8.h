#ifndef POKEPLATINUM_UNK_0202D7A8_H
#define POKEPLATINUM_UNK_0202D7A8_H

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_0202D844.h"
#include "struct_defs/struct_0202D84C.h"
#include "struct_defs/struct_020698E4.h"
#include "struct_defs/struct_0206C638.h"

#include "savedata.h"

// for SpecialEncounter_GetDailyMon
#define DAILY_MARSH 1
#define DAILY_SWARM 2

int SpecialEncounter_SaveSize(void);
void SpecialEncounter_Init(SpecialEncounter *param0);
void SpecialEncounter_SetMixedRecordDailies(SpecialEncounter *speEnc, const u32 mixedRecord);
u32 SpecialEncounter_GetDailyMon(SpecialEncounter *param0, const u8 dailyType);
UnkStruct_020698E4 *sub_0202D830(SpecialEncounter *param0);
SpecialEncounter *SaveData_GetSpecialEncounters(SaveData *param0);
UnkStruct_0202D844 *sub_0202D840(SpecialEncounter *param0);
const int sub_0202D844(UnkStruct_0202D844 *param0);
void sub_0202D848(const u8 param0, UnkStruct_0202D844 *param1);
UnkStruct_0202D84C *sub_0202D84C(const u8 param0, UnkStruct_0202D844 *param1);
void sub_0202D854(SaveData *param0, const int param1);
void sub_0202D884(SaveData *param0);
u8 sub_0202D898(SpecialEncounter *param0);
void sub_0202D8A4(SpecialEncounter *param0, const int param1);
int sub_0202D8BC(SpecialEncounter *param0);
u8 sub_0202D8C4(SpecialEncounter *param0, const u8 param1);
void sub_0202D8DC(SpecialEncounter *param0, const u8 param1, const u8 param2);
u8 sub_0202D8F8(SpecialEncounter *param0, const u8 param1);
void sub_0202D914(Roamer **param0);
Roamer *sub_0202D924(SpecialEncounter *param0, const u8 param1);
u32 sub_0202D93C(const Roamer *param0, const u8 param1);
void sub_0202D980(Roamer *param0, const u8 param1, const u32 param2);
u8 *sub_0202D9C4(SpecialEncounter *param0);
u8 *sub_0202D9CC(SpecialEncounter *param0);
BOOL sub_0202D9D8(SpecialEncounter *param0);
void sub_0202D9EC(SpecialEncounter *param0, const u8 param1);
u8 sub_0202DA04(SpecialEncounter *param0);
void sub_0202DA10(SaveData *param0, u16 *param1, u16 *param2);
void sub_0202DA24(SaveData *param0, const u16 param1);

#endif // POKEPLATINUM_UNK_0202D7A8_H
