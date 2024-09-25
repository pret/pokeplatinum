#include "overlay104/ov104_0223C2D4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0209B75C_decl.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay063/ov63_0222BCE8.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CA88.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay063/ov63_0222D160.h"
#include "overlay063/ov63_0222D1C0.h"
#include "overlay063/ov63_0222D77C.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay063/struct_ov63_0222CE44.h"
#include "overlay063/struct_ov63_0222D894.h"
#include "overlay063/union_ov63_0222BDAC.h"
#include "overlay065/struct_ov65_0223582C.h"
#include "overlay065/struct_ov65_022376D0.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222EA90.h"
#include "overlay104/ov104_0223D5D0.h"
#include "overlay104/ov104_0223D768.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223C4CC.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay104/struct_ov104_0223C688.h"
#include "overlay104/struct_ov104_0223D3B0.h"
#include "overlay104/struct_ov104_0223D3B0_1.h"
#include "overlay104/struct_ov104_0223D570.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "render_text.h"
#include "save_player.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_020393C8.h"
#include "unk_0209B6F8.h"

static void ov104_0223C6EC(void *param0);
static void ov104_0223C71C(SysTask *param0, void *param1);
static void ov104_0223C738(SysTask *param0, void *param1);
static void ov104_0223C720(SysTask *param0, void *param1);
static void ov104_0223C72C(SysTask *param0, void *param1);
static void ov104_0223C948(BGL *param0, int param1);
static void ov104_0223CC74(UnkStruct_ov104_0223C4CC *param0, int param1, const TrainerInfo *param2);
static void ov104_0223CEEC(UnkStruct_ov104_0223C4CC *param0);
static void ov104_0223CB80(UnkStruct_ov104_0223C4CC *param0);
static void ov104_0223CFF4(UnkStruct_ov104_0223C4CC *param0);
static void ov104_0223D058(UnkStruct_ov104_0223C4CC *param0);
UnkStruct_ov104_0223C4CC *ov104_0223C2D4(UnkStruct_0209B75C *param0);
void ov104_0223C4CC(UnkStruct_ov104_0223C4CC *param0);
static void ov104_0223C8E8(UnkStruct_ov104_0223C4CC *param0);
static void ov104_0223CC10(UnkStruct_ov104_0223C4CC *param0);
static GenericPointerData *ov104_0223CF4C(int param0);
static void ov104_0223CF68(void);
static void ov104_0223CFEC(GenericPointerData *param0);
static void ov104_0223D3B0(UnkStruct_ov104_0223C4CC *param0);
static void ov104_0223D498(UnkStruct_ov104_0223C4CC *param0);
static void ov104_0223D570(UnkStruct_ov104_0223C634 *param0, UnkStruct_ov104_0223D570 *param1);
static void ov104_0223D584(UnkStruct_0209B75C *param0, int param1, UnkStruct_ov63_0222BEC0 *param2, UnkStruct_ov63_0222CE44 *param3, const UnkStruct_ov104_0223D570 *param4);
static void ov104_0223C798(UnkStruct_ov104_0223C4CC *param0);
static void ov104_0223C7EC(UnkStruct_ov104_0223C4CC *param0);

static const UnkStruct_ov104_0224133C Unk_ov104_0224133C = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const UnkStruct_ov104_022412F4 Unk_ov104_022412F4 = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_128K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

static const UnkStruct_ov104_02241308 Unk_ov104_02241308 = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

static const UnkUnion_ov63_0222BDAC Unk_ov104_022413D8[256] = {
    0x0
};

