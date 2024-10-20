
#include "overlay117/ov117_02260668.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"
#include "overlay114/ov114_0225C700.h"
#include "overlay115/camera_angle.h"
#include "overlay117/ov117_022626B0.h"
#include "overlay117/ov117_02263AF0.h"
#include "overlay117/ov117_022665FC.h"
#include "overlay117/ov117_022666C0.h"
#include "overlay117/struct_ov117_02261280.h"
#include "overlay117/struct_ov117_02261C2C.h"
#include "overlay117/struct_ov117_02261F08.h"
#include "overlay117/struct_ov117_022621D4.h"
#include "overlay117/struct_ov117_02262664.h"

#include "camera.h"
#include "communication_system.h"
#include "core_sys.h"
#include "easy3d_object.h"
#include "enums.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_text.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02014000.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

static void ov117_02260DA0(void *param0);
static GenericPointerData *ov117_02260E14(int param0);
static void ov117_02260E34(void);
static void ov117_02260EB8(GenericPointerData *param0);
static void ov117_02260F7C(SysTask *param0, void *param1);
static void ov117_022610D8(BGL *param0);
static void ov117_02261280(UnkStruct_ov117_02261280 *param0);
static void ov117_02261574(UnkStruct_ov117_02261280 *param0);
static void ov117_022615E0(UnkStruct_ov117_02261280 *param0);
static void ov117_0226168C(UnkStruct_ov117_02261280 *param0, NARC *param1);
static void ov117_022618E8(UnkStruct_ov117_02261280 *param0);
static void ov117_02261940(UnkStruct_ov117_02261280 *param0, NARC *param1);
static void ov117_022619F8(UnkStruct_ov117_02261280 *param0);
static void ov117_02261A2C(UnkStruct_ov117_02261280 *param0, NARC *param1);
static void ov117_02261AC4(UnkStruct_ov117_02261280 *param0);
static void ov117_02261AC8(UnkStruct_ov117_02261280 *param0, NARC *param1);
static void ov117_02261C28(UnkStruct_ov117_02261280 *param0);
static void ov117_02261C2C(UnkStruct_ov117_02261280 *param0, NARC *param1);
static void ov117_02261DD0(UnkStruct_ov117_02261280 *param0);
static void ov117_02260EC0(UnkStruct_ov117_02261280 *param0);
static void ov117_02260F64(UnkStruct_ov117_02261280 *param0);
BOOL ov117_02261FF4(UnkStruct_ov117_02261280 *param0);
void ov117_02262044(UnkStruct_ov117_02261280 *param0, int param1, const UnkStruct_ov117_022621D4 *param2);
UnkStruct_ov117_022621D4 *ov117_022620A0(UnkStruct_ov117_02261280 *param0, int param1);
static BOOL ov117_022620E0(UnkStruct_ov117_02261280 *param0, int param1, const UnkStruct_ov117_022621D4 *param2);
void ov117_02262130(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_022621D4 *param1);
static BOOL ov117_0226217C(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_022621D4 *param1);
UnkStruct_ov117_022621D4 *ov117_022621D4(UnkStruct_ov117_02261280 *param0);
static int ov117_02262200(UnkStruct_ov117_02261280 *param0);
static void ov117_02262270(UnkStruct_ov117_02261280 *param0);
int ov117_022622B8(UnkStruct_ov117_02261280 *param0);
int ov117_0226200C(UnkStruct_ov117_02261280 *param0);
static BOOL ov117_022623B0(UnkStruct_ov117_02261280 *param0);
static int ov117_02262448(UnkStruct_ov117_02261280 *param0, int param1);
static int ov117_02262484(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02262664 *param1);
static int ov117_0226251C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02262664 *param1);
static int ov117_022625F8(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02262664 *param1);
static BOOL ov117_02262664(UnkStruct_ov117_02261280 *param0);
static void ov117_02261368(UnkStruct_ov117_02261280 *param0);
static void ov117_022613B8(UnkStruct_ov117_02261280 *param0);
static void ov117_022613EC(UnkStruct_ov117_02261280 *param0);
static void ov117_022614AC(UnkStruct_ov117_02261280 *param0, int param1);
BOOL ov117_02261E38(UnkStruct_ov117_02261280 *param0, int param1);
void ov117_02261F08(UnkStruct_ov117_02261280 *param0, int param1, int param2);
void ov117_02261F3C(UnkStruct_ov117_02261280 *param0);
void ov117_02261FA4(UnkStruct_ov117_02261280 *param0);
static void ov117_022626AC(Camera *camera);
static u32 ov117_02261644(u32 param0, BOOL param1);
static u32 ov117_02261668(u32 param0, BOOL param1);

static const CameraAngle Unk_ov117_02266918 = {
    0x0,
    0x0,
    0x0
};

static int (*const Unk_ov117_02266920[])(UnkStruct_ov117_02261280 *, UnkStruct_ov117_02262664 *) = {
    ov117_02262484,
    ov117_0226251C,
    ov117_022625F8,
};

__attribute__((aligned(4))) static const u8 Unk_ov117_02266954[][4] = {
    { 0x0 },
    { 0x0 },
    { 0x0, 0x1 },
    { 0x0, 0x2, 0x1 },
    { 0x0, 0x3, 0x1, 0x2 }
};

__attribute__((aligned(4))) static const u8 Unk_ov117_02266968[][4] = {
    { 0x0 },
    { 0x0 },
    { 0x0, 0x1 },
    { 0x0, 0x3, 0x2 },
    { 0x0, 0x3, 0x1, 0x2 }
};

static const UnkStruct_ov104_0224133C Unk_ov117_022669A8 = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const UnkStruct_ov104_022412F4 Unk_ov117_0226697C = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_128K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

static const UnkStruct_ov104_02241308 Unk_ov117_02266990 = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x2,
    0x2
};

static const struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
} Unk_ov117_022669F0[] = {
    { 0x20, 0x27, 0x28, 0x29, 0x2A },
    { 0x21, 0x2F, 0x30, 0x31, 0x32 },
    { 0x22, 0x33, 0x34, 0x35, 0x36 },
    { 0x1F, 0x2B, 0x2C, 0x2D, 0x2E }
};

