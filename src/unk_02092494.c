#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02090800.h"

#include "message.h"
#include "unk_0200B358.h"
#include "unk_0201378C.h"
#include "unk_02017038.h"
#include "heap.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "pokemon.h"
#include "unk_02092494.h"

static int DeterminePokemonStatus(Pokemon * param0, BOOL param1, int param2);
static void InitializeNatureRelatedStrBuf(PokemonInfoDisplayStruct * param0);
static void InitializePokemonMetInfoStrBuf(PokemonInfoDisplayStruct * param0, int param1);
static void InitializeAlternateMetInfoStrBuf(PokemonInfoDisplayStruct * param0, int param1);
static void InitializeSpecialMetInfoStrBuf(PokemonInfoDisplayStruct * param0, int param1, int param2);
static void InitializeIVsStrBuf(PokemonInfoDisplayStruct * param0);
static void InitializeFlavorAffinityStrBuf(PokemonInfoDisplayStruct * param0);
static void InitializeFriendshipLevelStrBuf(PokemonInfoDisplayStruct * param0);
static void AssignTrainerInfoToBoxPokemon(BoxPokemon * param0, TrainerInfo * param1, int param2);
static void SetMetLocationForBoxPokemon(BoxPokemon * param0, int param1, int param2);
static void ResetBoxPokemonEggStatus(BoxPokemon * param0, int param1);
static void FinalizeBoxPokemonData(BoxPokemon * param0);
static void UpdateBoxPokemonAfterCheck(BoxPokemon * param0);

PokemonInfoDisplayStruct * sub_02092494 (Pokemon * param0, BOOL param1, int param2)
{
    PokemonInfoDisplayStruct * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(PokemonInfoDisplayStruct));
    v0->unk_00 = param2;
    v0->unk_04 = MessageLoader_Init(1, 26, 455, v0->unk_00);
    v0->unk_08 = sub_0200B368(9, 32, v0->unk_00);
    v0->unk_0C = param0;
    v0->unk_10 = param1;

    {
        v0->unk_14.unk_00 = 0;
        v0->unk_14.unk_04 = NULL;

        v0->unk_1C.unk_00 = 0;
        v0->unk_1C.unk_04 = NULL;

        v0->unk_24.unk_00 = 0;
        v0->unk_24.unk_04 = NULL;

        v0->unk_2C.unk_00 = 0;
        v0->unk_2C.unk_04 = NULL;

        v0->unk_34.unk_00 = 0;
        v0->unk_34.unk_04 = NULL;
    }

    switch (DeterminePokemonStatus(v0->unk_0C, v0->unk_10, v0->unk_00)) {
    case 0:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 49);

        v0->unk_24.unk_00 = 6;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 7;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 1:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 50);

        v0->unk_24.unk_00 = 6;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 7;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 2:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 51);

        v0->unk_24.unk_00 = 6;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 7;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 3:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 52);

        v0->unk_24.unk_00 = 8;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 9;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 4:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 53);

        v0->unk_24.unk_00 = 8;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 9;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 5:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 54);

        v0->unk_24.unk_00 = 8;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 9;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 6:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 55);

        v0->unk_24.unk_00 = 8;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 9;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 7:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 56);

        v0->unk_24.unk_00 = 7;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 8;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 8:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 57);

        v0->unk_24.unk_00 = 7;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 8;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 9:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 58);

        v0->unk_24.unk_00 = 9;
        InitializeIVsStrBuf(v0);
        break;
    case 10:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 59);

        v0->unk_24.unk_00 = 9;
        InitializeIVsStrBuf(v0);
        break;
    case 11:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 60);

        v0->unk_24.unk_00 = 9;
        InitializeIVsStrBuf(v0);
        break;
    case 12:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 61);

        v0->unk_24.unk_00 = 9;
        InitializeIVsStrBuf(v0);
        break;
    case 13:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 62);

        v0->unk_24.unk_00 = 9;
        InitializeIVsStrBuf(v0);
        break;
    case 14:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializePokemonMetInfoStrBuf(v0, 63);

        v0->unk_24.unk_00 = 9;
        InitializeIVsStrBuf(v0);
        break;
    case 15:
        v0->unk_14.unk_00 = 1;
        InitializeNatureRelatedStrBuf(v0);

        v0->unk_1C.unk_00 = 2;
        InitializeAlternateMetInfoStrBuf(v0, 64);

        v0->unk_24.unk_00 = 6;
        InitializeIVsStrBuf(v0);

        v0->unk_2C.unk_00 = 7;
        InitializeFlavorAffinityStrBuf(v0);
        break;
    case 16:
        v0->unk_1C.unk_00 = 1;
        InitializeSpecialMetInfoStrBuf(v0, 101, 0);

        v0->unk_34.unk_00 = 6;
        InitializeFriendshipLevelStrBuf(v0);
        break;
    case 17:
        v0->unk_1C.unk_00 = 1;
        InitializeSpecialMetInfoStrBuf(v0, 102, 1);

        v0->unk_34.unk_00 = 6;
        InitializeFriendshipLevelStrBuf(v0);
        break;
    case 18:
        v0->unk_1C.unk_00 = 1;
        InitializeSpecialMetInfoStrBuf(v0, 103, 0);

        v0->unk_34.unk_00 = 6;
        InitializeFriendshipLevelStrBuf(v0);
        break;
    case 19:
        v0->unk_1C.unk_00 = 1;
        InitializeSpecialMetInfoStrBuf(v0, 103, 1);

        v0->unk_34.unk_00 = 6;
        InitializeFriendshipLevelStrBuf(v0);
        break;
    case 20:
        v0->unk_1C.unk_00 = 1;
        InitializeSpecialMetInfoStrBuf(v0, 104, 0);

        v0->unk_34.unk_00 = 6;
        InitializeFriendshipLevelStrBuf(v0);
        break;
    }

    return v0;
}

