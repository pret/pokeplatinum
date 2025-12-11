#include "overlay104/ov104_0223A7F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/battle_frontier_pokemon_data.h"
#include "struct_defs/battle_frontier_trainer_data.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223ADA0.h"
#include "overlay104/struct_ov104_0224028C.h"

#include "communication_information.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "item_use_pokemon.h"
#include "math_util.h"
#include "party.h"
#include "pokemon.h"
#include "trainer_info.h"

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} Unk_ov104_022401FC[] = {
    { 0x0, 0x63, 0x64, 0x77 },
    { 0x50, 0x77, 0x78, 0x8B },
    { 0x64, 0x8B, 0x8C, 0x9F },
    { 0x78, 0x9F, 0xA0, 0xB3 },
    { 0x8C, 0xB3, 0xB4, 0xC7 },
    { 0xA0, 0xC7, 0xC8, 0xDB },
    { 0xB4, 0xDB, 0xDC, 0xEF },
    { 0xC8, 0x12B, 0xC8, 0x12B }
};

static const UnkStruct_ov104_0224028C Unk_ov104_0224028C[] = {
    { 0x64, 0x1, 0x96, 0x0, 0x1 },
    { 0x78, 0x97, 0xFA, 0x4, 0x1 },
    { 0x8C, 0xFB, 0x15E, 0x8, 0x1 },
    { 0xA0, 0x15F, 0x1E6, 0xC, 0x1 },
    { 0xB4, 0x1E7, 0x26E, 0x10, 0x1 },
    { 0xC8, 0x26F, 0x2F6, 0x14, 0x1 },
    { 0xDC, 0x2F7, 0x37E, 0x18, 0x1 },
    { 0x12C, 0x15F, 0x3B6, 0x1F, 0x0 },
    { 0x136, 0x15F, 0x1E6, 0xC, 0x0 },
    { 0x137, 0x15F, 0x1E6, 0x1F, 0x0 }
};

static const UnkStruct_ov104_0224028C Unk_ov104_022402DC[] = {
    { 0x64, 0x15F, 0x1E6, 0x0, 0x1 },
    { 0x78, 0x1E7, 0x26E, 0x4, 0x1 },
    { 0x8C, 0x26F, 0x2F6, 0x8, 0x1 },
    { 0xA0, 0x2F7, 0x37E, 0xC, 0x1 },
    { 0xB4, 0x15F, 0x3B6, 0x10, 0x1 },
    { 0xC8, 0x15F, 0x3B6, 0x14, 0x1 },
    { 0xDC, 0x15F, 0x3B6, 0x18, 0x1 },
    { 0x12C, 0x15F, 0x3B6, 0x1F, 0x0 },
    { 0x136, 0x2F7, 0x3B6, 0xC, 0x0 },
    { 0x137, 0x2F7, 0x3B6, 0x1F, 0x0 }
};

static const UnkStruct_ov104_0224028C Unk_ov104_0224023C[] = {
    { 0x64, 0x15F, 0x1E6, 0x0, 0x1 },
    { 0x78, 0x1E7, 0x26E, 0x4, 0x1 },
    { 0x8C, 0x26F, 0x2F6, 0x8, 0x1 },
    { 0xA0, 0x2F7, 0x37E, 0xC, 0x1 },
    { 0xB4, 0x26F, 0x3B6, 0x10, 0x1 },
    { 0xC8, 0x26F, 0x3B6, 0x14, 0x1 },
    { 0xDC, 0x26F, 0x3B6, 0x18, 0x1 },
    { 0x12C, 0x15F, 0x3B6, 0x1F, 0x0 },
    { 0x136, 0x2F7, 0x3B6, 0xC, 0x0 },
    { 0x137, 0x2F7, 0x3B6, 0x1F, 0x0 }
};

