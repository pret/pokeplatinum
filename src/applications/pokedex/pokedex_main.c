#include "applications/pokedex/pokedex_main.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "applications/pokedex/crysub.h"
#include "applications/pokedex/formmain.h"
#include "applications/pokedex/formsub.h"
#include "applications/pokedex/funcptr_ov21_021E9B74.h"
#include "applications/pokedex/funcptr_ov21_021E9B9C.h"
#include "applications/pokedex/infomain.h"
#include "applications/pokedex/infomain_foreign.h"
#include "applications/pokedex/ov21_021D423C.h"
#include "applications/pokedex/ov21_021D4340.h"
#include "applications/pokedex/ov21_021D5AEC.h"
#include "applications/pokedex/ov21_021D76B0.h"
#include "applications/pokedex/ov21_021D94BC.h"
#include "applications/pokedex/ov21_021DC9BC.h"
#include "applications/pokedex/ov21_021DDD2C.h"
#include "applications/pokedex/ov21_021E1924.h"
#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/ov21_021E3FFC.h"
#include "applications/pokedex/ov21_021E68F4.h"
#include "applications/pokedex/ov21_021E737C.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_height_check.h"
#include "applications/pokedex/pokedex_search.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_text.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/pokedex_updater.h"
#include "applications/pokedex/species_caught_status.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "char_transfer.h"
#include "genders.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "pltt_transfer.h"
#include "pokedex.h"
#include "pokedex_data_index.h"
#include "pokemon.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "string_gf.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "unk_02012744.h"
#include "unk_0202419C.h"
#include "vram_transfer.h"

#include "res/text/bank/pokedex.h"

enum PokedexState {
    POKEDEX_STATE_TRANSITION_IN,
    POKEDEX_STATE_USE,
    POKEDEX_STATE_TRANSITION_OUT,
    POKEDEX_STATE_WAIT_EXIT
};

static void VBlankCallBack(void *data);
static void EntranceTransition(PokedexApp **appPtr);
static void ExitTransition(PokedexApp **appPtr);
static BOOL TransitionComplete(PokedexApp **appPtr);
static void FreePokedexApp(PokedexApp *pokedexApp);
static void SetGXBanks(void);
static void InitG2(enum HeapID heapID);
static void InitG3(void);
static void ResetFrm(void);
static void ov21_021D1EEC(PokedexApp *pokedexApp);

int PokedexMain_Init(ApplicationManager *appMan, int *state)
{
    PokedexOverlayArgs pokedexOverlayArgs;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_54, SEQ_NONE, 0);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_POKEDEX, 0x40000);

    PokedexApp **appPtr = ApplicationManager_NewData(appMan, sizeof(PokedexApp **), HEAP_ID_POKEDEX);

    GF_ASSERT(appPtr);
    memset(appPtr, 0, sizeof(PokedexApp **));

    VramTransfer_New(8, HEAP_ID_POKEDEX);

    PokedexOverlayArgs *overlayArgsInput = ApplicationManager_Args(appMan);

    Pokedex_SetupGiratina(Pokedex_GetDisplayForm(overlayArgsInput->pokedex, SPECIES_GIRATINA, 0));

    SetVBlankCallback(VBlankCallBack, appPtr);
    DisableHBlank();
    EnableTouchPad();

    GF_ASSERT(InitializeTouchPad(4) == TRUE);

    PokedexMain_InitGX(HEAP_ID_POKEDEX);

    pokedexOverlayArgs.pokedex = overlayArgsInput->pokedex;
    pokedexOverlayArgs.trainerInfo = overlayArgsInput->trainerInfo;
    pokedexOverlayArgs.timeOfDay = overlayArgsInput->timeOfDay;
    pokedexOverlayArgs.fullmoonIslandVisible = overlayArgsInput->fullmoonIslandVisible;
    pokedexOverlayArgs.seabreakPathVisible = overlayArgsInput->seabreakPathVisible;
    pokedexOverlayArgs.newmoonIslandVisible = overlayArgsInput->newmoonIslandVisible;
    pokedexOverlayArgs.springPathVisible = overlayArgsInput->springPathVisible;
    pokedexOverlayArgs.pokedexMemory = overlayArgsInput->pokedexMemory;

    *appPtr = PokedexMain_NewPokedexApp(HEAP_ID_POKEDEX, &pokedexOverlayArgs);

    Sound_SetPlayerVolume(1, 127 / 3);

    return 1;
}

