#include "overlay017/ov17_0223DAD0.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "overlay011/ov11_0221F840.h"
#include "overlay017/ov17_0223F118.h"
#include "overlay017/ov17_022492DC.h"
#include "overlay017/ov17_0224A0FC.h"
#include "overlay017/ov17_0224CFB8.h"
#include "overlay017/ov17_0224F18C.h"
#include "overlay017/ov17_02250744.h"
#include "overlay017/struct_ov17_0223E838.h"
#include "overlay017/struct_ov17_0223F03C.h"
#include "overlay017/struct_ov17_0224CD84.h"
#include "overlay017/struct_ov17_0224DF54.h"
#include "overlay017/struct_ov17_02252FC4.h"
#include "overlay017/struct_ov17_02253084.h"
#include "overlay022/ov22_0225AF8C.h"

#include "bg_window.h"
#include "camera.h"
#include "font.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "screen_fade.h"
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
#include "unk_02012744.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay12);
FS_EXTERN_OVERLAY(overlay22);

static void ov17_0223E09C(void *param0);
static void ov17_0223E1FC(SysTask *param0, void *param1);
static void ov17_0223E250(BgConfig *param0);
static void ov17_0223E380(UnkStruct_ov17_0224DF54 *param0);
static void ov17_0223E458(UnkStruct_ov17_0224DF54 *param0);
static void ov17_0223E4B0(UnkStruct_ov17_0224DF54 *param0, NARC *param1);
static void ov17_0223E588(UnkStruct_ov17_0224DF54 *param0);
static void ov17_0223E60C(UnkStruct_ov17_0224DF54 *param0, NARC *param1);
static void ov17_0223E678(UnkStruct_ov17_0224DF54 *param0);
static void ov17_0223E67C(UnkStruct_ov17_0224DF54 *param0, NARC *param1);
static void ov17_0223E76C(UnkStruct_ov17_0224DF54 *param0);
static void ov17_0223E770(UnkStruct_ov17_0224DF54 *param0, NARC *param1);
static void ov17_0223E774(UnkStruct_ov17_0224DF54 *param0);
static void ov17_0223E778(UnkStruct_ov17_0224DF54 *param0);
static void ov17_0223E7E0(UnkStruct_ov17_0224DF54 *param0);
static int ov17_0223E838(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223E8AC(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223E954(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223EE54(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223EEB8(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223F03C(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223E9A4(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223EBB0(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223EC20(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223EC74(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223ECC8(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223ED1C(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static int ov17_0223ED9C(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1);
static BOOL ov17_0223E3CC(UnkStruct_ov17_0224DF54 *param0, int *param1, int *param2);
static void ov17_0223E450(void);
static u32 ov17_0223E800(u32 param0, BOOL param1);
static u32 ov17_0223E81C(u32 param0, BOOL param1);

static const UnkStruct_ov17_02253084 Unk_ov17_02253084[] = {
    {
        0x499,
        0x78,
        0x2,
        0x3,
        0x4,
        0x4,
        { 0x2, 0x2, 0x3, 0x3 },
    },
    {
        0x49B,
        0x78,
        0x2,
        0x4,
        0x4,
        0x4,
        { 0x2, 0x2, 0x3, 0x3 },
    },
    {
        0x4B5,
        0x64,
        0x2,
        0x4,
        0x3,
        0x3,
        { 0x1, 0x1, 0x2, 0x2 },
    },
    {
        0x4B9,
        0x3C,
        0x2,
        0x4,
        0x3,
        0x3,
        { 0x2, 0x2, 0x3, 0x3 },
    },
    {
        0x4B7,
        0x96,
        0x2,
        0x4,
        0x4,
        0x4,
        { 0x1, 0x1, 0x2, 0x2 },
    },
    {
        0x4B6,
        0x84,
        0x2,
        0x4,
        0x4,
        0x4,
        { 0x1, 0x1, 0x2, 0x2 },
    },
    {
        0x4B8,
        0x8C,
        0x2,
        0x4,
        0x4,
        0x4,
        { 0x1, 0x1, 0x2, 0x2 },
    },
};

static const struct {
    u32 unk_00;
    u32 unk_04;
} Unk_ov17_0225312C[4][5] = {
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0, 0x1, 0x0 },
    { 0x2, 0x1, 0x3, 0x1, 0x4, 0x0, 0x5, 0x0, 0x6, 0x0 },
    { 0x2, 0x1, 0x3, 0x1, 0x4, 0x0, 0x5, 0x0, 0x6, 0x0 }
};

static const UnkStruct_ov17_02252FC4 Unk_ov17_02252FC4[] = {
    { 0xE, 0x10, 0x20 },
    { 0xF, 0xC, 0x1E }
};

static int (*const Unk_ov17_02253050[])(UnkStruct_ov17_0224DF54 *, UnkStruct_ov17_0223E838 *) = {
    ov17_0223E838,
    ov17_0223E8AC,
    ov17_0223E954,
    ov17_0223E9A4,
    ov17_0223EBB0,
    ov17_0223EC20,
    ov17_0223EC74,
    ov17_0223ECC8,
    ov17_0223ED1C,
    ov17_0223ED9C,
    ov17_0223EE54,
    ov17_0223EEB8,
    ov17_0223F03C
};

static const RenderOamTemplate Unk_ov17_02253008 = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const CharTransferTemplateWithModes Unk_ov17_02252FDC = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_64K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

static const SpriteResourceCapacities Unk_ov17_02252FF0 = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

int ov17_0223DAD0(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov17_0224DF54 *v0;

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

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_23, 0xa0000);
    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov17_0224DF54), HEAP_ID_23);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224DF54));

    v0->unk_10 = ov17_0223F140(HEAP_ID_23);
    v0->unk_00 = ApplicationManager_Args(appMan);
    v0->unk_00->unk_150 = v0;
    v0->unk_00->unk_154 = 1;
    v0->unk_14.unk_00 = &v0->unk_00->unk_00;

    ov17_0223E458(v0);
    v0->unk_14.unk_90 = PaletteData_New(HEAP_ID_23);

    PaletteData_SetAutoTransparent(v0->unk_14.unk_90, 1);
    PaletteData_AllocBuffer(v0->unk_14.unk_90, 0, 0x200, HEAP_ID_23);
    PaletteData_AllocBuffer(v0->unk_14.unk_90, 1, 0x200, HEAP_ID_23);
    PaletteData_AllocBuffer(v0->unk_14.unk_90, 2, (((16 - 2) * 16) * sizeof(u16)), HEAP_ID_23);
    PaletteData_AllocBuffer(v0->unk_14.unk_90, 3, 0x200, HEAP_ID_23);

    v0->unk_1050.unk_00 = Heap_AllocFromHeap(HEAP_ID_23, 0x200);
    ov17_0224CDB4(v0, 1);
    v0->unk_14.unk_60 = BgConfig_New(HEAP_ID_23);

    VramTransfer_New(64, HEAP_ID_23);
    SetAutorepeat(4, 8);

    v0->unk_1074 = ov17_02249380(v0->unk_00, &v0->unk_14);

    ov17_0223E250(v0->unk_14.unk_60);

    EnableTouchPad();
    InitializeTouchPad(4);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_23);

    v0->unk_14.unk_58 = SpriteSystem_Alloc(23);

    SpriteSystem_Init(v0->unk_14.unk_58, &Unk_ov17_02253008, &Unk_ov17_02252FDC, (16 + 16));
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_64K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_14.unk_5C = SpriteManager_New(v0->unk_14.unk_58);

    SpriteSystem_InitSprites(v0->unk_14.unk_58, v0->unk_14.unk_5C, (64 + 64));
    SpriteSystem_InitManagerWithCapacities(v0->unk_14.unk_58, v0->unk_14.unk_5C, &Unk_ov17_02252FF0);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(v0->unk_14.unk_58), 0, (256 * FX32_ONE));

    v0->unk_14.unk_44 = PokemonSpriteManager_New(HEAP_ID_23);
    ov17_0223E450();

    v0->unk_14.unk_84 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0206, HEAP_ID_23);
    v0->unk_14.unk_88 = StringTemplate_Default(HEAP_ID_23);
    v0->unk_14.unk_8C = Strbuf_Init((2 * 160), HEAP_ID_23);
    v0->unk_14.unk_94 = sub_02012744((3 * 3), HEAP_ID_23);

    {
        NARC *v1;
        NARC *v2;

        v1 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, HEAP_ID_23);
        v2 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_OBJ, HEAP_ID_23);

        ov17_0223E67C(v0, v1);
        ov17_0223E770(v0, v1);
        ov17_0223E380(v0);
        ov17_0223E4B0(v0, v2);
        ov17_0223E60C(v0, v2);
        ov17_02249640(v0->unk_1074, 0, 1, NULL);

        NARC_dtor(v1);
        NARC_dtor(v2);
    }

    ov17_0224A134(v0);
    ov17_0224B0CC(&v0->unk_14);
    ov17_0223E778(v0);
    ov17_0224AA38(v0);
    ov17_0224B59C(v0);

    sub_02039734();
    StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UNK_17, FADE_TYPE_UNK_37, FADE_TO_BLACK, 6, 1, HEAP_ID_23);

    v0->unk_04 = SysTask_Start(ov17_0223E1FC, v0, 80000);
    v0->unk_1098 = 1;

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_CONTEST, SEQ_CONTEST_DRESSING_ROOM, 1);
    sub_020959F4(v0->unk_00->unk_155);

    G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ), -6);

    Sound_PlayEffect(SEQ_SE_DP_CON_007);
    SetVBlankCallback(ov17_0223E09C, v0);

    return 1;
}

