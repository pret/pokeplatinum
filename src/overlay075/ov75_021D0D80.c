#include "overlay075/ov75_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_020978D8.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "core_sys.h"
#include "enums.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pokemon_icon.h"
#include "render_text.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_0200A784.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02014A84.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_020393C8.h"

enum {
    UnkEnum_ov75_021D1598_00,
    UnkEnum_ov75_021D1598_01,
    UnkEnum_ov75_021D1598_02,
    UnkEnum_ov75_021D1598_03,
    UnkEnum_ov75_021D1598_04,
    UnkEnum_ov75_021D1598_05,
    UnkEnum_ov75_021D1598_06,
    UnkEnum_ov75_021D1598_07,
};

enum {
    UnkEnum_ov75_021D0E80_00,
    UnkEnum_ov75_021D0E80_01,
    UnkEnum_ov75_021D0E80_02,
    UnkEnum_ov75_021D0E80_03
} UnkEnum_ov75_021D0E80;

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08;
    u16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    BGL *unk_18;
    UnkStruct_020978D8 *unk_1C;
    MessageLoader *unk_20;
    Strbuf *unk_24[3];
    PaletteData *unk_30;
    void *unk_34;
    void *unk_38;
    NNSG2dScreenData *unk_3C;
    NNSG2dScreenData *unk_40;
    Window unk_44[6];
    UIControlData *unk_A4;
    SpriteRenderer *unk_A8;
    SpriteGfxHandler *unk_AC;
    CellActorData *unk_B0[3];
} UnkStruct_ov75_021D1184;

typedef int (*UnkFuncPtr_ov75_021D1184)(UnkStruct_ov75_021D1184 *);

