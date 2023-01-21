#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02013B10_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay005/struct_ov5_021DDF24_sub1.h"
#include "overlay100/struct_ov100_021D4E3C.h"
#include "overlay100/struct_ov100_021D4EBC.h"

#include "unk_0200679C.h"
#include "unk_0200D9E8.h"
#include "unk_02013B10.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "overlay100/ov100_021D4E04.h"
#include "overlay104/ov104_0223E894.h"

typedef void (* UnkFuncPtr_ov104_0223F174)(void *);

typedef struct {
    UnkStruct_0201CD38 * unk_00;
    UnkStruct_0201CD38 * unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    UnkFuncPtr_ov104_0223F174 unk_10;
    UnkFuncPtr_ov104_0223F174 unk_14;
    void * unk_18;
} UnkStruct_ov104_0223F174_sub1;

typedef struct UnkStruct_ov104_0223F174_t {
    UnkStruct_ov104_0223F174_sub1 unk_00;
    UnkStruct_02013B10 * unk_1C;
    u32 unk_20[192];
    u32 unk_320[192];
    u32 unk_620;
} UnkStruct_ov104_0223F174;

typedef struct UnkStruct_ov100_021D4F9C_t {
    GXVRamLCDC unk_00;
    UnkStruct_ov100_021D4EBC unk_04;
    BOOL unk_30;
    UnkStruct_0201CD38 * unk_34;
} UnkStruct_ov100_021D4F9C;

static UnkStruct_0201CD38 * ov100_021D4E04(UnkStruct_ov100_021D4E3C * param0);
static void ov100_021D4E18(UnkStruct_0201CD38 * param0, void * param1);
static void ov100_021D4FDC(UnkStruct_0201CD38 * param0, void * param1);
static void ov100_021D4F9C(UnkStruct_0201CD38 * param0, void * param1);
static void ov100_021D503C(UnkStruct_ov100_021D4EBC * param0);

static const u8 Unk_ov104_02241964[][6] = {
    {0x0, 0x1, 0x2, 0x3, 0x4, 0x5},
    {0x5, 0x4, 0x3, 0x2, 0x1, 0x0}
};

static UnkStruct_0201CD38 * ov100_021D4E04 (UnkStruct_ov100_021D4E3C * param0)
{
    return sub_0200DA04(ov100_021D4E18, param0, 1024);
}

static void ov100_021D4E18 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov100_021D4E3C * v0 = param1;

    if (v0->unk_08 >= 2) {
        sub_02013DA4(v0->unk_00);
        v0->unk_08 = 0;
    }

    sub_02013DDC(v0->unk_00);
    v0->unk_08++;
}

void ov100_021D4E3C (UnkStruct_ov100_021D4E3C * param0, u32 param1)
{
    param0->unk_00 = sub_02013BE0(param1);
    param0->unk_08 = 0;
    param0->unk_04 = ov100_021D4E04(param0);
}

void ov100_021D4E58 (UnkStruct_ov100_021D4E3C * param0)
{
    sub_0200DA58(param0->unk_04);
    sub_02013D38(param0->unk_00);
    sub_02013D74(param0->unk_00);
}

void ov100_021D4E70 (UnkStruct_ov100_021D4E3C * param0, u8 param1, u8 param2, u16 param3, fx32 param4, s16 param5, u32 param6, u32 param7, u32 param8, int param9)
{
    if (param9 == 0) {
        sub_02013C10(param0->unk_00, param1, param2, param3, param4, param5, param6, param7, param8);
    } else {
        sub_02013CA4(param0->unk_00, param1, param2, param3, param4, param5, param6, param7, param8);
    }
}

static void inline_ov104_0223F1B4_sub (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov104_0223F174_sub1 * v0 = param1;

    if (v0->unk_08) {
        v0->unk_0C = 1;
        v0->unk_10(v0->unk_18);
    } else {
        sub_02013BA8();
    }
}

static void inline_ov104_0223F1B4_sub_1 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov104_0223F174_sub1 * v0 = param1;

    if (v0->unk_08 && v0->unk_0C) {
        v0->unk_14(v0->unk_18);
        v0->unk_0C = 0;
    }
}

static void inline_ov104_0223F1B4 (UnkStruct_ov104_0223F174_sub1 * param0, void * param1, UnkFuncPtr_ov104_0223F174 param2, UnkFuncPtr_ov104_0223F174 param3)
{
    GF_ASSERT(param0);

    param0->unk_08 = 1;
    param0->unk_0C = 0;
    param0->unk_18 = param1;
    param0->unk_10 = param2;
    param0->unk_14 = param3;
    param0->unk_04 = sub_0200DA3C(inline_ov104_0223F1B4_sub, param0, 0);
    param0->unk_00 = sub_0200DA04(inline_ov104_0223F1B4_sub_1, param0, 0);
}

static void inline_ov104_0223F258 (UnkStruct_ov104_0223F174_sub1 * param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04 != NULL) {
        sub_0200DA58(param0->unk_04);
    }

    if (param0->unk_00 != NULL) {
        sub_0200DA58(param0->unk_00);
    }

    sub_02013BA8();
}

static void inline_ov104_0223F1B4_1_sub (UnkStruct_ov104_0223F174 * param0)
{
    const void * v0;

    v0 = sub_02013B68(param0->unk_1C);

    sub_02013BA8();
    sub_02013BB8(v0, (void *)param0->unk_620, 4, 1);
}

static void inline_ov104_0223F1B4_1 (void * param0)
{
    UnkStruct_ov104_0223F174 * v0 = param0;

    sub_02013B94(v0->unk_1C);
    inline_ov104_0223F1B4_1_sub(v0);
}