int ov17_0223DDD4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov17_0224DF54 *v0 = ApplicationManager_Data(appMan);
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
            v1 = Unk_ov17_02253050[v0->unk_1096](v0, &v0->unk_1B1C);

            if ((v1 == 1) || (v1 == 2)) {
                if (v1 == 1) {
                    v0->unk_1096++;
                } else {
                    v0->unk_1096 = v0->unk_1B1C.unk_02;
                }

                MI_CpuClear8(&v0->unk_1B1C, sizeof(UnkStruct_ov17_0223E838));
            } else if ((v1 == 3) && (v0->unk_1B24 == 1)) {
                *param1 = 2;
                MI_CpuClear8(&v0->unk_1B1C, sizeof(UnkStruct_ov17_0223E838));
                StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_30, FADE_TYPE_UNK_30, FADE_TO_BLACK, 6, 1, HEAP_ID_23);
                break;
            }
        }

        ov17_0224F35C(&v0->unk_109C);
        ov17_0224F3D8(&v0->unk_109C, v0);

        if ((v0->unk_1B24 == 1) && (ov17_0224F3D0(&v0->unk_109C) == 0) && (sub_02094EDC(v0->unk_00) == 0)) {
            *param1 = 2;
            MI_CpuClear8(&v0->unk_1B1C, sizeof(UnkStruct_ov17_0223E838));
            StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_30, FADE_TYPE_UNK_30, FADE_TO_BLACK, 6, 1, HEAP_ID_23);
        }
        break;
    case 2:
        if (v0->unk_1B24 == 1) {
            if (IsScreenFadeDone() == TRUE) {
                return 1;
            }
        }
        break;
    }

    return 0;
}

