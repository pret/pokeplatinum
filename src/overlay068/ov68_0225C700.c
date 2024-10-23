#include "overlay068/ov68_0225C700.h"

#include <dwc.h>
#include <nitro.h>
#include <ppwlobby/ppw_lobby.h>
#include <string.h>

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02030EC4_decl.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_0222E71C_decl.h"
#include "overlay066/struct_ov66_0222E908.h"
#include "overlay066/struct_ov66_02231374.h"
#include "overlay068/struct_ov68_0225DC74.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_02030EA4.h"
#include "unk_020393C8.h"

typedef struct {
    u32 unk_00;
    u32 unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    Strbuf *unk_10;
    Strbuf *unk_14[3];
} UnkStruct_ov68_0225DB8C;

typedef struct {
    Window unk_00[1];
    s32 unk_10;
    CellActor *unk_14;
    SpriteResource *unk_18[4];
    u16 unk_28;
    u16 unk_2A;
    UnkStruct_ov68_0225DB8C unk_2C;
} UnkStruct_ov68_0225D0F8;

typedef struct {
    Window unk_00[6];
    u16 unk_60;
    u16 unk_62;
    s32 unk_64;
    s32 unk_68[3];
    s32 unk_74[3];
    void *unk_80;
    NNSG2dCharacterData *unk_84;
    UnkStruct_ov68_0225DB8C unk_88;
    UnkStruct_ov68_0225DB8C unk_A8;
    UnkStruct_ov68_0225DC74 unk_C8;
    UnkStruct_ov68_0225DC74 unk_DC;
} UnkStruct_ov68_0225D388;

typedef union {
    UnkStruct_ov68_0225D0F8 val1;
    UnkStruct_ov68_0225D388 val2;
} UnkUnion_ov68_0225CCA8;

typedef struct {
    u32 unk_00;
    s32 unk_04;
    Window unk_08;
    Strbuf *unk_18;
    void *unk_1C;
    UIControlData *unk_20;
} UnkStruct_ov68_0225D128;

typedef struct {
    MessageLoader *unk_00[9];
    StringTemplate *unk_24;
    Strbuf *unk_28;
    Strbuf *unk_2C;
    UnkStruct_ov66_0222DFF8 *unk_30;
} UnkStruct_ov68_0225CB70;

typedef struct {
    BGL *unk_00;
    CellActorCollection *unk_04;
    UnkStruct_0200C738 unk_08;
    SpriteResourceCollection *unk_194[4];
    NARC *unk_1A4;
} UnkStruct_ov68_0225C91C;

typedef struct {
    UnkStruct_ov68_0225C91C unk_00;
    UnkStruct_ov68_0225CB70 unk_1A8;
    UnkUnion_ov68_0225CCA8 unk_1DC;
    UnkStruct_ov68_0225D128 unk_2CC;
} UnkStruct_ov68_0225C700;

static void ov68_0225C914(void *param0);
static void ov68_0225C91C(UnkStruct_ov68_0225C91C *param0, SaveData *param1, u32 param2);
static void ov68_0225C960(UnkStruct_ov68_0225C91C *param0);
static void ov68_0225C980(UnkStruct_ov68_0225C91C *param0);
static void ov68_0225C98C(UnkStruct_ov68_0225C91C *param0);
static void ov68_0225C9A0(UnkStruct_ov68_0225C91C *param0, Options *param1, u32 param2);
static void ov68_0225CA8C(UnkStruct_ov68_0225C91C *param0);
static void ov68_0225CAB4(UnkStruct_ov68_0225C91C *param0, u32 param1);
static void ov68_0225CB44(UnkStruct_ov68_0225C91C *param0);
static void ov68_0225CB70(UnkStruct_ov68_0225CB70 *param0, UnkStruct_ov66_0222DFF8 *param1, u32 param2);
static void ov68_0225CBC0(UnkStruct_ov68_0225CB70 *param0);
static Strbuf *ov68_0225CBEC(UnkStruct_ov68_0225CB70 *param0, u32 param1, u32 param2);
static Strbuf *ov68_0225CC18(UnkStruct_ov68_0225CB70 *param0, u32 param1);
static Strbuf *ov68_0225CC44(UnkStruct_ov68_0225CB70 *param0, u32 param1, u32 param2);
static void ov68_0225CC78(UnkStruct_ov68_0225CB70 *param0, u32 param1, u32 param2);
static void ov68_0225DB8C(UnkStruct_ov68_0225DB8C *param0, BOOL param1, u32 param2);
static void ov68_0225DC24(UnkStruct_ov68_0225DB8C *param0);
static Strbuf *ov68_0225DC40(const UnkStruct_ov68_0225DB8C *param0, UnkStruct_ov68_0225CB70 *param1);
static Strbuf *ov68_0225DC58(const UnkStruct_ov68_0225DB8C *param0, UnkStruct_ov68_0225CB70 *param1, u32 param2);
static void ov68_0225DC74(UnkStruct_ov68_0225DC74 *param0);
static u32 ov68_0225DCA4(const UnkStruct_ov68_0225DC74 *param0, u32 param1, u32 param2);
static void ov68_0225DCCC(UnkStruct_ov68_0225DC74 *param0, const UnkStruct_ov66_0222DFF8 *param1);
static void ov68_0225CCA8(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov66_02231374 *param3, u32 param4);
static BOOL ov68_0225CCB4(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov68_0225D128 *param3, UnkStruct_ov66_02231374 *param4, u32 param5);
static void ov68_0225CCC8(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2);
static void ov68_0225CCD0(UnkStruct_ov68_0225D0F8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, u32 param3);
static BOOL ov68_0225CE48(UnkStruct_ov68_0225D0F8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov68_0225D128 *param3, UnkStruct_ov66_02231374 *param4, u32 param5);
static void ov68_0225D02C(UnkStruct_ov68_0225D0F8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2);
static void ov68_0225D06C(UnkStruct_ov68_0225D0F8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2);
static void ov68_0225D0F8(UnkStruct_ov68_0225D0F8 *param0);
static void ov68_0225D11C(UnkStruct_ov68_0225D0F8 *param0);
static void ov68_0225D35C(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov66_02231374 *param3, u32 param4);
static BOOL ov68_0225D36C(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov68_0225D128 *param3, UnkStruct_ov66_02231374 *param4, u32 param5);
static void ov68_0225D380(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2);
static void ov68_0225D388(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov66_02231374 *param3, u32 param4);
static BOOL ov68_0225D478(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov68_0225D128 *param3, UnkStruct_ov66_02231374 *param4, u32 param5);
static void ov68_0225D868(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2);
static void ov68_0225D89C(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, u32 param2, TextColor param3);
static void ov68_0225D8F0(UnkStruct_ov68_0225D388 *param0, const UnkStruct_ov68_0225DB8C *param1, UnkStruct_ov68_0225CB70 *param2, UnkStruct_ov68_0225C91C *param3, const UnkStruct_ov66_0222E908 *param4, u32 param5, u32 param6, u32 param7, BOOL param8);
static void ov68_0225DA30(UnkStruct_ov68_0225D388 *param0, const UnkStruct_ov68_0225DC74 *param1, UnkStruct_ov68_0225C91C *param2, u32 param3);
static BOOL ov68_0225DA74(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225C91C *param1);
static void ov68_0225DB3C(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, u32 param3);
static void ov68_0225D128(UnkStruct_ov68_0225D128 *param0, UnkStruct_ov68_0225C91C *param1, SaveData *param2, u32 param3);
static void ov68_0225D178(UnkStruct_ov68_0225D128 *param0, u32 param1);
static void ov68_0225D1B4(UnkStruct_ov68_0225D128 *param0, const Strbuf *param1);
static void ov68_0225D218(UnkStruct_ov68_0225D128 *param0, const Strbuf *param1);
static void ov68_0225D284(UnkStruct_ov68_0225D128 *param0);
static void ov68_0225D2A0(UnkStruct_ov68_0225D128 *param0);
static BOOL ov68_0225D2B4(const UnkStruct_ov68_0225D128 *param0);
static void ov68_0225D2CC(UnkStruct_ov68_0225D128 *param0);
static void ov68_0225D304(UnkStruct_ov68_0225D128 *param0, UnkStruct_ov68_0225C91C *param1, u32 param2);
static u32 ov68_0225D330(UnkStruct_ov68_0225D128 *param0, u32 param1);
static void ov68_0225D348(UnkStruct_ov68_0225D128 *param0, u32 param1);