static void inline_ov104_0223F1B4_2 (void * param0)
{
    UnkStruct_ov104_0223F174 * v0 = param0;
    inline_ov104_0223F1B4_1_sub(v0);
}
/*
   UnkStruct_ov104_0223F174 * ov104_0223F1B4 (u32 param0, u32 param1, int param2)
   {
    UnkStruct_ov104_0223F174 * v0;

    v0 = AllocFromHeap(param2, sizeof(UnkStruct_ov104_0223F174));
    memset(v0, 0, sizeof(UnkStruct_ov104_0223F174));
    GF_ASSERT(v0);

    v0->unk_1C = sub_02013B10(param2, v0->unk_20, v0->unk_320);
    GF_ASSERT(v0->unk_1C);
    v0->unk_620 = param0;

    MI_CpuFill32(v0->unk_20, param1, sizeof(u32) * 192);
    MI_CpuFill32(v0->unk_320, param1, sizeof(u32) * 192);

    inline_ov104_0223F1B4(&v0->unk_00, v0, inline_ov104_0223F1B4_1, inline_ov104_0223F1B4_2);

    return v0;
   }*/

void ov104_0223F258 (UnkStruct_ov104_0223F174 * param0)
{
    GF_ASSERT(param0);

    inline_ov104_0223F258(&param0->unk_00);

    if (param0->unk_1C != NULL) {
        sub_02013B40(param0->unk_1C);
    }

    FreeToHeap(param0);
}

void * ov104_0223F27C (const UnkStruct_ov104_0223F174 * param0)
{
    GF_ASSERT(param0);

    return sub_02013B54(param0->unk_1C);
}

UnkStruct_ov100_021D4F9C * ov100_021D4EBC (UnkStruct_ov100_021D4EBC * param0)
{
    UnkStruct_0201CD38 * v0;
    UnkStruct_ov100_021D4F9C * v1;

    v0 = sub_0200679C(ov100_021D4F9C, sizeof(UnkStruct_ov100_021D4F9C), 5, param0->unk_28);
    v1 = sub_0201CED0(v0);

    v1->unk_04 = *param0;
    v1->unk_34 = v0;
    v1->unk_30 = 0;
    v1->unk_00 = GX_GetBankForLCDC();

    ov100_021D503C(&v1->unk_04);
    sub_0200DA3C(ov100_021D4FDC, v1, 0);

    return v1;
}

void ov100_021D4F0C (UnkStruct_ov100_021D4F9C ** param0, GXDispMode param1, GXBGMode param2, GXBG0As param3)
{
    GX_SetGraphicsMode(param1, param2, param3);
    GX_SetBankForLCDC((*param0)->unk_00);

    switch ((*param0)->unk_04.unk_00) {
    case GX_DISPMODE_VRAM_A:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_A, HW_VRAM_A_SIZE);
        break;
    case GX_DISPMODE_VRAM_B:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_B, HW_VRAM_B_SIZE);
        break;
    case GX_DISPMODE_VRAM_C:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_C, HW_VRAM_C_SIZE);
        break;
    case GX_DISPMODE_VRAM_D:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_D, HW_VRAM_D_SIZE);
        break;
    default:
        GX_SetBankForLCDC(GX_VRAM_LCDC_NONE);
        break;
    }

    sub_020067D0((*param0)->unk_34);
    *param0 = NULL;
}

static void ov100_021D4F9C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov100_021D4F9C * v0 = param1;

    if (v0->unk_30) {
        GX_SetCapture(v0->unk_04.unk_0C, v0->unk_04.unk_10, v0->unk_04.unk_14, v0->unk_04.unk_18, v0->unk_04.unk_1C, v0->unk_04.unk_20, v0->unk_04.unk_24);
    }
}

static void ov100_021D4FDC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov100_021D4F9C * v0 = (UnkStruct_ov100_021D4F9C *)param1;

    switch (v0->unk_04.unk_00) {
    case GX_DISPMODE_VRAM_A:
        GX_SetBankForLCDC(GX_VRAM_LCDC_A);
        break;
    case GX_DISPMODE_VRAM_B:
        GX_SetBankForLCDC(GX_VRAM_LCDC_B);
        break;
    case GX_DISPMODE_VRAM_C:
        GX_SetBankForLCDC(GX_VRAM_LCDC_C);
        break;
    case GX_DISPMODE_VRAM_D:
        GX_SetBankForLCDC(GX_VRAM_LCDC_D);
        break;
    default:
        GX_SetBankForLCDC(GX_VRAM_LCDC_NONE);
        break;
    }

    GX_SetGraphicsMode(v0->unk_04.unk_00, v0->unk_04.unk_04, v0->unk_04.unk_08);

    v0->unk_30 = 1;
    sub_0200DA58(param0);
}

static void ov100_021D503C (UnkStruct_ov100_021D4EBC * param0)
{
    switch (param0->unk_00) {
    case GX_DISPMODE_VRAM_A:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_A, HW_VRAM_A_SIZE);
        break;
    case GX_DISPMODE_VRAM_B:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_B, HW_VRAM_B_SIZE);
        break;
    case GX_DISPMODE_VRAM_C:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_C, HW_VRAM_C_SIZE);
        break;
    case GX_DISPMODE_VRAM_D:
        MI_CpuClearFast((void *)HW_LCDC_VRAM_D, HW_VRAM_D_SIZE);
        break;
    default:
        break;
    }

    GX_SetCapture(param0->unk_0C, param0->unk_10, param0->unk_14, param0->unk_18, param0->unk_1C, 16, 0);
}