int ov117_02260668(OverlayManager *param0, int *param1)
{
    UnkStruct_ov117_02261280 *v0;

    SetMainCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_ALL, 16, 16);
    G2S_SetBlendAlpha((GX_BLEND_PLANEMASK_BG3), (GX_BLEND_BGALL | GX_BLEND_PLANEMASK_OBJ), 13, 3);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov117_02261280), 110);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov117_02261280));
    Heap_FndInitAllocatorForExpHeap(&v0->unk_A8, 110, 32);

    v0->unk_98 = ov117_02260E14(110);
    v0->unk_00 = OverlayManager_Args(param0);
    ov117_022665FC(v0);
    v0->unk_8C = sub_02002F38(110);

    sub_02003858(v0->unk_8C, 1);
    sub_02002F70(v0->unk_8C, 0, 0x200, 110);
    sub_02002F70(v0->unk_8C, 1, 0x200, 110);
    sub_02002F70(v0->unk_8C, 2, (((16 - 2) * 16) * sizeof(u16)), 110);
    sub_02002F70(v0->unk_8C, 3, 0x200, 110);

    v0->unk_2C = sub_02018340(110);

    sub_0201DBEC(64, 110);
    SetAutorepeat(4, 8);
    ov117_022610D8(v0->unk_2C);
    sub_0201E3D8();
    sub_0201E450(4);
    ov117_02260EC0(v0);

    v0->unk_24 = sub_0200C6E4(110);

    sub_0200C73C(v0->unk_24, &Unk_ov117_022669A8, &Unk_ov117_0226697C, (16 + 16));
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_28 = sub_0200C704(v0->unk_24);

    sub_0200C7C0(v0->unk_24, v0->unk_28, (96 + 128));
    sub_0200CB30(v0->unk_24, v0->unk_28, &Unk_ov117_02266990);
    sub_0200964C(sub_0200C738(v0->unk_24), 0, ((192 + 160) << FX32_SHIFT));
    ov117_02261574(v0);

    v0->unk_80 = MessageLoader_Init(0, 26, 9, 110);
    v0->unk_84 = StringTemplate_Default(110);
    v0->unk_88 = Strbuf_Init((2 * 160), 110);
    v0->unk_90 = sub_02012744((2 * 6 + 6 + 1), 110);

    ov117_02265210(v0, &v0->unk_1468);

    {
        NARC *v1;
        v1 = NARC_ctor(NARC_INDEX_APPLICATION__BALLOON__GRAPHIC__BALLOON_GRA, 110);

        ov117_02261A2C(v0, v1);
        ov117_02261AC8(v0, v1);
        ov117_02261280(v0);
        ov117_0226168C(v0, v1);
        ov117_02261940(v0, v1);
        ov117_02261C2C(v0, v1);
        NARC_dtor(v1);
    }

    PaletteSys_LoadPalette(v0->unk_8C, 14, 6, 110, 0, 0x20, 0xe * 16);
    PaletteSys_LoadPalette(v0->unk_8C, 14, 6, 110, 1, 0x20, 5 * 16);
    ov117_022613EC(v0);
    ov117_022614AC(v0, 0);
    ov117_02261368(v0);
    sub_02039734();

    v0->unk_D4 = ov117_022626B0(v0);
    sub_0200F174(0, 27, 27, 0x0, 6, 1, 110);
    v0->unk_94 = SysTask_Start(ov117_02260F7C, v0, 60000);

    gCoreSys.unk_65 = 1;

    GXLayers_SwapDisplay();
    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    {
        RenderControlFlags_SetAutoScrollFlags(1);
        RenderControlFlags_SetCanABSpeedUpPrint(0);
        RenderControlFlags_SetSpeedUpOnTouch(0);
    }

    v0->unk_1C = ov114_0225CAD4(sub_0200D9B0(v0->unk_28), 110);

    {
        int v2;

        v2 = ov114_0225CB74(v0->unk_1C);
        sub_02003070(v0->unk_8C, 2, v2 * 16, 3 * 0x20);
    }

    SetMainCallback(ov117_02260DA0, v0);

    if (v0->unk_00->unk_3C) {
        ov4_021D1E74(110);
    }

    return 1;
}

int ov117_0226098C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov117_02261280 *v0 = OverlayManager_Data(param0);
    int v1;

    if (v0->unk_00->unk_3D == 1) {
        switch (v0->unk_00->unk_3E) {
        case 0:
            if (ScreenWipe_Done() == 1) {
                sub_0200F2C0();
            }

            sub_0200F370(0x0);
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            v0->unk_00->unk_3E++;
            break;

        default:
        case 1:
            if (ov114_0225CA98(&v0->unk_00->unk_00) == 1) {
                return 1;
            }
            break;
        }

        return 0;
    }

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done() == 1) {
            (*param1)++;
        }
        break;
    case 1:
        CommTiming_StartSync(211);
        (*param1)++;
        break;
    case 2:
        if (CommTiming_IsSyncState(211) == 1) {
            (*param1)++;
        }
        break;
    case 3:
        if (ov117_022666A4(v0) == 1) {
            (*param1)++;
        }
        break;
    case 4:
        if (v0->unk_08 >= v0->unk_00->unk_30) {
            ov117_0226200C(v0);
            (*param1)++;
        }
        break;
    case 5:
        if (v0->unk_2FC0 == 1) {
            ov117_02266150(v0);
            sub_0200F174(0, 26, 26, 0x0, 6, 1, 110);
            (*param1)++;
        }

        ov117_02262664(v0);

        switch (v0->unk_20) {
        case 1:
            GX_SetVisibleWnd(GX_WNDMASK_W1);
            G2_SetWnd1Position(4, 192 - 32 + 8, 8 * 9 + 4, 192 - 8);
            G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_OBJ, 0);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
            ov117_02266210(v0);
            v0->unk_20 = 2;
        case 2:
            if (ov117_02266274(v0, &v0->unk_174C) == 1) {
                v0->unk_174C.unk_1C = 1;
                v0->unk_20 = 0;
            }
            break;
        case 3:
            ov114_0225CB8C(v0->unk_1C);
            v0->unk_20 = 4;
            break;
        case 4:
            if (ov114_0225CBE0(v0->unk_1C) == 1) {
                v0->unk_2FB8 = 1;
                v0->unk_1468.unk_F1 = 0;
                v0->unk_20 = 5;
                ov117_022613B8(v0);
                ov117_022614AC(v0, 1);
            }
            break;
        case 6:
            ov114_0225CBB0(v0->unk_1C);
            v0->unk_20 = 7;
            break;
        case 7:
            if (ov114_0225CBE0(v0->unk_1C) == 1) {
                v0->unk_20 = 8;
            }
            break;
        }

        ov117_022623B0(v0);
        ov117_02262270(v0);

        if (v0->unk_2FBC == 1) {
            break;
        }

        if (ov117_02262200(v0) == 1) {
            v0->unk_2FC4 = 13;
        }

        if (v0->unk_2FB4 == (3 * 30)) {
            (void)0;
        }

        if ((v0->unk_2FB8 == 1) && (v0->unk_2FB4 <= (43 * 30 + 12))) {
            v0->unk_2FB4++;
        }
        break;
    case 6:
        if (ScreenWipe_Done() == 1) {
            return 1;
        }
        break;
    }

    ov117_022626AC(v0->camera1);
    v0->unk_3D50++;

    return 0;
}

