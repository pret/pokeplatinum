#include "unk_02092494.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02090800.h"

#include "global/pm_version.h"

#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "rtc.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"
#include "unk_02017038.h"

static int DeterminePokemonStatus(Pokemon *param0, BOOL param1, int param2);
static void InitializeNatureRelatedStrBuf(PokemonInfoDisplayStruct *param0);
static void InitializePokemonMetInfoStrBuf(PokemonInfoDisplayStruct *param0, int param1);
static void InitializeAlternateMetInfoStrBuf(PokemonInfoDisplayStruct *param0, int param1);
static void InitializeSpecialMetInfoStrBuf(PokemonInfoDisplayStruct *param0, int param1, int param2);
static void InitializeIVsStrBuf(PokemonInfoDisplayStruct *param0);
static void InitializeFlavorAffinityStrBuf(PokemonInfoDisplayStruct *param0);
static void InitializeFriendshipLevelStrBuf(PokemonInfoDisplayStruct *param0);
static void AssignTrainerInfoToBoxPokemon(BoxPokemon *boxMon, TrainerInfo *param1, int param2);
static void BoxPokemon_SetMetLocationAndDate(BoxPokemon *boxMon, int metLocation, int isHatch);
static void BoxPokemon_ResetMetLocationAndDate(BoxPokemon *boxMon, int isHatch);
static void BoxPokemon_SetMetLevelToCurrentLevel(BoxPokemon *boxMon);
static void BoxPokemon_SetFatefulEncounterFlag(BoxPokemon *boxMon);

PokemonInfoDisplayStruct *sub_02092494(Pokemon *param0, BOOL param1, int heapID)
{
    PokemonInfoDisplayStruct *v0 = Heap_Alloc(heapID, sizeof(PokemonInfoDisplayStruct));
    v0->heapID = heapID;
    v0->unk_04 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_SUMMARY_SCREEN, v0->heapID);
    v0->unk_08 = StringTemplate_New(9, 32, v0->heapID);
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

    switch (DeterminePokemonStatus(v0->unk_0C, v0->unk_10, v0->heapID)) {
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

void sub_0209282C(PokemonInfoDisplayStruct *param0)
{
    if (param0->unk_14.unk_04 != NULL) {
        Heap_Free(param0->unk_14.unk_04);
    }

    if (param0->unk_1C.unk_04 != NULL) {
        Heap_Free(param0->unk_1C.unk_04);
    }

    if (param0->unk_24.unk_04 != NULL) {
        Heap_Free(param0->unk_24.unk_04);
    }

    if (param0->unk_2C.unk_04 != NULL) {
        Heap_Free(param0->unk_2C.unk_04);
    }

    if (param0->unk_34.unk_04 != NULL) {
        Heap_Free(param0->unk_34.unk_04);
    }

    StringTemplate_Free(param0->unk_08);
    MessageLoader_Free(param0->unk_04);
    Heap_Free(param0);
}

static void InitializeNatureRelatedStrBuf(PokemonInfoDisplayStruct *param0)
{
    int v0 = Pokemon_GetNature(param0->unk_0C);

    if (v0 > 24) {
        return;
    }

    param0->unk_14.unk_04 = Strbuf_Init(((2 * 18) * 2), param0->heapID);
    MessageLoader_GetStrbuf(param0->unk_04, (24 + v0), param0->unk_14.unk_04);
}

static void InitializePokemonMetInfoStrBuf(PokemonInfoDisplayStruct *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((((2 * 18) * 2) * 8), param0->heapID);

    param0->unk_1C.unk_04 = Strbuf_Init((((2 * 18) * 2) * 8), param0->heapID);

    MessageLoader_GetStrbuf(param0->unk_04, param1, v0);
    StringTemplate_SetNumber(param0->unk_08, 0, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_YEAR, NULL), 2, 2, 1);
    StringTemplate_SetMonthName(param0->unk_08, 1, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_MONTH, NULL));
    StringTemplate_SetNumber(param0->unk_08, 2, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_DAY, NULL), 2, 0, 1);
    StringTemplate_SetNumber(param0->unk_08, 3, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_LEVEL, NULL), 3, 0, 1);
    StringTemplate_SetMetLocationName(param0->unk_08, 4, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_LOCATION, NULL));
    StringTemplate_SetNumber(param0->unk_08, 5, Pokemon_GetValue(param0->unk_0C, MON_DATA_EGG_YEAR, NULL), 2, 2, 1);
    StringTemplate_SetMonthName(param0->unk_08, 6, Pokemon_GetValue(param0->unk_0C, MON_DATA_EGG_MONTH, NULL));
    StringTemplate_SetNumber(param0->unk_08, 7, Pokemon_GetValue(param0->unk_0C, MON_DATA_EGG_DAY, NULL), 2, 0, 1);
    StringTemplate_SetMetLocationName(param0->unk_08, 8, Pokemon_GetValue(param0->unk_0C, MON_DATA_EGG_LOCATION, NULL));
    StringTemplate_Format(param0->unk_08, param0->unk_1C.unk_04, v0);
    Strbuf_Free(v0);
}

