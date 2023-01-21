#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_020218BC_decl.h"

#include "struct_defs/struct_02009508.h"
#include "struct_defs/struct_02009508_1.h"
#include "struct_defs/struct_020095C4.h"
#include "struct_defs/struct_0200C738.h"
#include "overlay019/struct_ov19_021DA864.h"

#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "heap.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"
#include "unk_0202309C.h"

void sub_020093B4 (UnkStruct_ov19_021DA864 * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, UnkStruct_02009714 * param9, UnkStruct_02009714 * param10, UnkStruct_02009714 * param11, UnkStruct_02009714 * param12, UnkStruct_02009714 * param13, UnkStruct_02009714 * param14)
{
    UnkStruct_02009DC8 * v0;
    UnkStruct_02009DC8 * v1;
    UnkStruct_02009DC8 * v2;
    UnkStruct_02009DC8 * v3 = NULL;
    UnkStruct_02009DC8 * v4 = NULL;
    UnkStruct_02009DC8 * v5 = NULL;
    NNSG2dImageProxy * v6;

    GF_ASSERT(param9);
    GF_ASSERT(param10);
    GF_ASSERT(param12);
    GF_ASSERT(param11);
    GF_ASSERT(param0);

    v0 = sub_02009DC8(param9, param1);
    GF_ASSERT(v0);

    v1 = sub_02009DC8(param10, param2);
    GF_ASSERT(v1);

    v2 = sub_02009DC8(param11, param3);
    GF_ASSERT(v2);

    if (param12) {
        if (param4 != 0xffffffff) {
            v3 = sub_02009DC8(param12, param4);
            GF_ASSERT(v3);
        }
    }

    if (param13 != NULL) {
        if (param5 != 0xffffffff) {
            v4 = sub_02009DC8(param13, param5);
        }

        if (param6 != 0xffffffff) {
            v5 = sub_02009DC8(param14, param6);
        }
    }

    if (param7) {
        v6 = sub_0200A558(v0, v2);
        GF_ASSERT(v6);

        param0->unk_04 = sub_02009E1C(v0);
    } else {
        v6 = sub_0200A534(v0);
        GF_ASSERT(v6);
        param0->unk_04 = NULL;
    }

    param0->unk_08 = sub_0200A72C(v1, v6);
    param0->unk_00 = v6;
    param0->unk_0C = sub_02009E4C(v2);

    if (v3) {
        param0->unk_10 = sub_02009E64(v3);
    } else {
        param0->unk_10 = NULL;
    }

    if (v4) {
        param0->unk_14 = sub_02009E7C(v4);
        param0->unk_18 = sub_02009E94(v5);
    } else {
        param0->unk_14 = NULL;
        param0->unk_18 = NULL;
    }

    param0->unk_1C = param7;
    param0->unk_20 = param8;
}

void sub_020094F0 (UnkStruct_ov19_021DA864 * param0)
{
    sub_0200A5B4(param0->unk_00);
    memset(param0, 0, sizeof(UnkStruct_ov19_021DA864));
}

UnkStruct_02009508 * sub_02009508 (const UnkStruct_02009508_1 * param0, int param1, UnkStruct_02009714 * param2, UnkStruct_02009714 * param3, UnkStruct_02009714 * param4, UnkStruct_02009714 * param5, UnkStruct_02009714 * param6, UnkStruct_02009714 * param7)
{
    int v0;
    int v1;
    UnkStruct_02009508 * v2;
    int v3, v4;

    v1 = 0;

    while (param0[v1].unk_00 != 0xfffffffe) {
        v1++;
    }

    v2 = AllocFromHeap(param1, sizeof(UnkStruct_02009508));
    v2->unk_00 = AllocFromHeap(param1, sizeof(UnkStruct_ov19_021DA864) * v1);
    v2->unk_04 = v1;

    for (v0 = 0; v0 < v2->unk_04; v0++) {
        sub_020093B4(v2->unk_00 + v0, param0[v0].unk_00, param0[v0].unk_04, param0[v0].unk_08, param0[v0].unk_0C, param0[v0].unk_10, param0[v0].unk_14, param0[v0].unk_18, param0[v0].unk_1C, param2, param3, param4, param5, param6, param7);
    }

    return v2;
}

void sub_020095A8 (UnkStruct_02009508 * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_00) {
        FreeToHeap(param0->unk_00);
    }

    FreeToHeap(param0);
}

UnkStruct_020218BC * sub_020095C4 (int param0, UnkStruct_0200C738 * param1, int param2)
{
    UnkStruct_020095C4 v0;
    NNSG2dViewRect v1;

    sub_0202309C(&param1->unk_00, -FX32_ONE);

    v1.posTopLeft.x = 0;
    v1.posTopLeft.y = 0;
    v1.sizeView.x = (255 << FX32_SHIFT);
    v1.sizeView.y = (192 << FX32_SHIFT);

    sub_0200A8B0(&param1->unk_94[0], &v1, NNS_G2D_SURFACETYPE_MAIN2D, &param1->unk_00);

    v1.posTopLeft.x = 0;
    v1.posTopLeft.y = (192 << FX32_SHIFT);
    v1.sizeView.x = (255 << FX32_SHIFT);
    v1.sizeView.y = (192 << FX32_SHIFT);

    sub_0200A8B0(&param1->unk_94[1], &v1, NNS_G2D_SURFACETYPE_SUB2D, &param1->unk_00);

    v0.unk_00 = param0;
    v0.unk_04 = &param1->unk_00;
    v0.unk_08 = param2;

    return sub_020218BC(&v0);
}

void sub_0200962C (UnkStruct_0200C738 * param0, fx32 param1, fx32 param2)
{
    NNSG2dViewRect v0;

    v0.posTopLeft.x = param1;
    v0.posTopLeft.y = param2;
    v0.sizeView.x = (255 << FX32_SHIFT);
    v0.sizeView.y = (192 << FX32_SHIFT);

    sub_020230E0(&param0->unk_94[0], &v0);
}

void sub_0200964C (UnkStruct_0200C738 * param0, fx32 param1, fx32 param2)
{
    NNSG2dViewRect v0;

    v0.posTopLeft.x = param1;
    v0.posTopLeft.y = param2;
    v0.sizeView.x = (255 << FX32_SHIFT);
    v0.sizeView.y = (192 << FX32_SHIFT);

    sub_020230E0(&param0->unk_94[1], &v0);
}

void sub_0200966C (u32 param0, GXOBJVRamModeChar param1)
{
    switch (param1) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        if ((GX_GetBankForOBJ() == GX_VRAM_OBJ_16_G) || (GX_GetBankForOBJ() == GX_VRAM_OBJ_16_F)) {
            sub_0201E9C0(((512 - 16) * 32), 16 * 32, param0);
        } else {
            sub_0201E9C0(((1024 - 16) * 32), 16 * 32, param0);
        }
        break;
    case GX_OBJVRAMMODE_CHAR_1D_64K:
        sub_0201E9C0(((2048 - 16) * 32), 16 * 32, param0);
        break;
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        if ((GX_GetBankForOBJ() == GX_VRAM_OBJ_80_EF) || (GX_GetBankForOBJ() == GX_VRAM_OBJ_80_EG)) {
            sub_0201E9C0(((2560 - 16) * 32), 16 * 32, param0);
        } else {
            sub_0201E9C0(((4096 - 16) * 32), 16 * 32, param0);
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

void sub_02009704 (u32 param0)
{
    sub_0201F890((1 << 14 | 1 << 15), param0);
}
