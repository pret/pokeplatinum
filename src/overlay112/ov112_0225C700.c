#include "overlay112/ov112_0225C700.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_0223177C.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_02230FA0.h"
#include "overlay066/struct_ov66_02231428.h"
#include "overlay066/struct_ov66_0223177C_decl.h"
#include "overlay066/struct_ov66_02232068.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "enums.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A784.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_020393C8.h"

typedef struct {
    u32 unk_00;
} UnkStruct_ov112_0225D824;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    TextColor unk_0C;
} UnkStruct_ov112_0225D880;

typedef struct {
    void *unk_00;
    NNSG2dScreenData *unk_04;
} UnkStruct_ov112_0225CC84;

typedef struct {
    UnkStruct_ov66_02231428 unk_00;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
    u32 unk_08;
} UnkStruct_ov112_0225CDF8;

typedef struct {
    s16 unk_00;
    u16 unk_02;
} UnkStruct_ov112_0225CFD4;

typedef struct {
    u8 unk_00[4];
} UnkStruct_ov112_0225D180;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    Strbuf *unk_08;
    Window unk_0C;
    UnkStruct_ov112_0225D180 unk_1C;
} UnkStruct_ov112_0225D44C;

typedef struct {
    UnkStruct_ov112_0225D44C unk_00[3];
    Window unk_60[3];
    Strbuf *unk_90;
    void *unk_94;
    NNSG2dPaletteData *unk_98;
} UnkStruct_ov112_0225D2D0;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u32 unk_08;
} UnkStruct_ov112_0225D73C;

typedef struct {
    Window unk_00[4];
    UnkStruct_ov112_0225D73C unk_40[4];
} UnkStruct_ov112_0225D6DC;

typedef struct {
    BGL *unk_00;
    CellActorCollection *unk_04;
    UnkStruct_0200C738 unk_08;
    SpriteResourceCollection *unk_194[4];
    NARC *unk_1A4;
} UnkStruct_ov112_0225C9BC;

typedef struct {
    UnkStruct_ov66_0223177C *unk_00;
    const UnkStruct_ov66_02231428 *unk_04;
    UnkStruct_ov112_0225C9BC unk_08;
    UnkStruct_ov112_0225CC84 unk_1B0;
    UnkStruct_ov112_0225CDF8 unk_1B8;
    UnkStruct_ov112_0225CFD4 unk_1C4;
    UnkStruct_ov112_0225D2D0 unk_1C8;
    UnkStruct_ov112_0225D6DC unk_264;
} UnkStruct_ov112_0225C970;