int ov117_02260C10(OverlayManager *param0, int *param1)
{
    UnkStruct_ov117_02261280 *v0 = OverlayManager_Data(param0);
    int v1;

    v0->unk_00->unk_10.unk_14 = v0->unk_2FD0;

    ov114_0225CB38(v0->unk_1C);
    ov117_022641E4(v0);
    ov117_02264508(v0);

    SetMainCallback(NULL, NULL);

    ov117_022615E0(v0);
    ov117_022618E8(v0);
    ov117_022619F8(v0);
    ov117_02261AC4(v0);
    ov117_02261C28(v0);
    ov117_02261DD0(v0);
    ov117_02262760(v0, v0->unk_D4);

    for (v1 = 0; v1 < 5; v1++) {
        BGL_DeleteWindow(&v0->unk_30[v1]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(v0->unk_2C, 1);
    sub_02019044(v0->unk_2C, 2);
    sub_02019044(v0->unk_2C, 3);
    sub_02019044(v0->unk_2C, 4);
    sub_02019044(v0->unk_2C, 5);
    sub_02019044(v0->unk_2C, 6);
    sub_02019044(v0->unk_2C, 7);
    sub_020127BC(v0->unk_90);
    sub_0200D0B0(v0->unk_24, v0->unk_28);
    sub_0200C8D4(v0->unk_24);
    sub_0201DC3C();
    sub_02002FA0(v0->unk_8C, 0);
    sub_02002FA0(v0->unk_8C, 1);
    sub_02002FA0(v0->unk_8C, 2);
    sub_02002FA0(v0->unk_8C, 3);
    sub_02002F54(v0->unk_8C);
    Strbuf_Free(v0->unk_88);
    StringTemplate_Free(v0->unk_84);
    MessageLoader_Free(v0->unk_80);
    Heap_FreeToHeap(v0->unk_2C);
    ov117_02260F64(v0);
    SysTask_Done(v0->unk_94);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    ov117_02260EB8(v0->unk_98);
    sub_0201E530();
    OverlayManager_FreeData(param0);
    RenderControlFlags_SetCanABSpeedUpPrint(0);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
    sub_02039794();

    return 1;
}

static void ov117_02260DA0(void *param0)
{
    UnkStruct_ov117_02261280 *v0 = param0;

    ov117_02262950(v0, v0->unk_D4);

    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_8C);

    if (v0->unk_1428.unk_2C == 1) {
        sub_02019120(7, 1);
        v0->unk_1428.unk_2C = 0;
    } else if (v0->unk_1428.unk_2D == 1) {
        sub_02019120(7, 0);
        v0->unk_1428.unk_2D = 0;
    }

    sub_0201C2B8(v0->unk_2C);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static GenericPointerData *ov117_02260E14(int param0)
{
    GenericPointerData *v0;

    v0 = sub_02024220(param0, 0, 1, 0, 2, ov117_02260E34);
    return v0;
}

static void ov117_02260E34(void)
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

static void ov117_02260EB8(GenericPointerData *param0)
{
    sub_020242C4(param0);
}

static void ov117_02260EC0(UnkStruct_ov117_02261280 *param0)
{
    VecFx32 v0 = { 0, 0x1881e, 0 };
    VecFx32 v1 = { 0, 0x1881e, (FX32_ONE * 5) };

    param0->camera1 = Camera_Alloc(110);

    Camera_InitWithTarget(&v0, (0x7b << FX32_SHIFT), &Unk_ov117_02266918, ((22 * 0xffff) / 360), 1, 0, param0->camera1);
    Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), param0->camera1);
    Camera_SetAsActive(param0->camera1);

    param0->camera2 = Camera_Alloc(110);

    Camera_InitWithTarget(&v0, (80 << FX32_SHIFT), &Unk_ov117_02266918, ((22 * 0xffff) / 360), 1, 0, param0->camera2);
    Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), param0->camera2);
}

static void ov117_02260F64(UnkStruct_ov117_02261280 *param0)
{
    Camera_Delete(param0->camera1);
    Camera_Delete(param0->camera2);
}

static void ov117_02260F7C(SysTask *param0, void *param1)
{
    UnkStruct_ov117_02261280 *v0 = param1;
    VecFx32 v1, v2;
    MtxFx33 v3;

    v1.x = FX32_ONE;
    v1.y = FX32_ONE;
    v1.z = FX32_ONE;

    v2.x = 0;
    v2.y = 0;
    v2.z = 0;

    MTX_Identity33(&v3);

    ov117_02265F34(v0, &v0->unk_15A8);
    ov117_02265254(v0, &v0->unk_1468);
    ov117_02265C1C(v0, &v0->unk_1560);
    ov117_02263EF8(v0);
    ov117_02263D80(v0, v0->unk_2C, &v0->unk_1428);
    ov117_02264560(v0);
    ov117_02261F3C(v0);
    ov117_02264930(v0);

    {
        sub_020241B4();
        Camera_SetAsActive(v0->camera1);
        Camera_ComputeProjectionMatrix(1, v0->camera1);
        Camera_ComputeViewMatrix();

        NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
        NNS_G3dGlbLightColor(0, GX_RGB(28, 28, 28));
        NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
        NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
        NNS_G3dGlbSetBaseTrans(&v2);
        NNS_G3dGlbSetBaseRot(&v3);
        NNS_G3dGlbSetBaseScale(&v1);
        NNS_G3dGlbFlush();

        ov117_02262798(v0, v0->unk_D4);
        NNS_G3dGePushMtx();

        {
            Easy3DObject_Draw(&v0->unk_13A0.unk_10);
            Easy3DObject_Draw(&v0->unk_D8.unk_10);
            ov117_02261FA4(v0);
        }

        NNS_G3dGePopMtx(1);
    }

    {
        int v4;

        sub_020241B4();
        v4 = sub_0201469C();

        if (v4 > 0) {
            sub_020241B4();
        }

        sub_020146C0();
    }

    sub_0200C7EC(v0->unk_28);
    sub_0200C808();
    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    sub_02038A1C(110, v0->unk_2C);
}

