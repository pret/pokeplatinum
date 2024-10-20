#include "overlay021/ov21_021D5AEC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021D4340.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D157C.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D37DC.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021D5B68.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "heap.h"
#include "message.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A9DC.h"
#include "unk_02012744.h"
#include "unk_02018340.h"

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021D5C08;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    BOOL unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
} UnkStruct_ov21_021D7464;

typedef struct {
    CellActor *unk_00[9];
    int unk_24;
    UnkStruct_ov21_021D4CA0 *unk_28[9];
    int unk_4C;
    CellActor *unk_50[9];
    CellActor *unk_74;
    fx32 unk_78;
    CellActor *unk_7C;
    SpriteResourceCollection *unk_80[4];
    CellActorResourceData unk_90;
    CellActorResourceData unk_B4;
    void *unk_D8;
    NNSG2dScreenData *unk_DC;
    UnkStruct_ov21_021D157C unk_E0;
    UnkStruct_ov21_021D2648 unk_104;
    UnkStruct_ov21_021D2648 unk_124;
    int unk_144;
} UnkStruct_ov21_021D71A8;

static UnkStruct_ov21_021D5B68 *ov21_021D5B90(int param0, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021D5BCC(UnkStruct_ov21_021D5B68 *param0);
static UnkStruct_ov21_021D5C08 *ov21_021D5BE0(int param0, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021D5C08(UnkStruct_ov21_021D5C08 *param0);
static UnkStruct_ov21_021D4660 *ov21_021D5C1C(int param0, UnkStruct_ov21_021E68F4 *param1, UnkStruct_ov21_021D0F60 *param2);
static void ov21_021D5C7C(UnkStruct_ov21_021D4660 *param0);
static int ov21_021D5CB4(void);
static int ov21_021D5CB8(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D5D04(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D5D34(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021D5D48(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021D5E2C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021D5EA8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021D71A8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static BOOL ov21_021D71E4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static void ov21_021D7248(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static BOOL ov21_021D72D4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static void ov21_021D6FB4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static BOOL ov21_021D7044(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1);
static void ov21_021D7094(UnkStruct_ov21_021D5C08 *param0, const UnkStruct_ov21_021D5B68 *param1, BOOL param2);
static void ov21_021D7394(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1);
static BOOL ov21_021D73C8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1);
static void ov21_021D73F0(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1);
static BOOL ov21_021D7424(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1);
static void ov21_021D5F7C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2);
static BOOL ov21_021D601C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2);
static void ov21_021D5FC4(UnkStruct_ov21_021D5B68 *param0);
static void ov21_021D5FD4(UnkStruct_ov21_021D5B68 *param0);
static void ov21_021D5F58(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1);
static void ov21_021D60A4(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1);
static void ov21_021D60FC(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2);
static BOOL ov21_021D6108(UnkStruct_ov21_021D5B68 *param0, int param1);
static void ov21_021D5F6C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1);
static void ov21_021D744C(UnkStruct_ov21_021D5B68 *param0);
static void ov21_021D7464(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1);
static BOOL ov21_021D747C(UnkStruct_ov21_021D5B68 *param0);
static BOOL ov21_021D74B0(UnkStruct_ov21_021D5B68 *param0, int param1);
static void ov21_021D7538(UnkStruct_ov21_021D5B68 *param0, int param1);
static void ov21_021D7590(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D75DC(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6C24(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6114(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);
static void ov21_021D61D8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1);
static void ov21_021D61F4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);
static void ov21_021D62E4(UnkStruct_ov21_021D13FC *param0, int param1);
static void ov21_021D637C(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, int param2, int param3);
static void ov21_021D63C0(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D63DC(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3);
static void ov21_021D64B0(UnkStruct_ov21_021D13FC *param0, int param1, int param2);
static void ov21_021D6538(UnkStruct_ov21_021D71A8 *param0, int param1);
static void ov21_021D6580(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D65DC(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, int param2);
static void ov21_021D6744(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, int param2);
static void ov21_021D695C(UnkStruct_ov21_021D71A8 *param0);
static int ov21_021D70C0(UnkStruct_ov21_021D13FC *param0, int param1);
static void ov21_021D67EC(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);
static void ov21_021D6940(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D68C8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2);
static void ov21_021D70E8(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D7124(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D6994(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D69A0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6ED0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6A58(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6AE4(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6B94(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6BB0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6C44(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);
static void ov21_021D6CC8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);
static void ov21_021D6D78(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3, int param4, int param5);
static void ov21_021D6DF4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, int param2, int param3, int param4);
static void ov21_021D6CA4(CellActor *param0, int *param1, int *param2);
static fx32 ov21_021D6BF8(fx32 param0, fx32 param1, int param2, int param3);
static void ov21_021D6F20(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2);
static void ov21_021D6F74(const UnkStruct_ov21_021D5B68 *param0);
static void ov21_021D6F64(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D7160(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);

const static int Unk_ov21_021E9D14[] = {
    (180 * FX32_ONE) + 9 * FX32_ONE,
    (180 * FX32_ONE) + 5 * FX32_ONE,
    (180 * FX32_ONE) + 1 * FX32_ONE,
    (180 * FX32_ONE) - 3 * FX32_ONE,
    (180 * FX32_ONE) - 5 * FX32_ONE,
    (170 * FX32_ONE),
    (180 * FX32_ONE) - 5 * FX32_ONE,
    (180 * FX32_ONE) - 3 * FX32_ONE,
    (180 * FX32_ONE) + 1 * FX32_ONE,
    (180 * FX32_ONE) + 5 * FX32_ONE,
    (180 * FX32_ONE) + 9
};

const static int Unk_ov21_021E9D40[] = {
    12 * FX32_ONE,
    22 * FX32_ONE,
    26 * FX32_ONE,
    42 * FX32_ONE,
    58 * FX32_ONE,
    82 * FX32_ONE,
    106 * FX32_ONE,
    122 * FX32_ONE,
    138 * FX32_ONE,
    142 * FX32_ONE,
    152 * FX32_ONE
};

void ov21_021D5AEC(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, int param2)
{
    UnkStruct_ov21_021D5B68 *v0;
    UnkStruct_ov21_021D5C08 *v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021D5B90(param2, param1);
    v1 = ov21_021D5BE0(param2, param1);
    v2 = ov21_021D5C1C(param2, param0, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021D5CB4();

    param0->unk_08[0] = ov21_021D5CB8;
    param0->unk_08[1] = ov21_021D5D04;
    param0->unk_08[2] = ov21_021D5D34;
    param0->unk_14[0] = ov21_021D5D48;
    param0->unk_14[1] = ov21_021D5E2C;
    param0->unk_14[2] = ov21_021D5EA8;
}

void ov21_021D5B50(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021D5BCC(param0->unk_00);
    ov21_021D5C08(param0->unk_04);
    ov21_021D5C7C(param0->unk_20);
}

BOOL ov21_021D5B68(const UnkStruct_ov21_021D5B68 *param0)
{
    if ((param0->unk_24 == 1) || (param0->unk_28 == 1) || (param0->unk_2C == 1) || (param0->unk_30 == 1) || (param0->unk_34 == 1)) {
        return 0;
    }

    return 1;
}

static UnkStruct_ov21_021D5B68 *ov21_021D5B90(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D5B68 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D5B68));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D5B68));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v0->unk_10 = 0;
    v0->unk_14 = 0;
    v0->unk_1C = 1;

    return v0;
}

static void ov21_021D5BCC(UnkStruct_ov21_021D5B68 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static UnkStruct_ov21_021D5C08 *ov21_021D5BE0(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021D5C08 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D5C08));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D5C08));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021D5C08(UnkStruct_ov21_021D5C08 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static UnkStruct_ov21_021D4660 *ov21_021D5C1C(int param0, UnkStruct_ov21_021E68F4 *param1, UnkStruct_ov21_021D0F60 *param2)
{
    UnkStruct_ov21_021D4660 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021D4660) * ov21_021D5CB4());
    ov21_021D467C(param0, &v0[0], param2, (1 << 0));
    ov21_021D475C(param0, &v0[1], param2, (1 << 1));
    ov21_021D4704(param0, &v0[2], param2, (1 << 2));
    ov21_021D4878(&v0[3], param2, param0, (1 << 3));
    ov21_021D47F0(param0, &v0[4], param2, (1 << 4));

    return v0;
}

static void ov21_021D5C7C(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    ov21_021D4660(&param0[1]);
    ov21_021D4660(&param0[2]);
    ov21_021D4660(&param0[3]);
    ov21_021D4660(&param0[4]);

    Heap_FreeToHeap(param0);
}

static int ov21_021D5CB4(void)
{
    return 5;
}

static int ov21_021D5CB8(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021D5B68 *v0 = param1;

    param0->unk_08 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021D7464));

    GF_ASSERT(param0->unk_08);
    memset(param0->unk_08, 0, sizeof(UnkStruct_ov21_021D7464));

    ov21_021D5F58(v0, param0->unk_08);
    ov21_021D38C0(v0->unk_04);

    v0->unk_1C = 1;
    v0->unk_20 = 0;

    if (v0->unk_18 == 1) {
        v0->unk_10 = 1;
    }

    ov21_021D5FC4(v0);

    return 1;
}

static int ov21_021D5D04(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021D5B68 *v0 = param1;
    UnkStruct_ov21_021D7464 *v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_00 == 0) {
        v0->unk_18 = 0;
        param0->unk_00 = 1;
    } else {
        ov21_021D5F7C(v0, v1, param0->unk_04);
    }

    return 0;
}

static int ov21_021D5D34(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    Heap_FreeToHeap(param0->unk_08);
    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021D5D48(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    UnkStruct_ov21_021D5C08 *v0 = param0;
    const UnkStruct_ov21_021D5B68 *v1 = param2;
    const UnkStruct_ov21_021D7464 *v2 = param3->unk_08;
    UnkStruct_ov21_021D71A8 *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        v3 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021D71A8));
        GF_ASSERT(v3);
        param1->unk_08 = v3;
        ov21_021D6C24(v3, v1);
        ov21_021D68C8(v3, v0->unk_00, v1);
        param1->unk_00++;
        break;
    case 1:
        if (v1->unk_04->unk_1740 == 0) {
            ov21_021D6114(v3, v0->unk_00, v1, param1->unk_04);
        } else {
            ov21_021D61F4(v3, v0->unk_00, v1, param1->unk_04);
        }

        if (v1->unk_14) {
            ov21_021D7248(v3, v0, v1, 1);
        } else {
            ov21_021D71A8(v3, v0, v1, 1);
        }

        param1->unk_00++;
        break;
    case 2:
        if (v1->unk_14) {
            v4 = ov21_021D72D4(v3, v0, v1, 1);
        } else {
            v4 = ov21_021D71E4(v3, v0, v1, 1);
        }

        if (v4) {
            param1->unk_00++;
        }
        break;
    case 3:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG3, 0, 16);
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static int ov21_021D5E2C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    UnkStruct_ov21_021D5C08 *v0 = param0;
    const UnkStruct_ov21_021D5B68 *v1 = param2;
    const UnkStruct_ov21_021D7464 *v2 = param3->unk_08;
    UnkStruct_ov21_021D71A8 *v3 = param1->unk_08;
    int v4;

    if (v1->unk_1C == 0) {
        return 0;
    }

    v4 = ov21_021D3898(v1->unk_04);

    if (v3->unk_144 != v4) {
        v3->unk_144 = v4;
        ov21_021D6A58(v3, v1);
        ov21_021D6CC8(v3, v0->unk_00, v1, param1->unk_04);
        ov21_021D68C8(v3, v0->unk_00, v1);
    }

    ov21_021D69A0(v3, v1);
    ov21_021D6AE4(v3, v1);
    ov21_021D6BB0(v3, v1);
    ov21_021D6C44(v3, v0->unk_00, v1, param1->unk_04);
    ov21_021D6F20(v3, v0->unk_00, v1);
    ov21_021D6F74(v1);

    return 0;
}

