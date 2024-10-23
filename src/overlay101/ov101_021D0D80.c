#include "overlay101/ov101_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0203E348.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay022/struct_ov22_022559F8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay101/ov101_021D1A28.h"
#include "overlay101/ov101_021D59AC.h"
#include "overlay101/ov101_021D7E48.h"
#include "overlay101/struct_ov101_021D13C8.h"
#include "overlay101/struct_ov101_021D148C.h"
#include "overlay101/struct_ov101_021D1894.h"

#include "enums.h"
#include "font.h"
#include "game_records.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200A784.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_020711EC.h"

typedef struct {
    UnkStruct_0203E348 *unk_00;
    UnkStruct_ov101_021D13C8 *unk_04;
} UnkStruct_ov101_021D0F3C;

static void ov101_021D0F3C(UnkStruct_ov101_021D0F3C *param0, UnkStruct_ov101_021D13C8 *param1);
static UnkStruct_ov101_021D13C8 *ov101_021D0F6C(UnkStruct_0203E348 *param0);
static void ov101_021D0F94(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D0F9C(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D107C(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D1098(void);
static void ov101_021D10B8(BGL *param0);
static void ov101_021D11A4(BGL *param0);
static void ov101_021D11D0(void);
static void ov101_021D121C(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D150C(void);
static void ov101_021D1544(void);
static void ov101_021D1550(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D15A4(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D15BC(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D1868(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D186C(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D1884(UnkStruct_ov101_021D13C8 *param0);
static int ov101_021D18B4(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D18C0(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D18E4(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D18F4(SysTask *param0, void *param1);
static void ov101_021D197C(void *param0);
static void ov101_021D19BC(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D19D4(UnkStruct_ov101_021D13C8 *param0);
static const UnkStruct_ov61_0222C884 Unk_ov101_021D8588[1];
static void ov101_021D1458(UnkStruct_ov101_021D13C8 *param0);

int ov101_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov101_021D0F3C *v0;
    UnkStruct_ov101_021D13C8 *v1;
    UnkStruct_0203E348 *v2;

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    Heap_Create(3, 79, 0x80000);

    v0 = OverlayManager_NewData(param0, (sizeof(UnkStruct_ov101_021D0F3C)), 79);
    memset(v0, 0, (sizeof(UnkStruct_ov101_021D0F3C)));
    v2 = OverlayManager_Args(param0);
    v0->unk_00 = v2;
    v1 = ov101_021D0F6C(v0->unk_00);
    v0->unk_04 = v1;

    ov101_021D19BC(v1);
    ov101_021D186C(v1);
    ov101_021D0F9C(v1);
    ov101_021D121C(v1);
    ov101_021D13C8(v1);
    ov101_021D150C();
    ov101_021D1550(v1);
    ov101_021D1A28(v1);
    ov101_021D59AC(v1);
    ov101_021D5AF0(v1);
    ov101_021D5C28(v1);
    sub_02004550(66, 0, 0);
    ov101_021D18C0(v1);
    sub_0200F174(0, 1, 1, 0x0, 8, 1, 79);

    return 1;
}

int ov101_021D0E40(OverlayManager *param0, int *param1)
{
    UnkStruct_ov101_021D0F3C *v0 = OverlayManager_Data(param0);
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_04;

    switch (*param1) {
    case 0:
        if (ScreenWipe_Done()) {
            (*param1)++;
        }
        break;
    case 1:
        if (ov101_021D1AAC(v1) == 1) {
            (*param1)++;
            sub_0200F174(2, 0, 0, 0x0, 8, 1, 79);
            ov101_021D1894(v1, UnkEnum_ov101_021D1894_00);
        }
        break;
    case 2:
        if (ScreenWipe_Done() == 0) {
            break;
        }
        (*param1)++;
    case 3:
        if (ov101_021D18B4(v1) == 0) {
            return 1;
        }
    }

    sub_020713D0(v1->unk_44C);
    ov101_021D80D4(v1->unk_450);

    return 0;
}

int ov101_021D0EE4(OverlayManager *param0, int *param1)
{
    UnkStruct_ov101_021D0F3C *v0 = OverlayManager_Data(param0);
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_04;

    SetMainCallback(NULL, NULL);

    ov101_021D0F3C(v0, v1);

    ov101_021D1884(v1);
    ov101_021D107C(v1);
    ov101_021D1458(v1);

    ov101_021D1A4C(v1);
    ov101_021D18E4(v1);

    ov101_021D19D4(v1);
    ov101_021D0F94(v1);

    OverlayManager_FreeData(param0);
    Heap_Destroy(79);

    return 1;
}

static void ov101_021D0F3C(UnkStruct_ov101_021D0F3C *param0, UnkStruct_ov101_021D13C8 *param1)
{
    u32 v0 = param1->unk_60;

    if (v0 > 50000) {
        v0 = 50000;
    }

    (*param0->unk_00->unk_00) = v0;
    param0->unk_00->unk_0C = param1->unk_20;

    if (param0->unk_00->records != NULL) {
        GameRecords_AddToRecordValue(param0->unk_00->records, RECORD_UNK_014, param1->unk_0C);
    }
}

static UnkStruct_ov101_021D13C8 *ov101_021D0F6C(UnkStruct_0203E348 *param0)
{
    UnkStruct_ov101_021D13C8 *v0 = ov101_021D1998(sizeof(UnkStruct_ov101_021D13C8));

    v0->unk_60 = *(param0->unk_00);
    v0->unk_88 = param0->unk_04;
    v0->unk_4C4 = param0->unk_10;

    return v0;
}

static void ov101_021D0F94(UnkStruct_ov101_021D13C8 *param0)
{
    Heap_FreeToHeap(param0);
}

static void ov101_021D0F9C(UnkStruct_ov101_021D13C8 *param0)
{
    param0->unk_43C = sub_02018340(79);

    ov101_021D1098();
    ov101_021D10B8(param0->unk_43C);
    ov101_021D11D0();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    G2_SetBG0Priority(0);
    G2_SetBG1Priority(1);
    G2_SetBG2Priority(2);
    G2_SetBG3Priority(3);
    G2S_SetBG0Priority(0);
    G2S_SetBG1Priority(1);
    G2S_SetBG2Priority(2);
    G2S_SetBG3Priority(3);
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_OBJ, 8, 9);

    SetMainCallback(ov101_021D197C, param0);
}

static void ov101_021D107C(UnkStruct_ov101_021D13C8 *param0)
{
    ov101_021D11A4(param0->unk_43C);
    ov101_021D15A4(param0);
    ov101_021D1544();
}

static void ov101_021D1098(void)
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

static void ov101_021D10B8(BGL *param0)
{
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

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
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019EBC(param0, 0);
        sub_02019690(0, 32, 0, 79);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
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
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
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
            GX_BG_SCRBASE_0x1800,
            GX_BG_CHARBASE_0x20000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 7, &v4, 0);
        sub_02019EBC(param0, 7);
    }
}

static void ov101_021D11A4(BGL *param0)
{
    sub_02019044(param0, 0);
    sub_02019044(param0, 1);
    sub_02019044(param0, 2);
    sub_02019044(param0, 7);
    Heap_FreeToHeap(param0);
}

static void ov101_021D11D0(void)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd0Position(0, 0, 255, 255);
}

static void ov101_021D121C(UnkStruct_ov101_021D13C8 *param0)
{
    void *v0 = ov101_021D19E4(param0, 3, 0);

    NNS_G2dGetUnpackedPaletteData(v0, &param0->unk_448);
    sub_0201972C(1, param0->unk_448->pRawData, (32 * 13), (32 * 0));
    Heap_FreeToHeap(v0);

    v0 = ov101_021D19E4(param0, 0, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_444);
    sub_0201958C(param0->unk_43C, 1, param0->unk_444->pRawData, param0->unk_444->szByte, (32 * 0));
    Heap_FreeToHeap(v0);

    v0 = ov101_021D19E4(param0, 1, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_440);
    sub_02019574(param0->unk_43C, 1, (void *)param0->unk_440->rawData, param0->unk_440->szByte);
    sub_02019448(param0->unk_43C, 1);
    Heap_FreeToHeap(v0);

    v0 = ov101_021D19E4(param0, 8, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_444);
    sub_0201958C(param0->unk_43C, 2, param0->unk_444->pRawData, param0->unk_444->szByte, (32 * 0));
    Heap_FreeToHeap(v0);

    v0 = ov101_021D19E4(param0, 9, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_440);
    sub_02019574(param0->unk_43C, 2, (void *)param0->unk_440->rawData, param0->unk_440->szByte);
    sub_02019448(param0->unk_43C, 2);
    Heap_FreeToHeap(v0);

    v0 = ov101_021D19E4(param0, 3, 0);
    NNS_G2dGetUnpackedPaletteData(v0, &param0->unk_448);
    sub_0201972C(7, param0->unk_448->pRawData, (32 * 13), (32 * 0));
    Heap_FreeToHeap(v0);

    v0 = ov101_021D19E4(param0, 2, 0);
    NNS_G2dGetUnpackedCharacterData(v0, &param0->unk_444);
    sub_0201958C(param0->unk_43C, 7, param0->unk_444->pRawData, param0->unk_444->szByte, 0);
    Heap_FreeToHeap(v0);

    v0 = ov101_021D19E4(param0, 4, 0);
    NNS_G2dGetUnpackedScreenData(v0, &param0->unk_440);
    sub_02019574(param0->unk_43C, 7, (void *)param0->unk_440->rawData, param0->unk_440->szByte);
    sub_02019448(param0->unk_43C, 7);
    Heap_FreeToHeap(v0);
}

void ov101_021D13C8(UnkStruct_ov101_021D13C8 *param0)
{
    int v0;
    UnkStruct_ov101_021D148C *v1 = &param0->unk_408;

    sub_0200DAA4(param0->unk_43C, 0, 1, 15, 0, 79);
    sub_0200DD0C(param0->unk_43C, 0, (1 + (18 + 12)), 14, param0->unk_4C4, 79);
    Font_LoadScreenIndicatorsPalette(0, 15 * 32, 79);

    v1->unk_00 = MessageLoader_Init(0, 26, 544, 79);
    v1->unk_04 = StringTemplate_Default(79);

    for (v0 = 0; v0 < 1; v0++) {
        sub_0201A8D4(param0->unk_43C, &v1->unk_08[v0], &Unk_ov101_021D8588[v0]);
    }

    v1->unk_18 = Strbuf_Init(256, 79);
}

void ov101_021D1458(UnkStruct_ov101_021D13C8 *param0)
{
    int v0;
    UnkStruct_ov101_021D148C *v1 = &param0->unk_408;

    for (v0 = 0; v0 < 1; v0++) {
        sub_0201ACF4(&v1->unk_08[v0]);
        BGL_DeleteWindow(&v1->unk_08[v0]);
    }

    MessageLoader_Free(v1->unk_00);
    StringTemplate_Free(v1->unk_04);
    Strbuf_Free(v1->unk_18);
}

void ov101_021D148C(UnkStruct_ov101_021D13C8 *param0, u32 param1)
{
    UnkStruct_ov101_021D148C *v0 = &param0->unk_408;

    sub_0200E060(&v0->unk_08[0], 1, (1 + (18 + 12)), 14);
    BGL_FillWindow(&v0->unk_08[0], 15);
    MessageLoader_GetStrbuf(v0->unk_00, param1, v0->unk_18);
    Text_AddPrinterWithParams(&v0->unk_08[0], FONT_MESSAGE, v0->unk_18, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    sub_0201A9A4(&v0->unk_08[0]);
}

void ov101_021D14E4(UnkStruct_ov101_021D13C8 *param0)
{
    UnkStruct_ov101_021D148C *v0 = &param0->unk_408;

    sub_0200E084(&v0->unk_08[0], 1);
    BGL_FillWindow(&v0->unk_08[0], 0);
    sub_0201A9A4(&v0->unk_08[0]);
}

static void ov101_021D150C(void)
{
    UnkStruct_ov22_022559F8 v0 = {
        32, 0x4000, 0x4000, 79
    };

    sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);
    sub_0201F834(16, 79);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov101_021D1544(void)
{
    sub_0201E958();
    sub_0201F8B4();
}

static void ov101_021D1550(UnkStruct_ov101_021D13C8 *param0)
{
    NNS_G2dInitOamManagerModule();

    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 79);
    param0->unk_450 = ov101_021D7E48(79, 64, 32, 64, 16, 64, 32, 11, 8, 11, 11);
    ov101_021D15BC(param0);
}

static void ov101_021D15A4(UnkStruct_ov101_021D13C8 *param0)
{
    ov101_021D1868(param0);
    ov101_021D7FB4(param0->unk_450);
    sub_0200A878();
}

static void ov101_021D15BC(UnkStruct_ov101_021D13C8 *param0)
{
    ov101_021D80E4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DMAIN), param0->unk_438, 11, 0);
    ov101_021D80E4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DMAIN), param0->unk_438, 21, 1);
    ov101_021D80E4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), param0->unk_438, 68, 6);
    ov101_021D80E4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), param0->unk_438, 71, 7);
    ov101_021D80E4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), param0->unk_438, 64, 8);
    ov101_021D80E4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), param0->unk_438, 60, 9);

    ov101_021D81B4(param0->unk_450, (NNS_G2D_VRAM_TYPE_MAX), param0->unk_438, 10, 0);
    ov101_021D81B4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DMAIN), param0->unk_438, 20, 1);
    ov101_021D81B4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), param0->unk_438, 67, 6);
    ov101_021D81B4(param0->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), param0->unk_438, 63, 7);

    ov101_021D8288(param0->unk_450, param0->unk_438, 12, 0);
    ov101_021D8288(param0->unk_450, param0->unk_438, 22, 1);
    ov101_021D8288(param0->unk_450, param0->unk_438, 69, 6);
    ov101_021D8288(param0->unk_450, param0->unk_438, 72, 7);
    ov101_021D8288(param0->unk_450, param0->unk_438, 65, 8);
    ov101_021D8288(param0->unk_450, param0->unk_438, 61, 9);

    ov101_021D82F0(param0->unk_450, param0->unk_438, 13, 0);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 23, 1);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 70, 6);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 73, 7);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 66, 8);
    ov101_021D82F0(param0->unk_450, param0->unk_438, 62, 9);

    ov101_021D814C(param0->unk_450, 0);
    ov101_021D814C(param0->unk_450, 1);
    ov101_021D814C(param0->unk_450, 6);
    ov101_021D814C(param0->unk_450, 7);
    ov101_021D814C(param0->unk_450, 8);
    ov101_021D814C(param0->unk_450, 9);
    ov101_021D8180(param0->unk_450, 0);
    ov101_021D8180(param0->unk_450, 1);
    ov101_021D8180(param0->unk_450, 6);
    ov101_021D8180(param0->unk_450, 7);
    ov101_021D8180(param0->unk_450, 8);
    ov101_021D8180(param0->unk_450, 9);

    ov101_021D8220(param0->unk_450, 0);
    ov101_021D8220(param0->unk_450, 1);
    ov101_021D8220(param0->unk_450, 6);
    ov101_021D8220(param0->unk_450, 7);
    ov101_021D8254(param0->unk_450, 0);
    ov101_021D8254(param0->unk_450, 1);
    ov101_021D8254(param0->unk_450, 6);
    ov101_021D8254(param0->unk_450, 7);
}

