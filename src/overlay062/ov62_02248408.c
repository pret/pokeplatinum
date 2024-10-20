#include "overlay062/ov62_02248408.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202F264.h"
#include "struct_defs/struct_0202F298.h"
#include "struct_defs/struct_0202F298_sub1.h"
#include "struct_defs/struct_0202F41C.h"

#include "overlay006/battle_params.h"
#include "savedata/save_table.h"

#include "font.h"
#include "heap.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"
#include "unk_02017728.h"
#include "unk_0202F1D4.h"

static void ov62_0224856C(Strbuf *param0, int param1);

extern BattleRecording *Unk_021C07A4;

void ov62_02248408(BattleRecording *param0, BattleParams *param1, int param2)
{
    UnkStruct_0202F298 *v0 = &param0->unk_E8;
    UnkStruct_0202F41C *v1 = &param0->unk_84;
    int v2, v3, v4, v5;
    Strbuf *v6, *v7;
    u16 *v8;
    int v9 = 64;
    int v10, v11, v12;
    Pokemon *v13;

    sub_0202F4C0(v1->unk_26, &v2, &v3);
    v6 = Strbuf_Init(v9, param2);
    v7 = Strbuf_Init(v9, param2);
    v8 = Heap_AllocFromHeap(param2, sizeof(u16) * v9);

    for (v4 = 0; v4 < v2; v4++) {
        for (v10 = 8 - 1; v10 > -1; v10--) {
            if (param1->trainerData[v4].name[v10] == 0xffff) {
                break;
            }
        }

        if (v10 == -1) {
            ov62_0224856C(v7, param2);
            Strbuf_ToChars(v7, param1->trainerData[v4].name, 8);
            continue;
        }

        Strbuf_Clear(v6);
        Strbuf_CopyChars(v6, param1->trainerData[v4].name);

        if (Font_AreAllCharsValid(FONT_SYSTEM, v6, v7) == 0) {
            ov62_0224856C(v7, param2);
            Strbuf_ToChars(v7, param1->trainerData[v4].name, 8);
            continue;
        }
    }

    for (v4 = 0; v4 < v2; v4++) {
        v12 = Party_GetCurrentCount(param1->parties[v4]);

        for (v11 = 0; v11 < v12; v11++) {
            v13 = Party_GetPokemonBySlotIndex(param1->parties[v4], v11);

            if (Pokemon_GetValue(v13, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                break;
            }

            MI_CpuClear16(v8, sizeof(u16) * v9);

            Pokemon_GetValue(v13, MON_DATA_NICKNAME, v8);
            Strbuf_Clear(v6);
            Strbuf_CopyChars(v6, v8);

            if (Font_AreAllCharsValid(FONT_SYSTEM, v6, v7) == 0) {
                Pokemon_SetValue(v13, 179, NULL);
                continue;
            }
        }
    }

    Strbuf_Free(v6);
    Strbuf_Free(v7);
    Heap_FreeToHeap(v8);
}

static void ov62_0224856C(Strbuf *param0, int param1)
{
    MessageLoader *v0;

    Strbuf_Clear(param0);

    v0 = MessageLoader_Init(1, 26, 10, param1);

    MessageLoader_GetStrbuf(v0, 332, param0);
    MessageLoader_Free(v0);
}

int ov62_02248598(SaveData *param0, int param1, u8 param2, u16 *param3, u16 *param4)
{
    int v0;

    switch (*param3) {
    case 0:
        GF_ASSERT(Unk_021C07A4);

        if (param2 == 1) {
            Unk_021C07A4->unk_84.unk_27 = param2;

            Unk_021C07A4->unk_84.unk_48 = 0xe281;
            Unk_021C07A4->unk_84.unk_60.unk_00 = SaveData_CalculateChecksum(param0, &Unk_021C07A4->unk_84, sizeof(UnkStruct_0202F41C) - (sizeof(UnkStruct_0202F298_sub1)) - (sizeof(u64)));
        }

        sub_0202F858(&Unk_021C07A4->unk_E8, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)), Unk_021C07A4->unk_E8.unk_1BEC.unk_00 + ((Unk_021C07A4->unk_E8.unk_1BEC.unk_00 ^ 0xffff) << 16));
        (*param3)++;
        break;
    case 1:
        v0 = sub_0202F3AC(param0, Unk_021C07A4, param1, param4);
        return v0;
    }

    return 0;
}

void ov62_02248624(SaveData *param0)
{
    GF_ASSERT(Unk_021C07A4);
    sub_0202F858(&Unk_021C07A4->unk_E8, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)), Unk_021C07A4->unk_E8.unk_1BEC.unk_00 + ((Unk_021C07A4->unk_E8.unk_1BEC.unk_00 ^ 0xffff) << 16));
}

int ov62_02248658(SaveData *param0, u64 param1, u16 *param2, u16 *param3)
{
    int v0;

    switch (*param2) {
    case 0:
        GF_ASSERT(Unk_021C07A4);

        Unk_021C07A4->unk_84.unk_58 = param1;
        (*param2)++;
        break;
    case 1:
        v0 = sub_0202F3AC(param0, Unk_021C07A4, 0, param3);
        return v0;
    }

    return 0;
}

int ov62_022486A4(SaveData *param0, int param1)
{
    int v0;

    GF_ASSERT(Unk_021C07A4 != NULL);

    Unk_021C07A4->unk_84.unk_27 = 1;
    Unk_021C07A4->unk_84.unk_48 = 0xe281;
    Unk_021C07A4->unk_84.unk_60.unk_00 = SaveData_CalculateChecksum(param0, &Unk_021C07A4->unk_84, sizeof(UnkStruct_0202F41C) - (sizeof(UnkStruct_0202F298_sub1)) - (sizeof(u64)));

    sub_0202F858(&Unk_021C07A4->unk_E8, sizeof(UnkStruct_0202F298) - (sizeof(UnkStruct_0202F298_sub1)), Unk_021C07A4->unk_E8.unk_1BEC.unk_00 + ((Unk_021C07A4->unk_E8.unk_1BEC.unk_00 ^ 0xffff) << 16));
    ResetLock(8);

    v0 = SaveData_SaveBattleRecording(param0, Unk_021C07A4, param1);

    if (v0 == 2) {
        v0 = SaveData_Save(param0);
    }

    ResetUnlock(8);
    return v0;
}