void sub_0209282C (PokemonInfoDisplayStruct * param0)
{
    if (param0->unk_14.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_14.unk_04);
    }

    if (param0->unk_1C.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_1C.unk_04);
    }

    if (param0->unk_24.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_24.unk_04);
    }

    if (param0->unk_2C.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_2C.unk_04);
    }

    if (param0->unk_34.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_34.unk_04);
    }

    sub_0200B3F0(param0->unk_08);
    MessageLoader_Free(param0->unk_04);
    Heap_FreeToHeap(param0);
}

static void InitializeNatureRelatedStrBuf (PokemonInfoDisplayStruct * param0)
{
    int v0 = Pokemon_GetNature(param0->unk_0C);

    if (v0 > 24) {
        return;
    }

    param0->unk_14.unk_04 = Strbuf_Init(((2 * 18) * 2), param0->unk_00);
    MessageLoader_GetStrbuf(param0->unk_04, (24 + v0), param0->unk_14.unk_04);
}

static void InitializePokemonMetInfoStrBuf (PokemonInfoDisplayStruct * param0, int param1)
{
    Strbuf* v0 = Strbuf_Init((((2 * 18) * 2) * 8), param0->unk_00);

    param0->unk_1C.unk_04 = Strbuf_Init((((2 * 18) * 2) * 8), param0->unk_00);

    MessageLoader_GetStrbuf(param0->unk_04, param1, v0);
    sub_0200B60C(param0->unk_08, 0, Pokemon_GetValue(param0->unk_0C, MON_DATA_149, NULL), 2, 2, 1);
    sub_0200C2E0(param0->unk_08, 1, Pokemon_GetValue(param0->unk_0C, MON_DATA_150, NULL));
    sub_0200B60C(param0->unk_08, 2, Pokemon_GetValue(param0->unk_0C, MON_DATA_151, NULL), 2, 0, 1);
    sub_0200B60C(param0->unk_08, 3, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_LEVEL, NULL), 3, 0, 1);
    sub_0200BECC(param0->unk_08, 4, Pokemon_GetValue(param0->unk_0C, MON_DATA_153, NULL));
    sub_0200B60C(param0->unk_08, 5, Pokemon_GetValue(param0->unk_0C, MON_DATA_146, NULL), 2, 2, 1);
    sub_0200C2E0(param0->unk_08, 6, Pokemon_GetValue(param0->unk_0C, MON_DATA_147, NULL));
    sub_0200B60C(param0->unk_08, 7, Pokemon_GetValue(param0->unk_0C, MON_DATA_148, NULL), 2, 0, 1);
    sub_0200BECC(param0->unk_08, 8, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_LOCATION, NULL));
    sub_0200C388(param0->unk_08, param0->unk_1C.unk_04, v0);
    Strbuf_Free(v0);
}

