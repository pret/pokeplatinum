#include "overlay090/ov90_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_0202D764_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_defs/sentence.h"
#include "struct_defs/struct_02049A68.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay090/struct_ov90_021D0D80.h"
#include "overlay090/struct_ov90_021D1750.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200A784.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02014A84.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0202D05C.h"
#include "unk_0203061C.h"
#include "unk_0208C098.h"

typedef struct {
    MessageLoader *unk_00;
    StringTemplate *unk_04;
    Strbuf *unk_08;
    Strbuf *unk_0C;
    Strbuf *unk_10;
    Strbuf *unk_14;
    Strbuf *unk_18;
    Strbuf *unk_1C;
    Strbuf *unk_20;
    Strbuf *unk_24[6];
    Strbuf *unk_3C[2];
} UnkStruct_ov90_021D0ECC_sub1;

typedef struct {
    Strbuf *unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    Sentence unk_08;
} UnkStruct_ov90_021D17F8;

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    BGL *unk_10;
    UnkStruct_ov90_021D0D80 *unk_14;
    Options *unk_18;
    UnkStruct_0203068C *unk_1C;
    UnkStruct_0202D750 *unk_20;
    UnkStruct_0202D764 *unk_24;
    UnkStruct_ov90_021D0ECC_sub1 unk_28;
    Window unk_6C[5];
    UnkStruct_ov90_021D17F8 unk_BC[30];
    SpriteRenderer *unk_29C;
    SpriteGfxHandler *unk_2A0;
    CellActor *unk_2A4[4];
} UnkStruct_ov90_021D0ECC;

