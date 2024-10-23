#include "overlay072/ov72_0223D7A0.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay072/struct_ov72_0223DB98_decl.h"
#include "overlay072/struct_ov72_0223DB98_t.h"
#include "overlay072/struct_ov72_0223E2A8.h"
#include "overlay072/struct_ov72_0223E7D8.h"
#include "overlay072/struct_ov72_0223E80C.h"
#include "overlay072/struct_ov72_0223EAD8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "assert.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "savedata.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02015920.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202C7FC.h"

static void inline_ov72_0223E2A4(UnkStruct_ov72_0223DB98 *param0, int param1);
static void ov72_0223DA48(void *param0);
static void ov72_0223DA70(void);
static void ov72_0223DA90(BGL *param0);
static void ov72_0223DB98(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223DC34(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223DC6C(BGL *param0);
static void ov72_0223DCA8(UnkStruct_ov72_0223DB98 *param0, NARC *param1);
static void ov72_0223DDA8(void);
static void ov72_0223DDD8(UnkStruct_ov72_0223DB98 *param0, NARC *param1);
static void ov72_0223DF58(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E0A0(UnkStruct_ov72_0223DB98 *param0, OverlayManager *param1);
static void ov72_0223E260(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E2A4(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E2A8(UnkStruct_ov72_0223DB98 *param0);
static int ov72_0223E3C0(UnkStruct_ov72_0223DB98 *param0, int param1);
static void ov72_0223E408(UnkStruct_ov72_0223DB98 *param0);
static int ov72_0223E458(UnkStruct_ov72_0223DB98 *param0, int param1);
static int ov72_0223E488(UnkStruct_ov72_0223DB98 *param0, int param1);
static int ov72_0223E590(UnkStruct_ov72_0223DB98 *param0, int param1);
static int ov72_0223E5B0(UnkStruct_ov72_0223DB98 *param0, int param1);
static void ov72_0223E660(Window *param0, const u8 *param1, int param2, int param3, int *param4, int *param5, int param6, int param7);
static void ov72_0223E7D8(UnkStruct_ov72_0223E7D8 *param0, UnkStruct_ov72_0223E80C *param1);
static void ov72_0223E80C(Window *param0, UnkStruct_ov72_0223E7D8 *param1, UnkStruct_ov72_0223E80C *param2, int param3);
static void ov72_0223E8CC(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E8D0(u16 *param0);
static void ov72_0223E910(Window *param0, int param1, u32 param2, UnkStruct_ov72_0223DB98 *param3);
static void ov72_0223E914(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E930(UnkStruct_ov72_0223DB98 *param0, int param1);
static int ov72_0223E99C(int param0);
static void ov72_0223E388(CellActor **param0, int param1);
static void ov72_0223E3A8(CellActor **param0, BOOL param1);
static int ov72_0223E528(UnkStruct_ov72_0223DB98 *param0, int param1);
static void ov72_0223E430(BGL *param0, UnkStruct_02015920 *param1);
static void ov72_0223E9B4(u8 *param0, u8 *param1);
static void *ov72_0223E060(Window *param0, Strbuf *param1, int param2, u8 param3, const u32 param4);
static void ov72_0223EA18(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223EAD8(UnkStruct_ov72_0223EAD8 *param0);
static void ov72_0223E5E0(Window *param0, void *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9);

static int (*Unk_ov72_0223ED40[])(UnkStruct_ov72_0223DB98 *, int) = {
    NULL,
    ov72_0223E3C0,
    ov72_0223E458,
    ov72_0223E488,
    ov72_0223E590,
    ov72_0223E5B0,
    ov72_0223E528,
};

int ov72_0223D7A0(OverlayManager *param0, int *param1)
{
    UnkStruct_ov72_0223DB98 *v0;
    NARC *v1;

    switch (*param1) {
    case 0:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(3, 39, 0x40000);

        v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov72_0223DB98), 39);
        memset(v0, 0, sizeof(UnkStruct_ov72_0223DB98));
        v0->unk_00 = sub_02018340(39);
        v1 = NARC_ctor(NARC_INDEX_GRAPHIC__MYSIGN, 39);
        v0->unk_10 = StringTemplate_Default(39);
        v0->unk_14 = MessageLoader_Init(0, 26, 425, 39);

        SetAutorepeat(4, 8);
        ov72_0223DA70();
        ov72_0223DA90(v0->unk_00);
        sub_0200F174(0, 1, 1, 0x0, 16, 1, 39);

        {
            SaveData *v2 = (SaveData *)OverlayManager_Args(param0);

            v0->unk_5BFC = (u8 *)sub_0202C840(sub_0202C834(v2));
            v0->records = (GameRecords *)SaveData_GetGameRecordsPtr((SaveData *)OverlayManager_Args(param0));
            v0->unk_0C = (Options *)SaveData_Options((SaveData *)OverlayManager_Args(param0));
        }

        ov72_0223DCA8(v0, v1);

        sub_0201E3D8();
        sub_0201E450(1);
        SetMainCallback(ov72_0223DA48, v0->unk_00);
        Font_InitManager(FONT_SUBSCREEN, 39);

        ov72_0223DB98(v0);
        ov72_0223DDA8();
        ov72_0223DDD8(v0, v1);
        ov72_0223DF58(v0);
        ov72_0223E0A0(v0, param0);

        sub_02004550(56, 0, 0);
        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
        NARC_dtor(v1);
        (*param1)++;
        break;
    case 1:
        v0 = OverlayManager_Data(param0);
        (*param1) = 0;
        return 1;
        break;
    }

    return 0;
}

int ov72_0223D920(OverlayManager *param0, int *param1)
{
    UnkStruct_ov72_0223DB98 *v0 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done()) {
            *param1 = 1;
        }
        break;
    case 1:

        if (Unk_ov72_0223ED40[v0->unk_370] != NULL) {
            *param1 = (*Unk_ov72_0223ED40[v0->unk_370])(v0, *param1);
        }

        ov72_0223E8D0(&v0->unk_437C);
        break;
    case 2:
        if (ScreenWipe_Done()) {
            return 1;
        }
        break;
    }

    CellActorCollection_Update(v0->unk_3C);

    return 0;
}

int ov72_0223D984(OverlayManager *param0, int *param1)
{
    UnkStruct_ov72_0223DB98 *v0 = OverlayManager_Data(param0);
    int v1;

    ov72_0223E9B4(v0->unk_5BFC, v0->unk_328.unk_0C);

    SetMainCallback(NULL, NULL);
    sub_0200A4E4(v0->unk_1DC[0][0]);
    sub_0200A4E4(v0->unk_1DC[1][0]);
    sub_0200A6DC(v0->unk_1DC[0][1]);
    sub_0200A6DC(v0->unk_1DC[1][1]);

    for (v1 = 0; v1 < 4; v1++) {
        SpriteResourceCollection_Delete(v0->unk_1CC[v1]);
    }

    CellActorCollection_Delete(v0->unk_3C);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();

    ov72_0223E260(v0);
    Font_Free(FONT_SUBSCREEN);
    ov72_0223DC6C(v0->unk_00);
    sub_0201E530();
    MessageLoader_Free(v0->unk_14);
    StringTemplate_Free(v0->unk_10);
    ov72_0223DC34(v0);
    OverlayManager_FreeData(param0);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    SetMainCallback(NULL, NULL);
    Heap_Destroy(39);

    return 1;
}

static void ov72_0223DA48(void *param0)
{
    sub_0201DCAC();
    sub_0200A858();
    sub_0201C2B8((BGL *)param0);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov72_0223DA70(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
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

static void ov72_0223DA90(BGL *param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
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
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
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
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v2, 0);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
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
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v5, 0);
    }

    sub_02019690(0, 32, 0, 39);
    sub_02019690(4, 32, 0, 39);
}

static void ov72_0223DB98(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_18[v0] = Strbuf_Init(7 + 1, 39);
        param0->unk_4391[v0].unk_10_4 = 0;
        param0->unk_43E6[v0].unk_02 = 0;
    }

    param0->unk_2C = Strbuf_Init((10 * 2), 39);
    param0->unk_30 = Strbuf_Init((20 * 2), 39);
    param0->unk_34 = Strbuf_Init((40 * 2), 39);
    param0->unk_437E = 0;
    param0->unk_370 = 1;

    MessageLoader_GetStrbuf(param0->unk_14, 12, param0->unk_2C);
    MessageLoader_GetStrbuf(param0->unk_14, 9, param0->unk_30);

    param0->unk_5D00 = sub_02015920(39);

    MI_CpuClearFast(&param0->unk_5D04, sizeof(UnkStruct_ov72_0223EAD8));
}

static void ov72_0223DC34(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;

    sub_02015938(param0->unk_5D00);

    for (v0 = 0; v0 < 5; v0++) {
        Strbuf_Free(param0->unk_18[v0]);
    }

    Strbuf_Free(param0->unk_34);
    Strbuf_Free(param0->unk_30);
    Strbuf_Free(param0->unk_2C);
}

static void ov72_0223DC6C(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    Heap_FreeToHeap(param0);
}

static void ov72_0223DCA8(UnkStruct_ov72_0223DB98 *param0, NARC *param1)
{
    BGL *v0 = param0->unk_00;

    sub_02007130(param1, 0, 0, 0, 16 * 2 * 3, 39);
    sub_02007130(param1, 2, 4, 0, 16 * 2 * 2, 39);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 39);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, 39);
    sub_02019690(1, 32, 0, 39);
    sub_020070E8(param1, 3, v0, 2, 0, 32 * 8 * 0x20, 1, 39);
    sub_0200710C(param1, 5, v0, 2, 0, 32 * 24 * 2, 1, 39);
    sub_020070E8(param1, 4, v0, 5, 0, 32 * 8 * 0x20, 1, 39);
    sub_0200710C(param1, 6, v0, 5, 0, 32 * 24 * 2, 1, 39);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(param0->unk_0C), 39);
    sub_0200DAA4(v0, 0, 1 + (18 + 12), 11, 0, 39);
}

