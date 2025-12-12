#include "overlay104/ov104_0223B6F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/battle_frontier.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223BA10.h"

#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "math_util.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "save_player.h"
#include "strbuf.h"
#include "unk_0203061C.h"
#include "unk_0205DFC4.h"

static int ov104_0223B6F4(u8 param0, int param1, int param2);
void ov104_0223B760(u8 param0, int param1, u16 param2[], u8 param3);
u8 ov104_0223B7A8(u8 param0, BOOL param1);
u8 ov104_0223B7DC(u8 param0, BOOL param1);
FieldBattleDTO *ov104_0223B810(UnkStruct_ov104_0223BA10 *param0, UnkStruct_ov104_02230BE4 *param1);
static u32 ov104_0223B9E4(u8 param0);
u8 ov104_0223BA10(UnkStruct_ov104_0223BA10 *param0);
BOOL ov104_0223BA14(u8 param0);
void ov104_0223BA24(Party *param0);
void ov104_0223BAB8(UnkStruct_ov104_0223BA10 *param0);
void ov104_0223BA7C(UnkStruct_ov104_0223BA10 *param0, Pokemon *param1);
void ov104_0223BAA0(UnkStruct_ov104_0223BA10 *param0, Party *param1, Pokemon *param2);
static u16 ov104_0223BB10(UnkStruct_ov104_0223BA10 *param0);
u16 ov104_0223BB60(UnkStruct_ov104_0223BA10 *param0);
u16 ov104_0223BC24(u16 param0);
void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *param0);
void ov104_0223BB84(BgConfig *param0, UnkStruct_ov104_0223BA10 *param1, u32 param2);
static void ov104_0223BBC4(u16 *param0, u16 param1);

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} Unk_ov104_02241258[] = {
    { 0x0, 0x63, 0x64, 0x77 },
    { 0x50, 0x77, 0x78, 0x8B },
    { 0x64, 0x8B, 0x8C, 0x9F },
    { 0x78, 0x9F, 0xA0, 0xB3 },
    { 0x8C, 0xB3, 0xB4, 0xC7 },
    { 0xA0, 0xC7, 0xC8, 0xDB },
    { 0xB4, 0xDB, 0xDC, 0xEF },
    { 0xC8, 0x12B, 0xC8, 0x12B }
};

static int ov104_0223B6F4(u8 param0, int param1, int param2)
{
    int v0, v1, v2, v3, v4;

    if (param0 == 0) {
        v3 = (param1 * 7) + (param2 + 1);

        if (v3 == 21) {
            return 313;
        } else if (v3 == 49) {
            return 314;
        }
    }

    v4 = param1;

    if (v4 >= NELEMS(Unk_ov104_02241258)) {
        v4 = NELEMS(Unk_ov104_02241258) - 1;
    }

    if ((param2 == 7 - 1) || (param2 == (7 * 2) - 1)) {
        v1 = Unk_ov104_02241258[v4].unk_06 - Unk_ov104_02241258[v4].unk_04;
        v2 = Unk_ov104_02241258[v4].unk_04;
    } else {
        v1 = Unk_ov104_02241258[v4].unk_02 - Unk_ov104_02241258[v4].unk_00;
        v2 = Unk_ov104_02241258[v4].unk_00;
    }

    v0 = v2 + (LCRNG_Next() % v1);
    return v0;
}

void ov104_0223B760(u8 param0, int param1, u16 param2[], u8 param3)
{
    int v0 = 0;
    int v1;

    do {
        param2[v0] = ov104_0223B6F4(param0, param1, v0);

        for (v1 = 0; v1 < v0; v1++) {
            if (param2[v1] == param2[v0]) {
                break;
            }
        }

        if (v1 != v0) {
            continue;
        }

        v0++;
    } while (v0 < param3);
}

u8 ov104_0223B7A8(u8 param0, BOOL param1)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (param1 == 0) {
            return 2;
        } else {
            return 2 * 2;
        }
    }

    GF_ASSERT(0);
    return 3;
}

u8 ov104_0223B7DC(u8 param0, BOOL param1)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (param1 == 0) {
            return 2;
        } else {
            return 2 * 2;
        }
    }

    GF_ASSERT(0);
    return 3;
}

