#include "overlay113/ov113_0225C700.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/species.h"

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay066/struct_ov66_0223127C.h"
#include "overlay066/struct_ov66_02232B20.h"
#include "overlay066/struct_ov66_022589B4.h"
#include "overlay113/ov113_0225E368.h"
#include "overlay113/ov113_02260620.h"
#include "overlay113/ov113_022607D8.h"
#include "overlay113/struct_ov113_0225CA04.h"
#include "overlay113/struct_ov113_0225EB20.h"
#include "overlay113/struct_ov113_022607EC.h"
#include "overlay113/struct_ov113_02260818.h"

#include "bg_window.h"
#include "camera.h"
#include "char_transfer.h"
#include "easy3d_object.h"
#include "font.h"
#include "fx_util.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "unk_02012744.h"
#include "unk_02015920.h"
#include "unk_0202419C.h"
#include "unk_020393C8.h"
#include "vram_transfer.h"

typedef struct {
    Easy3DModel unk_00;
    Easy3DObject unk_10;
} UnkStruct_ov113_0225DBCC_sub1;

typedef struct {
    FontOAM *unk_00;
    CharTransferAllocation unk_04;
    u16 unk_10;
} UnkStruct_ov113_0225E250;

typedef struct UnkStruct_ov113_0225DBCC_t {
    UnkStruct_ov66_0223127C *unk_00;
    SaveData *saveData;
    BgConfig *unk_08;
    PaletteData *unk_0C;
    UnkStruct_02012744 *unk_10;
    G3DPipelineBuffers *unk_14;
    SysTask *unk_18;
    SpriteSystem *unk_1C;
    SpriteManager *unk_20;
    UnkStruct_02015920 *unk_24;
    u8 unk_28;
    u8 unk_29;
    StringTemplate *unk_2C;
    MessageLoader *unk_30;
    Window unk_34[8];
    Window unk_B4;
    Strbuf *unk_C4;
    u8 unk_C8;
    Camera *camera;
    fx32 unk_D0;
    fx32 unk_D4;
    UnkStruct_ov113_0225DBCC_sub1 unk_D8;
    NARC *unk_160;
    NARC *unk_164;
    UnkStruct_ov113_022607EC unk_168;
    s32 unk_170[8];
    int unk_190;
    UnkStruct_ov113_0225EB20 unk_194;
    UnkStruct_ov113_02260818 unk_8D8[6];
    u8 unk_920;
    u8 unk_921;
    ManagedSprite *unk_924[6];
    ManagedSprite *unk_93C[6];
    ManagedSprite *unk_954[6];
    ManagedSprite *unk_96C;
    ManagedSprite *unk_970[8];
    ManagedSprite *unk_990[3];
    u16 unk_99C[8];
    u16 unk_9AC[8];
    int unk_9BC;
    u16 unk_9C0[2048];
    UnkStruct_ov113_0225E250 unk_19C0;
    int unk_19D4;
    int unk_19D8;
    int unk_19DC;
    BOOL unk_19E0;
} UnkStruct_ov113_0225DBCC;