static int ov90_021D0ECC(UnkStruct_ov90_021D0ECC *param0);
static int ov90_021D0F98(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1014(void);
static void ov90_021D1034(void *param0);
static int ov90_021D105C(UnkStruct_ov90_021D0ECC *param0);
static int ov90_021D1080(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D11EC(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1280(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D12B0(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1340(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D13A8(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D13D8(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D146C(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D15D0(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1750(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D17DC(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D18BC(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D17F8(UnkStruct_ov90_021D17F8 *param0, Window *param1, Strbuf *param2, u8 param3, u8 param4, u8 param5);
static void ov90_021D1984(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1A48(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1A9C(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1ABC(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1B6C(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1B90(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1BA4(void);
static void ov90_021D1BAC(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1C28(UnkStruct_ov90_021D0ECC *param0);
static void ov90_021D1C44(UnkStruct_ov90_021D0ECC *param0, BOOL param1);
static void ov90_021D1C90(UnkStruct_ov90_021D0ECC *param0, u8 param1, u8 param2, u8 param3);

int ov90_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov90_021D0ECC *v0 = NULL;
    UnkStruct_ov90_021D0D80 *v1;

    v1 = (UnkStruct_ov90_021D0D80 *)OverlayManager_Args(param0);

    Heap_Create(3, 74, 0x10000);
    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov90_021D0ECC), 74);
    memset(v0, 0, sizeof(UnkStruct_ov90_021D0ECC));

    v0->unk_08 = v1->unk_04;
    v0->unk_0A = v1->unk_06;
    v0->unk_18 = SaveData_Options(v1->unk_00);
    v0->unk_1C = sub_0203068C(v1->unk_00);
    v0->unk_20 = sub_0202D750(v1->unk_00);
    v0->unk_24 = sub_0202D764(v1->unk_00);
    v0->unk_00 = 74;

    SetAutorepeat(4, 8);

    return 1;
}

int ov90_021D0DE8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov90_021D0ECC *v0 = OverlayManager_Data(param0);

    OverlayManager_FreeData(param0);
    Heap_Destroy(v0->unk_00);

    return 1;
}

int ov90_021D0E04(OverlayManager *param0, int *param1)
{
    int v0 = 0;
    UnkStruct_ov90_021D0ECC *v1 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        if (!ov90_021D0ECC(v1)) {
            break;
        }

        sub_0200F174(3, 1, 1, 0x0, 6, 1, v1->unk_00);
        (*param1)++;
        break;
    case 1:
        if (!ScreenWipe_Done()) {
            break;
        }

        (*param1)++;
        break;
    case 2:
        if (v1->unk_08 == 0) {
            v0 = ov90_021D105C(v1);
        } else {
            v0 = ov90_021D1080(v1);
        }

        if (!v0) {
            break;
        }

        sub_0200F174(3, 0, 0, 0x0, 6, 1, v1->unk_00);
        (*param1)++;
        break;
    case 3:
        if (!ScreenWipe_Done()) {
            break;
        }

        (*param1)++;
        break;
    case 4:
        if (!ov90_021D0F98(v1)) {
            break;
        }

        return 1;
    }

    if ((*param1 >= 1) && (3 >= *param1)) {
        ov90_021D1B90(v1);
    }

    return 0;
}

static int ov90_021D0ECC(UnkStruct_ov90_021D0ECC *param0)
{
    switch (param0->unk_04) {
    case 0:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        ov90_021D1014();
        sub_0200F32C(0);
        sub_0200F32C(1);
        ov90_021D11EC(param0);
        break;
    case 1:
        ov90_021D12B0(param0);
        ov90_021D13D8(param0);
        break;
    case 2:
        ov90_021D1340(param0);

        if (param0->unk_08 == 0) {
            ov90_021D15D0(param0);
            param0->unk_04++;
        } else {
            ov90_021D1750(param0);
            ov90_021D18BC(param0);
        }
        break;
    case 3:
        ov90_021D1ABC(param0);
        ov90_021D1BAC(param0);
        ov90_021D1984(param0);
        break;
    case 4:
        SetMainCallback(ov90_021D1034, param0);
        param0->unk_04 = 0;
        return 1;
    }

    param0->unk_04++;
    return 0;
}

static int ov90_021D0F98(UnkStruct_ov90_021D0ECC *param0)
{
    switch (param0->unk_04) {
    case 0:
        if (param0->unk_08) {
            ov90_021D1C28(param0);
            ov90_021D1B6C(param0);
            ov90_021D17DC(param0);
        }

        ov90_021D13A8(param0);
        ov90_021D146C(param0);
        ov90_021D1280(param0);
        break;
    case 1:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        param0->unk_04 = 0;
        return 1;
    }

    param0->unk_04++;
    return 0;
}

static void ov90_021D1014(void)
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

static void ov90_021D1034(void *param0)
{
    UnkStruct_ov90_021D0ECC *v0 = param0;

    ov90_021D1BA4();
    NNS_GfdDoVramTransfer();
    sub_0201C2B8(v0->unk_10);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int ov90_021D105C(UnkStruct_ov90_021D0ECC *param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Sound_PlayEffect(1500);
        return 1;
    }

    return 0;
}

static inline u8 inline_ov90_021D1080(UnkStruct_ov90_021D0ECC *param0)
{
    if (param0->unk_0B == 0) {
        return 0;
    }

    --param0->unk_0B;

    if (param0->unk_0F == 0) {
        --param0->unk_0E;
        return 1;
    }

    --param0->unk_0F;
    return 1;
}

static inline u8 inline_ov90_021D1080_1(UnkStruct_ov90_021D0ECC *wk)
{
    if (wk->unk_0B >= 10) {
        return 0;
    }

    ++wk->unk_0B;

    if (wk->unk_0F > 1) {
        ++wk->unk_0E;
        return 1;
    }

    ++wk->unk_0F;
    return 1;
}

static int ov90_021D1080(UnkStruct_ov90_021D0ECC *param0)
{
    int v0 = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(1500);
        return 1;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1500);

        if (param0->unk_0B >= 10) {
            return 1;
        }

        param0->unk_0D = (param0->unk_0D + 1) % 2;
        v0 = 1;
    } else {
        if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
            v0 = inline_ov90_021D1080(param0);

            if (v0) {
                Sound_PlayEffect(1500);
            }
        } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
            v0 = inline_ov90_021D1080_1(param0);

            if (v0) {
                Sound_PlayEffect(1500);
            }
        } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT) {
            param0->unk_0C = (param0->unk_0C + 2) % 3;
            v0 = 1;

            if (param0->unk_0B != 10) {
                Sound_PlayEffect(1500);
            }
        } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT) {
            param0->unk_0C = (param0->unk_0C + 1) % 3;
            v0 = 1;

            if (param0->unk_0B != 10) {
                Sound_PlayEffect(1500);
            }
        }

        if (param0->unk_0B == 10) {
            param0->unk_0C = 2;
        }
    }

    if (!v0) {
        return 0;
    }

    ov90_021D1C90(param0, param0->unk_0B, param0->unk_0C, param0->unk_0F);
    ov90_021D17F8(param0->unk_BC, &param0->unk_6C[1], param0->unk_28.unk_0C, param0->unk_0E, param0->unk_0B, param0->unk_0C);

    if (param0->unk_0B != 10) {
        switch (param0->unk_0D) {
        case 0:
            ov90_021D1984(param0);
            break;
        case 1:
            ov90_021D1A48(param0);
            break;
        default:
            GF_ASSERT(0);
            break;
        }
    } else {
        ov90_021D1A9C(param0);
    }

    return 0;
}

static void ov90_021D11EC(UnkStruct_ov90_021D0ECC *param0)
{
    int v0, v1;

    param0->unk_10 = sub_02018340(param0->unk_00);

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
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0,
            },
        };

        v1 = 0;

        for (v0 = 0; v0 < 2 + param0->unk_08; v0++) {
            sub_020183C4(param0->unk_10, v1, &(v3[v0]), 0);
            sub_02019EBC(param0->unk_10, v1);
            v1++;
        }
    }
    sub_02019690(0, 32, 0, param0->unk_00);

    if (param0->unk_08) {
        sub_02019690(2, 32, 0, param0->unk_00);
    }
}

static void ov90_021D1280(UnkStruct_ov90_021D0ECC *param0)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < 2 + param0->unk_08; v0++) {
        sub_02019044(param0->unk_10, v1++);
    }

    Heap_FreeToHeap(param0->unk_10);
}

static void ov90_021D12B0(UnkStruct_ov90_021D0ECC *param0)
{
    int v0;
    NARC *v1;

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__BTOWER, param0->unk_00);

    sub_0208C210(param0->unk_10, param0->unk_00, v1, 123, 5, 1, 0, 0, 0);
    sub_0208C210(param0->unk_10, param0->unk_00, v1, 123, 4, 1, 2, 0x20 * 0x2, 0);

    if (param0->unk_08 == 1) {
        v0 = 7;
    } else {
        if (param0->unk_0A == 2) {
            v0 = 8;
        } else {
            v0 = 6;
        }
    }

    sub_0208C210(param0->unk_10, param0->unk_00, v1, 123, v0, 1, 1, 0, 0);
    NARC_dtor(v1);
    sub_0201C3C0(param0->unk_10, 1);
}

static void ov90_021D1340(UnkStruct_ov90_021D0ECC *param0)
{
    int v0;
    static const UnkStruct_ov61_0222C884 v1[] = {
        { 0, 4, 1, 24, 5, 2, 192 },
        { 0, 1, 9, 8, 5, 1, 312 },
        { 0, 1, 17, 8, 5, 1, 352 },
        { 0, 10, 9, 21, 5, 1, 392 },
        { 0, 10, 17, 21, 6, 1, 497 },
        { 0, 3, 18, 26, 5, 2, 312 },
    };
    static const UnkStruct_ov61_0222C884 v2[] = {
        { 0, 4, 1, 24, 5, 2, 192 },
        { 2, 3, 7, 26, 9, 1, 1 },
        { 0, 3, 18, 26, 5, 2, 312 },
    };

    if (param0->unk_08 == 0) {
        for (v0 = 0; v0 < 5; v0++) {
            sub_0201A8D4(param0->unk_10, &(param0->unk_6C[v0]), &(v1[v0]));
            BGL_FillWindow(&param0->unk_6C[v0], ((0 << 4) | 0));
        }
    } else {
        for (v0 = 0; v0 < 3; v0++) {
            sub_0201A8D4(param0->unk_10, &(param0->unk_6C[v0]), &(v2[v0]));
            BGL_FillWindow(&param0->unk_6C[v0], ((0 << 4) | 0));
        }
    }

    Font_LoadTextPalette(0, 2 * 32, param0->unk_00);
}

static void ov90_021D13A8(UnkStruct_ov90_021D0ECC *param0)
{
    int v0, v1;

    if (param0->unk_08 == 0) {
        v1 = 5;
    } else {
        v1 = 3;
    }

    for (v0 = 0; v0 < v1; v0++) {
        sub_0201ACF4(&param0->unk_6C[v0]);
        BGL_DeleteWindow(&param0->unk_6C[v0]);
    }
}

static void ov90_021D13D8(UnkStruct_ov90_021D0ECC *param0)
{
    int v0 = 0;

    param0->unk_28.unk_00 = MessageLoader_Init(0, 26, 22, param0->unk_00);
    param0->unk_28.unk_04 = StringTemplate_New(2, ((18 + 1) * 4), param0->unk_00);
    param0->unk_28.unk_08 = Strbuf_Init(((18 + 1) * 4), param0->unk_00);

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_28.unk_24[v0] = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 9 + v0);
    }

    param0->unk_28.unk_10 = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 15);
    param0->unk_28.unk_14 = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 17);
    param0->unk_28.unk_0C = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 18);
    param0->unk_28.unk_18 = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 19);
    param0->unk_28.unk_1C = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 20);
    param0->unk_28.unk_20 = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 21);
    param0->unk_28.unk_3C[0] = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 22);
    param0->unk_28.unk_3C[1] = MessageLoader_GetNewStrbuf(param0->unk_28.unk_00, 23);
}