static void ov112_0225C964(void *param0);
static void ov112_0225C970(UnkStruct_ov112_0225C970 *param0, const UnkStruct_ov66_0222DFF8 *param1);
static void ov112_0225C9BC(UnkStruct_ov112_0225C9BC *param0, u32 param1);
static void ov112_0225C9F4(UnkStruct_ov112_0225C9BC *param0);
static void ov112_0225CA14(UnkStruct_ov112_0225C9BC *param0);
static void ov112_0225CA20(UnkStruct_ov112_0225C9BC *param0);
static void ov112_0225CA34(UnkStruct_ov112_0225C9BC *param0, u32 param1);
static void ov112_0225CB60(UnkStruct_ov112_0225C9BC *param0);
static void ov112_0225CB98(UnkStruct_ov112_0225C9BC *param0, u32 param1);
static void ov112_0225CC38(UnkStruct_ov112_0225C9BC *param0);
static void ov112_0225CC64(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2);
static void ov112_0225CC84(UnkStruct_ov112_0225CC84 *param0);
static void ov112_0225CC90(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2, u8 param3, u8 param4);
static void ov112_0225CCE8(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, u8 param2, u8 param3, u32 param4, u32 param5, BOOL param6, BOOL param7, BOOL param8);
static void ov112_0225CDA8(UnkStruct_ov112_0225CDF8 *param0, UnkStruct_ov112_0225C9BC *param1, UnkStruct_ov112_0225CC84 *param2, const UnkStruct_ov66_0223177C *param3, const UnkStruct_ov66_02231428 *param4, const UnkStruct_ov66_0222DFF8 *param5, u32 param6);
static void ov112_0225CDF8(UnkStruct_ov112_0225CDF8 *param0);
static BOOL ov112_0225CDFC(UnkStruct_ov112_0225CDF8 *param0, const UnkStruct_ov66_0223177C *param1, const UnkStruct_ov66_02231428 *param2);
static void ov112_0225CE60(UnkStruct_ov112_0225CDF8 *param0, UnkStruct_ov112_0225CC84 *param1, UnkStruct_ov112_0225C9BC *param2);
static void ov112_0225CE74(UnkStruct_ov112_0225CDF8 *param0, UnkStruct_ov112_0225CC84 *param1, UnkStruct_ov112_0225C9BC *param2);
static void ov112_0225CE88(UnkStruct_ov112_0225CDF8 *param0, UnkStruct_ov112_0225CC84 *param1, UnkStruct_ov112_0225C9BC *param2);
static void ov112_0225CFC0(UnkStruct_ov112_0225CFD4 *param0, UnkStruct_ov112_0225C9BC *param1, UnkStruct_ov112_0225CC84 *param2, const UnkStruct_ov66_0223177C *param3, const UnkStruct_ov66_0222DFF8 *param4, u32 param5);
static void ov112_0225CFD4(UnkStruct_ov112_0225CFD4 *param0);
static BOOL ov112_0225CFD8(UnkStruct_ov112_0225CFD4 *param0, const UnkStruct_ov66_0223177C *param1);
static void ov112_0225D004(UnkStruct_ov112_0225CFD4 *param0, UnkStruct_ov112_0225CC84 *param1, UnkStruct_ov112_0225C9BC *param2, const UnkStruct_ov66_0223177C *param3, const UnkStruct_ov66_0222DFF8 *param4);
static void ov112_0225D08C(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, const UnkStruct_ov66_0223177C *param2, const UnkStruct_ov66_0222DFF8 *param3, u32 param4);
static void ov112_0225D144(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, const UnkStruct_ov66_0223177C *param2, const UnkStruct_ov66_0222DFF8 *param3, u32 param4);
static void ov112_0225D164(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, const UnkStruct_ov66_0223177C *param2, const UnkStruct_ov66_0222DFF8 *param3, u32 param4);
static void ov112_0225D180(UnkStruct_ov112_0225D180 *param0, const UnkStruct_ov66_0223177C *param1, int param2, const UnkStruct_ov66_0222DFF8 *param3);
static void ov112_0225D1B8(const UnkStruct_ov112_0225D180 *param0, const NNSG2dPaletteData *param1, u32 param2);
static void ov112_0225D1EC(UnkStruct_ov112_0225D2D0 *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2);
static void ov112_0225D2D0(UnkStruct_ov112_0225D2D0 *param0);
static BOOL ov112_0225D304(UnkStruct_ov112_0225D2D0 *param0, UnkStruct_ov66_0223177C *param1, const UnkStruct_ov66_0222DFF8 *param2, u32 param3);
static void ov112_0225D3E0(UnkStruct_ov112_0225D2D0 *param0);
static void ov112_0225D408(UnkStruct_ov112_0225D44C *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2, u32 param3);
static void ov112_0225D44C(UnkStruct_ov112_0225D44C *param0);
static void ov112_0225D460(UnkStruct_ov112_0225D44C *param0, const Strbuf *param1, u32 param2, const UnkStruct_ov112_0225D180 *param3, const NNSG2dPaletteData *param4);
static void ov112_0225D4DC(UnkStruct_ov112_0225D44C *param0);
static BOOL ov112_0225D4E4(UnkStruct_ov112_0225D44C *param0);
static void ov112_0225D4F8(const UnkStruct_ov112_0225D44C *param0, Window *param1);
static void ov112_0225D57C(UnkStruct_ov112_0225D6DC *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2);
static void ov112_0225D6DC(UnkStruct_ov112_0225D6DC *param0);
static void ov112_0225D700(UnkStruct_ov112_0225D6DC *param0);
static void ov112_0225D718(UnkStruct_ov112_0225D6DC *param0, u32 param1);
static void ov112_0225D73C(UnkStruct_ov112_0225D73C *param0, u16 param1, u32 param2);
static void ov112_0225D75C(UnkStruct_ov112_0225D73C *param0);
static void ov112_0225D778(UnkStruct_ov112_0225D73C *param0);
static void ov112_0225D784(UnkStruct_ov112_0225D73C *param0);

static const UnkStruct_ov22_022559F8 Unk_ov112_0225D814 = {
    0x20,
    0x18000,
    0x4000,
    0x6B
};

static const UnkStruct_02099F80 Unk_ov112_0225D858 = {
    GX_VRAM_BG_256_AB,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_128_C,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_96_EFG,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_16_I,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_NONE,
    GX_VRAM_TEXPLTT_NONE
};

static const UnkStruct_ov84_0223BA5C Unk_ov112_0225D834 = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const u32 Unk_ov112_0225D844[5] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4
};

static const UnkStruct_ov97_0222DB78 Unk_ov112_0225D8C0[5] = {
    { 0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0 },
    { 0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe000,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0x1,
        0x0,
        0x0,
        0x0 },
    { 0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xd800,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0x3,
        0x0,
        0x0,
        0x0 },
    { 0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xd000,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0x2,
        0x0,
        0x0,
        0x0 },
    { 0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0 }
};

static const u8 Unk_ov112_0225D804[3] = {
    0xF,
    0x12,
    0x15
};

static const u32 Unk_ov112_0225D808[3] = {
    0x150,
    0x120,
    0xF0
};

static const UnkStruct_ov112_0225D824 Unk_ov112_0225D824[4] = {
    { 0x1 },
    { 0x4 },
    { 0x5 },
    { 0x6 }
};

static const UnkStruct_ov112_0225D880 Unk_ov112_0225D880[4] = {
    { 0x6, 0x0, 0x14, 0x8, 0x1, 0xA, 0x50, 0x6, 0x1, TEXT_COLOR(3, 4, 0) },
    { 0x0, 0x6, 0x6, 0x3, 0xA1, 0x7, 0x10, 0x4, 0x1, TEXT_COLOR(13, 14, 0) },
    { 0xF, 0x6, 0x6, 0x5, 0xB3, 0x7, 0x18, 0x4, 0x1, TEXT_COLOR(13, 14, 0) },
    { 0x4, 0xC, 0x12, 0x3, 0xD1, 0x7, 0x4, 0x4, 0x0, TEXT_COLOR(13, 14, 0) }
};

