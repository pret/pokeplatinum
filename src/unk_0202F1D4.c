#include "unk_0202F1D4.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/species.h"

#include "struct_defs/struct_0202F264.h"
#include "struct_defs/struct_0202F298.h"
#include "struct_defs/struct_0202F298_sub1.h"
#include "struct_defs/struct_0202F41C.h"
#include "struct_defs/struct_0202FAA8.h"
#include "struct_defs/struct_0202FD30.h"
#include "struct_defs/struct_02030A80.h"
#include "struct_defs/struct_02078B40.h"

#include "savedata/save_table.h"

#include "enums.h"
#include "field_battle_data_transfer.h"
#include "game_options.h"
#include "heap.h"
#include "math.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_02006224.h"
#include "unk_02017728.h"
#include "unk_02026150.h"

BattleRecording *Unk_021C07A4 = NULL;

static void sub_0202FCE8(const Party *param0, UnkStruct_0202FD30 *param1);
static void sub_0202FD30(UnkStruct_0202FD30 *param0, Party *param1);
static BOOL sub_0202F75C(SaveData *param0, BattleRecording *param1);
static BOOL sub_0202F794(SaveData *param0, const BattleRecording *param1);
static void sub_0202F860(void *param0, u32 param1, u32 param2);
static void sub_0202F510(SaveData *param0, UnkStruct_0202F41C *param1, const UnkStruct_0202F298 *param2, int param3, int param4);

int BattleRecording_SaveSize(void)
{
    GF_ASSERT(sizeof(BattleRecording) < 0x1000 * 2);

    return sizeof(BattleRecording);
}

void BattleRecording_Init(BattleRecording *param0)
{
    MI_CpuClear32(param0, sizeof(BattleRecording));
    param0->unk_00 = 0xffffffff;
}

void sub_0202F1F8(SaveData *param0, int param1, int *param2)
{
    if (Unk_021C07A4 != NULL) {
        Heap_FreeToHeap(Unk_021C07A4);
        Unk_021C07A4 = NULL;
    }

    Unk_021C07A4 = SaveData_BattleRecording(param0, param1, param2, 0);
    BattleRecording_Init(Unk_021C07A4);
}

void sub_0202F22C(void)
{
    GF_ASSERT(Unk_021C07A4);

    Heap_FreeToHeap(Unk_021C07A4);
    Unk_021C07A4 = NULL;
}

BOOL sub_0202F250(void)
{
    return Unk_021C07A4 != NULL;
}

BattleRecording *sub_0202F264(void)
{
    GF_ASSERT(Unk_021C07A4);
    return Unk_021C07A4;
}

void *sub_0202F27C(void)
{
    u8 *v0;

    GF_ASSERT(Unk_021C07A4);

    v0 = (u8 *)Unk_021C07A4;
    return &v0[sizeof(u32)];
}

BOOL sub_0202F298(SaveData *param0, int param1, int *param2, FieldBattleDTO *param3, int param4)
{
    UnkStruct_0202F298 *v0;
    UnkStruct_0202F41C *v1;

    if (Unk_021C07A4) {
        Heap_FreeToHeap(Unk_021C07A4);
        Unk_021C07A4 = NULL;
    }

    Unk_021C07A4 = SaveData_BattleRecording(param0, param1, param2, param4);

    if (*param2 != 1) {
        *param2 = 3;
        return 1;
    }

    v0 = &Unk_021C07A4->unk_E8;
    v1 = &Unk_021C07A4->unk_84;

    sub_0202F860(v0, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)), v0->unk_1BEC.unk_00 + ((v0->unk_1BEC.unk_00 ^ 0xffff) << 16));

    if (sub_0202F75C(param0, Unk_021C07A4) == 1) {
        *param2 = 0;
        return 1;
    }

    if (sub_0202F794(param0, Unk_021C07A4) == 0) {
        *param2 = 2;
        return 1;
    }

    if (param3) {
        sub_0202FAFC(param3, param0);
    }

    *param2 = 1;
    return 1;
}