int ov17_0223DF0C(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov17_0224DF54 *v0 = ApplicationManager_Data(appMan);
    int v1;

    GF_ASSERT(ParticleSystem_GetActiveEmitterCount(v0->unk_0C) == 0);

    ov17_0223E7E0(v0);
    ParticleSystem_FreeAll();

    ov17_0224A95C(&v0->unk_14);
    ov17_0224AA58(v0);
    ov17_0224B5B8(v0);
    ov17_0224BD00(v0);
    ov17_0223E588(v0);
    ov17_0223E678(v0);
    ov17_0223E76C(v0);
    ov17_0223E774(v0);

    for (v1 = 0; v1 < 2; v1++) {
        Window_Remove(&v0->unk_14.unk_64[v1]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(v0->unk_14.unk_60, 1);
    Bg_FreeTilemapBuffer(v0->unk_14.unk_60, 2);
    Bg_FreeTilemapBuffer(v0->unk_14.unk_60, 3);

    ov17_02249358(v0->unk_14.unk_60);
    ov17_022493A4(v0->unk_1074);

    SpriteSystem_FreeResourcesAndManager(v0->unk_14.unk_58, v0->unk_14.unk_5C);
    SpriteSystem_Free(v0->unk_14.unk_58);
    VramTransfer_Free();

    ov17_0224A1EC(&v0->unk_14);

    PokemonSpriteManager_Free(v0->unk_14.unk_44);
    sub_020127BC(v0->unk_14.unk_94);
    Font_Free(FONT_SUBSCREEN);
    Heap_FreeToHeap(v0->unk_1050.unk_00);
    PaletteData_FreeBuffer(v0->unk_14.unk_90, 0);
    PaletteData_FreeBuffer(v0->unk_14.unk_90, 1);
    PaletteData_FreeBuffer(v0->unk_14.unk_90, 2);
    PaletteData_FreeBuffer(v0->unk_14.unk_90, 3);
    PaletteData_Free(v0->unk_14.unk_90);
    Strbuf_Free(v0->unk_14.unk_8C);
    StringTemplate_Free(v0->unk_14.unk_88);
    MessageLoader_Free(v0->unk_14.unk_84);
    Heap_FreeToHeap(v0->unk_14.unk_60);
    SysTask_Done(v0->unk_04);

    ov17_0223F1E0(v0->unk_10);

    DisableTouchPad();
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    Heap_Destroy(HEAP_ID_23);
    sub_02095A24();
    sub_02039794();
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay11));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay12));
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay22));

    return 1;
}

