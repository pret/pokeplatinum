#include "overlay017/ov17_0223B140.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "overlay011/ov11_0221F840.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay017/const_ov17_022536B4.h"
#include "overlay017/ov17_0223F118.h"
#include "overlay017/ov17_0223F7E4.h"
#include "overlay017/ov17_02241270.h"
#include "overlay017/ov17_022413D8.h"
#include "overlay017/ov17_02243AC4.h"
#include "overlay017/ov17_02243C28.h"
#include "overlay017/ov17_02245F14.h"
#include "overlay017/ov17_02246ECC.h"
#include "overlay017/ov17_0224F080.h"
#include "overlay017/ov17_0224F18C.h"
#include "overlay017/struct_ov17_0223BCE8.h"
#include "overlay017/struct_ov17_0223BE58.h"
#include "overlay017/struct_ov17_02246F24.h"

#include "bg_window.h"
#include "font.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "screen_fade.h"
#include "sound.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_pad.h"
#include "unk_02012744.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay12);
FS_EXTERN_OVERLAY(overlay22);

static void ov17_0223B728(BgConfig *param0);
static void ov17_0223B858(UnkStruct_ov17_02246F24 *param0);
static void ov17_0223B884(void);
static void ov17_0223B6F0(SysTask *param0, void *param1);
static void ov17_0223B6BC(void *param0);
static void ov17_0223B8C4(UnkStruct_ov17_02246F24 *param0);
static int ov17_0223BCE8(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223BD58(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223BDCC(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223BE58(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223BF1C(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223BFB0(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223C004(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223C068(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223C100(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223C2DC(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223C330(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223C350(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223BE54(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223C81C(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223C888(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static int ov17_0223CA30(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1);
static void ov17_0223B8F8(UnkStruct_ov17_02246F24 *param0, NARC *param1);
static void ov17_0223B9A4(UnkStruct_ov17_02246F24 *param0);
static void ov17_0223BA10(UnkStruct_ov17_02246F24 *param0, NARC *param1);
static void ov17_0223BAD0(UnkStruct_ov17_02246F24 *param0);
static void ov17_0223BBA8(UnkStruct_ov17_02246F24 *param0, NARC *param1);
static void ov17_0223BCDC(UnkStruct_ov17_02246F24 *param0);
static void ov17_0223BCE0(UnkStruct_ov17_02246F24 *param0, NARC *param1);
static void ov17_0223BCE4(UnkStruct_ov17_02246F24 *param0);
void ov17_0223BB14(UnkStruct_ov17_02246F24 *param0, int param1, int param2);

static int (*const Unk_ov17_02252E10[])(UnkStruct_ov17_02246F24 *, UnkStruct_ov17_0223BCE8 *) = {
    ov17_0223BCE8,
    ov17_0223BD58,
    ov17_0223BDCC,
    ov17_0223BE54,
    ov17_0223BE58,
    ov17_0223BF1C,
    ov17_0223BFB0,
    ov17_0223C004,
    ov17_0223C068,
    ov17_0223C100,
    ov17_0223C2DC,
    ov17_0223C330,
    ov17_0223C350,
    ov17_0223C81C,
    ov17_0223C888,
    ov17_0223CA30
};

static const RenderOamTemplate Unk_ov17_02252DC8 = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const CharTransferTemplateWithModes Unk_ov17_02252D9C = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_64K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

static const SpriteResourceCapacities Unk_ov17_02252DB0 = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

int ov17_0223B140(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov17_02246F24 *v0;

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

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_21, 0x70000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov17_02246F24), HEAP_ID_21);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02246F24));

    v0->unk_08 = ov17_0223F140(HEAP_ID_21);
    v0->unk_00 = ApplicationManager_Args(appMan);
    v0->unk_00->unk_150 = v0;
    v0->unk_00->unk_154 = 2;
    v0->unk_0C.unk_00 = &v0->unk_00->unk_00;

    ov17_0223B8C4(v0);

    v0->unk_0C.unk_50 = PaletteData_New(HEAP_ID_21);

    PaletteData_SetAutoTransparent(v0->unk_0C.unk_50, 1);
    PaletteData_AllocBuffer(v0->unk_0C.unk_50, 0, 0x200, HEAP_ID_21);
    PaletteData_AllocBuffer(v0->unk_0C.unk_50, 1, 0x200, HEAP_ID_21);
    PaletteData_AllocBuffer(v0->unk_0C.unk_50, 2, (((16 - 2) * 16) * sizeof(u16)), HEAP_ID_21);
    PaletteData_AllocBuffer(v0->unk_0C.unk_50, 3, 0x200, HEAP_ID_21);

    v0->unk_0C.unk_24 = BgConfig_New(HEAP_ID_21);

    VramTransfer_New(64, HEAP_ID_21);
    SetAutorepeat(4, 8);

    v0->unk_7E4 = ov17_0223F88C(v0->unk_00, &v0->unk_0C, &v0->unk_220);

    ov17_0223B728(v0->unk_0C.unk_24);

    EnableTouchPad();
    InitializeTouchPad(4);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_21);

    v0->unk_0C.unk_18 = SpriteSystem_Alloc(21);
    SpriteSystem_Init(v0->unk_0C.unk_18, &Unk_ov17_02252DC8, &Unk_ov17_02252D9C, (16 + 16));
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_0C.unk_1C = SpriteManager_New(v0->unk_0C.unk_18);

    SpriteSystem_InitSprites(v0->unk_0C.unk_18, v0->unk_0C.unk_1C, (64 + 64));
    SpriteSystem_InitManagerWithCapacities(v0->unk_0C.unk_18, v0->unk_0C.unk_1C, &Unk_ov17_02252DB0);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(v0->unk_0C.unk_18), 0, ((192 + 80) << FX32_SHIFT));

    v0->unk_0C.unk_04 = PokemonSpriteManager_New(HEAP_ID_21);
    ov17_0223B884();

    v0->unk_0C.unk_20 = ov12_0221FCDC(HEAP_ID_21);
    ov12_0221FDC0(v0->unk_0C.unk_20, 1);

    v0->unk_0C.unk_38 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_TEXT, HEAP_ID_21);
    v0->unk_0C.unk_3C = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0205, HEAP_ID_21);
    v0->unk_0C.unk_40 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_EFFECTS, HEAP_ID_21);
    v0->unk_0C.unk_44 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0211, HEAP_ID_21);
    v0->unk_0C.unk_54 = sub_02012744((2 * 4), HEAP_ID_21);
    v0->unk_0C.unk_48 = StringTemplate_Default(HEAP_ID_21);
    v0->unk_0C.unk_4C = Strbuf_Init((3 * 160), HEAP_ID_21);

    {
        NARC *v1;
        NARC *v2;

        v1 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, HEAP_ID_21);
        v2 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_OBJ, HEAP_ID_21);

        ov17_0223BBA8(v0, v1);
        ov17_0223BCE0(v0, v1);
        ov17_0223B858(v0);
        ov17_02241428(v0);
        ov17_0223B8F8(v0, v2);
        ov17_0223BA10(v0, v2);

        NARC_dtor(v1);
        NARC_dtor(v2);
    }

    {
        u16 v3[4];
        int v4;

        for (v4 = 0; v4 < LEARNED_MOVES_MAX; v4++) {
            v3[v4] = Pokemon_GetValue(v0->unk_00->unk_00.unk_00[v0->unk_00->unk_00.unk_113], MON_DATA_MOVE1 + v4, NULL);
        }

        ov17_02240A80(v0->unk_7E4, v3);
    }

    ov17_0223F9C4(v0->unk_7E4, 0, 1, NULL);
    ov17_022415E4(&v0->unk_0C);

    sub_02039734();
    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UNK_31, FADE_TYPE_UNK_31, FADE_TO_BLACK, 6, 1, HEAP_ID_21);

    v0->unk_04 = SysTask_Start(ov17_0223B6F0, v0, 60000);
    v0->unk_7EC = 1;

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_CONTEST, SEQ_CONTEST_DRESSING_ROOM, 1);
    sub_020959F4(v0->unk_00->unk_155);
    SetVBlankCallback(ov17_0223B6BC, v0);

    return 1;
}

int ov17_0223B444(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov17_02246F24 *v0 = ApplicationManager_Data(appMan);
    int v1;

    sub_02094E98(v0->unk_00);

    switch (*param1) {
    case 0:
        if (IsScreenFadeDone() == TRUE) {
            *param1 = 1;
        }
        break;
    case 1:
        if (sub_02094EDC(v0->unk_00) == 1) {
            v1 = Unk_ov17_02252E10[v0->unk_7EA](v0, &v0->unk_160C);

            if ((v1 == 1) || (v1 == 2)) {
                if (v1 == 1) {
                    v0->unk_7EA++;
                } else {
                    v0->unk_7EA = v0->unk_160C.unk_02;
                }

                MI_CpuClear8(&v0->unk_160C, sizeof(UnkStruct_ov17_0223BCE8));
            } else if ((v1 == 3) && (v0->unk_1614 == 1)) {
                *param1 = 2;
                MI_CpuClear8(&v0->unk_160C, sizeof(UnkStruct_ov17_0223BCE8));
                StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_32, FADE_TYPE_UNK_32, FADE_TO_BLACK, 6, 1, HEAP_ID_21);
                break;
            }
        }

        ov17_0224F35C(&v0->unk_BF8);
        ov17_0224F3D8(&v0->unk_BF8, v0);

        if ((v0->unk_1614 == 1) && (ov17_0224F3D0(&v0->unk_BF8) == 0) && (sub_02094EDC(v0->unk_00) == 0)) {
            *param1 = 2;
            MI_CpuClear8(&v0->unk_160C, sizeof(UnkStruct_ov17_0223BCE8));
            StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_32, FADE_TYPE_UNK_32, FADE_TO_BLACK, 6, 1, HEAP_ID_21);
        }
        break;
    case 2:
        if (v0->unk_1614 == 1) {
            if (IsScreenFadeDone() == TRUE) {
                return 1;
            }
        }
        break;
    }

    return 0;
}