BOOL sub_0202F330(SaveData *param0, int param1, int *param2, int param3)
{
    UnkStruct_0202F298 *v0;
    UnkStruct_0202F41C *v1;
    BattleRecording *v2;

    v2 = SaveData_BattleRecording(param0, param1, param2, param3);

    if (*param2 != 1) {
        *param2 = 3;
        Heap_FreeToHeap(v2);
        return 0;
    }

    v0 = &v2->unk_E8;
    v1 = &v2->unk_84;

    sub_0202F860(v0, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)), v0->unk_1BEC.unk_00 + ((v0->unk_1BEC.unk_00 ^ 0xffff) << 16));

    if (sub_0202F75C(param0, v2) == 1) {
        *param2 = 0;
        Heap_FreeToHeap(v2);
        return 0;
    }

    if (sub_0202F794(param0, v2) == 0) {
        *param2 = 2;
        Heap_FreeToHeap(v2);
        return 0;
    }

    *param2 = 1;
    Heap_FreeToHeap(v2);
    return 1;
}

int sub_0202F3AC(SaveData *param0, BattleRecording *param1, int param2, u16 *param3)
{
    int v0;

    switch (*param3) {
    case 0:
        ResetLock(8);
        InitHeapCanary(11);

        v0 = SaveData_SaveBattleRecording(param0, param1, param2);

        if (v0 == 2) {
            SaveData_SaveStateInit(param0, 2);
            (*param3)++;
            return 0;
        }

        ResetUnlock(8);
        return v0;
    case 1:
        v0 = SaveData_SaveStateMain(param0);

        if ((v0 == 2) || (v0 == 3)) {
            (*param3) = 0;
            FreeHeapCanary();
            ResetUnlock(8);
        }

        return v0;
    }

    return 0;
}

int sub_0202F41C(SaveData *param0, int param1, int param2, int param3, u16 *param4, u16 *param5)
{
    UnkStruct_0202F41C *v0;
    UnkStruct_0202F298 *v1;
    int v2;

    switch (*param4) {
    case 0:

        if (Unk_021C07A4 == NULL) {
            return 3;
        }

        v0 = &Unk_021C07A4->unk_84;
        v1 = &Unk_021C07A4->unk_E8;

        sub_0202F510(param0, v0, v1, param1, param2);

        v0->unk_48 = 0xe281;
        v0->unk_60.unk_00 = SaveData_CalculateChecksum(param0, v0, sizeof(UnkStruct_0202F41C) - (sizeof(UnkStruct_0202F298_sub1)) - (sizeof(u64)));
        v1->unk_1BEA = 0xe281;
        v1->unk_1BEC.unk_00 = SaveData_CalculateChecksum(param0, v1, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)));

        sub_0202F858(v1, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)), v1->unk_1BEC.unk_00 + ((v1->unk_1BEC.unk_00 ^ 0xffff) << 16));

        *param5 = 0;
        (*param4)++;
        break;
    case 1:
        v2 = sub_0202F3AC(param0, Unk_021C07A4, param3, param5);
        return v2;
    }

    return 0;
}

void sub_0202F4C0(int param0, int *param1, int *param2)
{
    switch (param0) {
    case (UnkEnum_0202F510_17):
    case (UnkEnum_0202F510_20):
    case (UnkEnum_0202F510_23):
    case (UnkEnum_0202F510_26):
    case (UnkEnum_0202F510_29):
    case (UnkEnum_0202F510_32):
    case (UnkEnum_0202F510_14):
        *param1 = 4;
        *param2 = 6 / 2;
        break;
    default:
        *param1 = 4 / 2;
        *param2 = 6;
        break;
    }
}