static void ov113_0225CEF0(SysTask *param0, void *param1);
static void ov113_0225CF18(void *param0);
static void ov113_0225CF58(BgConfig *param0);
static void ov113_0225D12C(BgConfig *param0);
static void ov113_0225D160(UnkStruct_ov113_0225DBCC *param0, NARC *param1);
static void ov113_0225DBCC(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225DC4C(UnkStruct_ov113_0225DBCC *param0);
static G3DPipelineBuffers *ov113_0225DC6C(int heapID);
static void ov113_0225DC88(void);
static void ov113_0225DD0C(G3DPipelineBuffers *param0);
static void ov113_0225D9FC(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225DA9C(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225DAA8(UnkStruct_ov113_0225DBCC *param0, NARC *param1);
static void ov113_0225DAFC(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225DB08(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225E364(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225DD14(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225DD24(UnkStruct_ov113_0225DBCC *param0, UnkStruct_ov113_0225CA04 *param1);
static void ov113_0225DD4C(int param0, SaveData *saveData, UnkStruct_ov113_02260818 *param2);
static void ov113_0225D304(UnkStruct_ov113_0225DBCC *param0, NARC *param1);
static void ov113_0225D630(UnkStruct_ov113_0225DBCC *param0, NARC *param1);
static void ov113_0225D484(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225D5D8(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225D6F8(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225D7A4(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225D7CC(UnkStruct_ov113_0225DBCC *param0);
static BOOL ov113_0225D938(int param0, int param1, ManagedSprite *param2, NARC *param3, NARC *param4, NNS_G2D_VRAM_TYPE param5, BOOL param6);
static void ov113_0225E068(UnkStruct_ov113_0225DBCC *param0, int param1);
static void ov113_0225E0D4(UnkStruct_ov113_0225DBCC *param0, int param1);
static void ov113_0225E118(UnkStruct_ov113_0225DBCC *param0);
static int ov113_0225DE98(UnkStruct_ov113_0225DBCC *param0);
static void ov113_0225E15C(UnkStruct_ov113_0225DBCC *param0, UnkStruct_ov113_0225E250 *param1, const Strbuf *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9);
static void ov113_0225E250(UnkStruct_ov113_0225E250 *param0);
static void ov113_0225E264(const Strbuf *param0, int param1, int *param2, int *param3);
static void ov113_0225E294(UnkStruct_ov113_0225DBCC *param0);
static BOOL ov113_0225E318(UnkStruct_ov113_0225DBCC *param0, int param1);

static const CameraAngle Unk_ov113_022608B4 = {
    0x0,
    0x0,
    0x0
};

static const RenderOamTemplate Unk_ov113_02260954 = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const CharTransferTemplateWithModes Unk_ov113_022608E8 = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_128K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

static const SpriteResourceCapacities Unk_ov113_022608FC = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

__attribute__((aligned(4))) static const u8 Unk_ov113_022608C8[][2] = {
    { 0x7, 0x5 },
    { 0x16, 0x5 },
    { 0x7, 0xA },
    { 0x16, 0xA },
    { 0x7, 0xF },
    { 0x16, 0xF },
    { 0x7, 0x14 },
    { 0x16, 0x14 }
};

__attribute__((aligned(4))) static const s16 Unk_ov113_02260934[][2] = {
    { 0x20, 0x30 },
    { 0x98, 0x30 },
    { 0x20, 0x58 },
    { 0x98, 0x58 },
    { 0x20, 0x80 },
    { 0x98, 0x80 },
    { 0x20, 0xA8 },
    { 0x98, 0xA8 }
};

__attribute__((aligned(4))) static const s16 Unk_ov113_02260914[][2] = {
    { 0x48, 0x30 },
    { 0xC0, 0x30 },
    { 0x48, 0x58 },
    { 0xC0, 0x58 },
    { 0x48, 0x80 },
    { 0xC0, 0x80 },
    { 0x48, 0xA8 },
    { 0xC0, 0xA8 }
};

__attribute__((aligned(4))) static const u16 Unk_ov113_02260AD4[][4] = {
    { 0x2, 0x4, 0xE, 0x4 },
    { 0x11, 0x4, 0xE, 0x4 },
    { 0x2, 0x9, 0xE, 0x4 },
    { 0x11, 0x9, 0xE, 0x4 },
    { 0x2, 0xE, 0xE, 0x4 },
    { 0x11, 0xE, 0xE, 0x4 },
    { 0x2, 0x13, 0xE, 0x4 },
    { 0x11, 0x13, 0xE, 0x4 }
};

static const u16 Unk_ov113_022608AC[] = {
    0x15,
    0x35,
    0x35,
    0x55
};

static const SpriteTemplate Unk_ov113_02260A04 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x35,
    0x1,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2717, 0x2711, 0x2712, 0x2712, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov113_02260A38 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x36,
    0x2,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2717, 0x2711, 0x2712, 0x2712, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov113_02260A6C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x34,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2711, 0x2712, 0x2711, 0x2711, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov113_02260AA0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x32,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2718, 0x2711, 0x2713, 0x2713, 0xFFFFFFFF, 0xFFFFFFFF },
    0x0,
    0x0
};

static const SpriteTemplate Unk_ov113_0226099C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x32,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2719, 0x2714, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov113_022609D0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x33,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x271A, 0x2714, 0x2715, 0x2715, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

int ov113_0225C700(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov113_0225DBCC *v0;

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

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_118, 0x50000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov113_0225DBCC), HEAP_ID_118);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov113_0225DBCC));

    v0->unk_00 = ApplicationManager_Args(appMan);
    v0->saveData = ov66_0222E0C4(v0->unk_00->unk_00);
    v0->unk_19E0 = ov66_0222E0C8(v0->unk_00->unk_00);

    ov113_0225DD14(v0);
    ov113_0225DD4C(v0->unk_00->unk_04, v0->saveData, v0->unk_8D8);

    v0->unk_19D4 = (32 << 8);
    v0->unk_19D8 = v0->unk_19D4;
    v0->unk_14 = ov113_0225DC6C(HEAP_ID_118);
    v0->unk_0C = PaletteData_New(HEAP_ID_118);

    PaletteData_SetAutoTransparent(v0->unk_0C, 1);
    PaletteData_AllocBuffer(v0->unk_0C, 0, 0x200, HEAP_ID_118);
    PaletteData_AllocBuffer(v0->unk_0C, 1, 0x200, HEAP_ID_118);
    PaletteData_AllocBuffer(v0->unk_0C, 2, 0x200 - 0x40, HEAP_ID_118);
    PaletteData_AllocBuffer(v0->unk_0C, 3, 0x200, HEAP_ID_118);
    PaletteData_SetAutoTransparent(v0->unk_0C, 1);

    v0->unk_08 = BgConfig_New(HEAP_ID_118);

    VramTransfer_New(64, HEAP_ID_118);
    SetAutorepeat(4, 8);

    ov113_0225CF58(v0->unk_08);

    EnableTouchPad();
    InitializeTouchPad(4);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_118);

    v0->unk_2C = StringTemplate_Default(HEAP_ID_118);
    v0->unk_30 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0650, HEAP_ID_118);
    v0->unk_10 = sub_02012744(4, HEAP_ID_118);
    v0->unk_160 = NARC_ctor(NARC_INDEX_GRAPHIC__FOOTPRINT_BOARD, HEAP_ID_118);
    v0->unk_164 = NARC_ctor(NARC_INDEX_POKETOOL__POKEFOOT__POKEFOOT, HEAP_ID_118);

    ov113_0225D160(v0, v0->unk_160);
    ov113_0225DAA8(v0, v0->unk_160);
    ov113_0225D9FC(v0);
    ov113_0225DBCC(v0);

    v0->unk_C4 = Strbuf_Init(256, HEAP_ID_118);
    v0->unk_1C = SpriteSystem_Alloc(118);

    SpriteSystem_Init(v0->unk_1C, &Unk_ov113_02260954, &Unk_ov113_022608E8, 16 + 16);
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_20 = SpriteManager_New(v0->unk_1C);

    SpriteSystem_InitSprites(v0->unk_1C, v0->unk_20, 64 + 64);
    SpriteSystem_InitManagerWithCapacities(v0->unk_1C, v0->unk_20, &Unk_ov113_022608FC);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(v0->unk_1C), 0, (192 + 80) << FX32_SHIFT);
    sub_02039734();

    ov113_0225E368(&v0->unk_194, v0->unk_19E0);
    ov113_0225D304(v0, v0->unk_160);
    ov113_0225D630(v0, v0->unk_160);
    ov113_0225D484(v0);
    ov113_0225D6F8(v0);
    ov113_0225D7CC(v0);

    v0->unk_24 = sub_02015920(HEAP_ID_118);

    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_118);

    if (v0->unk_00->unk_00 != NULL) {
        ov66_0222E31C(v0->unk_00->unk_00, 1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);

    gSystem.whichScreenIs3D = DS_SCREEN_SUB;

    GXLayers_SwapDisplay();
    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);

    v0->unk_18 = SysTask_Start(ov113_0225CEF0, v0, 60000);

    SetVBlankCallback(ov113_0225CF18, v0);

    return 1;
}

int ov113_0225CA04(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov113_0225DBCC *v0 = ApplicationManager_Data(appMan);

    ov113_0225E3F0(&v0->unk_194, v0->camera, v0->unk_9BC, v0->unk_00->unk_04);

    switch (*param1) {
    case 0:
        v0->unk_168.unk_00 = 1;
        ov113_022607D8(v0);

        {
            UnkStruct_ov113_0225CA04 v1;
            ov113_0225DD24(v0, &v1);
        }
        (*param1)++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            v0->unk_9BC = 1;
            (*param1)++;
        }
        break;
    case 2:
        if (gSystem.touchPressed && (gSystem.touchY < 160)) {
            if (ov113_0225E318(v0, (32 << 8) / 6) == 1) {
                v0->unk_8D8[v0->unk_920].unk_09 = gSystem.touchX;
                v0->unk_8D8[v0->unk_920].unk_0A = gSystem.touchY;

                ov113_0225DDC0(v0, &v0->unk_8D8[v0->unk_920], v0->unk_168.unk_04);
                ov113_02260818(&v0->unk_8D8[v0->unk_920]);
            } else {
                (void)0;
            }
        }

        {
            int v2;
            v2 = ov113_02260748(v0->unk_8D8, v0->unk_920);

            if (v2 < 6) {
                v0->unk_920 = v2;
                ov113_0225E068(v0, v2);
            } else if (((*param1) == 2) && (v2 == 0xfe)) {
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
                PaletteData_Blend(v0->unk_0C, 0, 0 * 16 + 9, 1, 8, 0x0);
                PaletteData_Blend(v0->unk_0C, 2, v0->unk_921 * 16, 16, 8, 0x0);
                *param1 = 3;
            }
        }
        break;
    case 3:
        Window_FillTilemap(&v0->unk_B4, 0xf);
        Window_DrawMessageBoxWithScrollCursor(&v0->unk_B4, 0, 1, 14);
        MessageLoader_GetStrbuf(v0->unk_30, 2, v0->unk_C4);
        v0->unk_C8 = Text_AddPrinterWithParams(&v0->unk_B4, FONT_MESSAGE, v0->unk_C4, 0, 0, Options_TextFrameDelay(SaveData_GetOptions(v0->saveData)), NULL);
        (*param1)++;
        break;
    case 4:
        if (Text_IsPrinterActive(v0->unk_C8) == 0) {
            UnkStruct_02015958 v3;

            v3.unk_00 = v0->unk_08;
            v3.unk_04 = 1;
            v3.unk_08 = (1 + (18 + 12));
            v3.unk_0C = 11;
            v3.unk_10 = 25;
            v3.unk_11 = 6;

            sub_02015958(v0->unk_24, &v3);

            v0->unk_28 = 1;
            (*param1)++;
        }

        break;
    case 5:
        PaletteData_LoadBufferFromHardware(v0->unk_0C, 0, 11 * 16, 0x20 * 2);
        {
            u32 v4 = sub_020159FC(v0->unk_24);

            switch (v4) {
            case 1:
                sub_02015A54(v0->unk_24);
                v0->unk_28 = 0;
                Window_EraseMessageBox(&v0->unk_B4, 0);
                v0->unk_168.unk_00 = 0;
                v0->unk_9BC = 3;
                *param1 = 9;
                break;
            case 2:
                sub_02015A54(v0->unk_24);
                v0->unk_28 = 0;
                Window_EraseMessageBox(&v0->unk_B4, 0);
                PaletteData_Blend(v0->unk_0C, 0, 0 * 16 + 9, 1, 0, 0x0);
                PaletteData_Blend(v0->unk_0C, 2, v0->unk_921 * 16, 16, 0, 0x0);
                *param1 = 2;
                break;
            }
        }
        break;
    case 6:
        Window_FillTilemap(&v0->unk_B4, 0xf);
        Window_DrawMessageBoxWithScrollCursor(&v0->unk_B4, 0, 1, 14);
        MessageLoader_GetStrbuf(v0->unk_30, 3, v0->unk_C4);
        v0->unk_C8 = Text_AddPrinterWithParams(&v0->unk_B4, FONT_MESSAGE, v0->unk_C4, 0, 0, Options_TextFrameDelay(SaveData_GetOptions(v0->saveData)), NULL);
        (*param1)++;
        break;
    case 7:
        if (Text_IsPrinterActive(v0->unk_C8) == 0) {
            (*param1)++;
        }
        break;
    case 8:
        v0->unk_29++;

        if (v0->unk_29 > 90) {
            *param1 = 9;
        }
        break;
    case 9:
        if (IsScreenFadeDone() == FALSE) {
            FinishScreenFade();
        }

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_118);
        (*param1)++;
        break;
    case 10:
        if (IsScreenFadeDone() == TRUE) {
            (*param1)++;
        }
        break;
    default:
        ov66_02232DC8();
        return 1;
    }

    ov113_0225E118(v0);
    ov113_0225E294(v0);

    if (v0->unk_9BC == 1) {
        v0->unk_190++;

        if (v0->unk_190 > 30) {
            v0->unk_190 = 0;
            ov113_0225DE98(v0);
        }

        if (((ov66_02231760() == 1) || (ov66_0222E12C(v0->unk_00->unk_00) == 1)) && ((*param1) != 4)) {
            if (v0->unk_28 == 1) {
                sub_02015A54(v0->unk_24);
            }

            v0->unk_168.unk_00 = 0;
            v0->unk_9BC = 3;

            if (ov66_02231760() == 1) {
                (*param1) = 9;
            } else {
                Sound_PlayEffect(SEQ_SE_DP_PINPON);
                ov66_0222E2A4(v0->unk_00->unk_00);
                (*param1) = 6;
            }
        }
    }

    ov113_0225E364(v0);

    return 0;
}

