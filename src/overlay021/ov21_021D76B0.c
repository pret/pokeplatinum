#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021D5B68.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6B20.h"
#include "overlay083/struct_ov83_0223D9A8.h"

#include "overlay021/struct_ov21_021E6A68.h"

#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A9DC.h"
#include "unk_02012744.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"
#include "unk_02023FCC.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4340.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D5AEC.h"
#include "overlay021/ov21_021D76B0.h"

typedef struct {
    int unk_00[7];
    UnkStruct_ov21_021D5B68 * unk_1C;
    int * unk_20;
    int unk_24;
} UnkStruct_ov21_021D77D4;

typedef struct {
    UnkStruct_ov21_021D13FC * unk_00;
} UnkStruct_ov21_021D77E8;

typedef struct {
    UnkStruct_02023FCC * unk_00;
    void * unk_04;
    UnkUnion_020225E0 * unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    fx32 unk_1C;
    BOOL unk_20;
} UnkStruct_ov21_021D7A64;

typedef struct {
    UnkStruct_ov21_021D7A64 * unk_00;
    UnkStruct_ov21_021D77D4 * unk_04;
} UnkStruct_ov21_021D7B8C;

typedef struct {
    GraphicElementData * unk_00[3];
    UnkStruct_ov21_021D4CA0 * unk_0C[3];
    GraphicElementData * unk_18;
    GraphicElementData * unk_1C;
    GraphicElementData * unk_20;
    UnkStruct_ov21_021D4CA0 * unk_24;
    u16 unk_28;
    u16 unk_2A;
    UnkStruct_02009DC8 * unk_2C[4];
} UnkStruct_ov21_021D7C64;