static u16 Unk_ov112_0225D960[4] = {
    0x0,
    0x18,
    0x1A,
    0x1E
};

static u32 Unk_ov112_0225D968[4] = {
    0x0,
    0x5DD,
    0x5E4,
    0x5E3
};

int ov112_0225C700(OverlayManager *param0, int *param1)
{
    UnkStruct_ov112_0225C970 *v0;
    UnkStruct_ov66_02230FA0 *v1;

    v1 = OverlayManager_Args(param0);
    Heap_Create(3, 107, 0x50000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov112_0225C970), 107);
    memset(v0, 0, sizeof(UnkStruct_ov112_0225C970));

    v0->unk_00 = v1->unk_00;
    v0->unk_04 = v1->unk_04;

    ov112_0225C9BC(&v0->unk_08, 107);
    ov112_0225CC64(&v0->unk_1B0, &v0->unk_08, 107);
    ov112_0225CDA8(&v0->unk_1B8, &v0->unk_08, &v0->unk_1B0, v0->unk_00, v0->unk_04, v1->unk_08, 107);
    ov112_0225CFC0(&v0->unk_1C4, &v0->unk_08, &v0->unk_1B0, v0->unk_00, v1->unk_08, 107);
    ov112_0225D1EC(&v0->unk_1C8, &v0->unk_08, 107);
    ov112_0225D57C(&v0->unk_264, &v0->unk_08, 107);

    SetMainCallback(ov112_0225C964, v0);
    DisableHBlank();

    return 1;
}

int ov112_0225C7C4(OverlayManager *param0, int *param1)
{
    UnkStruct_ov112_0225C970 *v0;
    UnkStruct_ov66_02230FA0 *v1;
    BOOL v2;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    switch (*param1) {
    case 0:
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 107);
        ov66_0222E31C(v1->unk_08, 1);
        (*param1)++;
        break;
    case 1:
        v2 = ScreenWipe_Done();

        if (v2 == 1) {
            (*param1)++;
        }
        break;
    case 2:
        if ((gCoreSys.pressedKeys & PAD_BUTTON_B) || (ov66_0222E12C(v1->unk_08) == 1) || (ov66_02231760() == 1)) {
            if (ov66_0222E12C(v1->unk_08) == 1) {
                ov66_0222E2A4(v1->unk_08);
            }
            (*param1) = 3;
        } else {
            v2 = ov112_0225CDFC(&v0->unk_1B8, v0->unk_00, v0->unk_04);

            if (v2 == 1) {
                ov112_0225D718(&v0->unk_264, 1);
            }

            v2 = ov112_0225CFD8(&v0->unk_1C4, v0->unk_00);

            if (v2 == 1) {
                ov112_0225D718(&v0->unk_264, 2);
            }

            v2 = ov112_0225D304(&v0->unk_1C8, v0->unk_00, v1->unk_08, 107);

            if (v2 == 1) {
                ov112_0225D718(&v0->unk_264, 3);
            }
        }
        break;
    case 3:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 107);
        (*param1)++;
        break;
    case 4:
        v2 = ScreenWipe_Done();

        if (v2 == 1) {
            return 1;
        }
        break;
    }

    ov112_0225C970(v0, v1->unk_08);

    return 0;
}

int ov112_0225C8FC(OverlayManager *param0, int *param1)
{
    UnkStruct_ov112_0225C970 *v0;
    UnkStruct_ov66_02230FA0 *v1;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    ov112_0225D6DC(&v0->unk_264);
    ov112_0225CDF8(&v0->unk_1B8);
    ov112_0225CFD4(&v0->unk_1C4);
    ov112_0225D2D0(&v0->unk_1C8);
    ov112_0225CC84(&v0->unk_1B0);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    ov112_0225C9F4(&v0->unk_08);

    OverlayManager_FreeData(param0);
    Heap_Destroy(107);

    return 1;
}

static void ov112_0225C964(void *param0)
{
    UnkStruct_ov112_0225C970 *v0 = param0;
    ov112_0225CA20(&v0->unk_08);
}

static void ov112_0225C970(UnkStruct_ov112_0225C970 *param0, const UnkStruct_ov66_0222DFF8 *param1)
{
    ov112_0225CE60(&param0->unk_1B8, &param0->unk_1B0, &param0->unk_08);
    ov112_0225D004(&param0->unk_1C4, &param0->unk_1B0, &param0->unk_08, param0->unk_00, param1);
    ov112_0225D3E0(&param0->unk_1C8);
    ov112_0225D700(&param0->unk_264);
    ov112_0225CA14(&param0->unk_08);
}

static void ov112_0225C9BC(UnkStruct_ov112_0225C9BC *param0, u32 param1)
{
    param0->unk_1A4 = NARC_ctor(NARC_INDEX_GRAPHIC__LOBBY_NEWS, param1);

    sub_0201DBEC(48, param1);
    GXLayers_SetBanks(&Unk_ov112_0225D858);

    ov112_0225CA34(param0, param1);
    ov112_0225CB98(param0, param1);
}

static void ov112_0225C9F4(UnkStruct_ov112_0225C9BC *param0)
{
    NARC_dtor(param0->unk_1A4);
    sub_0201DC3C();

    ov112_0225CB60(param0);
    ov112_0225CC38(param0);
}

