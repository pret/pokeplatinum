#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_02073C74_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02049FA8.h"
#include "overlay005/struct_ov5_021F8E3C.h"

#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_0202B604.h"
#include "unk_0203A6DC.h"
#include "unk_0203A7D8.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_0205E7D0.h"
#include "unk_020655F4.h"
#include "overlay005/ov5_021F0EB0.h"
#include "overlay006/ov6_02243258.h"
#include "overlay006/ov6_02247100.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_0201CD38 * unk_0C;
    UnkStruct_0201CD38 * unk_10;
    UnkStruct_0201CD38 * unk_14;
    UnkStruct_02061AB4 * unk_18;
    UnkStruct_0203CDB0 * unk_1C;
    UnkStruct_02073C74 * unk_20;
} UnkStruct_ov6_02247100;

static void * ov6_02247590(u32 param0, u32 param1);
static void ov6_0224732C(UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02247100 * param1);

int(*const Unk_ov6_022495CC[])(UnkStruct_020508D4 *, UnkStruct_0203CDB0 *, UnkStruct_ov6_02247100 *);
int(*const Unk_ov6_022495BC[])(UnkStruct_020508D4 *, UnkStruct_0203CDB0 *, UnkStruct_ov6_02247100 *);
int(*const Unk_ov6_022495F0[])(UnkStruct_020508D4 *, UnkStruct_0203CDB0 *, UnkStruct_ov6_02247100 *);

const UnkStruct_ov5_021F8E3C Unk_ov6_02249608[];
const UnkStruct_ov5_021F8E3C Unk_ov6_022495DC[];
const UnkStruct_ov5_021F8E3C Unk_ov6_0224966C[];

