#ifndef POKEPLATINUM_UNK_0202EEC0_H
#define POKEPLATINUM_UNK_0202EEC0_H

#include "struct_decls/struct_02024440_decl.h"

#include "pokemon.h"

int PalParkTransfer_SaveSize(void);
void PalParkTransfer_Init(PalParkTransfer *transferData);
void ClearPalParkTransferPokemonData(PalParkTransfer *transferData);
void BoxMonToTransferData(PalParkTransfer *transfer, BoxPokemon *boxMon, int param2);
void PalParkTransfer_SaveTransferHistory(PalParkTransfer *transferData, u32 gbaTrainerId);
void TransferDataToMon(const PalParkTransfer *transferData, int slot, Pokemon *param2);
int GetPalParkTransferMonCount(const PalParkTransfer *transferData);
int PalParkTransfer_GetSecondsSinceLastTransfer(const PalParkTransfer *transferData, u32 gbaTrainerId);
BOOL MacAddressMatchesLastPalParkTransfer(const PalParkTransfer *transferData);
BOOL RtcOffsetMatchesLastPalParkTransfer(const PalParkTransfer *transferData);
BOOL IsPalParkTransferMacAddressUnset(const PalParkTransfer *transferData);

#endif // POKEPLATINUM_UNK_0202EEC0_H
