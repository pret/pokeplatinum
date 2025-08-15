#ifndef POKEPLATINUM_UNK_0202EEC0_H
#define POKEPLATINUM_UNK_0202EEC0_H

#include "struct_decls/struct_02024440_decl.h"

#include "pokemon.h"

int MigratedPokemon_SaveSize(void);
void PalParkTransfer_Init(MigratedPokemon *transferData);
void ClearPalParkTransferPokemonData(MigratedPokemon *transferData);
void BoxMonToTransferData(MigratedPokemon *transfer, BoxPokemon *boxMon, int param2);
void PalParkTransfer_SaveTransferHistory(MigratedPokemon *transferData, u32 gbaTrainerId);
void MigratedPokemon_ToPokemon(const MigratedPokemon *transferData, int slot, Pokemon *mon);
int GetPalParkTransferMonCount(const MigratedPokemon *transferData);
int PalParkTransfer_GetSecondsSinceLastTransfer(const MigratedPokemon *transferData, u32 gbaTrainerId);
BOOL MacAddressMatchesLastPalParkTransfer(const MigratedPokemon *transferData);
BOOL RtcOffsetMatchesLastPalParkTransfer(const MigratedPokemon *transferData);
BOOL IsPalParkTransferMacAddressUnset(const MigratedPokemon *transferData);

#endif // POKEPLATINUM_UNK_0202EEC0_H