static void sub_0202F510(SaveData *param0, UnkStruct_0202F41C *param1, const UnkStruct_0202F298 *param2, int param3, int param4)
{
    int v0, v1, v2, v3, v4, v5, v6;
    const UnkStruct_02078B40 *v7;
    const u8 v8[2][4] = {
        { 0, 2, 3, 1 },
        { 3, 1, 0, 2 },
    };
    const u8 v9[4] = { 0, 2, 1, 3 };

    MI_CpuClear8(param1, sizeof(UnkStruct_0202F41C));
    sub_0202F4C0(param3, &v2, &v3);

    v4 = 0;

    if (param2->unk_00.unk_00 & 0x4) {
        if (param2->unk_00.unk_00 & 0x80) {
            v6 = param2->unk_00.unk_144 * 2;
        } else {
            v6 = param2->unk_00.unk_144;
        }
    } else {
        v6 = 0;
    }

    for (v0 = 0; v0 < v2; v0++) {
        if ((param2->unk_00.unk_00 & 0x8) && ((param2->unk_00.unk_00 & 0x80) == 0)) {
            for (v5 = 0; v5 < v2; v5++) {
                if (param2->unk_00.unk_134[v5] == v8[param2->unk_00.unk_134[v6] & 1][v0]) {
                    break;
                }
            }
        } else if ((param2->unk_00.unk_00 & 0x8) && (param2->unk_00.unk_00 & 0x80)) {
            v5 = v9[v0];
        } else {
            v5 = v0;

            if (v6 & 1) {
                v5 ^= 1;
            }
        }

        for (v1 = 0; v1 < v3; v1++) {
            v7 = &(param2->unk_1150[v5].unk_04[v1]);

            if ((v7->isEgg == 0) && (v7->invalidData == 0)) {
                param1->unk_00[v4] = v7->species;
                param1->unk_18[v4] = v7->form;
            }

            v4++;
        }
    }

    switch (param3) {
    case (UnkEnum_0202F510_01):
    case (UnkEnum_0202F510_08):
        param1->unk_28 = *(sub_02026150(param0, 0));
        break;
    case (UnkEnum_0202F510_02):
    case (UnkEnum_0202F510_09):
        param1->unk_28 = *(sub_02026150(param0, 1));
        break;
    case (UnkEnum_0202F510_03):
    case (UnkEnum_0202F510_10):
        param1->unk_28 = *(sub_02026150(param0, 2));
        break;
    case (UnkEnum_0202F510_04):
    case (UnkEnum_0202F510_11):
        param1->unk_28 = *(sub_02026150(param0, 3));
        break;
    case (UnkEnum_0202F510_05):
    case (UnkEnum_0202F510_12):
        param1->unk_28 = *(sub_02026150(param0, 4));
        break;
    case (UnkEnum_0202F510_06):
    case (UnkEnum_0202F510_13):
        param1->unk_28 = *(sub_02026150(param0, 5));
        break;
    case (UnkEnum_0202F510_00):
    case (UnkEnum_0202F510_07):
    default:
        param1->unk_28 = *(sub_020261A8());
        break;
    }

    param1->unk_24 = param4;
    param1->unk_26 = param3;
}

static BOOL sub_0202F75C(SaveData *param0, BattleRecording *param1)
{
    UnkStruct_0202F298 *v0 = &param1->unk_E8;
    UnkStruct_0202F41C *v1 = &param1->unk_84;

    if (SaveData_MiscSaveBlock_InitFlag(param0) == 0) {
        return 1;
    }

    if ((v0->unk_1BEA != 0xe281) || (v1->unk_48 != 0xe281)) {
        return 1;
    }

    return 0;
}