int ov113_0225CDFC(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov113_0225DBCC *v0 = ApplicationManager_Data(appMan);

    SysTask_Done(v0->unk_18);
    ov113_0225D5D8(v0);
    ov113_0225D7A4(v0);
    sub_02015938(v0->unk_24);
    ov113_0225E378(&v0->unk_194);

    Strbuf_Free(v0->unk_C4);
    Font_Free(FONT_SUBSCREEN);
    sub_020127BC(v0->unk_10);
    MessageLoader_Free(v0->unk_30);
    StringTemplate_Free(v0->unk_2C);

    ov113_0225DC4C(v0);
    ov113_0225D12C(v0->unk_08);

    Heap_Free(v0->unk_08);
    SpriteSystem_FreeResourcesAndManager(v0->unk_1C, v0->unk_20);
    SpriteSystem_Free(v0->unk_1C);
    PaletteData_FreeBuffer(v0->unk_0C, 0);
    PaletteData_FreeBuffer(v0->unk_0C, 1);
    PaletteData_FreeBuffer(v0->unk_0C, 2);
    PaletteData_FreeBuffer(v0->unk_0C, 3);
    PaletteData_Free(v0->unk_0C);

    ov113_0225DAFC(v0);
    ov113_0225DA9C(v0);
    ov113_0225DD0C(v0->unk_14);

    NARC_dtor(v0->unk_160);
    NARC_dtor(v0->unk_164);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    VramTransfer_Free();
    DisableTouchPad();
    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    NetworkIcon_Destroy();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_118);

    return 1;
}

