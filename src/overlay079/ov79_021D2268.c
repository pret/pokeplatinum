#include "overlay079/ov79_021D2268.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020158A8.h"
#include "struct_defs/struct_02098DE8.h"
#include "struct_defs/struct_0209903C.h"
#include "struct_defs/struct_0209916C.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay079/ov79_021D3768.h"
#include "overlay079/struct_ov79_021D3820.h"
#include "overlay079/struct_ov79_021D38D0.h"

#include "bg_window.h"
#include "communication_system.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_oam.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"
#include "unk_020989DC.h"
#include "unk_02098FFC.h"
#include "vram_transfer.h"

typedef struct {
    StringTemplate *unk_00;
    Strbuf *unk_04;
    Strbuf *unk_08[3];
} UnkStruct_ov79_021D2928_sub1;

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    VecFx32 unk_24;
    VecFx32 unk_30;
    VecFx32 unk_3C;
    fx32 unk_48;
    fx32 unk_4C;
    u16 unk_50;
    u16 unk_52;
    fx32 unk_54;
    int unk_58;
} UnkStruct_ov79_021D2C50;

typedef struct UnkStruct_ov79_021D29B4_t UnkStruct_ov79_021D29B4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    UnkStruct_ov79_021D29B4 *unk_14;
    SysTask *unk_18;
} UnkStruct_ov79_021D29E4;

struct UnkStruct_ov79_021D29B4_t {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov79_021D2C50 unk_0C;
    UnkStruct_ov79_021D2C50 unk_68;
    Sprite *unk_C4;
    PokemonSprite *unk_C8;
    UnkStruct_ov79_021D29E4 unk_CC[4];
};

typedef struct {
    int heapID;
    int unk_04;
    int unk_08;
    u16 unk_0C;
    u16 unk_0E;
    UnkStruct_02098DE8 *unk_10;
    UnkStruct_020158A8 *unk_14;
    MessageLoader *unk_18;
    UnkStruct_ov79_021D2928_sub1 unk_1C;
    UnkStruct_ov79_021D38D0 unk_30;
    UnkStruct_ov79_021D3820 unk_40;
    UnkStruct_0209903C *unk_5C;
    UnkStruct_0209916C *unk_60[2];
    BgConfig *unk_68;
    Window unk_6C;
    SpriteSystem *unk_7C;
    UnkStruct_ov79_021D29B4 unk_80;
} UnkStruct_ov79_021D2928;

