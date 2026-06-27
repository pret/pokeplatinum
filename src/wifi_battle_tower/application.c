#include "wifi_battle_tower/application.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0206BC70.h"

#include "wifi_battle_tower/app_state.h"
#include "wifi_battle_tower/http.h"
#include "wifi_battle_tower/screen.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_template.h"
#include "system.h"
#include "unk_02033200.h"
#include "vram_transfer.h"
#include "wifi_overlays.h"

static void WifiBattleTower_OnVBlank(void *appStatePtr);
static void WifiBattleTower_SetupVramBanks(void);
static void WifiBattleTower_InitAppState(WifiBattleTowerAppState *appState, ApplicationManager *appMan);
static void Dummy_0223B99C(WifiBattleTowerAppState *unused);
static void WifiBattleTower_InitTransferSystems(void);
static void WifiBattleTower_InitSpriteResources(WifiBattleTowerAppState *appState);
static void WifiBattleTower_CreateSelectionArrows(WifiBattleTowerAppState *appState);
static void WifiBattleTower_DwcFree(DWCAllocType unused1, void *ptr, u32 unused2);
static void *WifiBattleTower_DwcAlloc(DWCAllocType unused, u32 size, int alignment);
static void WifiBattleTower_InitGraphics(WifiBattleTowerAppState *appState);
static void WifiBattleTower_FreeGraphics(WifiBattleTowerAppState *appState);

static NNSFndHeapHandle sDwcHeap;

static int (*sScreenFunctions[][3])(WifiBattleTowerAppState *, int) = {
    { WifiBattleTower_ScreenInit, WifiBattleTower_ScreenMain, WifiBattleTower_ScreenExit }
};

WifiBattleTowerAppState *wifiBattleTowerAppState;

int WifiBattleTower_AppInit(ApplicationManager *appMan, int *state)
{
    WifiBattleTowerAppState *appState;

    switch (*state) {
    case BT_LOOP_STATE_WAIT_FOR_WIRELESS_DRIVER:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_68, 0x50000);

        appState = ApplicationManager_NewData(appMan, sizeof(WifiBattleTowerAppState), HEAP_ID_68);
        memset(appState, 0, sizeof(WifiBattleTowerAppState));
        appState->bgConfig = BgConfig_New(HEAP_ID_68);
        wifiBattleTowerAppState = appState;

        {
            GraphicsModes graphicsModes = {
                GX_DISPMODE_GRAPHICS,
                GX_BGMODE_0,
                GX_BGMODE_0,
                GX_BG0_AS_2D,
            };

            SetAllGraphicsModes(&graphicsModes);
        }

        appState->stringTemplate = StringTemplate_New(11, 32, HEAP_ID_68);
        appState->msgLoader1 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0670, HEAP_ID_68);
        appState->msgLoader2 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0674, HEAP_ID_68);
        appState->msgLoader3 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0695, HEAP_ID_68);

        SetAutorepeat(4, 8);
        WifiBattleTower_InitAppState(appState, appMan);
        WifiBattleTower_InitGraphics(appState);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_52, SEQ_NONE, 0);

        appState->dwcHeapBuffer = Heap_Alloc(HEAP_ID_68, 0x20000 + 32);
        appState->dwcHeap = NNS_FndCreateExpHeap((void *)(((u32)appState->dwcHeapBuffer + 31) / 32 * 32), 0x20000);

        Sound_SetSceneAndPlayBGM(SOUND_SCENE_11, SEQ_WIFILOBBY, 1);

        *state = BT_LOOP_STATE_INIT;
        break;
    case BT_LOOP_STATE_INIT:
        Overlay_LoadWFCOverlay();
        Overlay_LoadHttpOverlay();
        WirelessDriver_Init();
        (*state) = BT_LOOP_STATE_WAIT_FOR_WIRELESS_DRIVER;
        return 1;
        break;
    }

    return 0;
}