int ov17_0223B580(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov17_02246F24 *v0 = ApplicationManager_Data(appMan);
    int v1;

    ParticleSystem_FreeAll();

    ov12_0221FDF4(v0->unk_0C.unk_20);
    ov17_0223B9A4(v0);
    ov17_0223BAD0(v0);
    ov17_0223BCDC(v0);
    ov17_0223BCE4(v0);

    for (v1 = 0; v1 < 1; v1++) {
        Window_Remove(&v0->unk_0C.unk_28[v1]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(v0->unk_0C.unk_24, 1);
    Bg_FreeTilemapBuffer(v0->unk_0C.unk_24, 2);
    Bg_FreeTilemapBuffer(v0->unk_0C.unk_24, 3);

    ov17_0223F864(v0->unk_0C.unk_24);
    ov17_0223F960(v0->unk_7E4);

    SpriteSystem_FreeResourcesAndManager(v0->unk_0C.unk_18, v0->unk_0C.unk_1C);
    SpriteSystem_Free(v0->unk_0C.unk_18);
    VramTransfer_Free();

    ov17_022416E4(&v0->unk_0C);

    PokemonSpriteManager_Free(v0->unk_0C.unk_04);
    Font_Free(FONT_SUBSCREEN);
    sub_020127BC(v0->unk_0C.unk_54);

    PaletteData_FreeBuffer(v0->unk_0C.unk_50, 0);
    PaletteData_FreeBuffer(v0->unk_0C.unk_50, 1);
    PaletteData_FreeBuffer(v0->unk_0C.unk_50, 2);
    PaletteData_FreeBuffer(v0->unk_0C.unk_50, 3);
    PaletteData_Free(v0->unk_0C.unk_50);

    Strbuf_Free(v0->unk_0C.unk_4C);
    StringTemplate_Free(v0->unk_0C.unk_48);
    MessageLoader_Free(v0->unk_0C.unk_38);
    MessageLoader_Free(v0->unk_0C.unk_3C);
    MessageLoader_Free(v0->unk_0C.unk_40);
    MessageLoader_Free(v0->unk_0C.unk_44);

    Heap_Free(v0->unk_0C.unk_24);
    SysTask_Done(v0->unk_04);

    ov17_0223F1E0(v0->unk_08);

    DisableTouchPad();
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    Heap_Destroy(HEAP_ID_21);
    sub_02095A24();
    DestroyNetworkIcon();
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay22));

    return 1;
}

