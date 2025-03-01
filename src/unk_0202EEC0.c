#include "unk_0202EEC0.h"

#include <nitro.h>
#include <string.h>

#include "constants/catching_show.h"

#include "pokemon.h"
#include "rtc.h"

typedef struct PalParkTransfer {
    Pokemon mons[CATCHING_SHOW_MONS];
    u32 unk_288[20];
    s64 unk_2D8[20];
    s64 unk_378;
    u8 unk_380[6];
} PalParkTransfer;

int PalParkTransfer_SaveSize(void)
{
    return sizeof(PalParkTransfer);
}

void PalParkTransfer_Init(PalParkTransfer *transferData)
{
    int i;

    MI_CpuClearFast(transferData, sizeof(PalParkTransfer));

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        Pokemon_Init(&transferData->mons[i]);
        GF_ASSERT(Pokemon_GetValue(&transferData->mons[i], MON_DATA_SPECIES_EXISTS, NULL) == FALSE);
    }
}

void sub_0202EF04(PalParkTransfer *transferData)
{
    int i;

    MI_CpuClearFast(transferData->mons, sizeof(Pokemon) * CATCHING_SHOW_MONS);

    for (i = 0; i < CATCHING_SHOW_MONS; i++) {
        Pokemon_Init(&transferData->mons[i]);
        GF_ASSERT(Pokemon_GetValue(&transferData->mons[i], MON_DATA_SPECIES_EXISTS, NULL) == 0);
    }
}

static int sub_0202EF40(PalParkTransfer *transferData, u32 param1)
{
    int v0, v1;
    s64 v2;

    for (v0 = 0; v0 < 20; v0++) {
        if (transferData->unk_288[v0] == param1) {
            return v0;
        }
    }

    for (v0 = 0; v0 < 20; v0++) {
        if (transferData->unk_288[v0] == 0) {
            return v0;
        }
    }

    v2 = 0x7FFFFFFF;

    for (v0 = 0; v0 < 20; v0++) {
        if (transferData->unk_2D8[v0] < v2) {
            v2 = transferData->unk_2D8[v0];
            v1 = v0;
        }
    }

    return v1;
}

void BoxMonToTransferData(PalParkTransfer *transfer, BoxPokemon *boxMon, int slot)
{
    Pokemon_FromBoxPokemon(boxMon, &transfer->mons[slot]);
}

void sub_0202EFB8(PalParkTransfer *transferData, u32 param1)
{
    int v0 = sub_0202EF40(transferData, param1);

    transferData->unk_288[v0] = param1;
    transferData->unk_2D8[v0] = GetTimestamp();
    transferData->unk_378 = OS_GetOwnerRtcOffset();

    OS_GetMacAddress(transferData->unk_380);
}

void TransferDataToMon(const PalParkTransfer *transferData, int slot, Pokemon *mon)
{
    GF_ASSERT(slot < CATCHING_SHOW_MONS);
    *mon = transferData->mons[slot];
}

int GetPalParkTransferMonCount(const PalParkTransfer *transferData)
{
    int i, count;

    for (count = 0, i = 0; i < CATCHING_SHOW_MONS; i++) {
        if (Pokemon_GetValue((Pokemon *)&transferData->mons[i], MON_DATA_SPECIES_EXISTS, NULL)) {
            count++;
        }
    }

    return count;
}

int sub_0202F050(const PalParkTransfer *transferData, u32 param1)
{
    int v0;
    s64 v1 = GetTimestamp();

    for (v0 = 0; v0 < 20; v0++) {
        if (transferData->unk_288[v0] == param1) {
            return v1 - transferData->unk_2D8[v0];
        }
    }

    return 0;
}

BOOL sub_0202F088(const PalParkTransfer *transferData)
{
    int i;
    u8 v1[6];

    OS_GetMacAddress(v1);

    for (i = 0; i < 6; i++) {
        if (v1[i] != transferData->unk_380[i]) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL sub_0202F0BC(const PalParkTransfer *transferData)
{
    return transferData->unk_378 == OS_GetOwnerRtcOffset();
}

BOOL sub_0202F0E0(const PalParkTransfer *transferData)
{
    int i;
    u8 v1;

    for (v1 = 0, i = 0; i < 6; i++) {
        v1 |= transferData->unk_380[i];
    }

    if (v1 == 0) {
        return TRUE;
    }

    return FALSE;
}