static BOOL sub_0202F794(SaveData *param0, const BattleRecording *param1)
{
    const UnkStruct_0202F298 *v0 = &param1->unk_E8;
    const UnkStruct_0202F41C *v1 = &param1->unk_84;
    u16 v2;

    if ((v0->unk_1BEA != 0xe281) || (v1->unk_48 != 0xe281)) {
        return 0;
    }

    v2 = SaveData_CalculateChecksum(param0, v1, sizeof(UnkStruct_0202F41C) - (sizeof(UnkStruct_0202F298_sub1)) - (sizeof(u64)));

    if (v2 != v1->unk_60.unk_00) {
        return 0;
    }

    v2 = SaveData_CalculateChecksum(param0, v0, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)));

    if (v2 != v0->unk_1BEC.unk_00) {
        return 0;
    }

    {
        int v3, v4, v5;
        const UnkStruct_02078B40 *v6;

        for (v3 = 0; v3 < 4; v3++) {
            for (v4 = 0; v4 < 6; v4++) {
                v6 = &(v0->unk_1150[v3].unk_04[v4]);

                if (v6->species > MAX_SPECIES) {
                    return 0;
                }

                if (v6->heldItem > 467) {
                    return 0;
                }

                for (v5 = 0; v5 < 4; v5++) {
                    if (v6->unk_1C[v5] > 467) {
                        return 0;
                    }
                }
            }
        }
    }

    return 1;
}

void sub_0202F858(void *param0, u32 param1, u32 param2)
{
    EncodeData(param0, param1, param2);
}

static void sub_0202F860(void *param0, u32 param1, u32 param2)
{
    DecodeData(param0, param1, param2);
}

void sub_0202F868(int param0, int param1, u8 param2)
{
    if (Unk_021C07A4 == NULL) {
        return;
    }

    Unk_021C07A4->unk_E8.unk_150.unk_00[param0][param1] = param2;
}

u8 sub_0202F884(int param0, int param1)
{
    GF_ASSERT(Unk_021C07A4 != NULL);
    return Unk_021C07A4->unk_E8.unk_150.unk_00[param0][param1];
}

void sub_0202F8AC(FieldBattleDTO *param0)
{
    int v0;
    UnkStruct_0202F298 *v1;
    UnkStruct_0202FAA8 *v2;

    if (Unk_021C07A4 == NULL) {
        return;
    }

    v1 = &Unk_021C07A4->unk_E8;
    v2 = &v1->unk_00;

    v2->unk_00 = param0->battleType;
    v2->unk_04 = param0->resultMask;
    v2->unk_E8 = param0->background;
    v2->unk_EC = param0->terrain;
    v2->unk_F0 = param0->mapLabelTextID;
    v2->unk_F4 = param0->mapHeaderID;
    v2->unk_F8 = param0->timeOfDay;
    v2->unk_FC = param0->mapEvolutionMethod;
    v2->unk_100 = param0->visitedContestHall;
    v2->unk_104 = param0->metBebe;
    v2->unk_108 = param0->caughtBattlerIdx;
    v2->unk_10C = param0->fieldWeather;
    v2->unk_110 = param0->leveledUpMonsMask;
    v2->unk_124 = param0->battleStatusMask;
    v2->unk_128 = param0->countSafariBalls;
    v2->unk_12C = param0->rulesetMask;
    v2->unk_130 = param0->seed;
    v2->unk_144 = param0->networkID;
    v2->unk_146 = param0->dummy18B;
    v2->unk_148 = param0->totalTurnsElapsed;

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_08[v0] = param0->trainerIDs[v0];
        v2->unk_18[v0] = param0->trainer[v0];

        if (param0->systemVersion[v0] == 0) {
            v2->unk_114[v0] = 0x140;
        } else {
            v2->unk_114[v0] = param0->systemVersion[v0];
        }

        v2->unk_134[v0] = param0->unk_178[v0];
        v2->unk_14C[v0] = param0->unk_194[v0];
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_0202FCE8(param0->parties[v0], &v1->unk_1150[v0]);
        TrainerInfo_Copy(param0->trainerInfo[v0], &v1->unk_1B68[v0]);

        v2->unk_14C[v0] = Sound_Chatter(param0->chatotCries[v0]);
    }

    Options_Copy(param0->options, &v1->unk_1BE8);
}

