#ifndef POKEPLATINUM_UNK_020261E4_H
#define POKEPLATINUM_UNK_020261E4_H

#include "struct_defs/daycare.h"

#include "pokemon.h"
#include "savedata.h"

int Daycare_SaveSize(void);
void Daycare_Init(Daycare *daycare);
DaycareMon *Daycare_GetDaycareMon(Daycare *daycare, int slot);
BoxPokemon *DaycareMon_GetBoxMon(DaycareMon *daycareMon);
DaycareMail *sub_02026224(DaycareMon *daycareMon);
u32 DaycareMon_GetSteps(const DaycareMon *daycareMon);
UnkStruct_0202818C *sub_02026230(DaycareMail *param0);
int sub_02026234(const Daycare *daycare);
int Daycare_GetOffspringPersonality(const Daycare *daycare);
int Daycare_GetStepCounter(const Daycare *daycare);
void DaycareMon_SetSteps(DaycareMon *daycareMon, int steps);
void DaycareMon_AddSteps(DaycareMon *daycareMon, int steps);
void Daycare_SetOffspringPersonality(Daycare *daycare, int personality);
void Daycare_SetStepCounter(Daycare *daycare, int steps);
BOOL Daycare_AreParentLanguagesDifferent(Daycare *daycare);
void DaycareMon_CopyToDaycareMon(DaycareMon *dest, const DaycareMon *src);
void DaycareMon_Init(DaycareMon *daycareMon);
Daycare *SaveData_GetDaycare(SaveData *param0);

#endif // POKEPLATINUM_UNK_020261E4_H