static void ov112_0225CA14(UnkStruct_ov112_0225C9BC *param0)
{
    CellActorCollection_Update(param0->unk_04);
}

static void ov112_0225CA20(UnkStruct_ov112_0225C9BC *param0)
{
    sub_0201C2B8(param0->unk_00);
    sub_0200A858();
    sub_0201DCAC();
}

static void ov112_0225CA34(UnkStruct_ov112_0225C9BC *param0, u32 param1)
{
    sub_02018368(&Unk_ov112_0225D834);

    param0->unk_00 = sub_02018340(param1);
    gCoreSys.unk_65 = 0;

    GXLayers_SwapDisplay();

    {
        int v0;

        for (v0 = 0; v0 < 5; v0++) {
            sub_020183C4(param0->unk_00, Unk_ov112_0225D844[v0], &Unk_ov112_0225D8C0[v0], 0);
            sub_02019690(Unk_ov112_0225D844[v0], 32, 0, param1);
            sub_02019EBC(param0->unk_00, Unk_ov112_0225D844[v0]);
        }
    }

    {
        sub_02007130(param0->unk_1A4, 0, 0, 0, 0, param1);
        Font_LoadScreenIndicatorsPalette(0, 10 * 32, param1);
        sub_020070E8(param0->unk_1A4, 1, param0->unk_00, 1, 0, 0, 0, param1);
        sub_0200710C(param0->unk_1A4, 3, param0->unk_00, 1, 0, 0, 0, param1);
        sub_0200710C(param0->unk_1A4, 4, param0->unk_00, 2, 0, 0, 0, param1);
    }

    {
        sub_02007130(param0->unk_1A4, 0, 4, 0, 0, param1);
        sub_020070E8(param0->unk_1A4, 2, param0->unk_00, 4, 0, 0, 0, param1);
        sub_0200710C(param0->unk_1A4, 6, param0->unk_00, 4, 0, 0, 0, param1);
    }
}

static void ov112_0225CB60(UnkStruct_ov112_0225C9BC *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < 5; v0++) {
            sub_02019044(param0->unk_00, Unk_ov112_0225D844[v0]);
        }
    }

    Heap_FreeToHeap(param0->unk_00);
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();
}

static void ov112_0225CB98(UnkStruct_ov112_0225C9BC *param0, u32 param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 126, 0, 31, 0, 126, 0, 31, param1);
    sub_0201E88C(&Unk_ov112_0225D814, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    sub_0201F834(32, param1);
    sub_0201E994();
    sub_0201F8E4();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    param0->unk_04 = sub_020095C4(32, &param0->unk_08, param1);

    sub_0200964C(&param0->unk_08, 0, (FX32_CONST(256)));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_194[v0] = SpriteResourceCollection_New(32, v0, param1);
    }

    sub_02039734();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov112_0225CC38(UnkStruct_ov112_0225C9BC *param0)
{
    int v0;

    CellActorCollection_Delete(param0->unk_04);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_194[v0]);
    }

    sub_0201E958();
    sub_0201F8B4();
    sub_0200A878();
}

static void ov112_0225CC64(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2)
{
    param0->unk_00 = sub_020071D0(param1->unk_1A4, 5, 0, &param0->unk_04, param2);
}

static void ov112_0225CC84(UnkStruct_ov112_0225CC84 *param0)
{
    Heap_FreeToHeap(param0->unk_00);
}

static void ov112_0225CC90(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2, u8 param3, u8 param4)
{
    sub_020198E8(param1->unk_00, 3, 5 + (param3 * 1), 4 + (param4 * 2), 1, 2, param0->unk_04->rawData, 6 + param2, 0, param0->unk_04->screenWidth / 8, param0->unk_04->screenHeight / 8);
    sub_0201C3C0(param1->unk_00, 3);
}

static void ov112_0225CCE8(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, u8 param2, u8 param3, u32 param4, u32 param5, BOOL param6, BOOL param7, BOOL param8)
{
    u32 v0, v1;

    v0 = param4 % 3;
    v1 = param4 / 3;

    if (param7) {
        v1 += 2;
    }

    if (param5 == 1) {
        v1++;
    }

    sub_020198E8(param1->unk_00, 3, 21 + (param2 * 2), 4 + (param3 * 2), 2, 2, param0->unk_04->rawData, 0 + (v0 * 2), 0 + (v1 * 2), param0->unk_04->screenWidth / 8, param0->unk_04->screenHeight / 8);

    if (param8) {
        sub_02019E2C(param1->unk_00, 3, 21 + (param2 * 2), 4 + (param3 * 2), 2, 2, 4);
    } else {
        if (param6) {
            sub_02019E2C(param1->unk_00, 3, 21 + (param2 * 2), 4 + (param3 * 2), 2, 2, 3);
        }
    }

    sub_0201C3C0(param1->unk_00, 3);
}