void sub_0202FAA8(int param0, u32 param1)
{
    UnkStruct_0202F298 *v0;
    UnkStruct_0202FAA8 *v1;

    if (Unk_021C07A4 == NULL) {
        return;
    }

    v0 = &Unk_021C07A4->unk_E8;
    v1 = &v0->unk_00;

    v1->unk_114[param0] = param1;
}

BOOL sub_0202FAC0(void)
{
    int v0;
    UnkStruct_0202F298 *v1;
    UnkStruct_0202FAA8 *v2;

    if (Unk_021C07A4 == NULL) {
        return 1;
    }

    v1 = &Unk_021C07A4->unk_E8;
    v2 = &v1->unk_00;

    for (v0 = 0; v0 < 4; v0++) {
        if (v2->unk_114[v0] > 0x140) {
            return 0;
        }
    }

    return 1;
}

void sub_0202FAFC(FieldBattleDTO *param0, SaveData *saveData)
{
    int v0;
    UnkStruct_0202F298 *v1 = &Unk_021C07A4->unk_E8;

    param0->battleType = v1->unk_00.unk_00;
    param0->background = v1->unk_00.unk_E8;
    param0->terrain = v1->unk_00.unk_EC;
    param0->mapLabelTextID = v1->unk_00.unk_F0;
    param0->mapHeaderID = v1->unk_00.unk_F4;
    param0->timeOfDay = v1->unk_00.unk_F8;
    param0->mapEvolutionMethod = v1->unk_00.unk_FC;
    param0->visitedContestHall = v1->unk_00.unk_100;
    param0->metBebe = v1->unk_00.unk_104;
    param0->caughtBattlerIdx = v1->unk_00.unk_108;
    param0->fieldWeather = v1->unk_00.unk_10C;
    param0->battleStatusMask = v1->unk_00.unk_124 | BATTLE_STATUS_RECORDING;
    param0->countSafariBalls = v1->unk_00.unk_128;
    param0->rulesetMask = v1->unk_00.unk_12C;
    param0->seed = v1->unk_00.unk_130;
    param0->networkID = v1->unk_00.unk_144;
    param0->resultMask = BATTLE_IN_PROGRESS;
    param0->leveledUpMonsMask = 0;

    Pokedex_Copy(SaveData_GetPokedex(saveData), param0->pokedex);

    for (v0 = 0; v0 < 4; v0++) {
        param0->trainerIDs[v0] = v1->unk_00.unk_08[v0];
        param0->trainer[v0] = v1->unk_00.unk_18[v0];
        param0->systemVersion[v0] = v1->unk_00.unk_114[v0];
        param0->unk_178[v0] = v1->unk_00.unk_134[v0];

        sub_0202FD30(&v1->unk_1150[v0], param0->parties[v0]);
        TrainerInfo_Copy(&v1->unk_1B68[v0], param0->trainerInfo[v0]);

        param0->unk_194[v0] = v1->unk_00.unk_14C[v0];
    }

    Options_Copy(SaveData_Options(saveData), param0->options);
    param0->options->frame = v1->unk_1BE8.frame;

    if (param0->options->frame >= 20) {
        param0->options->frame = 0;
    }
}

static void sub_0202FCE8(const Party *party, UnkStruct_0202FD30 *param1)
{
    int v0;
    Pokemon *v1;

    MI_CpuClear8(param1, sizeof(UnkStruct_0202FD30));

    param1->unk_00 = Party_GetCapacity(party);
    param1->unk_02 = Party_GetCurrentCount(party);

    for (v0 = 0; v0 < param1->unk_02; v0++) {
        v1 = Party_GetPokemonBySlotIndex(party, v0);
        sub_02078B40(v1, &param1->unk_04[v0]);
    }
}