static void ov101_021D1868(UnkStruct_ov101_021D13C8 *param0)
{
    return;
}

static void ov101_021D186C(UnkStruct_ov101_021D13C8 *param0)
{
    param0->unk_44C = sub_020711EC(79, 128);
}

static void ov101_021D1884(UnkStruct_ov101_021D13C8 *param0)
{
    sub_0207121C(param0->unk_44C);
}

void ov101_021D1894(UnkStruct_ov101_021D13C8 *param0, UnkEnum_ov101_021D1894 param1)
{
    UnkStruct_ov101_021D1894 *v0 = &param0->unk_424;

    if ((v0->unk_08 == param1) || (v0->unk_0C == param1)) {
        return;
    }

    v0->unk_0C = param1;
    v0->unk_00 = 1;
    v0->unk_04 = 1;
}

static int ov101_021D18B4(UnkStruct_ov101_021D13C8 *param0)
{
    UnkStruct_ov101_021D1894 *v0 = &param0->unk_424;
    return v0->unk_04;
}

static void ov101_021D18C0(UnkStruct_ov101_021D13C8 *param0)
{
    UnkStruct_ov101_021D1894 *v0 = &param0->unk_424;

    v0->unk_08 = UnkEnum_ov101_021D1894_00;
    v0->unk_0C = UnkEnum_ov101_021D1894_03;
    v0->unk_10 = SysTask_Start(ov101_021D18F4, param0, 144);
}

