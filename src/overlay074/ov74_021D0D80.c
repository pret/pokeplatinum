#include "overlay074/ov74_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0203D8EC.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_text.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_020393C8.h"

#define WINCLR_COL(col) (((col) << 4) | (col))

typedef struct UnkStruct_ov74_021D1720_t {
    u16 unk_00;
    u16 unk_02;
    Strbuf *unk_04[20];
} UnkStruct_ov74_021D1720;

typedef struct UnkStruct_ov74_021D0D80_t {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    u32 unk_10_0 : 2;
    u32 unk_10_2 : 3;
    u32 unk_10_5 : 16;
    u32 unk_10_21 : 1;
    u32 unk_10_22 : 10;
    BGL *unk_14;
    UnkStruct_0203D8EC unk_18;
    Options *unk_1C;
    MessageLoader *unk_20;
    void *unk_24;
    NNSG2dScreenData *unk_28;
    Window unk_2C[3];
    UnkStruct_ov74_021D1720 unk_5C[7];
    UIControlData *unk_2A8;
    u32 unk_2AC;
    SpriteRenderer *unk_2B0;
    SpriteGfxHandler *unk_2B4;
    CellActorData *unk_2B8;
} UnkStruct_ov74_021D0D80;

int ov74_021D0D80(OverlayManager *param0, int *param1);
int ov74_021D0F60(OverlayManager *param0, int *param1);
int ov74_021D0E58(OverlayManager *param0, int *param1);
static void ov74_021D1118(void *param0);
static void ov74_021D10F8(void);
static int ov74_021D1178(UnkStruct_ov74_021D0D80 *param0);
static int ov74_021D122C(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D12D4(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D135C(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D1390(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D14E8(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D14F4(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D1624(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D1668(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D17CC(UnkStruct_ov74_021D0D80 *param0, u16 param1);
static void ov74_021D1BE4(UnkStruct_ov74_021D0D80 *param0, u16 param1, BOOL param2);
static void ov74_021D1968(UnkStruct_ov74_021D0D80 *param0, u16 param1, BOOL param2);
static BOOL ov74_021D1A08(const UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D1720(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D1A24(UnkStruct_ov74_021D0D80 *param0);
static BOOL ov74_021D1B44(UnkStruct_ov74_021D0D80 *param0);
static void ov74_021D1BA8(UnkStruct_ov74_021D0D80 *param0);
static u32 ov74_021D1BD0(UnkStruct_ov74_021D0D80 *param0);

int ov74_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov74_021D0D80 *v0 = NULL;
    Options *v1;

    v1 = (Options *)OverlayManager_Args(param0);

    Heap_Create(3, 38, 0x10000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov74_021D0D80), 38);
    memset(v0, 0, sizeof(UnkStruct_ov74_021D0D80));

    v0->unk_18.unk_00_0 = Options_TextSpeed(v1);
    v0->unk_18.unk_00_6 = Options_BattleScene(v1);
    v0->unk_18.unk_00_7 = Options_BattleStyle(v1);
    v0->unk_18.unk_00_4 = Options_SoundMode(v1);
    v0->unk_18.unk_00_8 = Options_ButtonMode(v1);
    v0->unk_18.unk_00_10 = Options_Frame(v1);
    v0->unk_00 = 38;
    v0->unk_1C = v1;

    RenderControlFlags_SetCanABSpeedUpPrint(0);

    return 1;
}

int ov74_021D0E58(OverlayManager *param0, int *param1)
{
    UnkStruct_ov74_021D0D80 *v0 = OverlayManager_Data(param0);

    if (v0->unk_10_0 == 1) {
        v0->unk_18.unk_00_0 = v0->unk_5C[0].unk_02;
        v0->unk_18.unk_00_6 = v0->unk_5C[2].unk_02;
        v0->unk_18.unk_00_7 = v0->unk_5C[3].unk_02;
        v0->unk_18.unk_00_4 = v0->unk_5C[1].unk_02;
        v0->unk_18.unk_00_8 = v0->unk_5C[4].unk_02;
        v0->unk_18.unk_00_10 = v0->unk_5C[5].unk_02;
    }

    Options_SetTextSpeed(v0->unk_1C, v0->unk_18.unk_00_0);
    Options_SetBattleScene(v0->unk_1C, v0->unk_18.unk_00_6);
    Options_SetBattleStyle(v0->unk_1C, v0->unk_18.unk_00_7);
    Options_SetSoundMode(v0->unk_1C, v0->unk_18.unk_00_4);
    Options_SetButtonMode(v0->unk_1C, v0->unk_18.unk_00_8);
    Options_SetFrame(v0->unk_1C, v0->unk_18.unk_00_10);
    sub_02004FB8(v0->unk_18.unk_00_4);
    Options_SetSystemButtonMode(NULL, v0->unk_18.unk_00_8);
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    OverlayManager_FreeData(param0);
    Heap_Destroy(v0->unk_00);

    return 1;
}

int ov74_021D0F60(OverlayManager *param0, int *param1)
{
    UnkStruct_ov74_021D0D80 *v0 = OverlayManager_Data(param0);
    BOOL v1;
    u32 v2;

    switch (v0->unk_04) {
    case 0:
        if (!ov74_021D1178(v0)) {
            return 0;
        }

        sub_0200F174(3, 1, 1, 0x0, 6, 1, v0->unk_00);
        break;
    case 1:
        if (!ScreenWipe_Done()) {
            return 0;
        }
        break;
    case 2:
        if (((gCoreSys.pressedKeys & PAD_BUTTON_A) && (v0->unk_10_2 == (7 - 1))) || (gCoreSys.pressedKeys & PAD_BUTTON_B)) {
            v1 = ov74_021D1B44(v0);

            if (v1 == 1) {
                v0->unk_04 = 3;
            } else {
                Sound_PlayEffect(1500);
                v0->unk_10_0 = 2;
                v0->unk_04 = 6;
            }

            return 0;
        }

        ov74_021D1A24(v0);
        return 0;
    case 3:
        RenderControlFlags_SetCanABSpeedUpPrint(1);
        ov74_021D1968(v0, 49, 0);
        break;
    case 4:
        if (ov74_021D1A08(v0)) {
            RenderControlFlags_SetCanABSpeedUpPrint(0);
            ov74_021D1BA8(v0);
            v0->unk_04 = 5;
        }

        return 0;
    case 5:
        v2 = ov74_021D1BD0(v0);

        if (v2 != 0xffffffff) {
            if (v2 == 0) {
                sub_020057A4(1500, 0);
                Sound_PlayEffect(1563);
                v0->unk_10_0 = 1;
            } else {
                v0->unk_10_0 = 2;
            }

            v0->unk_04 = 6;
        }

        return 0;
    case 6:
        if (Text_IsPrinterActive(v0->unk_2AC)) {
            Text_RemovePrinter(v0->unk_2AC);
        }

        sub_0200F174(3, 0, 0, 0x0, 6, 1, v0->unk_00);
        break;
    case 7:
        if (!ScreenWipe_Done()) {
            return 0;
        }
        break;
    case 8:
        if (!ov74_021D122C(v0)) {
            return 0;
        }

        return 1;
    }

    ++v0->unk_04;
    return 0;
}

static void ov74_021D10F8(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A, GX_VRAM_BGEXTPLTT_NONE, GX_VRAM_SUB_BG_128_C, GX_VRAM_SUB_BGEXTPLTT_NONE, GX_VRAM_OBJ_16_G, GX_VRAM_OBJEXTPLTT_NONE, GX_VRAM_SUB_OBJ_16_I, GX_VRAM_SUB_OBJEXTPLTT_NONE, GX_VRAM_TEX_NONE, GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov74_021D1118(void *param0)
{
    UnkStruct_ov74_021D0D80 *v0 = param0;

    if (v0->unk_10_21) {
        sub_0200DD0C(v0->unk_14, 1, ((((10 + 12 * 2) + 30 * 14) + 27 * 4) + 9), 15, v0->unk_5C[5].unk_02, v0->unk_00);
        v0->unk_10_21 = 0;
    }

    sub_0200C800();
    NNS_GfdDoVramTransfer();
    sub_0201C2B8(v0->unk_14);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int ov74_021D1178(UnkStruct_ov74_021D0D80 *param0)
{
    switch (param0->unk_08) {
    case 0:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        ov74_021D10F8();
        sub_0200F32C(0);
        sub_0200F32C(1);
        ov74_021D12D4(param0);
        break;
    case 1:
        ov74_021D1390(param0);
        param0->unk_20 = MessageLoader_Init(1, 26, 220, param0->unk_00);
        ov74_021D1720(param0);
        break;
    case 2:
        ov74_021D14F4(param0);
        ov74_021D1668(param0);
        sub_0201DBEC(32, param0->unk_00);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        sub_020397E4();
        SetMainCallback(ov74_021D1118, param0);
        param0->unk_08 = 0;
        return 1;
    }

    ++param0->unk_08;
    return 0;
}

static int ov74_021D122C(UnkStruct_ov74_021D0D80 *param0)
{
    int v0 = 0, v1 = 0;

    switch (param0->unk_08) {
    case 0:
        sub_0201DC3C();
        ov74_021D1624(param0);

        for (v0 = 0; v0 < 7; v0++) {
            for (v1 = 0; v1 < param0->unk_5C[v0].unk_00; v1++) {
                Strbuf_Free(param0->unk_5C[v0].unk_04[v1]);
            }
        }

        MessageLoader_Free(param0->unk_20);
        ov74_021D14E8(param0);
        ov74_021D135C(param0);
        break;
    case 1:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        param0->unk_08 = 0;
        return 1;
    }

    ++param0->unk_08;
    return 0;
}

static void ov74_021D12D4(UnkStruct_ov74_021D0D80 *param0)
{
    int v0;

    param0->unk_14 = sub_02018340(param0->unk_00);

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v1);
    }

    {
        UnkStruct_ov97_0222DB78 v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                1,
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
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                2,
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
                GX_BG_SCRBASE_0xe800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                3,
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
                GX_BG_SCRBASE_0xe000,
                GX_BG_CHARBASE_0x00000,
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
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
        };

        for (v0 = 0; v0 < 5; v0++) {
            static const v3[5] = {
                0, 1, 2, 3, 4
            };

            sub_020183C4(param0->unk_14, v3[v0], &(v2[v0]), 0);
            sub_02019EBC(param0->unk_14, v3[v0]);
        }
    }
    sub_02019690(0, 32, 0, param0->unk_00);
    sub_02019690(4, 32, 0, param0->unk_00);
}

static void ov74_021D135C(UnkStruct_ov74_021D0D80 *param0)
{
    sub_02019044(param0->unk_14, 4);
    sub_02019044(param0->unk_14, 3);
    sub_02019044(param0->unk_14, 2);
    sub_02019044(param0->unk_14, 1);
    sub_02019044(param0->unk_14, 0);
    Heap_FreeToHeap(param0->unk_14);
}

static void ov74_021D1390(UnkStruct_ov74_021D0D80 *param0)
{
    void *v0;
    u32 v1;
    NARC *v2;
    void *v3;
    NNSG2dCharacterData *v4;
    NNSG2dPaletteData *v5;

    v2 = NARC_ctor(NARC_INDEX_GRAPHIC__CONFIG_GRA, param0->unk_00);
    v1 = NARC_GetMemberSize(v2, 1);
    v3 = Heap_AllocFromHeapAtEnd(param0->unk_00, v1);

    NARC_ReadWholeMember(v2, 1, (void *)v3);
    NNS_G2dGetUnpackedCharacterData(v3, &v4);
    sub_0201958C(param0->unk_14, 0, v4->pRawData, v4->szByte, 0);
    sub_0201958C(param0->unk_14, 4, v4->pRawData, v4->szByte, 0);
    Heap_FreeToHeap(v3);

    v1 = NARC_GetMemberSize(v2, 0);
    v3 = Heap_AllocFromHeapAtEnd(param0->unk_00, v1);
    NARC_ReadWholeMember(v2, 0, (void *)v3);

    NNS_G2dGetUnpackedPaletteData(v3, &v5);
    sub_0201972C(0, v5->pRawData, 0x20 * 1, 0);
    sub_0201972C(4, v5->pRawData, 0x20 * 1, 0);
    Heap_FreeToHeap(v3);

    v1 = NARC_GetMemberSize(v2, 2);
    param0->unk_24 = Heap_AllocFromHeap(param0->unk_00, v1);

    NARC_ReadWholeMember(v2, 2, (void *)param0->unk_24);
    NNS_G2dGetUnpackedScreenData(param0->unk_24, &(param0->unk_28));
    NARC_dtor(v2);
    sub_02019CB8(param0->unk_14, 2, 0x1, 0, 0, 32, 32, 17);
    sub_02019CB8(param0->unk_14, 4, 0x1, 0, 0, 32, 32, 17);
    sub_02019964(param0->unk_14, 0, 0, 0, 32, 2, param0->unk_28->rawData, 0, 0, param0->unk_28->screenWidth / 8, param0->unk_28->screenHeight / 8);
    sub_02019184(param0->unk_14, 0, 3, -24);
    sub_0201C3C0(param0->unk_14, 2);
    sub_0201C3C0(param0->unk_14, 0);
    sub_0201C3C0(param0->unk_14, 4);
}

static void ov74_021D14E8(UnkStruct_ov74_021D0D80 *param0)
{
    Heap_FreeToHeap(param0->unk_24);
}

static void ov74_021D14F4(UnkStruct_ov74_021D0D80 *param0)
{
    BGL_AddWindow(param0->unk_14, &param0->unk_2C[0], 1, 1, 0, 12, 2, 13, 10);
    BGL_AddWindow(param0->unk_14, &param0->unk_2C[1], 1, 1, 3, 30, 14, 13, (10 + 12 * 2));
    BGL_AddWindow(param0->unk_14, &param0->unk_2C[2], 1, 2, 19, 27, 4, 12, ((10 + 12 * 2) + 30 * 14));
    sub_0200DAA4(param0->unk_14, 1, (((10 + 12 * 2) + 30 * 14) + 27 * 4), 14, 0, param0->unk_00);
    sub_0200DD0C(param0->unk_14, 1, ((((10 + 12 * 2) + 30 * 14) + 27 * 4) + 9), 15, param0->unk_18.unk_00_10, param0->unk_00);

    Font_LoadTextPalette(0, 13 * 32, param0->unk_00);
    Font_LoadTextPalette(4, 13 * 32, param0->unk_00);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, param0->unk_00);
    Font_LoadScreenIndicatorsPalette(4, 12 * 32, param0->unk_00);

    BGL_FillWindow(&(param0->unk_2C[0]), WINCLR_COL(0));
    BGL_FillWindow(&(param0->unk_2C[1]), WINCLR_COL(15));
    BGL_FillWindow(&(param0->unk_2C[2]), WINCLR_COL(15));
    sub_0201AA3C(&(param0->unk_2C[2]));
    sub_0201AA3C(&(param0->unk_2C[1]));
    sub_0201AA3C(&(param0->unk_2C[0]));

    Window_Show(&param0->unk_2C[1], 1, (((10 + 12 * 2) + 30 * 14) + 27 * 4), 14);
    sub_0200E060(&param0->unk_2C[2], 1, ((((10 + 12 * 2) + 30 * 14) + 27 * 4) + 9), 15);
}

static void ov74_021D1624(UnkStruct_ov74_021D0D80 *param0)
{
    u16 v0;

    Window_Clear(&(param0->unk_2C[1]), 0);
    sub_0200E084(&(param0->unk_2C[2]), 0);

    for (v0 = 0; v0 < 3; v0++) {
        sub_0201ACF4(&(param0->unk_2C[v0]));
        BGL_FillWindow(&(param0->unk_2C[v0]), 0);
        sub_0201AA3C(&(param0->unk_2C[v0]));
        BGL_DeleteWindow(&param0->unk_2C[v0]);
    }
}

static void ov74_021D1668(UnkStruct_ov74_021D0D80 *param0)
{
    u32 v0, v1;
    u16 v2;
    TextColor v3, v4, v5;
    Strbuf *v6;
    Strbuf *v7;
    static const u8 v8[7] = {
        3,
        6,
        4,
        5,
        7,
        8,
        42,
    };

    v5 = TEXT_COLOR(1, 2, 0);
    v3 = TEXT_COLOR(1, 2, 15);
    v4 = TEXT_COLOR(3, 4, 15);
    v6 = Strbuf_Init(256, param0->unk_00);

    MessageLoader_GetStrbuf(param0->unk_20, 0, v6);

    v1 = 2;
    Text_AddPrinterWithParamsAndColor(&param0->unk_2C[0], FONT_SYSTEM, v6, v1, 2, TEXT_SPEED_INSTANT, v5, NULL);

    v1 = 4;

    for (v2 = 0; v2 < 7; v2++) {
        Strbuf_Clear(v6);
        MessageLoader_GetStrbuf(param0->unk_20, v8[v2], v6);
        Text_AddPrinterWithParamsAndColor(&param0->unk_2C[1], FONT_SYSTEM, v6, v1, 16 * v2, TEXT_SPEED_NO_TRANSFER, v3, NULL);
    }

    for (v2 = 0; v2 < 7; v2++) {
        ov74_021D17CC(param0, v2);
    }

    ov74_021D1BE4(param0, 0, 1);

    sub_0201A954(&param0->unk_2C[0]);
    sub_0201A954(&param0->unk_2C[1]);

    Strbuf_Free(v6);
}

static void ov74_021D1720(UnkStruct_ov74_021D0D80 *param0)
{
    u16 v0, v1;
    static const int v3[7] = {
        3, 2, 2, 2, 3, 20, 0
    };
    static const u8 v2[7] = {
        10,
        17,
        13,
        15,
        19,
        22,
        0,
    };

    for (v0 = 0; v0 < 7; v0++) {
        param0->unk_5C[v0].unk_00 = v3[v0];

        for (v1 = 0; v1 < v3[v0]; v1++) {
            param0->unk_5C[v0].unk_04[v1] = MessageLoader_GetNewStrbuf(param0->unk_20, v2[v0] + v1);
        }
    }

    param0->unk_5C[0].unk_02 = param0->unk_18.unk_00_0;
    param0->unk_5C[2].unk_02 = param0->unk_18.unk_00_6;
    param0->unk_5C[3].unk_02 = param0->unk_18.unk_00_7;
    param0->unk_5C[1].unk_02 = param0->unk_18.unk_00_4;
    param0->unk_5C[4].unk_02 = param0->unk_18.unk_00_8;
    param0->unk_5C[5].unk_02 = param0->unk_18.unk_00_10;
}

static void ov74_021D17CC(UnkStruct_ov74_021D0D80 *param0, u16 param1)
{
    u32 v0, v1, v2;
    u16 v3;
    u8 v4;
    s8 v5 = 0;
    static const s8 v6[] = { 0, 0, 0, 0, 0, 0, 0 };

    v0 = TEXT_COLOR(1, 2, 15);
    v1 = TEXT_COLOR(3, 4, 15);

    BGL_WindowColor(&(param0->unk_2C[1]), WINCLR_COL(15), (12 * 8 + 4) + v6[param1], 0 + param1 * 16, (48 * 8), 16);

    if (param1 == 5) {
        Text_AddPrinterWithParamsAndColor(&param0->unk_2C[1], FONT_SYSTEM, param0->unk_5C[param1].unk_04[param0->unk_5C[param1].unk_02], 1 * 48 + (12 * 8 + 4), 16 * param1 + 0, TEXT_SPEED_NO_TRANSFER, v1, NULL);
        sub_0201A954(&param0->unk_2C[1]);
        param0->unk_10_21 = 1;
        return;
    }

    if (param1 == 1) {
        sub_02004FB8(param0->unk_5C[param1].unk_02);
    } else if (param1 == 4) {
        Options_SetSystemButtonMode(NULL, param0->unk_5C[param1].unk_02);
    } else if (param1 == 0) {
        Options_SetTextSpeed(param0->unk_1C, param0->unk_5C[param1].unk_02);
        ov74_021D1BE4(param0, param1, 0);
    }

    v5 = 0;

    for (v3 = 0; v3 < param0->unk_5C[param1].unk_00; v3++) {
        if (v3 == param0->unk_5C[param1].unk_02) {
            v2 = v1;
        } else {
            v2 = v0;
        }

        if (v3 == param0->unk_5C[param1].unk_00 - 1) {
            v4 = TEXT_SPEED_NO_TRANSFER;
        } else {
            v4 = TEXT_SPEED_NO_TRANSFER;
        }

        if (param1 == 4) {
            Text_AddPrinterWithParamsAndColor(&param0->unk_2C[1], FONT_SYSTEM, param0->unk_5C[param1].unk_04[v3], (12 * 8 + 4) - 0 + v5, 16 * param1 + 0, v4, v2, NULL);
            v5 += Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_5C[param1].unk_04[v3], 0) + 12;
        } else {
            Text_AddPrinterWithParamsAndColor(&param0->unk_2C[1], FONT_SYSTEM, param0->unk_5C[param1].unk_04[v3], v3 * 48 + (12 * 8 + 4) + v6[param1], 16 * param1 + 0, v4, v2, NULL);
        }
    }

    sub_0201A954(&param0->unk_2C[1]);
}

static void ov74_021D1968(UnkStruct_ov74_021D0D80 *param0, u16 param1, BOOL param2)
{
    u32 v0;
    Strbuf *v1;
    u8 v2;

    if (ov74_021D1A08(param0) == 0) {
        Text_RemovePrinter(param0->unk_2AC);
    }

    v2 = Options_TextFrameDelay(param0->unk_1C);

    BGL_FillWindow(&(param0->unk_2C[2]), 15);

    v0 = TEXT_COLOR(1, 2, 15);
    v1 = Strbuf_Init(256, param0->unk_00);

    MessageLoader_GetStrbuf(param0->unk_20, param1, v1);

    if (param2 == 0) {
        param0->unk_2AC = Text_AddPrinterWithParamsAndColor(&param0->unk_2C[2], FONT_MESSAGE, v1, 4, 0, v2, v0, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&param0->unk_2C[2], FONT_MESSAGE, v1, 4, 0, TEXT_SPEED_NO_TRANSFER, v0, NULL);
        sub_0201A9A4(&param0->unk_2C[2]);
    }

    Strbuf_Free(v1);
}

static BOOL ov74_021D1A08(const UnkStruct_ov74_021D0D80 *param0)
{
    if (Text_IsPrinterActive(param0->unk_2AC) == 0) {
        return 1;
    }

    return 0;
}

static void ov74_021D1A24(UnkStruct_ov74_021D0D80 *param0)
{
    UnkStruct_ov74_021D1720 *v0;

    v0 = &(param0->unk_5C[param0->unk_10_2]);

    if (param0->unk_10_2 != 6) {
        if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
            v0->unk_02 = (v0->unk_02 + 1) % v0->unk_00;
            ov74_021D17CC(param0, param0->unk_10_2);
            Sound_PlayEffect(1500);
        } else if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
            v0->unk_02 = (v0->unk_02 + v0->unk_00 - 1) % v0->unk_00;
            ov74_021D17CC(param0, param0->unk_10_2);
            Sound_PlayEffect(1500);
        }
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        param0->unk_10_2 = (param0->unk_10_2 + 7 - 1) % 7;
        sub_0201C63C(param0->unk_14, 0, 3, -(param0->unk_10_2 * 16 + 24));
        ov74_021D1BE4(param0, param0->unk_10_2, 1);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        param0->unk_10_2 = (param0->unk_10_2 + 1) % 7;
        sub_0201C63C(param0->unk_14, 0, 3, -(param0->unk_10_2 * 16 + 24));
        ov74_021D1BE4(param0, param0->unk_10_2, 1);
        Sound_PlayEffect(1500);
    }
}

static BOOL ov74_021D1B44(UnkStruct_ov74_021D0D80 *param0)
{
    if ((param0->unk_18.unk_00_0 != param0->unk_5C[0].unk_02) || (param0->unk_18.unk_00_6 != param0->unk_5C[2].unk_02) || (param0->unk_18.unk_00_7 != param0->unk_5C[3].unk_02) || (param0->unk_18.unk_00_4 != param0->unk_5C[1].unk_02) || (param0->unk_18.unk_00_8 != param0->unk_5C[4].unk_02) || (param0->unk_18.unk_00_10 != param0->unk_5C[5].unk_02)) {
        return 1;
    }

    return 0;
}

static void ov74_021D1BA8(UnkStruct_ov74_021D0D80 *param0)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        3, 25, 13, 6, 4, 13, (((((10 + 12 * 2) + 30 * 14) + 27 * 4) + 9) + (18 + 12))
    };

    param0->unk_2A8 = sub_02002100(param0->unk_14, &v0, (((10 + 12 * 2) + 30 * 14) + 27 * 4), 14, param0->unk_00);
}

static u32 ov74_021D1BD0(UnkStruct_ov74_021D0D80 *param0)
{
    return sub_02002114(param0->unk_2A8, param0->unk_00);
}

static void ov74_021D1BE4(UnkStruct_ov74_021D0D80 *param0, u16 param1, BOOL param2)
{
    static const u8 v0[7] = {
        43,
        46,
        44,
        45,
        47,
        48,
        52,
    };

    ov74_021D1968(param0, v0[param1], param2);
}