static void InitializeAlternateMetInfoStrBuf(PokemonInfoDisplayStruct *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((((2 * 18) * 2) * 4), param0->heapID);

    param0->unk_1C.unk_04 = Strbuf_Init((((2 * 18) * 2) * 4), param0->heapID);

    MessageLoader_GetStrbuf(param0->unk_04, param1, v0);
    StringTemplate_SetNumber(param0->unk_08, 0, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_YEAR, NULL), 2, 2, 1);
    StringTemplate_SetMonthName(param0->unk_08, 1, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_MONTH, NULL));
    StringTemplate_SetNumber(param0->unk_08, 2, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_DAY, NULL), 2, 0, 1);
    StringTemplate_SetNumber(param0->unk_08, 3, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_LEVEL, NULL), 3, 0, 1);

    switch (Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_GAME, NULL)) {
    default:
        StringTemplate_SetMetLocationName(param0->unk_08, 4, (SpecialMetLoc_GetId(1, 7)));
        break;
    case VERSION_FIRERED:
    case VERSION_LEAFGREEN:
        StringTemplate_SetMetLocationName(param0->unk_08, 4, (SpecialMetLoc_GetId(1, 3)));
        break;
    case VERSION_HEARTGOLD:
    case VERSION_SOULSILVER:
        StringTemplate_SetMetLocationName(param0->unk_08, 4, (SpecialMetLoc_GetId(1, 4)));
        break;
    case VERSION_RUBY:
    case VERSION_SAPPHIRE:
    case VERSION_EMERALD:
        StringTemplate_SetMetLocationName(param0->unk_08, 4, (SpecialMetLoc_GetId(1, 5)));
        break;
    case VERSION_GAMECUBE:
        StringTemplate_SetMetLocationName(param0->unk_08, 4, (SpecialMetLoc_GetId(1, 8)));
        break;
    case VERSION_DIAMOND:
    case VERSION_PEARL:
    case VERSION_PLATINUM:
        StringTemplate_SetMetLocationName(param0->unk_08, 4, (SpecialMetLoc_GetId(1, 7)));
        break;
    }

    StringTemplate_Format(param0->unk_08, param0->unk_1C.unk_04, v0);
    Strbuf_Free(v0);
}

