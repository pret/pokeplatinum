#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "core_sys.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "strbuf.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017294.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay066/struct_ov66_0223127C.h"
#include "overlay066/struct_ov66_02232B20.h"
#include "overlay066/struct_ov66_022589B4.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"
#include "overlay113/struct_ov113_0225CA04.h"
#include "overlay113/struct_ov113_0225EB20.h"
#include "overlay113/struct_ov113_022607EC.h"
#include "overlay113/struct_ov113_02260818.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_020067E8.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02015920.h"
#include "unk_020170BC.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201DBEC.h"
#include "unk_0201E190.h"
#include "unk_0201E3D8.h"
#include "unk_0201E86C.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "unk_020393C8.h"
#include "pokemon.h"
#include "party.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay113/ov113_0225C700.h"
#include "overlay113/ov113_0225E368.h"
#include "overlay113/ov113_02260620.h"
#include "overlay113/ov113_022607D8.h"

typedef struct {
    UnkStruct_020170F4 unk_00;
    UnkStruct_02017294 unk_10;
} UnkStruct_ov113_0225DBCC_sub1;

typedef struct {
    FontOAM * unk_00;
    SpriteManagerAllocation unk_04;
    u16 unk_10;
} UnkStruct_ov113_0225E250;

typedef struct UnkStruct_ov113_0225DBCC_t {
    UnkStruct_ov66_0223127C * unk_00;
    SaveData * unk_04;
    BGL * unk_08;
    PaletteSys * unk_0C;
    UnkStruct_02012744 * unk_10;
    GenericPointerData * unk_14;
    SysTask * unk_18;
    CellTransferStateData * unk_1C;
    AnimationResourceCollection * unk_20;
    UnkStruct_02015920 * unk_24;
    u8 unk_28;
    u8 unk_29;
    UnkStruct_0200B358 * unk_2C;
    MessageLoader * unk_30;
    Window unk_34[8];
    Window unk_B4;
    Strbuf* unk_C4;
    u8 unk_C8;
    UnkStruct_020203AC * unk_CC;
    fx32 unk_D0;
    fx32 unk_D4;
    UnkStruct_ov113_0225DBCC_sub1 unk_D8;
    NARC * unk_160;
    NARC * unk_164;
    UnkStruct_ov113_022607EC unk_168;
    s32 unk_170[8];
    int unk_190;
    UnkStruct_ov113_0225EB20 unk_194;
    UnkStruct_ov113_02260818 unk_8D8[6];
    u8 unk_920;
    u8 unk_921;
    CellActorData * unk_924[6];
    CellActorData * unk_93C[6];
    CellActorData * unk_954[6];
    CellActorData * unk_96C;
    CellActorData * unk_970[8];
    CellActorData * unk_990[3];
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

static void ov113_0225CEF0(SysTask * param0, void * param1);
static void ov113_0225CF18(void * param0);
static void ov113_0225CF58(BGL * param0);
static void ov113_0225D12C(BGL * param0);
static void ov113_0225D160(UnkStruct_ov113_0225DBCC * param0, NARC * param1);
static void ov113_0225DBCC(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225DC4C(UnkStruct_ov113_0225DBCC * param0);
static GenericPointerData * ov113_0225DC6C(int param0);
static void ov113_0225DC88(void);
static void ov113_0225DD0C(GenericPointerData * param0);
static void ov113_0225D9FC(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225DA9C(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225DAA8(UnkStruct_ov113_0225DBCC * param0, NARC * param1);
static void ov113_0225DAFC(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225DB08(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225E364(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225DD14(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225DD24(UnkStruct_ov113_0225DBCC * param0, UnkStruct_ov113_0225CA04 * param1);
static void ov113_0225DD4C(int param0, SaveData * param1, UnkStruct_ov113_02260818 * param2);
static void ov113_0225D304(UnkStruct_ov113_0225DBCC * param0, NARC * param1);
static void ov113_0225D630(UnkStruct_ov113_0225DBCC * param0, NARC * param1);
static void ov113_0225D484(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225D5D8(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225D6F8(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225D7A4(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225D7CC(UnkStruct_ov113_0225DBCC * param0);
static BOOL ov113_0225D938(int param0, int param1, CellActorData * param2, NARC * param3, NARC * param4, NNS_G2D_VRAM_TYPE param5, BOOL param6);
static void ov113_0225E068(UnkStruct_ov113_0225DBCC * param0, int param1);
static void ov113_0225E0D4(UnkStruct_ov113_0225DBCC * param0, int param1);
static void ov113_0225E118(UnkStruct_ov113_0225DBCC * param0);
static int ov113_0225DE98(UnkStruct_ov113_0225DBCC * param0);
static void ov113_0225E15C(UnkStruct_ov113_0225DBCC * param0, UnkStruct_ov113_0225E250 * param1, const Strbuf *param2, int param3, u32 param4, int param5, int param6, int param7, int param8, int param9);
static void ov113_0225E250(UnkStruct_ov113_0225E250 * param0);
static void ov113_0225E264(const Strbuf *param0, int param1, int * param2, int * param3);
static void ov113_0225E294(UnkStruct_ov113_0225DBCC * param0);
static BOOL ov113_0225E318(UnkStruct_ov113_0225DBCC * param0, int param1);

static const UnkStruct_ov115_0226527C Unk_ov113_022608B4 = {
    0x0,
    0x0,
    0x0
};

static const UnkStruct_ov104_0224133C Unk_ov113_02260954 = {
    0x0,
    0x80,
    0x0,
    0x20,
    0x0,
    0x80,
    0x0,
    0x20
};

static const UnkStruct_ov104_022412F4 Unk_ov113_022608E8 = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_128K,
    GX_OBJVRAMMODE_CHAR_1D_32K
};

static const UnkStruct_ov104_02241308 Unk_ov113_022608FC = {
    0x60,
    0x20,
    0x40,
    0x40,
    0x8,
    0x8
};

__attribute__((aligned(4))) static const u8 Unk_ov113_022608C8[][2] = {
    {0x7, 0x5},
    {0x16, 0x5},
    {0x7, 0xA},
    {0x16, 0xA},
    {0x7, 0xF},
    {0x16, 0xF},
    {0x7, 0x14},
    {0x16, 0x14}
};

__attribute__((aligned(4))) static const s16 Unk_ov113_02260934[][2] = {
    {0x20, 0x30},
    {0x98, 0x30},
    {0x20, 0x58},
    {0x98, 0x58},
    {0x20, 0x80},
    {0x98, 0x80},
    {0x20, 0xA8},
    {0x98, 0xA8}
};

__attribute__((aligned(4))) static const s16 Unk_ov113_02260914[][2] = {
    {0x48, 0x30},
    {0xC0, 0x30},
    {0x48, 0x58},
    {0xC0, 0x58},
    {0x48, 0x80},
    {0xC0, 0x80},
    {0x48, 0xA8},
    {0xC0, 0xA8}
};

__attribute__((aligned(4))) static const u16 Unk_ov113_02260AD4[][4] = {
    {0x2, 0x4, 0xE, 0x4},
    {0x11, 0x4, 0xE, 0x4},
    {0x2, 0x9, 0xE, 0x4},
    {0x11, 0x9, 0xE, 0x4},
    {0x2, 0xE, 0xE, 0x4},
    {0x11, 0xE, 0xE, 0x4},
    {0x2, 0x13, 0xE, 0x4},
    {0x11, 0x13, 0xE, 0x4}
};

static const u16 Unk_ov113_022608AC[] = {
    0x15,
    0x35,
    0x35,
    0x55
};

static const UnkStruct_ov104_0223F9E0 Unk_ov113_02260A04 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x35,
    0x1,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x2717, 0x2711, 0x2712, 0x2712, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov113_02260A38 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x36,
    0x2,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x2717, 0x2711, 0x2712, 0x2712, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov113_02260A6C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x34,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x2711, 0x2712, 0x2711, 0x2711, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov113_02260AA0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x32,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x2718, 0x2711, 0x2713, 0x2713, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov113_0226099C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x32,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {0x2719, 0x2714, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov113_022609D0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x33,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {0x271A, 0x2714, 0x2715, 0x2715, 0xFFFFFFFF, 0xFFFFFFFF},
    0x1,
    0x0
};

int ov113_0225C700 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov113_0225DBCC * v0;

    sub_02017798(NULL, NULL);
    sub_020177A4();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(3, 118, 0x50000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov113_0225DBCC), 118);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov113_0225DBCC));

    v0->unk_00 = sub_02006840(param0);
    v0->unk_04 = ov66_0222E0C4(v0->unk_00->unk_00);
    v0->unk_19E0 = ov66_0222E0C8(v0->unk_00->unk_00);

    ov113_0225DD14(v0);
    ov113_0225DD4C(v0->unk_00->unk_04, v0->unk_04, v0->unk_8D8);

    v0->unk_19D4 = (32 << 8);
    v0->unk_19D8 = v0->unk_19D4;
    v0->unk_14 = ov113_0225DC6C(118);
    v0->unk_0C = sub_02002F38(118);

    sub_02003858(v0->unk_0C, 1);
    sub_02002F70(v0->unk_0C, 0, 0x200, 118);
    sub_02002F70(v0->unk_0C, 1, 0x200, 118);
    sub_02002F70(v0->unk_0C, 2, 0x200 - 0x40, 118);
    sub_02002F70(v0->unk_0C, 3, 0x200, 118);
    sub_02003858(v0->unk_0C, 1);

    v0->unk_08 = sub_02018340(118);

    sub_0201DBEC(64, 118);
    SetAutorepeat(4, 8);

    ov113_0225CF58(v0->unk_08);

    sub_0201E3D8();
    sub_0201E450(4);
    sub_02002BB8(2, 118);

    v0->unk_2C = sub_0200B358(118);
    v0->unk_30 = MessageLoader_Init(0, 26, 650, 118);
    v0->unk_10 = sub_02012744(4, 118);
    v0->unk_160 = NARC_ctor(NARC_INDEX_GRAPHIC__FOOTPRINT_BOARD, 118);
    v0->unk_164 = NARC_ctor(NARC_INDEX_POKETOOL__POKEFOOT__POKEFOOT, 118);

    ov113_0225D160(v0, v0->unk_160);
    ov113_0225DAA8(v0, v0->unk_160);
    ov113_0225D9FC(v0);
    ov113_0225DBCC(v0);

    v0->unk_C4 = Strbuf_Init(256, 118);
    v0->unk_1C = sub_0200C6E4(118);

    sub_0200C73C(v0->unk_1C, &Unk_ov113_02260954, &Unk_ov113_022608E8, (16 + 16));
    sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);

    v0->unk_20 = sub_0200C704(v0->unk_1C);

    sub_0200C7C0(v0->unk_1C, v0->unk_20, (64 + 64));
    sub_0200CB30(v0->unk_1C, v0->unk_20, &Unk_ov113_022608FC);
    sub_0200964C(sub_0200C738(v0->unk_1C), 0, ((192 + 80) << FX32_SHIFT));
    sub_02039734();

    ov113_0225E368(&v0->unk_194, v0->unk_19E0);
    ov113_0225D304(v0, v0->unk_160);
    ov113_0225D630(v0, v0->unk_160);
    ov113_0225D484(v0);
    ov113_0225D6F8(v0);
    ov113_0225D7CC(v0);

    v0->unk_24 = sub_02015920(118);

    sub_0200F174(0, 1, 1, 0x0, 6, 1, 118);

    if (v0->unk_00->unk_00 != NULL) {
        ov66_0222E31C(v0->unk_00->unk_00, 1);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);

    gCoreSys.unk_65 = 1;

    GXLayers_SwapDisplay();
    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    sub_02002AC8(1);
    sub_02002AE4(0);
    sub_02002B20(0);

    v0->unk_18 = SysTask_Start(ov113_0225CEF0, v0, 60000);

    sub_02017798(ov113_0225CF18, v0);

    return 1;
}

int ov113_0225CA04 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov113_0225DBCC * v0 = sub_0200682C(param0);

    ov113_0225E3F0(&v0->unk_194, v0->unk_CC, v0->unk_9BC, v0->unk_00->unk_04);

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
        if (ScreenWipe_Done() == 1) {
            v0->unk_9BC = 1;
            (*param1)++;
        }
        break;
    case 2:
        if (gCoreSys.touchPressed && (gCoreSys.touchY < 160)) {
            if (ov113_0225E318(v0, ((32 << 8) / 6)) == 1) {
                v0->unk_8D8[v0->unk_920].unk_09 = gCoreSys.touchX;
                v0->unk_8D8[v0->unk_920].unk_0A = gCoreSys.touchY;

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
                Sound_PlayEffect(1509);
                sub_020039B0(v0->unk_0C, 0, (0 * 16 + 9), 1, 8, 0x0);
                sub_020039B0(v0->unk_0C, 2, v0->unk_921 * 16, 16, 8, 0x0);
                *param1 = 3;
            }
        }
        break;
    case 3:
        BGL_FillWindow(&v0->unk_B4, 0xf);
        sub_0200E060(&v0->unk_B4, 0, 1, 14);
        MessageLoader_GetStrbuf(v0->unk_30, 2, v0->unk_C4);
        v0->unk_C8 = sub_0201D738(&v0->unk_B4, 1, v0->unk_C4, 0, 0, sub_02027AC0(sub_02025E44(v0->unk_04)), NULL);
        (*param1)++;
        break;
    case 4:
        if (Message_Printing(v0->unk_C8) == 0) {
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
        sub_02003070(v0->unk_0C, 0, 11 * 16, 0x20 * 2);
        {
            u32 v4 = sub_020159FC(v0->unk_24);

            switch (v4) {
            case 1:
                sub_02015A54(v0->unk_24);
                v0->unk_28 = 0;
                sub_0200E084(&v0->unk_B4, 0);
                v0->unk_168.unk_00 = 0;
                v0->unk_9BC = 3;
                *param1 = 9;
                break;
            case 2:
                sub_02015A54(v0->unk_24);
                v0->unk_28 = 0;
                sub_0200E084(&v0->unk_B4, 0);
                sub_020039B0(v0->unk_0C, 0, (0 * 16 + 9), 1, 0, 0x0);
                sub_020039B0(v0->unk_0C, 2, v0->unk_921 * 16, 16, 0, 0x0);
                *param1 = 2;
                break;
            }
        }
        break;
    case 6:
        BGL_FillWindow(&v0->unk_B4, 0xf);
        sub_0200E060(&v0->unk_B4, 0, 1, 14);
        MessageLoader_GetStrbuf(v0->unk_30, 3, v0->unk_C4);
        v0->unk_C8 = sub_0201D738(&v0->unk_B4, 1, v0->unk_C4, 0, 0, sub_02027AC0(sub_02025E44(v0->unk_04)), NULL);
        (*param1)++;
        break;
    case 7:
        if (Message_Printing(v0->unk_C8) == 0) {
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
        if (ScreenWipe_Done() == 0) {
            sub_0200F2C0();
        }

        sub_0200F174(0, 0, 0, 0x0, 6, 1, 118);
        (*param1)++;
        break;
    case 10:
        if (ScreenWipe_Done() == 1) {
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
                Sound_PlayEffect(1521);
                ov66_0222E2A4(v0->unk_00->unk_00);
                (*param1) = 6;
            }
        }
    }

    ov113_0225E364(v0);

    return 0;
}

int ov113_0225CDFC (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov113_0225DBCC * v0 = sub_0200682C(param0);

    SysTask_Done(v0->unk_18);
    ov113_0225D5D8(v0);
    ov113_0225D7A4(v0);
    sub_02015938(v0->unk_24);
    ov113_0225E378(&v0->unk_194);

    Strbuf_Free(v0->unk_C4);
    sub_02002C60(2);
    sub_020127BC(v0->unk_10);
    MessageLoader_Free(v0->unk_30);
    sub_0200B3F0(v0->unk_2C);

    ov113_0225DC4C(v0);
    ov113_0225D12C(v0->unk_08);

    Heap_FreeToHeap(v0->unk_08);
    sub_0200D0B0(v0->unk_1C, v0->unk_20);
    sub_0200C8D4(v0->unk_1C);
    sub_02002FA0(v0->unk_0C, 0);
    sub_02002FA0(v0->unk_0C, 1);
    sub_02002FA0(v0->unk_0C, 2);
    sub_02002FA0(v0->unk_0C, 3);
    sub_02002F54(v0->unk_0C);

    ov113_0225DAFC(v0);
    ov113_0225DA9C(v0);
    ov113_0225DD0C(v0->unk_14);

    NARC_dtor(v0->unk_160);
    NARC_dtor(v0->unk_164);
    sub_02017798(NULL, NULL);
    sub_020177A4();
    sub_0201DC3C();
    sub_0201E530();
    sub_02002AC8(0);
    sub_02002AE4(0);
    sub_02002B20(0);
    sub_02039794();
    sub_02006830(param0);
    Heap_Destroy(118);

    return 1;
}

static void ov113_0225CEF0 (SysTask * param0, void * param1)
{
    UnkStruct_ov113_0225DBCC * v0 = param1;

    ov113_0225E4E8(&v0->unk_194);
    ov113_0225DB08(v0);

    sub_0200C7EC(v0->unk_20);
    sub_0200C808();
    sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

static void ov113_0225CF18 (void * param0)
{
    UnkStruct_ov113_0225DBCC * v0 = param0;

    ov113_0225E65C(&v0->unk_194, v0->unk_9BC);

    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_0C);
    sub_0201C2B8(v0->unk_08);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov113_0225CF58 (BGL * param0)
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
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
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
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0800,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0
            },
        };

        sub_020183C4(param0, 1, &v2[0], 0);
        sub_02019EBC(param0, 1);
        sub_02019184(param0, 1, 0, 0);
        sub_02019184(param0, 1, 3, 0);

        sub_020183C4(param0, 2, &v2[1], 0);
        sub_02019EBC(param0, 2);
        sub_02019184(param0, 2, 0, 0);
        sub_02019184(param0, 2, 3, 0);

        sub_020183C4(param0, 3, &v2[2], 0);
        sub_02019EBC(param0, 3);
        sub_02019184(param0, 3, 0, 0);
        sub_02019184(param0, 3, 3, 0);

        G2_SetBG0Priority(2);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
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
                GX_BG_SCRBASE_0x7000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x7800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x6800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0
            },
        };

        sub_020183C4(param0, 5, &v3[0], 0);
        sub_02019EBC(param0, 5);
        sub_02019184(param0, 5, 0, 0);
        sub_02019184(param0, 5, 3, 0);

        sub_020183C4(param0, 6, &v3[1], 0);
        sub_02019EBC(param0, 6);
        sub_02019184(param0, 6, 0, 0);
        sub_02019184(param0, 6, 3, 0);

        sub_020183C4(param0, 7, &v3[2], 0);
        sub_02019EBC(param0, 7);
        sub_02019184(param0, 7, 0, 0);
        sub_02019184(param0, 7, 3, 0);
    }

    sub_02019690(5, 32, 0, 118);
}

