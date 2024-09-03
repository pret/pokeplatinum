#include "overlay021/ov21_021D3208.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"

#include "overlay021/struct_ov21_021D3208.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D37DC.h"
#include "overlay021/struct_ov21_021D3A60.h"

#include "core_sys.h"
#include "heap.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_02006E3C.h"
#include "unk_0202631C.h"
#include "pokedex_heightweight.h"
#include "pokedex_data_index.h"

static void ov21_021D39A4(u16 *param0, int *param1, const PokedexData *param2, const u16 *param3, int param4);
static void ov21_021D39E4(u16 *param0, int *param1, const u16 *param2, int param3, const u16 *param4, int param5, BOOL param6, const PokedexData *param7);
static void ov21_021D3A60(UnkStruct_ov21_021D3A60 *param0, const PokedexData *param1, const u16 *param2, int param3);
static void ov21_021D3AB8(UnkStruct_ov21_021D3A60 *param0, const u16 *param1, int param2);
static void ov21_021D3B28(UnkStruct_ov21_021D3A60 *param0);
static void ov21_021D3FA8(UnkStruct_ov21_021D3A60 *param0, int *param1, int *param2);
static u16 *Pokedex_Sorted_Array(int param0, int param1, int *param2);
static void Pokedex_Sort_HeightWeight(int param0, u16 *param1, int *param2, const u16 *param3, int param4, int param5, const PokedexData *param6);
static void Pokedex_Sort_FirstLetter(int param0, u16 *param1, int *param2, const u16 *param3, int param4, int param5, const PokedexData *param6);
static void Pokedex_Sort_Type(int param0, u16 *param1, int *param2, const u16 *param3, int param4, int param5, const PokedexData *param6);
static void Pokedex_Sort_BodyShape(int param0, u16 *param1, int *param2, const u16 *param3, int param4, int param5, const PokedexData *param6);

void ov21_021D3208(UnkStruct_ov21_021D3320 *param0, UnkStruct_ov21_021D3208 *param1, int param2)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    BOOL v5;
    u32 v6;

    memset(param0, 0, sizeof(UnkStruct_ov21_021D3320));

    param0->unk_00 = param1->unk_00;
    param0->unk_1744 = param1->unk_08;

    if (sub_02027474(param0->unk_00)) {
        param0->unk_1734 = 1;
    } else {
        param0->unk_1734 = 0;
    }

    if (param1->unk_20 == 2) {
        if (param0->unk_1734) {
            v6 = 1;
        } else {
            v6 = 0;
        }
    } else {
        v6 = param1->unk_20;
    }

    if (v6 == 1) {
        param0->unk_1730 = 1;
        v0 = 0;
        v1 = 0;
        v2 = 0;
        v3 = 0;
        v4 = 0;
    } else {
        param0->unk_1730 = 0;
        v0 = 0;
        v1 = 0;
        v2 = 0;
        v3 = 0;
        v4 = 0;
    }

    v5 = ov21_021D3684(param0, v0, v1, v2, v3, v4, param0->unk_1730, param2);

    GF_ASSERT(v5);

    ov21_021D3794(param0, param1->unk_1C);
    ov21_021D3434(param0, param1->unk_1C);
    ov21_021D344C(param0, param1->unk_20);

    param0->unk_174C = TrainerInfo_GameCode(param1->unk_04);
    param0->unk_1750 = TrainerInfo_Gender(param1->unk_04);
    param0->unk_1754 = TrainerInfo_NameNewStrbuf(param1->unk_04, param2);
    param0->unk_1748 = Pokedex_HeightWeightData(param2);

    if (param0->unk_1750 == 0) {
        Pokedex_HeightWeightData_Load(param0->unk_1748, 0, param2);
    } else {
        Pokedex_HeightWeightData_Load(param0->unk_1748, 1, param2);
    }

    param0->unk_1760 = param1->unk_0C;
    param0->unk_1764 = param1->unk_10;
    param0->unk_1768 = param1->unk_14;
    param0->unk_176C = param1->unk_18;
}