static void InitializeSpecialMetInfoStrBuf(PokemonInfoDisplayStruct *param0, int param1, int param2)
{
    Strbuf *v0 = Strbuf_Init((((2 * 18) * 2) * 5), param0->heapID);

    param0->unk_1C.unk_04 = Strbuf_Init((((2 * 18) * 2) * 5), param0->heapID);

    MessageLoader_GetStrbuf(param0->unk_04, param1, v0);

    if (param2 == 0) {
        StringTemplate_SetNumber(param0->unk_08, 5, Pokemon_GetValue(param0->unk_0C, MON_DATA_EGG_YEAR, NULL), 2, 2, 1);
        StringTemplate_SetMonthName(param0->unk_08, 6, Pokemon_GetValue(param0->unk_0C, MON_DATA_EGG_MONTH, NULL));
        StringTemplate_SetNumber(param0->unk_08, 7, Pokemon_GetValue(param0->unk_0C, MON_DATA_EGG_DAY, NULL), 2, 0, 1);
        StringTemplate_SetMetLocationName(param0->unk_08, 8, Pokemon_GetValue(param0->unk_0C, MON_DATA_EGG_LOCATION, NULL));
    } else {
        StringTemplate_SetNumber(param0->unk_08, 5, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_YEAR, NULL), 2, 2, 1);
        StringTemplate_SetMonthName(param0->unk_08, 6, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_MONTH, NULL));
        StringTemplate_SetNumber(param0->unk_08, 7, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_DAY, NULL), 2, 0, 1);
        StringTemplate_SetMetLocationName(param0->unk_08, 8, Pokemon_GetValue(param0->unk_0C, MON_DATA_MET_LOCATION, NULL));
    }

    StringTemplate_Format(param0->unk_08, param0->unk_1C.unk_04, v0);
    Strbuf_Free(v0);
}

static const u16 Unk_020F5578[6][5] = {
    { 0x47, 0x48, 0x49, 0x4A, 0x4B },
    { 0x4C, 0x4D, 0x4E, 0x4F, 0x50 },
    { 0x51, 0x52, 0x53, 0x54, 0x55 },
    { 0x56, 0x57, 0x58, 0x59, 0x5A },
    { 0x5B, 0x5C, 0x5D, 0x5E, 0x5F },
    { 0x60, 0x61, 0x62, 0x63, 0x64 }
};

