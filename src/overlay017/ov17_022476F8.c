#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "struct_defs/struct_02008A90.h"
#include "struct_defs/struct_0200D0F4.h"
#include "overlay017/struct_ov17_022476F8.h"
#include "overlay017/struct_ov17_0224792C.h"
#include "overlay017/struct_ov17_02247A48.h"
#include "overlay017/struct_ov17_0225442C.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201D670.h"
#include "unk_02023790.h"
#include "game_options.h"
#include "unk_02073C2C.h"
#include "overlay017/ov17_022476F8.h"

typedef struct {
    u8 * unk_00;
    UnkStruct_0200D0F4 * unk_04;
    s32 unk_08;
    s32 unk_0C;
    fx32 unk_10;
    u8 unk_14;
    u16 unk_16;
} UnkStruct_ov17_022477B8;

static const UnkStruct_ov104_0223F9E0 Unk_ov17_022543F8 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {0x80EA, 0x80EA, 0x80EA, 0x80EA, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const UnkStruct_ov17_0225442C Unk_ov17_0225442C[] = {
    {0x0, 0x0},
    {0x0, 0x0},
    {0x11, 0x0},
    {0x1, 0x1},
    {0x2, 0x1},
    {0x3, 0x1},
    {0x4, 0x1},
    {0x5, 0x0},
    {0x6, 0x0},
    {0x7, 0x0},
    {0x8, 0x0},
    {0x9, 0x0},
    {0xA, 0x0},
    {0xB, 0x0},
    {0xC, 0x0}
};

void include_ov17_022476F8(void);
static void ov17_02247840(UnkStruct_0201CD38 * param0, void * param1);

void ov17_022476F8 (UnkStruct_ov17_022476F8 * param0, int param1)
{
    if (param0->unk_08[param1] == NULL) {
        GF_ASSERT(param0->unk_48[param1].unk_00 == NULL);
        return;
    }

    sub_02007DC8(param0->unk_08[param1]);
    Heap_FreeToHeap(param0->unk_48[param1].unk_00);

    param0->unk_08[param1] = NULL;
    param0->unk_48[param1].unk_00 = NULL;
}

void ov17_02247734 (UnkStruct_ov17_022476F8 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov17_022476F8(param0, v0);
    }
}

void ov17_0224774C (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, NARC * param2)
{
    sub_0200CC3C(param0, param1, param2, 67, 1, NNS_G2D_VRAM_TYPE_2DSUB, 33002);
    sub_0200CE24(param0, param1, param2, 68, 1, 33002);
    sub_0200CE54(param0, param1, param2, 69, 1, 33002);
}

void ov17_02247798 (UnkStruct_0200C704 * param0)
{
    sub_0200D070(param0, 33002);
    sub_0200D090(param0, 33002);
    sub_0200D0A0(param0, 33002);
}

void ov17_022477B8 (UnkStruct_ov17_02247A48 * param0, int param1, int param2, fx32 param3, int param4)
{
    UnkStruct_ov17_022477B8 * v0;

    v0 = Heap_AllocFromHeap(22, sizeof(UnkStruct_ov17_022477B8));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_022477B8));

    v0->unk_04 = sub_0200CE6C(param0->unk_0C.unk_1C, param0->unk_0C.unk_20, &Unk_ov17_022543F8);
    sub_0200D500(v0->unk_04, param1, param2, (256 * FX32_ONE));

    if (param4 == 1) {
        sub_0200D364(v0->unk_04, 1);
    }

    sub_0200D324(v0->unk_04->unk_00);

    v0->unk_08 = param1 << 8;
    v0->unk_0C = param2 << 8;
    v0->unk_00 = &param0->unk_4F7;
    param0->unk_4F7++;

    sub_0200D9E8(ov17_02247840, v0, 50000);
    sub_02005748(1761);
}