static void ov17_0223B6BC(void *param0)
{
    UnkStruct_ov17_02246F24 *v0 = param0;

    PokemonSpriteManager_UpdateCharAndPltt(v0->unk_0C.unk_04);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(v0->unk_0C.unk_50);
    Bg_RunScheduledUpdates(v0->unk_0C.unk_24);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov17_0223B6F0(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02246F24 *v0 = param1;

    if (v0->unk_7EC == 1) {
        PokemonSpriteManager_DrawSprites(v0->unk_0C.unk_04);
        ov11_0221F8F0();
        SpriteSystem_DrawSprites(v0->unk_0C.unk_1C);
        SpriteSystem_UpdateTransfer();
        G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
    }

    sub_02038A1C(21, v0->unk_0C.unk_24);
}

static void ov17_0223B728(BgConfig *param0)
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
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0,
            },
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2[0], 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
        Bg_SetOffset(param0, BG_LAYER_MAIN_1, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_MAIN_1, 3, 0);
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v2[1], 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
        Bg_SetOffset(param0, BG_LAYER_MAIN_2, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_MAIN_2, 3, 0);
        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v2[2], 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_3);
        Bg_SetOffset(param0, BG_LAYER_MAIN_3, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_MAIN_3, 3, 0);

        G2_SetBG0Priority(2);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        ov17_0223F80C(param0);
    }
}