static void ov101_021D18E4(UnkStruct_ov101_021D13C8 *param0)
{
    SysTask_Done(param0->unk_424.unk_10);
}

static void ov101_021D18F4(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D13C8 *v0 = param1;
    UnkStruct_ov101_021D1894 *v1 = &v0->unk_424;

    switch (v1->unk_00) {
    case 0:
        break;
    case 1:
        switch (v1->unk_08) {
        case UnkEnum_ov101_021D1894_00:
            sub_020049F4(1, 1);
            break;
        case UnkEnum_ov101_021D1894_01:
            sub_020055D0(1184, 0);
            break;
        case UnkEnum_ov101_021D1894_02:
            sub_020055D0(1185, 0);
            break;
        }

        v1->unk_00++;
        break;
    case 2:
        switch (v1->unk_0C) {
        case UnkEnum_ov101_021D1894_00:
            sub_020049F4(1, 0);
            break;
        case UnkEnum_ov101_021D1894_01:
            sub_02005474(1184);
            break;
        case UnkEnum_ov101_021D1894_02:
            sub_02005474(1185);
            break;
        }

        v1->unk_08 = v1->unk_0C;
        v1->unk_0C = UnkEnum_ov101_021D1894_03;
        v1->unk_04 = 0;
        v1->unk_00 = 0;
    }
}

