#ifndef POKEPLATINUM_SCREEN_FADE_H
#define POKEPLATINUM_SCREEN_FADE_H

#include "constants/graphics.h"
#include "constants/heap.h"
#include "generated/fade_types.h"

#include "hardware_window.h"
#include "system.h"

enum FadeMode {
    FADE_BOTH_SCREENS = 0,
    FADE_MAIN_THEN_SUB,
    FADE_SUB_THEN_MAIN,
    FADE_MAIN_ONLY,
    FADE_SUB_ONLY,
};

enum FadeDirection {
    FADE_IN = 0,
    FADE_OUT,
};

enum FadeMethod {
    FADE_BY_WINDOW = 0,
    FADE_BY_BRIGHTNESS,
};

enum FadeState {
    FADE_IDLE,
    FADE_ACTIVE,
    FADE_CLEANUP,
    FADE_DONE,
};

typedef struct ScreenFadeHBlanks {
    void *data[DS_SCREEN_MAX];
    Callback callback[DS_SCREEN_MAX];
    BOOL running[DS_SCREEN_MAX];
} ScreenFadeHBlanks;

typedef struct ScreenFade {
    enum FadeType type;
    int steps;
    int framesPerStep;
    enum FadeState state;
    enum DSScreen screen;
    void *data;
    HardwareWindowSettings *hwSettings;
    ScreenFadeHBlanks *hblanks;
    enum HeapID heapID;
    u16 color;
    // u8 padding_26[2];

    enum FadeDirection direction;
    enum FadeMethod method;
} ScreenFade;

void StartScreenFade(enum FadeMode mode, enum FadeType typeMain, enum FadeType typeSub, u16 color, int steps, int framesPerStep, enum HeapID heapID);
void ExecScreenFade(void);
BOOL IsScreenFadeDone(void);
void FinishScreenFade(void);
void ResetVisibleHardwareWindows(enum DSScreen screen);
void ResetScreenMasterBrightness(enum DSScreen screen);
void SetScreenColorBrightness(enum DSScreen screen, u16 color);
void SetColorBrightness(u16 color);
void SetupScreenFadeRegisters(enum DSScreen screen, u16 color);
void SetScreenBackgroundColor(u16 color);
void SetScreenMasterBrightness(enum DSScreen screen, int brightness);
void RequestEnableScreenHBlank(ScreenFadeHBlanks *hblanks, void *data, Callback callback, enum DSScreen screen, enum HeapID heapID);
void RequestDisableScreenHBlank(ScreenFadeHBlanks *hblanks, enum DSScreen screen, enum HeapID heapID);

#endif // POKEPLATINUM_SCREEN_FADE_H
