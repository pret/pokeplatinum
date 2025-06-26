#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "main.h"
#include "menu.h"
#include "message.h"
#include "overlay_manager.h"
#include "render_window.h"
#include "savedata.h"
#include "screen_fade.h"
#include "strbuf.h"
#include "system.h"
#include "text.h"

FS_EXTERN_OVERLAY(overlay97);

typedef struct {
    int heapID;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    Strbuf *unk_14;
    BgConfig *unk_18;
    MessageLoader *unk_1C;
    Window unk_20;
    Menu *unk_30;
    SaveData *saveData;
    void *unk_38;
    u32 unk_3C;
} UnkStruct_0209A3D0;

int sub_0209A2C4(ApplicationManager *appMan, int *param1);
int sub_0209A300(ApplicationManager *appMan, int *param1);
int sub_0209A3A4(ApplicationManager *appMan, int *param1);
static void sub_0209A3D0(UnkStruct_0209A3D0 *param0);
static void sub_0209A490(UnkStruct_0209A3D0 *param0);
static void sub_0209A4E4(UnkStruct_0209A3D0 *param0);
static void sub_0209A530(UnkStruct_0209A3D0 *param0);
static BOOL sub_0209A544(UnkStruct_0209A3D0 *param0);
static BOOL sub_0209A688(UnkStruct_0209A3D0 *param0, u32 param1, int param2, int param3);

extern const ApplicationManagerTemplate Unk_ov97_0223D674;

static const WindowTemplate Unk_020F8A58 = {
    0x0,
    0x2,
    0x13,
    0x1B,
    0x4,
    0x1,
    0x16D
};

const ApplicationManagerTemplate Unk_020F8AB4 = {
    sub_0209A2C4,
    sub_0209A300,
    sub_0209A3A4,
    0xFFFFFFFF
};

int sub_0209A2C4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0209A3D0 *v0;
    int heapID = HEAP_ID_88;

    Heap_Create(HEAP_ID_APPLICATION, heapID, 0x20000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_0209A3D0), heapID);
    memset(v0, 0, sizeof(UnkStruct_0209A3D0));

    v0->heapID = heapID;
    v0->unk_04 = 0;
    v0->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;

    return 1;
}

int sub_0209A300(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0209A3D0 *v0 = ApplicationManager_Data(appMan);
    int v1 = 0;

    switch (*param1) {
    case 0:
        SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, FADE_TO_BLACK);
        SetVBlankCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        SetAutorepeat(4, 8);
        sub_0209A3D0(v0);
        sub_0209A4E4(v0);
        GXLayers_TurnBothDispOn();
        *param1 = 1;
        break;
    case 1:
        if (sub_0209A544(v0) == TRUE) {
            *param1 = 2;
        }
        break;
    case 2:
        sub_0209A530(v0);
        sub_0209A490(v0);
        SetVBlankCallback(NULL, NULL);
        v1 = 1;
        break;
    }

    return v1;
}

int sub_0209A3A4(ApplicationManager *appMan, int *param1)
{
    UnkStruct_0209A3D0 *v0 = ApplicationManager_Data(appMan);
    int heapID = v0->heapID;

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);
    EnqueueApplication(FS_OVERLAY_ID(overlay97), &Unk_ov97_0223D674);

    return 1;
}

static void sub_0209A3D0(UnkStruct_0209A3D0 *param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_256_AB,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_NONE,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_NONE,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_NONE,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_NONE,
            GX_VRAM_TEXPLTT_NONE
        };
        GXLayers_SetBanks(&v0);
    }
    {
        param0->unk_18 = BgConfig_New(param0->heapID);
    }
    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };
        SetAllGraphicsModes(&v1);
    }
    {
        BgTemplate v2 = {
            0x0,
            0x0,
            0x800,
            0x0,
            0x1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x18000,
            GX_BG_EXTPLTT_01,
            0x1,
            0x0,
            0x0,
            0x0
        };
        Bg_InitFromTemplate(param0->unk_18, BG_LAYER_MAIN_0, &v2, 0);
        Bg_ClearTilemap(param0->unk_18, BG_LAYER_MAIN_0);
    }
    LoadMessageBoxGraphics(param0->unk_18, BG_LAYER_MAIN_0, 512 - (18 + 12), 2, 0, param0->heapID);
    LoadStandardWindowGraphics(param0->unk_18, BG_LAYER_MAIN_0, (512 - (18 + 12)) - 9, 3, 0, param0->heapID);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0->heapID);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, param0->heapID);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);
}