static void ov113_0225D12C (BGL * param0)
{
    sub_02019044(param0, 6);
    sub_02019044(param0, 5);
    sub_02019044(param0, 7);
    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
}

static void ov113_0225D160 (UnkStruct_ov113_0225DBCC * param0, NARC * param1)
{
    BGL * v0 = param0->unk_08;
    u16 * v1;

    PaletteSys_LoadPalette(param0->unk_0C, 187, 19, 118, 0, 0x200 - 0x40, 0);
    sub_020070E8(param1, 18, param0->unk_08, 2, 0, 0, 0, 118);
    sub_0200710C(param1, 17, param0->unk_08, 2, 0, 0, 0, 118);
    sub_0200710C(param1, 20, param0->unk_08, 3, 0, 0, 0, 118);
    PaletteSys_LoadPalette(param0->unk_0C, 187, 23, 118, 1, 0, 0);

    if (param0->unk_00->unk_04 == 0) {
        sub_02003120(param0->unk_0C, 1, 16 * 1, 1, 16 * 0, 0x20);
    }

    sub_020070E8(param1, 22, param0->unk_08, 6, 0, 0, 0, 118);
    sub_0200710C(param1, 21, param0->unk_08, 6, 0, 0, 0, 118);
    sub_0200710C(param1, 24, param0->unk_08, 7, 0, 0, 0, 118);

    v1 = sub_02019FE4(param0->unk_08, 6);

    MI_CpuCopy16(v1, param0->unk_9C0, 0x800);
    MI_CpuClear16(v1, 0x800);

    {
        int v2;
        v2 = sub_02027B50(sub_02025E44(param0->unk_04));

        PaletteSys_LoadPalette(param0->unk_0C, 38, sub_0200DD08(v2), 118, 0, 0x20, 14 * 16);
        sub_0200DD0C(param0->unk_08, 1, 1, 14, v2, 118);
        PaletteSys_LoadPalette(param0->unk_0C, 14, 6, 118, 0, 0x20, 13 * 16);

        if (param0->unk_00->unk_04 == 0) {
            PaletteSys_LoadPalette(param0->unk_0C, 14, 6, 118, 1, 0x20, 13 * 16);
        } else {
            PaletteSys_LoadPalette(param0->unk_0C, 187, 25, 118, 1, 0x20, 13 * 16);
        }
    }

    sub_0201C3C0(param0->unk_08, 6);
}