static void InitializeAlternateMetInfoStrBuf (PokemonInfoDisplayStruct * param0, int param1)
{
    Strbuf* v0 = Strbuf_Init((((2 * 18) * 2) * 4), param0->unk_00);

    param0->unk_1C.unk_04 = Strbuf_Init((((2 * 18) * 2) * 4), param0->unk_00);

    MessageLoader_GetStrbuf(param0->unk_04, param1, v0);
    sub_0200B60C(param0->unk_08, 0, Pokemon_GetValue(param0->unk_0C, MON_DATA_149, NULL), 2, 2, 1);
    sub_0200C2E0(param0->unk_08, 1, Pokemon_GetValue(param0->unk_0C, MON_DATA_150, NULL));
    sub_0200B60C(param0->unk_08, 2, Pokemon_GetValue(param0->unk_0C, MON_DATA_151, NULL), 2, 0, 1);
    sub_0200B60C(param0->unk_08, 3, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_LEVEL, NULL), 3, 0, 1);

    switch (Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_GAME, NULL)) {
    default:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 7)));
        break;
    case 4:
    case 5:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 3)));
        break;
    case 7:
    case 8:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 4)));
        break;
    case 2:
    case 1:
    case 3:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 5)));
        break;
    case 15:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 8)));
        break;
    case 10:
    case 11:
    case 12:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 7)));
        break;
    }

    sub_0200C388(param0->unk_08, param0->unk_1C.unk_04, v0);
    Strbuf_Free(v0);
}

static void InitializeSpecialMetInfoStrBuf (PokemonInfoDisplayStruct * param0, int param1, int param2)
{
    Strbuf* v0 = Strbuf_Init((((2 * 18) * 2) * 5), param0->unk_00);

    param0->unk_1C.unk_04 = Strbuf_Init((((2 * 18) * 2) * 5), param0->unk_00);

    MessageLoader_GetStrbuf(param0->unk_04, param1, v0);

    if (param2 == 0) {
        sub_0200B60C(param0->unk_08, 5, Pokemon_GetValue(param0->unk_0C, MON_DATA_146, NULL), 2, 2, 1);
        sub_0200C2E0(param0->unk_08, 6, Pokemon_GetValue(param0->unk_0C, MON_DATA_147, NULL));
        sub_0200B60C(param0->unk_08, 7, Pokemon_GetValue(param0->unk_0C, MON_DATA_148, NULL), 2, 0, 1);
        sub_0200BECC(param0->unk_08, 8, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_LOCATION, NULL));
    } else {
        sub_0200B60C(param0->unk_08, 5, Pokemon_GetValue(param0->unk_0C, MON_DATA_149, NULL), 2, 2, 1);
        sub_0200C2E0(param0->unk_08, 6, Pokemon_GetValue(param0->unk_0C, MON_DATA_150, NULL));
        sub_0200B60C(param0->unk_08, 7, Pokemon_GetValue(param0->unk_0C, MON_DATA_151, NULL), 2, 0, 1);
        sub_0200BECC(param0->unk_08, 8, Pokemon_GetValue(param0->unk_0C, MON_DATA_153, NULL));
    }

    sub_0200C388(param0->unk_08, param0->unk_1C.unk_04, v0);
    Strbuf_Free(v0);
}

