#include "overlay017/ov17_0223CB1C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay011/ov11_0221F840.h"
#include "overlay017/ov17_0223F118.h"
#include "overlay017/ov17_022476F8.h"
#include "overlay017/ov17_02247A48.h"
#include "overlay017/ov17_0224F18C.h"
#include "overlay017/struct_ov17_0223D60C.h"
#include "overlay017/struct_ov17_02247A48.h"
#include "overlay022/ov22_0225AF8C.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02014000.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay12);
FS_EXTERN_OVERLAY(overlay22);

static void ov17_0223D0C8(void *param0);
static void ov17_0223D164(SysTask *param0, void *param1);
static void ov17_0223D1B8(BGL *param0);
static void ov17_0223D324(UnkStruct_ov17_02247A48 *param0);
static void ov17_0223D390(UnkStruct_ov17_02247A48 *param0);
static void ov17_0223D3B8(UnkStruct_ov17_02247A48 *param0, NARC *param1);
static void ov17_0223D434(UnkStruct_ov17_02247A48 *param0);
static void ov17_0223D468(UnkStruct_ov17_02247A48 *param0, NARC *param1);
static void ov17_0223D498(UnkStruct_ov17_02247A48 *param0);
static void ov17_0223D4A8(UnkStruct_ov17_02247A48 *param0, NARC *param1);
static void ov17_0223D5AC(UnkStruct_ov17_02247A48 *param0);
static void ov17_0223D5B0(UnkStruct_ov17_02247A48 *param0, NARC *param1);
static void ov17_0223D608(UnkStruct_ov17_02247A48 *param0);
static int ov17_0223D60C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223D640(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223D99C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223DA78(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static void ov17_0223D350(void);
static int ov17_0223D6B8(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223D7DC(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223D82C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223D8DC(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223D96C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223D71C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);
static int ov17_0223D78C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1);

static int (*const Unk_ov17_02252F44[])(UnkStruct_ov17_02247A48 *, UnkStruct_ov17_0223D60C *) = {
    ov17_0223D60C,
    ov17_0223D640,
    ov17_0223D6B8,
    ov17_0223D71C,
    ov17_0223D82C,
    ov17_0223D7DC,
    ov17_0223D78C,
    ov17_0223D8DC,
    ov17_0223D96C,
    ov17_0223D99C,
    ov17_0223DA78
};

static const UnkStruct_ov104_0224133C Unk_ov17_02252EFC = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const UnkStruct_ov104_022412F4 Unk_ov17_02252EB4 = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_64K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

static const UnkStruct_ov104_02241308 Unk_ov17_02252EC8 = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

int ov17_0223CB1C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov17_02247A48 *v0;

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

    Heap_Create(3, 22, 0x70000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov17_02247A48), 22);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02247A48));

    v0->unk_08 = ov17_0223F140(22);
    v0->unk_00 = OverlayManager_Args(param0);
    v0->unk_00->unk_150 = v0;
    v0->unk_00->unk_154 = 0;
    v0->unk_0C.unk_00 = &v0->unk_00->unk_00;

    ov17_0223D390(v0);
    v0->unk_0C.unk_44 = sub_02002F38(22);

    sub_02003858(v0->unk_0C.unk_44, 1);
    sub_02002F70(v0->unk_0C.unk_44, 0, 0x200, 22);
    sub_02002F70(v0->unk_0C.unk_44, 1, 0x200, 22);
    sub_02002F70(v0->unk_0C.unk_44, 2, (((16 - 2) * 16) * sizeof(u16)), 22);
    sub_02002F70(v0->unk_0C.unk_44, 3, 0x200, 22);

    v0->unk_0C.unk_24 = sub_02018340(22);

    sub_0201DBEC(64, 22);
    SetAutorepeat(4, 8);

    ov17_0223D1B8(v0->unk_0C.unk_24);

    sub_0201E3D8();
    sub_0201E450(4);
    Font_InitManager(FONT_SUBSCREEN, 22);

    v0->unk_0C.unk_1C = sub_0200C6E4(22);

    sub_0200C73C(v0->unk_0C.unk_1C, &Unk_ov17_02252EFC, &Unk_ov17_02252EB4, (16 + 16));
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_0C.unk_20 = sub_0200C704(v0->unk_0C.unk_1C);

    sub_0200C7C0(v0->unk_0C.unk_1C, v0->unk_0C.unk_20, (64 + 64));
    sub_0200CB30(v0->unk_0C.unk_1C, v0->unk_0C.unk_20, &Unk_ov17_02252EC8);
    sub_0200964C(sub_0200C738(v0->unk_0C.unk_1C), 0, (256 * FX32_ONE));

    v0->unk_0C.unk_04 = sub_0200762C(22);
    ov17_0223D350();

    v0->unk_0C.unk_38 = MessageLoader_Init(0, 26, 209, 22);
    v0->unk_0C.unk_3C = StringTemplate_Default(22);
    v0->unk_0C.unk_40 = Strbuf_Init((2 * 160), 22);

    {
        NARC *v1;
        NARC *v2;

        v1 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 22);
        v2 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_OBJ, 22);

        ov17_0223D4A8(v0, v1);
        ov17_0223D5B0(v0, v1);
        ov17_0223D324(v0);
        ov17_0223D3B8(v0, v2);
        ov17_0223D468(v0, v2);

        NARC_dtor(v1);
        NARC_dtor(v2);
    }

    sub_020038B0(v0->unk_0C.unk_44, 0, 0, 0x7fff, 1, 16 * 16);
    sub_020038B0(v0->unk_0C.unk_44, 1, 0, 0x7fff, 1, 16 * 16);
    sub_020038B0(v0->unk_0C.unk_44, 2, 0, 0x7fff, 0, ((16 - 2) * 16));
    sub_020038B0(v0->unk_0C.unk_44, 3, 0, 0x7fff, 0, 16 * 16);
    sub_02039734();
    sub_0200F174(1, 27, 27, 0x0, 6, 1, 22);

    v0->unk_04 = SysTask_Start(ov17_0223D164, v0, 60000);
    v0->unk_4F6 = 1;

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02004234(0);
    sub_02004550(6, 1135, 1);
    sub_020959F4(v0->unk_00->unk_155);
    SetMainCallback(ov17_0223D0C8, v0);
    Sound_PlayEffect(1541);

    return 1;
}