int ov79_021D22AC(ApplicationManager *appMan, int *param1);
int ov79_021D22E4(ApplicationManager *appMan, int *param1);
int ov79_021D2460(ApplicationManager *appMan, int *param1);
static int ov79_021D2928(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D252C(void *param0);
static int ov79_021D247C(UnkStruct_ov79_021D2928 *param0);
static int ov79_021D24D4(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D257C(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D260C(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2634(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D270C(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2754(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2768(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D27AC(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D27D8(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2858(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2864(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2908(UnkStruct_ov79_021D2928 *param0);
static int ov79_021D2A04(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2AE0(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2AF0(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2B3C(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2B54(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2B84(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2B94(UnkStruct_ov79_021D2928 *param0);
static int ov79_021D2C08(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2C50(SysTask *param0, void *param1);
static void ov79_021D2CEC(SysTask *param0, void *param1);
static void ov79_021D2D7C(SysTask *param0, void *param1);
static void ov79_021D2E74(SysTask *param0, void *param1);
static void ov79_021D2F4C(SysTask *param0, void *param1);
static void ov79_021D2FE0(SysTask *param0, void *param1);
static void ov79_021D3094(SysTask *param0, void *param1);
static void ov79_021D312C(SysTask *param0, void *param1);
static void ov79_021D326C(SysTask *param0, void *param1);
static void ov79_021D3290(SysTask *param0, void *param1);
static void ov79_021D3324(SysTask *param0, void *param1);
static void ov79_021D33DC(SysTask *param0, void *param1);
static void ov79_021D34A8(SysTask *param0, void *param1);
static void ov79_021D35B0(SysTask *param0, void *param1);
static void ov79_021D35EC(SysTask *param0, void *param1);
static void ov79_021D3610(SysTask *param0, void *param1);
static void ov79_021D36CC(SysTask *param0, void *param1);
static void ov79_021D36F0(SysTask *param0, void *param1);

static VecFx32 ov79_021D2268(VecFx32 *param0, VecFx32 *param1, fx32 param2)
{
    VecFx32 v0 = { 0, 0, 0 };

    param0->x = FX_Div(param1->x, param2);
    param0->y = FX_Div(param1->y, param2);
    param0->z = FX_Div(param1->z, param2);

    return v0;
}

int ov79_021D22AC(ApplicationManager *appMan, int *param1)
{
    UnkStruct_02098DE8 *v0 = ApplicationManager_Args(appMan);
    UnkStruct_ov79_021D2928 *v1;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_46, 0x10000);

    v1 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov79_021D2928), HEAP_ID_46);
    MI_CpuClear8(v1, sizeof(UnkStruct_ov79_021D2928));

    v1->heapID = HEAP_ID_46;
    v1->unk_10 = v0;

    return 1;
}

int ov79_021D22E4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov79_021D2928 *v0 = (UnkStruct_ov79_021D2928 *)ApplicationManager_Data(appMan);

    if ((*param1 >= 2) && (*param1 <= 5)) {
        ov79_021D3820(&v0->unk_40);
        sub_02099160(v0->unk_5C);
    }

    switch (*param1) {
    case 0:

        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        break;
    case 1:
        if (!ov79_021D247C(v0)) {
            return 0;
        }

        SetVBlankCallback(ov79_021D252C, v0);
        break;
    case 2:
        if (v0->unk_04++ < 4) {
            return 0;
        }

        v0->unk_04 = 0;
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, v0->heapID);
        break;
    case 3:
        if (!IsScreenFadeDone()) {
            return 0;
        }

        break;
    case 4:
        if (!ov79_021D2928(v0)) {
            return 0;
        }

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, v0->heapID);
        break;
    case 5:
        if (!IsScreenFadeDone()) {
            return 0;
        }

        break;
    case 6:
        if (!ov79_021D24D4(v0)) {
            return 0;
        }

        break;
    case 7:
        SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
        SetVBlankCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        break;
    default:
        return 1;
    }

    *param1 += 1;
    return 0;
}

int ov79_021D2460(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov79_021D2928 *v0 = (UnkStruct_ov79_021D2928 *)ApplicationManager_Data(appMan);

    ApplicationManager_FreeData(appMan);

    Heap_Destroy(v0->heapID);
    return 1;
}

static int ov79_021D247C(UnkStruct_ov79_021D2928 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov79_021D257C(param0);
        ov79_021D2634(param0);
        break;
    case 1:
        ov79_021D2768(param0);
        ov79_021D270C(param0);
        break;
    case 2:
        ov79_021D27D8(param0);
        ov79_021D3768(&param0->unk_40, &param0->unk_30, param0->heapID);
        ov79_021D2864(param0);

        param0->unk_04 = 0;
        return 1;
    }

    param0->unk_04++;
    return 0;
}

static int ov79_021D24D4(UnkStruct_ov79_021D2928 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov79_021D2908(param0);
        ov79_021D385C(&param0->unk_40);
        ov79_021D2858(param0);
        break;
    case 1:
        ov79_021D2754(param0);
        ov79_021D27AC(param0);
        break;
    case 2:
        ov79_021D260C(param0);
        break;
    case 3:
        param0->unk_04 = 0;
        return 1;
    }

    param0->unk_04++;
    return 0;
}

static void ov79_021D252C(void *param0)
{
    UnkStruct_ov79_021D2928 *v0 = param0;

    Bg_RunScheduledUpdates(v0->unk_68);
    PokemonSpriteManager_UpdateCharAndPltt(v0->unk_40.unk_04);

    SpriteSystem_TransferOam();
    VramTransfer_Process();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov79_021D255C(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_16_G,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0_F
    };

    GXLayers_SetBanks(&v0);
}

static void ov79_021D257C(UnkStruct_ov79_021D2928 *param0)
{
    int v0 = 0, v1;

    ov79_021D255C();

    param0->unk_68 = BgConfig_New(param0->heapID);

    {
        GraphicsModes v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v2);
    }

    {
        BgTemplate v3[] = {
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0xf000,
                .charBase = GX_BG_CHARBASE_0x10000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 0,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0xe800,
                .charBase = GX_BG_CHARBASE_0x00000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 2,
                .areaOver = 0,
                .mosaic = FALSE,
            },
            {
                .x = 0,
                .y = 0,
                .bufferSize = 0x800,
                .baseTile = 0,
                .screenSize = BG_SCREEN_SIZE_256x256,
                .colorMode = GX_BG_COLORMODE_16,
                .screenBase = GX_BG_SCRBASE_0x7800,
                .charBase = GX_BG_CHARBASE_0x00000,
                .bgExtPltt = GX_BG_EXTPLTT_01,
                .priority = 0,
                .areaOver = 0,
                .mosaic = FALSE,
            },
        };
        u8 v4[] = { 1, 2, 4 };

        for (v0 = 0; v0 < 3; v0++) {
            v1 = v4[v0];
            Bg_InitFromTemplate(param0->unk_68, v1, &(v3[v0]), 0);
            Bg_ClearTilemap(param0->unk_68, v1);
            Bg_ClearTilesRange(v1, 32, 0, param0->heapID);
        }
    }
}

static void ov79_021D260C(UnkStruct_ov79_021D2928 *param0)
{
    int v0;

    for (v0 = 1; v0 < 3; v0++) {
        Bg_FreeTilemapBuffer(param0->unk_68, v0);
    }

    Bg_FreeTilemapBuffer(param0->unk_68, BG_LAYER_SUB_0);
    Heap_Free(param0->unk_68);
}

static void ov79_021D2634(UnkStruct_ov79_021D2928 *param0)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PORUDEMO, param0->heapID);

    App_LoadGraphicMember(param0->unk_68, param0->heapID, v0, 87, 2, BG_LAYER_MAIN_2, GRAPHICSMEMBER_TILES, 0, 0);
    App_LoadGraphicMember(param0->unk_68, param0->heapID, v0, 87, 3, BG_LAYER_SUB_0, GRAPHICSMEMBER_TILES, 0, 0);

    App_LoadGraphicMember(param0->unk_68, param0->heapID, v0, 87, 0, BG_LAYER_MAIN_2, GRAPHICSMEMBER_PALETTE, 0x20 * 0x1, 0);
    App_LoadGraphicMember(param0->unk_68, param0->heapID, v0, 87, 1, BG_LAYER_SUB_0, GRAPHICSMEMBER_PALETTE, 0x20 * 0x5, 0);

    App_LoadGraphicMember(param0->unk_68, param0->heapID, v0, 87, 4, BG_LAYER_MAIN_2, GRAPHICSMEMBER_TILEMAP, 0, 0);
    App_LoadGraphicMember(param0->unk_68, param0->heapID, v0, 87, 5, BG_LAYER_SUB_0, GRAPHICSMEMBER_TILEMAP, 0, 0);

    NARC_dtor(v0);

    Bg_ScheduleTilemapTransfer(param0->unk_68, 2);
    Bg_ScheduleTilemapTransfer(param0->unk_68, 4);
}

static void ov79_021D270C(UnkStruct_ov79_021D2928 *param0)
{
    static const WindowTemplate v0 = {
        1, 2, 19, 27, 4, 15, (1 + (18 + 12))
    };

    Window_AddFromTemplate(param0->unk_68, &(param0->unk_6C), &v0);
    Window_FillTilemap(&param0->unk_6C, (0 << 4) | 0);
    LoadMessageBoxGraphics(param0->unk_68, BG_LAYER_MAIN_1, 1, 14, param0->unk_10->unk_0B, param0->heapID);
    Font_LoadScreenIndicatorsPalette(0, 15 * 32, param0->heapID);
}

static void ov79_021D2754(UnkStruct_ov79_021D2928 *param0)
{
    Window_ClearAndCopyToVRAM(&param0->unk_6C);
    Window_Remove(&param0->unk_6C);
}

static void ov79_021D2768(UnkStruct_ov79_021D2928 *param0)
{
    int v0 = 0;

    param0->unk_18 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0462, param0->heapID);
    param0->unk_1C.unk_00 = StringTemplate_New(1, 64, param0->heapID);
    param0->unk_1C.unk_04 = Strbuf_Init(64, param0->heapID);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_1C.unk_08[v0] = MessageLoader_GetNewStrbuf(param0->unk_18, v0);
    }
}

static void ov79_021D27AC(UnkStruct_ov79_021D2928 *param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 3; v0++) {
        Strbuf_Free(param0->unk_1C.unk_08[v0]);
    }

    Strbuf_Free(param0->unk_1C.unk_04);
    StringTemplate_Free(param0->unk_1C.unk_00);
    MessageLoader_Free(param0->unk_18);
}

static void ov79_021D27D8(UnkStruct_ov79_021D2928 *param0)
{
    param0->unk_30.unk_00 = param0->unk_10->unk_00;
    param0->unk_30.unk_04 = Pokemon_GetValue(param0->unk_10->unk_00, MON_DATA_SPECIES, NULL);
    param0->unk_30.unk_07 = Pokemon_GetGender(param0->unk_10->unk_00);
    param0->unk_30.unk_06 = Pokemon_GetNature(param0->unk_10->unk_00);
    param0->unk_30.unk_08 = SpeciesData_GetFormValue(param0->unk_30.unk_04, Pokemon_GetValue(param0->unk_10->unk_00, MON_DATA_FORM, NULL), 28) ^ 1;
    param0->unk_30.unk_0C = Strbuf_Init(12, param0->heapID);

    Pokemon_GetValue(param0->unk_10->unk_00, MON_DATA_NICKNAME_STRING, param0->unk_30.unk_0C);

    param0->unk_30.unk_09 = sub_02098EAC(param0->unk_10->unk_04, param0->unk_30.unk_06);
}

static void ov79_021D2858(UnkStruct_ov79_021D2928 *param0)
{
    Strbuf_Free(param0->unk_30.unk_0C);
}

static void ov79_021D2864(UnkStruct_ov79_021D2928 *param0)
{
    VramTransfer_New(32, param0->heapID);

    param0->unk_7C = SpriteSystem_Alloc(param0->heapID);

    {
        RenderOamTemplate v0 = {
            0,
            128,
            0,
            31,
            0,
            1,
            0,
            31,
        };
        CharTransferTemplateWithModes v1 = {
            3,
            0,
            0,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K,
        };

        SpriteSystem_Init(param0->unk_7C, &v0, &v1, 32);
        RenderOam_ClearMain(param0->heapID);
    }

    param0->unk_5C = sub_02098FFC(param0->heapID, 2, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 0);
    param0->unk_60[0] = sub_0209916C(param0->unk_5C, param0->unk_10->unk_08, 100, 90, 0, 1, 0, 0);

    ManagedSprite_SetDrawFlag(param0->unk_60[0]->unk_04, 0);

    if (CommSys_IsInitialized()) {
        sub_02039734();
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov79_021D2908(UnkStruct_ov79_021D2928 *param0)
{
    sub_02099370(param0->unk_5C, param0->unk_60[0]);
    sub_0209903C(param0->unk_5C);
    SpriteSystem_Free(param0->unk_7C);
    VramTransfer_Free();
}

static int ov79_021D2928(UnkStruct_ov79_021D2928 *param0)
{
    switch (param0->unk_04) {
    case 0:
        param0->unk_04 = ov79_021D2A04(param0, &param0->unk_80);
        break;
    case 1:
        param0->unk_04 = ov79_021D2AE0(param0, &param0->unk_80);
        break;
    case 2:
        param0->unk_04 = ov79_021D2AF0(param0, &param0->unk_80);
        break;
    case 3:
        param0->unk_04 = ov79_021D2B3C(param0, &param0->unk_80);
        break;
    case 4:
        param0->unk_04 = ov79_021D2B54(param0, &param0->unk_80);
        break;
    case 5:
        param0->unk_04 = ov79_021D2B84(param0, &param0->unk_80);
        break;
    case 6:
        param0->unk_04 = ov79_021D2B94(param0);
        break;
    case 7:
        param0->unk_04 = ov79_021D2C08(param0);
        break;
    case 8:
    default:
        param0->unk_04 = 0;
        return 1;
    }

    return 0;
}

static int ov79_021D29B4(UnkStruct_ov79_021D29B4 *param0, int param1, SysTaskFunc param2)
{
    UnkStruct_ov79_021D29E4 *v0 = &(param0->unk_CC[param1]);

    MI_CpuClear8(v0, sizeof(UnkStruct_ov79_021D29E4));

    v0->unk_14 = param0;
    v0->unk_18 = SysTask_Start(param2, v0, 0);

    param0->unk_04++;
    return param0->unk_04;
}

static int ov79_021D29E4(UnkStruct_ov79_021D29E4 *param0)
{
    SysTask_Done(param0->unk_18);
    param0->unk_14->unk_04--;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov79_021D29E4));
    return 0;
}

static int ov79_021D2A04(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    VecFx32 v0;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov79_021D29B4));

    param1->unk_C4 = param0->unk_60[0]->unk_04->sprite;
    param1->unk_C8 = param0->unk_40.unk_18;
    param1->unk_08 = param0->unk_30.unk_09;
    param1->unk_00 = 24;
    param1->unk_0C.unk_00.x = FX32_CONST(128);
    param1->unk_0C.unk_00.y = FX32_CONST(192 + 32);
    param1->unk_0C.unk_0C.x = FX32_CONST(128);
    param1->unk_0C.unk_0C.y = FX32_CONST(96);
    param1->unk_0C.unk_24.x = 0x1000;
    param1->unk_0C.unk_24.y = 0x1000;
    param1->unk_0C.unk_30.x = 0x800;
    param1->unk_0C.unk_30.y = 0x800;
    param1->unk_0C.unk_58 = 24;
    param1->unk_0C.unk_54 = 0;

    Sprite_SetPosition(param1->unk_C4, &param1->unk_0C.unk_00);
    VEC_Subtract(&param1->unk_0C.unk_00, &param1->unk_0C.unk_0C, &v0);
    ov79_021D2268(&param1->unk_0C.unk_3C, &v0, FX32_CONST(24));

    Sprite_SetAffineOverwriteMode(param1->unk_C4, 1);
    Sprite_SetAffineScale(param1->unk_C4, &param1->unk_0C.unk_24);

    ov79_021D29B4(param1, 0, ov79_021D2C50);
    ov79_021D29B4(param1, 1, ov79_021D2D7C);
    ov79_021D29B4(param1, 2, ov79_021D2F4C);
    ov79_021D29B4(param1, 3, ov79_021D3094);

    return 1;
}

static int ov79_021D2AE0(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    int v0, v1 = 0;

    if (param1->unk_04) {
        return 1;
    }

    return 2;
}

static int ov79_021D2AF0(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    u32 form = Pokemon_GetValue(param0->unk_30.unk_00, MON_DATA_FORM, NULL);

    switch (param0->unk_30.unk_09) {
    case 1:
        Sound_PlayPokemonCryEx(POKECRY_PINCH_NORMAL, param0->unk_30.unk_04, 0, 127, param0->heapID, form);
        break;
    default:
        Sound_PlayPokemonCryEx(POKECRY_NORMAL, param0->unk_30.unk_04, 0, 127, param0->heapID, form);
        break;
    }

    return 3;
}

static int ov79_021D2B3C(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    if (Sound_IsPokemonCryPlaying()) {
        return 3;
    }

    Sound_StopPokemonCries(0);
    return 4;
}

static int ov79_021D2B54(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    MI_CpuClear8(&param1->unk_68, sizeof(UnkStruct_ov79_021D2C50));
    ov79_021D29B4(param1, 0, ov79_021D3290);
    ov79_021D29B4(param1, 1, ov79_021D33DC);

    return 5;
}

static int ov79_021D2B84(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    if (param1->unk_04) {
        return 5;
    }

    return 6;
}

static int ov79_021D2B94(UnkStruct_ov79_021D2928 *param0)
{
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_6C, 1, 1, 14);
    Window_FillTilemap(&param0->unk_6C, (15 << 4) | 15);
    Strbuf_Clear(param0->unk_1C.unk_04);
    StringTemplate_SetStrbuf(param0->unk_1C.unk_00, 0, param0->unk_30.unk_0C, 2, 1, GAME_LANGUAGE);
    StringTemplate_Format(param0->unk_1C.unk_00, param0->unk_1C.unk_04, param0->unk_1C.unk_08[param0->unk_30.unk_09]);

    param0->unk_0C = Text_AddPrinterWithParamsAndColor(&param0->unk_6C, FONT_MESSAGE, param0->unk_1C.unk_04, 0, 0, param0->unk_10->unk_0A, TEXT_COLOR(1, 2, 15), NULL);
    param0->unk_0E = 0;

    return 7;
}

static int ov79_021D2C08(UnkStruct_ov79_021D2928 *param0)
{
    if (Text_IsPrinterActive(param0->unk_0C)) {
        return 7;
    }

    if (((gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) == 0) && (param0->unk_0E++ < 90)) {
        return 7;
    }

    Window_EraseMessageBox(&param0->unk_6C, 1);
    Window_ClearAndCopyToVRAM(&param0->unk_6C);

    return 8;
}

static void ov79_021D2C50(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_0C;
    VecFx32 v3;

    v0->unk_04 = 24;

    v2->unk_24.x = 0x1000;
    v2->unk_24.y = 0x1000;
    v2->unk_30.x = 0x800;
    v2->unk_30.y = 0x800;

    VEC_Subtract(&v2->unk_24, &v2->unk_30, &v3);

    ov79_021D2268(&v2->unk_3C, &v3, FX32_CONST(v0->unk_04));
    Sprite_SetDrawFlag(v1->unk_C4, TRUE);
    Sprite_SetAffineOverwriteMode(v1->unk_C4, 1);
    Sprite_SetAffineScale(v1->unk_C4, &v2->unk_24);
    SysTask_SetCallback(param0, ov79_021D2CEC);
}

static void ov79_021D2CEC(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_0C;
    VecFx32 v3 = { 0, 0, 0 };

    v3.x = v2->unk_24.x - FX_Mul(v2->unk_3C.x, v0->unk_0C);
    v3.y = v2->unk_24.y - FX_Mul(v2->unk_3C.y, v0->unk_0C);

    Sprite_SetAffineScale(v1->unk_C4, &v3);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04 == 0) {
        Sprite_SetDrawFlag(v1->unk_C4, FALSE);
        ov79_021D29E4(v0);
    }
}