static int ov21_021D5EA8(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    UnkStruct_ov21_021D5C08 *v0 = param0;
    const UnkStruct_ov21_021D5B68 *v1 = param2;
    const UnkStruct_ov21_021D7464 *v2 = param3->unk_08;
    UnkStruct_ov21_021D71A8 *v3 = param1->unk_08;
    BOOL v4;

    switch (param1->unk_00) {
    case 0:
        G2_BlendNone();

        if (v1->unk_14) {
            ov21_021D7160(v3, v0->unk_00, v1, param1->unk_04);
            ov21_021D6F64(v0->unk_00, v1);
            ov21_021D7248(v3, v0, v1, 0);
        } else {
            ov21_021D71A8(v3, v0, v1, 0);
        }

        param1->unk_00++;
        break;
    case 1:
        if (v1->unk_14) {
            v4 = ov21_021D72D4(v3, v0, v1, 0);
        } else {
            v4 = ov21_021D71E4(v3, v0, v1, 0);
        }

        if (v4) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021D61D8(v3, v0->unk_00);
        Heap_FreeToHeap(v3);
        param1->unk_00++;
        break;
    case 3:
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov21_021D5F58(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1)
{
    param0->unk_08 = 0;
    param1->unk_00 = 0;
    param1->unk_04 = 60;
    param1->unk_08 = 4;
    param1->unk_0C = 4;
}

static void ov21_021D5F6C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1)
{
    param1->unk_04 = (64 * 10);
    param1->unk_08 = 0;
    param1->unk_0C = 0;
}

static void ov21_021D5F7C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2)
{
    if (ov21_021D601C(param0, param1, param2) == 1) {
        return;
    }

    ov21_021D5FC4(param0);

    if (param1->unk_00 == 0) {
        if (param1->unk_14 == 1) {
            ov21_021D7590(param1, param0);
        } else {
            ov21_021D75DC(param1, param0);
        }
    }

    if (param0->unk_20 != 0) {
        ov21_021D60A4(param0, param1);
    }

    ov21_021D5FD4(param0);
}