static void ov17_0223B858(UnkStruct_ov17_02246F24 *param0)
{
    Window_Add(param0->unk_0C.unk_24, &param0->unk_0C.unk_28[0], 1, 11, 0x13, 20, 4, 0xd, ((0x8000 - 0x2000) / 32));
}

static void ov17_0223B884(void)
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

static void ov17_0223B8C4(UnkStruct_ov17_02246F24 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_00 != NULL);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_220.unk_01[v0] = param0->unk_00->unk_156[v0];
    }

    ov17_02243C28(param0);
}

static void ov17_0223B8F8(UnkStruct_ov17_02246F24 *param0, NARC *param1)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C.unk_50, 2, param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1, 0, 0, 6, NNS_G2D_VRAM_TYPE_2DMAIN, 33001);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C.unk_50, 2, param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1, 9, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33005);

    ov17_02243040(param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1);
    ov17_02242FA4(param0);
    ov17_02241928(&param0->unk_0C, param0->unk_00, param1);
    ov17_02241D94(&param0->unk_0C, param0->unk_00->unk_00.unk_10E, param1);
    ov17_022419AC(param0->unk_0C.unk_50, param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1);
    ov17_02241A24(&param0->unk_0C);
    ov17_02241E58(param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1);
    ov17_02242154(param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1);
}

static void ov17_0223B9A4(UnkStruct_ov17_02246F24 *param0)
{
    ov17_02241E24(&param0->unk_0C);
    ov17_0224197C(&param0->unk_0C);
    ov17_02242FC0(param0);
    ov17_022430F8(&param0->unk_0C);
    ov17_0224308C(param0->unk_0C.unk_1C);

    SpriteManager_UnloadPlttObjById(param0->unk_0C.unk_1C, 33001);
    SpriteManager_UnloadPlttObjById(param0->unk_0C.unk_1C, 33005);

    ov17_02241A64(&param0->unk_0C);
    ov17_02241A00(param0->unk_0C.unk_1C);

    ov17_02241EA4(param0->unk_0C.unk_1C);
    ov17_02241EF0(&param0->unk_0C);
    ov17_022421E0(param0->unk_0C.unk_1C);
    ov17_02242248(&param0->unk_0C);
}

