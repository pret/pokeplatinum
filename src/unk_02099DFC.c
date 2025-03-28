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
#include "strbuf.h"
#include "system.h"
#include "text.h"
#include "sound.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"

FS_EXTERN_OVERLAY(overlay77);

typedef struct {
    int heapID;
    int unk_04;
    int unk_08;
    int unk_0C;
    Strbuf *unk_10;
    BgConfig *unk_14;
    MessageLoader *unk_18;
    Window unk_1C;
    Menu *unk_2C;
    SaveData *unk_30;
    void *unk_34;
} UnkStruct_02099DFC;

void EnqueueApplication(FSOverlayID param0, const OverlayManagerTemplate *param1);
int sub_02099DFC(OverlayManager *param0, int *param1);
int sub_02099E38(OverlayManager *param0, int *param1);
int sub_02099F54(OverlayManager *param0, int *param1);
static void sub_02099F74(void *param0);
static void sub_02099F80(UnkStruct_02099DFC *param0);
static void sub_0209A044(UnkStruct_02099DFC *param0);
static void sub_0209A098(UnkStruct_02099DFC *param0);
static void sub_0209A0E0(UnkStruct_02099DFC *param0);
static BOOL sub_0209A0F4(UnkStruct_02099DFC *param0);
static BOOL sub_0209A200(UnkStruct_02099DFC *param0, u32 param1, int param2, int param3);

extern const OverlayManagerTemplate gTitleScreenOverlayTemplate;

const OverlayManagerTemplate Unk_020F8A48 = {
    sub_02099DFC,
    sub_02099E38,
    sub_02099F54,
    0xFFFFFFFF
};

static const WindowTemplate Unk_020F89E4 = {
    0x0,
    0x2,
    0x13,
    0x1B,
    0x4,
    0x1,
    0x16D
};

static const WindowTemplate Unk_020F89EC = {
    0x0,
    0x19,
    0xD,
    0x6,
    0x4,
    0x1,
    0x155
};

int sub_02099DFC(OverlayManager *param0, int *param1)
{
    UnkStruct_02099DFC *v0;
    int heapID = HEAP_ID_88;

    Heap_Create(HEAP_ID_APPLICATION, heapID, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_02099DFC), heapID);
    memset(v0, 0, sizeof(UnkStruct_02099DFC));

    v0->heapID = heapID;
    v0->unk_04 = 0;
    v0->unk_30 = ((ApplicationArgs *)OverlayManager_Args(param0))->saveData;

    return 1;
}

int sub_02099E38(OverlayManager *param0, int *param1)
{
    UnkStruct_02099DFC *v0 = OverlayManager_Data(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        Sound_StopBGM(1173, 0);
        sub_020053CC(0);
        Sound_SetScene(0);
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        SetVBlankCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        SetAutorepeat(4, 8);
        sub_02099F80(v0);
        sub_0209A098(v0);
        SetVBlankCallback(sub_02099F74, (void *)v0);
        GXLayers_TurnBothDispOn();
        StartScreenTransition(0, 1, 1, 0, 6, 1, v0->heapID);
        *param1 = 1;
        break;
    case 1:
        if (IsScreenTransitionDone() == TRUE) {
            *param1 = 2;
        }
        break;
    case 2:
        if (sub_0209A0F4(v0) == TRUE) {
            StartScreenTransition(0, 0, 0, 0, 6, 1, v0->heapID);
            *param1 = 3;
        }
        break;
    case 3:
        if (IsScreenTransitionDone() == TRUE) {
            sub_0209A0E0(v0);
            sub_0209A044(v0);
            SetVBlankCallback(NULL, NULL);
            v1 = 1;
        }
        break;
    }

    return v1;
}

int sub_02099F54(OverlayManager *param0, int *param1)
{
    UnkStruct_02099DFC *v0 = OverlayManager_Data(param0);
    int heapID = v0->heapID;

    OverlayManager_FreeData(param0);
    Heap_Destroy(heapID);
    OS_ResetSystem(0);

    return 1;
}

static void sub_02099F74(void *param0)
{
    UnkStruct_02099DFC *v0 = param0;
    Bg_RunScheduledUpdates(v0->unk_14);
}

static void sub_02099F80(UnkStruct_02099DFC *param0)
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
        param0->unk_14 = BgConfig_New(param0->heapID);
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
        Bg_InitFromTemplate(param0->unk_14, 0, &v2, 0);
        Bg_ClearTilemap(param0->unk_14, 0);
    }

    LoadMessageBoxGraphics(param0->unk_14, 0, (512 - (18 + 12)), 2, 0, param0->heapID);
    LoadStandardWindowGraphics(param0->unk_14, 0, 512 - (18 + 12) - 9, 3, 0, param0->heapID);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0->heapID);
    Bg_ClearTilesRange(0, 32, 0, param0->heapID);
    Bg_MaskPalette(0, 0x6c21);
    Bg_MaskPalette(4, 0x6c21);
}

