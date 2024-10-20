#include "overlay094/ov94_0223FB48.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02081CF4.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_022414B8.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub2.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay094/struct_ov94_0223FD4C_sub2.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_020393C8.h"
#include "unk_020797C8.h"

typedef struct {
    int unk_00;
    int unk_04;
    CellActor *unk_08;
    u8 unk_0C[512];
} UnkStruct_ov94_02240FA0;

static void ov94_0223FC08(BGL *param0);
static void ov94_0223FD20(BGL *param0);
static void ov94_0223FD4C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223FE24(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223FFC8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02240028(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02240190(UnkStruct_ov94_0223FD4C *param0);
static void ov94_022401E0(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02240268(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022402A8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022402BC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240A6C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240AC4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240AE8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240D08(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240D28(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02240D58(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4, int param5);
static void ov94_02240DF8(int param0, int param1, int param2, int param3, CellActor *param4, NARC *param5, UnkStruct_ov94_02240FA0 *param6);
static void ov94_02240FA0(UnkStruct_ov94_0223FD4C *param0, int param1);
static int ov94_022405CC(int param0, int param1, int param2);
static void ov94_022404F0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022405DC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240688(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240830(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022408E8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240B70(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240B4C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240B20(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240C58(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240C84(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02240CA8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02241384(BoxPokemon *param0, UnkStruct_ov94_0223BA88_sub3 *param1);
static void ov94_022413BC(UnkStruct_ov94_0223BA88 *param0, UnkStruct_ov94_0223FD4C *param1);
static void ov94_02240EAC(BoxPokemon *param0, CellActor *param1, CellActor *param2, u16 *param3, int param4, NARC *param5, UnkStruct_ov94_0223BA88_sub2 *param6, UnkStruct_ov94_02240FA0 *param7);
void *ov94_02240DD0(NARC *param0, u32 param1, NNSG2dCharacterData **param2, u32 param3);
static int ov94_02241328(UnkStruct_ov94_0223BA88_sub2 *param0, UnkStruct_ov94_0223BA88_sub3 *param1);
static void ov94_02241464(UnkStruct_ov94_0223BA88_sub2 *param0, CellActor **param1, UnkStruct_ov94_0223BA88_sub3 *param2, UnkStruct_ov94_02240FA0 *param3);
static int ov94_0224121C(Party *param0, PCBoxes *param1, int param2, int param3);
static int ov94_022412F4(Party *param0, PCBoxes *param1, int param2, int param3);
static int ov94_02240BB0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224123C(BoxPokemon *param0);
static int ov94_02241278(BoxPokemon *param0);
static int ov94_022412C8(BoxPokemon *param0);

static int (*Unk_ov94_022468DC[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_022402A8,
    ov94_022402BC,
    ov94_02240A6C,
    ov94_02240D08,
    ov94_02240D28,
    ov94_02240AC4,
    ov94_02240AE8,
    ov94_022405DC,
    ov94_02240688,
    ov94_02240830,
    ov94_022408E8,
    ov94_02240B20,
    ov94_02240B4C,
    ov94_02240B70,
    ov94_02240C58,
    ov94_02240C84,
    ov94_02240CA8
};

int ov94_0223FB48(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_022401E0(param0);
    ov94_0223FC08(param0->unk_04);
    ov94_0223FD4C(param0);
    ov94_02240028(param0);
    ov94_0223FE24(param0);

    if (param0->unk_20 == 8) {
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 62);
    } else {
        sub_0200F174(3, 1, 1, 0x0, 6, 1, 62);
    }

    ov94_02240FA0(param0, param0->unk_110);
    ov94_02245934(param0);

    param0->unk_2C = 0;

    return 2;
}

int ov94_0223FBBC(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0;

    sub_020397B0(ov94_0223C4B4());

    v0 = (*Unk_ov94_022468DC[param0->unk_2C])(param0);

    return v0;
}

int ov94_0223FBDC(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    sub_02039794();

    ov94_0223FFC8(param0);
    ov94_02240268(param0);
    ov94_02240190(param0);
    ov94_0223FD20(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_0223FC08(BGL *param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
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

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v2, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
        sub_02019EBC(param0, 2);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 4, &v4, 0);
        sub_02019EBC(param0, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v5, 0);
    }

    sub_02019690(0, 32, 0, 62);
    sub_02019690(4, 32, 0, 62);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov94_0223FD20(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
}

static void ov94_0223FD4C(UnkStruct_ov94_0223FD4C *param0)
{
    BGL *v0 = param0->unk_04;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, 62);

    sub_02007130(v1, 2, 0, 0, 16 * 3 * 2, 62);
    sub_02007130(v1, 5, 4, 0, 16 * 8 * 2, 62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 62);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(param0->unk_00->unk_24), 62);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 62);
    sub_020070E8(v1, 12, v0, 1, 0, 16 * 5 * 0x20, 1, 62);
    sub_0200710C(v1, 24, v0, 1, 0, 32 * 24 * 2, 1, 62);
    sub_0200710C(v1, 29, v0, 2, 0, 32 * 24 * 2, 1, 62);
    NARC_dtor(v1);
}

static const u16 Unk_ov94_02245ED4[][2] = {
    { 0x19, 0x3C },
    { 0x33, 0x3C },
    { 0x4D, 0x3C },
    { 0x67, 0x3C },
    { 0x81, 0x3C },
    { 0x9B, 0x3C },
    { 0x19, 0x54 },
    { 0x33, 0x54 },
    { 0x4D, 0x54 },
    { 0x67, 0x54 },
    { 0x81, 0x54 },
    { 0x9B, 0x54 },
    { 0x19, 0x6C },
    { 0x33, 0x6C },
    { 0x4D, 0x6C },
    { 0x67, 0x6C },
    { 0x81, 0x6C },
    { 0x9B, 0x6C },
    { 0x19, 0x84 },
    { 0x33, 0x84 },
    { 0x4D, 0x84 },
    { 0x67, 0x84 },
    { 0x81, 0x84 },
    { 0x9B, 0x84 },
    { 0x19, 0x9C },
    { 0x33, 0x9C },
    { 0x4D, 0x9C },
    { 0x67, 0x9C },
    { 0x81, 0x9C },
    { 0x9B, 0x9C },
    { 0xE0, 0xAF },
    { 0x62, 0x20 }
};

static const u16 Unk_ov94_02245E1C[][2] = {
    { 0xA2, 0x24 },
    { 0x16, 0x24 }
};

static void ov94_0223FE24(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;
    CellActorInitParamsEx v1;

    ov94_0223C300(&v1, param0, &param0->unk_DB4, NNS_G2D_VRAM_TYPE_2DMAIN);

    v1.position.x = FX32_ONE * Unk_ov94_02245ED4[param0->unk_112][0];
    v1.position.y = FX32_ONE * Unk_ov94_02245ED4[param0->unk_112][1];

    param0->unk_E20 = CellActorCollection_AddEx(&v1);

    CellActor_SetAnimateFlag(param0->unk_E20, 1);
    CellActor_SetAnim(param0->unk_E20, 4);

    if ((param0->unk_112 == 31) || ((param0->unk_112 >= 0) && (param0->unk_112 <= 5))) {
        CellActor_SetExplicitPriority(param0->unk_E20, 0);
    } else {
        CellActor_SetExplicitPriority(param0->unk_E20, 1);
    }

    for (v0 = 0; v0 < 30; v0++) {
        v1.position.x = FX32_ONE * Unk_ov94_02245ED4[v0][0];
        v1.position.y = FX32_ONE * Unk_ov94_02245ED4[v0][1];
        v1.priority = 20;

        param0->unk_E28[v0] = CellActorCollection_AddEx(&v1);

        CellActor_SetAnim(param0->unk_E28[v0], 6 + v0);
        CellActor_SetExplicitPriority(param0->unk_E28[v0], 1);
    }

    for (v0 = 0; v0 < 30; v0++) {
        v1.position.x = FX32_ONE * (Unk_ov94_02245ED4[v0][0] + 4);
        v1.position.y = FX32_ONE * (Unk_ov94_02245ED4[v0][1] + 6);
        v1.priority = 10;

        param0->unk_EA0[v0] = CellActorCollection_AddEx(&v1);

        CellActor_SetAnim(param0->unk_EA0[v0], 40);
        CellActor_SetExplicitPriority(param0->unk_EA0[v0], 1);
    }

    for (v0 = 0; v0 < 6; v0++) {
        v1.position.x = FX32_ONE * (Unk_ov94_02245ED4[v0][0] + 4 + 8);
        v1.position.y = FX32_ONE * (Unk_ov94_02245ED4[v0][1] + 6);
        v1.priority = 10;

        param0->unk_F18[v0] = CellActorCollection_AddEx(&v1);

        CellActor_SetAnim(param0->unk_F18[v0], 42);
        CellActor_SetExplicitPriority(param0->unk_F18[v0], 1);
    }

    for (v0 = 0; v0 < 2; v0++) {
        v1.position.x = FX32_ONE * Unk_ov94_02245E1C[v0][0];
        v1.position.y = FX32_ONE * Unk_ov94_02245E1C[v0][1];

        param0->unk_F54[v0] = CellActorCollection_AddEx(&v1);

        CellActor_SetAnimateFlag(param0->unk_F54[v0], 1);
        CellActor_SetAnim(param0->unk_F54[v0], 38 + v0);
        CellActor_SetExplicitPriority(param0->unk_F54[v0], 1);
    }
}

static void ov94_0223FFC8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        CellActor_Delete(param0->unk_F54[v0]);
    }

    CellActor_Delete(param0->unk_E20);

    for (v0 = 0; v0 < 30; v0++) {
        CellActor_Delete(param0->unk_E28[v0]);
        CellActor_Delete(param0->unk_EA0[v0]);
    }

    for (v0 = 0; v0 < 6; v0++) {
        CellActor_Delete(param0->unk_F18[v0]);
    }
}

static void ov94_02240028(UnkStruct_ov94_0223FD4C *param0)
{
    BGL_AddWindow(param0->unk_04, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_F7C, 0x0);

    ov94_02245900(&param0->unk_F7C, param0->unk_BB0, 0, 1, 0, TEXT_COLOR(15, 14, 0));

    BGL_AddWindow(param0->unk_04, &param0->unk_F8C, 0, 5, 3, 13, 3, 13, (((1 + (18 + 12)) + 9) + 28 * 2));
    BGL_FillWindow(&param0->unk_F8C, 0x0);
    sub_0201A954(&param0->unk_F8C);
    BGL_AddWindow(param0->unk_04, &param0->unk_F5C, 0, 2, 21, 27, 2, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13));
    BGL_FillWindow(&param0->unk_F5C, 0x0);
    BGL_AddWindow(param0->unk_04, &param0->unk_109C, 0, 2, 19, 27, 4, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2));
    BGL_FillWindow(&param0->unk_109C, 0x0);
    BGL_AddWindow(param0->unk_04, &param0->unk_F9C[1], 1, 25, 21, 6, 2, 0, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19));
    BGL_FillWindow(&param0->unk_F9C[1], 0x606);

    ov94_02245900(&param0->unk_F9C[1], param0->unk_BA8, 0, 1, 1, TEXT_COLOR(1, 3, 6));

    BGL_AddWindow(param0->unk_04, &param0->unk_F9C[0], 0, 21, 13, (5 * 2), 6, 13, (((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2));
}

static void ov94_02240190(UnkStruct_ov94_0223FD4C *param0)
{
    BGL_DeleteWindow(&param0->unk_109C);
    BGL_DeleteWindow(&param0->unk_F9C[1]);
    BGL_DeleteWindow(&param0->unk_F9C[0]);
    BGL_DeleteWindow(&param0->unk_F5C);
    BGL_DeleteWindow(&param0->unk_F8C);
    BGL_DeleteWindow(&param0->unk_F7C);
}

static void ov94_022401E0(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_BA4 = Strbuf_Init((9 * 2), 62);
    param0->unk_BAC = Strbuf_Init((90 * 2), 62);

    if (param0->unk_24 == 5) {
        param0->unk_BB0 = MessageLoader_GetNewStrbuf(param0->unk_B90, 21);
    } else if (param0->unk_24 == 6) {
        param0->unk_BB0 = MessageLoader_GetNewStrbuf(param0->unk_B90, 17);
    }

    param0->unk_BA8 = MessageLoader_GetNewStrbuf(param0->unk_B90, 103);

    if (param0->unk_112 == 30) {
        param0->unk_112 = 0;
    }

    param0->unk_1108 = Heap_AllocFromHeap(62, sizeof(UnkStruct_ov94_0223FD4C_sub2));
}

static void ov94_02240268(UnkStruct_ov94_0223FD4C *param0)
{
    Heap_FreeToHeap(param0->unk_1108);
    Strbuf_Free(param0->unk_BA4);
    Strbuf_Free(param0->unk_BAC);
    Strbuf_Free(param0->unk_BA8);
    Strbuf_Free(param0->unk_BB0);
}

static int ov94_022402A8(UnkStruct_ov94_0223FD4C *param0)
{
    if (ScreenWipe_Done()) {
        param0->unk_2C = 1;
    }

    return 3;
}

static const u8 Unk_ov94_02245F54[][4] = {
    { 0x1F, 0x6, 0x5, 0x1 },
    { 0x1F, 0x7, 0x0, 0x2 },
    { 0x1F, 0x8, 0x1, 0x3 },
    { 0x1F, 0x9, 0x2, 0x4 },
    { 0x1F, 0xA, 0x3, 0x5 },
    { 0x1F, 0xB, 0x4, 0x0 },
    { 0x0, 0xC, 0xB, 0x7 },
    { 0x1, 0xD, 0x6, 0x8 },
    { 0x2, 0xE, 0x7, 0x9 },
    { 0x3, 0xF, 0x8, 0xA },
    { 0x4, 0x10, 0x9, 0xB },
    { 0x5, 0x11, 0xA, 0x6 },
    { 0x6, 0x12, 0x11, 0xD },
    { 0x7, 0x13, 0xC, 0xE },
    { 0x8, 0x14, 0xD, 0xF },
    { 0x9, 0x15, 0xE, 0x10 },
    { 0xA, 0x16, 0xF, 0x11 },
    { 0xB, 0x17, 0x10, 0xC },
    { 0xC, 0x18, 0x17, 0x13 },
    { 0xD, 0x19, 0x12, 0x14 },
    { 0xE, 0x1A, 0x13, 0x15 },
    { 0xF, 0x1B, 0x14, 0x16 },
    { 0x10, 0x1C, 0x15, 0x17 },
    { 0x11, 0x1D, 0x16, 0x12 },
    { 0x12, 0x1F, 0x1E, 0x19 },
    { 0x13, 0x1F, 0x18, 0x1A },
    { 0x14, 0x1F, 0x19, 0x1B },
    { 0x15, 0x1F, 0x1A, 0x1C },
    { 0x16, 0x1F, 0x1B, 0x1D },
    { 0x17, 0x1F, 0x1C, 0x1E },
    { 0x1E, 0x1E, 0x1D, 0x18 },
    { 0x1A, 0x2, 0x63, 0x65 }
};

static int ov94_022402BC(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_022404F0(param0);

    if (param0->unk_24 == 5) {
        if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            ov94_0223C4C0(param0, 1, 0);
            param0->unk_2C = 2;
            Sound_PlayEffect(1500);
        } else if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            if (param0->unk_112 == 30) {
                ov94_0223C4C0(param0, 1, 0);
                param0->unk_2C = 2;
                Sound_PlayEffect(1500);
            } else {
                if (param0->unk_112 != 31) {
                    Sound_PlayEffect(1500);

                    switch (ov94_022412F4(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112)) {
                    case 1:
                        if (ov94_0224121C(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112)) {
                            StringTemplate_SetNickname(param0->unk_B8C, 0, ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112));
                            ov94_02240D58(param0, 22, TEXT_SPEED_FAST, 0, 0xf0f, 0);
                            ov94_0223C3F4(param0, 3, 7);
                        } else {
                            ov94_02240D58(param0, 26, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                            ov94_0223C3F4(param0, 4, 1);
                        }
                        break;
                    case 2:
                        ov94_02240D58(param0, 27, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                        ov94_0223C3F4(param0, 4, 1);
                        break;
                    }
                }
            }
        }
    } else if (param0->unk_24 == 6) {
        if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            ov94_0223C4C0(param0, 3, 0);
            param0->unk_2C = 2;
            Sound_PlayEffect(1500);
        } else if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            if (param0->unk_112 == 30) {
                ov94_0223C4C0(param0, 3, 0);
                param0->unk_2C = 2;
                Sound_PlayEffect(1500);
            } else {
                if (param0->unk_112 != 31) {
                    switch (ov94_022412F4(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112)) {
                    case 1: {
                        BoxPokemon *v0 = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);

                        if (ov94_02241384(v0, &param0->unk_250[param0->unk_11C].unk_F0)) {
                            if (ov94_0224121C(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112)) {
                                StringTemplate_SetNickname(param0->unk_B8C, 0, v0);
                                ov94_02240D58(param0, 18, TEXT_SPEED_FAST, 0, 0xf0f, 0);
                                ov94_0223C3F4(param0, 3, 9);
                                Sound_PlayEffect(1500);
                            } else {
                                ov94_02240D58(param0, 26, TEXT_SPEED_FAST, 0, 0xf0f, 1);
                                ov94_0223C3F4(param0, 4, 1);
                            }
                        } else {
                            Sound_PlayEffect(1500);
                        }
                    } break;
                    case 2:
                    case 0:
                        Sound_PlayEffect(1500);
                        break;
                    }
                }
            }
        }
    }

    return 3;
}

static void ov94_022404F0(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = 0, v1 = 0, v2 = 0;

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        v1 = 1;
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        v1 = 2;
    } else if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        v1 = 3;
    } else if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        v1 = 4;
    }

    if (v1 != 0) {
        v2 = Unk_ov94_02245F54[param0->unk_112][v1 - 1];

        if (v2 != param0->unk_112) {
            if ((v2 == 99) || (v2 == 101)) {
                param0->unk_110 = ov94_022405CC(param0->unk_110, 19, v2 - 100);
                ov94_02240FA0(param0, param0->unk_110);
                Sound_PlayEffect(1500);
            } else {
                v0 = 1;
                param0->unk_112 = v2;
            }
        }
    }

    if (v0) {
        Sound_PlayEffect(1500);
        ov94_0223C3FC(param0->unk_E20, Unk_ov94_02245ED4[param0->unk_112][0], Unk_ov94_02245ED4[param0->unk_112][1]);
    }

    if ((param0->unk_112 == 31) || ((param0->unk_112 >= 0) && (param0->unk_112 <= 5))) {
        CellActor_SetExplicitPriority(param0->unk_E20, 0);
    } else {
        CellActor_SetExplicitPriority(param0->unk_E20, 1);
    }
}