static void ov17_0223BA10(UnkStruct_ov17_02246F24 *param0, NARC *param1)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C.unk_50, 3, param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1, 4, 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, 33007);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C.unk_50, 3, param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1, 9, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 33008);

    ov17_0224131C(param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1);
    ov17_02241270(param0->unk_0C.unk_18, param0->unk_0C.unk_1C, param1);
    ov17_0224F0F0(param0->unk_0C.unk_18, param0->unk_0C.unk_1C, 33012, 33012);

    {
        int v0, v1, v2;

        for (v0 = 0; v0 < LEARNED_MOVES_MAX; v0++) {
            v2 = Pokemon_GetValue(param0->unk_00->unk_00.unk_00[param0->unk_00->unk_00.unk_113], MON_DATA_MOVE1 + v0, NULL);

            if (v2 != 0) {
                v1 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_CONTEST_TYPE);
            } else {
                v1 = 0;
            }

            ov17_0224F0BC(param0->unk_0C.unk_18, param0->unk_0C.unk_1C, NNS_G2D_VRAM_TYPE_2DSUB, v1, 33014 + v0);
        }
    }
}

static void ov17_0223BAD0(UnkStruct_ov17_02246F24 *param0)
{
    SpriteManager_UnloadPlttObjById(param0->unk_0C.unk_1C, 33007);

    ov17_022413B4(param0->unk_0C.unk_1C);
    ov17_022412F0(param0->unk_0C.unk_1C);
    ov17_0224F140(param0->unk_0C.unk_1C, 33012, 33012);

    {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            ov17_0224F138(param0->unk_0C.unk_1C, 33014 + v0);
        }
    }
}

void ov17_0223BB14(UnkStruct_ov17_02246F24 *param0, int param1, int param2)
{
    if (param1 == 0) {
        Graphics_LoadTilesToBgLayer(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 3, param0->unk_0C.unk_24, 2, 0, 0x4000, 1, HEAP_ID_21);
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 5, param0->unk_0C.unk_24, 2, 0, 0, 1, HEAP_ID_21);
        Bg_SetPriority(BG_LAYER_MAIN_1, 1);
        Bg_SetPriority(BG_LAYER_MAIN_2, 0);

        ov17_02241428(param0);

        if (param2 == 1) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        }
    } else {
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 0x4000, 0, HEAP_ID_21);
        Bg_ClearTilemap(param0->unk_0C.unk_24, 2);
        Bg_SetPriority(BG_LAYER_MAIN_1, 0);
        Bg_SetPriority(BG_LAYER_MAIN_2, 1);
    }
}

static void ov17_0223BBA8(UnkStruct_ov17_02246F24 *param0, NARC *param1)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 1, param0->unk_0C.unk_24, 3, 0, 0, 1, HEAP_ID_21);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 2, param0->unk_0C.unk_24, 3, 0, 0, 1, HEAP_ID_21);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 3, param0->unk_0C.unk_24, 1, 0, 0, 1, HEAP_ID_21);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 4, param0->unk_0C.unk_24, 1, 0, 0, 1, HEAP_ID_21);

    ov17_0223BB14(param0, 0, 0);

    PaletteData_LoadBufferFromFileStart(param0->unk_0C.unk_50, 45, 30, 21, 0, 0, 0);

    {
        u16 *v0, *v1, *v2, *v3;

        v0 = Heap_AllocFromHeap(HEAP_ID_21, 0x20);
        v1 = Heap_AllocFromHeap(HEAP_ID_21, 0x20);
        v2 = PaletteData_GetUnfadedBuffer(param0->unk_0C.unk_50, 0);
        v3 = PaletteData_GetFadedBuffer(param0->unk_0C.unk_50, 0);

        MI_CpuCopy16(&v2[Unk_ov17_022536B4[0] * 16], v0, 0x20);
        MI_CpuCopy16(&v2[Unk_ov17_022536B4[param0->unk_00->unk_00.unk_113] * 16], v1, 0x20);
        MI_CpuCopy16(v0, &v2[Unk_ov17_022536B4[param0->unk_00->unk_00.unk_113] * 16], 0x20);
        MI_CpuCopy16(v1, &v2[Unk_ov17_022536B4[0] * 16], 0x20);
        MI_CpuCopy16(v0, &v3[Unk_ov17_022536B4[param0->unk_00->unk_00.unk_113] * 16], 0x20);
        MI_CpuCopy16(v1, &v3[Unk_ov17_022536B4[0] * 16], 0x20);

        Heap_Free(v0);
        Heap_Free(v1);
    }
}

static void ov17_0223BCDC(UnkStruct_ov17_02246F24 *param0)
{
    return;
}

