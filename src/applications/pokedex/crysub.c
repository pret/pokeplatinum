#include "applications/pokedex/crysub.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_02012744.h"
#include "vram_transfer.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

/*
 * Pokedex Cry Page Sub Screen
 */

// constants used in this file
#define CRY_COOLDOWN      10
#define BUTTON_RESET      100
#define CRYSUB_GRAPHIC_ID 10000
// switch constants
#define SWITCH_X            64
#define SWITCH_Y            67
#define SWITCH_WIDTH        84
#define SWITCH_HEIGHT       28
#define SWITCH_LABEL_Y      84
#define SWITCH_LABEL_WIDTH  8
#define SWITCH_LABEL_HEIGHT 2
#define SWITCH_THRESHOLD    12
#define SWITCH_ANIM_CHORUS  4
#define SWITCH_ANIM_PAN     0
#define SWITCH_MAX_FRAME    8
// dial constants
#define DIAL_X         51
#define DIAL_Y         157
#define DIAL_R         32
#define DIAL_MAX_POS   88
#define DIAL_ACCURACY  8
#define DIAL_INCREMENT (DIAL_R / DIAL_ACCURACY)
#define DIAL_THRESHOLD 32
// pokeball constants
#define POKEBALL_X        131
#define POKEBALL_Y        99
#define POKEBALL_R        72
#define POKEBALL_X_OFFSET -48
#define POKEBALL_Y_OFFSET -16
// play button constants
#define PLAY_X              180
#define PLAY_Y              131
#define PLAY_WIDTH          48
#define PLAY_HEIGHT         48
#define PLAY_ANIM_UNPRESSED 3
#define PLAY_ANIM_PRESSED   2
#define PLAY_MAX_FRAME      5
// loop button constants
#define LOOP_X              230
#define LOOP_Y              166
#define LOOP_WIDTH          32
#define LOOP_HEIGHT         32
#define LOOP_ANIM_UNPRESSED 6
#define LOOP_ANIM_PRESSED   5
#define LOOP_MAX_FRAME      5

enum CrySubButtons {
    CRYSUB_PLAY = 0,
    CRYSUB_LOOP,
    MAX_CRYSUBBUTTONS,
};

enum CrySubAdjustors {
    CRYSUB_SWITCH = 0,
    CRYSUB_DIAL,
    CRYSUB_POKEBALL,
    MAX_CRYSUBADJUSTORS,
};

enum DialMode {
    DIAL_NONE = 0,
    DIAL_REVERB,
    DIAL_FILTER,
};

enum SwitchMode {
    SWITCH_CHORUS = 0,
    SWITCH_PAN,
    MAX_SWITCHMODE,
};

enum PlayButtonState {
    PLAY_UNPRESSED = 0,
    PLAY_APRESS,
    PLAY_HOLD,
};

typedef struct PokedexCrySubData {
    int *unk_00;
    PokedexSortData *sortData;
    PokedexScreenManager *screenMan;
    int pitch;
} PokedexCrySubData;

typedef struct Context {
    void *applicationData;
    void *pageData;
} Context;

typedef struct PokedexCrySubPageData {
    TouchScreenActions *adjustorTouchScreenActions;
    TouchScreenHitTable *asjustorHitTables;
    Context context;
    TouchScreenHitTable *buttonHitTables;
    TouchScreenActions *buttonTouchScreenActions;
    enum TouchScreenButtonState buttonState[MAX_CRYSUBBUTTONS];
    BOOL pokeballHeld;
    BOOL buttonHeld;
    enum PlayButtonState playButtonState;
    BOOL cryPlaying;
    BOOL switchTouched;
    enum SwitchMode switchMode;
    int switchX;
    int pitch;
    int pan;
    int echoVolume;
    BOOL pokeballActive;
    BOOL dialTouched;
    enum DialMode dialMode;
    int dialX;
    int dialY;
    int dialPosition;
    int dialMagnitude;
    BOOL loop;
    int cryCooldown;
    const SNDWaveData *cryData;
} PokedexCrySubPageData;

typedef struct CrySubButtonData {
    int unpressedAnim;
    int pressedAnim;
    int currentAnim;
    BOOL buttonActive;
    int maxFrame;
    int frame;
} CrySubButtonData;

typedef struct PokedexCrySubGraphics {
    Sprite *dialSprite;
    Sprite *playButtonSprite;
    CrySubButtonData playButtonData;
    Sprite *loopButtonSprite;
    CrySubButtonData loopButtonData;
    Sprite *switchSprite;
    enum SwitchMode switchMode;
    fx32 dummy;
    int numCriesPlayed;
    u16 wheelPosition;
    PokedexTextData *switchLabel[MAX_SWITCHMODE];
    SpriteResource *dialSpriteResource[MAX_SPRITE_RESOURCE_GEN4];
    void *backgroundPalette;
    NNSG2dPaletteData *paletteData;
    BOOL pokeballActive;
} PokedexCrySubGraphics;

