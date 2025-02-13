#include "overlay021/ov21_021E29DC.h"

#include <nitro.h>
#include <string.h>

#include "generated/text_banks.h"

#include "struct_decls/struct_02023FCC_decl.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4340.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D4EE4.h"
#include "overlay021/ov21_021DC9BC.h"
#include "overlay021/ov21_021E0C68.h"
#include "overlay021/ov21_021E3FFC.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021D4EE4_decl.h"
#include "overlay021/struct_ov21_021D4FE4.h"
#include "overlay021/struct_ov21_021D5B68.h"
#include "overlay021/struct_ov21_021DE6D4.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "cell_actor.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_02012744.h"
#include "unk_02023FCC.h"

#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    UnkStruct_ov21_021D3320 *unk_04;
    int unk_08;
    UnkStruct_ov21_021D5B68 *unk_0C;
    UnkStruct_ov21_021DE6D4 *unk_10;
    UnkStruct_ov21_021E68F4 *unk_14;
    UnkStruct_ov21_021E68F4 *unk_18;
    UnkStruct_ov21_021E68F4 *unk_1C;
    UnkStruct_ov21_021E68F4 *unk_20;
    UnkStruct_ov21_021E68F4 *unk_24;
    BOOL unk_28;
    BOOL unk_2C;
    BOOL unk_30;
} UnkStruct_ov21_021E2BA8;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021E2BBC;

typedef struct {
    int unk_00;
} UnkStruct_ov21_021E2C24;

typedef struct {
    int unk_00;
    UnkStruct_ov21_021D4CA0 *unk_04[5];
    SpriteResource *unk_18[4];
} UnkStruct_ov21_021E326C;

typedef struct {
    int *unk_00;
    UnkStruct_ov21_021E2BA8 *unk_04;
    UnkStruct_ov21_021D3320 *unk_08;
    int unk_0C[6];
    BOOL unk_24;
    int unk_28;
    BOOL unk_2C;
    BOOL unk_30;
} UnkStruct_ov21_021E342C;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021E3440;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021E37CC;

typedef struct {
    UnkStruct_02023FCC *unk_00;
    TouchScreenHitTable *unk_04;
    UnkStruct_ov21_021E37CC unk_08;
    int unk_10;
    UnkStruct_ov21_021D4EE4 *unk_14;
    UnkStruct_ov21_021D4FE4 *unk_18;
} UnkStruct_ov21_021E37B4;

typedef struct {
    CellActor *unk_00[6];
    SpriteResource *unk_18[4];
} UnkStruct_ov21_021E3900;

