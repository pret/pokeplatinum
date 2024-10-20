#include "overlay021/ov21_021D85B0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4340.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D157C.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D5B68.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A9DC.h"
#include "unk_02018340.h"

typedef struct {
    int *unk_00;
    UnkStruct_ov21_021D3320 *unk_04;
    UnkStruct_ov21_021D5B68 *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    BOOL unk_24;
    BOOL unk_28;
    BOOL unk_2C;
    int unk_30;
    int unk_34;
} UnkStruct_ov21_021D8788;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021D879C;

typedef struct {
    int unk_00;
} UnkStruct_ov21_021D87CC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    BOOL unk_18;
    int unk_1C;
    CellActor *unk_20;
    SpriteResource *unk_24[4];
    UnkStruct_ov21_021D157C unk_34;
    CellActor *unk_58;
    void *unk_5C;
    NNSG2dScreenData *unk_60;
} UnkStruct_ov21_021D9320;

static UnkStruct_ov21_021D8788 *ov21_021D86E8(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D879C *ov21_021D8724(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D4660 *ov21_021D874C(int param0, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021D8788(UnkStruct_ov21_021D8788 *param0);
static void ov21_021D879C(UnkStruct_ov21_021D879C *param0);
static void ov21_021D87B0(UnkStruct_ov21_021D4660 *param0);
static int ov21_021D87C8(void);
static int ov21_021D87CC(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D8804(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D8928(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D893C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021D89B8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021D89F4(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021D9320(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3);
static void ov21_021D9390(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3);
static void ov21_021D93F4(UnkStruct_ov21_021D879C *param0, int param1);
static void ov21_021D9454(UnkStruct_ov21_021D879C *param0, UnkStruct_ov21_021D9320 *param1, int param2);
static void ov21_021D8A7C(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, const UnkStruct_ov21_021D87CC *param3, int param4);
static void ov21_021D8B40(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1);
static void ov21_021D8B8C(UnkStruct_ov21_021D879C *param0, const UnkStruct_ov21_021D8788 *param1, int param2);
static void ov21_021D8C1C(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, int param2);
static void ov21_021D8CC8(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1);
static void ov21_021D8D0C(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3);
static void ov21_021D8DC0(UnkStruct_ov21_021D9320 *param0);
static void ov21_021D8BC4(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3, int param4);
static void ov21_021D8BEC(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1);
static void ov21_021D8ED4(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3);
static void ov21_021D8F98(UnkStruct_ov21_021D879C *param0, int param1, int param2);
static void ov21_021D8DD4(UnkStruct_ov21_021D879C *param0, int param1, int param2);
static void ov21_021D9054(UnkStruct_ov21_021D879C *param0, int param1, int param2);
static void ov21_021D90B4(UnkStruct_ov21_021D879C *param0, int param1, int param2);
static void ov21_021D9234(UnkStruct_ov21_021D879C *param0, int param1, int param2);
static void ov21_021D9240(UnkStruct_ov21_021D879C *param0, int param1, int param2);
static void ov21_021D915C(UnkStruct_ov21_021D879C *param0, int param1, int param2, int param3);
static void ov21_021D924C(UnkStruct_ov21_021D9320 *param0, int param1);
static void ov21_021D8E68(UnkStruct_ov21_021D879C *param0, int param1);
static void ov21_021D8C00(UnkStruct_ov21_021D879C *param0);

void ov21_021D85B0(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, int param2)
{
    UnkStruct_ov21_021D8788 *v0;
    UnkStruct_ov21_021D879C *v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021D86E8(param2, param1);
    v1 = ov21_021D8724(param2, param1);
    v2 = ov21_021D874C(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021D87C8();

    param0->unk_08[0] = ov21_021D87CC;
    param0->unk_08[1] = ov21_021D8804;
    param0->unk_08[2] = ov21_021D8928;
    param0->unk_14[0] = ov21_021D893C;
    param0->unk_14[1] = ov21_021D89B8;
    param0->unk_14[2] = ov21_021D89F4;
}

void ov21_021D8610(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021D8788(param0->unk_00);
    ov21_021D879C(param0->unk_04);
    ov21_021D87B0(param0->unk_20);
}

void ov21_021D8628(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021D8788 *v0 = param0->unk_00;

    GF_ASSERT(param1 < 4);
    v0->unk_0C = param1;
}

int ov21_021D863C(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021D8788 *v0 = param0->unk_00;
    return v0->unk_0C;
}

void ov21_021D8644(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021D8788 *v0 = param0->unk_00;

    GF_ASSERT(param1 < 6);
    v0->unk_10 = param1;
}

int ov21_021D8658(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021D8788 *v0 = param0->unk_00;
    return v0->unk_10;
}

void ov21_021D8660(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021D8788 *v0 = param0->unk_00;

    GF_ASSERT(param1 < 10);
    v0->unk_14 = param1;
}

int ov21_021D8674(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021D8788 *v0 = param0->unk_00;
    return v0->unk_14;
}

void ov21_021D867C(UnkStruct_ov21_021E68F4 *param0, int param1, int param2)
{
    UnkStruct_ov21_021D8788 *v0 = param0->unk_00;

    GF_ASSERT(param1 < 18);

    if (param2 == 0) {
        v0->unk_18 = param1;
    } else {
        v0->unk_1C = param1;
    }
}

int ov21_021D8698(const UnkStruct_ov21_021E68F4 *param0, int param1)
{
    const UnkStruct_ov21_021D8788 *v0 = param0->unk_00;

    if (param1 == 0) {
        return v0->unk_18;
    }

    return v0->unk_1C;
}

void ov21_021D86A8(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021D8788 *v0 = param0->unk_00;

    GF_ASSERT(param1 < 15);
    v0->unk_20 = param1;
}

int ov21_021D86BC(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021D8788 *v0 = param0->unk_00;
    return v0->unk_20;
}

void ov21_021D86C4(UnkStruct_ov21_021E68F4 *param0, BOOL param1)
{
    UnkStruct_ov21_021D8788 *v0 = param0->unk_00;

    v0->unk_24 = 1;
    v0->unk_28 = param1;
}

BOOL ov21_021D86D0(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021D8788 *v0 = param0->unk_00;
    return v0->unk_28;
}

int ov21_021D86D8(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021D8788 *v0 = param0->unk_00;
    return v0->unk_30;
}

int ov21_021D86E0(const UnkStruct_ov21_021E68F4 *param0)
{
    const UnkStruct_ov21_021D8788 *v0 = param0->unk_00;
    return v0->unk_34;
}

static UnkStruct_ov21_021D8788 *ov21_021D86E8(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D8788 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D8788));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D8788));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v1 = ov21_021D1410(param1, 0);
    v0->unk_08 = v1->unk_00;

    return v0;
}

static UnkStruct_ov21_021D879C *ov21_021D8724(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D879C *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D879C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D879C));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021D874C(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D4660 *v0;
    int v1 = ov21_021D87C8();

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D47F0(param0, &v0[0], param1, (0x1 << 1));

    return v0;
}

static void ov21_021D8788(UnkStruct_ov21_021D8788 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021D879C(UnkStruct_ov21_021D879C *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021D87B0(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    Heap_FreeToHeap(param0);
}

static int ov21_021D87C8(void)
{
    return 1;
}

static int ov21_021D87CC(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021D8788 *v0 = param1;
    UnkStruct_ov21_021D87CC *v1;

    v1 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021D87CC));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021D87CC));

    param0->unk_08 = v1;

    v0->unk_0C = 0;
    v0->unk_10 = 0;
    v0->unk_14 = 0;
    v0->unk_18 = 0;
    v0->unk_1C = 0;
    v0->unk_20 = 0;
    v0->unk_24 = 0;
    v0->unk_28 = 0;
    v0->unk_30 = 0;

    return 1;
}

static int ov21_021D8804(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021D8788 *v0 = param1;
    UnkStruct_ov21_021D87CC *v1 = param0->unk_08;
    BOOL v2;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    switch (param0->unk_00) {
    case 0:

        if (v0->unk_2C) {
            v0->unk_2C = 0;
        }

        if (v0->unk_24 == 1) {
            if (v0->unk_28 == 0) {
                *v0->unk_00 |= (0x1 << 1);
                v0->unk_30 = 4;
            } else {
                v0->unk_30 = 1;
                v0->unk_34 = 4;
                param0->unk_00++;
            }
        }
        break;
    case 1:
        v0->unk_34--;

        if (v0->unk_34 < 0) {
            param0->unk_00++;

            v0->unk_30 = 2;
            v0->unk_34 = 32;

            Sound_PlayEffect(1535);
        }
        break;
    case 2:
        v0->unk_34--;

        if (v0->unk_34 < 0) {
            param0->unk_00++;
        }
        break;
    case 3:
        v2 = 1;
        v2 = ov21_021D3464(v0->unk_04, v0->unk_10, v0->unk_14, v0->unk_18, v0->unk_1C, v0->unk_20, ov21_021D36D8(v0->unk_04), param0->unk_04, 1);

        if (v2 == 1) {
            *v0->unk_00 |= (0x1 << 1);
            ov21_021D3810(v0->unk_04, 0);
            v0->unk_04->unk_1740 = 1;
            v0->unk_08->unk_18 = 1;
        } else {
            v0->unk_28 = 0;
            v0->unk_24 = 0;
            v0->unk_2C = 1;
            v0->unk_30 = 3;
            v0->unk_34 = 4;

            param0->unk_00++;
        }
        break;
    case 4:
        v0->unk_34--;

        if (v0->unk_34 < 0) {
            v0->unk_30 = 0;
            v0->unk_34 = 0;
            param0->unk_00 = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static int ov21_021D8928(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021D87CC *v0 = param0->unk_08;
    UnkStruct_ov21_021D8788 *v1 = param1;

    Heap_FreeToHeap(v0);
    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021D893C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021D8788 *v0 = param2;
    const UnkStruct_ov21_021D87CC *v1 = param3->unk_08;
    UnkStruct_ov21_021D879C *v2 = param0;
    UnkStruct_ov21_021D9320 *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021D9320));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021D9320));
        param1->unk_00++;
        break;
    case 1:
        ov21_021D8A7C(v3, v2, v0, v1, param1->unk_04);
        sub_0200AAE0(1, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 1);
        param1->unk_00++;
        break;
    case 2:
        if (sub_0200AC1C(1)) {
            param1->unk_00++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int ov21_021D89B8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021D8788 *v0 = param2;
    const UnkStruct_ov21_021D87CC *v1 = param3->unk_08;
    UnkStruct_ov21_021D879C *v2 = param0;
    UnkStruct_ov21_021D9320 *v3 = param1->unk_08;

    if (v0->unk_30 == 0) {
        ov21_021D8ED4(v3, v2, v0, param1->unk_04);
    } else if ((v0->unk_30 == 1) || (v0->unk_30 == 3)) {
        ov21_021D9320(v3, v2, v0, param1->unk_04);
    } else if (v0->unk_30 != 4) {
        ov21_021D9390(v3, v2, v0, param1->unk_04);
    }

    return 0;
}

static int ov21_021D89F4(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021D8788 *v0 = param2;
    const UnkStruct_ov21_021D87CC *v1 = param3->unk_08;
    UnkStruct_ov21_021D879C *v2 = param0;
    UnkStruct_ov21_021D9320 *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        if (v0->unk_28 == 0) {
            sub_0200AAE0(6, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 1);
            param1->unk_00++;
        } else {
            param1->unk_00 = 2;
        }
        break;
    case 1:
        if (sub_0200AC1C(1)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021D8B40(v3, v2);
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

static void ov21_021D8A7C(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, const UnkStruct_ov21_021D87CC *param3, int param4)
{
    sub_02019EBC(param1->unk_00->unk_00, 2);
    sub_02019EBC(param1->unk_00->unk_00, 1);
    BGL_FillWindow(&param1->unk_00->unk_04, 0);
    sub_0201C2B4(&param1->unk_00->unk_04, 7);

    ov21_021D8C00(param1);
    ov21_021D8B8C(param1, param2, param4);
    ov21_021D8BC4(param0, param1, param2, param4, ov21_021D36D8(param2->unk_04));
    ov21_021D8C1C(param0, param1, param4);
    ov21_021D8D0C(param0, param1, param2, param4);

    ov21_021D8DD4(param1, param2->unk_0C, param4);
    ov21_021D8F98(param1, param2->unk_0C, param4);
    ov21_021D9054(param1, param2->unk_10, param4);
    ov21_021D90B4(param1, param2->unk_14, param4);
    ov21_021D9234(param1, param2->unk_18, param4);
    ov21_021D9240(param1, param2->unk_1C, param4);
    ov21_021D924C(param0, param2->unk_20);

    BGL_SetPriority(1, 1);
    BGL_SetPriority(2, 0);
}

static void ov21_021D8B40(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1)
{
    ov21_021D8DC0(param0);
    ov21_021D8CC8(param0, param1);
    ov21_021D8BEC(param0, param1);

    sub_02019EBC(param1->unk_00->unk_00, 1);
    BGL_FillWindow(&param1->unk_00->unk_04, 0);
    sub_0201C2B4(&param1->unk_00->unk_04, 0);
    BGL_SetPriority(1, 0);
    BGL_SetPriority(2, 1);
}

static void ov21_021D8B8C(UnkStruct_ov21_021D879C *param0, const UnkStruct_ov21_021D8788 *param1, int param2)
{
    void *v0;

    ov21_021D2724(param0->unk_00, 28, param0->unk_00->unk_00, 3, 0, 0, 1, param2);
    ov21_021D276C(param0->unk_00, 5, 0, 0, 32, param2);
}

static void ov21_021D8BC4(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3, int param4)
{
    int v0;

    if (param4 == 1) {
        v0 = 42;
    } else {
        v0 = 40;
    }

    param0->unk_5C = ov21_021D27B8(param1->unk_00, v0, 1, &param0->unk_60, param3);
}

static void ov21_021D8BEC(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1)
{
    Heap_FreeToHeap(param0->unk_5C);
    param0->unk_5C = NULL;
    param0->unk_60 = NULL;
}

static void ov21_021D8C00(UnkStruct_ov21_021D879C *param0)
{
    Sprite *v0 = ov21_021D2170(param0->unk_00);

    sub_02007DEC(v0, 6, 1);
    sub_02008780(v0);
}

static void ov21_021D8C1C(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(v0);

    param0->unk_24[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 81, 1, 81 + 15000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_24[0]);
    SpriteResource_ReleaseData(param0->unk_24[0]);

    param0->unk_24[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v1, 3, 0, 3 + 15000, NNS_G2D_VRAM_TYPE_2DMAIN, 12, param2);

    sub_0200A640(param0->unk_24[1]);
    SpriteResource_ReleaseData(param0->unk_24[1]);

    param0->unk_24[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 79, 1, 79 + 15000, 2, param2);
    param0->unk_24[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 80, 1, 80 + 15000, 3, param2);
}

static void ov21_021D8CC8(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_24[0]);
    sub_0200A6DC(param0->unk_24[1]);

    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_24[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_24[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_24[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_24[3]);
}

static void ov21_021D8D0C(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;

    sub_020093B4(&v0, 81 + 15000, 3 + 15000, 79 + 15000, 80 + 15000, 0xffffffff, 0xffffffff, 0, 2, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;

    v1.position.x = 128 << FX32_SHIFT;
    v1.position.y = 164 << FX32_SHIFT;
    param0->unk_20 = CellActorCollection_Add(&v1);

    CellActor_SetAnim(param0->unk_20, 3);

    v1.position.x = 128 << FX32_SHIFT;
    v1.position.y = 96 << FX32_SHIFT;

    param0->unk_58 = CellActorCollection_Add(&v1);

    CellActor_SetAnim(param0->unk_58, 17);
    CellActor_SetDrawFlag(param0->unk_58, 0);
    CellActor_SetAffineOverwriteMode(param0->unk_58, 1);
    CellActor_SetExplicitPriority(param0->unk_58, 0);
}

static void ov21_021D8DC0(UnkStruct_ov21_021D9320 *param0)
{
    CellActor_Delete(param0->unk_20);
    CellActor_Delete(param0->unk_58);
}

static void ov21_021D8DD4(UnkStruct_ov21_021D879C *param0, int param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    Strbuf *v1;
    int v2;

    BGL_WindowColor(&v0->unk_04, 0, 24, 8, 208, 32);

    switch (param1) {
    case 0:
        v2 = 90;
        break;
    case 1:
        v2 = 87;
        break;
    case 2:
        v2 = 88;
        break;
    case 3:
        v2 = 89;
        break;
    default:
        break;
    }

    v1 = ov21_021D1CE0(v2, param2);

    {
        u32 v3 = 24 + (208 - Font_CalcMaxLineWidth(FONT_SYSTEM, v1, 0)) / 2;
        u32 v4 = 8 + (32 - Strbuf_NumLines(v1) * 16) / 2;
        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, v1, v3, v4, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(v1);
}

static void ov21_021D8E68(UnkStruct_ov21_021D879C *param0, int param1)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    Strbuf *v1;

    BGL_WindowColor(&v0->unk_04, 0, 24, 8, 208, 32);

    v1 = ov21_021D1CE0(93, param1);

    {
        u32 v2 = 24 + (208 - Font_CalcMaxLineWidth(FONT_SYSTEM, v1, 0)) / 2;
        u32 v3 = 8 + (32 - Strbuf_NumLines(v1) * 16) / 2;
        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, v1, v2, v3, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(v1);
}

static void ov21_021D8ED4(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3)
{
    if (param2->unk_2C != param0->unk_18) {
        param0->unk_18 = param2->unk_2C;

        if (param0->unk_18 == 1) {
            param0->unk_1C = 64;
            ov21_021D8E68(param1, param3);
        }
    }

    if (param0->unk_1C > 0) {
        param0->unk_1C--;
    } else if (param0->unk_1C == 0) {
        ov21_021D8DD4(param1, param2->unk_0C, param3);
        param0->unk_1C--;
    }

    if (param0->unk_00 != param2->unk_0C) {
        ov21_021D8F98(param1, param2->unk_0C, param3);
        ov21_021D8DD4(param1, param2->unk_0C, param3);
        param0->unk_00 = param2->unk_0C;
    }

    if (param0->unk_04 != param2->unk_10) {
        ov21_021D9054(param1, param2->unk_10, param3);
        param0->unk_04 = param2->unk_10;
    }

    if (param0->unk_08 != param2->unk_14) {
        ov21_021D90B4(param1, param2->unk_14, param3);
        param0->unk_08 = param2->unk_14;
    }

    if (param0->unk_0C != param2->unk_18) {
        ov21_021D9234(param1, param2->unk_18, param3);
        param0->unk_0C = param2->unk_18;
    }

    if (param0->unk_10 != param2->unk_1C) {
        ov21_021D9240(param1, param2->unk_1C, param3);
        param0->unk_10 = param2->unk_1C;
    }

    if (param0->unk_14 != param2->unk_20) {
        ov21_021D924C(param0, param2->unk_20);
        param0->unk_14 = param2->unk_20;
    }
}

static void ov21_021D8F98(UnkStruct_ov21_021D879C *param0, int param1, int param2)
{
    void *v0;
    NNSG2dScreenData *v1;
    int v2, v3;
    int v4;

    v0 = ov21_021D27B8(param0->unk_00, 43, 1, &v1, param2);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v2 = 6;

    switch (param1) {
    case 0:
        v3 = 6;
        v4 = 44;
        break;
    case 1:
        v3 = 9;
        v4 = 45;
        break;
    case 2:
        v3 = 12;
        v4 = 46;
        break;
    case 3:
        v3 = 17;
        v4 = 47;
        break;
    default:
        break;
    }

    v0 = ov21_021D27B8(param0->unk_00, v4, 1, &v1, param2);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, v2, v3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 3);
}

static void ov21_021D9054(UnkStruct_ov21_021D879C *param0, int param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    Strbuf *v1;
    int v2;

    BGL_WindowColor(&v0->unk_04, 0, 88, 52, 80, 16);

    v2 = 81 + param1;
    v1 = ov21_021D1CE0(v2, param2);

    {
        u32 v3 = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, v1, 0, 80);
        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, v1, v3, 52, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);
    }

    Strbuf_Free(v1);
}

static void ov21_021D90B4(UnkStruct_ov21_021D879C *param0, int param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    Strbuf *v1;
    int v2;
    int v3;

    BGL_WindowColor(&v0->unk_04, 0, 88, 77, 80, 16);

    switch (param1) {
    case 0:
        v2 = 126;
        break;
    case 1:
        v2 = 54;
        break;
    case 2:
        v2 = 55;
        break;
    case 3:
        v2 = 56;
        break;
    case 4:
        v2 = 57;
        break;
    case 5:
        v2 = 58;
        break;
    case 6:
        v2 = 59;
        break;
    case 7:
        v2 = 60;
        break;
    case 8:
        v2 = 61;
        break;
    case 9:
        v2 = 62;
        break;
    }

    v1 = ov21_021D1CE0(v2, param2);

    {
        u32 v4 = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, v1, 0, 80);
        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, v1, v4, 77, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);
    }

    Strbuf_Free(v1);
}

static void ov21_021D915C(UnkStruct_ov21_021D879C *param0, int param1, int param2, int param3)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    Strbuf *v1;
    int v2;
    int v3;

    BGL_WindowColor(&v0->unk_04, 0, 88, param3, 80, 16);

    switch (param1) {
    case 0:
        v2 = 53;
        break;
    case 1:
        v2 = 64;
        break;
    case 2:
        v2 = 70;
        break;
    case 3:
        v2 = 73;
        break;
    case 4:
        v2 = 71;
        break;
    case 5:
        v2 = 72;
        break;
    case 6:
        v2 = 76;
        break;
    case 7:
        v2 = 75;
        break;
    case 8:
        v2 = 77;
        break;
    case 9:
        v2 = 80;
        break;
    case 10:
        v2 = 65;
        break;
    case 11:
        v2 = 66;
        break;
    case 12:
        v2 = 68;
        break;
    case 13:
        v2 = 67;
        break;
    case 14:
        v2 = 74;
        break;
    case 15:
        v2 = 69;
        break;
    case 16:
        v2 = 78;
        break;
    case 17:
        v2 = 79;
        break;
    }

    v1 = ov21_021D1CE0(v2, param2);

    {
        u32 v4 = 88 + Font_CalcCenterAlignment(FONT_SYSTEM, v1, 0, 80);
        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, v1, v4, param3, TEXT_SPEED_INSTANT, TEXT_COLOR(4, 3, 0), NULL);
    }

    Strbuf_Free(v1);
}