void ov21_021D3320(UnkStruct_ov21_021D3320 *param0)
{
    Strbuf_Free(param0->unk_1754);
    Pokedex_HeightWeightData_Release(param0->unk_1748);
    Pokedex_HeightWeightData_Free(param0->unk_1748);

    param0->unk_1748 = NULL;
}

u32 ov21_021D334C(const UnkStruct_ov21_021D3320 *param0, int param1, int param2)
{
    u32 v0;

    v0 = sub_02027058(param0->unk_00, param1, param2);
    return v0;
}

u32 ov21_021D335C(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    int v0;

    GF_ASSERT(param1 < 28);
    v0 = sub_020270AC(param0->unk_00, param1);

    return v0;
}

u32 ov21_021D3374(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 2);
    v0 = sub_020270F8(param0->unk_00, param1);

    return v0;
}

u32 ov21_021D338C(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 2);

    v0 = sub_02027154(param0->unk_00, param1);
    return v0;
}

u32 ov21_021D33A4(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 3);

    v0 = sub_020271B0(param0->unk_00, param1);
    return v0;
}

u32 ov21_021D33BC(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 3);

    v0 = sub_02027208(param0->unk_00, param1);
    return v0;
}

u32 ov21_021D33D4(const UnkStruct_ov21_021D3320 *param0, u32 param1)
{
    return sub_0202756C(param0->unk_00, param1, 0);
}

u32 ov21_021D33E0(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    int v0 = ov21_021D334C(param0, param1, 1);

    if (v0 == -1) {
        return 1;
    }

    return 2;
}

u32 ov21_021D33F8(const UnkStruct_ov21_021D3320 *param0)
{
    return sub_0202702C(param0->unk_00, 0);
}

u32 ov21_021D3404(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    return sub_02027264(param0->unk_00, param1);
}

u32 ov21_021D3410(const UnkStruct_ov21_021D3320 *param0, u32 param1, int param2)
{
    return sub_0202756C(param0->unk_00, param1, param2);
}

u32 ov21_021D341C(const UnkStruct_ov21_021D3320 *param0, u32 param1)
{
    return sub_020276C8(param0->unk_00, param1);
}

BOOL ov21_021D3428(const UnkStruct_ov21_021D3320 *param0)
{
    return sub_02027474(param0->unk_00);
}

void ov21_021D3434(UnkStruct_ov21_021D3320 *param0, u32 param1)
{
    param0->unk_175C = param1;
}

u32 ov21_021D3440(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_175C;
}

void ov21_021D344C(UnkStruct_ov21_021D3320 *param0, u32 param1)
{
    param0->unk_175E = param1;
}

u32 ov21_021D3458(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_175E;
}

