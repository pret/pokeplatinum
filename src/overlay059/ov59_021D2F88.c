#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "struct_decls/struct_0202E8C0_decl.h"
#include "savedata.h"

#include "overlay059/struct_ov59_021D30E0.h"
#include "overlay096/struct_ov96_0223B450_sub1.h"

#include "heap.h"
#include "savedata/save_table.h"
#include "unk_020298BC.h"
#include "unk_0202B37C.h"
#include "unk_0202D05C.h"
#include "unk_0202E2CC.h"
#include "unk_0202E840.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_02073700.h"
#include "overlay059/ov59_021D2A2C.h"
#include "overlay059/ov59_021D2B44.h"
#include "overlay059/ov59_021D2F88.h"

typedef struct {
    int unk_00;
    SaveData * unk_04;
    int unk_08;
    int unk_0C;
    const void ** unk_10;
    const void ** unk_14;
} UnkStruct_ov59_021D2FBC;

typedef u32 (* UnkFuncPtr_ov59_021D33FC)(SaveData *);
typedef void *(* UnkFuncPtr_ov59_021D33FC_1)(SaveData *, int, u32);
typedef void (* UnkFuncPtr_ov59_021D33FC_2)(const UnkStruct_ov59_021D2FBC *);

typedef struct {
    UnkFuncPtr_ov59_021D33FC unk_00;
    UnkFuncPtr_ov59_021D33FC_1 unk_04;
    UnkFuncPtr_ov59_021D33FC_2 unk_08;
} UnkStruct_ov59_021D33FC;

static u32 ov59_021D2F88 (SaveData * param0)
{
    UnkStruct_0202B4A0 * v0 = sub_0202B4A0(param0);
    return ov59_021D2A2C(v0);
}

static void * ov59_021D2F94 (SaveData * param0, int param1, u32 param2)
{
    UnkStruct_0202B4A0 * v0 = sub_0202B4A0(param0);
    void * v1 = Heap_AllocFromHeapAtEnd(param1, param2);

    MI_CpuCopyFast(ov59_021D2A30(v0), v1, param2);

    return v1;
}

static void ov59_021D2FBC (const UnkStruct_ov59_021D2FBC * param0)
{
    UnkStruct_0202B4A0 * v0 = sub_0202B4A0(param0->unk_04);
    ov59_021D2AC4(param0->unk_08, param0->unk_0C, v0, param0->unk_10);
}

static u32 ov59_021D2FD4 (SaveData * param0)
{
    UnkStruct_0202A750 * v0 = sub_0202A750(param0);
    return sub_02029C60();
}

static void * ov59_021D2FE0 (SaveData * param0, int param1, u32 param2)
{
    UnkStruct_02029C68 * v0;
    UnkStruct_0202A750 * v1 = sub_0202A750(param0);
    void * v2 = Heap_AllocFromHeapAtEnd(param1, param2);

    v0 = sub_02029CA8(v1, 0);
    MI_CpuCopyFast(v0, v2, param2);

    return v2;
}

static void ov59_021D300C (const UnkStruct_ov59_021D2FBC * param0)
{
    UnkStruct_0202A750 * v0 = sub_0202A750(param0->unk_04);
    sub_0202A6A8(param0->unk_08, param0->unk_0C, v0, param0->unk_10);
}

static void ov59_021D3028 (const UnkStruct_ov59_021D2FBC * param0)
{
    TVBroadcast * v0 = SaveData_TVBroadcast(param0->unk_04);
    ov59_021D2F10(v0, param0->unk_08, param0->unk_0C, param0->unk_10, param0->unk_14);
}

static void ov59_021D3048 (const UnkStruct_ov59_021D2FBC * param0)
{
    TVBroadcast * v0 = SaveData_TVBroadcast(param0->unk_04);
    ov59_021D2F38(v0, param0->unk_08, param0->unk_0C, param0->unk_10, param0->unk_14);
}

static void ov59_021D3068 (const UnkStruct_ov59_021D2FBC * param0)
{
    TVBroadcast * v0 = SaveData_TVBroadcast(param0->unk_04);
    ov59_021D2F60(v0, param0->unk_08, param0->unk_0C, param0->unk_10, param0->unk_14);
}

static void * ov59_021D3088 (SaveData * param0, int param1, u32 param2)
{
    return sub_0202E9FC(param0, param1);
}

static void ov59_021D3090 (const UnkStruct_ov59_021D2FBC * param0)
{
    UnkStruct_0202E8C0 * v0 = sub_0202E8C0(param0->unk_04);

    sub_0202ED0C(param0->unk_04, param0->unk_0C, param0->unk_08, param0->unk_10, param0->unk_00);
}

static void * ov59_021D30B4 (SaveData * param0, int param1, u32 param2)
{
    UnkStruct_ov96_0223B450_sub1 * v0;

    v0 = Heap_AllocFromHeapAtEnd(param1, param2);
    MI_CpuClear8(v0, param2);
    sub_02073700(param0, 0, v0);

    return v0;
}

