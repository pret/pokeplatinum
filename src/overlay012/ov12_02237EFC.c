#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"

#include "functypes/funcptr_020146F4.h"
#include "overlay012/struct_ov12_02237EFC.h"
#include "overlay012/struct_ov12_02237F38.h"

#include "spl.h"

#include "unk_0200D9E8.h"
#include "unk_02014000.h"
#include "heap.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_022237EC.h"
#include "overlay012/ov12_02237EFC.h"

typedef struct UnkStruct_ov12_02238004_t {
    int unk_00;
    int unk_04;
    UnkStruct_ov12_02237F38 unk_08;
    UnkStruct_02014014 * unk_10;
    UnkSPLStruct6 * unk_14;
    UnkStruct_0201CD38 * unk_18;
    int unk_1C;
    BOOL unk_20;
} UnkStruct_ov12_02238004;

typedef struct UnkStruct_ov12_02237F98_t {
    int unk_00;
    UnkStruct_ov12_02237EFC unk_04;
    UnkStruct_ov12_02238004 * unk_08[16];
} UnkStruct_ov12_02237F98;

static void ov12_02238030(UnkStruct_0201CD38 * param0, void * param1);
static void ov12_02238054(UnkStruct_ov12_02238004 * param0, UnkFuncPtr_020146F4 param1);
static void ov12_02238080(UnkSPLStruct6 * param0);
static int ov12_02238088(int param0);

UnkStruct_ov12_02237F98 * ov12_02237EFC (int param0, UnkStruct_ov12_02237EFC * param1)
{
    UnkStruct_ov12_02237F98 * v0;

    v0 = NULL;
    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov12_02237F98));

    if (v0 == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    ov12_02220474();

    v0->unk_00 = param0;

    if (param1 != NULL) {
        v0->unk_04 = *param1;
    }

    {
        int v1;

        for (v1 = 0; v1 < 16; v1++) {
            v0->unk_08[v1] = NULL;
        }
    }

    return v0;
}

UnkStruct_ov12_02238004 * ov12_02237F38 (UnkStruct_ov12_02237F98 * param0, UnkStruct_ov12_02237F38 * param1)
{
    int v0;
    UnkStruct_ov12_02238004 * v1 = NULL;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_08[v0] != NULL) {
            continue;
        }

        param0->unk_08[v0] = ov12_02237FC8(param0->unk_00, param1);
        param0->unk_08[v0]->unk_18 = NULL;

        v1 = param0->unk_08[v0];
        v1->unk_00 = v0;

        break;
    }

    if (v1 == NULL) {
        GF_ASSERT(0);
    }

    return v1;
}

void ov12_02237F74 (UnkStruct_ov12_02237F98 * param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_08[v0] == NULL) {
            continue;
        }

        Heap_FreeToHeap(param0->unk_08[v0]);
    }

    Heap_FreeToHeap(param0);
}

void ov12_02237F98 (UnkStruct_ov12_02237F98 * param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_08[v0] == NULL) {
            continue;
        }

        ov12_02223894(param0->unk_08[v0]->unk_10);

        if (param0->unk_08[v0]->unk_20 == 0) {
            continue;
        }

        if (param0->unk_08[v0]->unk_18 == NULL) {
            continue;
        }

        sub_0200DA58(param0->unk_08[v0]->unk_18);
    }
}

UnkStruct_ov12_02238004 * ov12_02237FC8 (int param0, UnkStruct_ov12_02237F38 * param1)
{
    UnkStruct_ov12_02238004 * v0;

    v0 == NULL;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov12_02238004));

    if (v0 == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    v0->unk_04 = param0;
    v0->unk_08 = *param1;
    v0->unk_1C = ov12_02238088(v0->unk_08.unk_00);
    v0->unk_10 = ov12_022237F0(v0->unk_04, v0->unk_08.unk_00, 1);

    return v0;
}

void ov12_02238004 (UnkStruct_ov12_02238004 * param0)
{
    param0->unk_20 = 1;
    ov12_02238054(param0, ov12_02238080);
    param0->unk_18 = sub_0200D9E8(ov12_02238030, param0, 1000);
}

BOOL ov12_0223802C (UnkStruct_ov12_02238004 * param0)
{
    return param0->unk_20;
}

static void ov12_02238030 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov12_02238004 * v0 = (UnkStruct_ov12_02238004 *)param1;
    int v1 = 0;

    v1 = sub_02014710(v0->unk_10);

    if (v1 != 0) {
        return;
    }

    v0->unk_20 = 0;

    ov12_02223894(v0->unk_10);
    sub_0200DA58(param0);
}

static void ov12_02238054 (UnkStruct_ov12_02238004 * param0, UnkFuncPtr_020146F4 param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_1C; v0++) {
        sub_020146F4(param0->unk_10, v0, param1, param0);
    }

    sub_02014788(param0->unk_10, param0->unk_08.unk_04);
}

static void ov12_02238080 (UnkSPLStruct6 * param0)
{
    UnkStruct_ov12_02238004 * v0;

    v0 = sub_02014764();
}

static int ov12_02238088 (int param0)
{
    const int v0[] = {
        0x5,
        0xB,
        0x6,
        0x7,
        0x2,
        0x1,
        0x2,
        0x1,
        0x1,
        0x4,
        0x3,
        0x3,
        0x2,
        0x9,
        0x1,
        0x1,
        0x1,
        0x2,
        0x1,
        0x1,
        0x1,
        0x1
    };
    int v1;

    v1 = param0 - 5;

    if (v1 >= NELEMS(v0)) {
        GF_ASSERT(0);
        return 0;
    }

    return v0[v1];
}