static void ov113_0225CEF0(SysTask *param0, void *param1)
{
    UnkStruct_ov113_0225DBCC *v0 = param1;

    ov113_0225E4E8(&v0->unk_194);
    ov113_0225DB08(v0);

    SpriteSystem_DrawSprites(v0->unk_20);
    SpriteSystem_UpdateTransfer();
    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

static void ov113_0225CF18(void *param0)
{
    UnkStruct_ov113_0225DBCC *v0 = param0;

    ov113_0225E65C(&v0->unk_194, v0->unk_9BC);

    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(v0->unk_0C);
    Bg_RunScheduledUpdates(v0->unk_08);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov113_0225CF58(BgConfig *param0)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

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
            GX_BG0_AS_3D,
        };

        SetAllGraphicsModes(&v1);
    }

    {
        BgTemplate v2[] = {
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x0000,
                .charBase = GX_BG_CHARBASE_0x08000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 0,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x0800,
                .charBase = GX_BG_CHARBASE_0x10000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 0,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x1000,
                .charBase = GX_BG_CHARBASE_0x10000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 3,
                .areaOver = 0,
                .mosaic = FALSE,
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
        BgTemplate v3[] = {
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x7000,
                .charBase = GX_BG_CHARBASE_0x00000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 2,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x7800,
                .charBase = GX_BG_CHARBASE_0x00000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 3,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x6800,
                .charBase = GX_BG_CHARBASE_0x00000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 3,
                .areaOver = 0,
                .mosaic = FALSE,
            },
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v3[0], 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_1);
        Bg_SetOffset(param0, BG_LAYER_SUB_1, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_SUB_1, 3, 0);

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_2, &v3[1], 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_2);
        Bg_SetOffset(param0, BG_LAYER_SUB_2, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_SUB_2, 3, 0);

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_3, &v3[2], 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_3);
        Bg_SetOffset(param0, BG_LAYER_SUB_3, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_SUB_3, 3, 0);
    }

    Bg_ClearTilesRange(5, 32, 0, HEAP_ID_118);
}

static void ov113_0225D12C(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
}

static void ov113_0225D160(UnkStruct_ov113_0225DBCC *param0, NARC *param1)
{
    BgConfig *v0 = param0->unk_08;
    u16 *v1;

    PaletteData_LoadBufferFromFileStart(param0->unk_0C, 187, 19, 118, 0, 0x200 - 0x40, 0);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 18, param0->unk_08, 2, 0, 0, 0, HEAP_ID_118);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 17, param0->unk_08, 2, 0, 0, 0, HEAP_ID_118);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 20, param0->unk_08, 3, 0, 0, 0, HEAP_ID_118);
    PaletteData_LoadBufferFromFileStart(param0->unk_0C, 187, 23, 118, 1, 0, 0);

    if (param0->unk_00->unk_04 == 0) {
        PaletteData_CopyBuffer(param0->unk_0C, 1, 16 * 1, 1, 16 * 0, 0x20);
    }

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 22, param0->unk_08, 6, 0, 0, 0, HEAP_ID_118);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 21, param0->unk_08, 6, 0, 0, 0, HEAP_ID_118);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 24, param0->unk_08, 7, 0, 0, 0, HEAP_ID_118);

    v1 = Bg_GetTilemapBuffer(param0->unk_08, 6);

    MI_CpuCopy16(v1, param0->unk_9C0, 0x800);
    MI_CpuClear16(v1, 0x800);

    {
        int v2;
        v2 = Options_Frame(SaveData_GetOptions(param0->saveData));

        PaletteData_LoadBufferFromFileStart(param0->unk_0C, 38, GetMessageBoxPaletteNARCMember(v2), 118, 0, 0x20, 14 * 16);
        LoadMessageBoxGraphics(param0->unk_08, BG_LAYER_MAIN_1, 1, 14, v2, HEAP_ID_118);
        PaletteData_LoadBufferFromFileStart(param0->unk_0C, 14, 6, 118, 0, 0x20, 13 * 16);

        if (param0->unk_00->unk_04 == 0) {
            PaletteData_LoadBufferFromFileStart(param0->unk_0C, 14, 6, 118, 1, 0x20, 13 * 16);
        } else {
            PaletteData_LoadBufferFromFileStart(param0->unk_0C, 187, 25, 118, 1, 0x20, 13 * 16);
        }
    }

    Bg_ScheduleTilemapTransfer(param0->unk_08, 6);
}

