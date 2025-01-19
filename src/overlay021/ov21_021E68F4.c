#include "overlay021/ov21_021E68F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023FCC_decl.h"

#include "gmm/message_bank_pokedex.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4340.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"
#include "text/pl_msg.naix"

#include "bg_window.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "heap.h"
#include "narc.h"
#include "sprite_resource.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A9DC.h"
#include "unk_02012744.h"
#include "unk_0201DBEC.h"
#include "unk_0201F834.h"
#include "unk_02023FCC.h"

typedef struct {
    int *unk_00;
    int unk_04;
    UnkStruct_ov21_021D3320 *unk_08;
    UnkStruct_ov21_021E68F4 *unk_0C;
} UnkStruct_ov21_021E6A20;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021E6A34;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021E6E04;

typedef struct {
    UnkStruct_02023FCC *unk_00;
    TouchScreenHitTable *unk_04;
    UnkStruct_ov21_021E6E04 unk_08;
    int unk_10[2];
} UnkStruct_ov21_021E6DAC;

typedef struct {
    CellActor *unk_00[2];
    UnkStruct_ov21_021D4CA0 *unk_08[2];
    SpriteResource *unk_10[4];
    CellActor *unk_20[4];
    int unk_30[2];
    void *unk_38[2];
} UnkStruct_ov21_021E6C60;

static UnkStruct_ov21_021E6A20 *ov21_021E696C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021E6A34 *ov21_021E69B0(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D4660 *ov21_021E69D8(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021E6A20(UnkStruct_ov21_021E6A20 *param0);
static void ov21_021E6A34(UnkStruct_ov21_021E6A34 *param0);
static void ov21_021E6A48(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E6A68(void);
static int ov21_021E6A6C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E6AB8(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E6B0C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E6B20(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E6BA8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E6BD8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021E6C60(UnkStruct_ov21_021E6C60 *param0);
static void ov21_021E6C88(UnkStruct_ov21_021E6C60 *param0);
static void ov21_021E6CB0(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, const UnkStruct_ov21_021E6A20 *param2, BOOL param3);
static BOOL ov21_021E6D1C(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, const UnkStruct_ov21_021E6A20 *param2, BOOL param3);
static void ov21_021E6D58(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1, enum HeapId heapID);
static void ov21_021E6DAC(UnkStruct_ov21_021E6DAC *param0);
static void ov21_021E6DBC(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1);
static void ov21_021E6DEC(UnkStruct_ov21_021E6DAC *param0);
static void ov21_021E6E04(u32 param0, u32 param1, void *param2);
static void ov21_021E71D0(UnkStruct_ov21_021E6A34 *param0, CellActor *param1, UnkStruct_ov21_021D4CA0 *param2, int param3, int param4, int param5, int *param6, int param7, int param8, int param9, void **param10);
static void ov21_021E727C(CellActor *param0, UnkStruct_ov21_021D4CA0 *param1, int param2, int param3, int param4);
static void ov21_021E728C(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, const UnkStruct_ov21_021E6DAC *param2, int param3);
static void ov21_021E72E8(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1);
static void ov21_021E732C(UnkStruct_ov21_021E6A34 *param0, const UnkStruct_ov21_021E6A20 *param1);
static void ov21_021E7368(UnkStruct_ov21_021E6A34 *param0, int param1, int param2, int param3, int param4);
static void ov21_021E6E64(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2);
static void ov21_021E6E94(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2);
static void ov21_021E6EF0(UnkStruct_ov21_021E6A34 *param0, int param1);
static void ov21_021E6F58(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2);
static void ov21_021E6FD8(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1);
static void ov21_021E700C(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2);
static void ov21_021E70BC(UnkStruct_ov21_021E6C60 *param0);
static void ov21_021E70D4(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2);
static void ov21_021E71B8(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1);

void ov21_021E68F4(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021E6A20 *v0;
    UnkStruct_ov21_021E6A34 *v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021E696C(heapID, param1);
    v1 = ov21_021E69B0(heapID, param1);
    v2 = ov21_021E69D8(heapID, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021E6A68();

    param0->unk_08[0] = ov21_021E6A6C;
    param0->unk_08[1] = ov21_021E6AB8;
    param0->unk_08[2] = ov21_021E6B0C;
    param0->unk_14[0] = ov21_021E6B20;
    param0->unk_14[1] = ov21_021E6BA8;
    param0->unk_14[2] = ov21_021E6BD8;
}

void ov21_021E6954(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E6A20(param0->unk_00);
    ov21_021E6A34(param0->unk_04);
    ov21_021E6A48(param0->unk_20);
}

static UnkStruct_ov21_021E6A20 *ov21_021E696C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E6A20 *v0;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E6A20));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E6A20));

    v0->unk_00 = ov21_021D13A0(param1);
    v0->unk_0C = ov21_021D1430(param1, 3);
    v0->unk_04 = 0;
    v0->unk_08 = ov21_021D13EC(param1);

    return v0;
}

static UnkStruct_ov21_021E6A34 *ov21_021E69B0(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E6A34 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E6A34));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E6A34));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E69D8(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D4660 *v0;
    int v1 = ov21_021E6A68();

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D49E4(heapID, &v0[0], param1, (1 << 0));
    ov21_021D4A3C(heapID, &v0[1], param1, (1 << 1));

    return v0;
}

