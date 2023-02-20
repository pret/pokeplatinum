#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay006/struct_ov6_02246204_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "overlay006/struct_ov6_02246254.h"

#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "heap.h"
#include "unk_02023790.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0202F180.h"
#include "map_header.h"
#include "unk_020559DC.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_02092494.h"
#include "overlay006/ov6_02246184.h"

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
    u32 unk_20;
    u32 unk_24;
    u32 unk_28;
    u32 unk_2C;
    u32 unk_30;
    u32 unk_34;
    u32 unk_38;
    u32 unk_3C;
    u32 unk_40;
    u32 unk_44;
    u32 unk_48;
    u32 unk_4C;
} UnkStruct_ov6_0224630C;

typedef struct UnkStruct_ov6_02246204_t {
    UnkStruct_ov6_0224630C * unk_00;
    Pokemon * unk_04;
    UnkStruct_02025E6C * unk_08;
    u32 unk_0C;
    u32 unk_10;
};

static UnkStruct_02023790 * ov6_022462E4(u32 param0, u32 param1);
static void ov6_0224630C(Pokemon * param0, UnkStruct_ov6_0224630C * param1, u32 param2, u32 param3, u32 param4, u32 param5);

UnkStruct_ov6_02246204 * ov6_02246184 (u32 param0, u32 param1)
{
    UnkStruct_ov6_02246204 * v0;
    UnkStruct_02023790 * v1;
    u16 v2[128];

    GF_ASSERT(param1 < 4);

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov6_02246204));
    memset(v0, 0, sizeof(UnkStruct_ov6_02246204));

    v0->unk_00 = sub_02006FE8(115, param1, 0, param0, 0);
    v0->unk_10 = param0;
    v0->unk_0C = param1;
    v0->unk_04 = sub_02073C74(param0);
    v0->unk_08 = sub_02025E6C(param0);

    sub_02025E8C(v0->unk_08);
    v1 = ov6_022462E4(param0, 4 + param1);

    sub_02023DF0(v1, v2, 128);
    sub_020237BC(v1);
    sub_02025EC0(v0->unk_08, v2);
    sub_02025F2C(v0->unk_08, v0->unk_00->unk_40);

    return v0;
}

void ov6_02246204 (UnkStruct_ov6_02246204 * param0)
{
    Heap_FreeToHeap(param0->unk_00);
    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0->unk_08);
    Heap_FreeToHeap(param0);
}

u32 ov6_02246224 (const UnkStruct_ov6_02246204 * param0)
{
    return param0->unk_00->unk_00;
}

u32 ov6_0224622C (const UnkStruct_ov6_02246204 * param0)
{
    return param0->unk_00->unk_4C;
}

void ov6_02246234 (UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02246204 * param1, int param2)
{
    Party * v0 = Party_GetFromSavedata(param0->unk_0C);

    sub_0207A128(v0, param2, param1->unk_04);
    sub_0202F180(param0->unk_0C, param1->unk_04);
}

void ov6_02246254 (UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02246204 * param1, int param2, UnkStruct_ov6_02246254 * param3, Pokemon * param4, Pokemon * param5)
{
    Party * v0 = Party_GetFromSavedata(param0->unk_0C);
    Pokemon * v1;
    UnkStruct_02023790 * v2;
    u32 v3;
    int v4;

    v1 = Party_GetPokemonBySlotIndex(v0, param2);
    v3 = sub_02074470(v1, 161, NULL);

    ov6_0224630C(param1->unk_04, param1->unk_00, v3, param1->unk_0C, param1->unk_10, param0->unk_1C->unk_00);

    sub_020775EC(v1, param4);
    sub_020775EC(param1->unk_04, param5);

    param3->unk_00 = sub_02076B10(param4);
    param3->unk_04 = sub_02076B10(param5);
    param3->unk_08 = param1->unk_08;
    param3->unk_10 = 1;
    param3->unk_14 = sub_02025E44(param0->unk_0C);

    v4 = sub_02055BA8(param0);

    if ((v4 == 0) || (v4 == 1)) {
        param3->unk_0C = 0;
    } else if (v4 == 2) {
        param3->unk_0C = 1;
    } else {
        param3->unk_0C = 2;
    }
}

static UnkStruct_02023790 * ov6_022462E4 (u32 param0, u32 param1)
{
    UnkStruct_02023790 * v0;
    UnkStruct_0200B144 * v1 = sub_0200B144(0, 26, 370, param0);

    v0 = sub_0200B1EC(v1, param1);
    sub_0200B190(v1);
    return v0;
}

static void ov6_0224630C (Pokemon * param0, UnkStruct_ov6_0224630C * param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    UnkStruct_02023790 * v0;
    u8 v1;
    u32 v2;

    sub_02073D80(param0, param1->unk_00, param2, 32, 1, param1->unk_38, 1, param1->unk_20);

    v0 = ov6_022462E4(param4, param3);

    sub_02074B30(param0, 119, v0);
    sub_020237BC(v0);

    v1 = 1;

    sub_02074B30(param0, 77, &v1);
    sub_02074B30(param0, 70, &param1->unk_04);
    sub_02074B30(param0, 71, &param1->unk_08);
    sub_02074B30(param0, 72, &param1->unk_0C);
    sub_02074B30(param0, 73, &param1->unk_10);
    sub_02074B30(param0, 74, &param1->unk_14);
    sub_02074B30(param0, 75, &param1->unk_18);
    sub_02074B30(param0, 19, &param1->unk_24);
    sub_02074B30(param0, 20, &param1->unk_28);
    sub_02074B30(param0, 21, &param1->unk_2C);
    sub_02074B30(param0, 22, &param1->unk_30);
    sub_02074B30(param0, 23, &param1->unk_34);
    sub_02074B30(param0, 6, &param1->unk_3C);

    v0 = ov6_022462E4(param4, 4 + param3);

    sub_02074B30(param0, 145, v0);
    sub_020237BC(v0);
    sub_02074B30(param0, 157, &param1->unk_40);
    sub_02074B30(param0, 12, &param1->unk_48);

    v2 = sub_0203A138(param5);

    sub_0209304C(param0, NULL, 1, v2, param4);
    sub_0207418C(param0);

    GF_ASSERT(sub_02075E0C(param0) == 0);
}