UnkStruct_ov104_0223C4CC *ov104_0223C2D4(UnkStruct_0209B75C *param0)
{
    UnkStruct_ov104_0223C4CC *v0;
    int v1, v2;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0);
    const TrainerInfo *v4;

    v4 = SaveData_GetTrainerInfo(v3->unk_08);
    v2 = v3->unk_24;

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(3, 94, 0x90000);

    v0 = Heap_AllocFromHeap(94, sizeof(UnkStruct_ov104_0223C4CC));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223C4CC));

    v0->unk_08 = param0;
    v0->unk_C1 = v2;

    for (v1 = 0; v1 < 8; v1++) {
        v0->unk_3C.unk_34[v1] = 0xffff;
    }

    v0->unk_0C = ov104_0223CF4C(94);
    v0->unk_04 = sub_02002F38(94);

    sub_02003858(v0->unk_04, 1);
    sub_02002F70(v0->unk_04, 0, 0x200, 94);
    sub_02002F70(v0->unk_04, 1, 0x200, 94);
    sub_02002F70(v0->unk_04, 2, 0x200 - 0x40, 94);
    sub_02002F70(v0->unk_04, 3, 0x200, 94);

    v0->unk_00 = sub_02018340(94);

    sub_0201DBEC(64, 94);
    SetAutorepeat(4, 8);

    ov104_0223C948(v0->unk_00, v2);
    ov104_0223CB80(v0);
    ov104_0223CC10(v0);

    sub_0201E3D8();
    sub_0201E450(4);

    ov104_0223CFF4(v0);

    v0->unk_10 = ov104_0223D5D0(94);

    ov104_0223CC74(v0, v2, v4);

    v0->unk_94 = SysTask_Start(ov104_0223C720, v0, 60000);
    v0->unk_98 = SysTask_Start(ov104_0223C72C, v0, 61000);
    v0->unk_9C = SysTask_Start(ov104_0223C738, v0, 80000);

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02004550(4, ov104_0222EA90(v2, 3), 1);

    RenderControlFlags_SetAutoScrollFlags(1);
    RenderControlFlags_SetCanABSpeedUpPrint(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    SetMainCallback(ov104_0223C6EC, v0);
    v0->unk_A0 = SysTask_ExecuteOnVBlank(ov104_0223C71C, v0, 10);
    ov104_0222EB8C(v0, &v0->unk_90, v0->unk_C1);
    sub_02039734();

    return v0;
}

void ov104_0223C4CC(UnkStruct_ov104_0223C4CC *param0)
{
    int v0;

    {
        UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_08);
        ov104_0222EBA4(param0, &param0->unk_90, param0->unk_C1);
    }

    ov104_0223CEEC(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(param0->unk_00, 1);
    sub_02019044(param0->unk_00, 2);
    sub_02019044(param0->unk_00, 3);

    sub_02019120(4, 0);
    sub_02019044(param0->unk_00, 4);

    ov104_0223D058(param0);
    ov104_0223D5F0(param0->unk_10);

    sub_0201DC3C();

    sub_02002FA0(param0->unk_04, 0);
    sub_02002FA0(param0->unk_04, 1);
    sub_02002FA0(param0->unk_04, 2);
    sub_02002FA0(param0->unk_04, 3);
    sub_02002F54(param0->unk_04);
    Heap_FreeToHeap(param0->unk_00);
    SysTask_Done(param0->unk_94);
    SysTask_Done(param0->unk_98);
    SysTask_Done(param0->unk_9C);
    SysTask_Done(param0->unk_A0);

    ov104_0223CFEC(param0->unk_0C);

    sub_0201E530();
    Heap_FreeToHeap(param0);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    Heap_Destroy(94);

    RenderControlFlags_SetCanABSpeedUpPrint(0);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    sub_02039794();

    MI_CpuFill16((void *)HW_BG_PLTT, 0x7fff, 0x200);
    MI_CpuFill16((void *)HW_OBJ_PLTT, 0x7fff, 0x200);
    MI_CpuFill16((void *)HW_DB_BG_PLTT, 0x7fff, 0x200);
    MI_CpuFill16((void *)HW_DB_OBJ_PLTT, 0x7fff, 0x200);

    G2_BlendNone();
    G2S_BlendNone();
}

void ov104_0223C634(UnkStruct_ov104_0223C4CC *param0)
{
    int v0;

    {
        UnkStruct_ov104_0223C634 *v1;

        for (v0 = 0; v0 < 32; v0++) {
            v1 = sub_0209B9D4(param0->unk_08, v0);

            if (v1->unk_00 != NULL) {
                v1->unk_08.unk_0A = ov63_0222BF90(v1->unk_00, 6);
                v1->unk_08.unk_02 = ov63_0222BF90(v1->unk_00, 5);
                v1->unk_08.unk_06 = ov63_0222BF90(v1->unk_00, 0);
                v1->unk_08.unk_08 = ov63_0222BF90(v1->unk_00, 1);
                v1->unk_08.unk_0B = ov63_0222CFFC(v1->unk_04);
            }
        }
    }

    ov104_0223D3B0(param0);
}

