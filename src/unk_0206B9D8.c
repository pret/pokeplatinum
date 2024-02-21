#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_0202D060_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020F1E88.h"
#include "constdata/const_020F410C.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0206BC70.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/pokemon_summary.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "unk_0202854C.h"
#include "unk_0202B37C.h"
#include "unk_0202D05C.h"
#include "unk_0202D778.h"
#include "unk_0203061C.h"
#include "unk_02034198.h"
#include "unk_020363E8.h"
#include "unk_02038FFC.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_0203E880.h"
#include "unk_0204AEE8.h"
#include "unk_020508D4.h"
#include "unk_0206B9D8.h"
#include "party.h"
#include "unk_0207A274.h"
#include "unk_0207D3B8.h"
#include "pokemon_summary_app.h"

typedef struct {
    int unk_00;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E[6];
    void ** unk_14;
} UnkStruct_0206B9D8;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_0206BC70 * unk_08;
    u16 ** unk_0C;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
} UnkStruct_0206BC48;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0206BD88;

static int sub_0206B9D8 (UnkStruct_0206B9D8 * param0, UnkStruct_0203CDB0 * param1, int param2)
{
    u8 v0;
    SaveData * v1;
    PartyManagementData * v2 = Heap_AllocFromHeapAtEnd(param2, sizeof(PartyManagementData));

    v1 = param1->unk_0C;
    MI_CpuClear8(v2, sizeof(PartyManagementData));

    v2->unk_0C = sub_02025E44(v1);
    v2->unk_00 = Party_GetFromSavedata(v1);
    v2->unk_04 = sub_0207D990(v1);
    v2->unk_21 = 0;
    v2->unk_20 = param0->unk_08;
    v2->unk_32_0 = param0->unk_0A;
    v2->unk_32_4 = param0->unk_0B;
    v2->unk_33 = param0->unk_0C;
    v2->unk_22 = param0->unk_0D;

    for (v0 = 0; v0 < 6; v0++) {
        v2->unk_2C[v0] = param0->unk_0E[v0];
    }

    sub_0203CD84(param1, &Unk_020F1E88, v2);

    *(param0->unk_14) = v2;
    return 1;
}

static int sub_0206BA84 (UnkStruct_0206B9D8 * param0, UnkStruct_0203CDB0 * param1)
{
    int v0;
    PartyManagementData * v1;

    if (sub_020509B4(param1)) {
        return 1;
    }

    v1 = *(param0->unk_14);

    switch (v1->unk_22) {
    case 7:
        param0->unk_00 = 0;
        return 4;
    case 6:
        param0->unk_00 = 1;
        return 4;
    default:
        break;
    }

    MI_CpuCopy8(v1->unk_2C, param0->unk_0E, 6);
    param0->unk_0D = v1->unk_22;
    Heap_FreeToHeap(v1);
    *(param0->unk_14) = NULL;

    return 2;
}

static int sub_0206BAE0 (UnkStruct_0206B9D8 * param0, UnkStruct_0203CDB0 * param1, int param2)
{
    PokemonSummary * v0;
    SaveData * v1;
    static const u8 v2[] = {
        0, 1, 2, 4, 3, 5, 6, 7, 8
    };

    v1 = param1->unk_0C;
    v0 = Heap_AllocFromHeapAtEnd(param2, sizeof(PokemonSummary));
    MI_CpuClear8(v0, sizeof(PokemonSummary));

    v0->options = sub_02025E44(v1);
    v0->monData = Party_GetFromSavedata(v1);
    v0->dexMode = sub_0207A274(v1);
    v0->contest = PokemonSummary_ShowContestData(v1);
    v0->dataType = 1;
    v0->pos = param0->unk_0D;
    v0->max = (u8)Party_GetCurrentCount(v0->monData);
    v0->move = 0;
    v0->mode = param0->unk_09;
    v0->ribbons = sub_0202D79C(v1);

    PokemonSummary_FlagVisiblePages(v0, v2);
    PokemonSummary_SetPlayerProfile(v0, sub_02025E38(v1));
    sub_0203CD84(param1, &Unk_020F410C, v0);
    *(param0->unk_14) = v0;

    return 3;
}

static int sub_0206BB6C (UnkStruct_0206B9D8 * param0, UnkStruct_0203CDB0 * param1)
{
    PokemonSummary * v0;

    if (sub_020509B4(param1)) {
        return 3;
    }

    v0 = *(param0->unk_14);
    param0->unk_0D = v0->pos;
    Heap_FreeToHeap(v0);
    *(param0->unk_14) = NULL;

    return 0;
}