static void ov17_0223E09C(void *param0)
{
    UnkStruct_ov17_0224DF54 *v0 = param0;

    if (v0->unk_1078) {
        u32 v1, v2;

        v0->unk_107C++;
        v1 = Sound_GetTicksForHandle(7);
        v2 = v0->unk_A3C.unk_28 * v1;
        v2 += 10000 / 2;
        v2 /= 10000;
        v0->unk_1090 = v2;
        v2 += 1;

        if (v2 != v0->unk_107C) {
            if ((v0->unk_108C > 18) || ((v2 - v0->unk_107C) > 1)) {
                v0->unk_107C = v2;
                v0->unk_108C = 0;
            } else {
                v0->unk_108C++;
            }
        } else {
            v0->unk_108C = 0;
        }
    }

    PokemonSpriteManager_UpdateCharAndPltt(v0->unk_14.unk_44);

    {
        int v3;

        for (v3 = 0; v3 < 4; v3++) {
            if (v0->unk_14.unk_04[v3].unk_00 != NULL) {
                ov22_0225B06C(v0->unk_14.unk_04[v3].unk_00);
            }
        }
    }

    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(v0->unk_14.unk_90);
    Bg_RunScheduledUpdates(v0->unk_14.unk_60);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov17_0223E18C(UnkStruct_ov17_0224DF54 *param0)
{
    u16 *v0;
    UnkStruct_ov17_0224CD84 *v1;
    s32 v2;

    v1 = &param0->unk_1050;

    if (v1->unk_11 == 0) {
        return;
    }

    v0 = PaletteData_GetFadedBuffer(param0->unk_14.unk_90, 0);

    MI_CpuCopy16(v1->unk_00, v0, 0x200);

    if (v1->unk_10 == 1) {
        BlendPalettes(v1->unk_00, v0, v1->unk_06, v1->unk_08 >> 8, v1->unk_0E);

        if (v1->unk_08 == v1->unk_0A) {
            v1->unk_10 = 0;
        } else {
            v2 = v1->unk_08;
            v2 += v1->unk_0C;

            if (((v1->unk_0C > 0) && (v2 >= v1->unk_0A)) || ((v1->unk_0C < 0) && (v2 <= v1->unk_0A))) {
                v2 = v1->unk_0A;
            }

            v1->unk_08 = v2;
        }
    }
}

static void ov17_0223E1FC(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;

    ov17_0223E18C(v0);

    if (v0->unk_1098 == 1) {
        PokemonSpriteManager_DrawSprites(v0->unk_14.unk_44);
        {
            int v1;

            for (v1 = 0; v1 < 4; v1++) {
                if (v0->unk_14.unk_04[v1].unk_00 != NULL) {
                    ov22_0225AFF8(v0->unk_14.unk_04[v1].unk_00);
                }
            }
        }

        ov11_0221F8F0();
        SpriteSystem_DrawSprites(v0->unk_14.unk_5C);
        SpriteSystem_UpdateTransfer();

        G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
    }

    sub_02038A1C(23, v0->unk_14.unk_60);
}

static void ov17_0223E250(BgConfig *param0)
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
                0,
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

        G2_SetBG0Priority(2);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    {
        ov17_02249300(param0);
    }
}