static const u16 Unk_020F5578[6][5] = {
    {0x47, 0x48, 0x49, 0x4A, 0x4B},
    {0x4C, 0x4D, 0x4E, 0x4F, 0x50},
    {0x51, 0x52, 0x53, 0x54, 0x55},
    {0x56, 0x57, 0x58, 0x59, 0x5A},
    {0x5B, 0x5C, 0x5D, 0x5E, 0x5F},
    {0x60, 0x61, 0x62, 0x63, 0x64}
};

static void InitializeIVsStrBuf (PokemonInfoDisplayStruct * param0)
{
    int v0[6], v1, v2;
    int v3, v4;

    param0->unk_24.unk_04 = Strbuf_Init(((2 * 18) * 2), param0->unk_00);

    v0[0] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_HP_IV, NULL));
    v0[1] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_ATK_IV, NULL));
    v0[2] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_DEF_IV, NULL));
    v0[3] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_SPEED_IV, NULL));
    v0[4] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_SPATK_IV, NULL));
    v0[5] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_SPDEF_IV, NULL));

    switch ((Pokemon_GetValue(param0->unk_0C, MON_DATA_PERSONALITY, NULL) % 6)) {
    default:
    case 0:
        v1 = 0;
        v2 = v0[0];

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }
        break;
    case 1:
        v1 = 1;
        v2 = v0[1];

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }
        break;
    case 2:
        v1 = 2;
        v2 = v0[2];

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }
        break;
    case 3:
        v1 = 3;
        v2 = v0[3];

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }
        break;
    case 4:
        v1 = 4;
        v2 = v0[4];

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }
        break;
    case 5:
        v1 = 5;
        v2 = v0[5];

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }
        break;
    }

    v4 = Unk_020F5578[v1][(v2 % 5)];
    MessageLoader_GetStrbuf(param0->unk_04, v4, param0->unk_24.unk_04);
}

static const u16 Unk_020F556C[6] = {
    0x46,
    0x41,
    0x42,
    0x43,
    0x44,
    0x45
};

static void InitializeFlavorAffinityStrBuf (PokemonInfoDisplayStruct * param0)
{
    int v0, v1, v2;

    param0->unk_2C.unk_04 = Strbuf_Init(((2 * 18) * 2), param0->unk_00);
    v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        if (Pokemon_GetFlavorAffinity(param0->unk_0C, v0) == 1) {
            v1 = v0 + 1;
        }
    }

    v2 = Unk_020F556C[v1];
    MessageLoader_GetStrbuf(param0->unk_04, v2, param0->unk_2C.unk_04);
}

static void InitializeFriendshipLevelStrBuf (PokemonInfoDisplayStruct * param0)
{
    int v0 = Pokemon_GetValue(param0->unk_0C, MON_DATA_FRIENDSHIP, NULL);
    int v1;

    param0->unk_34.unk_04 = Strbuf_Init((((2 * 18) * 2) * 4), param0->unk_00);

    if (v0 <= 5) {
        v1 = 105;
    } else if (v0 <= 10) {
        v1 = 106;
    } else if (v0 <= 40) {
        v1 = 107;
    } else {
        v1 = 108;
    }

    MessageLoader_GetStrbuf(param0->unk_04, v1, param0->unk_34.unk_04);
}