static void ov112_0225CDA8(UnkStruct_ov112_0225CDF8 *param0, UnkStruct_ov112_0225C9BC *param1, UnkStruct_ov112_0225CC84 *param2, const UnkStruct_ov66_0223177C *param3, const UnkStruct_ov66_02231428 *param4, const UnkStruct_ov66_0222DFF8 *param5, u32 param6)
{
    u32 v0;
    u32 v1;

    v0 = ov66_0222EB48(param5);
    v1 = v0 / 60;

    param0->unk_00.unk_00_val2_unk_00 = 0;
    param0->unk_00.unk_00_val2_unk_01 = v1 + 1;
    param0->unk_00.unk_00_val2_unk_02 = 0;
    param0->unk_08 = v0 / (4 * 10);
    param0->unk_04 = 1;
    param0->unk_06 = 0;
    param0->unk_05 = 0;

    ov112_0225CDFC(param0, param3, param4);
    ov112_0225CE60(param0, param2, param1);
}

static void ov112_0225CDF8(UnkStruct_ov112_0225CDF8 *param0)
{
    return;
}

static BOOL ov112_0225CDFC(UnkStruct_ov112_0225CDF8 *param0, const UnkStruct_ov66_0223177C *param1, const UnkStruct_ov66_02231428 *param2)
{
    BOOL v0;
    UnkStruct_ov66_02231428 v1;
    UnkStruct_ov66_02231428 v2;
    UnkStruct_ov66_02231428 v3;
    BOOL v4 = 0;

    v0 = ov66_02231C10(param1, &v1);

    if (v0 == 0) {
        return v4;
    }

    if (param0->unk_04 == 1) {
        param0->unk_04 = 0;
        param0->unk_05 = 1;
        v4 = 1;
    }

    ov66_022314BC(param2, &v1, &v2);
    ov66_022314BC(&v2, &param0->unk_00, &v3);

    if ((v3.unk_00_val2_unk_02 >= param0->unk_08) || (v3.unk_00_val2_unk_01 > 0) || (v3.unk_00_val2_unk_00 > 0)) {
        param0->unk_05 = 1;
        param0->unk_00 = v2;

        v4 = 1;
    }

    return v4;
}

static void ov112_0225CE60(UnkStruct_ov112_0225CDF8 *param0, UnkStruct_ov112_0225CC84 *param1, UnkStruct_ov112_0225C9BC *param2)
{
    if (param0->unk_04 == 1) {
        ov112_0225CE74(param0, param1, param2);
    } else {
        ov112_0225CE88(param0, param1, param2);
    }
}

static void ov112_0225CE74(UnkStruct_ov112_0225CDF8 *param0, UnkStruct_ov112_0225CC84 *param1, UnkStruct_ov112_0225C9BC *param2)
{
    param0->unk_06++;

    if (16 < param0->unk_06) {
        param0->unk_06 = 0;
    }
}

static void ov112_0225CE88(UnkStruct_ov112_0225CDF8 *param0, UnkStruct_ov112_0225CC84 *param1, UnkStruct_ov112_0225C9BC *param2)
{
    int v0, v1;
    u32 v2;
    u16 v3;
    s32 v4, v5;
    s32 v6;

    v2 = param0->unk_00.unk_00_val2_unk_02;
    v2 += param0->unk_00.unk_00_val2_unk_01 * 60;
    v2 += param0->unk_00.unk_00_val2_unk_00 * 3600;
    v2 /= param0->unk_08;

    if (param0->unk_05) {
        param0->unk_06 = 0;
        param0->unk_05 = 0;

        sub_02019CB8(param2->unk_00, 3, 0, 5, 4, 10 * 1, 4 * 2, 0);
        sub_0201C3C0(param2->unk_00, 3);

        for (v0 = 0; v0 < 4; v0++) {
            v5 = (4 - 1) - v0;

            for (v1 = 0; v1 < 10; v1++) {
                v4 = (10 - 1) - v1;
                v6 = ((v5 * 10) + v4);

                if (v6 >= v2) {
                    if (v6 == v2) {
                        v3 = 1;
                    } else if (v5 == (4 - 1)) {
                        v3 = 2;
                    } else {
                        v3 = 0;
                    }

                    ov112_0225CC90(param1, param2, v3, v4, v5);
                }
            }
        }
    } else {
        if (v2 < (4 * 10)) {
            u32 v7;
            u32 v8;
            u32 v9;

            param0->unk_06++;

            v7 = param0->unk_06 % 32;
            v4 = v2 % 10;
            v5 = v2 / 10;

            if (v7 == 0) {
                v9 = (param0->unk_08 * 30) / 4;
                v8 = 6;

                for (v0 = 0; v0 < 4; v0++) {
                    if (v9 * (v0 + 1) > param0->unk_06) {
                        v8 = Unk_ov112_0225D824[v0].unk_00;
                        break;
                    }
                }

                ov112_0225CC90(param1, param2, v8, v4, v5);
            } else if (v7 == (32 / 2)) {
                ov112_0225CC90(param1, param2, 3, v4, v5);
            }
        }
    }
}

static void ov112_0225CFC0(UnkStruct_ov112_0225CFD4 *param0, UnkStruct_ov112_0225C9BC *param1, UnkStruct_ov112_0225CC84 *param2, const UnkStruct_ov66_0223177C *param3, const UnkStruct_ov66_0222DFF8 *param4, u32 param5)
{
    {
        ov112_0225D08C(param2, param1, param3, param4, 0);
    }
}

static void ov112_0225CFD4(UnkStruct_ov112_0225CFD4 *param0)
{
    return;
}