static int ov75_021D1184(UnkStruct_ov75_021D1184 *param0);
static int ov75_021D0E5C(UnkStruct_ov75_021D1184 *param0);
static int ov75_021D0E80(UnkStruct_ov75_021D1184 *param0);
static int ov75_021D108C(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D1358(SysTask *param0, void *param1);
static int ov75_021D13E8(UnkStruct_ov75_021D1184 *param0);
static int ov75_021D1434(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D131C(void *param0);
static void ov75_021D1460(void);
static void ov75_021D1480(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D1564(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D1598(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D1868(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D18A8(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D19A8(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D19C8(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D1ADC(UnkStruct_ov75_021D1184 *param0);
static void ov75_021D1CB8(UnkStruct_ov75_021D1184 *param0);
int ov75_021D0D80(OverlayManager *param0, int *param1);
int ov75_021D0DF8(OverlayManager *param0, int *param1);
int ov75_021D0E10(OverlayManager *param0, int *param1);

int ov75_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_020978D8 *v0;
    UnkStruct_ov75_021D1184 *v1 = (UnkStruct_ov75_021D1184 *)OverlayManager_Data(param0);

    Heap_Create(3, 41, 0x20000);
    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov75_021D1184), 41);
    memset(v1, 0, sizeof(UnkStruct_ov75_021D1184));

    v1->unk_00 = 41;

    v1->unk_1C = (UnkStruct_020978D8 *)OverlayManager_Args(param0);
    v1->unk_0D = v1->unk_0C = v1->unk_1C->unk_00;
    v1->unk_11 = v1->unk_1C->unk_02;
    v1->unk_12 = v1->unk_1C->unk_03;
    v1->unk_17 = v1->unk_16 = v1->unk_11;
    v1->unk_1C->unk_00 = 0xFFFF;
    v1->unk_10 = Options_TextFrameDelay(v1->unk_1C->unk_04);
    v1->unk_0A = Options_Frame(v1->unk_1C->unk_04);

    RenderControlFlags_SetCanABSpeedUpPrint(1);
    return 1;
}

int ov75_021D0DF8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov75_021D1184 *v0 = (UnkStruct_ov75_021D1184 *)OverlayManager_Data(param0);

    if (ov75_021D1184(v0)) {
        return 1;
    }

    return 0;
}

int ov75_021D0E10(OverlayManager *param0, int *param1)
{
    UnkStruct_ov75_021D1184 *v0 = (UnkStruct_ov75_021D1184 *)OverlayManager_Data(param0);
    int v1;

    RenderControlFlags_SetCanABSpeedUpPrint(0);

    v1 = v0->unk_00;

    OverlayManager_FreeData(param0);
    Heap_Destroy(v1);

    return 1;
}

static BOOL ov75_021D0E34(UnkStruct_ov75_021D1184 *param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 3; v0++) {
        if (sub_02014BBC(&param0->unk_1C->unk_1A[v0])) {
            return 0;
        }
    }

    return 1;
}

static int ov75_021D0E5C(UnkStruct_ov75_021D1184 *param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Sound_PlayEffect(1507);
        return 1;
    }

    return 0;
}

static int ov75_021D0E80(UnkStruct_ov75_021D1184 *param0)
{
    u8 v0 = 0;

    if (gCoreSys.pressedKeys & (PAD_BUTTON_A)) {
        if (param0->unk_11 == 3) {
            if (param0->unk_12 == 0) {
                if (ov75_021D0E34(param0)) {
                    Sound_PlayEffect(1501);
                    param0->unk_0C = UnkEnum_ov75_021D0E80_02;
                    return 0;
                } else {
                    param0->unk_1C->unk_00 = 3;
                    Sound_PlayEffect(1507);
                }
            } else {
                Sound_PlayEffect(1501);
                param0->unk_0C = UnkEnum_ov75_021D0E80_03;
                return 0;
            }

            param0->unk_1C->unk_02 = param0->unk_1C->unk_03 = 0;
        } else {
            param0->unk_1C->unk_00 = param0->unk_1C->unk_02 = param0->unk_11;
            param0->unk_1C->unk_03 = param0->unk_12;
            Sound_PlayEffect(1501);
        }

        return 1;
    } else if (gCoreSys.pressedKeys & (PAD_BUTTON_B)) {
        Sound_PlayEffect(1501);
        param0->unk_0C = UnkEnum_ov75_021D0E80_03;
        return 0;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_START) {
        param0->unk_11 = 3;
        param0->unk_12 = 0;
        v0 = 1;
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        param0->unk_11 = (param0->unk_11 + 1) % 4;
        v0 = 1;
    } else if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        param0->unk_11 = (param0->unk_11 + 4 - 1) % 4;
        v0 = 1;
    } else if (gCoreSys.pressedKeys & (PAD_KEY_RIGHT | PAD_KEY_LEFT)) {
        if (param0->unk_11 == 3) {
            param0->unk_12 ^= 1;
            v0 = 1;
        }
    } else {
        return 0;
    }

    if (!v0) {
        return 0;
    }

    Sound_PlayEffect(1500);

    if (param0->unk_11 == 3) {
        param0->unk_16 = param0->unk_11 + param0->unk_12;
    } else {
        param0->unk_16 = param0->unk_11;
    }

    return 0;
}

static int ov75_021D0FA0(UnkStruct_ov75_021D1184 *param0)
{
    Strbuf *v0 = NULL;

    switch (param0->unk_08) {
    case 0:
        sub_0200E060(&param0->unk_44[5], 1, 1 + 9, UnkEnum_ov75_021D1598_06);
        BGL_FillWindow(&(param0->unk_44[5]), ((15 << 4) | 15));

        v0 = Strbuf_Init((19 * 2 * 2), param0->unk_00);

        MessageLoader_GetStrbuf(param0->unk_20, 2, v0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_44[5], FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
        Strbuf_Free(v0);
        break;
    case 1:

        if (!(gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            return 0;
        }

        sub_0200E084(&param0->unk_44[5], 1);
        sub_0201ACF4(&(param0->unk_44[5]));

        param0->unk_08 = 0;
        param0->unk_0C = param0->unk_0D;

        return 0;
    }

    param0->unk_08++;
    return 0;
}

static void ov75_021D1040(UnkStruct_ov75_021D1184 *param0)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        0, 25, 13, 6, 4, UnkEnum_ov75_021D1598_03, 555
    };

    param0->unk_A4 = sub_02002100(param0->unk_18, &v0, 1, UnkEnum_ov75_021D1598_05, param0->unk_00);
}

static int ov75_021D1064(UnkStruct_ov75_021D1184 *param0)
{
    switch (sub_02002114(param0->unk_A4, param0->unk_00)) {
    case 0:
        return 1;
    case 0xfffffffe:
        return 0;
    }

    return -1;
}

static int ov75_021D108C(UnkStruct_ov75_021D1184 *param0)
{
    int v0;
    Strbuf *v1 = NULL;

    switch (param0->unk_08) {
    case 0:
        param0->unk_13 = 1;

        sub_0200E060(&param0->unk_44[5], 1, 1 + 9, UnkEnum_ov75_021D1598_06);
        BGL_FillWindow(&(param0->unk_44[5]), ((15 << 4) | 15));

        v1 = Strbuf_Init((19 * 2 * 2), param0->unk_00);
        MessageLoader_GetStrbuf(param0->unk_20, 3, v1);
        param0->unk_0F = Text_AddPrinterWithParamsAndColor(&param0->unk_44[5], FONT_MESSAGE, v1, 0, 0, param0->unk_10, TEXT_COLOR(1, 2, 15), NULL);

        Strbuf_Free(v1);
        sub_020039B0(param0->unk_30, 0, 34 + param0->unk_17, 1, 0, 0x7FFF);

        param0->unk_17 = param0->unk_16;
        param0->unk_15 = 0;
        param0->unk_14 = 0;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->unk_0F)) {
            return 0;
        }

        ov75_021D1040(param0);
        break;
    case 2:
        v0 = ov75_021D1064(param0);

        if (v0 < 0) {
            return 0;
        }

        sub_0200E084(&param0->unk_44[5], 1);
        sub_0201ACF4(&(param0->unk_44[5]));
        param0->unk_08 = 0;

        if (v0) {
            param0->unk_1C->unk_00 = 0xFFFF;
            return 1;
        } else {
            param0->unk_0C = param0->unk_0D;
            param0->unk_13 = 0;
            return 0;
        }
    }

    param0->unk_08++;
    return 0;
}