static void ov21_021D5FC4(UnkStruct_ov21_021D5B68 *param0)
{
    param0->unk_24 = 0;
    param0->unk_28 = 0;
    param0->unk_2C = 0;
    param0->unk_30 = 0;
    param0->unk_34 = 0;
}

static void ov21_021D5FD4(UnkStruct_ov21_021D5B68 *param0)
{
    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        if (param0->unk_04->unk_1740 == 0) {
            param0->unk_28 = 1;
        } else {
            param0->unk_24 = 1;
        }

        return;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        param0->unk_2C = 1;
        return;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_X) {
        param0->unk_34 = 1;
        return;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_SELECT) {
        param0->unk_30 = 1;
        return;
    }
}

static BOOL ov21_021D601C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2)
{
    if (param0->unk_28) {
        ov21_021D744C(param0);
        Sound_PlayEffect(1501);
        return 1;
    }

    if (param0->unk_24) {
        ov21_021D7538(param0, param2);
        Sound_PlayEffect(1501);
        return 1;
    }

    if (param0->unk_2C) {
        int v0 = ov21_021D3898(param0->unk_04);

        if (ov21_021D38B0(param0->unk_04, v0) != (NATIONAL_DEX_COUNT + 1)) {
            ov21_021D7464(param1, param0);
            Sound_PlayEffect(1501);
            return 1;
        }
    }

    if (param0->unk_34) {
        return ov21_021D747C(param0);
    }

    if (param0->unk_30) {
        return ov21_021D74B0(param0, param2);
    }

    return 0;
}

static void ov21_021D60A4(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1)
{
    if (param1->unk_00 == 0) {
        return;
    }

    if ((param0->unk_0C - param1->unk_04) > 0) {
        param0->unk_0C -= param1->unk_04;
    } else {
        param0->unk_0C = 0;
        param1->unk_00 = 0;

        if (param1->unk_0C > 0) {
            if ((param1->unk_08 - 1) > 0) {
                param1->unk_08--;
            } else {
                param1->unk_04 *= (1.60f);
                param1->unk_0C--;
                param1->unk_08 = 4 * (4 - param1->unk_0C);
            }
        }
    }
}

static void ov21_021D60FC(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2)
{
    param0->unk_0C = (64 * 10);
    param1->unk_00 = param2;
    param0->unk_08 = param2;
}

static BOOL ov21_021D6108(UnkStruct_ov21_021D5B68 *param0, int param1)
{
    return ov21_021D3844(param0->unk_04, param1);
}

static void ov21_021D6114(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    ov21_021D276C(param1, 0, 0, 0, 0, param3);
    ov21_021D62E4(param1, param3);
    ov21_021D637C(param0, param1, param3, ov21_021D36D8(param2->unk_04));
    ov21_021D63DC(param1, param3, ov21_021D38FC(param2->unk_04), ov21_021D3908(param2->unk_04));
    ov21_021D6538(param0, param3);
    ov21_021D65DC(param0, param1, param3);
    ov21_021D6744(param0, param1, param3);

    param0->unk_4C = ov21_021D70C0(param1, param3);

    ov21_021D67EC(param0, param1, param2, param3);
    ov21_021D6994(param0, param2);
    ov21_021D69A0(param0, param2);
    ov21_021D6AE4(param0, param2);
    ov21_021D6B94(param0, param2);
    ov21_021D6BB0(param0, param2);
    ov21_021D6C44(param0, param1, param2, param3);
    ov21_021D6F20(param0, param1, param2);
}

static void ov21_021D61D8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1)
{
    ov21_021D695C(param0);
    ov21_021D6580(param0);
    ov21_021D6940(param0);
    ov21_021D63C0(param0);
}

static void ov21_021D61F4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    void *v0;
    NNSG2dPaletteData *v1;
    u8 *v2;

    ov21_021D276C(param1, 4, 0, 0, 32, param3);

    v0 = ov21_021D27E0(param1, 0, &v1, param3);
    v2 = (u8 *)v1->pRawData;

    DC_FlushRange(v2, 16 * 32);
    GX_LoadBGPltt(v2 + 32, 32, 15 * 32);

    Heap_FreeToHeap(v0);

    ov21_021D62E4(param1, param3);
    ov21_021D637C(param0, param1, param3, ov21_021D36D8(param2->unk_04));
    ov21_021D6538(param0, param3);
    ov21_021D65DC(param0, param1, param3);
    ov21_021D6744(param0, param1, param3);

    param0->unk_4C = ov21_021D70C0(param1, param3);

    ov21_021D67EC(param0, param1, param2, param3);
    ov21_021D64B0(param1, param3, ov21_021D38FC(param2->unk_04));
    ov21_021D6994(param0, param2);
    ov21_021D69A0(param0, param2);
    ov21_021D6AE4(param0, param2);
    ov21_021D6B94(param0, param2);
    ov21_021D6BB0(param0, param2);
    ov21_021D6C44(param0, param1, param2, param3);
    ov21_021D6F20(param0, param1, param2);
}

static void ov21_021D62E4(UnkStruct_ov21_021D13FC *param0, int param1)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0, 28, param0->unk_00, 3, 0, 0, 1, param1);

    v0 = ov21_021D27B8(param0, 38, 1, &v1, param1);

    sub_020198C0(param0->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0, 39, 1, &v1, param1);

    sub_020198C0(param0->unk_00, 3, v1->rawData, 1, 4, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00, 3);
}