static void ov79_021D2D7C(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_0C;
    VecFx32 v3 = { 0, 0, 0 };

    v0->unk_04 = 24;

    v2->unk_00.x = FX32_CONST(128);
    v2->unk_00.y = FX32_CONST(192 + 32);
    v2->unk_0C.x = FX32_CONST(128);
    v2->unk_0C.y = FX32_CONST(96);

    VEC_Subtract(&v2->unk_0C, &v2->unk_00, &v3);
    ov79_021D2268(&v2->unk_18, &v3, FX32_CONST(v0->unk_04));

    v2->unk_48 = FX_Div(FX32_CONST(180), FX32_CONST(v0->unk_04));
    v2->unk_4C = FX_Div(FX32_CONST(1), FX32_CONST(v0->unk_04));

    Sprite_SetPosition(v1->unk_C4, &v2->unk_00);
    SysTask_SetCallback(param0, ov79_021D2E74);
}

static void ov79_021D2E74(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_0C;
    VecFx32 v3;
    fx32 v4, v5;

    v3.x = v2->unk_00.x + FX_Mul(v2->unk_18.x, v0->unk_0C);
    v3.y = v2->unk_00.y + FX_Mul(v2->unk_18.y, v0->unk_0C);

    v4 = FX_Mul(v2->unk_48, v0->unk_0C);
    v4 = FX_Mul(CalcSineDegrees_Wraparound(v4 >> 12), FX32_CONST(-64));
    v5 = FX32_ONE;
    v3.y += FX_Mul(v4, v5);

    Sprite_SetPosition(v1->unk_C4, &v3);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04) {
        return;
    }

    ov79_021D29E4(v0);
}