int PokedexMain_Main(ApplicationManager *appMan, int *state)
{
    PokedexApp **appPtr = ApplicationManager_Data(appMan);

    switch (*state) {
    case POKEDEX_STATE_TRANSITION_IN:
        EntranceTransition(appPtr);
        BrightnessController_SetScreenBrightness(-16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 3);
        (*state)++;
        break;
    case POKEDEX_STATE_USE:
        if (ov21_021D10B8(*appPtr) == TRUE) {
            *appPtr = NULL;
            (*state)++;
        }
        break;
    case POKEDEX_STATE_TRANSITION_OUT:
        ExitTransition(appPtr);
        (*state)++;
        break;
    case POKEDEX_STATE_WAIT_EXIT:
        if (TransitionComplete(appPtr)) {
            ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
            ResetVisibleHardwareWindows(DS_SCREEN_SUB);
            G2_BlendNone();
            G2S_BlendNone();
            return 1;
        }
        break;
    }

    return 0;
}

int PokedexMain_Exit(ApplicationManager *appMan, int *state)
{
    ApplicationManager_Data(appMan);

    SetVBlankCallback(NULL, NULL);

    GF_ASSERT(DisableTouchPad() == TRUE);

    PokedexMain_FreeGraphics();
    VramTransfer_Free();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_POKEDEX);
    Sound_SetPlayerVolume(1, 127);

    return 1;
}

static void VBlankCallBack(void *data)
{
    PokedexApp **appPtr = data;

    if (*appPtr) {
        ov21_021D12D8(*appPtr);
    }

    VramTransfer_Process();
}

static void EntranceTransition(PokedexApp **appPtr)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_POKEDEX);
}

static void ExitTransition(PokedexApp **appPtr)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_POKEDEX);
}

static BOOL TransitionComplete(PokedexApp **appPtr)
{
    return IsScreenFadeDone();
}

const static UnkFuncPtr_ov21_021E9B74 Unk_ov21_021E9B74[10] = {
    ov21_021D5AEC,
    PokedexSearch_TransitionFunctions,
    InfoMain_InitScreen,
    FormMain_Init,
    InfoMainForeign_InitScreen,
    ov21_021E29DC,
    ov21_021DC9BC,
    ov21_021E3FFC,
    ov21_021E6014,
    ov21_021E737C
};

const static UnkFuncPtr_ov21_021E9B74 Unk_ov21_021E9B34[8] = {
    ov21_021D76B0,
    ov21_021D94BC,
    ov21_021E1924,
    ov21_021E332C,
    ov21_021DDD2C,
    CrySub_Init,
    ov21_021E68F4,
    FormSub_Init
};

const static UnkFuncPtr_ov21_021E9B9C Unk_ov21_021E9B9C[10] = {
    ov21_021D5B50,
    PokedexSearch_FreeData,
    InfoMain_FreeScreen,
    FormMain_Free,
    InfoMainForeign_FreeScreen,
    ov21_021E2A3C,
    ov21_021DCA14,
    ov21_021E4054,
    ov21_021E6074,
    ov21_021E73D4
};

const static UnkFuncPtr_ov21_021E9B9C Unk_ov21_021E9B54[8] = {
    ov21_021D7710,
    ov21_021D951C,
    ov21_021E1984,
    ov21_021E338C,
    ov21_021DDD8C,
    CrySub_Free,
    ov21_021E6954,
    FormSub_Free
};