static void ov21_021D637C(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, int param2, int param3)
{
    int v0;

    ov21_021D2724(param1, 28, param1->unk_00, 2, 0, 0, 1, param2);

    if (param3 == 1) {
        v0 = 42;
    } else {
        v0 = 40;
    }

    param0->unk_D8 = ov21_021D27B8(param1, v0, 1, &param0->unk_DC, param2);
}

static void ov21_021D63C0(UnkStruct_ov21_021D71A8 *param0)
{
    Heap_FreeToHeap(param0->unk_D8);
    param0->unk_D8 = NULL;
    param0->unk_DC = NULL;
}

static void ov21_021D63DC(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3)
{
    Strbuf *v0 = Strbuf_Init(32, param1);
    MessageLoader *v1 = MessageLoader_Init(0, 26, 697, param1);

    MessageLoader_GetStrbuf(v1, 0, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04, FONT_SYSTEM, v0, 8, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    MessageLoader_GetStrbuf(v1, 1, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04, FONT_SYSTEM, v0, 128, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    Strbuf_FormatInt(v0, param2, 3, 2, 1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04, FONT_SYSTEM, v0, 48, 170, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    Strbuf_FormatInt(v0, param3, 3, 2, 1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04, FONT_SYSTEM, v0, 180, 170, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    Strbuf_Free(v0);
    MessageLoader_Free(v1);
    sub_0201C3C0(param0->unk_00, 1);
}

static void ov21_021D64B0(UnkStruct_ov21_021D13FC *param0, int param1, int param2)
{
    Strbuf *v0 = Strbuf_Init(32, param1);
    MessageLoader *v1 = MessageLoader_Init(0, 26, 697, param1);

    MessageLoader_GetStrbuf(v1, 109, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04, FONT_SYSTEM, v0, 8, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    Strbuf_FormatInt(v0, param2, 3, 2, 1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04, FONT_SYSTEM, v0, 48, 170, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);
    sub_0201C3C0(param0->unk_00, 1);
}

static void ov21_021D6538(UnkStruct_ov21_021D71A8 *param0, int param1)
{
    param0->unk_80[0] = SpriteResourceCollection_New(2, 0, param1);
    param0->unk_80[1] = SpriteResourceCollection_New(2, 1, param1);
    param0->unk_80[2] = SpriteResourceCollection_New(2, 2, param1);
    param0->unk_80[3] = SpriteResourceCollection_New(2, 3, param1);
}

static void ov21_021D6580(UnkStruct_ov21_021D71A8 *param0)
{
    SpriteResource *v0;

    v0 = SpriteResourceCollection_Find(param0->unk_80[0], 81);
    sub_0200A4E4(v0);

    v0 = SpriteResourceCollection_Find(param0->unk_80[1], 3);
    sub_0200A6DC(v0);

    v0 = SpriteResourceCollection_Find(param0->unk_80[0], 111);
    sub_0200A4E4(v0);

    SpriteResourceCollection_Delete(param0->unk_80[0]);
    SpriteResourceCollection_Delete(param0->unk_80[1]);
    SpriteResourceCollection_Delete(param0->unk_80[2]);
    SpriteResourceCollection_Delete(param0->unk_80[3]);
}

static void ov21_021D65DC(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, int param2)
{
    SpriteResource *v0;
    NARC *v1 = ov21_021D26E0(param1);

    v0 = SpriteResourceCollection_AddTilesFrom(param0->unk_80[0], v1, 81, 1, 81, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(v0);
    SpriteResource_ReleaseData(v0);

    v0 = SpriteResourceCollection_AddPaletteFrom(param0->unk_80[1], v1, 3, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 12, param2);

    sub_0200A640(v0);
    SpriteResource_ReleaseData(v0);
    SpriteResourceCollection_AddFrom(param0->unk_80[2], v1, 79, 1, 79, 2, param2);
    SpriteResourceCollection_AddFrom(param0->unk_80[3], v1, 80, 1, 80, 3, param2);
    sub_020093B4(&param0->unk_90, 81, 3, 79, 80, 0xffffffff, 0xffffffff, 0, 2, param0->unk_80[0], param0->unk_80[1], param0->unk_80[2], param0->unk_80[3], NULL, NULL);

    v0 = SpriteResourceCollection_AddTilesFrom(param0->unk_80[0], v1, 111, 1, 111, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(v0);
    SpriteResource_ReleaseData(v0);
    SpriteResourceCollection_AddFrom(param0->unk_80[2], v1, 109, 1, 109, 2, param2);
    SpriteResourceCollection_AddFrom(param0->unk_80[3], v1, 110, 1, 110, 3, param2);
    sub_020093B4(&param0->unk_B4, 111, 3, 109, 110, 0xffffffff, 0xffffffff, 0, 2, param0->unk_80[0], param0->unk_80[1], param0->unk_80[2], param0->unk_80[3], NULL, NULL);
}

static void ov21_021D6744(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, int param2)
{
    CellActorInitParams v0;
    int v1;

    memset(&v0, 0, sizeof(CellActorInitParams));
    v0.collection = param1->unk_138;
    v0.resourceData = &param0->unk_90;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = param2;
    v0.priority = 32;

    for (v1 = 0; v1 < 9; v1++) {
        param0->unk_00[v1] = CellActorCollection_Add(&v0);
        CellActor_SetAnim(param0->unk_00[v1], 0);
    }

    v0.priority = 0;

    for (v1 = 0; v1 < 9; v1++) {
        param0->unk_50[v1] = CellActorCollection_Add(&v0);
        CellActor_SetAnim(param0->unk_50[v1], 1);
    }

    v0.priority = 0;
    param0->unk_74 = CellActorCollection_Add(&v0);

    CellActor_SetAnim(param0->unk_74, 2);

    v0.priority = 0;
    v0.position.x = 56 << FX32_SHIFT;
    v0.position.y = 80 << FX32_SHIFT;
    v0.resourceData = &param0->unk_B4;

    param0->unk_7C = CellActorCollection_Add(&v0);

    CellActor_SetDrawFlag(param0->unk_7C, 0);
    CellActor_SetExplicitOAMMode(param0->unk_7C, GX_OAM_MODE_XLU);
}

static void ov21_021D67EC(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_ov21_021D4CB8 v4;
    Window *v5;
    const UnkStruct_ov21_021D37DC *v6;
    int v7;

    v4.unk_00 = param1->unk_14C;
    v4.unk_08 = param0->unk_90.paletteProxy;
    v4.unk_0C = NULL;
    v4.unk_10 = 0;
    v4.unk_14 = 0;
    v4.unk_18 = 2;
    v4.unk_1C = 0;
    v4.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v4.unk_24 = param3;

    v1 = ov21_021D3898(param2->unk_04) - 4;
    v2 = param0->unk_24;
    v3 = ov21_021D38A4(param2->unk_04);

    for (v0 = 0; v0 < 9; v0++) {
        if (param0->unk_28[v2]) {
            ov21_021D4D1C(param0->unk_28[v2]);
            param0->unk_28[v2] = NULL;
        }

        if ((v1 >= 0) && (v1 < v3)) {
            v7 = ov21_021D38B0(param2->unk_04, v1);

            if (v7 != (NATIONAL_DEX_COUNT + 1)) {
                v6 = ov21_021D37DC(param2->unk_04, v7);
                v5 = ov21_021D16D8(param1, param2->unk_04, param3, v6->unk_00);
                v4.unk_04 = v5;
                param0->unk_28[v2] = ov21_021D4CB8(&v4, param0->unk_4C);
                ov21_021D4DA0(v5);
            } else {
                ov21_021D6DF4(param0, param1, param3, v2, v1 + 1);
            }
        } else {
            param0->unk_28[v2] = NULL;
        }

        v2 = (v2 + 1) % 9;
        v1++;
    }
}

static void ov21_021D68C8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2)
{
    int v0;
    int v1;
    const UnkStruct_ov21_021D37DC *v2;

    v1 = ov21_021D3898(param2->unk_04);
    v0 = ov21_021D375C(param2->unk_04);
    v2 = ov21_021D37DC(param2->unk_04, v0);

    if (ov21_021D38B0(param2->unk_04, v1) == (NATIONAL_DEX_COUNT + 1)) {
        ov21_021D217C(param1, 0);

        if (param0->unk_7C) {
            CellActor_SetDrawFlag(param0->unk_7C, 1);
        }
    } else {
        ov21_021D1890(param1, param2->unk_04, v2->unk_00, 2, 56, 80);
        ov21_021D217C(param1, 1);

        if (param0->unk_7C) {
            CellActor_SetDrawFlag(param0->unk_7C, 0);
        }
    }
}

static void ov21_021D6940(UnkStruct_ov21_021D71A8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        if (param0->unk_28[v0]) {
            ov21_021D4D1C(param0->unk_28[v0]);
        }
    }
}

static void ov21_021D695C(UnkStruct_ov21_021D71A8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        CellActor_Delete(param0->unk_00[v0]);
    }

    for (v0 = 0; v0 < 9; v0++) {
        CellActor_Delete(param0->unk_50[v0]);
    }

    CellActor_Delete(param0->unk_74);
    CellActor_Delete(param0->unk_7C);
}

static void ov21_021D6994(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    param0->unk_24 = 0;
    ov21_021D6ED0(param0, param1);
}

static void ov21_021D69A0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    int v0;
    VecFx32 v1;
    int v2;
    int v3, v4;
    int v5;
    int v6;
    int v7;

    v0 = param0->unk_24;

    for (v2 = 0; v2 < 9; v2++) {
        if (param1->unk_08 == 1) {
            v3 = v2 + 2;
            v4 = v2 + 1;
        } else {
            v3 = v2;
            v4 = v2 + 1;
        }

        v1.x = ov21_021D6BF8(Unk_ov21_021E9D14[v3], Unk_ov21_021E9D14[v4], (64 * 10), (64 * 10) - param1->unk_0C);
        v1.y = ov21_021D6BF8(Unk_ov21_021E9D40[v3], Unk_ov21_021E9D40[v4], (64 * 10), (64 * 10) - param1->unk_0C);

        CellActor_SetPosition(param0->unk_00[v0], &v1);

        v5 = 4 - v2;

        if (v5 < 0) {
            v5 = -v5;
        }

        v6 = v5 * 2;

        if (v6 < 0) {
            v6 = -v6;
        }

        v6 += 32;

        CellActor_SetPriority(param0->unk_00[v0], v6);

        if (v2 == 4) {
            CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_00[v0], 0);
        } else {
            if (7 + (v5 - 1) < 9) {
                CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_00[v0], 7 + (v5 - 1));
            } else {
                CellActor_SetExplicitPaletteOffsetAutoAdjust(param0->unk_00[v0], 9);
            }
        }

        v0 = (v0 + 1) % 9;
    }
}

static void ov21_021D6A58(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    int v0;
    int v1;
    int v2;

    v1 = ov21_021D3898(param1->unk_04);
    v2 = ov21_021D38A4(param1->unk_04);

    if (param1->unk_08 == 1) {
        if ((param0->unk_24 + 1) < 9) {
            param0->unk_24++;
        } else {
            param0->unk_24 = 0;
        }

        v0 = param0->unk_24 + (9 - 1);
        v0 %= 9;

        if ((v1 + 4) >= v2) {
            CellActor_SetDrawFlag(param0->unk_00[v0], 0);
        } else {
            CellActor_SetDrawFlag(param0->unk_00[v0], 1);
        }
    } else {
        if (param1->unk_08 == 2) {
            if ((param0->unk_24 - 1) >= 0) {
                param0->unk_24--;
            } else {
                param0->unk_24 = 9 - 1;
            }

            v0 = param0->unk_24;

            if ((v1 - 4) < 0) {
                CellActor_SetDrawFlag(param0->unk_00[v0], 0);
            } else {
                CellActor_SetDrawFlag(param0->unk_00[v0], 1);
            }
        } else {
            ov21_021D6ED0(param0, param1);
        }
    }
}

static void ov21_021D6AE4(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    const VecFx32 *v0;
    VecFx32 v1;
    int v2;
    int v3;
    BOOL v4;
    int v5;
    int v6;
    int v7;
    const UnkStruct_ov21_021D37DC *v8;
    int v9;
    int v10;
    int v11;

    v6 = ov21_021D3898(param1->unk_04);
    v7 = ov21_021D38A4(param1->unk_04);

    for (v2 = 0; v2 < 9; v2++) {
        v3 = (param0->unk_24 + v2) % 9;

        v4 = 0;
        v5 = ((v6 - 4) + v2);

        if ((v5 >= 0) && (v5 < v7)) {
            v11 = ov21_021D38B0(param1->unk_04, v5);

            if (v11 != (NATIONAL_DEX_COUNT + 1)) {
                v8 = ov21_021D37DC(param1->unk_04, v11);

                if (v8->unk_04 == 2) {
                    v4 = 1;
                }
            }
        }

        CellActor_SetDrawFlag(param0->unk_50[v3], v4);

        if (v4) {
            v0 = CellActor_GetPosition(param0->unk_00[v3]);

            v1.x = v0->x + (-54 * FX32_ONE);
            v1.y = v0->y;

            CellActor_SetPosition(param0->unk_50[v3], &v1);

            v10 = CellActor_GetExplicitPaletteOffset(param0->unk_00[v3]);
            CellActor_SetExplicitPaletteOffset(param0->unk_50[v3], v10);

            v9 = CellActor_GetPriority(param0->unk_00[v3]);
            v9--;
            CellActor_SetPriority(param0->unk_50[v3], v9);
        }
    }
}

static void ov21_021D6B94(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    int v0 = ov21_021D38A4(param1->unk_04);
    param0->unk_78 = FX_Div((54 * FX32_ONE), v0 << FX32_SHIFT);
}

static void ov21_021D6BB0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    VecFx32 v0;
    int v1 = ov21_021D3898(param1->unk_04);

    v0.y = FX_Mul(param0->unk_78, v1 << FX32_SHIFT);
    v0.y += (58 * FX32_ONE);
    v0.x = (248 * FX32_ONE);

    CellActor_SetPosition(param0->unk_74, &v0);
}

