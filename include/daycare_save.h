#ifndef POKEPLATINUM_DAYCARE_SAVE_H
#define POKEPLATINUM_DAYCARE_SAVE_H

#include "struct_defs/daycare.h"

#include "pokemon.h"
#include "savedata.h"

int Daycare_SaveSize(void);
void Daycare_Init(Daycare *daycare);
DaycareMon *Daycare_GetDaycareMon(Daycare *daycare, int slot);
BoxPokemon *DaycareMon_GetBoxMon(DaycareMon *daycareMon);
DaycareMail *DaycareMon_GetDaycareMail(DaycareMon *daycareMon);
u32 DaycareMon_GetSteps(const DaycareMon *daycareMon);
Mail *DaycareMail_GetMail(DaycareMail *daycareMail);
BOOL Daycare_HasEgg(const Daycare *daycare);
int Daycare_GetOffspringPersonality(const Daycare *daycare);
int Daycare_GetStepCounter(const Daycare *daycare);
void DaycareMon_SetSteps(DaycareMon *daycareMon, int steps);
void DaycareMon_AddSteps(DaycareMon *daycareMon, int steps);
void Daycare_SetOffspringPersonality(Daycare *daycare, int personality);
void Daycare_SetStepCounter(Daycare *daycare, int steps);
BOOL Daycare_AreParentLanguagesDifferent(Daycare *daycare);
void DaycareMon_CopyToDaycareMon(DaycareMon *dest, const DaycareMon *src);
void DaycareMon_Init(DaycareMon *daycareMon);
Daycare *SaveData_GetDaycare(SaveData *saveData);

#endif // POKEPLATINUM_DAYCARE_SAVE_H