static void ov90_021D146C(UnkStruct_ov90_021D0ECC *param0)
{
    int v0 = 0;

    Strbuf_Free(param0->unk_28.unk_3C[1]);
    Strbuf_Free(param0->unk_28.unk_3C[0]);
    Strbuf_Free(param0->unk_28.unk_20);
    Strbuf_Free(param0->unk_28.unk_1C);
    Strbuf_Free(param0->unk_28.unk_18);
    Strbuf_Free(param0->unk_28.unk_0C);
    Strbuf_Free(param0->unk_28.unk_14);
    Strbuf_Free(param0->unk_28.unk_10);

    for (v0 = 0; v0 < 6; v0++) {
        Strbuf_Free(param0->unk_28.unk_24[v0]);
    }

    Strbuf_Free(param0->unk_28.unk_08);
    StringTemplate_Free(param0->unk_28.unk_04);
    MessageLoader_Free(param0->unk_28.unk_00);
}

static void ov90_021D14C8(UnkStruct_ov90_021D0ECC *param0, Window *param1, u8 param2, u8 param3, u8 param4)
{
    u16 v0, v1, v2;
    int v3;

    v1 = sub_02030698(param0->unk_1C, param3, 0xff);
    v2 = sub_02030698(param0->unk_1C, param3 + 1, 0xff);
    v0 = sub_0202D414(param0->unk_20, 8 + param2, 0);

    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->unk_28.unk_24[v0], 4, param4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
    StringTemplate_SetNumber(param0->unk_28.unk_04, 0, v2, 4, 1, 1);
    StringTemplate_Format(param0->unk_28.unk_04, param0->unk_28.unk_08, param0->unk_28.unk_24[4]);

    v3 = 21 * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28.unk_08, 0) - 4;
    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->unk_28.unk_08, v3, param4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    param4 += 24;
    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->unk_28.unk_24[2], 4, param4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
    StringTemplate_SetNumber(param0->unk_28.unk_04, 0, v1, 4, 1, 1);
    StringTemplate_Format(param0->unk_28.unk_04, param0->unk_28.unk_08, param0->unk_28.unk_24[4]);

    v3 = 21 * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28.unk_08, 0) - 4;
    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->unk_28.unk_08, v3, param4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201A954(param1);
}