PokedexApp *PokedexMain_NewPokedexApp(enum HeapID heapID, const PokedexOverlayArgs *pokedexOverlayArgs)
{
    int i;
    PokedexDefaultSortParams sortParams;

    PokedexApp *pokedexApp = Heap_Alloc(heapID, sizeof(PokedexApp));

    GF_ASSERT(pokedexApp);
    memset(pokedexApp, 0, sizeof(PokedexApp));

    pokedexApp->heapID = heapID;
    pokedexApp->pokedexMemory = pokedexOverlayArgs->pokedexMemory;
    pokedexApp->unk_1A70 = ov21_021D423C(heapID);
    pokedexApp->unk_1A74 = ov21_021D423C(heapID);
    pokedexApp->unk_1A78 = ov21_021D423C(heapID);
    pokedexApp->unk_1A7C = ov21_021D423C(heapID);
    pokedexApp->unk_1D64 = PokedexUpdater_New(heapID);
    pokedexApp->unk_1D68 = PokedexUpdater_New(heapID);
    pokedexApp->unk_1D6C = PokedexUpdater_New(heapID);
    pokedexApp->unk_1D70 = PokedexUpdater_New(heapID);

    sortParams.pokedex = pokedexOverlayArgs->pokedex;
    sortParams.trainerInfo = pokedexOverlayArgs->trainerInfo;
    sortParams.timeOfDay = pokedexOverlayArgs->timeOfDay;
    sortParams.fullmoonIslandVisible = pokedexOverlayArgs->fullmoonIslandVisible;
    sortParams.newmoonIslandVisible = pokedexOverlayArgs->newmoonIslandVisible;
    sortParams.springPathVisible = pokedexOverlayArgs->springPathVisible;
    sortParams.seabreakPathVisible = pokedexOverlayArgs->seabreakPathVisible;
    sortParams.currentSpecies = PokedexMemory_GetCurrentSpecies(pokedexOverlayArgs->pokedexMemory);
    sortParams.bootMode = PokedexMemory_GetBootMode(pokedexOverlayArgs->pokedexMemory);

    PokedexSort_DefaultPokedexSort(&pokedexApp->sortData, &sortParams, heapID);
    PokedexGraphics_Init(&pokedexApp->graphicData, heapID);

    for (i = 0; i < 10; i++) {
        if (Unk_ov21_021E9B74[i]) {
            Unk_ov21_021E9B74[i](&pokedexApp->unk_1A94[i], pokedexApp, heapID);
        }
    }

    for (i = 0; i < 8; i++) {
        if (Unk_ov21_021E9B34[i]) {
            Unk_ov21_021E9B34[i](&pokedexApp->unk_1C24[i], pokedexApp, heapID);
        }
    }

    ov21_021D47F0(heapID, &pokedexApp->unk_1A80, pokedexApp, 1);
    ov21_021D1EEC(pokedexApp);

    return pokedexApp;
}

BOOL ov21_021D10B8(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);

    ov21_021D3960(&pokedexApp->sortData);

    if ((ov21_021D42D4(pokedexApp->unk_1A78) == 0) && (ov21_021D42D4(pokedexApp->unk_1A70) == 0) && (ov21_021D42D4(pokedexApp->unk_1A7C) == 0) && (ov21_021D42D4(pokedexApp->unk_1A74) == 0)) {
        PokedexUpdater_SetDataUnchanged(pokedexApp->unk_1D6C, 0);
        PokedexUpdater_SetDataUnchanged(pokedexApp->unk_1D70, 0);
        PokedexUpdater_SetDataUnchanged(pokedexApp->unk_1D64, 0);
        PokedexUpdater_SetDataUnchanged(pokedexApp->unk_1D68, 0);
    } else {
        PokedexUpdater_SetDataUnchanged(pokedexApp->unk_1D6C, 1);
        PokedexUpdater_SetDataUnchanged(pokedexApp->unk_1D70, 1);
        PokedexUpdater_SetDataUnchanged(pokedexApp->unk_1D64, 1);
        PokedexUpdater_SetDataUnchanged(pokedexApp->unk_1D68, 1);
    }

    PokedexUpdater_UpdateData(pokedexApp->unk_1D6C);
    PokedexUpdater_UpdateData(pokedexApp->unk_1D70);
    PokedexUpdater_UpdateData(pokedexApp->unk_1D64);
    PokedexUpdater_UpdateData(pokedexApp->unk_1D68);

    PokedexUpdater_UpdateGraphics(pokedexApp->unk_1D6C);
    PokedexUpdater_UpdateGraphics(pokedexApp->unk_1D70);
    PokedexUpdater_UpdateGraphics(pokedexApp->unk_1D64);
    PokedexUpdater_UpdateGraphics(pokedexApp->unk_1D68);

    if ((ov21_021D42D4(pokedexApp->unk_1A70) == 0) && (ov21_021D42D4(pokedexApp->unk_1A7C) == 0) && (ov21_021D42D4(pokedexApp->unk_1A74) == 0)) {
        ov21_021D4284(pokedexApp->unk_1A78, pokedexApp->unk_1A68);
    }

    if ((ov21_021D42D4(pokedexApp->unk_1A78) == 0) && (ov21_021D42D4(pokedexApp->unk_1A7C) == 0) && (ov21_021D42D4(pokedexApp->unk_1A74) == 0)) {
        ov21_021D4284(pokedexApp->unk_1A70, pokedexApp->unk_1A60);
    }

    if ((ov21_021D42D4(pokedexApp->unk_1A78) == 0) && (ov21_021D42D4(pokedexApp->unk_1A70) == 0) && (ov21_021D42D4(pokedexApp->unk_1A74) == 0)) {
        ov21_021D4284(pokedexApp->unk_1A7C, pokedexApp->unk_1A6C);
    }

    if ((ov21_021D42D4(pokedexApp->unk_1A78) == 0) && (ov21_021D42D4(pokedexApp->unk_1A70) == 0) && (ov21_021D42D4(pokedexApp->unk_1A7C) == 0)) {
        ov21_021D4284(pokedexApp->unk_1A74, pokedexApp->unk_1A64);
    }

    G3_ResetG3X();
    PokemonGraphics_UpdateSprites(&pokedexApp->graphicData);
    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);

    pokedexApp->unk_1A68 = 0;
    pokedexApp->unk_1A6C = 0;
    pokedexApp->unk_1A60 = 0;
    pokedexApp->unk_1A64 = 0;

    if (pokedexApp->unk_00 == 1) {
        FreePokedexApp(pokedexApp);
        pokedexApp = NULL;
        return 1;
    }

    return 0;
}

