#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6B20.h"
#include "overlay083/struct_ov83_0223D9A8.h"

#include "overlay021/struct_ov21_021E6A68.h"

#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_02012744.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"
#include "pokemon.h"
#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021DF734.h"
#include "overlay021/ov21_021E29DC.h"

typedef struct {
    int * unk_00;
    UnkStruct_ov21_021D3320 * unk_04;
    const UnkStruct_ov21_021E68F4 * unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov21_021DF844;

typedef struct {
    UnkStruct_ov21_021D13FC * unk_00;
    BOOL unk_04;
    BOOL unk_08;
} UnkStruct_ov21_021DF858;

typedef struct {
    GraphicElementData * unk_00[4];
    UnkStruct_02009DC8 * unk_10[4];
    UnkStruct_ov21_021D4CA0 * unk_20[2];
    UnkStruct_ov21_021D2648 unk_28[4];
    int unk_A8[4];
    int unk_B8;
    GraphicElementData * unk_BC;
    int unk_C0;
    BOOL unk_C4;
    int unk_C8;
    int unk_CC;
} UnkStruct_ov21_021DFFF8;

static inline int inline_ov21_021E00F4(int param0, int param1);
static UnkStruct_ov21_021DF844 * ov21_021DF7CC(int param0, UnkStruct_ov21_021D0F60 * param1);
static UnkStruct_ov21_021DF858 * ov21_021DF80C(int param0, UnkStruct_ov21_021D0F60 * param1);
static void ov21_021DF844(UnkStruct_ov21_021DF844 * param0);
static void ov21_021DF858(UnkStruct_ov21_021DF858 * param0);
static int ov21_021DF86C(void);
static int ov21_021DF870(int param0, int param1, int param2, int param3);
static int ov21_021DF888(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021DF8B0(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021DF8C0(UnkStruct_ov21_021E6A68 * param0, void * param1);
static int ov21_021DF8C4(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021DF958(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static int ov21_021DFA18(void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3);
static void ov21_021DFF38(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, BOOL param3);
static BOOL ov21_021DFFA8(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, BOOL param3);
static void ov21_021E0078(UnkStruct_ov21_021DF858 * param0);
static void ov21_021DFFF8(UnkStruct_ov21_021DFFF8 * param0);
static void ov21_021E0038(UnkStruct_ov21_021DFFF8 * param0);
static void ov21_021E0094(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1);
static BOOL ov21_021E00B8(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1);
static void ov21_021E00F4(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, int param2, int param3, int param4);
static BOOL ov21_021E015C(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, int param2);
static int ov21_021E01CC(int param0, const UnkStruct_ov21_021DF844 * param1);
static int ov21_021E0268(int param0, const UnkStruct_ov21_021DF844 * param1);
static int ov21_021E02F0(int param0, const UnkStruct_ov21_021DF844 * param1);
static void ov21_021DFA84(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3);
static void ov21_021DFACC(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1);
static void ov21_021DFAE8(UnkStruct_ov21_021DF858 * param0, int param1);
static void ov21_021DFD1C(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, int param2);
static void ov21_021DFDC8(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1);
static void ov21_021DFE0C(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3);
static void ov21_021DFF18(UnkStruct_ov21_021DFFF8 * param0);
static void ov21_021DFB50(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2);
static void ov21_021DFBB4(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2);
static void ov21_021DFBEC(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5, int param6);
static void ov21_021E0354(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E03EC(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E0478(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E0504(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E0590(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E061C(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E06A8(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E072C(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E07B8(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E0844(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E0B24(int param0, int * param1, int * param2);
static void ov21_021DFD00(UnkStruct_ov21_021DF858 * param0);
static void ov21_021E08D0(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E0944(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5);
static void ov21_021E09A4(UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5, int param6, int param7);
static int ov21_021E0A4C(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0A8C(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0A90(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0A94(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0A98(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0AA8(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0AB8(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0AC8(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0AD8(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0ADC(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0AEC(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0AFC(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0B10(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2);
static int ov21_021E0B64(UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2, int param3);
static void ov21_021E0BF8(UnkStruct_ov21_021DFFF8 * param0);
static void ov21_021E0C10(UnkStruct_ov21_021DFFF8 * param0);
static void ov21_021E0C30(UnkStruct_ov21_021DFFF8 * param0);

void ov21_021DF734 (UnkStruct_ov21_021E68F4 * param0, UnkStruct_ov21_021D0F60 * param1, int param2)
{
    UnkStruct_ov21_021DF844 * v0;
    UnkStruct_ov21_021DF858 * v1;

    v0 = ov21_021DF7CC(param2, param1);
    v1 = ov21_021DF80C(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021DF86C();

    param0->unk_08[0] = ov21_021DF888;
    param0->unk_08[1] = ov21_021DF8B0;
    param0->unk_08[2] = ov21_021DF8C0;
    param0->unk_14[0] = ov21_021DF8C4;
    param0->unk_14[1] = ov21_021DF958;
    param0->unk_14[2] = ov21_021DFA18;
}

void ov21_021DF78C (UnkStruct_ov21_021E68F4 * param0)
{
    ov21_021DF844(param0->unk_00);
    ov21_021DF858(param0->unk_04);
}

BOOL ov21_021DF7A0 (UnkStruct_ov21_021E68F4 * param0, int param1)
{
    UnkStruct_ov21_021DF844 * v0 = param0->unk_00;
    UnkStruct_ov21_021DF858 * v1 = param0->unk_04;
    int v2;

    if (v1->unk_04 == 1) {
        return 0;
    }

    v2 = v0->unk_14;
    v0->unk_14 = ov21_021DF870(v0->unk_0C, v0->unk_14, param1, v0->unk_10);

    if (v2 != v0->unk_14) {
        return 1;
    }

    return 0;
}

static UnkStruct_ov21_021DF844 * ov21_021DF7CC (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021DF844 * v0;
    UnkStruct_ov21_021E68F4 * v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021DF844));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DF844));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v1 = ov21_021D1410(param1, 5);
    v0->unk_08 = v1;

    return v0;
}

static UnkStruct_ov21_021DF858 * ov21_021DF80C (int param0, UnkStruct_ov21_021D0F60 * param1)
{
    UnkStruct_ov21_021DF858 * v0;
    UnkStruct_ov21_021E68F4 * v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021DF858));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DF858));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021DF844 (UnkStruct_ov21_021DF844 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021DF858 (UnkStruct_ov21_021DF858 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021DF86C (void)
{
    return 0;
}

static inline int inline_ov21_021DF870 (int param0, int param1, int param2)
{
    int v0;

    if (param2 > 0) {
        if ((param0 + param2) < param1) {
            v0 = param0 + param2;
        } else {
            v0 = 0;
        }
    } else {
        if ((param0 + param2) >= 0) {
            v0 = param2;
        } else {
            v0 = param1 - 1;
        }
    }

    return v0;
}

static int ov21_021DF870 (int param0, int param1, int param2, int param3)
{
    int v0;

    v0 = inline_ov21_021DF870(param1, param3, param2);

    return v0;
}

static int ov21_021DF888 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021DF844 * v0 = param1;
    int v1;

    v1 = ov21_021D37BC(v0->unk_04);

    v0->unk_0C = ov21_021E01CC(v1, v0);
    v0->unk_10 = ov21_021E0268(v1, v0);
    v0->unk_14 = 0;

    return 1;
}

static int ov21_021DF8B0 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    UnkStruct_ov21_021DF844 * v0 = param1;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    return 0;
}

static int ov21_021DF8C0 (UnkStruct_ov21_021E6A68 * param0, void * param1)
{
    return 1;
}

static int ov21_021DF8C4 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021DF844 * v0 = param2;
    UnkStruct_ov21_021DF858 * v1 = param0;
    UnkStruct_ov21_021DFFF8 * v2 = param1->unk_08;
    BOOL v3;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021DFFF8));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021DFFF8));
        v2 = param1->unk_08;
        v2->unk_C8 = v0->unk_0C;
        v1->unk_04 = 0;
        v1->unk_08 = 0;
        param1->unk_00++;
        break;
    case 1:
        ov21_021DFA84(v2, v1, v0, param1->unk_04);
        ov21_021DFF38(v2, v1, v0, 1);
        param1->unk_00++;
        break;
    case 2:
        v3 = ov21_021DFFA8(v2, v1, v0, 1);

        if (v3) {
            param1->unk_00++;
        }
        break;
    case 3:
        G2_BlendNone();
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021DF958 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021DF844 * v0 = param2;
    UnkStruct_ov21_021DF858 * v1 = param0;
    UnkStruct_ov21_021DFFF8 * v2 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        if (v0->unk_14 != v2->unk_CC) {
            v2->unk_CC = v0->unk_14;
            v2->unk_B8 = (v2->unk_B8 + 1) % 2;
            ov21_021E0094(v2, v1);
            ov21_021E0C10(v2);
            v1->unk_04 = 1;
            Sound_PlayEffect(1675);
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov21_021E00B8(v2, v1) == 1) {
            v1->unk_08 = 1;
            param1->unk_00++;
        }
        break;
    case 2:
        if ((v1->unk_08 == 1)) {
            ov21_021E0944(v2, v1, v0, param1->unk_04, v0->unk_0C, v0->unk_14);
            ov21_021DFBB4(v2, v1, v0);
            v1->unk_08 = 0;
            v1->unk_04 = 0;
            param1->unk_00 = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov21_021E0C30(v2);

    return 0;
}

static int ov21_021DFA18 (void * param0, UnkStruct_ov21_021E6B20 * param1, const void * param2, const UnkStruct_ov21_021E6A68 * param3)
{
    const UnkStruct_ov21_021DF844 * v0 = param2;
    UnkStruct_ov21_021DF858 * v1 = param0;
    UnkStruct_ov21_021DFFF8 * v2 = param1->unk_08;
    BOOL v3;

    switch (param1->unk_00) {
    case 0:
        ov21_021DFF38(v2, v1, v0, 0);
        param1->unk_00++;
        break;
    case 1:
        v3 = ov21_021DFFA8(v2, v1, v0, 0);

        if (v3) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021DFACC(v2, v1);
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

static void ov21_021DFA84 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3)
{
    ov21_021DFB50(param0, param1, param2);
    ov21_021DFD1C(param0, param1, param3);
    ov21_021DFAE8(param1, param3);
    ov21_021DFE0C(param0, param1, param2, param3);
    ov21_021E08D0(param0, param1, param2, param3, param2->unk_0C, param2->unk_14);
}

static void ov21_021DFACC (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1)
{
    ov21_021E0BF8(param0);
    ov21_021DFF18(param0);
    ov21_021DFDC8(param0, param1);
}

static void ov21_021DFAE8 (UnkStruct_ov21_021DF858 * param0, int param1)
{
    void * v0;
    NNSG2dScreenData * v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, param1);

    v0 = ov21_021D27B8(param0->unk_00, 50, 1, &v1, param1);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 3);
}

static void ov21_021DFB50 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2)
{
    int v0 = ov21_021D37BC(param2->unk_04);
    int v1;
    int v2;

    ov21_021DFBEC(param0, param1, param2, v0, param2->unk_0C, param2->unk_14, 0);

    v2 = ov21_021DF870(param2->unk_0C, param2->unk_14, 1, param2->unk_10);
    ov21_021DFBEC(param0, param1, param2, v0, param2->unk_0C, v2, 2);

    for (v1 = 0; v1 < 4; v1++) {
        ov21_021D2280(param1->unk_00, 1, v1);
    }
}

static void ov21_021DFBB4 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2)
{
    int v0 = ov21_021D37BC(param2->unk_04);
    int v1;
    int v2;

    v2 = ov21_021DF870(param2->unk_0C, param2->unk_14, 1, param2->unk_10);
    ov21_021DFBEC(param0, param1, param2, v0, param2->unk_0C, v2, 2);
}

static void ov21_021DFBEC (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5, int param6)
{
    GF_ASSERT(param6 <= 2);

    switch (param4) {
    case 0:
    case 1:
    case 2:
    case 3:
        ov21_021E0354(param0, param1, param2, param3, param5, param6);
        break;
    case 6:
        ov21_021E03EC(param0, param1, param2, param3, param5, param6);
        break;
    case 7:
        ov21_021E0478(param0, param1, param2, param3, param5, param6);
        break;
    case 4:
        ov21_021E0504(param0, param1, param2, param3, param5, param6);
        break;
    case 5:
        ov21_021E0590(param0, param1, param2, param3, param5, param6);
        break;
    case 8:
        ov21_021E061C(param0, param1, param2, param3, param5, param6);
        break;
    case 9:
        ov21_021E06A8(param0, param1, param2, param3, param5, param6);
        break;
    case 10:
        ov21_021E072C(param0, param1, param2, param3, param5, param6);
        break;
    case 11:
        ov21_021E07B8(param0, param1, param2, param3, param5, param6);
        break;
    case 12:
        ov21_021E0844(param0, param1, param2, param3, param5, param6);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov21_021DFD00 (UnkStruct_ov21_021DF858 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov21_021D2280(param0->unk_00, 0, v0);
    }
}

static void ov21_021DFD1C (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, int param2)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;
    NARC * v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_10[0] = sub_02009A4C(v0->unk_13C[0], v1, 122, 1, 122 + 14000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_10[0]);
    sub_02009D4C(param0->unk_10[0]);

    param0->unk_10[1] = sub_02009B04(v0->unk_13C[1], v1, 22, 0, 22 + 14000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    sub_0200A640(param0->unk_10[1]);
    sub_02009D4C(param0->unk_10[1]);

    param0->unk_10[2] = sub_02009BC4(v0->unk_13C[2], v1, 123, 1, 123 + 14000, 2, param2);
    param0->unk_10[3] = sub_02009BC4(v0->unk_13C[3], v1, 121, 1, 121 + 14000, 3, param2);
}

static void ov21_021DFDC8 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1)
{
    UnkStruct_ov21_021D13FC * v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_10[0]);
    sub_0200A6DC(param0->unk_10[1]);
    sub_02009D68(v0->unk_13C[0], param0->unk_10[0]);
    sub_02009D68(v0->unk_13C[1], param0->unk_10[1]);
    sub_02009D68(v0->unk_13C[2], param0->unk_10[2]);
    sub_02009D68(v0->unk_13C[3], param0->unk_10[3]);
}

static void ov21_021DFE0C (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    UnkStruct_ov21_021D13FC * v2 = param1->unk_00;
    int v3, v4;
    int v5;

    sub_020093B4(&v0, 122 + 14000, 22 + 14000, 123 + 14000, 121 + 14000, 0xffffffff, 0xffffffff, 0, 3, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.unk_00 = v2->unk_138;
    v1.unk_04 = &v0;
    v1.unk_14 = 32;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_1C = param3;
    v1.unk_08.x = 0;
    v1.unk_08.y = 0;

    for (v5 = 0; v5 < 4; v5++) {
        ov21_021E0B24(v5, &v3, &v4);
        v1.unk_08.x = v3 << FX32_SHIFT;
        v1.unk_08.y = (v4 + 8) << FX32_SHIFT;

        param0->unk_00[v5] = sub_02021B90(&v1);

        if ((v5 % 2) == 0) {
            sub_02021D6C(param0->unk_00[v5], 0);
        } else {
            sub_02021D6C(param0->unk_00[v5], 2);
        }
    }

    v1.unk_08.x = 248 << FX32_SHIFT;
    v1.unk_08.y = 96 << FX32_SHIFT;
    v1.unk_14 = 0;

    param0->unk_BC = sub_02021B90(&v1);

    sub_02021D6C(param0->unk_BC, 1);
    sub_02021CC8(param0->unk_BC, 1);
    sub_02021E80(param0->unk_BC, 0);

    if (param2->unk_10 <= 1) {
        sub_02021CAC(param0->unk_BC, 0);
    }
}

static void ov21_021DFF18 (UnkStruct_ov21_021DFFF8 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02021BD4(param0->unk_00[v0]);
    }

    sub_02021BD4(param0->unk_BC);
}

static void ov21_021DFF38 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, BOOL param3)
{
    ov21_021DFFF8(param0);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    ov21_021E0078(param1);
}

static BOOL ov21_021DFFA8 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0 == 1) {
        if (param3 == 1) {
            ov21_021E0038(param0);
        } else {
            ov21_021DFD00(param1);
        }
    } else {
        ov21_021E0078(param1);
    }

    return v0;
}

static void ov21_021DFFF8 (UnkStruct_ov21_021DFFF8 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02021FE0(param0->unk_00[v0], GX_OAM_MODE_XLU);
    }

    sub_02021FE0(param0->unk_BC, GX_OAM_MODE_XLU);

    for (v0 = 0; v0 < 2; v0++) {
        sub_02012AF0(param0->unk_20[v0]->unk_00, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E0038 (UnkStruct_ov21_021DFFF8 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02021FE0(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
    }

    sub_02021FE0(param0->unk_BC, GX_OAM_MODE_NORMAL);

    for (v0 = 0; v0 < 2; v0++) {
        sub_02012AF0(param0->unk_20[v0]->unk_00, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021E0078 (UnkStruct_ov21_021DF858 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov21_021D251C(param0->unk_00, &param0->unk_00->unk_168, v0);
    }
}

static void ov21_021E0094 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov21_021E00F4(param0, param1, -256, 0, v0);
    }
}

static BOOL ov21_021E00B8 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1)
{
    int v0;
    BOOL v1;

    if (param1->unk_04 == 0) {
        return 1;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1 = ov21_021E015C(param0, param1, v0);
    }

    for (v0 = 0; v0 < 2; v0++) {
        sub_02012938(param0->unk_20[v0]->unk_00);
    }

    return v1;
}

static void ov21_021E00F4 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, int param2, int param3, int param4)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4 = inline_ov21_021E00F4(param0->unk_B8, param4);

    ov21_021E0B24(param4, &v2, &v3);
    ov21_021D2250(param1->unk_00, &v0, &v1, v4);
    ov21_021D2648(&param0->unk_28[param4], v2 + param2, v2, v3 + param3, v3, 16);

    param0->unk_A8[param4] = v1 - v3;
}

static BOOL ov21_021E015C (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, int param2)
{
    BOOL v0;
    VecFx32 v1;
    int v2 = inline_ov21_021E00F4(param0->unk_B8, param2);

    v0 = ov21_021D2664(&param0->unk_28[param2]);
    ov21_021D222C(param1->unk_00, param0->unk_28[param2].unk_00, param0->unk_28[param2].unk_04 + param0->unk_A8[param2], v2);

    v1.x = param0->unk_28[param2].unk_00 << FX32_SHIFT;
    v1.y = (param0->unk_28[param2].unk_04 + 8) << FX32_SHIFT;

    sub_02021C50(param0->unk_00[v2], &v1);

    return v0;
}

static int ov21_021E01CC (int param0, const UnkStruct_ov21_021DF844 * param1)
{
    switch (param0) {
    case 201:
        return 8;
    case 422:
        return 4;
    case 423:
        return 5;
    case 412:
        return 6;
    case 413:
        return 7;
    case 386:
        return 9;
    case 492:
        return 10;
    case 487:
        return 11;
    case 479:
        return 12;
    default:
        break;
    }

    return ov21_021E02F0(param0, param1);
}

static int ov21_021E0268 (int param0, const UnkStruct_ov21_021DF844 * param1)
{
    switch (param0) {
    case 201:
    case 422:
    case 423:
    case 412:
    case 413:
    case 386:
    case 492:
    case 487:
    case 479:
        return ov21_021D341C(param1->unk_04, param0);
    default:
        break;
    }

    return ov21_021D33E0(param1->unk_04, param0);
}

static int ov21_021E02F0 (int param0, const UnkStruct_ov21_021DF844 * param1)
{
    int v0;
    int v1;

    v0 = PokemonPersonalData_GetSpeciesValue(param0, 18);

    if (v0 == 0) {
        return 1;
    }

    if (v0 == 254) {
        return 2;
    }

    if (v0 == 255) {
        return 3;
    }

    v1 = ov21_021D33E0(param1->unk_04, param0);

    if (v1 == 1) {
        v0 = ov21_021D334C(param1->unk_04, param0, 0);
        GF_ASSERT(v0 != -1);

        if (v0 == 0) {
            return 1;
        }

        if (v0 == 254) {
            return 2;
        }

        if (v0 == 255) {
            return 3;
        }
    }

    return 0;
}

static void ov21_021E0354 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0;
    int v1, v2;
    int v3;

    ov21_021E0B24(param5, &v1, &v2);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v0 = ov21_021D19D8(param1->unk_00, param2->unk_04, param3, 2, v1, v2, param4, v3);
    GF_ASSERT(v0 != -1);

    ov21_021E0B24(param5 + 1, &v1, &v2);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v0 = ov21_021D19D8(param1->unk_00, param2->unk_04, param3, 0, v1, v2, param4, v3);
    GF_ASSERT(v0 != -1);
}

static void ov21_021E03EC (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1B08(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1B08(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E0478 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1B4C(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1B4C(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E0504 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1A78(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1A78(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E0590 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1AC0(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1AC0(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E061C (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1A34(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1A34(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E06A8 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1B94(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != 15);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1B94(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != 15);
}

static void ov21_021E072C (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1BD8(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1BD8(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E07B8 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1C30(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1C30(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E0844 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = ov21_021D1C88(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = ov21_021D1C88(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E08D0 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0;
    int v1;

    v1 = inline_ov21_021E00F4(param0->unk_B8, 0);
    ov21_021E09A4(param0, param1, param2, param3, param4, param5, v1, 0);

    v0 = ov21_021DF870(param4, param5, 1, param2->unk_10);
    v1 = inline_ov21_021E00F4(param0->unk_B8, 2);
    ov21_021E09A4(param0, param1, param2, param3, param4, v0, v1, 1);
}

static void ov21_021E0944 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5)
{
    int v0;
    int v1;
    int v2;

    v0 = ov21_021DF870(param4, param5, 1, param2->unk_10);
    v1 = inline_ov21_021E00F4(param0->unk_B8, 2);
    v2 = (param0->unk_B8 + 1) % 2;

    ov21_021D4D1C(param0->unk_20[v2]);
    ov21_021E09A4(param0, param1, param2, param3, param4, v0, v1, v2);
}

static void ov21_021E09A4 (UnkStruct_ov21_021DFFF8 * param0, UnkStruct_ov21_021DF858 * param1, const UnkStruct_ov21_021DF844 * param2, int param3, int param4, int param5, int param6, int param7)
{
    Window * v0;
    UnkStruct_ov21_021D4CB8 v1;
    UnkStruct_ov21_021D13FC * v2 = param1->unk_00;
    int v3;
    int v4;

    GF_ASSERT(param0->unk_00[param6]);

    v4 = ov21_021E0B64(param1, param2, param4, param5);

    v1.unk_00 = v2->unk_14C;
    v1.unk_08 = sub_0200A72C(param0->unk_10[1], NULL);
    v1.unk_10 = -12;
    v1.unk_14 = 40;
    v1.unk_18 = 3;
    v1.unk_1C = 0;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.unk_24 = param3;

    v3 = sub_0201FAB4(v1.unk_08, NNS_G2D_VRAM_TYPE_2DMAIN);
    v0 = ov21_021D4D6C(v2->unk_14C, 16, 2);

    ov21_021D4E10(v2->unk_14C, v0, 697, v4);

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[param6];

    param0->unk_20[param7] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_20[param7]->unk_00, v3);
    ov21_021D4DA0(v0);
}

static int ov21_021E0A4C (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1;
    int v2 = ov21_021D37BC(param1->unk_04);

    v1 = ov21_021D334C(param1->unk_04, v2, param2);
    GF_ASSERT(v1 != -1);

    switch (v1) {
    case 0:
        v0 = 13;
        break;
    case 1:
        v0 = 14;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

static int ov21_021E0A8C (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;

    v0 = 13;
    return v0;
}

static int ov21_021E0A90 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;

    v0 = 14;
    return v0;
}

static int ov21_021E0A94 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0 = 21;

    return v0;
}

static int ov21_021E0A98 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1 = ov21_021D33A4(param1->unk_04, param2);

    v0 = 17 + v1;
    return v0;
}

static int ov21_021E0AA8 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1 = ov21_021D33BC(param1->unk_04, param2);

    v0 = 17 + v1;

    return v0;
}

static int ov21_021E0AB8 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1 = ov21_021D3374(param1->unk_04, param2);

    v0 = 15 + v1;

    return v0;
}

static int ov21_021E0AC8 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1 = ov21_021D338C(param1->unk_04, param2);

    v0 = 15 + v1;
    return v0;
}

static int ov21_021E0AD8 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0 = 20;
    return v0;
}

static int ov21_021E0ADC (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1 = ov21_021D3404(param1->unk_04, param2);

    v0 = 111 + v1;
    return v0;
}

static int ov21_021E0AEC (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1 = ov21_021D3410(param1->unk_04, 492, param2);

    v0 = 115 + v1;
    return v0;
}

static int ov21_021E0AFC (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1 = ov21_021D3410(param1->unk_04, 487, param2);

    v0 = 117 + v1;
    return v0;
}

static int ov21_021E0B10 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2)
{
    int v0;
    int v1 = ov21_021D3410(param1->unk_04, 479, param2);

    v0 = 119 + v1;
    return v0;
}

static inline int inline_ov21_021E00F4 (int param0, int param1)
{
    if (param0 == 0) {
        return param1;
    }

    param1 -= 2;

    if (param1 < 0) {
        param1 += 4;
    }

    return param1;
}

static void ov21_021E0B24 (int param0, int * param1, int * param2)
{
    int v0 = 0;
    int v1 = 0;

    switch (param0) {
    case 1:
        v0 = 104;
    case 0:
        v0 += 76;
        v1 = 88;
        break;
    case 3:
        v0 = 104;
    case 2:
        v0 += (76 + 256);
        v1 = 88;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    *param1 = v0;
    *param2 = v1;
}

static int ov21_021E0B64 (UnkStruct_ov21_021DF858 * param0, const UnkStruct_ov21_021DF844 * param1, int param2, int param3)
{
    int v0;

    switch (param2) {
    case 0:
        v0 = ov21_021E0A4C(param0, param1, param3);
        break;
    case 1:
        v0 = ov21_021E0A8C(param0, param1, param3);
        break;
    case 2:
        v0 = ov21_021E0A90(param0, param1, param3);
        break;
    case 3:
        v0 = ov21_021E0A94(param0, param1, param3);
        break;
    case 6:
        v0 = ov21_021E0A98(param0, param1, param3);
        break;
    case 7:
        v0 = ov21_021E0AA8(param0, param1, param3);
        break;
    case 4:
        v0 = ov21_021E0AB8(param0, param1, param3);
        break;
    case 5:
        v0 = ov21_021E0AC8(param0, param1, param3);
        break;
    case 8:
        v0 = ov21_021E0AD8(param0, param1, param3);
        break;
    case 9:
        v0 = ov21_021E0ADC(param0, param1, param3);
        break;
    case 10:
        v0 = ov21_021E0AEC(param0, param1, param3);
        break;
    case 11:
        v0 = ov21_021E0AFC(param0, param1, param3);
        break;
    case 12:
        v0 = ov21_021E0B10(param0, param1, param3);
        break;
    default:
        break;
    }

    return v0;
}

static void ov21_021E0BF8 (UnkStruct_ov21_021DFFF8 * param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        ov21_021D4D1C(param0->unk_20[v0]);
    }
}

static void ov21_021E0C10 (UnkStruct_ov21_021DFFF8 * param0)
{
    sub_02021CAC(param0->unk_BC, 0);

    param0->unk_C0 = (16 + 8);
    param0->unk_C4 = 1;
}

static void ov21_021E0C30 (UnkStruct_ov21_021DFFF8 * param0)
{
    if (param0->unk_C4) {
        param0->unk_C0--;

        if (param0->unk_C0 <= 0) {
            sub_02021CAC(param0->unk_BC, 1);
            param0->unk_C4 = 0;
        }
    }
}