void ov104_0223C688(UnkStruct_ov104_0223C4CC *param0)
{
    int v0;

    {
        UnkStruct_ov104_0223C688 *v1;

        v1 = sub_0209B9CC(param0->unk_08);

        for (v0 = 0; v0 < 24; v0++) {
            if (v1[v0].unk_00 != 0xffff) {
                ov63_0222CDE8(param0->unk_20, v1[v0].unk_00, v1[v0].unk_02, 94);
            }
        }
    }

    {
        UnkStruct_ov104_0223C634 *v2;
        UnkStruct_ov104_0223D570 v3;

        for (v0 = 0; v0 < 32; v0++) {
            v2 = sub_0209B9D4(param0->unk_08, v0);

            if (v2->unk_08.unk_04 != 0xffff) {
                ov104_0223D570(v2, &v3);
                ov104_0223D180(param0, &v3, v0);
            }
        }
    }

    ov104_0223D498(param0);
}

static void ov104_0223C6EC(void *param0)
{
    UnkStruct_ov104_0223C4CC *v0 = param0;

    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_04);
    sub_0201C2B8(v0->unk_00);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov104_0223C71C(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223C4CC *v0 = param1;
}

static void ov104_0223C720(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223C4CC *v0 = param1;
    ov63_0222BE84(v0->unk_14);
}

static void ov104_0223C72C(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223C4CC *v0 = param1;
    ov104_0223C8E8(v0);
}

static void ov104_0223C738(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223C4CC *v0 = param1;

    {
        UnkStruct_ov104_0223C634 *v1;

        v1 = sub_0209B9D4(v0->unk_08, (32 - 1));

        if (v1->unk_00 != NULL) {
            ov63_0222D160(&v0->unk_1C, v1->unk_00);
        }

        ov104_0223C798(v0);
    }

    ov63_0222CEE4(v0->unk_20);

    {
        u32 v2 = v0->unk_3C.unk_30;
        int v3;

        for (v3 = 0; v3 < 8; v3++) {
            if ((v0->unk_3C.unk_00[v3] != NULL) && (v2 & 1)) {
                sub_0200D330(v0->unk_3C.unk_00[v3]);
            }

            v2 >>= 1;
        }
    }

    sub_0200C7EC(v0->unk_34.unk_04);
    sub_0200C808();

    ov104_0223D6A8();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

static void ov104_0223C798(UnkStruct_ov104_0223C4CC *param0)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_08);

    v0 = ov104_0222EA90(v1->unk_24, 12);

    switch (v0) {
    case 0:
    default:
        if (param0->unk_24 != NULL) {
            ov63_0222D228(param0->unk_24, &param0->unk_1C);
        }

        if ((param0->unk_28 != NULL) && (ov104_0222EA90(v1->unk_24, 13) == 1)) {
            ov63_0222D228(param0->unk_28, &param0->unk_1C);
        }
        break;
    case 1:
        ov104_0223C7EC(param0);
        break;
    }
}

static void ov104_0223C7EC(UnkStruct_ov104_0223C4CC *param0)
{
    s16 v0;
    s16 v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_08);

    v1 = ov63_0222D1B0(&param0->unk_1C) + param0->unk_A4.unk_06;
    v0 = ov63_0222D1B8(&param0->unk_1C) + param0->unk_A4.unk_04;

    sub_0200962C(sub_0200C738(param0->unk_34.unk_00), FX32_CONST(v0), FX32_CONST(v1));
    sub_0201C63C(param0->unk_00, 3, 0, v0);
    sub_0201C63C(param0->unk_00, 3, 3, v1);

    if ((ov104_0222EA90(v2->unk_24, 9) != 0xffff) && (ov104_0222EA90(v2->unk_24, 13) == 1)) {
        sub_0201C63C(param0->unk_00, 2, 0, v0);
        sub_0201C63C(param0->unk_00, 2, 3, v1);
    }
}

static void ov104_0223C8E8(UnkStruct_ov104_0223C4CC *param0)
{
    UnkStruct_ov63_0222D894 v0;
    UnkStruct_ov63_0222CCB8 v1;
    BOOL v2;

    while (ov63_0222D810(param0->unk_30, &v1) == 1) {
        ov63_0222BE70(param0->unk_14, &v1);
    }

    while (ov63_0222D8D0(param0->unk_2C, &v0) == 1) {
        v2 = ov63_0222CA88(param0->unk_18, param0->unk_14, &v0, &v1);

        if (v2 == 1) {
            ov63_0222BE70(param0->unk_14, &v1);
        }
    }
}