int WifiBattleTower_AppMain(ApplicationManager *appMan, int *state)
{
    WifiBattleTowerAppState *appState = ApplicationManager_Data(appMan);

    DWC_UpdateConnection();
    BattleTowerHttp_Update();
    DWC_UpdateConnection();

    switch (*state) {
    case BT_LOOP_STATE_WAIT_FOR_WIRELESS_DRIVER:
        if (WirelessDriver_IsReady()) {
            sDwcHeap = appState->dwcHeap;
            DWC_SetMemFunc(WifiBattleTower_DwcAlloc, WifiBattleTower_DwcFree);
            *state = BT_LOOP_STATE_INIT;
        }
        break;
    case BT_LOOP_STATE_INIT:
        *state = (*sScreenFunctions[appState->screenMode][0])(appState, *state);
        break;
    case BT_LOOP_STATE_WAIT_FADE:
        if (IsScreenFadeDone()) {
            *state = BT_LOOP_STATE_MAIN;
        }
        break;
    case BT_LOOP_STATE_MAIN:
        *state = (*sScreenFunctions[appState->screenMode][1])(appState, *state);
        break;
    case BT_LOOP_STATE_FINISH:
        if (IsScreenFadeDone()) {
            *state = (*sScreenFunctions[appState->screenMode][2])(appState, *state);
        }
        break;
    case BT_LOOP_STATE_EXIT:
        return 1;
        break;
    }

    if (appState->spriteList != NULL) {
        SpriteList_Update(appState->spriteList);
    }

    return 0;
}

int WifiBattleTower_AppExit(ApplicationManager *appMan, int *unused)
{
    WifiBattleTowerAppState *appState = ApplicationManager_Data(appMan);

    Heap_Free(appState->dwcHeapBuffer);
    Overlay_UnloadHttpOverlay();
    Overlay_UnloadWFCOverlay();

    WifiBattleTower_FreeGraphics(appState);

    MessageLoader_Free(appState->msgLoader3);
    MessageLoader_Free(appState->msgLoader2);
    MessageLoader_Free(appState->msgLoader1);
    StringTemplate_Free(appState->stringTemplate);

    Dummy_0223B99C(appState);

    WirelessDriver_Shutdown();
    Heap_Free(appState->bgConfig);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_68);

    return 1;
}

static void WifiBattleTower_OnVBlank(void *appStatePtr)
{
    WifiBattleTowerAppState *appState = appStatePtr;

    VramTransfer_Process();
    RenderOam_Transfer();

    inline_ov61_0222C1FC(&appState->unk_FF8);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void WifiBattleTower_SetupVramBanks(void)
{
    GXBanks vramBanks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&vramBanks);
}

static void WifiBattleTower_InitAppState(WifiBattleTowerAppState *appState, ApplicationManager *appMan)
{
    appState->args = (UnkStruct_0206BC70 *)ApplicationManager_Args(appMan);
    appState->screenMode = 0;

    WifiBattleTower_SetExitMode(appState, 0, 0);
}

static void Dummy_0223B99C(WifiBattleTowerAppState *unused)
{
    return;
}

static void WifiBattleTower_InitTransferSystems(void)
{
    {
        CharTransferTemplate ctTemplate = {
            20, 2048, 2048, HEAP_ID_68
        };

        CharTransfer_Init(&ctTemplate);
    }

    PlttTransfer_Init(20, HEAP_ID_68);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void WifiBattleTower_InitSpriteResources(WifiBattleTowerAppState *appState)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_68);

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 126, 0, 32, 0, 126, 0, 32, 68);

    appState->spriteList = SpriteList_InitRendering(10, &appState->renderer, HEAP_ID_68);

    SetSubScreenViewRect(&appState->renderer, 0, 256 * FX32_ONE );

    for (int i = 0; i < 4; i++) {
        appState->resourceCollection[i] = SpriteResourceCollection_New(2, i, HEAP_ID_68);
    }

    appState->spriteResource[0][0] = SpriteResourceCollection_AddTilesFrom(appState->resourceCollection[0], narc, 35, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_68);
    appState->spriteResource[0][1] = SpriteResourceCollection_AddPaletteFrom(appState->resourceCollection[1], narc, 9, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_68);
    appState->spriteResource[0][2] = SpriteResourceCollection_AddFrom(appState->resourceCollection[2], narc, 36, 1, 0, 2, HEAP_ID_68);
    appState->spriteResource[0][3] = SpriteResourceCollection_AddFrom(appState->resourceCollection[3], narc, 37, 1, 0, 3, HEAP_ID_68);

    SpriteTransfer_RequestChar(appState->spriteResource[0][0]);
    SpriteTransfer_RequestPlttWholeRange(appState->spriteResource[0][1]);
    NARC_dtor(narc);
}

static const u16 sSelectionArrowPositions[][2] = {
    { 0xE0, 0x6F },
    { 0xE0, 0x81 }
};

