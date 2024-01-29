#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020F1E88.h"
#include "constdata/const_020F410C.h"
#include "constdata/const_020F6890.h"

#include "struct_defs/struct_0202A93C.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_020989DC.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/struct_02098D38.h"
#include "struct_defs/struct_02098DE8.h"

#include "unk_020067E8.h"
#include "unk_0200B358.h"
#include "heap.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "poffin.h"
#include "pokemon.h"
#include "party.h"
#include "unk_0207D3B8.h"
#include "unk_0208C324.h"
#include "unk_020989DC.h"
#include "overlay079/ov79_021D0D80.h"
#include "overlay079/ov79_021D2268.h"

FS_EXTERN_OVERLAY(overlay79);

static const u8 Unk_020F685C[][2] = {
    { 0x5, 0x5 },
    { 0x0, 0x4 },
    { 0x0, 0x2 },
    { 0x0, 0x1 },
    { 0x0, 0x3 },
    { 0x4, 0x0 },
    { 0x5, 0x5 },
    { 0x4, 0x2 },
    { 0x4, 0x1 },
    { 0x4, 0x3 },
    { 0x2, 0x0 },
    { 0x2, 0x4 },
    { 0x5, 0x5 },
    { 0x2, 0x1 },
    { 0x2, 0x3 },
    { 0x1, 0x0 },
    { 0x1, 0x4 },
    { 0x1, 0x2 },
    { 0x5, 0x5 },
    { 0x1, 0x3 },
    { 0x3, 0x0 },
    { 0x3, 0x4 },
    { 0x3, 0x2 },
    { 0x3, 0x1 },
    { 0x5, 0x5 }
};

typedef struct {
    int unk_00;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u16 unk_0A;
    UnkStruct_0203D9B8 * unk_0C;
    void * unk_10;
    UnkStruct_020067E8 * unk_14;
} UnkStruct_02098BE4;

static int sub_02098B1C(UnkStruct_020067E8 * param0, int * param1);
static int sub_02098B50(UnkStruct_020067E8 * param0, int * param1);
static int sub_02098BC4(UnkStruct_020067E8 * param0, int * param1);
static void sub_02098BE4(UnkStruct_02098BE4 * param0);
static int sub_02098C2C(UnkStruct_02098BE4 * param0);
static int sub_02098C44(UnkStruct_02098BE4 * param0);
static int sub_02098CB0(UnkStruct_02098BE4 * param0);
static int sub_02098D38(UnkStruct_02098BE4 * param0);
static int sub_02098D7C(UnkStruct_02098BE4 * param0);
static int sub_02098DE8(UnkStruct_02098BE4 * param0);
static int sub_02098E0C(UnkStruct_02098BE4 * param0);
static int sub_02098E88(UnkStruct_02098BE4 * param0);

const UnkStruct_0208BE5C Unk_020F6890 = {
    sub_02098B1C,
    sub_02098B50,
    sub_02098BC4,
    0xFFFFFFFF
};

UnkStruct_0203D9B8 * sub_020989DC (SaveData * param0, int param1)
{
    UnkStruct_0203D9B8 * v0;
    Poffin * v1;
    UnkStruct_020989DC * v2;
    UnkStruct_0200B358 * v3;
    u8 v4[7];
    u8 v5 = 0, v6 = 0, v7 = 0;
    u8 v8 = 0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0203D9B8));
    MI_CpuClear8(v0, sizeof(UnkStruct_0203D9B8));

    v0->unk_08 = Poffin_GetSavedataBlock(param0);
    v0->unk_0C = sub_02025E38(param0);
    v0->unk_10 = Party_GetFromSavedata(param0);
    v0->unk_14 = sub_0207D990(param0);
    v0->unk_18 = sub_02025E44(param0);

    v1 = Poffin_malloc(param1);
    v3 = sub_0200B368(1, 32, param1);

    for (v5 = 0; v5 < 100; v5++) {
        sub_0202AC54(v0->unk_08, v5, v1);

        if (!sub_0202A914(v1)) {
            continue;
        }

        Poffin_StoreAttributesToArray(v1, v4);

        v2 = &(v0->unk_1C[v6]);

        v2->unk_00 = v5;
        v2->unk_01 = Poffin_CalcLevel(v1);
        v2->unk_02 = v4[0];
        v2->unk_03 = v4[6];

        v8 = 1;

        for (v7 = 0; v7 < 5; v7++) {
            if (v4[v7 + 1]) {
                v2->unk_20_val2 |= v8;
            }

            v8 <<= 1;
        }

        v2->unk_04_val1_7 = v2->unk_04_val1_5 = 1;
        v2->unk_05 = v6++;
        v2->unk_07 = v2->unk_06 = 0xFF;
    }

    sub_0200B3F0(v3);
    Heap_FreeToHeap(v1);

    v0->unk_00 = v6;
    v0->unk_03 = 5;

    return v0;
}