static UnkStruct_ov21_021D77D4 * ov21_021D7728(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021D77E8 * ov21_021D7770(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021D4660 * ov21_021D7798(int param0, UnkStruct_ov21_021D0F60 * param1);
static void ov21_021D77D4(UnkStruct_ov21_021D77D4 * param0);
static void ov21_021D77E8(UnkStruct_ov21_021D77E8 * param0);
static void ov21_021D77FC(UnkStruct_ov21_021D4660 * param0);
static int ov21_021D7814(void);
static int ov21_021D7818(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021D7860(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021D78AC(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021D78C0(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021D7950(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021D79E4(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static void ov21_021D84A8(GraphicElementData * param0, UnkStruct_ov21_021D4CA0 * param1, int param2, int param3, int param4);
static void ov21_021D7A64(UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D77D4 * param1, int param2);
static void ov21_021D7B20(UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D77D4 * param1);
static void ov21_021D7B70(UnkStruct_ov21_021D7A64 * param0);
static void ov21_021D7B8C(u32 param0, u32 param1, void * param2);
static void ov21_021D84B8(UnkStruct_ov21_021D77D4 * param0);
static void ov21_021D7C64(UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, const UnkStruct_ov21_021D77D4 * param2, int param3);
static void ov21_021D7CAC(UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, int param2);
static void ov21_021D7CD8(UnkStruct_ov21_021D77E8 * param0, const UnkStruct_ov21_021D77D4 * param1, int param2);
static void ov21_021D7D8C(UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, int param2);
static void ov21_021D7E3C(UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1);
static void ov21_021D7E80(UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, const UnkStruct_ov21_021D77D4 * param2, int param3);
static void ov21_021D7FEC(UnkStruct_ov21_021D7C64 * param0);
static void ov21_021D8018(UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, const UnkStruct_ov21_021D77D4 * param2, int param3);
static void ov21_021D81EC(UnkStruct_ov21_021D7C64 * param0);
static void ov21_021D820C(UnkStruct_ov21_021D77E8 * param0, int param1);
static void ov21_021D828C(UnkStruct_ov21_021D77E8 * param0, int param1);
static void ov21_021D853C(UnkStruct_ov21_021D77D4 * param0, int param1);
static void ov21_021D82A8(UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D77D4 * param1);
static void ov21_021D8324(UnkStruct_ov21_021D7A64 * param0);
static void ov21_021D8354(UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, int param2, fx32 param3);
static void ov21_021D83C0(UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, const UnkStruct_ov21_021D77D4 * param2);
static void ov21_021D8434(UnkStruct_ov21_021D7A64 * param0, int param1, int param2);
static BOOL ov21_021D84E0(UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D3320 * param1);
static BOOL ov21_021D8508(UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D3320 * param1);
static void ov21_021D8530(UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D77D4 * param1);
static fx32 ov21_021D8580(fx32 param0, s32 param1);

void ov21_021D76B0 (UnkStruct_ov21_021E68F4 * param0, UnkStruct_ov21_021D0F60 * param1, int param2)
{
    UnkStruct_ov21_021D77D4 * v0;
    UnkStruct_ov21_021D77E8 * v1;
    UnkStruct_ov21_021D4660 * v2;

    v0 = ov21_021D7728(param2, param1);
    v1 = ov21_021D7770(param2, param1);
    v2 = ov21_021D7798(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021D7814();

    param0->unk_08[0] = ov21_021D7818;
    param0->unk_08[1] = ov21_021D7860;
    param0->unk_08[2] = ov21_021D78AC;
    param0->unk_14[0] = ov21_021D78C0;
    param0->unk_14[1] = ov21_021D7950;
    param0->unk_14[2] = ov21_021D79E4;
}

void ov21_021D7710 (UnkStruct_ov21_021E68F4 * param0)
{
    ov21_021D77D4(param0->unk_00);
    ov21_021D77E8(param0->unk_00);
    ov21_021D77FC(param0->unk_20);
}

static UnkStruct_ov21_021D77D4 * ov21_021D7728 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021D77D4 * v0;
    UnkStruct_ov21_021E68F4 * v1;
    int v2;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D77D4));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D77D4));

    v1 = ov21_021D1410(param1, 0);
    v0->unk_1C = v1->unk_00;

    for (v2 = 0; v2 < 7; v2++) {
        v0->unk_00[v2] = (3 + 1);
    }

    v0->unk_20 = ov21_021D13A0(param1);
    v0->unk_24 = param0;

    return v0;
}

static UnkStruct_ov21_021D77E8 * ov21_021D7770 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021D77E8 * v0;
    UnkStruct_ov21_021E68F4 * v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D77E8));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D77E8));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 * ov21_021D7798 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021D4660 * v0;
    int v1 = ov21_021D7814();

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D4878(&v0[0], param1, param0, (0x1 << 0));

    return v0;
}

static void ov21_021D77D4 (UnkStruct_ov21_021D77D4 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021D77E8 (UnkStruct_ov21_021D77E8 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021D77FC (UnkStruct_ov21_021D4660 * param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    Heap_FreeToHeap(param0);
}

static int ov21_021D7814 (void)
{
    return 1;
}

static int ov21_021D7818 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021D77D4 * v0 = param1;
    UnkStruct_ov21_021D7A64 * v1;
    int v2;

    param0->unk_08 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021D7A64));

    GF_ASSERT(param0->unk_08);
    memset(param0->unk_08, 0, sizeof(UnkStruct_ov21_021D7A64));

    v1 = param0->unk_08;
    v1->unk_1C = (FX32_CONST(0.30f));

    for (v2 = 0; v2 < 7; v2++) {
        v0->unk_00[v2] = (3 + 1);
    }

    ov21_021D7A64(param0->unk_08, v0, param0->unk_04);
    return 1;
}

static int ov21_021D7860 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021D77D4 * v0 = param1;
    UnkStruct_ov21_021D7A64 * v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    ov21_021D8434(v1, v0->unk_1C->unk_0C, v0->unk_1C->unk_08);
    ov21_021D7B20(v1, v0);

    if (v0->unk_1C->unk_20 == 0) {
        ov21_021D82A8(v1, v0);
    } else {
        v1->unk_0C = 0;
        v1->unk_10 = 0;
    }

    return 0;
}