static void ov79_021D2F4C(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v0->unk_04 = 24;

    v2->unk_24.x = 0x1000;
    v2->unk_24.y = 0x1000;
    v2->unk_30.x = 0x1800;
    v2->unk_30.y = 0x1800;

    VEC_Subtract(&v2->unk_30, &v2->unk_24, &v3);
    ov79_021D2268(&v2->unk_3C, &v3, FX32_CONST(v0->unk_04));

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_X, 0x1000 >> 4);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_Y, 0x1000 >> 4);
    SysTask_SetCallback(param0, ov79_021D2FE0);
}

static void ov79_021D2FE0(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v3.x = v2->unk_24.x + FX_Mul(v2->unk_3C.x, v0->unk_0C);
    v3.y = v2->unk_24.y + FX_Mul(v2->unk_3C.y, v0->unk_0C);

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_X, v3.x >> 4);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_Y, v3.y >> 4);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04 == 0) {
        PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_X_CENTER, 128);
        PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_CENTER, 96);
        ov79_021D29E4(v0);
    }
}

static void ov79_021D3094(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v0->unk_04 = 24;

    v2->unk_00.x = FX32_CONST(128);
    v2->unk_00.y = FX32_CONST(96);
    v2->unk_0C.x = FX32_CONST(128);
    v2->unk_0C.y = FX32_CONST(112);

    VEC_Subtract(&v2->unk_0C, &v2->unk_00, &v3);

    ov79_021D2268(&v2->unk_18, &v3, FX32_CONST(v0->unk_04));
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_X_CENTER, v2->unk_00.x >> 12);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_CENTER, v2->unk_00.y >> 12);
    SysTask_SetCallback(param0, ov79_021D312C);
}