static fx32 ov21_021D6BF8(fx32 param0, fx32 param1, int param2, int param3)
{
    fx32 v0;

    v0 = (param1 - param0);
    v0 = FX_Mul(v0, param3 << FX32_SHIFT);
    v0 = FX_Div(v0, param2 << FX32_SHIFT);

    return v0 + param0;
}

static void ov21_021D6C24(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    memset(param0, 0, sizeof(UnkStruct_ov21_021D71A8));
    param0->unk_144 = ov21_021D3898(param1->unk_04);
}

static void ov21_021D6C44(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    int v0;
    int v1, v2;
    VecFx32 v3;
    int v4;
    int v5;
    int v6;

    v4 = param0->unk_24;

    for (v0 = 0; v0 < 9; v0++) {
        if (param0->unk_28[v4]) {
            ov21_021D6CA4(param0->unk_00[v4], &v1, &v2);
            sub_020128C4(param0->unk_28[v4]->unk_00, v1, v2);

            v5 = CellActor_GetPriority(param0->unk_00[v4]);
            v5--;
            sub_02012A30(param0->unk_28[v4]->unk_00, v5);

            v6 = CellActor_GetExplicitPaletteOffset(param0->unk_00[v4]);
            sub_02012A90(param0->unk_28[v4]->unk_00, v6);
        }

        v4 = (v4 + 1) % 9;
    }
}