static PokedexCrySubData *LoadAppData(enum HeapID heapID, PokedexApp *pokedexApp);
static PokedexGraphicData **LoadAppGraphics(enum HeapID heapID, PokedexApp *pokedexApp);
static UnkStruct_ov21_021D4660 *ScreenStates(enum HeapID heapID, PokedexApp *pokedexApp);
static void FreePokedexCrySubData(PokedexCrySubData *pokedexCrySubData);
static void FreeGraphicData(PokedexGraphicData **graphicData);
static void FreeScreenStates(UnkStruct_ov21_021D4660 *screenStates);
static int NumStates(void);
static BOOL CrySubDataEnter(PokedexDataManager *dataMan, void *data);
static BOOL CrySubDataUpdate(PokedexDataManager *dataMan, void *data);
static BOOL CrySubDataExit(PokedexDataManager *dataMan, void *data);
static BOOL CrySubGraphicsEnter(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static BOOL CrySubGraphicsUpdate(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static BOOL CrySubGraphicsExit(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void SetSpriteOAMModesXLU(PokedexCrySubGraphics *pokedexCrySubGraphics);
static void SetSpriteOAMModesNormal(PokedexCrySubGraphics *pokedexCrySubGraphics);
static void InitBlendTransition(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, const PokedexCrySubData *pokedexCrySubData, BOOL isEntering);
static BOOL AdvanceBlendTransition(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, const PokedexCrySubData *pokedexCrySubData, BOOL isEntering);
static void SetTouchScreen(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData, enum HeapID heapID);
static void ResetButtons(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData);
static void FreeTouchScreen(PokedexCrySubPageData *pokedexCrySubPageData);
static void AdjustmentTouchActions(u32 adjustor, enum TouchScreenButtonState buttonState, void *data);
static void AdvancePlayButton(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData);
static void UpdateCursor(PokedexGraphicData **graphics, const PokedexCrySubData *pokedexCrySubData);
static void ButtonTouchActions(u32 button, enum TouchScreenButtonState touchScreenButtonState, void *data);
static void AdjustorPress(enum CrySubAdjustors adjustor, PokedexCrySubData *pokedexCrySubData, PokedexCrySubPageData *pokedexCrySubPageData);
static void AdjustorHeld(enum CrySubAdjustors adjustor, PokedexCrySubData *pokedexCrySubData, PokedexCrySubPageData *pokedexCrySubPageData);
static void AdjustorRelease(enum CrySubAdjustors adjustor, PokedexCrySubData *pokedexCrySubData, PokedexCrySubPageData *pokedexCrySubPageData);
static void AdjustorOOB(enum CrySubAdjustors adjustor, PokedexCrySubData *pokedexCrySubData, PokedexCrySubPageData *pokedexCrySubPageData);
static void PlaySpeciesCry(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData, enum Species species);
static void StopSpeciesCry(PokedexCrySubPageData *pokedexCrySubPageData);
static void LoopCry(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData);
static void SetLoop(PokedexCrySubPageData *pokedexCrySubPageData, BOOL loop);
static void UpdateButtonStateGraphic(Sprite *buttonSprite, CrySubButtonData *buttonData, BOOL buttonActive, enum TouchScreenButtonState buttonState);
static void UpdateButtonStateGraphicOOB(Sprite *buttonSprite, CrySubButtonData *buttonData, BOOL buttonActive, enum TouchScreenButtonState buttonState);
static void UpdateButtonGraphic(Sprite *buttonSprite, CrySubButtonData *buttonData, BOOL buttonActive);
static void UpdateSwitchGraphic(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData);
static void UpdatePlayButtonGraphics(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData);
static void UpdateLoopButtonGraphics(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData);
static void UpdateSwitchLabel(PokedexCrySubGraphics *pokedexCrySubGraphics);
static void SetPokeballActiveReset(PokedexCrySubPageData *pokedexCrySubPageData, BOOL pokeballActive);
static void SetPokeballActive(PokedexCrySubPageData *pokedexCrySubPageData, BOOL pokeballActive);
static void InitCrySoundValues(PokedexCrySubPageData *pokedexCrySubPageData);
static void SetCrySoundValues(PokedexCrySubPageData *pokedexCrySubPageData);
static void UpdatePokeballPalette(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData);
static void SetEchoVolume(int volume);
static void SetPitch(int pitch);
static void UpdateDialPosition(PokedexCrySubPageData *pokedexCrySubPageData);
static void UpdateDialMagnitude(PokedexCrySubPageData *pokedexCrySubPageData);
static void UpdateReverbFilter(PokedexCrySubPageData *pokedexCrySubPageData);
static void RotateDial(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData);
static void StopReverbFilter(PokedexCrySubPageData *pokedexCrySubPageData);
static void UpdateWheelPosition(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, const PokedexCrySubPageData *pokedexCrySubPageData);
static void UpdateEchoVolume(PokedexCrySubPageData *pokedexCrySubPageData, int touchX);
static void UpdatePan(PokedexCrySubPageData *pokedexCrySubPageData, int touchX);
static void LoadCrySubGraphics(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID);
static void FreeGraphics(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID);
static void LoadBackgroundTileMaps(PokedexGraphicData **graphicData, enum HeapID heapID);
static void FreeBackgroundTileMaps(PokedexGraphicData **graphicData);
static void LoadCryDialSprite(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID);
static void FreeDialSpriteResource(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData);
static void AnimateSprites(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphics, enum HeapID heapID);
static void FreeSprites(PokedexCrySubGraphics *pokedexCrySubGraphics);
static void LoadSwitchText(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphics, enum HeapID heapID);
static void FreeSwitchLabel(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData);
static void LoadCryPalette(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID);
static void FreeCryPalette(PokedexCrySubGraphics *pokedexCrySubGraphics);
static void PokeballPaletteActive(PokedexCrySubGraphics *pokedexCrySubGraphics);
static void PokeballPaletteDefault(PokedexCrySubGraphics *pokedexCrySubGraphics);

void CrySub_Init(PokedexScreenManager *screenMan, PokedexApp *pokedexApp, enum HeapID heapID)
{
    PokedexCrySubData *pokedexCrySubData = LoadAppData(heapID, pokedexApp);
    PokedexGraphicData **pokedexGraphicData = LoadAppGraphics(heapID, pokedexApp);
    UnkStruct_ov21_021D4660 *screenStates = ScreenStates(heapID, pokedexApp);

    screenMan->pageData = pokedexCrySubData;
    screenMan->pageGraphics = pokedexGraphicData;
    screenMan->screenStates = screenStates;
    screenMan->numStates = NumStates();

    screenMan->dataFunc[0] = CrySubDataEnter;
    screenMan->dataFunc[1] = CrySubDataUpdate;
    screenMan->dataFunc[2] = CrySubDataExit;
    screenMan->graphicsFunc[0] = CrySubGraphicsEnter;
    screenMan->graphicsFunc[1] = CrySubGraphicsUpdate;
    screenMan->graphicsFunc[2] = CrySubGraphicsExit;
}

void CrySub_Free(PokedexScreenManager *screenMan)
{
    FreePokedexCrySubData(screenMan->pageData);
    FreeGraphicData(screenMan->pageGraphics);
    FreeScreenStates(screenMan->screenStates);
}

int CrySub_GetPitch(const PokedexScreenManager *screenMan)
{
    const PokedexCrySubData *pokedexCrySubData = screenMan->pageData;

    return pokedexCrySubData->pitch;
}

static PokedexCrySubData *LoadAppData(enum HeapID heapID, PokedexApp *pokedexApp)
{
    PokedexCrySubData *pokedexCrySubData = Heap_Alloc(heapID, sizeof(PokedexCrySubData));

    GF_ASSERT(pokedexCrySubData);
    memset(pokedexCrySubData, 0, sizeof(PokedexCrySubData));

    pokedexCrySubData->unk_00 = ov21_021D13A0(pokedexApp);
    pokedexCrySubData->sortData = PokedexMain_GetSortData(pokedexApp);
    pokedexCrySubData->screenMan = ov21_021D1430(pokedexApp, 3);

    return pokedexCrySubData;
}

static PokedexGraphicData **LoadAppGraphics(enum HeapID heapID, PokedexApp *pokedexApp)
{
    PokedexGraphicData **graphicData = Heap_Alloc(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(graphicData);
    memset(graphicData, 0, sizeof(PokedexGraphicData **));

    *graphicData = PokedexMain_GetGraphicData(pokedexApp);

    return graphicData;
}

static UnkStruct_ov21_021D4660 *ScreenStates(enum HeapID heapID, PokedexApp *pokedexApp)
{
    return NULL;
}

static void FreePokedexCrySubData(PokedexCrySubData *pokedexCrySubData)
{
    GF_ASSERT(pokedexCrySubData);
    Heap_Free(pokedexCrySubData);
}

static void FreeGraphicData(PokedexGraphicData **graphicData)
{
    GF_ASSERT(graphicData);
    Heap_Free(graphicData);
}

static void FreeScreenStates(UnkStruct_ov21_021D4660 *screenStates)
{
    return;
}

static int NumStates(void)
{
    return 0;
}

static BOOL CrySubDataEnter(PokedexDataManager *dataMan, void *data)
{
    PokedexCrySubData *pokedexCrySubData = data;
    PokedexCrySubPageData *pokedexCrySubPageData = dataMan->pageData;
    enum Species species = PokedexSort_CurrentSpecies(pokedexCrySubData->sortData);

    pokedexCrySubPageData = Heap_Alloc(dataMan->heapID, sizeof(PokedexCrySubPageData));
    memset(pokedexCrySubPageData, 0, sizeof(PokedexCrySubPageData));

    SetTouchScreen(pokedexCrySubPageData, pokedexCrySubData, dataMan->heapID);
    ResetButtons(pokedexCrySubPageData, pokedexCrySubData);

    pokedexCrySubPageData->cryData = Sound_LoadPokedexDataForSpecies(species);

    dataMan->pageData = pokedexCrySubPageData;

    return TRUE;
}

static BOOL CrySubDataUpdate(PokedexDataManager *dataMan, void *data)
{
    PokedexCrySubData *pokedexCrySubData = data;
    PokedexCrySubPageData *pokedexCrySubPageData = dataMan->pageData;

    if (dataMan->exit == TRUE) {
        StopSpeciesCry(pokedexCrySubPageData);
        StopReverbFilter(pokedexCrySubPageData);
        return TRUE;
    }

    if (dataMan->unchanged == TRUE) {
        return FALSE;
    }

    pokedexCrySubData->pitch = pokedexCrySubPageData->pitch;

    if (ov21_021E33AC(pokedexCrySubData->screenMan)) {
        if (Sound_IsPokemonCryPlaying() == FALSE) {
            if (pokedexCrySubPageData->loop == FALSE) {
                StopSpeciesCry(pokedexCrySubPageData);
            }
        }

        ResetButtons(pokedexCrySubPageData, pokedexCrySubData);

        if (ov21_021E33BC(pokedexCrySubData->screenMan) && (ov21_021D3998(pokedexCrySubData->sortData) == 2)) {
            AdvancePlayButton(pokedexCrySubPageData, pokedexCrySubData);
        }

        if (pokedexCrySubPageData->loop && pokedexCrySubPageData->cryPlaying) {
            LoopCry(pokedexCrySubPageData, pokedexCrySubData);
        }
    }

    return FALSE;
}

static BOOL CrySubDataExit(PokedexDataManager *dataMan, void *data)
{
    PokedexCrySubData *pokedexCrySubData = data;
    PokedexCrySubPageData *pokedexCrySubPageData = dataMan->pageData;

    FreeTouchScreen(pokedexCrySubPageData);
    Heap_Free(pokedexCrySubPageData);

    return TRUE;
}

static BOOL CrySubGraphicsEnter(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexCrySubData *pokedexCrySubData = data;
    const PokedexCrySubPageData *pokedexCrySubPageData = dataMan->pageData;
    PokedexGraphicData **graphicdata = graphics;
    PokedexCrySubGraphics *pokedexCrySubGraphics = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(PokedexCrySubGraphics));
        memset(graphicsMan->pageGraphics, 0, sizeof(PokedexCrySubGraphics));
        graphicsMan->state++;
        break;
    case 1:
        LoadCrySubGraphics(pokedexCrySubGraphics, graphicdata, graphicsMan->heapID);
        InitBlendTransition(pokedexCrySubGraphics, graphicdata, pokedexCrySubData, TRUE);
        graphicsMan->state++;
        break;
    case 2:
        if (AdvanceBlendTransition(pokedexCrySubGraphics, graphicdata, pokedexCrySubData, TRUE)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        PokedexGraphics_SetStaticCursorSize(&(*graphicdata)->cursorGraphics, FALSE);
        return TRUE;
    default:
        break;
    }

    return FALSE;
}

static BOOL CrySubGraphicsUpdate(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexCrySubData *pokedexCrySubData = data;
    const PokedexCrySubPageData *pokedexCrySubPageData = dataMan->pageData;
    PokedexGraphicData **graphicdata = graphics;
    PokedexCrySubGraphics *pokedexCrySubGraphics = graphicsMan->pageGraphics;

    if (ov21_021E33AC(pokedexCrySubData->screenMan)) {
        UpdateSwitchGraphic(pokedexCrySubGraphics, pokedexCrySubPageData);
        UpdatePlayButtonGraphics(pokedexCrySubGraphics, pokedexCrySubPageData);
        UpdateLoopButtonGraphics(pokedexCrySubGraphics, pokedexCrySubPageData);
        RotateDial(pokedexCrySubGraphics, pokedexCrySubPageData);
        UpdateWheelPosition(pokedexCrySubGraphics, graphicdata, pokedexCrySubPageData);
        UpdateSwitchLabel(pokedexCrySubGraphics);
        UpdatePokeballPalette(pokedexCrySubGraphics, pokedexCrySubPageData);
        UpdateCursor(graphicdata, pokedexCrySubData);
    }

    return FALSE;
}

static BOOL CrySubGraphicsExit(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const PokedexCrySubData *pokedexCrySubData = data;
    const PokedexCrySubPageData *pokedexCrySubPageData = dataMan->pageData;
    PokedexGraphicData **graphicdata = graphics;
    PokedexCrySubGraphics *pokedexCrySubGraphics = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        PokedexGraphics_SetStaticCursorSize(&(*graphicdata)->cursorGraphics, TRUE);
        PokeballPaletteDefault(pokedexCrySubGraphics);
        InitBlendTransition(pokedexCrySubGraphics, graphicdata, pokedexCrySubData, FALSE);
        graphicsMan->state++;
        break;
    case 1:
        if (AdvanceBlendTransition(pokedexCrySubGraphics, graphicdata, pokedexCrySubData, FALSE)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        FreeGraphics(pokedexCrySubGraphics, graphicdata, graphicsMan->heapID);
        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->state++;
        break;
    case 4:
        return TRUE;
    default:
        break;
    }

    return FALSE;
}

static void SetSpriteOAMModesXLU(PokedexCrySubGraphics *pokedexCrySubGraphics)
{
    Sprite_SetExplicitOAMMode(pokedexCrySubGraphics->dialSprite, GX_OAM_MODE_XLU);
    Sprite_SetExplicitOAMMode(pokedexCrySubGraphics->switchSprite, GX_OAM_MODE_XLU);
    Sprite_SetExplicitOAMMode(pokedexCrySubGraphics->playButtonSprite, GX_OAM_MODE_XLU);
    Sprite_SetExplicitOAMMode(pokedexCrySubGraphics->loopButtonSprite, GX_OAM_MODE_XLU);

    sub_02012AF0(pokedexCrySubGraphics->switchLabel[SWITCH_CHORUS]->fontOAM, GX_OAM_MODE_XLU);
    sub_02012AF0(pokedexCrySubGraphics->switchLabel[SWITCH_PAN]->fontOAM, GX_OAM_MODE_XLU);
}

static void SetSpriteOAMModesNormal(PokedexCrySubGraphics *pokedexCrySubGraphics)
{
    Sprite_SetExplicitOAMMode(pokedexCrySubGraphics->dialSprite, GX_OAM_MODE_NORMAL);
    Sprite_SetExplicitOAMMode(pokedexCrySubGraphics->switchSprite, GX_OAM_MODE_NORMAL);
    Sprite_SetExplicitOAMMode(pokedexCrySubGraphics->playButtonSprite, GX_OAM_MODE_NORMAL);
    Sprite_SetExplicitOAMMode(pokedexCrySubGraphics->loopButtonSprite, GX_OAM_MODE_NORMAL);

    sub_02012AF0(pokedexCrySubGraphics->switchLabel[SWITCH_CHORUS]->fontOAM, GX_OAM_MODE_NORMAL);
    sub_02012AF0(pokedexCrySubGraphics->switchLabel[SWITCH_PAN]->fontOAM, GX_OAM_MODE_NORMAL);
}

static void InitBlendTransition(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, const PokedexCrySubData *pokedexCrySubData, BOOL isEntering)
{
    SetSpriteOAMModesXLU(pokedexCrySubGraphics);

    if (ov21_021E33A4(pokedexCrySubData->screenMan)) {
        if (isEntering) {
            PokedexGraphics_InitBlendTransition(&(*graphicData)->blendSub, 3, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), TRUE);
        } else {
            PokedexGraphics_InitBlendTransition(&(*graphicData)->blendSub, 3, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), TRUE);
        }
    }
}

static BOOL AdvanceBlendTransition(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, const PokedexCrySubData *pokedexCrySubData, BOOL isEntering)
{
    BOOL transitionComplete;

    if (ov21_021E33A4(pokedexCrySubData->screenMan)) {
        transitionComplete = PokedexGraphics_TakeBlendTransitionStep(&(*graphicData)->blendSub);
    } else {
        transitionComplete = BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN);
    }

    if (transitionComplete) {
        if (isEntering) {
            SetSpriteOAMModesNormal(pokedexCrySubGraphics);
        }

        return TRUE;
    }

    return FALSE;
}

