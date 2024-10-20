#include "overlay058/ov58_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02095EAC_decl.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0203DDFC.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02095EAC_t.h"
#include "struct_defs/struct_02095FE4.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay058/struct_ov58_021D2754.h"
#include "overlay058/struct_ov58_021D2820.h"
#include "overlay072/struct_ov72_0223E2A8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "journal.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "touch_screen.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02015920.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_02030EE0.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_02095E98.h"

typedef struct {
    int (*unk_00)(UnkStruct_02095EAC *, int);
    int unk_04;
} UnkStruct_ov58_021D3180;

static void ov58_021D115C(void *param0);
static void ov58_021D1184(void);
static void ov58_021D11A4(BGL *param0);
static void ov58_021D12C4(UnkStruct_02095EAC *param0);
static void ov58_021D13B4(UnkStruct_02095EAC *param0);
static void ov58_021D13F0(BGL *param0);
static void ov58_021D142C(UnkStruct_02095EAC *param0, NARC *param1);
static void ov58_021D1524(void);
static void ov58_021D1554(UnkStruct_02095EAC *param0, NARC *param1);
static void ov58_021D16D8(UnkStruct_02095EAC *param0);
static void ov58_021D18AC(UnkStruct_02095EAC *param0, OverlayManager *param1);
static void ov58_021D19D4(UnkStruct_02095EAC *param0);
static void ov58_021D1A10(CellActor *param0, int param1, int param2);
static void ov58_021D1A80(UnkStruct_02095EAC *param0);
static int ov58_021D1CF4(UnkStruct_02095EAC *param0, int param1);
static void ov58_021D1D40(UnkStruct_02095EAC *param0);
static int ov58_021D1DFC(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D1E4C(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D1FB0(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D1FD4(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D206C(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D20A8(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D20C8(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D20F4(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D2130(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D2180(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D223C(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D2270(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D2298(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D22DC(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D22FC(UnkStruct_02095EAC *param0, int param1);
static void ov58_021D25A8(Window *param0, const u8 *param1, int param2, int param3, int *param4, int *param5, int param6, int param7);
static void ov58_021D2720(UnkStruct_ov58_021D2820 *param0, UnkStruct_ov58_021D2754 *param1);
static void ov58_021D2754(Window *param0, UnkStruct_ov58_021D2820 *param1, UnkStruct_ov58_021D2754 *param2, int param3);
static void ov58_021D2820(UnkStruct_02095EAC *param0);
static void ov58_021D2888(u16 *param0);
static void ov58_021D28E4(Window *param0, int param1, u32 param2, UnkStruct_02095EAC *param3);
static void ov58_021D29C8(UnkStruct_02095EAC *param0);
static int ov58_021D2A54(UnkStruct_02095EAC *param0);
static void ov58_021D2A98(UnkStruct_02095EAC *param0, int param1, int param2);
static int ov58_021D2B0C(int param0);
static void ov58_021D2B2C(UnkStruct_02095EAC *param0);
static int ov58_021D28C8(void);
static int ov58_021D2320(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D23C8(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D2380(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D2A30(void);
static int ov58_021D1DBC(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D1D64(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D1DC8(UnkStruct_02095EAC *param0, int param1);
static void ov58_021D1CAC(CellActor **param0, int param1);
static void ov58_021D1CDC(CellActor **param0, BOOL param1);
static void ov58_021D2528(Window *param0, void *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9);
static void ov58_021D2B3C(UnkStruct_02095EAC *param0, int param1);
static int ov58_021D2B5C(UnkStruct_02095EAC *param0);
static int ov58_021D22D8(UnkStruct_02095EAC *param0, int param1);
static void ov58_021D2CB0(UnkStruct_02095EAC *param0, int param1);
static void ov58_021D2CB8(UnkStruct_02095EAC *param0, int param1);
static BOOL ov58_021D2CEC(UnkStruct_02095EAC *param0, UnkStruct_02015958 *param1);
static void ov58_021D2D10(UnkStruct_02095EAC *param0);
static int ov58_021D2D30(UnkStruct_02095EAC *param0);
static void ov58_021D2D4C(UnkStruct_ov58_021D2820 *param0, UnkStruct_ov72_0223E2A8 *param1, int param2, int param3);

static UnkStruct_ov58_021D3180 Unk_ov58_021D3180[] = {
    { NULL, 0x1 },
    { ov58_021D1D64, 0x0 },
    { ov58_021D1DBC, 0x0 },
    { ov58_021D1DC8, 0x0 },
    { ov58_021D1CF4, 0x0 },
    { ov58_021D1DFC, 0x1 },
    { ov58_021D1E4C, 0x1 },
    { ov58_021D1FB0, 0x1 },
    { ov58_021D1FD4, 0x1 },
    { ov58_021D206C, 0x1 },
    { ov58_021D20A8, 0x1 },
    { ov58_021D20C8, 0x1 },
    { ov58_021D20F4, 0x1 },
    { ov58_021D2130, 0x1 },
    { ov58_021D2180, 0x1 },
    { ov58_021D223C, 0x1 },
    { ov58_021D2270, 0x1 },
    { ov58_021D2298, 0x1 },
    { ov58_021D22D8, 0x1 },
    { ov58_021D22DC, 0x1 },
    { ov58_021D22FC, 0x1 },
    { ov58_021D2320, 0x1 },
    { ov58_021D2380, 0x1 },
    { ov58_021D23C8, 0x1 }
};

int ov58_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_02095EAC *v0;
    NARC *v1;

    switch (*param1) {
    case 0:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(3, 39, 0x40000);

        v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_02095EAC), 39);
        memset(v0, 0, sizeof(UnkStruct_02095EAC));
        v0->unk_00 = sub_02018340(39);

        v0->unk_0C = StringTemplate_Default(39);
        v0->unk_10 = MessageLoader_Init(0, 26, 425, 39);

        SetAutorepeat(4, 8);

        ov58_021D1184();
        ov58_021D11A4(v0->unk_00);

        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        sub_0200F174(0, 17, 17, 0x0, 16, 1, 39);

        {
            UnkStruct_0203DDFC *v2 = (UnkStruct_0203DDFC *)OverlayManager_Args(param0);
            v0->unk_08 = v2;
        }

        v1 = NARC_ctor(NARC_INDEX_GRAPHIC__OEKAKI, 39);

        ov58_021D142C(v0, v1);

        sub_0201E3D8();
        sub_0201E450(2);
        SetMainCallback(ov58_021D115C, v0->unk_00);

        ov58_021D12C4(v0);
        ov58_021D1524();
        ov58_021D1554(v0, v1);
        ov58_021D16D8(v0);
        ov58_021D18AC(v0, param0);

        sub_02004550(52, 0, 0);

        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

        sub_02095E98(v0);
        CommMan_SetErrorHandling(0, 1);

        if (CommSys_CurNetId() == 0) {
            sub_02037B58(3);
        }

        sub_02039734();

        if (CommSys_CurNetId() == 0) {
            sub_0205BEA8(1);
            sub_02033ED4(1);
        }

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

int ov58_021D0F08(OverlayManager *param0, int *param1)
{
    UnkStruct_02095EAC *v0 = OverlayManager_Data(param0);

    if ((CommSys_CurNetId() == 0) && (v0->unk_9418 != 0)) {
        v0->unk_9418 &= sub_020318EC();
    }

    v0->unk_364 = *param1;

    ov58_021D2CB8(v0, *param1);

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done()) {
            if (CommSys_CurNetId() != 0) {
                if (ov58_021D2A30() >= 2) {
                    CommSys_SendData(128, NULL, 0);
                    *param1 = 1;
                }
                break;
            } else {
                *param1 = 1;
            }
        }
        break;
    case 1:
        if (Unk_ov58_021D3180[v0->unk_368].unk_00 != NULL) {
            *param1 = Unk_ov58_021D3180[v0->unk_368].unk_00(v0, *param1);
        }

        ov58_021D28E4(v0->unk_2DC, 0, TEXT_COLOR(14, 13, 15), v0);

        if (CommSys_CurNetId() == 0) {
            int v1 = ov58_021D2B5C(v0);

            if (*param1 == 1) {
                *param1 = v1;
            }
        }

        ov58_021D2888(&v0->unk_43D8);
        break;
    case 2:
        if ((Unk_ov58_021D3180[v0->unk_368].unk_00 != NULL) && Unk_ov58_021D3180[v0->unk_368].unk_04) {
            *param1 = Unk_ov58_021D3180[v0->unk_368].unk_00(v0, *param1);
        }
        break;
    case 3:
        if (ScreenWipe_Done()) {
            return 1;
        }
        break;
    }

    CellActorCollection_Update(v0->unk_34);

    return 0;
}

int ov58_021D1018(OverlayManager *param0, int *param1)
{
    UnkStruct_02095EAC *v0 = OverlayManager_Data(param0);
    UnkStruct_0203DDFC *v1 = (UnkStruct_0203DDFC *)OverlayManager_Args(param0);
    int v2;
    void *v3;

    switch (*param1) {
    case 0:
        v3 = sub_0202C168(39);

        Journal_SaveData(v1->unk_04, v3, 4);
        SetMainCallback(NULL, NULL);
        sub_0200A4E4(v0->unk_1D4[0][0]);
        sub_0200A4E4(v0->unk_1D4[1][0]);
        sub_0200A6DC(v0->unk_1D4[0][1]);
        sub_0200A6DC(v0->unk_1D4[1][1]);

        for (v2 = 0; v2 < 4; v2++) {
            SpriteResourceCollection_Delete(v0->unk_1C4[v2]);
        }

        CellActorCollection_Delete(v0->unk_34);
        sub_0200A878();
        sub_0201E958();
        sub_0201F8B4();

        ov58_021D19D4(v0);
        ov58_021D13F0(v0->unk_00);

        sub_0201E530();
        MessageLoader_Free(v0->unk_10);
        StringTemplate_Free(v0->unk_0C);
        (*param1)++;
        break;
    case 1:
        sub_02037B58(1);
        sub_02036AC4();
        sub_0205C2C8(v1->unk_00);

        GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

        sub_0205BEA8(0);
        sub_02033ED4(0);
        (*param1)++;
        break;
    case 2:
        if (v0->unk_9464) {
            if (sub_020318EC() == 1) {
                (*param1)++;
            }
        } else {
            (*param1)++;
        }
        break;
    case 3:
        sub_02037B58(2);

        ov58_021D13B4(v0);

        Heap_FreeToHeap(v0->unk_08);
        OverlayManager_FreeData(param0);
        SetMainCallback(NULL, NULL);
        Heap_Destroy(39);
        sub_02037B58(2);

        return 1;
    }

    return 0;
}

static void ov58_021D115C(void *param0)
{
    sub_0201DCAC();
    sub_0200A858();
    sub_0201C2B8((BGL *)param0);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov58_021D1184(void)
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

static void ov58_021D11A4(BGL *param0)
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
    sub_02019690(1, 32, 0, 39);
    sub_02019690(5, 32, 0, 39);
}

static void ov58_021D12C4(UnkStruct_02095EAC *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_14[v0] = Strbuf_Init(7 + 1, 39);
        param0->unk_43E6[v0].unk_08_3 = 0;
        param0->unk_4418[v0].unk_02 = 0;
        param0->unk_398[v0][0] = NULL;
        param0->unk_398[v0][1] = NULL;
    }

    param0->unk_28 = Strbuf_Init(10, 39);
    param0->unk_2C = Strbuf_Init((40 * 2), 39);
    param0->unk_43DA = 0;
    param0->unk_43DB = 1;
    param0->unk_9458 = 1;
    param0->unk_945C = 0;
    param0->unk_37C = 2;
    param0->unk_380 = sub_020318EC();
    param0->unk_9460 = 0;
    param0->unk_9464 = 0;
    param0->unk_368 = 0;
    param0->unk_9468 = 0;
    param0->unk_946C = 0;

    if (CommSys_CurNetId() == 0) {
        ov58_021D2CB0(param0, 4);
    } else {
        ov58_021D2CB0(param0, 4);
    }

    MessageLoader_GetStrbuf(param0->unk_10, 7, param0->unk_28);

    param0->unk_442C = Heap_AllocFromHeap(39, 30 * 16 * 32);
    param0->unk_9454 = sub_02015920(39);
    param0->unk_378 = 0;
}

static void ov58_021D13B4(UnkStruct_02095EAC *param0)
{
    int v0;

    Heap_FreeToHeap(param0->unk_442C);
    sub_02015938(param0->unk_9454);

    for (v0 = 0; v0 < 5; v0++) {
        Strbuf_Free(param0->unk_14[v0]);
    }

    Strbuf_Free(param0->unk_2C);
    Strbuf_Free(param0->unk_28);
}

static void ov58_021D13F0(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 3);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
    Heap_FreeToHeap(param0);
}

static void ov58_021D142C(UnkStruct_02095EAC *param0, NARC *param1)
{
    BGL *v0 = param0->unk_00;

    sub_02007130(param1, 0, 0, 0, 16 * 2 * 2, 39);
    sub_02007130(param1, 1, 4, 0, 16 * 2 * 2, 39);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 39);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, 39);
    sub_020070E8(param1, 2, v0, 2, 0, 32 * 8 * 0x20, 1, 39);
    sub_0200710C(param1, 4, v0, 2, 0, 32 * 24 * 2, 1, 39);
    sub_020070E8(param1, 3, v0, 5, 0, 32 * 8 * 0x20, 1, 39);
    sub_0200710C(param1, 5, v0, 5, 0, 32 * 24 * 2, 1, 39);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(param0->unk_08->unk_08), 39);
    sub_0200DAA4(v0, 0, 1 + (18 + 12), 11, 0, 39);
}

static void ov58_021D1524(void)
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

static void ov58_021D1554(UnkStruct_02095EAC *param0, NARC *param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 126, 0, 32, 0, 126, 0, 32, 39);
    param0->unk_34 = sub_020095C4(50 + 3, &param0->unk_38, 39);
    sub_0200964C(&param0->unk_38, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1C4[v0] = SpriteResourceCollection_New(2, v0, 39);
    }

    param0->unk_1D4[0][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1C4[0], param1, 6, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 39);
    param0->unk_1D4[0][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1C4[1], param1, 0, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 7, 39);
    param0->unk_1D4[0][2] = SpriteResourceCollection_AddFrom(param0->unk_1C4[2], param1, 7, 1, 0, 2, 39);
    param0->unk_1D4[0][3] = SpriteResourceCollection_AddFrom(param0->unk_1C4[3], param1, 8, 1, 0, 3, 39);
    param0->unk_1D4[1][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1C4[0], param1, 6, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, 39);
    param0->unk_1D4[1][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1C4[1], param1, 0, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 3, 39);
    param0->unk_1D4[1][2] = SpriteResourceCollection_AddFrom(param0->unk_1C4[2], param1, 7, 1, 1, 2, 39);
    param0->unk_1D4[1][3] = SpriteResourceCollection_AddFrom(param0->unk_1C4[3], param1, 8, 1, 1, 3, 39);

    sub_0200A328(param0->unk_1D4[0][0]);
    sub_0200A328(param0->unk_1D4[1][0]);

    sub_0200A5C8(param0->unk_1D4[0][1]);
    sub_0200A5C8(param0->unk_1D4[1][1]);
}

static const u16 Unk_ov58_021D2EEC[][3] = {
    { 0xD, 0xAB, 0x5 },
    { 0x25, 0xAB, 0x7 },
    { 0x3D, 0xAB, 0x9 },
    { 0x55, 0xAB, 0xB },
    { 0x6D, 0xAB, 0xD },
    { 0x85, 0xAB, 0xF },
    { 0x9D, 0xAB, 0x11 },
    { 0xB5, 0xAB, 0x13 },
    { 0xE1, 0xAB, 0x15 },
    { 0x14, 0x9, 0x1D },
    { 0x24, 0x9, 0x20 },
    { 0x34, 0x9, 0x21 }
};

static void ov58_021D16D8(UnkStruct_02095EAC *param0)
{
    int v0;

    sub_020093B4(&param0->unk_1F4, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1C4[0], param0->unk_1C4[1], param0->unk_1C4[2], param0->unk_1C4[3], NULL, NULL);
    sub_020093B4(&param0->unk_218, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1C4[0], param0->unk_1C4[1], param0->unk_1C4[2], param0->unk_1C4[3], NULL, NULL);

    {
        CellActorInitParamsEx v1;

        v1.collection = param0->unk_34;
        v1.resourceData = &param0->unk_1F4;
        v1.position.z = 0;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.affineZRotation = 0;
        v1.priority = 1;
        v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.heapID = 39;

        for (v0 = 0; v0 < 5; v0++) {
            v1.resourceData = &param0->unk_218;
            v1.position.x = FX32_ONE * (24 + v0 * 40);
            v1.position.y = FX32_ONE * (32 + 32);
            v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;

            param0->unk_23C[v0] = CellActorCollection_AddEx(&v1);

            CellActor_SetAnimateFlag(param0->unk_23C[v0], 1);
            CellActor_SetAnim(param0->unk_23C[v0], v0);
            CellActor_SetDrawFlag(param0->unk_23C[v0], 0);
        }

        for (v0 = 0; v0 < 9 + 3; v0++) {
            v1.resourceData = &param0->unk_218;
            v1.position.x = FX32_ONE * (Unk_ov58_021D2EEC[v0][0]);
            v1.position.y = FX32_ONE * (Unk_ov58_021D2EEC[v0][1]);

            param0->unk_2AC[v0] = CellActorCollection_AddEx(&v1);

            CellActor_SetAnimateFlag(param0->unk_2AC[v0], 1);
            CellActor_SetAnim(param0->unk_2AC[v0], Unk_ov58_021D2EEC[v0][2]);

            if (v0 >= 8) {
                CellActor_SetExplicitPriority(param0->unk_2AC[v0], 2);
            }
        }

        CellActor_SetAnim(param0->unk_2AC[0], 6);

        for (v0 = 0; v0 < 5; v0++) {
            v1.position.x = FX32_ONE * 24;
            v1.position.y = FX32_ONE * (32 + 32 * v0) + (256 * FX32_ONE);

            param0->unk_274[v0] = CellActorCollection_AddEx(&v1);

            CellActor_SetAnimateFlag(param0->unk_274[v0], 1);
            CellActor_SetAnim(param0->unk_274[v0], v0);
            CellActor_SetPriority(param0->unk_274[v0], 1);
            CellActor_SetDrawFlag(param0->unk_274[v0], 0);
        }
    }
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov58_021D18AC(UnkStruct_02095EAC *param0, OverlayManager *param1)
{
    BGL_AddWindow(param0->unk_00, &param0->unk_33C, 0, 2, 1, 27, 4, 13, 1 + (18 + 12) + 9);
    BGL_FillWindow(&param0->unk_33C, 0xf0f);
    BGL_AddWindow(param0->unk_00, &param0->unk_32C, 1, 1, 2, 30, 15, 0, 1);
    BGL_FillWindow(&param0->unk_32C, 0x202);
    BGL_AddWindow(param0->unk_00, &param0->unk_34C, 1, 25, 21, 7, 2, 13, 1 + 30 * 15);
    BGL_FillWindow(&param0->unk_34C, 0x0);

    {
        u32 v0 = Font_CalcCenterAlignment(FONT_MESSAGE, param0->unk_28, 0, (7 - 1) * 8) + 2;
        Text_AddPrinterWithParamsAndColor(&param0->unk_34C, FONT_MESSAGE, param0->unk_28, v0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(7, 1, 0), NULL);
    }

    {
        int v1;

        for (v1 = 0; v1 < 5; v1++) {
            BGL_AddWindow(param0->unk_00, &param0->unk_2DC[v1], 4, 24 / 8 + 2, 32 / 8 + v1 * 4 - 1, 10, 2, 13, 1 + v1 * (10 * 2));
            BGL_FillWindow(&param0->unk_2DC[v1], 0);
        }

        ov58_021D28E4(param0->unk_2DC, 0, TEXT_COLOR(14, 13, 15), param0);
    }
}

static void ov58_021D19D4(UnkStruct_02095EAC *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        BGL_DeleteWindow(&param0->unk_2DC[v0]);
    }

    BGL_DeleteWindow(&param0->unk_34C);
    BGL_DeleteWindow(&param0->unk_32C);
    BGL_DeleteWindow(&param0->unk_33C);
}

static void ov58_021D1A10(CellActor *param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = FX32_CONST(param1);
    v0.y = FX32_CONST(param2 - 8);
    v0.z = 0;

    CellActor_SetPosition(param0, &v0);
}

static const TouchScreenRect Unk_ov58_021D2EB8[] = {
    { 0x96, 0xBD, 0x0, 0x17 },
    { 0x96, 0xBD, 0x18, 0x2F },
    { 0x96, 0xBD, 0x30, 0x47 },
    { 0x96, 0xBD, 0x48, 0x5F },
    { 0x96, 0xBD, 0x60, 0x77 },
    { 0x96, 0xBD, 0x78, 0x8F },
    { 0x96, 0xBD, 0x90, 0xA7 },
    { 0x96, 0xBD, 0xA8, 0xBF },
    { 0x96, 0xBD, 0xC0, 0xFF },
    { 0x1, 0xD, 0xE, 0x1A },
    { 0x1, 0xD, 0x1E, 0x2A },
    { 0x1, 0xD, 0x2E, 0x3A },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov58_021D2DD4[] = {
    { 0x30, 0x70, 0xC8, 0xF8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const TouchScreenRect Unk_ov58_021D2DDC[] = {
    { 0x10, 0x88, 0x8, 0xF8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static void ov58_021D1A80(UnkStruct_02095EAC *param0)
{
    int v0 = -1, v1;
    int v2 = 0;

    v0 = sub_02022664(Unk_ov58_021D2EB8);

    if (v0 != 0xffffffff) {
        switch (v0) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            if (param0->unk_43DA != v0) {
                param0->unk_43DA = v0;
                ov58_021D1CAC(param0->unk_2AC, v0);
                Sound_PlayEffect(1500);
            }
            break;
        case 8:
            if (param0->unk_368 == 4) {
                if (CommSys_CurNetId() == 0) {
                    if (param0->unk_380 != sub_020318EC()) {
                        Sound_PlayEffect(1522);
                        break;
                    }

                    sub_02037B58(CommSys_ConnectedCount());
                    param0->unk_9458 = 2;
                    ov58_021D2A98(param0, 1, TEXT_SPEED_FAST);
                    ov58_021D2CB0(param0, 5);
                    ov58_021D1CDC(param0->unk_2AC, 1);
                    v2 = 1;
                    Sound_PlayEffect(1500);
                } else {
                    if (param0->unk_43E6[0].unk_09 == 2) {
                        Sound_PlayEffect(1522);
                    } else {
                        ov58_021D2A98(param0, 1, TEXT_SPEED_FAST);
                        ov58_021D2CB0(param0, 5);
                        ov58_021D1CDC(param0->unk_2AC, 1);
                        v2 = 1;
                        Sound_PlayEffect(1500);
                    }
                }
            }
            break;
        case 9:
        case 10:
        case 11: {
            int v3;

            for (v3 = 0; v3 < 3; v3++) {
                if ((v0 - 9) == v3) {
                    CellActor_SetAnim(param0->unk_2AC[9 + v3], 29 + 2 * v3 + 1);
                } else {
                    CellActor_SetAnim(param0->unk_2AC[9 + v3], 29 + 2 * v3);
                }
            }

            if (param0->unk_43DB != (0 + v0 - 9)) {
                param0->unk_43DB = 0 + v0 - 9;
                Sound_PlayEffect(1509);
            }
        } break;
        }
    }

    v1 = sub_02022644(Unk_ov58_021D2DDC);
    CellActor_SetDrawFlag(param0->unk_23C[CommSys_CurNetId()], 0);

    if (v1 != 0xffffffff) {
        ov58_021D1A10(param0->unk_23C[CommSys_CurNetId()], gCoreSys.touchX, gCoreSys.touchY);
        CellActor_SetDrawFlag(param0->unk_23C[CommSys_CurNetId()], 1);
    }

    {
        UnkStruct_ov72_0223E2A8 v4;
        int v5;

        if (sub_0201E564(&v4, 4, 64) == 1) {
            ov58_021D2D4C(&param0->unk_43DC, &v4, param0->unk_43DA, param0->unk_43DB);

            if (v2 == 1) {
                param0->unk_43DC.unk_08_3 = 0;
            }
        }
    }
}

static void ov58_021D1CAC(CellActor **param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (v0 == param1) {
            CellActor_SetAnim(param0[v0], Unk_ov58_021D2EEC[v0][2] + 1);
        } else {
            CellActor_SetAnim(param0[v0], Unk_ov58_021D2EEC[v0][2]);
        }
    }
}

static void ov58_021D1CDC(CellActor **param0, BOOL param1)
{
    if (param1 == 1) {
        CellActor_SetAnim(param0[8], Unk_ov58_021D2EEC[8][2] + 1);
    } else {
        CellActor_SetAnim(param0[8], Unk_ov58_021D2EEC[8][2]);
    }
}

static int ov58_021D1CF4(UnkStruct_02095EAC *param0, int param1)
{
    ov58_021D1A80(param0);

    if (CommSys_CurNetId() == 0) {
        if (ov58_021D28C8() != 1) {
            ov58_021D29C8(param0);
        }
    } else {
        ov58_021D29C8(param0);
    }

    ov58_021D2820(param0);
    ov58_021D2754(&param0->unk_32C, param0->unk_43E6, param0->unk_4418, 1);

    return param1;
}

static void ov58_021D1D40(UnkStruct_02095EAC *param0)
{
    ov58_021D2820(param0);
    ov58_021D2754(&param0->unk_32C, param0->unk_43E6, param0->unk_4418, 0);
}

static int ov58_021D1D64(UnkStruct_02095EAC *param0, int param1)
{
    if (CommSys_CurNetId() == param0->unk_384) {
        ov58_021D2A98(param0, 13, TEXT_SPEED_INSTANT);
    } else {
        ov58_021D2A98(param0, 0, TEXT_SPEED_INSTANT);
    }

    ov58_021D2CB0(param0, 2);
    Sound_PlayEffect(1508);

    G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, -6);

    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D1DBC(UnkStruct_02095EAC *param0, int param1)
{
    ov58_021D1D40(param0);
    return param1;
}

static int ov58_021D1DC8(UnkStruct_02095EAC *param0, int param1)
{
    G2_BlendNone();

    ov58_021D2B3C(param0, 1);
    ov58_021D2CB0(param0, 4);
    ov58_021D1D40(param0);

    param0->unk_9468 = 0;

    return param1;
}

static int ov58_021D1DFC(UnkStruct_02095EAC *param0, int param1)
{
    if (ov58_021D2B0C(param0->unk_30)) {
        UnkStruct_02015958 v0;
        BOOL v1;

        v0.unk_00 = param0->unk_00;
        v0.unk_04 = 0;
        v0.unk_08 = (1 + (18 + 12) + 9 + 27 * 4) + 8 * 4;
        v0.unk_0C = 8;
        v0.unk_10 = 25;
        v0.unk_11 = 6;

        v1 = ov58_021D2CEC(param0, &v0);
        GF_ASSERT(v1);

        ov58_021D2CB0(param0, 6);
    }

    ov58_021D1D40(param0);
    return param1;
}

static int ov58_021D1E4C(UnkStruct_02095EAC *param0, int param1)
{
    int v0;

    param0->unk_43DC.unk_08_3 = 0;

    if ((param0->unk_43E6[0].unk_09 == 2) && (CommSys_CurNetId() != 0)) {
        ov58_021D1D40(param0);

        if (ov58_021D2D30(param0)) {
            Sound_PlayEffect(1522);
        }

        return param1;
    }

    if ((CommSys_CurNetId() == 0) && (param0->unk_9418 != 0)) {
        ov58_021D1D40(param0);
        return param1;
    }

    if (ov58_021D2A30() != CommSys_ConnectedCount()) {
        ov58_021D1D40(param0);
        return param1;
    }

    v0 = sub_020159FC(param0->unk_9454);

    switch (v0) {
    case 1:
        if (CommSys_CurNetId() == 0) {
            ov58_021D2CB0(param0, 13);
            ov58_021D2A98(param0, 4, TEXT_SPEED_FAST);
        } else {
            UnkStruct_02095FE4 v1;

            MI_CpuClear8(&v1, sizeof(UnkStruct_02095FE4));
            v1.unk_02 = 0;
            v1.unk_00 = CommSys_CurNetId();

            param0->unk_9420 = 1;
            param0->unk_941E = 0;

            ov58_021D2CB0(param0, 7);

            CommSys_SendData(126, &v1, sizeof(UnkStruct_02095FE4));
            sub_0200E084(&param0->unk_33C, 1);
        }

        ov58_021D2D10(param0);
        sub_0201A954(&param0->unk_32C);
        break;
    case 2:
        ov58_021D2CB0(param0, 4);
        ov58_021D1CDC(param0->unk_2AC, 0);
        sub_0200E084(&param0->unk_33C, 1);
        ov58_021D2D10(param0);
        sub_0201A954(&param0->unk_32C);

        if (CommSys_CurNetId() == 0) {
            sub_02037B58(CommSys_ConnectedCount() + 1);
            param0->unk_9458 = 1;
        }
        break;
    }

    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D1FB0(UnkStruct_02095EAC *param0, int param1)
{
    param0->unk_43DC.unk_08_3 = 0;
    param0->unk_941E = 0;

    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D1FD4(UnkStruct_02095EAC *param0, int param1)
{
    param0->unk_43DC.unk_08_3 = 0;

    if ((param0->unk_941C != CommSys_ConnectedCount()) || (param0->unk_941C != ov58_021D2A30())) {
        param0->unk_941E = 0;

        ov58_021D2CB0(param0, 9);
        ov58_021D1D40(param0);

        return param1;
    }

    param0->unk_941E++;

    if (param0->unk_941E > 30) {
        UnkStruct_02095FE4 v0;

        MI_CpuClear8(&v0, sizeof(UnkStruct_02095FE4));

        v0.unk_02 = 1;
        v0.unk_00 = CommSys_CurNetId();

        CommSys_SendData(126, &v0, sizeof(UnkStruct_02095FE4));
        param0->unk_941E = 0;
        ov58_021D2CB0(param0, 10);
    }

    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D206C(UnkStruct_02095EAC *param0, int param1)
{
    param0->unk_43DC.unk_08_3 = 0;
    param0->unk_9420 = 0;

    ov58_021D2CB0(param0, 4);
    ov58_021D1CDC(param0->unk_2AC, 0);
    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D20A8(UnkStruct_02095EAC *param0, int param1)
{
    u8 v0;

    ov58_021D2A98(param0, 6, TEXT_SPEED_FAST);
    ov58_021D2CB0(param0, 11);
    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D20C8(UnkStruct_02095EAC *param0, int param1)
{
    if (ov58_021D2B0C(param0->unk_30)) {
        param0->unk_374 = 0;
        ov58_021D2CB0(param0, 12);
    }

    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D20F4(UnkStruct_02095EAC *param0, int param1)
{
    if (++param0->unk_374 > 60) {
        sub_0200F174(0, 16, 16, 0x0, 16, 1, 39);
        param1 = 3;
    }

    ov58_021D1D40(param0);
    return param1;
}

static int ov58_021D2130(UnkStruct_02095EAC *param0, int param1)
{
    if (ov58_021D2B0C(param0->unk_30)) {
        UnkStruct_02015958 v0;
        BOOL v1;

        v0.unk_00 = param0->unk_00;
        v0.unk_04 = 0;
        v0.unk_08 = (1 + (18 + 12) + 9 + 27 * 4) + 8 * 4;
        v0.unk_0C = 8;
        v0.unk_10 = 25;
        v0.unk_11 = 6;

        v1 = ov58_021D2CEC(param0, &v0);
        GF_ASSERT(v1);
        ov58_021D2CB0(param0, 14);
    }

    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D2180(UnkStruct_02095EAC *param0, int param1)
{
    int v0 = sub_020159FC(param0->unk_9454);

    if ((param0->unk_37C != ov58_021D2A30()) || (param0->unk_9418 != 0)) {
        ov58_021D1D40(param0);
        return param1;
    }

    switch (v0) {
    case 1:
        ov58_021D2CB0(param0, 15);
        CommSys_SendDataServer(127, NULL, 0);
        StringTemplate_SetPlayerName(param0->unk_0C, 0, CommInfo_TrainerInfo(0));
        param1 = 2;
        ov58_021D2D10(param0);
        break;
    case 2:
        ov58_021D2CB0(param0, 4);
        ov58_021D1CDC(param0->unk_2AC, 0);
        sub_0200E084(&param0->unk_33C, 1);
        ov58_021D2D10(param0);

        if (CommSys_CurNetId() == 0) {
            sub_02037B58(CommSys_ConnectedCount() + 1);
            param0->unk_9458 = 1;
        }
        break;
    }

    ov58_021D1D40(param0);
    return param1;
}

static int ov58_021D223C(UnkStruct_02095EAC *param0, int param1)
{
    StringTemplate_SetPlayerName(param0->unk_0C, 0, CommInfo_TrainerInfo(0));

    ov58_021D2A98(param0, 3, TEXT_SPEED_FAST);
    ov58_021D2CB0(param0, 16);
    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D2270(UnkStruct_02095EAC *param0, int param1)
{
    if (ov58_021D2B0C(param0->unk_30)) {
        ov58_021D2CB0(param0, 17);
        CommTiming_StartSync(200);
    }

    ov58_021D1D40(param0);
    return param1;
}

static int ov58_021D2298(UnkStruct_02095EAC *param0, int param1)
{
    if (CommTiming_IsSyncState(200) || (CommSys_ConnectedCount() == 1)) {
        sub_0200F174(0, 16, 16, 0x0, 16, 1, 39);
        param1 = 3;
    }

    ov58_021D1D40(param0);
    return param1;
}

static int ov58_021D22D8(UnkStruct_02095EAC *param0, int param1)
{
    return param1;
}

static int ov58_021D22DC(UnkStruct_02095EAC *param0, int param1)
{
    ov58_021D2A98(param0, 5, TEXT_SPEED_FAST);
    ov58_021D2CB0(param0, 20);
    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D22FC(UnkStruct_02095EAC *param0, int param1)
{
    if (ov58_021D2B0C(param0->unk_30)) {
        ov58_021D2CB0(param0, 12);
    }

    ov58_021D1D40(param0);
    return param1;
}

static int ov58_021D2320(UnkStruct_02095EAC *param0, int param1)
{
    if ((param0->unk_30 != 0xff) && (ov58_021D2B0C(param0->unk_30) == 0)) {
        Text_RemovePrinter(param0->unk_30);
    }

    ov58_021D2A98(param0, 2, TEXT_SPEED_FAST);
    ov58_021D2CB0(param0, 22);
    Sound_PlayEffect(1508);

    if (CommSys_CurNetId() == 0) {
        ov58_021D2B3C(param0, 0);
    }

    param0->unk_9414 = CommSys_ConnectedCount();
    ov58_021D1D40(param0);

    return param1;
}

static int ov58_021D2380(UnkStruct_02095EAC *param0, int param1)
{
    if ((param0->unk_9414 != 0) && (CommSys_ConnectedCount() != param0->unk_9414)) {
        param0->unk_9414 = 0;
    }

    if (ov58_021D2B0C(param0->unk_30)) {
        ov58_021D2CB0(param0, 23);
        param0->unk_374 = 0;
    }

    ov58_021D1D40(param0);
    return param1;
}

static int ov58_021D23C8(UnkStruct_02095EAC *param0, int param1)
{
    if ((param0->unk_9414 != 0) && (CommSys_ConnectedCount() != param0->unk_9414)) {
        param0->unk_9414 = 0;
    }

    if ((++param0->unk_374 > 60) && (param0->unk_9414 == 0)) {
        ov58_021D2B2C(param0);
        ov58_021D2CB0(param0, 4);

        if (CommSys_CurNetId() == 0) {
            param0->unk_9458 = 1;
            ov58_021D2B3C(param0, 1);
        }
    }

    ov58_021D1D40(param0);
    return param1;
}

void ov58_021D2434(UnkStruct_02095EAC *param0, int param1, u8 param2)
{
    switch (param1) {
    case 1:
        if ((param0->unk_368 == 6) || (param0->unk_368 == 14)) {
            ov58_021D2D10(param0);
        }

        ov58_021D1CDC(param0->unk_2AC, 0);
        StringTemplate_SetPlayerName(param0->unk_0C, 0, CommInfo_TrainerInfo(param2));

        param0->unk_384 = param2;
        param0->unk_9418 = 0;
        break;
    case 3:
        ov58_021D2B2C(param0);
        break;
    case 21:
        if (param0->unk_9420 == 1) {
            return;
        }

        StringTemplate_SetPlayerName(param0->unk_0C, 0, CommInfo_TrainerInfo(param2));

        if (param2 == CommSys_CurNetId()) {
            return;
        }

        if (CommSys_CurNetId() == 0) {
            param0->unk_9418 &= 0xffff ^ param2;
        }

        if ((param0->unk_368 == 6) || (param0->unk_368 == 14)) {
            ov58_021D2D10(param0);

            sub_0201A954(&param0->unk_32C);
        }

        ov58_021D1CDC(param0->unk_2AC, 0);
        break;
    case 15:
        break;
    case 8:
        break;
    case 9:
        break;
    default:
        GF_ASSERT("FALSE");
        return;
    }

    ov58_021D2CB0(param0, param1);
}

static const u8 Unk_ov58_021D2F34[3][8][24] = {
    {
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x11, 0x0, 0x0, 0x0, 0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x22, 0x0, 0x0, 0x0, 0x22, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x33, 0x0, 0x0, 0x0, 0x33, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x44, 0x0, 0x0, 0x0, 0x44, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x55, 0x0, 0x0, 0x0, 0x55, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x66, 0x0, 0x0, 0x0, 0x66, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x77, 0x0, 0x0, 0x0, 0x77, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x88, 0x0, 0x0, 0x0, 0x88, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x11, 0x0, 0x0, 0x10, 0x11, 0x1, 0x0, 0x10, 0x11, 0x1, 0x0, 0x0, 0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x22, 0x0, 0x0, 0x20, 0x22, 0x2, 0x0, 0x20, 0x22, 0x2, 0x0, 0x0, 0x22, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x33, 0x0, 0x0, 0x30, 0x33, 0x3, 0x0, 0x30, 0x33, 0x3, 0x0, 0x0, 0x33, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x44, 0x0, 0x0, 0x40, 0x44, 0x4, 0x0, 0x40, 0x44, 0x4, 0x0, 0x0, 0x44, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x55, 0x0, 0x0, 0x50, 0x55, 0x5, 0x0, 0x50, 0x55, 0x5, 0x0, 0x0, 0x55, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x66, 0x0, 0x0, 0x60, 0x66, 0x6, 0x0, 0x60, 0x66, 0x6, 0x0, 0x0, 0x66, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x77, 0x0, 0x0, 0x70, 0x77, 0x7, 0x0, 0x70, 0x77, 0x7, 0x0, 0x0, 0x77, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x88, 0x0, 0x0, 0x80, 0x88, 0x8, 0x0, 0x80, 0x88, 0x8, 0x0, 0x0, 0x88, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    },
    {
        { 0x10, 0x11, 0x1, 0x0, 0x11, 0x11, 0x11, 0x0, 0x11, 0x11, 0x11, 0x0, 0x11, 0x11, 0x11, 0x0, 0x11, 0x11, 0x11, 0x0, 0x10, 0x11, 0x1, 0x0 },
        { 0x20, 0x22, 0x2, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x22, 0x22, 0x22, 0x0, 0x20, 0x22, 0x2, 0x0 },
        { 0x30, 0x33, 0x3, 0x0, 0x33, 0x33, 0x33, 0x0, 0x33, 0x33, 0x33, 0x0, 0x33, 0x33, 0x33, 0x0, 0x33, 0x33, 0x33, 0x0, 0x30, 0x33, 0x3, 0x0 },
        { 0x40, 0x44, 0x4, 0x0, 0x44, 0x44, 0x44, 0x0, 0x44, 0x44, 0x44, 0x0, 0x44, 0x44, 0x44, 0x0, 0x44, 0x44, 0x44, 0x0, 0x40, 0x44, 0x4, 0x0 },
        { 0x50, 0x55, 0x5, 0x0, 0x55, 0x55, 0x55, 0x0, 0x55, 0x55, 0x55, 0x0, 0x55, 0x55, 0x55, 0x0, 0x55, 0x55, 0x55, 0x0, 0x50, 0x55, 0x5, 0x0 },
        { 0x60, 0x66, 0x6, 0x0, 0x66, 0x66, 0x66, 0x0, 0x66, 0x66, 0x66, 0x0, 0x66, 0x66, 0x66, 0x0, 0x66, 0x66, 0x66, 0x0, 0x60, 0x66, 0x6, 0x0 },
        { 0x70, 0x77, 0x7, 0x0, 0x77, 0x77, 0x77, 0x0, 0x77, 0x77, 0x77, 0x0, 0x77, 0x77, 0x77, 0x0, 0x77, 0x77, 0x77, 0x0, 0x70, 0x77, 0x7, 0x0 },
        { 0x80, 0x88, 0x8, 0x0, 0x88, 0x88, 0x88, 0x0, 0x88, 0x88, 0x88, 0x0, 0x88, 0x88, 0x88, 0x0, 0x88, 0x88, 0x88, 0x0, 0x80, 0x88, 0x8, 0x0 },
    },
};

static void ov58_021D2528(Window *param0, void *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
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

static void ov58_021D25A8(Window *param0, const u8 *param1, int param2, int param3, int *param4, int *param5, int param6, int param7)
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

        ov58_021D2528(param0, (void *)param1, 0, 0, 6, 6, v4, v5, 6, 6);
        v2 = v0 >> 1;

        while (++v4 <= v6) {
            if ((v2 -= v1) < 0) {
                v2 += v0;
                v5 += v3;
            }

            ov58_021D2528(param0, (void *)param1, 0, 0, 6, 6, v4, v5, 6, 6);
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

        ov58_021D2528(param0, (void *)param1, 0, 0, 6, 6, v4, v5, 6, 6);
        v2 = v1 >> 1;

        while (++v5 <= v7) {
            if ((v2 -= v0) < 0) {
                v2 += v1;
                v4 += v3;
            }

            ov58_021D2528(param0, (void *)param1, 0, 0, 6, 6, v4, v5, 6, 6);
        }
    }

    *param4 = param2;
    *param5 = param3;
}

static void ov58_021D2720(UnkStruct_ov58_021D2820 *param0, UnkStruct_ov58_021D2754 *param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param1[v0].unk_02 = param0[v0].unk_08_3;

        if (param0[v0].unk_08_3 != 0) {
            param1[v0].unk_00 = param0[v0].unk_00[param0[v0].unk_08_3 - 1];
            param1[v0].unk_01 = param0[v0].unk_04[param0[v0].unk_08_3 - 1];
        }
    }
}

static void ov58_021D2754(Window *param0, UnkStruct_ov58_021D2820 *param1, UnkStruct_ov58_021D2754 *param2, int param3)
{
    int v0, v1, v2, v3, v4 = 0, v5, v6;
    u32 v7;

    for (v2 = 0; v2 < 5; v2++) {
        if (param1[v2].unk_08_3 != 0) {
            if (param2[v2].unk_02) {
                v5 = param2[v2].unk_00 - 9;
                v6 = param2[v2].unk_01 - 17;
            }

            for (v3 = 0; v3 < param1[v2].unk_08_3; v3++) {
                v0 = param1[v2].unk_00[v3] - 9;
                v1 = param1[v2].unk_04[v3] - 17;

                ov58_021D25A8(param0, Unk_ov58_021D2F34[param1[v2].unk_08_6][param1[v2].unk_08_0], v0, v1, &v5, &v6, v3, param2[v2].unk_02);

                v4 = 1;
            }
        }
    }

    if (v4 && param3) {
        sub_0201A954(param0);
    }

    ov58_021D2720(param1, param2);

    for (v2 = 0; v2 < 5; v2++) {
        param1[v2].unk_08_3 = 0;
    }
}

static void ov58_021D2820(UnkStruct_02095EAC *param0)
{
    int v0;
    UnkStruct_ov58_021D2820 *v1 = param0->unk_43E6;

    for (v0 = 0; v0 < 5; v0++) {
        if (v0 != CommSys_CurNetId()) {
            if ((v1[v0].unk_08_3 != 0) && (CommInfo_TrainerInfo(v0) != NULL)) {
                CellActor_SetDrawFlag(param0->unk_23C[v0], 1);
                ov58_021D1A10(param0->unk_23C[v0], v1[v0].unk_00[v1[v0].unk_08_3 - 1], v1[v0].unk_04[v1[v0].unk_08_3 - 1]);
            } else {
                CellActor_SetDrawFlag(param0->unk_23C[v0], 0);
            }
        }
    }
}

static void ov58_021D2888(u16 *param0)
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

static int ov58_021D28C8(void)
{
    int v0, v1;
    TrainerInfo *v2;

    v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        v2 = CommInfo_TrainerInfo(v0);

        if (v2 != NULL) {
            v1++;
        }
    }

    return v1;
}

static void ov58_021D28E4(Window *param0, int param1, u32 param2, UnkStruct_02095EAC *param3)
{
    int v0, v1 = CommSys_CurNetId();
    int v2;

    if (!ov58_021D2A54(param3)) {
        return;
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param3->unk_398[v0][0] == NULL) {
            CellActor_SetDrawFlag(param3->unk_274[v0], 0);
        } else {
            CellActor_SetDrawFlag(param3->unk_274[v0], 1);
        }
    }

    for (v0 = 0; v0 < 5; v0++) {
        BGL_WindowColor(&param0[v0], 0, 0, 0, 10 * 8, 2 * 8);
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param3->unk_398[v0][0] != NULL) {
            TrainerInfo_NameStrbuf(param3->unk_398[v0][0], param3->unk_14[v0]);

            if (v1 == v0) {
                Text_AddPrinterWithParamsAndColor(&param0[v0], FONT_MESSAGE, param3->unk_14[v0], 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 15), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(&param0[v0], FONT_MESSAGE, param3->unk_14[v0], 0, 0, TEXT_SPEED_NO_TRANSFER, param2, NULL);
            }
        }

        sub_0201A954(&param0[v0]);
    }
}

static void ov58_021D29C8(UnkStruct_02095EAC *param0)
{
    if (CommSys_CurNetId() == 0) {
        if (sub_02036284()) {
            param0->unk_43DC.unk_09 = param0->unk_9458;
            param0->unk_9421[0] = param0->unk_43DC;
            CommSys_SendDataServer(120, param0->unk_9421, 10 * 5);
        }
    } else {
        if (sub_0203629C()) {
            CommSys_SendData(119, &param0->unk_43DC, 10);
        }
    }
}

static int ov58_021D2A30(void)
{
    int i, v0;

    for (v0 = 0, i = 0; i < 5; i++) {
        if (CommInfo_TrainerInfo(i) != NULL) {
            v0++;
        }
    }

    return v0;
}

int ov58_021D2A4C(void)
{
    return ov58_021D2A30();
}

static int ov58_021D2A54(UnkStruct_02095EAC *param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_398[v0][1] = param0->unk_398[v0][0];
        param0->unk_398[v0][0] = CommInfo_TrainerInfo(v0);
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_398[v0][1] != param0->unk_398[v0][0]) {
            v1 = 1;
        }
    }

    return v1;
}

static void ov58_021D2A98(UnkStruct_02095EAC *param0, int param1, int param2)
{
    Strbuf *v0;

    v0 = Strbuf_Init((40 * 2), 39);

    MessageLoader_GetStrbuf(param0->unk_10, param1, v0);
    StringTemplate_Format(param0->unk_0C, param0->unk_2C, v0);
    Strbuf_Free(v0);

    BGL_FillWindow(&param0->unk_33C, 0xf0f);
    sub_0200E060(&param0->unk_33C, 0, 1, 10);

    if (param2 == 0) {
        param2 = 0;
    }

    param0->unk_30 = Text_AddPrinterWithParams(&param0->unk_33C, FONT_MESSAGE, param0->unk_2C, 0, 0, param2, NULL);

    if (param2 == 0) {
        param0->unk_30 = 0xff;
    }
}

static int ov58_021D2B0C(int param0)
{
    if (param0 == 0xff) {
        return 1;
    }

    if (Text_IsPrinterActive(param0) == 0) {
        return 1;
    }

    return 0;
}

static void ov58_021D2B2C(UnkStruct_02095EAC *param0)
{
    sub_0200E084(&param0->unk_33C, 0);
}

static void ov58_021D2B3C(UnkStruct_02095EAC *param0, int param1)
{
    if (CommSys_CurNetId() == 0) {
        int v0 = CommSys_ConnectedCount() + param1;

        if (v0 > 5) {
            v0 = 5;
        }

        sub_02037B58(v0);
    }
}

static int ov58_021D2B5C(UnkStruct_02095EAC *param0)
{
    int v0;

    v0 = ov58_021D2A30();

    switch (v0) {
    case 1:
        if (param0->unk_368 <= 14) {
            if (sub_020318EC() != 1) {
                param0->unk_9464 = 1;
            }

            param0->unk_36C = 19;
            sub_02037B58(1);

            if (param0->unk_945C) {
                ov58_021D2D10(param0);
                CellActor_SetAnim(param0->unk_2AC[8], Unk_ov58_021D2EEC[8][2]);
            }

            return 2;
        }
        break;
    case 2:
    case 3:
    case 4:
        sub_0205BEA8(1);

        if (v0 < param0->unk_378) {
            if (param0->unk_9458 == 2) {
                ov58_021D2B3C(param0, 0);
            } else {
                ov58_021D2B3C(param0, 1);
            }
        }
        break;
    case 5:
        sub_0205BEA8(8);
        break;
    }

    if (v0 < param0->unk_378) {
        param0->unk_37C = CommSys_ConnectedCount();
        param0->unk_380 = sub_020318EC();

        if (param0->unk_9468) {
            if (!(param0->unk_380 & param0->unk_946C)) {
                ov58_021D2B3C(param0, 1);

                param0->unk_9458 = 1;
                param0->unk_9468 = 0;
                param0->unk_946C = 0;
            }
        }
    }

    param0->unk_378 = ov58_021D2A30();

    if (param0->unk_37C < CommSys_ConnectedCount()) {
        param0->unk_9458 = 2;
        param0->unk_9468 = 1;
        param0->unk_946C = param0->unk_380 ^ sub_020318EC();
        GF_ASSERT((param0->unk_946C == 2) || (param0->unk_946C == 4) || (param0->unk_946C == 8) || (param0->unk_946C == 16));
    }

    return 1;
}

static void ov58_021D2CB0(UnkStruct_02095EAC *param0, int param1)
{
    param0->unk_36C = param1;
}

static void ov58_021D2CB8(UnkStruct_02095EAC *param0, int param1)
{
    if (param0->unk_368 != param0->unk_36C) {
        if (param1 != 2) {
            param0->unk_368 = param0->unk_36C;
        } else {
            if (Unk_ov58_021D3180[param0->unk_36C].unk_04) {
                param0->unk_368 = param0->unk_36C;
            }
        }
    }
}

static BOOL ov58_021D2CEC(UnkStruct_02095EAC *param0, UnkStruct_02015958 *param1)
{
    if (!param0->unk_945C) {
        sub_02015958(param0->unk_9454, param1);
        param0->unk_945C = 1;
        return 1;
    } else {
        return 0;
    }
}

static void ov58_021D2D10(UnkStruct_02095EAC *param0)
{
    if (param0->unk_945C) {
        sub_02015A54(param0->unk_9454);
        param0->unk_945C = 0;
    }
}

static int ov58_021D2D30(UnkStruct_02095EAC *param0)
{
    int v0 = sub_02022664(Unk_ov58_021D2DD4);

    if (v0 != 0xffffffff) {
        return 1;
    }

    return 0;
}

static void ov58_021D2D4C(UnkStruct_ov58_021D2820 *param0, UnkStruct_ov72_0223E2A8 *param1, int param2, int param3)
{
    int v0, v1;

    if (param1->unk_00 != 0) {
        param0->unk_00[0] = param1->unk_02[0].x;
        param0->unk_04[0] = param1->unk_02[0].y;

        v1 = param1->unk_00 - 1;

        param0->unk_00[1] = param1->unk_02[v1].x;
        param0->unk_04[1] = param1->unk_02[v1].y;

        for (v0 = 0; v0 < 2; v0++) {
            if ((param0->unk_00[v0] + param0->unk_04[v0]) == 0) {
                param1->unk_00 = 0;
            }
        }
    }

    if (param1->unk_00 >= 2) {
        param0->unk_08_3 = 2;
    } else {
        param0->unk_08_3 = param1->unk_00;
    }

    param0->unk_08_0 = param2;
    param0->unk_08_6 = param3;
}
