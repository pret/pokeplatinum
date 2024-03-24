#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02030114_decl.h"
#include "struct_decls/struct_0203026C_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "savedata.h"

#include "constdata/const_020F1E88.h"
#include "constdata/const_020F410C.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_0204AFC4.h"
#include "struct_defs/struct_0204F3D0.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/pokemon_summary.h"

#include "unk_0200B358.h"
#include "heap.h"
#include "savedata.h"
#include "unk_02025E08.h"
#include "unk_02028124.h"
#include "unk_0202CD50.h"
#include "unk_0202D05C.h"
#include "unk_0202D778.h"
#include "unk_02030108.h"
#include "unk_0203061C.h"
#include "unk_02030880.h"
#include "unk_02034198.h"
#include "unk_0203CC84.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_0204F13C.h"
#include "unk_0204FA34.h"
#include "unk_020508D4.h"
#include "unk_0205DFC4.h"
#include "constants/species.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0207D3B8.h"
#include "pokemon_summary_app.h"
#include "unk_02099500.h"

typedef struct UnkStruct_0204F470_t {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[2];
    void ** unk_08;
} UnkStruct_0204F470;

enum {
    UnkEnum_0204F13C_1,
    UnkEnum_0204F13C_2,
    UnkEnum_0204F13C_3,
    UnkEnum_0204F13C_4,
    UnkEnum_0204F13C_5,
};

BOOL sub_0204F13C(UnkStruct_0203E724 * param0);
static BOOL sub_0204F268(u16 param0, SaveData * param1);
BOOL sub_0204F360(UnkStruct_0203E724 * param0);

BOOL sub_0204F398(UnkStruct_0203E724 * param0);
void sub_0204F3D0(UnkStruct_020508D4 * param0, u16 param1, u16 * param2);
static BOOL sub_0204F414(UnkStruct_020508D4 * param0);

void sub_0204F470(UnkStruct_020508D4 * param0, void ** param1, u8 param2);
static BOOL sub_0204F4A4(UnkStruct_020508D4 * param0);
static int sub_0204F50C(UnkStruct_0204F470 * param0, UnkStruct_0203CDB0 * param1, int param2);
static int sub_0204F5D8(UnkStruct_0204F470 * param0, UnkStruct_0203CDB0 * param1);
static int sub_0204F628(UnkStruct_0204F470 * param0, UnkStruct_0203CDB0 * param1, int param2);
static int sub_0204F6B0(UnkStruct_0204F470 * param0, UnkStruct_0203CDB0 * param1);

BOOL sub_0204F13C (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u8 v1[4];
    u16 v2[4];
    u16 v3, v4, v5;
    u16 * v6, * v7;
    void ** v8;
    UnkStruct_0204AFC4 * v9;
    UnkStruct_02030114 * v10;
    UnkStruct_0203026C * v11;

    v3 = sub_0203E838(param0);
    v4 = inline_02049538(param0);
    v5 = sub_0203E838(param0);
    v6 = sub_0203F118(param0->unk_34, v5);

    v10 = sub_02030114(param0->unk_34->unk_0C);
    v11 = sub_0203026C(param0->unk_34->unk_0C);
    v8 = sub_0203F098(param0->unk_34, 19);

    switch (v3) {
    case 0:
        *v6 = sub_0204F268(v4, param0->unk_34->unk_0C);
        break;

    case 1:

        if (v4 == 3) {
            *v6 = sub_02030698(sub_0203068C(param0->unk_34->unk_0C),
                               106,
                               sub_0205E6A8(106));
        } else {
            *v6 = (u16)sub_020302B4(v11, 5,
                                    v4, 0, NULL);
        }
        break;

    case 2:
        *v6 = sub_02030698(sub_0203068C(param0->unk_34->unk_0C),
                           sub_0205E55C(v4),
                           sub_0205E6A8(sub_0205E55C(v4)));
        break;

    case 3:
        sub_0204FA50(param0->unk_34->unk_0C, v11, v4);
        break;

    case 4:

        if (v4 == 0) {
            v0 = 0;
        } else if (v4 == 1) {
            v0 = 1;
        } else if (v4 == 2) {
            v0 = 2;
        } else {
            v0 = 2;
        }

        ;
        sub_0204F470(param0->unk_28, v8, v0);
        return 1;

    default:
        ;
        GF_ASSERT(FALSE);
        *v6 = 0;
        break;
    }

    return 0;
}

