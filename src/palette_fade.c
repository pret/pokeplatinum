#include "palette_fade.h"

#include <string.h>

#include "constants/heap.h"
#include "constants/screen.h"

#include "brightness_controller.h"
#include "enums.h"
#include "hardware_window.h"
#include "heap.h"
#include "palette_fade_funcs.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"

enum ScreenFadeOrder {
    ORDER_SIMULTANEOUS,
    ORDER_MAIN_FIRST,
    ORDER_SUB_FIRST
};

typedef struct EnableHBlankTemplate {
    PaletteFadeHBlanks *hblanks;
    void *data;
    Callback callback;
    enum DSScreen screen;
} EnableHBlankTemplate;

typedef struct DisableHBlankTemplate {
    PaletteFadeHBlanks *hblanks;
    enum DSScreen screen;
} DisableHBlankTemplate;

typedef struct PaletteFadeScreen {
    enum ScreenFadeOrder order;
    BOOL activeMain;
    BOOL activeSub;
    BOOL existsMain;
    BOOL existsSub;
} PaletteFadeScreen;

typedef struct PaletteFadeManager {
    PaletteFadeScreen screen;
    PaletteFade mainScreenFade;
    PaletteFade subScreenFade;
    PaletteFadeHBlanks hblanks;
    HardwareWindowSettings hwSettings;
    u16 active;
    u8 dummy_14E;
    u8 dummy_14F;
    u16 savedColor;
} PaletteFadeManager;

static void ResetPaletteFadeManager(PaletteFadeManager *manager);
static void ZeroPaletteFadeManager(PaletteFadeManager *manager);
static void ClearHBlanks(PaletteFadeHBlanks *hblanks);
static void RunHBlankCallbacks(void *data);
static BOOL TryPaletteFade(PaletteFadeScreen *screen, PaletteFade *fadeMain, PaletteFade *fadeSub);
static void TryPaletteFadeFunc(BOOL *running, PaletteFade *fade);
static BOOL CallPaletteFadeFunc(PaletteFade *fade);
static void SetupPaletteFadeScreen(enum FadeMode mode, PaletteFadeScreen *screen);
static void InitPaletteFade(PaletteFade *fade, enum FadeType type, int steps, int framesPerStep, enum FadeState state, void *data, enum DSScreen screen, HardwareWindowSettings *hwSettings, PaletteFadeHBlanks *hblanks, enum HeapId heapID, u16 color);
static void InitPaletteFadeScreen(PaletteFadeScreen *screen, enum ScreenFadeOrder order, BOOL fadeMain, BOOL fadeSub);
static void EnableScreenHBlank(PaletteFadeHBlanks *hblanks, void *data, Callback callback, enum DSScreen screen);
static void DisableScreenHBlank(PaletteFadeHBlanks *hblanks, enum DSScreen screen);
static u16 GetFadeColor(PaletteFadeManager *manager, u16 color);
static u16 GetSavedFadeColor(const PaletteFadeManager *manager);
static void ResetWindowPaletteFade(PaletteFade *fade);
static void RequestResetScreenMasterBrightness(PaletteFade *fade);

static void Task_EnableScreenHBlank(SysTask *task, void *data);
static void Task_DisableScreenHBlank(SysTask *task, void *data);
static void Task_ResetScreenMasterBrightness(SysTask *task, void *data);

static void DummyHBlankCallback(void *data);