static void ov104_0223C948(BGL *param0, int param1)
{
    int v0;

    v0 = ov104_0222EA90(param1, 0);
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_02099F80 v1 = {
            GX_VRAM_BG_256_BC,
            GX_VRAM_BGEXTPLTT_23_G,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_A,
            GX_VRAM_TEXPLTT_0_F
        };

        GXLayers_SetBanks(&v1);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        UnkStruct_ov84_0223BA5C v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_5,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        v2.unk_04 = v0;
        sub_02018368(&v2);
    }

    {
        UnkStruct_ov97_0222DB78 v3[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_256,
                (GX_BG_SCRBASE_0x0800),
                (GX_BG_CHARBASE_0x20000),
                GX_BG_EXTPLTT_23,
                1,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_256,
                (GX_BG_SCRBASE_0x2800),
                (GX_BG_CHARBASE_0x30000),
                GX_BG_EXTPLTT_23,
                3,
                0,
                0,
                0,
            },
        };
        u16 v4;

        if (v0 == GX_BGMODE_0) {
            v3[1].unk_11 = GX_BG_COLORMODE_16;
            v3[2].unk_11 = GX_BG_COLORMODE_16;
            v3[1].unk_14 = GX_BG_EXTPLTT_01;
            v3[2].unk_14 = GX_BG_EXTPLTT_01;
        }

        v4 = ov104_0222EA90(param1, 4);
        v3[2].unk_10 = v4;

        if (ov104_0222EA90(param1, 9) != 0xffff) {
            v3[1].unk_10 = v4;
        }

        if (v0 == GX_BGMODE_0) {
            sub_020183C4(param0, 1, &v3[0], 0);
            sub_02019EBC(param0, 1);
            sub_02019184(param0, 1, 0, 0);
            sub_02019184(param0, 1, 3, 0);
            sub_020183C4(param0, 2, &v3[1], 0);
            sub_02019EBC(param0, 2);
            sub_02019184(param0, 2, 0, 0);
            sub_02019184(param0, 2, 3, 0);
            sub_020183C4(param0, 3, &v3[2], 0);
            sub_02019EBC(param0, 3);
            sub_02019184(param0, 3, 0, 0);
            sub_02019184(param0, 3, 3, 0);
        } else {
            sub_020183C4(param0, 1, &v3[0], 0);
            sub_02019EBC(param0, 1);
            sub_02019184(param0, 1, 0, 0);
            sub_02019184(param0, 1, 3, 0);
            sub_020183C4(param0, 2, &v3[1], 2);
            sub_02019EBC(param0, 2);
            sub_02019184(param0, 2, 0, 0);
            sub_02019184(param0, 2, 3, 0);
            sub_020183C4(param0, 3, &v3[2], 2);
            sub_02019EBC(param0, 3);
            sub_02019184(param0, 3, 0, 0);
            sub_02019184(param0, 3, 3, 0);
        }

        G2_SetBG0Priority(0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v5[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x7800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0, 4, &v5[0], 0);
        sub_02019EBC(param0, 4);
        sub_02019184(param0, 4, 0, 0);
        sub_02019184(param0, 4, 3, 0);
    }
}

static void ov104_0223CB80(UnkStruct_ov104_0223C4CC *param0)
{
    PaletteSys_LoadPalette(param0->unk_04, 14, 6, 94, 0, 0x20, 14 * 16);
    PaletteSys_LoadPalette(param0->unk_04, 14, 7, 94, 0, 0x20, 13 * 16);

    {
        UnkStruct_ov104_02230BE4 *v0;

        v0 = sub_0209B970(param0->unk_08);

        sub_0200DD0C(param0->unk_00, 1, (1024 - (18 + 12)), 11, Options_Frame(v0->unk_04), 94);
        sub_02003070(param0->unk_04, 0, 11 * 16, 0x20);
    }

    sub_0200DAA4(param0->unk_00, 1, ((1024 - (18 + 12)) - 9), 12, 0, 94);
    sub_02003070(param0->unk_04, 0, 12 * 16, 0x20);
}

static void ov104_0223CC10(UnkStruct_ov104_0223C4CC *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, 94);

    sub_020070E8(v0, 125, param0->unk_00, 4, 0, 0, 1, 94);
    sub_0200710C(v0, 126, param0->unk_00, 4, 0, 0, 1, 94);
    PaletteSys_LoadPalette(param0->unk_04, 150, 171, 94, 1, 0x20, 0 * 16);
    NARC_dtor(v0);
}