static int ov75_021D1184(UnkStruct_ov75_021D1184 *param0)
{
    switch (param0->unk_04) {
    case 0:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        sub_0200F32C(0);
        sub_0200F32C(1);
        break;
    case 1:
        if (!ov75_021D13E8(param0)) {
            return 0;
        }

        SetMainCallback(ov75_021D131C, param0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        sub_0200F338(0);

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 28, 4);

        sub_02003178(param0->unk_30, (0x1 | 0x4), 0xFFFF, -1, 16, 0, 0x0);
        break;
    case 2:
        if (param0->unk_AC != NULL) {
            sub_0200C7EC(param0->unk_AC);
        }

        if (sub_0200384C(param0->unk_30)) {
            return 0;
        }
        break;
    case 3: {
        static const UnkFuncPtr_ov75_021D1184 v0[] = {
            ov75_021D0E5C,
            ov75_021D0E80,
            ov75_021D0FA0,
            ov75_021D108C,
        };

        if (param0->unk_AC != NULL) {
            sub_0200C7EC(param0->unk_AC);
        }

        if (!v0[param0->unk_0C](param0)) {
            return 0;
        }

        sub_02003178(param0->unk_30, (0x1 | 0x4), 0xFFFF, -1, 0, 16, 0x0);
    } break;
    case 4:
        if (sub_0200384C(param0->unk_30)) {
            if (param0->unk_AC != NULL) {
                sub_0200C7EC(param0->unk_AC);
            }

            return 0;
        }

        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        SetMainCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        break;
    case 5:
        if (ov75_021D1434(param0)) {
            return 1;
        }

        return 0;
    }

    param0->unk_04++;
    return 0;
}