BOOL ov21_021D3464(UnkStruct_ov21_021D3320 *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, BOOL param8)
{
    u16 *v0;
    int v1;
    u16 *v2;
    int v3;
    u16 *v4;
    int pokedex_length;
    BOOL v6;

    v0 = Heap_AllocFromHeapAtEnd(param7, sizeof(u16) * NATIONAL_DEX_COUNT);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(u16) * NATIONAL_DEX_COUNT);

    v1 = 0;
    v2 = Heap_AllocFromHeapAtEnd(param7, sizeof(u16) * NATIONAL_DEX_COUNT);

    GF_ASSERT(v2);
    memset(v2, 0, sizeof(u16) * NATIONAL_DEX_COUNT);

    v3 = 0;

    if (param6 == 0) {
        v4 = Pokedex_Sorted_Array(param7, 1, &pokedex_length);
        ov21_021D39A4(v0, &v1, param0->unk_00, v4, pokedex_length);
    } else {
        v4 = Pokedex_Sorted_Array(param7, 0, &pokedex_length);
        ov21_021D39A4(v0, &v1, param0->unk_00, v4, pokedex_length);
    }

    Pokedex_Sort_HeightWeight(param1, v2, &v3, v0, v1, param7, param0->unk_00);

    memcpy(v0, v2, sizeof(u16) * v3);
    v1 = v3;

    memset(v2, 0, sizeof(u16) * v3);
    v3 = 0;

    do {
        Pokedex_Sort_FirstLetter(param2, v2, &v3, v0, v1, param7, param0->unk_00);

        if (v3 == 0) {
            v6 = 0;
            break;
        }

        memcpy(v0, v2, sizeof(u16) * v3);
        v1 = v3;

        memset(v2, 0, sizeof(u16) * v3);
        v3 = 0;

        Pokedex_Sort_Type(param3, v2, &v3, v0, v1, param7, param0->unk_00);

        if (v3 == 0) {
            v6 = 0;
            break;
        }

        memcpy(v0, v2, sizeof(u16) * v3);
        v1 = v3;

        memset(v2, 0, sizeof(u16) * v3);
        v3 = 0;

        Pokedex_Sort_Type(param4, v2, &v3, v0, v1, param7, param0->unk_00);

        if (v3 == 0) {
            v6 = 0;
            break;
        }

        memcpy(v0, v2, sizeof(u16) * v3);
        v1 = v3;

        memset(v2, 0, sizeof(u16) * v3);
        v3 = 0;

        Pokedex_Sort_BodyShape(param5, v2, &v3, v0, v1, param7, param0->unk_00);

        if (v3 == 0) {
            v6 = 0;
            break;
        }

        memcpy(v0, v2, sizeof(u16) * v3);
        v1 = v3;

        memset(v2, 0, sizeof(u16) * v3);
        v3 = 0;

        ov21_021D3A60(&param0->unk_04, param0->unk_00, v0, v1);

        if ((param1 != 0) || (param2 != 0) || (param3 != 0) || (param4 != 0) || (param5 != 0)) {
            param8 = 1;
        }

        if (param8 == 0) {
            ov21_021D3AB8(&param0->unk_04, v4, pokedex_length);
        } else {
            ov21_021D3B28(&param0->unk_04);
        }

        v6 = 1;
    } while (0);

    ov21_021D3FA8(&param0->unk_04, &param0->unk_1738, &param0->unk_173C);

    Heap_FreeToHeap(v0);
    Heap_FreeToHeap(v2);
    Heap_FreeToHeap(v4);

    return v6;
}

BOOL ov21_021D3684(UnkStruct_ov21_021D3320 *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    return ov21_021D3464(param0, param1, param2, param3, param4, param5, param6, param7, 0);
}

