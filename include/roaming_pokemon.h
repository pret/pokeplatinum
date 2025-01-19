#ifndef POKEPLATINUM_ROAMING_POKEMON_H
#define POKEPLATINUM_ROAMING_POKEMON_H

#include "struct_defs/struct_0202D7B0.h"

#include "savedata.h"

#define ROAMING_SLOT_MESPRIT   (0)
#define ROAMING_SLOT_CRESSELIA (1)
#define ROAMING_SLOT_DARKRAI   (2) // Unused in-game, see: https://tcrf.net/Pok%C3%A9mon_Platinum#Unused_Roaming_Darkrai
#define ROAMING_SLOT_MOLTRES   (3)
#define ROAMING_SLOT_ZAPDOS    (4)
#define ROAMING_SLOT_ARTICUNO  (5)
#define ROAMING_SLOT_MAX       (6)

void sub_0206C33C(SpecialEncounter *param0, const u8 param1);
void sub_0206C354(SpecialEncounter *param0);
void sub_0206C37C(SpecialEncounter *param0);
int sub_0206C3C8(const u8 param0);
BOOL sub_0206C3E0(SpecialEncounter *param0);
void sub_0206C404(SpecialEncounter *param0, const int param1);
void RoamingPokemon_ActivateSlot(SaveData *saveData, const u8 speciesID);

#endif // POKEPLATINUM_ROAMING_POKEMON_H