static int ov21_021D78AC (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    ov21_021D7B70(param0->unk_08);
    Heap_FreeToHeap(param0->unk_08);

    return 1;
}

static int ov21_021D78C0 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021D77D4 * v0 = param2;
    const UnkStruct_ov21_021D7A64 * v1 = param3->unk_08;
    UnkStruct_ov21_021D77E8 * v2 = param0;
    UnkStruct_ov21_021D7C64 * v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021D7C64));
        GF_ASSERT(param1->unk_08);
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021D7C64));
        param1->unk_00++;
        break;
    case 1:
        ov21_021D7C64(v3, v2, v0, param1->unk_04);
        param1->unk_00++;
        break;
    case 2:
        sub_0200AAE0(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        param1->unk_00++;
        break;
    case 3:
        if (sub_0200AC1C(2)) {
            param1->unk_00++;
        }
        break;
    case 4:
        param1->unk_00++;
        return 1;
    }

    return 0;
}

static int ov21_021D7950 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021D77D4 * v0 = param2;
    const UnkStruct_ov21_021D7A64 * v1 = param3->unk_08;
    UnkStruct_ov21_021D77E8 * v2 = param0;
    UnkStruct_ov21_021D7C64 * v3 = param1->unk_08;

    ov21_021D144C(v3->unk_00[0], v0->unk_00[0]);
    ov21_021D144C(v3->unk_00[1], v0->unk_00[1]);
    ov21_021D144C(v3->unk_00[2], v0->unk_00[2]);
    ov21_021D144C(v3->unk_18, v0->unk_00[3]);
    ov21_021D144C(v3->unk_1C, v0->unk_00[4]);
    ov21_021D84A8(v3->unk_00[0], v3->unk_0C[0], -14, 3, 5);
    ov21_021D84A8(v3->unk_00[1], v3->unk_0C[1], -14, 3, 5);
    ov21_021D84A8(v3->unk_00[2], v3->unk_0C[2], -14, 2, 5);

    if (v0->unk_1C->unk_20 == 0) {
        ov21_021D8354(v3, v2, sub_0201D580(524, v1->unk_0C), v1->unk_1C);
    } else if (v0->unk_1C->unk_20 == 1) {
        ov21_021D83C0(v3, v2, v0);
    } else {
        (void)0;
    }

    return 0;
}

static int ov21_021D79E4 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021D77D4 * v0 = param2;
    const UnkStruct_ov21_021D7A64 * v1 = param3->unk_08;
    UnkStruct_ov21_021D77E8 * v2 = param0;
    UnkStruct_ov21_021D7C64 * v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        sub_0200AAE0(4, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        param1->unk_00++;
        break;
    case 1:
        if (sub_0200AC1C(2)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021D7CAC(v3, v2, param1->unk_04);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021D7A64 (UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D77D4 * param1, int param2)
{
    UnkStruct_ov21_021D7B8C * v0;

    param0->unk_08 = Heap_AllocFromHeap(param2, sizeof(UnkUnion_020225E0) * 7);

    ov21_021D154C(&param0->unk_08[0], 40 - (48 / 2), 40 + (48 / 2), 48 - (96 / 2), 48 + (96 / 2));
    ov21_021D154C(&param0->unk_08[1], 88 - (48 / 2), 88 + (48 / 2), 48 - (96 / 2), 48 + (96 / 2));
    ov21_021D154C(&param0->unk_08[2], 152 - (80 / 2), 152 + (80 / 2), 48 - (96 / 2), 48 + (96 / 2));
    ov21_021D154C(&param0->unk_08[3], 64 - (16 / 2), 64 + (16 / 2), 124 - (16 / 2), 124 + (16 / 2));
    ov21_021D154C(&param0->unk_08[4], 146 - (16 / 2), 146 + (16 / 2), 124 - (16 / 2), 124 + (16 / 2));

    param0->unk_08[5].val2.unk_00 = 0xfe;
    param0->unk_08[5].val2.unk_01 = (128 + 120);
    param0->unk_08[5].val2.unk_02 = (104 + -0);
    param0->unk_08[5].val2.unk_03 = 104;

    ov21_021D154C(&param0->unk_08[6], (8 - 8), (8 - 8) + 16, (124 - 8), (124 - 8) + 64);

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov21_021D7B8C));
    v0->unk_00 = param0;
    v0->unk_04 = param1;

    param0->unk_04 = v0;
    param0->unk_00 = sub_02023FCC(param0->unk_08, 7, ov21_021D7B8C, v0, param2);
}