static int DeterminePokemonStatus (Pokemon * param0, BOOL param1, int param2)
{
    int v0 = 0;

    if (Pokemon_GetValue(param0, MON_DATA_IS_EGG, NULL) == 0) {
        if ((Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == 0)) {
            if (Pokemon_GetValue(param0, MON_DATA_153, NULL) == (sub_02017070(0, 55))) {
                v0 = 15;
            } else if ((Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1)) {
                if (param1 == 1) {
                    v0 = 7;
                } else {
                    v0 = 8;
                }
            } else if (Pokemon_GetValue(param0, MON_DATA_153, NULL) == (sub_02017070(1, 1))) {
                v0 = 2;
            } else {
                if (param1 == 1) {
                    v0 = 0;
                } else {
                    v0 = 1;
                }
            }
        } else {
            if ((Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1)) {
                if (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == sub_02017070(1, 2)) {
                    if (param1 == 1) {
                        v0 = 13;
                    } else {
                        v0 = 14;
                    }
                } else if (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == sub_02017070(2, 1)) {
                    if (param1 == 1) {
                        v0 = 11;
                    } else {
                        v0 = 12;
                    }
                } else {
                    if (param1 == 1) {
                        v0 = 9;
                    } else {
                        v0 = 10;
                    }
                }
            } else {
                if ((Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == sub_02017070(1, 1)) || (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == sub_02017070(1, 0)) || (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == sub_02017070(1, 9)) || (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == sub_02017070(1, 10)) || (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == sub_02017070(1, 11))) {
                    if (param1 == 1) {
                        v0 = 5;
                    } else {
                        v0 = 6;
                    }
                } else {
                    if (param1 == 1) {
                        v0 = 3;
                    } else {
                        v0 = 4;
                    }
                }
            }
        }
    } else {
        if (param1 == 1) {
            if ((Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1)) {
                if (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == (sub_02017070(2, 1))) {
                    v0 = 20;
                } else {
                    v0 = 18;
                }
            } else {
                v0 = 16;
            }
        } else {
            if ((Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1)) {
                v0 = 19;
            } else {
                v0 = 17;
            }
        }
    }

    return v0;
}

void sub_0209304C (Pokemon * param0, TrainerInfo * param1, int param2, int param3, int param4)
{
    UpdateBoxMonStatusAndTrainerInfo(&param0->box, param1, param2, param3, param4);
}

void UpdateBoxMonStatusAndTrainerInfo (BoxPokemon * boxMon, TrainerInfo * trainerInfo, int sel, int metLocation, int heapID)
{
    switch (sel) {
    case 0:
        if (metLocation > (sub_02017070(1, 0))) {
            metLocation = (sub_02017070(2, 2));
        }

        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == 0) {
            ResetBoxPokemonEggStatus(boxMon, 0);
            SetMetLocationForBoxPokemon(boxMon, metLocation, 1);
            FinalizeBoxPokemonData(boxMon);
        } else {
            SetMetLocationForBoxPokemon(boxMon, metLocation, 0);
            ResetBoxPokemonEggStatus(boxMon, 1);
        }

        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    case 1:
        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == 0) {
            ResetBoxPokemonEggStatus(boxMon, 0);
            SetMetLocationForBoxPokemon(boxMon, (sub_02017070(1, 1)), 1);
            FinalizeBoxPokemonData(boxMon);
        } else {
            ResetBoxPokemonEggStatus(boxMon, 0);
            SetMetLocationForBoxPokemon(boxMon, (sub_02017070(1, 1)), 1);
        }
        break;
    case 2:
        ResetBoxPokemonEggStatus(boxMon, 0);
        SetMetLocationForBoxPokemon(boxMon, (sub_02017070(0, 55)), 1);
        FinalizeBoxPokemonData(boxMon);
        break;
    case 3:
        SetMetLocationForBoxPokemon(boxMon, metLocation, 0);
        ResetBoxPokemonEggStatus(boxMon, 1);
        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    case 4:
        if (sub_0207884C(boxMon, trainerInfo, heapID) == 1) {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == 0) {
                ResetBoxPokemonEggStatus(boxMon, 0);
                SetMetLocationForBoxPokemon(boxMon, metLocation, 1);
                FinalizeBoxPokemonData(boxMon);
            } else {
                SetMetLocationForBoxPokemon(boxMon, metLocation, 0);
                ResetBoxPokemonEggStatus(boxMon, 1);
            }
        } else {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == 0) {
                ResetBoxPokemonEggStatus(boxMon, 0);
                SetMetLocationForBoxPokemon(boxMon, metLocation, 1);
                FinalizeBoxPokemonData(boxMon);
            } else {
                ResetBoxPokemonEggStatus(boxMon, 0);
                SetMetLocationForBoxPokemon(boxMon, metLocation, 1);
            }
        }

        UpdateBoxPokemonAfterCheck(boxMon);
        break;
    case 5:
        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == 0) {
            (void)0;
        } else {
            SetMetLocationForBoxPokemon(boxMon, (sub_02017070(1, 2)), 1);
        }
        break;
    case 6:
        if (metLocation > (sub_02017070(1, 0))) {
            metLocation = (sub_02017070(2, 2));
        }

        if (sub_0207884C(boxMon, trainerInfo, heapID) == 0) {
            {
                int v0;

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_153, NULL);
                BoxPokemon_SetValue(boxMon, 152, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_149, NULL);
                BoxPokemon_SetValue(boxMon, 146, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_150, NULL);
                BoxPokemon_SetValue(boxMon, 147, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_151, NULL);
                BoxPokemon_SetValue(boxMon, 148, &v0);
            }
        }

        SetMetLocationForBoxPokemon(boxMon, metLocation, 1);
        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    }
}