FieldBattleDTO *ov104_0223B810(UnkStruct_ov104_0223BA10 *param0, UnkStruct_ov104_02230BE4 *param1)
{
    int v0;
    u32 v1;
    u8 v4;
    Pokemon *v6;
    FrontierTrainerDataDTO v7;

    u8 v2 = ov104_0223B7A8(param0->unk_10, 0);
    u8 v3 = ov104_0223B7DC(param0->unk_10, 0);

    Party_HealAllMembers(param0->unk_2C);
    FieldBattleDTO *v5 = FieldBattleDTO_New(HEAP_ID_FIELD2, ov104_0223B9E4(param0->unk_10));
    FieldBattleDTO_InitFromGameState(v5, NULL, param1->saveData, param1->unk_1C, param1->journalEntry, param1->bagCursor, param1->unk_20);

    v5->background = BACKGROUND_BATTLE_CASTLE;
    v5->terrain = TERRAIN_BATTLE_CASTLE;

    Party_InitWithCapacity(v5->parties[0], v2);

    if (CommSys_CurNetId() == 0) {
        v4 = 0;
    } else {
        v4 = 2;
    }

    v6 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < v2; v0++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(param0->unk_28, (v4 + v0)), v6);

        FieldBattleDTO_AddPokemonToBattler(v5, v6, 0);
    }

    Heap_Free(v6);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(v5);

    Heap_Free(BattleTower_GetTrainerData(&v7, param0->unk_30[param0->unk_11], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));
    ov104_0222E284(v5, &v7, v3, 1, 11);
    Party_InitWithCapacity(v5->parties[1], ov104_0223B7DC(param0->unk_10, 0));

    for (v0 = 0; v0 < 4; v0++) {
        v5->trainer[v0].header.aiMask = ov104_0223BB10(param0);
    }

    v6 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < v3; v0++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(param0->unk_2C, v0), v6);
        FieldBattleDTO_AddPokemonToBattler(v5, v6, 1);
    }

    Heap_Free(v6);

    switch (param0->unk_10) {
    case 2:
    case 3:
        FieldBattleDTO_CopyPlayerInfoToTrainerData(v5);

        TrainerInfo_Copy(CommInfo_TrainerInfo(1 - CommSys_CurNetId()), v5->trainerInfo[2]);

        Heap_Free(BattleTower_GetTrainerData(&v7, param0->unk_30[param0->unk_11 + 7], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

        ov104_0222E284(v5, &v7, v3, 3, 11);
        Party_InitWithCapacity(v5->parties[3], ov104_0223B7DC(param0->unk_10, 0));

        v6 = Pokemon_New(HEAP_ID_FIELD2);

        for (v0 = 0; v0 < v3; v0++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(param0->unk_2C, (v3 + v0)), v6);
            FieldBattleDTO_AddPokemonToBattler(v5, v6, 3);
        }

        Heap_Free(v6);
        break;
    }

    return v5;
}

static u32 ov104_0223B9E4(u8 param0)
{
    switch (param0) {
    case 0:
        return (0x0 | 0x1) | 0x80;
    case 1:
        return (0x2 | 0x1) | 0x80;
    case 2:
        return (((0x4 | 0x1) | 0x2) | 0x8) | 0x80;
    case 3:
        return (((0x4 | 0x1) | 0x2) | 0x8) | 0x80;
    }

    return (0x0 | 0x1) | 0x80;
}

u8 ov104_0223BA10(UnkStruct_ov104_0223BA10 *param0)
{
    return 50;
}

BOOL ov104_0223BA14(u8 param0)
{
    switch (param0) {
    case 2:
    case 3:
        return 1;
    }

    return 0;
}

void ov104_0223BA24(Party *param0)
{
    int v0, v1, v2;
    u32 v3;
    Pokemon *mon;

    v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        mon = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == 0) {
            v3 = 1;
            Pokemon_SetValue(mon, MON_DATA_HP, &v3);
        }

        v3 = 0;
        Pokemon_SetValue(mon, MON_DATA_STATUS, &v3);
    }

    return;
}

