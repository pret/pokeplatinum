#ifndef POKEPLATINUM_OV5_021E622C_H
#define POKEPLATINUM_OV5_021E622C_H

#include "struct_defs/daycare.h"

#include "field/field_system_decl.h"

#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "string_template.h"
#include "trainer_info.h"

u8 ov5_021E6238(Daycare *daycare);
int ov5_021E6270(Daycare *daycare);
void ov5_021E6358(Party *param0, int param1, Daycare *daycare, SaveData *param3);
u16 ov5_021E64F8(Party *param0, StringTemplate *param1, Daycare *daycare, u8 param3);
int BoxPokemon_GiveExperience(BoxPokemon *boxMon, u32 param1);
int ov5_021E6568(DaycareMon *daycareMon);
int ov5_021E6590(DaycareMon *daycareMon);
u8 ov5_021E65B0(DaycareMon *daycareMon, StringTemplate *param1);
int ov5_021E65EC(DaycareMon *daycareMon, StringTemplate *param1);
int ov5_021E6630(Daycare *daycare, u8 param1, StringTemplate *param2);
u8 ov5_021E6640(Daycare *daycare, int param1, StringTemplate *param2);
void Daycare_ResetPersonalityAndStepCounter(Daycare *daycare);
void Egg_CreateEgg(Pokemon *mon, u16 species, u8 param2, TrainerInfo *trainerInfo, int param4, int metLocation);
void ov5_021E6EA8(Daycare *daycare, Party *param1, TrainerInfo *param2);
BOOL ov5_021E7154(Daycare *daycare, Party *param1, FieldSystem *fieldSystem);
Pokemon *Party_GetFirstEgg(Party *party);
void ov5_021E72BC(Daycare *daycare, StringTemplate *param1);
void ov5_021E7308(Daycare *daycare, u32 param1, u32 param2, u32 param3, u8 slot, StringTemplate *template);
u16 ov5_021E73A0(Party *param0, int param1, StringTemplate *param2);
u8 ov5_021E73C8(Daycare *daycare);
u8 ov5_021E73F0(u32 param0);
u32 ov5_021E7420(Daycare *daycare);
void ov5_021E771C(Pokemon *param0, int param1);
u32 ov5_021E7790(BoxPokemon **boxMonPair);

#endif // POKEPLATINUM_OV5_021E622C_H