static void ov113_0225D304 (UnkStruct_ov113_0225DBCC * param0, NARC * param1)
{
    int v0, v1;
    u16 v2;

    sub_0200CDC4(param0->unk_0C, 2, param0->unk_1C, param0->unk_20, param1, 3, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
    sub_0200CC3C(param0->unk_1C, param0->unk_20, param1, 4, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10007);
    sub_0200CE24(param0->unk_1C, param0->unk_20, param1, 5, 0, 10002);
    sub_0200CE54(param0->unk_1C, param0->unk_20, param1, 6, 0, 10002);

    for (v0 = 0; v0 < 6; v0++) {
        sub_0200CC3C(param0->unk_1C, param0->unk_20, param1, 16, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10001 + v0);
    }

    sub_0200CE24(param0->unk_1C, param0->unk_20, param1, 15, 0, 10001);
    sub_0200CE54(param0->unk_1C, param0->unk_20, param1, 14, 0, 10001);

    v1 = sub_0200CDC4(param0->unk_0C, 2, param0->unk_1C, param0->unk_20, param1, 3, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);

    if (param0->unk_00->unk_04 == 0) {
        v2 = 0x0;
    } else {
        v2 = 0x7fff;
    }

    sub_020038B0(param0->unk_0C, 2, 2, v2, v1 * 16, v1 * 16 + 16);
    sub_0200CC3C(param0->unk_1C, param0->unk_20, param1, 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10008);
    sub_0200CE24(param0->unk_1C, param0->unk_20, param1, 1, 0, 10003);
    sub_0200CE54(param0->unk_1C, param0->unk_20, param1, 0, 0, 10003);

    param0->unk_921 = sub_0200CD7C(param0->unk_0C, 2, param0->unk_1C, param0->unk_20, 187, 26, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10003);
}

static void ov113_0225D484 (UnkStruct_ov113_0225DBCC * param0)
{
    int v0;
    UnkStruct_ov104_0223F9E0 v1;

    v1 = Unk_ov113_02260A04;

    for (v0 = 0; v0 < 6; v0++) {
        v1.unk_00 = 16 + 32 * v0;
        v1.unk_02 = 176;

        param0->unk_924[v0] = sub_0200CE6C(param0->unk_1C, param0->unk_20, &v1);

        sub_0200D364(param0->unk_924[v0], v0);
        sub_0200D324(param0->unk_924[v0]->unk_00);
    }

    v1 = Unk_ov113_02260A38;

    for (v0 = 0; v0 < 6; v0++) {
        v1.unk_00 = 16 + 32 * v0;
        v1.unk_02 = 176;

        param0->unk_93C[v0] = sub_0200CE6C(param0->unk_1C, param0->unk_20, &v1);

        sub_0200D364(param0->unk_93C[v0], v0);
        sub_0200D324(param0->unk_93C[v0]->unk_00);
    }

    v1 = Unk_ov113_02260A6C;

    for (v0 = 0; v0 < 6; v0++) {
        v1.unk_00 = 16 + 32 * v0;
        v1.unk_02 = 176;
        v1.unk_14[0] = 10001 + v0;

        param0->unk_954[v0] = sub_0200CE6C(param0->unk_1C, param0->unk_20, &v1);
        sub_0200D324(param0->unk_954[v0]->unk_00);
    }

    {
        Strbuf* v2;

        v2 = MessageLoader_GetNewStrbuf(param0->unk_30, 1);
        ov113_0225E15C(param0, &param0->unk_19C0, v2, 2, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((3 & 0xff) << 0)), 0, 10003, 0x1c * 8, 176, 1);
        sub_020129D0(param0->unk_19C0.unk_00, 1);
        Strbuf_Free(v2);
    }
}