static BOOL ov112_0225CFD8(UnkStruct_ov112_0225CFD4 *param0, const UnkStruct_ov66_0223177C *param1)
{
    u32 v0;
    BOOL v1 = 0;

    v0 = ov66_02231C54(param1);

    switch (v0) {
    case UnkEnum_ov66_02231E6C_00:
        break;
    case UnkEnum_ov66_02231E6C_01:
        param0->unk_02 = 1;
        v1 = 1;
        break;
    case UnkEnum_ov66_02231E6C_02:
        param0->unk_02 = 3;
        v1 = 1;
        break;
    }

    return v1;
}

static void ov112_0225D004(UnkStruct_ov112_0225CFD4 *param0, UnkStruct_ov112_0225CC84 *param1, UnkStruct_ov112_0225C9BC *param2, const UnkStruct_ov66_0223177C *param3, const UnkStruct_ov66_0222DFF8 *param4)
{
    switch (param0->unk_02) {
    case 0:
        break;
    case 1:
        param0->unk_02 = 2;
        param0->unk_00 = 0;
        break;
    case 2:
        ov112_0225D144(param1, param2, param3, param4, param0->unk_00);
        param0->unk_00++;

        if (param0->unk_00 >= 32) {
            param0->unk_02 = 0;
        }
        break;
    case 3:
        param0->unk_02 = 4;
        param0->unk_00 = 0;
        break;
    case 4:
        ov112_0225D164(param1, param2, param3, param4, param0->unk_00);
        param0->unk_00++;

        if (param0->unk_00 >= 32) {
            param0->unk_02 = 0;
        }

        break;
    }
}

static void ov112_0225D08C(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, const UnkStruct_ov66_0223177C *param2, const UnkStruct_ov66_0222DFF8 *param3, u32 param4)
{
    int v0, v1;
    u32 v2;
    BOOL v3;
    BOOL v4;
    BOOL v5;
    BOOL v6;
    BOOL v7;
    u32 v8;
    u32 v9;

    sub_02019CB8(param1->unk_00, 3, 0, 21, 4, 5 * 2, 4 * 2, 0);

    for (v0 = 0; v0 < 4; v0++) {
        for (v1 = 0; v1 < 5; v1++) {
            v8 = (v0 * 5) + v1;
            v6 = ov66_02231C18(param2, v8);

            if (v6) {
                v2 = ov66_02231C24(param2, v8);
                v3 = ov66_02231C30(param2, v8);
                v4 = ov66_02231C3C(param2, v8);
                v5 = ov66_02231C48(param2, v8);
                v7 = ov66_0222E924(param3, v8);

                if ((param4 == 2) && (v5 == 1)) {
                    v9 = 0;
                } else {
                    v9 = param4;
                }

                ov112_0225CCE8(param0, param1, v1, v0, v9, v2, v3, v4, v7);
            }
        }
    }
}

static void ov112_0225D144(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, const UnkStruct_ov66_0223177C *param2, const UnkStruct_ov66_0222DFF8 *param3, u32 param4)
{
    u32 v0;

    if ((param4 % (32 / 4)) == 0) {
        v0 = param4 / (32 / 4);

        if ((v0 % 2) == 0) {
            v0 = 2;
        } else {
            v0 = 0;
        }

        ov112_0225D08C(param0, param1, param2, param3, v0);
    }
}

static void ov112_0225D164(UnkStruct_ov112_0225CC84 *param0, UnkStruct_ov112_0225C9BC *param1, const UnkStruct_ov66_0223177C *param2, const UnkStruct_ov66_0222DFF8 *param3, u32 param4)
{
    u32 v0;

    if ((param4 % (32 / 4)) == 0) {
        v0 = param4 / (32 / 4);

        if ((v0 % 2) == 0) {
            v0 = 1;
        } else {
            v0 = 0;
        }

        ov112_0225D08C(param0, param1, param2, param3, v0);
    }
}

static void ov112_0225D180(UnkStruct_ov112_0225D180 *param0, const UnkStruct_ov66_0223177C *param1, int param2, const UnkStruct_ov66_0222DFF8 *param3)
{
    int v0;
    u32 v1;
    BOOL v2;

    for (v0 = 0; v0 < 4; v0++) {
        v1 = ov66_02231D00(param1, param2, v0);

        if (v1 != 20) {
            v2 = ov66_0222E924(param3, v1);

            if (v2 == 1) {
                param0->unk_00[v0] = 9;
            } else {
                param0->unk_00[v0] = 5;
            }
        }
    }
}

static void ov112_0225D1B8(const UnkStruct_ov112_0225D180 *param0, const NNSG2dPaletteData *param1, u32 param2)
{
    BOOL v0;
    int v1;
    const u8 *v2;

    v2 = param1->pRawData;

    for (v1 = 0; v1 < 4; v1++) {
        v0 = sub_0201DC68(NNS_GFD_DST_2D_BG_PLTT_MAIN, (param2 * 0x20) + (5 * 2) + (v1 * 0x4), (void *)(&v2[(7 * 0x20) + (param0->unk_00[v1] * 2)]), 0x4);
        GF_ASSERT(v0);
    }
}