static void ov75_021D131C(void *param0)
{
    UnkStruct_ov75_021D1184 *v0 = (UnkStruct_ov75_021D1184 *)param0;

    if (v0->unk_30 != NULL) {
        sub_02003694(v0->unk_30);
    }

    if (v0->unk_A8 != NULL) {
        sub_0200C800();
    }

    NNS_GfdDoVramTransfer();
    sub_0201C2B8(v0->unk_18);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov75_021D1358(SysTask *param0, void *param1)
{
    UnkStruct_ov75_021D1184 *v0 = (UnkStruct_ov75_021D1184 *)param1;

    if (v0->unk_30 == NULL) {
        SysTask_Done(param0);
        return;
    }

    if (v0->unk_13) {
        return;
    }

    if (v0->unk_17 != v0->unk_16) {
        sub_020039B0(v0->unk_30, 0, 34 + v0->unk_17, 1, 0, 0x7FFF);
        v0->unk_17 = v0->unk_16;
        v0->unk_15 = 0;
        v0->unk_14 = 0;
    }

    sub_020039B0(v0->unk_30, 0, 34 + v0->unk_16, 1, v0->unk_14, 0x7FFF);

    if (v0->unk_15) {
        if (v0->unk_14-- == 1) {
            v0->unk_15 ^= 1;
        }
    } else {
        if (v0->unk_14++ == 12) {
            v0->unk_15 ^= 1;
        }
    }
}

static int ov75_021D13E8(UnkStruct_ov75_021D1184 *param0)
{
    switch (param0->unk_08) {
    case 0:
        ov75_021D1480(param0);
        break;
    case 1:
        ov75_021D1598(param0);
        break;
    case 2:
        ov75_021D18A8(param0);
        ov75_021D19C8(param0);
        break;
    case 3:
        ov75_021D1ADC(param0);
        param0->unk_08 = 0;
        return 1;
    }

    param0->unk_08++;
    return 0;
}

static int ov75_021D1434(UnkStruct_ov75_021D1184 *param0)
{
    ov75_021D1CB8(param0);

    if (param0->unk_24 != NULL) {
        MessageLoader_Free(param0->unk_20);
    }

    ov75_021D19A8(param0);
    ov75_021D1868(param0);
    ov75_021D1564(param0);

    return 1;
}

static void ov75_021D1460(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov75_021D1480(UnkStruct_ov75_021D1184 *param0)
{
    int v0, v1;

    ov75_021D1460();

    param0->unk_18 = sub_02018340(param0->unk_00);

    {
        UnkStruct_ov84_0223BA5C v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v2);
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
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x10000,
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
                GX_BG_SCRBASE_0xf000,
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
                GX_BG_SCRBASE_0xe800,
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
                GX_BG_SCRBASE_0xe000,
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
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0->unk_18, 0, &(v3[0]), 0);
        sub_020183C4(param0->unk_18, 1, &(v3[1]), 0);
        sub_020183C4(param0->unk_18, 2, &(v3[2]), 0);
        sub_020183C4(param0->unk_18, 3, &(v3[3]), 0);
        sub_020183C4(param0->unk_18, 4, &(v3[4]), 0);
    }

    sub_02019EBC(param0->unk_18, 0);
    sub_02019EBC(param0->unk_18, 1);
    sub_02019EBC(param0->unk_18, 2);
    sub_02019EBC(param0->unk_18, 3);
    sub_02019EBC(param0->unk_18, 4);
    sub_02019690(0, 32, 0, param0->unk_00);
    sub_02019690(1, 32, 0, param0->unk_00);
    sub_02019690(2, 32, 0, param0->unk_00);
    sub_02019690(3, 32, 0, param0->unk_00);
    sub_02019690(4, 32, 0, param0->unk_00);
}

static void ov75_021D1564(UnkStruct_ov75_021D1184 *param0)
{
    sub_02019044(param0->unk_18, 4);
    sub_02019044(param0->unk_18, 3);
    sub_02019044(param0->unk_18, 2);
    sub_02019044(param0->unk_18, 1);
    sub_02019044(param0->unk_18, 0);
    Heap_FreeToHeap(param0->unk_18);
}