static void ov21_021D6CA4(CellActor *param0, int *param1, int *param2)
{
    const VecFx32 *v0;

    v0 = CellActor_GetPosition(param0);

    *param1 = v0->x >> FX32_SHIFT;
    *param2 = v0->y >> FX32_SHIFT;
    *param1 -= (128 / 2);
    *param2 -= (16 / 2);
}

static void ov21_021D6CC8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    v0 = ov21_021D3898(param2->unk_04);
    v1 = ov21_021D38A4(param2->unk_04);

    switch (param2->unk_08) {
    case 1:
        v2 = param0->unk_24 + 9 - 1;
        v3 = v0 + 4;
        break;
    case 2:
        v2 = param0->unk_24;
        v3 = v0 - 4;
        break;
    default:
        break;
    }

    if (param2->unk_08 == 0) {
        ov21_021D67EC(param0, param1, param2, param3);
    } else {
        v2 %= 9;

        if ((v3 < v1) && (v3 >= 0)) {
            v4 = ov21_021D38B0(param2->unk_04, v3);

            if (v4 != (NATIONAL_DEX_COUNT + 1)) {
                ov21_021D6D78(param0, param1, param2, param3, v2, v4);
            } else {
                ov21_021D6DF4(param0, param1, param3, v2, v3 + 1);
            }
        } else {
            if (param0->unk_28[v2]) {
                ov21_021D4D1C(param0->unk_28[v2]);
                param0->unk_28[v2] = NULL;
            }
        }
    }
}

static void ov21_021D6D78(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3, int param4, int param5)
{
    UnkStruct_ov21_021D4CB8 v0;
    Window *v1;
    const UnkStruct_ov21_021D37DC *v2;

    v2 = ov21_021D37DC(param2->unk_04, param5);
    GF_ASSERT(v2);

    v0.unk_00 = param1->unk_14C;
    v0.unk_08 = param0->unk_90.paletteProxy;
    v0.unk_0C = NULL;
    v0.unk_10 = 0;
    v0.unk_14 = 0;
    v0.unk_18 = 2;
    v0.unk_1C = 0;
    v0.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_24 = param3;

    v1 = ov21_021D16D8(param1, param2->unk_04, param3, v2->unk_00);

    if (param0->unk_28[param4]) {
        ov21_021D4D1C(param0->unk_28[param4]);
    }

    v0.unk_04 = v1;
    param0->unk_28[param4] = ov21_021D4CB8(&v0, param0->unk_4C);

    ov21_021D4DA0(v1);
}

static void ov21_021D6DF4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, int param2, int param3, int param4)
{
    UnkStruct_ov21_021D4CB8 v0;
    Window *v1;
    Strbuf *v2 = Strbuf_Init(32, param2);
    MessageLoader *v3 = MessageLoader_Init(0, 26, 697, param2);

    v0.unk_00 = param1->unk_14C;
    v0.unk_08 = param0->unk_90.paletteProxy;
    v0.unk_0C = NULL;
    v0.unk_10 = 0;
    v0.unk_14 = 0;
    v0.unk_18 = 2;
    v0.unk_1C = 0;
    v0.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_24 = param2;

    v1 = ov21_021D4D6C(param1->unk_14C, 15, 2);

    Strbuf_FormatInt(v2, param4, 3, 2, 1);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SUBSCREEN, v2, 22, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    MessageLoader_GetStrbuf(v3, 99, v2);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SUBSCREEN, v2, 49, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);

    if (param0->unk_28[param3]) {
        ov21_021D4D1C(param0->unk_28[param3]);
    }

    v0.unk_04 = v1;
    param0->unk_28[param3] = ov21_021D4CB8(&v0, param0->unk_4C);

    ov21_021D4DA0(v1);

    Strbuf_Free(v2);
    MessageLoader_Free(v3);
}