void WifiBattleTower_BuildAffineSpriteTemplate(AffineSpriteListTemplate *template, WifiBattleTowerAppState *appState, SpriteResourcesHeader *spriteResourceHeader, int vramType)
{
    template->list = appState->spriteList;
    template->resourceData = spriteResourceHeader;
    template->position.z = 0;
    template->affineScale.x = FX32_ONE;
    template->affineScale.y = FX32_ONE;
    template->affineScale.z = FX32_ONE;
    template->affineZRotation = 0;
    template->priority = 1;
    template->vramType = vramType;
    template->heapID = HEAP_ID_68;
}

static void WifiBattleTower_CreateSelectionArrows(WifiBattleTowerAppState *appState)
{
    SpriteResourcesHeader_Init(&appState->arrowSpriteHeader, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, appState->resourceCollection[0], appState->resourceCollection[1], appState->resourceCollection[2], appState->resourceCollection[3], NULL, NULL);

    {
        AffineSpriteListTemplate template;

        WifiBattleTower_BuildAffineSpriteTemplate(&template, appState, &appState->arrowSpriteHeader, NNS_G2D_VRAM_TYPE_2DMAIN);

        for (int i = 0; i < 2; i++) {
            template.position.x = FX32_ONE * sSelectionArrowPositions[i][0];
            template.position.y = FX32_ONE * sSelectionArrowPositions[i][1];
            appState->selectionArrows[i] = SpriteList_AddAffine(&template);
            Sprite_SetAnimateFlag(appState->selectionArrows[i], 1);
            Sprite_SetAnim(appState->selectionArrows[i], i);
            Sprite_SetDrawFlag(appState->selectionArrows[i], FALSE);
        }
    }
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    NetworkIcon_Init();
}

static const WindowTemplate sYesNoWindowTemplate = {
    0,
    23,
    13,
    7,
    4,
    13,
    0
};

Menu *WifiBattleTower_CreateYesNoMenu(BgConfig *bgConfig, int tilemapTop, int baseTile)
{
    WindowTemplate template;

    template = sYesNoWindowTemplate;
    template.tilemapTop = tilemapTop;
    template.baseTile = baseTile;

    return Menu_MakeYesNoChoice(bgConfig, &template, WINDOW_BORDER_TILE_START, WINDOW_BORDER_PLTT_SLOT, HEAP_ID_68);
}

void WifiBattleTower_SetState(WifiBattleTowerAppState *appState, int state, int nextState)
{
    appState->state = state;
    appState->nextState = nextState;
}

static void *WifiBattleTower_DwcAlloc(DWCAllocType unused, u32 size, int alignment)
{
    void *ptr;
    OSIntrMode state;

    state = OS_DisableInterrupts();
    ptr = NNS_FndAllocFromExpHeapEx(sDwcHeap, size, alignment);

    OS_RestoreInterrupts(state);

    return ptr;
}

static void WifiBattleTower_DwcFree(DWCAllocType unused1, void *ptr, u32 unused2)
{
    OSIntrMode state;

    if (!ptr) {
        return;
    }

    state = OS_DisableInterrupts();

    NNS_FndFreeToExpHeap(sDwcHeap, ptr);
    OS_RestoreInterrupts(state);
}

int WifiBattleTower_GetSignalStrength(void)
{
    return WM_LINK_LEVEL_3 - DWC_GetLinkLevel();
}

void WifiBattleTower_SetExitMode(WifiBattleTowerAppState *appState, int exitMode, int unused)
{
    appState->exitMode = exitMode;
    appState->unused_18 = unused;
}

static void WifiBattleTower_InitGraphics(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_SetupVramBanks();
    WifiBattleTower_InitTransferSystems();
    WifiBattleTower_InitSpriteResources(appState);
    WifiBattleTower_CreateSelectionArrows(appState);

    SetVBlankCallback(WifiBattleTower_OnVBlank, appState);
}

static void WifiBattleTower_FreeGraphics(WifiBattleTowerAppState *appState)
{
    SpriteTransfer_ResetCharTransfer(appState->spriteResource[0][0]);
    SpriteTransfer_ResetPlttTransfer(appState->spriteResource[0][1]);

    for (int i = 0; i < 4; i++) {
        SpriteResourceCollection_Delete(appState->resourceCollection[i]);
    }

    SpriteList_Delete(appState->spriteList);

    appState->spriteList = NULL;

    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}