void PokedexMain_InitGX(enum HeapID heapID)
{
    SetGXBanks();
    InitG2(heapID);
    InitG3();
}

void PokedexMain_FreeGraphics(void)
{
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
    ResetFrm();
}

void ov21_021D12D8(PokedexApp *pokedexApp)
{
    PokemonGraphics_UpdateCharAndPltt(&pokedexApp->graphicData);
    RenderOam_Transfer();
}

PokedexUpdater *ov21_021D12EC(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return pokedexApp->unk_1D64;
}

PokedexUpdater *ov21_021D1300(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return pokedexApp->unk_1D68;
}

PokedexUpdater *ov21_021D1314(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return pokedexApp->unk_1D6C;
}

PokedexUpdater *ov21_021D1328(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return pokedexApp->unk_1D70;
}

UnkStruct_ov21_021D423C *ov21_021D133C(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return pokedexApp->unk_1A70;
}

UnkStruct_ov21_021D423C *ov21_021D1350(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return pokedexApp->unk_1A74;
}

UnkStruct_ov21_021D423C *ov21_021D1364(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return pokedexApp->unk_1A78;
}

UnkStruct_ov21_021D423C *ov21_021D1378(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return pokedexApp->unk_1A7C;
}

int *ov21_021D138C(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return &pokedexApp->unk_1A60;
}

int *ov21_021D13A0(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return &pokedexApp->unk_1A64;
}

int *ov21_021D13B4(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return &pokedexApp->unk_1A68;
}

int *ov21_021D13C8(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return &pokedexApp->unk_1A6C;
}

BOOL *ov21_021D13DC(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return &pokedexApp->unk_00;
}

PokedexSortData *PokedexMain_GetSortData(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return &pokedexApp->sortData;
}

PokedexGraphicData *PokedexMain_GetGraphicData(PokedexApp *pokedexApp)
{
    GF_ASSERT(pokedexApp);
    return &pokedexApp->graphicData;
}

PokedexScreenManager *ov21_021D1410(PokedexApp *pokedexApp, int param1)
{
    GF_ASSERT(param1 < 10);
    return &pokedexApp->unk_1A94[param1];
}

PokedexScreenManager *ov21_021D1430(PokedexApp *pokedexApp, int param1)
{
    GF_ASSERT(param1 < 8);
    return &pokedexApp->unk_1C24[param1];
}

void ov21_021D144C(Sprite *param0, int param1)
{
    switch (param1) {
    case 0:
        Sprite_SetAnimFrame(param0, 1);
        break;
    case 2:
        Sprite_SetAnimFrame(param0, 2);
        break;
    case 1:
        Sprite_SetAnimFrame(param0, 3);
        break;
    case 3:
    case (3 + 1):
        if (Sprite_GetAnimFrame(param0) > 0) {
            Sprite_UpdateAnim(param0, -(FX32_ONE * 2));
        }
        break;
    default:
        break;
    }
}