static void ov21_021D6ED0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    v3 = ov21_021D3898(param1->unk_04);
    v4 = ov21_021D38A4(param1->unk_04);
    v0 = v3 - 4;
    v1 = param0->unk_24;

    for (v2 = 0; v2 < 9; v2++) {
        if ((v0 >= 0) && (v0 < v4)) {
            CellActor_SetDrawFlag(param0->unk_00[v1], 1);
        } else {
            CellActor_SetDrawFlag(param0->unk_00[v1], 0);
        }

        v1 = (v1 + 1) % 9;
        v0++;
    }
}

static void ov21_021D6F20(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2)
{
    fx32 v0;
    int v1;
    Sprite *v2;

    v0 = FX_Mul(31 << FX32_SHIFT, ((64 * 10) - param2->unk_0C) << FX32_SHIFT);
    v0 = FX_Div(v0, (64 * 10) << FX32_SHIFT);
    v1 = v0 >> FX32_SHIFT;
    v2 = ov21_021D2170(param1);

    sub_02007DEC(v2, 23, v1);
}

static void ov21_021D6F64(UnkStruct_ov21_021D13FC *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    Sprite *v0;

    v0 = ov21_021D2170(param0);
    sub_02007DEC(v0, 23, 31);
}

static void ov21_021D6F74(const UnkStruct_ov21_021D5B68 *param0)
{
    fx32 v0;
    int v1;

    v0 = FX_Mul(16 << FX32_SHIFT, ((64 * 10) - param0->unk_0C) << FX32_SHIFT);
    v0 = FX_Div(v0, (64 * 10) << FX32_SHIFT);
    v1 = v0 >> FX32_SHIFT;

    G2_ChangeBlendAlpha(v1, 16 - v1);
}

static void ov21_021D6FB4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    int v0, v1;
    int v2, v3;
    int v4;

    Sound_PlayEffect(1669);

    if (param2->unk_10 == 0) {
        if (param3) {
            v0 = 0;
            v2 = 0;
            v1 = 3;
            v3 = 14;
            v4 = 4;

            sub_02019184(param1->unk_00->unk_00, 1, 3, 192);
        } else {
            v0 = 3;
            v2 = 14;
            v1 = 0;
            v3 = 0;
            v4 = 4;
        }
    } else {
        if (param3) {
            v0 = 12;
            v2 = 20;
            v1 = 3;
            v3 = 14;
            v4 = 4;
        } else {
            v0 = 3;
            v2 = 14;
            v1 = 12;
            v3 = 20;
            v4 = 4;
        }
    }

    ov21_021D1558(&param0->unk_E0, param1->unk_00->unk_00, 2, param0->unk_DC, v0, v1, v2, v3, v4);
}

static BOOL ov21_021D7044(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1)
{
    BOOL v0;
    int v1;

    v0 = ov21_021D157C(&param0->unk_E0);

    if (v0 == 0) {
        v1 = (param0->unk_E0.unk_18 * (param0->unk_E0.unk_1C - 1)) / param0->unk_E0.unk_20;
        v1 += param0->unk_E0.unk_10;
        v1 = v1;
        v1 *= 8;
        v1 = v1 - (14 * 8);

        if (v1 < -48) {
            v1 = -48;
        }

        sub_0201C63C(param1->unk_00->unk_00, 1, 3, v1);
    }

    return v0;
}

static void ov21_021D7094(UnkStruct_ov21_021D5C08 *param0, const UnkStruct_ov21_021D5B68 *param1, BOOL param2)
{
    if (param1->unk_10 == 0) {
        if (param2 == 0) {
            sub_02019184(param0->unk_00->unk_00, 1, 3, 0);
        }
    }

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
}

static int ov21_021D70C0(UnkStruct_ov21_021D13FC *param0, int param1)
{
    Window *v0;
    int v1;

    v0 = ov21_021D4D6C(param0->unk_14C, 15, 2);
    v1 = sub_02012898(v0, NNS_G2D_VRAM_TYPE_2DMAIN, param1);

    ov21_021D4DA0(v0);

    return v1;
}

static void ov21_021D70E8(UnkStruct_ov21_021D71A8 *param0)
{
    int v0;

    CellActor_SetExplicitOAMMode(param0->unk_74, GX_OAM_MODE_XLU);

    for (v0 = 0; v0 < 9; v0++) {
        CellActor_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_XLU);
        CellActor_SetExplicitOAMMode(param0->unk_50[v0], GX_OAM_MODE_XLU);

        if (param0->unk_28[v0]) {
            sub_02012AF0(param0->unk_28[v0]->unk_00, GX_OAM_MODE_XLU);
        }
    }
}

static void ov21_021D7124(UnkStruct_ov21_021D71A8 *param0)
{
    int v0;

    CellActor_SetExplicitOAMMode(param0->unk_74, GX_OAM_MODE_NORMAL);

    for (v0 = 0; v0 < 9; v0++) {
        CellActor_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
        CellActor_SetExplicitOAMMode(param0->unk_50[v0], GX_OAM_MODE_NORMAL);

        if (param0->unk_28[v0]) {
            sub_02012AF0(param0->unk_28[v0]->unk_00, GX_OAM_MODE_NORMAL);
        }
    }
}

static void ov21_021D7160(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D13FC *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    const VecFx32 *v0;
    int v1;

    v1 = (param0->unk_24 + 4) % 9;
    v0 = CellActor_GetPosition(param0->unk_00[v1]);

    ov21_021D1778(param1, param2->unk_04, param3, ov21_021D375C(param2->unk_04), v0->x, v0->y);
    ov21_021D238C(param1, 0);
}