static int ov94_022405CC(int param0, int param1, int param2)
{
    param0 += param2;

    if (param0 < 0) {
        return param1 - 1;
    }

    if (param0 == param1) {
        return 0;
    }

    return param0;
}

static int ov94_022405DC(UnkStruct_ov94_0223FD4C *param0)
{
    UnkStruct_02081CF4 v0;

    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 3;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 0;

    param0->unk_10CC = sub_02013A04(3, 62);

    sub_02013A4C(param0->unk_10CC, param0->unk_B90, 94, 1);
    sub_02013A4C(param0->unk_10CC, param0->unk_B90, 95, 2);
    sub_02013A4C(param0->unk_10CC, param0->unk_B90, 96, 3);

    v0.unk_00 = param0->unk_10CC;
    v0.unk_04 = &param0->unk_F9C[0];

    Window_Show(&param0->unk_F9C[0], 1, (1 + (18 + 12)), 11);

    param0->unk_10D4 = sub_02001B7C(&v0, 9, 0, 0, 62, PAD_BUTTON_B);
    param0->unk_2C = 8;

    return 3;
}

static int ov94_02240688(UnkStruct_ov94_0223FD4C *param0)
{
    BoxPokemon *v0;

    switch (sub_02001BE0(param0->unk_10D4)) {
    case 1:
        sub_02001BC4(param0->unk_10D4, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        param0->unk_2C = 2;
        ov94_0223C4C0(param0, 8, 5);
        break;
    case 2:
        sub_02001BC4(param0->unk_10D4, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);

        v0 = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);

        if (ov94_0224123C(v0)) {
            ov94_02240D58(param0, 37, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            ov94_0223C3F4(param0, 4, 1);
        } else if (ov94_02241278(v0)) {
            ov94_02240D58(param0, 170, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            ov94_0223C3F4(param0, 4, 1);
        } else if (ov94_022412C8(v0)) {
            ov94_02240D58(param0, 171, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            ov94_0223C3F4(param0, 4, 1);
        } else {
            int v1 = 0;

            if (ov94_022411D0(param0->unk_110)) {
                Pokemon *v2;

                v2 = Party_GetPokemonBySlotIndex(param0->unk_00->unk_08, param0->unk_112);

                if (Pokemon_GetValue(v2, MON_DATA_MAIL_ID, NULL)) {
                    v1 = 1;
                    param0->unk_2C = 14;
                }
            }

            if (v1 == 0) {
                param0->unk_114 = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);
                param0->unk_2C = 2;

                ov94_0223C4C0(param0, 6, 0);
            }
        }
        break;
    case 3:
    case 0xfffffffe:
        sub_02001BC4(param0->unk_10D4, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        param0->unk_2C = 1;
        break;
    }

    return 3;
}

static int ov94_02240830(UnkStruct_ov94_0223FD4C *param0)
{
    UnkStruct_02081CF4 v0;

    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 3;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 0;

    param0->unk_10CC = sub_02013A04(3, 62);

    sub_02013A4C(param0->unk_10CC, param0->unk_B90, 84, 1);
    sub_02013A4C(param0->unk_10CC, param0->unk_B90, 85, 2);
    sub_02013A4C(param0->unk_10CC, param0->unk_B90, 86, 3);

    v0.unk_00 = param0->unk_10CC;
    v0.unk_04 = &param0->unk_F9C[0];

    BGL_FillWindow(v0.unk_04, 0xf0f);
    Window_Show(&param0->unk_F9C[0], 1, (1 + (18 + 12)), 11);

    param0->unk_10D4 = sub_02001B7C(&v0, 9, 0, 0, 62, PAD_BUTTON_B);
    param0->unk_2C = 10;

    return 3;
}

static int ov94_022408E8(UnkStruct_ov94_0223FD4C *param0)
{
    BoxPokemon *v0;

    switch (sub_02001BE0(param0->unk_10D4)) {
    case 1:
        sub_02001BC4(param0->unk_10D4, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        param0->unk_2C = 2;
        ov94_0223C4C0(param0, 8, 6);
        break;
    case 2:
        sub_02001BC4(param0->unk_10D4, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);

        v0 = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);

        if (ov94_0224123C(v0)) {
            ov94_02240D58(param0, 37, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            ov94_0223C3F4(param0, 4, 1);
        } else if (ov94_02241278(v0)) {
            ov94_02240D58(param0, 170, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            ov94_0223C3F4(param0, 4, 1);
        } else if (ov94_022412C8(v0)) {
            ov94_02240D58(param0, 171, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            ov94_0223C3F4(param0, 4, 1);
        } else {
            int v1 = 0;

            if (ov94_022411D0(param0->unk_110)) {
                Pokemon *v2;

                v2 = Party_GetPokemonBySlotIndex(param0->unk_00->unk_08, param0->unk_112);

                if (Pokemon_GetValue(v2, MON_DATA_MAIL_ID, NULL)) {
                    v1 = 1;
                    param0->unk_2C = 11;
                }
            }

            if (v1 == 0) {
                ov94_02240BB0(param0);
            }
        }
        break;
    case 3:
    case 0xfffffffe:
        sub_02001BC4(param0->unk_10D4, NULL);
        sub_02013A3C(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);
        sub_0200E084(&param0->unk_F5C, 0);
        param0->unk_2C = 1;
        break;
    }

    return 3;
}

static int ov94_02240A6C(UnkStruct_ov94_0223FD4C *param0)
{
    if ((param0->unk_18 == 0) || (param0->unk_18 == 8)) {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 62);
        param0->unk_1110 = 1;
    } else {
        sub_0200F174(3, 0, 0, 0x0, 6, 1, 62);
    }

    param0->unk_2C = 0;

    return 4;
}

static int ov94_02240AC4(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 15, ((((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6));
    param0->unk_2C = 6;

    return 3;
}

static int ov94_02240AE8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_2C = 0;
        } else {
            param0->unk_2C = 2;
            ov94_0223C4C0(param0, 0, 0);
        }
    }

    return 3;
}

static int ov94_02240B20(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02240D58(param0, 25, TEXT_SPEED_FAST, 0, 0xf0f, 1);
    ov94_0223C3F4(param0, 3, 12);

    return 3;
}

static int ov94_02240B4C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 13, ((((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6));
    param0->unk_2C = 13;

    return 3;
}

static int ov94_02240B70(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            sub_0200E084(&param0->unk_109C, 0);
            param0->unk_2C = 1;
        } else {
            ov94_02240BB0(param0);
        }
    }

    return 3;
}

static int ov94_02240BB0(UnkStruct_ov94_0223FD4C *param0)
{
    Pokemon *v0;

    v0 = (Pokemon *)param0->unk_250[param0->unk_11C].unk_00.unk_00;

    if (ov94_02241498(v0) && (param0->unk_110 != 18)) {
        if (Party_GetCurrentCount(param0->unk_00->unk_08) == 6) {
            ov94_02240D58(param0, 28, TEXT_SPEED_FAST, 0, 0xf0f, 1);
            ov94_0223C3F4(param0, 4, 1);
            return 0;
        }
    }

    param0->unk_114 = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);
    param0->unk_2C = 2;
    param0->unk_1110 = 1;

    ov94_0223C4C0(param0, 7, 9);
    ov94_022413BC(&param0->unk_12C, param0);

    param0->unk_118 = 0;

    return 1;
}

static int ov94_02240C58(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02240D58(param0, 25, TEXT_SPEED_FAST, 0, 0xf0f, 1);
    ov94_0223C3F4(param0, 3, 15);

    return 3;
}

static int ov94_02240C84(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 13, ((((((((1 + (18 + 12)) + 9) + 28 * 2) + 13 * 13) + 27 * 2) + 2 * 19) + 6 * 2) + (5 * 2) * 6));
    param0->unk_2C = 16;

    return 3;
}

static int ov94_02240CA8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            sub_0200E084(&param0->unk_109C, 0);
            param0->unk_2C = 1;
        } else {
            param0->unk_114 = ov94_022411DC(param0->unk_00->unk_08, param0->unk_00->unk_0C, param0->unk_110, param0->unk_112);
            param0->unk_2C = 2;
            ov94_0223C4C0(param0, 6, 0);
        }
    }

    return 3;
}