static void sub_0202FD30(UnkStruct_0202FD30 *param0, Party *party)
{
    int v0;
    Pokemon *v1;
    u8 v2 = 0;

    v1 = Pokemon_New(11);

    Party_InitWithCapacity(party, param0->unk_00);

    for (v0 = 0; v0 < param0->unk_02; v0++) {
        sub_02078E0C(&param0->unk_04[v0], v1);
        Pokemon_SetValue(v1, MON_DATA_MAIL_ID, &v2);
        Party_AddPokemon(party, v1);
    }

    Heap_FreeToHeap(v1);
}

UnkStruct_0202F41C *sub_0202FD88(int param0)
{
    UnkStruct_0202F41C *v0;

    GF_ASSERT(Unk_021C07A4 != NULL);

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0202F41C));
    MI_CpuCopy32(&Unk_021C07A4->unk_84, v0, sizeof(UnkStruct_0202F41C));

    return v0;
}

UnkStruct_02030A80 *sub_0202FDB8(int param0)
{
    UnkStruct_02030A80 *v0;

    GF_ASSERT(Unk_021C07A4 != NULL);

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02030A80));
    MI_CpuCopy32(&Unk_021C07A4->unk_04, v0, sizeof(UnkStruct_02030A80));

    return v0;
}

UnkStruct_02030A80 *sub_0202FDE8(void)
{
    GF_ASSERT(Unk_021C07A4 != NULL);
    return &Unk_021C07A4->unk_04;
}

UnkStruct_0202F41C *sub_0202FE04(void)
{
    GF_ASSERT(Unk_021C07A4 != NULL);
    return &Unk_021C07A4->unk_84;
}

void sub_0202FE20(UnkStruct_02030A80 *param0, UnkStruct_0202F41C *param1, UnkStruct_0202F298 *param2, FieldBattleDTO *param3, SaveData *param4)
{
    GF_ASSERT(Unk_021C07A4 != NULL);

    MI_CpuCopy8(param1, &Unk_021C07A4->unk_84, sizeof(UnkStruct_0202F41C));
    MI_CpuCopy8(param2, &Unk_021C07A4->unk_E8, sizeof(UnkStruct_0202F298));
    MI_CpuCopy8(param0, &Unk_021C07A4->unk_04, sizeof(UnkStruct_02030A80));

    sub_0202F860(&Unk_021C07A4->unk_E8, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)), Unk_021C07A4->unk_E8.unk_1BEC.unk_00 + ((Unk_021C07A4->unk_E8.unk_1BEC.unk_00 ^ 0xffff) << 16));

    if (param3 != NULL) {
        sub_0202FAFC(param3, param4);
    }
}

u64 sub_0202FE98(UnkStruct_0202F41C *param0, int param1, int param2)
{
    GF_ASSERT((sizeof(u64)) <= sizeof(u64));

    switch (param1) {
    case 0:
        GF_ASSERT(param2 < 12);

        if (param0->unk_00[param2] > NATIONAL_DEX_COUNT) {
            return 0;
        }

        return param0->unk_00[param2];
    case 1:
        GF_ASSERT(param2 < 12);
        return param0->unk_18[param2];
    case 2:
        if (param0->unk_24 > 9999) {
            return 9999;
        }

        return param0->unk_24;
    case 3:
        if (param0->unk_26 >= (UnkEnum_0202F510_32 + 1)) {
            return UnkEnum_0202F510_00;
        }

        return param0->unk_26;
    case 4:
        return param0->unk_58;
    case 5:
        return param0->unk_27;
    }

    GF_ASSERT(0);
    return 0;
}

UnkStruct_0202F41C *sub_0202FF2C(int param0)
{
    UnkStruct_0202F41C *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0202F41C));
    MI_CpuClear8(v0, sizeof(UnkStruct_0202F41C));

    return v0;
}

void sub_0202FF44(UnkStruct_0202F41C *param0)
{
    Heap_FreeToHeap(param0);
}