static void ov21_021D71A8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    ov21_021D6FB4(param0, param1, param2, param3);

    if (param2->unk_10 != 1) {
        if (param3) {
            sub_0200AAE0(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            sub_0200AAE0(4, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL ov21_021D71E4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    BOOL v0[2];

    v0[0] = ov21_021D7044(param0, param1);

    if (param2->unk_10 != 1) {
        v0[1] = sub_0200AC1C(1);
    } else {
        v0[1] = 1;
    }

    if ((v0[0] == 1) && (v0[1] == 1)) {
        if (param2->unk_10 != 1) {
            if (param3 == 0) {
                sub_0200AB4C(-16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 1);
                BGL_FillWindow(&param1->unk_00->unk_04, 0);
                sub_02019EBC(param1->unk_00->unk_00, 1);
            }
        }

        ov21_021D7094(param1, param2, param3);

        return 1;
    }

    return 0;
}

static void ov21_021D7248(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    ov21_021D70E8(param0);
    ov21_021D6FB4(param0, param1, param2, param3);

    if (param3 == 0) {
        ov21_021D7394(param0, param1);
        ov21_021D73F0(param0, param1);
    }

    if (param2->unk_10 != 1) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 4, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }
}

static BOOL ov21_021D72D4(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    BOOL v0[4];
    int v1;

    v0[0] = ov21_021D7044(param0, param1);

    if (param2->unk_10 != 1) {
        v0[1] = ov21_021D2424(&param1->unk_00->unk_168);
    }

    if (param3 == 0) {
        v0[2] = ov21_021D73C8(param0, param1);
        v0[3] = ov21_021D7424(param0, param1);
    } else {
        v0[2] = 1;
        v0[3] = 1;
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 4) {
        if (param3 == 0) {
            if (param2->unk_10 != 1) {
                G2_SetBlendBrightnessExt((GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0, 0, -16);
                BGL_FillWindow(&param1->unk_00->unk_04, 0);
                sub_02019EBC(param1->unk_00->unk_00, 1);
            }
        } else {
            ov21_021D7124(param0);
            ov21_021D23C0(param1->unk_00, 0);
            ov21_021D2360(param1->unk_00, GX_OAM_MODE_NORMAL);
        }

        ov21_021D7094(param1, param2, param3);

        return 1;
    }

    return 0;
}

static void ov21_021D7394(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1)
{
    ov21_021D2648(&param0->unk_104, 56, 48, 80, 72, 4);
    ov21_021D2164(param1->unk_00, param0->unk_104.unk_00, param0->unk_104.unk_04);
}

static BOOL ov21_021D73C8(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1)
{
    BOOL v0;

    v0 = ov21_021D2664(&param0->unk_104);
    ov21_021D2164(param1->unk_00, param0->unk_104.unk_00, param0->unk_104.unk_04);

    return v0;
}

static void ov21_021D73F0(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1)
{
    ov21_021D2648(&param0->unk_124, 170, 172, 82, 32, 4);
    ov21_021D1848(param1->unk_00, param0->unk_124.unk_00, param0->unk_124.unk_04);
}

static BOOL ov21_021D7424(UnkStruct_ov21_021D71A8 *param0, UnkStruct_ov21_021D5C08 *param1)
{
    BOOL v0;

    v0 = ov21_021D2664(&param0->unk_124);
    ov21_021D1848(param1->unk_00, param0->unk_124.unk_00, param0->unk_124.unk_04);

    return v0;
}

static void ov21_021D744C(UnkStruct_ov21_021D5B68 *param0)
{
    *param0->unk_00 |= (1 << 2);
    param0->unk_10 = 0;
    param0->unk_14 = 0;
    param0->unk_20 = 2;
}

static void ov21_021D7464(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1)
{
    *param1->unk_00 |= (1 << 1);
    param1->unk_10 = 0;
    param1->unk_14 = 1;
    param1->unk_0C = 0;
    param1->unk_20 = 2;
}

static BOOL ov21_021D747C(UnkStruct_ov21_021D5B68 *param0)
{
    if (param0->unk_04->unk_1740 == 0) {
        *param0->unk_00 |= (1 << 0);
        param0->unk_10 = 0;
        param0->unk_14 = 0;
        param0->unk_20 = 2;
        Sound_PlayEffect(1501);
        return 1;
    }

    return 0;
}

static BOOL ov21_021D74B0(UnkStruct_ov21_021D5B68 *param0, int param1)
{
    int v0;

    if (param0->unk_04->unk_1740 == 1) {
        return 0;
    }

    v0 = ov21_021D36D8(param0->unk_04);

    if (v0 == 0) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    if (ov21_021D36A4(param0->unk_04, v0)) {
        ov21_021D36C0(param0->unk_04, v0);
        Sound_PlayEffect(1501);
        ov21_021D3684(param0->unk_04, 0, 0, 0, 0, 0, v0, param1);
        ov21_021D36FC(param0->unk_04, 0);

        param0->unk_0C = 0;
        *param0->unk_00 |= (1 << 4);
        param0->unk_10 = 0;
        param0->unk_14 = 0;
        param0->unk_20 = 2;
        param0->unk_1C = 0;

        return 1;
    }

    return 0;
}

static void ov21_021D7538(UnkStruct_ov21_021D5B68 *param0, int param1)
{
    u32 v0 = ov21_021D37BC(param0->unk_04);

    ov21_021D3684(param0->unk_04, 0, 0, 0, 0, 0, ov21_021D36D8(param0->unk_04), param1);
    (*param0->unk_00) |= (1 << 4);

    ov21_021D3794(param0->unk_04, v0);

    param0->unk_0C = 0;
    param0->unk_04->unk_1740 = 0;
    param0->unk_10 = 0;
    param0->unk_14 = 0;
    param0->unk_08 = 0;
    param0->unk_20 = 2;
    param0->unk_1C = 0;
}

static void ov21_021D7590(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1)
{
    param0->unk_18--;

    if (param0->unk_18 >= 0) {
        if (ov21_021D6108(param1, param0->unk_1C)) {
            ov21_021D60FC(param1, param0, param0->unk_20);
            param1->unk_20 = 1;
            Sound_PlayEffect(1675);
        } else {
            param0->unk_18 = 0;
        }
    } else {
        ov21_021D5F58(param1, param0);
        param0->unk_14 = 0;
        param1->unk_20 = 0;
    }
}

static void ov21_021D75DC(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1)
{
    if (gCoreSys.heldKeys & PAD_KEY_UP) {
        if (ov21_021D6108(param1, -1)) {
            ov21_021D60FC(param1, param0, 2);
            param1->unk_20 = 1;
            Sound_PlayEffect(1675);
        } else {
            ov21_021D5F58(param1, param0);
            param1->unk_20 = 0;
        }

        return;
    }

    if (gCoreSys.heldKeys & PAD_KEY_DOWN) {
        if (ov21_021D6108(param1, 1)) {
            ov21_021D60FC(param1, param0, 1);
            param1->unk_20 = 1;
            Sound_PlayEffect(1675);
        } else {
            ov21_021D5F58(param1, param0);
            param1->unk_20 = 0;
        }

        return;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        param0->unk_14 = 1;
        param0->unk_18 = 5;
        param0->unk_1C = -1;
        param0->unk_20 = 2;
        ov21_021D5F6C(param1, param0);
        return;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        param0->unk_14 = 1;
        param0->unk_18 = 5;
        param0->unk_1C = 1;
        param0->unk_20 = 1;
        ov21_021D5F6C(param1, param0);
        return;
    }

    if (param1->unk_20 == 1) {
        ov21_021D5F58(param1, param0);
        param1->unk_20 = 0;
    }
}
