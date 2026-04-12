#ifndef POKEPLATINUM_PAL_PARK_TRANSFERS_H
#define POKEPLATINUM_PAL_PARK_TRANSFERS_H

#include "pokemon.h"

typedef struct MigratedPokemon {
    Pokemon mons[CATCHING_SHOW_MONS];
    u32 gbaTrainerIds[MAX_GBA_TRANSFER_HISTORY];
    s64 timeStamps[MAX_GBA_TRANSFER_HISTORY];
    s64 rtcOffset;
    u8 macAddress[6];
} MigratedPokemon;

int MigratedPokemon_SaveSize(void);
void PalParkTransfer_Init(MigratedPokemon *transferData);
void ClearPalParkTransferPokemonData(MigratedPokemon *transferData);
void BoxMonToTransferData(MigratedPokemon *transfer, BoxPokemon *boxMon, int slot);
void PalParkTransfer_SaveTransferHistory(MigratedPokemon *transferData, u32 gbaTrainerId);
void MigratedPokemon_ConvertToPokemon(const MigratedPokemon *transferData, int slot, Pokemon *mon);
int GetPalParkTransferMonCount(const MigratedPokemon *transferData);
int PalParkTransfer_GetSecondsSinceLastTransfer(const MigratedPokemon *transferData, u32 gbaTrainerId);
BOOL MacAddressMatchesLastPalParkTransfer(const MigratedPokemon *transferData);
BOOL RtcOffsetMatchesLastPalParkTransfer(const MigratedPokemon *transferData);
BOOL IsPalParkTransferMacAddressUnset(const MigratedPokemon *transferData);

#endif // POKEPLATINUM_PAL_PARK_TRANSFERS_H