BOOL ov21_021D36A4(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    if (param1 == 0) {
        return 1;
    }

    if (param0->unk_1734) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D36C0(UnkStruct_ov21_021D3320 *param0, int param1)
{
    BOOL v0;

    v0 = ov21_021D36A4(param0, param1);

    if (v0) {
        param0->unk_1730 = param1;
    }

    return v0;
}

int ov21_021D36D8(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_1730;
}

BOOL ov21_021D36E4(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    if (((param1) >= 0) && ((param1) < param0->unk_04.unk_F6C)) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D36FC(UnkStruct_ov21_021D3320 *param0, int param1)
{
    if (ov21_021D36E4(param0, param1)) {
        param0->unk_04.unk_F68 = param1;
        return 1;
    }

    return 0;
}

BOOL ov21_021D371C(UnkStruct_ov21_021D3320 *param0, int param1)
{
    if (ov21_021D36E4(param0, param0->unk_04.unk_F68 + param1)) {
        param0->unk_04.unk_F68 += param1;
        return 1;
    }

    if (param1 >= 0) {
        param0->unk_04.unk_F68 = param0->unk_04.unk_F6C - 1;
    } else {
        param0->unk_04.unk_F68 = 0;
    }

    return 0;
}

int ov21_021D375C(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_04.unk_F68;
}

int ov21_021D3768(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_04.unk_F6C;
}

int ov21_021D3770(const UnkStruct_ov21_021D3320 *param0, u32 param1)
{
    int v0;
    int v1 = ov21_021D3768(param0);
    int v2;

    for (v0 = 0; v0 < v1; v0++) {
        v2 = param0->unk_04.unk_00[v0].unk_00;

        if (v2 == param1) {
            break;
        }
    }

    return v0;
}

BOOL ov21_021D3794(UnkStruct_ov21_021D3320 *param0, int param1)
{
    u32 v0 = ov21_021D3768(param0);
    u32 v1 = ov21_021D3770(param0, param1);

    if (v0 > v1) {
        return ov21_021D36FC(param0, v1);
    }

    return 0;
}

int ov21_021D37BC(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_04.unk_00[param0->unk_04.unk_F68].unk_00;
}

int ov21_021D37CC(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_04.unk_00[param0->unk_04.unk_F68].unk_04;
}

const UnkStruct_ov21_021D37DC *ov21_021D37DC(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    if (ov21_021D36E4(param0, param1)) {
        return &param0->unk_04.unk_00[param1];
    }

    return NULL;
}

BOOL ov21_021D37F8(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    if ((param0->unk_04.unk_1728 > param1) && (param1 >= 0)) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D3810(UnkStruct_ov21_021D3320 *param0, int param1)
{
    if (ov21_021D37F8(param0, param1)) {
        param0->unk_04.unk_1724 = param1;

        ov21_021D36FC(param0, param0->unk_04.unk_F70[param0->unk_04.unk_1724]);
        return 1;
    }

    return 0;
}

BOOL ov21_021D3844(UnkStruct_ov21_021D3320 *param0, int param1)
{
    if (ov21_021D387C(param0, param1)) {
        param0->unk_04.unk_1724 += param1;

        ov21_021D36FC(param0, param0->unk_04.unk_F70[param0->unk_04.unk_1724]);
        return 1;
    }

    return 0;
}

BOOL ov21_021D387C(UnkStruct_ov21_021D3320 *param0, int param1)
{
    if (ov21_021D37F8(param0, param0->unk_04.unk_1724 + param1)) {
        return 1;
    }

    return 0;
}

int ov21_021D3898(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_04.unk_1724;
}

int ov21_021D38A4(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_04.unk_1728;
}

int ov21_021D38B0(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    return param0->unk_04.unk_F70[param1];
}

void ov21_021D38C0(UnkStruct_ov21_021D3320 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04.unk_1728; v0++) {
        if (ov21_021D38B0(param0, v0) == ov21_021D375C(param0)) {
            ov21_021D3810(param0, v0);
            break;
        }
    }
}

int ov21_021D38FC(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_1738;
}

int ov21_021D3908(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_173C;
}

Strbuf *ov21_021D3914(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_1754;
}

u32 ov21_021D3920(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_1750;
}

BOOL ov21_021D392C(const UnkStruct_ov21_021D3320 *param0, int param1)
{
    int v0 = ov21_021D37BC(param0);

    if (sub_02027514(param0->unk_00) == 0) {
        return 0;
    }

    return sub_020274D0(param0->unk_00, v0, param1);
}

BOOL ov21_021D3954(const UnkStruct_ov21_021D3320 *param0)
{
    return sub_02027494(param0->unk_00);
}

void ov21_021D3960(UnkStruct_ov21_021D3320 *param0)
{
    if (gCoreSys.touchHeld) {
        param0->unk_1758 = 0;
        return;
    }

    if (gCoreSys.pressedKeys) {
        if (param0->unk_1758 == 0) {
            param0->unk_1758 = 1;
        } else {
            param0->unk_1758 = 2;
        }
    }
}

u32 ov21_021D3998(const UnkStruct_ov21_021D3320 *param0)
{
    return param0->unk_1758;
}

static void ov21_021D39A4(u16 *param0, int *param1, const PokedexData *param2, const u16 *param3, int param4)
{
    int v0;

    *param1 = 0;

    for (v0 = 0; v0 < param4; v0++) {
        if (sub_02026FE8(param2, param3[v0])) {
            param0[*param1] = param3[v0];
            (*param1)++;
        }
    }
}

static void ov21_021D39E4(u16 *param0, int *param1, const u16 *param2, int param3, const u16 *param4, int param5, BOOL param6, const PokedexData *param7)
{
    int v0, v1;

    *param1 = 0;

    for (v0 = 0; v0 < param3; v0++) {
        for (v1 = 0; v1 < param5; v1++) {
            if (param2[v0] == param4[v1]) {
                if (param6 == 1) {
                    break;
                } else {
                    if (Pokedex_CaughtSpecies(param7, param2[v0])) {
                        break;
                    }
                }
            }
        }

        if (v1 < param5) {
            param0[*param1] = param2[v0];
            (*param1)++;
        }
    }
}

static void ov21_021D3A60(UnkStruct_ov21_021D3A60 *param0, const PokedexData *param1, const u16 *param2, int param3)
{
    int v0;

    param0->unk_F6C = 0;

    for (v0 = 0; v0 < param3; v0++) {
        if (Pokedex_CaughtSpecies(param1, param2[v0])) {
            param0->unk_00[param0->unk_F6C].unk_04 = 2;
        } else {
            param0->unk_00[param0->unk_F6C].unk_04 = 1;
        }

        param0->unk_00[param0->unk_F6C].unk_00 = param2[v0];
        param0->unk_F6C++;
    }
}

static void ov21_021D3AB8(UnkStruct_ov21_021D3A60 *param0, const u16 *param1, int param2)
{
    int v0;
    int v1;

    v1 = 0;
    param0->unk_1728 = 0;

    for (v0 = 0; v0 < param2; v0++) {
        if (v1 < param0->unk_F6C) {
            if (param0->unk_00[v1].unk_00 == param1[v0]) {
                param0->unk_F70[param0->unk_1728] = v1;
                v1++;
                param0->unk_1728++;
            } else {
                param0->unk_F70[param0->unk_1728] = (NATIONAL_DEX_COUNT + 1);
                param0->unk_1728++;
            }
        }
    }
}

static void ov21_021D3B28(UnkStruct_ov21_021D3A60 *param0)
{
    int v0;

    param0->unk_1728 = 0;

    for (v0 = 0; v0 < param0->unk_F6C; v0++) {
        param0->unk_F70[param0->unk_1728] = v0;
        param0->unk_1728++;
    }
}

static u16 *Pokedex_Sorted_Array(int param0, int pokedex_sort, int *pokedex_length)
{
    u32 v0;
    u16 *pokedex_sorted_array;
    u32 pokedex_data_narc_index;

    GF_ASSERT(47 > pokedex_sort);

    pokedex_data_narc_index = Pokedex_Data_NARC_Index();
    pokedex_sorted_array = sub_02007068(pokedex_data_narc_index, 11 + pokedex_sort, 0, param0, 0, &v0);
    *pokedex_length = v0 / (sizeof(u16));

    return pokedex_sorted_array;
}

static void Pokedex_Sort_HeightWeight(int param0, u16 *param1, int *param2, const u16 *param3, int param4, int param5, const PokedexData *param6)
{
    u16 *pokedex_sorted_array;
    int pokedex_length;
    BOOL v2 = 0;

    switch (param0) {
    case 0:
        pokedex_sorted_array = NULL;
        break;
    case 1:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 2, &pokedex_length);// alphabetical
        v2 = 1;
        break;
    case 2:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 3, &pokedex_length);// heaviest
        break;
    case 3:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 4, &pokedex_length);// lightest
        break;
    case 4:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 5, &pokedex_length);// tallest
        break;
    case 5:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 6, &pokedex_length);// shortest
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (pokedex_sorted_array != NULL) {
        ov21_021D39E4(param1, param2, pokedex_sorted_array, pokedex_length, param3, param4, v2, param6);
        Heap_FreeToHeap(pokedex_sorted_array);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * param4);
        *param2 = param4;
    }
}