static void ov117_022610D8(BGL *param0)
{
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_B,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_128_C,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_A,
            GX_VRAM_TEXPLTT_01_FG
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
            GX_BGMODE_0,
            GX_BGMODE_1,
            GX_BG0_AS_3D,
        };

        sub_02018368(&v1);
    }

    {
        UnkStruct_ov97_0222DB78 v2[] = {
            { 0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0 },

            { 0,
                0,
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0 },

            { 0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0 },
        };

        sub_020183C4(param0, 1, &v2[0], 0);
        sub_02019EBC(param0, 1);
        sub_02019184(param0, 1, 0, 0);
        sub_02019184(param0, 1, 3, 0);
        sub_020183C4(param0, 2, &v2[1], 0);
        sub_02019EBC(param0, 2);
        sub_02019184(param0, 2, 0, 0);
        sub_02019184(param0, 2, 3, 0);
        sub_020183C4(param0, 3, &v2[2], 0);
        sub_02019EBC(param0, 3);
        sub_02019184(param0, 3, 0, 0);
        sub_02019184(param0, 3, 3, 0);

        G2_SetBG0Priority(2);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        int v3;
        static const UnkStruct_ov97_0222DB78 v4[] = {
            { 0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0 },

            { 0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x2000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0 },

            { 0,
                0,
                0x1000,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x4000,
                GX_BG_CHARBASE_0x14000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0 },

            { 0,
                0,
                0x400,
                0,
                1,
                GX_BG_COLORMODE_256,
                GX_BG_SCRBASE_0x6000,
                GX_BG_CHARBASE_0x18000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0 },
        };

        for (v3 = 0; v3 < NELEMS(v4); v3++) {
            if (v3 < 3) {
                sub_020183C4(param0, 4 + v3, &v4[v3], 0);
            } else {
                sub_020183C4(param0, 4 + v3, &v4[v3], 1);
            }

            sub_02019690(4 + v3, 0x20, 0, 110);
            sub_02019EBC(param0, 4 + v3);
            sub_02019184(param0, 4 + v3, 0, 0);
            sub_02019184(param0, 4 + v3, 3, 0);
        }

        sub_02019120(7, 0);
    }
}

static void ov117_02261280(UnkStruct_ov117_02261280 *param0)
{
    int v0;

    BGL_AddWindow(param0->unk_2C, &param0->unk_30[0], 1, 11, 0x13, 20, 4, 0xe, ((0x8000 - 0x2000) / 32));
    BGL_AddWindow(param0->unk_2C, &param0->unk_30[1], 4, 0x12, 1, 10, 2, 5, (((0x8000 - 0x2000) / 32) + (10 * 2)));
    BGL_AddWindow(param0->unk_2C, &param0->unk_30[2], 4, 0x15, 0xe, 10, 2, 5, ((((0x8000 - 0x2000) / 32) + (10 * 2)) + (10 * 2)));
    BGL_AddWindow(param0->unk_2C, &param0->unk_30[3], 4, 1, 14, 10, 2, 5, (((((0x8000 - 0x2000) / 32) + (10 * 2)) + (10 * 2)) + (10 * 2)));
    BGL_FillWindow(&param0->unk_30[1], 0xf);
    BGL_FillWindow(&param0->unk_30[2], 0xf);
    BGL_FillWindow(&param0->unk_30[3], 0xf);
    BGL_AddWindow(param0->unk_2C, &param0->unk_30[4], 4, 2, 0x13, 0x1c, 4, 5, (((((((0x8000 - 0x2000) / 32) + (10 * 2)) + (10 * 2)) + (10 * 2)) + (10 * 2)) + 9));
    BGL_FillWindow(&param0->unk_30[4], 0xf);
}

static void ov117_02261368(UnkStruct_ov117_02261280 *param0)
{
    Strbuf *v0;

    Window_Show(&param0->unk_30[4], 1, ((((((0x8000 - 0x2000) / 32) + (10 * 2)) + (10 * 2)) + (10 * 2)) + (10 * 2)), 6);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_80, 3);
    Text_AddPrinterWithParamsAndColor(&param0->unk_30[4], FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Strbuf_Free(v0);

    sub_0201A9A4(&param0->unk_30[4]);
}

static void ov117_022613B8(UnkStruct_ov117_02261280 *param0)
{
    sub_02019CB8(param0->unk_2C, 4, 1023, 2 - 1, 0x13 - 1, 0x1c + 2, 4 + 2, 17);
    sub_0201C3C0(param0->unk_2C, 4);
}

static void ov117_022613EC(UnkStruct_ov117_02261280 *param0)
{
    int v0, v1;
    TrainerInfo *v2;
    Strbuf *v3;
    int v4;
    TextColor v5;
    int v6, v7;

    v4 = CommSys_CurNetId();

    for (v0 = 0; v0 < param0->unk_00->unk_30; v0++) {
        if (v4 != param0->unk_00->unk_2C[v0]) {
            v2 = ov114_0225C7CC(&param0->unk_00->unk_00, param0->unk_00->unk_2C[v0]);
            v3 = TrainerInfo_NameNewStrbuf(v2, 110);
            v1 = ov117_022622C4(param0, param0->unk_00->unk_2C[v0]);

            if (ov114_0225C7A4(&param0->unk_00->unk_00, param0->unk_00->unk_2C[v0]) == 1) {
                v5 = TEXT_COLOR(7, 8, 15);
            } else {
                v5 = TEXT_COLOR(1, 2, 15);
            }

            v6 = Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);
            v7 = 8 * 10 / 2 - v6 / 2;

            if (v6 & 1) {
                v7--;
            }

            Text_AddPrinterWithParamsAndColor(&param0->unk_30[Unk_ov117_02266968[param0->unk_00->unk_30][v1]], FONT_SYSTEM, v3, v7, 0, TEXT_SPEED_INSTANT, v5, NULL);
            Heap_FreeToHeap(v3);
        }
    }
}

static void ov117_022614AC(UnkStruct_ov117_02261280 *param0, int param1)
{
    if (param1 == 1) {
        sub_02019CB8(param0->unk_2C, 4, 1023, 0, 13, 12, 4, 17);
        sub_02019CB8(param0->unk_2C, 4, 1023, 0x11, 0, 12, 4, 17);
        sub_02019CB8(param0->unk_2C, 4, 1023, 0x14, 13, 12, 4, 17);
    } else {
        switch (param0->unk_00->unk_30) {
        case 2:
            sub_02019CB8(param0->unk_2C, 4, 1023, 0, 13, 12, 4, 17);
            sub_02019CB8(param0->unk_2C, 4, 1023, 0x14, 13, 12, 4, 17);
            break;
        case 3:
            sub_02019CB8(param0->unk_2C, 4, 1023, 0x11, 0, 12, 4, 17);
            break;
        }
    }

    sub_0201C3C0(param0->unk_2C, 4);
}