static BOOL sub_0204F268 (u16 param0, SaveData * param1)
{
    u8 v0, v1, v2, v3;
    u16 v4, v5;
    Party * v6;
    Pokemon * v7;
    u16 v8[6];

    v6 = Party_GetFromSavedata(param1);
    v3 = Party_GetCurrentCount(v6);

    if (v3 < param0) {
        return 0;
    }

    for (v0 = 0; v0 < 6; v0++) {
        v8[v0] = 0;
    }

    for (v0 = 0, v2 = 0; v0 < v3; v0++) {
        v7 = Party_GetPokemonBySlotIndex(v6, v0);
        v4 = Pokemon_GetValue(v7, MON_DATA_SPECIES, NULL);
        v5 = Pokemon_GetValue(v7, MON_DATA_LEVEL, NULL);

        if (Pokemon_GetValue(v7, MON_DATA_IS_EGG, NULL) != 0) {
            continue;
        }

        if (v5 < 30) {
            continue;
        }

        if (sub_02078804(v4) == 1) {
            continue;
        }

        v2++;
        v8[v0] = v4;
    }

    if (param0 == 2) {
        for (v1 = 0; v1 < v3; v1++) {
            for (v0 = 0; v0 < v3; v0++) {
                if (v1 != v0) {
                    if (v8[v1] != 0) {
                        if (v8[v1] == v8[v0]) {
                            return 1;
                        }
                    }
                }
            }
        }

        return 0;
    }

    if (v2 < param0) {
        return 0;
    }

    return 1;
}

BOOL sub_0204F360 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203026C * v0;
    u16 v1 = inline_02049538(param0);

    v0 = sub_0203026C(param0->unk_34->unk_0C);

    sub_0204FA50(param0->unk_34->unk_0C, v0, v1);
    return 0;
}

BOOL sub_0204F398 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);

    ;
    ;

    sub_0204F3D0(param0->unk_28, v0, v1);
    return 1;
}

void sub_0204F3D0 (UnkStruct_020508D4 * param0, u16 param1, u16 * param2)
{
    UnkStruct_0204F3D0 * v0;

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0204F3D0));
    memset(v0, 0, sizeof(UnkStruct_0204F3D0));

    v0->unk_04 = param1;
    v0->unk_08 = param2;

    sub_02099514(v0);

    sub_02050944(param0, sub_0204F414, v0);
    return;
}

static BOOL sub_0204F414 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0204F3D0 * v0 = sub_02050A64(param0);

    switch (v0->unk_00) {
    case 0:
        if (sub_020359DC(132, v0, sizeof(UnkStruct_0204F3D0)) == 1) {
            v0->unk_00++;
        }
        break;

    case 1:
        if (v0->unk_01 >= 2) {
            if (v0->unk_04 == v0->unk_06) {
                *v0->unk_08 = 0;
            } else {
                *v0->unk_08 = 1;
            }

            ;
            ;
            ;
            v0->unk_00++;
        }
        break;

    case 2:
        Heap_FreeToHeap(v0);
        return 1;
    }
    ;

    return 0;
}

void sub_0204F470 (UnkStruct_020508D4 * param0, void ** param1, u8 param2)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0204F470 * v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0204F470));
    MI_CpuClear8(v1, sizeof(UnkStruct_0204F470));

    v1->unk_04 = param2;
    v1->unk_08 = param1;

    sub_02050944(v0->unk_10, sub_0204F4A4, v1);
    return;
}