static void SetTouchScreen(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData, enum HeapID heapID)
{
    pokedexCrySubPageData->asjustorHitTables = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * MAX_CRYSUBADJUSTORS);
    pokedexCrySubPageData->buttonHitTables = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * MAX_CRYSUBBUTTONS);

    PokedexMain_SetHitTableRect(&pokedexCrySubPageData->asjustorHitTables[CRYSUB_SWITCH], SWITCH_Y - (SWITCH_HEIGHT / 2), SWITCH_Y + (SWITCH_HEIGHT / 2), SWITCH_X - (SWITCH_WIDTH / 2), SWITCH_X + (SWITCH_WIDTH / 2));

    pokedexCrySubPageData->asjustorHitTables[CRYSUB_DIAL].circle.code = TOUCHSCREEN_USE_CIRCLE;
    pokedexCrySubPageData->asjustorHitTables[CRYSUB_DIAL].circle.x = DIAL_X;
    pokedexCrySubPageData->asjustorHitTables[CRYSUB_DIAL].circle.y = DIAL_Y;
    pokedexCrySubPageData->asjustorHitTables[CRYSUB_DIAL].circle.r = DIAL_R;

    pokedexCrySubPageData->asjustorHitTables[CRYSUB_POKEBALL].circle.code = TOUCHSCREEN_USE_CIRCLE;
    pokedexCrySubPageData->asjustorHitTables[CRYSUB_POKEBALL].circle.x = (POKEBALL_X - POKEBALL_X_OFFSET);
    pokedexCrySubPageData->asjustorHitTables[CRYSUB_POKEBALL].circle.y = (POKEBALL_Y - POKEBALL_Y_OFFSET) + 8;
    pokedexCrySubPageData->asjustorHitTables[CRYSUB_POKEBALL].circle.r = POKEBALL_R;

    PokedexMain_SetHitTableRect(&pokedexCrySubPageData->buttonHitTables[CRYSUB_PLAY], PLAY_Y - (PLAY_HEIGHT / 2), PLAY_Y + (PLAY_HEIGHT / 2), PLAY_X - (PLAY_WIDTH / 2), PLAY_X + (PLAY_WIDTH / 2));
    PokedexMain_SetHitTableRect(&pokedexCrySubPageData->buttonHitTables[CRYSUB_LOOP], LOOP_Y - (LOOP_HEIGHT / 2), LOOP_Y + (LOOP_HEIGHT / 2), LOOP_X - (LOOP_WIDTH / 2), LOOP_X + (LOOP_WIDTH / 2));

    pokedexCrySubPageData->context.applicationData = pokedexCrySubData;
    pokedexCrySubPageData->context.pageData = pokedexCrySubPageData;

    pokedexCrySubPageData->adjustorTouchScreenActions = TouchScreenActions_RegisterHandler(pokedexCrySubPageData->asjustorHitTables, MAX_CRYSUBADJUSTORS, AdjustmentTouchActions, &pokedexCrySubPageData->context, heapID);
    pokedexCrySubPageData->buttonTouchScreenActions = TouchScreenActions_RegisterHandler(pokedexCrySubPageData->buttonHitTables, MAX_CRYSUBBUTTONS, ButtonTouchActions, &pokedexCrySubPageData->context, heapID);
}