static void ov17_0223E380(UnkStruct_ov17_0224DF54 *param0)
{
    Window_Add(param0->unk_14.unk_60, &param0->unk_14.unk_64[0], 1, 0x2, 0x13, 27, 4, 13, ((18 + 12) + 1));
    Window_Add(param0->unk_14.unk_60, &param0->unk_14.unk_64[1], 1, 0x2, 0xb, 27, 2, 13, ((18 + 12) + 1));
}

static BOOL ov17_0223E3CC(UnkStruct_ov17_0224DF54 *param0, int *param1, int *param2)
{
    if ((param0->unk_00->unk_155 == 1) && (param0->unk_00->unk_15B > 0)) {
        param0->unk_1B26 = 1;
    } else {
        param0->unk_1B26 = 0;
    }

    if (param0->unk_1B26 == 1) {
        *param1 = 1;
        *param2 = 0;
        return 1;
    } else {
        *param1 = Unk_ov17_0225312C[param0->unk_00->unk_00.unk_110][param0->unk_00->unk_00.unk_10F].unk_00;
        *param2 = Unk_ov17_0225312C[param0->unk_00->unk_00.unk_110][param0->unk_00->unk_00.unk_10F].unk_04;
        return 0;
    }
}

static void ov17_0223E450(void)
{
    ParticleSystem_ZeroAll();
}

static void ov17_0223E458(UnkStruct_ov17_0224DF54 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_00 != NULL);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_A3C.unk_00[v0] = 4 - 1 - v0;
        param0->unk_A3C.unk_05[v0] = 4 - 1 - v0;
    }

    ov17_0224CFB8(param0);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_14.unk_A14[v0] = ov17_0224CFA8(Pokemon_GetValue(param0->unk_00->unk_00.unk_00[v0], MON_DATA_SPECIES, NULL));
    }
}

static void ov17_0223E4B0(UnkStruct_ov17_0224DF54 *param0, NARC *param1)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_14.unk_90, 2, param0->unk_14.unk_58, param0->unk_14.unk_5C, param1, 6, 0, 8, NNS_G2D_VRAM_TYPE_2DMAIN, 33001);

    ov17_0224A20C(param0->unk_14.unk_58, param0->unk_14.unk_5C);
    ov17_0224A390(param0->unk_14.unk_58, param0->unk_14.unk_5C, param1);
    ov17_0224A5A8(param0->unk_14.unk_58, param0->unk_14.unk_5C, param1);
    ov17_0224A61C(&param0->unk_14, param0->unk_14.unk_58, param0->unk_14.unk_5C);
    ov17_0224A674(&param0->unk_14);
    ov17_0224A984(param0->unk_14.unk_58, param0->unk_14.unk_5C, param1);
    ov17_0224A9F8(&param0->unk_14, param0->unk_14.unk_58, param0->unk_14.unk_5C);
    ov17_0224C310(param0->unk_14.unk_58, param0->unk_14.unk_5C, param1);
    ov17_0224C384(param0, param0->unk_14.unk_58, param0->unk_14.unk_5C);
    ov17_0224AA94(param0->unk_14.unk_58, param0->unk_14.unk_5C, param1);
    ov17_0224AB08(&param0->unk_14, param0->unk_14.unk_58, param0->unk_14.unk_5C);
    ov17_0224AC80(param0->unk_14.unk_58, param0->unk_14.unk_5C, param1);
    ov17_0224ACF4(&param0->unk_14, param0->unk_14.unk_58, param0->unk_14.unk_5C);
    ov17_0224ACFC(param0->unk_14.unk_58, param0->unk_14.unk_5C, param1);
    ov17_0224AFA8(param0->unk_14.unk_58, param0->unk_14.unk_5C, param1);
    ov17_0224B01C(param0);
}

static void ov17_0223E588(UnkStruct_ov17_0224DF54 *param0)
{
    ov17_0224A210(param0->unk_14.unk_5C);
    ov17_0224A428(param0->unk_14.unk_5C);
    ov17_0224A580(&param0->unk_14);
    ov17_0224A5F8(param0->unk_14.unk_5C);
    ov17_0224A650(&param0->unk_14);
    ov17_0224A7B8(&param0->unk_14);
    ov17_0224A9D4(param0->unk_14.unk_5C);
    ov17_0224AA1C(&param0->unk_14);
    ov17_0224C3E4(param0);
    ov17_0224C360(param0->unk_14.unk_5C);
    ov17_0224AAE4(param0->unk_14.unk_5C);
    ov17_0224ABB0(&param0->unk_14);
    ov17_0224ACD0(param0->unk_14.unk_5C);
    ov17_0224ACF8(&param0->unk_14);
    ov17_0224AD4C(param0->unk_14.unk_5C);
    ov17_0224AFF8(param0->unk_14.unk_5C);
    ov17_0224B058(param0);

    SpriteManager_UnloadPlttObjById(param0->unk_14.unk_5C, 33001);
}

