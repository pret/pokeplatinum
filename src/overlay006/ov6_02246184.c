#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_party_decl.h"
#include "overlay006/struct_ov6_02246204_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "overlay006/struct_ov6_02246254.h"

#include "unk_02006E3C.h"
#include "message.h"
#include "heap.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202F180.h"
#include "map_header.h"
#include "unk_020559DC.h"
#include "pokemon.h"
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
    TrainerInfo * unk_08;
    u32 unk_0C;
    u32 unk_10;
};

static Strbuf* ov6_022462E4(u32 param0, u32 param1);
static void ov6_0224630C(Pokemon * param0, UnkStruct_ov6_0224630C * param1, u32 param2, u32 param3, u32 param4, u32 param5);

UnkStruct_ov6_02246204 * ov6_02246184 (u32 param0, u32 param1)
{
    UnkStruct_ov6_02246204 * v0;
    Strbuf* v1;
    u16 v2[128];

    GF_ASSERT(param1 < 4);

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov6_02246204));
    memset(v0, 0, sizeof(UnkStruct_ov6_02246204));

    v0->unk_00 = sub_02006FE8(115, param1, 0, param0, 0);
    v0->unk_10 = param0;
    v0->unk_0C = param1;
    v0->unk_04 = Pokemon_New(param0);
    v0->unk_08 = TrainerInfo_New(param0);

    TrainerInfo_Init(v0->unk_08);
    v1 = ov6_022462E4(param0, 4 + param1);

    Strbuf_ToChars(v1, v2, 128);
    Strbuf_Free(v1);
    TrainerInfo_SetName(v0->unk_08, v2);
    TrainerInfo_SetGender(v0->unk_08, v0->unk_00->unk_40);

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
    Strbuf* v2;
    u32 v3;
    int v4;

    v1 = Party_GetPokemonBySlotIndex(v0, param2);
    v3 = Pokemon_GetValue(v1, MON_DATA_LEVEL, NULL);

    ov6_0224630C(param1->unk_04, param1->unk_00, v3, param1->unk_0C, param1->unk_10, param0->unk_1C->unk_00);

    Pokemon_Copy(v1, param4);
    Pokemon_Copy(param1->unk_04, param5);

    param3->unk_00 = Pokemon_GetBoxPokemon(param4);
    param3->unk_04 = Pokemon_GetBoxPokemon(param5);
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

static Strbuf* ov6_022462E4 (u32 param0, u32 param1)
{
    Strbuf* v0;
    MessageLoader * v1 = MessageLoader_Init(0, 26, 370, param0);

    v0 = MessageLoader_GetNewStrbuf(v1, param1);
    MessageLoader_Free(v1);
    return v0;
}

static void ov6_0224630C (Pokemon * param0, UnkStruct_ov6_0224630C * param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    Strbuf* v0;
    u8 v1;
    u32 v2;

    Pokemon_InitWith(param0, param1->unk_00, param2, 32, 1, param1->unk_38, 1, param1->unk_20);

    v0 = ov6_022462E4(param4, param3);

    Pokemon_SetValue(param0, 119, v0);
    Strbuf_Free(v0);

    v1 = 1;

    Pokemon_SetValue(param0, 77, &v1);
    Pokemon_SetValue(param0, 70, &param1->unk_04);
    Pokemon_SetValue(param0, 71, &param1->unk_08);
    Pokemon_SetValue(param0, 72, &param1->unk_0C);
    Pokemon_SetValue(param0, 73, &param1->unk_10);
    Pokemon_SetValue(param0, 74, &param1->unk_14);
    Pokemon_SetValue(param0, 75, &param1->unk_18);
    Pokemon_SetValue(param0, 19, &param1->unk_24);
    Pokemon_SetValue(param0, 20, &param1->unk_28);
    Pokemon_SetValue(param0, 21, &param1->unk_2C);
    Pokemon_SetValue(param0, 22, &param1->unk_30);
    Pokemon_SetValue(param0, 23, &param1->unk_34);
    Pokemon_SetValue(param0, 6, &param1->unk_3C);

    v0 = ov6_022462E4(param4, 4 + param3);

    Pokemon_SetValue(param0, 145, v0);
    Strbuf_Free(v0);
    Pokemon_SetValue(param0, 157, &param1->unk_40);
    Pokemon_SetValue(param0, 12, &param1->unk_48);

    v2 = sub_0203A138(param5);

    sub_0209304C(param0, NULL, 1, v2, param4);
    Pokemon_CalcLevelAndStats(param0);

    GF_ASSERT(Pokemon_IsShiny(param0) == 0);
}
