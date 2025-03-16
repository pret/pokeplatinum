#ifndef POKEPLATINUM_UNK_020261E4_H
#define POKEPLATINUM_UNK_020261E4_H

#include "struct_decls/struct_02026218_decl.h"
#include "struct_decls/struct_02026224_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_defs/struct_0202818C.h"

#include "pokemon.h"
#include "savedata.h"

int Daycare_SaveSize(void);
void Daycare_Init(Daycare *daycare);
DaycareMon *Daycare_GetDaycareMon(Daycare *daycare, int slot);
BoxPokemon *DaycareMon_GetBoxMon(DaycareMon *daycareMon);
UnkStruct_02026224 *sub_02026224(DaycareMon *daycareMon);
u32 DaycareMon_GetSteps(const DaycareMon *daycareMon);
UnkStruct_0202818C *sub_02026230(UnkStruct_02026224 *param0);
int sub_02026234(const Daycare *daycare);
int Daycare_GetOffspringPersonality(const Daycare *daycare);
int Daycare_GetStepCounter(const Daycare *daycare);
void DaycareMon_SetSteps(DaycareMon *daycareMon, int steps);
void DaycareMon_AddSteps(DaycareMon *daycareMon, int steps);
void Daycare_SetOffspringPersonality(Daycare *daycare, int personality);
void Daycare_SetStepCounter(Daycare *daycare, int steps);
BOOL Daycare_AreParentLanguagesDifferent(Daycare *daycare);
void DaycareMon_CopyToDaycareMon(DaycareMon *dest, const DaycareMon *src);
void sub_020262C0(UnkStruct_02026224 *param0);
void sub_020262F4(DaycareMon *daycareMon);
Daycare *SaveData_GetDaycare(SaveData *param0);

#endif // POKEPLATINUM_UNK_020261E4_H