static void ResetButtons(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData)
{
    for (int button = 0; button < MAX_CRYSUBBUTTONS; button++) {
        pokedexCrySubPageData->buttonState[button] = BUTTON_RESET;
    }

    TouchScreenActions_HandleAction(pokedexCrySubPageData->adjustorTouchScreenActions);
    TouchScreenActions_HandleAction(pokedexCrySubPageData->buttonTouchScreenActions);
}

static void FreeTouchScreen(PokedexCrySubPageData *pokedexCrySubPageData)
{
    TouchScreenActions_Free(pokedexCrySubPageData->adjustorTouchScreenActions);
    TouchScreenActions_Free(pokedexCrySubPageData->buttonTouchScreenActions);
    Heap_Free(pokedexCrySubPageData->asjustorHitTables);

    pokedexCrySubPageData->asjustorHitTables = NULL;
    Heap_Free(pokedexCrySubPageData->buttonHitTables);
    pokedexCrySubPageData->buttonHitTables = NULL;
}

static void AdjustmentTouchActions(u32 adjustor, enum TouchScreenButtonState buttonState, void *data)
{
    Context *context = data;
    PokedexCrySubData *pokedexCrySubData = context->applicationData;
    PokedexCrySubPageData *pokedexCrySubPageData = context->pageData;

    switch (buttonState) {
    case TOUCH_BUTTON_PRESSED:
        AdjustorPress(adjustor, pokedexCrySubData, pokedexCrySubPageData);
        break;
    case TOUCH_BUTTON_HELD:
        AdjustorHeld(adjustor, pokedexCrySubData, pokedexCrySubPageData);
        break;
    case TOUCH_BUTTON_RELEASED:
        AdjustorRelease(adjustor, pokedexCrySubData, pokedexCrySubPageData);
        break;
    case TOUCH_BUTTON_HELD_OUT_OF_BOUNDS:
        AdjustorOOB(adjustor, pokedexCrySubData, pokedexCrySubPageData);
        break;
    default:
        break;
    }
}

static void ButtonTouchActions(u32 button, enum TouchScreenButtonState touchScreenButtonState, void *data)
{
    Context *context = data;
    PokedexCrySubData *pokedexCrySubData = context->applicationData;
    PokedexCrySubPageData *pokedexCrySubPageData = context->pageData;
    enum Species species = PokedexSort_CurrentSpecies(pokedexCrySubData->sortData);

    pokedexCrySubPageData->buttonState[button] = touchScreenButtonState;

    switch (touchScreenButtonState) {
    case TOUCH_BUTTON_PRESSED:
        ov21_021E33B4(pokedexCrySubData->screenMan, TRUE);
        pokedexCrySubPageData->buttonHeld = FALSE;
        break;
    case TOUCH_BUTTON_HELD:
        if (pokedexCrySubPageData->buttonHeld == FALSE) {
            pokedexCrySubPageData->buttonHeld = TRUE;

            switch (button) {
            case CRYSUB_PLAY:
                if (pokedexCrySubPageData->loop == TRUE) {
                    if (pokedexCrySubPageData->cryPlaying == FALSE) {
                        PlaySpeciesCry(pokedexCrySubPageData, pokedexCrySubData, species);
                    } else {
                        StopSpeciesCry(pokedexCrySubPageData);
                    }
                } else {
                    if (pokedexCrySubPageData->cryPlaying == TRUE) {
                        Sound_StopPokemonCries(0);
                    }

                    PlaySpeciesCry(pokedexCrySubPageData, pokedexCrySubData, species);
                }
                break;
            case CRYSUB_LOOP:
                pokedexCrySubPageData->playButtonState = PLAY_HOLD;
                SetLoop(pokedexCrySubPageData, pokedexCrySubPageData->loop ^ TRUE);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                break;
            default:
                break;
            }
        }
        break;
    case TOUCH_BUTTON_RELEASED:
        break;
    case TOUCH_BUTTON_HELD_OUT_OF_BOUNDS:
        break;
    default:
        break;
    }
}

static void AdjustorPress(enum CrySubAdjustors adjustor, PokedexCrySubData *pokedexCrySubData, PokedexCrySubPageData *pokedexCrySubPageData)
{
    switch (adjustor) {
    case CRYSUB_SWITCH:
        if (pokedexCrySubPageData->cryPlaying == TRUE) {
            StopSpeciesCry(pokedexCrySubPageData);
        }

        pokedexCrySubPageData->switchX = gSystem.touchX;
        pokedexCrySubPageData->switchTouched = TRUE;
        break;
    case CRYSUB_DIAL:
        if (pokedexCrySubPageData->cryPlaying == TRUE) {
            StopSpeciesCry(pokedexCrySubPageData);
        }

        pokedexCrySubPageData->dialTouched = TRUE;
        pokedexCrySubPageData->dialX = gSystem.touchX;
        pokedexCrySubPageData->dialY = gSystem.touchY;
        break;
    case CRYSUB_POKEBALL:
        if (pokedexCrySubPageData->cryPlaying) {
            pokedexCrySubPageData->pokeballHeld = TouchScreen_LocationHeld(&pokedexCrySubPageData->buttonHitTables[CRYSUB_PLAY]);
            pokedexCrySubPageData->pokeballHeld |= TouchScreen_LocationHeld(&pokedexCrySubPageData->buttonHitTables[CRYSUB_LOOP]);
        } else {
            pokedexCrySubPageData->pokeballHeld = TRUE;
        }
        break;
    default:
        break;
    }
}

static void AdjustorHeld(enum CrySubAdjustors adjustor, PokedexCrySubData *pokedexCrySubData, PokedexCrySubPageData *pokedexCrySubPageData)
{
    switch (adjustor) {
    case CRYSUB_SWITCH:
        if (pokedexCrySubPageData->switchTouched == TRUE) {
            int deltaX = gSystem.touchX - pokedexCrySubPageData->switchX;

            if (pokedexCrySubPageData->switchMode == SWITCH_CHORUS) {
                if (SWITCH_THRESHOLD <= deltaX) {
                    pokedexCrySubPageData->switchMode = SWITCH_PAN;
                    pokedexCrySubPageData->switchX = gSystem.touchX;
                    Sound_PlayEffect(SEQ_SE_DP_KATI);
                }
            } else {
                if (-SWITCH_THRESHOLD >= deltaX) {
                    pokedexCrySubPageData->switchMode = SWITCH_CHORUS;
                    pokedexCrySubPageData->switchX = gSystem.touchX;
                    Sound_PlayEffect(SEQ_SE_DP_KATI);
                }
            }
        }
        break;
    case CRYSUB_DIAL:
        if (pokedexCrySubPageData->dialTouched == TRUE) {
            UpdateDialPosition(pokedexCrySubPageData);
            UpdateDialMagnitude(pokedexCrySubPageData);
            UpdateReverbFilter(pokedexCrySubPageData);

            pokedexCrySubPageData->dialX = gSystem.touchX;
            pokedexCrySubPageData->dialY = gSystem.touchY;
        }
        break;
    case CRYSUB_POKEBALL:
        if (pokedexCrySubPageData->pokeballHeld == FALSE) {
            if (pokedexCrySubPageData->cryPlaying == FALSE) {
                pokedexCrySubPageData->pokeballHeld = TRUE;
                SetPokeballActiveReset(pokedexCrySubPageData, FALSE);
            } else {
                if (gSystem.touchY < (POKEBALL_Y - POKEBALL_Y_OFFSET) + 16) {
                    if (pokedexCrySubPageData->switchMode == SWITCH_CHORUS) {
                        UpdateEchoVolume(pokedexCrySubPageData, gSystem.touchX);
                    } else {
                        UpdatePan(pokedexCrySubPageData, gSystem.touchX);
                    }

                    pokedexCrySubPageData->pitch = 0;
                    SetPokeballActiveReset(pokedexCrySubPageData, TRUE);
                } else {
                    SetPokeballActive(pokedexCrySubPageData, FALSE);
                    pokedexCrySubPageData->pitch = (-(64 * 12) * 2);
                }
            }

            SetCrySoundValues(pokedexCrySubPageData);
        }
        break;
    default:
        break;
    }
}