static void ov104_0223CC74(UnkStruct_ov104_0223C4CC *param0, int param1, const TrainerInfo *param2)
{
    param0->unk_14 = ov63_0222BE18(32, 94);
    param0->unk_18 = ov63_0222BCE8((256 / 16), (256 / 16), 94);

    ov63_0222D19C(&param0->unk_1C);

    param0->unk_20 = ov63_0222CD2C(sub_0200D9B0(param0->unk_34.unk_04), param0->unk_04, 32, ov104_0222E5F0(param2), 0, NNS_G2D_VRAM_TYPE_2DMAIN, 94);

    {
        UnkStruct_ov65_0223582C v0 = {
            0,
            3,
            GX_BG_COLORMODE_16,
            (GX_BG_SCRBASE_0x2800),
            (GX_BG_CHARBASE_0x30000),
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0,
            1
        };
        int v1;

        v0.unk_08 = ov104_0222EA90(param1, 5);
        v0.unk_09 = ov104_0222EA90(param1, 6);
        v1 = ov104_0222EA90(param1, 12);

        if (v1 == 0) {
            param0->unk_24 = ov63_0222D1C0(sub_0200C738(param0->unk_34.unk_00), param0->unk_00, &v0, 94);
        }

        if (ov104_0222EA90(param1, 9) != 0xffff) {
            v0.unk_09 = ov104_0222EA90(param1, 9);
            v0.unk_01 = 2;
            v0.unk_03 = (GX_BG_SCRBASE_0x0800);
            v0.unk_04 = (GX_BG_CHARBASE_0x20000);
            v0.unk_06 = 1;

            if (v1 == 0) {
                param0->unk_28 = ov63_0222D1C0(
                    sub_0200C738(param0->unk_34.unk_00), param0->unk_00, &v0, 94);
            }
        }
    }

    param0->unk_2C = ov63_0222D848(128, 94);
    param0->unk_30 = ov63_0222D77C(128, 94);

    ov63_0222BD50(param0->unk_18, Unk_ov104_022413D8);

    {
        u32 v2;
        NARC *v3;
        int v4 = ov104_0222EA90(param1, 0);

        v2 = ov104_0222EA90(param1, 5);
        v3 = NARC_ctor(v2, 94);

        sub_020070E8(v3, ov104_0222EA90(param1, 7), param0->unk_00, 3, 0, 0, 1, 94);

        if (v4 == GX_BGMODE_0) {
            PaletteSys_LoadPalette(param0->unk_04, v2, ov104_0222EA90(param1, 8), 94, 0, ((10 - 0 + 1) * 0x20), 0 * 16);
        } else {
            NNSG2dPaletteData *v5;
            void *v6;

            v6 = sub_020071EC(v3, ov104_0222EA90(param1, 8), &v5, 94);
            DC_FlushRange(v5->pRawData, v5->szByte);

            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(v5->pRawData, 0x6000, 0x2000);
            GX_EndLoadBGExtPltt();

            Heap_FreeToHeap(v6);
        }

        sub_020038B0(param0->unk_04, 0, 2, 0x0, 0, 1);
        sub_0200710C(v3, ov104_0222EA90(param1, 6), param0->unk_00, 3, 0, 0, 1, 94);

        if (ov104_0222EA90(param1, 9) != 0xffff) {
            sub_020070E8(v3, ov104_0222EA90(param1, 10), param0->unk_00, 2, 0, 0, 1, 94);
            sub_0200710C(v3, ov104_0222EA90(param1, 9), param0->unk_00, 2, 0, 0, 1, 94);

            if (v4 == GX_BGMODE_0) {
                (void)0;
            } else {
                NNSG2dPaletteData *v7;
                void *v8;

                v8 = sub_020071EC(v3, ov104_0222EA90(param1, 11), &v7, 94);
                DC_FlushRange(v7->pRawData, v7->szByte);

                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt(v7->pRawData, 0x4000, 0x2000);
                GX_EndLoadBGExtPltt();

                Heap_FreeToHeap(v8);
            }
        }

        sub_0201C3C0(param0->unk_00, 3);
        NARC_dtor(v3);
    }
}