int ov17_0223CDDC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov17_02247A48 *v0 = OverlayManager_Data(param0);
    int v1;

    sub_02094E98(v0->unk_00);

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done() == 1) {
            sub_02003178(v0->unk_0C.unk_44, 0x1, 0xffff, 6, 16, 0, 0x7fff);
            sub_02003178(v0->unk_0C.unk_44, 0x2, 0xffff, 6, 16, 0, 0x7fff);
            sub_02003178(v0->unk_0C.unk_44, 0x4, 0x3fff, 6, 16, 0, 0x7fff);
            sub_02003178(v0->unk_0C.unk_44, 0x8, 0xffff, 6, 16, 0, 0x7fff);
            Sound_PlayEffect(1765);
            *param1 = 1;
        }
        break;
    case 1:
        if (sub_02094EDC(v0->unk_00) == 1) {
            v1 = Unk_ov17_02252F44[v0->unk_4F4](v0, &v0->unk_F0C);

            if ((v1 == 1) || (v1 == 2)) {
                if (v1 == 1) {
                    v0->unk_4F4++;
                } else {
                    v0->unk_4F4 = v0->unk_F0C.unk_02;
                }

                MI_CpuClear8(&v0->unk_F0C, sizeof(UnkStruct_ov17_0223D60C));
            } else if ((v1 == 3) && (v0->unk_F14 == 1)) {
                *param1 = 2;
                MI_CpuClear8(&v0->unk_F0C, sizeof(UnkStruct_ov17_0223D60C));
                sub_0200F174(2, 16, 36, 0x0, 6, 1, 22);
                break;
            }
        }

        ov17_0224F35C(&v0->unk_4F8);
        ov17_0224F3D8(&v0->unk_4F8, v0);

        if ((v0->unk_F14 == 1) && (ov17_0224F3D0(&v0->unk_4F8) == 0) && (sub_02094EDC(v0->unk_00) == 0)) {
            *param1 = 2;
            MI_CpuClear8(&v0->unk_F0C, sizeof(UnkStruct_ov17_0223D60C));
            sub_0200F174(2, 16, 36, 0x0, 6, 1, 22);
        }
        break;
    case 2:
        if (v0->unk_F14 == 1) {
            if (ScreenWipe_Done() == 1) {
                return 1;
            }
        }
        break;
    }

    return 0;
}

