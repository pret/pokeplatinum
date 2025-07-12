#include "overlay094/application.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/gts.h"
#include "constants/species.h"

#include "struct_defs/gts_player_data.h"
#include "struct_defs/struct_02099F80.h"

#include "global/utility.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/networking.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/screens/deposit.h"
#include "overlay094/screens/listing_summary.h"
#include "overlay094/screens/main_menu.h"
#include "overlay094/screens/network_handler.h"
#include "overlay094/screens/pokemon_info.h"
#include "overlay094/screens/search.h"
#include "overlay094/screens/select_pokemon.h"
#include "overlay094/screens/summary.h"
#include "overlay094/screens/trade.h"
#include "overlay094/screens/wfc_init.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pc_boxes.h"
#include "pltt_transfer.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_template.h"
#include "system.h"
#include "trainer_info.h"
#include "unk_02033200.h"
#include "unk_02099550.h"
#include "vram_transfer.h"

static void GTSApplication_VBlankCallback(void *appStatePtr);
static void GTSApplication_SetVRAMBanks(void);
static void GTSApplicationState_InitPlayerData(GTSApplicationState *appState, ApplicationManager *appMan);
static void GTSApplication_Noop(GTSApplicationState *appState);
static void GTSApplication_InitCharTransfer(void);
static void GTSApplication_InitGraphics(GTSApplicationState *appState);
static void GTSApplication_InitSpriteHeaders(GTSApplicationState *appState);
static void GTSApplication_DWCFree(DWCAllocType name, void *ptr, u32 size);
static void *GTSApplication_DWCAlloc(DWCAllocType name, u32 size, int align);
static void ov94_0223C4E0(GTSApplicationState *appState);
static void GTSApplication_CleanupGraphics(GTSApplicationState *appState);
static void GTSApplicationState_DecrementNetworkTimer(GTSApplicationState *appState);
static void GTSApplicationState_CountBoxPokemon(GTSApplicationState *appState);

static NNSFndHeapHandle sGTSHeapHandle;

// gtsApplicationScreens { init, main, exit }
static int (*gtsApplicationScreens[][3])(GTSApplicationState *, int) = {
    { GTSApplication_InitWFC_Init, GTSApplication_WFCInit_Main, GTSApplication_WFCInit_Exit },
    { GTSApplication_MainMenu_Init, GTSApplication_MainMenu_Main, GTSApplication_MainMenu_Exit },
    { GTSApplication_Summary_Init, GTSApplication_Summary_Main, GTSApplication_Summary_Exit },
    { GTSApplication_ListingSummary_Init, GTSApplication_ListingSummary_Main, GTSApplication_ListingSummary_Exit },
    { GTSApplication_Search_Init, GTSApplication_Search_Main, GTSApplication_Search_Exit },
    { GTSApplication_SelectPokemon_Init, GTSApplication_SelectPokemon_Main, GTSApplication_SelectPokemon_Exit },
    { GTSApplication_Deposit_Init, GTSApplication_Deposit_Main, GTSApplication_Deposit_Exit },
    { GTSApplication_NetworkHandler_Init, GTSApplication_NetworkHandler_Main, GTSApplication_NetworkHandler_Exit },
    { GTSApplication_PokemonInfo_Init, GTSApplication_PokemonInfo_Main, GTSApplication_PokemonInfo_Exit },
    { GTSApplication_Trade_Init, GTSApplication_Trade_Main, GTSApplication_Trade_Exit },
};

GTSApplicationState *unused_GTSApplicationState;