static void sub_0209A044(UnkStruct_02099DFC *param0)
{
    Bg_ToggleLayer(0, 0);
    Bg_ToggleLayer(1, 0);
    Bg_ToggleLayer(2, 0);
    Bg_ToggleLayer(3, 0);
    Bg_ToggleLayer(4, 0);
    Bg_ToggleLayer(5, 0);
    Bg_ToggleLayer(6, 0);
    Bg_ToggleLayer(7, 0);
    Bg_FreeTilemapBuffer(param0->unk_14, 0);
    Heap_FreeToHeap(param0->unk_14);
}

static void sub_0209A098(UnkStruct_02099DFC *param0)
{
    param0->unk_18 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0004, param0->heapID);
    Text_ResetAllPrinters();
    param0->unk_08 = 0;
    Window_AddFromTemplate(param0->unk_14, &param0->unk_1C, &Unk_020F89E4);
    Window_FillRectWithColor(&param0->unk_1C, 15, 0, 0, 27 * 8, 4 * 8);
}

static void sub_0209A0E0(UnkStruct_02099DFC *param0)
{
    Window_Remove(&param0->unk_1C);
    MessageLoader_Free(param0->unk_18);
}

static BOOL sub_0209A0F4(UnkStruct_02099DFC *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_04) {
    case 0:
        if (sub_0209A200(param0, 0, 1, 4) == TRUE) {
            param0->unk_2C = Menu_MakeYesNoChoiceWithCursorAt(param0->unk_14, &Unk_020F89EC, 512 - (18 + 12) - 9, 3, 1, param0->heapID);
            param0->unk_04 = 1;
        }
        break;
    case 1: {
        u32 v1 = Menu_ProcessInputAndHandleExit(param0->unk_2C, param0->heapID);

        switch (v1) {
        case 0:
            param0->unk_04 = 2;
            break;
        case 0xfffffffe:
            param0->unk_04 = 6;
            break;
        }
    } break;
    case 2:
        if (sub_0209A200(param0, 1, 1, 4) == TRUE) {
            param0->unk_2C = Menu_MakeYesNoChoiceWithCursorAt(param0->unk_14, &Unk_020F89EC, (512 - (18 + 12)) - 9, 3, 1, param0->heapID);
            param0->unk_04 = 3;
        }
        break;
    case 3: {
        u32 v2 = Menu_ProcessInputAndHandleExit(param0->unk_2C, param0->heapID);

        switch (v2) {
        case 0:
            param0->unk_04 = 4;
            break;
        case 0xfffffffe:
            param0->unk_04 = 6;
            break;
        }
    } break;
    case 4:
        if (sub_0209A200(param0, 2, 1, 0) == TRUE) {
            param0->unk_34 = Window_AddWaitDial(&param0->unk_1C, 512 - (18 + 12));
            param0->unk_04 = 5;
        }
        break;
    case 5:
        SaveData_Erase(param0->unk_30);
        DestroyWaitDial(param0->unk_34);
        param0->unk_04 = 6;
        break;
    case 6:
        Bg_ClearTilemap(param0->unk_14, 0);
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL sub_0209A200(UnkStruct_02099DFC *param0, u32 param1, int param2, int param3)
{
    BOOL v0 = 0;

    switch (param0->unk_08) {
    case 0:
        Window_FillRectWithColor(&param0->unk_1C, 15, 0, 0, 27 * 8, 4 * 8);
        Window_DrawMessageBoxWithScrollCursor(&param0->unk_1C, 0, 512 - (18 + 12), 2);

        param0->unk_10 = Strbuf_Init(0x400, param0->heapID);
        MessageLoader_GetStrbuf(param0->unk_18, param1, param0->unk_10);
        param0->unk_0C = Text_AddPrinterWithParams(&param0->unk_1C, FONT_MESSAGE, param0->unk_10, 0, 0, param3, NULL);

        if (param3 == 0) {
            Strbuf_Free(param0->unk_10);
            param0->unk_08++;
        }

        param0->unk_08++;
        break;
    case 1:
        if (!(Text_IsPrinterActive(param0->unk_0C))) {
            Strbuf_Free(param0->unk_10);
            param0->unk_08++;
        }
        break;
    case 2:
        if ((param2 != 0) || (gSystem.pressedKeys & 1)) {
            param0->unk_08 = 0;
            v0 = 1;
        }
    }

    return v0;
}