static void Pokedex_Sort_FirstLetter(int param0, u16 *param1, int *param2, const u16 *param3, int param4, int param5, const PokedexData *param6)
{
    u16 *pokedex_sorted_array;
    int pokedex_length;

    switch (param0) {
    case 0:
        pokedex_sorted_array = NULL;
        break;
    case 1:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 7, &pokedex_length);// ABC
        break;
    case 2:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 8, &pokedex_length);// DEF
        break;
    case 3:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 9, &pokedex_length);// GHI
        break;
    case 4:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 10, &pokedex_length);// JKL
        break;
    case 5:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 11, &pokedex_length);// MNO
        break;
    case 6:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 12, &pokedex_length);// PQR
        break;
    case 7:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 13, &pokedex_length);// STU
        break;
    case 8:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 14, &pokedex_length);// VWX
        break;
    case 9:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 15, &pokedex_length);// YZ
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (pokedex_sorted_array != NULL) {
        ov21_021D39E4(param1, param2, param3, param4, pokedex_sorted_array, pokedex_length, 1, param6);
        Heap_FreeToHeap(pokedex_sorted_array);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * param4);
        *param2 = param4;
    }
}

static void Pokedex_Sort_Type(int param0, u16 *param1, int *param2, const u16 *param3, int param4, int param5, const PokedexData *param6)
{
    u16 *pokedex_sorted_array;
    int pokedex_length;

    switch (param0) {
    case 0:
        pokedex_sorted_array = NULL;
        break;
    case 1:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 16, &pokedex_length);// normal
        break;
    case 2:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 17, &pokedex_length);// fighting
        break;
    case 3:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 18, &pokedex_length);// flying
        break;
    case 4:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 19, &pokedex_length);// poison
        break;
    case 5:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 20, &pokedex_length);// ground
        break;
    case 6:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 21, &pokedex_length);// rock
        break;
    case 7:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 22, &pokedex_length);// bug
        break;
    case 8:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 23, &pokedex_length);// ghost
        break;
    case 9:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 24, &pokedex_length);// steel
        break;
    case 10:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 25, &pokedex_length);// fire
        break;
    case 11:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 26, &pokedex_length);// water
        break;
    case 12:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 27, &pokedex_length);// grass
        break;
    case 13:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 28, &pokedex_length);// electric
        break;
    case 14:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 29, &pokedex_length);// psychic
        break;
    case 15:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 30, &pokedex_length);// ice
        break;
    case 16:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 31, &pokedex_length);// dragon
        break;
    case 17:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 32, &pokedex_length);// dark
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (pokedex_sorted_array != NULL) {
        ov21_021D39E4(param1, param2, param3, param4, pokedex_sorted_array, pokedex_length, 0, param6);
        Heap_FreeToHeap(pokedex_sorted_array);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * param4);
        *param2 = param4;
    }
}