static void AdjustorRelease(enum CrySubAdjustors adjustor, PokedexCrySubData *pokedexCrySubData, PokedexCrySubPageData *pokedexCrySubPageData)
{
    switch (adjustor) {
    case CRYSUB_SWITCH:
        pokedexCrySubPageData->switchTouched = FALSE;
        break;
    case CRYSUB_DIAL:
        pokedexCrySubPageData->dialPosition = pokedexCrySubPageData->dialMagnitude * DIAL_INCREMENT;
        pokedexCrySubPageData->dialTouched = FALSE;
        break;
    case CRYSUB_POKEBALL:
        if (pokedexCrySubPageData->pokeballHeld == FALSE) {
            SetPokeballActiveReset(pokedexCrySubPageData, FALSE);
            SetCrySoundValues(pokedexCrySubPageData);
        }
        break;
    default:
        break;
    }
}

static void AdjustorOOB(enum CrySubAdjustors adjustor, PokedexCrySubData *pokedexCrySubData, PokedexCrySubPageData *pokedexCrySubPageData)
{
    switch (adjustor) {
    case CRYSUB_SWITCH:
        pokedexCrySubPageData->switchTouched = FALSE;
        break;
    case CRYSUB_DIAL:
        pokedexCrySubPageData->dialPosition = pokedexCrySubPageData->dialMagnitude * DIAL_INCREMENT;
        pokedexCrySubPageData->dialTouched = FALSE;
        break;
    case CRYSUB_POKEBALL:
        if (pokedexCrySubPageData->pokeballHeld == FALSE) {
            SetPokeballActiveReset(pokedexCrySubPageData, FALSE);
            SetCrySoundValues(pokedexCrySubPageData);
        }
        break;
    default:
        break;
    }
}

static void LoadCrySubGraphics(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID)
{
    LoadBackgroundTileMaps(graphicData, heapID);
    LoadCryDialSprite(pokedexCrySubGraphics, graphicData, heapID);
    AnimateSprites(pokedexCrySubGraphics, graphicData, heapID);
    LoadSwitchText(pokedexCrySubGraphics, graphicData, heapID);
    LoadCryPalette(pokedexCrySubGraphics, graphicData, heapID);
}

static void FreeGraphics(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID)
{
    FreeSprites(pokedexCrySubGraphics);
    FreeSwitchLabel(pokedexCrySubGraphics, graphicData);
    FreeDialSpriteResource(pokedexCrySubGraphics, graphicData);
    FreeBackgroundTileMaps(graphicData);
    FreeCryPalette(pokedexCrySubGraphics);
}

static void LoadBackgroundTileMaps(PokedexGraphicData **graphicData, enum HeapID heapID)
{
    NNSG2dScreenData *screenData;

    PokedexGraphics_LoadGraphicNarcCharacterData(*graphicData, entry_sub_NCGR_lz, (*graphicData)->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, heapID);
    void *tileMap = PokedexGraphics_GetGraphicNarcTilemapData(*graphicData, cry_sub_NSCR_lz, TRUE, &screenData, heapID);

    Bg_LoadToTilemapRect((*graphicData)->bgConfig, BG_LAYER_SUB_2, screenData->rawData, 0, 0, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tileMap);
    Bg_ScheduleTilemapTransfer((*graphicData)->bgConfig, BG_LAYER_SUB_2);

    PokedexGraphics_LoadGraphicNarcCharacterData(*graphicData, cry_wheel_NCGR_lz, (*graphicData)->bgConfig, BG_LAYER_SUB_3, 0, 0, TRUE, heapID);
    tileMap = PokedexGraphics_GetGraphicNarcTilemapData(*graphicData, cry_wheel_NSCR_lz, TRUE, &screenData, heapID);

    Bg_LoadToTilemapRect((*graphicData)->bgConfig, BG_LAYER_SUB_3, screenData->rawData, 0, 0, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tileMap);
    Bg_ScheduleTilemapTransfer((*graphicData)->bgConfig, BG_LAYER_SUB_3);
    Bg_SetOffset((*graphicData)->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, POKEBALL_X_OFFSET);
    Bg_SetOffset((*graphicData)->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, POKEBALL_Y_OFFSET);
    Bg_SetPriority(BG_LAYER_SUB_3, 3);
}

static void FreeBackgroundTileMaps(PokedexGraphicData **graphicData)
{
    Bg_ClearTilemap((*graphicData)->bgConfig, BG_LAYER_SUB_2);
    Bg_ClearTilemap((*graphicData)->bgConfig, BG_LAYER_SUB_3);
    Bg_SetPriority(BG_LAYER_SUB_3, 1);
}

static void LoadCryDialSprite(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphics, enum HeapID heapID)
{
    PokedexGraphicData *graphicsData = *graphics;
    NARC *narc = PokedexGraphics_GetNARC(*graphics);

    pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(graphicsData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, cry_dials_NCGR_lz, TRUE, cry_dials_NCGR_lz + CRYSUB_GRAPHIC_ID, NNS_G2D_VRAM_TYPE_2DSUB, heapID);

    SpriteTransfer_RequestCharAtEnd(pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_CHAR]);

    pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(graphicsData->spriteResourceCollection[1], narc, cry_dials_NCLR, FALSE, cry_dials_NCLR + CRYSUB_GRAPHIC_ID, NNS_G2D_VRAM_TYPE_2DSUB, 3, heapID);

    SpriteTransfer_RequestPlttFreeSpace(pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_PLTT]);

    pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(graphicsData->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, cry_dials_cell_NCER_lz, TRUE, cry_dials_cell_NCER_lz + CRYSUB_GRAPHIC_ID, SPRITE_RESOURCE_CELL, heapID);
    pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(graphicsData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, cry_dials_anim_NANR_lz, TRUE, cry_dials_anim_NANR_lz + CRYSUB_GRAPHIC_ID, SPRITE_RESOURCE_ANIM, heapID);
}

static void FreeDialSpriteResource(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphics)
{
    PokedexGraphicData *graphicData = *graphics;

    SpriteTransfer_ResetCharTransfer(pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], pokedexCrySubGraphics->dialSpriteResource[SPRITE_RESOURCE_ANIM]);
}