int GTSApplication_Init(ApplicationManager *appMan, int *loopState)
{
    switch (*loopState) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_62, 0x70000);

        GTSApplicationState *appState = ApplicationManager_NewData(appMan, sizeof(GTSApplicationState), HEAP_ID_62);
        memset(appState, 0, sizeof(GTSApplicationState));
        appState->bgConfig = BgConfig_New(HEAP_ID_62);
        unused_GTSApplicationState = appState;

        {
            GraphicsModes graphicsModes = {
                GX_DISPMODE_GRAPHICS,
                GX_BGMODE_0,
                GX_BGMODE_0,
                GX_BG0_AS_2D,
            };

            SetAllGraphicsModes(&graphicsModes);
        }

        appState->stringTemplate = StringTemplate_New(11, 64, HEAP_ID_62);
        appState->gtsMessageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_GTS, HEAP_ID_62);
        appState->unk0674MessageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0674, HEAP_ID_62);
        appState->unk0695MessageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0695, HEAP_ID_62);
        appState->speciesMessageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_62);
        appState->countryMessageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COUNTRY_NAMES, HEAP_ID_62);

        SetAutorepeat(4, 8);

        GTSApplicationState_InitPlayerData(appState, appMan);
        ov94_0223C4E0(appState);

        Sound_SetSceneAndPlayBGM(SOUND_SCENE_11, SEQ_WIFILOBBY, 1);

        appState->dwcHeapPointer = Heap_AllocFromHeap(HEAP_ID_62, 0x20000 + 32);
        appState->dwcHeapHandle = NNS_FndCreateExpHeap((void *)(((u32)appState->dwcHeapPointer + 31) / 32 * 32), 0x20000);
        *loopState = 1;
        break;
    case 1:
        sub_02099550(); // load overlay4
        Overlay_LoadHttpOverlay();
        WirelessDriver_Init();
        (*loopState) = 0;
        return 1; // pass through to main
    }

    return 0;
}

int GTSApplication_Main(ApplicationManager *appMan, int *loopState)
{
    GTSApplicationState *appState = ApplicationManager_Data(appMan);

    DWC_UpdateConnection();
    GTSNetworking_ProcessCurrentRequest();

    switch (*loopState) {
    case GTS_APPLICATION_LOOP_STATE_WAIT_FOR_WIRELESS_DRIVER:
        if (WirelessDriver_IsReady()) {
            sGTSHeapHandle = appState->dwcHeapHandle;
            DWC_SetMemFunc(GTSApplication_DWCAlloc, GTSApplication_DWCFree);
            *loopState = GTS_APPLICATION_LOOP_STATE_INIT;
        }
        break;
    case GTS_APPLICATION_LOOP_STATE_INIT: // GTS_WFC_INIT_SCREEN
        *loopState = (*gtsApplicationScreens[appState->screenId][0])(appState, *loopState);

        if (appState->hasTradedPokemon) {
            GTSApplication_CleanupGraphics(appState);
        }
        break;
    case GTS_APPLICATION_LOOP_STATE_WAIT_FADE: // GTS_WFC_VISIBLE
        if (IsScreenFadeDone()) {
            *loopState = GTS_APPLICATION_LOOP_STATE_MAIN;
        }
        break;
    case GTS_APPLICATION_LOOP_STATE_MAIN: // GTS_WFC_CONNECTING
        *loopState = (*gtsApplicationScreens[appState->screenId][1])(appState, *loopState);
        break;
    case GTS_APPLICATION_LOOP_STATE_FINISH:
        if (IsScreenFadeDone()) {
            if (appState->hasTradedPokemon) { // pokemon received?
                ov94_0223C4E0(appState);
                ov94_02243EF8(appState, TrainerInfo_Gender(appState->playerData->trainerInfo));
                ov94_02244234(appState, appState->unk_118, 0);
                ov94_0223D068(appState);
                appState->hasTradedPokemon = FALSE;
            }
            *loopState = (*gtsApplicationScreens[appState->screenId][2])(appState, *loopState);
        }
        break;
    case GTS_APPLICATION_LOOP_STATE_EXIT:
        return 1;
    }

    GTSApplicationState_DecrementNetworkTimer(appState);
    GTSApplicationState_CountBoxPokemon(appState);

    if (appState->spriteList != NULL) {
        SpriteList_Update(appState->spriteList);
    }

    return 0;
}