static void ov117_02261574(UnkStruct_ov117_02261280 *param0)
{
    void *v0;
    Camera *camera;
    void *v2;

    sub_02014000();

    v0 = Heap_AllocFromHeap(110, 0x4800);
    param0->unk_A4 = sub_02014014(ov117_02261644, ov117_02261668, v0, 0x4800, 1, 110);
    camera = sub_02014784(param0->unk_A4);

    Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);
    v2 = sub_020144C4(190, 0, 110);
    sub_020144CC(param0->unk_A4, v2, (1 << 1) | (1 << 3), 1);
}

static void ov117_022615E0(UnkStruct_ov117_02261280 *param0)
{
    void *v0;

    v0 = sub_02014730(param0->unk_A4);

    sub_0201411C(param0->unk_A4);
    Heap_FreeToHeap(v0);
}

void ov117_02261600(UnkStruct_ov117_02261280 *param0, int param1)
{
    switch (param1) {
    case 0:
        sub_020146F4(param0->unk_A4, 0, NULL, param0);
        break;
    case 1:
        sub_020146F4(param0->unk_A4, 1, NULL, param0);
        break;
    case 2:
        sub_020146F4(param0->unk_A4, 2, NULL, param0);
        break;
    default:
        GF_ASSERT(0);
        return;
    }
}

static u32 ov117_02261644(u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    sub_020145B4(v0);

    return NNS_GfdGetTexKeyAddr(v0);
}

static u32 ov117_02261668(u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;

    v0 = NNS_GfdAllocPlttVram(param0, param1, NNS_GFD_ALLOC_FROM_LOW);
    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    sub_020145F4(v0);

    return NNS_GfdGetPlttKeyAddr(v0);
}

static void ov117_0226168C(UnkStruct_ov117_02261280 *param0, NARC *param1)
{
    int v0;
    Strbuf *v1, *v2;
    int v3;

    SpriteRenderer_LoadPalette(param0->unk_8C, 2, param0->unk_24, param0->unk_28, param1, 27, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10003);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_80, 2);
    v0 = 6 + ((30 - Font_CalcStrbufWidth(0, v1, 0)) / 2);
    ov117_02265DB8(param0->unk_2C, param0->unk_28, param0->unk_90, &param0->unk_15A8.unk_F4, v1, FONT_SYSTEM, TEXT_COLOR(14, 15, 0), 0, 10003, v0 + 6 * 6, 168, 0, 1, 12, 2);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_80, 0);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_80, 1);
    for (v3 = 0; v3 < 6; v3++) {
        ov117_02265DB8(param0->unk_2C, param0->unk_28, param0->unk_90, &param0->unk_15A8.unk_04[v3][0], v1, FONT_SYSTEM, TEXT_COLOR(14, 15, 0), 0, 10003, v0 + 6 * v3, 168, 0, 3, 12, 2 * 5);
        ov117_02265DB8(param0->unk_2C, param0->unk_28, param0->unk_90, &param0->unk_15A8.unk_04[v3][1], v2, FONT_SYSTEM, TEXT_COLOR(14, 15, 0), 0, 10003, v0 + 6 * v3, 168, 0, 3, 12, 2 * 5);
    }
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    ov117_02265EC8(&param0->unk_15A8);

    ov117_02266150(param0);

    SpriteRenderer_LoadPalette(param0->unk_8C, 2, param0->unk_24, param0->unk_28, param1, 27, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10004);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_24, param0->unk_28, param1, 24, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_24, param0->unk_28, param1, 26, 0, 10002);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_24, param0->unk_28, param1, 25, 0, 10002);
    param0->unk_15A8.unk_00 = ov117_02266130(param0);

    sub_0200CD7C(param0->unk_8C, 2, param0->unk_24, param0->unk_28, 171, 20, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);
    sub_0200CBDC(param0->unk_24, param0->unk_28, 171, 21, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
    sub_0200CE0C(param0->unk_24, param0->unk_28, 171, 22, 0, 10001);
    sub_0200CE3C(param0->unk_24, param0->unk_28, 171, 23, 0, 10001);
    param0->unk_174C.unk_00 = ov117_02266244(param0);
}

static void ov117_022618E8(UnkStruct_ov117_02261280 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        ov117_02265EB0(&param0->unk_15A8.unk_04[v0][0]);
        ov117_02265EB0(&param0->unk_15A8.unk_04[v0][1]);
    }

    ov117_02265EB0(&param0->unk_15A8.unk_F4);
    ov117_02266210(param0);
    ov117_02266238(param0, param0->unk_15A8.unk_00);
    ov117_02266268(param0, param0->unk_174C.unk_00);
}

static void ov117_02261940(UnkStruct_ov117_02261280 *param0, NARC *param1)
{
    SpriteRenderer_LoadPalette(param0->unk_8C, 3, param0->unk_24, param0->unk_28, param1, 23, 0, 9, NNS_G2D_VRAM_TYPE_2DSUB, 10006);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_24, param0->unk_28, param1, 20, 0, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_24, param0->unk_28, param1, 22, 0, 10004);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_24, param0->unk_28, param1, 21, 0, 10004);

    ov117_022648E0(param0);
    ov117_02264FB0(param0, &param0->unk_1458);
    ov117_02265064(param0, &param0->unk_1468);
    ov117_02265ABC(param0, &param0->unk_1560);
    ov117_02264BF8(param0);
    ov117_02264D1C(param0);
}

static void ov117_022619F8(UnkStruct_ov117_02261280 *param0)
{
    ov117_02264914(param0);
    ov117_0226504C(param0, &param0->unk_1458);
    ov117_022651E0(param0, &param0->unk_1468);
    ov117_02265B3C(param0, &param0->unk_1560);
}

static void ov117_02261A2C(UnkStruct_ov117_02261280 *param0, NARC *param1)
{
    PaletteSys_LoadPalette(param0->unk_8C, 173, 4, 110, 0, 0, 0);
    sub_020070E8(param1, 2, param0->unk_2C, 3, 0, 0, 0, 110);
    sub_0200710C(param1, 3, param0->unk_2C, 3, 0, 0, 0, 110);
    sub_020070E8(param1, 0, param0->unk_2C, 2, 0, 0, 0, 110);
    sub_0200710C(param1, 1, param0->unk_2C, 2, 0, 0, 0, 110);
    sub_020038B0(param0->unk_8C, 0, 2, 0x0, 0, 1);
}