static void ov79_021D312C(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;
    fx32 v4;
    int v5;

    v3.x = v2->unk_00.x + FX_Mul(v2->unk_18.x, v0->unk_0C);
    v3.y = v2->unk_00.y + FX_Mul(v2->unk_18.y, v0->unk_0C);

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_X_CENTER, v3.x >> 12);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_CENTER, v3.y >> 12);

    v5 = v2->unk_50 - 4;
    v5 = -(v5 * v5) + 16;
    v4 = FX32_CONST(-v5);
    v4 = FX_Mul(v4, FX32_CONST(1.4));

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_OFFSET, v4 >> 12);

    v2->unk_50++;

    if (v2->unk_50 > 8) {
        v2->unk_50 = 0;
    }

    v0->unk_0C += FX32_ONE;

    if (v0->unk_04--) {
        return;
    }

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_OFFSET, 0);
    v2->unk_50 = 0;

    SysTask_SetCallback(param0, ov79_021D326C);
}

static void ov79_021D326C(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;

    if (v2->unk_50++ < 4) {
        return;
    }

    ov79_021D29E4(v0);
}

static void ov79_021D3290(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v0->unk_04 = 24 / 3;

    v2->unk_24.x = 0x1800;
    v2->unk_24.y = 0x1800;
    v2->unk_30.x = 0x1000;
    v2->unk_30.y = 0x1000;

    VEC_Subtract(&v2->unk_30, &v2->unk_24, &v3);
    ov79_021D2268(&v2->unk_3C, &v3, FX32_CONST(v0->unk_04));

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_X, 0x1800 >> 4);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_Y, 0x1800 >> 4);
    SysTask_SetCallback(param0, ov79_021D3324);
}

