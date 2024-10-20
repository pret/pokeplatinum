#include "overlay087/ov87_021D106C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_02013610.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay087/struct_ov87_021D0D80_decl.h"
#include "overlay087/struct_ov87_021D12C0.h"
#include "overlay087/struct_ov87_021D1640.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "enums.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02017728.h"
#include "unk_02018340.h"

typedef struct UnkStruct_ov87_021D106C_t {
    UnkStruct_ov87_021D0D80 *unk_00;
    const UnkStruct_ov87_021D12C0 *unk_04;
    int unk_08;
    int unk_0C;
    BGL *unk_10;
    Window unk_14[2];
    CellActorCollection *unk_34;
    UnkStruct_0200C738 unk_38;
    CellActor *unk_1C4[6];
    void *unk_1DC;
    void *unk_1E0;
    MessageLoader *unk_1E4;
    MessageLoader *unk_1E8;
    MessageLoader *unk_1EC;
    StringTemplate *unk_1F0;
    Strbuf *unk_1F4;
    Strbuf *unk_1F8;
    Pokemon *unk_1FC;
    u8 unk_200[3200];
} UnkStruct_ov87_021D106C;

static void ov87_021D11AC(void *param0);
static BOOL ov87_021D1210(UnkStruct_ov87_021D106C *param0, int *param1);
static BOOL ov87_021D1260(UnkStruct_ov87_021D106C *param0, int *param1);
static BOOL ov87_021D12C0(UnkStruct_ov87_021D106C *param0, int *param1);
static BOOL ov87_021D1334(UnkStruct_ov87_021D106C *param0, int *param1);
static BOOL ov87_021D1384(UnkStruct_ov87_021D106C *param0, int *param1);
static void ov87_021D139C(UnkStruct_ov87_021D106C *param0);
static void ov87_021D14B8(UnkStruct_ov87_021D106C *param0);
static u32 ov87_021D14D4(UnkStruct_ov87_021D106C *param0, u32 param1);
static void ov87_021D1540(UnkStruct_ov87_021D106C *param0);
static void ov87_021D1558(UnkStruct_ov87_021D106C *param0);
static void ov87_021D1568(UnkStruct_ov87_021D106C *param0);
static void ov87_021D1590(UnkStruct_ov87_021D106C *param0);
static void ov87_021D1640(UnkStruct_ov87_021D106C *param0);
static void ov87_021D1818(UnkStruct_ov87_021D106C *param0);
static void ov87_021D186C(UnkStruct_ov87_021D106C *param0);
static void ov87_021D18A0(UnkStruct_ov87_021D106C *param0, NNSG2dCellDataBank *param1, NNSG2dAnimBankData *param2);
static void ov87_021D1970(UnkStruct_ov87_021D106C *param0);
static void ov87_021D1AB8(UnkStruct_ov87_021D106C *param0);

static BOOL (*Unk_ov87_021D1BA0[])(UnkStruct_ov87_021D106C *, int *) = {
    ov87_021D1210,
    ov87_021D1260,
    ov87_021D12C0,
    ov87_021D1334,
    ov87_021D1384,
};

UnkStruct_ov87_021D106C *ov87_021D106C(UnkStruct_ov87_021D0D80 *param0, const UnkStruct_ov87_021D12C0 *param1)
{
    UnkStruct_ov87_021D106C *v0 = Heap_AllocFromHeap(61, sizeof(UnkStruct_ov87_021D106C));

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_04 = param1;
        v0->unk_10 = sub_02018340(61);

        NNS_G2dInitOamManagerModule();
        sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 61);

        v0->unk_34 = sub_020095C4(64, &v0->unk_38, 61);
        v0->unk_1E4 = MessageLoader_Init(0, 26, 352, 61);
        v0->unk_1E8 = MessageLoader_Init(1, 26, 412, 61);
        v0->unk_1EC = MessageLoader_Init(1, 26, 647, 61);
        v0->unk_1F0 = StringTemplate_Default(61);
        v0->unk_1F4 = Strbuf_Init(256, 61);
        v0->unk_1F8 = Strbuf_Init(256, 61);
        v0->unk_1FC = Pokemon_New(61);

        SetMainCallback(ov87_021D11AC, v0);
    }

    return v0;
}