int GTSApplication_Exit(ApplicationManager *appMan, int *unused1)
{
    GTSApplicationState *appState = ApplicationManager_Data(appMan);

    Heap_Free(appState->dwcHeapPointer);
    Overlay_UnloadHttpOverlay();
    sub_02099560();

    GTSApplication_CleanupGraphics(appState);

    MessageLoader_Free(appState->speciesMessageLoader);
    MessageLoader_Free(appState->unk0695MessageLoader);
    MessageLoader_Free(appState->unk0674MessageLoader);
    MessageLoader_Free(appState->gtsMessageLoader);
    MessageLoader_Free(appState->countryMessageLoader);
    StringTemplate_Free(appState->stringTemplate);

    GTSApplication_Noop(appState);

    WirelessDriver_Shutdown();
    Heap_Free(appState->bgConfig);
    Heap_Free(appState->playerData);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_62);

    return 1;
}

static void GTSApplication_VBlankCallback(void *appStatePtr)
{
    GTSApplicationState *appState = appStatePtr;

    if (appState->updateBoxPalettesFunc) {
        appState->updateBoxPalettesFunc(appStatePtr);
        appState->updateBoxPalettesFunc = NULL;
    }

    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void GTSApplication_SetVRAMBanks(void)
{
    UnkStruct_02099F80 banks = {
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

    GXLayers_SetBanks(&banks);
}

static void GTSApplicationState_InitPlayerData(GTSApplicationState *appState, ApplicationManager *appMan)
{
    appState->playerData = (GTSPlayerData *)ApplicationManager_Args(appMan);
    appState->screenId = 0;

    GTSApplication_SetNextScreenWithArgument(appState, 0, 0);

    appState->mainMenuSelectedOption = 0;
    appState->unk_B7A.species = SPECIES_NONE;
    appState->unk_B7A.gender = 2 + 1;
    appState->unk_B7A.level = 0;
    appState->unk_B7A.level2 = 0;
    appState->unk_B80.species = SPECIES_NONE;
    appState->hasAvatarFinishedMoving = FALSE;
    appState->selectedBoxId = MAX_PC_BOXES;
    appState->deferredBoxPokemonCount = 0;
    appState->deferredBoxId = 0;
    appState->unk_10F2 = 0;
    appState->waitDial = NULL;
    appState->selectedCountryIndex = 0;
}

static void GTSApplication_Noop(GTSApplicationState *appState)
{
    return;
}

static void GTSApplication_InitCharTransfer(void)
{
    {
        CharTransferTemplate template = {
            20, 2048, 2048, HEAP_ID_62
        };

        CharTransfer_Init(&template);
    }

    PlttTransfer_Init(20, HEAP_ID_62);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void GTSApplication_InitGraphics(GTSApplicationState *appState)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 126, 0, 32, 0, 126, 0, 32, HEAP_ID_62);

    appState->spriteList = SpriteList_InitRendering(72 + 6, &appState->g2dRenderer, HEAP_ID_62);

    SetSubScreenViewRect(&appState->g2dRenderer, 0, (256 * FX32_ONE));

    for (int i = 0; i < 4; i++) {
        appState->spriteResourceCollection[i] = SpriteResourceCollection_New(3, i, HEAP_ID_62);
    }

    appState->spriteResource[0][0] = SpriteResourceCollection_AddTilesFrom(appState->spriteResourceCollection[0], narc, 18, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_62);
    appState->spriteResource[0][1] = SpriteResourceCollection_AddPaletteFrom(appState->spriteResourceCollection[1], narc, 9, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_62);
    appState->spriteResource[0][2] = SpriteResourceCollection_AddFrom(appState->spriteResourceCollection[2], narc, 19, 1, 0, 2, HEAP_ID_62);
    appState->spriteResource[0][3] = SpriteResourceCollection_AddFrom(appState->spriteResourceCollection[3], narc, 20, 1, 0, 3, HEAP_ID_62);

    appState->spriteResource[1][0] = SpriteResourceCollection_AddTilesFrom(appState->spriteResourceCollection[0], narc, 32, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_62);
    appState->spriteResource[1][1] = SpriteResourceCollection_AddPaletteFrom(appState->spriteResourceCollection[1], narc, 8, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 9, HEAP_ID_62);
    appState->spriteResource[1][2] = SpriteResourceCollection_AddFrom(appState->spriteResourceCollection[2], narc, 33, 1, 1, 2, HEAP_ID_62);
    appState->spriteResource[1][3] = SpriteResourceCollection_AddFrom(appState->spriteResourceCollection[3], narc, 34, 1, 1, 3, HEAP_ID_62);

    SpriteTransfer_RequestChar(appState->spriteResource[0][0]);
    SpriteTransfer_RequestChar(appState->spriteResource[1][0]);
    SpriteTransfer_RequestPlttWholeRange(appState->spriteResource[0][1]);
    SpriteTransfer_RequestPlttWholeRange(appState->spriteResource[1][1]);

    {
        NNSG2dPaletteData *paletteData;

        void *palettePointer = Graphics_GetPlttData(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), &paletteData, HEAP_ID_62);

        DC_FlushRange(paletteData->pRawData, (3 * 16) * 2);
        GX_LoadOBJPltt(paletteData->pRawData, 3 * 0x20, (3 * 16) * 2);

        u16 *rgb = (u16 *)paletteData->pRawData;

        for (int pixelIdx = 0; pixelIdx < (3 * 16); pixelIdx++) {
            int b = rgb[pixelIdx] >> 10 & 0x1f;
            int g = (rgb[pixelIdx] >> 5) & 0x1f;
            int r = rgb[pixelIdx] & 0x1f;
            b /= 2;
            g /= 2;
            r /= 2;
            rgb[pixelIdx] = (b << 10) | (g << 5) | r;
        }

        DC_FlushRange(paletteData->pRawData, (3 * 16) * 2);
        GX_LoadOBJPltt(paletteData->pRawData, (3 + 3) * 0x20, (3 * 16) * 2);

        Heap_Free(palettePointer);
    }

    NARC_dtor(narc);
}