static void ov79_021D3324(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v3.x = v2->unk_24.x + FX_Mul(v2->unk_3C.x, v0->unk_0C);
    v3.y = v2->unk_24.y + FX_Mul(v2->unk_3C.y, v0->unk_0C);

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_X, v3.x >> 4);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_Y, v3.y >> 4);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04) {
        return;
    }

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_X, 0x100);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_SCALE_Y, 0x100);
    ov79_021D29E4(v0);
}

static void ov79_021D33DC(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v0->unk_04 = 24 / 3;

    v2->unk_00.x = FX32_CONST(128);
    v2->unk_00.y = FX32_CONST(112);
    v2->unk_0C.x = FX32_CONST(128);
    v2->unk_0C.y = FX32_CONST(96);

    VEC_Subtract(&v2->unk_0C, &v2->unk_00, &v3);
    ov79_021D2268(&v2->unk_18, &v3, FX32_CONST(v0->unk_04));

    v2->unk_48 = FX_Div(FX32_CONST(180), FX32_CONST(v0->unk_04));

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_X_CENTER, v2->unk_00.x >> 12);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_CENTER, v2->unk_00.y >> 12);
    SysTask_SetCallback(param0, ov79_021D34A8);
}

static void ov79_021D34A8(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;
    fx32 v4;
    int v5;

    v3.x = v2->unk_00.x + FX_Mul(v2->unk_18.x, v0->unk_0C);
    v3.y = v2->unk_00.y + FX_Mul(v2->unk_18.y, v0->unk_0C);

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_X_CENTER, v3.x >> 12);
    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_CENTER, v3.y >> 12);

    v4 = FX_Mul(v2->unk_48, v0->unk_0C);
    v4 = FX_Mul(CalcSineDegrees_Wraparound(v4 >> 12), FX32_CONST(-6));

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_OFFSET, v4 >> 12);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04) {
        return;
    }

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_OFFSET, 0);
    SysTask_SetCallback(param0, ov79_021D35B0);
}