static void InitializeIVsStrBuf(PokemonInfoDisplayStruct *param0)
{
    int v0[6], v1, v2;
    int v3, v4;

    param0->unk_24.unk_04 = Strbuf_Init(((2 * 18) * 2), param0->heapID);

    v0[0] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_HP_IV, NULL));
    v0[1] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_ATK_IV, NULL));
    v0[2] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_DEF_IV, NULL));
    v0[3] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_SPEED_IV, NULL));
    v0[4] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_SPATK_IV, NULL));
    v0[5] = (Pokemon_GetValue(param0->unk_0C, MON_DATA_SPDEF_IV, NULL));

    switch (Pokemon_GetValue(param0->unk_0C, MON_DATA_PERSONALITY, NULL) % 6) {
    default:
    case 0:
        v1 = 0;
        v2 = v0[0];

        if (v2 < v0[1]) {
            v1 = 1;
            v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2;
            v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3;
            v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4;
            v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5;
            v2 = v0[5];
        }
        break;
    case 1:
        v1 = 1;
        v2 = v0[1];

        if (v2 < v0[2]) {
            v1 = 2;
            v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3;
            v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4;
            v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5;
            v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0;
            v2 = v0[0];
        }
        break;
    case 2:
        v1 = 2;
        v2 = v0[2];

        if (v2 < v0[3]) {
            v1 = 3;
            v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4;
            v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5;
            v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0;
            v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1;
            v2 = v0[1];
        }
        break;
    case 3:
        v1 = 3;
        v2 = v0[3];

        if (v2 < v0[4]) {
            v1 = 4;
            v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5;
            v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0;
            v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1;
            v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2;
            v2 = v0[2];
        }
        break;
    case 4:
        v1 = 4;
        v2 = v0[4];

        if (v2 < v0[5]) {
            v1 = 5;
            v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0;
            v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1;
            v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2;
            v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3;
            v2 = v0[3];
        }
        break;
    case 5:
        v1 = 5;
        v2 = v0[5];

        if (v2 < v0[0]) {
            v1 = 0;
            v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1;
            v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2;
            v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3;
            v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4;
            v2 = v0[4];
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

static void InitializeFlavorAffinityStrBuf(PokemonInfoDisplayStruct *param0)
{
    int v0, v1, v2;

    param0->unk_2C.unk_04 = Strbuf_Init(((2 * 18) * 2), param0->heapID);
    v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        if (Pokemon_GetFlavorAffinity(param0->unk_0C, v0) == 1) {
            v1 = v0 + 1;
        }
    }

    v2 = Unk_020F556C[v1];
    MessageLoader_GetStrbuf(param0->unk_04, v2, param0->unk_2C.unk_04);
}

static void InitializeFriendshipLevelStrBuf(PokemonInfoDisplayStruct *param0)
{
    int v0 = Pokemon_GetValue(param0->unk_0C, MON_DATA_FRIENDSHIP, NULL);
    int v1;

    param0->unk_34.unk_04 = Strbuf_Init((((2 * 18) * 2) * 4), param0->heapID);

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

static int DeterminePokemonStatus(Pokemon *param0, BOOL param1, int param2)
{
    int v0 = 0;

    if (Pokemon_GetValue(param0, MON_DATA_IS_EGG, NULL) == 0) {
        if (Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == 0) {
            if (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == (SpecialMetLoc_GetId(0, 55))) {
                v0 = 15;
            } else if (Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                if (param1 == 1) {
                    v0 = 7;
                } else {
                    v0 = 8;
                }
            } else if (Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL) == (SpecialMetLoc_GetId(1, 1))) {
                v0 = 2;
            } else {
                if (param1 == 1) {
                    v0 = 0;
                } else {
                    v0 = 1;
                }
            }
        } else {
            if (Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                if (Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == SpecialMetLoc_GetId(1, 2)) {
                    if (param1 == 1) {
                        v0 = 13;
                    } else {
                        v0 = 14;
                    }
                } else if (Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == SpecialMetLoc_GetId(2, 1)) {
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
                if ((Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == SpecialMetLoc_GetId(1, 1)) || (Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == SpecialMetLoc_GetId(1, 0)) || (Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == SpecialMetLoc_GetId(1, 9)) || (Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == SpecialMetLoc_GetId(1, 10)) || (Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == SpecialMetLoc_GetId(1, 11))) {
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
            if (Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                if (Pokemon_GetValue(param0, MON_DATA_EGG_LOCATION, NULL) == (SpecialMetLoc_GetId(2, 1))) {
                    v0 = 20;
                } else {
                    v0 = 18;
                }
            } else {
                v0 = 16;
            }
        } else {
            if (Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 1) {
                v0 = 19;
            } else {
                v0 = 17;
            }
        }
    }

    return v0;
}

void UpdateMonStatusAndTrainerInfo(Pokemon *mon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID)
{
    UpdateBoxMonStatusAndTrainerInfo(&mon->box, trainerInfo, sel, metLocation, heapID);
}

void UpdateBoxMonStatusAndTrainerInfo(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int sel, int metLocation, int heapID)
{
    switch (sel) {
    case 0:
        if (metLocation > (SpecialMetLoc_GetId(1, 0))) {
            metLocation = (SpecialMetLoc_GetId(2, 2));
        }

        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
            BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
            BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
            BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
        } else {
            BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, FALSE);
            BoxPokemon_ResetMetLocationAndDate(boxMon, TRUE);
        }

        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    case 1:
        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
            BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
            BoxPokemon_SetMetLocationAndDate(boxMon, (SpecialMetLoc_GetId(1, 1)), TRUE);
            BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
        } else {
            BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
            BoxPokemon_SetMetLocationAndDate(boxMon, (SpecialMetLoc_GetId(1, 1)), TRUE);
        }
        break;
    case 2:
        BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
        BoxPokemon_SetMetLocationAndDate(boxMon, (SpecialMetLoc_GetId(0, 55)), TRUE);
        BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
        break;
    case 3:
        BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, FALSE);
        BoxPokemon_ResetMetLocationAndDate(boxMon, TRUE);
        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    case 4:
        if (sub_0207884C(boxMon, trainerInfo, heapID) == 1) {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
                BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
                BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
                BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
            } else {
                BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, FALSE);
                BoxPokemon_ResetMetLocationAndDate(boxMon, TRUE);
            }
        } else {
            if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == FALSE) {
                BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
                BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
                BoxPokemon_SetMetLevelToCurrentLevel(boxMon);
            } else {
                BoxPokemon_ResetMetLocationAndDate(boxMon, FALSE);
                BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
            }
        }

        BoxPokemon_SetFatefulEncounterFlag(boxMon);
        break;
    case 5:
        if (BoxPokemon_GetValue(boxMon, MON_DATA_IS_EGG, NULL) == 0) {
            (void)0;
        } else {
            BoxPokemon_SetMetLocationAndDate(boxMon, (SpecialMetLoc_GetId(1, 2)), TRUE);
        }
        break;
    case 6:
        if (metLocation > (SpecialMetLoc_GetId(1, 0))) {
            metLocation = (SpecialMetLoc_GetId(2, 2));
        }

        if (sub_0207884C(boxMon, trainerInfo, heapID) == 0) {
            {
                int v0;

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_MET_LOCATION, NULL);
                BoxPokemon_SetValue(boxMon, MON_DATA_EGG_LOCATION, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_MET_YEAR, NULL);
                BoxPokemon_SetValue(boxMon, MON_DATA_EGG_YEAR, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_MET_MONTH, NULL);
                BoxPokemon_SetValue(boxMon, MON_DATA_EGG_MONTH, &v0);

                v0 = BoxPokemon_GetValue(boxMon, MON_DATA_MET_DAY, NULL);
                BoxPokemon_SetValue(boxMon, MON_DATA_EGG_DAY, &v0);
            }
        }

        BoxPokemon_SetMetLocationAndDate(boxMon, metLocation, TRUE);
        AssignTrainerInfoToBoxPokemon(boxMon, trainerInfo, heapID);
        break;
    }
}