void ov104_0223BA7C(UnkStruct_ov104_0223BA10 *param0, Pokemon *param1)
{
    Pokemon_UpdateAfterCatch(param1, SaveData_GetTrainerInfo(param0->saveData), 4, 0, 0, 11);
    return;
}

void ov104_0223BAA0(UnkStruct_ov104_0223BA10 *param0, Party *param1, Pokemon *param2)
{
    ov104_0223BA7C(param0, param2);
    Party_AddPokemon(param1, param2);
    return;
}

void ov104_0223BAB8(UnkStruct_ov104_0223BA10 *param0)
{
    int v0, v1;
    u8 v2;
    Pokemon *v3;

    Party_Init(param0->unk_2C);

    v2 = ov104_0223B7DC(param0->unk_10, 1);
    v3 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < v2; v0++) {
        ov104_0222DF40(&param0->unk_288[v0], v3, ov104_0223BA10(param0));
        ov104_0223BAA0(param0, param0->unk_2C, v3);
    }

    Heap_Free(v3);

    return;
}

static u16 ov104_0223BB10(UnkStruct_ov104_0223BA10 *param0)
{
    u16 v0, v1;

    if (param0->unk_10 == 0) {
        if ((param0->unk_30[param0->unk_11] == 313) || (param0->unk_30[param0->unk_11] == 314)) {
            return 0x1 | 0x2 | 0x4;
        }
    }

    v1 = ov104_0223BB60(param0);
    v0 = (0x1 | 0x2 | 0x4);

    switch (v1 + 1) {
    case 1:
    case 2:
        v0 = 0;
        break;
    case 3:
    case 4:
        v0 = 0x1;
        break;
    }

    return v0;
}

u16 ov104_0223BB60(UnkStruct_ov104_0223BA10 *param0)
{
    u16 v0 = param0->unk_16;

    if (ov104_0223BA14(param0->unk_10) == 1) {
        if (param0->unk_A12 > param0->unk_16) {
            v0 = param0->unk_A12;
        }
    }

    return v0;
}

void ov104_0223BB84(BgConfig *param0, UnkStruct_ov104_0223BA10 *param1, u32 param2)
{
    int v0;
    u16 v1[30];

    ov104_0223BBC4(v1, ov104_0223BB60(param1));

    Bg_LoadToTilemapRect(param0, param2, v1, 11, 6, 10, 3);
    Bg_ScheduleTilemapTransfer(param0, param2);

    return;
}

static void ov104_0223BBC4(u16 *param0, u16 param1)
{
    u8 v0[10];
    u16 v1;
    u32 v2, v3, v4, v5;

    v1 = ov104_0223BC24(param1);

    for (v3 = 0; v3 < (10 / 2); v3++) {
        v0[v3] = v3;
        v0[(10 / 2) + v3] = (((10 / 2) - 1) - v3);
    }

    v2 = (0x60 * v1) + 0x10;

    for (v3 = 0; v3 < 3; v3++) {
        for (v4 = 0; v4 < 10; v4++) {
            v5 = v2 + (v3 * 0x20) + v0[v4];
            param0[v4 + (v3 * 10)] = v5;

            if (v4 >= (10 / 2)) {
                param0[v4 + (v3 * 10)] |= (1 << 10);
            }
        }
    }

    return;
}

u16 ov104_0223BC24(u16 param0)
{
    if (param0 >= 8) {
        return 8 - 1;
    }

    return param0;
}

void ov104_0223BC2C(BattleFrontier *frontier, u8 param1, int param2)
{
    u16 v0;

    sub_02030824(frontier, sub_0205E630(param1), sub_0205E6A8(sub_0205E630(param1)), param2);
    v0 = sub_02030698(frontier, sub_0205E658(param1), sub_0205E6A8(sub_0205E658(param1)));

    if (v0 + param2 > 9999) {
        sub_020306E4(frontier, sub_0205E658(param1), sub_0205E6A8(sub_0205E658(param1)), 9999);
    } else {
        sub_02030804(frontier, sub_0205E658(param1), sub_0205E6A8(sub_0205E658(param1)), param2);
    }

    return;
}