static BOOL sub_0204F4A4 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0204F470 * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case UnkEnum_0204F13C_1:
        v1->unk_00 = sub_0204F50C(v1, v0, 11);
        break;

    case UnkEnum_0204F13C_2:
        v1->unk_00 = sub_0204F5D8(v1, v0);
        break;

    case UnkEnum_0204F13C_3:
        v1->unk_00 = sub_0204F628(v1, v0, 11);
        break;

    case UnkEnum_0204F13C_4:
        v1->unk_00 = sub_0204F6B0(v1, v0);
        break;

    case UnkEnum_0204F13C_5:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static int sub_0204F50C (UnkStruct_0204F470 * param0, UnkStruct_0203CDB0 * param1, int param2)
{
    u8 v0;

    PartyManagementData * v1 = Heap_AllocFromHeap(11, sizeof(PartyManagementData));
    MI_CpuClearFast(v1, sizeof(PartyManagementData));

    v1->unk_00 = Party_GetFromSavedata(param1->unk_0C);
    v1->unk_04 = sub_0207D990(param1->unk_0C);
    v1->unk_08 = sub_02028430(param1->unk_0C);
    v1->unk_0C = sub_02025E44(param1->unk_0C);

    v1->unk_21 = 0;

    v1->unk_20 = 22;
    v1->unk_1C = param1;

    v1->unk_22 = param0->unk_05;

    for (v0 = 0; v0 < 2; v0++) {
        v1->unk_2C[v0] = param0->unk_06[v0];
    }

    v1->unk_33 = 30;

    v1->unk_32_0 = 1;
    v1->unk_32_4 = 1;

    if (param0->unk_04 == 1) {
        v1->unk_32_0 = 2;
        v1->unk_32_4 = 2;
    }

    sub_0203CD84(param1, &Unk_020F1E88, v1);

    *(param0->unk_08) = v1;

    return UnkEnum_0204F13C_2;
}

static int sub_0204F5D8 (UnkStruct_0204F470 * param0, UnkStruct_0203CDB0 * param1)
{
    int v0;
    PartyManagementData * v1;

    if (sub_020509B4(param1)) {
        return UnkEnum_0204F13C_2;
    }

    v1 = *(param0->unk_08);

    switch (v1->unk_22) {
    case 7:
        return UnkEnum_0204F13C_5;

    case 6:
        return UnkEnum_0204F13C_5;

    default:
        break;
    }

    MI_CpuCopy8(v1->unk_2C, param0->unk_06, 2);

    param0->unk_05 = v1->unk_22;

    Heap_FreeToHeap(v1);
    *(param0->unk_08) = NULL;
    return UnkEnum_0204F13C_3;
}

static int sub_0204F628 (UnkStruct_0204F470 * param0, UnkStruct_0203CDB0 * param1, int param2)
{
    PokemonSummary * v0;
    SaveData * v1;

    static const u8 v2[] = {
        0,
        1,
        2,
        4,
        3,
        5,
        6,
        7,
        8
    };

    v1 = param1->unk_0C;

    v0 = Heap_AllocFromHeapAtEnd(param2, sizeof(PokemonSummary));
    MI_CpuClear8(v0, sizeof(PokemonSummary));

    v0->options = sub_02025E44(v1);
    v0->monData = Party_GetFromSavedata(v1);
    v0->dexMode = sub_0207A274(v1);
    v0->contest = PokemonSummary_ShowContestData(v1);
    v0->dataType = 1;
    v0->pos = param0->unk_05;
    v0->max = (u8)Party_GetCurrentCount(v0->monData);
    v0->move = 0;
    v0->mode = 0;
    v0->ribbons = sub_0202D79C(v1);

    PokemonSummary_FlagVisiblePages(v0, v2);
    PokemonSummary_SetPlayerProfile(v0, sub_02025E38(v1));

    sub_0203CD84(param1, &Unk_020F410C, v0);

    *(param0->unk_08) = v0;
    return UnkEnum_0204F13C_4;
}

