#include "overlay095/ov95_0224B3D8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay095/ov95_02246C20.h"
#include "overlay095/ov95_022476F0.h"
#include "overlay095/struct_ov95_02247568.h"
#include "overlay095/struct_ov95_02247628_decl.h"
#include "overlay095/struct_ov95_0224773C_decl.h"
#include "overlay095/struct_ov95_02247958_decl.h"

#include "bg_window.h"
#include "enums.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_0202419C.h"

enum {
    UnkEnum_ov95_0224BD5C_00 = -0x780,
    UnkEnum_ov95_0224BD5C_01 = 0x180,
    UnkEnum_ov95_0224BD5C_02 = 0xffff5000
};

enum {
    UnkEnum_ov95_0224BC6C_00 = 0x1000,
    UnkEnum_ov95_0224BC6C_01 = 20
};

enum {
    UnkEnum_ov95_0224B520_00 = 0x13000,
};

typedef struct {
    UnkStruct_ov95_02247628 *unk_00;
    int unk_04;
    int unk_08;
    BOOL unk_0C;
    PokemonSpriteManager *unk_10;
    PokemonSprite *unk_14;
    SpriteAnimationFrame unk_18[10];
    Sprite *unk_40[2];
    UnkStruct_ov95_02247568 unk_48;
    BgConfig *unk_58;
    Window unk_5C;
    Strbuf *unk_6C;
    Strbuf *unk_70;
    UnkStruct_ov95_0224773C *unk_74;
    UnkStruct_ov95_02247958 *unk_78;
    SysTask *unk_7C;
    SysTask *unk_80;
    NARC *unk_84;
} UnkStruct_ov95_0224B4D4;

typedef struct {
    UnkStruct_ov95_0224B4D4 *unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    int unk_10;
} UnkStruct_ov95_0224BBB0;

typedef struct {
    SysTask **unk_00;
    int unk_04;
    void *unk_08;
    int unk_0C;
    UnkStruct_ov95_0224773C *unk_10;
    UnkStruct_ov95_02247958 *unk_14;
    fx32 unk_18;
    fx32 unk_1C;
    int unk_20;
    VecFx32 unk_24;
    fx32 unk_30;
    VecFx16 unk_34;
    fx16 unk_3A;
    fx16 unk_3C;
    fx16 unk_3E;
    int unk_40;
} UnkStruct_ov95_0224BC6C;

static void ov95_0224B4D4(UnkStruct_ov95_0224B4D4 *param0);
static int ov95_0224B520(UnkStruct_ov95_0224B4D4 *param0, int *param1);
static int ov95_0224B6F0(UnkStruct_ov95_0224B4D4 *param0, int *param1);
static int ov95_0224B71C(UnkStruct_ov95_0224B4D4 *param0, int *param1);
static int ov95_0224B81C(UnkStruct_ov95_0224B4D4 *param0, int *param1);
static BOOL ov95_0224B990(UnkStruct_ov95_0224B4D4 *param0, int param1);
static void ov95_0224B9C0(UnkStruct_ov95_0224B4D4 *param0);
static PokemonSprite *ov95_0224BA8C(UnkStruct_ov95_0224B4D4 *param0);
static void ov95_0224BAE8(UnkStruct_ov95_0224B4D4 *param0);
static void ov95_0224BB8C(UnkStruct_ov95_0224B4D4 *param0);
static void ov95_0224BBB0(UnkStruct_ov95_0224B4D4 *param0, int param1, int param2, int param3);
static BOOL ov95_0224BC00(UnkStruct_ov95_0224B4D4 *param0);
static void ov95_0224BC10(UnkStruct_ov95_0224B4D4 *param0);
static void ov95_0224BC30(SysTask *param0, void *param1);
static void ov95_0224BC6C(UnkStruct_ov95_0224B4D4 *param0, SysTask **param1);
static void ov95_0224BCE8(SysTask *param0);
static void ov95_0224BD04(void *param0);
static void ov95_0224BD40(void *param0, fx32 param1, int param2);
static void ov95_0224BD5C(SysTask *param0, void *param1);