static void AssignTrainerInfoToBoxPokemon(BoxPokemon *boxMon, TrainerInfo *trainerInfo, int heapID)
{
    int v0 = TrainerInfo_ID(trainerInfo);
    int v1 = TrainerInfo_Gender(trainerInfo);
    Strbuf *v2 = TrainerInfo_NameNewStrbuf(trainerInfo, heapID);

    BoxPokemon_SetValue(boxMon, MON_DATA_OT_ID, &v0);
    BoxPokemon_SetValue(boxMon, MON_DATA_OT_GENDER, &v1);
    BoxPokemon_SetValue(boxMon, MON_DATA_OT_NAME_STRING, v2);
    Strbuf_Free(v2);
}

static void BoxPokemon_SetMetLocationAndDate(BoxPokemon *boxMon, int metLocation, int isHatch)
{
    RTCDate date;

    GetCurrentDate(&date);

    if (isHatch == FALSE) {
        BoxPokemon_SetValue(boxMon, MON_DATA_EGG_LOCATION, &metLocation);
        BoxPokemon_SetValue(boxMon, MON_DATA_EGG_YEAR, &date.year);
        BoxPokemon_SetValue(boxMon, MON_DATA_EGG_MONTH, &date.month);
        BoxPokemon_SetValue(boxMon, MON_DATA_EGG_DAY, &date.day);
    } else {
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_LOCATION, &metLocation);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_YEAR, &date.year);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_MONTH, &date.month);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_DAY, &date.day);
    }
}

static void BoxPokemon_ResetMetLocationAndDate(BoxPokemon *boxMon, int isHatch)
{
    int value = 0;

    if (isHatch == FALSE) {
        BoxPokemon_SetValue(boxMon, MON_DATA_EGG_LOCATION, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_EGG_YEAR, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_EGG_MONTH, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_EGG_DAY, &value);
    } else {
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_LOCATION, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_YEAR, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_MONTH, &value);
        BoxPokemon_SetValue(boxMon, MON_DATA_MET_DAY, &value);
    }
}

static void BoxPokemon_SetMetLevelToCurrentLevel(BoxPokemon *boxMon)
{
    int level = BoxPokemon_GetValue(boxMon, MON_DATA_LEVEL, NULL);
    BoxPokemon_SetValue(boxMon, MON_DATA_MET_LEVEL, &level);
}

static void BoxPokemon_SetFatefulEncounterFlag(BoxPokemon *boxMon)
{
    int fatefulEncounter = TRUE;
    BoxPokemon_SetValue(boxMon, MON_DATA_FATEFUL_ENCOUNTER, &fatefulEncounter);
}