static const PaletteFadeFunc sPaletteFadeFuncs[FADE_TYPE_MAX] = {
    [FADE_TYPE_UNK_00] = sub_0200F85C,
    [FADE_TYPE_UNK_01] = sub_0200F878,
    [FADE_TYPE_UNK_02] = sub_0200F898,
    [FADE_TYPE_UNK_03] = sub_0200F8D4,
    [FADE_TYPE_UNK_04] = sub_0200F90C,
    [FADE_TYPE_UNK_05] = sub_0200F948,
    [FADE_TYPE_UNK_06] = sub_0200F980,
    [FADE_TYPE_UNK_07] = sub_0200F9AC,
    [FADE_TYPE_UNK_08] = sub_0200F9D8,
    [FADE_TYPE_UNK_09] = sub_0200FA14,
    [FADE_TYPE_UNK_10] = sub_0200FA4C,
    [FADE_TYPE_UNK_11] = sub_0200FA88,
    [FADE_TYPE_UNK_12] = sub_0200FAC0,
    [FADE_TYPE_UNK_13] = sub_0200FAEC,
    [FADE_TYPE_UNK_14] = sub_0200FB18,
    [FADE_TYPE_UNK_15] = sub_0200FB4C,
    [FADE_TYPE_UNK_16] = sub_0200FB7C,
    [FADE_TYPE_UNK_17] = sub_0200FBA8,
    [FADE_TYPE_UNK_18] = sub_0200FBD4,
    [FADE_TYPE_UNK_19] = sub_0200FC00,
    [FADE_TYPE_UNK_20] = sub_0200FC2C,
    [FADE_TYPE_UNK_21] = sub_0200FC58,
    [FADE_TYPE_UNK_22] = sub_0200FC84,
    [FADE_TYPE_UNK_23] = sub_0200FCB0,
    [FADE_TYPE_UNK_24] = sub_0200FCDC,
    [FADE_TYPE_UNK_25] = sub_0200FD08,
    [FADE_TYPE_UNK_26] = sub_0200FD34,
    [FADE_TYPE_UNK_27] = sub_0200FD60,
    [FADE_TYPE_UNK_28] = sub_0200FD8C,
    [FADE_TYPE_UNK_29] = sub_0200FDE0,
    [FADE_TYPE_UNK_30] = sub_0200FE30,
    [FADE_TYPE_UNK_31] = sub_0200FE6C,
    [FADE_TYPE_UNK_32] = sub_0200FEA4,
    [FADE_TYPE_UNK_33] = sub_0200FEEC,
    [FADE_TYPE_UNK_34] = sub_0200FF30,
    [FADE_TYPE_UNK_35] = sub_0200FF78,
    [FADE_TYPE_UNK_36] = sub_0200FFBC,
    [FADE_TYPE_UNK_37] = sub_0200FFE8,
    [FADE_TYPE_UNK_38] = sub_02010014,
    [FADE_TYPE_UNK_39] = sub_02010040,
    [FADE_TYPE_UNK_40] = sub_0201006C,
    [FADE_TYPE_UNK_41] = sub_020100A8,
};

static PaletteFadeManager sPaletteFadeManager;

void StartScreenTransition(enum FadeMode mode, enum FadeType typeMain, enum FadeType typeSub, u16 color, int steps, int framesPerStep, enum HeapId heapID)
{
    GF_ASSERT(steps);
    GF_ASSERT(framesPerStep);
    GF_ASSERT(sPaletteFadeManager.active == FALSE);

    PaletteFadeManager *manager = &sPaletteFadeManager;
    ZeroPaletteFadeManager(manager);
    SetupPaletteFadeScreen(mode, &manager->screen);
    ClearHBlanks(&manager->hblanks);

    u16 fadeColor = GetFadeColor(manager, color);
    InitPaletteFade(&manager->mainScreenFade, typeMain, steps, framesPerStep, FADE_IDLE, NULL, DS_SCREEN_MAIN, &manager->hwSettings, &manager->hblanks, heapID, fadeColor);
    InitPaletteFade(&manager->subScreenFade, typeSub, steps, framesPerStep, FADE_IDLE, NULL, DS_SCREEN_SUB, &manager->hwSettings, &manager->hblanks, heapID, fadeColor);

    manager->active = TRUE;
    TryPaletteFadeFunc(&manager->screen.activeMain, &manager->mainScreenFade);
    TryPaletteFadeFunc(&manager->screen.activeSub, &manager->subScreenFade);

    if (manager->screen.existsMain) {
        RequestResetScreenMasterBrightness(&manager->mainScreenFade);
        manager->dummy_14E = 1;
    }

    if (manager->screen.existsSub) {
        RequestResetScreenMasterBrightness(&manager->subScreenFade);
        manager->dummy_14F = 1;
    }
}

void ExecPaletteFade(void)
{
    PaletteFadeManager *manager = &sPaletteFadeManager;
    if (manager->active && TryPaletteFade(&manager->screen, &manager->mainScreenFade, &manager->subScreenFade) == TRUE) {
        ResetPaletteFadeManager(manager);
    }
}

BOOL IsScreenTransitionDone(void)
{
    return !sPaletteFadeManager.active;
}

