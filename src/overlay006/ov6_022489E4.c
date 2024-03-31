#include <nitro.h>
#include <string.h>

#include "strbuf.h"
#include "pokemon.h"

#include "struct_defs/struct_020954F0.h"
#include "struct_defs/struct_02095C48.h"
#include "overlay006/struct_ov6_02248BE8.h"
#include "overlay006/struct_ov6_02248DD8.h"

#include "heap.h"
#include "strbuf.h"
#include "unk_0202CC64.h"
#include "communication_system.h"
#include "pokemon.h"
#include "overlay006/ov6_022489E4.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03[1];
} UnkStruct_ov6_02248A94;

static int ov6_02248A94(UnkStruct_ov6_02248A94 * param0[4], int param1, u8 * param2);

void ov6_022489E4 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095C48 * v0 = param3;

    MI_CpuCopy8(param2, v0->unk_168[param0], param1);
    v0->unk_568++;

    if (v0->unk_568 >= v0->unk_00.unk_117) {
        UnkStruct_ov6_02248A94 * v1[4];
        int v2;
        u8 v3;

        for (v2 = 0; v2 < v0->unk_00.unk_117; v2++) {
            v1[v2] = (void *)v0->unk_168[v2];
        }

        v0->unk_00.unk_10C = ov6_02248A94(v1, v0->unk_00.unk_117, &v3);
        v0->unk_00.unk_10D = v3;
        v0->unk_00.unk_112 = v1[v0->unk_00.unk_10C]->unk_02;
    }
}

BOOL ov6_02248A64 (UnkStruct_02095C48 * param0)
{
    UnkStruct_ov6_02248A94 v0;

    v0.unk_00 = param0->unk_00.unk_115;
    v0.unk_01 = param0->unk_00.unk_113;
    v0.unk_02 = param0->unk_00.unk_112;

    if (sub_020359DC(26, &v0, sizeof(UnkStruct_ov6_02248A94)) == 1) {
        return 1;
    }

    return 0;
}

static int ov6_02248A94 (UnkStruct_ov6_02248A94 * param0[4], int param1, u8 * param2)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v1]->unk_00 < param0[v0]->unk_00) {
            v1 = v0;
        }
    }

    *param2 = param0[v1]->unk_00;
    return v1;
}

void ov6_02248AC8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095C48 * v0 = param3;
    int v1;
    int v2;
    u8 * v3;

    v1 = Pokemon_StructSize();
    v3 = param2;
    v2 = v3[v1];

    MI_CpuCopy8(param2, v0->unk_00.unk_00[v2], v1);

    v0->unk_568++;
}

BOOL ov6_02248AF0 (UnkStruct_02095C48 * param0, int param1, const Pokemon * param2)
{
    u8 * v0;
    int v1;
    int v2;

    v1 = Pokemon_StructSize();
    v0 = Heap_AllocFromHeap(20, v1 + 1);
    MI_CpuCopy8(param2, v0, v1);
    v0[v1] = param1;

    if (sub_020359DC(27, v0, v1 + 1) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    Heap_FreeToHeap(v0);
    return v2;
}

void ov6_02248B30 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095C48 * v0 = param3;
    int v1, v2;
    u8 * v3;
    int v4;

    v1 = Pokemon_StructSize();
    v2 = v1 * 4;
    v3 = param2;

    for (v4 = 0; v4 < 4; v4++) {
        MI_CpuCopy8(&v3[v1 * v4], v0->unk_00.unk_00[v4], v1);
    }

    v0->unk_568++;
}

BOOL ov6_02248B70 (UnkStruct_02095C48 * param0, Pokemon ** param1)
{
    u8 * v0;
    int v1, v2;
    int v3;
    int v4;

    v1 = Pokemon_StructSize();
    v2 = v1 * 4;
    v0 = param0->unk_569;

    for (v4 = 0; v4 < 4; v4++) {
        MI_CpuCopy8(param1[v4], &v0[v1 * v4], v1);
    }

    if (sub_0203597C(28, v0, v2) == 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    return v3;
}

void ov6_02248BC0 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095C48 * v0 = param3;
    int v1;
    int v2;
    u8 * v3;

    v1 = sizeof(UnkStruct_ov6_02248BE8);
    v3 = param2;
    v2 = v3[v1];

    MI_CpuCopy8(param2, &v0->unk_00.unk_10[v2], v1);

    v0->unk_568++;
}