static int sub_0204F6B0 (UnkStruct_0204F470 * param0, UnkStruct_0203CDB0 * param1)
{
    PokemonSummary * v0;

    if (sub_020509B4(param1)) {
        return UnkEnum_0204F13C_4;
    }

    v0 = *(param0->unk_08);

    param0->unk_05 = v0->pos;

    Heap_FreeToHeap(v0);
    *(param0->unk_08) = NULL;

    return UnkEnum_0204F13C_1;
}

BOOL sub_0204F6D8(UnkStruct_0203E724 * param0);

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_020EC078;

static const UnkStruct_020EC078 Unk_020EC078[] = {
    {10, 1},
    {30, 3},
    {50, 5},
    {100, 5},
    {150, 5},
    {200, 5},
    {250, 5},
    {300, 5},
    {350, 5},
    {400, 5},
    {450, 5},
    {500, 10},
    {600, 10},
    {700, 10},
    {800, 10},
    {900, 10},
    {1000, 10},
    {1200, 30},
    {1400, 30},
    {1600, 30},
    {1800, 30},
    {2000, 50},
    {2500, 50},
    {3000, 50},
    {3500, 50},
    {4000, 50},
    {4500, 50},
    {5000, 50},
    {5500, 50},
    {6000, 50},
    {6500, 50},
    {7000, 50},
    {7500, 50},
    {8000, 50},
    {8500, 50},
    {9000, 50},
    {9500, 50},
    {10000, 100},
    {20000, 200},
    {30000, 300},
    {40000, 400},
    {50000, 500},
    {60000, 600},
    {70000, 700},
    {80000, 800},
    {90000, 900},
    {100000, 1000},
};

BOOL sub_0204F6D8 (UnkStruct_0203E724 * param0)
{
    int v0;
    int v1;
    BattleFrontierStage * v2;
    UnkStruct_0203068C * v3;
    u32 v4, v5, v6;
    u16 v7, v8;
    UnkStruct_0203CDB0 * v9 = param0->unk_34;
    StringFormatter ** v10 = sub_0203F098(v9, 15);
    u8 v11 = (*((param0)->unk_08++));
    u8 v12 = (*((param0)->unk_08++));
    u8 v13 = (*((param0)->unk_08++));
    u8 v14 = (*((param0)->unk_08++));
    u16 * v15 = inline_0204FCAC(param0);
    u16 * v16 = inline_0204FCAC(param0);

    v4 = 0;
    v0 = 1;
    v1 = 2;

    if (sub_020247C8(v9->unk_0C) == 0) {
        *v16 = 0;
        return 0;
    }

    v2 = sub_020308A0(v9->unk_0C, 32, &v0);
    if (v0 != 1) {
        v4 = 0;
    } else {
        for (v5 = 0; v5 < NATIONAL_DEX_COUNT; v5++) {
            v4 += sub_020308BC(v9->unk_0C, v2,
                               0, v5);
            ;
        }
    }

    ;

    if (v2 != NULL) {
        Heap_FreeToHeap(v2);
    }

    sub_0200B60C(*v10, v11, v4, sub_0205DFC4(v4),
                 1, 1);

    v7 = 0;
    v6 = 0;
    v8 = *v15;

    for (v5 = (*v15); v5 < (NELEMS(Unk_020EC078)); v5++) {
        if (Unk_020EC078[v5].unk_00 <= v4) {
            v7 += Unk_020EC078[v5].unk_04;
            *v15 += 1;

            v6 = v5;
        }
    }

    sub_0202CF70(sub_0202CD88(param0->unk_34->unk_0C), (1 + 67), v7);

    if (v7 != 0) {
        sub_0202D230(
            sub_0202D750(param0->unk_34->unk_0C), v7, 5);
    }

    if (v4 == 0) {
        *v16 = 0;
    } else {
        if (v8 != (*v15)) {
            *v16 = 1;
        } else {
            *v16 = 2;
        }

        if (v8 >= (NELEMS(Unk_020EC078))) {
            *v16 = 3;
            return 0;
        }
    }

    sub_0200B60C(*v10, v12, Unk_020EC078[v6].unk_00,
                 sub_0205DFC4(Unk_020EC078[v6].unk_00),
                 1, 1);

    sub_0200B60C(*v10, v13, Unk_020EC078[*v15].unk_00,
                 sub_0205DFC4(Unk_020EC078[*v15].unk_00),
                 1, 1);

    sub_0200B60C(*v10, v14, v7, sub_0205DFC4(v7),
                 1, 1);

    return 0;
}