void *ov95_0224B3D8(UnkStruct_ov95_02247628 *param0)
{
    UnkStruct_ov95_0224B4D4 *v0 = Heap_AllocFromHeap(HEAP_ID_58, sizeof(UnkStruct_ov95_0224B4D4));

    if (v0) {
        int v1;

        v0->unk_00 = param0;
        v0->unk_04 = 0;
        v0->unk_58 = ov95_02247628(param0);
        v0->unk_10 = PokemonSpriteManager_New(HEAP_ID_58);
        v0->unk_14 = NULL;
        v0->unk_6C = Strbuf_Init(300, HEAP_ID_58);
        v0->unk_70 = Strbuf_Init(300, HEAP_ID_58);
        v0->unk_7C = NULL;
        v0->unk_80 = NULL;
        v0->unk_74 = NULL;
        v0->unk_84 = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, HEAP_ID_58);
    }

    return v0;
}

void ov95_0224B438(void *param0)
{
    UnkStruct_ov95_0224B4D4 *v0 = param0;

    if (v0) {
        int v1;

        ov95_0224BC10(v0);
        ov95_0224BB8C(v0);
        ov95_0224BCE8(v0->unk_80);

        Strbuf_Free(v0->unk_6C);
        Strbuf_Free(v0->unk_70);

        if (v0->unk_74) {
            ov95_0224773C(v0->unk_74);
        }

        Bg_FreeTilemapBuffer(v0->unk_58, BG_LAYER_MAIN_1);
        Window_Remove(&(v0->unk_5C));

        if (v0->unk_14) {
            PokemonSprite_Delete(v0->unk_14);
        }

        NARC_dtor(v0->unk_84);
        PokemonSpriteManager_Free(v0->unk_10);
        Heap_Free(v0);
    }
}

BOOL ov95_0224B49C(void *param0, int *param1)
{
    static int (*const v0[])(UnkStruct_ov95_0224B4D4 *, int *) = {
        ov95_0224B520,
        ov95_0224B6F0,
        ov95_0224B71C,
        ov95_0224B81C
    };

    UnkStruct_ov95_0224B4D4 *v1 = param0;

    if ((*param1) < NELEMS(v0)) {
        if (v0[*param1](v1, &(v1->unk_04))) {
            (*param1)++;
            v1->unk_04 = 0;
        }

        ov95_0224B4D4(v1);

        return 0;
    }

    return 1;
}

static void ov95_0224B4D4(UnkStruct_ov95_0224B4D4 *param0)
{
    G3X_Reset();

    NNS_G3dGePushMtx();

    {
        NNS_G3dGeFlushBuffer();
        NNS_G2dSetupSoftwareSpriteCamera();

        PokemonSpriteManager_UpdateCharAndPltt(param0->unk_10);
        PokemonSpriteManager_DrawSprites(param0->unk_10);
    }

    NNS_G3dGePopMtx(1);

    if (param0->unk_74) {
        ov95_02247770(param0->unk_74);
    }

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

static int ov95_0224B520(UnkStruct_ov95_0224B4D4 *param0, int *param1)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_23_G,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_32_H,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0123_E
    };
    static const GraphicsModes v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };
    static const BgTemplate v2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };
    static const BgTemplate v3 = {
        0,
        0,
        0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x04000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };

    GXLayers_SetBanks(&v0);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    SetAllGraphicsModes(&v1);

    Bg_InitFromTemplate(param0->unk_58, BG_LAYER_MAIN_1, &v2, 0);
    Bg_InitFromTemplate(param0->unk_58, BG_LAYER_MAIN_2, &v3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);

    Bg_FillTilesRange(param0->unk_58, 1, 0x0, 1, 0);
    Bg_FillTilemapRect(param0->unk_58, 1, 0x0, 0, 0, 32, 32, 0);
    LoadMessageBoxGraphics(param0->unk_58, BG_LAYER_MAIN_1, 109, 2, ov95_02247674(param0->unk_00), HEAP_ID_58);

    Window_Add(param0->unk_58, &(param0->unk_5C), 1, 2, 19, 27, 4, 1, 1);
    Window_FillTilemap(&(param0->unk_5C), 0xf);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_FONT, 7, 0, 1 * 0x20, 0x20, HEAP_ID_58);
    Bg_CopyTilemapBufferToVRAM(param0->unk_58, 1);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 22, param0->unk_58, 2, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__DEMO_TRADE, 21, param0->unk_58, 2, 0, 0, 1, HEAP_ID_58);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__DEMO_TRADE, 23, 0, 0 * 0x20, 0x20, HEAP_ID_58);

    ov95_0224B9C0(param0);

    param0->unk_74 = ov95_022476F0(1, 0, 0, 0);
    param0->unk_14 = ov95_0224BA8C(param0);

    PokemonSprite_SetAttribute(param0->unk_14, MON_SPRITE_HIDE, 1);

    param0->unk_78 = ov95_022478B4(param0->unk_74, 0, NARC_INDEX_GRAPHIC__DEMO_TRADE, 27, 0, UnkEnum_ov95_0224B520_00, 491520, 0);

    {
        VecFx16 v4 = { 0x0, 0xf000, 0x0 };
        ov95_02247990(param0->unk_78, &v4);
    }

    ov95_0224BAE8(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG2, 16, 0);
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 16, 1, HEAP_ID_58);

    return 1;
}