static void ov113_0225D304(UnkStruct_ov113_0225DBCC *param0, NARC *param1)
{
    int v0, v1;
    u16 v2;

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_MAIN_OBJ, param0->unk_1C, param0->unk_20, param1, 3, FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 4, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10007);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 5, FALSE, 10002);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 6, FALSE, 10002);

    for (v0 = 0; v0 < 6; v0++) {
        SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 16, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10001 + v0);
    }

    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 15, FALSE, 10001);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 14, FALSE, 10001);

    v1 = SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_MAIN_OBJ, param0->unk_1C, param0->unk_20, param1, 3, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);

    if (param0->unk_00->unk_04 == 0) {
        v2 = 0x0;
    } else {
        v2 = 0x7fff;
    }

    PaletteData_FillBufferRange(param0->unk_0C, PLTTBUF_MAIN_OBJ, PLTTSEL_BOTH, v2, v1 * 16, v1 * 16 + 16);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 2, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 10008);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 1, FALSE, 10003);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 0, FALSE, 10003);

    param0->unk_921 = SpriteSystem_LoadPaletteBuffer(param0->unk_0C, 2, param0->unk_1C, param0->unk_20, 187, 26, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10003);
}

static void ov113_0225D484(UnkStruct_ov113_0225DBCC *param0)
{
    int v0;
    SpriteTemplate v1;

    v1 = Unk_ov113_02260A04;

    for (v0 = 0; v0 < 6; v0++) {
        v1.x = 16 + 32 * v0;
        v1.y = 176;

        param0->unk_924[v0] = SpriteSystem_NewSprite(param0->unk_1C, param0->unk_20, &v1);

        ManagedSprite_SetAnim(param0->unk_924[v0], v0);
        Sprite_TickFrame(param0->unk_924[v0]->sprite);
    }

    v1 = Unk_ov113_02260A38;

    for (v0 = 0; v0 < 6; v0++) {
        v1.x = 16 + 32 * v0;
        v1.y = 176;

        param0->unk_93C[v0] = SpriteSystem_NewSprite(param0->unk_1C, param0->unk_20, &v1);

        ManagedSprite_SetAnim(param0->unk_93C[v0], v0);
        Sprite_TickFrame(param0->unk_93C[v0]->sprite);
    }

    v1 = Unk_ov113_02260A6C;

    for (v0 = 0; v0 < 6; v0++) {
        v1.x = 16 + 32 * v0;
        v1.y = 176;
        v1.resources[0] = 10001 + v0;

        param0->unk_954[v0] = SpriteSystem_NewSprite(param0->unk_1C, param0->unk_20, &v1);
        Sprite_TickFrame(param0->unk_954[v0]->sprite);
    }

    {
        Strbuf *v2;

        v2 = MessageLoader_GetNewStrbuf(param0->unk_30, 1);
        ov113_0225E15C(param0, &param0->unk_19C0, v2, FONT_SUBSCREEN, TEXT_COLOR(1, 2, 3), 0, 10003, 0x1c * 8, 176, 1);
        sub_020129D0(param0->unk_19C0.unk_00, 1);
        Strbuf_Free(v2);
    }
}

static void ov113_0225D5D8(UnkStruct_ov113_0225DBCC *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_924[v0]);
    }

    for (v0 = 0; v0 < 6; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_93C[v0]);
    }

    for (v0 = 0; v0 < 6; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_954[v0]);
    }

    ov113_0225E250(&param0->unk_19C0);
}

static void ov113_0225D630(UnkStruct_ov113_0225DBCC *param0, NARC *param1)
{
    int v0;

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_0C, PLTTBUF_SUB_OBJ, param0->unk_1C, param0->unk_20, param1, 10, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 9, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 10009);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 8, FALSE, 10004);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 7, FALSE, 10004);

    for (v0 = 0; v0 < 8; v0++) {
        SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 13, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 10010 + v0);
    }

    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 12, FALSE, 10005);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_1C, param0->unk_20, param1, 11, FALSE, 10005);
}

static void ov113_0225D6F8(UnkStruct_ov113_0225DBCC *param0)
{
    int v0;
    SpriteTemplate v1;

    param0->unk_96C = SpriteSystem_NewSprite(param0->unk_1C, param0->unk_20, &Unk_ov113_0226099C);

    Sprite_TickFrame(param0->unk_96C->sprite);
    ManagedSprite_SetDrawFlag(param0->unk_96C, 0);

    v1 = Unk_ov113_022609D0;

    for (v0 = 0; v0 < 8; v0++) {
        v1.resources[0] = 10010 + v0;
        param0->unk_970[v0] = SpriteSystem_NewSprite(param0->unk_1C, param0->unk_20, &v1);

        ManagedSprite_SetPositionXYWithSubscreenOffset(param0->unk_970[v0], Unk_ov113_02260934[v0][0], Unk_ov113_02260934[v0][1], (192 + 80) << FX32_SHIFT);
        Sprite_TickFrame(param0->unk_970[v0]->sprite);
        ManagedSprite_SetDrawFlag(param0->unk_970[v0], 0);
    }
}

static void ov113_0225D7A4(UnkStruct_ov113_0225DBCC *param0)
{
    int v0;

    Sprite_DeleteAndFreeResources(param0->unk_96C);

    for (v0 = 0; v0 < 8; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_970[v0]);
    }
}

static void ov113_0225D7CC(UnkStruct_ov113_0225DBCC *param0)
{
    int v0, v1;
    u16 *v2, *v3;
    int v4 = 0;

    v2 = PaletteData_GetUnfadedBuffer(param0->unk_0C, 2);
    v3 = PaletteData_GetFadedBuffer(param0->unk_0C, 2);

    for (v0 = 0; v0 < 6; v0++) {
        if ((param0->unk_8D8[v0].unk_02 == 0) || (param0->unk_8D8[v0].unk_02 > NATIONAL_DEX_COUNT)) {
            ManagedSprite_SetDrawFlag(param0->unk_924[v0], 0);
            ManagedSprite_SetDrawFlag(param0->unk_93C[v0], 0);
            ManagedSprite_SetDrawFlag(param0->unk_954[v0], 0);

            for (v1 = 0; v1 < 4; v1++) {
                Bg_FillTilemapRect(param0->unk_08, 2, Unk_ov113_022608AC[v1], 0 + 4 * v0, 0x14 + v1, 4, 1, 17);
            }
        } else {
            ov113_0225D938(param0->unk_8D8[v0].unk_02, param0->unk_8D8[v0].unk_08, param0->unk_954[v0], param0->unk_160, param0->unk_164, NNS_G2D_VRAM_TYPE_2DMAIN, param0->unk_19E0);

            v2[1 * 16 + 1 + v0] = param0->unk_8D8[v0].unk_00;
            v3[1 * 16 + 1 + v0] = param0->unk_8D8[v0].unk_00;

            BlendPalette(&v2[1 * 16 + 1 + v0], &v2[2 * 16 + 1 + v0], 1, 12, 0x0);
            v3[2 * 16 + 1 + v0] = v2[2 * 16 + 1 + v0];

            if (v4 == 0) {
                v4++;
                param0->unk_920 = v0;
            }
        }
    }

    ov113_0225E0D4(param0, 0);
    Bg_ScheduleTilemapTransfer(param0->unk_08, 2);
}