static void ov117_02261AC4(UnkStruct_ov117_02261280 *param0)
{
    return;
}

static void ov117_02261AC8(UnkStruct_ov117_02261280 *param0, NARC *param1)
{
    PaletteSys_LoadPalette(param0->unk_8C, 173, 5, 110, 1, 5 * 0x20, 0);
    sub_02002FEC(param0->unk_8C, 173, 6, 110, 1, (0x20 * 10), 6 * 16, 6 * 16);
    sub_020070E8(param1, 13, param0->unk_2C, 6, 0, 0, 0, 110);
    sub_0200710C(param1, 14, param0->unk_2C, 6, 0, 0, 0, 110);
    sub_020070E8(param1, 18, param0->unk_2C, 5, 0, 0, 0, 110);

    switch (param0->unk_00->unk_30) {
    case 2:
        sub_0200710C(param1, 15, param0->unk_2C, 5, 0, 0, 0, 110);
        break;
    case 3:
        sub_0200710C(param1, 16, param0->unk_2C, 5, 0, 0, 0, 110);
        break;
    default:
        sub_0200710C(param1, 17, param0->unk_2C, 5, 0, 0, 0, 110);
        break;
    }

    sub_020070E8(param1, 18, param0->unk_2C, 4, 0, 0, 0, 110);
    sub_0200710C(param1, 19, param0->unk_2C, 4, 0, 0, 0, 110);

    ov117_02264AF0(param0);
    ov117_02264AB0(param0);

    sub_0200DAA4(param0->unk_2C, 4, ((((((0x8000 - 0x2000) / 32) + (10 * 2)) + (10 * 2)) + (10 * 2)) + (10 * 2)), 6, 0, 110);
    sub_02003070(param0->unk_8C, 1, 6 * 16, 0x20);
    sub_020038B0(param0->unk_8C, 1, 2, 0x0, 0, 1);
}

static void ov117_02261C28(UnkStruct_ov117_02261280 *param0)
{
    return;
}

static void ov117_02261C2C(UnkStruct_ov117_02261280 *param0, NARC *param1)
{
    int v0, v1;
    UnkStruct_ov117_02261F08 *v2 = &param0->unk_D8;
    UnkStruct_ov117_02261C2C *v3 = &param0->unk_13A0;
    int v4;
    void *v5 = NULL;

    v4 = ov117_0226235C(param0, CommSys_CurNetId());

    Easy3DModel_LoadFrom(&v2->unk_00, param1, Unk_ov117_022669F0[v4].unk_00, 110);
    Easy3DObject_Init(&v2->unk_10, &v2->unk_00);
    Easy3DObject_SetPosition(&v2->unk_10, (FX32_CONST(0)), (FX32_CONST(-25)), (FX32_CONST(0)));
    Easy3DObject_SetScale(&v2->unk_10, (FX32_CONST(1.00f)), (FX32_CONST(1.00f)), (FX32_CONST(1.00f)));
    Easy3DObject_SetVisibility(&v2->unk_10, 1);
    Easy3DModel_LoadFrom(&v2->unk_88[0], param1, Unk_ov117_022669F0[v4].unk_04, 110);
    Easy3DModel_LoadFrom(&v2->unk_88[1], param1, Unk_ov117_022669F0[v4].unk_08, 110);
    Easy3DModel_LoadFrom(&v2->unk_88[2], param1, Unk_ov117_022669F0[v4].unk_0C, 110);
    Easy3DModel_LoadFrom(&v2->unk_88[3], param1, Unk_ov117_022669F0[v4].unk_10, 110);

    for (v0 = 0; v0 < 8; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            if (v5 == NULL) {
                Easy3DAnim_LoadFrom(&v2->unk_C8[v0][v1].unk_7C, &v2->unk_88[v1], param1, 35 + v1, 110, &param0->unk_A8);
                v5 = v2->unk_C8[v0][v1].unk_7C.data;
            } else {
                Easy3DAnim_LoadFromData(&v2->unk_C8[v0][v1].unk_7C, &v2->unk_88[v1], v5, &param0->unk_A8);
            }

            Easy3DAnim_SetFrame(&v2->unk_C8[v0][v1].unk_7C, 0);
        }
    }

    Easy3DModel_LoadFrom(&v3->unk_00, param1, 30, 110);
    Easy3DObject_Init(&v3->unk_10, &v3->unk_00);
    Easy3DObject_SetPosition(&v3->unk_10, (FX32_CONST(0)), (FX32_CONST(-25)), (FX32_CONST(0)));
    Easy3DObject_SetScale(&v3->unk_10, (FX32_CONST(1.00f)), (FX32_CONST(1.00f)), (FX32_CONST(1.00f)));
    Easy3DObject_SetVisibility(&v3->unk_10, 1);
}

static void ov117_02261DD0(UnkStruct_ov117_02261280 *param0)
{
    int v0, v1;
    UnkStruct_ov117_02261F08 *v2 = &param0->unk_D8;

    Easy3DModel_Release(&v2->unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        Easy3DModel_Release(&v2->unk_88[v0]);
    }

    for (v0 = 0; v0 < 8; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            Easy3DAnim_Release(&v2->unk_C8[v0][v1].unk_7C, &param0->unk_A8);
        }
    }

    Easy3DModel_Release(&param0->unk_13A0.unk_00);
}