static void ov21_021E6A20(UnkStruct_ov21_021E6A20 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E6A34(UnkStruct_ov21_021E6A34 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E6A48(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    ov21_021D4660(&param0[1]);

    Heap_FreeToHeap(param0);
}

static int ov21_021E6A68(void)
{
    return 2;
}

static int ov21_021E6A6C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E6A20 *v0 = param1;
    UnkStruct_ov21_021E6DAC *v1 = param0->unk_08;
    int v2;

    v1 = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_ov21_021E6DAC));
    memset(v1, 0, sizeof(UnkStruct_ov21_021E6DAC));

    for (v2 = 0; v2 < 2; v2++) {
        v1->unk_10[v2] = (3 + 1);
    }

    v0->unk_04 = 0;

    ov21_021E6D58(v1, v0, param0->heapID);
    ov21_021E6DBC(v1, v0);

    param0->unk_08 = v1;

    return 1;
}

static int ov21_021E6AB8(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E6A20 *v0 = param1;
    UnkStruct_ov21_021E6DAC *v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    if (ov21_021E33AC(v0->unk_0C)) {
        ov21_021E6DAC(v1);

        if (ov21_021E33BC(v0->unk_0C) && (ov21_021D3998(v0->unk_08) == 2)) {
            ov21_021E72E8(v1, v0);
        }

        ov21_021E6DBC(v1, v0);
    }

    return 0;
}

static int ov21_021E6B0C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E6A20 *v0 = param1;
    UnkStruct_ov21_021E6DAC *v1 = param0->unk_08;

    ov21_021E6DEC(v1);
    Heap_FreeToHeap(v1);

    return 1;
}

static int ov21_021E6B20(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E6A20 *v0 = param2;
    const UnkStruct_ov21_021E6DAC *v1 = param3->unk_08;
    UnkStruct_ov21_021E6A34 *v2 = param0;
    UnkStruct_ov21_021E6C60 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(UnkStruct_ov21_021E6C60));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E6C60));
        param1->unk_00++;
        break;
    case 1:
        ov21_021E6E64(v3, v2, param1->heapID);
        ov21_021E6CB0(v3, v2, v0, 1);
        param1->unk_00++;
        break;
    case 2:
        if (ov21_021E6D1C(v3, v2, v0, 1)) {
            param1->unk_00++;
        }
        break;
    case 3:
        ov21_021D25AC(&v2->unk_00->unk_1E0, 0);
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021E6BA8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E6A20 *v0 = param2;
    const UnkStruct_ov21_021E6DAC *v1 = param3->unk_08;
    UnkStruct_ov21_021E6A34 *v2 = param0;
    UnkStruct_ov21_021E6C60 *v3 = param1->unk_08;

    if (ov21_021E33AC(v0->unk_0C)) {
        ov21_021E728C(v3, v2, v1, param1->heapID);
        ov21_021E732C(v2, v0);
    }

    return 0;
}