void GTSApplication_InitAffineTemplate(AffineSpriteListTemplate *template, GTSApplicationState *appState, SpriteResourcesHeader *spriteResourceHeader, NNS_G2D_VRAM_TYPE vramType)
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
    template->heapID = HEAP_ID_62;
}

static void GTSApplication_InitSpriteHeaders(GTSApplicationState *appState)
{
    SpriteResourcesHeader_Init(&appState->cursorSpriteResourceHeader, 0, 0, 0, 0, -1, -1, 0, 0, appState->spriteResourceCollection[0], appState->spriteResourceCollection[1], appState->spriteResourceCollection[2], appState->spriteResourceCollection[3], NULL, NULL);
    SpriteResourcesHeader_Init(&appState->avatarSpriteResourceHeader, 1, 1, 1, 1, -1, -1, 0, 0, appState->spriteResourceCollection[0], appState->spriteResourceCollection[1], appState->spriteResourceCollection[2], appState->spriteResourceCollection[3], NULL, NULL);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static const WindowTemplate sGTSYesNoWindowTemplate = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x0
};

Menu *GTSApplication_CreateYesNoMenu(BgConfig *bgConfig, int tilemapTop, int baseTile)
{
    WindowTemplate template = sGTSYesNoWindowTemplate;
    template.tilemapTop = tilemapTop;
    template.baseTile = baseTile;

    return Menu_MakeYesNoChoice(bgConfig, &template, (1 + (18 + 12)), 11, HEAP_ID_62);
}

void GTSApplication_SetCurrentAndNextScreenInstruction(GTSApplicationState *appState, int currentInstruction, int nextInstruction)
{
    appState->currentScreenInstruction = currentInstruction;
    appState->nextScreenInstruction = nextInstruction;
}