static BOOL sub_0206BB94 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0206B9D8 * v1 = sub_02050A64(param0);

    switch (v1->unk_04) {
    case 0:
        v1->unk_04 = sub_0206B9D8(v1, v0, 11);
        break;
    case 1:
        v1->unk_04 = sub_0206BA84(v1, v0);
        break;
    case 2:
        v1->unk_04 = sub_0206BAE0(v1, v0, 11);
        break;
    case 3:
        v1->unk_04 = sub_0206BB6C(v1, v0);
        break;
    case 4:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_0206BBFC (UnkStruct_020508D4 * param0, void ** param1, u8 param2, u8 param3, u8 param4, u8 param5, u8 param6, u8 param7)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0206B9D8 * v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0206B9D8));

    MI_CpuClear8(v1, sizeof(UnkStruct_0206B9D8));

    v1->unk_08 = param2;
    v1->unk_09 = param3;
    v1->unk_0A = param4;
    v1->unk_0B = param5;
    v1->unk_0C = param6;
    v1->unk_0D = param7;
    v1->unk_14 = param1;

    sub_02050944(v0->unk_10, sub_0206BB94, v1);
}

static int sub_0206BC48 (UnkStruct_0206BC48 * param0, UnkStruct_0203CDB0 * param1)
{
    SaveData * v0;

    if (sub_02039074(param1->unk_0C)) {
        param0->unk_08 = sub_0203E1AC(param1, param0->unk_12, param0->unk_14);
        return 1;
    } else {
        param0->unk_00 = 1;
        return 2;
    }
}

static int sub_0206BC70 (UnkStruct_0206BC48 * param0, UnkStruct_0203CDB0 * param1)
{
    u8 v0;
    UnkStruct_0206BC70 * v1;

    if (sub_020509B4(param1)) {
        return 1;
    }

    param0->unk_00 = param0->unk_08->unk_20;
    Heap_FreeToHeap(param0->unk_08);

    return 2;
}

static BOOL sub_0206BC94 (UnkStruct_020508D4 * param0)
{
    u16 * v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_0206BC48 * v2 = sub_02050A64(param0);

    switch (v2->unk_04) {
    case 0:
        v2->unk_04 = sub_0206BC48(v2, v1);
        break;
    case 1:
        v2->unk_04 = sub_0206BC70(v2, v1);
        break;
    case 2:
        v0 = sub_0203F118(v1, v2->unk_10);
        *v0 = v2->unk_00;
        Heap_FreeToHeap(v2);
        return 1;
    }

    return 0;
}

void sub_0206BCE4 (UnkStruct_020508D4 * param0, u16 param1, u16 param2, u16 param3)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0206BC48 * v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0206BC48));

    MI_CpuClear8(v1, sizeof(UnkStruct_0206BC48));

    v1->unk_12 = param1;
    v1->unk_14 = param3;
    v1->unk_10 = param2;

    sub_02050944(v0->unk_10, sub_0206BC94, v1);
}

static BOOL sub_0206BD1C (UnkStruct_020508D4 * param0)
{
    u16 * v0;
    const void * v1;
    UnkStruct_0203CDB0 * v2 = sub_02050A60(param0);
    UnkStruct_0206BD88 * v3 = sub_02050A64(param0);

    v1 = sub_0203664C(1 - sub_0203608C());

    if (v1 == NULL) {
        return 0;
    }

    v0 = sub_0203F118(v2, v3->unk_02);

    switch (v3->unk_00) {
    case 0:
        *v0 = sub_0204AFC4(v2, v1);
        break;
    case 1:
        *v0 = sub_0204B020(v2, v1);
        break;
    case 2:
        *v0 = sub_0204B044(v2, v1);
    }

    Heap_FreeToHeap(v3);
    return 1;
}

void sub_0206BD88 (UnkStruct_020508D4 * param0, u16 param1, u16 param2)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0206BD88 * v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0206BD88));

    MI_CpuClear8(v1, sizeof(UnkStruct_0206BD88));

    v1->unk_00 = param1;
    v1->unk_02 = param2;

    sub_02050944(v0->unk_10, sub_0206BD1C, v1);
}