static void ov113_0225D5D8 (UnkStruct_ov113_0225DBCC * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        sub_0200D0F4(param0->unk_924[v0]);
    }

    for (v0 = 0; v0 < 6; v0++) {
        sub_0200D0F4(param0->unk_93C[v0]);
    }

    for (v0 = 0; v0 < 6; v0++) {
        sub_0200D0F4(param0->unk_954[v0]);
    }

    ov113_0225E250(&param0->unk_19C0);
}

static void ov113_0225D630 (UnkStruct_ov113_0225DBCC * param0, NARC * param1)
{
    int v0;

    sub_0200CDC4(param0->unk_0C, 3, param0->unk_1C, param0->unk_20, param1, 10, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    sub_0200CC3C(param0->unk_1C, param0->unk_20, param1, 9, 0, NNS_G2D_VRAM_TYPE_2DSUB, 10009);
    sub_0200CE24(param0->unk_1C, param0->unk_20, param1, 8, 0, 10004);
    sub_0200CE54(param0->unk_1C, param0->unk_20, param1, 7, 0, 10004);

    for (v0 = 0; v0 < 8; v0++) {
        sub_0200CC3C(param0->unk_1C, param0->unk_20, param1, 13, 0, NNS_G2D_VRAM_TYPE_2DSUB, 10010 + v0);
    }

    sub_0200CE24(param0->unk_1C, param0->unk_20, param1, 12, 0, 10005);
    sub_0200CE54(param0->unk_1C, param0->unk_20, param1, 11, 0, 10005);
}

static void ov113_0225D6F8 (UnkStruct_ov113_0225DBCC * param0)
{
    int v0;
    UnkStruct_ov104_0223F9E0 v1;

    param0->unk_96C = sub_0200CE6C(param0->unk_1C, param0->unk_20, &Unk_ov113_0226099C);

    sub_0200D324(param0->unk_96C->unk_00);
    sub_0200D3F4(param0->unk_96C, 0);

    v1 = Unk_ov113_022609D0;

    for (v0 = 0; v0 < 8; v0++) {
        v1.unk_14[0] = 10010 + v0;
        param0->unk_970[v0] = sub_0200CE6C(param0->unk_1C, param0->unk_20, &v1);

        sub_0200D500(param0->unk_970[v0], Unk_ov113_02260934[v0][0], Unk_ov113_02260934[v0][1], ((192 + 80) << FX32_SHIFT));
        sub_0200D324(param0->unk_970[v0]->unk_00);
        sub_0200D3F4(param0->unk_970[v0], 0);
    }
}

static void ov113_0225D7A4 (UnkStruct_ov113_0225DBCC * param0)
{
    int v0;

    sub_0200D0F4(param0->unk_96C);

    for (v0 = 0; v0 < 8; v0++) {
        sub_0200D0F4(param0->unk_970[v0]);
    }
}

static void ov113_0225D7CC (UnkStruct_ov113_0225DBCC * param0)
{
    int v0, v1;
    u16 * v2, * v3;
    int v4 = 0;

    v2 = sub_02003164(param0->unk_0C, 2);
    v3 = sub_0200316C(param0->unk_0C, 2);

    for (v0 = 0; v0 < 6; v0++) {
        if ((param0->unk_8D8[v0].unk_02 == 0) || (param0->unk_8D8[v0].unk_02 > 493)) {
            sub_0200D3F4(param0->unk_924[v0], 0);
            sub_0200D3F4(param0->unk_93C[v0], 0);
            sub_0200D3F4(param0->unk_954[v0], 0);

            for (v1 = 0; v1 < 4; v1++) {
                sub_02019CB8(param0->unk_08, 2, Unk_ov113_022608AC[v1], 0 + 4 * v0, 0x14 + v1, 4, 1, 17);
            }
        } else {
            ov113_0225D938(param0->unk_8D8[v0].unk_02, param0->unk_8D8[v0].unk_08, param0->unk_954[v0], param0->unk_160, param0->unk_164, NNS_G2D_VRAM_TYPE_2DMAIN, param0->unk_19E0);

            v2[1 * 16 + 1 + v0] = param0->unk_8D8[v0].unk_00;
            v3[1 * 16 + 1 + v0] = param0->unk_8D8[v0].unk_00;

            sub_0200393C(&v2[1 * 16 + 1 + v0], &v2[2 * 16 + 1 + v0], 1, 12, 0x0);
            v3[2 * 16 + 1 + v0] = v2[2 * 16 + 1 + v0];

            if (v4 == 0) {
                v4++;
                param0->unk_920 = v0;
            }
        }
    }

    ov113_0225E0D4(param0, 0);
    sub_0201C3C0(param0->unk_08, 2);
}

static BOOL ov113_0225D938 (int param0, int param1, CellActorData * param2, NARC * param3, NARC * param4, NNS_G2D_VRAM_TYPE param5, BOOL param6)
{
    void * v0;
    NNSG2dImageProxy * v1;
    void * v2;
    NNSG2dCharacterData * v3;
    u8 * v4, * v5;

    if ((param0 == 0) || (param0 > 493)) {
        return 0;
    }

    if (ov113_02260788(param0, param1, param6) == 1) {
        v2 = sub_0200723C(param4, 3 + param0, 1, 118, 1);
        NNS_G2dGetUnpackedCharacterData(v2, &v3);
        DC_FlushRange(v3->pRawData, 0x20 * 8);
        v4 = &((u8 *)v3->pRawData)[0x20 * 4];
        v5 = v3->pRawData;
    } else {
        v2 = sub_0200723C(param3, 16, 0, 118, 1);
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

    v1 = sub_02021F98(param2->unk_00);

    MI_CpuCopy16(v4, (void *)((u32)v0 + v1->vramLocation.baseAddrOfVram[param5]), 0x20 * 2);
    MI_CpuCopy16(v5, (void *)((u32)v0 + 0x20 * 2 + v1->vramLocation.baseAddrOfVram[param5]), 0x20 * 2);

    Heap_FreeToHeap(v2);
    return 1;
}

static void ov113_0225D9FC (UnkStruct_ov113_0225DBCC * param0)
{
    VecFx32 v0 = {0, (-FX32_ONE * 8), 0};

    param0->unk_CC = sub_020203AC(118);

    sub_020206D0(&v0, 0x7c000, &Unk_ov113_022608B4, (((22 * 0xffff) / 360)), 0, 0, param0->unk_CC);
    sub_020206BC((FX32_ONE), (FX32_ONE * 900), param0->unk_CC);
    sub_020203D4(param0->unk_CC);

    {
        u16 v1;
        fx32 v2, v3;
        fx32 v4, v5;

        v1 = sub_02020A88(param0->unk_CC);
        v2 = sub_02020A90(param0->unk_CC);
        v3 = FX32_ONE * 4 / 3;

        sub_0201E34C(v1, v2, v3, &v4, &v5);

        param0->unk_D0 = v4;
        param0->unk_D4 = v5;
    }
}

static void ov113_0225DA9C (UnkStruct_ov113_0225DBCC * param0)
{
    sub_020203B8(param0->unk_CC);
}

static void ov113_0225DAA8 (UnkStruct_ov113_0225DBCC * param0, NARC * param1)
{
    int v0;

    if (param0->unk_00->unk_04 == 0) {
        v0 = 28;
    } else {
        v0 = 27;
    }

    sub_020170D8(&param0->unk_D8.unk_00, param1, v0, 118);
    sub_02017258(&param0->unk_D8.unk_10, &param0->unk_D8.unk_00);
    sub_02017350(&param0->unk_D8.unk_10, (FX32_CONST(0)), (FX32_CONST(0)), (FX32_CONST(0)));
    sub_0201736C(&param0->unk_D8.unk_10, (FX32_CONST(1.00f)), (FX32_CONST(1.00f)), (FX32_CONST(1.00f)));
    sub_02017348(&param0->unk_D8.unk_10, 1);
}

static void ov113_0225DAFC (UnkStruct_ov113_0225DBCC * param0)
{
    sub_02017110(&param0->unk_D8.unk_00);
}

static void ov113_0225DB08 (UnkStruct_ov113_0225DBCC * param0)
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

    sub_020241B4();
    sub_020203D4(param0->unk_CC);
    sub_02020854(0, param0->unk_CC);
    sub_020203EC();

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(28, 28, 28));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbSetBaseTrans(&v1);
    NNS_G3dGlbSetBaseRot(&v2);
    NNS_G3dGlbSetBaseScale(&v0);
    NNS_G3dGePushMtx();

    {
        sub_02017294(&param0->unk_D8.unk_10);
        ov113_0225E4A0(&param0->unk_194);
    }

    NNS_G3dGePopMtx(1);
}

