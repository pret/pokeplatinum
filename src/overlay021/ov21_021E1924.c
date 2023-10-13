#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
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
#include "overlay021/struct_ov21_021DE6D4.h"
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
#include "unk_0201DBEC.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"
#include "unk_02023FCC.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4340.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D5600.h"
#include "overlay021/ov21_021DE668.h"
#include "overlay021/ov21_021E0C68.h"
#include "overlay021/ov21_021E1924.h"
#include "overlay021/ov21_021E29DC.h"

typedef struct {
    int * unk_00;
    UnkStruct_ov21_021D3320 * unk_04;
    UnkStruct_ov21_021DE6D4 * unk_08;
    UnkStruct_ov21_021E68F4 * unk_0C;
    UnkStruct_ov21_021E68F4 * unk_10;
    const UnkStruct_ov21_021E68F4 * unk_14;
} UnkStruct_ov21_021E1A7C;

typedef struct {
    UnkStruct_ov21_021D13FC * unk_00;
} UnkStruct_ov21_021E1A90;

typedef struct {
    void * unk_00;
    void * unk_04;
} UnkStruct_ov21_021E1E8C;

typedef struct {
    UnkStruct_02023FCC * unk_00;
    UnkUnion_020225E0 * unk_04;
    UnkStruct_ov21_021E1E8C unk_08;
    int unk_10;
    int unk_14[8];
    int unk_34;
    u32 unk_38;
} UnkStruct_ov21_021E1E74;

typedef struct {
    UnkStruct_02022550 * unk_00[8];
    UnkStruct_ov21_021D4CA0 * unk_20[8];
    UnkStruct_02009DC8 * unk_40[4];
    UnkStruct_02022550 * unk_50[8];
    UnkStruct_02009DC8 * unk_70[4];
    int unk_80[8];
    void * unk_A0[8];
    u32 unk_C0;
} UnkStruct_ov21_021E2588;