static void AnimateSprites(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphics, enum HeapID heapID)
{
    SpriteResourcesHeader spriteResourcesHeader;
    SpriteListTemplate spriteListTemplate;
    PokedexGraphicData *graphicData = *graphics;

    SpriteResourcesHeader_Init(&spriteResourcesHeader, cry_dials_NCGR_lz + CRYSUB_GRAPHIC_ID, cry_dials_NCLR + CRYSUB_GRAPHIC_ID, cry_dials_cell_NCER_lz + CRYSUB_GRAPHIC_ID, cry_dials_anim_NANR_lz + CRYSUB_GRAPHIC_ID, 0xffffffff, 0xffffffff, FALSE, 2, graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    spriteListTemplate.list = graphicData->spriteList;
    spriteListTemplate.resourceData = &spriteResourcesHeader;
    spriteListTemplate.priority = 31;
    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    spriteListTemplate.heapID = heapID;

    spriteListTemplate.position.x = SWITCH_X << FX32_SHIFT;
    spriteListTemplate.position.y = SWITCH_Y << FX32_SHIFT;
    spriteListTemplate.position.y += (HW_LCD_HEIGHT << FX32_SHIFT);

    pokedexCrySubGraphics->switchSprite = SpriteList_Add(&spriteListTemplate);

    Sprite_SetAnim(pokedexCrySubGraphics->switchSprite, SWITCH_ANIM_CHORUS);
    Sprite_SetAnimateFlag(pokedexCrySubGraphics->switchSprite, TRUE);
    Sprite_SetAnimSpeed(pokedexCrySubGraphics->switchSprite, (FX32_ONE * 2));
    Sprite_SetAnimFrame(pokedexCrySubGraphics->switchSprite, SWITCH_MAX_FRAME);

    spriteListTemplate.position.x = DIAL_X << FX32_SHIFT;
    spriteListTemplate.position.y = DIAL_Y << FX32_SHIFT;
    spriteListTemplate.position.y += (HW_LCD_HEIGHT << FX32_SHIFT);

    pokedexCrySubGraphics->dialSprite = SpriteList_Add(&spriteListTemplate);

    Sprite_SetAnim(pokedexCrySubGraphics->dialSprite, 1);
    Sprite_SetAffineOverwriteMode(pokedexCrySubGraphics->dialSprite, AFFINE_OVERWRITE_MODE_NORMAL);

    spriteListTemplate.position.x = PLAY_X << FX32_SHIFT;
    spriteListTemplate.position.y = PLAY_Y << FX32_SHIFT;
    spriteListTemplate.position.y += (HW_LCD_HEIGHT << FX32_SHIFT);

    pokedexCrySubGraphics->playButtonSprite = SpriteList_Add(&spriteListTemplate);

    Sprite_SetAnim(pokedexCrySubGraphics->playButtonSprite, PLAY_ANIM_UNPRESSED);
    Sprite_SetAnimateFlag(pokedexCrySubGraphics->playButtonSprite, TRUE);
    Sprite_SetAnimSpeed(pokedexCrySubGraphics->playButtonSprite, (FX32_ONE * 2));
    Sprite_SetAnimFrame(pokedexCrySubGraphics->playButtonSprite, PLAY_MAX_FRAME);

    pokedexCrySubGraphics->playButtonData.unpressedAnim = PLAY_ANIM_UNPRESSED;
    pokedexCrySubGraphics->playButtonData.pressedAnim = PLAY_ANIM_PRESSED;
    pokedexCrySubGraphics->playButtonData.currentAnim = PLAY_ANIM_UNPRESSED;
    pokedexCrySubGraphics->playButtonData.maxFrame = PLAY_MAX_FRAME;
    pokedexCrySubGraphics->playButtonData.frame = 2;

    spriteListTemplate.position.x = LOOP_X << FX32_SHIFT;
    spriteListTemplate.position.y = LOOP_Y << FX32_SHIFT;
    spriteListTemplate.position.y += (HW_LCD_HEIGHT << FX32_SHIFT);

    pokedexCrySubGraphics->loopButtonSprite = SpriteList_Add(&spriteListTemplate);

    Sprite_SetAnim(pokedexCrySubGraphics->loopButtonSprite, LOOP_ANIM_UNPRESSED);
    Sprite_SetAnimateFlag(pokedexCrySubGraphics->loopButtonSprite, TRUE);
    Sprite_SetAnimSpeed(pokedexCrySubGraphics->loopButtonSprite, (FX32_ONE * 2));
    Sprite_SetAnimFrame(pokedexCrySubGraphics->loopButtonSprite, LOOP_MAX_FRAME);

    pokedexCrySubGraphics->loopButtonData.unpressedAnim = LOOP_ANIM_UNPRESSED;
    pokedexCrySubGraphics->loopButtonData.pressedAnim = LOOP_ANIM_PRESSED;
    pokedexCrySubGraphics->loopButtonData.currentAnim = LOOP_ANIM_UNPRESSED;
    pokedexCrySubGraphics->loopButtonData.maxFrame = LOOP_MAX_FRAME;
    pokedexCrySubGraphics->loopButtonData.frame = 2;
}

static void FreeSprites(PokedexCrySubGraphics *pokedexCrySubGraphics)
{
    Sprite_Delete(pokedexCrySubGraphics->dialSprite);
    Sprite_Delete(pokedexCrySubGraphics->switchSprite);
    Sprite_Delete(pokedexCrySubGraphics->playButtonSprite);
    Sprite_Delete(pokedexCrySubGraphics->loopButtonSprite);
}

static void LoadSwitchText(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphics, enum HeapID heapID)
{
    PokedexDisplayBox displayBox;
    PokedexGraphicData *graphicData = *graphics;

    SpriteResource *palette = SpriteResourceCollection_Find(graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], cry_dials_NCLR + CRYSUB_GRAPHIC_ID);

    displayBox.textMan = graphicData->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(palette, NULL);
    displayBox.sprite = NULL;
    displayBox.y = SWITCH_LABEL_Y + HW_LCD_HEIGHT;
    displayBox.spriteResourcePriority = 2;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    displayBox.heapID = heapID;

    int paletteOffset = PlttTransfer_GetPlttOffset(displayBox.paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);
    Window *window = PokedexTextManager_NewWindow(graphicData->textMan, SWITCH_LABEL_WIDTH, SWITCH_LABEL_HEIGHT);

    u32 strWidth = PokedexTextManager_DisplayMessage(graphicData->textMan, window, TEXT_BANK_POKEDEX, pl_msg_pokedex_chorus, 0, 0);
    displayBox.x = SWITCH_X - strWidth / 2;
    displayBox.window = window;

    pokedexCrySubGraphics->switchLabel[SWITCH_CHORUS] = PokedexTextManager_NextTextData(&displayBox);

    sub_02012A60(pokedexCrySubGraphics->switchLabel[SWITCH_CHORUS]->fontOAM, paletteOffset);
    PokedexTextManager_FreeWindow(window);

    window = PokedexTextManager_NewWindow(graphicData->textMan, SWITCH_LABEL_WIDTH, SWITCH_LABEL_HEIGHT);
    strWidth = PokedexTextManager_DisplayMessage(graphicData->textMan, window, TEXT_BANK_POKEDEX, pl_msg_pokedex_pan, 0, 0);

    displayBox.x = SWITCH_X - strWidth / 2;
    displayBox.window = window;

    pokedexCrySubGraphics->switchLabel[SWITCH_PAN] = PokedexTextManager_NextTextData(&displayBox);

    sub_02012A60(pokedexCrySubGraphics->switchLabel[SWITCH_PAN]->fontOAM, paletteOffset);
    PokedexTextManager_FreeWindow(window);
    sub_020129D0(pokedexCrySubGraphics->switchLabel[SWITCH_PAN]->fontOAM, FALSE);
}

static void FreeSwitchLabel(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData)
{
    for (int switchMode = 0; switchMode < MAX_SWITCHMODE; switchMode++) {
        PokedexTextManager_FreeTextData(pokedexCrySubGraphics->switchLabel[switchMode]);
    }
}

static void UpdateSwitchGraphic(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData)
{
    if (pokedexCrySubGraphics->switchMode != pokedexCrySubPageData->switchMode) {
        int frameIdx = Sprite_GetAnimFrame(pokedexCrySubGraphics->switchSprite);

        if (pokedexCrySubPageData->switchMode == SWITCH_CHORUS) {
            Sprite_SetAnim(pokedexCrySubGraphics->switchSprite, SWITCH_ANIM_CHORUS);
            Sprite_SetAnimFrame(pokedexCrySubGraphics->switchSprite, SWITCH_MAX_FRAME - frameIdx);
        } else {
            Sprite_SetAnim(pokedexCrySubGraphics->switchSprite, SWITCH_ANIM_PAN);
            Sprite_SetAnimFrame(pokedexCrySubGraphics->switchSprite, SWITCH_MAX_FRAME - frameIdx);
        }

        pokedexCrySubGraphics->switchMode = pokedexCrySubPageData->switchMode;
    }
}

static void UpdatePlayButtonGraphics(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData)
{
    int buttonState = pokedexCrySubPageData->buttonState[CRYSUB_PLAY];

    if (pokedexCrySubPageData->loop == FALSE) {
        UpdateButtonStateGraphicOOB(pokedexCrySubGraphics->playButtonSprite, &pokedexCrySubGraphics->playButtonData, FALSE, buttonState);
    } else {
        UpdateButtonStateGraphic(pokedexCrySubGraphics->playButtonSprite, &pokedexCrySubGraphics->playButtonData, pokedexCrySubPageData->cryPlaying, buttonState);
    }
}

static void UpdateLoopButtonGraphics(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData)
{
    int buttonState = pokedexCrySubPageData->buttonState[CRYSUB_LOOP];

    UpdateButtonStateGraphic(pokedexCrySubGraphics->loopButtonSprite, &pokedexCrySubGraphics->loopButtonData, pokedexCrySubPageData->loop, buttonState);
}