void PokedexMain_SetButtonY(Sprite *sprite, PokedexTextData *textData, int setY)
{
    int frame = Sprite_GetAnimFrame(sprite);
    int x, y;

    switch (frame) {
    case 0:
        FontOAM_GetXY(textData->fontOAM, &x, &y);
        y = setY;
        FontOAM_SetXY(textData->fontOAM, x, y);
        break;
    case 1:
        FontOAM_GetXY(textData->fontOAM, &x, &y);
        y = setY + -2;
        FontOAM_SetXY(textData->fontOAM, x, y);
        break;
    case 2:
        FontOAM_GetXY(textData->fontOAM, &x, &y);
        y = setY + -4;
        FontOAM_SetXY(textData->fontOAM, x, y);
        break;
    case 3:
        FontOAM_GetXY(textData->fontOAM, &x, &y);
        y = setY + -2;
        FontOAM_SetXY(textData->fontOAM, x, y);
        break;
    }
}

void ov21_021D1524(Sprite *param0, PokedexTextData *textData, int param2, int param3, int param4)
{
    int v0;

    PokedexMain_SetButtonY(param0, textData, param2);
    v0 = Sprite_GetAnimFrame(param0);

    if (v0 < 2) {
        sub_02012AC0(textData->fontOAM, param3);
    } else {
        sub_02012AC0(textData->fontOAM, param4);
    }
}

void PokedexMain_SetHitTableRect(TouchScreenHitTable *hitTable, int top, int bottom, int left, int right)
{
    hitTable->rect.top = top;
    hitTable->rect.bottom = bottom;
    hitTable->rect.left = left;
    hitTable->rect.right = right;
}

void PokedexMain_SetLoadingScreenParams(PokedexLoadingScreen *pokedexLoadingScreen, BgConfig *bgConfig, int layer, NNSG2dScreenData *screenData, int topStart, int topEnd, int bottomStart, int bottomEnd, int duration)
{
    pokedexLoadingScreen->bgConfig = bgConfig;
    pokedexLoadingScreen->layer = layer;
    pokedexLoadingScreen->screenData = screenData;
    pokedexLoadingScreen->topStart = topStart;
    pokedexLoadingScreen->topDist = topEnd - topStart;
    pokedexLoadingScreen->bottomStart = bottomStart;
    pokedexLoadingScreen->bottomDist = bottomEnd - bottomStart;
    pokedexLoadingScreen->duration = duration;
    pokedexLoadingScreen->counter = 0;
}

BOOL PokedexMain_LoadingScreenMove(PokedexLoadingScreen *loadingScreen)
{
    int topPos;
    int bottomPos;

    if (loadingScreen->counter <= loadingScreen->duration) {
        Bg_FillTilemapRect(loadingScreen->bgConfig, loadingScreen->layer, 0, 0, 0, 32, 24, 16);

        topPos = (loadingScreen->topDist * loadingScreen->counter) / loadingScreen->duration;
        bottomPos = (loadingScreen->bottomDist * loadingScreen->counter) / loadingScreen->duration;
        topPos += loadingScreen->topStart;
        bottomPos += loadingScreen->bottomStart;

        if (topPos > 0) {
            Bg_CopyToTilemapRect(loadingScreen->bgConfig, loadingScreen->layer, 0, 0, 32, topPos, loadingScreen->screenData->rawData, 0, 32 - topPos, 32, 32);
        }

        if ((32 - bottomPos) > 0) {
            Bg_CopyToTilemapRect(loadingScreen->bgConfig, loadingScreen->layer, 0, 32 - bottomPos, 32, bottomPos, loadingScreen->screenData->rawData, 0, 0, 32, 32);
        }

        Bg_ScheduleTilemapTransfer(loadingScreen->bgConfig, loadingScreen->layer);
        loadingScreen->counter++;

        return FALSE;
    }

    return TRUE;
}

void PokedexMain_DisplayNameNumberText(Window *window, int dexNumber, int species, enum HeapID heapID)
{
    String *numStr;
    String *nameNumber;

    if (dexNumber > 0) {
        numStr = String_Init(4, heapID);
        String_FormatInt(numStr, dexNumber, 3, 2, 1);
    } else {
        numStr = PokedexMain_GetMessage(pl_msg_pokedex_none, heapID);
    }

    nameNumber = PokedexText_NameNumber(species, GAME_LANGUAGE, heapID);

    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, numStr, 22, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, nameNumber, 49, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    String_Free(numStr);

    PokedexText_Free(nameNumber);
}