static void ov112_0225D1EC(UnkStruct_ov112_0225D2D0 *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov112_0225D408(&param0->unk_00[v0], param1, v0, param2);

        BGL_AddWindow(param1->unk_00, &param0->unk_60[v0], 3, 1, Unk_ov112_0225D804[v0], 30, 2, 7 + v0, 0x300 + ((30 * 2) * v0));
        BGL_FillWindow(&param0->unk_60[v0], 0);
        sub_0201A9A4(&param0->unk_60[v0]);
    }

    param0->unk_90 = Strbuf_Init(256, param2);
    param0->unk_94 = sub_020071EC(param1->unk_1A4, 0, &param0->unk_98, param2);

    sub_0201972C(0, &((u8 *)param0->unk_98->pRawData)[(7 * 0x20) + (7 * 2)], 0x4, (7 * 0x20) + (13 * 2));
    sub_0201972C(0, &((u8 *)param0->unk_98->pRawData)[(7 * 0x20) + (7 * 2)], 0x4, (8 * 0x20) + (13 * 2));
    sub_0201972C(0, &((u8 *)param0->unk_98->pRawData)[(7 * 0x20) + (7 * 2)], 0x4, (9 * 0x20) + (13 * 2));
}

static void ov112_0225D2D0(UnkStruct_ov112_0225D2D0 *param0)
{
    int v0;

    Heap_FreeToHeap(param0->unk_94);
    Strbuf_Free(param0->unk_90);

    for (v0 = 0; v0 < 3; v0++) {
        BGL_DeleteWindow(&param0->unk_60[v0]);
        ov112_0225D44C(&param0->unk_00[v0]);
    }
}

static BOOL ov112_0225D304(UnkStruct_ov112_0225D2D0 *param0, UnkStruct_ov66_0223177C *param1, const UnkStruct_ov66_0222DFF8 *param2, u32 param3)
{
    int v0;
    BOOL v1;
    int v2;
    UnkStruct_ov112_0225D180 v3;
    UnkStruct_ov66_02232068 v4;

    ov66_0222E934(param2, &v4);

    for (v0 = 3 - 1; v0 >= 0; v0--) {
        if (param0->unk_00[v0].unk_00) {
            v1 = ov112_0225D4E4(&param0->unk_00[v0]);

            if (v1 == 1) {
                if ((v0 + 1) < 3) {
                    ov112_0225D460(&param0->unk_00[v0 + 1], param0->unk_00[v0].unk_08, Unk_ov112_0225D808[v0 + 1], &param0->unk_00[v0].unk_1C, param0->unk_98);
                }

                ov112_0225D4DC(&param0->unk_00[v0]);
            }
        }
    }

    if (param0->unk_00[0].unk_00 == 0) {
        while (ov66_02231C60(param1) == 1) {
            v2 = ov66_02231C78(param1);
            v1 = ov66_02231C94(param1, &v4, v2, param0->unk_90, param3);

            if (v1 == 1) {
                ov112_0225D180(&v3, param1, v2, param2);
                ov112_0225D460(&param0->unk_00[0], param0->unk_90, Unk_ov112_0225D808[0], &v3, param0->unk_98);
                ov66_02231C04(param1);
                return 1;
            }

            ov66_02231C04(param1);
        }
    }

    return 0;
}

static void ov112_0225D3E0(UnkStruct_ov112_0225D2D0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_00[v0].unk_00 == 1) {
            ov112_0225D4F8(&param0->unk_00[v0], &param0->unk_60[v0]);
        }
    }
}

static void ov112_0225D408(UnkStruct_ov112_0225D44C *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2, u32 param3)
{
    param0->unk_00 = 0;
    param0->unk_02 = 0;
    param0->unk_08 = Strbuf_Init(256, param3);
    param0->unk_01 = 7 + param2;

    BGL_AddWindow(param1->unk_00, &param0->unk_0C, 3, 0, 0, 180, 2, 7, 0);
}

static void ov112_0225D44C(UnkStruct_ov112_0225D44C *param0)
{
    Strbuf_Free(param0->unk_08);
    BGL_DeleteWindow(&param0->unk_0C);
}

static void ov112_0225D460(UnkStruct_ov112_0225D44C *param0, const Strbuf *param1, u32 param2, const UnkStruct_ov112_0225D180 *param3, const NNSG2dPaletteData *param4)
{
    Strbuf_Copy(param0->unk_08, param1);

    param0->unk_00 = 1;
    param0->unk_02 = 0;
    param0->unk_04 = param2;
    param0->unk_06 = Font_CalcStrbufWidth(FONT_MESSAGE, param1, 0);
    param0->unk_06 += 256;

    GF_ASSERT((180 * 8) >= param0->unk_06);

    BGL_FillWindow(&param0->unk_0C, 0);
    Text_AddPrinterWithParams(&param0->unk_0C, FONT_MESSAGE, param0->unk_08, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);

    param0->unk_1C = *param3;

    ov112_0225D1B8(&param0->unk_1C, param4, param0->unk_01);
}

static void ov112_0225D4DC(UnkStruct_ov112_0225D44C *param0)
{
    param0->unk_00 = 0;
}

static BOOL ov112_0225D4E4(UnkStruct_ov112_0225D44C *param0)
{
    BOOL v0 = 1;

    if ((param0->unk_02 + 1) <= param0->unk_04) {
        param0->unk_02++;
        v0 = 0;
    }

    return v0;
}