void ov87_021D1140(UnkStruct_ov87_021D106C *param0)
{
    if (param0) {
        SetMainCallback(NULL, NULL);
        Heap_FreeToHeap(param0->unk_1FC);
        Strbuf_Free(param0->unk_1F8);
        Strbuf_Free(param0->unk_1F4);
        StringTemplate_Free(param0->unk_1F0);
        MessageLoader_Free(param0->unk_1EC);
        MessageLoader_Free(param0->unk_1E8);
        MessageLoader_Free(param0->unk_1E4);
        CellActorCollection_Delete(param0->unk_34);
        sub_0200A878();
        Heap_FreeToHeap(param0->unk_10);
        Heap_FreeToHeap(param0);
    }
}

static void ov87_021D11AC(void *param0)
{
    UnkStruct_ov87_021D106C *v0 = param0;

    CellActorCollection_Update(v0->unk_34);
    sub_0200A858();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

BOOL ov87_021D11D0(UnkStruct_ov87_021D106C *param0, int param1)
{
    param0->unk_0C = param1;
    param0->unk_08 = 0;
    return Unk_ov87_021D1BA0[param1](param0, &(param0->unk_08)) == 0;
}

BOOL ov87_021D11F8(UnkStruct_ov87_021D106C *param0)
{
    return Unk_ov87_021D1BA0[param0->unk_0C](param0, &(param0->unk_08));
}

static BOOL ov87_021D1210(UnkStruct_ov87_021D106C *param0, int *param1)
{
    switch (*param1) {
    case 0:
        ov87_021D139C(param0);
        ov87_021D1818(param0);
        sub_0200F174(3, 1, 1, 0x0, 6, 1, 61);
        (*param1)++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov87_021D1260(UnkStruct_ov87_021D106C *param0, int *param1)
{
    switch (*param1) {
    case 0:
        Sound_PlayEffect(1550);
        sub_0200F174(3, 0, 0, 0x0, 6, 1, 61);
        (*param1)++;
        break;
    case 1:
        if (ScreenWipe_Done()) {
            ov87_021D186C(param0);
            ov87_021D14B8(param0);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov87_021D12C0(UnkStruct_ov87_021D106C *param0, int *param1)
{
    const UnkStruct_ov87_021D12C0 *v0;
    int v1;

    v0 = param0->unk_04;

    for (v1 = 0; v1 < v0->unk_14; v1++) {
        if (v1 == v0->unk_18) {
            CellActor_SetExplicitOAMMode(param0->unk_1C4[v1], GX_OAM_MODE_NORMAL);
            CellActor_SetPriority(param0->unk_1C4[v1], 0);
            Sound_FlagDefaultChatotCry(1);

            sub_02005844(v0->unk_20[v1].unk_10, v0->unk_20[v1].unk_13);
        } else {
            CellActor_SetExplicitOAMMode(param0->unk_1C4[v1], GX_OAM_MODE_XLU);
            CellActor_SetPriority(param0->unk_1C4[v1], v1 + 1);
        }
    }

    ov87_021D1640(param0);

    return 1;
}

static BOOL ov87_021D1334(UnkStruct_ov87_021D106C *param0, int *param1)
{
    switch (*param1) {
    case 0:
        ov87_021D1568(param0);
        (*param1)++;
        break;
    case 1:
        ov87_021D1AB8(param0);
        (*param1)++;
        break;
    case 2:
        ov87_021D1970(param0);
        (*param1)++;
        break;
    case 3:
        ov87_021D1558(param0);
        return 1;
    }

    return 0;
}

static BOOL ov87_021D1384(UnkStruct_ov87_021D106C *param0, int *param1)
{
    Sound_PlayEffect(1500);
    ov87_021D1640(param0);
    return 1;
}

static void ov87_021D139C(UnkStruct_ov87_021D106C *param0)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };
    static const UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D,
    };
    static const UnkStruct_ov97_0222DB78 v2 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0,
        1,
        0,
        0
    };
    static const UnkStruct_ov97_0222DB78 v3 = {
        0,
        0,
        0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x04000,
        GX_BG_EXTPLTT_01,
        0,
        2,
        0,
        0
    };
    u32 v4;

    GXLayers_SetBanks(&v0);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    sub_02018368(&v1);
    sub_020183C4(param0->unk_10, 1, &v2, 0);
    sub_020183C4(param0->unk_10, 2, &v3, 0);
    sub_02006E3C(101, 1, param0->unk_10, 2, 0, 0, 1, 61);
    sub_02006E60(101, 0, param0->unk_10, 2, 0, 0, 1, 61);
    sub_02006E84(101, 2, 0, 0, 0x40, 61);
    sub_020196C0(param0->unk_10, 1, 0x0, 1, 0);
    sub_02019CB8(param0->unk_10, 1, 0x0, 0, 0, 32, 32, 0);

    v4 = ov87_021D14D4(param0, 1);

    ov87_021D1558(param0);
    sub_0200DAA4(param0->unk_10, 1, v4, 2, 0, 61);
    Window_Show(&(param0->unk_14[0]), 0, v4, 2);
    Window_Show(&(param0->unk_14[1]), 0, v4, 2);
    sub_02019448(param0->unk_10, 1);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1, 8, 8);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov87_021D14B8(UnkStruct_ov87_021D106C *param0)
{
    sub_02019044(param0->unk_10, 1);
    sub_02019044(param0->unk_10, 2);
    ov87_021D1540(param0);
}

static u32 ov87_021D14D4(UnkStruct_ov87_021D106C *param0, u32 param1)
{
    BGL_AddWindow(param0->unk_10, &(param0->unk_14[0]), 1, 1, 1, 30, 2, 0, param1);

    param1 += (30 * 2);

    BGL_AddWindow(param0->unk_10, &(param0->unk_14[1]), 1, 1, 19, 30, 4, 0, param1);

    param1 += (30 * 4);

    sub_0201A9F4(&(param0->unk_14[0]));
    sub_0201A9F4(&(param0->unk_14[1]));

    return param1;
}

static void ov87_021D1540(UnkStruct_ov87_021D106C *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        BGL_DeleteWindow(&(param0->unk_14[v0]));
    }
}

static void ov87_021D1558(UnkStruct_ov87_021D106C *param0)
{
    ov87_021D1590(param0);
    ov87_021D1640(param0);
}

static void ov87_021D1568(UnkStruct_ov87_021D106C *param0)
{
    BGL_FillWindow(&(param0->unk_14[0]), 15);
    BGL_FillWindow(&(param0->unk_14[1]), 15);
    sub_0201ACCC(&(param0->unk_14[0]));
    sub_0201ACCC(&(param0->unk_14[1]));
}

static void ov87_021D1590(UnkStruct_ov87_021D106C *param0)
{
    const UnkStruct_ov87_021D12C0 *v0 = param0->unk_04;
    Window *v1 = &(param0->unk_14[0]);

    StringTemplate_SetNumber(param0->unk_1F0, 0, v0->unk_00, 4, 0, 1);
    StringTemplate_SetNumber(param0->unk_1F0, 1, v0->unk_04.year + 2000, 4, 0, 1);
    StringTemplate_SetMonthName(param0->unk_1F0, 2, v0->unk_04.month);
    StringTemplate_SetNumber(param0->unk_1F0, 3, v0->unk_04.day, 2, 0, 1);
    MessageLoader_GetStrbuf(param0->unk_1E4, 0, param0->unk_1F4);
    StringTemplate_Format(param0->unk_1F0, param0->unk_1F8, param0->unk_1F4);
    BGL_FillWindow(v1, 15);
    Text_AddPrinterWithParams(v1, FONT_SYSTEM, param0->unk_1F8, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    sub_0201ACCC(v1);
}

static void ov87_021D1640(UnkStruct_ov87_021D106C *param0)
{
    const UnkStruct_ov87_021D12C0 *v0 = param0->unk_04;
    const UnkStruct_ov87_021D1640 *v1 = &(v0->unk_20[v0->unk_18]);
    Window *v2 = &(param0->unk_14[1]);

    BGL_FillWindow(v2, 15);

    switch (v0->unk_1C) {
    case UnkEnum_ov87_021D12C0_0:
        Text_AddPrinterWithParams(v2, FONT_SYSTEM, v1->unk_00, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_GetStrbuf(param0->unk_1E4, 5, param0->unk_1F4);
        Text_AddPrinterWithParams(v2, FONT_SYSTEM, param0->unk_1F4, 72, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_GetStrbuf(param0->unk_1E8, v1->unk_10, param0->unk_1F4);
        Text_AddPrinterWithParams(v2, FONT_SYSTEM, param0->unk_1F4, 94, 0, TEXT_SPEED_NO_TRANSFER, NULL);

        switch (Pokemon_GetGenderOf(v1->unk_10, v1->unk_08)) {
        case 0:
            MessageLoader_GetStrbuf(param0->unk_1E4, 3, param0->unk_1F4);
            break;
        case 1:
            MessageLoader_GetStrbuf(param0->unk_1E4, 4, param0->unk_1F4);
            break;
        default:
            Strbuf_Clear(param0->unk_1F4);
            break;
        }

        Text_AddPrinterWithParams(v2, FONT_SYSTEM, param0->unk_1F4, 174, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_GetStrbuf(param0->unk_1E4, 1, param0->unk_1F4);
        StringTemplate_SetNumber(param0->unk_1F0, 0, v1->unk_12, 4, 1, 1);
        StringTemplate_Format(param0->unk_1F0, param0->unk_1F8, param0->unk_1F4);
        Text_AddPrinterWithParams(v2, FONT_SYSTEM, param0->unk_1F8, 194, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_GetStrbuf(param0->unk_1E4, 2, param0->unk_1F4);
        Text_AddPrinterWithParams(v2, FONT_SYSTEM, param0->unk_1F4, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);
        Text_AddPrinterWithParams(v2, FONT_SYSTEM, v1->unk_04, Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_1F4, 0), 16, TEXT_SPEED_NO_TRANSFER, NULL);
        break;
    case UnkEnum_ov87_021D12C0_1: {
        int v3;

        for (v3 = 0; v3 < 4; v3++) {
            if (v1->unk_14[v3]) {
                MessageLoader_GetStrbuf(param0->unk_1EC, v1->unk_14[v3], param0->unk_1F4);
                Text_AddPrinterWithParams(v2, FONT_SYSTEM, param0->unk_1F4, (v3 & 1) * 96, (v3 / 2) * 16, TEXT_SPEED_NO_TRANSFER, NULL);
            } else {
                break;
            }
        }
    } break;
    }

    sub_0201ACCC(v2);
}

static void ov87_021D1818(UnkStruct_ov87_021D106C *param0)
{
    NNSG2dCellDataBank *v0;
    NNSG2dAnimBankData *v1;
    int v2;

    param0->unk_1DC = sub_02006FA0(27, 77, 0, &v0, 61);
    param0->unk_1E0 = sub_02006FBC(27, 78, 0, &v1, 61);

    MI_CpuClearFast(param0->unk_200, sizeof(param0->unk_200));

    ov87_021D18A0(param0, v0, v1);
    ov87_021D1970(param0);
}

static void ov87_021D186C(UnkStruct_ov87_021D106C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_1C4[v0]) {
            CellActor_Delete(param0->unk_1C4[v0]);
        }
    }

    Heap_FreeToHeap(param0->unk_1DC);
    Heap_FreeToHeap(param0->unk_1E0);
}

static void ov87_021D18A0(UnkStruct_ov87_021D106C *param0, NNSG2dCellDataBank *param1, NNSG2dAnimBankData *param2)
{
    static const struct {
        int x;
        int y;
    } v0[] = {
        { 120, 56 },
        { 40, 56 },
        { 200, 56 },
        { 136, 112 },
        { 216, 112 },
        { 56, 112 },
    };
    CellActorResourceData v1;
    CellActorInitParams v2;
    NNSG2dImageProxy v3;
    NNSG2dImagePaletteProxy v4;
    NNSG2dCharacterData *v5;
    NNSG2dPaletteData *v6;
    void *v7;
    void *v8;
    int v9;

    v1.charData = NULL;
    v1.multiCellBank = NULL;
    v1.multiCellAnimBank = NULL;
    v1.isVRamTransfer = 0;
    v1.cellBank = param1;
    v1.cellAnimBank = param2;
    v1.priority = 0;
    v1.imageProxy = &v3;
    v1.paletteProxy = &v4;
    v2.collection = param0->unk_34;
    v2.resourceData = &v1;
    v2.position.z = 0;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.heapID = 61;

    v7 = sub_02006F50(27, 76, 0, &v5, 61);
    v8 = sub_02006F88(27, 75, &v6, 61);

    for (v9 = 0; v9 < 6; v9++) {
        NNS_G2dInitImageProxy(&v3);
        NNS_G2dInitImagePaletteProxy(&v4);
        NNS_G2dLoadImage1DMapping(v5, v9 * 3200, NNS_G2D_VRAM_TYPE_2DMAIN, &v3);
        NNS_G2dLoadPalette(v6, v9 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v4);

        v2.position.x = v0[v9].x << FX32_SHIFT;
        v2.position.y = v0[v9].y << FX32_SHIFT;
        v2.priority = v9 + 1;

        param0->unk_1C4[v9] = CellActorCollection_Add(&v2);
        CellActor_SetDrawFlag(param0->unk_1C4[v9], 0);
    }

    Heap_FreeToHeap(v8);
    Heap_FreeToHeap(v7);
}

static void ov87_021D1970(UnkStruct_ov87_021D106C *param0)
{
    static const UnkStruct_02013610 v0 = {
        0,
        0,
        10,
        10,
    };
    ArchivedSprite v1;
    const UnkStruct_ov87_021D12C0 *v2;
    int v3;

    v2 = param0->unk_04;

    for (v3 = 0; v3 < v2->unk_14; v3++) {
        Pokemon_InitWith(param0->unk_1FC, v2->unk_20[v3].unk_10, v2->unk_20[v3].unk_12, 32, 1, v2->unk_20[v3].unk_08, 1, v2->unk_20[v3].unk_0C);
        Pokemon_SetValue(param0->unk_1FC, 112, (void *)(&(v2->unk_20[v3].unk_13)));
        Pokemon_BuildArchivedSprite(&v1, param0->unk_1FC, 2);
        sub_02013720(v1.archive, v1.character, 61, &v0, param0->unk_200, v2->unk_20[v3].unk_08, 0, 2, v2->unk_20[v3].unk_10);

        DC_FlushRange(param0->unk_200, sizeof(param0->unk_200));
        GX_LoadOBJ(param0->unk_200, 3200 * v3, 3200);

        sub_02006E84(v1.archive, v1.palette, 1, v3 * 0x20, 0x20, 61);

        if (v3 == v2->unk_18) {
            Sound_FlagDefaultChatotCry(1);
            sub_02005844(v2->unk_20[v3].unk_10, v2->unk_20[v3].unk_13);
            CellActor_SetExplicitOAMMode(param0->unk_1C4[v3], GX_OAM_MODE_NORMAL);
        } else {
            CellActor_SetExplicitOAMMode(param0->unk_1C4[v3], GX_OAM_MODE_XLU);
        }

        CellActor_SetDrawFlag(param0->unk_1C4[v3], 1);
    }

    for (; v3 < 6; v3++) {
        CellActor_SetDrawFlag(param0->unk_1C4[v3], 0);
    }
}

static void ov87_021D1AB8(UnkStruct_ov87_021D106C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        CellActor_SetDrawFlag(param0->unk_1C4[v0], 0);
    }
}