BOOL ov6_02248BE8 (UnkStruct_02095C48 * param0, int param1, const UnkStruct_ov6_02248BE8 * param2)
{
    u8 * v0;
    int v1;
    int v2;

    v1 = sizeof(UnkStruct_ov6_02248BE8);
    v0 = Heap_AllocFromHeap(20, v1 + 1);
    MI_CpuCopy8(param2, v0, v1);
    v0[v1] = param1;

    if (sub_020359DC(29, v0, v1 + 1) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    Heap_FreeToHeap(v0);
    return v2;
}

void ov6_02248C28 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095C48 * v0 = param3;
    int v1;
    u8 * v2;
    int v3;

    v1 = sizeof(UnkStruct_020954F0) * (1 + 2) + 1;
    v2 = param2;

    for (v3 = 0; v3 < (1 + 2); v3++) {
        MI_CpuCopy8(&v2[sizeof(UnkStruct_020954F0) * v3], &v0->unk_00.unk_C0[v3], sizeof(UnkStruct_020954F0));
    }

    v0->unk_00.unk_10E = v2[v1 - 1];
    v0->unk_568++;
}

BOOL ov6_02248C68 (UnkStruct_02095C48 * param0, int param1, const UnkStruct_020954F0 * param2)
{
    u8 * v0;
    int v1;
    int v2;
    int v3;
    const UnkStruct_020954F0 * v4;

    v4 = param2;
    v1 = sizeof(UnkStruct_020954F0) * (1 + 2) + 1;
    v0 = Heap_AllocFromHeap(20, v1);

    for (v3 = 0; v3 < (1 + 2); v3++) {
        MI_CpuCopy8(v4, &v0[sizeof(UnkStruct_020954F0) * v3], sizeof(UnkStruct_020954F0));
        v4++;
    }

    v0[v1 - 1] = param0->unk_00.unk_10E;

    if (sub_020359DC(30, v0, v1) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    Heap_FreeToHeap(v0);
    return v2;
}

void ov6_02248CBC (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095C48 * v0 = param3;
    int v1, v2, v3;
    u8 * v4;
    u16 * v5;

    v3 = 4;
    v4 = param2;
    v1 = v4[0];
    v2 = v4[1];
    v5 = (u16 *)(&v4[v3]);

    Strbuf_Clear(v0->unk_00.unk_D8[v1]);
    Strbuf_CopyChars(v0->unk_00.unk_D8[v1], v5);

    v0->unk_568++;
}

BOOL ov6_02248CE8 (UnkStruct_02095C48 * param0, int param1, const Strbuf *param2)
{
    int v0, v1;
    u8 * v2;
    BOOL v3;
    u16 v4[8];

    v0 = 8 * sizeof(u16);
    v1 = 4;

    Strbuf_ToChars(param2, v4, 8);

    v2 = Heap_AllocFromHeap(20, v0 + v1);
    MI_CpuCopy8(v4, &v2[v1], v0);
    v2[0] = param1;
    v2[1] = v0;
    v2[2] = 0;
    v2[3] = 0;

    if (sub_020359DC(31, v2, v0 + v1) == 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    Heap_FreeToHeap(v2);
    return v3;
}

void ov6_02248D38 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095C48 * v0 = param3;
    int v1;
    int v2;
    u8 * v3;

    v1 = ChatotCry_SaveSize();
    v3 = param2;
    v2 = v3[v1];

    MI_CpuCopy8(param2, v0->unk_14C[v2], v1);

    v0->unk_568++;
}

BOOL ov6_02248D64 (UnkStruct_02095C48 * param0, int param1, void * param2)
{
    u8 * v0;
    int v1;
    int v2;

    v1 = ChatotCry_SaveSize();
    v0 = param0->unk_569;

    if (param2 != NULL) {
        MI_CpuCopy8(param2, v0, v1);
    }

    v0[v1] = param1;

    if (sub_0203597C(36, v0, v1 + 1) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    return v2;
}

void ov6_02248DA0 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095C48 * v0 = param3;
    int v1;
    int v2;
    u8 * v3;
    UnkStruct_ov6_02248DD8 * v4;

    v1 = sizeof(UnkStruct_ov6_02248DD8);
    v4 = param2;
    v3 = param2;
    v2 = v3[v1];

    v0->unk_00.unk_F8[v2] = v4->unk_00;
    v0->unk_00.unk_FC[v2] = v4->unk_01;
    v0->unk_00.unk_100[v2] = v4->unk_02;
    v0->unk_00.unk_104[v2] = v4->unk_04;
    v0->unk_568++;
}

BOOL ov6_02248DD8 (UnkStruct_02095C48 * param0, int param1, const UnkStruct_ov6_02248DD8 * param2)
{
    u8 * v0;
    int v1;
    int v2;

    v1 = sizeof(UnkStruct_ov6_02248DD8);
    v0 = Heap_AllocFromHeap(20, v1 + 1);
    MI_CpuCopy8(param2, v0, v1);
    v0[v1] = param1;

    if (sub_020359DC(37, v0, v1 + 1) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    Heap_FreeToHeap(v0);
    return v2;
}