static void ov112_0225D4F8(const UnkStruct_ov112_0225D44C *param0, Window *param1)
{
    s32 v0;
    s32 v1;
    s32 v2;
    s32 v3;

    v0 = (param0->unk_02 * param0->unk_06) / param0->unk_04;

    if (v0 < 256) {
        v1 = 255 - v0;
        v2 = 0;
        v3 = v0;
    } else {
        v1 = 0;
        v2 = v0 - 256;
        v3 = (param0->unk_06 - v0);

        if (v3 > 255) {
            v3 = 255;
        }
    }

    BGL_WindowColor(param1, 0, 0, 0, 255, 2 * 8);
    sub_0201AE08(param1, param0->unk_0C.unk_0C, v2, 0, 180 * 8, 2 * 8, v1, 0, v3, 2 * 8, 15);
    sub_0201A9A4(param1);
}

static void ov112_0225D57C(UnkStruct_ov112_0225D6DC *param0, UnkStruct_ov112_0225C9BC *param1, u32 param2)
{
    int v0;
    MessageLoader *v1;
    Strbuf *v2;
    u32 v3;
    Strbuf *v4;
    u32 v5;
    u32 v6, v7;

    memset(param0, 0, sizeof(UnkStruct_ov112_0225D6DC));

    v1 = MessageLoader_Init(0, 26, 653, param2);
    v2 = Strbuf_Init(128, param2);

    for (v0 = 0; v0 < 4; v0++) {
        ov112_0225D73C(&param0->unk_40[v0], Unk_ov112_0225D960[v0], Unk_ov112_0225D968[v0]);

        BGL_AddWindow(param1->unk_00, &param0->unk_00[v0], 0, Unk_ov112_0225D880[v0].unk_00, Unk_ov112_0225D880[v0].unk_01, Unk_ov112_0225D880[v0].unk_02, Unk_ov112_0225D880[v0].unk_03, Unk_ov112_0225D880[v0].unk_06, Unk_ov112_0225D880[v0].unk_04);

        BGL_FillWindow(&param0->unk_00[v0], 0);

        MessageLoader_GetStrbuf(v1, 0 + v0, v2);

        v3 = Strbuf_NumLines(v2);
        v7 = Unk_ov112_0225D880[v0].unk_08;
        v4 = Strbuf_Init(Strbuf_Length(v2) + 1, param2);
        for (v5 = 0; v5 < v3; v5++) {
            Strbuf_CopyLineNum(v4, v2, v5);
            switch (Unk_ov112_0225D880[v0].unk_09) {
            case 0:
                v6 = Unk_ov112_0225D880[v0].unk_07;
                break;
            case 1:
                v6 = Unk_ov112_0225D880[v0].unk_07 - (Font_CalcMaxLineWidth(0, v4, 0) + 1) / 2;
                break;
            case 2:
                v6 = Unk_ov112_0225D880[v0].unk_07 - Font_CalcMaxLineWidth(0, v4, 0);
                break;
            }
            Text_AddPrinterWithParamsAndColor(&param0->unk_00[v0], FONT_SYSTEM, v4, v6, v7, TEXT_SPEED_NO_TRANSFER, Unk_ov112_0225D880[v0].unk_0C, NULL);
            v7 += 16;
        }
        Strbuf_Free(v4);

        sub_0201A9A4(&param0->unk_00[v0]);
    }
    Strbuf_Free(v2);
    MessageLoader_Free(v1);
}

static void ov112_0225D6DC(UnkStruct_ov112_0225D6DC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        BGL_DeleteWindow(&param0->unk_00[v0]);
        ov112_0225D75C(&param0->unk_40[v0]);
    }
}

static void ov112_0225D700(UnkStruct_ov112_0225D6DC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov112_0225D784(&param0->unk_40[v0]);
    }
}

static void ov112_0225D718(UnkStruct_ov112_0225D6DC *param0, u32 param1)
{
    GF_ASSERT(param1 < 4);
    GF_ASSERT(param1 != 0);

    ov112_0225D778(&param0->unk_40[param1]);
}

static void ov112_0225D73C(UnkStruct_ov112_0225D73C *param0, u16 param1, u32 param2)
{
    memset(param0, 0, sizeof(UnkStruct_ov112_0225D73C));
    param0->unk_06 = param1;
    param0->unk_08 = param2;
}

static void ov112_0225D75C(UnkStruct_ov112_0225D73C *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov112_0225D73C));
}

static void ov112_0225D778(UnkStruct_ov112_0225D73C *param0)
{
    param0->unk_00 = 1;
    param0->unk_02 = 0;
}

static void ov112_0225D784(UnkStruct_ov112_0225D73C *param0)
{
    u32 v0;
    u16 v1;

    if (param0->unk_02 > 28) {
        param0->unk_00 = 0;
    }

    if (param0->unk_00 == 0) {
        return;
    }

    if (param0->unk_02 == 0) {
        Sound_PlayEffect(param0->unk_08);
    }

    if (param0->unk_02 < 2) {
        v0 = (param0->unk_02 * 16) / 2;
    } else if (param0->unk_02 < 2 + 12) {
        v0 = 16;
    } else {
        v0 = ((param0->unk_02 - (2 + 12)) * 16) / (28 - (2 + 12));
        v0 = 16 - v0;
    }

    v1 = 0xe;

    sub_0200393C(&v1, &param0->unk_04, 1, v0, 0x19);
    DC_FlushRange(&param0->unk_04, 2);
    GX_LoadBGPltt(&param0->unk_04, param0->unk_06, 2);

    param0->unk_02++;
}