static const UnkStruct_ov22_022559F8 Unk_ov68_0225DD58 = {
    0x20,
    0x4000,
    0x0,
    0x7A
};

static const UnkStruct_ov61_0222C884 Unk_ov68_0225DD38 = {
    0x1,
    0x19,
    0xD,
    0x6,
    0x4,
    0x4,
    0x94
};

static const UnkStruct_ov61_0222C884 Unk_ov68_0225DD40[1] = {
    { 0x2, 0xB, 0x7, 0xF, 0x8, 0x3, 0x1 }
};

static const VecFx32 Unk_ov68_0225DD78[] = {
    { FX32_CONST(72), FX32_CONST(64), 0x0 },
    { FX32_CONST(72), FX32_CONST(88), 0x0 },
    { FX32_CONST(72), FX32_CONST(112), 0x0 }
};

static const UnkStruct_ov61_0222C884 Unk_ov68_0225DDE8[6] = {
    { 0x2, 0x7, 0x1, 0x12, 0x3, 0x3, 0x1 },
    { 0x2, 0x5, 0x5, 0xC, 0x9, 0x3, 0x37 },
    { 0x2, 0x11, 0x5, 0xB, 0x2, 0x4, 0xA3 },
    { 0x2, 0x11, 0x8, 0xB, 0x2, 0x4, 0xB9 },
    { 0x2, 0x11, 0xB, 0xB, 0x2, 0x4, 0xCF },
    { 0x2, 0x3, 0xF, 0x19, 0x2, 0x3, 0xE5 }
};

static const UnkStruct_02099F80 Unk_ov68_0225DDC0 = {
    GX_VRAM_BG_256_AB,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_128_C,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_16_G,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_NONE,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_NONE,
    GX_VRAM_TEXPLTT_NONE
};

static const UnkStruct_ov84_0223BA5C Unk_ov68_0225DD48 = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const u32 Unk_ov68_0225DD68[4] = {
    0x0,
    0x1,
    0x2,
    0x4
};

static const UnkStruct_ov97_0222DB78 Unk_ov68_0225DE18[4] = {
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x08000,
        GX_BG_EXTPLTT_01,
        0x3,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x1,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xe800,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        0x2,
        0x0,
        0x0,
        0x0,
    },
    {
        0x0,
        0x0,
        0x800,
        0x0,
        0x1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0xf800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        0x0,
        0x0,
        0x0,
        0x0,
    },
};

static void (*Unk_ov68_0225DEB0[2])(UnkUnion_ov68_0225CCA8 *, UnkStruct_ov68_0225CB70 *, UnkStruct_ov68_0225C91C *, UnkStruct_ov66_02231374 *, u32) = {
    ov68_0225CCA8,
    ov68_0225D35C
};

static BOOL (*Unk_ov68_0225DEA8[2])(UnkUnion_ov68_0225CCA8 *, UnkStruct_ov68_0225CB70 *, UnkStruct_ov68_0225C91C *, UnkStruct_ov68_0225D128 *, UnkStruct_ov66_02231374 *, u32) = {
    ov68_0225CCB4,
    ov68_0225D36C
};

static void (*Unk_ov68_0225DEA0[2])(UnkUnion_ov68_0225CCA8 *, UnkStruct_ov68_0225CB70 *, UnkStruct_ov68_0225C91C *) = {
    ov68_0225CCC8,
    ov68_0225D380
};

int ov68_0225C700(OverlayManager *param0, int *param1)
{
    UnkStruct_ov68_0225C700 *v0;
    UnkStruct_ov66_02231374 *v1;

    v1 = OverlayManager_Args(param0);

    Heap_Create(3, 122, 0x50000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov68_0225C700), 122);
    memset(v0, 0, sizeof(UnkStruct_ov68_0225C700));

    ov68_0225C91C(&v0->unk_00, v1->unk_00, 122);
    ov68_0225CB70(&v0->unk_1A8, v1->unk_04, 122);
    ov68_0225D128(&v0->unk_2CC, &v0->unk_00, v1->unk_00, 122);

    GF_ASSERT(v1->unk_08 < 2);
    Unk_ov68_0225DEB0[v1->unk_08](&v0->unk_1DC, &v0->unk_1A8, &v0->unk_00, v1, 122);

    SetMainCallback(ov68_0225C914, v0);
    DisableHBlank();

    return 1;
}

