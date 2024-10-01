#include "unk_02049D08.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_0202D060_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_0202D764_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_02049FA8.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_02098C44.h"

#include "field/field_system.h"
#include "overlay104/struct_ov104_0223A348_sub2.h"
#include "savedata/save_table.h"

#include "field_overworld_state.h"
#include "game_records.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0201D15C.h"
#include "unk_0202D05C.h"
#include "unk_0203061C.h"
#include "unk_0204AEE8.h"
#include "unk_0205DFC4.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206B9D8.h"
#include "unk_0206CCB0.h"
#include "vars_flags.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_02049D38;

static u16 sub_0204AC54(SaveData *param0, u8 param1, UnkStruct_0204AFC4 *param2);
static u16 sub_0204ACC8(UnkStruct_0204AFC4 *param0);
static void sub_0204AE20(UnkStruct_0204AFC4 *param0, SaveData *param1, int param2);

u16 sub_02049D08(u16 param0)
{
    switch (param0) {
    case 0:
    case 4:
    case 5:
        return 3;
    case 1:
        return 4;
    case 2:
    case 3:
    case 6:
        return 2;
    }

    return 0;
}

static BOOL sub_02049D38(UnkStruct_02049D38 *param0, u16 param1, u16 param2, int param3)
{
    int v0;

    for (v0 = 0; v0 < param3; v0++) {
        if (param0[v0].unk_00 == param1) {
            if (param2 == 0) {
                continue;
            }

            if (param0[v0].unk_02 == param2) {
                return 1;
            }
        }
    }

    return 0;
}

static BOOL sub_02049D64(UnkStruct_02049D38 *param0, int param1)
{
    int v0, v1;

    for (v0 = 0; v0 < param1 - 1; v0++) {
        for (v1 = v0 + 1; v1 < param1; v1++) {
            if (param0[v0].unk_00 == param0[v1].unk_00) {
                return 0;
            }

            if (param0[v0].unk_02 == 0) {
                continue;
            }

            if (param0[v0].unk_02 == param0[v1].unk_02) {
                return 0;
            }
        }
    }

    return 1;
}

static BOOL sub_02049DB4(UnkStruct_02049D38 *param0, int param1, int param2, int param3)
{
    int v0, v1, v2, v3;
    UnkStruct_02049D38 v4[4];

    MI_CpuClear8(v4, sizeof(UnkStruct_02049D38) * 4);

    for (v0 = 0; v0 < param3; v0++) {
        v4[0] = param0[v0];

        for (v1 = v0 + 1; v1 < param2; v1++) {
            v4[1] = param0[v1];

            if (param1 == 2) {
                if (sub_02049D64(v4, param1)) {
                    return 1;
                }

                continue;
            }

            for (v2 = v1 + 1; v2 < param2; v2++) {
                v4[2] = param0[v2];

                if (param1 == 3) {
                    if (sub_02049D64(v4, param1)) {
                        return 1;
                    }

                    continue;
                }

                for (v3 = v2 + 1; v3 < param2; v3++) {
                    v4[3] = param0[v3];

                    if (sub_02049D64(v4, param1)) {
                        return 1;
                    }
                }
            }
        }
    }

    return 0;
}

BOOL sub_02049EC4(u16 param0, SaveData *param1, u8 param2)
{
    u8 v0, v1, v2, v3;
    u16 v4, v5;
    Party *v6;
    Pokemon *v7;
    UnkStruct_02049D38 v8[6];

    v6 = Party_GetFromSavedata(param1);
    v3 = Party_GetCurrentCount(v6);

    if (v3 < param0) {
        return 0;
    }

    for (v0 = 0, v2 = 0; v0 < v3; v0++) {
        v7 = Party_GetPokemonBySlotIndex(v6, v0);
        v4 = Pokemon_GetValue(v7, MON_DATA_SPECIES, NULL);
        v5 = Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL);

        if (param2 == 0) {
            v5 = 0;
        }

        if (Pokemon_GetValue(v7, MON_DATA_IS_EGG, NULL) != 0) {
            continue;
        }

        if (sub_02078804(v4) == 1) {
            continue;
        }

        if (param2 == 1) {
            if (sub_02049D38(v8, v4, v5, v2) == 1) {
                continue;
            }
        }

        v8[v2].unk_00 = v4;
        v8[v2].unk_02 = v5;
        v2++;
    }

    if (v2 < param0) {
        return 0;
    }

    return sub_02049DB4(v8, param0, v2, (v2 - param0) + 1);
}