static void ov104_0223CEEC(UnkStruct_ov104_0223C4CC *param0)
{
    int v0;

    {
        UnkStruct_ov104_0223C634 *v1;

        v1 = sub_0209B9D0(param0->unk_08);

        for (v0 = 0; v0 < 32; v0++) {
            if (v1[v0].unk_00 != NULL) {
                ov63_0222BF08(v1[v0].unk_00);
                GF_ASSERT(v1[v0].unk_38 == NULL);
            }
        }
    }

    ov63_0222BE58(param0->unk_14);
    ov63_0222BD30(param0->unk_18);
    ov63_0222CD9C(param0->unk_20);

    if (param0->unk_24 != NULL) {
        ov63_0222D214(param0->unk_24);
    }

    if (param0->unk_28 != NULL) {
        ov63_0222D214(param0->unk_28);
    }

    ov63_0222D880(param0->unk_2C);
    ov63_0222D7B4(param0->unk_30);
}

static GenericPointerData *ov104_0223CF4C(int param0)
{
    GenericPointerData *v0;

    v0 = sub_02024220(param0, 0, 1, 0, 1, ov104_0223CF68);
    return v0;
}

static void ov104_0223CF68(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

static void ov104_0223CFEC(GenericPointerData *param0)
{
    sub_020242C4(param0);
}

static void ov104_0223CFF4(UnkStruct_ov104_0223C4CC *param0)
{
    param0->unk_34.unk_00 = sub_0200C6E4(94);

    sub_0200C73C(param0->unk_34.unk_00, &Unk_ov104_0224133C, &Unk_ov104_022412F4, (16 + 16));
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    param0->unk_34.unk_04 = sub_0200C704(param0->unk_34.unk_00);

    sub_0200C7C0(param0->unk_34.unk_00, param0->unk_34.unk_04, (64 + 64));
    sub_0200CB30(param0->unk_34.unk_00, param0->unk_34.unk_04, &Unk_ov104_02241308);
    sub_0200964C(sub_0200C738(param0->unk_34.unk_00), 0, (512 * FX32_ONE));
}

static void ov104_0223D058(UnkStruct_ov104_0223C4CC *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            if (param0->unk_3C.unk_00[v0] != NULL) {
                ov104_0223D858(param0->unk_3C.unk_00[v0]);
            }
        }

        for (v0 = 0; v0 < 8; v0++) {
            if (param0->unk_3C.unk_34[v0] != 0xffff) {
                ov104_0223D7EC(param0->unk_34.unk_04, param0->unk_3C.unk_34[v0]);
            }
        }
    }

    {
        int v1;

        for (v1 = 0; v1 < ((50000 + 3) - 50000 + 1); v1++) {
            if (param0->unk_80[v1] != NULL) {
                sub_0200D0F4(param0->unk_80[v1]);

                SpriteGfxHandler_UnloadCharObjById(param0->unk_34.unk_04, 50000 + v1);
                SpriteGfxHandler_UnloadPlttObjById(param0->unk_34.unk_04, 50000 + v1);
                SpriteGfxHandler_UnloadCellObjById(param0->unk_34.unk_04, 50000 + v1);
                SpriteGfxHandler_UnloadAnimObjById(param0->unk_34.unk_04, 50000 + v1);
            }
        }
    }

    sub_0200D0B0(param0->unk_34.unk_00, param0->unk_34.unk_04);
    sub_0200C8D4(param0->unk_34.unk_00);
}

void ov104_0223D0EC(UnkStruct_ov104_0223C4CC *param0, const UnkStruct_ov104_0223C688 *param1)
{
    UnkStruct_ov104_0223C688 *v0;
    int v1, v2;

    v0 = sub_0209B9CC(param0->unk_08);

    for (v1 = 0; v1 < 24; v1++) {
        if (v0[v1].unk_00 == param1->unk_00) {
            return;
        }
    }

    for (v1 = 0; v1 < 24; v1++) {
        if (v0[v1].unk_00 == 0xffff) {
            break;
        }
    }

    GF_ASSERT(v1 != 24);

    v2 = v1;
    v0[v2] = *param1;

    ov63_0222CDE8(param0->unk_20, param1->unk_00, param1->unk_02, 94);
}

void ov104_0223D148(UnkStruct_ov104_0223C4CC *param0, int param1)
{
    int v0;
    UnkStruct_ov104_0223C688 *v1;

    v1 = sub_0209B9CC(param0->unk_08);

    for (v0 = 0; v0 < 24; v0++) {
        if (v1[v0].unk_00 == param1) {
            ov63_0222CE0C(param0->unk_20, param1);
            v1[v0].unk_00 = 0xffff;
            return;
        }
    }
}

