#include "unk_0202EEC0.h"

#include <nitro.h>
#include <string.h>

#include "pokemon.h"
#include "rtc.h"

typedef struct MigratedPokemon {
    Pokemon mons[CATCHING_SHOW_MONS];
    u32 gbaTrainerIds[MAX_GBA_TRANSFER_HISTORY];
    s64 timeStamps[MAX_GBA_TRANSFER_HISTORY];
    s64 rtcOffset;
    u8 macAddress[6];
} MigratedPokemon;

int MigratedPokemon_SaveSize(void)
{
    return sizeof(MigratedPokemon);
}

void PalParkTransfer_Init(MigratedPokemon *transferData)
{
    int i;

    MI_CpuClearFast(transferData, sizeof(MigratedPokemon));

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        Pokemon_Init(&transferData->mons[i]);
        GF_ASSERT(Pokemon_GetValue(&transferData->mons[i], MON_DATA_SPECIES_EXISTS, NULL) == FALSE);
    }
}

void ClearPalParkTransferPokemonData(MigratedPokemon *transferData)
{
    int i;

    MI_CpuClearFast(transferData->mons, sizeof(Pokemon) * CATCHING_SHOW_MONS);

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        Pokemon_Init(&transferData->mons[i]);
        GF_ASSERT(Pokemon_GetValue(&transferData->mons[i], MON_DATA_SPECIES_EXISTS, NULL) == FALSE);
    }
}

static int GetTransferSlotByTrainerID(MigratedPokemon *transferData, u32 param1)
{
    int i, slot;
    s64 temp;

    for (i = 0; i < MAX_GBA_TRANSFER_HISTORY; i++) {
        if (transferData->gbaTrainerIds[i] == param1) {
            return i;
        }
    }

    for (i = 0; i < MAX_GBA_TRANSFER_HISTORY; i++) {
        if (transferData->gbaTrainerIds[i] == 0) {
            return i;
        }
    }

    temp = 0x7FFFFFFF;

    // Return oldest transfer slot if all 20 slots have been filled
    for (i = 0; i < MAX_GBA_TRANSFER_HISTORY; i++) {
        if (transferData->timeStamps[i] < temp) {
            temp = transferData->timeStamps[i];
            slot = i;
        }
    }

    return slot;
}

void BoxMonToTransferData(MigratedPokemon *transfer, BoxPokemon *boxMon, int slot)
{
    Pokemon_FromBoxPokemon(boxMon, &transfer->mons[slot]);
}

void PalParkTransfer_SaveTransferHistory(MigratedPokemon *transferData, u32 gbaTrainerId)
{
    int slot = GetTransferSlotByTrainerID(transferData, gbaTrainerId);

    transferData->gbaTrainerIds[slot] = gbaTrainerId;
    transferData->timeStamps[slot] = GetTimestamp();
    transferData->rtcOffset = OS_GetOwnerRtcOffset();

    OS_GetMacAddress(transferData->macAddress);
}

void MigratedPokemon_ToPokemon(const MigratedPokemon *transferData, int slot, Pokemon *mon)
{
    GF_ASSERT(slot < CATCHING_SHOW_MONS);
    *mon = transferData->mons[slot];
}

int GetPalParkTransferMonCount(const MigratedPokemon *transferData)
{
    int i, count;

    for (count = 0, i = 0; i < CATCHING_SHOW_MONS; i++) {
        if (Pokemon_GetValue((Pokemon *)&transferData->mons[i], MON_DATA_SPECIES_EXISTS, NULL)) {
            count++;
        }
    }

    return count;
}

int PalParkTransfer_GetSecondsSinceLastTransfer(const MigratedPokemon *transferData, u32 gbaTrainerId)
{
    s64 currentTime = GetTimestamp();

    for (int i = 0; i < MAX_GBA_TRANSFER_HISTORY; i++) {
        if (transferData->gbaTrainerIds[i] == gbaTrainerId) {
            return currentTime - transferData->timeStamps[i];
        }
    }

    return 0;
}

BOOL MacAddressMatchesLastPalParkTransfer(const MigratedPokemon *transferData)
{
    u8 currMacAddress[6];

    OS_GetMacAddress(currMacAddress);

    for (int i = 0; i < 6; i++) {
        if (currMacAddress[i] != transferData->macAddress[i]) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL RtcOffsetMatchesLastPalParkTransfer(const MigratedPokemon *transferData)
{
    return transferData->rtcOffset == OS_GetOwnerRtcOffset();
}

BOOL IsPalParkTransferMacAddressUnset(const MigratedPokemon *transferData)
{
    int i;
    u8 v1;

    for (v1 = 0, i = 0; i < 6; i++) {
        v1 |= transferData->macAddress[i];
    }

    if (v1 == 0) {
        return TRUE;
    }

    return FALSE;
}