void GTSApplication_SetSpritePosition(Sprite *sprite, int x, int y)
{
    VecFx32 pos;

    pos.x = FX32_CONST(x);
    pos.y = FX32_CONST(y);
    pos.z = 0;

    Sprite_SetPosition(sprite, &pos);
}

static void *GTSApplication_DWCAlloc(DWCAllocType name, u32 size, int align)
{
    UNUSED(name);

    OSIntrMode oldInterruptMode = OS_DisableInterrupts();
    void *ptr = NNS_FndAllocFromExpHeapEx(sGTSHeapHandle, size, align);

    OS_RestoreInterrupts(oldInterruptMode);

    return ptr;
}

static void GTSApplication_DWCFree(DWCAllocType name, void *ptr, u32 size)
{
    UNUSED(name);
    UNUSED(size);

    if (!ptr) {
        return;
    }

    OSIntrMode oldInterruptMode = OS_DisableInterrupts();

    NNS_FndFreeToExpHeap(sGTSHeapHandle, ptr);
    OS_RestoreInterrupts(oldInterruptMode);
}

int GTSApplication_GetNetworkStrength(void)
{
    return WM_LINK_LEVEL_3 - DWC_GetLinkLevel();
}

void GTSApplication_SetNextScreenWithArgument(GTSApplicationState *appState, int nextScreen, int screenArgument)
{
    appState->nextScreen = nextScreen;
    appState->screenArgument = screenArgument;
}

void GTSApplication_MoveToNextScreen(GTSApplicationState *appState)
{
    appState->previousScreen = appState->screenId;
    appState->screenId = appState->nextScreen;
}

int GTSApplicationState_GetTextFrameDelay(GTSApplicationState *appState)
{
    return Options_TextFrameDelay(appState->playerData->options);
}

static void ov94_0223C4E0(GTSApplicationState *appState)
{
    GTSApplication_SetVRAMBanks();
    GTSApplication_InitCharTransfer();
    GTSApplication_InitGraphics(appState);
    GTSApplication_InitSpriteHeaders(appState);

    SetVBlankCallback(GTSApplication_VBlankCallback, appState);
}

static void GTSApplication_CleanupGraphics(GTSApplicationState *appState)
{
    ov94_022443B8(appState);

    SpriteTransfer_ResetCharTransfer(appState->spriteResource[0][0]);
    SpriteTransfer_ResetCharTransfer(appState->spriteResource[1][0]);
    SpriteTransfer_ResetPlttTransfer(appState->spriteResource[0][1]);
    SpriteTransfer_ResetPlttTransfer(appState->spriteResource[1][1]);

    for (int i = 0; i < 4; i++) {
        SpriteResourceCollection_Delete(appState->spriteResourceCollection[i]);
    }

    SpriteList_Delete(appState->spriteList);
    appState->spriteList = NULL;

    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

static void GTSApplicationState_DecrementNetworkTimer(GTSApplicationState *appState)
{
    if (appState->networkTimer) {
        appState->networkTimer--;
    }
}

void GTSApplicationState_StartCountingBoxPokemon(GTSApplicationState *appState)
{
    appState->deferredBoxId = 1;
    appState->deferredBoxPokemonCount = 0;
}

static void GTSApplicationState_CountBoxPokemon(GTSApplicationState *appState)
{
    if (appState->deferredBoxId) {
        appState->deferredBoxPokemonCount += PCBoxes_CountMonsInBox(appState->playerData->pcBoxes, appState->deferredBoxId - 1);
        appState->deferredBoxId++;

        if (appState->deferredBoxId == MAX_PC_BOXES + 1) {
            appState->deferredBoxId = 0;
        }
    }
}

void GTSApplicationState_AddWaitDial(GTSApplicationState *appState)
{
    appState->waitDial = Window_AddWaitDial(&appState->bottomInstructionWindow, 1);
}

void GTSApplicationState_DestroyWaitDial(GTSApplicationState *appState)
{
    if (appState->waitDial != NULL) {
        DestroyWaitDial(appState->waitDial);
        appState->waitDial = NULL;
    }
}