void sub_02049F8C(void)
{
    OS_ResetSystem(0);
}

void sub_02049F98(UnkStruct_0202D060 *param0)
{
    sub_0202D060(param0);
}

BOOL sub_02049FA0(UnkStruct_0202D060 *param0)
{
    return sub_0202D214(param0);
}

void sub_02049FA8(FieldSystem *fieldSystem)
{
    Location *v0 = FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    Location_Set(v0, fieldSystem->location->mapId, -1, Player_GetXPos(fieldSystem->playerAvatar), Player_GetZPos(fieldSystem->playerAvatar), 0);
    sub_0206AD9C(SaveData_GetVarsFlags(fieldSystem->saveData));

    return;
}

void sub_02049FE8(FieldSystem *fieldSystem)
{
    CommClub_ResetAvailable(SaveData_GetVarsFlags(fieldSystem->saveData));
}

u16 sub_02049FF8(SaveData *param0, u16 param1)
{
    u16 v0;

    if (param1 == 5) {
        return 0;
    }

    if (param1 == 6) {
        v0 = sub_02030698(sub_0203068C(param0), 113, sub_0205E6A8(113));
        return v0;
    }

    v0 = sub_02030698(sub_0203068C(param0), 1 + param1 * 2, 0xff);

    return v0;
}

void sub_0204A030(SaveData *param0, u8 param1)
{
    UnkStruct_0202D750 *v0 = sub_0202D750(param0);

    if (param1 == 0) {
        sub_0202D414(v0, 5, 2);
    } else {
        sub_0202D414(v0, 5, 1);
    }
}

u16 sub_0204A050(SaveData *param0)
{
    UnkStruct_0202D750 *v0 = sub_0202D750(param0);
    return (u16)sub_0202D414(v0, 5, 0);
}

u16 sub_0204A064(SaveData *param0)
{
    u8 v0;
    int v1;
    UnkStruct_0202D060 *v2;
    UnkStruct_0202D750 *v3;

    v2 = sub_0202D740(param0);
    v3 = sub_0202D750(param0);
    v0 = (u8)sub_0202D0BC(v2, 0, NULL);

    if (v0 == 5) {
        return v0;
    }

    if (v0 == 6) {
        sub_020306E4(sub_0203068C(param0), 100, sub_0205E6A8(100), 0);
    } else {
        sub_0202D414(v3, 8 + v0, 2);
    }

    sub_0202D3B4(v3, v0, 2);
    sub_020306E4(sub_0203068C(param0), sub_0205E750(v0), sub_0205E6A8(sub_0205E750(v0)), 0);

    if ((v0 != 4) && (v0 != 6)) {
        sub_0206C02C(param0);
    }

    return v0;
}

u16 sub_0204A100(SaveData *param0)
{
    UnkStruct_0202D764 *v0;

    v0 = sub_0202D764(param0);
    return (u16)sub_0202D5E8(v0);
}

void sub_0204A110(UnkStruct_0204AFC4 **param0)
{
    GF_ASSERT(*param0 == NULL);
    *param0 = NULL;
}