static void ov17_0223BCE0(UnkStruct_ov17_02246F24 *param0, NARC *param1)
{
    return;
}

static void ov17_0223BCE4(UnkStruct_ov17_02246F24 *param0)
{
    return;
}

static int ov17_0223BCE8(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (param0->unk_00->unk_15B > 0) {
            if (param1->unk_04 < 120) {
                param1->unk_04++;
                break;
            }
        }

        if (ov17_0224F30C(&param0->unk_BF8, param0, 2, NULL) == 1) {
            param1->unk_04 = 0;
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223BD58(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    if (sub_0209590C(param0->unk_00) == 0) {
        return 1;
    }

    switch (param1->unk_00) {
    case 0:
        param0->unk_304.unk_C6.unk_0C = 0;
        param0->unk_304.unk_C6.unk_0E = 0;
        param0->unk_304.unk_C6.unk_0F = 0;

        if (ov17_0224F30C(&param0->unk_BF8, param0, 20, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223BDCC(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:

        if (sub_0209590C(param0->unk_00) == 1) {
            param0->unk_304.unk_C6.unk_0C = 45;
        } else {
            param0->unk_304.unk_C6.unk_0C = ov17_02243944(param0->unk_00->unk_00.unk_10F);
        }

        param0->unk_304.unk_C6.unk_0E = 0;
        param0->unk_304.unk_C6.unk_0F = 0;

        if (ov17_0224F30C(&param0->unk_BF8, param0, 20, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223BE54(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223BE58(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 8, NULL) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2: {
        UnkStruct_ov17_0223BE58 v0;
        int v1;

        ov17_02246ECC(param0, &v0);

        for (v1 = param0->unk_00->unk_00.unk_117; v1 < 4; v1++) {
            param0->unk_220.unk_06[v1] = v0.unk_00[v1];
            param0->unk_220.unk_0E[v1] = v0.unk_08[v1];
        }
    }
        param1->unk_00++;
        break;
    default:
        ov17_02245F44(param0, &param0->unk_304.unk_10);
        return 1;
    }

    return 0;
}

static int ov17_0223BF1C(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    int v0, v1, v2;

    v0 = param0->unk_220.unk_01[param0->unk_220.unk_05];

    param0->unk_304.unk_00 = v0;
    param0->unk_304.unk_01 = param0->unk_220.unk_05;
    param0->unk_304.unk_02 = param0->unk_220.unk_0E[v0];
    param0->unk_304.unk_03 = 0;

    for (v1 = 0; v1 < param0->unk_220.unk_05; v1++) {
        v2 = param0->unk_220.unk_01[v1];

        if (param0->unk_220.unk_0E[v2] == param0->unk_220.unk_0E[v0]) {
            param0->unk_304.unk_03 = 1;
        }
    }

    ov17_02243120(param0, &param0->unk_304.unk_C6.unk_00, v0);
    ov17_02243120(param0, &param0->unk_304.unk_C6.unk_06, v0);

    return 1;
}

static int ov17_0223BFB0(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 4, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223C004(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_304.unk_C6.unk_0C = 0;

        if (ov17_0224F30C(&param0->unk_BF8, param0, 6, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param0->unk_304.unk_C6.unk_0C = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223C068(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_304.unk_C6.unk_0C = 4;

        if (param0->unk_304.unk_03 == 1) {
            param0->unk_304.unk_C6.unk_0D = 5;
        } else {
            param0->unk_304.unk_C6.unk_0D = 0;
        }

        ov17_022460DC(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00);
        param1->unk_00++;
    case 1:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 7, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param0->unk_304.unk_C6.unk_0C = 0;
            param0->unk_304.unk_C6.unk_0D = 0;
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223C100(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:
        ov17_02245FB4(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00);
        param1->unk_00++;
        break;
    case 1:
        ov17_02246138(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00);
        param1->unk_00++;
    case 2:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 10, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 4:
        ov17_02246160(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00, param0->unk_304.unk_01);
        param1->unk_00++;
    case 5:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 11, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 6:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 7:
        ov17_02246228(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00, param0->unk_304.unk_01);
        param1->unk_00++;
    case 8:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 12, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 9:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 10:
        ov17_022463C4(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00, &param0->unk_304.unk_C6);
        param1->unk_00++;
    case 11:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 13, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 12:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        ov17_02246018(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00);
        return 1;
    }

    return 0;
}

static int ov17_0223C2DC(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    int v0;

    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 5, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223C330(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    param0->unk_220.unk_05++;

    if (param0->unk_220.unk_05 >= 4) {
        return 1;
    } else {
        param1->unk_02 = 5;
        return 2;
    }
}

static int ov17_0223C350(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    BOOL v0;

    switch (param1->unk_00) {
    case 0:
        param1->unk_00++;
        break;
    case 1:
        param0->unk_304.unk_00 = param0->unk_220.unk_01[param1->unk_04];
        param0->unk_304.unk_01 = param1->unk_04;
        param1->unk_00++;
    case 2:
        v0 = ov17_022462A4(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00, param0->unk_304.unk_01);

        if (v0 == 1) {
            param1->unk_00++;
        } else {
            param1->unk_00 = 5;
        }
        break;
    case 3:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 14, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 4:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 5:
        param1->unk_04++;

        if (param1->unk_04 >= 4) {
            param1->unk_04 = 0;
            param1->unk_00++;
        } else {
            param1->unk_00 = 1;
        }
        break;
    case 6: {
        int v1;

        for (v1 = 0; v1 < 4; v1++) {
            ov17_02246518(param0, &param0->unk_304.unk_10, v1, &param0->unk_304.unk_C6);
        }
    }
        param1->unk_00++;
        break;
    case 7: {
        int v2[(1 + 2)];
        int v3[(1 + 2)];
        int v4[(1 + 2)][4];
        int v5, v6, v7, v8;

        for (v5 = 0; v5 < (1 + 2); v5++) {
            v2[v5] = 0;
            v3[v5] = v5;

            for (v6 = 0; v6 < 4; v6++) {
                v4[v5][v6] = 4;
            }
        }

        for (v5 = 0; v5 < 4; v5++) {
            v8 = param0->unk_220.unk_01[v5];
            v2[param0->unk_220.unk_0E[v8]]++;

            for (v6 = 0; v6 < 4; v6++) {
                if (v4[param0->unk_220.unk_0E[v8]][v6] == 4) {
                    v4[param0->unk_220.unk_0E[v8]][v6] = v8;
                    break;
                }
            }
        }

        for (v5 = 0; v5 < (1 + 2) - 1; v5++) {
            for (v6 = (1 + 2) - 1; v6 > v5; v6--) {
                if (v2[v6 - 1] < v2[v6]) {
                    v7 = v2[v6];
                    v2[v6] = v2[v6 - 1];
                    v2[v6 - 1] = v7;

                    v7 = v3[v6];
                    v3[v6] = v3[v6 - 1];
                    v3[v6 - 1] = v7;
                }
            }
        }

        param0->unk_304.unk_D6_val1.unk_00 = v3[param1->unk_04];

        for (v5 = 0; v5 < 4; v5++) {
            param0->unk_304.unk_D6_val1.unk_01[v5] = v4[v3[param1->unk_04]][v5];
        }

        switch (v2[param1->unk_04]) {
        case 1:
            param0->unk_304.unk_C6.unk_0C = 10;
            break;
        case 2:
            param0->unk_304.unk_C6.unk_0C = 7;
            break;
        case 3:
            param0->unk_304.unk_C6.unk_0C = 8;
            break;
        case 4:
            param0->unk_304.unk_C6.unk_0C = 9;
            break;
        default:
            param1->unk_00 = 12;
            return 0;
        }
    }

        param0->unk_304.unk_C6.unk_0D = 0;

        ov17_02243120(param0, &param0->unk_304.unk_C6.unk_00, param0->unk_304.unk_00);
        ov17_02243120(param0, &param0->unk_304.unk_C6.unk_06, param0->unk_304.unk_00);

        param1->unk_00++;
    case 8:
        param1->unk_00++;
        break;
    case 9:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 16, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 10:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param0->unk_304.unk_C6.unk_0C = 0;
            param0->unk_304.unk_C6.unk_0D = 0;
            param1->unk_00++;
        }
        break;
    case 11:
        param1->unk_04++;

        if (param1->unk_04 < (1 + 2)) {
            param1->unk_00 = 7;
        } else {
            param1->unk_00++;
        }
        break;
    case 12:
        param1->unk_04 = 0;
        param1->unk_00++;
        break;
    case 13:
        param0->unk_304.unk_00 = param0->unk_220.unk_01[param1->unk_04];
        param0->unk_304.unk_01 = param1->unk_04;
        param1->unk_00++;
    case 14:
        v0 = ov17_02246304(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00, param0->unk_304.unk_01);

        if (v0 == 0) {
            param1->unk_00 = 17;
        } else {
            param1->unk_00++;
        }
        break;
    case 15:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 17, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 16:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param0->unk_304.unk_C6.unk_0C = 0;
            param0->unk_304.unk_C6.unk_0D = 0;
            param1->unk_00++;
        }
        break;
    case 17:
        param1->unk_04++;

        if (param1->unk_04 < 4) {
            param1->unk_00 = 13;
        } else {
            param1->unk_00++;
        }
        break;
    case 18:
        param1->unk_04 = 0;
        param1->unk_00++;
        break;
    case 19:
        ov17_022460C8(&param0->unk_304.unk_10);
        param1->unk_00++;
    case 20:
        param0->unk_304.unk_00 = param0->unk_220.unk_01[param1->unk_04];
        param0->unk_304.unk_01 = param1->unk_04;
        param1->unk_00++;
    case 21:
        v0 = ov17_02246364(param0, &param0->unk_304.unk_10, param0->unk_304.unk_00, param0->unk_304.unk_01);

        if (v0 == 1) {
            param1->unk_00++;
        } else {
            param1->unk_00 = 24;
        }
        break;
    case 22:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 15, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 23:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 24:
        param1->unk_04++;

        if (param1->unk_04 >= 4) {
            param1->unk_04 = 0;
            param1->unk_00++;
        } else {
            param1->unk_00 = 20;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223C81C(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0:
        param1->unk_00++;
        break;
    case 1:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 18, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223C888(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    int v0;

    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 21, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2: {
        int v1;

        v1 = 0;

        for (v0 = 0; v0 < 4; v0++) {
            if (param0->unk_304.unk_10.unk_00[v0].unk_28_4 != 0) {
                v1++;
            }
        }

        if ((param0->unk_220.unk_00 < 4 - 1) && (v1 < 4)) {
            param0->unk_304.unk_C6.unk_0C = 42;
        } else {
            param0->unk_304.unk_C6.unk_0C = 0;
        }
    }
        param0->unk_304.unk_C6.unk_0E = 0;
        param0->unk_304.unk_C6.unk_0F = 0;

        if (ov17_0224F30C(&param0->unk_BF8, param0, 20, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 4:
        ov17_02246044(param0, &param0->unk_304.unk_10);
        ov17_02243B0C(&param0->unk_220);

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_220.unk_26[v0] = param0->unk_220.unk_06[v0];
        }

        param0->unk_220.unk_00++;
        param1->unk_00++;
        break;
    case 5:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 19, &param0->unk_220) == 1) {
            param1->unk_00++;
        }
        break;
    case 6:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (param0->unk_220.unk_00 >= 4) {
            param1->unk_02 = 15;
            return 2;
        } else {
            param0->unk_220.unk_05 = 0;
            param1->unk_02 = 3;
            return 2;
        }
        break;
    }

    return 0;
}

static int ov17_0223CA30(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_0223BCE8 *param1)
{
    switch (param1->unk_00) {
    case 0: {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_00->unk_00.unk_118[v0].unk_06 = param0->unk_220.unk_12[v0];
        }
    }
        param1->unk_00++;

    case 1:
        param0->unk_304.unk_C6.unk_0C = 43;
        param0->unk_304.unk_C6.unk_0D = 0;

        if (ov17_0224F30C(&param0->unk_BF8, param0, 3, &param0->unk_304) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        if (ov17_0224F30C(&param0->unk_BF8, param0, 1, NULL) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_BF8, param0->unk_00->unk_00.unk_117 - param0->unk_00->unk_15B - 1, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 3;
        }
        break;
    }

    return 0;
}