BOOL ov117_02261E38(UnkStruct_ov117_02261280 *param0, int param1)
{
    UnkStruct_ov117_02261F08 *v0 = &param0->unk_D8;
    Easy3DModel *v1;
    int v2, v3;

    if (param1 > 1200) {
        v3 = 3;
    } else if (param1 > 3 / 3 * 2) {
        v3 = 2;
    } else if (param1 > 3 / 3 * 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    v1 = &v0->unk_88[v3];

    for (v2 = 0; v2 < 8; v2++) {
        if (v0->unk_C8[v2][v3].unk_00 == 0) {
            Easy3DObject_Init(&v0->unk_C8[v2][v3].unk_04, v1);
            Easy3DObject_SetPosition(&v0->unk_C8[v2][v3].unk_04, (FX32_CONST(0)), (FX32_CONST(-25)), (FX32_CONST(0)));
            Easy3DObject_SetScale(&v0->unk_C8[v2][v3].unk_04, (FX32_CONST(1.00f)), (FX32_CONST(1.00f)), (FX32_CONST(1.00f)));
            Easy3DObject_SetVisibility(&v0->unk_C8[v2][v3].unk_04, 1);
            Easy3DAnim_SetFrame(&v0->unk_C8[v2][v3].unk_7C, 0);
            Easy3DObject_AddAnim(&v0->unk_C8[v2][v3].unk_04, &v0->unk_C8[v2][v3].unk_7C);

            v0->unk_C8[v2][v3].unk_00 = 1;

            Sound_PlayEffect(1401);
            return 1;
        }
    }

    return 0;
}

void ov117_02261F08(UnkStruct_ov117_02261280 *param0, int param1, int param2)
{
    UnkStruct_ov117_02261F08 *v0 = &param0->unk_D8;

    Easy3DObject_RemoveAnim(&v0->unk_C8[param1][param2].unk_04, &v0->unk_C8[param1][param2].unk_7C);
    v0->unk_C8[param1][param2].unk_00 = 0;
}

void ov117_02261F3C(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_02261F08 *v0 = &param0->unk_D8;
    int v1, v2;

    for (v1 = 0; v1 < 8; v1++) {
        for (v2 = 0; v2 < 4; v2++) {
            if (v0->unk_C8[v1][v2].unk_00 == 1) {
                if (Easy3DAnim_Update(&v0->unk_C8[v1][v2].unk_7C, FX32_ONE) == 1) {
                    ov117_02261F08(param0, v1, v2);
                }
            }
        }
    }
}

void ov117_02261FA4(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_02261F08 *v0 = &param0->unk_D8;
    int v1, v2;

    for (v1 = 0; v1 < 8; v1++) {
        for (v2 = 0; v2 < 4; v2++) {
            if (v0->unk_C8[v1][v2].unk_00 == 1) {
                Easy3DObject_Draw(&v0->unk_C8[v1][v2].unk_04);
            }
        }
    }
}

BOOL ov117_02261FF4(UnkStruct_ov117_02261280 *param0)
{
    if (param0->unk_04 == CommSys_CurNetId()) {
        return 1;
    }

    return 0;
}

int ov117_0226200C(UnkStruct_ov117_02261280 *param0)
{
    int v0, v1;
    u32 v2;

    v0 = param0->unk_00->unk_2C[0];
    v2 = param0->unk_0C[0];

    for (v1 = 1; v1 < param0->unk_00->unk_30; v1++) {
        if (v2 < param0->unk_0C[v1]) {
            v2 = param0->unk_0C[v1];
            v0 = param0->unk_00->unk_2C[v1];
        }
    }

    param0->unk_04 = v0;
    return param0->unk_04;
}

void ov117_02262044(UnkStruct_ov117_02261280 *param0, int param1, const UnkStruct_ov117_022621D4 *param2)
{
    UnkStruct_ov117_022621D4 *v0;
    int v1;

    if (ov117_022620E0(param0, param1, param2) == 1) {
        return;
    }

    v1 = param0->unk_2F04[param1] % 60;
    v0 = &param0->unk_1C1C[param1].unk_00[v1];

    param0->unk_2F04[param1]++;

    GF_ASSERT(v0->unk_00 == 0);

    *v0 = *param2;
}

UnkStruct_ov117_022621D4 *ov117_022620A0(UnkStruct_ov117_02261280 *param0, int param1)
{
    UnkStruct_ov117_022621D4 *v0;
    int v1;

    v1 = param0->unk_2F14[param1] % 60;
    v0 = &param0->unk_1C1C[param1].unk_00[v1];

    if (v0->unk_00 != 0) {
        param0->unk_2F14[param1]++;
        return v0;
    }

    return NULL;
}

static BOOL ov117_022620E0(UnkStruct_ov117_02261280 *param0, int param1, const UnkStruct_ov117_022621D4 *param2)
{
    switch (param2->unk_00) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        GF_ASSERT(param0->unk_2EF0.unk_00 == 0);
        param0->unk_2EF0 = *param2;
        return 1;
    }

    return 0;
}

void ov117_02262130(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_022621D4 *param1)
{
    UnkStruct_ov117_022621D4 *v0;
    int v1;

    if (ov117_0226217C(param0, param1) == 1) {
        return;
    }

    v1 = param0->unk_2F24 % 60;
    v0 = &param0->unk_176C.unk_00[v1];

    param0->unk_2F24++;

    GF_ASSERT(v0->unk_00 == 0);

    *v0 = *param1;
}

static BOOL ov117_0226217C(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_022621D4 *param1)
{
    switch (param1->unk_00) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        if (param0->unk_2EDC.unk_00 == 0) {
            param0->unk_2EDC = *param1;
            return 1;
        } else if (param1->unk_00 == param0->unk_2EDC.unk_00) {
            return 1;
        } else {
            GF_ASSERT(0);
            return 0;
        }
        break;
    }

    return 0;
}

UnkStruct_ov117_022621D4 *ov117_022621D4(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_022621D4 *v0;
    int v1;

    v1 = param0->unk_2F28 % 60;
    v0 = &param0->unk_176C.unk_00[v1];
    if (v0->unk_00 != 0) {
        return v0;
    }

    return NULL;
}

static int ov117_02262200(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_022621D4 *v0;

    if (param0->unk_2FC4 > 0) {
        param0->unk_2FC4--;
        return 0;
    }

    if (param0->unk_2EDC.unk_00 != 0) {
        if (ov117_02266624(param0, &param0->unk_2EDC) == 1) {
            param0->unk_2EDC.unk_00 = 0;
            return 1;
        } else {
            return 0;
        }
    }

    v0 = ov117_022621D4(param0);

    if (v0 == NULL) {
        return 0;
    }

    if (ov117_02266624(param0, v0) == 1) {
        v0->unk_00 = 0;
        param0->unk_2F28++;
        return 1;
    }

    return 0;
}

static void ov117_02262270(UnkStruct_ov117_02261280 *param0)
{
    int v0, v1;
    UnkStruct_ov117_022621D4 *v2;
    int v3, v4;

    v4 = param0->unk_2EF0.unk_00;

    if (ov117_022666C0(param0, &param0->unk_2EF0) == 1) {
        return;
    }

    v2 = &param0->unk_2EF0;

    for (v1 = 0; v1 < param0->unk_00->unk_30; v1++) {
        while (TRUE) {
            v2 = ov117_022620A0(param0, param0->unk_00->unk_2C[v1]);

            if (v2 == NULL) {
                break;
            }

            v4 = v2->unk_00;
            v3 = ov117_022666C0(param0, v2);

            if (v3 == 1) {
                (void)0;
            }
        }
    }
}