UnkStruct_0204AFC4 *sub_0204A124(SaveData *param0, u16 param1, u16 param2)
{
    u8 v0;
    u16 v1, v2;
    UnkStruct_0204AFC4 *v3;
    UnkStruct_0203068C *v4;
    GameRecords *v5;

    v3 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0204AFC4));
    MI_CpuClear8(v3, sizeof(UnkStruct_0204AFC4));

    v3->unk_04 = 11;
    v3->unk_70 = sub_0202D740(param0);
    v3->unk_74 = sub_0202D750(param0);
    v3->unk_00 = 0x12345678;

    sub_0202D21C(v3->unk_70, 0);

    if (param1 == 0) {
        v3->unk_0F = param2;
        v3->unk_0E = (u8)sub_02049D08(v3->unk_0F);
        v3->unk_0C = 1;
        v3->unk_0D = 0;

        for (v1 = 0; v1 < 4; v1++) {
            v3->unk_2A[v1] = 0xFF;
        }

        for (v1 = 0; v1 < 14; v1++) {
            v3->unk_3E[v1] = 0xFFFF;
        }

        sub_0202D060(v3->unk_70);
        v0 = v3->unk_0F;
        sub_0202D140(v3->unk_70, 0, &v0);
    } else {
        v3->unk_0F = (u8)sub_0202D0BC(v3->unk_70, 0, NULL);
        v3->unk_0C = (u8)sub_0202D0BC(v3->unk_70, 1, NULL);
        v3->unk_0D = v3->unk_0C - 1;
        v3->unk_0E = (u8)sub_02049D08(v3->unk_0F);

        sub_0202D0BC(v3->unk_70, 5, v3->unk_2A);
        sub_0202D0BC(v3->unk_70, 8, v3->unk_3E);

        v3->unk_08 = sub_0202D0BC(v3->unk_70, 10, NULL);

        if (v3->unk_0F == 2) {
            v3->unk_10_5 = (u8)sub_0202D0BC(v3->unk_70, 9, NULL);

            sub_0202D0BC(v3->unk_70, 6, &(v3->unk_7E8[v3->unk_10_5]));
            sub_0204B404(v3, &v3->unk_298[v3->unk_10_5], 300 + v3->unk_10_5, sub_0202D0BC(v3->unk_70, 7, NULL), &(v3->unk_7E8[v3->unk_10_5]), v3->unk_04);
        }
    }

    v3->unk_11 = TrainerInfo_Gender(SaveData_GetTrainerInfo(param0));

    if (v3->unk_0F != 5) {
        v4 = sub_0203068C(param0);
        v5 = SaveData_GetGameRecordsPtr(param0);

        if (v3->unk_0F == 6) {
            v2 = sub_0206B6FC(SaveData_GetVarsFlags(param0));
        } else {
            v2 = sub_0202D414(v3->unk_74, 8 + v3->unk_0F, 0);
        }

        if (v2) {
            if (v3->unk_0F == 6) {
                v3->unk_1A = sub_02030698(
                    v4, 113, sub_0205E6A8(113));
            } else {
                v3->unk_1A = sub_02030698(
                    v4, 1 + v3->unk_0F * 2, 0xff);
            }

            v3->unk_1C = sub_0202D3B4(v3->unk_74, v3->unk_0F, 0);
        }

        v3->unk_20 = GameRecords_GetRecordValue(v5, RECORD_UNK_029);
    }

    if (v3->unk_0F == 6) {
        v3->unk_1C = sub_0202D3FC(v3->unk_74, 6, (v3->unk_1A / 7));
    }

    return v3;
}

void sub_0204A32C(UnkStruct_0204AFC4 *param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    GF_ASSERT(param0->unk_00 == 0x12345678);
    v0 = param0->unk_04;

    MI_CpuClear8(param0, sizeof(UnkStruct_0204AFC4));
    Heap_FreeToHeap(param0);

    param0 = NULL;
}

void sub_0204A358(UnkStruct_0204AFC4 *param0, TaskManager *param1, void **param2)
{
    sub_0206BBFC(param1, param2, 17, 0, param0->unk_0E, param0->unk_0E, 100, 0);
}

BOOL sub_0204A378(UnkStruct_0204AFC4 *param0, void **param1, SaveData *param2)
{
    u16 v0 = 0;
    PartyManagementData *v1 = *param1;
    Party *v2;
    Pokemon *v3;

    if ((v1->unk_23 != 0) || (v1->unk_22 == 7)) {
        Heap_FreeToHeap(*param1);
        *param1 = NULL;
        return 0;
    }

    v2 = Party_GetFromSavedata(param2);

    for (v0 = 0; v0 < param0->unk_0E; v0++) {
        param0->unk_2A[v0] = v1->unk_2C[v0] - 1;
        v3 = Party_GetPokemonBySlotIndex(v2, param0->unk_2A[v0]);
        param0->unk_2E[v0] = Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL);
        param0->unk_36[v0] = Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL);
    }

    Heap_FreeToHeap(*param1);
    *param1 = NULL;
    return 1;
}