static int ov21_021E6BD8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E6A20 *v0 = param2;
    const UnkStruct_ov21_021E6DAC *v1 = param3->unk_08;
    UnkStruct_ov21_021E6A34 *v2 = param0;
    UnkStruct_ov21_021E6C60 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        ov21_021D25AC(&v2->unk_00->unk_1E0, 1);
        ov21_021E6CB0(v3, v2, v0, 0);
        param1->unk_00++;
        break;
    case 1:
        if (ov21_021E6D1C(v3, v2, v0, 0)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E6E94(v3, v2, param1->heapID);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_00++;
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov21_021E6C60(UnkStruct_ov21_021E6C60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_XLU);
        sub_02012AF0(param0->unk_08[v0]->unk_00, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E6C88(UnkStruct_ov21_021E6C60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
        sub_02012AF0(param0->unk_08[v0]->unk_00, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021E6CB0(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, const UnkStruct_ov21_021E6A20 *param2, BOOL param3)
{
    ov21_021E6C60(param0);

    if (ov21_021E33A4(param2->unk_0C)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_18C, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_18C, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL ov21_021E6D1C(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, const UnkStruct_ov21_021E6A20 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E33A4(param2->unk_0C)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_18C);
    } else {
        v0 = sub_0200AC1C(2);
    }

    if (v0) {
        if (param3) {
            ov21_021E6C88(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E6D58(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1, enum HeapId heapID)
{
    param0->unk_04 = Heap_AllocFromHeap(heapID, sizeof(TouchScreenHitTable) * 2);

    ov21_021D154C(&param0->unk_04[0], 120 - (112 / 2), 120 + (112 / 2), 68 - (120 / 2), 68 + (120 / 2));
    ov21_021D154C(&param0->unk_04[1], 120 - (112 / 2), 120 + (112 / 2), 188 - (120 / 2), 188 + (120 / 2));

    param0->unk_08.unk_00 = param1;
    param0->unk_08.unk_04 = param0;
    param0->unk_00 = sub_02023FCC(param0->unk_04, 2, ov21_021E6E04, &param0->unk_08, heapID);
}

static void ov21_021E6DAC(UnkStruct_ov21_021E6DAC *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_10[v0] = 3;
    }
}

static void ov21_021E6DBC(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1)
{
    sub_0202404C(param0->unk_00);

    switch (param1->unk_04) {
    case 0:
        if (param0->unk_10[0] != 2) {
            param0->unk_10[0] = 1;
        }
        break;
    case 1:
        if (param0->unk_10[1] != 2) {
            param0->unk_10[1] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021E6DEC(UnkStruct_ov21_021E6DAC *param0)
{
    sub_02024034(param0->unk_00);
    Heap_FreeToHeap(param0->unk_04);

    param0->unk_04 = NULL;
}

static void ov21_021E6E04(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021E6E04 *v0 = param2;
    UnkStruct_ov21_021E6A20 *v1 = v0->unk_00;
    UnkStruct_ov21_021E6DAC *v2 = v0->unk_04;

    v2->unk_10[param0] = param1;

    switch (param1) {
    case 2:
        ov21_021E33B4(v1->unk_0C, 1);

        switch (param0) {
        case 0:
            if (v1->unk_04 != 0) {
                Sound_PlayEffect(1501);
                v1->unk_04 = 0;
                *v1->unk_00 |= (1 << 0);
            }
            break;
        case 1:
            if (v1->unk_04 != 1) {
                Sound_PlayEffect(1501);
                v1->unk_04 = 1;
                *v1->unk_00 |= (1 << 1);
            }
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }
}

static void ov21_021E6E64(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2)
{
    ov21_021E6EF0(param1, param2);
    ov21_021E6F58(param0, param1, param2);
    ov21_021E700C(param0, param1, param2);
    ov21_021E70D4(param0, param1, param2);
}

static void ov21_021E6E94(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2)
{
    int v0;

    ov21_021D276C(param1->unk_00, 9, 4, 4 * 32, 32, param2);
    ov21_021D276C(param1->unk_00, 9, 4, 5 * 32, 32, param2);
    ov21_021E70BC(param0);
    ov21_021E71B8(param0, param1);
    ov21_021E6FD8(param0, param1);

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_38[v0]) {
            Heap_FreeToHeap(param0->unk_38[v0]);
        }
    }
}

static void ov21_021E6EF0(UnkStruct_ov21_021E6A34 *param0, int param1)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 34, param0->unk_00->unk_00, 6, 0, 0, 1, param1);

    v0 = ov21_021D27B8(param0->unk_00, 61, 1, &v1, param1);

    Bg_LoadToTilemapRect(param0->unk_00->unk_00, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->unk_00, 6);
}

static void ov21_021E6F58(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_10[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 102, 1, 102 + 9000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    sub_0200A3DC(param0->unk_10[0]);
    SpriteResource_ReleaseData(param0->unk_10[0]);

    param0->unk_10[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 100, 1, 100 + 9000, 2, param2);
    param0->unk_10[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 101, 1, 101 + 9000, 3, param2);
}

static void ov21_021E6FD8(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_10[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_10[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_10[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_10[3]);
}

static void ov21_021E700C(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3;

    sub_020093B4(&v0, 102 + 9000, 11 + 2100, 100 + 9000, 101 + 9000, 0xffffffff, 0xffffffff, 0, 2, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;

    v1.position.x = 68 << FX32_SHIFT;
    v1.position.y = 120 << FX32_SHIFT;
    v1.position.y += (192 << FX32_SHIFT);

    param0->unk_00[0] = CellActorCollection_Add(&v1);

    CellActor_SetAnim(param0->unk_00[0], 1);

    v1.position.x = 188 << FX32_SHIFT;
    v1.position.y = 120 << FX32_SHIFT;
    v1.position.y += (192 << FX32_SHIFT);

    param0->unk_00[1] = CellActorCollection_Add(&v1);

    CellActor_SetAnim(param0->unk_00[1], 1);
}

static void ov21_021E70BC(UnkStruct_ov21_021E6C60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_Delete(param0->unk_00[v0]);
    }
}

static void ov21_021E70D4(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, int param2)
{
    Window *v0;
    UnkStruct_ov21_021D4CB8 v1;
    SpriteResource *v2;
    UnkStruct_ov21_021D13FC *v3 = param1->unk_00;
    int v4;
    u32 v5;

    GF_ASSERT(param0->unk_00[0]);

    v2 = SpriteResourceCollection_Find(v3->unk_13C[1], 11 + 2100);

    v1.unk_00 = v3->unk_14C;
    v1.unk_08 = sub_0200A72C(v2, NULL);
    v1.unk_14 = -8;
    v1.unk_18 = 2;
    v1.unk_1C = 0;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;

    v4 = sub_0201FAB4(v1.unk_08, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = ov21_021D4D6C(v3->unk_14C, 12, 2);
    v5 = DisplayMessage(v3->unk_14C, v0, message_bank_pokedex, pl_msg_pokedex_heightcheck_button, 0, 0);

    v1.unk_10 = -(v5 / 2);
    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[0];

    param0->unk_08[0] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_08[0]->unk_00, v4 + 4);
    ov21_021D4DA0(v0);

    v0 = ov21_021D4D6C(v3->unk_14C, 12, 2);
    v5 = DisplayMessage(v3->unk_14C, v0, message_bank_pokedex, pl_msg_pokedex_weightcheck_button, 0, 0);

    v1.unk_10 = -(v5 / 2);
    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[1];

    param0->unk_08[1] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_08[1]->unk_00, v4 + 4);
    ov21_021D4DA0(v0);
}

static void ov21_021E71B8(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        ov21_021D4D1C(param0->unk_08[v0]);
    }
}

static void ov21_021E71D0(UnkStruct_ov21_021E6A34 *param0, CellActor *param1, UnkStruct_ov21_021D4CA0 *param2, int param3, int param4, int param5, int *param6, int param7, int param8, int param9, void **param10)
{
    int v0;
    NNSG2dPaletteData *v1;
    BOOL v2;
    BOOL v3 = 0;
    int v4;

    ov21_021D144C(param1, param3);
    ov21_021E727C(param1, param2, param4, param8, param9);

    v0 = CellActor_GetAnimFrame(param1);

    switch (v0) {
    case 0:
    case 1:
        if (*param6 != 0) {
            v3 = 1;
            v4 = 9;
            *param6 = 0;
        }
        break;
    case 2:
        if (*param6 != 1) {
            v3 = 1;
            v4 = 10;
            *param6 = 1;
        }
        break;
    case 3:
        if (*param6 != 2) {
            v3 = 1;
            v4 = 8;
            *param6 = 2;
        }
        break;
    }

    if (v3) {
        if (*param10) {
            Heap_FreeToHeap(*param10);
        }

        *param10 = ov21_021D27E0(param0->unk_00, v4, &v1, param7);

        v2 = sub_0201DC68(NNS_GFD_DST_2D_BG_PLTT_SUB, param5 * 32, v1->pRawData, 32);
        GF_ASSERT(v2);
    }
}

static void ov21_021E727C(CellActor *param0, UnkStruct_ov21_021D4CA0 *param1, int param2, int param3, int param4)
{
    ov21_021D1524(param0, param1, param2, param3, param4);
}

static void ov21_021E728C(UnkStruct_ov21_021E6C60 *param0, UnkStruct_ov21_021E6A34 *param1, const UnkStruct_ov21_021E6DAC *param2, int param3)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 2; v0++) {
        if (v0 == 0) {
            v1 = 4;
        } else {
            v1 = 5;
        }

        ov21_021E71D0(param1, param0->unk_00[v0], param0->unk_08[v0], param2->unk_10[v0], -8, v1, &param0->unk_30[v0], param3, 4, 1, &param0->unk_38[v0]);
    }
}

static void ov21_021E72E8(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1)
{
    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        if (param1->unk_04 == 1) {
            param1->unk_04 = 0;
            *param1->unk_00 |= (1 << 0);
            param0->unk_10[0] = 2;
        } else {
            param1->unk_04 = 1;
            *param1->unk_00 |= (1 << 1);
            param0->unk_10[1] = 2;
        }

        Sound_PlayEffect(1501);
    }
}

static void ov21_021E732C(UnkStruct_ov21_021E6A34 *param0, const UnkStruct_ov21_021E6A20 *param1)
{
    if (ov21_021E33BC(param1->unk_0C) == 1) {
        if (param1->unk_04 == 0) {
            ov21_021E7368(param0, 188, 120, 104, 96);
        } else {
            ov21_021E7368(param0, 68, 120, 104, 96);
        }
    }
}

static void ov21_021E7368(UnkStruct_ov21_021E6A34 *param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    ov21_021D2574(v0, param1, param2, param3, param4);
}
