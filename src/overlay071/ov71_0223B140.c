#include "overlay071/ov71_0223B140.h"

#include <nitro.h>
#include <string.h>

#include "generated/genders.h"

#include "struct_defs/struct_02099F80.h"

#include "overlay071/ov71_0223CF0C.h"
#include "overlay071/ov71_0223D324.h"
#include "overlay071/struct_ov71_0223B620.h"
#include "overlay071/struct_ov71_0223C444.h"
#include "overlay071/trainer_card_display_text.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "system.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "unk_020393C8.h"
#include "vram_transfer.h"

#include "res/text/bank/trainer_card.h"

typedef struct {
    const TouchScreenRect *unk_00[2];
} UnkStruct_ov71_0223D4D0;

static void ov71_0223B620(UnkStruct_ov71_0223B620 *param0);
static void ov71_0223B668(UnkStruct_ov71_0223B620 *param0);
static void ov71_0223B688(void);
static void ov71_0223B858(BgConfig *bgConfig);
static void ov71_0223B968(UnkStruct_ov71_0223B620 *param0, NARC *narc);
static void ov71_0223BBDC(BgConfig *bgConfig);
static BOOL ov71_0223BC20(UnkStruct_ov71_0223B620 *param0);
static BOOL ov71_0223BDF8(UnkStruct_ov71_0223B620 *param0);
static BOOL ov71_0223C334(UnkStruct_ov71_0223B620 *param0, const u8 *param1);
static int ov71_0223BEF8(UnkStruct_ov71_0223B620 *param0);
static void ov71_0223BFBC(UnkStruct_ov71_0223B620 *param0);
static void ov71_0223B6A8(const u8 stars, const u8 pokedexObtained, NARC *narc);
static void ov71_0223B768(const u8 gameVersion, NARC *narc);
static void ov71_0223B820(const u8 param0, NARC *narc);
static void ov71_0223C0D8(UnkStruct_ov71_0223B620 *param0, const u8 param1);
static void ov71_0223C128(UnkStruct_ov71_0223B620 *param0, const u8 param1);
static void ov71_0223C18C(void *param0);
static void ov71_0223C390(UnkStruct_ov71_0223B620 *param0);
static void ov71_0223C3E8(UnkStruct_ov71_0223B620 *param0);
static void ov71_0223C1AC(UnkStruct_ov71_0223B620 *param0, const u8 param1);
static void ov71_0223C288(void);
static void ov71_0223C2F4(UnkStruct_ov71_0223B620 *param0);
static const u8 ov71_0223C40C(const int param0);
static void ov71_0223C444(UnkStruct_ov71_0223C444 *param0);
static void ov71_0223C44C(UnkStruct_ov71_0223C444 *param0);
static void ov71_0223C45C(UnkStruct_ov71_0223C444 *param0);
static void ov71_0223C4DC(const u8 *param0, u8 *param1);
static void ov71_0223C530(BgConfig *bgConfig, const int param1, const u8 *param2);
static void ov71_0223C594(const int unused);
static void ov71_0223C5A4(UnkStruct_ov71_0223B620 *param0, const u8 param1);
static int ov71_0223C60C(BgConfig *bgConfig, const TouchScreenRect *rect);
static int ov71_0223C654(BgConfig *bgConfig, const TouchScreenRect *rect);

static const u8 Unk_ov71_0223D4B0[5] = {
    0x1,
    0x3,
    0x4,
    0xF,
    0xF
};