static int ov95_0224B6F0(UnkStruct_ov95_0224B4D4 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        if (IsScreenFadeDone()) {
            Sprite_SetAnim(param0->unk_40[0], 1);
            Sprite_SetDrawFlag(param0->unk_40[0], TRUE);
            return 1;
        }
        break;
    }

    return 0;
}

static int ov95_0224B71C(UnkStruct_ov95_0224B4D4 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        ov95_0224BC6C(param0, &(param0->unk_80));
        (*param1)++;
    case 1:
        if (param0->unk_80 == NULL) {
            Sprite_SetAnim(param0->unk_40[1], 2);
            Sprite_SetDrawFlag(param0->unk_40[1], TRUE);
            ov95_022479A8(param0->unk_78, 0);
            param0->unk_08 = 0;
            (*param1)++;
        }
        break;
    case 2:
        if (++(param0->unk_08) > 10) {
            PokemonSprite_SetAttribute(param0->unk_14, MON_SPRITE_HIDE, 0);
            ov95_0224BBB0(param0, 16, 0, 12);
            param0->unk_04++;
        }
        break;
    case 3:
        if (ov95_0224BC00(param0)) {
            const BoxPokemon *v0 = ov95_0224763C(param0->unk_00);

            if (BoxPokemon_GetValue((BoxPokemon *)v0, MON_DATA_IS_EGG, NULL) == 0) {
                u8 delay;

                PokeSprite_LoadCryDelay(param0->unk_84, &delay, ov95_02247660(param0->unk_00), 1);
                Sound_PlayDelayedPokemonCry(ov95_02247660(param0->unk_00), delay, ov95_02247668(param0->unk_00));
                PokemonSprite_InitAnim(param0->unk_14, 1);
            }

            param0->unk_08 = 0;
            (*param1)++;
        }
        break;
    case 4:
        if (++(param0->unk_08) > 30) {
            return 1;
        }
    }

    return 0;
}

