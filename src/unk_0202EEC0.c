#include <nitro.h>
#include <string.h>

#include "struct_defs/pokemon.h"
#include "struct_defs/box_pokemon.h"

#include "unk_0201378C.h"
#include "unk_0202EEC0.h"
#include "unk_02073C2C.h"

typedef struct UnkStruct_02024440_t {
    Pokemon unk_00[6];
    u32 unk_288[20];
    s64 unk_2D8[20];
    s64 unk_378;
    u8 unk_380[6];
} UnkStruct_02024440;

int sub_0202EEC0 (void)
{
    return sizeof(UnkStruct_02024440);
}

void sub_0202EEC8 (UnkStruct_02024440 * param0)
{
    int v0;

    MI_CpuClearFast(param0, sizeof(UnkStruct_02024440));

    for (v0 = 0; v0 < 6; v0++) {
        ZeroMonData(&param0->unk_00[v0]);
        GF_ASSERT(GetMonData(&param0->unk_00[v0], 172, NULL) == 0);
    }
}

void sub_0202EF04 (UnkStruct_02024440 * param0)
{
    int v0;

    MI_CpuClearFast(param0->unk_00, sizeof(Pokemon) * 6);

    for (v0 = 0; v0 < 6; v0++) {
        ZeroMonData(&param0->unk_00[v0]);
        GF_ASSERT(GetMonData(&param0->unk_00[v0], 172, NULL) == 0);
    }
}

static int sub_0202EF40 (UnkStruct_02024440 * param0, u32 param1)
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

void sub_0202EFA4 (UnkStruct_02024440 * param0, BoxPokemon * param1, int param2)
{
    sub_020774C8(param1, &param0->unk_00[param2]);
}

void sub_0202EFB8 (UnkStruct_02024440 * param0, u32 param1)
{
    int v0 = sub_0202EF40(param0, param1);

    param0->unk_288[v0] = param1;
    param0->unk_2D8[v0] = sub_020138EC();
    param0->unk_378 = OS_GetOwnerRtcOffset();

    OS_GetMacAddress(param0->unk_380);
}

void sub_0202F000 (const UnkStruct_02024440 * param0, int param1, Pokemon * param2)
{
    GF_ASSERT(param1 < 6);
    *param2 = param0->unk_00[param1];
}

int sub_0202F028 (const UnkStruct_02024440 * param0)
{
    int v0, v1;

    for (v1 = 0, v0 = 0; v0 < 6; v0++) {
        if (GetMonData((Pokemon *)&param0->unk_00[v0], 172, NULL)) {
            v1++;
        }
    }

    return v1;
}

int sub_0202F050 (const UnkStruct_02024440 * param0, u32 param1)
{
    int v0;
    s64 v1 = sub_020138EC();

    for (v0 = 0; v0 < 20; v0++) {
        if (param0->unk_288[v0] == param1) {
            return v1 - param0->unk_2D8[v0];
        }
    }

    return 0;
}

BOOL sub_0202F088 (const UnkStruct_02024440 * param0)
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

BOOL sub_0202F0BC (const UnkStruct_02024440 * param0)
{
    return param0->unk_378 == OS_GetOwnerRtcOffset();
}

BOOL sub_0202F0E0 (const UnkStruct_02024440 * param0)
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