void sub_02098AF0 (UnkStruct_0203D9B8 * param0)
{
    int v0;
    Heap_FreeToHeap(param0);
}

static BOOL sub_02098AF8 (UnkStruct_020067E8 ** param0)
{
    if (*param0) {
        if (sub_02006844(*param0)) {
            sub_02006814(*param0);
            *param0 = NULL;
            return 1;
        }
    }

    return 0;
}

static int sub_02098B1C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02098BE4 * v0 = NULL;
    void * v1 = sub_02006840(param0);

    Heap_Create(3, 44, 0x1000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_02098BE4), 44);
    MI_CpuClear8(v0, sizeof(UnkStruct_02098BE4));

    v0->unk_00 = 44;
    v0->unk_0C = v1;

    return 1;
}

static int sub_02098B50 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02098BE4 * v0 = (UnkStruct_02098BE4 *)sub_0200682C(param0);

    switch (*param1) {
    case 0:
        *param1 = sub_02098C2C(v0);
        break;
    case 1:
        *param1 = sub_02098C44(v0);
        break;
    case 2:
        *param1 = sub_02098CB0(v0);
        break;
    case 3:
        *param1 = sub_02098D38(v0);
        break;
    case 4:
        *param1 = sub_02098D7C(v0);
        break;
    case 5:
        *param1 = sub_02098DE8(v0);
        break;
    case 6:
        *param1 = sub_02098E0C(v0);
        break;
    case 7:
        *param1 = sub_02098E88(v0);
        break;
    case 8:
        return 1;
    }

    return 0;
}

static int  sub_02098BC4 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02098BE4 * v0 = (UnkStruct_02098BE4 *)sub_0200682C(param0);

    sub_02098BE4(v0);
    sub_02006830(param0);
    Heap_Destroy(v0->unk_00);

    return 1;
}

static void sub_02098BE4 (UnkStruct_02098BE4 * param0)
{
    u8 v0 = 0, v1 = 0;
    UnkStruct_020989DC * v2;

    for (v0 = 0; v0 < param0->unk_0C->unk_00; v0++) {
        v2 = &param0->unk_0C->unk_1C[v0];

        if (v2->unk_04_val1_6) {
            sub_0202AB98(param0->unk_0C->unk_08, v2->unk_00);
            v1 = 1;
        }
    }

    if (!v1) {
        return;
    }

    sub_0202ABD4(param0->unk_0C->unk_08);
}

static int sub_02098C2C (UnkStruct_02098BE4 * param0)
{
    FS_EXTERN_OVERLAY(overlay79);

    static const UnkStruct_0208BE5C v0 = {
        ov79_021D0D80,
        ov79_021D0DC4,
        ov79_021D0DDC,
        FS_OVERLAY_ID(overlay79),
    };

    param0->unk_14 = sub_020067E8(&v0, param0->unk_0C, param0->unk_00);
    return 1;
}