int ov117_022622B8(UnkStruct_ov117_02261280 *param0)
{
    return param0->unk_2FC8;
}

int ov117_022622C4(UnkStruct_ov117_02261280 *param0, int param1)
{
    int v0, v1, v2;
    int v3, v4;
    int v5, v6;
    int v7;
    const u8 *v8;

    v6 = CommSys_CurNetId();
    v3 = 0xff;
    v4 = 0xff;

    for (v5 = 0; v5 < param0->unk_00->unk_30; v5++) {
        if (param0->unk_00->unk_2C[v5] == v6) {
            v4 = v5;
        }

        if (param0->unk_00->unk_2C[v5] == param1) {
            v3 = v5;
        }
    }

    GF_ASSERT(v3 != 0xff && v4 != 0xff);

    for (v5 = 0; v5 < param0->unk_00->unk_30; v5++) {
        if (Unk_ov117_02266954[param0->unk_00->unk_30][v5] == v4) {
            v1 = v5;
        }

        if (Unk_ov117_02266954[param0->unk_00->unk_30][v5] == v3) {
            v0 = v5;
        }
    }

    v2 = v0 - v1;

    if (v2 < 0) {
        v2 += param0->unk_00->unk_30;
    }

    return v2;
}

int ov117_0226235C(UnkStruct_ov117_02261280 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00->unk_30; v0++) {
        if (param0->unk_00->unk_2C[v0] == param1) {
            return v0;
        }
    }

    GF_ASSERT(0);
    return 0;
}

void ov117_0226238C(UnkStruct_ov117_02261280 *param0, int param1, u8 param2)
{
    GF_ASSERT(param0->unk_2FD4 == 0);

    param0->unk_2FD4 = param1;
    param0->unk_2FD8 = param2;
}

static BOOL ov117_022623B0(UnkStruct_ov117_02261280 *param0)
{
    int v0 = 0;

    switch (param0->unk_2FD4) {
    case 1:
        v0 = 1;
        break;
    case 2:
        v0 = 1;
        break;
    case 3:
        v0 = 1;
        break;
    case 4:
        if (param0->unk_2FCC == 1) {
            v0 = 1;
        }
        break;
    case 5:
        if (param0->unk_339C.unk_00 == 0) {
            v0 = 1;
        }
        break;
    case 6:
        if (param0->unk_174C.unk_1C == 1) {
            v0 = 1;
        }
        break;
    default:
        return 0;
    }

    if (v0 == 1) {
        CommTiming_StartSync(param0->unk_2FD8);

        if (ov117_02261FF4(param0) == 1) {
            param0->unk_2FD4 = 7;
        } else {
            param0->unk_2FD4 = 0;
        }

        return 1;
    }

    return 0;
}

static int ov117_02262448(UnkStruct_ov117_02261280 *param0, int param1)
{
    if (param0->unk_2FD4 != 7) {
        return 0;
    }

    if (param0->unk_2FD8 != param1) {
        return 0;
    }

    if (CommTiming_IsSyncState(param0->unk_2FD8) == 1) {
        param0->unk_2FD4 = 0;
        return 1;
    }

    return 0;
}

static int ov117_02262484(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02262664 *param1)
{
    switch (param1->unk_0C) {
    case 0:
        ov117_0226687C(param0, 1, param1->unk_18);
        param1->unk_0C++;
        break;
    case 1:
        if (ov117_02262448(param0, param1->unk_18) == 1) {
            param1->unk_18++;
            param1->unk_0C++;
        }
        break;
    case 2:
        ov117_022668B8(param0, param1->unk_18);
        param1->unk_0C++;
        break;
    case 3:
        if (ov117_02262448(param0, param1->unk_18) == 1) {
            param1->unk_18++;
            param1->unk_0C++;
        }
        break;
    case 4:
        ov117_022667F4(param0, param1->unk_18);
        param1->unk_0C++;
        break;
    case 5:
        if (ov117_02262448(param0, param1->unk_18) == 1) {
            param1->unk_18++;
            return 1;
        }
        break;
    }
    return 0;
}

static int ov117_0226251C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02262664 *param1)
{
    if (param0->unk_2FB4 > (43 * 30 + 12)) {
        if ((param0->unk_2FD4 == 0) && (param0->unk_2EDC.unk_00 == 0) && (param0->unk_2EF0.unk_00 == 0)) {
            return 1;
        } else {
            (void)0;
        }
    }

    switch (param1->unk_0C) {
    case 0:
        ov117_02266784(param0, param0->unk_2FC8, ov117_02263CF4(param0->unk_2FC8), param1->unk_18);
        param1->unk_0C++;
        break;
    case 1:
        if (ov117_02262448(param0, param1->unk_18) == 1) {
            param1->unk_18++;
            param1->unk_0C++;
        }
        break;
    case 2:
        if ((param0->unk_1428.unk_0C != 0) && (param0->unk_1428.unk_08 >= param0->unk_1428.unk_0C)) {
            param0->unk_2FC8++;
            ov117_02266730(param0, ov117_022622B8(param0), param1->unk_18);
            param1->unk_0C++;
        }
        break;
    case 3:
        if (ov117_02262448(param0, param1->unk_18) == 1) {
            param1->unk_18++;
            param1->unk_0C = 0;
        }
        break;
    }

    return 0;
}

static int ov117_022625F8(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02262664 *param1)
{
    switch (param1->unk_0C) {
    case 0:
        ov117_02266834(param0, param1->unk_18);
        param1->unk_0C++;
        break;
    case 1:
        if (ov117_02262448(param0, param1->unk_18) == 1) {
            param1->unk_18++;
            param1->unk_0C++;
        }
        break;
    case 2:
        if (param0->unk_20 == 8) {
            param1->unk_0C++;
        }
        break;
    case 3:
        param1->unk_14++;

        if (param1->unk_14 < 90) {
            break;
        }

        if (ov117_02266648(param0) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov117_02262664(UnkStruct_ov117_02261280 *param0)
{
    int v0;
    UnkStruct_ov117_02262664 *v1;

    if (ov117_02261FF4(param0) == 0) {
        return 0;
    }

    v1 = &param0->unk_B8;

    if (v1->unk_00 >= NELEMS(Unk_ov117_02266920)) {
        return 1;
    }

    v0 = Unk_ov117_02266920[v1->unk_00](param0, v1);

    if (v0 == 1) {
        v1->unk_00++;
        v1->unk_0C = 0;
        v1->unk_14 = 0;
        v1->unk_10 = 0;
    }

    return 0;
}

static void ov117_022626AC(Camera *camera)
{
    return;
}