static void ov90_021D15D0(UnkStruct_ov90_021D0ECC *param0)
{
    int v0;
    u16 v1, v2;

    MessageLoader_GetStrbuf(param0->unk_28.unk_00, 0 + param0->unk_0A, param0->unk_28.unk_08);

    v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28.unk_08, 0);
    v0 = (24 * 8) - v0;

    Text_AddPrinterWithParamsAndColor(&param0->unk_6C[0], FONT_SYSTEM, param0->unk_28.unk_08, v0 / 2, 8, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 2, 0), NULL);
    MessageLoader_GetStrbuf(param0->unk_28.unk_00, 3 + param0->unk_0A, param0->unk_28.unk_08);
    Text_AddPrinterWithParamsAndColor(&param0->unk_6C[1], FONT_SYSTEM, param0->unk_28.unk_08, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(3, 4, 0), NULL);
    MessageLoader_GetStrbuf(param0->unk_28.unk_00, 6 + param0->unk_0A, param0->unk_28.unk_08);
    Text_AddPrinterWithParamsAndColor(&param0->unk_6C[2], FONT_SYSTEM, param0->unk_28.unk_08, 0, 3, TEXT_SPEED_INSTANT, TEXT_COLOR(3, 4, 0), NULL);

    switch (param0->unk_0A) {
    case 0:
        ov90_021D14C8(param0, &param0->unk_6C[3], 0, 0, 0);
        ov90_021D14C8(param0, &param0->unk_6C[4], 1, 2, 3);
        break;
    case 1:
        ov90_021D14C8(param0, &param0->unk_6C[3], 2, 4, 0);
        ov90_021D14C8(param0, &param0->unk_6C[4], 3, 6, 3);
        break;
    case 2:
        MessageLoader_GetStrbuf(param0->unk_28.unk_00, 12, param0->unk_28.unk_08);
        Text_AddPrinterWithParamsAndColor(&param0->unk_6C[3], FONT_SYSTEM, param0->unk_28.unk_08, 4, 10, TEXT_SPEED_INSTANT, TEXT_COLOR(3, 4, 0), NULL);
        StringTemplate_SetNumber(param0->unk_28.unk_04, 0, sub_0202D2C0(param0->unk_20, 0), 2, 0, 1);
        StringTemplate_Format(param0->unk_28.unk_04, param0->unk_28.unk_08, param0->unk_28.unk_24[5]);

        v0 = 64 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28.unk_08, 0);
        v0 = v0 / 2 + 64;

        Text_AddPrinterWithParamsAndColor(&param0->unk_6C[3], FONT_SYSTEM, param0->unk_28.unk_08, v0, 10, TEXT_SPEED_INSTANT, TEXT_COLOR(5, 6, 0), NULL);
        ov90_021D14C8(param0, &param0->unk_6C[4], 4, 8, 3);
        break;
    }
}