static const TouchScreenRect Unk_ov71_0223D5A4[] = {
    { 0x98, 0xB7, 0x78, 0x97 },
    { 0x28, 0x4F, 0x18, 0x3F },
    { 0x28, 0x4F, 0x50, 0x77 },
    { 0x28, 0x4F, 0x88, 0xA7 },
    { 0x28, 0x4F, 0xC0, 0xE7 },
    { 0x60, 0x87, 0x18, 0x3F },
    { 0x60, 0x87, 0x50, 0x77 },
    { 0x60, 0x87, 0x88, 0xA7 },
    { 0x60, 0x87, 0xC0, 0xE7 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov71_0223D4C0[] = {
    { 0x98, 0xB7, 0x78, 0x97 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const UnkStruct_ov71_0223D4D0 Unk_ov71_0223D4D0[] = {
    { Unk_ov71_0223D4C0, Unk_ov71_0223D4C0 },
    { Unk_ov71_0223D4C0, Unk_ov71_0223D5A4 }
};

static const u8 Unk_ov71_0223D4A8[] = {
    0x1,
    0x1,
    0x0,
    0x2
};

static const u8 Unk_ov71_0223D4AC[] = {
    0x1,
    0x1,
    0x0,
    0x0
};

static const u8 *const Unk_ov71_0223D4C8[] = {
    Unk_ov71_0223D4A8,
    Unk_ov71_0223D4AC
};

static const int Unk_ov71_0223D604[16] = {
    0x40,
    0x3D,
    0x34,
    0x37,
    0x39,
    0x3A,
    0x3E,
    0x36,
    0x3C,
    0x32,
    0x41,
    0x35,
    0x38,
    0x3B,
    0x33,
    0x3F
};

int ov71_0223B140(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov71_0223B620 *v0;
    NARC *v1;

    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_TRAINER_CARD_SCREEN, HEAP_SIZE_TRAINER_CARD_SCREEN);

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__TRAINER_CASE, HEAP_ID_TRAINER_CARD_SCREEN);
    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov71_0223B620), HEAP_ID_TRAINER_CARD_SCREEN);

    memset(v0, 0, sizeof(UnkStruct_ov71_0223B620));

    v0->trainerCard = ApplicationManager_Args(appMan);
    v0->bgConfig = BgConfig_New(HEAP_ID_TRAINER_CARD_SCREEN);

    ov71_0223B620(v0);
    ov71_0223B688();
    ov71_0223B858(v0->bgConfig);
    ov71_0223B968(v0, v1);

    EnableTouchPad();
    InitializeTouchPad(4);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_56, SEQ_NONE, 0);
    ov71_0223D324(&v0->unk_3354);
    Sound_PlayEffect(SEQ_SE_DP_CARD3);
    ov71_0223CF0C(&v0->unk_30E4, v1);

    {
        int v2;
        u8 v3[8];

        for (v2 = 0; v2 < 8; v2++) {
            if (v0->trainerCard->unk_48[v2].unk_00_0) {
                v3[v2] = 1;
            } else {
                v3[v2] = 0;
            }
        }

        ov71_0223D070(&v0->unk_30E4, v3);
    }

    TrainerCard_AddWindows(v0->bgConfig, v0->windows);

    {
        u8 v4;

        for (v4 = 0; v4 < 8; v4++) {
            if ((v0->trainerCard->unk_02 >> v4) & 0x1) {
                ov71_0223C128(v0, v4);
            }
        }

        Bg_CopyTilemapBufferToVRAM(v0->bgConfig, BG_LAYER_MAIN_3);
    }

    TrainerCard_DrawFrontText(v0->windows, v0->trainerCard);

    if (v0->trainerCard->unk_04_1) {
        TrainerCard_BlinkPlaytimeColon(&(v0->windows[TRAINER_CARD_WINDOW_TIME]), TRUE, v0->colonStrbuf);
    }

    v0->unk_30C0 = 0;
    v0->unk_337C = 0;
    v0->unk_30D4 = 0xffffffff;
    v0->unk_3350 = 0;
    v0->unk_3381 = 0;

    {
        u8 v5;
        u8 v6;

        for (v6 = 0; v6 < 8; v6++) {
            v0->unk_3374[v6] = 0;

            if (v0->trainerCard->unk_48[v6].unk_00_0) {
                v5 = ov71_0223C40C(v0->trainerCard->unk_48[v6].unk_00_1);

                if (v5 <= 4) {
                    if (v5 == 4) {
                        ov71_0223D298(&v0->unk_30E4, v6, 0);
                    } else {
                        ov71_0223D298(&v0->unk_30E4, v6, 3 - v5);
                    }
                }

                if (v5 == 4 - 1) {
                    Sprite_SetDrawFlag(v0->unk_30E4.unk_1C0[8 + v6], TRUE);
                } else if (v5 == 4) {
                    Sprite_SetDrawFlag(v0->unk_30E4.unk_1C0[(8 + 8) + v6], TRUE);
                }
            }
        }
    }

    ov71_0223C288();

    SetVBlankCallback(ov71_0223C18C, NULL);
    DrawWifiConnectionIcon();
    Sound_SetPlayerVolume(1, (127 / 3));
    StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_UNK_3, FADE_TYPE_UNK_3, FADE_TO_BLACK, 6, 1, HEAP_ID_TRAINER_CARD_SCREEN);
    NARC_dtor(v1);

    return 1;
}