int sub_0204A410(UnkStruct_0204AFC4 *param0, SaveData *param1)
{
    u16 v0 = 0, v1 = 0;
    u16 v2[4], v3[4];
    Party *v4;
    Pokemon *v5;

    v4 = Party_GetFromSavedata(param1);

    for (v0 = 0; v0 < param0->unk_0E; v0++) {
        v5 = Party_GetPokemonBySlotIndex(v4, param0->unk_2A[v0]);
        v2[v0] = Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL);
        v3[v0] = Pokemon_GetValue(v5, MON_DATA_HELD_ITEM, NULL);

        if (v0 == 0) {
            continue;
        }

        for (v1 = 0; v1 < v0; v1++) {
            if (v2[v0] == v2[v1]) {
                return 1;
            }

            if ((v3[v0] != 0) && (v3[v0] == v3[v1])) {
                return 2;
            }
        }
    }

    return 0;
}

static BOOL sub_0204A4A0(u16 *param0, u16 param1, u16 param2)
{
    u16 v0;

    for (v0 = 0; v0 < param2; v0++) {
        if (param0[v0] == param1) {
            return 1;
        }
    }

    return 0;
}

void sub_0204A4C8(UnkStruct_0204AFC4 *param0, SaveData *param1)
{
    int v0;
    u16 v1, v2;

    if ((param0->unk_0F == 2) || (param0->unk_0F == 6) || (param0->unk_0F == 3)) {
        if (((param0->unk_0F == 3) && (param0->unk_14 > param0->unk_1C)) || ((param0->unk_0F == 6) && (param0->unk_14 > param0->unk_1C))) {
            v2 = param0->unk_14;
        } else {
            v2 = param0->unk_1C;
        }

        for (v0 = 0; v0 < 14; v0++) {
            do {
                v1 = sub_0204B0F0(param0, v2, v0 / 2, param0->unk_0F);
            } while (sub_0204A4A0(param0->unk_3E, v1, v0));

            param0->unk_3E[v0] = v1;
        }
    } else {
        for (v0 = 0; v0 < (14 / 2); v0++) {
            do {
                v1 = sub_0204B0F0(param0, param0->unk_1C, v0, param0->unk_0F);
            } while (sub_0204A4A0(param0->unk_3E, v1, v0));

            param0->unk_3E[v0] = v1;
        }
    }
}

u16 sub_0204A578(UnkStruct_0204AFC4 *param0)
{
    return param0->unk_0C;
}

BOOL sub_0204A57C(UnkStruct_0204AFC4 *param0)
{
    if (param0->unk_10_0) {
        return 1;
    }

    if (param0->unk_0C > 7) {
        param0->unk_10_0 = 1;
        return 1;
    }

    return 0;
}

static void sub_0204A5A0(UnkStruct_0204AFC4 *param0, SaveData *param1, u16 param2)
{
    Party *v0;

    if ((param0->unk_0F != 0) && (param0->unk_0F != 1)) {
        return;
    }

    v0 = Party_GetFromSavedata(param1);

    if (param0->unk_0F == 0) {
        sub_0206DBB0(param1, param2, Party_GetPokemonBySlotIndex(v0, param0->unk_2A[0]), 1);
    } else {
        sub_0206DBB0(param1, param2, Party_GetPokemonBySlotIndex(v0, param0->unk_2A[0]), 0);
    }
}