BOOL sub_0204F8A8(UnkStruct_0203E724 * param0);
BOOL sub_0204F8A8 (UnkStruct_0203E724 * param0)
{
    int v0;
    BattleFrontierStage * v1;
    u32 v2, v3, v4;
    UnkStruct_0203CDB0 * v5 = param0->unk_34;
    u16 * v6 = inline_0204FCAC(param0);

    v4 = 0;
    v0 = 1;

    if (sub_020247C8(v5->unk_0C) == 0) {
        *v6 = 0;
        return 0;
    }

    v1 = sub_020308A0(v5->unk_0C, 32, &v0);
    if (v0 != 1) {
        v4 = 0;
    } else {
        for (v3 = 0; v3 < NATIONAL_DEX_COUNT; v3++) {
            v2 = 0;

            v2 += sub_020308BC(v5->unk_0C, v1,
                               0, v3);

            v2 += sub_020308BC(v5->unk_0C, v1,
                               1, v3);

            v2 += sub_020308BC(v5->unk_0C, v1,
                               2, v3);

            if (v2 > 0) {
                v4++;
            }
        }
    }

    ;

    if (v1 != NULL) {
        Heap_FreeToHeap(v1);
    }

    *v6 = v4;
    return 0;
}

BOOL sub_0204F950(UnkStruct_0203E724 * param0);
BOOL sub_0204F950 (UnkStruct_0203E724 * param0)
{
    int v0;
    int v1;
    BattleFrontierStage * v2;
    UnkStruct_0203068C * v3;
    u32 v4, v5;
    UnkStruct_0203CDB0 * v6 = param0->unk_34;
    u16 * v7 = inline_0204FCAC(param0);

    v4 = 0;
    v0 = 1;
    v1 = 2;

    if (sub_020247C8(v6->unk_0C) == 0) {
        *v7 = 0;
        return 0;
    }

    v2 = sub_020308A0(v6->unk_0C, 32, &v0);
    if (v0 != 1) {
        v4 = 0;
    } else {
        for (v5 = 0; v5 < NATIONAL_DEX_COUNT; v5++) {
            v4 += sub_020308BC(v6->unk_0C, v2,
                               0, v5);
            ;
        }
    }

    ;

    if (v2 != NULL) {
        Heap_FreeToHeap(v2);
    }

    if (v4 > 10000) {
        v4 = 10000;
    }

    *v7 = v4;
    return 0;
}

BOOL sub_0204F9D4(UnkStruct_0203E724 * param0);
BOOL sub_0204F9D4 (UnkStruct_0203E724 * param0)
{
    u16 v0, v1;

    u16 * v2 = inline_0204FCAC(param0);

    v0 = sub_02030698(sub_0203068C(param0->unk_34->unk_0C),
                      sub_0205E55C(0),
                      0xff);

    v1 = sub_02030698(sub_0203068C(param0->unk_34->unk_0C),
                      sub_0205E50C(0),
                      0xff);

    *v2 = 0;
    if (v1 == 50) {
        *v2 = 1;
    }

    ;
    ;
    return 0;
}