static void ov17_02247840 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov17_022477B8 * v0 = param1;
    s32 v1;

    switch (v0->unk_14) {
    case 0:
        v1 = sub_0201D2B8(v0->unk_10) * 8 / FX32_ONE;
        v0->unk_10 += (6 << FX32_SHIFT);
        v0->unk_0C -= 0x100;

        sub_0200D500(v0->unk_04, v0->unk_08 / 0x100 + v1, v0->unk_0C / 0x100, (256 * FX32_ONE));

        v0->unk_16++;

        if ((v0->unk_16 >= 60) || (v0->unk_0C <= (-32 * 0x100))) {
            v0->unk_14++;
        }
        break;
    default:
        sub_0200D0F4(v0->unk_04);
        (*(v0->unk_00))--;
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
        return;
    }
}

void ov17_022478D0 (UnkStruct_ov17_02247A48 * param0, int param1)
{
    UnkStruct_02008A90 v0;

    GF_ASSERT(param0->unk_0C.unk_18 == NULL);

    sub_0207697C(&v0, param0->unk_00->unk_00.unk_10[param1].unk_0A);
    param0->unk_0C.unk_18 = sub_02007C34(param0->unk_0C.unk_04, &v0, 320, 32, (-0x200 - 0x40), 3, NULL, NULL);
}

void ov17_02247918 (UnkStruct_ov17_02247A48 * param0)
{
    if (param0->unk_0C.unk_18 == NULL) {
        return;
    }

    sub_02007DC8(param0->unk_0C.unk_18);
    param0->unk_0C.unk_18 = NULL;
}

static void ov17_0224792C (UnkStruct_ov17_02247A48 * param0, int param1, const UnkStruct_ov17_0224792C * param2)
{
    if (param1 != 0) {
        GF_ASSERT(param2 != NULL);
    }

    switch (param1) {
    case 0:
        break;
    case 1:
        sub_0200B48C(param0->unk_0C.unk_3C, 0, param0->unk_00->unk_00.unk_D8[param2->unk_00], param0->unk_00->unk_00.unk_F8[param2->unk_00], 1, GAME_LANGUAGE);
        sub_0200B5CC(param0->unk_0C.unk_3C, 1, sub_02076B10(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void ov17_02247990 (UnkStruct_ov17_02247A48 * param0, UnkStruct_0200B144 * param1, u32 param2, int param3, const UnkStruct_ov17_0224792C * param4)
{
    UnkStruct_02023790 * v0;
    int v1;

    if (param0->unk_00->unk_155 == 0) {
        v1 = GameOptions_GetTextSpeedReductionFactor(param0->unk_00->unk_196C);
    } else {
        v1 = 1;
    }

    v0 = sub_0200B1EC(param1, param2);
    ov17_0224792C(param0, param3, param4);

    sub_0200C388(param0->unk_0C.unk_3C, param0->unk_0C.unk_40, v0);
    sub_0201ADA4(&param0->unk_0C.unk_28[0], 0xff);

    param0->unk_0C.unk_C4 = sub_0201D738(&param0->unk_0C.unk_28[0], 1, param0->unk_0C.unk_40, 0, 0, v1, NULL);
    sub_020237BC(v0);
}

void ov17_02247A08 (UnkStruct_ov17_02247A48 * param0, u32 param1, const UnkStruct_ov17_0224792C * param2)
{
    u32 v0, v1;

    GF_ASSERT(param1 < NELEMS(Unk_ov17_0225442C));

    v0 = Unk_ov17_0225442C[param1].unk_00;
    v1 = Unk_ov17_0225442C[param1].unk_02;

    ov17_02247990(param0, param0->unk_0C.unk_38, v0, v1, param2);
}

int ov17_02247A3C (UnkStruct_ov17_02247A48 * param0)
{
    return sub_0201D724(param0->unk_0C.unk_C4);
}

void include_ov17_022476F8 (void)
{
    const u16 dummy[5] = {
        9, 10, 11, 12, 13
    };
}