void * ov6_02247100 (UnkStruct_0203CDB0 * param0, u32 param1)
{
    UnkStruct_ov6_02247100 * v0 = ov6_02247590(param1, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 0;
    v0->unk_1C = param0;
    v0->unk_18 = sub_0205EB3C(param0->unk_3C);

    return v0;
}

BOOL ov6_02247120 (UnkStruct_020508D4 * param0)
{
    int v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_ov6_02247100 * v2 = sub_02050A64(param0);

    do {
        v0 = Unk_ov6_022495CC[v2->unk_00](param0, v1, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static int ov6_0224715C (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    param2->unk_14 = ov5_021F0EB0(param1, 4);
    ov5_021F0F10(param2->unk_14, 1, ((FX32_ONE * -150)), 15);
    param2->unk_0C = sub_02065700(param2->unk_18, Unk_ov6_02249608);
    param2->unk_00++;

    switch (param2->unk_08) {
    case 0:
        sub_02005748(1539);
        break;
    case 1:
        sub_02005748(1539);
        break;
    case 2:
        sub_02005748(1614);
        break;
    }

    return 0;
}

static int ov6_022471C0 (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    if (sub_0206574C(param2->unk_0C) == 0) {
        return 0;
    }

    sub_02065758(param2->unk_0C);

    param2->unk_0C = sub_02065700(param2->unk_18, Unk_ov6_022495DC);
    param2->unk_04++;

    if (param2->unk_04 < 8) {
        return 0;
    }

    if (param2->unk_08 == 2) {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 4);
    } else {
        sub_0200F174(0, 0, 0, 0x7fff, 6, 1, 4);
    }

    param2->unk_00++;
    return 0;
}

static int ov6_02247244 (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    if (sub_0206574C(param2->unk_0C) == 1) {
        sub_02065758(param2->unk_0C);
        param2->unk_0C = sub_02065700(param2->unk_18, Unk_ov6_022495DC);
    }

    if (sub_0200F2AC() == 0) {
        return 0;
    }

    sub_02065758(param2->unk_0C);
    ov5_021F0EFC(param2->unk_14);

    param2->unk_00++;

    return 1;
}

static int ov6_02247288 (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    UnkStruct_0203A790 * v0 = sub_0203A790(param1->unk_0C);

    if (param2->unk_08 == 2) {
        u16 v1;
        UnkStruct_02049FA8 v2;

        v1 = sub_0203A75C(v0);
        sub_0203A7F0(v1, &v2);
        sub_02053CD4(param0, &v2, param2->unk_08);
    } else {
        UnkStruct_02049FA8 * v3 = sub_0203A72C(v0);
        sub_02053CD4(param0, v3, param2->unk_08);
    }

    return 2;
}

static int(*const Unk_ov6_022495CC[])(UnkStruct_020508D4 *, UnkStruct_0203CDB0 *, UnkStruct_ov6_02247100 *) = {
    ov6_0224715C,
    ov6_022471C0,
    ov6_02247244,
    ov6_02247288
};

void * ov6_022472C8 (UnkStruct_0203CDB0 * param0, u32 param1, int param2)
{
    UnkStruct_ov6_02247100 * v0 = ov6_02247590(param1, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = param2;
    v0->unk_1C = param0;
    v0->unk_18 = sub_0205EB3C(param0->unk_3C);

    return v0;
}

BOOL ov6_022472E8 (UnkStruct_020508D4 * param0)
{
    int v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_ov6_02247100 * v2 = sub_02050A64(param0);

    do {
        v0 = Unk_ov6_022495BC[v2->unk_00](param0, v1, v2);

        if (v0 == 2) {
            ov6_0224732C(v1, v2);
            Heap_FreeToHeap(v2);
            return 1;
        }
    } while (v0 == 1);

    return 0;
}

static void ov6_0224732C (UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02247100 * param1)
{
    void * v0;

    if (param1->unk_08 == 2) {
        v0 = sub_0202BE00((28 - 19), param0->unk_1C->unk_00, 4);
    } else {
        return;
    }

    sub_0202B758(param0->unk_9C, v0, 1);
}

static int ov6_02247354 (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    if (param2->unk_08 == 2) {
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 4);
    } else {
        sub_0200F174(0, 1, 1, 0x7fff, 6, 1, 4);
    }

    param2->unk_14 = ov5_021F0EB0(param1, 4);
    ov5_021F0F10(param2->unk_14, 1, ((FX32_ONE * -150)), 1);
    param2->unk_0C = sub_02065700(param2->unk_18, Unk_ov6_022495DC);
    param2->unk_00++;

    return 0;
}

static int ov6_022473C8 (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    if (sub_0206574C(param2->unk_0C) == 1) {
        sub_02065758(param2->unk_0C);
        param2->unk_0C = sub_02065700(param2->unk_18, Unk_ov6_022495DC);
    }

    if (sub_0200F2AC() == 0) {
        return 0;
    }

    ov5_021F0F10(param2->unk_14, 2, 0, 60);

    param2->unk_00++;
    return 1;
}

static int ov6_0224740C (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    if (sub_0206574C(param2->unk_0C) == 0) {
        return 0;
    }

    sub_02065758(param2->unk_0C);
    param2->unk_04++;

    if (param2->unk_04 < 4) {
        param2->unk_0C = sub_02065700(param2->unk_18, Unk_ov6_022495DC);
        return 0;
    }

    param2->unk_0C = sub_02065700(param2->unk_18, Unk_ov6_0224966C);
    param2->unk_00++;

    return 0;
}

static int ov6_02247458 (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    if (sub_0206574C(param2->unk_0C) == 0) {
        return 0;
    }

    if (ov5_021F0EF0(param2->unk_14) == 0) {
        return 0;
    }

    ov5_021F0EFC(param2->unk_14);
    sub_02065758(param2->unk_0C);

    return 2;
}

static int(*const Unk_ov6_022495BC[])(UnkStruct_020508D4 *, UnkStruct_0203CDB0 *, UnkStruct_ov6_02247100 *) = {
    ov6_02247354,
    ov6_022473C8,
    ov6_0224740C,
    ov6_02247458
};

void * ov6_02247488 (UnkStruct_0203CDB0 * param0, UnkStruct_02073C74 * param1, u32 param2)
{
    UnkStruct_ov6_02247100 * v0 = ov6_02247590(param2, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 1;
    v0->unk_1C = param0;
    v0->unk_18 = sub_0205EB3C(param0->unk_3C);
    v0->unk_20 = param1;

    return v0;
}

BOOL ov6_022474AC (UnkStruct_020508D4 * param0)
{
    int v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_ov6_02247100 * v2 = sub_02050A64(param0);

    do {
        v0 = Unk_ov6_022495F0[v2->unk_00](param0, v1, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static int ov6_022474E8 (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    int v0 = sub_0205EB98(param1->unk_3C);

    param2->unk_10 = ov6_02243F88(param1, 0, param2->unk_20, v0);
    param2->unk_00++;

    return 0;
}

static int ov6_0224750C (UnkStruct_020508D4 * param0, UnkStruct_0203CDB0 * param1, UnkStruct_ov6_02247100 * param2)
{
    if (ov6_02243FBC(param2->unk_10) == 0) {
        return 0;
    }

    ov6_02243FC8(param2->unk_10);
    param2->unk_00++;
    return 1;
}

static int(*const Unk_ov6_022495F0[])(UnkStruct_020508D4 *, UnkStruct_0203CDB0 *, UnkStruct_ov6_02247100 *) = {
    ov6_022474E8,
    ov6_0224750C,
    ov6_0224715C,
    ov6_022471C0,
    ov6_02247244,
    ov6_02247288
};

void * ov6_02247530 (UnkStruct_0203CDB0 * param0, UnkStruct_02073C74 * param1, u32 param2)
{
    UnkStruct_ov6_02247100 * v0 = ov6_02247590(param2, sizeof(UnkStruct_ov6_02247100));

    v0->unk_08 = 2;
    v0->unk_1C = param0;
    v0->unk_18 = sub_0205EB3C(param0->unk_3C);
    v0->unk_20 = param1;

    return v0;
}

BOOL ov6_02247554 (UnkStruct_020508D4 * param0)
{
    int v0;
    UnkStruct_0203CDB0 * v1 = sub_02050A60(param0);
    UnkStruct_ov6_02247100 * v2 = sub_02050A64(param0);

    do {
        v0 = Unk_ov6_022495F0[v2->unk_00](param0, v1, v2);

        if (v0 == 2) {
            Heap_FreeToHeap(v2);
        }
    } while (v0 == 1);

    return 0;
}

static void * ov6_02247590 (u32 param0, u32 param1)
{
    void * v0 = Heap_AllocFromHeapAtEnd(param0, param1);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param1);
    return v0;
}

static const UnkStruct_ov5_021F8E3C Unk_ov6_02249608[] = {
    {0x1, 0x1},
    {0x3C, 0x2},
    {0x2, 0x1},
    {0x3C, 0x2},
    {0x0, 0x1},
    {0x3C, 0x2},
    {0x3, 0x1},
    {0x3C, 0x2},
    {0x1, 0x1},
    {0x3C, 0x1},
    {0x2, 0x1},
    {0x3C, 0x1},
    {0x0, 0x1},
    {0x3C, 0x1},
    {0x3, 0x1},
    {0x3C, 0x1},
    {0x1, 0x1},
    {0x2, 0x1},
    {0x0, 0x1},
    {0x3, 0x1},
    {0x1, 0x1},
    {0x2, 0x1},
    {0x0, 0x1},
    {0x3, 0x1},
    {0xfe, 0x0}
};

static const UnkStruct_ov5_021F8E3C Unk_ov6_022495DC[] = {
    {0x0, 0x1},
    {0x3, 0x1},
    {0x1, 0x1},
    {0x2, 0x1},
    {0xfe, 0x0}
};

static const UnkStruct_ov5_021F8E3C Unk_ov6_0224966C[] = {
    {0x1, 0x1},
    {0x2, 0x1},
    {0x0, 0x1},
    {0x3, 0x1},
    {0x1, 0x1},
    {0x2, 0x1},
    {0x0, 0x1},
    {0x3, 0x1},
    {0x1, 0x1},
    {0x3C, 0x1},
    {0x2, 0x1},
    {0x3C, 0x1},
    {0x0, 0x1},
    {0x3C, 0x1},
    {0x3, 0x1},
    {0x3C, 0x1},
    {0x1, 0x1},
    {0x3C, 0x2},
    {0x2, 0x1},
    {0x3C, 0x3},
    {0x0, 0x1},
    {0x3C, 0x4},
    {0x3, 0x1},
    {0x3C, 0x5},
    {0x1, 0x1},
    {0xfe, 0x0}
};