static void ov17_0223E60C(UnkStruct_ov17_0224DF54 *param0, NARC *param1)
{
    SpriteSystem_LoadPaletteBuffer(param0->unk_14.unk_90, 3, param0->unk_14.unk_58, param0->unk_14.unk_5C, 46, 6, 0, 2, NNS_G2D_VRAM_TYPE_2DSUB, 33002);
    SpriteSystem_LoadPaletteBuffer(param0->unk_14.unk_90, 3, param0->unk_14.unk_58, param0->unk_14.unk_5C, 46, 9, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 33003);

    ov17_022493C4(param0->unk_1074);
}

static void ov17_0223E678(UnkStruct_ov17_0224DF54 *param0)
{
    return;
}

static void ov17_0223E67C(UnkStruct_ov17_0224DF54 *param0, NARC *param1)
{
    int v0;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 13, param0->unk_14.unk_60, 3, 0, 0, 1, HEAP_ID_23);

    {
        int v1, v2;
        int v3;

        ov17_0223E3CC(param0, &v1, &v2);
        v3 = ov17_0223F0BC(v2, 0);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v3, param0->unk_14.unk_60, 3, 0, 0, 1, HEAP_ID_23);
    }

    PaletteData_LoadBufferFromFileStart(param0->unk_14.unk_90, 45, 32, 23, 0, 0, 0);
    PaletteData_LoadBufferFromFileStart(param0->unk_14.unk_90, 45, 36, 23, 0, 0x20, 13 * 16);

    v0 = Options_Frame(param0->unk_00->options);
    LoadMessageBoxGraphics(param0->unk_14.unk_60, 1, 1, 15, v0, HEAP_ID_23);
    PaletteData_LoadBufferFromFileStart(param0->unk_14.unk_90, 38, GetMessageBoxPaletteNARCMember(v0), 23, 0, 0x20, 14 * 16);
    ov17_0224C848(param0);

    {
        u16 *v4;

        v4 = PaletteData_GetUnfadedBuffer(param0->unk_14.unk_90, 0);
        MI_CpuCopy16(v4, param0->unk_1050.unk_00, 0x200);
    }
}

static void ov17_0223E76C(UnkStruct_ov17_0224DF54 *param0)
{
    return;
}

static void ov17_0223E770(UnkStruct_ov17_0224DF54 *param0, NARC *param1)
{
    return;
}

static void ov17_0223E774(UnkStruct_ov17_0224DF54 *param0)
{
    return;
}

static void ov17_0223E778(UnkStruct_ov17_0224DF54 *param0)
{
    void *v0;
    Camera *camera;
    void *v2;

    GF_ASSERT(param0->unk_0C == NULL);

    v0 = Heap_AllocFromHeap(HEAP_ID_23, 0x4800);
    param0->unk_0C = ParticleSystem_New(ov17_0223E800, ov17_0223E81C, v0, 0x4800, 1, HEAP_ID_23);

    camera = ParticleSystem_GetCamera(param0->unk_0C);
    Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);

    v2 = ParticleSystem_LoadResourceFromNARC(61, 3, 23);
    ParticleSystem_SetResource(param0->unk_0C, v2, (1 << 1) | (1 << 3), 1);
}

static void ov17_0223E7E0(UnkStruct_ov17_0224DF54 *param0)
{
    void *v0 = ParticleSystem_GetHeapStart(param0->unk_0C);
    ParticleSystem_Free(param0->unk_0C);
    Heap_FreeToHeap(v0);

    param0->unk_0C = NULL;
}

static u32 ov17_0223E800(u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;
    u32 v1;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    ParticleSystem_RegisterTextureKey(v0);

    v1 = NNS_GfdGetTexKeyAddr(v0);
    return v1;
}

static u32 ov17_0223E81C(u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, 0);
    ParticleSystem_RegisterPaletteKey(v0);

    v1 = NNS_GfdGetPlttKeyAddr(v0);
    return v1;
}