static UnkStruct_ov21_021E2BA8 *ov21_021E2A5C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021E2BBC *ov21_021E2AE0(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D4660 *ov21_021E2B08(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021E2BA8(UnkStruct_ov21_021E2BA8 *param0);
static void ov21_021E2BBC(UnkStruct_ov21_021E2BBC *param0);
static void ov21_021E2BD0(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E2C20(void);
static int ov21_021E2C24(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E2C2C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E2C5C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E2C64(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E2D10(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E2D38(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021E3320(UnkStruct_ov21_021E2BA8 *param0);
static BOOL ov21_021E2EC0(int param0);
static BOOL ov21_021E2EC4(UnkStruct_ov21_021E2BA8 *param0, int param1, int param2);
static void ov21_021E2E10(UnkStruct_ov21_021E2BA8 *param0);
static void ov21_021E2E00(UnkStruct_ov21_021E2BA8 *param0);
static void ov21_021E3080(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1, const UnkStruct_ov21_021E2BA8 *param2, int param3);
static void ov21_021E30BC(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1);
static void ov21_021E30E4(UnkStruct_ov21_021E2BBC *param0, const UnkStruct_ov21_021E2BA8 *param1, int param2);
static void ov21_021E3178(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1, int param2);
static void ov21_021E3224(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1);
static void ov21_021E3268(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1, int param2);
static void ov21_021E326C(UnkStruct_ov21_021E326C *param0);
static void ov21_021E331C(UnkStruct_ov21_021E326C *param0, int param1);
static void ov21_021E3270(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1, int param2);
static void ov21_021E3304(UnkStruct_ov21_021E326C *param0);
static void ov21_021E3FC0(UnkStruct_ov21_021E326C *param0, int param1, int param2);
static void ov21_021E3BE0(UnkStruct_ov21_021E326C *param0);
static void ov21_021E3BFC(UnkStruct_ov21_021E326C *param0);
static UnkStruct_ov21_021E342C *ov21_021E33C4(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021E3440 *ov21_021E3400(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D4660 *ov21_021E3428(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021E342C(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3440(UnkStruct_ov21_021E3440 *param0);
static void ov21_021E3454(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E3458(void);
static int ov21_021E345C(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E34AC(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E3520(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E3540(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E35D0(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E3604(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static BOOL ov21_021E3C18(UnkStruct_ov21_021E342C *param0, int param1, int param2);
static void ov21_021E3688(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1, enum HeapId heapID);
static void ov21_021E3724(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3734(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1);
static void ov21_021E37B4(UnkStruct_ov21_021E37B4 *param0);
static void ov21_021E37CC(u32 param0, u32 param1, void *param2);
static void ov21_021E3C6C(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1, enum HeapId heapID);
static void ov21_021E3D48(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1);
static void ov21_021E3E74(UnkStruct_ov21_021E37B4 *param0);
static void ov21_021E3E8C(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1);
static void ov21_021E3EEC(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1);
static void ov21_021E3F2C(UnkStruct_ov21_021E3440 *param0, const UnkStruct_ov21_021E37B4 *param1, const UnkStruct_ov21_021E342C *param2);
static void ov21_021E3F48(UnkStruct_ov21_021E3440 *param0, const UnkStruct_ov21_021E37B4 *param1, const UnkStruct_ov21_021E342C *param2);
static void ov21_021E3F88(UnkStruct_ov21_021E3440 *param0, const UnkStruct_ov21_021E37B4 *param1);
static BOOL ov21_021E3F98(UnkStruct_ov21_021E3440 *param0, BOOL param1);
static void ov21_021E3C2C(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3C34(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3C64(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3900(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1, const UnkStruct_ov21_021E342C *param2, int param3);
static void ov21_021E393C(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1);
static void ov21_021E3960(UnkStruct_ov21_021E3440 *param0, const UnkStruct_ov21_021E342C *param1, int param2);
static void ov21_021E39FC(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1, int param2);
static void ov21_021E3AAC(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1);
static void ov21_021E3AF0(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1, int param2);
static void ov21_021E3BC0(UnkStruct_ov21_021E3900 *param0);
static void ov21_021E3FE4(UnkStruct_ov21_021E3900 *param0, const UnkStruct_ov21_021E342C *param1);
static void ov21_021E3BD8(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1, int param2);
static void ov21_021E3BDC(UnkStruct_ov21_021E3900 *param0);

void ov21_021E29DC(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021E2BA8 *v0;
    UnkStruct_ov21_021E2BBC *v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021E2A5C(heapID, param1);
    v1 = ov21_021E2AE0(heapID, param1);
    v2 = ov21_021E2B08(heapID, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021E2C20();

    param0->unk_08[0] = ov21_021E2C24;
    param0->unk_08[1] = ov21_021E2C2C;
    param0->unk_08[2] = ov21_021E2C5C;
    param0->unk_14[0] = ov21_021E2C64;
    param0->unk_14[1] = ov21_021E2D10;
    param0->unk_14[2] = ov21_021E2D38;
}

void ov21_021E2A3C(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E2BA8(param0->unk_00);
    ov21_021E2BBC(param0->unk_04);
    ov21_021E2BD0(param0->unk_20);
}

BOOL ov21_021E2A54(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021E2BA8 *v0 = param0->unk_00;
    return v0->unk_28;
}

static UnkStruct_ov21_021E2BA8 *ov21_021E2A5C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E2BA8 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E2BA8));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E2BA8));

    v0->unk_00 = ov21_021D13B4(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v0->unk_08 = 0;

    v1 = ov21_021D1410(param1, 2);
    v0->unk_10 = v1->unk_00;

    v1 = ov21_021D1410(param1, 3);
    v0->unk_14 = v1;

    v1 = ov21_021D1410(param1, 4);
    v0->unk_18 = v1;

    v1 = ov21_021D1410(param1, 6);
    v0->unk_1C = v1;

    v1 = ov21_021D1410(param1, 7);
    v0->unk_20 = v1;

    v1 = ov21_021D1430(param1, 6);
    v0->unk_24 = v1;

    v1 = ov21_021D1410(param1, 0);
    v0->unk_0C = v1->unk_00;

    v0->unk_2C = 1;
    v0->unk_30 = 1;

    return v0;
}

static UnkStruct_ov21_021E2BBC *ov21_021E2AE0(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E2BBC *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E2BBC));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E2BBC));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E2B08(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D4660 *v0;
    int v1 = ov21_021E2C20();

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D47F0(heapID, &v0[0], param1, (0x1 << 1));
    ov21_021D4A94(heapID, &v0[1], param1, (0x1 << 2));
    ov21_021D48B8(heapID, &v0[2], param1, (0x1 << 3));
    ov21_021D491C(heapID, &v0[3], param1, (0x1 << 4));
    ov21_021D4980(heapID, &v0[4], param1, (0x1 << 5));
    ov21_021D49E4(heapID, &v0[5], param1, (0x1 << 6));
    ov21_021D4A3C(heapID, &v0[6], param1, (0x1 << 7));
    ov21_021D4B50(heapID, &v0[7], param1, (0x1 << 8));

    return v0;
}

static void ov21_021E2BA8(UnkStruct_ov21_021E2BA8 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E2BBC(UnkStruct_ov21_021E2BBC *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E2BD0(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    ov21_021D4660(&param0[1]);
    ov21_021D4660(&param0[2]);
    ov21_021D4660(&param0[3]);
    ov21_021D4660(&param0[4]);
    ov21_021D4660(&param0[5]);
    ov21_021D4660(&param0[6]);
    ov21_021D4660(&param0[7]);

    Heap_FreeToHeap(param0);
}

static int ov21_021E2C20(void)
{
    return 8;
}

static int ov21_021E2C24(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1;
    UnkStruct_ov21_021E2C24 *v1 = param0->unk_08;

    v0->unk_10->unk_1C = 1;

    return 1;
}

static int ov21_021E2C2C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1;
    UnkStruct_ov21_021E2C24 *v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    if (param0->unk_00 == 0) {
        ov21_021E3320(v0);
        param0->unk_00++;
    }

    return 0;
}

static int ov21_021E2C5C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1;
    UnkStruct_ov21_021E2C24 *v1 = param0->unk_08;

    v0->unk_08 = 0;
    return 1;
}

static int ov21_021E2C64(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E2BA8 *v0 = param2;
    const UnkStruct_ov21_021E2C24 *v1 = param3->unk_08;
    UnkStruct_ov21_021E2BBC *v2 = param0;
    UnkStruct_ov21_021E326C *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(UnkStruct_ov21_021E326C));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E326C));
        v3 = param1->unk_08;
        v3->unk_00 = v0->unk_08;
        param1->unk_00++;
        break;
    case 1:
        ov21_021E3080(v2, v3, v0, param1->heapID);
        ov21_021E3BE0(v3);
        ov21_021D23F8(&v2->unk_00->unk_168, 4, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        param1->unk_00++;
        break;
    case 2:
        if (ov21_021D2424(&v2->unk_00->unk_168)) {
            param1->unk_00++;
        }
        break;
    case 3:
        ov21_021E3BFC(v3);
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static int ov21_021E2D10(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E2BA8 *v0 = param2;
    const UnkStruct_ov21_021E2C24 *v1 = param3->unk_08;
    UnkStruct_ov21_021E2BBC *v2 = param0;
    UnkStruct_ov21_021E326C *v3 = param1->unk_08;

    if (v3->unk_00 != v0->unk_08) {
        ov21_021E331C(v3, v0->unk_08);
        ov21_021E3FC0(v3, v0->unk_08, v3->unk_00);
        v3->unk_00 = v0->unk_08;
    }

    return 0;
}

static int ov21_021E2D38(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E2BA8 *v0 = param2;
    const UnkStruct_ov21_021E2C24 *v1 = param3->unk_08;
    UnkStruct_ov21_021E2BBC *v2 = param0;
    UnkStruct_ov21_021E326C *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        if (v0->unk_2C) {
            ov21_021E3BE0(v3);

            ov21_021D23F8(&v2->unk_00->unk_168, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&v2->unk_00->unk_168, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 0, 0);
        }
        param1->unk_00++;
        break;
    case 1:
        if (ov21_021D2424(&v2->unk_00->unk_168)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E30BC(v2, v3);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov21_021E2E00(UnkStruct_ov21_021E2BA8 *param0)
{
    ov21_021E2E10(param0);
    param0->unk_30 = 1;
}

static void ov21_021E2E10(UnkStruct_ov21_021E2BA8 *param0)
{
    *param0->unk_00 |= (0x1 << 1);
    param0->unk_28 = 0;
    param0->unk_10->unk_14 = 0;

    ov21_021E0CDC(param0->unk_18, 0);

    switch (param0->unk_08) {
    case 0:
        param0->unk_10->unk_08 = 56;
        param0->unk_10->unk_0C = 80;
        ov21_021E0CD4(param0->unk_18, 56, 80);
        param0->unk_0C->unk_14 = 1;
        param0->unk_2C = 1;
        break;
    case 1:
        ov21_021DCA4C(param0->unk_1C, 1);
        ov21_021DCA54(param0->unk_1C, 4);
        ov21_021DCA44(param0->unk_1C, 56, 80);
        param0->unk_0C->unk_14 = 1;
        param0->unk_2C = 1;
        break;
    case 2:
        ov21_021E4070(param0->unk_20, 1);
        ov21_021E4078(param0->unk_20, 4);
        ov21_021E4068(param0->unk_20, 56, 80);
        param0->unk_0C->unk_14 = 1;
        param0->unk_2C = 1;
        break;
    case 3:
        param0->unk_0C->unk_14 = 0;
        param0->unk_2C = 0;
        break;
    case 4:
        param0->unk_0C->unk_14 = 0;
        param0->unk_2C = 0;
        break;
    default:
        break;
    }
}

static BOOL ov21_021E2EC0(int param0)
{
    return 0;
}

static BOOL ov21_021E2EC4(UnkStruct_ov21_021E2BA8 *param0, int param1, int param2)
{
    int v0, v1;
    BOOL v2 = 1;

    switch (param1) {
    case 0:
        if (ov21_021E2EC0(param2)) {
            param0->unk_10->unk_14 = 2;
        } else {
            param0->unk_10->unk_14 = 1;
        }

        *param0->unk_00 |= (0x1 << 2);
        param0->unk_08 = 0;
        v0 = 48;
        v1 = 72;
        break;
    case 1:
        if (ov21_021E2EC0(param2)) {
            ov21_021DCA4C(param0->unk_1C, 1);
            ov21_021DCA54(param0->unk_1C, 1);
        } else {
            ov21_021DCA4C(param0->unk_1C, 0);
        }

        *param0->unk_00 |= (0x1 << 3);
        param0->unk_08 = 1;
        v0 = 40;
        v1 = 120;
        break;
    case 2:
        if (ov21_021E2EC0(param2)) {
            ov21_021E4070(param0->unk_20, 1);
            ov21_021E4078(param0->unk_20, 1);
        } else {
            ov21_021E4070(param0->unk_20, 0);
        }

        *param0->unk_00 |= (0x1 << 4);
        param0->unk_08 = 2;
        v0 = 48;
        v1 = 64;
        break;
    case 3:
        if (PokedexSort_CurrentCaughtStatus(param0->unk_04) == 2) {
            *param0->unk_00 |= (0x1 << 5);
            param0->unk_08 = 3;
        } else {
            v2 = 0;
        }
        break;
    case 4:
        if (PokedexSort_CanDetectForms(param0->unk_04) == 1) {
            *param0->unk_00 |= (0x1 << 8);
            param0->unk_08 = 4;
        } else {
            v2 = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    switch (param2) {
    case 0:
        if (ov21_021E2EC0(param1)) {
            param0->unk_10->unk_14 = 2;
            ov21_021E0CDC(param0->unk_18, 2);
        } else {
            param0->unk_10->unk_14 = 1;
            ov21_021E0CDC(param0->unk_18, 1);
        }

        param0->unk_10->unk_08 = v0;
        param0->unk_10->unk_0C = v1;
        ov21_021E0CD4(param0->unk_18, v0, v1);
        break;
    case 1:
        if (ov21_021E2EC0(param1)) {
            ov21_021DCA4C(param0->unk_1C, 1);
            ov21_021DCA54(param0->unk_1C, 1);
        } else {
            ov21_021DCA4C(param0->unk_1C, 0);
        }

        ov21_021DCA44(param0->unk_1C, v0, v1);
        break;
    case 2:
        if (ov21_021E2EC0(param1)) {
            ov21_021E4070(param0->unk_20, 1);
            ov21_021E4078(param0->unk_20, 1);
        } else {
            ov21_021E4070(param0->unk_20, 0);
        }

        ov21_021E4068(param0->unk_20, v0, v1);
        break;
    case 3:
        break;
    case 4:
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void ov21_021E3080(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1, const UnkStruct_ov21_021E2BA8 *param2, int param3)
{
    ov21_021E30E4(param0, param2, param3);
    ov21_021E3178(param0, param1, param3);
    ov21_021E3268(param0, param1, param3);
    ov21_021E3270(param0, param1, param3);
    ov21_021E3FC0(param1, 0, 1);
}

static void ov21_021E30BC(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1)
{
    ov21_021E326C(param1);
    ov21_021E3224(param0, param1);
    ov21_021E3304(param1);

    Bg_ClearTilemap(param0->unk_00->unk_00, 2);
}

static void ov21_021E30E4(UnkStruct_ov21_021E2BBC *param0, const UnkStruct_ov21_021E2BA8 *param1, int param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D276C(param0->unk_00, 6, 0, 0, 0, param2);

    if (PokedexStatus_IsNationalDex(param1->unk_04) == 1) {
        ov21_021D276C(param0->unk_00, 24, 0, 0, 32, param2);
    }

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 2, 0, 0, 1, param2);

    v0 = ov21_021D27B8(param0->unk_00, 57, 1, &v1, param2);

    Bg_LoadToTilemapRect(param0->unk_00->unk_00, 2, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->unk_00, 2);
}

static void ov21_021E3178(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    NARC *v1 = ov21_021D26E0(param0->unk_00);

    param1->unk_18[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 87, 1, 87 + 2000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param1->unk_18[0]);
    SpriteResource_ReleaseData(param1->unk_18[0]);

    param1->unk_18[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v1, 12, 0, 12 + 2000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    SpriteTransfer_RequestPlttFreeSpace(param1->unk_18[1]);
    SpriteResource_ReleaseData(param1->unk_18[1]);

    param1->unk_18[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 85, 1, 85 + 2000, 2, param2);
    param1->unk_18[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 86, 1, 86 + 2000, 3, param2);
}

static void ov21_021E3224(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;

    SpriteTransfer_ResetCharTransfer(param1->unk_18[0]);
    SpriteTransfer_ResetPlttTransfer(param1->unk_18[1]);

    SpriteResourceCollection_Remove(v0->unk_13C[0], param1->unk_18[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param1->unk_18[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param1->unk_18[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param1->unk_18[3]);
}

static void ov21_021E3268(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1, int param2)
{
    return;
}

static void ov21_021E326C(UnkStruct_ov21_021E326C *param0)
{
    return;
}

static void ov21_021E3270(UnkStruct_ov21_021E2BBC *param0, UnkStruct_ov21_021E326C *param1, int param2)
{
    Window *v0;
    UnkStruct_ov21_021D4CB8 v1;
    UnkStruct_ov21_021D13FC *v2 = param0->unk_00;
    int v3;
    int v4;

    v1.unk_00 = v2->unk_14C;
    v1.unk_08 = SpriteTransfer_GetPaletteProxy(param1->unk_18[1], NULL);
    v1.unk_10 = 16;
    v1.unk_14 = 0;
    v1.unk_18 = 0;
    v1.unk_1C = 0;
    v1.unk_0C = NULL;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;

    v3 = PlttTransfer_GetPlttOffset(v1.unk_08, NNS_G2D_VRAM_TYPE_2DMAIN);

    for (v4 = 0; v4 < 5; v4++) {
        v0 = ov21_021D4D6C(v2->unk_14C, 8, 2);

        Pokedex_DisplayMessage(v2->unk_14C, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_info + v4, 0, 0);

        v1.unk_04 = v0;
        param1->unk_04[v4] = ov21_021D4CA0(&v1);

        sub_02012A60(param1->unk_04[v4]->unk_00, v3);
        sub_020129D0(param1->unk_04[v4]->unk_00, 0);

        ov21_021D4DA0(v0);
    }
}

static void ov21_021E3304(UnkStruct_ov21_021E326C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        ov21_021D4D1C(param0->unk_04[v0]);
    }
}

static void ov21_021E331C(UnkStruct_ov21_021E326C *param0, int param1)
{
    return;
}

static void ov21_021E3320(UnkStruct_ov21_021E2BA8 *param0)
{
    param0->unk_28 = 1;
    param0->unk_10->unk_14 = 1;
}

void ov21_021E332C(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021E342C *v0;
    UnkStruct_ov21_021E3440 *v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021E33C4(heapID, param1);
    v1 = ov21_021E3400(heapID, param1);
    v2 = ov21_021E3428(heapID, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021E3458();

    param0->unk_08[0] = ov21_021E345C;
    param0->unk_08[1] = ov21_021E34AC;
    param0->unk_08[2] = ov21_021E3520;
    param0->unk_14[0] = ov21_021E3540;
    param0->unk_14[1] = ov21_021E35D0;
    param0->unk_14[2] = ov21_021E3604;
}

void ov21_021E338C(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E342C(param0->unk_00);
    ov21_021E3440(param0->unk_04);
    ov21_021E3454(param0->unk_20);
}

BOOL ov21_021E33A4(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021E342C *v0 = param0->unk_00;
    return v0->unk_24;
}

BOOL ov21_021E33AC(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021E342C *v0 = param0->unk_00;
    return v0->unk_28;
}

void ov21_021E33B4(UnkStruct_ov21_021E68F4 *param0, BOOL param1)
{
    UnkStruct_ov21_021E342C *v0 = param0->unk_00;
    v0->unk_30 = param1;
}

BOOL ov21_021E33BC(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021E342C *v0 = param0->unk_00;
    return v0->unk_30;
}

static UnkStruct_ov21_021E342C *ov21_021E33C4(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E342C *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E342C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E342C));

    v0->unk_00 = ov21_021D13C8(param1);
    v1 = ov21_021D1410(param1, 5);
    v0->unk_04 = v1->unk_00;
    v0->unk_08 = ov21_021D13EC(param1);

    return v0;
}

static UnkStruct_ov21_021E3440 *ov21_021E3400(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E3440 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E3440));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E3440));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E3428(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    return NULL;
}

static void ov21_021E342C(UnkStruct_ov21_021E342C *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E3440(UnkStruct_ov21_021E3440 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E3454(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021E3458(void)
{
    return 0;
}

static int ov21_021E345C(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E342C *v0 = param1;
    UnkStruct_ov21_021E37B4 *v1 = param0->unk_08;
    int v2;

    v1 = Heap_AllocFromHeap(param0->heapID, sizeof(UnkStruct_ov21_021E37B4));
    memset(v1, 0, sizeof(UnkStruct_ov21_021E37B4));

    ov21_021E3688(v1, v0, param0->heapID);
    ov21_021E3C6C(v1, v0, param0->heapID);
    ov21_021E3E8C(v1, v0);

    for (v2 = 0; v2 < 6; v2++) {
        v0->unk_0C[v2] = (3 + 1);
    }

    param0->unk_08 = v1;

    return 1;
}

static int ov21_021E34AC(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E342C *v0 = param1;
    UnkStruct_ov21_021E37B4 *v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        v0->unk_24 = 0;
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    if (param0->unk_00 == 0) {
        v0->unk_24 = 1;
        v0->unk_04->unk_30 = 0;
        v0->unk_28 = 1;
        param0->unk_00++;
    } else {
        v0->unk_28 = 1;

        ov21_021E3C2C(v0);
        ov21_021E3EEC(v1, v0);
        ov21_021E3724(v0);

        if ((ov21_021D3998(v0->unk_08) == 2) && (v0->unk_30 == 0)) {
            ov21_021E3D48(v1, v0);
        }

        ov21_021E3734(v1, v0);
    }

    return 0;
}

static int ov21_021E3520(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E342C *v0 = param1;
    UnkStruct_ov21_021E37B4 *v1 = param0->unk_08;

    ov21_021E37B4(v1);
    ov21_021E3E74(v1);

    Heap_FreeToHeap(param0->unk_08);
    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021E3540(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E342C *v0 = param2;
    const UnkStruct_ov21_021E37B4 *v1 = param3->unk_08;
    UnkStruct_ov21_021E3440 *v2 = param0;
    UnkStruct_ov21_021E3900 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(UnkStruct_ov21_021E3900));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E3900));
        param1->unk_00++;
        break;
    case 1:
        ov21_021E3900(v3, v2, v0, param1->heapID);
        param1->unk_00++;
        break;
    case 2:
        BrightnessController_StartTransition(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        ov21_021E3F2C(v2, v1, v0);
        param1->unk_00++;
        break;
    case 3:
        if (BrightnessController_IsTransitionComplete(2)) {
            param1->unk_00++;
        }
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021E35D0(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E342C *v0 = param2;
    const UnkStruct_ov21_021E37B4 *v1 = param3->unk_08;
    UnkStruct_ov21_021E3440 *v2 = param0;
    UnkStruct_ov21_021E3900 *v3 = param1->unk_08;
    int v4;

    for (v4 = 0; v4 < 6; v4++) {
        ov21_021D144C(v3->unk_00[v4], v0->unk_0C[v4]);
    }

    ov21_021E3F48(v2, v1, v0);

    return 0;
}

static int ov21_021E3604(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E342C *v0 = param2;
    const UnkStruct_ov21_021E37B4 *v1 = param3->unk_08;
    UnkStruct_ov21_021E3440 *v2 = param0;
    UnkStruct_ov21_021E3900 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        BrightnessController_StartTransition(4, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 2);
        param1->unk_00++;
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(2)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E393C(v3, v2);
        ov21_021D2584(&v2->unk_00->unk_1E0, 0);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov21_021E3688(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1, enum HeapId heapID)
{
    param0->unk_04 = Heap_AllocFromHeap(heapID, sizeof(TouchScreenHitTable) * 6);

    ov21_021D154C(&param0->unk_04[0], 24 - (32 / 2), 24 + (32 / 2), 28 - (40 / 2), 28 + (40 / 2));
    ov21_021D154C(&param0->unk_04[5], 24 - (32 / 2), 24 + (32 / 2), 228 - (40 / 2), 228 + (40 / 2));
    ov21_021D154C(&param0->unk_04[1], 24 - (32 / 2), 24 + (32 / 2), 68 - (40 / 2), 68 + (40 / 2));
    ov21_021D154C(&param0->unk_04[2], 24 - (32 / 2), 24 + (32 / 2), 108 - (40 / 2), 108 + (40 / 2));
    ov21_021D154C(&param0->unk_04[3], 24 - (32 / 2), 24 + (32 / 2), 148 - (40 / 2), 148 + (40 / 2));
    ov21_021D154C(&param0->unk_04[4], 24 - (32 / 2), 24 + (32 / 2), 188 - (40 / 2), 188 + (40 / 2));

    param0->unk_08.unk_00 = param1;
    param0->unk_08.unk_04 = param0;
    param0->unk_00 = sub_02023FCC(param0->unk_04, 6, ov21_021E37CC, &param0->unk_08, heapID);
}

static void ov21_021E3724(UnkStruct_ov21_021E342C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_0C[v0] = 3;
    }
}

static void ov21_021E3734(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1)
{
    if (param1->unk_2C == 0) {
        sub_0202404C(param0->unk_00);
    }

    if (param1->unk_2C) {
        if (param1->unk_0C[5] != 2) {
            param1->unk_0C[5] = 1;
        }
    }

    switch (param1->unk_04->unk_08) {
    case 0:
        if (param1->unk_0C[0] != 2) {
            param1->unk_0C[0] = 1;
        }
        break;
    case 1:
        if (param1->unk_0C[1] != 2) {
            param1->unk_0C[1] = 1;
        }
        break;
    case 2:
        if (param1->unk_0C[2] != 2) {
            param1->unk_0C[2] = 1;
        }
        break;
    case 3:
        if (param1->unk_0C[3] != 2) {
            param1->unk_0C[3] = 1;
        }
        break;
    case 4:
        if (param1->unk_0C[4] != 2) {
            param1->unk_0C[4] = 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov21_021E37B4(UnkStruct_ov21_021E37B4 *param0)
{
    sub_02024034(param0->unk_00);
    Heap_FreeToHeap(param0->unk_04);
    param0->unk_04 = NULL;
}

static void ov21_021E37CC(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov21_021E37CC *v0 = param2;
    UnkStruct_ov21_021E342C *v1 = v0->unk_00;
    UnkStruct_ov21_021E37B4 *v2 = v0->unk_04;
    UnkStruct_ov21_021E2BA8 *v3 = v1->unk_04;

    v1->unk_0C[param0] = param1;

    switch (param1) {
    case 0:
        v2->unk_10 = 0;
        break;
    case 2:
        ov21_021D4F20(v2->unk_14, 2, param0);

        switch (param0) {
        case 5:
            ov21_021E2E00(v3);
            Sound_PlayEffect(1501);
            break;
        case 0:
            if (v3->unk_08 != 0) {
                ov21_021E3C18(v1, 0, v3->unk_08);
                ov21_021E3E8C(v2, v1);
                Sound_PlayEffect(1675);
            }
            break;
        case 1:
            if (v3->unk_08 != 1) {
                ov21_021E3C18(v1, 1, v3->unk_08);
                ov21_021E3E8C(v2, v1);
                Sound_PlayEffect(1675);
            }
            break;
        case 2:
            if (v3->unk_08 != 2) {
                ov21_021E3C18(v1, 2, v3->unk_08);
                ov21_021E3E8C(v2, v1);
                Sound_PlayEffect(1675);
            }
            break;
        case 3:
            if (v3->unk_08 != 3) {
                if (ov21_021E3C18(v1, 3, v3->unk_08)) {
                    ov21_021E3E8C(v2, v1);
                    Sound_PlayEffect(1675);
                } else {
                    if (v2->unk_10 == 0) {
                        if (v3->unk_08 != 2) {
                            Sound_PlayEffect(1501);
                        }

                        v2->unk_10 = 1;
                    }
                }
            }
            break;
        case 4:
            if (v3->unk_08 != 4) {
                if (ov21_021E3C18(v1, 4, v3->unk_08)) {
                    ov21_021E3E8C(v2, v1);
                    Sound_PlayEffect(1675);
                } else {
                    if (v2->unk_10 == 0) {
                        if (PokedexSort_CanDetectForms(v3->unk_04) == 1) {
                            if (v3->unk_08 != 2) {
                                Sound_PlayEffect(1501);
                            }
                        }

                        v2->unk_10 = 0;
                    }
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

static void ov21_021E3900(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1, const UnkStruct_ov21_021E342C *param2, int param3)
{
    ov21_021E3960(param1, param2, param3);
    ov21_021E39FC(param0, param1, param3);
    ov21_021E3AF0(param0, param1, param3);
    ov21_021E3BD8(param0, param1, param3);
    ov21_021E3FE4(param0, param2);
}

static void ov21_021E393C(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1)
{
    ov21_021E3BDC(param0);
    ov21_021E3BC0(param0);
    ov21_021E3AAC(param0, param1);
    Bg_ClearTilemap(param1->unk_00->unk_00, 5);
}

static void ov21_021E3960(UnkStruct_ov21_021E3440 *param0, const UnkStruct_ov21_021E342C *param1, int param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    if (param1->unk_04->unk_30) {
        ov21_021D276C(param0->unk_00, 6, 4, 0, 0, param2);

        if (PokedexStatus_IsNationalDex(param1->unk_08) == 1) {
            ov21_021D276C(param0->unk_00, 24, 4, 0, 32, param2);
        }
    }

    ov21_021D2724(param0->unk_00, 34, param0->unk_00->unk_00, 5, 0, 0, 1, param2);

    v0 = ov21_021D27B8(param0->unk_00, 59, 1, &v1, param2);

    Bg_LoadToTilemapRect(param0->unk_00->unk_00, 5, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->unk_00, 5);
}

static void ov21_021E39FC(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_18[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 96, 1, 96 + 2100, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_18[0]);
    SpriteResource_ReleaseData(param0->unk_18[0]);

    param0->unk_18[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v1, 11, 0, 11 + 2100, NNS_G2D_VRAM_TYPE_2DSUB, 6, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_18[1]);
    SpriteResource_ReleaseData(param0->unk_18[1]);

    param0->unk_18[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 94, 1, 94 + 2100, 2, param2);
    param0->unk_18[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 95, 1, 95 + 2100, 3, param2);
}

static void ov21_021E3AAC(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(param0->unk_18[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_18[1]);

    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_18[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_18[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_18[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_18[3]);
}

static void ov21_021E3AF0(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1, int param2)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int v3;

    SpriteResourcesHeader_Init(&v0, 96 + 2100, 11 + 2100, 94 + 2100, 95 + 2100, 0xffffffff, 0xffffffff, 0, 0, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;
    v1.position.y = (24 * FX32_ONE) + (192 << FX32_SHIFT);

    for (v3 = 0; v3 < 6; v3++) {
        switch (v3) {
        case 5:
            v1.position.x = 228 * FX32_ONE;
            break;
        case 0:
            v1.position.x = 28 * FX32_ONE;
            break;
        case 1:
            v1.position.x = 68 * FX32_ONE;
            break;
        case 2:
            v1.position.x = 108 * FX32_ONE;
            break;
        case 3:
            v1.position.x = 148 * FX32_ONE;
            break;
        case 4:
            v1.position.x = 188 * FX32_ONE;
            break;
        }

        param0->unk_00[v3] = CellActorCollection_Add(&v1);
        CellActor_SetAnim(param0->unk_00[v3], v3);
    }
}

static void ov21_021E3BC0(UnkStruct_ov21_021E3900 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        CellActor_Delete(param0->unk_00[v0]);
    }
}

static void ov21_021E3BD8(UnkStruct_ov21_021E3900 *param0, UnkStruct_ov21_021E3440 *param1, int param2)
{
    return;
}

static void ov21_021E3BDC(UnkStruct_ov21_021E3900 *param0)
{
    return;
}

static void ov21_021E3BE0(UnkStruct_ov21_021E326C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_02012AF0(param0->unk_04[v0]->unk_00, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E3BFC(UnkStruct_ov21_021E326C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_02012AF0(param0->unk_04[v0]->unk_00, GX_OAM_MODE_NORMAL);
    }
}

static BOOL ov21_021E3C18(UnkStruct_ov21_021E342C *param0, int param1, int param2)
{
    UnkStruct_ov21_021E2BA8 *v0 = param0->unk_04;
    BOOL v1;

    v1 = ov21_021E2EC4(v0, param1, param2);

    if (v1 == 1) {
        param0->unk_28 = 0;
    }

    return v1;
}

static void ov21_021E3C2C(UnkStruct_ov21_021E342C *param0)
{
    UnkStruct_ov21_021E2BA8 *v0 = param0->unk_04;
    ov21_021E3C34(param0);
}

static void ov21_021E3C34(UnkStruct_ov21_021E342C *param0)
{
    UnkStruct_ov21_021E2BA8 *v0 = param0->unk_04;
    int v1;
    int v2;

    ov21_021E3C64(param0);

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov21_021E2E00(v0);
        param0->unk_2C = 1;
        Sound_PlayEffect(1501);
        return;
    }
}

static void ov21_021E3C64(UnkStruct_ov21_021E342C *param0)
{
    param0->unk_2C = 0;
}

static void ov21_021E3C6C(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1, enum HeapId heapID)
{
    int v0;

    param0->unk_18 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D4FE4) * 6);

    ov21_021D4FE4(&param0->unk_18[0], 28, 24, 24, 16, 0, 0, 0);
    ov21_021D4FE4(&param0->unk_18[1], 68, 24, 24, 16, 0, 0, 1);
    ov21_021D4FE4(&param0->unk_18[2], 108, 24, 24, 16, 0, 0, 2);
    ov21_021D4FE4(&param0->unk_18[3], 148, 24, 24, 16, 0, 0, 3);

    if (PokedexSort_CanDetectForms(param1->unk_08) == 1) {
        v0 = 0;
    } else {
        v0 = 2;
    }

    ov21_021D4FE4(&param0->unk_18[4], 188, 24, 24, 16, v0, v0, 4);
    ov21_021D4FE4(&param0->unk_18[5], 228, 24, 24, 16, 0, 0, 5);

    param0->unk_14 = ov21_021D4EE4(heapID);
    ov21_021D4F04(param0->unk_14, param0->unk_18, 6, 1);
}

static void ov21_021E3D48(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1->unk_04;

    if (param1->unk_2C) {
        return;
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        ov21_021D4F20(param0->unk_14, 0, 1);
    }

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        ov21_021D4F20(param0->unk_14, 0, -1);
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        switch (ov21_021D4F7C(param0->unk_14)) {
        case 0:
            if (v0->unk_08 != 0) {
                ov21_021E3C18(param1, 0, v0->unk_08);
                param1->unk_0C[0] = 2;
                Sound_PlayEffect(1675);
            }
            break;
        case 1:
            if (v0->unk_08 != 1) {
                ov21_021E3C18(param1, 1, v0->unk_08);
                param1->unk_0C[1] = 2;
                Sound_PlayEffect(1675);
            }
            break;
        case 2:
            if (v0->unk_08 != 2) {
                ov21_021E3C18(param1, 2, v0->unk_08);
                param1->unk_0C[2] = 2;
                Sound_PlayEffect(1675);
            }
            break;
        case 3:
            if (v0->unk_08 != 3) {
                if (ov21_021E3C18(param1, 3, v0->unk_08)) {
                    param1->unk_0C[3] = 2;
                    Sound_PlayEffect(1675);
                } else {
                    if (v0->unk_08 != 2) {
                        Sound_PlayEffect(1501);
                    }
                }
            }
            break;
        case 4:
            if (v0->unk_08 != 4) {
                if (ov21_021E3C18(param1, 4, v0->unk_08)) {
                    param1->unk_0C[4] = 2;
                    Sound_PlayEffect(1675);
                } else {
                    if (v0->unk_08 != 2) {
                        Sound_PlayEffect(1501);
                    }
                }
            }
            break;
        case 5:
            ov21_021E2E00(v0);
            param1->unk_2C = 1;
            param1->unk_0C[5] = 2;
            Sound_PlayEffect(1501);
            break;
        }
    }
}

static void ov21_021E3E74(UnkStruct_ov21_021E37B4 *param0)
{
    Heap_FreeToHeap(param0->unk_18);
    ov21_021D4EFC(param0->unk_14);
    param0->unk_14 = NULL;
    param0->unk_18 = NULL;
}

static void ov21_021E3E8C(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1->unk_04;

    param1->unk_30 = 0;

    switch (v0->unk_08) {
    case 0:
        ov21_021D4F20(param0->unk_14, 4, 0);
        break;
    case 1:
        ov21_021D4F20(param0->unk_14, 4, 1);
        break;
    case 2:
        ov21_021D4F20(param0->unk_14, 4, 2);
        break;
    case 3:
        ov21_021D4F20(param0->unk_14, 4, 3);
        break;
    case 4:
        ov21_021D4F20(param0->unk_14, 4, 4);
        break;
    default:
        break;
    }
}

static void ov21_021E3EEC(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1->unk_04;

    if (v0->unk_08 == 0) {
        return;
    }

    if (ov21_021D3998(param1->unk_08) != 2) {
        return;
    }

    if (param1->unk_30 == 0) {
        if (gSystem.pressedKeys & PAD_KEY_DOWN) {
            param1->unk_30 = 1;
        }
    } else {
        if (gSystem.pressedKeys & PAD_KEY_UP) {
            param1->unk_30 = 0;
        }
    }
}

static void ov21_021E3F2C(UnkStruct_ov21_021E3440 *param0, const UnkStruct_ov21_021E37B4 *param1, const UnkStruct_ov21_021E342C *param2)
{
    ov21_021D25B8(param1->unk_14, param0->unk_00);
    ov21_021E3F48(param0, param1, param2);
}

static void ov21_021E3F48(UnkStruct_ov21_021E3440 *param0, const UnkStruct_ov21_021E37B4 *param1, const UnkStruct_ov21_021E342C *param2)
{
    BOOL v0;

    if (ov21_021D3998(param2->unk_08) != 0) {
        v0 = ov21_021E3F98(param0, 1);

        if (param2->unk_30 == 0) {
            if (v0) {
                ov21_021D25B8(param1->unk_14, param0->unk_00);
            }

            ov21_021E3F88(param0, param1);
        }
    } else {
        ov21_021E3F98(param0, 0);
    }
}

static void ov21_021E3F88(UnkStruct_ov21_021E3440 *param0, const UnkStruct_ov21_021E37B4 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    ov21_021D2544(param1->unk_14, v0);
}

static BOOL ov21_021E3F98(UnkStruct_ov21_021E3440 *param0, BOOL param1)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;

    if (ov21_021D25A0(&v0->unk_1E0) != param1) {
        ov21_021D2584(&v0->unk_1E0, param1);
        return 1;
    }

    return 0;
}

static void ov21_021E3FC0(UnkStruct_ov21_021E326C *param0, int param1, int param2)
{
    sub_020129D0(param0->unk_04[param2]->unk_00, 0);
    sub_020129D0(param0->unk_04[param1]->unk_00, 1);
}

static void ov21_021E3FE4(UnkStruct_ov21_021E3900 *param0, const UnkStruct_ov21_021E342C *param1)
{
    if (PokedexSort_CanDetectForms(param1->unk_08) == 0) {
        CellActor_SetDrawFlag(param0->unk_00[4], 0);
    }
}