int ov68_0225C798(OverlayManager *param0, int *param1)
{
    UnkStruct_ov68_0225C700 *v0;
    UnkStruct_ov66_02231374 *v1;
    BOOL v2;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    switch (*param1) {
    case 0:
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 122);
        ov66_0222E31C(v1->unk_04, 1);
        (*param1)++;
        break;
    case 1:
        v2 = ScreenWipe_Done();

        if (v2 == 1) {
            (*param1)++;
        }
        break;
    case 2:
        if (ScreenWipe_Done() == 1) {
            if (ov66_0222E12C(v1->unk_04) == 1) {
                ov66_0222E2A4(v1->unk_04);
                (*param1)++;
                break;
            }

            if (ov66_02231760() == 1) {
                (*param1)++;
                break;
            }
        }

        v2 = Unk_ov68_0225DEA8[v1->unk_08](&v0->unk_1DC, &v0->unk_1A8, &v0->unk_00, &v0->unk_2CC, v1, 122);

        if (v2 == 1) {
            (*param1)++;
        }
        break;
    case 3:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 122);
        (*param1)++;
        break;
    case 4:
        v2 = ScreenWipe_Done();

        if (v2 == 1) {
            ov68_0225D2A0(&v0->unk_2CC);
            return 1;
        }
        break;
    }

    ov68_0225C980(&v0->unk_00);
    return 0;
}

int ov68_0225C8A8(OverlayManager *param0, int *param1)
{
    UnkStruct_ov68_0225C700 *v0;
    UnkStruct_ov66_02231374 *v1;

    v0 = OverlayManager_Data(param0);
    v1 = OverlayManager_Args(param0);

    SetMainCallback(NULL, NULL);
    DisableHBlank();

    Unk_ov68_0225DEA0[v1->unk_08](&v0->unk_1DC, &v0->unk_1A8, &v0->unk_00);

    ov68_0225D178(&v0->unk_2CC, 122);
    ov68_0225CBC0(&v0->unk_1A8);
    ov68_0225C960(&v0->unk_00);

    OverlayManager_FreeData(param0);
    Heap_Destroy(122);
    sub_020057BC(0);

    return 1;
}

static void ov68_0225C914(void *param0)
{
    UnkStruct_ov68_0225C700 *v0 = param0;
    ov68_0225C98C(&v0->unk_00);
}

static void ov68_0225C91C(UnkStruct_ov68_0225C91C *param0, SaveData *param1, u32 param2)
{
    Options *v0;

    v0 = SaveData_Options(param1);
    param0->unk_1A4 = NARC_ctor(NARC_INDEX_GRAPHIC__WIFI_LOBBY_OTHER, param2);

    sub_0201DBEC(32, param2);
    GXLayers_SetBanks(&Unk_ov68_0225DDC0);
    ov68_0225C9A0(param0, v0, param2);
    ov68_0225CAB4(param0, param2);
}

static void ov68_0225C960(UnkStruct_ov68_0225C91C *param0)
{
    NARC_dtor(param0->unk_1A4);
    sub_0201DC3C();

    ov68_0225CA8C(param0);
    ov68_0225CB44(param0);
}

static void ov68_0225C980(UnkStruct_ov68_0225C91C *param0)
{
    CellActorCollection_Update(param0->unk_04);
}

static void ov68_0225C98C(UnkStruct_ov68_0225C91C *param0)
{
    sub_0201C2B8(param0->unk_00);
    sub_0200A858();
    sub_0201DCAC();
}

static void ov68_0225C9A0(UnkStruct_ov68_0225C91C *param0, Options *param1, u32 param2)
{
    sub_02018368(&Unk_ov68_0225DD48);

    param0->unk_00 = sub_02018340(param2);
    gCoreSys.unk_65 = 0;

    GXLayers_SwapDisplay();

    {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            sub_020183C4(param0->unk_00, Unk_ov68_0225DD68[v0], &Unk_ov68_0225DE18[v0], 0);
            sub_02019690(Unk_ov68_0225DD68[v0], 32, 0, param2);
            sub_02019EBC(param0->unk_00, Unk_ov68_0225DD68[v0]);
        }
    }

    Font_LoadScreenIndicatorsPalette(0, 4 * 0x20, param2);

    {
        u8 v1 = Options_Frame(param1);
        sub_0200DD0C(param0->unk_00, 1, 1, 5, v1, param2);
    }

    sub_0200DAA4(param0->unk_00, 1, (1 + (18 + 12)), 6, 0, param2);

    {
        sub_02006E3C(169, 2, param0->unk_00, 4, 0, 0, 0, param2);
        sub_02006E60(169, 6, param0->unk_00, 4, 0, 0, 0, param2);
        sub_02006E84(169, 0, 4, 0, 0, param2);
    }
}

static void ov68_0225CA8C(UnkStruct_ov68_0225C91C *param0)
{
    {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            sub_02019044(param0->unk_00, Unk_ov68_0225DD68[v0]);
        }
    }

    Heap_FreeToHeap(param0->unk_00);
}

static void ov68_0225CAB4(UnkStruct_ov68_0225C91C *param0, u32 param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 126, 0, 31, 0, 126, 0, 31, param1);
    sub_0201E88C(&Unk_ov68_0225DD58, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    sub_0201F834(32, param1);
    sub_0201E994();
    sub_0201F8E4();
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    param0->unk_04 = sub_020095C4(32, &param0->unk_08, param1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_194[v0] = SpriteResourceCollection_New(32, v0, param1);
    }

    sub_02039734();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov68_0225CB44(UnkStruct_ov68_0225C91C *param0)
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

static void ov68_0225CB70(UnkStruct_ov68_0225CB70 *param0, UnkStruct_ov66_0222DFF8 *param1, u32 param2)
{
    int v0;
    static const v1[9] = {
        673,
        657,
        661,
        654,
        655,
        656,
        658,
        659,
        660,
    };

    param0->unk_30 = param1;

    for (v0 = 0; v0 < 9; v0++) {
        param0->unk_00[v0] = MessageLoader_Init(0, 26, v1[v0], param2);
    }

    param0->unk_24 = StringTemplate_Default(param2);
    param0->unk_28 = Strbuf_Init(256, param2);
    param0->unk_2C = Strbuf_Init(256, param2);
}

static void ov68_0225CBC0(UnkStruct_ov68_0225CB70 *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        MessageLoader_Free(param0->unk_00[v0]);
    }

    StringTemplate_Free(param0->unk_24);
    Strbuf_Free(param0->unk_28);
    Strbuf_Free(param0->unk_2C);
}