static void ov21_021D7B20 (UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D77D4 * param1)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        param1->unk_00[v0] = (3 + 1);
    }

    ov21_021D84B8(param1);
    sub_0202404C(param0->unk_00);

    if (ov21_021D84E0(param0, param1->unk_1C->unk_04) == 0) {
        param0->unk_0C = 0;
    }

    if (param1->unk_00[5] != (3 + 1)) {
        param0->unk_1C = ov21_021D8580(param0->unk_1C, param0->unk_0C);
    } else {
        param0->unk_1C = ov21_021D8580(param0->unk_1C, 0);
    }
}

static void ov21_021D7B70 (UnkStruct_ov21_021D7A64 * param0)
{
    sub_02024034(param0->unk_00);
    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0->unk_08);

    param0->unk_08 = NULL;
}

static void ov21_021D7B8C (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov21_021D7B8C * v0 = param2;
    UnkStruct_ov21_021D77D4 * v1 = v0->unk_04;
    UnkStruct_ov21_021D7A64 * v2 = v0->unk_00;
    UnkStruct_ov21_021D3320 * v3 = v1->unk_1C->unk_04;
    int v4;
    int v5;

    v1->unk_00[param0] = param1;

    switch (param1) {
    case 0:
        v2->unk_14 = gCoreSys.touchX;
        v2->unk_18 = gCoreSys.touchY;
        break;
    case 2:
        switch (param0) {
        case 0:
            v1->unk_1C->unk_34 = 1;
            break;
        case 1:
            v1->unk_1C->unk_30 = 1;
            break;
        case 2:
            v1->unk_1C->unk_2C = 1;
            break;
        case 3:
            if (v2->unk_20 == 0) {
                ov21_021D853C(v1, 0);
            }
            break;
        case 4:
            if (v2->unk_20 == 0) {
                v4 = ov21_021D3768(v3);
                ov21_021D853C(v1, v4 - 1);
            }
            break;
        case 6:
            if (v1->unk_1C->unk_04->unk_1740 == 0) {
                v1->unk_1C->unk_28 = 1;
            } else {
                v1->unk_1C->unk_24 = 1;
            }
            break;
        default:
            break;
        }

        if (param0 == 5) {
            if (v1->unk_1C->unk_20 == 0) {
                ov21_021D8324(v2);

                if ((v2->unk_0C <= 16) && (v2->unk_0C >= -16)) {
                    v2->unk_0C = 0;
                }
            }

            v2->unk_14 = gCoreSys.touchX;
            v2->unk_18 = gCoreSys.touchY;
        }

        v2->unk_20 = 1;
        break;
    default:
        v2->unk_20 = 0;
        break;
    }
}

static void ov21_021D7C64 (UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, const UnkStruct_ov21_021D77D4 * param2, int param3)
{
    ov21_021D7CD8(param1, param2, param3);
    ov21_021D820C(param1, param3);
    ov21_021D7D8C(param0, param1, param3);
    ov21_021D7E80(param0, param1, param2, param3);
    ov21_021D8018(param0, param1, param2, param3);

    BGL_SetPriority(7, 3);
}

static void ov21_021D7CAC (UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, int param2)
{
    ov21_021D81EC(param0);
    ov21_021D7FEC(param0);
    ov21_021D7E3C(param0, param1);
    ov21_021D828C(param1, param2);

    BGL_SetPriority(7, 1);
}