static int ov104_0223A7F4(u8 param0, int param1, int param2);
const UnkStruct_ov104_0224028C *ov104_0223A8A8(int param0, int param1);
const UnkStruct_ov104_0224028C *ov104_0223A8F4(int param0, int param1);
void ov104_0223A860(u8 param0, int param1, u16 param2[], u8 param3);
u8 ov104_0223AA50(u8 param0);
u8 ov104_0223AA74(u8 param0, BOOL param1);
static u32 ov104_0223AD74(u8 param0);
u8 ov104_0223ADA0(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0223ADB0(UnkStruct_ov104_0223ADA0 *param0);
void ov104_0223AE30(UnkStruct_ov104_0223ADA0 *param0);
BOOL ov104_0223AED4(u8 param0);
static u16 ov104_0223AEE4(UnkStruct_ov104_0223ADA0 *param0);
u16 ov104_0223AF34(UnkStruct_ov104_0223ADA0 *param0);
void FieldBattleDTO_CopyPlayerInfoToTrainerData(FieldBattleDTO *param0);

static int ov104_0223A7F4(u8 param0, int param1, int param2)
{
    int v0, v1, v2, v3;

    if (param1 >= NELEMS(Unk_ov104_022401FC)) {
        param1 = NELEMS(Unk_ov104_022401FC) - 1;
    }

    if (param0 == 0) {
        v3 = (param1 * 7) + (param2 + 1);

        if (v3 == 21) {
            return 309;
        } else if (v3 == 49) {
            return 310;
        }
    }

    if ((param2 == 7 - 1) || (param2 == (7 * 2) - 1)) {
        v1 = Unk_ov104_022401FC[param1].unk_06 - Unk_ov104_022401FC[param1].unk_04;
        v2 = Unk_ov104_022401FC[param1].unk_04;
    } else {
        v1 = Unk_ov104_022401FC[param1].unk_02 - Unk_ov104_022401FC[param1].unk_00;
        v2 = Unk_ov104_022401FC[param1].unk_00;
    }

    v0 = v2 + (LCRNG_Next() % v1);
    return v0;
}

void ov104_0223A860(u8 param0, int param1, u16 param2[], u8 param3)
{
    int v0 = 0;
    int v1;

    do {
        param2[v0] = ov104_0223A7F4(param0, param1, v0);

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

const UnkStruct_ov104_0224028C *ov104_0223A8A8(int param0, int param1)
{
    int v0;
    static const UnkStruct_ov104_0224028C *v1;
    int v2;

    if (param1 == 0) {
        v1 = Unk_ov104_0224028C;
        v2 = NELEMS(Unk_ov104_0224028C);
    } else {
        v1 = Unk_ov104_022402DC;
        v2 = NELEMS(Unk_ov104_022402DC);
    }

    for (v0 = 0; v0 < v2; v0++) {
        if (param0 < v1[v0].unk_00) {
            break;
        }
    }

    if (v0 >= v2) {
        GF_ASSERT(0);
        v0 = v2 - 1;
    }

    return &v1[v0];
}

const UnkStruct_ov104_0224028C *ov104_0223A8F4(int param0, int param1)
{
    if (param0 >= 8) {
        param0 = 8 - 1;
    }

    if (param1 == 0) {
        return &Unk_ov104_0224028C[param0];
    } else {
        return &Unk_ov104_0224023C[param0];
    }
}

static const int Unk_ov104_022401E8[] = {
    0x6,
    0xD,
    0x14,
    0x1B,
    0x22
};

BOOL ov104_0223A918(const u16 param0[], const u16 param1[], int param2, int param3, u16 param4[], int param5, const UnkStruct_ov104_0224028C *param6, u16 param7, u8 param8[])
{
    u8 v0;
    int v1, v2, v3;
    BattleFrontierPokemonData v4[6];
    int v5, v6;
    const UnkStruct_ov104_0224028C *v7 = param6;

    GF_ASSERT(param3 <= 6);

    v2 = v7->unk_04 - v7->unk_02;
    v1 = 0;
    v6 = 0;

    if (param7 != 0) {
        v6 = (NELEMS(Unk_ov104_022401E8));

        for (v5 = 0; v5 < (NELEMS(Unk_ov104_022401E8)); v5++) {
            if (param7 <= Unk_ov104_022401E8[v5]) {
                v6 = v5;
                break;
            }
        }
    }

    while (v1 != param3) {
        if ((v1 >= param3 - v6) && (v7->unk_07 == 1)) {
            v2 = (v7 + 1)->unk_04 - (v7 + 1)->unk_02;
            v3 = (v7 + 1)->unk_04 - (LCRNG_Next() % (v2 + 1));
            v0 = (v7 + 1)->unk_06;
        } else {
            v3 = v7->unk_04 - (LCRNG_Next() % (v2 + 1));
            v0 = v7->unk_06;
        }

        BattleTower_GetMonDataFromSetIDAndNarcID(&v4[v1], v3, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

        for (v5 = 0; v5 < v1; v5++) {
            if ((v4[v5].species == v4[v1].species) || (v4[v5].item == v4[v1].item)) {
                break;
            }
        }

        if (v5 != v1) {
            continue;
        }

        for (v5 = 0; v5 < param2; v5++) {
            if ((v4[v1].species == param0[v5]) || (v4[v1].item == param1[v5])) {
                break;
            }
        }

        if (v5 != param2) {
            continue;
        }

        param4[v1] = v3;
        param8[v1] = v0;

        v1++;
    }

    return 0;
}

u8 ov104_0223AA50(u8 param0)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        return 2;
    }

    return 0;
}

u8 ov104_0223AA74(u8 param0, BOOL param1)
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
            return 4;
        }
    }

    return 0;
}