int ov17_0223CF8C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov17_02247A48 *v0 = OverlayManager_Data(param0);
    int v1;

    sub_020141E4();

    ov17_0223D434(v0);
    ov17_0223D498(v0);
    ov17_0223D5AC(v0);
    ov17_0223D608(v0);

    for (v1 = 0; v1 < 1; v1++) {
        BGL_DeleteWindow(&v0->unk_0C.unk_28[v1]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    sub_02019044(v0->unk_0C.unk_24, 1);
    sub_02019044(v0->unk_0C.unk_24, 2);
    sub_02019044(v0->unk_0C.unk_24, 3);
    sub_02019120(4, 0);
    sub_02019044(v0->unk_0C.unk_24, 4);
    sub_0200D0B0(v0->unk_0C.unk_1C, v0->unk_0C.unk_20);
    sub_0200C8D4(v0->unk_0C.unk_1C);
    sub_0201DC3C();

    for (v1 = 0; v1 < 4; v1++) {
        if (v0->unk_F18[v1].unk_00 != NULL) {
            ov22_0225B020(v0->unk_F18[v1].unk_00);
        }
    }

    ov17_02247734(&v0->unk_0C);
    ov17_02247918(v0);

    sub_02007B6C(v0->unk_0C.unk_04);
    Font_Free(FONT_SUBSCREEN);
    sub_02002FA0(v0->unk_0C.unk_44, 0);
    sub_02002FA0(v0->unk_0C.unk_44, 1);
    sub_02002FA0(v0->unk_0C.unk_44, 2);
    sub_02002FA0(v0->unk_0C.unk_44, 3);
    sub_02002F54(v0->unk_0C.unk_44);
    StringTemplate_Free(v0->unk_0C.unk_3C);
    Strbuf_Free(v0->unk_0C.unk_40);
    MessageLoader_Free(v0->unk_0C.unk_38);
    Heap_FreeToHeap(v0->unk_0C.unk_24);
    SysTask_Done(v0->unk_04);

    ov17_0223F1E0(v0->unk_08);

    sub_0201E530();
    OverlayManager_FreeData(param0);
    SetMainCallback(NULL, NULL);
    DisableHBlank();
    Heap_Destroy(22);
    sub_02095A24();
    sub_02039794();
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay22));

    return 1;
}

static void ov17_0223D0C8(void *param0)
{
    UnkStruct_ov17_02247A48 *v0 = param0;

    {
        G2_SetWnd0Position(v0->unk_F58, v0->unk_F59, v0->unk_F5A, v0->unk_F5B);
        G2_SetWnd1Position(v0->unk_F5C, v0->unk_F5D, v0->unk_F5E, v0->unk_F5F);
    }

    sub_02008A94(v0->unk_0C.unk_04);

    {
        int v1;

        for (v1 = 0; v1 < 4; v1++) {
            if (v0->unk_F18[v1].unk_00 != NULL) {
                ov22_0225B06C(v0->unk_F18[v1].unk_00);
            }
        }
    }

    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_0C.unk_44);
    sub_0201C2B8(v0->unk_0C.unk_24);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov17_0223D164(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02247A48 *v0 = param1;

    if (v0->unk_4F6 == 1) {
        sub_02007768(v0->unk_0C.unk_04);

        {
            int v1;

            for (v1 = 0; v1 < 4; v1++) {
                if (v0->unk_F18[v1].unk_00 != NULL) {
                    ov22_0225AFF8(v0->unk_F18[v1].unk_00);
                }
            }
        }

        ov11_0221F8F0();
        sub_0200C7EC(v0->unk_0C.unk_20);
        sub_0200C808();

        G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
    }

    sub_02038A1C(22, v0->unk_0C.unk_24);
}

static void ov17_0223D1B8(BGL *param0)
{
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_C,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_AB,
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
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v1);
    }

    {
        UnkStruct_ov97_0222DB78 v2[] = {
            {
                0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x0c000,
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
                GX_BG_CHARBASE_0x14000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
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
        sub_020183C4(param0, 2, &v2[1], 0);
        sub_02019EBC(param0, 2);
        sub_02019184(param0, 2, 0, 0);
        sub_02019184(param0, 2, 3, 0);
        sub_020183C4(param0, 3, &v2[2], 0);
        sub_02019EBC(param0, 3);
        sub_02019184(param0, 3, 0, 0);
        sub_02019184(param0, 3, 3, 0);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
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
                GX_BG_SCRBASE_0x7800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0, 4, &v3[0], 0);
        sub_02019EBC(param0, 4);
        sub_02019184(param0, 4, 0, 0);
        sub_02019184(param0, 4, 3, 0);
    }
}