static void UpdateDialPosition(PokedexCrySubPageData *pokedexCrySubPageData)
{
    int x0 = pokedexCrySubPageData->dialX - DIAL_X;
    int y0 = pokedexCrySubPageData->dialY - DIAL_Y;
    int x1 = gSystem.touchX - DIAL_X;
    int y1 = gSystem.touchY - DIAL_Y;
    int magnitude = ApproximateArcLength(x0, y0, x1, y1, 0);

    if (MATH_IAbs(magnitude) < 1) {
        return;
    }

    pokedexCrySubPageData->dialPosition += magnitude;

    if (pokedexCrySubPageData->dialPosition < 0) {
        pokedexCrySubPageData->dialPosition += DIAL_MAX_POS;
    } else {
        pokedexCrySubPageData->dialPosition %= DIAL_MAX_POS;
    }

    if ((pokedexCrySubPageData->dialPosition >= DIAL_THRESHOLD) && (pokedexCrySubPageData->dialPosition <= (DIAL_MAX_POS - DIAL_THRESHOLD))) {
        if (magnitude > 0) {
            pokedexCrySubPageData->dialPosition = DIAL_THRESHOLD;
        } else {
            pokedexCrySubPageData->dialPosition = (DIAL_MAX_POS - DIAL_THRESHOLD);
        }
    }
}

static void UpdateDialMagnitude(PokedexCrySubPageData *pokedexCrySubPageData)
{
    if ((pokedexCrySubPageData->dialPosition / DIAL_INCREMENT) != pokedexCrySubPageData->dialMagnitude) {
        Sound_PlayEffect(SEQ_SE_DP_KATI);
        pokedexCrySubPageData->dialMagnitude = pokedexCrySubPageData->dialPosition / DIAL_INCREMENT;
    }
}

static void UpdateReverbFilter(PokedexCrySubPageData *pokedexCrySubPageData)
{
    int dialMagnitude;

    if (pokedexCrySubPageData->dialPosition == 0) {
        StopReverbFilter(pokedexCrySubPageData);
        return;
    }

    if ((pokedexCrySubPageData->dialPosition > 0) && (pokedexCrySubPageData->dialPosition <= (DIAL_MAX_POS / 2))) {
        if (pokedexCrySubPageData->dialMode == DIAL_REVERB) {
            Sound_StopReverb(0);
        }

        if (pokedexCrySubPageData->dialMode != DIAL_FILTER) {
            Sound_StartFilter();
            pokedexCrySubPageData->dialMode = DIAL_FILTER;
        }

        dialMagnitude = pokedexCrySubPageData->dialMagnitude;

        if (dialMagnitude == 0) {
            dialMagnitude = 1;
        }

        Sound_SetFilterSize(dialMagnitude);
    } else {
        if (pokedexCrySubPageData->dialMode == DIAL_FILTER) {
            Sound_StopFilter();
        }

        if (pokedexCrySubPageData->dialMode != DIAL_REVERB) {
            Sound_StartReverb(0);
            pokedexCrySubPageData->dialMode = DIAL_REVERB;
        }

        if (pokedexCrySubPageData->dialPosition == 0) {
            pokedexCrySubPageData->dialPosition = DIAL_MAX_POS;
        }

        dialMagnitude = (DIAL_MAX_POS / DIAL_INCREMENT) - pokedexCrySubPageData->dialMagnitude;
        dialMagnitude = dialMagnitude * DIAL_ACCURACY;

        if (dialMagnitude > 0) {
            dialMagnitude--;
        }

        Sound_SetReverbVolume(dialMagnitude, 0);
    }
}

static void RotateDial(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData)
{
    Sprite_SetAffineZRotation(pokedexCrySubGraphics->dialSprite, CalcRadialAngle(14, pokedexCrySubPageData->dialPosition));
}

static void UpdateWheelPosition(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, const PokedexCrySubPageData *pokedexCrySubPageData)
{
    int numCriesPlayed = Sound_GetNumberOfPlayedCrySamples(1, pokedexCrySubPageData->cryData, pokedexCrySubPageData->pitch);

    if (numCriesPlayed == 0) {
        pokedexCrySubGraphics->numCriesPlayed = 0;
    }

    pokedexCrySubGraphics->wheelPosition += (numCriesPlayed - pokedexCrySubGraphics->numCriesPlayed) * -16;
    pokedexCrySubGraphics->wheelPosition &= 0xffff;

    Bg_ScheduleAffineRotation((*graphicData)->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_ROTATION, pokedexCrySubGraphics->wheelPosition / 182);
    Bg_ScheduleAffineRotationCenter((*graphicData)->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_X_CENTER, POKEBALL_X);
    Bg_ScheduleAffineRotationCenter((*graphicData)->bgConfig, BG_LAYER_SUB_3, BG_AFFINE_UPDATE_SET_Y_CENTER, POKEBALL_Y);

    pokedexCrySubGraphics->numCriesPlayed = numCriesPlayed;
}

static void UpdateEchoVolume(PokedexCrySubPageData *pokedexCrySubPageData, int touchX)
{
    int x = touchX - ((POKEBALL_X - POKEBALL_X_OFFSET) - POKEBALL_R);
    fx32 posX = FX_Mul(127 << FX32_SHIFT, x << FX32_SHIFT);
    posX = FX_Div(posX, (POKEBALL_R * 2) << FX32_SHIFT);
    int echoVolume = posX >> FX32_SHIFT;

    pokedexCrySubPageData->echoVolume = echoVolume;
}

static void UpdatePan(PokedexCrySubPageData *pokedexCrySubPageData, int touchX)
{
    int x = touchX - (POKEBALL_X - POKEBALL_X_OFFSET);
    fx32 posX = FX_Mul(127 << FX32_SHIFT, x << FX32_SHIFT);
    posX = FX_Div(posX, POKEBALL_R << FX32_SHIFT);
    int pan = posX >> FX32_SHIFT;

    pokedexCrySubPageData->pan = pan;
}

static void UpdateSwitchLabel(PokedexCrySubGraphics *pokedexCrySubGraphics)
{
    if (pokedexCrySubGraphics->switchMode == SWITCH_CHORUS) {
        sub_020129D0(pokedexCrySubGraphics->switchLabel[SWITCH_CHORUS]->fontOAM, TRUE);
        sub_020129D0(pokedexCrySubGraphics->switchLabel[SWITCH_PAN]->fontOAM, FALSE);
    } else {
        sub_020129D0(pokedexCrySubGraphics->switchLabel[SWITCH_CHORUS]->fontOAM, FALSE);
        sub_020129D0(pokedexCrySubGraphics->switchLabel[SWITCH_PAN]->fontOAM, TRUE);
    }
}

static void UpdateButtonStateGraphic(Sprite *buttonSprite, CrySubButtonData *buttonData, BOOL buttonActive, enum TouchScreenButtonState buttonState)
{
    if (buttonState == TOUCH_BUTTON_HELD_OUT_OF_BOUNDS) {
        buttonState = TOUCH_BUTTON_RELEASED;
    }

    int frameIdx = Sprite_GetAnimFrame(buttonSprite);

    if (buttonData->buttonActive != buttonActive) {
        UpdateButtonGraphic(buttonSprite, buttonData, buttonActive);
        buttonData->buttonActive = buttonActive;
    }

    switch (buttonState) {
    case TOUCH_BUTTON_PRESSED:
        break;
    case TOUCH_BUTTON_HELD:
        if (frameIdx > buttonData->frame) {
            Sprite_SetAnimFrame(buttonSprite, buttonData->frame);
            Sprite_SetAnimSpeed(buttonSprite, 0);
        }
        break;
    case TOUCH_BUTTON_RELEASED:
    case BUTTON_RESET:
        UpdateButtonGraphic(buttonSprite, buttonData, buttonActive);
        Sprite_SetAnimSpeed(buttonSprite, (FX32_ONE * 2));
        break;
    default:
        break;
    }
}

static void UpdateButtonStateGraphicOOB(Sprite *buttonSprite, CrySubButtonData *buttonData, BOOL buttonActive, enum TouchScreenButtonState buttonState)
{
    if (buttonState == TOUCH_BUTTON_RELEASED) {
        buttonState = TOUCH_BUTTON_HELD_OUT_OF_BOUNDS;
    }

    int frameIdx = Sprite_GetAnimFrame(buttonSprite);

    if (buttonData->buttonActive != buttonActive) {
        UpdateButtonGraphic(buttonSprite, buttonData, buttonActive);
        buttonData->buttonActive = buttonActive;
    }

    switch (buttonState) {
    case TOUCH_BUTTON_PRESSED:
        if (buttonActive == TRUE) {
            UpdateButtonGraphic(buttonSprite, buttonData, FALSE);
        } else {
            UpdateButtonGraphic(buttonSprite, buttonData, TRUE);
        }

        Sprite_SetAnimFrame(buttonSprite, buttonData->frame - 1);
        break;
    case TOUCH_BUTTON_HELD:
        Sprite_SetAnimFrame(buttonSprite, buttonData->frame);
        Sprite_SetAnimSpeed(buttonSprite, 0);
        break;
    case TOUCH_BUTTON_HELD_OUT_OF_BOUNDS:
    case BUTTON_RESET:
        UpdateButtonGraphic(buttonSprite, buttonData, buttonActive);
        Sprite_SetAnimSpeed(buttonSprite, (FX32_ONE * 2));
        break;
    default:
        break;
    }
}