int ov71_0223B388(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov71_0223B620 *v0 = ApplicationManager_Data(appMan);

    switch (*param1) {
    case 0:
        if (IsScreenFadeDone()) {
            *param1 = 1;
        }

        break;

    case 1: {
        int v1;

        v1 = ov71_0223BEF8(v0);

        if (v1 == 1) {
            if (v0->unk_30D4 == 0) {
                v0->unk_3350 = 1;
                v0->unk_3381 = 1;

                Sprite_SetDrawFlag(v0->unk_30E4.unk_1C0[((8 + 8) + 8)], TRUE);
                Sprite_SetAnimateFlag(v0->unk_30E4.unk_1C0[((8 + 8) + 8)], 1);
                Sprite_SetAnim(v0->unk_30E4.unk_1C0[((8 + 8) + 8)], 10);

                v0->unk_337E = 0;
                v0->unk_3380 = 0;
                v0->unk_337F = 0;
                v0->unk_30D8 = 0;
                *param1 = 4;
            } else {
                u8 v2 = v0->unk_30D4 - 1;

                if (v0->trainerCard->unk_48[v2].unk_00_0) {
                    u8 v3;

                    v3 = ov71_0223C40C(v0->trainerCard->unk_48[v2].unk_00_1);
                    ov71_0223D338(&v0->unk_3354, v2, v3);
                }
            }
        } else if (v1 == 2) {
            if ((v0->unk_3350) && (v0->unk_30D4 != 0)) {
                v0->unk_3350 = 0;
                v0->unk_3381 = 2;
            }

            ov71_0223BFBC(v0);
        } else {
            if ((v0->unk_3350) && (v0->unk_3381 == 0)) {
                v0->unk_3350 = 0;
                v0->unk_3381 = 2;
            }

            if (v0->trainerCard->unk_04_0) {
                ov71_0223C44C(&v0->unk_3364);
            }

            if (v1 == 3) {
                v0->unk_337E = 0;
                *param1 = 3;
            } else if (v1 == 4) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);

                StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UNK_4, FADE_TYPE_UNK_4, FADE_TO_BLACK, 6, 1, HEAP_ID_TRAINER_CARD_SCREEN);
                *param1 = 2;
            }
        }

        ov71_0223C5A4(v0, v0->trainerCard->unk_04_1);
    } break;
    case 2:
        if (IsScreenFadeDone()) {
            return 1;
        }
        break;
    case 3:
        if (ov71_0223BC20(v0)) {
            *param1 = 1;
        }
        break;
    case 4:
        if (v0->unk_3381 == 0) {
            int v4;

            v4 = ov71_0223BEF8(v0);

            if (v4 == 1) {
                if (v0->unk_30D4 == 0) {
                    v0->unk_3350 = 1;
                    v0->unk_3381 = 1;
                    v0->unk_3380 = 0;
                    v0->unk_337F = 0;
                }
            } else if (v4 == 2) {
                if ((v0->unk_3350) && (v0->unk_30D4 != 0)) {
                    v0->unk_3350 = 0;
                    v0->unk_3381 = 2;
                }
            } else {
                if (v0->unk_3350) {
                    v0->unk_3350 = 0;
                    v0->unk_3381 = 2;
                }
            }
        }

        if (v0->unk_30D8 == 0) {
            v0->unk_30D8 = ov71_0223BDF8(v0);
        }

        if (v0->unk_30D8) {
            v0->unk_30D8 = 0;
            *param1 = 1;
        }
        break;
    }

    ov71_0223C2F4(v0);
    SpriteList_Update(v0->unk_30E4.unk_00);

    return 0;
}

int ov71_0223B5B8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov71_0223B620 *v0 = ApplicationManager_Data(appMan);

    ov71_0223C288();
    ov71_0223B668(v0);
    ov71_0223D238(&v0->unk_30E4);

    Heap_Free(v0->unk_30B8);
    Heap_Free(v0->unk_335C);

    TrainerCard_RemoveWindows(v0->windows);
    ov71_0223BBDC(v0->bgConfig);

    DisableTouchPad();
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_TRAINER_CARD_SCREEN);
    Sound_SetPlayerVolume(1, 127);

    return 1;
}

static void ov71_0223B620(UnkStruct_ov71_0223B620 *param0)
{
    param0->unusedStrbuf = Strbuf_Init(4, HEAP_ID_TRAINER_CARD_SCREEN);
    param0->colonStrbuf = Strbuf_Init(5, HEAP_ID_TRAINER_CARD_SCREEN);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CARD_SCREEN);

    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Colon, param0->colonStrbuf);
    MessageLoader_Free(messageLoader);
}

static void ov71_0223B668(UnkStruct_ov71_0223B620 *param0)
{
    Strbuf_Free(param0->unusedStrbuf);
    Strbuf_Free(param0->colonStrbuf);
}