static void ov75_021D1598(UnkStruct_ov75_021D1184 *param0)
{
    void *v0;
    u32 v1;
    void *v2;
    NNSG2dCharacterData *v3;
    NNSG2dPaletteData *v4;
    NARC *v5;
    int v6, v7, v8;

    v6 = 12 + param0->unk_1C->unk_0F;
    v7 = 24 + param0->unk_1C->unk_0F;
    v8 = 0 + param0->unk_1C->unk_0F;
    v5 = NARC_ctor(NARC_INDEX_GRAPHIC__MAIL_GRA, param0->unk_00);

    sub_0200DAA4(param0->unk_18, 0, 1, UnkEnum_ov75_021D1598_05, 0, param0->unk_00);
    sub_0200DD0C(param0->unk_18, 0, 1 + 9, UnkEnum_ov75_021D1598_06, param0->unk_0A, param0->unk_00);

    v1 = NARC_GetMemberSize(v5, v6);
    v2 = Heap_AllocFromHeapAtEnd(param0->unk_00, v1);
    NARC_ReadWholeMember(v5, v6, (void *)v2);

    NNS_G2dGetUnpackedCharacterData(v2, &v3);
    sub_0201958C(param0->unk_18, 1, v3->pRawData, v3->szByte, 0);
    sub_0201958C(param0->unk_18, 4, v3->pRawData, v3->szByte, 0);
    Heap_FreeToHeap(v2);

    v1 = NARC_GetMemberSize(v5, v8);
    v2 = Heap_AllocFromHeapAtEnd(param0->unk_00, v1);
    NARC_ReadWholeMember(v5, v8, (void *)v2);

    NNS_G2dGetUnpackedPaletteData(v2, &v4);
    sub_0201972C(4, v4->pRawData, v4->szByte, 0);

    param0->unk_30 = sub_02002F38(param0->unk_00);

    sub_02002F70(param0->unk_30, 0, 32 * UnkEnum_ov75_021D1598_07, param0->unk_00);
    sub_02002F70(param0->unk_30, 2, 32 * 3, param0->unk_00);
    sub_02002FBC(param0->unk_30, v4->pRawData, 0, 0, 32 * 3);

    if (param0->unk_0C == 1) {
        sub_02002FBC(param0->unk_30, &(((u16 *)v4->pRawData)[16 * 3]), 0, 16, 32);
    }

    PaletteSys_LoadPalette(param0->unk_30, 19, 0, param0->unk_00, 2, 32 * 3, 0);
    PaletteSys_LoadPalette(param0->unk_30, 14, 6, param0->unk_00, 0, 32, 16 * UnkEnum_ov75_021D1598_03);
    PaletteSys_LoadPalette(param0->unk_30, 14, 7, param0->unk_00, 0, 32, 16 * UnkEnum_ov75_021D1598_04);
    PaletteSys_LoadPalette(param0->unk_30, 38, 24, param0->unk_00, 0, 32, 16 * UnkEnum_ov75_021D1598_05);
    PaletteSys_LoadPalette(param0->unk_30, 38, 25 + param0->unk_0A, param0->unk_00, 0, 32, 16 * UnkEnum_ov75_021D1598_06);
    sub_020039B0(param0->unk_30, 0, 0, 16 * UnkEnum_ov75_021D1598_07, 16, 0x0);
    sub_020039B0(param0->unk_30, 2, 0, 16 * 3, 16, 0x0);
    sub_02003858(param0->unk_30, 1);
    sub_02003694(param0->unk_30);
    Heap_FreeToHeap(v2);

    v1 = NARC_GetMemberSize(v5, v7);
    param0->unk_34 = Heap_AllocFromHeap(param0->unk_00, v1);
    NARC_ReadWholeMember(v5, v7, (void *)param0->unk_34);
    NNS_G2dGetUnpackedScreenData(param0->unk_34, &(param0->unk_3C));

    v1 = NARC_GetMemberSize(v5, 36);
    param0->unk_38 = Heap_AllocFromHeap(param0->unk_00, v1);
    NARC_ReadWholeMember(v5, 36, (void *)param0->unk_38);
    NNS_G2dGetUnpackedScreenData(param0->unk_38, &(param0->unk_40));

    NARC_dtor(v5);
    sub_02019CB8(param0->unk_18, 4, 0x2001, 0, 0, 32, 32, 17);
    sub_020198E8(param0->unk_18, 3, 0, 0, 32, 24, param0->unk_3C->rawData, 0, 0, param0->unk_3C->screenWidth / 8, param0->unk_3C->screenHeight / 8);
    sub_0201C3C0(param0->unk_18, 3);
    sub_0201C3C0(param0->unk_18, 4);

    if (param0->unk_0C == 1) {
        sub_020198E8(param0->unk_18, 2, 0, 0, 32, 24, param0->unk_40->rawData, 0, 0, param0->unk_40->screenWidth / 8, param0->unk_40->screenHeight / 8);
        sub_0201C3C0(param0->unk_18, 2);

        param0->unk_14 = 0;
        param0->unk_15 = 0;

        SysTask_Start(ov75_021D1358, param0, 0);
    }
}

