#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"

#include "overlay005/struct_ov5_021E2098.h"

#include "unk_0200679C.h"
#include "unk_0200D9E8.h"
#include "unk_0201CCF0.h"
#include "overlay005/ov5_021E2098.h"

typedef struct UnkStruct_ov5_021E20E8_t {
    GXVRamLCDC unk_00;
    UnkStruct_ov5_021E2098 unk_04;
    BOOL unk_30;
    SysTask * unk_34;
} UnkStruct_ov5_021E20E8;

static void ov5_021E21B8(SysTask * param0, void * param1);
static void ov5_021E2178(SysTask * param0, void * param1);
static void ov5_021E2218(UnkStruct_ov5_021E2098 * param0);

UnkStruct_ov5_021E20E8 * ov5_021E2098 (UnkStruct_ov5_021E2098 * param0)
{
    SysTask * v0;
    UnkStruct_ov5_021E20E8 * v1;

    v0 = sub_0200679C(ov5_021E2178, sizeof(UnkStruct_ov5_021E20E8), 5, param0->unk_28);
    v1 = sub_0201CED0(v0);

    v1->unk_04 = *param0;
    v1->unk_34 = v0;
    v1->unk_30 = 0;
    v1->unk_00 = GX_GetBankForLCDC();

    ov5_021E2218(&v1->unk_04);
    sub_0200DA3C(ov5_021E21B8, v1, 0);

    return v1;
}

void ov5_021E20E8 (UnkStruct_ov5_021E20E8 ** param0, GXDispMode param1, GXBGMode param2, GXBG0As param3)
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

static void ov5_021E2178 (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021E20E8 * v0 = param1;

    if (v0->unk_30) {
        GX_SetCapture(v0->unk_04.unk_0C, v0->unk_04.unk_10, v0->unk_04.unk_14, v0->unk_04.unk_18, v0->unk_04.unk_1C, v0->unk_04.unk_20, v0->unk_04.unk_24);
    }
}

static void ov5_021E21B8 (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021E20E8 * v0 = (UnkStruct_ov5_021E20E8 *)param1;

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
    SysTask_Done(param0);
}

static void ov5_021E2218 (UnkStruct_ov5_021E2098 * param0)
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