static BOOL ov113_0225D938(int param0, int param1, ManagedSprite *param2, NARC *param3, NARC *param4, NNS_G2D_VRAM_TYPE param5, BOOL param6)
{
    void *v0;
    NNSG2dImageProxy *v1;
    void *v2;
    NNSG2dCharacterData *v3;
    u8 *v4, *v5;

    if ((param0 == 0) || (param0 > NATIONAL_DEX_COUNT)) {
        return 0;
    }

    if (PokemonHasOverworldFootprint(param0, param1, param6) == 1) {
        v2 = LoadMemberFromOpenNARC(param4, 3 + param0, 1, HEAP_ID_118, 1);
        NNS_G2dGetUnpackedCharacterData(v2, &v3);
        DC_FlushRange(v3->pRawData, 0x20 * 8);
        v4 = &((u8 *)v3->pRawData)[0x20 * 4];
        v5 = v3->pRawData;
    } else {
        v2 = LoadMemberFromOpenNARC(param3, 16, 0, HEAP_ID_118, 1);
        NNS_G2dGetUnpackedCharacterData(v2, &v3);
        DC_FlushRange(v3->pRawData, 0x20 * 4);
        v4 = v3->pRawData;
        v5 = &((u8 *)v3->pRawData)[0x20 * 2];
    }

    if (param5 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = G2_GetOBJCharPtr();
    } else {
        v0 = G2S_GetOBJCharPtr();
    }

    v1 = Sprite_GetImageProxy(param2->sprite);

    MI_CpuCopy16(v4, (void *)((u32)v0 + v1->vramLocation.baseAddrOfVram[param5]), 0x20 * 2);
    MI_CpuCopy16(v5, (void *)((u32)v0 + 0x20 * 2 + v1->vramLocation.baseAddrOfVram[param5]), 0x20 * 2);

    Heap_Free(v2);
    return 1;
}

static void ov113_0225D9FC(UnkStruct_ov113_0225DBCC *param0)
{
    VecFx32 v0 = { 0, -FX32_ONE * 8, 0 };

    param0->camera = Camera_Alloc(118);

    Camera_InitWithTarget(&v0, 0x7c000, &Unk_ov113_022608B4, (22 * 0xffff) / 360, 0, 0, param0->camera);
    Camera_SetClipping(FX32_ONE, FX32_ONE * 900, param0->camera);
    Camera_SetAsActive(param0->camera);

    {
        u16 v1;
        fx32 v2, v3;
        fx32 v4, v5;

        v1 = Camera_GetFOV(param0->camera);
        v2 = Camera_GetDistance(param0->camera);
        v3 = FX32_ONE * 4 / 3;

        CalcLinearFov(v1, v2, v3, &v4, &v5);

        param0->unk_D0 = v4;
        param0->unk_D4 = v5;
    }
}

static void ov113_0225DA9C(UnkStruct_ov113_0225DBCC *param0)
{
    Camera_Delete(param0->camera);
}

static void ov113_0225DAA8(UnkStruct_ov113_0225DBCC *param0, NARC *param1)
{
    int v0;

    if (param0->unk_00->unk_04 == 0) {
        v0 = 28;
    } else {
        v0 = 27;
    }

    Easy3DModel_LoadFrom(&param0->unk_D8.unk_00, param1, v0, HEAP_ID_118);
    Easy3DObject_Init(&param0->unk_D8.unk_10, &param0->unk_D8.unk_00);
    Easy3DObject_SetPosition(&param0->unk_D8.unk_10, FX32_CONST(0), FX32_CONST(0), FX32_CONST(0));
    Easy3DObject_SetScale(&param0->unk_D8.unk_10, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    Easy3DObject_SetVisible(&param0->unk_D8.unk_10, 1);
}

static void ov113_0225DAFC(UnkStruct_ov113_0225DBCC *param0)
{
    Easy3DModel_Release(&param0->unk_D8.unk_00);
}

static void ov113_0225DB08(UnkStruct_ov113_0225DBCC *param0)
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

    G3_ResetG3X();
    Camera_SetAsActive(param0->camera);
    Camera_ComputeProjectionMatrix(0, param0->camera);
    Camera_ComputeViewMatrix();

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(28, 28, 28));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbSetBaseTrans(&v1);
    NNS_G3dGlbSetBaseRot(&v2);
    NNS_G3dGlbSetBaseScale(&v0);
    NNS_G3dGePushMtx();

    {
        Easy3DObject_Draw(&param0->unk_D8.unk_10);
        ov113_0225E4A0(&param0->unk_194);
    }

    NNS_G3dGePopMtx(1);
}

static void ov113_0225DBCC(UnkStruct_ov113_0225DBCC *param0)
{
    int v0;

    Window_Add(param0->unk_08, &param0->unk_B4, 1, 2, 1, 27, 4, 13, (1 + (18 + 12)) + (29 * 4));
    Window_FillTilemap(&param0->unk_B4, 0xf);

    for (v0 = 0; v0 < 8; v0++) {
        Window_Add(param0->unk_08, &param0->unk_34[v0], 5, Unk_ov113_022608C8[v0][0], Unk_ov113_022608C8[v0][1], 8, 2, 13, (0x4000 / 0x20) + (8 * 2) * v0);
        Window_FillTilemap(&param0->unk_34[v0], 0x0);
    }
}

