#ifndef POKEPLATINUM_UNK_0202EEC0_H
#define POKEPLATINUM_UNK_0202EEC0_H

#include "struct_decls/struct_02024440_decl.h"

#include "pokemon.h"

int PalParkTransfer_SaveSize(void);
void PalParkTransfer_Init(PalParkTransfer *transferData);
void sub_0202EF04(PalParkTransfer *transferData);
void BoxMonToTransferData(PalParkTransfer *transfer, BoxPokemon *boxMon, int param2);
void sub_0202EFB8(PalParkTransfer *transferData, u32 param1);
void TransferDataToMon(const PalParkTransfer *transferData, int slot, Pokemon *param2);
int GetPalParkTransferMonCount(const PalParkTransfer *transferData);
int sub_0202F050(const PalParkTransfer *transferData, u32 param1);
BOOL MacAddressMatchesLastPalParkTransfer(const PalParkTransfer *transferData);
BOOL RtcOffsetMatchesLastPalParkTransfer(const PalParkTransfer *transferData);
BOOL IsPalParkTransferMacAddressUnset(const PalParkTransfer *transferData);

#endif // POKEPLATINUM_UNK_0202EEC0_H