static void Pokedex_Sort_BodyShape(int param0, u16 *param1, int *param2, const u16 *param3, int param4, int param5, const PokedexData *param6)
{
    u16 *pokedex_sorted_array;
    int pokedex_length;

    switch (param0) {
    case 0:
        pokedex_sorted_array = NULL;
        break;
    case 1:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 33, &pokedex_length);// quadruped
        break;
    case 2:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 34, &pokedex_length);// bidedal tailless
        break;
    case 3:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 35, &pokedex_length);// bipedal tailed
        break;
    case 4:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 36, &pokedex_length);// serpentine
        break;
    case 5:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 37, &pokedex_length);// multi winged
        break;
    case 6:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 38, &pokedex_length);// winged
        break;
    case 7:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 39, &pokedex_length);// insectoid
        break;
    case 8:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 40, &pokedex_length);// head base
        break;
    case 9:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 41, &pokedex_length);// head arms
        break;
    case 10:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 42, &pokedex_length);// head legs
        break;
    case 11:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 43, &pokedex_length);// tentacles
        break;
    case 12:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 44, &pokedex_length);// fins
        break;
    case 13:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 45, &pokedex_length);// head
        break;
    case 14:
        pokedex_sorted_array = Pokedex_Sorted_Array(param5, 46, &pokedex_length);// multi-body
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (pokedex_sorted_array != NULL) {
        ov21_021D39E4(param1, param2, param3, param4, pokedex_sorted_array, pokedex_length, 1, param6);
        Heap_FreeToHeap(pokedex_sorted_array);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * param4);
        *param2 = param4;
    }
}

static void ov21_021D3FA8(UnkStruct_ov21_021D3A60 *param0, int *param1, int *param2)
{
    int v0;

    *param1 = 0;
    *param2 = 0;

    for (v0 = 0; v0 < param0->unk_F6C; v0++) {
        if (param0->unk_00[v0].unk_04 == 2) {
            (*param2)++;
        }

        (*param1)++;
    }
}