static void ov113_0225DC4C(UnkStruct_ov113_0225DBCC *param0)
{
    int v0;

    Window_Remove(&param0->unk_B4);

    for (v0 = 0; v0 < 8; v0++) {
        Window_Remove(&param0->unk_34[v0]);
    }
}

static G3DPipelineBuffers *ov113_0225DC6C(int heapID)
{
    return G3DPipeline_Init(heapID, TEXTURE_VRAM_SIZE_256K, PALETTE_VRAM_SIZE_32K, ov113_0225DC88);
}

static void ov113_0225DC88(void)
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

static void ov113_0225DD0C(G3DPipelineBuffers *param0)
{
    G3DPipelineBuffers_Free(param0);
}

static void ov113_0225DD14(UnkStruct_ov113_0225DBCC *param0)
{
    UnkStruct_ov113_022607EC *v0 = &param0->unk_168;
    v0->unk_04 = ov66_022328F0();
}

static void ov113_0225DD24(UnkStruct_ov113_0225DBCC *param0, UnkStruct_ov113_0225CA04 *param1)
{
    UnkStruct_ov113_02260818 *v0;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov113_0225CA04));

    v0 = &param1->unk_00;

    v0->unk_02 = 150;
    v0->unk_00 = 0x1f;
    v0->unk_04 = 0x101;
    v0->unk_08 = 0;
}

UnkStruct_ov113_022607EC *ov113_0225DD44(UnkStruct_ov113_0225DBCC *param0)
{
    return &param0->unk_168;
}

static void ov113_0225DD4C(int param0, SaveData *saveData, UnkStruct_ov113_02260818 *param2)
{
    Party *v0;
    int v1;
    Pokemon *v2;
    int v3;

    MI_CpuClear8(param2, sizeof(UnkStruct_ov113_02260818) * 6);

    v0 = SaveData_GetParty(saveData);
    v1 = Party_GetCurrentCount(v0);

    for (v3 = 0; v3 < v1; v3++) {
        v2 = Party_GetPokemonBySlotIndex(v0, v3);
        param2[v3].unk_02 = Pokemon_GetValue(v2, MON_DATA_SPECIES_OR_EGG, NULL);
        param2[v3].unk_04 = Pokemon_GetValue(v2, MON_DATA_PERSONALITY, NULL);
        param2[v3].unk_08 = Pokemon_GetValue(v2, MON_DATA_FORM, NULL);
        param2[v3].unk_00 = ov113_0226072C(param0, Pokemon_GetValue(v2, MON_DATA_OT_ID, NULL));
    }
}

BOOL ov113_0225DDC0(UnkStruct_ov113_0225DBCC *param0, const UnkStruct_ov113_02260818 *param1, s32 param2)
{
    int v0;
    u32 v1;

    v0 = ov113_0225E398(param0, &param0->unk_194, param1, param0->unk_160, param0->unk_164, param0->unk_19E0);

    if (v0 == 1) {
        v1 = ov66_02232B8C(param2);

        if (v1 != 0xffffffff) {
            if ((param0->unk_99C[v1] != param1->unk_02) || (param0->unk_9AC[v1] != param1->unk_00)) {
                param0->unk_99C[v1] = param1->unk_02;
                param0->unk_9AC[v1] = param1->unk_00;
                ov113_0225D938(param1->unk_02, param1->unk_08, param0->unk_970[v1], param0->unk_160, param0->unk_164, NNS_G2D_VRAM_TYPE_2DSUB, param0->unk_19E0);
                ManagedSprite_SetDrawFlag(param0->unk_970[v1], 1);
                PaletteData_FillBufferRange(param0->unk_0C, 1, 2, param1->unk_00, (2 * 16 + 1) + v1, (2 * 16 + 1) + v1 + 1);
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_BOX02);
    }

    return v0;
}

static int ov113_0225DE98(UnkStruct_ov113_0225DBCC *param0)
{
    UnkStruct_ov66_02232B20 v0;
    int v1, v2, v3, v4;

    v2 = 0;
    v3 = 0;

    ov66_02232B4C(&v0);

    for (v1 = 0; v1 < 8; v1++) {
        if (param0->unk_170[v1] != v0.unk_04[v1]) {
            if (v0.unk_04[v1] != DWC_LOBBY_INVALID_USER_ID) {
                ov113_02260620(param0->unk_30, param0->unk_2C, param0->unk_34, param0->unk_00->unk_00, v0.unk_04[v1]);

                {
                    u16 *v5;
                    int v6, v7;

                    v5 = Bg_GetTilemapBuffer(param0->unk_08, 6);

                    for (v7 = Unk_ov113_02260AD4[v1][1]; v7 < Unk_ov113_02260AD4[v1][1] + Unk_ov113_02260AD4[v1][3]; v7++) {
                        MI_CpuCopy16(&param0->unk_9C0[v7 * 32 + Unk_ov113_02260AD4[v1][0]], &v5[v7 * 32 + Unk_ov113_02260AD4[v1][0]], Unk_ov113_02260AD4[v1][2] * 2);
                    }

                    Bg_ScheduleTilemapTransfer(param0->unk_08, 6);
                }

                v2++;
            } else {
                ov113_02260714(param0->unk_34, v1);

                param0->unk_99C[v1] = 0;
                param0->unk_9AC[v1] = 0;

                ManagedSprite_SetDrawFlag(param0->unk_970[v1], 0);
                Bg_FillTilemapRect(param0->unk_08, 6, 0, Unk_ov113_02260AD4[v1][0], Unk_ov113_02260AD4[v1][1], Unk_ov113_02260AD4[v1][2], Unk_ov113_02260AD4[v1][3], 16);
                Bg_ScheduleTilemapTransfer(param0->unk_08, 6);
                v3++;
            }

            if (v0.unk_04[v1] == param0->unk_168.unk_04) {
                ManagedSprite_SetPositionXYWithSubscreenOffset(param0->unk_96C, Unk_ov113_02260914[v1][0], Unk_ov113_02260914[v1][1], (192 + 80) << FX32_SHIFT);
                ManagedSprite_SetDrawFlag(param0->unk_96C, 1);
            }
        }

        param0->unk_170[v1] = v0.unk_04[v1];
    }

    v4 = 0;

    for (v1 = 0; v1 < 8; v1++) {
        if (param0->unk_170[v1] != DWC_LOBBY_INVALID_USER_ID) {
            v4++;
        }
    }

    param0->unk_194.unk_73F = v4;

    if (v2 > 0) {
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        return 1;
    } else if (v3 > 0) {
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        return 2;
    }

    return 0;
}

void ov113_0225E044(UnkStruct_ov113_0225DBCC *param0, s32 param1)
{
    ov113_02260620(param0->unk_30, param0->unk_2C, param0->unk_34, param0->unk_00->unk_00, param1);
}

void ov113_0225E05C(UnkStruct_ov113_0225DBCC *param0, u32 param1)
{
    ov113_02260714(param0->unk_34, param1);
}

static void ov113_0225E068(UnkStruct_ov113_0225DBCC *param0, int param1)
{
    SpriteTemplate v0;
    int v1;

    v0 = Unk_ov113_02260AA0;

    for (v1 = 0; v1 < 3; v1++) {
        if (param0->unk_990[v1] == NULL) {
            v0.x = 16 + 32 * param1;
            v0.y = 176;
            param0->unk_990[v1] = SpriteSystem_NewSprite(param0->unk_1C, param0->unk_20, &v0);

            break;
        }
    }

    ov113_0225E0D4(param0, param1);
    Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
}

static void ov113_0225E0D4(UnkStruct_ov113_0225DBCC *param0, int param1)
{
    u16 *v0, *v1;

    v0 = PaletteData_GetUnfadedBuffer(param0->unk_0C, 2);
    v1 = PaletteData_GetFadedBuffer(param0->unk_0C, 2);

    MI_CpuCopy16(&v0[1 * 16 + 1], &v1[1 * 16 + 1], 6 * 2);
    BlendPalette(&v0[1 * 16 + 1 + param1], &v1[1 * 16 + 1 + param1], 1, 6, 0x0);
}

static void ov113_0225E118(UnkStruct_ov113_0225DBCC *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_990[v0] != NULL) {
            if (ManagedSprite_IsAnimated(param0->unk_990[v0]) == 0) {
                Sprite_DeleteAndFreeResources(param0->unk_990[v0]);
                param0->unk_990[v0] = NULL;
            } else {
                Sprite_TickFrame(param0->unk_990[v0]->sprite);
            }
        }
    }
}