static void ov79_021D35B0(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;

    if (v0->unk_04++ < 4) {
        return;
    }

    switch (v0->unk_14->unk_08) {
    case 0:
        SysTask_SetCallback(param0, ov79_021D35EC);
        break;
    case 1:
        SysTask_SetCallback(param0, ov79_021D36CC);
        break;
    default:
        ov79_021D29E4(v0);
        break;
    }
}

static void ov79_021D35EC(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    MI_CpuClear8(v2, sizeof(UnkStruct_ov79_021D2C50));
    v0->unk_04 = 3;
    SysTask_SetCallback(param0, ov79_021D3610);
}

static void ov79_021D3610(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;
    fx32 v4, v5;
    int v6 = v2->unk_50 - 4;
    v6 = -(v6 * v6) + 16;
    v4 = FX32_CONST(-v6);
    v4 = FX_Mul(v4, FX32_CONST(1.4));

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_OFFSET, v4 >> 12);

    v2->unk_52 = 0;
    v2->unk_50++;

    if (v2->unk_50 > 8) {
        v2->unk_50 = 0;
        v0->unk_04--;
    }

    if (v0->unk_04 == 0) {
        PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_Y_OFFSET, 0);
        ov79_021D29E4(v0);
    }
}

static void ov79_021D36CC(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    MI_CpuClear8(v2, sizeof(UnkStruct_ov79_021D2C50));
    v0->unk_04 = 32;
    SysTask_SetCallback(param0, ov79_021D36F0);
}

static void ov79_021D36F0(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;
    fx32 v4, v5;

    v4 = CalcSineDegrees_Wraparound(v2->unk_50);
    v5 = FX_Mul(v4, FX32_CONST(2));

    if (v2->unk_50 > 359) {
        v2->unk_50 = 0;
    } else {
        v2->unk_50 += 90;
    }

    PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_X_OFFSET, v5 >> 12);

    v0->unk_04--;

    if (v0->unk_04 == 0) {
        PokemonSprite_SetAttribute(v1->unk_C8, MON_SPRITE_X_OFFSET, 0);
        ov79_021D29E4(v0);
    }
}