static void ov101_021D197C(void *param0)
{
    UnkStruct_ov101_021D13C8 *v0 = param0;

    sub_0201DCAC();
    sub_0200A858();
    sub_0201C2B8(v0->unk_43C);
}

void *ov101_021D1998(u32 param0)
{
    void *v0 = Heap_AllocFromHeap(79, param0);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param0);

    return v0;
}

static void ov101_021D19BC(UnkStruct_ov101_021D13C8 *param0)
{
    param0->unk_438 = NARC_ctor(NARC_INDEX_DATA__SLOT, 79);
}

static void ov101_021D19D4(UnkStruct_ov101_021D13C8 *param0)
{
    NARC_dtor(param0->unk_438);
}

void *ov101_021D19E4(UnkStruct_ov101_021D13C8 *param0, u32 param1, int param2)
{
    void *v0;
    u32 v1 = NARC_GetMemberSize(param0->unk_438, param1);

    if (param2 == 1) {
        v0 = Heap_AllocFromHeap(79, v1);
    } else {
        v0 = Heap_AllocFromHeapAtEnd(79, v1);
    }

    GF_ASSERT(v0 != NULL);
    NARC_ReadWholeMember(param0->unk_438, param1, v0);

    return v0;
}

static const UnkStruct_ov61_0222C884 Unk_ov101_021D8588[1] = {
    { 0x0, 0x2, 0x13, 0x1A, 0x4, 0xF, 0x3D }
};