static int ov94_02240D08(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static int ov94_02240D28(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        sub_0200E084(&param0->unk_109C, 0);
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static void ov94_02240D58(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4, int param5)
{
    Window *v0;
    Strbuf *v1;

    v1 = MessageLoader_GetNewStrbuf(param0->unk_B90, param1);
    StringTemplate_Format(param0->unk_B8C, param0->unk_BAC, v1);

    if (param5 == 0) {
        v0 = &param0->unk_F5C;
    } else {
        v0 = &param0->unk_109C;
    }

    BGL_FillWindow(v0, 0xf0f);
    sub_0200E060(v0, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(v0, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);

    Strbuf_Free(v1);
}

void *ov94_02240DD0(NARC *param0, u32 param1, NNSG2dCharacterData **param2, u32 param3)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0, param1, param3);

    if (v0 != NULL) {
        if (NNS_G2dGetUnpackedBGCharacterData(v0, param2) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

static void ov94_02240DF8(int param0, int param1, int param2, int param3, CellActor *param4, NARC *param5, UnkStruct_ov94_02240FA0 *param6)
{
    u8 *v0;
    u8 *v1;
    NNSG2dCharacterData *v2;

    v1 = ov94_02240DD0(param5, PokeIconSpriteIndex(param0, param2, param1), &v2, 62);

    MI_CpuCopyFast(v2->pRawData, param6->unk_0C, ((4 * 4) * 0x20));

    param6->unk_00 = (12 + param3 * (4 * 4)) * 0x20;
    param6->unk_08 = param4;
    param6->unk_04 = PokeIconPaletteIndex(param0, param1, param2) + 3;

    Heap_FreeToHeap(v1);
}

static void ov94_02240E50(BoxPokemon *param0, UnkStruct_ov94_0223BA88_sub2 *param1)
{
    param1->unk_03 = BoxPokemon_GetLevel(param0);
}

static void ov94_02240E5C(void *param0)
{
    UnkStruct_ov94_0223FD4C *v0 = param0;
    int v1;
    UnkStruct_ov94_02240FA0 *v2 = v0->unk_1114;

    for (v1 = 0; v1 < 30; v1++, v2++) {
        if (v2->unk_08) {
            DC_FlushRange(v2->unk_0C, ((4 * 4) * 0x20));
            GX_LoadOBJ(v2->unk_0C, v2->unk_00, ((4 * 4) * 0x20));

            CellActor_SetExplicitPalette(v2->unk_08, v2->unk_04);
        }
    }

    Heap_FreeToHeap(v0->unk_1114);
}

static void ov94_02240EAC(BoxPokemon *param0, CellActor *param1, CellActor *param2, u16 *param3, int param4, NARC *param5, UnkStruct_ov94_0223BA88_sub2 *param6, UnkStruct_ov94_02240FA0 *param7)
{
    int v0, v1, v2, v3;

    BoxPokemon_EnterDecryptionContext(param0);

    v0 = BoxPokemon_GetValue(param0, MON_DATA_SPECIES_EXISTS, NULL);
    *param3 = BoxPokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

    v3 = BoxPokemon_GetValue(param0, MON_DATA_FORM, NULL);
    v2 = BoxPokemon_GetValue(param0, MON_DATA_IS_EGG, NULL);
    v1 = BoxPokemon_GetValue(param0, MON_DATA_HELD_ITEM, NULL);

    param6->unk_00 = *param3;
    param6->unk_02 = BoxPokemon_GetValue(param0, MON_DATA_GENDER, NULL) + 1;

    if (v2) {
        param6->unk_03 = 0;
    }

    BoxPokemon_ExitDecryptionContext(param0, 1);

    if (v0) {
        ov94_02240DF8(*param3, v3, v2, param4, param1, param5, param7);
        CellActor_SetDrawFlag(param1, 1);

        if (v1 != 0) {
            CellActor_SetDrawFlag(param2, 1);

            if (Item_IsMail(v1)) {
                CellActor_SetAnim(param2, 41);
            } else {
                CellActor_SetAnim(param2, 40);
            }
        } else {
            CellActor_SetDrawFlag(param2, 0);
        }
    } else {
        CellActor_SetDrawFlag(param1, 0);
        CellActor_SetDrawFlag(param2, 0);

        param7->unk_08 = NULL;
    }
}

static void ov94_02240FA0(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    u16 v0[30], v1, v2;
    Pokemon *v3;
    BoxPokemon *v4;
    PCBoxes *v5 = param0->unk_00->unk_0C;
    NARC *v6;
    UnkStruct_ov94_02240FA0 *v7;

    param0->unk_1114 = v7 = Heap_AllocFromHeapAtEnd(3, sizeof(UnkStruct_ov94_02240FA0) * 30);
    v6 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 62);

    if ((param1 >= 0) && (param1 < 18)) {
        for (v1 = 0; v1 < 30; v1++) {
            ov94_02240E50(sub_02079C9C(v5, param1, v1), &param0->unk_1108->unk_00[v1]);
        }

        for (v1 = 0; v1 < 30; v1++) {
            param0->unk_1108->unk_00[v1].unk_00 = 0;
            ov94_02240EAC(sub_02079C9C(v5, param1, v1), param0->unk_E28[v1], param0->unk_EA0[v1], &v0[v1], v1, v6, &param0->unk_1108->unk_00[v1], &v7[v1]);

            if (v1 < 6) {
                CellActor_SetDrawFlag(param0->unk_F18[v1], 0);
            }
        }

        sub_02079AF4(v5, param1, param0->unk_BA4);
    } else {
        int v8 = Party_GetCurrentCount(param0->unk_00->unk_08);

        for (v1 = 0; v1 < v8; v1++) {
            v3 = Party_GetPokemonBySlotIndex(param0->unk_00->unk_08, v1);
            v4 = Pokemon_GetBoxPokemon(v3);

            ov94_02240E50(v4, &param0->unk_1108->unk_00[v1]);
            ov94_02240EAC(v4, param0->unk_E28[v1], param0->unk_EA0[v1], &v0[v1], v1, v6, &param0->unk_1108->unk_00[v1], &v7[v1]);

            if (Pokemon_GetValue(v3, MON_DATA_MAIL_ID, NULL)) {
                CellActor_SetDrawFlag(param0->unk_F18[v1], 1);
            } else {
                CellActor_SetDrawFlag(param0->unk_F18[v1], 0);
            }
        }

        for (; v1 < 30; v1++) {
            param0->unk_1108->unk_00[v1].unk_00 = 0;
            CellActor_SetDrawFlag(param0->unk_E28[v1], 0);
            CellActor_SetDrawFlag(param0->unk_EA0[v1], 0);
            v7[v1].unk_08 = NULL;

            if (v1 < 6) {
                CellActor_SetDrawFlag(param0->unk_F18[v1], 0);
            }
        }

        MessageLoader_GetStrbuf(param0->unk_B90, 89, param0->unk_BA4);
    }

    NARC_dtor(v6);
    BGL_FillWindow(&param0->unk_F8C, 0x0);

    ov94_02245900(&param0->unk_F8C, param0->unk_BA4, 0, 5, 1, TEXT_COLOR(1, 2, 0));

    if (param0->unk_24 == 6) {
        ov94_02241464(param0->unk_1108->unk_00, param0->unk_E28, &param0->unk_250[param0->unk_11C].unk_F0, v7);
    }

    param0->unk_1118 = ov94_02240E5C;
}

int ov94_022411D0(int param0)
{
    if (param0 == 18) {
        return 1;
    } else {
        return 0;
    }
}

BoxPokemon *ov94_022411DC(Party *param0, PCBoxes *param1, int param2, int param3)
{
    if (ov94_022411D0(param2)) {
        if (param3 > (Party_GetCurrentCount(param0) - 1)) {
            return NULL;
        }

        return Pokemon_GetBoxPokemon(Party_GetPokemonBySlotIndex(param0, param3));
    }

    return sub_02079C9C(param1, param2, param3);
}

static int ov94_0224121C(Party *param0, PCBoxes *param1, int param2, int param3)
{
    if (ov94_022411D0(param2)) {
        if (Party_GetCurrentCount(param0) < 2) {
            return 0;
        }
    }

    return 1;
}

static const u16 Unk_ov94_02245E34[] = {
    0x67,
    0x68,
    0x69,
    0x2E,
    0x2F,
    0x30,
    0x31,
    0x32,
    0x33,
    0x34
};

static int ov94_0224123C(BoxPokemon *param0)
{
    int v0, v1 = 0, v2;

    v2 = BoxPokemon_EnterDecryptionContext(param0);

    for (v0 = 0; v0 < 10; v0++) {
        v1 += BoxPokemon_GetValue(param0, Unk_ov94_02245E34[v0], NULL);
    }

    BoxPokemon_ExitDecryptionContext(param0, v2);

    if (v1) {
        return 1;
    }

    return 0;
}

static int ov94_02241278(BoxPokemon *param0)
{
    int v0;
    int v1, v2;

    v0 = BoxPokemon_EnterDecryptionContext(param0);

    {
        v1 = BoxPokemon_GetValue(param0, MON_DATA_SPECIES, NULL);
        v2 = BoxPokemon_GetValue(param0, MON_DATA_FORM, NULL);
    }

    BoxPokemon_ExitDecryptionContext(param0, v0);

    if (v2 > 0) {
        switch (v1) {
        case 487:
        case 492:
        case 479:
            return 1;
        }
    }

    return 0;
}

static int ov94_022412C8(BoxPokemon *param0)
{
    int v0;
    int v1;

    v0 = BoxPokemon_EnterDecryptionContext(param0);

    {
        v1 = BoxPokemon_GetValue(param0, MON_DATA_HELD_ITEM, NULL);
    }

    BoxPokemon_ExitDecryptionContext(param0, v0);

    switch (v1) {
    case 112:
        return 1;
    }

    return 0;
}

static int ov94_022412F4(Party *param0, PCBoxes *param1, int param2, int param3)
{
    BoxPokemon *v0 = ov94_022411DC(param0, param1, param2, param3);

    if (v0 == NULL) {
        return 0;
    }

    if (!BoxPokemon_GetValue(v0, MON_DATA_SPECIES_EXISTS, NULL)) {
        return 0;
    }

    if (BoxPokemon_GetValue(v0, MON_DATA_EGG_EXISTS, NULL)) {
        return 2;
    }

    return 1;
}

static int ov94_02241328(UnkStruct_ov94_0223BA88_sub2 *param0, UnkStruct_ov94_0223BA88_sub3 *param1)
{
    if (param0->unk_00 != param1->unk_00) {
        return 0;
    }

    if (param1->unk_02 != 3) {
        if (param1->unk_02 != param0->unk_02) {
            return 0;
        }
    }

    if (param0->unk_03 == 0) {
        return 0;
    }

    if (param1->unk_03 != 0) {
        if (param1->unk_03 > param0->unk_03) {
            return 0;
        }
    }

    if (param1->unk_04 != 0) {
        if (param1->unk_04 < param0->unk_03) {
            return 0;
        }
    }

    return 1;
}

static int ov94_02241384(BoxPokemon *param0, UnkStruct_ov94_0223BA88_sub3 *param1)
{
    UnkStruct_ov94_0223BA88_sub2 v0;

    v0.unk_00 = BoxPokemon_GetValue(param0, MON_DATA_SPECIES, NULL);
    v0.unk_02 = BoxPokemon_GetValue(param0, MON_DATA_GENDER, NULL) + 1;
    v0.unk_03 = BoxPokemon_GetLevel(param0);

    return ov94_02241328(&v0, param1);
}

static void ov94_022413BC(UnkStruct_ov94_0223BA88 *param0, UnkStruct_ov94_0223FD4C *param1)
{
    UnkStruct_ov94_0223BA88_sub2 v0;
    UnkStruct_ov94_0223BA88_sub3 v1;
    BoxPokemon *v2;

    v0.unk_00 = BoxPokemon_GetValue(param1->unk_114, MON_DATA_SPECIES, NULL);
    v0.unk_02 = BoxPokemon_GetValue(param1->unk_114, MON_DATA_GENDER, NULL) + 1;
    v0.unk_03 = BoxPokemon_GetLevel(param1->unk_114);

    param0->unk_EC = v0;

    ov94_022425A8(param0, param1);

    v2 = Pokemon_GetBoxPokemon((Pokemon *)param1->unk_250[param1->unk_11C].unk_00.unk_00);

    v1.unk_00 = BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL);
    v1.unk_02 = BoxPokemon_GetValue(v2, MON_DATA_GENDER, NULL) + 1;
    v1.unk_03 = 0;
    v1.unk_04 = 0;

    param0->unk_F0 = v1;
}

static void ov94_02241464(UnkStruct_ov94_0223BA88_sub2 *param0, CellActor **param1, UnkStruct_ov94_0223BA88_sub3 *param2, UnkStruct_ov94_02240FA0 *param3)
{
    int v0, v1;

    for (v1 = 0; v1 < 30; v1++) {
        if (param0[v1].unk_00 != 0) {
            if (ov94_02241328(&param0[v1], param2) == 0) {
                param3[v1].unk_04 += 3;
            }
        }
    }
}

BOOL ov94_02241498(Pokemon *param0)
{
    int v0 = Pokemon_GetValue(param0, MON_DATA_HELD_ITEM, NULL);

    if (Item_IsMail(v0)) {
        return 1;
    }

    return 0;
}