static Strbuf *ov68_0225CBEC(UnkStruct_ov68_0225CB70 *param0, u32 param1, u32 param2)
{
    GF_ASSERT(param1 < 9);

    MessageLoader_GetStrbuf(param0->unk_00[param1], param2, param0->unk_2C);
    StringTemplate_Format(param0->unk_24, param0->unk_28, param0->unk_2C);

    return param0->unk_28;
}

static Strbuf *ov68_0225CC18(UnkStruct_ov68_0225CB70 *param0, u32 param1)
{
    if (param1 >= (50 + 10)) {
        GF_ASSERT(param1 >= (50 + 10));
        param1 = 0;
    }

    if (param1 < 50) {
        return ov68_0225CBEC(param0, 1, param1);
    }

    return ov68_0225CBEC(param0, 2, param1 - 50);
}

static Strbuf *ov68_0225CC44(UnkStruct_ov68_0225CB70 *param0, u32 param1, u32 param2)
{
    if (param1 >= (50 + 10)) {
        GF_ASSERT(param1 >= (50 + 10));
        param1 = 0;
    }

    if (param1 < 50) {
        return ov68_0225CBEC(param0, 3 + param2, param1);
    }

    return ov68_0225CBEC(param0, 6 + param2, param1 - 50);
}

static void ov68_0225CC78(UnkStruct_ov68_0225CB70 *param0, u32 param1, u32 param2)
{
    TrainerInfo *v0;
    const UnkStruct_ov66_0222E71C *v1;

    v0 = TrainerInfo_New(param2);
    v1 = ov66_0222E3BC(param0->unk_30);

    ov66_0222E640(v1, v0, param2);
    StringTemplate_SetPlayerName(param0->unk_24, param1, v0);
    Heap_FreeToHeap(v0);
}

static void ov68_0225CCA8(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov66_02231374 *param3, u32 param4)
{
    ov68_0225CCD0(&param0->val1, param1, param2, param4);
}

static BOOL ov68_0225CCB4(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov68_0225D128 *param3, UnkStruct_ov66_02231374 *param4, u32 param5)
{
    return ov68_0225CE48(&param0->val1, param1, param2, param3, param4, param5);
}

static void ov68_0225CCC8(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2)
{
    ov68_0225D02C(&param0->val1, param1, param2);
}

static void ov68_0225CCD0(UnkStruct_ov68_0225D0F8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, u32 param3)
{
    {
        sub_02007130(param2->unk_1A4, 199, 0, 0, 4 * 32, param3);
        sub_020070E8(param2->unk_1A4, 200, param2->unk_00, 0, 0, 0, 0, param3);
        sub_0200710C(param2->unk_1A4, 201, param2->unk_00, 0, 0, 0, 0, param3);
    }

    {
        BOOL v0;

        param0->unk_18[0] = SpriteResourceCollection_AddTilesFrom(param2->unk_194[0], param2->unk_1A4, 205, 0, 20, NNS_G2D_VRAM_TYPE_2DMAIN, param3);
        param0->unk_18[1] = SpriteResourceCollection_AddPaletteFrom(param2->unk_194[1], param2->unk_1A4, 204, 0, 20, NNS_G2D_VRAM_TYPE_2DMAIN, 3, param3);

        v0 = sub_0200A3DC(param0->unk_18[0]);
        GF_ASSERT(v0);

        v0 = sub_0200A640(param0->unk_18[1]);
        GF_ASSERT(v0);

        SpriteResource_ReleaseData(param0->unk_18[0]);
        SpriteResource_ReleaseData(param0->unk_18[1]);

        param0->unk_18[2] = SpriteResourceCollection_AddFrom(param2->unk_194[2], param2->unk_1A4, 206, 0, 20, 2, param3);
        param0->unk_18[3] = SpriteResourceCollection_AddFrom(param2->unk_194[3], param2->unk_1A4, 207, 0, 20, 3, param3);
    }

    {
        CellActorResourceData v1;
        CellActorInitParams v2 = { 0 };

        sub_020093B4(&v1, 20, 20, 20, 20, 0xffffffff, 0xffffffff, 0, 0, param2->unk_194[0], param2->unk_194[1], param2->unk_194[2], param2->unk_194[3], NULL, NULL);

        v2.collection = param2->unk_04;
        v2.resourceData = &v1;
        v2.priority = 0;
        v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v2.heapID = param3;

        param0->unk_14 = CellActorCollection_Add(&v2);
        CellActor_SetDrawFlag(param0->unk_14, 0);
    }

    {
        int v3;

        for (v3 = 0; v3 < 1; v3++) {
            sub_0201A8D4(param2->unk_00, &param0->unk_00[v3], &Unk_ov68_0225DD40[v3]);
        }
    }

    ov68_0225DB8C(&param0->unk_2C, 1, param3);
}