static void ov21_021D9234(UnkStruct_ov21_021D879C *param0, int param1, int param2)
{
    ov21_021D915C(param0, param1, param2, 102);
}

static void ov21_021D9240(UnkStruct_ov21_021D879C *param0, int param1, int param2)
{
    ov21_021D915C(param0, param1, param2, 120);
}

static void ov21_021D924C(UnkStruct_ov21_021D9320 *param0, int param1)
{
    if (param1 == 0) {
        CellActor_SetDrawFlag(param0->unk_20, 0);
    } else {
        CellActor_SetDrawFlag(param0->unk_20, 1);

        switch (param1) {
        case 1:
            CellActor_SetAnim(param0->unk_20, 3);
            break;
        case 2:
            CellActor_SetAnim(param0->unk_20, 4);
            break;
        case 3:
            CellActor_SetAnim(param0->unk_20, 5);
            break;
        case 4:
            CellActor_SetAnim(param0->unk_20, 6);
            break;
        case 5:
            CellActor_SetAnim(param0->unk_20, 7);
            break;
        case 6:
            CellActor_SetAnim(param0->unk_20, 8);
            break;
        case 7:
            CellActor_SetAnim(param0->unk_20, 9);
            break;
        case 8:
            CellActor_SetAnim(param0->unk_20, 10);
            break;
        case 9:
            CellActor_SetAnim(param0->unk_20, 11);
            break;
        case 10:
            CellActor_SetAnim(param0->unk_20, 12);
            break;
        case 11:
            CellActor_SetAnim(param0->unk_20, 13);
            break;
        case 12:
            CellActor_SetAnim(param0->unk_20, 14);
            break;
        case 13:
            CellActor_SetAnim(param0->unk_20, 15);
            break;
        case 14:
            CellActor_SetAnim(param0->unk_20, 16);
            break;
        default:
            break;
        }
    }
}

