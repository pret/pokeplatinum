#ifndef POKEPLATINUM_UNK_0204FA34_H
#define POKEPLATINUM_UNK_0204FA34_H

#include "struct_decls/struct_0203026C_decl.h"

#include "savedata.h"

typedef struct BattleHallSameSpeciesCheck {
    u8 taskState;
    u8 receivedMessages;
    u16 unused;
    u16 species;
    u16 partnersSpecies;
    u16 *speciesAreDifferent;
} BattleHallSameSpeciesCheck;

void BattleHall_ProcessSelectedSpeciesMsg(int netID, int unused, void *data, void *context);
void sub_0204FA50(SaveData *saveData, UnkStruct_0203026C *param1, u8 param2);

#endif // POKEPLATINUM_UNK_0204FA34_H