static BOOL ov68_0225CE48(UnkStruct_ov68_0225D0F8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov68_0225D128 *param3, UnkStruct_ov66_02231374 *param4, u32 param5)
{
    u32 v0;
    Strbuf *v1;

    switch (param0->unk_28) {
    case 0:
        v1 = ov68_0225CBEC(param1, 0, 94);
        ov68_0225D1B4(param3, v1);
        param0->unk_2A = 1;
        param0->unk_28 = 10;
        break;
    case 1:
        ov68_0225D304(param3, param2, param5);
        param0->unk_28 = 2;
        break;
    case 2: {
        u32 v2;

        v2 = ov68_0225D330(param3, param5);

        switch (v2) {
        case 0:
            param0->unk_28 = 3;
            break;
        case 0xfffffffe:
            param0->unk_28 = 9;
            break;
        }
    } break;
    case 3:
        if (param0->unk_2C.unk_08 == 0) {
            v0 = 92;
        } else {
            v0 = 93;
        }

        v1 = ov68_0225CBEC(param1, 0, v0);
        ov68_0225D1B4(param3, v1);

        param0->unk_2A = 4;
        param0->unk_28 = 10;
        break;
    case 4:
        ov68_0225D06C(param0, param1, param2);

        v1 = ov68_0225DC40(&param0->unk_2C, param1);
        ov68_0225D218(param3, v1);
        ov68_0225D0F8(param0);
        ov68_0225D11C(param0);

        param0->unk_28 = 5;
        break;
    case 5:
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(1500);
            param0->unk_28++;
            break;
        }

        if (gCoreSys.pressedKeys & PAD_KEY_UP) {
            if ((param0->unk_10 - 1) >= 0) {
                Sound_PlayEffect(1504);
                param0->unk_10--;
            }
        } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
            if ((param0->unk_10 + 1) < 3) {
                Sound_PlayEffect(1504);
                param0->unk_10++;
            }
        }

        ov68_0225D0F8(param0);
        break;

    case 6:
        ov66_0222E5D8(param4->unk_04, param0->unk_2C.unk_04, param0->unk_10);
        ov66_022333E4(param0->unk_10);

        v1 = ov68_0225CBEC(param1, 0, 96);

        ov68_0225D218(param3, v1);
        ov68_0225D284(param3);
        Sound_PlayEffect(1381);
        param0->unk_28 = 7;
        break;
    case 7: {
        u32 v3;
        v3 = ov66_02233434();

        if (v3 != UnkEnum_ov66_02233434_01) {
            Sound_PlayEffect(1508);
            ov68_0225D2A0(param3);

            v1 = ov68_0225CBEC(param1, 0, 97);
            ov68_0225D1B4(param3, v1);

            param0->unk_2A = 8;
            param0->unk_28 = 10;
        }
    } break;
    case 8:
        if (param0->unk_2C.unk_08 == 0) {
            v0 = 98;
        } else {
            v0 = 99;
        }

        v1 = ov68_0225CBEC(param1, 0, v0);
        ov68_0225D1B4(param3, v1);
        param0->unk_2A = 9;
        param0->unk_28 = 10;
        break;
    case 9:
        ov68_0225D2CC(param3);
        return 1;
    case 10:
        if (ov68_0225D2B4(param3) == 1) {
            param0->unk_28 = param0->unk_2A;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov68_0225D02C(UnkStruct_ov68_0225D0F8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2)
{
    ov68_0225DC24(&param0->unk_2C);

    {
        int v0;

        for (v0 = 0; v0 < 1; v0++) {
            BGL_DeleteWindow(&param0->unk_00[v0]);
        }
    }

    {
        CellActor_Delete(param0->unk_14);
    }

    {
        int v1;

        sub_0200A4E4(param0->unk_18[0]);
        sub_0200A6DC(param0->unk_18[1]);

        for (v1 = 0; v1 < 4; v1++) {
            SpriteResourceCollection_Remove(param2->unk_194[v1], param0->unk_18[v1]);
        }
    }
}

static void ov68_0225D06C(UnkStruct_ov68_0225D0F8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2)
{
    Strbuf *v0;

    BGL_FillWindow(&param0->unk_00[0], 0);

    v0 = ov68_0225DC58(&param0->unk_2C, param1, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00[0], FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    v0 = ov68_0225DC58(&param0->unk_2C, param1, 1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00[0], FONT_MESSAGE, v0, 0, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    v0 = ov68_0225DC58(&param0->unk_2C, param1, 2);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00[0], FONT_MESSAGE, v0, 0, 48, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201A9A4(&param0->unk_00[0]);
}

static void ov68_0225D0F8(UnkStruct_ov68_0225D0F8 *param0)
{
    CellActor_SetDrawFlag(param0->unk_14, 1);
    CellActor_SetPosition(param0->unk_14, &Unk_ov68_0225DD78[param0->unk_10]);
}

static void ov68_0225D11C(UnkStruct_ov68_0225D0F8 *param0)
{
    CellActor_SetAnimateFlag(param0->unk_14, 1);
}

static void ov68_0225D128(UnkStruct_ov68_0225D128 *param0, UnkStruct_ov68_0225C91C *param1, SaveData *param2, u32 param3)
{
    BGL_AddWindow(param1->unk_00, &param0->unk_08, 1, 2, 19, 27, 4, 4, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_08, 15);

    param0->unk_18 = Strbuf_Init(256, param3);

    {
        Options *v0;

        v0 = SaveData_Options(param2);
        param0->unk_04 = Options_TextFrameDelay(v0);
    }
}

static void ov68_0225D178(UnkStruct_ov68_0225D128 *param0, u32 param1)
{
    if (Text_IsPrinterActive(param0->unk_00)) {
        Text_RemovePrinter(param0->unk_00);
    }

    ov68_0225D2A0(param0);

    Strbuf_Free(param0->unk_18);
    BGL_DeleteWindow(&param0->unk_08);

    ov68_0225D348(param0, param1);
}

static void ov68_0225D1B4(UnkStruct_ov68_0225D128 *param0, const Strbuf *param1)
{
    if (Text_IsPrinterActive(param0->unk_00)) {
        Text_RemovePrinter(param0->unk_00);
    }

    BGL_FillWindow(&param0->unk_08, 15);
    Strbuf_Copy(param0->unk_18, param1);
    param0->unk_00 = Text_AddPrinterWithParamsAndColor(&param0->unk_08, FONT_MESSAGE, param0->unk_18, 0, 0, param0->unk_04, TEXT_COLOR(1, 2, 15), NULL);
    sub_0200E060(&param0->unk_08, 1, 1, 5);
}

static void ov68_0225D218(UnkStruct_ov68_0225D128 *param0, const Strbuf *param1)
{
    if (Text_IsPrinterActive(param0->unk_00)) {
        Text_RemovePrinter(param0->unk_00);
    }

    BGL_FillWindow(&param0->unk_08, 15);
    Strbuf_Copy(param0->unk_18, param1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_08, FONT_MESSAGE, param0->unk_18, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    sub_0200E060(&param0->unk_08, 1, 1, 5);
    sub_0201A9A4(&param0->unk_08);
}

static void ov68_0225D284(UnkStruct_ov68_0225D128 *param0)
{
    GF_ASSERT(param0->unk_1C == NULL);
    param0->unk_1C = sub_0200E7FC(&param0->unk_08, 1);
}

static void ov68_0225D2A0(UnkStruct_ov68_0225D128 *param0)
{
    if (param0->unk_1C != NULL) {
        DeleteWaitDial(param0->unk_1C);
        param0->unk_1C = NULL;
    }
}

static BOOL ov68_0225D2B4(const UnkStruct_ov68_0225D128 *param0)
{
    if (Text_IsPrinterActive(param0->unk_00) == 0) {
        return 1;
    }

    return 0;
}

static void ov68_0225D2CC(UnkStruct_ov68_0225D128 *param0)
{
    if (Text_IsPrinterActive(param0->unk_00)) {
        Text_RemovePrinter(param0->unk_00);
    }

    ov68_0225D2A0(param0);

    sub_0200E084(&param0->unk_08, 1);
    sub_0201AD10(&param0->unk_08);
}

static void ov68_0225D304(UnkStruct_ov68_0225D128 *param0, UnkStruct_ov68_0225C91C *param1, u32 param2)
{
    GF_ASSERT(param0->unk_20 == NULL);
    param0->unk_20 = sub_02002100(param1->unk_00, &Unk_ov68_0225DD38, (1 + (18 + 12)), 6, param2);
}

static u32 ov68_0225D330(UnkStruct_ov68_0225D128 *param0, u32 param1)
{
    u32 v0;

    v0 = sub_02002114(param0->unk_20, param1);

    if (v0 != 0xffffffff) {
        param0->unk_20 = NULL;
    }

    return v0;
}

static void ov68_0225D348(UnkStruct_ov68_0225D128 *param0, u32 param1)
{
    if (param0->unk_20 != NULL) {
        sub_02002154(param0->unk_20, param1);
        param0->unk_20 = NULL;
    }
}

static void ov68_0225D35C(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov66_02231374 *param3, u32 param4)
{
    ov68_0225D388(&param0->val2, param1, param2, param3, param4);
}

static BOOL ov68_0225D36C(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov68_0225D128 *param3, UnkStruct_ov66_02231374 *param4, u32 param5)
{
    return ov68_0225D478(&param0->val2, param1, param2, param3, param4, param5);
}

static void ov68_0225D380(UnkUnion_ov68_0225CCA8 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2)
{
    ov68_0225D868(&param0->val2, param1, param2);
}

static void ov68_0225D388(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov66_02231374 *param3, u32 param4)
{
    {
        sub_02007130(param2->unk_1A4, 199, 0, 0, 4 * 32, param4);
        sub_020070E8(param2->unk_1A4, 200, param2->unk_00, 0, 0, 0, 0, param4);
        sub_0200710C(param2->unk_1A4, 202, param2->unk_00, 0, 0, 0, 0, param4);
    }

    {
        int v0;

        for (v0 = 0; v0 < 6; v0++) {
            sub_0201A8D4(param2->unk_00, &param0->unk_00[v0], &Unk_ov68_0225DDE8[v0]);
        }
    }

    ov68_0225D89C(param0, param1, 109, TEXT_COLOR(3, 4, 0));

    {
        param0->unk_80 = sub_020071B4(param2->unk_1A4, 200, 0, &param0->unk_84, param4);
    }

    {
        ov68_0225DB8C(&param0->unk_88, 1, param4);
        ov68_0225DB8C(&param0->unk_A8, 0, param4);

        if (ov66_0222F144(param3->unk_04, &param0->unk_C8) == 0) {
            ov68_0225DCCC(&param0->unk_C8, param3->unk_04);
            ov66_0222F124(param3->unk_04, &param0->unk_C8);
        }

        ov68_0225DC74(&param0->unk_DC);
    }
}

static BOOL ov68_0225D478(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, UnkStruct_ov68_0225D128 *param3, UnkStruct_ov66_02231374 *param4, u32 param5)
{
    Strbuf *v0;
    u32 v1;

    switch (param0->unk_60) {
    case 0:
        if (param0->unk_88.unk_08 == 0) {
            v1 = 103;
        } else {
            v1 = 105;
        }

        v0 = ov68_0225CBEC(param1, 0, v1);
        ov68_0225D1B4(param3, v0);
        param0->unk_62 = 1;
        param0->unk_60 = 22;
        break;
    case 1:
        v0 = ov68_0225DC40(&param0->unk_88, param1);
        ov68_0225D1B4(param3, v0);
        param0->unk_62 = 2;
        param0->unk_60 = 22;
        break;
    case 2:
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            v0 = ov68_0225CBEC(param1, 0, 104);
            ov68_0225D1B4(param3, v0);
            param0->unk_62 = 3;
            param0->unk_60 = 22;
        }
        break;
    case 3:
        if (param0->unk_88.unk_08 == 0) {
            v1 = 107;
        } else {
            v1 = 108;
        }

        v0 = ov68_0225CBEC(param1, 0, v1);
        ov68_0225D1B4(param3, v0);
        param0->unk_62 = 4;
        param0->unk_60 = 22;
        break;
    case 4: {
        UnkStruct_ov66_0222E908 v2;
        const UnkStruct_ov66_0222E71C *v3;
        BOOL v4;

        v3 = ov66_0222E3BC(param4->unk_04);
        ov66_0222E908(v3, &v2);

        v4 = ov66_0222E924(param4->unk_04, ov66_0222E338(param4->unk_04));
        ov68_0225D8F0(param0, &param0->unk_88, param1, param2, &v2, param5, TEXT_COLOR(9, 10, 0), TEXT_COLOR(13, 14, 0), v4);
        ov68_0225DA30(param0, &param0->unk_C8, param2, 1);

        Sound_PlayEffect(1472);
    }

        param0->unk_60 = 5;
        break;
    case 5: {
        BOOL v5;

        v5 = ov68_0225DA74(param0, param2);

        if (v5 == 1) {
            param0->unk_60 = 6;
        }
    } break;
    case 6:
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            if (param0->unk_A8.unk_00 != (PPW_LOBBY_INVALID_QUESTION_NO)) {
                param0->unk_60 = 7;
            } else {
                v0 = ov68_0225CBEC(param1, 0, 112);
                ov68_0225D1B4(param3, v0);
                param0->unk_62 = 20;
                param0->unk_60 = 22;
            }
        }
        break;
    case 7:
        v0 = ov68_0225CBEC(param1, 0, 111);
        ov68_0225D218(param3, v0);
        ov68_0225D304(param3, param2, param5);
        param0->unk_60 = 8;
        break;
    case 8: {
        u32 v6;

        v6 = ov68_0225D330(param3, param5);

        switch (v6) {
        case 0:
            param0->unk_60 = 9;
            break;
        case 0xfffffffe:
            param0->unk_60 = 20;
            break;
        }
    } break;
    case 9:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, param5);
        param0->unk_60 = 10;
        break;
    case 10:
        if (ScreenWipe_Done() == 1) {
            ov68_0225DB3C(param0, param1, param2, param5);
            param0->unk_60 = 11;
        }
        break;
    case 11:
        sub_0200F174(0, 1, 1, 0x0, 6, 1, param5);
        param0->unk_60 = 12;
        break;
    case 12:
        if (ScreenWipe_Done() == 1) {
            param0->unk_60 = 13;
        }
        break;
    case 13:
        if (param0->unk_A8.unk_08 == 0) {
            v1 = 113;
        } else {
            v1 = 115;
        }

        v0 = ov68_0225CBEC(param1, 0, v1);
        ov68_0225D1B4(param3, v0);
        param0->unk_62 = 14;
        param0->unk_60 = 22;
        break;
    case 14:
        v0 = ov68_0225DC40(&param0->unk_A8, param1);
        ov68_0225D1B4(param3, v0);
        param0->unk_62 = 15;
        param0->unk_60 = 22;
        break;
    case 15:
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            v0 = ov68_0225CBEC(param1, 0, 114);
            ov68_0225D1B4(param3, v0);
            param0->unk_62 = 16;
            param0->unk_60 = 22;
        }
        break;
    case 16:
        if (param0->unk_A8.unk_08 == 0) {
            v1 = 117;
        } else {
            v1 = 118;
        }

        v0 = ov68_0225CBEC(param1, 0, v1);
        ov68_0225D1B4(param3, v0);
        param0->unk_62 = 17;
        param0->unk_60 = 22;
        break;
    case 17: {
        UnkStruct_ov66_0222E908 v7;
        UnkStruct_02030EC4 *v8;
        BOOL v9;

        v8 = sub_02030EC4(param4->unk_00);
        v7.unk_00 = sub_02030ED0(v8);
        v7.unk_04 = sub_02030ED4(v8);
        v9 = ov66_0222E924(param4->unk_04, ov66_0222E338(param4->unk_04));

        ov68_0225D8F0(param0, &param0->unk_A8, param1, param2, &v7, param5, TEXT_COLOR(11, 12, 0), TEXT_COLOR(15, 14, 0), v9);
        ov68_0225DA30(param0, &param0->unk_DC, param2, 2);
        Sound_PlayEffect(1472);
    }
        param0->unk_60 = 18;
        break;
    case 18: {
        BOOL v10;

        v10 = ov68_0225DA74(param0, param2);

        if (v10 == 1) {
            param0->unk_60 = 19;
        }
    } break;
    case 19:
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            param0->unk_60 = 20;
        }
        break;
    case 20:
        v0 = ov68_0225CBEC(param1, 0, 120);
        ov68_0225D1B4(param3, v0);
        param0->unk_62 = 21;
        param0->unk_60 = 22;
        break;
    case 21:
        ov68_0225D2CC(param3);
        return 1;
    case 22:
        if (ov68_0225D2B4(param3) == 1) {
            param0->unk_60 = param0->unk_62;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov68_0225D868(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2)
{
    {
        ov68_0225DC24(&param0->unk_88);
        ov68_0225DC24(&param0->unk_A8);
    }

    Heap_FreeToHeap(param0->unk_80);
    param0->unk_80 = NULL;

    {
        int v0;

        for (v0 = 0; v0 < 6; v0++) {
            BGL_DeleteWindow(&param0->unk_00[v0]);
        }
    }
}

static void ov68_0225D89C(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, u32 param2, TextColor param3)
{
    Strbuf *v0;
    u32 v1;
    s32 v2;

    BGL_FillWindow(&param0->unk_00[0], 0);

    v0 = ov68_0225CBEC(param1, 0, param2);
    v1 = Font_CalcStrbufWidth(FONT_MESSAGE, v0, 0);
    v2 = ((18 * 8) - v1) / 2;

    Text_AddPrinterWithParamsAndColor(&param0->unk_00[0], FONT_MESSAGE, v0, v2, 4, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    sub_0201A9A4(&param0->unk_00[0]);
}

static void ov68_0225D8F0(UnkStruct_ov68_0225D388 *param0, const UnkStruct_ov68_0225DB8C *param1, UnkStruct_ov68_0225CB70 *param2, UnkStruct_ov68_0225C91C *param3, const UnkStruct_ov66_0222E908 *param4, u32 param5, u32 param6, u32 param7, BOOL param8)
{
    Strbuf *v0;

    BGL_FillWindow(&param0->unk_00[1], 0);
    BGL_FillWindow(&param0->unk_00[5], 0);

    v0 = ov68_0225DC58(param1, param2, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00[1], FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, param6, NULL);

    v0 = ov68_0225DC58(param1, param2, 1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00[1], FONT_MESSAGE, v0, 0, 24, TEXT_SPEED_NO_TRANSFER, param6, NULL);

    v0 = ov68_0225DC58(param1, param2, 2);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00[1], FONT_MESSAGE, v0, 0, 48, TEXT_SPEED_NO_TRANSFER, param6, NULL);

    if ((param4->unk_00 == param1->unk_04) && (param4->unk_04 < 3)) {
        s32 v1;
        s32 v2;
        TextColor v3;

        if (param8 == 1) {
            v3 = param7;
        } else {
            v3 = param6;
        }

        ov68_0225CC78(param2, 0, param5);

        v0 = ov68_0225CBEC(param2, 0, 110);
        v1 = Font_CalcStrbufWidth(FONT_MESSAGE, v0, 0);
        v2 = (((12 * 8) - v1) / 2);

        Text_AddPrinterWithParamsAndColor(&param0->unk_00[5], FONT_MESSAGE, v0, v2, 0, TEXT_SPEED_NO_TRANSFER, v3, NULL);

        v0 = ov68_0225DC58(param1, param2, param4->unk_04);
        v1 = Font_CalcStrbufWidth(FONT_MESSAGE, v0, 0);
        v2 = (((13 * 8) - v1) / 2);

        Text_AddPrinterWithParamsAndColor(&param0->unk_00[5], FONT_MESSAGE, v0, (12 * 8) + v2, 0, TEXT_SPEED_NO_TRANSFER, param6, NULL);
    }

    sub_0201A9A4(&param0->unk_00[5]);
    sub_0201A9A4(&param0->unk_00[1]);
}

static void ov68_0225DA30(UnkStruct_ov68_0225D388 *param0, const UnkStruct_ov68_0225DC74 *param1, UnkStruct_ov68_0225C91C *param2, u32 param3)
{
    int v0;

    param0->unk_64 = 0;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_68[v0] = 0;
        param0->unk_74[v0] = ov68_0225DCA4(param1, v0, 80);

        sub_0201C2B4(&param0->unk_00[2 + v0], param3);
        BGL_FillWindow(&param0->unk_00[2 + v0], 0);
    }
}

static BOOL ov68_0225DA74(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225C91C *param1)
{
    s32 v0;
    s32 v1;
    s32 v2;
    int v3, v4;
    int v5;

    if (param0->unk_64 >= 20) {
        return 1;
    }

    param0->unk_64++;

    v0 = (param0->unk_64 * 80) / 20;
    v5 = 0;

    for (v3 = 0; v3 < 3; v3++) {
        if (param0->unk_68[v3] == param0->unk_74[v3]) {
            v5++;
            continue;
        }

        if (param0->unk_74[v3] >= v0) {
            v2 = v0 - param0->unk_68[v3];
            v1 = param0->unk_68[v3];
            param0->unk_68[v3] = v0;
        } else {
            v2 = param0->unk_74[v3] - param0->unk_68[v3];
            v1 = param0->unk_68[v3];
            param0->unk_68[v3] = param0->unk_74[v3];
        }

        for (v4 = 0; v4 < v2; v4++) {
            sub_0201ADDC(&param0->unk_00[2 + v3], param0->unk_84->pRawData, 247, 16, 256, 32, 4 + v1 + v4, 0, 1, 16);
        }

        sub_0201A9A4(&param0->unk_00[2 + v3]);
    }

    if (v5 == 3) {
        return 1;
    }

    return 0;
}

static void ov68_0225DB3C(UnkStruct_ov68_0225D388 *param0, UnkStruct_ov68_0225CB70 *param1, UnkStruct_ov68_0225C91C *param2, u32 param3)
{
    {
        sub_0200710C(param2->unk_1A4, 203, param2->unk_00, 0, 0, 0, 0, param3);
    }

    {
        int v0;

        for (v0 = 0; v0 < 6; v0++) {
            BGL_FillWindow(&param0->unk_00[v0], 0);
            sub_0201A954(&param0->unk_00[v0]);
        }
    }

    ov68_0225D89C(param0, param1, 119, TEXT_COLOR(5, 6, 0));
}

static void ov68_0225DB8C(UnkStruct_ov68_0225DB8C *param0, BOOL param1, u32 param2)
{
    u32 v0;
    u32 v1;
    u16 *v2;
    int v3;

    param0->unk_10 = Strbuf_Init(256, param2);

    for (v3 = 0; v3 < 3; v3++) {
        param0->unk_14[v3] = Strbuf_Init(256, param2);
    }

    if (param1 == 1) {
        v0 = UnkEnum_ov66_02233454_00;
        v1 = UnkEnum_ov66_02233538_00;
    } else {
        v0 = UnkEnum_ov66_02233454_04;
        v1 = UnkEnum_ov66_02233538_04;
    }

    param0->unk_08 = ov66_02233454(v0 + UnkEnum_ov66_02233454_02);
    param0->unk_00 = ov66_02233454(v0 + UnkEnum_ov66_02233454_01);
    param0->unk_04 = ov66_02233454(v0 + UnkEnum_ov66_02233454_00);
    param0->unk_0C = ov66_02233454(v0 + UnkEnum_ov66_02233454_03);

    if (param0->unk_0C == 1) {
        v2 = ov66_02233538(v1 + UnkEnum_ov66_02233538_00);
        GF_ASSERT(v2);
        Strbuf_CopyChars(param0->unk_10, v2);

        for (v3 = 0; v3 < 3; v3++) {
            v2 = ov66_02233538(v1 + UnkEnum_ov66_02233538_01 + v3);
            GF_ASSERT(v2);
            Strbuf_CopyChars(param0->unk_14[v3], v2);
        }
    }
}

static void ov68_0225DC24(UnkStruct_ov68_0225DB8C *param0)
{
    int v0;

    Strbuf_Free(param0->unk_10);

    for (v0 = 0; v0 < 3; v0++) {
        Strbuf_Free(param0->unk_14[v0]);
    }
}

static Strbuf *ov68_0225DC40(const UnkStruct_ov68_0225DB8C *param0, UnkStruct_ov68_0225CB70 *param1)
{
    if (param0->unk_0C == 0) {
        return ov68_0225CC18(param1, param0->unk_00);
    }

    return param0->unk_10;
}

static Strbuf *ov68_0225DC58(const UnkStruct_ov68_0225DB8C *param0, UnkStruct_ov68_0225CB70 *param1, u32 param2)
{
    if (param0->unk_0C == 0) {
        return ov68_0225CC44(param1, param0->unk_00, param2);
    }

    return param0->unk_14[param2];
}

static void ov68_0225DC74(UnkStruct_ov68_0225DC74 *param0)
{
    int v0;

    param0->unk_0C = 0;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_00[v0] = ov66_02233454(UnkEnum_ov66_02233454_08 + v0);
        param0->unk_0C += param0->unk_00[v0];
    }
}

static u32 ov68_0225DCA4(const UnkStruct_ov68_0225DC74 *param0, u32 param1, u32 param2)
{
    u64 v0, v1;

    GF_ASSERT(param1 < 3);

    v0 = param2;
    v1 = param0->unk_00[param1];

    return (u32)(((u64)(v0 * v1)) / param0->unk_0C);
}

static void ov68_0225DCCC(UnkStruct_ov68_0225DC74 *param0, const UnkStruct_ov66_0222DFF8 *param1)
{
    const UnkStruct_ov66_0222E71C *v0;
    UnkStruct_ov66_0222E908 v1;
    int v2;
    u32 v3;
    BOOL v4;

    memset(param0, 0, sizeof(UnkStruct_ov68_0225DC74));

    for (v2 = 0; v2 < 20; v2++) {
        v0 = ov66_0222E374(param1, v2);

        if (v0 != NULL) {
            v3 = ov66_0222E850(v0);
            ov66_0222E908(v0, &v1);
            v4 = ov66_022335C0(UnkEnum_ov66_022335C0_00, v3);

            if ((v4 == 1) && (v1.unk_04 < 3)) {
                param0->unk_00[v1.unk_04]++;
                param0->unk_0C++;
            }
        }
    }
}