static void sub_0204A5EC(UnkStruct_0204AFC4 *param0, SaveData *param1, u8 param2, u16 param3)
{
    u8 v0;

    switch (param0->unk_0F) {
    case 0:
        sub_0204AE20(param0, param1, 0);
    case 1:
        if (param3 >= 7) {
            sub_0206CFE4(SaveData_TVBroadcast(param1), param2, param3);
        }
        break;
    case 4:
        sub_0204AE20(param0, param1, 1);
        sub_0202D1E8(param0->unk_70, param0->unk_28, param0->unk_24, param0->unk_26);

        v0 = param0->unk_0F;
        sub_0202D140(param0->unk_70, 0, &v0);

        v0 = param0->unk_0C;
        sub_0202D140(param0->unk_70, 1, &v0);
        sub_0202D334(param0->unk_74, param0->unk_70);
        break;
    default:
        break;
    }
}

void sub_0204A660(UnkStruct_0204AFC4 *param0, SaveData *param1)
{
    u32 v0 = 0;
    int v1;
    u16 v2, v3, v4;
    GameRecords *v5 = SaveData_GetGameRecordsPtr(param1);
    UnkStruct_0203068C *v6 = sub_0203068C(param1);

    if (param0->unk_0F == 5) {
        return;
    }

    if (param0->unk_0F == 6) {
        v1 = 112;
    } else {
        v1 = param0->unk_0F * 2 + 0;
    }

    v2 = sub_02030698(v6, v1, sub_0205E6A8(v1));
    v3 = sub_02030848(v6, v1, sub_0205E6A8(v1), param0->unk_1A + param0->unk_0D);

    if (v3 > 1) {
        if ((v2 < v3) || ((v2 == v3) && (v3 % 7 == 0))) {
            sub_0204A5A0(param0, param1, v3);
        }
    }

    if (param0->unk_0F == 6) {
        v4 = sub_02030698(sub_0203068C(param1), 100, sub_0205E6A8(100));
    } else {
        v4 = sub_0202D414(param0->unk_74, 8 + param0->unk_0F, 0);
    }

    v0 = sub_020306E4(v6, v1 + 1, sub_0205E6A8(v1 + 1), (param0->unk_1A + param0->unk_0D));

    if (param0->unk_0F == 6) {
        sub_020306E4(sub_0203068C(param1), 100, sub_0205E6A8(100), 0);
    } else {
        sub_0202D414(param0->unk_74, 8 + param0->unk_0F, 2);
    }

    GameRecords_AddToRecordValue(v5, RECORD_UNK_029, param0->unk_0D);
    sub_0202D3B4(param0->unk_74, param0->unk_0F, 2);

    if (param0->unk_0F != 6) {
        GameRecords_AddToRecordValue(SaveData_GetGameRecordsPtr(param1), RECORD_UNK_015, 1);
    }

    sub_0204ACC8(param0);

    v0 += 1;

    if (v0 > 9999) {
        v0 = 9999;
    }

    sub_0204A5EC(param0, param1, 0, v0);
}

void sub_0204A7A4(UnkStruct_0204AFC4 *param0, SaveData *param1, Journal *param2)
{
    u32 v0 = 0;
    int v1;
    void *v2;
    u16 v3, v4, v5;
    GameRecords *v6;
    UnkStruct_0203068C *v7;

    if (param0->unk_0F == 5) {
        return;
    }

    v6 = SaveData_GetGameRecordsPtr(param1);
    v7 = sub_0203068C(param1);

    if (param0->unk_0F == 6) {
        v1 = 112;
    } else {
        v1 = param0->unk_0F * 2 + 0;
    }

    if (param0->unk_0F == 6) {
        v5 = sub_02030698(sub_0203068C(param1), 100, sub_0205E6A8(100));
    } else {
        v5 = sub_0202D414(param0->unk_74, 8 + param0->unk_0F, 0);
    }

    v0 = sub_020306E4(v7, v1 + 1, sub_0205E6A8(v1 + 1), (param0->unk_1A + param0->unk_0D));

    if (param0->unk_0F == 6) {
        sub_020306E4(sub_0203068C(param1), 100, sub_0205E6A8(100), 1);
    } else {
        sub_0202D414(param0->unk_74, 8 + param0->unk_0F, 1);
    }

    v3 = sub_02030698(v7, v1, sub_0205E6A8(v1));
    v4 = sub_02030848(v7, v1, sub_0205E6A8(v1), v0);

    GameRecords_AddToRecordValue(v6, RECORD_UNK_029, 7);
    sub_0202D3B4(param0->unk_74, param0->unk_0F, 3);

    if (param0->unk_0F != 6) {
        GameRecords_AddToRecordValue(v6, RECORD_UNK_015, 1);
    }

    GameRecords_IncrementTrainerScore(v6, TRAINER_SCORE_EVENT_UNK_14);
    sub_0204ACC8(param0);
    sub_0204A5EC(param0, param1, 1, v0);

    if (param0->unk_0F == 4) {
        v2 = sub_0202C238(param0->unk_04);
        Journal_SaveData(param2, v2, 4);
    }
}