void FinishPaletteFade(void)
{
    DisableScreenHBlank(&sPaletteFadeManager.hblanks, DS_SCREEN_MAIN);
    DisableScreenHBlank(&sPaletteFadeManager.hblanks, DS_SCREEN_SUB);

    if (sPaletteFadeManager.screen.activeMain) {
        sPaletteFadeManager.mainScreenFade.state = FADE_CLEANUP;
    }

    if (sPaletteFadeManager.screen.activeSub) {
        sPaletteFadeManager.subScreenFade.state = FADE_CLEANUP;
    }

    TryPaletteFadeFunc(&sPaletteFadeManager.screen.activeMain, &sPaletteFadeManager.mainScreenFade);
    TryPaletteFadeFunc(&sPaletteFadeManager.screen.activeSub, &sPaletteFadeManager.subScreenFade);

    sPaletteFadeManager.active = 0;
    sPaletteFadeManager.dummy_14E = 0;
    sPaletteFadeManager.dummy_14F = 0;

    ZeroPaletteFadeManager(&sPaletteFadeManager);
}

void ResetVisibleHardwareWindows(enum DSScreen screen)
{
    SetVisibleHardwareWindows(GX_WNDMASK_NONE, screen);
}

void ResetScreenMasterBrightness(enum DSScreen screen)
{
    SetScreenMasterBrightness(screen, 0);
}

void SetScreenColorBrightness(enum DSScreen screen, u16 color)
{
    if (color == FADE_SAVED) {
        color = sPaletteFadeManager.savedColor;
    }

    int brightness;
    if (color == FADE_WHITE) {
        brightness = BRIGHTNESS_WHITE;
    } else {
        brightness = BRIGHTNESS_BLACK;
    }

    SetScreenMasterBrightness(screen, brightness);
}

void SetColorBrightness(u16 color)
{
    if (color == FADE_SAVED) {
        color = sPaletteFadeManager.savedColor;
    }

    int brightness;
    if (color == FADE_WHITE) {
        brightness = BRIGHTNESS_WHITE;
    } else {
        brightness = BRIGHTNESS_BLACK;
    }

    SetScreenMasterBrightness(DS_SCREEN_MAIN, brightness);
    SetScreenMasterBrightness(DS_SCREEN_SUB, brightness);
    sPaletteFadeManager.savedColor = color;
}

void SetupPaletteFadeRegisters(enum DSScreen screen, u16 color)
{
    if (color == FADE_SAVED) {
        color = sPaletteFadeManager.savedColor;
    }

    if (screen == DS_SCREEN_MAIN) {
        GX_LoadBGPltt((void *)&color, 0, sizeof(u16));
    } else {
        GXS_LoadBGPltt((void *)&color, 0, sizeof(u16));
    }

    RequestVisibleHardwareWindows(&sPaletteFadeManager.hwSettings, GX_WNDMASK_W0, screen);
    RequestHardwareWindowMaskInsidePlane(&sPaletteFadeManager.hwSettings, GX_BLEND_ALL, 0, 0, screen);
    RequestHardwareWindowDimensions(&sPaletteFadeManager.hwSettings, 0, 0, 0, 0, 0, screen);
    RequestHardwareWindowMaskOutsidePlane(&sPaletteFadeManager.hwSettings, GX_BLEND_PLANEMASK_BD, 0, screen);
}

void SetScreenBackgroundColor(u16 color)
{
    GX_LoadBGPltt((void *)&color, 0, sizeof(u16));
    GXS_LoadBGPltt((void *)&color, 0, sizeof(u16));
}

void SetScreenMasterBrightness(enum DSScreen screen, int brightness)
{
    if (screen == DS_SCREEN_MAIN) {
        GX_SetMasterBrightness(brightness);
    } else {
        GXS_SetMasterBrightness(brightness);
    }
}

static void ResetPaletteFadeManager(PaletteFadeManager *manager)
{
    manager->active = FALSE;
    manager->savedColor = GetSavedFadeColor(manager);

    if (manager->screen.existsMain) {
        ResetWindowPaletteFade(&manager->mainScreenFade);
        if (manager->mainScreenFade.direction == FADE_IN) {
            sPaletteFadeManager.dummy_14E = 0;
        }
    }

    if (manager->screen.existsSub) {
        ResetWindowPaletteFade(&manager->subScreenFade);
        if (manager->mainScreenFade.direction == FADE_IN) {
            sPaletteFadeManager.dummy_14F = 0;
        }
    }

    ZeroPaletteFadeManager(manager);
}