Window *PokedexMain_DisplayNameNumber(PokedexGraphicData *pokedexgraphicData, const PokedexSortData *pokedexSortData, enum HeapID heapID, int species)
{
    Window *window;

    if (PokedexSort_IsNationalDex(pokedexSortData) == FALSE) {
        window = PokedexMain_DisplayNameNumberLocal(pokedexgraphicData->textMan, heapID, species);
    } else {
        window = PokedexMain_DisplayNameNumberNational(pokedexgraphicData->textMan, heapID, species);
    }

    return window;
}

Window *PokedexMain_DisplayNameNumberNational(PokedexTextManager *textMan, enum HeapID heapID, int species)
{
    Window *window = PokedexTextManager_NewWindow(textMan, 15, 2);
    PokedexMain_DisplayNameNumberText(window, species, species, heapID);

    return window;
}

Window *PokedexMain_DisplayNameNumberLocal(PokedexTextManager *textMan, enum HeapID heapID, int species)
{
    int dexNumber = Pokemon_SinnohDexNumber(species);

    if ((species != SPECIES_REGIROCK) && (species != SPECIES_REGICE) && (species != SPECIES_REGISTEEL)) {
        GF_ASSERT(dexNumber > 0);
    }

    Window *window = PokedexTextManager_NewWindow(textMan, 15, 2);
    PokedexMain_DisplayNameNumberText(window, dexNumber, species, heapID);

    return window;
}

void PokedexMain_EntryNameNumber(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, enum HeapID heapID, int statusIndex, fx32 x, fx32 y)
{
    PokedexDisplayBox displayBox;
    VecFx32 position;
    u32 isNationalDex = PokedexSort_IsNationalDex(pokedexSortData);

    const SpeciesCaughtStatus *speciesCaughtStatus = PokedexSort_StatusIndexToCaughtStatus(pokedexSortData, statusIndex);
    Sprite *nameTag = PokedexGraphics_GetNameTag(pokedexGraphicData);
    Sprite *caughtIcon = PokedexGraphics_GetCaughtIcon(pokedexGraphicData);

    position.x = x;
    position.y = y;

    Sprite_SetPosition(nameTag, &position);
    Sprite_SetDrawFlag(nameTag, TRUE);

    if (speciesCaughtStatus->caughtStatus == CS_CAUGHT) {
        position.x = x + (-54 * FX32_ONE);
        position.y = y;

        Sprite_SetPosition(caughtIcon, &position);
        Sprite_SetDrawFlag(caughtIcon, TRUE);
    } else {
        Sprite_SetDrawFlag(caughtIcon, FALSE);
    }

    SpriteResource *v4 = PokedexGraphics_GetSpeciesLabelSpriteResource(pokedexGraphicData, 1);

    displayBox.textMan = pokedexGraphicData->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v4, NULL);
    displayBox.sprite = nameTag;
    displayBox.x = -(128 / 2);
    displayBox.y = -(16 / 2);
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = heapID;

    Window *window = PokedexMain_DisplayNameNumber(pokedexGraphicData, pokedexSortData, heapID, speciesCaughtStatus->species);
    displayBox.window = window;

    PokedexGraphics_UpdatePokedexSpeciesLabel(pokedexGraphicData, &displayBox, 0, speciesCaughtStatus->species, isNationalDex);
    PokedexTextManager_FreeWindow(window);
}

void ov21_021D1848(PokedexGraphicData *param0, int param1, int param2)
{
    ov21_021D1858(&param0->pokedexSpeciesLabel, param1, param2);
}

void ov21_021D1858(PokedexSpeciesLabel *pokedexSpeciesLabel, int param1, int param2)
{
    VecFx32 v0;

    v0.x = param1 << FX32_SHIFT;
    v0.y = param2 << FX32_SHIFT;

    Sprite_SetPosition(pokedexSpeciesLabel->nameTag, &v0);
    v0.x += (-54 * FX32_ONE);
    Sprite_SetPosition(pokedexSpeciesLabel->caughtIcon, &v0);

    if (pokedexSpeciesLabel->textData->fontOAM) {
        sub_02012938(pokedexSpeciesLabel->textData->fontOAM);
    }
}