static int ov17_0223E838(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    int v0;

    switch (param1->unk_00) {
    case 0:
        if (param0->unk_00->unk_15B > 0) {
            if (param1->unk_04 < 120) {
                param1->unk_04++;
                break;
            }
        }

        if (ov17_0224F30C(&param0->unk_109C, param0, 10, &param0->unk_A3C) == 1) {
            param1->unk_04 = 0;
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223E8AC(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    switch (param1->unk_00) {
    case 0:
        param0->unk_A6C.unk_37 = 0;
        param0->unk_A6C.unk_38 = 0;
        param0->unk_A6C.unk_30.unk_00 = param0->unk_00->unk_00.unk_113;
        param0->unk_A6C.unk_30.unk_04 = ov17_0224C57C(param0->unk_00->unk_00.unk_110);

        if (sub_0209590C(param0->unk_00) == 1) {
            param0->unk_A6C.unk_36 = 2;
        } else {
            param0->unk_A6C.unk_36 = 1;
        }

        if (ov17_0224F30C(&param0->unk_109C, param0, 9, &param0->unk_A6C) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223E954(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_109C, param0, 3, NULL) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223E9A4(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    int v0, v1;
    u64 v2;

    switch (param1->unk_00) {
    case 0:
        ov17_0223E3CC(param0, &v0, &v1);

        param0->unk_14.unk_A10 = &Unk_ov17_02253084[v0];
        param0->unk_A3C.unk_18 = (60 * 30) * 10000 / Unk_ov17_02253084[v0].unk_02;

        v2 = param0->unk_A3C.unk_18 * ov17_0223F0BC(v1, 1);
        v2 = (v2 + 10000 / 2) / 10000;

        param0->unk_A3C.unk_1C = v2;
        param0->unk_A3C.unk_2C = Unk_ov17_02253084[v0].unk_02;
        param0->unk_A3C.unk_20 = param0->unk_A3C.unk_18 * Unk_ov17_02253084[v0].unk_06;
        param0->unk_A3C.unk_24 = param0->unk_A3C.unk_18 * Unk_ov17_02253084[v0].unk_07;
        param0->unk_A3C.unk_28 = param0->unk_A3C.unk_18 / 48;

        param0->unk_A3C.unk_2E = Unk_ov17_02253084[v0].unk_05;
        param0->unk_A3C.unk_14 = Unk_ov17_02253084[v0].unk_00;
        param0->unk_A3C.unk_2F = v1;

        param0->unk_A6C.unk_24 = *(param0->unk_14.unk_A10);
        param0->unk_A6C.unk_08 = param0->unk_A3C.unk_18;
        param0->unk_A6C.unk_0C = param0->unk_A3C.unk_1C;
        param0->unk_A6C.unk_10 = param0->unk_A3C.unk_2C;
        param1->unk_00++;
        break;
    case 1:
        if (ov17_0224F30C(&param0->unk_109C, param0, 10, &param0->unk_A3C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    case 3:
        if (ov17_0224F30C(&param0->unk_109C, param0, 11, &param0->unk_A6C) == 1) {
            param1->unk_00++;
        }
        break;
    case 4:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223EBB0(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    int v0;

    switch (param1->unk_00) {
    case 0:
        param0->unk_A6C.unk_00 = param0->unk_A3C.unk_00[param0->unk_A3C.unk_04];

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_A6C.unk_02[v0] = param0->unk_A3C.unk_05[v0];
        }

        for (v0 = param0->unk_00->unk_00.unk_117; v0 < 4; v0++) {
            param0->unk_A6C.unk_14[v0] = sub_02094E98(param0->unk_00);
        }

        param1->unk_00++;
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223EC20(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_109C, param0, 7, &param0->unk_A6C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223EC74(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_109C, param0, 5, &param0->unk_A6C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223ECC8(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_109C, param0, 8, &param0->unk_A6C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223ED1C(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (param0->unk_A3C.unk_04 >= 4 - 1) {
            return 1;
        }

        param0->unk_A6C.unk_30.unk_00 = param0->unk_A3C.unk_05[1];
        param0->unk_A6C.unk_30.unk_04 = ov17_0224C57C(param0->unk_00->unk_00.unk_110);
        param0->unk_A6C.unk_36 = 0;

        if (ov17_0224F30C(&param0->unk_109C, param0, 6, &param0->unk_A6C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov17_0223ED9C(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    int v0;

    switch (param1->unk_00) {
    case 0:

    {
        int v1;

        v1 = param0->unk_A3C.unk_05[0];

        for (v0 = 0; v0 < 4 - 1; v0++) {
            param0->unk_A3C.unk_05[v0] = param0->unk_A3C.unk_05[v0 + 1];
        }

        param0->unk_A3C.unk_05[4 - 1] = v1;
    }

        param0->unk_A3C.unk_04++;
        param1->unk_00++;
    case 1:
        if (ov17_0224F30C(&param0->unk_109C, param0, 10, &param0->unk_A3C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (param0->unk_A3C.unk_04 < 4) {
            param0->unk_A6C.unk_01++;
            param1->unk_02 = 4;
            return 2;
        }

        return 1;
    }

    return 0;
}

static int ov17_0223EE54(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    switch (param1->unk_00) {
    case 0:
        if (ov17_0224F30C(&param0->unk_109C, param0, 12, &param0->unk_A6C) == 1) {
            param1->unk_00++;
        }
        break;
    case 1:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223EEB8(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    int v0, v1;

    switch (param1->unk_00) {
    case 0: {
        int v2, v3, v4;
        s16 v5[4], v6[4];
        s16 v7[4];
        u8 v8[4];

        for (v2 = 0; v2 < 4; v2++) {
            param0->unk_00->unk_00.unk_118[v2].unk_04 = param0->unk_A3C.unk_0A[v2];
        }

        ov17_02251930(param0->unk_00, 0, v5);
        ov17_02251930(param0->unk_00, 1, v6);

        for (v2 = 0; v2 < 4; v2++) {
            v7[v2] = v5[v2] + v6[v2];
            v8[v2] = v2;
        }

        for (v2 = 0; v2 < 4 - 1; v2++) {
            for (v3 = 4 - 1; v3 > v2; v3--) {
                if (v7[v3 - 1] < v7[v3]) {
                    v4 = v7[v3];
                    v7[v3] = v7[v3 - 1];
                    v7[v3 - 1] = v4;

                    v4 = v8[v3];
                    v8[v3] = v8[v3 - 1];
                    v8[v3 - 1] = v4;
                }
            }
        }

        for (v2 = 0; v2 < 4; v2++) {
            param0->unk_00->unk_156[v2] = v8[v2];
        }
    }

        param0->unk_A6C.unk_37 = 0;
        param0->unk_A6C.unk_38 = 0;
        v1 = param0->unk_00->unk_156[0];
        param0->unk_A6C.unk_30.unk_00 = v1;

        switch (param0->unk_00->unk_00.unk_111) {
        case 0:
        case 1:
        case 2:
            param0->unk_A6C.unk_36 = 6;
            break;
        default:
            param0->unk_A6C.unk_36 = 0;
            break;
        }

        param1->unk_00++;
    case 1:
        if (ov17_0224F30C(&param0->unk_109C, param0, 9, &param0->unk_A6C) == 1) {
            param1->unk_00++;
        }
        break;
    case 2:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

static int ov17_0223F03C(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0223E838 *param1)
{
    UnkStruct_ov17_0223F03C v0;
    int v1;

    switch (param1->unk_00) {
    case 0:
        param1->unk_00++;
    case 1:
        for (v1 = 0; v1 < 4; v1++) {
            v0.unk_00[v1] = param0->unk_00->unk_156[v1];
        }

        if (ov17_0224F30C(&param0->unk_109C, param0, 4, &v0) == 1) {
            param1->unk_00++;
        }
        break;
    default:
        if (ov17_0224F4B8(&param0->unk_109C, param0->unk_00->unk_00.unk_117 - param0->unk_00->unk_15B - 1, param0->unk_00->unk_00.unk_113, param0->unk_00->unk_00.unk_10C) == 1) {
            return 3;
        }
        break;
    }

    return 0;
}

int ov17_0223F0BC(int param0, int param1)
{
    switch (param1) {
    case 3:
        return Unk_ov17_02252FC4[param0].unk_03 * 8;
    case 2:
        return Unk_ov17_02252FC4[param0].unk_03;
    case 1:
        return Unk_ov17_02252FC4[param0].unk_02;
    case 4:
        return Unk_ov17_02252FC4[param0].unk_02 * 2;
    case 0:
        return Unk_ov17_02252FC4[param0].unk_00;
    }

    GF_ASSERT(0);
    return 0;
}