static void ov21_021D7CD8 (UnkStruct_ov21_021D77E8 * param0, const UnkStruct_ov21_021D77D4 * param1, int param2)
{
    void * v0;
    NNSG2dScreenData * v1;
    BGL * v2 = param0->unk_00->unk_00;

    ov21_021D276C(param0->unk_00, 0, 4, 0, 0, param2);

    if (param1->unk_1C->unk_04->unk_1740 == 1) {
        ov21_021D276C(param0->unk_00, 1, 4, 3 * 32, 32, param2);
    } else {
        if (ov21_021D36D8(param1->unk_1C->unk_04) == 1) {
            ov21_021D276C(param0->unk_00, 25, 4, 3 * 32, 32, param2);
        }
    }

    ov21_021D2724(param0->unk_00, 29, v2, 6, 0, 0, 1, param2);

    v0 = ov21_021D27B8(param0->unk_00, 41, 1, &v1, param2);

    sub_020198C0(v2, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(v2, 6);
}

static void ov21_021D7D8C (UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, int param2)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;
    NARC * v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_2C[0] = sub_02009A4C(v0->unk_13C[0], v1, 84, 1, 84 + 1000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    sub_0200A3DC(param0->unk_2C[0]);
    sub_02009D4C(param0->unk_2C[0]);

    param0->unk_2C[1] = sub_02009B04(v0->unk_13C[1], v1, 3, 0, 3 + 1000, NNS_G2D_VRAM_TYPE_2DSUB, 12, param2);

    sub_0200A640(param0->unk_2C[1]);
    sub_02009D4C(param0->unk_2C[1]);

    param0->unk_2C[2] = sub_02009BC4(v0->unk_13C[2], v1, 82, 1, 82 + 1000, 2, param2);
    param0->unk_2C[3] = sub_02009BC4(v0->unk_13C[3], v1, 83, 1, 83 + 1000, 3, param2);
}

static void ov21_021D7E3C (UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_2C[0]);
    sub_0200A6DC(param0->unk_2C[1]);
    sub_02009D68(v0->unk_13C[0], param0->unk_2C[0]);
    sub_02009D68(v0->unk_13C[1], param0->unk_2C[1]);
    sub_02009D68(v0->unk_13C[2], param0->unk_2C[2]);
    sub_02009D68(v0->unk_13C[3], param0->unk_2C[3]);
}

static void ov21_021D7E80 (UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, const UnkStruct_ov21_021D77D4 * param2, int param3)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    UnkStruct_ov21_021D13FC * v2 = param1->unk_00;

    sub_020093B4(&v0, 84 + 1000, 3 + 1000, 82 + 1000, 83 + 1000, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.unk_00 = v2->unk_138;
    v1.unk_04 = &v0;
    v1.unk_14 = 8;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_1C = param3;

    v1.unk_08.x = 48 << FX32_SHIFT;
    v1.unk_08.y = 40 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_00[0] = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_00[0], 2);

    if (param2->unk_1C->unk_04->unk_1740 == 1) {
        sub_02021CAC(param0->unk_00[0], 0);
    }

    v1.unk_08.x = 48 << FX32_SHIFT;
    v1.unk_08.y = 88 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_00[1] = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_00[1], 0);

    if ((ov21_021D36A4(param2->unk_1C->unk_04, 1) == 0) || (param2->unk_1C->unk_04->unk_1740 == 1)) {
        sub_02021CAC(param0->unk_00[1], 0);
    }

    v1.unk_08.x = 48 << FX32_SHIFT;
    v1.unk_08.y = 152 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_00[2] = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_00[2], 1);

    v1.unk_08.x = 124 << FX32_SHIFT;
    v1.unk_08.y = 64 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_18 = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_18, 3);

    v1.unk_08.x = 124 << FX32_SHIFT;
    v1.unk_08.y = 146 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_1C = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_1C, 4);

    v1.unk_08.x = 124 << FX32_SHIFT;
    v1.unk_08.y = 8 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_20 = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_20, 5);
}