static void ov75_021D1868(UnkStruct_ov75_021D1184 *param0)
{
    Heap_FreeToHeap(param0->unk_38);
    Heap_FreeToHeap(param0->unk_34);
    sub_02002FA0(param0->unk_30, 2);
    sub_02002FA0(param0->unk_30, 0);
    sub_02002F54(param0->unk_30);

    param0->unk_30 = NULL;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_NONE, 31, 0);
}

static void ov75_021D18A8(UnkStruct_ov75_021D1184 *param0)
{
    int v0 = 0;

    BGL_AddWindow(param0->unk_18, &param0->unk_44[0], 1, 3, 3, 26, 4, 1, 1023 - 26 * 4);
    BGL_AddWindow(param0->unk_18, &param0->unk_44[1], 1, 3, 3 + 4 + 1, 26, 4, 1, ((1023 - 26 * 4) - (26 * 4)));
    BGL_AddWindow(param0->unk_18, &param0->unk_44[2], 1, 3, (3 + 4 + 1 + 4 + 1), 26, 4, 1, (((1023 - 26 * 4) - (26 * 4)) - (26 * 4)));
    BGL_AddWindow(param0->unk_18, &param0->unk_44[3], 1, 21, 20, 8, 2, (UnkEnum_ov75_021D1598_01), ((((1023 - 26 * 4) - (26 * 4)) - (26 * 4)) - 8 * 2));
    BGL_AddWindow(param0->unk_18, &param0->unk_44[4], 1, 3, 20, 8, 2, (UnkEnum_ov75_021D1598_01), (((((1023 - 26 * 4) - (26 * 4)) - (26 * 4)) - 8 * 2) - 8 * 2));
    BGL_AddWindow(param0->unk_18, &param0->unk_44[5], 0, 2, 19, 27, 4, (UnkEnum_ov75_021D1598_04), ((((((1023 - 26 * 4) - (26 * 4)) - (26 * 4)) - 8 * 2) - 8 * 2) - 8 * 2));

    for (v0 = 0; v0 < 6; v0++) {
        BGL_FillWindow(&(param0->unk_44[v0]), 0);

        if (v0 < 5) {
            sub_0201A954(&param0->unk_44[v0]);
        }
    }
}

static void ov75_021D19A8(UnkStruct_ov75_021D1184 *param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        sub_0201ACF4(&param0->unk_44[v0]);
        BGL_DeleteWindow(&param0->unk_44[v0]);
    }
}

