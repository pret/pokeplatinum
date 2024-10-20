#include "overlay099/ov99_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay099/ov99_021D1A54.h"
#include "overlay099/ov99_021D3E78.h"
#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D3A40.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"
#include "overlay115/camera_angle.h"

#include "bg_window.h"
#include "camera.h"
#include "core_sys.h"
#include "easy3d_object.h"
#include "enums.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_020093B4.h"
#include "unk_0200A9DC.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"

static const CameraAngle Unk_ov99_021D46CC = {
    ((0 * 0xffff) / 360),
    ((0 * 0xffff) / 360),
    ((0 * 0xffff) / 360)
};

static const UnkStruct_ov104_0224133C Unk_ov99_021D4760 = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const UnkStruct_ov104_022412F4 Unk_ov99_021D4718 = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_128K,
    GX_OBJVRAMMODE_CHAR_1D_128K
};

static const UnkStruct_ov104_02241308 Unk_ov99_021D472C = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

static void ov99_021D1244(SysTask *param0, void *param1);
static void ov99_021D1350(void *param0);
static void ov99_021D1380(BgConfig *param0);
static void ov99_021D1720(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1918(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D19A0(UnkStruct_ov99_021D2CB0 *param0);
static GenericPointerData *ov99_021D19AC(int param0);
static void ov99_021D19C8(void);
static void ov99_021D1A4C(GenericPointerData *param0);
static void ov99_021D16E4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1270(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1314(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1580(BgConfig *param0);

int ov99_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov99_021D2CB0 *v0;

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

    Heap_Create(3, 75, 0x80000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov99_021D2CB0), 75);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov99_021D2CB0));

    v0->unk_00 = OverlayManager_Args(param0);
    v0->unk_10 = ov99_021D19AC(75);
    v0->unk_0C = sub_02002F38(75);

    sub_02002F70(v0->unk_0C, 0, 0x200, 75);
    sub_02002F70(v0->unk_0C, 1, 0x200, 75);
    sub_02002F70(v0->unk_0C, 2, 0x200 - 0x40, 75);
    sub_02002F70(v0->unk_0C, 3, 0x200, 75);
    sub_02003858(v0->unk_0C, 1);

    v0->unk_08 = sub_02018340(75);

    sub_0201DBEC(64, 75);
    SetAutorepeat(4, 8);

    ov99_021D1380(v0->unk_08);

    sub_0201E3D8();
    sub_0201E450(4);

    v0->unk_20 = MessageLoader_Init(0, 26, 548, 75);
    v0->unk_10F8 = NARC_ctor(NARC_INDEX_GRAPHIC__ENDING, 75);

    ov99_021D1918(v0);

    v0->unk_18 = sub_0200C6E4(75);

    sub_0200C73C(v0->unk_18, &Unk_ov99_021D4760, &Unk_ov99_021D4718, (16 + 16));
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_1C = sub_0200C704(v0->unk_18);

    sub_0200C7C0(v0->unk_18, v0->unk_1C, (64 + 64));
    sub_0200CB30(v0->unk_18, v0->unk_1C, &Unk_ov99_021D472C);
    sub_0200964C(sub_0200C738(v0->unk_18), 0, ((192 + 80) << FX32_SHIFT));

    ov99_021D16E4(v0);

    v0->unk_1108 = ov99_021D3E78(v0->unk_08, -240, 1, 15, v0->unk_20);
    v0->unk_110C = ov99_021D3E78(v0->unk_08, -240 - 192 - 16, 5, 15, v0->unk_20);

    G2_SetWnd0Position(0, 192 - 24, 255, 192);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG1, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL, 1);
    G2S_SetWnd0Position(0, 0, 255, 24);
    G2S_SetWnd0InsidePlane(GX_WND_PLANEMASK_ALL ^ GX_WND_PLANEMASK_BG1, 1);
    G2S_SetWndOutsidePlane(GX_WND_PLANEMASK_ALL, 1);
    GX_SetVisibleWnd(GX_WNDMASK_W0);
    GXS_SetVisibleWnd(GX_WNDMASK_W0);

    gCoreSys.unk_65 = 1;

    GXLayers_SwapDisplay();
    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    v0->unk_14 = SysTask_Start(ov99_021D1244, v0, 60000);

    SetMainCallback(ov99_021D1350, v0);
    sub_02004550(14, 1186, 1);

    sub_0200AB4C(-16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);
    sub_0200F44C(0, 0);
    sub_0200F44C(1, 0);

    sub_02019120(1, 1);
    sub_02019120(5, 1);

    return 1;
}