static void ov17_0223D324(UnkStruct_ov17_02247A48 *param0)
{
    BGL_AddWindow(param0->unk_0C.unk_24, &param0->unk_0C.unk_28[0], 1, 0x2, 0x13, 27, 4, 13, ((18 + 12) + 1));
}

static void ov17_0223D350(void)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    u32 v2, v3;

    v0 = NNS_GfdAllocTexVram(0x2000 * 4, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x20 * 4, 0, 0);

    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    v2 = NNS_GfdGetTexKeyAddr(v0);
    v3 = NNS_GfdGetPlttKeyAddr(v1);

    sub_02014000();
}

static void ov17_0223D390(UnkStruct_ov17_02247A48 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_00 != NULL);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_D2.unk_00[v0] = 4 - 1 - v0;
    }

    ov17_02247A48(param0);
}

static void ov17_0223D3B8(UnkStruct_ov17_02247A48 *param0, NARC *param1)
{
    SpriteRenderer_LoadPalette(param0->unk_0C.unk_44, 2, param0->unk_0C.unk_1C, param0->unk_0C.unk_20, param1, 7, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 33001);

    ov17_0224774C(param0->unk_0C.unk_1C, param0->unk_0C.unk_20, param1);
    ov17_0223F560(param0->unk_0C.unk_1C, param0->unk_0C.unk_20, param0->unk_0C.unk_44, 33001, -1, 33001, 33001);
    ov17_0223F630(&param0->unk_0C.unk_A8, param0->unk_0C.unk_1C, param0->unk_0C.unk_20, 33001, 33001, 33001, 33001, 0, 200, 3, 50000);
}

static void ov17_0223D434(UnkStruct_ov17_02247A48 *param0)
{
    ov17_02247798(param0->unk_0C.unk_20);
    ov17_0223F6C4(&param0->unk_0C.unk_A8);
    ov17_0223F5E8(param0->unk_0C.unk_20, 33001, -1, 33001, 33001);

    SpriteGfxHandler_UnloadPlttObjById(param0->unk_0C.unk_20, 33001);
}

static void ov17_0223D468(UnkStruct_ov17_02247A48 *param0, NARC *param1)
{
    sub_0200CD7C(param0->unk_0C.unk_44, 3, param0->unk_0C.unk_1C, param0->unk_0C.unk_20, 46, 8, 0, 2, NNS_G2D_VRAM_TYPE_2DSUB, 33002);
}

static void ov17_0223D498(UnkStruct_ov17_02247A48 *param0)
{
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_0C.unk_20, 33002);
}

static void ov17_0223D4A8(UnkStruct_ov17_02247A48 *param0, NARC *param1)
{
    int v0;

    sub_020070E8(param1, 23, param0->unk_0C.unk_24, 3, 0, 0, 1, 22);
    sub_0200710C(param1, 22, param0->unk_0C.unk_24, 3, 0, 0, 1, 22);
    sub_02019EBC(param0->unk_0C.unk_24, 1);
    PaletteSys_LoadPalette(param0->unk_0C.unk_44, 45, 35, 22, 0, 0, 0);
    PaletteSys_LoadPalette(param0->unk_0C.unk_44, 45, 36, 22, 0, 0x20, 13 * 16);

    v0 = Options_Frame(param0->unk_00->unk_196C);

    sub_0200DD0C(param0->unk_0C.unk_24, 1, 1, 15, v0, 22);
    PaletteSys_LoadPalette(param0->unk_0C.unk_44, 38, sub_0200DD08(v0), 22, 0, 0x20, 14 * 16);
    sub_020070E8(param1, 24, param0->unk_0C.unk_24, 2, 0, 0, 1, 22);
    sub_0200710C(param1, 21, param0->unk_0C.unk_24, 2, 0, 0, 1, 22);
    PaletteSys_LoadPalette(param0->unk_0C.unk_44, 45, 37, 22, 0, 0x20, 0xc * 16);
}