void ov104_0223AAA0(u16 param0, u8 param1, u16 *param2, FrontierPokemonDataDTO *param3, u8 *param4, u32 *param5, u16 param6, u16 *param7, u16 *param8)
{
    const UnkStruct_ov104_0224028C *v0;
    int v1;

    v0 = ov104_0223A8F4(param0, param1);

    if (param7 == NULL) {
        ov104_0223A918(NULL, NULL, 0, 6, param2, 11, v0, param6, param4);
    } else {
        ov104_0223A918(param7, param7, 6, 6, param2, 11, v0, param6, param4);
    }

    ov104_0222E330(param3, param2, param4, NULL, param5, 6, 11, 179);
    return;
}

void ov104_0223AB0C(u8 param0, u16 param1, u8 param2, FrontierPokemonDataDTO *param3, u16 *param4, FrontierPokemonDataDTO *param5, u8 *param6, u32 *param7, int param8)
{
    int v0;
    FrontierPokemonDataDTO v1;
    u16 v3[6 * 2];
    u16 v4[6 * 2];

    const UnkStruct_ov104_0224028C *v2 = ov104_0223A8A8(param1, param2);

    for (v0 = 0; v0 < param8; v0++) {
        v1 = param3[v0];
        v3[v0] = v1.species;
        v4[v0] = v1.item;
    }

    ov104_0223A918(v3, v4, param8, param0, param4, 11, v2, 0, param6);
    ov104_0222E330(param5, param4, param6, NULL, param7, param0, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);

    return;
}