static void ov71_0223B688(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_64_E,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov71_0223B6A8(const u8 stars, const u8 pokedexObtained, NARC *narc)
{
    {
        void *v0;
        NNSG2dPaletteData *v1;

        if (pokedexObtained) {
            switch (stars) {
            case 0:
                v0 = Graphics_GetPlttDataFromOpenNARC(narc, 0, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
                break;
            case 1:
                v0 = Graphics_GetPlttDataFromOpenNARC(narc, 1, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
                break;
            case 2:
                v0 = Graphics_GetPlttDataFromOpenNARC(narc, 2, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
                break;
            case 3:
                v0 = Graphics_GetPlttDataFromOpenNARC(narc, 3, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
                break;
            case 4:
                v0 = Graphics_GetPlttDataFromOpenNARC(narc, 4, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
                break;
            case 5:
                v0 = Graphics_GetPlttDataFromOpenNARC(narc, 5, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
                break;
            }
        } else {
            v0 = Graphics_GetPlttDataFromOpenNARC(narc, 6, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
        }

        {
            u16 *v2;

            DC_FlushRange(v1->pRawData, 2 * 16 * 16);
            v2 = v1->pRawData;

            GXS_LoadBGPltt(&v2[16], 2 * 16, 2 * 16 * 3);
            GXS_LoadBGPltt(&v2[16 * 15], 2 * 16 * 15, 2 * 16);

            Heap_Free(v0);
        }
    }
}

static void ov71_0223B768(const u8 gameVersion, NARC *narc)
{
    void *v0;
    NNSG2dPaletteData *v1;

    switch (gameVersion) {
    case VERSION_DIAMOND:
        v0 = Graphics_GetPlttDataFromOpenNARC(narc, 7, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    case VERSION_PEARL:
        v0 = Graphics_GetPlttDataFromOpenNARC(narc, 8, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    case VERSION_PLATINUM:
        v0 = Graphics_GetPlttDataFromOpenNARC(narc, 10, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    case VERSION_HEARTGOLD:
        v0 = Graphics_GetPlttDataFromOpenNARC(narc, 11, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    case VERSION_SOULSILVER:
        v0 = Graphics_GetPlttDataFromOpenNARC(narc, 12, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    default:
        v0 = Graphics_GetPlttDataFromOpenNARC(narc, 9, &v1, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    }

    DC_FlushRange(v1->pRawData, 2 * 16);

    GX_LoadBGPltt(v1->pRawData, 0, 2 * 16);
    GXS_LoadBGPltt(v1->pRawData, 0, 2 * 16);

    Heap_Free(v0);
}

static void ov71_0223B820(const u8 param0, NARC *narc)
{
    void *v0;
    u8 *v1;
    NNSG2dPaletteData *v2;

    v0 = Graphics_GetPlttDataFromOpenNARC(narc, 48, &v2, HEAP_ID_TRAINER_CARD_SCREEN);
    v1 = (u8 *)(v2->pRawData);

    DC_FlushRange(&v1[2 * 16 * param0], 2 * 16);
    GXS_LoadBGPltt(&v1[2 * 16 * param0], 2 * 16 * 4, 2 * 16);

    Heap_Free(v0);
}

static void ov71_0223B858(BgConfig *bgConfig)
{
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_1,
            GX_BGMODE_4,
            GX_BG0_AS_2D,
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &v1, BG_TYPE_STATIC_WITH_AFFINE);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_3);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &v2, BG_TYPE_STATIC);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_1);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_2, &v3, BG_TYPE_AFFINE);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_2);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &v4, BG_TYPE_STATIC);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &v5, BG_TYPE_AFFINE);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
    }
}

static void ov71_0223B968(UnkStruct_ov71_0223B620 *param0, NARC *narc)
{
    {
        void *v0;
        NNSG2dPaletteData *v1;

        v0 = Graphics_GetPlttDataFromOpenNARC(narc, 0, &v1, HEAP_ID_TRAINER_CARD_SCREEN);

        DC_FlushRange(v1->pRawData, 2 * 16 * 16);
        GXS_LoadBGPltt(v1->pRawData, 0, 2 * 16 * 16);
        Heap_Free(v0);
    }

    ov71_0223B6A8(param0->trainerCard->stars, param0->trainerCard->pokedexObtained, narc);

    {
        void *v2;
        NNSG2dPaletteData *v3;

        v2 = Graphics_GetPlttDataFromOpenNARC(narc, 13, &v3, HEAP_ID_TRAINER_CARD_SCREEN);

        DC_FlushRange(v3->pRawData, 16 * 2 * 16);
        GX_LoadBGPltt(v3->pRawData, 0, 16 * 2 * 16);
        Heap_Free(v2);
    }

    ov71_0223B768(param0->trainerCard->gameVersion, narc);

    if (param0->trainerCard->unk_05 == 0xff) {
        s32 v4, v5, v6;

        switch (param0->trainerCard->gameVersion) {
        case VERSION_DIAMOND:
        case VERSION_PEARL:
            v4 = 32;
            v5 = 42;
            v6 = 26;
            break;
        default:
            v4 = 31;
            v5 = 40;
            v6 = -1;
            break;
        }

        {
            BOOL v7;

            param0->unk_30B8 = LoadMemberFromOpenNARC(narc, v4, 0, HEAP_ID_TRAINER_CARD_SCREEN, 0);
            GF_ASSERT(param0->unk_30B8 != NULL);

            v7 = NNS_G2dGetUnpackedBGCharacterData(param0->unk_30B8, &param0->unk_30BC);
            GF_ASSERT(v7);
        }

        if (v6 != -1) {
            Graphics_LoadPaletteFromOpenNARC(narc, v6, 4, (4 * 32), (2 * 32), HEAP_ID_TRAINER_CARD_SCREEN);
        }

        if (param0->trainerCard->gender == GENDER_MALE) {
            param0->unk_335C = Graphics_GetScrnDataFromOpenNARC(narc, v5, 0, &param0->unk_3360, HEAP_ID_TRAINER_CARD_SCREEN);
        } else {
            param0->unk_335C = Graphics_GetScrnDataFromOpenNARC(narc, v5 + 1, 0, &param0->unk_3360, HEAP_ID_TRAINER_CARD_SCREEN);
        }
    } else {
        {
            BOOL v8;

            param0->unk_30B8 = LoadMemberFromOpenNARC(narc, Unk_ov71_0223D604[param0->trainerCard->unk_05], 0, HEAP_ID_TRAINER_CARD_SCREEN, 0);
            GF_ASSERT(param0->unk_30B8 != NULL);

            v8 = NNS_G2dGetUnpackedBGCharacterData(param0->unk_30B8, &param0->unk_30BC);
            GF_ASSERT(v8);

            param0->unk_335C = Graphics_GetScrnDataFromOpenNARC(narc, 49, 0, &param0->unk_3360, HEAP_ID_TRAINER_CARD_SCREEN);

            ov71_0223B820(param0->trainerCard->unk_05, narc);
        }
    }

    ov71_0223C390(param0);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 27, param0->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 35, param0->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 28, param0->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 37, param0->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 29, param0->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 38, param0->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 30, param0->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 39, param0->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);

    ov71_0223C4DC(param0->trainerCard->signature, param0->unk_B8);
}

static void ov71_0223BBDC(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ, 0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Heap_Free(bgConfig);
}

static BOOL ov71_0223BC20(UnkStruct_ov71_0223B620 *param0)
{
    BOOL v0;
    MtxFx22 v1;
    fx32 v2, v3;

    v0 = 0;

    switch (param0->unk_337E) {
    case 0:
        param0->unk_3348 = 8;
        param0->unk_30C8 = 1 << FX32_SHIFT;
        param0->unk_30CC = 1 << FX32_SHIFT;
        param0->unk_30C8 += 2 << (FX32_SHIFT - 6);
        param0->unk_30CC += 2 << (FX32_SHIFT - 6);

        Sound_PlayEffect(SEQ_SE_DP_CARD5);

        param0->unk_337E++;
        break;
    case 1:
        param0->unk_30C8 -= 2 << (FX32_SHIFT - param0->unk_3348);

        if (param0->unk_30C8 <= 0) {
            param0->unk_30C8 = 0x24;
            param0->unk_337E++;
        }

        param0->unk_3348--;

        if (param0->unk_3348 <= 1) {
            param0->unk_3348 = 1;
        }
        break;
    case 2:
        if (param0->unk_30C0 == 0) {
            param0->unk_30C0 = 1;
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__TRAINER_CASE, 36, param0->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
            TrainerCard_ClearWindows(param0->windows, TRAINER_CARD_WINDOW_ID, TRAINER_CARD_WINDOW_ADVENTURE_STARTED);
            ov71_0223C3E8(param0);
            Bg_ClearTilemap(param0->bgConfig, BG_LAYER_SUB_3);
            TrainerCard_DrawBackText(param0->windows, param0->trainerCard);
            ov71_0223C530(param0->bgConfig, BG_LAYER_SUB_3, param0->unk_B8);
        } else {
            param0->unk_30C0 = 0;
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__TRAINER_CASE, 35, param0->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
            TrainerCard_ClearWindows(param0->windows, TRAINER_CARD_WINDOW_HOF_DEBUT, TRAINER_CARD_WINDOW_LINK_TRADES);
            Bg_ClearTilemap(param0->bgConfig, BG_LAYER_SUB_3);
            ov71_0223C390(param0);
            TrainerCard_DrawFrontText(param0->windows, param0->trainerCard);
        }

        param0->unk_337E++;
        break;
    case 3:
        param0->unk_3348++;

        if (param0->unk_3348 > 8) {
            param0->unk_3348 = 8;
        }

        param0->unk_30C8 += 2 << (FX32_SHIFT - param0->unk_3348);

        if (param0->unk_30C8 >= (1 << FX32_SHIFT)) {
            param0->unk_30C8 = 1 << FX32_SHIFT;
            param0->unk_30C8 = 1 << FX32_SHIFT;
            param0->unk_30CC = 1 << FX32_SHIFT;
            v0 = 1;
        }
        break;
    }

    v2 = FX_Inv(param0->unk_30C8);
    v3 = FX_Inv(param0->unk_30CC);

    v1._00 = v2;
    v1._01 = 0;
    v1._10 = 0;
    v1._11 = v3;

    SVC_WaitVBlankIntr();

    G2S_SetBG2Affine(&v1, 128, 96, 0, 0);
    G2S_SetBG3Affine(&v1, 128, 96, 0, 0);

    return v0;
}

static const fx32 Unk_ov71_0223D5CC[] = {
    2 << (FX32_SHIFT - 6),
    2 << (FX32_SHIFT - 6),
    2 << (FX32_SHIFT - 6),
    2 << (FX32_SHIFT - 6),
    2 << (FX32_SHIFT - 6),
    2 << (FX32_SHIFT - 5),
    2 << (FX32_SHIFT - 5),
    2 << (FX32_SHIFT - 5),
    2 << (FX32_SHIFT - 5),
    2 << (FX32_SHIFT - 5),
    2 << (FX32_SHIFT - 4),
    2 << (FX32_SHIFT - 4),
    2 << (FX32_SHIFT - 4),
    2 << (FX32_SHIFT - 4)
};

static BOOL ov71_0223BDF8(UnkStruct_ov71_0223B620 *param0)
{
    MtxFx22 v0;
    fx32 v1, v2;

    switch (param0->unk_337E) {
    case 0:
        param0->unk_337D = 0;

        if (param0->unk_337C == 0) {
            param0->unk_30D0 = 1 << FX32_SHIFT;
            param0->unk_337E = 1;
        } else {
            param0->unk_337E = 2;
        }

        ov71_0223C594(param0->unk_337C);
        break;
    case 1:
        param0->unk_30D0 -= Unk_ov71_0223D5CC[param0->unk_337D++];

        if (param0->unk_337D == 14) {
            param0->unk_337C = 1;
            param0->unk_337E = 3;
        }
        break;
    case 2:
        param0->unk_30D0 += Unk_ov71_0223D5CC[(14 - 1) - (param0->unk_337D++)];

        if (param0->unk_337D == 14) {
            param0->unk_337C = 0;
            param0->unk_30D0 = (1 << FX32_SHIFT);
            param0->unk_337E = 3;
        }
        break;
    case 3:
        return 1;
    }

    v1 = FX_Inv(1 << FX32_SHIFT);
    v2 = FX_Inv(param0->unk_30D0);

    v0._00 = v1;
    v0._01 = 0;
    v0._10 = 0;
    v0._11 = v2;

    SVC_WaitVBlankIntr();
    G2_SetBG3Affine(&v0, 128, 0, 0, 0);

    return 0;
}

static int ov71_0223BEF8(UnkStruct_ov71_0223B620 *param0)
{
    int v0;
    BOOL v1 = 0;
    v0 = 0;

    param0->unk_30D4 = TOUCHSCREEN_INPUT_NONE;

    if (gSystem.touchPressed) {
        param0->unk_30C4 = 1;
    }

    param0->unk_30D4 = ov71_0223C60C(param0->bgConfig, Unk_ov71_0223D4D0[param0->trainerCard->unk_04_0].unk_00[param0->unk_337C]);

    if (param0->unk_30D4 != TOUCHSCREEN_INPUT_NONE) {
        v1 = 1;
        v0 = 1;
    } else if (gSystem.touchHeld) {
        param0->unk_30D4 = ov71_0223C654(param0->bgConfig, Unk_ov71_0223D4D0[param0->trainerCard->unk_04_0].unk_00[param0->unk_337C]);

        if (param0->unk_30C4) {
            v1 = 1;
            v0 = 2;
        }
    } else {
        param0->unk_30C4 = 0;
    }

    if (v1 == 0) {
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            v0 = 3;
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            v0 = 4;
        }
    }

    return v0;
}

static void ov71_0223BFBC(UnkStruct_ov71_0223B620 *param0)
{
    BOOL v0;
    int v1;

    v0 = 0;

    if ((gSystem.touchX != 0xffff) && (gSystem.touchY != 0xffff) && (param0->unk_30DC != 0xffff) && (param0->unk_30E0 != 0xffff)) {
        if ((param0->unk_30D4 != TOUCHSCREEN_INPUT_NONE) && (param0->unk_30D4 != 0)) {
            if (param0->trainerCard->unk_48[param0->unk_30D4 - 1].unk_00_0) {
                if (param0->unk_30DC > gSystem.touchX) {
                    v1 = param0->unk_30DC - gSystem.touchX;
                    param0->unk_3364.unk_02 = -1;
                } else {
                    v1 = gSystem.touchX - param0->unk_30DC;
                    param0->unk_3364.unk_02 = 1;
                }

                if ((v1 >= 3) && (v1 <= 40)) {
                    if (param0->unk_30E0 > gSystem.touchY) {
                        v1 = param0->unk_30E0 - gSystem.touchY;
                        param0->unk_3364.unk_03 = -1;
                    } else {
                        v1 = gSystem.touchY - param0->unk_30E0;
                        param0->unk_3364.unk_03 = 1;
                    }

                    if (v1 <= 40) {
                        v0 = 1;
                        ov71_0223C45C(&param0->unk_3364);
                    } else {
                        ov71_0223C444(&param0->unk_3364);
                    }
                } else if (v1 <= 40) {
                    if (param0->unk_30E0 > gSystem.touchY) {
                        v1 = param0->unk_30E0 - gSystem.touchY;
                        param0->unk_3364.unk_03 = -1;
                    } else {
                        v1 = gSystem.touchY - param0->unk_30E0;
                        param0->unk_3364.unk_03 = 1;
                    }

                    if ((v1 >= 3) && (v1 <= 40)) {
                        v0 = 1;
                        ov71_0223C45C(&param0->unk_3364);
                    } else {
                        ov71_0223C444(&param0->unk_3364);
                    }
                }

                if (v0) {
                    ov71_0223C1AC(param0, param0->unk_30D4 - 1);
                }
            }
        }
    }

    param0->unk_30DC = gSystem.touchX;
    param0->unk_30E0 = gSystem.touchY;
}

static void ov71_0223C0D8(UnkStruct_ov71_0223B620 *param0, const u8 param1)
{
    u16 *v0;
    u16 v1;
    u8 v2, v3;

    v0 = (u16 *)Bg_GetTilemapBuffer(param0->bgConfig, BG_LAYER_MAIN_2);
    v1 = (4 * 32) + (4 * param1);

    for (v3 = 0; v3 < 4; v3++) {
        for (v2 = 0; v2 < 4; v2++) {
            v0[(v3 + 19) * 32 + v2 + 14] = v1 + v3 * 32 + v2 + (0 << 12);
        }
    }

    Bg_CopyTilemapBufferToVRAM(param0->bgConfig, BG_LAYER_MAIN_2);
}

static void ov71_0223C128(UnkStruct_ov71_0223B620 *param0, const u8 param1)
{
    u8 *v0;
    u16 v1;
    u8 v2, v3;
    u8 v4, v5;
    u8 v6, v7;

    v4 = 3;
    v6 = 4;
    v5 = param1 % 4;
    v7 = param1 / 4;

    v4 += (v5 * 7);
    v6 += (v7 * 7);

    v0 = (u8 *)Bg_GetTilemapBuffer(param0->bgConfig, BG_LAYER_MAIN_3);
    v1 = (5 * 32 + 26);

    for (v3 = 0; v3 < 5; v3++) {
        for (v2 = 0; v2 < 5; v2++) {
            v0[(v3 + v6) * 32 + v2 + v4] = v1 + v3 * 16 + v2;
        }
    }
}

static void ov71_0223C18C(void *param0)
{
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov71_0223C1AC(UnkStruct_ov71_0223B620 *param0, const u8 param1)
{
    int v0;
    u8 v1, v2;

    v0 = (param0->trainerCard->unk_48[param1].unk_00_1) + 1;

    if (v0 < 200) {
        v2 = ov71_0223C40C(param0->trainerCard->unk_48[param1].unk_00_1);

        param0->unk_3374[param1]++;

        if (param0->unk_3374[param1] >= Unk_ov71_0223D4B0[v2]) {
            param0->unk_3374[param1] = 0;
            (param0->trainerCard->unk_48[param1].unk_00_1)++;

            v1 = ov71_0223C40C(v0);
            GF_ASSERT(v2 <= v1);

            if (v2 < v1) {
                if (v1 <= 4) {
                    if (v1 == 4) {
                        ov71_0223D298(&param0->unk_30E4, param1, 0);
                    } else {
                        ov71_0223D298(&param0->unk_30E4, param1, 3 - v1);
                    }
                }

                if (v1 == 4 - 1) {
                    Sprite_SetDrawFlag(param0->unk_30E4.unk_1C0[8 + param1], TRUE);
                } else if (v1 == 4) {
                    Sprite_SetDrawFlag(param0->unk_30E4.unk_1C0[8 + param1], FALSE);
                    Sprite_SetDrawFlag(param0->unk_30E4.unk_1C0[(8 + 8) + param1], TRUE);
                }
            }
        }
    }
}

static void ov71_0223C288(void)
{
    MtxFx22 v0;
    fx32 v1, v2;

    v1 = FX_Inv(1 << FX32_SHIFT);
    v2 = FX_Inv(1 << FX32_SHIFT);
    v0._00 = v1;
    v0._01 = 0;
    v0._10 = 0;
    v0._11 = v2;

    SVC_WaitVBlankIntr();

    G2S_SetBG2Affine(&v0, 128, 96, 0, 0);
    G2S_SetBG3Affine(&v0, 128, 96, 0, 0);

    SVC_WaitVBlankIntr();

    G2_SetBG3Affine(&v0, 128, 0, 0, 0);
}

static void ov71_0223C2F4(UnkStruct_ov71_0223B620 *param0)
{
    if (param0->unk_3381 == 1) {
        if (ov71_0223C334(param0, Unk_ov71_0223D4C8[0])) {
            param0->unk_3381 = 0;
        }
    } else if (param0->unk_3381 == 2) {
        if (ov71_0223C334(param0, Unk_ov71_0223D4C8[1])) {
            param0->unk_3381 = 0;
        }
    }
}

static BOOL ov71_0223C334(UnkStruct_ov71_0223B620 *param0, const u8 *param1)
{
    u8 v0, v1;

    v0 = param1[param0->unk_3380 * 2];

    if (v0 == 0) {
        param0->unk_337F = 0;
        param0->unk_3380 = 0;
        return 1;
    } else if (param0->unk_337F >= v0) {
        param0->unk_337F = 0;
        param0->unk_3380++;
    }

    v1 = param1[param0->unk_3380 * 2 + 1];

    if (param0->unk_337F == 0) {
        ov71_0223C0D8(param0, v1);
    }

    param0->unk_337F++;

    return 0;
}

static void ov71_0223C390(UnkStruct_ov71_0223B620 *param0)
{
    u32 v0 = param0->unk_3360->szByte;

    Bg_LoadTiles(param0->bgConfig, BG_LAYER_SUB_3, param0->unk_30BC->pRawData, param0->unk_30BC->szByte, 0);

    if (Bg_GetTilemapBuffer(param0->bgConfig, BG_LAYER_SUB_3) != NULL) {
        Bg_LoadTilemapBuffer(param0->bgConfig, BG_LAYER_SUB_3, param0->unk_3360->rawData, v0);
    }

    Bg_CopyTilemapBufferRangeToVRAM(param0->bgConfig, BG_LAYER_SUB_3, param0->unk_3360->rawData, v0, 0);
}

static void ov71_0223C3E8(UnkStruct_ov71_0223B620 *param0)
{
    Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_SUB_3, 0, 20, 6, 6, 9, 16);
}

static const u8 ov71_0223C40C(const int param0)
{
    u8 v0;

    if ((0 <= param0) && (param0 < 100)) {
        v0 = 0;
    } else if (param0 < 140) {
        v0 = 1;
    } else if (param0 < 170) {
        v0 = 2;
    } else if (param0 < 190) {
        v0 = 3;
    } else if (param0 < 200) {
        v0 = 4;
    } else {
        GF_ASSERT(FALSE);
        v0 = 0;
    }

    return v0;
}

static void ov71_0223C444(UnkStruct_ov71_0223C444 *param0)
{
    param0->unk_02 = 0;
    param0->unk_03 = 0;
}

static void ov71_0223C44C(UnkStruct_ov71_0223C444 *param0)
{
    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
    param0->unk_03 = 0;
    param0->unk_04 = 0;
}

static void ov71_0223C45C(UnkStruct_ov71_0223C444 *param0)
{
    int v0[2] = {
        1682, 1683
    };

    if ((param0->unk_00 == 0) && (param0->unk_01 == 0)) {
        Sound_PlayEffect(SEQ_SE_DP_MIGAKU01);
    }

    if ((param0->unk_00 * param0->unk_02 < 0) || (param0->unk_01 * param0->unk_03 < 0)) {
        param0->unk_04 = (param0->unk_04 + 1) % 2;
        Sound_PlayEffect(v0[param0->unk_04]);
    }

    param0->unk_00 = param0->unk_02;
    param0->unk_01 = param0->unk_03;
    param0->unk_02 = 0;
    param0->unk_03 = 0;
}

static void ov71_0223C4DC(const u8 *param0, u8 *param1)
{
    int v0, v1;
    u8 v2;
    u8 v3;

    for (v0 = 0; v0 < 24 * 8 * 64; v0++) {
        v1 = v0 / 64;
        v2 = (v0 / 8) % 8;
        v3 = (v0 % 8);

        param1[v0] = (0x1 & (param0[(v1 * 8) + v2] >> v3));
    }
}

static void ov71_0223C530(BgConfig *bgConfig, const int bgLayer, const u8 *param2)
{
    u16 *v0;
    u8 v1, v2;
    u16 v3;

    Bg_LoadTiles(bgConfig, bgLayer, param2, (24 * 8 * 64), 1);

    v0 = (u16 *)Bg_GetTilemapBuffer(bgConfig, bgLayer);
    v3 = 0;

    for (v2 = 0; v2 < 8; v2++) {
        for (v1 = 0; v1 < 24; v1++) {
            v0[(14 + v2) * 32 + v1 + 4] = (1 + v3);
            v3++;
        }
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, bgLayer);
}

static void ov71_0223C594(const int unused)
{
    Sound_PlayEffect(SEQ_SE_DP_CARD11);
}

static void ov71_0223C5A4(UnkStruct_ov71_0223B620 *param0, const u8 param1)
{
    if (!param1) {
        return;
    }

    if (!param0->unk_30C0) {
        if (param0->unk_3382 == 15) {
            TrainerCard_DrawUpdatedTime(param0->windows, param0->trainerCard, param0->unusedStrbuf);

            TrainerCard_BlinkPlaytimeColon(&(param0->windows[TRAINER_CARD_WINDOW_TIME]), TRUE, param0->colonStrbuf);
        } else if (param0->unk_3382 == 0) {
            TrainerCard_BlinkPlaytimeColon(&(param0->windows[TRAINER_CARD_WINDOW_TIME]), FALSE, param0->colonStrbuf);
        }
    }

    param0->unk_3382 = (param0->unk_3382 + 1) % 30;
}

static int ov71_0223C60C(BgConfig *bgConfig, const TouchScreenRect *rect)
{
    int v0 = TouchScreen_CheckRectanglePressed(rect);

    if (v0 != TOUCHSCREEN_INPUT_NONE) {
        if (v0 != 0) {
            u16 v1 = 0x40;

            if (Bg_DoesPixelAtXYMatchVal(bgConfig, BG_LAYER_MAIN_2, gSystem.touchX, gSystem.touchY, &v1) == 0) {
                return TOUCHSCREEN_INPUT_NONE;
            }
        } else {
            return v0;
        }
    }

    return v0;
}

static int ov71_0223C654(BgConfig *bgConfig, const TouchScreenRect *rect)
{
    int v0 = TouchScreen_CheckRectangleHeld(rect);

    if (v0 != TOUCHSCREEN_INPUT_NONE) {
        if (v0 != 0) {
            u16 v1 = 0x40;

            if (Bg_DoesPixelAtXYMatchVal(bgConfig, BG_LAYER_MAIN_2, gSystem.touchX, gSystem.touchY, &v1) == 0) {
                return TOUCHSCREEN_INPUT_NONE;
            }
        } else {
            return v0;
        }
    }

    return v0;
}