static void ov72_0223DDA8(void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            20, 2048, 2048, 39
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(20, 39);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov72_0223DDD8(UnkStruct_ov72_0223DB98 *param0, NARC *param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, 39);

    param0->unk_3C = sub_020095C4(50, &param0->unk_40, 39);

    sub_0200964C(&param0->unk_40, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1CC[v0] = SpriteResourceCollection_New(2, v0, 39);
    }

    param0->unk_1DC[0][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1CC[0], param1, 7, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 39);
    param0->unk_1DC[0][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1CC[1], param1, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 39);
    param0->unk_1DC[0][2] = SpriteResourceCollection_AddFrom(param0->unk_1CC[2], param1, 8, 1, 0, 2, 39);
    param0->unk_1DC[0][3] = SpriteResourceCollection_AddFrom(param0->unk_1CC[3], param1, 9, 1, 0, 3, 39);
    param0->unk_1DC[1][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1CC[0], param1, 7, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, 39);
    param0->unk_1DC[1][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1CC[1], param1, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 3, 39);
    param0->unk_1DC[1][2] = SpriteResourceCollection_AddFrom(param0->unk_1CC[2], param1, 8, 1, 1, 2, 39);
    param0->unk_1DC[1][3] = SpriteResourceCollection_AddFrom(param0->unk_1CC[3], param1, 9, 1, 1, 3, 39);

    sub_0200A328(param0->unk_1DC[0][0]);
    sub_0200A328(param0->unk_1DC[1][0]);
    sub_0200A5C8(param0->unk_1DC[0][1]);
    sub_0200A5C8(param0->unk_1DC[1][1]);
}