void PokedexMain_DisplayPokemonSprite(PokedexGraphicData *pokedexGraphicData, PokedexSortData *pokedexSortData, int species, int face, int x, int y)
{
    switch (species) {
    case SPECIES_UNOWN:
        PokedexMain_DisplayUnownSprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    case SPECIES_BURMY:
        PokedexMain_DisplayBurmySprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    case SPECIES_WORMADAM:
        PokedexMain_DisplayWormadamSprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    case SPECIES_SHELLOS:
        PokedexMain_DisplayShellosSprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    case SPECIES_GASTRODON:
        PokedexMain_DisplayGastrodonSprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    case SPECIES_DEOXYS:
        PokedexMain_DisplayDeoxysSprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    case SPECIES_SHAYMIN:
        PokedexMain_DisplayShayminSprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    case SPECIES_GIRATINA:
        PokedexMain_DisplayGiratinaSprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    case SPECIES_ROTOM:
        PokedexMain_DisplayRotomSprite(pokedexGraphicData, pokedexSortData, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    default:
        PokedexMain_DisplaySpeciesSprite(pokedexGraphicData, pokedexSortData, species, face, x, y, 0, SPRITEINDEX_CURRENT_FRONT);
        break;
    }
}

u32 PokedexMain_DisplaySpeciesSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int species, int face, int x, int y, int formIndex, int spriteIndex)
{
    u32 personality = 0;

    if (species == SPECIES_SPINDA) {
        personality = PokedexSort_SpindaForm(pokedexSortData);
    }

    int gender = PokedexSort_Gender(pokedexSortData, species, formIndex);

    if (gender != -1) {
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, species, gender, face, FALSE, 0, personality, x, y, spriteIndex);
    }

    return gender;
}

u32 PokedexMain_DisplayUnownSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form = PokedexSort_UnownForm(pokedexSortData, formIndex);

    if (form != -1) {
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_UNOWN, GENDER_NONE, face, FALSE, form, 0, x, y, spriteIndex);
    }

    return form;
}

u32 PokedexMain_DisplayShellosSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form = PokedexSort_ShellosForm(pokedexSortData, formIndex);

    if (form != -1) {
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_SHELLOS, GENDER_MALE, face, FALSE, form, 0, x, y, spriteIndex);
    }

    return form;
}

u32 PokedexMain_DisplayGastrodonSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form = PokedexSort_GastrodonForm(pokedexSortData, formIndex);

    if (form != -1) {
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_GASTRODON, GENDER_MALE, face, FALSE, form, 0, x, y, spriteIndex);
    }

    return form;
}

u32 PokedexMain_DisplayBurmySprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form = PokedexSort_BurmyForm(pokedexSortData, formIndex);

    if (form != -1) {
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_BURMY, GENDER_MALE, face, FALSE, form, 0, x, y, spriteIndex);
    }

    return form;
}

u32 PokedexMain_DisplayWormadamSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form = PokedexSort_WormadamForm(pokedexSortData, formIndex);

    if (form != -1) {
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_WORMADAM, GENDER_FEMALE, face, FALSE, form, 0, x, y, spriteIndex);
    }

    return form;
}

u32 PokedexMain_DisplayDeoxysSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form = PokedexSort_DeoxysForm(pokedexSortData, formIndex);

    if (form != 15) {
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_DEOXYS, GENDER_FEMALE, face, FALSE, form, 0, x, y, spriteIndex);
    }

    return form;
}

u32 PokedexMain_DisplayShayminSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form;
    int numFormsSeen = PokedexSort_NumFormsSeen(pokedexSortData, SPECIES_SHAYMIN);

    if (numFormsSeen > formIndex) {
        form = PokedexSort_Form(pokedexSortData, SPECIES_SHAYMIN, formIndex);
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_SHAYMIN, GENDER_FEMALE, face, FALSE, form, 0, x, y, spriteIndex);
    } else {
        form = -1;
    }

    return form;
}