static int sub_02098C44 (UnkStruct_02098BE4 * param0)
{
    PartyManagementData * v0;

    if (!sub_02098AF8(&param0->unk_14)) {
        return 1;
    }

    if (param0->unk_0C->unk_02 == 0) {
        return 8;
    }

    param0->unk_0C->unk_02 = 0;

    v0 = Heap_AllocFromHeap(param0->unk_00, sizeof(PartyManagementData));
    MI_CpuClear8(v0, sizeof(PartyManagementData));
    v0->unk_00 = param0->unk_0C->unk_10;
    v0->unk_04 = param0->unk_0C->unk_14;
    v0->unk_21 = 0;
    v0->unk_20 = 20;
    v0->unk_0C = param0->unk_0C->unk_18;

    param0->unk_14 = sub_020067E8(&Unk_020F1E88, v0, param0->unk_00);
    param0->unk_10 = (void *)v0;

    return 2;
}

static int sub_02098CB0 (UnkStruct_02098BE4 * param0)
{
    u8 v0;
    PartyManagementData * v1;
    UnkStruct_02098D38 * v2;
    static const u8 v3[] = {
        4, 7, 8
    };

    if (!sub_02098AF8(&param0->unk_14)) {
        return 2;
    }

    v1 = (PartyManagementData *)param0->unk_10;
    v0 = v1->unk_22;
    param0->unk_08 = v0;
    Heap_FreeToHeap(param0->unk_10);

    if (v0 == 7) {
        return 0;
    }

    v2 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_02098D38));

    v2->unk_00 = param0->unk_0C->unk_10;
    v2->unk_04 = param0->unk_0C->unk_18;
    v2->unk_11 = 1;
    v2->unk_14 = v0;
    v2->unk_13 = (u8)Party_GetCurrentCount(v2->unk_00);
    v2->unk_18 = 0;
    v2->unk_12 = 3;
    v2->unk_2C = 1;
    v2->unk_28 = NULL;

    sub_0208D720(v2, v3);
    sub_0208E9C0(v2, param0->unk_0C->unk_0C);

    param0->unk_14 = sub_020067E8(&Unk_020F410C, v1, param0->unk_00);
    param0->unk_10 = (void *)v2;

    return 3;
}

static int sub_02098D38 (UnkStruct_02098BE4 * param0)
{
    UnkStruct_02098D38 * v0;
    u8 v1;

    if (!sub_02098AF8(&param0->unk_14)) {
        return 3;
    }

    v0 = (UnkStruct_02098D38 *)param0->unk_10;
    v1 = v0->unk_17;

    param0->unk_08 = v0->unk_14;

    Heap_FreeToHeap(param0->unk_10);

    if (v1 == 1) {
        return 0;
    }

    param0->unk_0C->unk_1C[param0->unk_0C->unk_01].unk_04_val1_6 = 1;
    param0->unk_0C->unk_02 = 1;

    return 4;
}

static int sub_02098D7C (UnkStruct_02098BE4 * param0)
{
    FS_EXTERN_OVERLAY(overlay79);

    static const UnkStruct_0208BE5C v0 = {
        ov79_021D22AC,
        ov79_021D22E4,
        ov79_021D2460,
        FS_OVERLAY_ID(overlay79),
    };
    UnkStruct_02098DE8 * v1;

    v1 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_02098DE8));
    MI_CpuClear8(v1, sizeof(UnkStruct_02098DE8));

    v1->unk_08 = param0->unk_0C->unk_1C[param0->unk_0C->unk_01].unk_02;
    v1->unk_04 = sub_0202AC70(param0->unk_0C->unk_08, param0->unk_0C->unk_1C[param0->unk_0C->unk_01].unk_00, param0->unk_00);
    v1->unk_00 = Party_GetPokemonBySlotIndex(param0->unk_0C->unk_10, param0->unk_08);
    v1->unk_0A = sub_02027AC0(param0->unk_0C->unk_18);
    v1->unk_0B = sub_02027B50(param0->unk_0C->unk_18);

    param0->unk_14 = sub_020067E8(&v0, v1, param0->unk_00);
    param0->unk_10 = v1;

    return 5;
}

