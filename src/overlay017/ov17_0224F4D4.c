#include "overlay017/ov17_0224F4D4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "overlay011/ov11_0221F840.h"
#include "overlay017/ov17_0223F118.h"
#include "overlay017/ov17_0224F18C.h"
#include "overlay017/ov17_02250744.h"
#include "overlay017/ov17_02251D6C.h"
#include "overlay017/struct_ov17_0224FCA0.h"
#include "overlay017/struct_ov17_0224FECC.h"

#include "bg_window.h"
#include "font.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon_sprite.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_pad.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay12);
FS_EXTERN_OVERLAY(overlay22);

static void ov17_0224FA24(void *param0);
static void ov17_0224FAAC(void *param0);
static void ov17_0224FAFC(SysTask *param0, void *param1);
static void ov17_0224FB34(BgConfig *param0);
static void ov17_0224FCA0(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FE1C(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FE48(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FE50(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FE58(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FE5C(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FE60(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FE68(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FE70(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_0224FEC8(UnkStruct_ov17_0224FCA0 *param0);
static int ov17_0224FECC(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_02250000(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_02250084(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_022504E4(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_02250548(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_0225062C(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_022506AC(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static void ov17_0224FDDC(void);
static int ov17_022500E8(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_02250178(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_02250284(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static int ov17_022503B0(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1);
static void ov17_0224FAE4(SysTask *param0, void *param1);

static int (*const Unk_ov17_02254B54[])(UnkStruct_ov17_0224FCA0 *, UnkStruct_ov17_0224FECC *) = {
    ov17_0224FECC,
    ov17_02250000,
    ov17_02250084,
    ov17_022500E8,
    ov17_02250178,
    ov17_02250284,
    ov17_022503B0,
    ov17_022504E4,
    ov17_02250548,
    ov17_0225062C,
    ov17_022506AC
};

static const RenderOamTemplate Unk_ov17_02254B0C = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const CharTransferTemplateWithModes Unk_ov17_02254AC4 = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_64K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

static const SpriteResourceCapacities Unk_ov17_02254AD8 = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

__attribute__((aligned(4))) static const u16 Unk_ov17_02254AB4[] = {
    0x14,
    0x23,
    0x8,
    0x1E,
    0x15,
    0x19,
    0x1E,
    0xF
};

int ov17_0224F4D4(OverlayManager *param0, int *param1)
{
    UnkStruct_ov17_0224FCA0 *v0;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_24, 0x70000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov17_0224FCA0), HEAP_ID_24);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224FCA0));

    v0->unk_0C = ov17_0223F140(HEAP_ID_24);
    v0->unk_00 = OverlayManager_Args(param0);
    v0->unk_00->unk_150 = v0;
    v0->unk_00->unk_154 = 3;
    v0->unk_10.unk_00 = &v0->unk_00->unk_00;

    ov17_0224FE1C(v0);

    v0->unk_127B = 0;
    v0->unk_10.unk_C0 = PaletteData_New(HEAP_ID_24);

    PaletteData_SetAutoTransparent(v0->unk_10.unk_C0, 1);
    PaletteData_AllocBuffer(v0->unk_10.unk_C0, 0, 0x200, HEAP_ID_24);
    PaletteData_AllocBuffer(v0->unk_10.unk_C0, 1, 0x200, HEAP_ID_24);
    PaletteData_AllocBuffer(v0->unk_10.unk_C0, 2, (((16 - 2) * 16) * sizeof(u16)), HEAP_ID_24);
    PaletteData_AllocBuffer(v0->unk_10.unk_C0, 3, 0x200, HEAP_ID_24);

    v0->unk_10.unk_20 = BgConfig_New(HEAP_ID_24);

    VramTransfer_New(64, HEAP_ID_24);
    SetAutorepeat(4, 8);

    ov17_0224FB34(v0->unk_10.unk_20);

    EnableTouchPad();
    InitializeTouchPad(4);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_24);

    v0->unk_10.unk_18 = SpriteSystem_Alloc(HEAP_ID_24);

    SpriteSystem_Init(v0->unk_10.unk_18, &Unk_ov17_02254B0C, &Unk_ov17_02254AC4, (16 + 16));
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_10.unk_1C = SpriteManager_New(v0->unk_10.unk_18);
    SpriteSystem_InitSprites(v0->unk_10.unk_18, v0->unk_10.unk_1C, (64 + 64));
    SpriteSystem_InitManagerWithCapacities(v0->unk_10.unk_18, v0->unk_10.unk_1C, &Unk_ov17_02254AD8);
    v0->unk_10.unk_04 = PokemonSpriteManager_New(HEAP_ID_24);

    ov17_0224FDDC();

    v0->unk_10.unk_B4 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0218, HEAP_ID_24);
    v0->unk_10.unk_B8 = StringTemplate_Default(HEAP_ID_24);
    v0->unk_10.unk_BC = Strbuf_Init((2 * 160), HEAP_ID_24);
    v0->unk_10.unk_C4 = sub_02012744(10, HEAP_ID_24);

    ov17_0224FE60(v0);
    ov17_0224FE70(v0);
    ov17_0224FCA0(v0);
    ov17_0224FE48(v0);
    ov17_0224FE58(v0);
    ov17_02250744(v0);

    sub_02039734();
    StartScreenTransition(1, 33, 33, 0x0, 6, 1, HEAP_ID_24);

    v0->unk_04 = SysTask_Start(ov17_0224FAFC, v0, 80000);
    v0->unk_850 = 1;

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_CONTEST, SEQ_CONTEST_DRESSING_ROOM, 1);
    sub_020959F4(v0->unk_00->unk_155);
    SetVBlankCallback(ov17_0224FA24, v0);

    v0->unk_08 = SysTask_ExecuteOnVBlank(ov17_0224FAE4, v0, 10);
    Sound_PlayEffect(SEQ_SE_DP_CON_007);

    return 1;
}

int ov17_0224F754(OverlayManager *param0, int *param1)
{
    UnkStruct_ov17_0224FCA0 *v0 = OverlayManager_Data(param0);
    int v1;

    sub_02094E98(v0->unk_00);

    switch (*param1) {
    case 0:
        if (IsScreenTransitionDone() == 1) {
            SetHBlankCallback(ov17_0224FAAC, v0);
            v0->unk_848 = ov17_0223F70C(HEAP_ID_24, v0->unk_10.unk_C0, Unk_ov17_02254AB4, NELEMS(Unk_ov17_02254AB4), 0xff, (50000 + 5000));
            *param1 = 1;
        }
        break;
    case 1:
        if (sub_02094EDC(v0->unk_00) == 1) {
            v1 = Unk_ov17_02254B54[v0->unk_84E](v0, &v0->unk_1270);

            if ((v1 == 1) || (v1 == 2)) {
                if (v1 == 1) {
                    v0->unk_84E++;
                } else {
                    v0->unk_84E = v0->unk_1270.unk_02;
                }

                MI_CpuClear8(&v0->unk_1270, sizeof(UnkStruct_ov17_0224FECC));
            } else if (v1 == 3) {
                *param1 = 2;
                MI_CpuClear8(&v0->unk_1270, sizeof(UnkStruct_ov17_0224FECC));
                break;
            }
        }

        ov17_0224F35C(&v0->unk_85C);
        ov17_0224F3D8(&v0->unk_85C, v0);

        if (v0->unk_1278 == 1) {
            *param1 = 2;
            MI_CpuClear8(&v0->unk_1270, sizeof(UnkStruct_ov17_0224FECC));
        }
        break;
    case 2:
        if (IsScreenTransitionDone() == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

int ov17_0224F86C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov17_0224FCA0 *v0 = OverlayManager_Data(param0);
    int v1;

    ParticleSystem_FreeAll();

    ov17_0224FE50(v0);
    ov17_0224FE5C(v0);
    ov17_0224FE68(v0);
    ov17_0224FEC8(v0);

    for (v1 = 0; v1 < 9; v1++) {
        Window_Remove(&v0->unk_10.unk_24[v1]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(v0->unk_10.unk_20, 1);
    Bg_FreeTilemapBuffer(v0->unk_10.unk_20, 2);
    Bg_FreeTilemapBuffer(v0->unk_10.unk_20, 3);
    Bg_ToggleLayer(4, 0);
    Bg_FreeTilemapBuffer(v0->unk_10.unk_20, 4);
    SpriteSystem_FreeResourcesAndManager(v0->unk_10.unk_18, v0->unk_10.unk_1C);
    SpriteSystem_Free(v0->unk_10.unk_18);
    VramTransfer_Free();

    ov17_022507C4(&v0->unk_10);

    PokemonSpriteManager_Free(v0->unk_10.unk_04);
    sub_020127BC(v0->unk_10.unk_C4);
    Font_Free(FONT_SUBSCREEN);

    PaletteData_FreeBuffer(v0->unk_10.unk_C0, 0);
    PaletteData_FreeBuffer(v0->unk_10.unk_C0, 1);
    PaletteData_FreeBuffer(v0->unk_10.unk_C0, 2);
    PaletteData_FreeBuffer(v0->unk_10.unk_C0, 3);
    PaletteData_Free(v0->unk_10.unk_C0);

    Strbuf_Free(v0->unk_10.unk_BC);
    StringTemplate_Free(v0->unk_10.unk_B8);
    MessageLoader_Free(v0->unk_10.unk_B4);

    Heap_FreeToHeap(v0->unk_10.unk_20);
    SysTask_Done(v0->unk_04);
    SysTask_Done(v0->unk_08);

    ov17_0223F1E0(v0->unk_0C);

    DisableTouchPad();
    OverlayManager_FreeData(param0);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    Heap_Destroy(HEAP_ID_24);
    sub_02095A24();

    MI_CpuFill16((void *)HW_BG_PLTT, 0x7fff, 0x200);
    MI_CpuFill16((void *)HW_OBJ_PLTT, 0x7fff, 0x200);
    MI_CpuFill16((void *)HW_DB_BG_PLTT, 0x7fff, 0x200);
    MI_CpuFill16((void *)HW_DB_OBJ_PLTT, 0x7fff, 0x200);

    sub_02039794();

    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay22));

    return 1;
}

static void ov17_0224FA24(void *param0)
{
    UnkStruct_ov17_0224FCA0 *v0 = param0;

    {
        G2_SetWnd0Position(v0->unk_851, v0->unk_852, v0->unk_853, v0->unk_854);
        G2_SetWnd1Position(v0->unk_855, v0->unk_856, v0->unk_857, v0->unk_858);
    }

    PokemonSpriteManager_UpdateCharAndPltt(v0->unk_10.unk_04);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(v0->unk_10.unk_C0);
    Bg_RunScheduledUpdates(v0->unk_10.unk_20);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov17_0224FAAC(void *param0)
{
    UnkStruct_ov17_0224FCA0 *v0 = param0;
    s32 v1;

    if (v0->unk_127B == 1) {
        v1 = GX_GetVCount();

        if ((v1 >= (0x13 - 1) * 8) && (v1 <= (0x13 - 0) * 8)) {
            Bg_SetPriority(1, 0);
        } else if (v1 < (0x13 - 1) * 8) {
            Bg_SetPriority(1, 2);
        }
    }
}

static void ov17_0224FAE4(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;

    if (v0->unk_127B == 1) {
        Bg_SetPriority(1, 2);
    }
}

static void ov17_0224FAFC(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;

    if (v0->unk_850 == 1) {
        PokemonSpriteManager_DrawSprites(v0->unk_10.unk_04);
        ov11_0221F8F0();
        SpriteSystem_DrawSprites(v0->unk_10.unk_1C);
        SpriteSystem_UpdateTransfer();
        G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
    }

    sub_02038A1C(24, v0->unk_10.unk_20);
}

static void ov17_0224FB34(BgConfig *param0)
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
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v1);
    }

    {
        BgTemplate v2[] = {
            {
                0,
                0,
                0x1000,
                0,
                3,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
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
                0x2000,
                0,
                4,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                1,
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

        Bg_InitFromTemplate(param0, 1, &v2[0], 0);
        Bg_ClearTilemap(param0, 1);
        Bg_SetOffset(param0, 1, 0, 0);
        Bg_SetOffset(param0, 1, 3, 0);
        Bg_InitFromTemplate(param0, 2, &v2[1], 0);
        Bg_ClearTilemap(param0, 2);
        Bg_SetOffset(param0, 2, 0, 0);
        Bg_SetOffset(param0, 2, 3, 0);
        Bg_InitFromTemplate(param0, 3, &v2[2], 0);
        Bg_ClearTilemap(param0, 3);
        Bg_SetOffset(param0, 3, 0, 0);
        Bg_SetOffset(param0, 3, 3, 0);

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
                GX_BG_SCRBASE_0x7800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        Bg_InitFromTemplate(param0, 4, &v3[0], 0);
        Bg_ClearTilemap(param0, 4);
        Bg_SetOffset(param0, 4, 0, 0);
        Bg_SetOffset(param0, 4, 3, 0);
    }
}

static void ov17_0224FCA0(UnkStruct_ov17_0224FCA0 *param0)
{
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[0], 1, 0x2, 0x13, 27, 4, 13, ((18 + 12) + 1));
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[1], 1, 6, 1 + 4 * 0, 8, 3, 13, (((18 + 12) + 1) + (27 * 4)));
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[2], 1, 6, 1 + 4 * 1, 8, 3, 13, ((((18 + 12) + 1) + (27 * 4)) + (8 * 3)));
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[3], 1, 6, 1 + 4 * 2, 8, 3, 13, (((((18 + 12) + 1) + (27 * 4)) + (8 * 3)) + (8 * 3)));
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[4], 1, 6, 1 + 4 * 3, 8, 3, 13, ((((((18 + 12) + 1) + (27 * 4)) + (8 * 3)) + (8 * 3)) + (8 * 3)));
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[5], 1, 0x10, 1 + 4 * 0, 8, 3, 13, (((((((18 + 12) + 1) + (27 * 4)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)));
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[6], 1, 0x10, 1 + 4 * 1, 8, 3, 13, ((((((((18 + 12) + 1) + (27 * 4)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)));
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[7], 1, 0x10, 1 + 4 * 2, 8, 3, 13, (((((((((18 + 12) + 1) + (27 * 4)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)));
    Window_Add(param0->unk_10.unk_20, &param0->unk_10.unk_24[8], 1, 0x10, 1 + 4 * 3, 8, 3, 13, ((((((((((18 + 12) + 1) + (27 * 4)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)) + (8 * 3)));
}

static void ov17_0224FDDC(void)
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

    ParticleSystem_ZeroAll();
}

static void ov17_0224FE1C(UnkStruct_ov17_0224FCA0 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_00 != NULL);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_39A.unk_30[v0] = 4 - 1 - v0;
    }

    ov17_02251D6C(param0);
}

static void ov17_0224FE48(UnkStruct_ov17_0224FCA0 *param0)
{
    ov17_02250A88(param0);
}

static void ov17_0224FE50(UnkStruct_ov17_0224FCA0 *param0)
{
    ov17_02250D8C(param0);
}

static void ov17_0224FE58(UnkStruct_ov17_0224FCA0 *param0)
{
    return;
}

static void ov17_0224FE5C(UnkStruct_ov17_0224FCA0 *param0)
{
    return;
}

static void ov17_0224FE60(UnkStruct_ov17_0224FCA0 *param0)
{
    ov17_022509AC(param0);
}

static void ov17_0224FE68(UnkStruct_ov17_0224FCA0 *param0)
{
    ov17_02250D24(param0);
}

static void ov17_0224FE70(UnkStruct_ov17_0224FCA0 *param0)
{
    Graphics_LoadTilesToBgLayer(45, 19, param0->unk_10.unk_20, 4, 0, 0, 1, HEAP_ID_24);
    Graphics_LoadTilemapToBgLayer(45, 20, param0->unk_10.unk_20, 4, 0, 0, 1, HEAP_ID_24);
    PaletteData_LoadBufferFromFileStart(param0->unk_10.unk_C0, 45, 34, 24, 1, 0, 0);
}

static void ov17_0224FEC8(UnkStruct_ov17_0224FCA0 *param0)
{
    return;
}

static int ov17_0224FECC(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    int v0;

    switch (param1->unk_00) {
    case 0:
        ov17_02251A1C(param0);

        {
            int v1;

            for (v1 = 0; v1 < 4; v1++) {
                if (param0->unk_00->unk_00.unk_118[v1].unk_08 == 0) {
                    break;
                }
            }

            GF_ASSERT(v1 != 4);

            param0->unk_434.unk_02 = v1;
        }

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_434.unk_03[v0] = param0->unk_39A.unk_35[v0];
        }

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_39A.unk_00[v0] = param0->unk_00->unk_00.unk_118[v0];
        }

        param1->unk_00++;
    case 1:
        if (param0->unk_00->unk_15B > 0) {
            if (param1->unk_04 < 120) {
                param1->unk_04++;
                break;
            }
        }

        if (ov17_0224F30C(&param0->unk_85C, param0, 1, &param0->unk_39A) == 1) {
            param1->unk_04 = 0;
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_02250000(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_434.unk_0F = 0;
        param0->unk_434.unk_11 = 0;
        param0->unk_434.unk_10 = 0;
        param0->unk_434.unk_08.unk_00 = param0->unk_39A.unk_30[0];
        param0->unk_434.unk_0E = 1;

        if (ov17_0224F30C(&param0->unk_85C, param0, 5, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_02250084(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_85C, param0, 6, &param0->unk_39A) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_022500E8(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_434.unk_0F = 0;
        param0->unk_434.unk_11 = 1;
        param0->unk_434.unk_10 = 1;
        param0->unk_434.unk_0E = 6;

        if (ov17_0224F30C(&param0->unk_85C, param0, 5, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        param1->unk_04++;

        if (param1->unk_04 > 60) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_02250178(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        switch (param0->unk_00->unk_00.unk_111) {
        case 2:
        case 1:
        case 0:
        case 3:
        case 4:
            break;
        default:
            return 1;
        }

        param0->unk_434.unk_0F = 0;
        param0->unk_434.unk_11 = 1;
        param0->unk_434.unk_10 = 1;
        param0->unk_434.unk_0E = 2;

        if (ov17_0224F30C(&param0->unk_85C, param0, 5, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        param0->unk_434.unk_07 = 0;

        if (ov17_0224F30C(&param0->unk_85C, param0, 9, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 4:
        param1->unk_04++;

        if (param1->unk_04 > 60) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_02250284(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        switch (param0->unk_00->unk_00.unk_111) {
        case 2:
        case 1:
        case 5:
        case 6:
            break;
        default:
            return 1;
        }

        param0->unk_434.unk_0F = 0;
        param0->unk_434.unk_11 = 1;
        param0->unk_434.unk_10 = 1;
        param0->unk_434.unk_08.unk_00 = param0->unk_39A.unk_30[0];
        param0->unk_434.unk_08.unk_04 = sub_020958FC(param0->unk_39A.unk_30[0]) + 1;
        param0->unk_434.unk_0E = 3;

        if (ov17_0224F30C(&param0->unk_85C, param0, 5, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        param0->unk_434.unk_07 = 1;

        if (ov17_0224F30C(&param0->unk_85C, param0, 9, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 4:
        param1->unk_04++;

        if (param1->unk_04 > 90) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_022503B0(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        switch (param0->unk_00->unk_00.unk_111) {
        case 2:
        case 0:
        case 7:
        case 8:
            break;
        default:
            return 1;
        }

        param0->unk_434.unk_0F = 0;
        param0->unk_434.unk_11 = 1;
        param0->unk_434.unk_10 = 1;
        param0->unk_434.unk_08.unk_00 = param0->unk_39A.unk_30[0];
        param0->unk_434.unk_08.unk_04 = sub_020958FC(param0->unk_39A.unk_30[0]) + 1;
        param0->unk_434.unk_0E = 4;

        if (ov17_0224F30C(&param0->unk_85C, param0, 5, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        param0->unk_434.unk_07 = 2;

        if (ov17_0224F30C(&param0->unk_85C, param0, 9, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 4:
        param1->unk_04++;

        if (param1->unk_04 > 15) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_022504E4(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_85C, param0, 7, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_02250548(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_434.unk_0F = 0;
        param0->unk_434.unk_11 = 1;
        param0->unk_434.unk_10 = 1;
        param0->unk_434.unk_08.unk_00 = param0->unk_434.unk_02;
        param0->unk_434.unk_08.unk_04 = sub_020958FC(param0->unk_434.unk_02) + 1;
        param0->unk_434.unk_0E = 5;

        if (ov17_0224F30C(&param0->unk_85C, param0, 5, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F30C(&param0->unk_85C, param0, 8, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }
    return 0;
}

static int ov17_0225062C(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_434.unk_0F = 0;
        param0->unk_434.unk_11 = 0;
        param0->unk_434.unk_10 = 0;
        param0->unk_434.unk_08.unk_00 = param0->unk_39A.unk_30[0];
        param0->unk_434.unk_0E = 0;

        if (ov17_0224F30C(&param0->unk_85C, param0, 5, &param0->unk_434) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_022506AC(UnkStruct_ov17_0224FCA0 *param0, UnkStruct_ov17_0224FECC *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_85C, param0, 10, NULL) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F30C(&param0->unk_85C, param0, 4, NULL) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_85C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 3;
        }

        break;
    }

    return 0;
}