u32 PokedexMain_DisplayGiratinaSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form;
    int numFormsSeen = PokedexSort_NumFormsSeen(pokedexSortData, SPECIES_GIRATINA);

    if (numFormsSeen > formIndex) {
        form = PokedexSort_Form(pokedexSortData, SPECIES_GIRATINA, formIndex);
        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_GIRATINA, GENDER_FEMALE, face, FALSE, form, 0, x, y, spriteIndex);
    } else {
        form = -1;
    }

    return form;
}

u32 PokedexMain_DisplayRotomSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int x, int y, int formIndex, int spriteIndex)
{
    int form;
    int numFormsSeen = PokedexSort_NumFormsSeen(pokedexSortData, SPECIES_ROTOM);

    if (numFormsSeen > formIndex) {
        form = PokedexSort_Form(pokedexSortData, SPECIES_ROTOM, formIndex);

        PokedexGraphics_LoadPokemonSprite(pokedexGraphicData, SPECIES_ROTOM, GENDER_FEMALE, face, FALSE, form, 0, x, y, spriteIndex);
    } else {
        form = -1;
    }

    return form;
}

String *PokedexMain_GetMessage(int entryID, enum HeapID heapID)
{
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    String *pokedexMessage = MessageLoader_GetNewString(pokedexMessageBank, entryID);
    MessageLoader_Free(pokedexMessageBank);

    return pokedexMessage;
}

static void FreePokedexApp(PokedexApp *pokedexApp)
{
    int i;

    ov21_021D4660(&pokedexApp->unk_1A80);

    GF_ASSERT(pokedexApp->unk_1A70);
    Heap_Free(pokedexApp->unk_1A70);

    GF_ASSERT(pokedexApp->unk_1A74);
    Heap_Free(pokedexApp->unk_1A74);

    GF_ASSERT(pokedexApp->unk_1A78);
    Heap_Free(pokedexApp->unk_1A78);

    GF_ASSERT(pokedexApp->unk_1A7C);
    Heap_Free(pokedexApp->unk_1A7C);

    GF_ASSERT(pokedexApp->unk_1D64);
    Heap_Free(pokedexApp->unk_1D64);

    GF_ASSERT(pokedexApp->unk_1D68);
    Heap_Free(pokedexApp->unk_1D68);

    GF_ASSERT(pokedexApp->unk_1D6C);
    Heap_Free(pokedexApp->unk_1D6C);

    GF_ASSERT(pokedexApp->unk_1D70);
    Heap_Free(pokedexApp->unk_1D70);

    for (i = 0; i < 10; i++) {
        if (Unk_ov21_021E9B9C[i]) {
            Unk_ov21_021E9B9C[i](&pokedexApp->unk_1A94[i]);
        }
    }

    for (i = 0; i < 8; i++) {
        if (Unk_ov21_021E9B54[i]) {
            Unk_ov21_021E9B54[i](&pokedexApp->unk_1C24[i]);
        }
    }

    PokedexMemory_SetCurrentSpecies(pokedexApp->pokedexMemory, PokedexSort_GetCurrentSpecies(&pokedexApp->sortData));

    if (ov21_021D36A4(&pokedexApp->sortData, 1) == 1) {
        PokedexMemory_SetBootMode(pokedexApp->pokedexMemory, PokedexSort_GetBootMode(&pokedexApp->sortData));
    } else {
        PokedexMemory_SetBootMode(pokedexApp->pokedexMemory, POKEDEX_BOOT_DEFAULT);
    }

    PokedexSort_PokedexStatusFreeHWData(&pokedexApp->sortData);
    PokedexGraphics_Free(&pokedexApp->graphicData);
    Heap_Free(pokedexApp);
}

static void SetGXBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_80_EF,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    GXLayers_SetBanks(&banks);
}

static void InitG2(enum HeapID heapID)
{
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, heapID);

    {
        CharTransferTemplate charTransferTemplate = {
            32,
            0x14000,
            0x4000,
        };

        charTransferTemplate.heapID = heapID;
        CharTransfer_InitWithVramModes(&charTransferTemplate, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    PlttTransfer_Init(32, heapID);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void ov21_021D1EEC(PokedexApp *pokedexApp)
{
    ov21_021D426C(pokedexApp->unk_1A70, &pokedexApp->unk_1A80, 1);
    pokedexApp->unk_1A60 = 1;
}

static void InitG3(void)
{
    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);
}

static void ResetFrm(void)
{
    NNS_GfdResetFrmTexVramState();
    NNS_GfdResetFrmPlttVramState();
}