FieldBattleDTO *ov104_0223ABA0(UnkStruct_ov104_0223ADA0 *param0, UnkStruct_ov104_02230BE4 *param1)
{
    int v0;
    u32 v1;
    u8 v2, v3;
    FieldBattleDTO *v4;
    Pokemon *v5;
    FrontierTrainerDataDTO v6;

    v2 = ov104_0223AA50(param0->unk_04);
    v3 = ov104_0223AA74(param0->unk_04, 0);

    Party_HealAllMembers(param0->unk_4D4);
    Party_HealAllMembers(param0->unk_4D8);

    v4 = FieldBattleDTO_New(HEAP_ID_FIELD2, ov104_0223AD74(param0->unk_04));
    FieldBattleDTO_InitFromGameState(v4, NULL, param1->saveData, param1->unk_1C, param1->journalEntry, param1->bagCursor, param1->unk_20);

    v4->background = BACKGROUND_BATTLE_FACTORY;
    v4->terrain = TERRAIN_BATTLE_FACTORY;

    Party_InitWithCapacity(v4->parties[0], v2);
    v5 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < v2; v0++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(param0->unk_4D4, v0), v5);
        FieldBattleDTO_AddPokemonToBattler(v4, v5, 0);
    }

    Heap_Free(v5);
    FieldBattleDTO_CopyPlayerInfoToTrainerData(v4);

    Heap_Free(BattleTower_GetTrainerData(&v6, param0->unk_18[param0->unk_06], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    ov104_0222E284(v4, &v6, v3, 1, 11);
    Party_InitWithCapacity(v4->parties[1], ov104_0223AA74(param0->unk_04, 0));

    for (v0 = 0; v0 < 4; v0++) {
        v4->trainer[v0].header.aiMask = ov104_0223AEE4(param0);
    }

    v5 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < v3; v0++) {
        Pokemon_Copy(Party_GetPokemonBySlotIndex(param0->unk_4D8, v0), v5);
        FieldBattleDTO_AddPokemonToBattler(v4, v5, 1);
    }

    Heap_Free(v5);

    switch (param0->unk_04) {
    case 2:
    case 3:
        FieldBattleDTO_CopyPlayerInfoToTrainerData(v4);

        TrainerInfo_Copy(CommInfo_TrainerInfo(1 - CommSys_CurNetId()), v4->trainerInfo[2]);

        Heap_Free(BattleTower_GetTrainerData(&v6, param0->unk_18[param0->unk_06 + 7], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

        ov104_0222E284(v4, &v6, v3, 3, 11);
        Party_InitWithCapacity(v4->parties[3], ov104_0223AA74(param0->unk_04, 0));

        v5 = Pokemon_New(HEAP_ID_FIELD2);

        for (v0 = 0; v0 < v3; v0++) {
            Pokemon_Copy(Party_GetPokemonBySlotIndex(param0->unk_4D8, (v3 + v0)), v5);
            FieldBattleDTO_AddPokemonToBattler(v4, v5, 3);
        }

        Heap_Free(v5);
        break;
    }

    return v4;
}

static u32 ov104_0223AD74(u8 param0)
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

u8 ov104_0223ADA0(UnkStruct_ov104_0223ADA0 *param0)
{
    if (param0->unk_05 == 0) {
        return 50;
    }

    return 100;
}

void ov104_0223ADB0(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0;
    Pokemon *v1;

    ov104_0222E330(param0->unk_280, param0->unk_254, param0->unk_260, param0->unk_268, NULL, 6, 11, 179);
    Party_Init(param0->unk_4D4);

    v1 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < 6; v0++) {
        ov104_0222DF40(&param0->unk_280[v0], v1, ov104_0223ADA0(param0));
        ov104_0222E1C0(param0->saveData, param0->unk_4D4, v1);
    }

    Heap_Free(v1);

    return;
}

void ov104_0223AE30(UnkStruct_ov104_0223ADA0 *param0)
{
    int v0, v1;
    Pokemon *v2;
    FrontierPokemonDataDTO v3[2];

    v1 = Party_GetCurrentCount(param0->unk_4D4);

    for (v0 = v1; v0 > 2; v0--) {
        Party_RemovePokemonBySlotIndex(param0->unk_4D4, (v0 - 1));
    }

    ov104_0222E330(v3, param0->unk_584, param0->unk_590, param0->unk_598, NULL, 2, 11, 179);

    v2 = Pokemon_New(HEAP_ID_FIELD2);

    for (v0 = 0; v0 < 2; v0++) {
        ov104_0222DF40(&v3[v0], v2, ov104_0223ADA0(param0));
        ov104_0222E1C0(param0->saveData, param0->unk_4D4, v2);
        param0->unk_4E8[v0 + 2] = param0->unk_584[v0];
    }

    Heap_Free(v2);
    return;
}

BOOL ov104_0223AED4(u8 param0)
{
    switch (param0) {
    case 2:
    case 3:
        return 1;
    }

    return 0;
}

static u16 ov104_0223AEE4(UnkStruct_ov104_0223ADA0 *param0)
{
    u16 v0, v1;

    if (param0->unk_04 == 0) {
        if ((param0->unk_18[param0->unk_06] == 309) || (param0->unk_18[param0->unk_06] == 310)) {
            return 0x1 | 0x2 | 0x4;
        }
    }

    v1 = ov104_0223AF34(param0);
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

u16 ov104_0223AF34(UnkStruct_ov104_0223ADA0 *param0)
{
    u16 v0 = param0->unk_0E;

    if (ov104_0223AED4(param0->unk_04) == 1) {
        if (param0->unk_57E > param0->unk_0E) {
            v0 = param0->unk_57E;
        }
    }

    return v0;
}