void sub_0204A8C8(UnkStruct_0204AFC4 *param0)
{
    u16 v0;
    u8 v1[4];

    v1[0] = param0->unk_0F;
    sub_0202D140(param0->unk_70, 0, v1);

    v1[0] = param0->unk_0C;
    sub_0202D140(param0->unk_70, 1, v1);

    sub_0202D140(param0->unk_70, 5, param0->unk_2A);
    sub_0202D1E8(param0->unk_70, param0->unk_28, param0->unk_24, param0->unk_26);
    sub_0202D140(param0->unk_70, 8, param0->unk_3E);
    sub_0202D140(param0->unk_70, 10, &(param0->unk_08));
    sub_0202D21C(param0->unk_70, 1);

    if (param0->unk_0F != 2) {
        return;
    }

    v1[0] = param0->unk_10_5;
    sub_0202D140(param0->unk_70, 9, v1);

    sub_0202D140(param0->unk_70, 6, &(param0->unk_7E8[param0->unk_10_5]));
    sub_0202D140(param0->unk_70, 7, &(param0->unk_838[param0->unk_10_5]));
}

void sub_0204A97C(UnkStruct_0204AFC4 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_838[v0] = (u8)sub_0204B3B8(param0, &(param0->unk_298[v0]), 300 + v0, param0->unk_0E, param0->unk_2E, param0->unk_36, &(param0->unk_7E8[v0]), param0->unk_04);
    }
}

u16 sub_0204A9E0(UnkStruct_0204AFC4 *param0, u16 param1)
{
    return sub_0204AF9C(param0->unk_78[param1].unk_00.unk_04);
}

u16 sub_0204A9F8(UnkStruct_0204AFC4 *param0)
{
    return param0->unk_0F;
}

u16 sub_0204A9FC(UnkStruct_0204AFC4 *param0)
{
    return (u16)param0->unk_10_1;
}

u16 sub_0204AA04(UnkStruct_0204AFC4 *param0)
{
    u16 v0;
    u16 v1 = 0;
    static const u8 v2[] = { 0, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10 };
    static const u8 v3[] = { 0, 3, 3, 4, 4, 5, 5, 7 };
    static const u8 v4[] = { 0, 8, 9, 11, 12, 14, 15, 18 };

    if (param0->unk_0F == 5) {
        return 0;
    }

    if (param0->unk_0F == 4) {
        v1 = v2[sub_0202D2C0(param0->unk_74, 0)];
    } else {
        if ((param0->unk_0F == 3) || (param0->unk_0F == 6)) {
            v0 = sub_0202D3B4(param0->unk_74, param0->unk_0F, 0);

            if (v0 >= 7) {
                v1 = 18;
            } else {
                v1 = v4[v0];
            }
        } else {
            v0 = sub_0202D3B4(param0->unk_74, param0->unk_0F, 0);

            if (param0->unk_10_1) {
                v1 = 20;
            } else if (v0 >= 7) {
                v1 = 7;
            } else {
                v1 = v3[v0];
            }
        }
    }

    sub_0202D230(param0->unk_74, v1, 5);
    return v1;
}