static void ov90_021D1750(UnkStruct_ov90_021D0ECC *param0)
{
    int v0;
    UnkStruct_ov90_021D1750 *v1;
    UnkStruct_ov90_021D17F8 *v2;

    v1 = sub_0202D71C(param0->unk_24, param0->unk_00);

    for (v0 = 0; v0 < 30; v0++) {
        v2 = &param0->unk_BC[v0];
        v2->unk_04 = v1[v0].unk_20_val1_1;
        v2->unk_05 = v1[v0].unk_12;
        v2->unk_06 = v1[v0].unk_13;
        v2->unk_07 = v1[v0].unk_20_val1_0;

        MI_CpuCopy8(v1[v0].unk_18, &v2->unk_08, 8);

        v2->unk_00 = Strbuf_Init(8, param0->unk_00);

        if (v2->unk_07) {
            Strbuf_Copy(v2->unk_00, param0->unk_28.unk_3C[v2->unk_04]);
        } else {
            Strbuf_CopyChars(v2->unk_00, v1[v0].unk_00);
        }
    }

    Heap_FreeToHeap(v1);
}

static void ov90_021D17DC(UnkStruct_ov90_021D0ECC *param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 30; v0++) {
        Strbuf_Free(param0->unk_BC[v0].unk_00);
    }
}