static void ov113_0225DBCC (UnkStruct_ov113_0225DBCC * param0)
{
    int v0;

    BGL_AddWindow(param0->unk_08, &param0->unk_B4, 1, 2, 1, 27, 4, 13, ((1 + (18 + 12)) + (29 * 4)));
    BGL_FillWindow(&param0->unk_B4, 0xf);

    for (v0 = 0; v0 < 8; v0++) {
        BGL_AddWindow(param0->unk_08, &param0->unk_34[v0], 5, Unk_ov113_022608C8[v0][0], Unk_ov113_022608C8[v0][1], 8, 2, 13, (0x4000 / 0x20) + (8 * 2) * v0);
        BGL_FillWindow(&param0->unk_34[v0], 0x0);
    }
}

static void ov113_0225DC4C (UnkStruct_ov113_0225DBCC * param0)
{
    int v0;

    BGL_DeleteWindow(&param0->unk_B4);

    for (v0 = 0; v0 < 8; v0++) {
        BGL_DeleteWindow(&param0->unk_34[v0]);
    }
}

static GenericPointerData * ov113_0225DC6C (int param0)
{
    GenericPointerData * v0;

    v0 = sub_02024220(param0, 0, 2, 0, 2, ov113_0225DC88);
    return v0;
}

static void ov113_0225DC88 (void)
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