static int ov95_0224B81C(UnkStruct_ov95_0224B4D4 *param0, int *param1)
{
    switch (*param1) {
    case 0:
        param0->unk_08 = 0;
        (*param1)++;
        break;
    case 1:
        if (++(param0->unk_08) > 10) {
            MessageLoader *v0 = ov95_02247630(param0->unk_00);
            StringTemplate *v1 = ov95_0224762C(param0->unk_00);
            int v2, v3;

            if (ov95_02247680(param0->unk_00) == 1) {
                v2 = 2;
                v3 = 2;
            } else {
                v2 = 5;
                v3 = 3;
            }

            MessageLoader_GetStrbuf(v0, v2, param0->unk_6C);
            StringTemplate_Format(v1, param0->unk_70, param0->unk_6C);
            Text_AddPrinterWithParams(&(param0->unk_5C), FONT_MESSAGE, param0->unk_70, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);

            Window_DrawMessageBox(&(param0->unk_5C), 109, 2);
            Window_CopyToVRAM(&(param0->unk_5C));
            Sound_PlayFanfare(SEQ_FANFA5);

            param0->unk_08 = 0;
            param0->unk_0C = 1;
            (*param1) = v3;
        }
        break;
    case 2:
        if (ov95_0224B990(param0, 60)) {
            MessageLoader *v4 = ov95_02247630(param0->unk_00);
            StringTemplate *v5 = ov95_0224762C(param0->unk_00);

            MessageLoader_GetStrbuf(v4, 3, param0->unk_6C);
            StringTemplate_Format(v5, param0->unk_70, param0->unk_6C);
            Window_FillTilemap(&(param0->unk_5C), 0xf);
            Text_AddPrinterWithParams(&(param0->unk_5C), FONT_MESSAGE, param0->unk_70, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            Window_LoadTiles(&(param0->unk_5C));
            param0->unk_08 = 0;
            (*param1)++;
        }
        break;
    case 3:
        if (ov95_0224B990(param0, 60)) {
            Window_EraseMessageBox(&(param0->unk_5C), 0);
            param0->unk_08 = 0;
            (*param1)++;
        }
        break;
    case 4:
        if (++(param0->unk_08) > 10) {
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 16, 1, HEAP_ID_58);
            (*param1)++;
        }
        break;
    case 5:
        if (IsScreenFadeDone()) {
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov95_0224B990(UnkStruct_ov95_0224B4D4 *param0, int param1)
{
    if (param0->unk_0C) {
        param0->unk_0C = Sound_IsBGMPausedByFanfare();
    }

    if (param0->unk_08 < param1) {
        param0->unk_08++;
        return 0;
    }

    return param0->unk_0C == 0;
}

static void ov95_0224B9C0(UnkStruct_ov95_0224B4D4 *param0)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);

    v0 = NNS_GfdAllocTexVram(0x4000, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x80, 0, NNS_GFD_ALLOC_FROM_LOW);

    PokemonSpriteManager_SetCharBaseAddrAndSize(param0->unk_10, NNS_GfdGetTexKeyAddr(v0), NNS_GfdGetTexKeySize(v0));
    PokemonSpriteManager_SetPlttBaseAddrAndSize(param0->unk_10, NNS_GfdGetPlttKeyAddr(v1), NNS_GfdGetPlttKeySize(v1));
}

static PokemonSprite *ov95_0224BA8C(UnkStruct_ov95_0224B4D4 *param0)
{
    PokemonSpriteTemplate v0;
    BoxPokemon *v1;
    int v2;

    v1 = (BoxPokemon *)ov95_0224763C(param0->unk_00);

    BoxPokemon_BuildSpriteTemplate(&v0, v1, 2, 0);
    PokeSprite_LoadAnimationFrames(param0->unk_84, param0->unk_18, ov95_02247660(param0->unk_00), 1);

    v2 = (100 - 20) + BoxPokemon_SpriteYOffset(v1, 2, 0);
    return PokemonSpriteManager_CreateSprite(param0->unk_10, &v0, 128, v2, 0, 0, param0->unk_18, NULL);
}

static void ov95_0224BAE8(UnkStruct_ov95_0224B4D4 *param0)
{
    NNSG2dImagePaletteProxy v0;
    NNSG2dImageProxy v1;
    SpriteResourcesHeader v2;

    ov95_02247568(&param0->unk_48, 93, 7, 8);

    NNS_G2dInitImagePaletteProxy(&v0);
    NNS_G2dInitImageProxy(&v1);

    Graphics_LoadImageMapping(93, 9, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &v1);
    Graphics_LoadPartialPalette(93, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &v0);

    ov95_022475C4(&v2, &param0->unk_48, &v1, &v0, 2);

    param0->unk_40[0] = ov95_022475E4(param0->unk_00, &v2, 128, 100, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
    param0->unk_40[1] = ov95_022475E4(param0->unk_00, &v2, 128, 90, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

    Sprite_SetExplicitPriority(param0->unk_40[1], 1);
    Sprite_SetDrawFlag(param0->unk_40[0], FALSE);
    Sprite_SetDrawFlag(param0->unk_40[1], FALSE);
}

static void ov95_0224BB8C(UnkStruct_ov95_0224B4D4 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_40[v0]) {
            Sprite_Delete(param0->unk_40[v0]);
        }
    }

    ov95_022475A0(&param0->unk_48);
}

static void ov95_0224BBB0(UnkStruct_ov95_0224B4D4 *param0, int param1, int param2, int param3)
{
    UnkStruct_ov95_0224BBB0 *v0 = Heap_AllocFromHeap(HEAP_ID_58, sizeof(UnkStruct_ov95_0224BBB0));

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_04 = param1 << 12;
        v0->unk_08 = param2 << 12;
        v0->unk_0C = (v0->unk_08 - v0->unk_04) / param3;
        v0->unk_10 = param3;
        param0->unk_7C = SysTask_ExecuteOnVBlank(ov95_0224BC30, v0, 0);

        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, param1);
    }
}

static BOOL ov95_0224BC00(UnkStruct_ov95_0224B4D4 *param0)
{
    return param0->unk_7C == NULL;
}

static void ov95_0224BC10(UnkStruct_ov95_0224B4D4 *param0)
{
    if (param0->unk_7C) {
        ov95_022476C8(SysTask_GetParam(param0->unk_7C));
        SysTask_Done(param0->unk_7C);
        param0->unk_7C = NULL;
    }
}