static BOOL TryPaletteFade(PaletteFadeScreen *screen, PaletteFade *fadeMain, PaletteFade *fadeSub)
{
    switch (screen->order) {
    case ORDER_SIMULTANEOUS:
        TryPaletteFadeFunc(&screen->activeMain, fadeMain);
        TryPaletteFadeFunc(&screen->activeSub, fadeSub);
        break;

    case ORDER_MAIN_FIRST:
        if (screen->activeMain) {
            TryPaletteFadeFunc(&screen->activeMain, fadeMain);
        } else {
            TryPaletteFadeFunc(&screen->activeSub, fadeSub);
        }
        break;

    case ORDER_SUB_FIRST:
        if (screen->activeSub) {
            TryPaletteFadeFunc(&screen->activeSub, fadeSub);
        } else {
            TryPaletteFadeFunc(&screen->activeMain, fadeMain);
        }
        break;
    }

    if (screen->activeMain == FALSE && screen->activeSub == FALSE) {
        return TRUE;
    }

    return FALSE;
}

static void TryPaletteFadeFunc(BOOL *running, PaletteFade *fade)
{
    if (*running && CallPaletteFadeFunc(fade) == TRUE) {
        *running = FALSE;
    }
}

static BOOL CallPaletteFadeFunc(PaletteFade *fade)
{
    return sPaletteFadeFuncs[fade->type](fade);
}

static void SetupPaletteFadeScreen(enum FadeMode mode, PaletteFadeScreen *screen)
{
    switch (mode) {
    case MODE_BOTH_SCREENS:
        InitPaletteFadeScreen(screen, ORDER_SIMULTANEOUS, TRUE, TRUE);
        break;

    case MODE_MAIN_THEN_SUB:
        InitPaletteFadeScreen(screen, ORDER_MAIN_FIRST, TRUE, TRUE);
        break;

    case MODE_SUB_THEN_MAIN:
        InitPaletteFadeScreen(screen, ORDER_SUB_FIRST, TRUE, TRUE);
        break;

    case MODE_MAIN_ONLY:
        InitPaletteFadeScreen(screen, ORDER_MAIN_FIRST, TRUE, FALSE);
        break;

    case MODE_SUB_ONLY:
        InitPaletteFadeScreen(screen, ORDER_SUB_FIRST, FALSE, TRUE);
        break;
    }
}

static void InitPaletteFadeScreen(PaletteFadeScreen *screen, enum ScreenFadeOrder order, BOOL fadeMain, BOOL fadeSub)
{
    screen->order = order;
    screen->activeMain = fadeMain;
    screen->activeSub = fadeSub;
    screen->existsMain = fadeMain;
    screen->existsSub = fadeSub;
}

static void InitPaletteFade(PaletteFade *fade, enum FadeType type, int steps, int framesPerStep, enum FadeState state, void *data, enum DSScreen screen, HardwareWindowSettings *hwSettings, PaletteFadeHBlanks *hblanks, enum HeapId heapID, u16 color)
{
    fade->type = type;
    fade->steps = steps;
    fade->framesPerStep = framesPerStep;
    fade->state = state;
    fade->data = data;
    fade->screen = screen;
    fade->hwSettings = hwSettings;
    fade->hblanks = hblanks;
    fade->heapID = heapID;
    fade->color = color;
}

static void ClearHBlanks(PaletteFadeHBlanks *hblanks)
{
    for (int screen = 0; screen < DS_SCREEN_MAX; screen++) {
        hblanks->data[screen] = NULL;
        hblanks->callback[screen] = DummyHBlankCallback;
        hblanks->running[screen] = FALSE;
    }
}

static void RunHBlankCallbacks(void *data)
{
    PaletteFadeHBlanks *hblanks = data;
    for (int screen = 0; screen < DS_SCREEN_MAX; screen++) {
        hblanks->callback[screen](hblanks->data[screen]);
    }
}

static void EnableScreenHBlank(PaletteFadeHBlanks *hblanks, void *data, Callback callback, enum DSScreen screen)
{
    u8 validCallback = TRUE;
    GF_ASSERT(hblanks->running[screen] == FALSE);
    GF_ASSERT(hblanks->callback[screen] != NULL);

    if (hblanks->running[DS_SCREEN_MAIN] == FALSE && hblanks->running[DS_SCREEN_SUB] == FALSE) {
        validCallback = SetHBlankCallback(RunHBlankCallbacks, hblanks);
    }

    GF_ASSERT(validCallback == TRUE);

    hblanks->data[screen] = data;

    if (callback) {
        hblanks->callback[screen] = callback;
    } else {
        hblanks->callback[screen] = DummyHBlankCallback;
    }

    hblanks->running[screen] = TRUE;
}