static void ov113_0225DD0C (GenericPointerData * param0)
{
    sub_020242C4(param0);
}

static void ov113_0225DD14 (UnkStruct_ov113_0225DBCC * param0)
{
    UnkStruct_ov113_022607EC * v0;

    v0 = &param0->unk_168;
    v0->unk_04 = ov66_022328F0();
}

static void ov113_0225DD24 (UnkStruct_ov113_0225DBCC * param0, UnkStruct_ov113_0225CA04 * param1)
{
    UnkStruct_ov113_02260818 * v0;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov113_0225CA04));

    v0 = &param1->unk_00;

    v0->unk_02 = 150;
    v0->unk_00 = 0x1f;
    v0->unk_04 = 0x101;
    v0->unk_08 = 0;
}

UnkStruct_ov113_022607EC * ov113_0225DD44 (UnkStruct_ov113_0225DBCC * param0)
{
    return &param0->unk_168;
}

static void ov113_0225DD4C (int param0, SaveData * param1, UnkStruct_ov113_02260818 * param2)
{
    Party * v0;
    int v1;
    Pokemon * v2;
    int v3;

    MI_CpuClear8(param2, sizeof(UnkStruct_ov113_02260818) * 6);

    v0 = Party_GetFromSavedata(param1);
    v1 = Party_GetCurrentCount(v0);

    for (v3 = 0; v3 < v1; v3++) {
        v2 = Party_GetPokemonBySlotIndex(v0, v3);
        param2[v3].unk_02 = Pokemon_GetValue(v2, MON_DATA_SPECIES_EGG, NULL);
        param2[v3].unk_04 = Pokemon_GetValue(v2, MON_DATA_PERSONALITY, NULL);
        param2[v3].unk_08 = Pokemon_GetValue(v2, MON_DATA_FORM, NULL);
        param2[v3].unk_00 = ov113_0226072C(param0, Pokemon_GetValue(v2, MON_DATA_OT_ID, NULL));
    }
}