static void ov95_0224BC30(SysTask *param0, void *param1)
{
    UnkStruct_ov95_0224BBB0 *v0 = param1;
    int v1;

    if (--(v0->unk_10) > 0) {
        v0->unk_04 += v0->unk_0C;
        v1 = v0->unk_04 >> 12;
        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, v1);
    } else {
        v1 = v0->unk_08 >> 12;
        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0, v1);
        ov95_0224BC10(v0->unk_00);
    }
}

static void ov95_0224BC6C(UnkStruct_ov95_0224B4D4 *param0, SysTask **param1)
{
    UnkStruct_ov95_0224BC6C *v0 = Heap_AllocFromHeap(HEAP_ID_58, sizeof(UnkStruct_ov95_0224BC6C));

    if (v0) {
        v0->unk_04 = 0;
        v0->unk_00 = param1;
        v0->unk_10 = param0->unk_74;
        v0->unk_14 = param0->unk_78;
        v0->unk_08 = param0;
        v0->unk_18 = 0;
        v0->unk_1C = (31 << 12) / UnkEnum_ov95_0224BC6C_01;
        v0->unk_20 = UnkEnum_ov95_0224BC6C_01;
        v0->unk_3A = UnkEnum_ov95_0224BC6C_00;
        v0->unk_40 = 0;

        ov95_022479AC(v0->unk_14, 0);
        ov95_022479A8(v0->unk_14, 1);
        ov95_02247958(v0->unk_14, &(v0->unk_24));
        ov95_02247978(v0->unk_14, &(v0->unk_34));

        *param1 = SysTask_Start(ov95_0224BD5C, v0, 0);

        if (*param1 == NULL) {
            Heap_Free(v0);
        }
    } else {
        *param1 = NULL;
    }
}

static void ov95_0224BCE8(SysTask *param0)
{
    if (param0) {
        UnkStruct_ov95_0224BC6C *v0 = SysTask_GetParam(param0);

        *(v0->unk_00) = NULL;
        Heap_Free(v0);
        SysTask_Done(param0);
    }
}

static void ov95_0224BD04(void *param0)
{
    UnkStruct_ov95_0224BC6C *v0 = param0;

    if (v0->unk_40) {
        v0->unk_3A += v0->unk_3C;

        if (--(v0->unk_40) == 0) {
            v0->unk_3A = v0->unk_3E;
        }
    }

    v0->unk_34.y += v0->unk_3A;
    ov95_02247990(v0->unk_14, &(v0->unk_34));
}

static void ov95_0224BD40(void *param0, fx32 param1, int param2)
{
    if (param2) {
        UnkStruct_ov95_0224BC6C *v0 = param0;

        v0->unk_3C = (param1 - v0->unk_3A) / param2;
        v0->unk_40 = param2;
    }
}

static void ov95_0224BD5C(SysTask *param0, void *param1)
{
    UnkStruct_ov95_0224BC6C *v0 = param1;

    ov95_0224BD04(v0);

    switch (v0->unk_04) {
    case 0:
        if (v0->unk_20) {
            v0->unk_18 += v0->unk_1C;
            v0->unk_20--;
            ov95_022479AC(v0->unk_14, v0->unk_18 >> 12);
        } else {
            ov95_022479AC(v0->unk_14, 31);
            v0->unk_04++;
        }
        break;
    case 1:
        ov95_0224BD40(v0, UnkEnum_ov95_0224BD5C_01, 30);
        v0->unk_0C = 0;
        v0->unk_04++;
        break;
    case 2:
        if (++(v0->unk_0C) > 10) {
            v0->unk_30 = 0;
            v0->unk_04++;
        }
        break;
    case 3:
        v0->unk_24.y += v0->unk_30;
        v0->unk_30 += UnkEnum_ov95_0224BD5C_00;

        ov95_02247968(v0->unk_14, &(v0->unk_24));

        if (v0->unk_24.y < UnkEnum_ov95_0224BD5C_02) {
            Sound_PlayEffect(SEQ_SE_DP_KON);
            v0->unk_30 *= -1;

            ov95_0224BBB0(v0->unk_08, 0, 16, 8);
            v0->unk_04++;
        }
        break;
    case 4:
        v0->unk_24.y += v0->unk_30;

        if (v0->unk_24.y >= UnkEnum_ov95_0224B520_00) {
            v0->unk_24.y = UnkEnum_ov95_0224B520_00;
        }

        ov95_02247968(v0->unk_14, &(v0->unk_24));

        if (v0->unk_24.y == UnkEnum_ov95_0224B520_00) {
            v0->unk_04++;
        }
        break;
    case 5:
        if (ov95_0224BC00(v0->unk_08)) {
            ov95_0224BCE8(param0);
        }
    }
}