static void ov59_021D30DC (const UnkStruct_ov59_021D2FBC * param0)
{
    return;
}

static const UnkStruct_ov59_021D33FC Unk_ov59_021D33FC[] = {
    {ov59_021D2F88, ov59_021D2F94, ov59_021D2FBC},
    {ov59_021D2FD4, ov59_021D2FE0, ov59_021D300C},
    {(UnkFuncPtr_ov59_021D33FC)ov59_021D2B4C, (UnkFuncPtr_ov59_021D33FC_1)ov59_021D2C70, NULL},
    {(UnkFuncPtr_ov59_021D33FC)ov59_021D2B54, (UnkFuncPtr_ov59_021D33FC_1)ov59_021D2CB4, NULL},
    {(UnkFuncPtr_ov59_021D33FC)ov59_021D2B44, (UnkFuncPtr_ov59_021D33FC_1)ov59_021D2C28, NULL},
    {(UnkFuncPtr_ov59_021D33FC)sub_0202E91C, (UnkFuncPtr_ov59_021D33FC_1)ov59_021D3088, ov59_021D3090},
    {(UnkFuncPtr_ov59_021D33FC)sub_0202D05C, (UnkFuncPtr_ov59_021D33FC_1)ov59_021D30B4, ov59_021D30DC},
    {(UnkFuncPtr_ov59_021D33FC)ov59_021D2B4C, (UnkFuncPtr_ov59_021D33FC_1)ov59_021D2D3C, ov59_021D3028},
    {(UnkFuncPtr_ov59_021D33FC)ov59_021D2B54, (UnkFuncPtr_ov59_021D33FC_1)ov59_021D2D80, ov59_021D3048},
    {(UnkFuncPtr_ov59_021D33FC)ov59_021D2B44, (UnkFuncPtr_ov59_021D33FC_1)ov59_021D2CF8, ov59_021D3068}
};

void ov59_021D30E0 (SaveData * param0, UnkStruct_ov59_021D30E0 * param1)
{
    u32 v0;
    void * v1;
    int v2, v3;
    u32 v4 = 3000;
    u8 * v5 = param1->unk_00;
    const UnkStruct_ov59_021D33FC * v6 = Unk_ov59_021D33FC;

    v3 = NELEMS(Unk_ov59_021D33FC);

    for (v2 = 0; v2 < v3; v2++) {
        v0 = v6[v2].unk_00(param0);
        v1 = v6[v2].unk_04(param0, 51, v0);

        GF_ASSERT(v4 > v0);

        MI_CpuCopyFast(v1, v5, v0);
        Heap_FreeToHeap(v1);

        v5 += v0;
        v4 -= v0;
    }
}

void ov59_021D313C (SaveData * param0, const UnkStruct_ov59_021D30E0 * param1)
{
    UnkStruct_ov59_021D2FBC v0;
    u32 v1;
    u32 v2 = 0;
    u32 v3 = 3000;
    int v4, v5, v6;
    const void * v7[5];
    const void * v8[5];
    u32 v9[4 - 2 + 1];

    v0.unk_00 = 51;
    v0.unk_04 = param0;
    v0.unk_0C = sub_0203608C();
    v0.unk_08 = 5;
    v0.unk_10 = v7;
    v0.unk_14 = v8;

    v9[2 - 2] = 0;
    v9[3 - 2] = 0;
    v9[4 - 2] = 0;

    for (v4 = 0; v4 < 2; v4++) {
        v9[2 - 2] += Unk_ov59_021D33FC[v4].unk_00(param0);
    }

    for (v4 = 0; v4 < 3; v4++) {
        v9[3 - 2] += Unk_ov59_021D33FC[v4].unk_00(param0);
    }

    for (v4 = 0; v4 < 4; v4++) {
        v9[4 - 2] += Unk_ov59_021D33FC[v4].unk_00(param0);
    }

    for (v4 = 0; v4 < NELEMS(Unk_ov59_021D33FC); v4++) {
        v1 = Unk_ov59_021D33FC[v4].unk_00(param0);
        GF_ASSERT(v3 > v1);

        for (v5 = 0; v5 < 5; v5++) {
            if (sub_02032EE8(v5) != NULL) {
                v0.unk_10[v5] = &(param1[v5].unk_00[v2]);
            } else {
                v0.unk_10[v5] = NULL;
            }
        }

        switch (v4) {
        case 7:
        case 8:
        case 9:
            for (v6 = 0; v6 < 5; v6++) {
                if (sub_02032EE8(v6) != NULL) {
                    v0.unk_14[v6] = &(param1[v6].unk_00[v9[v4 - 7]]);
                } else {
                    v0.unk_14[v6] = NULL;
                }
            }
            break;
        }

        if (Unk_ov59_021D33FC[v4].unk_08 != NULL) {
            Unk_ov59_021D33FC[v4].unk_08(&v0);
        }

        v2 += v1;
        v3 -= v1;
    }

    {
        TVBroadcast * v10 = SaveData_TVBroadcast(param0);
        sub_0202E2EC(v10);
        sub_0202E35C(v10);
    }
}