static void ov21_021D9320(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3)
{
    if (param2->unk_34 == 4) {
        if (param2->unk_30 == 1) {
            ov21_021D1558(&param0->unk_34, param1->unk_00->unk_00, 2, param0->unk_60, 0, 12, 0, 20, 4);
        } else {
            ov21_021D9454(param1, param0, param3);

            ov21_021D1558(&param0->unk_34, param1->unk_00->unk_00, 2, param0->unk_60, 12, 0, 20, 0, 4);
        }
    }

    ov21_021D157C(&param0->unk_34);
}

static void ov21_021D9390(UnkStruct_ov21_021D9320 *param0, UnkStruct_ov21_021D879C *param1, const UnkStruct_ov21_021D8788 *param2, int param3)
{
    int v0;
    int v1;

    if (param2->unk_34 == 32) {
        CellActor_SetDrawFlag(param0->unk_58, 1);
        ov21_021D93F4(param1, param3);
    } else if (param2->unk_34 == 0) {
        CellActor_SetDrawFlag(param0->unk_58, 0);
        BGL_FillWindow(&param1->unk_00->unk_04, 0);
        sub_0201A9A4(&param1->unk_00->unk_04);
    }

    v1 = 4 - param2->unk_34;
    v0 = ((180 * 0xffff) / 360) * v1;
    v0 = v0 / 4;

    CellActor_SetAffineZRotation(param0->unk_58, (u16)v0);
}