u16 sub_0204AA7C(UnkStruct_0204AFC4 *param0, SaveData *param1)
{
    u8 v0, v1;
    u16 v2, v3, v4;

    v2 = sub_02049FF8(param1, param0->unk_0F);

    if (v2 < 50) {
        return 0;
    }

    if (v2 >= 100) {
        if (sub_0202D414(param0->unk_74, 1, 0)) {
            return 0;
        }
    } else {
        if (sub_0202D414(param0->unk_74, 0, 0)) {
            return 0;
        }
    }

    return 1;
}

u16 sub_0204AABC(UnkStruct_0204AFC4 *param0, SaveData *param1, u8 param2)
{
    u8 v0, v1;
    UnkStruct_0202D750 *v2 = sub_0202D750(param1);
    static const u8 v3[] = {
        0,
        5,
        4,
        4,
        3,
        3,
        2,
        2,
        1,
        1,
    };

    switch (param2) {
    case 0:
        return (u16)sub_0202D2C0(v2, 0);
    case 1:
        sub_0202D414(v2, 4, 2);
        v1 = sub_0202D2C0(v2, 0);

        if (v1 == 10) {
            param0->unk_10_4 = 1;
            return 0;
        }

        sub_0202D2C0(v2, 3);

        if (v1 + 1 >= 5) {
            param0->unk_10_4 = 1;
        }

        return 1;
    case 2:
        v0 = sub_0202D288(v2, 3);
        v1 = sub_0202D2C0(v2, 0);

        if (v1 == 1) {
            return 0;
        }

        if (v0 >= v3[v1 - 1]) {
            sub_0202D2C0(v2, 4);
            sub_0202D288(v2, 2);
            sub_0202D414(v2, 4, 2);

            return 1;
        }

        return 0;
    }

    return 0;
}

u16 sub_0204AB68(UnkStruct_0204AFC4 *param0, SaveData *param1)
{
    if (param0->unk_0F != 0) {
        return 0;
    }

    switch (param0->unk_10_1) {
    case 1:
        return sub_0204AC54(param1, 26, param0);
    case 2:
        return sub_0204AC54(param1, 27, param0);
    }

    return 0;
}

u16 sub_0204ABA0(UnkStruct_0204AFC4 *param0, SaveData *param1)
{
    u8 v0, v1;
    u16 v2, v3, v4;
    UndergroundData *v5;

    if (param0->unk_0F == 5) {
        return 0;
    }

    if (param0->unk_0F == 6) {
        return 0;
    }

    if (!param0->unk_10_4) {
        return 0;
    }

    switch (param0->unk_0F) {
    case 1:
        v0 = 28;
        break;
    case 2:
        v0 = 29;
        break;
    case 3:
        v0 = 30;
        break;
    case 4:
        v0 = 31;
        break;
    }

    return sub_0204AC54(param1, v0, param0);
}

u16 sub_0204ABF4(UnkStruct_0204AFC4 *param0, SaveData *param1)
{
    u8 v0;

    if (param0->unk_0F == 6) {
        v0 = sub_02030698(sub_0203068C(param1), 100, sub_0205E6A8(100));
    } else {
        v0 = sub_0202D414(param0->unk_74, 8 + param0->unk_0F, 0);
    }

    if (!v0) {
        param0->unk_08 = sub_0206C02C(param1);
    } else {
        param0->unk_08 = sub_0206C068(param1);
    }

    return param0->unk_08 / 65535;
}

static u16 sub_0204AC54(SaveData *param0, u8 param1, UnkStruct_0204AFC4 *param2)
{
    u8 v0 = 1;
    u8 v1;
    int v2;
    Party *v3;
    Pokemon *v4;

    v3 = Party_GetFromSavedata(param0);
    v1 = 0;

    for (v2 = 0; v2 < param2->unk_0E; v2++) {
        v4 = Party_GetPokemonBySlotIndex(v3, param2->unk_2A[v2]);

        if (Pokemon_GetValue(v4, param1, NULL)) {
            continue;
        }

        Pokemon_SetValue(v4, param1, &v0);
        sub_0206DDB8(param0, v4, param1);
        ++v1;
    }

    if (v1 == 0) {
        return 0;
    }

    return 1;
}