int ov99_021D1028(OverlayManager *param0, int *param1)
{
    UnkStruct_ov99_021D2CB0 *v0 = OverlayManager_Data(param0);

    if (v0->unk_1108 != NULL) {
        ov99_021D3F6C(v0->unk_1108, 1);
        v0->unk_1110 = ov99_021D3F6C(v0->unk_110C, 1);
    }

    if (v0->unk_00->unk_04 && (gCoreSys.pressedKeys & PAD_BUTTON_START)) {
        if ((v0->unk_1100 == 0) && (v0->unk_1101 < 6)) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, 75);
            v0->unk_1100 = 1;
        }
    }

    switch (v0->unk_1100) {
    case 0:
        break;
    case 1:
        if (ScreenWipe_Done()) {
            if (v0->unk_1102 == 1) {
                ov99_021D1CFC(v0, v0->unk_1101);
                v0->unk_1102 = 0;
            }

            if (sub_0200AC1C(3) == 0) {
                sub_0200ABB0(3);
            }

            ov99_021D12F0(v0);
            v0->unk_1101 = 6;
            GXLayers_EngineASetLayers(0);
            GXLayers_EngineBSetLayers(0);
            MI_CpuClear8(&v0->unk_FA4, sizeof(UnkStruct_ov99_021D3A40));
            v0->unk_1100 = 2;
            *param1 = 0;
        }
        break;
    }

    switch (*param1) {
    case 0:
        if ((v0->unk_1100 == 0) || (v0->unk_1100 == 2)) {
            ov99_021D1CC8(v0, v0->unk_1101);
            v0->unk_1102 = 1;
            (*param1)++;
        }
        break;
    case 1:
        if (ov99_021D1D30(v0, v0->unk_1101) == 1) {
            ov99_021D1CFC(v0, v0->unk_1101);
            v0->unk_1102 = 0;
            v0->unk_1101++;

            if (v0->unk_1101 < 7) {
                (*param1) = 0;
            } else {
                (*param1) = 2;
            }
        }
        break;
    case 2:
        return 1;
    }

    v0->unk_10FC++;

    if (v0->unk_10FC % 30 == 0) {
        (void)0;
    }

    return 0;
}

int ov99_021D11A8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov99_021D2CB0 *v0 = OverlayManager_Data(param0);

    SysTask_Done(v0->unk_14);

    if (v0->unk_1108 != NULL) {
        ov99_021D1270(v0);
    } else {
        ov99_021D1314(v0);
    }

    MessageLoader_Free(v0->unk_20);
    sub_0200D0B0(v0->unk_18, v0->unk_1C);
    sub_0200C8D4(v0->unk_18);
    sub_02002FA0(v0->unk_0C, 0);
    sub_02002FA0(v0->unk_0C, 1);
    sub_02002FA0(v0->unk_0C, 2);
    sub_02002FA0(v0->unk_0C, 3);
    sub_02002F54(v0->unk_0C);

    ov99_021D19A0(v0);

    NARC_dtor(v0->unk_10F8);
    SetMainCallback(NULL, NULL);
    DisableHBlank();
    sub_0201DC3C();
    sub_0201E530();
    OverlayManager_FreeData(param0);
    Heap_Destroy(75);

    return 1;
}

static void ov99_021D1244(SysTask *param0, void *param1)
{
    UnkStruct_ov99_021D2CB0 *v0 = param1;

    if (v0->unk_1103 == 1) {
        ov99_021D1720(v0);
        G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }

    sub_0200C7EC(v0->unk_1C);
    sub_0200C808();
}

static void ov99_021D1270(UnkStruct_ov99_021D2CB0 *param0)
{
    GF_ASSERT(param0->unk_1108 != NULL);

    ov99_021D3F38(param0->unk_110C);
    ov99_021D3F38(param0->unk_1108);

    param0->unk_110C = NULL;
    param0->unk_1108 = NULL;

    sub_02019120(1, 0);
    sub_02019120(5, 0);
    sub_02019044(param0->unk_08, 7);
    sub_02019044(param0->unk_08, 5);
    sub_02019044(param0->unk_08, 6);
    sub_02019044(param0->unk_08, 3);
    sub_02019044(param0->unk_08, 2);
    sub_02019044(param0->unk_08, 1);
    Heap_FreeToHeap(param0->unk_08);

    ov99_021D1A4C(param0->unk_10);
}

