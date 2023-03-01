#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "string/strbuf.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205AA50.h"

#include "unk_02002B7C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "string/strbuf.h"
#include "unk_02025E08.h"
#include "unk_0202F108.h"
#include "unk_0203CC84.h"
#include "unk_020508D4.h"
#include "overlay006/ov6_02247A0C.h"

typedef struct {
    UnkStruct_0205AA50 unk_00;
    UnkStruct_0200B144 * unk_10;
    UnkStruct_0200B358 * unk_14;
} UnkStruct_ov6_02247A90;

typedef struct {
    u32 unk_00;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov6_022496F4;

typedef struct {
    void * unk_00;
    int unk_04;
} UnkStruct_ov6_02247A0C;

static int ov6_02247CF4(const Strbuf * param0, int param1, int param2, int param3);
static BOOL ov6_02247A34(UnkStruct_020508D4 * param0);

static const UnkStruct_ov6_022496F4 Unk_ov6_022496F4[] = {
    {0x2, 0x8, 0x38},
    {0x3, 0x8, 0x48},
    {0x4, 0x8, 0x58},
    {0x5, 0x8, 0x68},
    {0x6, 0x8, 0x78}
};

static const UnkStruct_ov6_022496F4 Unk_ov6_022496D4[] = {
    {0x7, 0x70, 0x28},
    {0x8, 0x98, 0x28},
    {0x9, 0xC0, 0x28},
    {0xA, 0xE8, 0x28}
};

static const UnkStruct_ov6_022496F4 Unk_ov6_0224971C[][4] = {
    {
        {0xB, 0x70, 0x38},
        {0xC, 0x98, 0x38},
        {0xD, 0xC0, 0x38},
        {0xE, 0xE8, 0x38}
    },
    {
        {0xF, 0x70, 0x48},
        {0x10, 0x98, 0x48},
        {0x11, 0xC0, 0x48},
        {0x12, 0xE8, 0x48}
    },
    {
        {0x13, 0x70, 0x58},
        {0x14, 0x98, 0x58},
        {0x15, 0xC0, 0x58},
        {0x16, 0xE8, 0x58}
    },
    {
        {0x17, 0x70, 0x68},
        {0x18, 0x98, 0x68},
        {0x19, 0xC0, 0x68},
        {0x1A, 0xE8, 0x68}
    },
    {
        {0x1B, 0x70, 0x78},
        {0x1C, 0x98, 0x78},
        {0x1D, 0xC0, 0x78},
        {0x1E, 0xE8, 0x78}
    }
};

void ov6_02247A0C (UnkStruct_020508D4 * param0)
{
    UnkStruct_ov6_02247A0C * v0;

    v0 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_ov6_02247A0C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov6_02247A0C));

    sub_02050944(param0, ov6_02247A34, v0);
}

static BOOL ov6_02247A34 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_ov6_02247A0C * v1 = sub_02050A64(param0);

    switch (v1->unk_04) {
    case 0:
        v1->unk_00 = ov6_02247A90(v0);
        v1->unk_04++;
        break;
    case 1:
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            ov6_02247CC8(v1->unk_00);
            v1->unk_04++;
        }
        break;
    case 2:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void * ov6_02247A90 (void * param0)
{
    UnkStruct_ov6_02247A90 * v0;
    UnkStruct_02018340 * v1;
    Strbuf * v2, * v3;
    int v4, v5, v6, v7;
    UnkStruct_021C0794 * v8;

    v1 = sub_0203D170(param0);
    v8 = sub_0203D174(param0);
    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov6_02247A90));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov6_02247A90));

    v0->unk_10 = sub_0200B144(0, 26, 208, 11);
    v0->unk_14 = sub_0200B358(11);

    sub_0201A7E8(v1, &v0->unk_00, 3, 1, 3, 30, 17, 12, (1 + 10));
    sub_0200DAA4(v1, 3, 1, 11, 0, 11);
    sub_0200DC48(&v0->unk_00, 1, 1, 11);
    sub_0201ADA4(&v0->unk_00, 15);

    v3 = PLString_Init(100, 11);
    v2 = sub_0200B1EC(v0->unk_10, 0);

    sub_0200B498(v0->unk_14, 0, sub_02025E38(v8));
    sub_0200C388(v0->unk_14, v3, v2);

    v4 = ov6_02247CF4(v3, 0, 1, (15 * 8));

    sub_0201D738(&v0->unk_00, 0, v3, v4, (8 * 0), 0xff, NULL);
    PLString_Free(v2);

    v2 = sub_0200B1EC(v0->unk_10, 1);
    v4 = ov6_02247CF4(v2, 0, 1, ((15 * 8)));

    sub_0201D738(&v0->unk_00, 0, v2, v4, (8 * 2), 0xff, NULL);
    PLString_Free(v2);

    for (v6 = 0; v6 < 5; v6++) {
        v2 = sub_0200B1EC(v0->unk_10, Unk_ov6_022496F4[v6].unk_00);
        v4 = ov6_02247CF4(v2, 0, 0, Unk_ov6_022496F4[v6].unk_04);
        sub_0201D738(&v0->unk_00, 0, v2, v4, Unk_ov6_022496F4[v6].unk_06, 0xff, NULL);
        PLString_Free(v2);
    }

    for (v6 = 0; v6 < 4; v6++) {
        v2 = sub_0200B1EC(v0->unk_10, Unk_ov6_022496D4[v6].unk_00);
        v4 = ov6_02247CF4(v2, 0, 2, Unk_ov6_022496D4[v6].unk_04);
        sub_0201D738(&v0->unk_00, 0, v2, v4, Unk_ov6_022496D4[v6].unk_06, 0xff, NULL);
        PLString_Free(v2);
    }

    for (v7 = 0; v7 < 5; v7++) {
        for (v6 = 0; v6 < 4; v6++) {
            v5 = sub_0202F160(v8, v7, v6);
            v2 = sub_0200B1EC(v0->unk_10, Unk_ov6_0224971C[v7][v6].unk_00);
            sub_0200B60C(v0->unk_14, 0, v5, 4, 1, 1);
            sub_0200C388(v0->unk_14, v3, v2);
            v4 = ov6_02247CF4(v3, 0, 2, Unk_ov6_0224971C[v7][v6].unk_04);
            sub_0201D738(&v0->unk_00, 0, v3, v4, Unk_ov6_0224971C[v7][v6].unk_06, 0xff, NULL);
            PLString_Free(v2);
        }
    }

    PLString_Free(v3);
    sub_0201A954(&v0->unk_00);

    return v0;
}

void ov6_02247CC8 (void * param0)
{
    UnkStruct_ov6_02247A90 * v0 = param0;

    sub_0200DC9C(&v0->unk_00, 1);
    sub_0201ACF4(&v0->unk_00);
    sub_0201A8FC(&v0->unk_00);
    sub_0200B190(v0->unk_10);
    sub_0200B3F0(v0->unk_14);
    Heap_FreeToHeap(v0);
}

static int ov6_02247CF4 (const Strbuf * param0, int param1, int param2, int param3)
{
    int v0, v1;

    if (param2 == 0) {
        return param3;
    }

    v0 = sub_02002D7C(param1, param0, 0);

    switch (param2) {
    case 1:
        return param3 - v0 / 2;
    case 2:
        return param3 - v0;
    }

    GF_ASSERT(FALSE);
    return param3;
}