static int sub_02098DE8 (UnkStruct_02098BE4 * param0)
{
    UnkStruct_02098DE8 * v0;

    if (!sub_02098AF8(&param0->unk_14)) {
        return 5;
    }

    v0 = (UnkStruct_02098DE8 *)param0->unk_10;

    Heap_FreeToHeap(v0->unk_04);
    Heap_FreeToHeap(v0);

    return 6;
}

static int sub_02098E0C (UnkStruct_02098BE4 * param0)
{
    u8 v0;
    UnkStruct_02098D38 * v1;
    Poffin * v2;
    static const u8 v3[] = {
        4, 8
    };

    v1 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_02098D38));
    v2 = sub_0202AC70(param0->unk_0C->unk_08, param0->unk_0C->unk_1C[param0->unk_0C->unk_01].unk_00, param0->unk_00);

    v1->unk_00 = param0->unk_0C->unk_10;
    v1->unk_04 = param0->unk_0C->unk_18;
    v1->unk_11 = 1;
    v1->unk_14 = param0->unk_08;
    v1->unk_13 = (u8)Party_GetCurrentCount(v1->unk_00);
    v1->unk_18 = 0;
    v1->unk_12 = 4;
    v1->unk_24 = v2;
    v1->unk_2C = 1;
    v1->unk_28 = NULL;

    sub_0208D720(v1, v3);
    sub_0208E9C0(v1, param0->unk_0C->unk_0C);

    param0->unk_14 = sub_020067E8(&Unk_020F410C, v1, param0->unk_00);
    param0->unk_10 = (void *)v1;

    return 7;
}

static int sub_02098E88 (UnkStruct_02098BE4 * param0)
{
    u8 v0;
    UnkStruct_02098D38 * v1;
    Poffin * v2;

    if (!sub_02098AF8(&param0->unk_14)) {
        return 7;
    }

    v1 = (UnkStruct_02098D38 *)param0->unk_10;
    Heap_FreeToHeap(v1->unk_24);
    Heap_FreeToHeap(param0->unk_10);

    return 0;
}

UnkEnum_02098EAC sub_02098EAC (Poffin * param0, u8 param1)
{
    u8 v0[7];
    u8 v1, v2, v3;
    u8 v4, v5;

    v4 = Unk_020F685C[param1][0];
    v5 = Unk_020F685C[param1][1];

    if (v4 == 5) {
        return 2;
    }

    Poffin_StoreAttributesToArray(param0, v0);

    v1 = v0[0];
    v2 = v0[v4 + 1];
    v3 = v0[v5 + 1];

    if (v2 == v3) {
        return 2;
    }

    if (v2 > v3) {
        return 0;
    } else {
        return 1;
    }
}

void sub_02098EF8 (Poffin * param0, Pokemon * param1)
{
    u8 v0, v1;
    u8 v2, v3;
    u8 v4, v5;
    float v6;
    int v7[6];
    u8 v8[7];
    u8 v9[7];

    v2 = Pokemon_GetNature(param1);
    v4 = Unk_020F685C[v2][0];
    v5 = Unk_020F685C[v2][1];

    Poffin_StoreAttributesToArray(param0, v8);

    for (v0 = 0; v0 < 6; v0++) {
        v7[v0] = Pokemon_GetValue(param1, MON_DATA_COOL + v0, NULL);
    }

    v1 = 0;

    for (v0 = 1; v0 <= 6; v0++) {
        v9[v1++] = v8[v0];
    }

    if (v4 != 5) {
        v6 = (float)v9[v4] * 1.1f;
        v9[v4] = (u8)v6;
        v6 = (float)v9[v5] * 0.9f;
        v9[v5] = (u8)v6;
    }

    for (v0 = 0; v0 < 6; v0++) {
        v7[v0] += v9[v0];

        if (v7[v0] > 255) {
            v7[v0] = 255;
        }

        Pokemon_SetValue(param1, 19 + v0, &v7[v0]);
    }

    v3 = Pokemon_GetValue(param1, MON_DATA_FRIENDSHIP, NULL);

    if (v3 < 255) {
        ++v3;
        Pokemon_SetValue(param1, 9, &v3);
    }
}