void ov99_021D12F0(UnkStruct_ov99_021D2CB0 *param0)
{
    if (param0->unk_1108 == NULL) {
        return;
    }

    ov99_021D1270(param0);

    param0->unk_08 = sub_02018340(75);
    ov99_021D1580(param0->unk_08);
}

static void ov99_021D1314(UnkStruct_ov99_021D2CB0 *param0)
{
    GF_ASSERT(param0->unk_1108 == NULL);

    sub_02019044(param0->unk_08, 1);
    sub_02019044(param0->unk_08, 2);
    sub_02019044(param0->unk_08, 3);
    sub_02019044(param0->unk_08, 7);
    Heap_FreeToHeap(param0->unk_08);
}

static void ov99_021D1350(void *param0)
{
    UnkStruct_ov99_021D2CB0 *v0 = param0;

    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_0C);
    sub_0201C2B8(v0->unk_08);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov99_021D1380(BgConfig *param0)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_B,
            GX_VRAM_BGEXTPLTT_23_G,
            GX_VRAM_BG_128_C,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_A,
            GX_VRAM_TEXPLTT_0_F
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_3,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        sub_02018368(&v1);
    }

    {
        BgTemplate v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
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
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0,
                0,
                1,
                GX_BG_COLORMODE_256,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_23,
                2,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0, 1, &v2[0], 0);
        sub_02019EBC(param0, 1);
        sub_02019184(param0, 1, 0, 0);
        sub_02019184(param0, 1, 3, 0);

        sub_020183C4(param0, 2, &v2[1], 0);
        sub_02019EBC(param0, 2);
        sub_02019184(param0, 2, 0, 0);
        sub_02019184(param0, 2, 3, 0);

        sub_020183C4(param0, 3, &v2[2], 2);
        sub_02019184(param0, 3, 0, 0);
        sub_02019184(param0, 3, 3, 0);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        BgTemplate v3[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
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
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x2000,
                GX_BG_CHARBASE_0x14000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0, 5, &v3[0], 0);
        sub_02019EBC(param0, 5);
        sub_02019184(param0, 5, 0, 0);
        sub_02019184(param0, 5, 3, 0);

        sub_020183C4(param0, 6, &v3[1], 0);
        sub_02019EBC(param0, 6);
        sub_02019184(param0, 6, 0, 0);
        sub_02019184(param0, 6, 3, 0);

        sub_020183C4(param0, 7, &v3[2], 0);
        sub_02019EBC(param0, 7);
        sub_02019184(param0, 7, 0, 0);
        sub_02019184(param0, 7, 3, 0);
    }

    sub_02019690(1, 32, 0, 75);
    sub_02019690(5, 32, 0, 75);
    sub_02019690(6, 32, 0, 75);
    sub_02019690(7, 32, 0, 75);

    sub_02019120(3, 0);
    sub_02019120(6, 0);
}

static void ov99_021D1580(BgConfig *param0)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_256_AB,
            GX_VRAM_BGEXTPLTT_23_G,
            GX_VRAM_BG_128_C,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_NONE,
            GX_VRAM_TEXPLTT_NONE
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_5,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v1);
    }

    {
        BgTemplate v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0,
                0,
                1,
                GX_BG_COLORMODE_256,
                GX_BG_SCRBASE_0x0800,
                GX_BG_CHARBASE_0x20000,
                GX_BG_EXTPLTT_23,
                2,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0,
                0,
                1,
                GX_BG_COLORMODE_256,
                GX_BG_SCRBASE_0x2800,
                GX_BG_CHARBASE_0x30000,
                GX_BG_EXTPLTT_23,
                3,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0, 1, &v2[0], 0);
        sub_02019EBC(param0, 1);
        sub_02019184(param0, 1, 0, 0);
        sub_02019184(param0, 1, 3, 0);

        sub_020183C4(param0, 2, &v2[1], 2);
        sub_02019EBC(param0, 2);
        sub_02019184(param0, 2, 0, 0);
        sub_02019184(param0, 2, 3, 0);

        sub_020183C4(param0, 3, &v2[2], 2);
        sub_02019EBC(param0, 3);
        sub_02019184(param0, 3, 0, 0);
        sub_02019184(param0, 3, 3, 0);
    }

    {
        BgTemplate v3[] = {
            {
                0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x2000,
                GX_BG_CHARBASE_0x14000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0, 7, &v3[0], 0);
        sub_02019EBC(param0, 7);
        sub_02019184(param0, 7, 0, 0);
        sub_02019184(param0, 7, 3, 0);
    }

    sub_02019690(7, 32, 0, 75);
}