UnkStruct_ov63_0222BEC0 *ov104_0223D180(UnkStruct_ov104_0223C4CC *param0, const UnkStruct_ov104_0223D570 *param1, int param2)
{
    UnkStruct_ov104_0223C634 *v0;
    int v1, v2;
    UnkStruct_ov65_022376D0 v3;
    UnkStruct_ov63_0222BEC0 *v4;
    UnkStruct_ov63_0222CE44 *v5;

    v0 = sub_0209B9D0(param0->unk_08);

    if (param2 == -1) {
        for (v1 = 0; v1 < 32; v1++) {
            if (v0[v1].unk_00 == NULL) {
                break;
            }
        }

        GF_ASSERT(v1 != 32);
        v2 = v1;
    } else {
        v2 = param2;
    }

    v3.unk_00 = param1->unk_06;
    v3.unk_02 = param1->unk_08;
    v3.unk_04 = param1->unk_04;
    v3.unk_06 = param1->unk_02;
    v3.unk_08 = param1->unk_0A;
    v3.unk_0A = param1->unk_00;

    v4 = ov63_0222BEC0(param0->unk_14, &v3);
    v5 = ov63_0222CE44(param0->unk_20, v4, 0, 94);

    ov63_0222D008(v5, param1->unk_0B);
    ov104_0223D584(param0->unk_08, v2, v4, v5, param1);

    return v4;
}

void ov104_0223D200(UnkStruct_ov104_0223C4CC *param0, UnkStruct_ov63_0222BEC0 *param1)
{
    int v0;
    UnkStruct_ov104_0223C634 *v1;

    v1 = sub_0209B9D0(param0->unk_08);

    for (v0 = 0; v0 < 32; v0++) {
        if (v1[v0].unk_00 == param1) {
            ov63_0222BF08(v1[v0].unk_00);
            ov63_0222CECC(v1[v0].unk_04);

            GF_ASSERT(v1[v0].unk_38 == NULL);
            MI_CpuClear8(&v1[v0], sizeof(UnkStruct_ov104_0223C634));

            v1[v0].unk_08.unk_04 = 0xffff;
            return;
        }
    }
}

void ov104_0223D258(UnkStruct_ov104_0223C4CC *param0, u16 param1, UnkStruct_ov63_0222BEC0 **param2, UnkStruct_ov63_0222CE44 **param3)
{
    int v0;
    UnkStruct_ov104_0223C634 *v1;

    v1 = sub_0209B9D0(param0->unk_08);

    for (v0 = 0; v0 < 32; v0++) {
        if (v1[v0].unk_08.unk_04 == param1) {
            if (param2 != NULL) {
                *param2 = v1[v0].unk_00;
            }

            if (param3 != NULL) {
                *param3 = v1[v0].unk_04;
            }

            return;
        }
    }

    GF_ASSERT(0);
}

void ov104_0223D29C(UnkStruct_ov104_0223C4CC *param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_3C.unk_34[v0] == 0xffff) {
            param0->unk_3C.unk_34[v0] = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

void ov104_0223D2CC(UnkStruct_ov104_0223C4CC *param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_3C.unk_34[v0] == param1) {
            param0->unk_3C.unk_34[v0] = 0xffff;
            return;
        }
    }
}

CellActorData *ov104_0223D2FC(UnkStruct_ov104_0223C4CC *param0, u16 param1, u16 param2)
{
    CellActorData *v0;

    GF_ASSERT(param1 < 8);
    GF_ASSERT(param0->unk_3C.unk_00[param1] == NULL);

    v0 = ov104_0223D828(param0->unk_34.unk_00, param0->unk_34.unk_04, param2);

    param0->unk_3C.unk_00[param1] = v0;
    param0->unk_3C.unk_20[param1] = param2;

    ov104_0223D378(param0, param1, 0);
    return v0;
}

void ov104_0223D348(UnkStruct_ov104_0223C4CC *param0, u16 param1)
{
    GF_ASSERT(param1 < 8);
    GF_ASSERT(param0->unk_3C.unk_00[param1] != NULL);

    ov104_0223D858(param0->unk_3C.unk_00[param1]);
    param0->unk_3C.unk_00[param1] = NULL;
}

CellActorData *ov104_0223D370(UnkStruct_ov104_0223C4CC *param0, u16 param1)
{
    return param0->unk_3C.unk_00[param1];
}