static void sub_0209A490(UnkStruct_0209A3D0 *param0)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_0, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_2, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_3, 0);
    Bg_FreeTilemapBuffer(param0->unk_18, BG_LAYER_MAIN_0);
    Heap_FreeToHeap(param0->unk_18);
}

static void sub_0209A4E4(UnkStruct_0209A3D0 *param0)
{
    param0->unk_1C = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SAVE_CORRUPTED, param0->heapID);
    Text_ResetAllPrinters();
    param0->unk_0C = 0;

    Window_AddFromTemplate(param0->unk_18, &param0->unk_20, &Unk_020F8A58);
    Window_FillRectWithColor(&param0->unk_20, 15, 0, 0, 27 * 8, 4 * 8);
}

static void sub_0209A530(UnkStruct_0209A3D0 *param0)
{
    Window_Remove(&param0->unk_20);
    MessageLoader_Free(param0->unk_1C);
}

static BOOL sub_0209A544(UnkStruct_0209A3D0 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_04) {
    case 0: {
        param0->unk_3C = SaveData_LoadCheckStatus(param0->saveData);

        if (param0->unk_3C == 0) {
            param0->unk_04 = 6;
        } else {
            param0->unk_04 = 1;
        }
    } break;
    case 1:
        param0->unk_04 = 2;

        if (param0->unk_3C & (1 << 1)) {
            param0->unk_3C &= 0xffffffff ^ ((1 << 1) | (1 << 0));
            param0->unk_08 = 1;
        } else if (param0->unk_3C & (1 << 0)) {
            param0->unk_3C ^= (1 << 0);
            param0->unk_08 = 0;
        } else if (param0->unk_3C & (1 << 3)) {
            param0->unk_3C &= 0xffffffff ^ ((1 << 3) | (1 << 2));
            param0->unk_08 = 5;
        } else if (param0->unk_3C & (1 << 2)) {
            param0->unk_3C ^= (1 << 2);
            param0->unk_08 = 4;
        } else if (param0->unk_3C & (1 << 5)) {
            param0->unk_3C &= 0xffffffff ^ ((1 << 5) | (1 << 4));
            param0->unk_08 = 3;
        } else if (param0->unk_3C & (1 << 4)) {
            param0->unk_3C ^= (1 << 4);
            param0->unk_08 = 2;
        } else {
            param0->unk_04 = 6;
        }
        break;
    case 2:
        Bg_MaskPalette(BG_LAYER_MAIN_0, 0x6c21);
        Bg_MaskPalette(BG_LAYER_SUB_0, 0x6c21);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, param0->heapID);
        param0->unk_04 = 3;
        break;
    case 3:
        if (IsScreenFadeDone() == TRUE) {
            param0->unk_04 = 4;
        }
        break;
    case 4:
        if (sub_0209A688(param0, param0->unk_08, 0, 4) == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, param0->heapID);
            param0->unk_04 = 5;
        }
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
            Bg_MaskPalette(BG_LAYER_SUB_0, 0);
            param0->unk_04 = 1;
        }
        break;
    case 6:
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL sub_0209A688(UnkStruct_0209A3D0 *param0, u32 param1, int param2, int param3)
{
    BOOL v0 = 0;

    switch (param0->unk_0C) {
    case 0:
        Window_FillRectWithColor(&param0->unk_20, 15, 0, 0, 27 * 8, 4 * 8);
        Window_DrawMessageBoxWithScrollCursor(&param0->unk_20, 0, 512 - (18 + 12), 2);

        param0->unk_14 = Strbuf_Init(0x400, param0->heapID);
        MessageLoader_GetStrbuf(param0->unk_1C, param1, param0->unk_14);
        param0->unk_10 = Text_AddPrinterWithParams(&param0->unk_20, FONT_MESSAGE, param0->unk_14, 0, 0, param3, NULL);

        if (param3 == 0) {
            Strbuf_Free(param0->unk_14);
            param0->unk_0C++;
        }

        param0->unk_0C++;
        break;
    case 1:
        if (!(Text_IsPrinterActive(param0->unk_10))) {
            Strbuf_Free(param0->unk_14);
            param0->unk_0C++;
        }
        break;
    case 2:
        if ((param2 != 0) || (gSystem.pressedKeys & PAD_BUTTON_A)) {
            param0->unk_0C = 0;
            v0 = 1;
        }
    }

    return v0;
}