static UnkStruct_ov21_021E1A7C * ov21_021E199C(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021E1A90 * ov21_021E19FC(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021D4660 * ov21_021E1A24(int param0, UnkStruct_ov21_021D0F60 * param1);
static void ov21_021E1A7C(UnkStruct_ov21_021E1A7C * param0);
static void ov21_021E1A90(UnkStruct_ov21_021E1A90 * param0);
static void ov21_021E1AA4(UnkStruct_ov21_021D4660 * param0);
static int ov21_021E1ACC(void);
static int ov21_021E1AD0(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E1B14(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E1B54(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021E1B68(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021E1BFC(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021E1CB8(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static void ov21_021E2588(UnkStruct_ov21_021E2588 * param0);
static void ov21_021E25C0(UnkStruct_ov21_021E2588 * param0);
static void ov21_021E25F8(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, const UnkStruct_ov21_021E1A7C * param2, BOOL param3);
static BOOL ov21_021E2664(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, const UnkStruct_ov21_021E1A7C * param2, BOOL param3);
static void ov21_021E1D40(UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1, int param2);
static void ov21_021E1E00(UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1);
static void ov21_021E1E74(UnkStruct_ov21_021E1E74 * param0);
static void ov21_021E1E8C(u32 param0, u32 param1, void * param2);
static void ov21_021E26A0(UnkStruct_ov21_021E1A90 * param0, UnkStruct_02022550 * param1, UnkStruct_ov21_021D4CA0 * param2, int param3, int param4, int param5, int * param6, int param7, int param8, int param9, void ** param10);
static void ov21_021E274C(UnkStruct_02022550 * param0, UnkStruct_ov21_021D4CA0 * param1, int param2, int param3, int param4);
static void ov21_021E28D0(UnkStruct_ov21_021E2588 * param0, const UnkStruct_ov21_021E1E74 * param1);
static void ov21_021E29A4(UnkStruct_02022550 * param0, int param1, int param2);
static void ov21_021E2968(UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1);
static void ov21_021E2014(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2);
static void ov21_021E2044(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2);
static void ov21_021E20A4(UnkStruct_ov21_021E1A90 * param0, int param1);
static void ov21_021E2180(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2);
static void ov21_021E226C(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1);
static void ov21_021E22C8(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2);
static void ov21_021E2458(UnkStruct_ov21_021E2588 * param0);
static void ov21_021E2478(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2);
static void ov21_021E256C(UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1);
static void ov21_021E275C(UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1, int param2);
static void ov21_021E27C0(UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1, int param2, int param3);
static void ov21_021E2864(UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1);
static void ov21_021E28A8(UnkStruct_ov21_021E1E74 * param0);

static u32 const Unk_ov21_021E9D80[(7 - 2 + 1)] = {
    28 << FX32_SHIFT,
    68 << FX32_SHIFT,
    108 << FX32_SHIFT,
    148 << FX32_SHIFT,
    188 << FX32_SHIFT,
    228 << FX32_SHIFT
};

static u32 const Unk_ov21_021E9D98[(7 - 2 + 1)] = {
    0x2,
    0x4,
    0x6,
    0x8,
    0xA,
    0x0
};

void ov21_021E1924 (UnkStruct_ov21_021E68F4 * param0, UnkStruct_ov21_021D0F60 * param1, int param2)
{
    UnkStruct_ov21_021E1A7C * v0;
    UnkStruct_ov21_021E1A90 * v1;
    UnkStruct_ov21_021D4660 * v2;

    v0 = ov21_021E199C(param2, param1);
    v1 = ov21_021E19FC(param2, param1);
    v2 = ov21_021E1A24(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021E1ACC();

    param0->unk_08[0] = ov21_021E1AD0;
    param0->unk_08[1] = ov21_021E1B14;
    param0->unk_08[2] = ov21_021E1B54;
    param0->unk_14[0] = ov21_021E1B68;
    param0->unk_14[1] = ov21_021E1BFC;
    param0->unk_14[2] = ov21_021E1CB8;
}

void ov21_021E1984 (UnkStruct_ov21_021E68F4 * param0)
{
    ov21_021E1A7C(param0->unk_00);
    ov21_021E1A90(param0->unk_00);
    ov21_021E1AA4(param0->unk_20);
}

static UnkStruct_ov21_021E1A7C * ov21_021E199C (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021E1A7C * v0;
    UnkStruct_ov21_021E68F4 * v1;
    UnkStruct_ov21_021D3320 * v2;
    int v3;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E1A7C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E1A7C));

    v0->unk_00 = ov21_021D13A0(param1);
    v0->unk_04 = ov21_021D13EC(param1);

    v1 = ov21_021D1430(param1, 3);
    v0->unk_14 = v1;

    v1 = ov21_021D1410(param1, 2);
    v0->unk_08 = v1->unk_00;

    v1 = ov21_021D1410(param1, 3);
    v0->unk_0C = v1;

    v1 = ov21_021D1410(param1, 4);
    v0->unk_10 = v1;

    return v0;
}

static UnkStruct_ov21_021E1A90 * ov21_021E19FC (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021E1A90 * v0;
    UnkStruct_ov21_021E68F4 * v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E1A90));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E1A90));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 * ov21_021E1A24 (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021D4660 * v0;
    int v1 = ov21_021E1ACC();

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D4A94(param0, &v0[0], param1, (1 << 0));
    ov21_021D4BB4(param0, &v0[1], param1, (1 << 1));
    ov21_021D4AF8(param0, &v0[2], param1, (1 << 2));

    return v0;
}

static void ov21_021E1A7C (UnkStruct_ov21_021E1A7C * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E1A90 (UnkStruct_ov21_021E1A90 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E1AA4 (UnkStruct_ov21_021D4660 * param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    ov21_021D4660(&param0[1]);
    ov21_021D4660(&param0[2]);
    Heap_FreeToHeap(param0);
}

static int ov21_021E1ACC (void)
{
    return 3;
}

static int ov21_021E1AD0 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021E1A7C * v0 = param1;
    UnkStruct_ov21_021E1E74 * v1 = param0->unk_08;
    int v2;

    v1 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021E1E74));
    memset(v1, 0, sizeof(UnkStruct_ov21_021E1E74));

    for (v2 = 0; v2 < 8; v2++) {
        v1->unk_14[v2] = (3 + 1);
    }

    v1->unk_10 = 0;

    ov21_021E1D40(v1, v0, param0->unk_04);
    ov21_021E2968(v1, v0);

    param0->unk_08 = v1;

    return 1;
}

static int ov21_021E1B14 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021E1A7C * v0 = param1;
    UnkStruct_ov21_021E1E74 * v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    if (ov21_021E33AC(v0->unk_14)) {
        ov21_021E28A8(v1);
        ov21_021E1E00(v1, v0);
        ov21_021E2864(v1, v0);
    }

    return 0;
}

static int ov21_021E1B54 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021E1A7C * v0 = param1;
    UnkStruct_ov21_021E1E74 * v1 = param0->unk_08;

    ov21_021E1E74(v1);
    Heap_FreeToHeap(v1);

    return 1;
}

static int ov21_021E1B68 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021E1A7C * v0 = param2;
    const UnkStruct_ov21_021E1E74 * v1 = param3->unk_08;
    UnkStruct_ov21_021E1A90 * v2 = param0;
    UnkStruct_ov21_021E2588 * v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021E2588));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E2588));
        param1->unk_00++;
        break;
    case 1:
        ov21_021E2014(v3, v2, param1->unk_04);
        ov21_021E28D0(v3, v1);
        ov21_021E25F8(v3, v2, v0, 1);
        param1->unk_00++;
        break;
    case 2:
        if (ov21_021E2664(v3, v2, v0, 1)) {
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

static int ov21_021E1BFC (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021E1A7C * v0 = param2;
    const UnkStruct_ov21_021E1E74 * v1 = param3->unk_08;
    UnkStruct_ov21_021E1A90 * v2 = param0;
    UnkStruct_ov21_021E2588 * v3 = param1->unk_08;
    int v4;
    int v5;
    BOOL v6;

    if (v3->unk_C0 != v1->unk_38) {
        ov21_021E28D0(v3, v1);
        v3->unk_C0 = v1->unk_38;
    }

    for (v4 = 0; v4 <= 1; v4++) {
        v6 = 0;

        if (v4 == 0) {
            v6 = 1;
        } else {
            v6 = 1;
        }

        if (v6) {
            if (v4 == 0) {
                v5 = 4;
            } else {
                v5 = 5;
            }

            ov21_021E26A0(v2, v3->unk_00[v4], v3->unk_20[v4], v1->unk_14[v4], -6, v5, &v3->unk_80[v4], param1->unk_04, 4, 1, &v3->unk_A0[v4]);
            ov21_021D144C(v3->unk_50[v4], v1->unk_14[v4]);
        }
    }

    for (v4 = 2; v4 < 8; v4++) {
        ov21_021E29A4(v3->unk_00[v4], v1->unk_14[v4], v4);
    }

    return 0;
}

static int ov21_021E1CB8 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021E1A7C * v0 = param2;
    const UnkStruct_ov21_021E1E74 * v1 = param3->unk_08;
    UnkStruct_ov21_021E1A90 * v2 = param0;
    UnkStruct_ov21_021E2588 * v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        ov21_021D25AC(&v2->unk_00->unk_1E0, 1);
        ov21_021E25F8(v3, v2, v0, 0);
        param1->unk_00++;
        break;
    case 1:
        if (ov21_021E2664(v3, v2, v0, 0)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E2044(v3, v2, param1->unk_04);
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

static void ov21_021E1D40 (UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1, int param2)
{
    param0->unk_04 = Heap_AllocFromHeap(param2, sizeof(UnkUnion_020225E0) * 8);

    ov21_021D154C(&param0->unk_04[0], 132 - (40 / 2), 132 + (40 / 2), 128 - (160 / 2), 128 + (160 / 2));
    ov21_021D154C(&param0->unk_04[1], 76 - (40 / 2), 76 + (40 / 2), 128 - (160 / 2), 128 + (160 / 2));
    ov21_021D154C(&param0->unk_04[2], 176 - (32 / 2), 176 + (32 / 2), 28 - (40 / 2), 28 + (40 / 2));
    ov21_021D154C(&param0->unk_04[3], 176 - (32 / 2), 176 + (32 / 2), 68 - (40 / 2), 68 + (40 / 2));
    ov21_021D154C(&param0->unk_04[4], 176 - (32 / 2), 176 + (32 / 2), 108 - (40 / 2), 108 + (40 / 2));
    ov21_021D154C(&param0->unk_04[5], 176 - (32 / 2), 176 + (32 / 2), 148 - (40 / 2), 148 + (40 / 2));
    ov21_021D154C(&param0->unk_04[6], 176 - (32 / 2), 176 + (32 / 2), 188 - (40 / 2), 188 + (40 / 2));
    ov21_021D154C(&param0->unk_04[7], 176 - (32 / 2), 176 + (32 / 2), 228 - (40 / 2), 228 + (40 / 2));

    param0->unk_08.unk_00 = param1;
    param0->unk_08.unk_04 = param0;
    param0->unk_00 = sub_02023FCC(param0->unk_04, 8, ov21_021E1E8C, &param0->unk_08, param2);
}

static void ov21_021E1E00 (UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_14[v0] = 3;
    }

    sub_0202404C(param0->unk_00);

    switch (param0->unk_10) {
    case 0:
        param0->unk_14[2] = 1;
        break;
    case 1:
        param0->unk_14[3] = 1;
        break;
    case 2:
        param0->unk_14[4] = 1;
        break;
    case 3:
        param0->unk_14[5] = 1;
        break;
    case 4:
        param0->unk_14[6] = 1;
        break;
    case 5:
        param0->unk_14[7] = 1;
        break;
    default:
        break;
    }

    switch (param0->unk_34) {
    case 0:
        param0->unk_14[0] = 2;
        break;
    case 1:
        param0->unk_14[1] = 2;
        break;
    default:
        break;
    }
}

static void ov21_021E1E74 (UnkStruct_ov21_021E1E74 * param0)
{
    sub_02024034(param0->unk_00);
    Heap_FreeToHeap(param0->unk_04);

    param0->unk_04 = NULL;
}

static void ov21_021E1E8C (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov21_021E1E8C * v0 = param2;
    UnkStruct_ov21_021E1A7C * v1 = v0->unk_00;
    UnkStruct_ov21_021E1E74 * v2 = v0->unk_04;
    BOOL v3;

    v2->unk_14[param0] = param1;

    switch (param1) {
    case 2:
        switch (param0) {
        case 0:
            v2->unk_34 = 0;
            break;
        case 1:
            v2->unk_34 = 1;
            break;
        case 2:
            if (v2->unk_38 & 1) {
                if (v2->unk_10 == 0) {
                    v3 = ov21_021DE6D4(v1->unk_08, 1);
                } else {
                    ov21_021DE6D8(v1->unk_08, 0);
                    v3 = 1;
                }

                if (v3) {
                    ov21_021E27C0(v2, v1, v2->unk_10, 0);
                    sub_02005748(1675);
                }
            }
            break;
        case 3:
            if (v2->unk_38 & 2) {
                if (v2->unk_10 == 1) {
                    v3 = ov21_021E0CE4(v1->unk_10);
                } else {
                    ov21_021E0CE8(v1->unk_10, 0);
                    v3 = 1;
                }

                if (v3) {
                    ov21_021E27C0(v2, v1, v2->unk_10, 1);
                    sub_02005748(1675);
                }
            }
            break;
        case 4:
            if (v2->unk_38 & 4) {
                if (v2->unk_10 == 2) {
                    v3 = ov21_021E0CE4(v1->unk_10);
                } else {
                    ov21_021E0CE8(v1->unk_10, 0);
                    v3 = 1;
                }

                if (v3) {
                    ov21_021E27C0(v2, v1, v2->unk_10, 2);
                    sub_02005748(1675);
                }
            }
            break;
        case 5:
            if (v2->unk_38 & 8) {
                if (v2->unk_10 == 3) {
                    v3 = ov21_021E0CE4(v1->unk_10);
                } else {
                    ov21_021E0CE8(v1->unk_10, 0);
                    v3 = 1;
                }

                if (v3) {
                    ov21_021E27C0(v2, v1, v2->unk_10, 3);
                    sub_02005748(1675);
                }
            }
            break;
        case 6:
            if (v2->unk_38 & 16) {
                if (v2->unk_10 == 4) {
                    v3 = ov21_021E0CE4(v1->unk_10);
                } else {
                    ov21_021E0CE8(v1->unk_10, 0);
                    v3 = 1;
                }

                if (v3) {
                    ov21_021E27C0(v2, v1, v2->unk_10, 4);
                    sub_02005748(1675);
                }
            }
            break;
        case 7:
            if (v2->unk_38 & 32) {
                if (v2->unk_10 == 5) {
                    v3 = ov21_021E0CE4(v1->unk_10);
                } else {
                    ov21_021E0CE8(v1->unk_10, 0);
                    v3 = 1;
                }

                if (v3) {
                    ov21_021E27C0(v2, v1, v2->unk_10, 5);
                    sub_02005748(1675);
                }
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

static void ov21_021E2014 (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2)
{
    ov21_021E20A4(param1, param2);
    ov21_021E2180(param0, param1, param2);
    ov21_021E22C8(param0, param1, param2);
    ov21_021E2478(param0, param1, param2);
}

static void ov21_021E2044 (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2)
{
    int v0;

    ov21_021D276C(param1->unk_00, 9, 4, 4 * 32, 32, param2);
    ov21_021D276C(param1->unk_00, 9, 4, 5 * 32, 32, param2);
    ov21_021E2458(param0);
    ov21_021E256C(param0, param1);
    ov21_021E226C(param0, param1);

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_A0[v0]) {
            Heap_FreeToHeap(param0->unk_A0[v0]);
        }
    }
}

static void ov21_021E20A4 (UnkStruct_ov21_021E1A90 * param0, int param1)
{
    void * v0;
    NNSG2dScreenData * v1;

    ov21_021D2724(param0->unk_00, 34, param0->unk_00->unk_00, 6, 0, 0, 1, param1);

    v0 = ov21_021D27B8(param0->unk_00, 62, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 60, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 6, v1->rawData, ((128 - (160 / 2)) / 8), (((132 - (40 / 2)) / 8)), v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 63, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 6, v1->rawData, ((128 - (160 / 2)) / 8), (((76 - (40 / 2)) / 8)), v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 6);
}

static void ov21_021E2180 (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;
    NARC * v1 = ov21_021D26E0(v0);

    param0->unk_40[0] = sub_02009A4C(v0->unk_13C[0], v1, 102, 1, 102 + 5000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    sub_0200A3DC(param0->unk_40[0]);
    sub_02009D4C(param0->unk_40[0]);

    param0->unk_40[2] = sub_02009BC4(v0->unk_13C[2], v1, 100, 1, 100 + 5000, 2, param2);
    param0->unk_40[3] = sub_02009BC4(v0->unk_13C[3], v1, 101, 1, 101 + 5000, 3, param2);
    param0->unk_70[0] = sub_02009A4C(v0->unk_13C[0], v1, 99, 1, 99 + 5000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    sub_0200A3DC(param0->unk_70[0]);
    sub_02009D4C(param0->unk_70[0]);

    param0->unk_70[2] = sub_02009BC4(v0->unk_13C[2], v1, 97, 1, 97 + 5000, 2, param2);
    param0->unk_70[3] = sub_02009BC4(v0->unk_13C[3], v1, 98, 1, 98 + 5000, 3, param2);
}

static void ov21_021E226C (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_40[0]);
    sub_02009D68(v0->unk_13C[0], param0->unk_40[0]);
    sub_02009D68(v0->unk_13C[2], param0->unk_40[2]);
    sub_02009D68(v0->unk_13C[3], param0->unk_40[3]);

    sub_0200A4E4(param0->unk_70[0]);
    sub_02009D68(v0->unk_13C[0], param0->unk_70[0]);
    sub_02009D68(v0->unk_13C[2], param0->unk_70[2]);
    sub_02009D68(v0->unk_13C[3], param0->unk_70[3]);
}

static void ov21_021E22C8 (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    UnkStruct_ov21_021D13FC * v2 = param1->unk_00;
    int v3;

    sub_020093B4(&v0, 102 + 5000, 11 + 2100, 100 + 5000, 101 + 5000, 0xffffffff, 0xffffffff, 0, 2, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.unk_00 = v2->unk_138;
    v1.unk_04 = &v0;
    v1.unk_14 = 31;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_1C = param2;

    v1.unk_08.x = 128 << FX32_SHIFT;
    v1.unk_08.y = 132 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_00[0] = sub_02021B90(&v1);
    sub_02021D6C(param0->unk_00[0], 0);

    v1.unk_08.x = 128 << FX32_SHIFT;
    v1.unk_08.y = 76 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_00[1] = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_00[1], 0);
    sub_020093B4(&v0, 99 + 5000, 11 + 2100, 97 + 5000, 98 + 5000, 0xffffffff, 0xffffffff, 0, 2, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.unk_04 = &v0;
    v1.unk_08.y = 176 << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    for (v3 = 0; v3 < (7 - 2 + 1); ++v3) {
        v1.unk_08.x = Unk_ov21_021E9D80[v3];
        param0->unk_00[v3 + 2] = sub_02021B90(&v1);

        sub_02021D6C(param0->unk_00[v3 + 2], Unk_ov21_021E9D98[v3]);
    }

    v1.unk_14 = 31 - 1;

    v1.unk_08.x = (128 + (+32)) << FX32_SHIFT;
    v1.unk_08.y = (132 + 2) << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_50[0] = sub_02021B90(&v1);
    sub_02021D6C(param0->unk_50[0], 13);

    v1.unk_08.x = (128 + -32) << FX32_SHIFT;
    v1.unk_08.y = (76 + 2) << FX32_SHIFT;
    v1.unk_08.y += (192 << FX32_SHIFT);

    param0->unk_50[1] = sub_02021B90(&v1);
    sub_02021D6C(param0->unk_50[1], 12);

    for (v3 = 1 + 1; v3 < 8; v3++) {
        param0->unk_50[v3] = NULL;
    }
}

static void ov21_021E2458 (UnkStruct_ov21_021E2588 * param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        sub_02021BD4(param0->unk_00[v0]);

        if (param0->unk_50[v0]) {
            sub_02021BD4(param0->unk_50[v0]);
        }
    }
}

static void ov21_021E2478 (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, int param2)
{
    UnkStruct_0205AA50 * v0;
    UnkStruct_ov21_021D4CB8 v1;
    UnkStruct_02009DC8 * v2;
    UnkStruct_ov21_021D13FC * v3 = param1->unk_00;
    int v4;
    int v5;

    GF_ASSERT(param0->unk_00[0]);

    v2 = sub_02009DC8(v3->unk_13C[1], 11 + 2100);

    v1.unk_00 = v3->unk_14C;
    v1.unk_08 = sub_0200A72C(v2, NULL);
    v1.unk_14 = -6;
    v1.unk_18 = 2;
    v1.unk_1C = 0;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_24 = param2;

    v4 = sub_0201FAB4(v1.unk_08, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = ov21_021D4D6C(v3->unk_14C, 8, 4);

    ov21_021D4DAC(v3->unk_14C, v0, 697, 33, 0, 0);

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[0];
    v1.unk_10 = -32;

    param0->unk_20[0] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_20[0]->unk_00, v4 + 4);
    ov21_021D4DA0(v0);

    v0 = ov21_021D4D6C(v3->unk_14C, 8, 4);

    {
        u32 v6 = ov21_021D4DAC(v3->unk_14C, v0, 697, 34, 0, 0);
        v1.unk_10 = 32 - v6;
    }

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[1];

    param0->unk_20[1] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_20[1]->unk_00, v4 + 4);
    ov21_021D4DA0(v0);

    for (v5 = 2; v5 < 8; v5++) {
        param0->unk_20[v5] = NULL;
    }
}

static void ov21_021E256C (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_20[v0]) {
            ov21_021D4D1C(param0->unk_20[v0]);
        }
    }
}

static void ov21_021E2588 (UnkStruct_ov21_021E2588 * param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        sub_02021FE0(param0->unk_00[v0], GX_OAM_MODE_XLU);

        if (param0->unk_20[v0]) {
            sub_02012AF0(param0->unk_20[v0]->unk_00, GX_OAM_MODE_XLU);
        }

        if (param0->unk_50[v0]) {
            sub_02021FE0(param0->unk_50[v0], GX_OAM_MODE_XLU);
        }
    }
}