void ov104_0223D378(UnkStruct_ov104_0223C4CC *param0, u16 param1, int param2)
{
    if (param2 == 1) {
        param0->unk_3C.unk_30 |= 1 << param1;
    } else {
        param0->unk_3C.unk_30 &= 0xffffffff ^ (1 << param1);
    }
}

u32 ov104_0223D3A4(UnkStruct_ov104_0223C4CC *param0, u16 param1)
{
    return (param0->unk_3C.unk_30 >> param1) & 1;
}

static void ov104_0223D3B0(UnkStruct_ov104_0223C4CC *param0)
{
    int v0;
    UnkStruct_ov104_0223D3B0 *v1;
    UnkStruct_ov104_0223D3B0_1 *v2;

    v1 = sub_0209B9E0(param0->unk_08);
    v2 = &param0->unk_3C;

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk_34[v0] != 0xffff) {
            v1->unk_00[v0] = v2->unk_34[v0];
            v0++;
        }
    }

    v0 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk_00[v0] != NULL) {
            v1->unk_10[v0].unk_05 = sub_0200D37C(v2->unk_00[v0]);
            v1->unk_10[v0].unk_06_0 = sub_0200D3E0(v2->unk_00[v0]);
            v1->unk_10[v0].unk_06_13 = ov104_0223D3A4(param0, v0);
            v1->unk_10[v0].unk_06_14 = sub_0200D408(v2->unk_00[v0]);
            v1->unk_10[v0].unk_04 = v2->unk_20[v0];
            SpriteActor_GetSpritePositionXY(v2->unk_00[v0], &v1->unk_10[v0].unk_00, &v1->unk_10[v0].unk_02);
            v1->unk_10[v0].unk_06_15 = 1;
        }
    }
}

static void ov104_0223D498(UnkStruct_ov104_0223C4CC *param0)
{
    int v0;
    NARC *v1;
    UnkStruct_ov104_0223D3B0 *v2;
    CellActorData *v3;

    v2 = sub_0209B9E0(param0->unk_08);
    v1 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, 94);

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk_00[v0] != 0xffff) {
            ov104_0223D768(param0->unk_34.unk_00, param0->unk_34.unk_04, v1, param0->unk_04, v2->unk_00[v0]);
            ov104_0223D29C(param0, v2->unk_00[v0]);
        }
    }

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk_10[v0].unk_06_15 == 1) {
            v3 = ov104_0223D2FC(param0, v0, v2->unk_10[v0].unk_04);
            SpriteActor_SetSpritePositionXY(v3, v2->unk_10[v0].unk_00, v2->unk_10[v0].unk_02);
            SpriteActor_EnableObject(v3, v2->unk_10[v0].unk_06_14);

            ov104_0223D378(param0, v0, v2->unk_10[v0].unk_06_13);

            sub_0200D364(v3, v2->unk_10[v0].unk_05);
            sub_0200D3CC(v3, v2->unk_10[v0].unk_06_0);
        }
    }

    NARC_dtor(v1);
    sub_0209B9EC(param0->unk_08);
}

void ov104_0223D554(UnkStruct_ov104_0223C4CC *param0, s16 *param1, s16 *param2)
{
    *param2 = ov63_0222D1B0(&param0->unk_1C);
    *param1 = ov63_0222D1B8(&param0->unk_1C);
}

static void ov104_0223D570(UnkStruct_ov104_0223C634 *param0, UnkStruct_ov104_0223D570 *param1)
{
    *param1 = param0->unk_08;
}

static void ov104_0223D584(UnkStruct_0209B75C *param0, int param1, UnkStruct_ov63_0222BEC0 *param2, UnkStruct_ov63_0222CE44 *param3, const UnkStruct_ov104_0223D570 *param4)
{
    UnkStruct_ov104_0223C634 *v0;

    v0 = sub_0209B9D4(param0, param1);

    v0->unk_00 = param2;
    v0->unk_04 = param3;
    v0->unk_08 = *param4;
}

UnkStruct_ov104_0223C634 *ov104_0223D5A8(UnkStruct_0209B75C *param0, int param1)
{
    int v0;
    UnkStruct_ov104_0223C634 *v1;

    v1 = sub_0209B9D0(param0);

    for (v0 = 0; v0 < 32; v0++) {
        if ((v1->unk_00 != NULL) && (v1->unk_08.unk_04 == param1)) {
            return v1;
        }

        v1++;
    }

    GF_ASSERT(0);
    return NULL;
}