static void ov99_021D16E4(UnkStruct_ov99_021D2CB0 *param0)
{
    PaletteSys_LoadPalette(param0->unk_0C, 127, 85, 75, 0, 0x20, 15 * 16);
    PaletteSys_LoadPalette(param0->unk_0C, 127, 85, 75, 1, 0x20, 15 * 16);
}

static void ov99_021D1720(UnkStruct_ov99_021D2CB0 *param0)
{
    VecFx32 v0, v1;
    MtxFx33 v2;

    v0.x = FX32_ONE;
    v0.y = FX32_ONE;
    v0.z = FX32_ONE;

    v1.x = 0;
    v1.y = 0;
    v1.z = 0;

    MTX_Identity33(&v2);

    sub_020241B4();
    Camera_SetAsActive(param0->camera);
    Camera_ComputeProjectionMatrix(0, param0->camera);
    Camera_ComputeViewMatrix();

    switch (param0->unk_1101) {
    case 0:
        NNS_G3dGlbLightVector(0, 1897, -3600, -466);
        NNS_G3dGlbLightVector(2, 0, 0, 4096);
        NNS_G3dGlbLightColor(0, GX_RGB(28, 12, 6));
        NNS_G3dGlbLightColor(2, GX_RGB(0, 0, 0));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(15, 15, 15), GX_RGB(11, 12, 12), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(17, 17, 17), GX_RGB(8, 8, 7), 0);
        break;
    case 2:
        NNS_G3dGlbLightVector(0, -2043, -3548, 110);
        NNS_G3dGlbLightVector(2, 0, 0, 4096);
        NNS_G3dGlbLightColor(0, GX_RGB(22, 22, 20));
        NNS_G3dGlbLightColor(2, GX_RGB(0, 0, 0));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(15, 15, 15), GX_RGB(9, 11, 11), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(16, 16, 16), GX_RGB(14, 14, 14), 0);
        break;
    case 4:
        NNS_G3dGlbLightVector(0, 1897, -3600, -466);
        NNS_G3dGlbLightVector(2, 0, 0, 4096);
        NNS_G3dGlbLightColor(0, GX_RGB(11, 11, 16));
        NNS_G3dGlbLightColor(2, GX_RGB(0, 0, 0));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(14, 14, 16), GX_RGB(10, 10, 10), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(14, 14, 16), GX_RGB(8, 8, 11), 0);
        break;
    default:
        NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
        NNS_G3dGlbLightColor(0, GX_RGB(28, 28, 28));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
        break;
    }

    NNS_G3dGlbLightVector(3, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(3, GX_RGB(28, 28, 28));
    NNS_G3dGlbSetBaseTrans(&v1);
    NNS_G3dGlbSetBaseRot(&v2);
    NNS_G3dGlbSetBaseScale(&v0);
    NNS_G3dGePushMtx();

    {
        int v3, v4;

        for (v3 = 0; v3 < 2; v3++) {
            for (v4 = 0; v4 < 16; v4++) {
                Easy3DObject_Draw(&param0->unk_6C[v3][v4]);
            }
        }
    }

    NNS_G3dGePopMtx(1);
}

static void ov99_021D1918(UnkStruct_ov99_021D2CB0 *param0)
{
    VecFx32 v0 = { 0, (-FX32_ONE * 8), 0 };
    VecFx32 v1 = { -31712, -142304, 496744 };
    VecFx32 v2 = { -31712, -67780, -5704 };

    param0->camera = Camera_Alloc(75);

    Camera_InitWithTarget(&v0, 0x7c000, &Unk_ov99_021D46CC, ((22 * 0xffff) / 360), 0, 0, param0->camera);
    Camera_SetPosition(&v1, param0->camera);
    Camera_SetTarget(&v2, param0->camera);
    Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), param0->camera);
    Camera_SetAsActive(param0->camera);
}

static void ov99_021D19A0(UnkStruct_ov99_021D2CB0 *param0)
{
    Camera_Delete(param0->camera);
}

static GenericPointerData *ov99_021D19AC(int param0)
{
    GenericPointerData *v0;

    v0 = sub_02024220(param0, 0, 1, 0, 1, ov99_021D19C8);
    return v0;
}

static void ov99_021D19C8(void)
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

static void ov99_021D1A4C(GenericPointerData *param0)
{
    sub_020242C4(param0);
}