static u16 sub_0204ACC8(UnkStruct_0204AFC4 *param0)
{
    u16 v0;

    if ((param0->unk_0F == 5) || (param0->unk_0F == 0) || (param0->unk_0F == 6) || (param0->unk_0F == 4)) {
        return 0;
    }

    v0 = param0->unk_1A + param0->unk_0D;

    if (v0 < 50) {
        return 0;
    }

    param0->unk_10_4 = 1;
    return 1;
}

static void sub_0204ACFC(UnkStruct_ov104_0223A348_sub2 *param0, Pokemon *param1)
{
    int v0;

    param0->unk_00_val1_0 = Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);
    param0->unk_00_val1_11 = Pokemon_GetValue(param1, MON_DATA_FORM, NULL);
    param0->unk_02 = Pokemon_GetValue(param1, MON_DATA_HELD_ITEM, NULL);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_04[v0] = Pokemon_GetValue(param1, MON_DATA_MOVE1 + v0, NULL);
        param0->unk_1E_val2 |= ((Pokemon_GetValue(param1, MON_DATA_MOVE1_PP_UPS + v0, NULL)) << (v0 * 2));
    }

    param0->unk_1F = Pokemon_GetValue(param1, MON_DATA_LANGUAGE, NULL);
    param0->unk_0C = Pokemon_GetValue(param1, MON_DATA_OT_ID, NULL);
    param0->unk_10 = Pokemon_GetValue(param1, MON_DATA_PERSONALITY, NULL);
    param0->unk_14_val2 = Pokemon_GetValue(param1, MON_DATA_COMBINED_IVS, NULL);

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_18_val2[v0] = Pokemon_GetValue(param1, MON_DATA_HP_EV + v0, NULL);
    }

    param0->unk_20 = Pokemon_GetValue(param1, MON_DATA_ABILITY, NULL);
    param0->unk_21 = Pokemon_GetValue(param1, MON_DATA_FRIENDSHIP, NULL);

    Pokemon_GetValue(param1, MON_DATA_NICKNAME, param0->unk_22);
}

static void sub_0204AE20(UnkStruct_0204AFC4 *param0, SaveData *param1, int param2)
{
    int v0 = 0;
    UnkStruct_ov104_0223A348_sub2 *v1;
    Party *v2;
    Pokemon *v3;

    v1 = Heap_AllocFromHeapAtEnd(param0->unk_04, sizeof(UnkStruct_ov104_0223A348_sub2) * 3);
    MI_CpuClear8(v1, sizeof(UnkStruct_ov104_0223A348_sub2) * 3);
    v2 = Party_GetFromSavedata(param1);

    for (v0 = 0; v0 < 3; v0++) {
        v3 = Party_GetPokemonBySlotIndex(v2, param0->unk_2A[v0]);
        sub_0204ACFC(&(v1[v0]), v3);
    }

    sub_0202D2F0(param0->unk_74, param2, v1);
    MI_CpuClear8(v1, sizeof(UnkStruct_ov104_0223A348_sub2) * 3);
    Heap_FreeToHeap(v1);
}

u8 sub_0204AE84(u16 param0)
{
    u8 v0;

    if (param0 < 100) {
        v0 = (0x1f / 8) * 1;
    } else if (param0 < 120) {
        v0 = (0x1f / 8) * 2;
    } else if (param0 < 140) {
        v0 = (0x1f / 8) * 3;
    } else if (param0 < 160) {
        v0 = (0x1f / 8) * 4;
    } else if (param0 < 180) {
        v0 = (0x1f / 8) * 5;
    } else if (param0 < 200) {
        v0 = (0x1f / 8) * 6;
    } else if (param0 < 220) {
        v0 = (0x1f / 8) * 7;
    } else {
        v0 = 0x1f;
    }

    return v0;
}

u16 sub_0204AEC0(UnkStruct_0204AFC4 *param0)
{
    if (param0->unk_0F == 6) {
        return LCRNG_Next();
    }

    param0->unk_08 = sub_0206BFF0(param0->unk_08);
    return param0->unk_08 / 65535;
}