u16 sub_0206BDBC (SaveData * param0)
{
    UnkStruct_0203068C * v0;
    UnkStruct_0202D750 * v1;
    UnkStruct_020298B0 * v2;
    u16 v3;
    u8 v4, v5, v6, v7, v8, v9;

    v0 = sub_0203068C(param0);
    v3 = sub_02030698(v0, 0, 0xff);

    if (v3 < 20) {
        return 0;
    }

    v1 = sub_0202D750(param0);
    v4 = sub_0202D414(v1, 13, 0);
    v5 = sub_0202D414(v1, 0, 0);
    v6 = sub_0202D414(v1, 1, 0);
    v7 = sub_0202D414(v1, 14, 0);
    v8 = sub_0202D414(v1, 2, 0);
    v9 = sub_0202D414(v1, 3, 0);

    if (v4 && v5 && v6) {
        return 0;
    }

    v2 = sub_020298B0(param0);

    if (!v4) {
        if (sub_02028984(v2, 85)) {
            sub_0202D414(v1, 13, 1);
            return 1;
        } else {
            if (!v7) {
                sub_0202D414(v1, 14, 1);
            }

            return 4;
        }
    }

    if (v3 < 50) {
        return 0;
    }

    if (!v5) {
        if (sub_02028984(v2, 86)) {
            sub_0202D414(v1, 0, 1);
            return 2;
        } else {
            if (!v8) {
                sub_0202D414(v1, 2, 1);
            }

            return 4;
        }
    }

    if ((v3 < 100) || (v6)) {
        return 0;
    }

    if (sub_02028984(v2, 87)) {
        sub_0202D414(v1, 1, 1);
        return 3;
    } else {
        if (!v9) {
            sub_0202D414(v1, 3, 1);
        }

        return 4;
    }
}

u16 sub_0206BF04 (SaveData * param0)
{
    UnkStruct_0203068C * v0;
    UnkStruct_0202D750 * v1;
    u16 v2;
    u8 v3, v4, v5, v6, v7, v8;

    v0 = sub_0203068C(param0);
    v2 = sub_02030698(v0, 0, 0xff);

    if (v2 < 20) {
        return 0;
    }

    v1 = sub_0202D750(param0);
    v3 = sub_0202D414(v1, 13, 0);
    v4 = sub_0202D414(v1, 0, 0);
    v5 = sub_0202D414(v1, 1, 0);
    v6 = sub_0202D414(v1, 14, 0);
    v7 = sub_0202D414(v1, 2, 0);
    v8 = sub_0202D414(v1, 3, 0);

    if (v3 && v4 && v5) {
        return 0;
    }

    if (!v3) {
        if (v6) {
            return 4;
        }

        return 1;
    }

    if (v2 < 50) {
        return 0;
    }

    if (!v4) {
        if (v7) {
            return 5;
        }

        return 2;
    }

    if (v2 < 100) {
        return 0;
    }

    if (v5) {
        return 0;
    }

    if (v8) {
        return 6;
    }

    return 3;
}

u32 sub_0206BFF0 (u32 param0)
{
    return param0 * 48828125L + 1;
}

u32 sub_0206BFFC (u32 param0)
{
    return param0 * 1566083941 + 1;
}

u32 sub_0206C008 (SaveData * param0)
{
    u32 v0;

    v0 = sub_0202B428(sub_0202B4A0(param0));
    v0 = sub_0206BFFC(v0);

    sub_0202D470(sub_0202D750(param0), v0);

    return v0;
}

u32 sub_0206C02C (SaveData * param0)
{
    u32 v0, v1;
    UnkStruct_0202D750 * v2 = sub_0202D750(param0);

    v1 = sub_0202D474(v2);
    v1 = sub_0206BFFC(v1);

    sub_0202D470(v2, v1);
    v0 = sub_0206BFF0(v1);
    sub_0202D140(sub_0202D740(param0), 10, &v0);

    return v0;
}

u32 sub_0206C068 (SaveData * param0)
{
    int v0, v1;
    u32 v2, v3;
    UnkStruct_0202D750 * v4 = sub_0202D750(param0);
    UnkStruct_0202D060 * v5 = sub_0202D740(param0);

    v3 = sub_0202D474(v4);
    v2 = sub_0206BFF0(v3);
    v1 = sub_0202D3B4(v4, sub_0202D0BC(v5, 0, NULL), 0);
    v1 *= 24;

    for (v0 = 0; v0 < v1; v0++) {
        v2 = sub_0206BFF0(v2);
    }

    sub_0202D140(sub_0202D740(param0), 10, &v2);

    return v2;
}

BOOL sub_0206C0D0 (UnkStruct_0203CDB0 * param0)
{
    if (param0->unk_1C->unk_00 == SPECIES_ARCEUS) {
        return 1;
    }

    return 0;
}