static void ov17_0223D5AC(UnkStruct_ov17_02247A48 *param0)
{
    return;
}

static void ov17_0223D5B0(UnkStruct_ov17_02247A48 *param0, NARC *param1)
{
    sub_020070E8(param1, 19, param0->unk_0C.unk_24, 4, 0, 0, 1, 22);
    sub_0200710C(param1, 20, param0->unk_0C.unk_24, 4, 0, 0, 1, 22);
    PaletteSys_LoadPalette(param0->unk_0C.unk_44, 45, 34, 22, 1, 0, 0);
}

static void ov17_0223D608(UnkStruct_ov17_02247A48 *param0)
{
    return;
}

static int ov17_0223D60C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (sub_0200384C(param0->unk_0C.unk_44) != 0) {
            break;
        }

        ov17_0223F334(param0->unk_00, 22);
        ov17_0223F374(param0->unk_00);
        param1->unk_00++;
        break;
    default:
        return 1;
        break;
    }

    return 0;
}

static int ov17_0223D640(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (sub_0209590C(param0->unk_00) == 1) {
            param0->unk_E0.unk_07 = 2;
        } else {
            param0->unk_E0.unk_07 = 1;
        }

        param0->unk_E0.unk_08 = 0;
        param0->unk_E0.unk_09 = 0;

        if (ov17_0224F30C(&param0->unk_4F8, param0, 13, &param0->unk_E0) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223D6B8(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_E0.unk_00 = param0->unk_D2.unk_00[param0->unk_D2.unk_04];

        if (ov17_0224F30C(&param0->unk_4F8, param0, 0, &param0->unk_E0) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223D71C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_E0.unk_0A = 0;
        param0->unk_E0.unk_0B = -16;
        param0->unk_E0.unk_0C = 16;
        param0->unk_E0.unk_0E = 0x0;

        if (ov17_0224F30C(&param0->unk_4F8, param0, 14, &param0->unk_E0) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223D78C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_4F8, param0, 15, NULL) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223D7DC(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_4F8, param0, 2, &param0->unk_E0) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223D82C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        switch (param0->unk_D2.unk_04) {
        case 0:
            param0->unk_E0.unk_07 = 3;
            break;
        case 1:
            param0->unk_E0.unk_07 = 4;
            break;
        case 2:
            param0->unk_E0.unk_07 = 5;
            break;
        default:
            param0->unk_E0.unk_07 = 6;
            break;
        }

        param0->unk_E0.unk_08 = 0;
        param0->unk_E0.unk_09 = 0;
        param0->unk_E0.unk_03.unk_00 = param0->unk_E0.unk_00;
        param1->unk_00++;
    case 1:
        if (ov17_0224F30C(&param0->unk_4F8, param0, 13, &param0->unk_E0) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223D8DC(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_E0.unk_01 = sub_02095928(param0->unk_00, param0->unk_E0.unk_00);
        param0->unk_E0.unk_02 = sub_0209598C(param0->unk_00, param0->unk_E0.unk_00);
        param1->unk_00++;
    case 1:
        if (ov17_0224F30C(&param0->unk_4F8, param0, 6, &param0->unk_E0) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223D96C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_D2.unk_04++;
        param1->unk_00++;
        break;
    default:
        if (param0->unk_D2.unk_04 >= 4) {
            return 1;
        }

        param1->unk_02 = 2;
        return 2;
    }

    return 0;
}

static int ov17_0223D99C(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_E0.unk_10 = 1765;

        if (ov17_0224F30C(&param0->unk_4F8, param0, 16, &param0->unk_E0) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        switch (param0->unk_00->unk_00.unk_111) {
        case 2:
            param0->unk_E0.unk_07 = 7;
            break;
        default:
            param0->unk_E0.unk_07 = 0;
            break;
        }

        param0->unk_E0.unk_08 = 0;
        param0->unk_E0.unk_09 = 0;
        param1->unk_00++;
    case 3:
        if (ov17_0224F30C(&param0->unk_4F8, param0, 13, &param0->unk_E0) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223DA78(UnkStruct_ov17_02247A48 *param0, UnkStruct_ov17_0223D60C *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_4F8, param0, 1, NULL) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_4F8, param0->unk_00->unk_00.unk_117 - param0->unk_00->unk_15B - 1, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 3;
        }
        break;
    }

    return 0;
}