static void ov21_021D7FEC (UnkStruct_ov21_021D7C64 * param0)
{
    sub_02021BD4(param0->unk_00[0]);
    sub_02021BD4(param0->unk_00[1]);
    sub_02021BD4(param0->unk_00[2]);
    sub_02021BD4(param0->unk_18);
    sub_02021BD4(param0->unk_1C);
    sub_02021BD4(param0->unk_20);
}

static void ov21_021D8018 (UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, const UnkStruct_ov21_021D77D4 * param2, int param3)
{
    Window * v0;
    UnkStruct_ov21_021D4CB8 v1;
    UnkStruct_02009DC8 * v2;
    UnkStruct_ov21_021D13FC * v3 = param1->unk_00;
    int v4;

    GF_ASSERT(param0->unk_00[0]);

    v2 = sub_02009DC8(v3->unk_13C[1], 3 + 1000);

    v1.unk_00 = v3->unk_14C;
    v1.unk_08 = sub_0200A72C(v2, NULL);
    v1.unk_10 = -40;
    v1.unk_14 = -14;
    v1.unk_18 = 0;
    v1.unk_1C = 0;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_24 = param3;

    v4 = sub_0201FAB4(v1.unk_08, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = ov21_021D4D6C(v3->unk_14C, 10, 4);

    ov21_021D4DAC(v3->unk_14C, v0, 697, 7, 0, 0);

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[0];
    param0->unk_0C[0] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_0C[0]->unk_00, v4 + 3);

    if (param2->unk_1C->unk_04->unk_1740 == 1) {
        sub_020129D0(param0->unk_0C[0]->unk_00, 0);
    }

    ov21_021D4DA0(v0);
    v0 = ov21_021D4D6C(v3->unk_14C, 10, 4);
    ov21_021D4DAC(v3->unk_14C, v0, 697, 5, 0, 0);

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[1];
    param0->unk_0C[1] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_0C[1]->unk_00, v4 + 3);

    if ((ov21_021D36A4(param2->unk_1C->unk_04, 1) == 0) || (param2->unk_1C->unk_04->unk_1740 == 1)) {
        sub_020129D0(param0->unk_0C[1]->unk_00, 0);
    }

    ov21_021D4DA0(v0);
    v0 = ov21_021D4D6C(v3->unk_14C, 10, 4);
    ov21_021D4DAC(v3->unk_14C, v0, 697, 29, 0, 0);

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[2];
    param0->unk_0C[2] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_0C[2]->unk_00, v4 + 2);
    ov21_021D4DA0(v0);

    v0 = ov21_021D4D6C(v3->unk_14C, 14, 2);

    if (param2->unk_1C->unk_04->unk_1740 == 0) {
        ov21_021D4DAC(v3->unk_14C, v0, 697, 107, 0, 0);
    } else {
        ov21_021D4DAC(v3->unk_14C, v0, 697, 108, 0, 0);
    }

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_20;
    v1.unk_10 = 10;
    v1.unk_14 = -8;
    param0->unk_24 = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_24->unk_00, v4 + 1);
    ov21_021D4DA0(v0);
}

static void ov21_021D81EC (UnkStruct_ov21_021D7C64 * param0)
{
    ov21_021D4D1C(param0->unk_0C[0]);
    ov21_021D4D1C(param0->unk_0C[1]);
    ov21_021D4D1C(param0->unk_0C[2]);
    ov21_021D4D1C(param0->unk_24);
}