static void ov75_021D19C8(UnkStruct_ov75_021D1184 *param0)
{
    int v0 = 0;
    Strbuf *v1;

    for (v0 = 0; v0 < 3; v0++) {
        if (!sub_02014BBC(&param0->unk_1C->unk_1A[v0])) {
            continue;
        }

        v1 = sub_02014B34(&param0->unk_1C->unk_1A[v0], param0->unk_00);

        Text_AddPrinterWithParamsAndColor(&param0->unk_44[0 + v0], FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
        sub_0201A954(&param0->unk_44[0 + v0]);
    }

    if (param0->unk_0C == 1) {
        Strbuf *v2;
        int v3;

        param0->unk_20 = MessageLoader_Init(1, 26, 409, param0->unk_00);

        v2 = Strbuf_Init(8 * 2, param0->unk_00);

        for (v0 = 0; v0 < 2; v0++) {
            Strbuf_Clear(v2);
            MessageLoader_GetStrbuf(param0->unk_20, 0 + v0, v2);

            v3 = (8 * 8) - Font_CalcStrbufWidth(FONT_MESSAGE, v2, 0);
            v3 /= 2;

            Text_AddPrinterWithParamsAndColor(&param0->unk_44[3 + v0], FONT_MESSAGE, v2, v3, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
            sub_0201A954(&param0->unk_44[3 + v0]);
        }

        Strbuf_Free(v2);
    } else {
        Text_AddPrinterWithParamsAndColor(&param0->unk_44[3], FONT_MESSAGE, param0->unk_1C->unk_10, 0, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        sub_0201A954(&param0->unk_44[3]);
    }
}

static void ov75_021D1ADC(UnkStruct_ov75_021D1184 *param0)
{
    int v0 = 0, v1 = 0;
    SpriteTemplate v2;

    sub_020397E4();

    if (param0->unk_0C == 1) {
        return;
    }

    sub_0201DBEC(32, param0->unk_00);

    param0->unk_A8 = sub_0200C6E4(param0->unk_00);
    param0->unk_AC = sub_0200C704(param0->unk_A8);

    {
        UnkStruct_ov104_0224133C v3 = {
            0,
            7,
            1,
            1,
            0,
            1,
            1,
            1,
        };
        UnkStruct_ov104_022412F4 v4 = {
            3,
            1024,
            0,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K,
        };
        const UnkStruct_ov104_02241308 v5 = {
            3,
            1,
            1,
            1,
            0,
            0,
        };

        sub_0200C73C(param0->unk_A8, &v3, &v4, 32);
        sub_0200C7C0(param0->unk_A8, param0->unk_AC, 3);
        sub_0200CB30(param0->unk_A8, param0->unk_AC, &v5);
        sub_0200A93C(param0->unk_00);
    }

    sub_0200CC9C(param0->unk_A8, param0->unk_AC, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 0);
    sub_0200CE0C(param0->unk_A8, param0->unk_AC, 19, PokeIconCellsFileIndex(), 0, 0);
    sub_0200CE3C(param0->unk_A8, param0->unk_AC, 19, PokeIconAnimationFileIndex(), 0, 0);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_1C->unk_14[v0].val2 == 0xFFFF) {
            break;
        }

        sub_0200D828(param0->unk_A8, param0->unk_AC, 19, param0->unk_1C->unk_14[v0].val1_0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v0);
        MI_CpuClear8(&v2, sizeof(SpriteTemplate));

        v2.x = (16 * 8) - (40 * v0);
        v2.y = 160;
        v2.z = 0;

        v2.animIdx = 0;
        v2.bgPriority = 2;
        v2.plttIdx = param0->unk_1C->unk_14[v0].val1_12;
        v2.transferToVRAM = FALSE;
        v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;

        v2.resources[0] = v0;
        v2.resources[1] = 0;
        v2.resources[2] = 0;
        v2.resources[3] = 0;
        v2.resources[4] = SPRITE_RESOURCE_NONE;
        v2.resources[5] = SPRITE_RESOURCE_NONE;

        param0->unk_B0[v0] = SpriteActor_LoadResources(param0->unk_A8, param0->unk_AC, &v2);

        if (param0->unk_1C->unk_14[v0].val1_0 == 7) {
            SpriteActor_EnableObject(param0->unk_B0[v0], 0);
        }
    }
}

static void ov75_021D1CB8(UnkStruct_ov75_021D1184 *param0)
{
    int v0 = 0;

    if (param0->unk_0C == 0) {
        for (v0 = 0; v0 < 3; v0++) {
            if (param0->unk_B0[v0] != NULL) {
                sub_0200D0F4(param0->unk_B0[v0]);
            }
        }

        sub_0200D0B0(param0->unk_A8, param0->unk_AC);
        sub_0200C8D4(param0->unk_A8);
        sub_0201DC3C();
    }
}