static void ov90_021D17F8(UnkStruct_ov90_021D17F8 *param0, Window *param1, Strbuf *param2, u8 param3, u8 param4, u8 param5)
{
    UnkStruct_ov90_021D17F8 *v0;
    int v1, v2, v3, v4, v5;
    u32 v6;

    BGL_FillWindow(param1, ((0 << 4) | 0));

    if (param3 >= (10 - 2)) {
        v4 = 2;
        v5 = (40 - Font_CalcStrbufWidth(FONT_SYSTEM, param2, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param2, 2 * 72 + 16 + v5, 2 * 24 + 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        v4 = 3;
    }

    v3 = param3 * 3;

    for (v1 = 0; v1 < v4; v1++) {
        for (v2 = 0; v2 < 3; v2++) {
            v0 = &param0[v1 * 3 + v2 + v3];

            if (v0->unk_04) {
                v6 = TEXT_COLOR(11, 12, 0);
            } else {
                v6 = TEXT_COLOR(9, 10, 0);
            }

            Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, v0->unk_00, v2 * 72, v1 * 24 + 4, TEXT_SPEED_NO_TRANSFER, v6, NULL);
        }
    }

    sub_0201A954(param1);
}

static void ov90_021D18BC(UnkStruct_ov90_021D0ECC *param0)
{
    UnkStruct_02049A68 v0;
    int v1;

    sub_0202D708(param0->unk_24, &v0);
    Strbuf_Clear(param0->unk_28.unk_08);
    StringTemplate_SetNumber(param0->unk_28.unk_04, 0, v0.unk_00, 2, 0, 1);
    StringTemplate_SetNumber(param0->unk_28.unk_04, 1, v0.unk_04, 3, 2, 1);
    StringTemplate_Format(param0->unk_28.unk_04, param0->unk_28.unk_08, param0->unk_28.unk_10);

    v1 = 24 * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28.unk_08, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_6C[0], FONT_SYSTEM, param0->unk_28.unk_08, v1 / 2, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    MessageLoader_GetStrbuf(param0->unk_28.unk_00, 16 + param0->unk_0A, param0->unk_28.unk_08);

    v1 = 24 * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_28.unk_08, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_6C[0], FONT_SYSTEM, param0->unk_28.unk_08, v1 / 2, 20, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 2, 0), NULL);
    ov90_021D17F8(param0->unk_BC, &param0->unk_6C[1], param0->unk_28.unk_0C, 0, 0, 0);
}