BOOL ov113_0225DDC0 (UnkStruct_ov113_0225DBCC * param0, const UnkStruct_ov113_02260818 * param1, s32 param2)
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
                sub_0200D3F4(param0->unk_970[v1], 1);
                sub_020038B0(param0->unk_0C, 1, 2, param1->unk_00, (2 * 16 + 1) + v1, (2 * 16 + 1) + v1 + 1);
            }
        }

        Sound_PlayEffect(1515);
    }

    return v0;
}

static int ov113_0225DE98 (UnkStruct_ov113_0225DBCC * param0)
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
                    u16 * v5;
                    int v6, v7;

                    v5 = sub_02019FE4(param0->unk_08, 6);

                    for (v7 = Unk_ov113_02260AD4[v1][1]; v7 < Unk_ov113_02260AD4[v1][1] + Unk_ov113_02260AD4[v1][3]; v7++) {
                        MI_CpuCopy16(&param0->unk_9C0[v7 * 32 + Unk_ov113_02260AD4[v1][0]], &v5[v7 * 32 + Unk_ov113_02260AD4[v1][0]], Unk_ov113_02260AD4[v1][2] * 2);
                    }

                    sub_0201C3C0(param0->unk_08, 6);
                }

                v2++;
            } else {
                ov113_02260714(param0->unk_34, v1);

                param0->unk_99C[v1] = 0;
                param0->unk_9AC[v1] = 0;

                sub_0200D3F4(param0->unk_970[v1], 0);
                sub_02019CB8(param0->unk_08, 6, 0, Unk_ov113_02260AD4[v1][0], Unk_ov113_02260AD4[v1][1], Unk_ov113_02260AD4[v1][2], Unk_ov113_02260AD4[v1][3], 16);
                sub_0201C3C0(param0->unk_08, 6);
                v3++;
            }

            if (v0.unk_04[v1] == param0->unk_168.unk_04) {
                sub_0200D500(param0->unk_96C, Unk_ov113_02260914[v1][0], Unk_ov113_02260914[v1][1], ((192 + 80) << FX32_SHIFT));
                sub_0200D3F4(param0->unk_96C, 1);
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
        Sound_PlayEffect(1508);
        return 1;
    } else if (v3 > 0) {
        Sound_PlayEffect(1508);
        return 2;
    }

    return 0;
}