static void AssignTrainerInfoToBoxPokemon (BoxPokemon * boxMon, TrainerInfo * trainerInfo, int heapID)
{
    int v0 = TrainerInfo_ID(trainerInfo);
    int v1 = TrainerInfo_Gender(trainerInfo);
    Strbuf* v2 = TrainerInfo_NameNewStrbuf(trainerInfo, heapID);

    BoxPokemon_SetValue(boxMon, 7, &v0);
    BoxPokemon_SetValue(boxMon, 157, &v1);
    BoxPokemon_SetValue(boxMon, 145, v2);
    Strbuf_Free(v2);
}

static void SetMetLocationForBoxPokemon (BoxPokemon * param0, int param1, int param2)
{
    RTCDate v0;

    sub_020138A4(&v0);

    if (param2 == 0) {
        BoxPokemon_SetValue(param0, 152, &param1);
        BoxPokemon_SetValue(param0, 146, &v0.year);
        BoxPokemon_SetValue(param0, 147, &v0.month);
        BoxPokemon_SetValue(param0, 148, &v0.day);
    } else {
        BoxPokemon_SetValue(param0, 153, &param1);
        BoxPokemon_SetValue(param0, 149, &v0.year);
        BoxPokemon_SetValue(param0, 150, &v0.month);
        BoxPokemon_SetValue(param0, 151, &v0.day);
    }
}

static void ResetBoxPokemonEggStatus (BoxPokemon * param0, int param1)
{
    int v0 = 0;

    if (param1 == 0) {
        BoxPokemon_SetValue(param0, 152, &v0);
        BoxPokemon_SetValue(param0, 146, &v0);
        BoxPokemon_SetValue(param0, 147, &v0);
        BoxPokemon_SetValue(param0, 148, &v0);
    } else {
        BoxPokemon_SetValue(param0, 153, &v0);
        BoxPokemon_SetValue(param0, 149, &v0);
        BoxPokemon_SetValue(param0, 150, &v0);
        BoxPokemon_SetValue(param0, 151, &v0);
    }
}

static void FinalizeBoxPokemonData (BoxPokemon * param0)
{
    int v0 = BoxPokemon_GetValue(param0, MON_DATA_LEVEL, NULL);
    BoxPokemon_SetValue(param0, 156, &v0);
}

static void UpdateBoxPokemonAfterCheck (BoxPokemon * param0)
{
    int v0 = 1;
    BoxPokemon_SetValue(param0, 110, &v0);
}
