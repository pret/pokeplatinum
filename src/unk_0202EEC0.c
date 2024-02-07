#include <nitro.h>
#include <string.h>

#include "pokemon.h"

#include "rtc.h"
#include "unk_0202EEC0.h"
#include "pokemon.h"

typedef struct PalParkTransfer {
    Pokemon unk_00[6];
    u32 unk_288[20];
    s64 unk_2D8[20];
    s64 unk_378;
    u8 unk_380[6];
} PalParkTransfer;

int PalParkTransfer_SaveSize (void)
{
    return sizeof(PalParkTransfer);
}

void PalParkTransfer_Init (PalParkTransfer * param0)
{
    int v0;

    MI_CpuClearFast(param0, sizeof(PalParkTransfer));

    for (v0 = 0; v0 < 6; v0++) {
        Pokemon_Init(&param0->unk_00[v0]);
        GF_ASSERT(Pokemon_GetValue(&param0->unk_00[v0], MON_DATA_SPECIES_EXISTS, NULL) == 0);
    }
}

void sub_0202EF04 (PalParkTransfer * param0)
{
    int v0;

    MI_CpuClearFast(param0->unk_00, sizeof(Pokemon) * 6);

    for (v0 = 0; v0 < 6; v0++) {
        Pokemon_Init(&param0->unk_00[v0]);
        GF_ASSERT(Pokemon_GetValue(&param0->unk_00[v0], MON_DATA_SPECIES_EXISTS, NULL) == 0);
    }
}

static int sub_0202EF40 (PalParkTransfer * param0, u32 param1)
{
    int v0, v1;
    s64 v2;

    for (v0 = 0; v0 < 20; v0++) {
        if (param0->unk_288[v0] == param1) {
            return v0;
        }
    }

    for (v0 = 0; v0 < 20; v0++) {
        if (param0->unk_288[v0] == 0) {
            return v0;
        }
    }

    v2 = 0x7FFFFFFF;

    for (v0 = 0; v0 < 20; v0++) {
        if (param0->unk_2D8[v0] < v2) {
            v2 = param0->unk_2D8[v0];
            v1 = v0;
        }
    }

    return v1;
}

void sub_0202EFA4 (PalParkTransfer * param0, BoxPokemon * param1, int param2)
{
    Pokemon_FromBoxPokemon(param1, &param0->unk_00[param2]);
}

void sub_0202EFB8 (PalParkTransfer * param0, u32 param1)
{
    int v0 = sub_0202EF40(param0, param1);

    param0->unk_288[v0] = param1;
    param0->unk_2D8[v0] = GetTimestamp();
    param0->unk_378 = OS_GetOwnerRtcOffset();

    OS_GetMacAddress(param0->unk_380);
}

void sub_0202F000 (const PalParkTransfer * param0, int param1, Pokemon * param2)
{
    GF_ASSERT(param1 < 6);
    *param2 = param0->unk_00[param1];
}

int sub_0202F028 (const PalParkTransfer * param0)
{
    int v0, v1;

    for (v1 = 0, v0 = 0; v0 < 6; v0++) {
        if (Pokemon_GetValue((Pokemon *)&param0->unk_00[v0], MON_DATA_SPECIES_EXISTS, NULL)) {
            v1++;
        }
    }

    return v1;
}

int sub_0202F050 (const PalParkTransfer * param0, u32 param1)
{
    int v0;
    s64 v1 = GetTimestamp();

    for (v0 = 0; v0 < 20; v0++) {
        if (param0->unk_288[v0] == param1) {
            return v1 - param0->unk_2D8[v0];
        }
    }

    return 0;
}

BOOL sub_0202F088 (const PalParkTransfer * param0)
{
    int v0;
    u8 v1[6];

    OS_GetMacAddress(v1);

    for (v0 = 0; v0 < 6; v0++) {
        if (v1[v0] != param0->unk_380[v0]) {
            return 0;
        }
    }

    return 1;
}

BOOL sub_0202F0BC (const PalParkTransfer * param0)
{
    return param0->unk_378 == OS_GetOwnerRtcOffset();
}

BOOL sub_0202F0E0 (const PalParkTransfer * param0)
{
    int v0;
    u8 v1;

    for (v1 = 0, v0 = 0; v0 < 6; v0++) {
        v1 |= param0->unk_380[v0];
    }

    if (v1 == 0) {
        return 1;
    }

    return 0;
}