void ov113_0225E044 (UnkStruct_ov113_0225DBCC * param0, s32 param1)
{
    ov113_02260620(param0->unk_30, param0->unk_2C, param0->unk_34, param0->unk_00->unk_00, param1);
}

void ov113_0225E05C (UnkStruct_ov113_0225DBCC * param0, u32 param1)
{
    ov113_02260714(param0->unk_34, param1);
}

static void ov113_0225E068 (UnkStruct_ov113_0225DBCC * param0, int param1)
{
    UnkStruct_ov104_0223F9E0 v0;
    int v1;

    v0 = Unk_ov113_02260AA0;

    for (v1 = 0; v1 < 3; v1++) {
        if (param0->unk_990[v1] == NULL) {
            v0.unk_00 = 16 + 32 * param1;
            v0.unk_02 = 176;
            param0->unk_990[v1] = sub_0200CE6C(param0->unk_1C, param0->unk_20, &v0);

            break;
        }
    }

    ov113_0225E0D4(param0, param1);
    Sound_PlayEffect(1509);
}

static void ov113_0225E0D4 (UnkStruct_ov113_0225DBCC * param0, int param1)
{
    u16 * v0, * v1;

    v0 = sub_02003164(param0->unk_0C, 2);
    v1 = sub_0200316C(param0->unk_0C, 2);

    MI_CpuCopy16(&v0[1 * 16 + 1], &v1[1 * 16 + 1], 6 * 2);
    sub_0200393C(&v0[1 * 16 + 1 + param1], &v1[1 * 16 + 1 + param1], 1, 6, 0x0);
}

static void ov113_0225E118 (UnkStruct_ov113_0225DBCC * param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_990[v0] != NULL) {
            if (sub_0200D3B8(param0->unk_990[v0]) == 0) {
                sub_0200D0F4(param0->unk_990[v0]);
                param0->unk_990[v0] = NULL;
            } else {
                sub_0200D324(param0->unk_990[v0]->unk_00);
            }
        }
    }
}

static void ov113_0225E15C (UnkStruct_ov113_0225DBCC * param0, UnkStruct_ov113_0225E250 * param1, const Strbuf *param2, int param3, u32 param4, int param5, int param6, int param7, int param8, int param9)
{
    UnkStruct_020127E8 v0;
    Window v1;
    SpriteManagerAllocation v2;
    int v3;
    FontOAM * v4;
    BGL * v5;
    AnimationResourceCollection * v6;
    int v7, v8;

    GF_ASSERT(param1->unk_00 == NULL);

    v5 = param0->unk_08;
    v6 = param0->unk_20;

    ov113_0225E264(param2, param3, &v7, &v8);

    sub_0201A7A0(&v1);
    sub_0201A870(v5, &v1, v8, 16 / 8, 0, 0);
    sub_0201D7E0(&v1, param3, param2, 0, 0, 0xff, param4, 0, 0, NULL);

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DMAIN, 118);
    sub_0201ED94(v3, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

    if (param9 == 1) {
        param7 -= v7 / 2;
    }

    param8 -= 8;

    v0.unk_00 = param0->unk_10;
    v0.unk_04 = &v1;
    v0.unk_08 = sub_0200D9B0(v6);
    v0.unk_0C = sub_0200D04C(v6, param6);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.unk_04;
    v0.unk_18 = param7;
    v0.unk_1C = param8;
    v0.unk_20 = 0;
    v0.unk_24 = 51;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_2C = 118;

    v4 = sub_020127E8(&v0);

    sub_02012AC0(v4, param5);
    sub_020128C4(v4, param7, param8);
    BGL_DeleteWindow(&v1);

    param1->unk_00 = v4;
    param1->unk_04 = v2;
    param1->unk_10 = v7;
}

static void ov113_0225E250 (UnkStruct_ov113_0225E250 * param0)
{
    sub_02012870(param0->unk_00);
    sub_0201EE28(&param0->unk_04);
}

static void ov113_0225E264 (const Strbuf *param0, int param1, int * param2, int * param3)
{
    int v0, v1;

    v0 = sub_02002D7C(param1, param0, 0);
    v1 = v0 / 8;

    if (FX_ModS32(v0, 8) != 0) {
        v1++;
    }

    *param2 = v0;
    *param3 = v1;
}

static void ov113_0225E294 (UnkStruct_ov113_0225DBCC * param0)
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
        sub_0200D500(param0->unk_924[v1], 16 + 32 * v1, 176 + v0, ((192 + 80) << FX32_SHIFT));
    }
}

static BOOL ov113_0225E318 (UnkStruct_ov113_0225DBCC * param0, int param1)
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

static void ov113_0225E364 (UnkStruct_ov113_0225DBCC * param0)
{
    return;
}