static void ov21_021D93F4(UnkStruct_ov21_021D879C *param0, int param1)
{
    UnkStruct_ov21_021D13FC *v0 = param0->unk_00;
    Strbuf *v1;
    int v2;

    BGL_FillWindow(&param0->unk_00->unk_04, 0);

    v1 = ov21_021D1CE0(94, param1);

    {
        u32 v3 = (256 - Font_CalcMaxLineWidth(FONT_SYSTEM, v1, 0)) / 2;

        Text_AddPrinterWithParamsAndColor(&v0->unk_04, FONT_SYSTEM, v1, v3, 128, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(v1);
    BGL_SetPriority(1, 0);
    BGL_SetPriority(2, 1);
}

static void ov21_021D9454(UnkStruct_ov21_021D879C *param0, UnkStruct_ov21_021D9320 *param1, int param2)
{
    BGL_SetPriority(1, 1);
    BGL_SetPriority(2, 0);
    BGL_FillWindow(&param0->unk_00->unk_04, 0);

    ov21_021D8F98(param0, param1->unk_00, param2);
    ov21_021D8DD4(param0, param1->unk_00, param2);
    ov21_021D9054(param0, param1->unk_04, param2);
    ov21_021D90B4(param0, param1->unk_08, param2);
    ov21_021D9234(param0, param1->unk_0C, param2);
    ov21_021D9240(param0, param1->unk_10, param2);
    ov21_021D924C(param1, param1->unk_14);
}