static void ov90_021D1984(UnkStruct_ov90_021D0ECC *param0)
{
    UnkStruct_ov90_021D17F8 *v0 = &(param0->unk_BC[param0->unk_0B * 3 + param0->unk_0C]);

    BGL_FillWindow(&param0->unk_6C[2], ((0 << 4) | 0));

    if (v0->unk_05 == 0) {
        Text_AddPrinterWithParamsAndColor(&param0->unk_6C[2], FONT_SYSTEM, param0->unk_28.unk_20, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    } else if (v0->unk_06 == 0) {
        StringTemplate_SetCountryName(param0->unk_28.unk_04, 0, v0->unk_05);
        StringTemplate_Format(param0->unk_28.unk_04, param0->unk_28.unk_08, param0->unk_28.unk_1C);
        Text_AddPrinterWithParamsAndColor(&param0->unk_6C[2], FONT_SYSTEM, param0->unk_28.unk_08, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        StringTemplate_SetCountryName(param0->unk_28.unk_04, 0, v0->unk_05);
        StringTemplate_SetCityName(param0->unk_28.unk_04, 1, v0->unk_05, v0->unk_06);
        StringTemplate_Format(param0->unk_28.unk_04, param0->unk_28.unk_08, param0->unk_28.unk_18);
        Text_AddPrinterWithParamsAndColor(&param0->unk_6C[2], FONT_SYSTEM, param0->unk_28.unk_08, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    sub_0201A954(&param0->unk_6C[2]);
    ov90_021D1C44(param0, 0);
}

static void ov90_021D1A48(UnkStruct_ov90_021D0ECC *param0)
{
    Strbuf *v0;
    UnkStruct_ov90_021D17F8 *v1 = &(param0->unk_BC[param0->unk_0B * 3 + param0->unk_0C]);

    v0 = sub_02014B34(&v1->unk_08, param0->unk_00);

    BGL_FillWindow(&param0->unk_6C[2], ((0 << 4) | 0));
    Text_AddPrinterWithParamsAndColor(&param0->unk_6C[2], FONT_SYSTEM, v0, 0, 4, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

static void ov90_021D1A9C(UnkStruct_ov90_021D0ECC *param0)
{
    BGL_FillWindow(&param0->unk_6C[2], ((0 << 4) | 0));
    sub_0201ACF4(&param0->unk_6C[2]);
    ov90_021D1C44(param0, 1);
}

static void ov90_021D1ABC(UnkStruct_ov90_021D0ECC *param0)
{
    sub_0201DBEC(32, param0->unk_00);

    param0->unk_29C = sub_0200C6E4(param0->unk_00);
    param0->unk_2A0 = sub_0200C704(param0->unk_29C);

    {
        UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };

        UnkStruct_ov104_022412F4 v1 = {
            1,
            2048,
            2048,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K,
        };

        sub_0200C73C(param0->unk_29C, &v0, &v1, 32);
        sub_0200C7C0(param0->unk_29C, param0->unk_2A0, 4);
        sub_0200A93C(param0->unk_00);
        sub_0200A944(param0->unk_00);
    }

    {
        UnkStruct_ov7_0224F2EC v2 = {
            "data/btower_chr.resdat",
            "data/btower_pal.resdat",
            "data/btower_cell.resdat",
            "data/btower_canm.resdat",
            NULL,
            NULL,
            "data/btower_celact.cldat"
        };

        sub_0200C8F0(param0->unk_29C, param0->unk_2A0, &v2);
    }
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov90_021D1B6C(UnkStruct_ov90_021D0ECC *param0)
{
    sub_0200C8B0(param0->unk_29C, param0->unk_2A0);
    sub_0200C8D4(param0->unk_29C);
    sub_0201DC3C();
}

static void ov90_021D1B90(UnkStruct_ov90_021D0ECC *param0)
{
    if (param0->unk_2A0 == NULL) {
        return;
    }

    sub_0200C7EC(param0->unk_2A0);
}

static void ov90_021D1BA4(void)
{
    sub_0200C800();
}

static void ov90_021D1BAC(UnkStruct_ov90_021D0ECC *param0)
{
    int v0;
    static const UnkStruct_ov7_0224F358 v1[] = {
        { 0, 54, 68, 0, 0, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0 },
        { 0, 204, 114, 0, 1, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0 },
        { 0, 128, 52, 0, 2, 3, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0 },
        { 0, 128, 132, 0, 3, 4, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0 },
    };

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_2A4[v0] = sub_0200CA08(param0->unk_29C, param0->unk_2A0, &v1[v0]);
    }

    CellActor_SetDrawFlag(param0->unk_2A4[2], 0);
    CellActor_SetDrawFlag(param0->unk_2A4[1], 0);
    CellActor_SetAnimateFlag(param0->unk_2A4[0], 1);
    CellActor_SetAnimateFlag(param0->unk_2A4[2], 1);
    CellActor_SetAnimateFlag(param0->unk_2A4[3], 1);
    CellActor_SetExplicitPriority(param0->unk_2A4[1], 3);
}

static void ov90_021D1C28(UnkStruct_ov90_021D0ECC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200C7E4(param0->unk_2A4[v0]);
    }
}

static void ov90_021D1C44(UnkStruct_ov90_021D0ECC *param0, BOOL param1)
{
    BOOL v0;

    if (param1 == 0) {
        CellActor_SetExplicitPalette(param0->unk_2A4[0], 1);
        v0 = 0;
    } else {
        CellActor_SetExplicitPalette(param0->unk_2A4[0], 0);
        v0 = 1;
    }

    CellActor_SetAnimateFlag(param0->unk_2A4[0], v0);
    CellActor_SetAnimateFlag(param0->unk_2A4[2], v0);
    CellActor_SetAnimateFlag(param0->unk_2A4[3], v0);
}

static void ov90_021D1C90(UnkStruct_ov90_021D0ECC *param0, u8 param1, u8 param2, u8 param3)
{
    u16 v0, v1;

    if (param0->unk_0E == 10 - 2) {
        CellActor_SetDrawFlag(param0->unk_2A4[1], 1);

        if (param1 == 10) {
            SpriteActor_SetAnimFrame(param0->unk_2A4[1], 1);
            CellActor_SetDrawFlag(param0->unk_2A4[0], 0);
        } else {
            SpriteActor_SetAnimFrame(param0->unk_2A4[1], 0);
            CellActor_SetDrawFlag(param0->unk_2A4[0], 1);
        }
    } else {
        CellActor_SetDrawFlag(param0->unk_2A4[0], 1);
        CellActor_SetDrawFlag(param0->unk_2A4[1], 0);
    }

    switch (param0->unk_0E) {
    case 0:
        CellActor_SetDrawFlag(param0->unk_2A4[2], 0);
        break;
    case (10 - 2):
        CellActor_SetDrawFlag(param0->unk_2A4[3], 0);
        break;
    default:
        CellActor_SetDrawFlag(param0->unk_2A4[2], 1);
        CellActor_SetDrawFlag(param0->unk_2A4[3], 1);
        break;
    }

    SpriteActor_SetPositionXY(param0->unk_2A4[0], param2 * 72 + 54, param3 * 24 + 68);
}