static const u16 Unk_ov72_0223EB3C[1][3] = {
    { 0xE0, 0xAF, 0x0 }
};

static void ov72_0223DF58(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;

    sub_020093B4(&param0->unk_1FC, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1CC[0], param0->unk_1CC[1], param0->unk_1CC[2], param0->unk_1CC[3], NULL, NULL);
    sub_020093B4(&param0->unk_220, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1CC[0], param0->unk_1CC[1], param0->unk_1CC[2], param0->unk_1CC[3], NULL, NULL);

    {
        CellActorInitParamsEx v1;

        v1.collection = param0->unk_3C;
        v1.resourceData = &param0->unk_1FC;
        v1.position.z = 0;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.affineZRotation = 0;
        v1.priority = 1;
        v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.heapID = 39;

        for (v0 = 0; v0 < 1; v0++) {
            v1.resourceData = &param0->unk_220;
            v1.position.x = FX32_ONE * (Unk_ov72_0223EB3C[v0][0]);
            v1.position.y = FX32_ONE * (Unk_ov72_0223EB3C[v0][1]);

            param0->unk_2B4[v0] = CellActorCollection_AddEx(&v1);

            CellActor_SetAnimateFlag(param0->unk_2B4[v0], 1);
            CellActor_SetAnim(param0->unk_2B4[v0], Unk_ov72_0223EB3C[v0][2]);
            CellActor_SetExplicitPalette(param0->unk_2B4[v0], 0);

            if (v0 == 0) {
                CellActor_SetExplicitPriority(param0->unk_2B4[v0], 2);
            }
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void *ov72_0223E060(Window *param0, Strbuf *param1, int param2, u8 param3, const u32 param4)
{
    int v0, v1;

    v1 = Font_CalcStrbufWidth(FONT_SUBSCREEN, param1, 0);
    v0 = ((param0->unk_07 * 8) - v1) / 2;

    Text_AddPrinterWithParamsAndColor(param0, param3, param1, v0, param2, TEXT_SPEED_NO_TRANSFER, param4, NULL);

    return param0->unk_0C;
}

static void ov72_0223E0A0(UnkStruct_ov72_0223DB98 *param0, OverlayManager *param1)
{
    BGL_AddWindow(param0->unk_00, &param0->unk_338, 0, 2, 1, 27, 4, 13, 1 + (18 + 12) + 9);
    BGL_FillWindow(&param0->unk_338, 0xf0f);
    BGL_AddWindow(param0->unk_00, &param0->unk_328, 1, 4, 9, 24, 8, 1, 1);
    BGL_FillWindow(&param0->unk_328, 0x202);
    BGL_AddWindow(param0->unk_00, &param0->unk_348, 1, 26, 21, 8, 2, 2, 1 + 24 * 8);
    BGL_FillWindow(&param0->unk_348, 0x0);

    {
        void *v0;
        int v1;

        v0 = ov72_0223E060(&param0->unk_348, param0->unk_2C, 1, FONT_SUBSCREEN, TEXT_COLOR(14, 7, 2));

        DC_FlushRange(v0, 0x20 * 8 * 2);

        for (v1 = 0; v1 < 2; v1++) {
            sub_02012C60(&param0->unk_348, 4, 2, 4 * v1, 0, (char *)param0->unk_5C00);
            DC_FlushRange(param0->unk_5C00, (0x20 * 4 * 2));
            GX_LoadOBJ(param0->unk_5C00, 0 + v1 * (0x20 * 4 * 2), (0x20 * 4 * 2));
        }
    }

    BGL_AddWindow(param0->unk_00, &param0->unk_358, 1, 2, 2, 28, 2, 13, ((1 + 24 * 8) + 8 * 2));

    {
        int v2 = Font_CalcStrbufWidth(FONT_MESSAGE, param0->unk_30, 0);
        int v3 = (28 * 8 - v2) / 2;

        BGL_FillWindow(&param0->unk_358, 0x0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_358, FONT_MESSAGE, param0->unk_30, v3, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    {
        int v4;

        for (v4 = 0; v4 < 5; v4++) {
            BGL_AddWindow(param0->unk_00, &param0->unk_2D8[v4], 4, 24 / 8 + 2, 32 / 8 + v4 * 4 - 1, 10, 2, 13, 1 + v4 * (10 * 2));
            BGL_FillWindow(&param0->unk_2D8[v4], 0);
        }

        ov72_0223E910(param0->unk_2D8, 0, TEXT_COLOR(14, 13, 15), param0);
    }
}

static void ov72_0223E260(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        BGL_DeleteWindow(&param0->unk_2D8[v0]);
    }

    BGL_DeleteWindow(&param0->unk_358);
    BGL_DeleteWindow(&param0->unk_348);
    BGL_DeleteWindow(&param0->unk_328);
    BGL_DeleteWindow(&param0->unk_338);
}

static void ov72_0223E2A4(UnkStruct_ov72_0223DB98 *param0)
{
    int v0 = 0;
    int v1 = 0;

    if (v0) {
        inline_ov72_0223E2A4(param0, v1);
    }
}

static void inline_ov72_0223E2A4(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    VecFx32 v0;
}

static const TouchScreenRect Unk_ov72_0223EB4A[] = {
    { 0x96, 0xBD, 0xC0, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 },
    { 0x96, 0xBD, 0x0, 0x5F },
    { 0x96, 0xBD, 0x60, 0xBF }
};

static const TouchScreenRect Unk_ov72_0223EB42[] = {
    { 0x48, 0x88, 0x20, 0xE0 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static void ov72_0223E2A8(UnkStruct_ov72_0223DB98 *param0)
{
    int v0 = -1, v1;

    v0 = sub_02022664(Unk_ov72_0223EB4A);

    if (v0 != 0xffffffff) {
        if (v0 == 0) {
            if (param0->unk_370 == 1) {
                ov72_0223E930(param0, 10);
                param0->unk_370 = 2;
                ov72_0223E3A8(param0->unk_2B4, 1);
                Sound_PlayEffect(1501);
            }
        } else {
            param0->unk_437E = v0;
            ov72_0223E388(param0->unk_2B4, v0);
        }
    }

    v1 = sub_02022644(Unk_ov72_0223EB42);

    if (v1 != 0xffffffff) {
        ov72_0223EA18(param0);
    }

    {
        UnkStruct_ov72_0223E2A8 v2;
        int v3;

        if (sub_0201E564(&v2, 4, 1) == 1) {
            for (v3 = 0; v3 < v2.unk_00; v3++) {
                param0->unk_4380.unk_00[v3] = v2.unk_02[v3].x;
                param0->unk_4380.unk_08[v3] = v2.unk_02[v3].y;
            }

            param0->unk_4380.unk_10_4 = v2.unk_00;
            param0->unk_4380.unk_10_0 = param0->unk_437E;
        }
    }
}

static void ov72_0223E388(CellActor **param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 1; v0++) {
        if (v0 == param1) {
            CellActor_SetAnim(param0[v0], Unk_ov72_0223EB3C[v0][2] + 1);
        } else {
            CellActor_SetAnim(param0[v0], Unk_ov72_0223EB3C[v0][2]);
        }
    }
}

static void ov72_0223E3A8(CellActor **param0, BOOL param1)
{
    if (param1 == 1) {
        CellActor_SetAnim(param0[0], Unk_ov72_0223EB3C[0][2] + 1);
    } else {
        CellActor_SetAnim(param0[0], Unk_ov72_0223EB3C[0][2]);
    }
}

static int ov72_0223E3C0(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    ov72_0223E2A8(param0);
    ov72_0223E910(param0->unk_2D8, 0, TEXT_COLOR(14, 12, 15), param0);
    ov72_0223E914(param0);
    ov72_0223E8CC(param0);
    ov72_0223E80C(&param0->unk_328, param0->unk_4391, param0->unk_43E6, 1);

    return param1;
}

static void ov72_0223E408(UnkStruct_ov72_0223DB98 *param0)
{
    ov72_0223E2A4(param0);
    ov72_0223E8CC(param0);
    ov72_0223E80C(&param0->unk_328, param0->unk_4391, param0->unk_43E6, 0);
}

static void ov72_0223E430(BGL *param0, UnkStruct_02015920 *param1)
{
    UnkStruct_02015958 v0;

    v0.unk_00 = param0;
    v0.unk_04 = 0;
    v0.unk_08 = (1 + (18 + 12) + 9 + 27 * 4) + 8 * 4;
    v0.unk_0C = 8;
    v0.unk_10 = 25;
    v0.unk_11 = 6;

    sub_02015958(param1, &v0);
}

static int ov72_0223E458(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    if (ov72_0223E99C(param0->unk_38)) {
        UnkStruct_02015958 v0;

        ov72_0223E430(param0->unk_00, param0->unk_5D00);

        param0->unk_370 = 3;
    }

    ov72_0223E408(param0);
    return param1;
}

static int ov72_0223E488(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    int v0;

    v0 = sub_020159FC(param0->unk_5D00);

    switch (v0) {
    case 1:
        GameRecords_IncrementTrainerScore(param0->records, TRAINER_SCORE_EVENT_UNK_04);
        GameRecords_IncrementRecordValue(param0->records, RECORD_UNK_114);
        sub_0200E084(&param0->unk_338, 1);
        sub_02015A54(param0->unk_5D00);
        sub_0200F174(0, 0, 0, 0x0, 16, 1, 39);
        return 2;
        break;
    case 2:
        param0->unk_370 = 4;
        ov72_0223E3A8(param0->unk_2B4, 0);
        sub_0200E084(&param0->unk_338, 1);
        sub_02015A54(param0->unk_5D00);
        break;
    }

    param0->unk_4380.unk_10_4 = 0;
    ov72_0223E408(param0);

    return param1;
}

static int ov72_0223E528(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    int v0 = sub_020159FC(param0->unk_5D00);

    switch (v0) {
    case 1:
        param0->unk_370 = 1;

        sub_0200E084(&param0->unk_338, 1);
        sub_02015A54(param0->unk_5D00);
        BGL_FillWindow(&param0->unk_328, 0x202);
        sub_0201A954(&param0->unk_328);
        break;
    case 2:
        param0->unk_370 = 1;
        sub_0200E084(&param0->unk_338, 1);
        sub_02015A54(param0->unk_5D00);
        break;
    }

    return param1;
}

static int ov72_0223E590(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    ov72_0223E930(param0, 11);
    param0->unk_370 = 5;
    ov72_0223E408(param0);

    return param1;
}

static int ov72_0223E5B0(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    if (ov72_0223E99C(param0->unk_38)) {
        param0->unk_370 = 6;
        ov72_0223E430(param0->unk_00, param0->unk_5D00);
    }

    ov72_0223E408(param0);
    return param1;
}

static const u8 Unk_ov72_0223EC30[2][8][16] = {
    {
        {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x1,
            0x0,
            0x0,
            0x10,
            0x1,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
        },
        {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        {
            0x0,
            0x0,
            0x11,
            0x11,
            0x10,
            0x1,
            0x10,
            0x11,
            0x10,
            0x1,
            0x11,
            0x11,
            0x0,
            0x0,
        },
        {
            0x0,
            0x0,
            0x22,
            0x22,
            0x20,
            0x2,
            0x22,
            0x22,
            0x20,
            0x2,
            0x22,
            0x22,
            0x0,
            0x0,
        },
    },
};

static void ov72_0223E5E0(Window *param0, void *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    if (param6 < 0) {
        int v0;

        v0 = param6 * -1;

        if (v0 > param8) {
            v0 = param8;
        }

        param6 = 0;
        param2 += v0;
        param4 -= v0;
        param8 -= v0;
    }

    if (param7 < 0) {
        int v1;

        v1 = param7 * -1;

        if (v1 > param9) {
            v1 = param9;
        }

        param7 = 0;
        param3 += v1;
        param5 -= v1;
        param9 -= v1;
    }

    sub_0201ADDC(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9);
}

static void ov72_0223E660(Window *param0, const u8 *param1, int param2, int param3, int *param4, int *param5, int param6, int param7)
{
    int v0, v1, v2, v3;
    int v4 = *param4;
    int v5 = *param5;
    int v6 = param2;
    int v7 = param3;

    if ((param6 == 0) && (param7 == 0)) {
        *param4 = param2;
        *param5 = param3;
        return;
    }

    v0 = MATH_IAbs(v6 - v4);
    v1 = MATH_IAbs(v7 - v5);

    if (v0 > v1) {
        if (v4 > v6) {
            v3 = (v5 > v7) ? 1 : -1;
            v2 = v4;
            v4 = v6;
            v6 = v2;
            v5 = v7;
        } else {
            v3 = (v5 < v7) ? 1 : -1;
        }

        ov72_0223E5E0(param0, (void *)param1, 0, 0, 4, 4, v4, v5, 4, 4);
        v2 = v0 >> 1;

        while (++v4 <= v6) {
            if ((v2 -= v1) < 0) {
                v2 += v0;
                v5 += v3;
            }

            ov72_0223E5E0(param0, (void *)param1, 0, 0, 4, 4, v4, v5, 4, 4);
        }
    } else {
        if (v5 > v7) {
            v3 = (v4 > v6) ? 1 : -1;
            v2 = v5;
            v5 = v7;
            v7 = v2;
            v4 = v6;
        } else {
            v3 = (v4 < v6) ? 1 : -1;
        }

        ov72_0223E5E0(param0, (void *)param1, 0, 0, 4, 4, v4, v5, 4, 4);
        v2 = v1 >> 1;

        while (++v5 <= v7) {
            if ((v2 -= v0) < 0) {
                v2 += v1;
                v4 += v3;
            }

            ov72_0223E5E0(param0, (void *)param1, 0, 0, 4, 4, v4, v5, 4, 4);
        }
    }

    *param4 = param2;
    *param5 = param3;
}

static void ov72_0223E7D8(UnkStruct_ov72_0223E7D8 *param0, UnkStruct_ov72_0223E80C *param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param1[v0].unk_02 = param0[v0].unk_10_4;

        if (param0[v0].unk_10_4 != 0) {
            param1[v0].unk_00 = param0[v0].unk_00[param0[v0].unk_10_4 - 1];
            param1[v0].unk_01 = param0[v0].unk_08[param0[v0].unk_10_4 - 1];
        }
    }
}

static void ov72_0223E80C(Window *param0, UnkStruct_ov72_0223E7D8 *param1, UnkStruct_ov72_0223E80C *param2, int param3)
{
    int v0, v1, v2, v3, v4 = 0, v5, v6;

    for (v2 = 0; v2 < 5; v2++) {
        if (param1[v2].unk_10_4 != 0) {
            if (param2[v2].unk_02) {
                v5 = param2[v2].unk_00 - 4 * 8;
                v6 = param2[v2].unk_01 - 9 * 8;
            }

            for (v3 = 0; v3 < param1[v2].unk_10_4; v3++) {
                v0 = param1[v2].unk_00[v3] - 4 * 8;
                v1 = param1[v2].unk_08[v3] - 9 * 8;

                ov72_0223E660(param0, Unk_ov72_0223EC30[0][param1[v2].unk_10_0], v0, v1, &v5, &v6, v3, param2[v2].unk_02);

                v4 = 1;
            }
        }
    }

    if (v4 && param3) {
        sub_0201A954(param0);
    }

    ov72_0223E7D8(param1, param2);

    for (v2 = 0; v2 < 5; v2++) {
        param1[v2].unk_10_4 = 0;
    }
}

static void ov72_0223E8CC(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;
    UnkStruct_ov72_0223E7D8 *v1 = param0->unk_4391;
}

static void ov72_0223E8D0(u16 *param0)
{
    fx32 v0;
    GXRgb v1;
    int v2, v3, v4;

    *param0 += 20;

    if (*param0 > 360) {
        *param0 = 0;
    }

    v0 = sub_0201D250(*param0);
    v3 = 15 + (v0 * 10) / FX32_ONE;
    v1 = GX_RGB(29, v3, 0);

    GX_LoadOBJPltt((u16 *)&v1, 12 * 2, 2);
}

static void ov72_0223E910(Window *param0, int param1, u32 param2, UnkStruct_ov72_0223DB98 *param3)
{
    int v0, v1;

    return;

    for (v0 = 0; v0 < 5; v0++) {
        BGL_WindowColor(&param0[v0], 0, 0, 0, 10 * 8, 2 * 8);
    }

    for (v0 = 0; v0 < 5; v0++) {
        Text_AddPrinterWithParamsAndColor(&param0[v0], FONT_MESSAGE, param3->unk_18[v0], 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 15), NULL);
        sub_0201A954(&param0[v0]);
    }
}

static void ov72_0223E914(UnkStruct_ov72_0223DB98 *param0)
{
    param0->unk_4391[0] = param0->unk_4380;
}

static void ov72_0223E930(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    Strbuf *v0;

    v0 = Strbuf_Init((40 * 2), 39);

    MessageLoader_GetStrbuf(param0->unk_14, param1, v0);
    StringTemplate_Format(param0->unk_10, param0->unk_34, v0);
    Strbuf_Free(v0);
    BGL_FillWindow(&param0->unk_338, 0xf0f);
    sub_0200E060(&param0->unk_338, 0, 1, 10);

    param0->unk_38 = Text_AddPrinterWithParams(&param0->unk_338, FONT_MESSAGE, param0->unk_34, 0, 0, Options_TextFrameDelay(param0->unk_0C), NULL);
}

static int ov72_0223E99C(int param0)
{
    if (Text_IsPrinterActive(param0) == 0) {
        return 1;
    }

    return 0;
}

static void ov72_0223E9B4(u8 *param0, u8 *param1)
{
    int v0, v1, v2 = 0;

    v1 = 0;
    *param0 = 0;

    for (v0 = 0; v0 < 24 * 8 * 32; v0++) {
        int v3;

        v3 = param1[v0] & 0xf;

        if (v3 == 1) {
            *param0 |= (1 << v1);
        }

        v1++;
        v3 = param1[v0] >> 4;

        if (v3 == 1) {
            *param0 |= (1 << v1);
        }

        v1++;

        if (v1 == 8) {
            v2++;
            param0++;
            *param0 = 0;
            v1 = 0;
        }

        if (v2 >= 24 * 8 * 32) {
            GF_ASSERT(FALSE);
        }
    }
}

static void ov72_0223EA18(UnkStruct_ov72_0223DB98 *param0)
{
    BOOL v0;
    int v1;

    v0 = 0;

    if ((gCoreSys.touchX != 0xffff) && (gCoreSys.touchY != 0xffff) && (param0->unk_5D0C != 0xffff) && (param0->unk_5D10 != 0xffff)) {
        if (param0->unk_5D0C > gCoreSys.touchX) {
            v1 = param0->unk_5D0C - gCoreSys.touchX;
            param0->unk_5D04.unk_02 = -1;
        } else {
            v1 = gCoreSys.touchX - param0->unk_5D0C;
            param0->unk_5D04.unk_02 = 1;
        }

        if ((v1 >= 3) && (v1 <= 40)) {
            if (param0->unk_5D10 > gCoreSys.touchY) {
                v1 = param0->unk_5D10 - gCoreSys.touchY;
                param0->unk_5D04.unk_03 = -1;
            } else {
                v1 = gCoreSys.touchY - param0->unk_5D10;
                param0->unk_5D04.unk_03 = 1;
            }

            if (v1 <= 40) {
                v0 = 1;
                ov72_0223EAD8(&param0->unk_5D04);
            } else {
                (void)0;
            }
        } else if (v1 <= 40) {
            if (param0->unk_5D10 > gCoreSys.touchY) {
                v1 = param0->unk_5D10 - gCoreSys.touchY;
                param0->unk_5D04.unk_03 = -1;
            } else {
                v1 = gCoreSys.touchY - param0->unk_5D10;
                param0->unk_5D04.unk_03 = 1;
            }

            if ((v1 >= 3) && (v1 <= 40)) {
                v0 = 1;
                ov72_0223EAD8(&param0->unk_5D04);
            } else {
                (void)0;
            }
        }
    }

    param0->unk_5D0C = gCoreSys.touchX;
    param0->unk_5D10 = gCoreSys.touchY;
}

static void ov72_0223EAD8(UnkStruct_ov72_0223EAD8 *param0)
{
    if ((param0->unk_00 == 0) && (param0->unk_01 == 0)) {
        if (!Sound_IsEffectPlaying(1690)) {
            Sound_PlayEffect(1690);
        }
    }

    if ((param0->unk_00 * param0->unk_02 < 0) || (param0->unk_01 * param0->unk_03 < 0)) {
        if (!Sound_IsEffectPlaying(1690)) {
            Sound_PlayEffect(1690);
        }
    }

    param0->unk_00 = param0->unk_02;
    param0->unk_01 = param0->unk_03;
    param0->unk_02 = 0;
    param0->unk_03 = 0;
}