static void ov21_021E25C0 (UnkStruct_ov21_021E2588 * param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        sub_02021FE0(param0->unk_00[v0], GX_OAM_MODE_NORMAL);

        if (param0->unk_20[v0]) {
            sub_02012AF0(param0->unk_20[v0]->unk_00, GX_OAM_MODE_NORMAL);
        }

        if (param0->unk_50[v0]) {
            sub_02021FE0(param0->unk_50[v0], GX_OAM_MODE_NORMAL);
        }
    }
}

static void ov21_021E25F8 (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, const UnkStruct_ov21_021E1A7C * param2, BOOL param3)
{
    ov21_021E2588(param0);

    if (ov21_021E33A4(param2->unk_14)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_18C, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_18C, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL ov21_021E2664 (UnkStruct_ov21_021E2588 * param0, UnkStruct_ov21_021E1A90 * param1, const UnkStruct_ov21_021E1A7C * param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E33A4(param2->unk_14)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_18C);
    } else {
        v0 = sub_0200AC1C(2);
    }

    if (v0) {
        if (param3) {
            ov21_021E25C0(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E26A0 (UnkStruct_ov21_021E1A90 * param0, UnkStruct_02022550 * param1, UnkStruct_ov21_021D4CA0 * param2, int param3, int param4, int param5, int * param6, int param7, int param8, int param9, void ** param10)
{
    int v0;
    NNSG2dPaletteData * v1;
    BOOL v2;
    BOOL v3 = 0;
    int v4;

    ov21_021D144C(param1, param3);
    ov21_021E274C(param1, param2, param4, param8, param9);

    v0 = sub_02021E74(param1);

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

static void ov21_021E274C (UnkStruct_02022550 * param0, UnkStruct_ov21_021D4CA0 * param1, int param2, int param3, int param4)
{
    ov21_021D1524(param0, param1, param2, param3, param4);
}

static void ov21_021E275C (UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1, int param2)
{
    int v0, v1;

    param1->unk_08->unk_1C = 1;
    *param1->unk_00 |= (1 << 2);
    param0->unk_10 = 0;

    v0 = 48;
    v1 = 72;

    param1->unk_08->unk_14 = 2;

    switch (param2) {
    case 0:
        param1->unk_08->unk_08 = v0;
        param1->unk_08->unk_0C = v1;
        param1->unk_08->unk_14 = 1;
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        ov21_021E0CD4(param1->unk_10, v0, v1);
        ov21_021E0CDC(param1->unk_10, 1);
        break;
    default:
        break;
    }
}

static void ov21_021E27C0 (UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1, int param2, int param3)
{
    int v0, v1;
    int v2;

    switch (param3) {
    case 0:
        *param1->unk_00 |= (1 << 2);
        param0->unk_10 = 0;
        v0 = 48;
        v1 = 72;
        param1->unk_08->unk_14 = 2;
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        *param1->unk_00 |= (1 << 1);
        param0->unk_10 = param3;
        v0 = 48;
        v1 = 72;

        ov21_021E0CDC(param1->unk_10, 2);
        v2 = ov21_021D5608(param3 - 1);
        ov21_021E0CF8(param1->unk_10, v2);
        break;
    default:
        break;
    }

    switch (param2) {
    case 0:
        param1->unk_08->unk_08 = v0;
        param1->unk_08->unk_0C = v1;
        param1->unk_08->unk_14 = 2;
        break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        ov21_021E0CD4(param1->unk_10, v0, v1);
        ov21_021E0CDC(param1->unk_10, 2);
        break;
    default:
        break;
    }
}

static void ov21_021E2864 (UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1)
{
    BOOL v0;

    if (param0->unk_34 != 8) {
        if (param0->unk_34 == 1) {
            v0 = ov21_021D371C(param1->unk_04, -1);
        } else {
            v0 = ov21_021D371C(param1->unk_04, 1);
        }

        if (v0 == 1) {
            ov21_021E275C(param0, param1, param0->unk_10);
            ov21_021E2968(param0, param1);
            sub_02005748(1675);
        }
    }
}

static void ov21_021E28A8 (UnkStruct_ov21_021E1E74 * param0)
{
    if (gCoreSys.padInput & PAD_KEY_UP) {
        param0->unk_34 = 1;
        return;
    }

    if (gCoreSys.padInput & PAD_KEY_DOWN) {
        param0->unk_34 = 0;
        return;
    }

    param0->unk_34 = 8;
}

static void ov21_021E28D0 (UnkStruct_ov21_021E2588 * param0, const UnkStruct_ov21_021E1E74 * param1)
{
    if ((param1->unk_38 & 1) == 0) {
        sub_02021CAC(param0->unk_00[2], 0);
    } else {
        sub_02021CAC(param0->unk_00[2], 1);
    }

    if ((param1->unk_38 & 2) == 0) {
        sub_02021CAC(param0->unk_00[3], 0);
    } else {
        sub_02021CAC(param0->unk_00[3], 1);
    }

    if ((param1->unk_38 & 4) == 0) {
        sub_02021CAC(param0->unk_00[4], 0);
    } else {
        sub_02021CAC(param0->unk_00[4], 1);
    }

    if ((param1->unk_38 & 8) == 0) {
        sub_02021CAC(param0->unk_00[5], 0);
    } else {
        sub_02021CAC(param0->unk_00[5], 1);
    }

    if ((param1->unk_38 & 16) == 0) {
        sub_02021CAC(param0->unk_00[6], 0);
    } else {
        sub_02021CAC(param0->unk_00[6], 1);
    }

    if ((param1->unk_38 & 32) == 0) {
        sub_02021CAC(param0->unk_00[7], 0);
    } else {
        sub_02021CAC(param0->unk_00[7], 1);
    }
}

static void ov21_021E2968 (UnkStruct_ov21_021E1E74 * param0, UnkStruct_ov21_021E1A7C * param1)
{
    BOOL v0;
    int v1;
    int v2;

    param0->unk_38 = 0;

    for (v1 = 0; v1 < (6 - 1); v1++) {
        v2 = ov21_021D5608(v1);
        v0 = ov21_021D392C(param1->unk_04, v2);

        if (v0) {
            param0->unk_38 |= 1;
            param0->unk_38 |= 1 << (v1 + 1);
        }
    }
}

static void ov21_021E29A4 (UnkStruct_02022550 * param0, int param1, int param2)
{
    int v0;

    GF_ASSERT((param2 >= 2) && (param2 < 8));

    v0 = Unk_ov21_021E9D98[param2 - 2];

    if (param1 == 1) {
        sub_02021D6C(param0, v0 + 1);
    } else {
        sub_02021D6C(param0, v0);
    }
}