static void ov113_0225E15C(UnkStruct_ov113_0225DBCC *param0, UnkStruct_ov113_0225E250 *param1, const Strbuf *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9)
{
    UnkStruct_020127E8 v0;
    Window v1;
    CharTransferAllocation v2;
    int v3;
    FontOAM *v4;
    BgConfig *v5;
    SpriteManager *v6;
    int v7, v8;

    GF_ASSERT(param1->unk_00 == NULL);

    v5 = param0->unk_08;
    v6 = param0->unk_20;

    ov113_0225E264(param2, param3, &v7, &v8);

    Window_Init(&v1);
    Window_AddToTopLeftCorner(v5, &v1, v8, 16 / 8, 0, 0);
    Text_AddPrinterWithParamsColorAndSpacing(&v1, param3, param2, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_118);
    CharTransfer_AllocRange(v3, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

    if (param9 == 1) {
        param7 -= v7 / 2;
    }

    param8 -= 8;

    v0.unk_00 = param0->unk_10;
    v0.unk_04 = &v1;
    v0.unk_08 = SpriteManager_GetSpriteList(v6);
    v0.unk_0C = SpriteManager_FindPlttResourceProxy(v6, param6);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.offset;
    v0.unk_18 = param7;
    v0.unk_1C = param8;
    v0.unk_20 = 0;
    v0.unk_24 = 51;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = HEAP_ID_118;

    v4 = sub_020127E8(&v0);

    sub_02012AC0(v4, param5);
    FontOAM_SetXY(v4, param7, param8);
    Window_Remove(&v1);

    param1->unk_00 = v4;
    param1->unk_04 = v2;
    param1->unk_10 = v7;
}

static void ov113_0225E250(UnkStruct_ov113_0225E250 *param0)
{
    sub_02012870(param0->unk_00);
    CharTransfer_ClearRange(&param0->unk_04);
}

static void ov113_0225E264(const Strbuf *param0, int param1, int *param2, int *param3)
{
    int v0 = Font_CalcStrbufWidth(param1, param0, 0);
    int v1 = v0 / 8;

    if (FX_ModS32(v0, 8) != 0) {
        v1++;
    }

    *param2 = v0;
    *param3 = v1;
}

static void ov113_0225E294(UnkStruct_ov113_0225DBCC *param0)
{
    int v0, v1;

    if (param0->unk_19D4 == param0->unk_19D8) {
        param0->unk_19D4 += ((32 << 8) / 60);

        if (param0->unk_19D4 > (32 << 8)) {
            param0->unk_19D4 = (32 << 8);
        }

        param0->unk_19D8 = param0->unk_19D4;
    } else {
        param0->unk_19D8 -= param0->unk_19DC;

        if (param0->unk_19D8 < param0->unk_19D4) {
            param0->unk_19D8 = param0->unk_19D4;
        }
    }

    v0 = 32 - (param0->unk_19D8 >> 8);

    for (v1 = 0; v1 < 6; v1++) {
        ManagedSprite_SetPositionXYWithSubscreenOffset(param0->unk_924[v1], 16 + 32 * v1, 176 + v0, (192 + 80) << FX32_SHIFT);
    }
}

static BOOL ov113_0225E318(UnkStruct_ov113_0225DBCC *param0, int param1)
{
    if (param0->unk_19D4 < param1) {
        return 0;
    }

    if (param0->unk_19D8 < param0->unk_19D4) {
        GF_ASSERT(0);
        param0->unk_19D8 = param0->unk_19D4;
    }

    param0->unk_19D4 -= param1;
    param0->unk_19DC = (param0->unk_19D8 - param0->unk_19D4) / 4;

    return 1;
}

static void ov113_0225E364(UnkStruct_ov113_0225DBCC *param0)
{
    return;
}