static void ov21_021D820C (UnkStruct_ov21_021D77E8 * param0, int param1)
{
    void * v0;
    NNSG2dScreenData * v1;
    BGL * v2 = param0->unk_00->unk_00;

    ov21_021D2724(param0->unk_00, 27, v2, 7, 0, 0, 1, param1);

    v0 = ov21_021D27B8(param0->unk_00, 37, 1, &v1, param1);

    sub_020198C0(v2, 7, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(v2, 7);
    sub_02019184(v2, 7, 0, -120);
    sub_02019184(v2, 7, 3, 0);
}

static void ov21_021D828C (UnkStruct_ov21_021D77E8 * param0, int param1)
{
    BGL * v0 = param0->unk_00->unk_00;

    sub_02019690(7, 64, 0, param1);
    sub_02019EBC(v0, 7);
}

static void ov21_021D82A8 (UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D77D4 * param1)
{
    int v0;
    UnkStruct_ov21_021D3320 * v1 = param1->unk_1C->unk_04;

    if (param1->unk_1C->unk_0C <= 0) {
        if (param0->unk_10 != 0) {
            if (ov21_021D8508(param0, v1) == 0) {
                ov21_021D8530(param0, param1);
            } else {
                param1->unk_1C->unk_0C = (64 * 10);
                Sound_PlayEffect(1675);
            }
        } else {
            param1->unk_1C->unk_08 = 0;
        }
    }

    if (param0->unk_10 < 0) {
        param1->unk_1C->unk_08 = 1;
    } else {
        if (param0->unk_10 > 0) {
            param1->unk_1C->unk_08 = 2;
        }
    }

    if (param1->unk_1C->unk_08 != 0) {
        if (param0->unk_10 < 0) {
            v0 = -param0->unk_10;
        } else {
            v0 = param0->unk_10;
        }

        v0 /= (1024 / (64 * 10));
        param1->unk_1C->unk_0C -= v0;

        if (param1->unk_1C->unk_0C < 0) {
            param1->unk_1C->unk_0C = 0;
        }
    }
}

static void ov21_021D8324 (UnkStruct_ov21_021D7A64 * param0)
{
    int v0, v1;
    int v2, v3;

    v1 = param0->unk_14 - (128 + 120);
    v0 = param0->unk_18 - (104 + -0);
    v3 = gCoreSys.touchX - (128 + 120);
    v2 = gCoreSys.touchY - (104 + -0);

    param0->unk_0C = sub_0201D4CC(v1, v0, v3, v2, 524);
    param0->unk_0C *= 10;
}

static void ov21_021D8354 (UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, int param2, fx32 param3)
{
    int v0;

    v0 = FX_Mul(param2 * FX32_ONE, param3) >> FX32_SHIFT;

    param0->unk_28 += v0;
    param0->unk_28 &= 0xffff;

    sub_0201C660(param1->unk_00->unk_00, 7, 0, param0->unk_28 / 182);
    sub_0201C718(param1->unk_00->unk_00, 7, 9, 128);
    sub_0201C718(param1->unk_00->unk_00, 7, 12, 104);

    param0->unk_2A = param0->unk_28;
}

static void ov21_021D83C0 (UnkStruct_ov21_021D7C64 * param0, UnkStruct_ov21_021D77E8 * param1, const UnkStruct_ov21_021D77D4 * param2)
{
    int v0;
    int v1;
    int v2 = (64 * 10) - param2->unk_1C->unk_0C;

    v1 = (((25 * 0xffff) / 360)) * v2;
    v0 = v1 / (64 * 10);

    if (param2->unk_1C->unk_08 == 1) {
        v0 = -v0;
    }

    param0->unk_28 = param0->unk_2A + v0;
    param0->unk_28 &= 0xffff;

    sub_0201C660(param1->unk_00->unk_00, 7, 0, param0->unk_28 / 182);
    sub_0201C718(param1->unk_00->unk_00, 7, 9, 128);
    sub_0201C718(param1->unk_00->unk_00, 7, 12, 104);

    if (param2->unk_1C->unk_0C == 0) {
        param0->unk_2A = param0->unk_28;
    }
}

static void ov21_021D8434 (UnkStruct_ov21_021D7A64 * param0, int param1, int param2)
{
    if (param0->unk_0C > 0) {
        if (param0->unk_0C - 2 >= 4) {
            param0->unk_0C -= 2;
        } else {
            param0->unk_0C = 4;
        }
    } else {
        if (param0->unk_0C + 2 <= -4) {
            param0->unk_0C += 2;
        } else {
            param0->unk_0C = -4;
        }
    }

    param0->unk_10 = param0->unk_0C;

    if ((param0->unk_0C <= ((1024 / (64 * 10)) + 32)) && (param0->unk_0C >= -((1024 / (64 * 10)) + 32))) {
        if (param1 == 0) {
            param0->unk_10 = 0;

            if ((param0->unk_0C <= 4) && (param0->unk_0C >= -4)) {
                param0->unk_0C = 0;
                param0->unk_1C = (FX32_CONST(0.30f));
            }
        } else {
            if (param2 == 1) {
                param0->unk_10 = -((1024 / (64 * 10)) + 32);
                param0->unk_0C = -((1024 / (64 * 10)) + 32);
            } else {
                param0->unk_10 = ((1024 / (64 * 10)) + 32);
                param0->unk_0C = ((1024 / (64 * 10)) + 32);
            }
        }
    }
}

static void ov21_021D84A8 (GraphicElementData * param0, UnkStruct_ov21_021D4CA0 * param1, int param2, int param3, int param4)
{
    ov21_021D1524(param0, param1, param2, param3, param4);
}

static void ov21_021D84B8 (UnkStruct_ov21_021D77D4 * param0)
{
    UnkStruct_ov21_021D5B68 * v0 = param0->unk_1C;

    if (v0->unk_2C) {
        param0->unk_00[2] = 2;
        return;
    }

    if (v0->unk_34) {
        param0->unk_00[0] = 2;
        return;
    }

    if (v0->unk_30) {
        param0->unk_00[1] = 2;
        return;
    }
}

static BOOL ov21_021D84E0 (UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D3320 * param1)
{
    int v0;

    if (param0->unk_0C != 0) {
        if (param0->unk_0C < 0) {
            v0 = 1;
        } else {
            v0 = -1;
        }

        if (ov21_021D387C(param1, v0) == 0) {
            return 0;
        }
    }

    return 1;
}

static BOOL ov21_021D8508 (UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D3320 * param1)
{
    int v0;

    if (param0->unk_10 != 0) {
        if (param0->unk_10 < 0) {
            v0 = 1;
        } else {
            v0 = -1;
        }

        if (ov21_021D3844(param1, v0) == 0) {
            return 0;
        }
    }

    return 1;
}

static void ov21_021D8530 (UnkStruct_ov21_021D7A64 * param0, UnkStruct_ov21_021D77D4 * param1)
{
    param0->unk_10 = 0;
    param0->unk_0C = 0;
    param1->unk_1C->unk_08 = 0;
}

static void ov21_021D853C (UnkStruct_ov21_021D77D4 * param0, int param1)
{
    if (ov21_021D5B68(param0->unk_1C) == 0) {
        return;
    }

    ov21_021D36FC(param0->unk_1C->unk_04, param1);

    (*param0->unk_20) |= (0x1 << 0);

    param0->unk_1C->unk_0C = 0;
    param0->unk_1C->unk_20 = 2;
    param0->unk_1C->unk_10 = 1;
    param0->unk_1C->unk_14 = 0;
    param0->unk_1C->unk_08 = 0;
    param0->unk_1C->unk_1C = 0;
}

static fx32 ov21_021D8580 (fx32 param0, s32 param1)
{
    int v0;

    v0 = MATH_ABS(param1);

    if (v0 < 64) {
        if ((param0 - (FX32_CONST(0.01f))) >= (FX32_CONST(0.30f))) {
            param0 -= (FX32_CONST(0.01f));
        }
    } else {
        if ((param0 + (FX32_CONST(0.20f))) <= (FX32_CONST(1.0f))) {
            param0 += (FX32_CONST(0.20f));
        }
    }

    return param0;
}