static void DisableScreenHBlank(PaletteFadeHBlanks *hblanks, enum DSScreen screen)
{
    hblanks->running[screen] = FALSE;

    if (hblanks->running[DS_SCREEN_MAIN] == FALSE && hblanks->running[DS_SCREEN_SUB] == FALSE) {
        DisableHBlank();
    }

    hblanks->callback[screen] = DummyHBlankCallback;
    hblanks->data[screen] = NULL;
}

void sub_0200F6D8(PaletteFadeHBlanks *hblanks, void *data, Callback callback, enum DSScreen screen, enum HeapId heapID)
{
    EnableHBlankTemplate *v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(EnableHBlankTemplate));
    v0->hblanks = hblanks;
    v0->data = data;
    v0->callback = callback;
    v0->screen = screen;

    SysTask_ExecuteAfterVBlank(Task_EnableScreenHBlank, v0, 1024);
}

void sub_0200F704(PaletteFadeHBlanks *hblanks, enum DSScreen screen, enum HeapId heapID)
{
    DisableHBlankTemplate *v0 = Heap_AllocFromHeapAtEnd(heapID, sizeof(DisableHBlankTemplate));
    v0->hblanks = hblanks;
    v0->screen = screen;

    SysTask_ExecuteAfterVBlank(Task_DisableScreenHBlank, v0, 1024);
}

static void Task_EnableScreenHBlank(SysTask *task, void *data)
{
    EnableHBlankTemplate *template = data;
    EnableScreenHBlank(template->hblanks, template->data, template->callback, template->screen);
    SysTask_Done(task);
    Heap_FreeToHeap(data);
}

static void Task_DisableScreenHBlank(SysTask *task, void *data)
{
    DisableHBlankTemplate *template = data;
    DisableScreenHBlank(template->hblanks, template->screen);
    SysTask_Done(task);
    Heap_FreeToHeap(data);
}

static void DummyHBlankCallback(void *data)
{
    return;
}

static u16 GetFadeColor(PaletteFadeManager *manager, u16 color)
{
    if (color == 0xffff) {
        return manager->savedColor;
    }

    return color;
}

static u16 GetSavedFadeColor(const PaletteFadeManager *manager)
{
    const PaletteFade *fade;
    if (manager->screen.existsMain == TRUE) {
        fade = &manager->mainScreenFade;
    } else {
        fade = &manager->subScreenFade;
    }

    if (fade->direction == FADE_OUT) {
        return fade->color;
    }

    return manager->savedColor;
}

static void Task_ResetScreenMasterBrightness(SysTask *task, void *data)
{
    PaletteFade *fade = data;
    SetScreenMasterBrightness(fade->screen, 0);
    SysTask_Done(task);
}

static void RequestResetScreenMasterBrightness(PaletteFade *fade)
{
    if (fade->direction == FADE_IN
        && (fade->color == FADE_WHITE || fade->color == FADE_BLACK)
        && fade->method == FADE_WINDOW) {
        SysTask_ExecuteAfterVBlank(Task_ResetScreenMasterBrightness, fade, 1024);
    }
}

static void ResetWindowPaletteFade(PaletteFade *fade)
{
    if (fade->direction == FADE_OUT
        && (fade->color == FADE_WHITE || fade->color == FADE_BLACK)
        && fade->method == FADE_WINDOW) {
        SetScreenColorBrightness(fade->screen, fade->color);
        ResetVisibleHardwareWindows(fade->screen);
    }
}

static void ZeroPaletteFadeManager(PaletteFadeManager *manager)
{
    memset(&manager->screen, 0, sizeof(PaletteFadeScreen));
    memset(&manager->mainScreenFade, 0, sizeof(PaletteFade));
    memset(&manager->subScreenFade, 0, sizeof(PaletteFade));
    memset(&manager->hblanks, 0, sizeof(PaletteFadeHBlanks));
    memset(&manager->hwSettings, 0, sizeof(HardwareWindowSettings));
}
