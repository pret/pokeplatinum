#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/sys_task.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay005/struct_ov5_021DDF24_sub1.h"
#include "overlay100/struct_ov100_021D4E3C.h"
#include "overlay100/struct_ov100_021D4EBC.h"

#include "unk_0200679C.h"
#include "unk_0200D9E8.h"
#include "screen_scroll_manager.h"
#include "buffer_manager.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "overlay100/ov100_021D4E04.h"
#include "overlay104/ov104_0223E894.h"

typedef void (* UnkFuncPtr_ov104_0223F174)(void *);

typedef struct {
    SysTask * unk_00;
    SysTask * unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    UnkFuncPtr_ov104_0223F174 unk_10;
    UnkFuncPtr_ov104_0223F174 unk_14;
    void * unk_18;
} UnkStruct_ov104_0223F174_sub1;

typedef struct UnkStruct_ov104_0223F174_t {
    UnkStruct_ov104_0223F174_sub1 unk_00;
    BufferManager * unk_1C;
    u32 unk_20[192];
    u32 unk_320[192];
    u32 unk_620;
} UnkStruct_ov104_0223F174;

typedef struct UnkStruct_ov100_021D4F9C_t {
    GXVRamLCDC unk_00;
    UnkStruct_ov100_021D4EBC unk_04;
    BOOL unk_30;
    SysTask * unk_34;
} UnkStruct_ov100_021D4F9C;

static SysTask * ov100_021D4E04(UnkStruct_ov100_021D4E3C * param0);
static void ov100_021D4E18(SysTask * param0, void * param1);
static void ov100_021D4FDC(SysTask * param0, void * param1);
static void ov100_021D4F9C(SysTask * param0, void * param1);
static void ov100_021D503C(UnkStruct_ov100_021D4EBC * param0);

static const u8 Unk_ov104_02241964[][6] = {
    {0x0, 0x1, 0x2, 0x3, 0x4, 0x5},
    {0x5, 0x4, 0x3, 0x2, 0x1, 0x0}
};

static SysTask * ov100_021D4E04 (UnkStruct_ov100_021D4E3C * param0)
{
    return CoreSys_ExecuteOnVBlank(ov100_021D4E18, param0, 1024);
}

static void ov100_021D4E18 (SysTask * param0, void * param1)
{
    UnkStruct_ov100_021D4E3C * v0 = param1;

    if (v0->unk_08 >= 2) {
        ScreenScrollManager_SwapBuffers(v0->unk_00);
        v0->unk_08 = 0;
    }

    ScreenScrollManager_RestartDMA(v0->unk_00);
    v0->unk_08++;
}

void ov100_021D4E3C (UnkStruct_ov100_021D4E3C * param0, u32 param1)
{
    param0->unk_00 = ScreenScrollManager_New(param1);
    param0->unk_08 = 0;
    param0->unk_04 = ov100_021D4E04(param0);
}

void ov100_021D4E58 (UnkStruct_ov100_021D4E3C * param0)
{
    SysTask_Done(param0->unk_04);
    ScreenScrollManager_Stop(param0->unk_00);
    ScreenScrollManager_Delete(param0->unk_00);
}

void ov100_021D4E70 (UnkStruct_ov100_021D4E3C * param0, u8 param1, u8 param2, u16 param3, fx32 param4, s16 param5, u32 param6, u32 param7, u32 param8, int param9)
{
    if (param9 == 0) {
        ScreenScrollManager_ScrollX(param0->unk_00, param1, param2, param3, param4, param5, param6, param7, param8);
    } else {
        ScreenScrollManager_ScrollY(param0->unk_00, param1, param2, param3, param4, param5, param6, param7, param8);
    }
}

UnkStruct_ov100_021D4F9C * ov100_021D4EBC (UnkStruct_ov100_021D4EBC * param0)
{
    SysTask * v0;
    UnkStruct_ov100_021D4F9C * v1;

    v0 = SysTask_StartAndAllocateParam(ov100_021D4F9C, sizeof(UnkStruct_ov100_021D4F9C), 5, param0->unk_28);
    v1 = SysTask_GetParam(v0);

    v1->unk_04 = *param0;
    v1->unk_34 = v0;
    v1->unk_30 = 0;
    v1->unk_00 = GX_GetBankForLCDC();

    ov100_021D503C(&v1->unk_04);
    CoreSys_ExecuteAfterVBlank(ov100_021D4FDC, v1, 0);

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

    SysTask_FinishAndFreeParam((*param0)->unk_34);
    *param0 = NULL;
}

static void ov100_021D4F9C (SysTask * param0, void * param1)
{
    UnkStruct_ov100_021D4F9C * v0 = param1;

    if (v0->unk_30) {
        GX_SetCapture(v0->unk_04.unk_0C, v0->unk_04.unk_10, v0->unk_04.unk_14, v0->unk_04.unk_18, v0->unk_04.unk_1C, v0->unk_04.unk_20, v0->unk_04.unk_24);
    }
}

static void ov100_021D4FDC (SysTask * param0, void * param1)
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
    SysTask_Done(param0);
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