static void UpdateButtonGraphic(Sprite *buttonSprite, CrySubButtonData *buttonData, BOOL buttonActive)
{
    int frameIdx = Sprite_GetAnimFrame(buttonSprite);

    if (buttonActive == TRUE) {
        if (buttonData->currentAnim == buttonData->unpressedAnim) {
            Sprite_SetAnim(buttonSprite, buttonData->pressedAnim);
            buttonData->currentAnim = buttonData->pressedAnim;
            Sprite_SetAnimFrame(buttonSprite, buttonData->maxFrame - frameIdx);
        }
    } else {
        if (buttonData->currentAnim == buttonData->pressedAnim) {
            Sprite_SetAnim(buttonSprite, buttonData->unpressedAnim);
            buttonData->currentAnim = buttonData->unpressedAnim;
            Sprite_SetAnimFrame(buttonSprite, buttonData->maxFrame - frameIdx);
        }
    }
}

static void PlaySpeciesCry(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData, enum Species species)
{
    pokedexCrySubPageData->cryPlaying = TRUE;

    Sound_PlayPokemonCryEx(POKECRY_POKEDEX_CHORUS, species, 0, 127, 0x1ff, 0); // invalid heapID?
    SetCrySoundValues(pokedexCrySubPageData);
}

static void StopSpeciesCry(PokedexCrySubPageData *pokedexCrySubPageData)
{
    Sound_StopPokemonCries(0);
    pokedexCrySubPageData->cryPlaying = FALSE;
}

static void StopReverbFilter(PokedexCrySubPageData *pokedexCrySubPageData)
{
    if (pokedexCrySubPageData->dialMode == DIAL_REVERB) {
        Sound_StopReverb(0);
    }

    if (pokedexCrySubPageData->dialMode == DIAL_FILTER) {
        Sound_StopFilter();
    }

    pokedexCrySubPageData->dialMode = DIAL_NONE;
}

static void LoopCry(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData)
{
    enum Species species = PokedexSort_CurrentSpecies(pokedexCrySubData->sortData);

    if (Sound_IsPokemonCryPlaying() == FALSE) {
        pokedexCrySubPageData->cryCooldown--;

        if (pokedexCrySubPageData->cryCooldown == 0) {
            PlaySpeciesCry(pokedexCrySubPageData, pokedexCrySubData, species);
            pokedexCrySubPageData->cryCooldown = CRY_COOLDOWN;
        }
    }
}

static void SetLoop(PokedexCrySubPageData *pokedexCrySubPageData, BOOL loop)
{
    pokedexCrySubPageData->loop = loop;
    pokedexCrySubPageData->cryCooldown = CRY_COOLDOWN;
}

static void LoadCryPalette(PokedexCrySubGraphics *pokedexCrySubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID)
{
    pokedexCrySubGraphics->backgroundPalette = PokedexGraphics_GetGraphicNarcPaletteData(*graphicData, cry_sub_NCLR, &pokedexCrySubGraphics->paletteData, heapID);
}

static void FreeCryPalette(PokedexCrySubGraphics *pokedexCrySubGraphics)
{
    Heap_Free(pokedexCrySubGraphics->backgroundPalette);
    pokedexCrySubGraphics->backgroundPalette = NULL;
    pokedexCrySubGraphics->paletteData = NULL;
}

static void PokeballPaletteActive(PokedexCrySubGraphics *pokedexCrySubGraphics)
{
    VramTransfer_Request(NNS_GFD_DST_2D_BG_PLTT_SUB, 7 * 32, pokedexCrySubGraphics->paletteData->pRawData, 32);
}

static void PokeballPaletteDefault(PokedexCrySubGraphics *pokedexCrySubGraphics)
{
    VramTransfer_Request(NNS_GFD_DST_2D_BG_PLTT_SUB, 7 * 32, &((u8 *)(pokedexCrySubGraphics->paletteData->pRawData))[32], 32);
}

static void SetPokeballActiveReset(PokedexCrySubPageData *pokedexCrySubPageData, BOOL pokeballActive)
{
    SetPokeballActive(pokedexCrySubPageData, pokeballActive);

    if (pokeballActive == FALSE) {
        InitCrySoundValues(pokedexCrySubPageData);
    }
}

static void SetPokeballActive(PokedexCrySubPageData *pokedexCrySubPageData, BOOL pokeballActive)
{
    pokedexCrySubPageData->pokeballActive = pokeballActive;
}

static void InitCrySoundValues(PokedexCrySubPageData *pokedexCrySubPageData)
{
    pokedexCrySubPageData->pitch = 0;
    pokedexCrySubPageData->pan = 0;
    pokedexCrySubPageData->echoVolume = 0;
}

static void SetCrySoundValues(PokedexCrySubPageData *pokedexCrySubPageData)
{
    if (pokedexCrySubPageData->cryPlaying) {
        SetPitch(pokedexCrySubPageData->pitch);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pokedexCrySubPageData->pan);
        SetEchoVolume(pokedexCrySubPageData->echoVolume);
    }
}

static void SetEchoVolume(int volume)
{
    Sound_FadeVolumeForHandle(SOUND_HANDLE_TYPE_ECHO, volume, 0);
}

static void UpdatePokeballPalette(PokedexCrySubGraphics *pokedexCrySubGraphics, const PokedexCrySubPageData *pokedexCrySubPageData)
{
    if (pokedexCrySubPageData->pokeballActive != pokedexCrySubGraphics->pokeballActive) {
        if (pokedexCrySubPageData->pokeballActive == TRUE) {
            PokeballPaletteActive(pokedexCrySubGraphics);
        } else {
            PokeballPaletteDefault(pokedexCrySubGraphics);
        }

        pokedexCrySubGraphics->pokeballActive = pokedexCrySubPageData->pokeballActive;
    }
}

static void AdvancePlayButton(PokedexCrySubPageData *pokedexCrySubPageData, PokedexCrySubData *pokedexCrySubData)
{
    enum Species species = PokedexSort_CurrentSpecies(pokedexCrySubData->sortData);

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        pokedexCrySubPageData->playButtonState = PLAY_APRESS;

        pokedexCrySubPageData->buttonState[CRYSUB_PLAY] = TOUCH_BUTTON_PRESSED;

        if (pokedexCrySubPageData->loop == FALSE) {
            if (pokedexCrySubPageData->cryPlaying == TRUE) {
                Sound_StopPokemonCries(0);
            }

            PlaySpeciesCry(pokedexCrySubPageData, pokedexCrySubData, species);
        } else {
            if (pokedexCrySubPageData->cryPlaying == FALSE) {
                PlaySpeciesCry(pokedexCrySubPageData, pokedexCrySubData, species);
            } else {
                StopSpeciesCry(pokedexCrySubPageData);
            }
        }
    } else if (pokedexCrySubPageData->playButtonState == PLAY_APRESS) {
        pokedexCrySubPageData->playButtonState = PLAY_HOLD;
        pokedexCrySubPageData->buttonState[CRYSUB_PLAY] = TOUCH_BUTTON_HELD;
    } else if (pokedexCrySubPageData->playButtonState == PLAY_HOLD) {
        pokedexCrySubPageData->playButtonState = PLAY_UNPRESSED;
        pokedexCrySubPageData->buttonState[CRYSUB_PLAY] = TOUCH_BUTTON_RELEASED;
    }
}

static void UpdateCursor(PokedexGraphicData **graphics, const PokedexCrySubData *pokedexCrySubData)
{
    PokedexGraphicData *graphicData = *graphics;

    if (ov21_021E33BC(pokedexCrySubData->screenMan) == 1) {
        PokedexGraphics_TransformCursor(graphicData, PLAY_X, PLAY_Y, (PLAY_WIDTH / 2), (PLAY_HEIGHT / 2));
    }
}

static void SetPitch(int pitch)
{
    Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pitch);
    Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_ECHO, SOUND_PLAYBACK_TRACK_ALL, 20 + pitch);
}
