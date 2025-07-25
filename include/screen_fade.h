#ifndef POKEPLATINUM_SCREEN_FADE_H
#define POKEPLATINUM_SCREEN_FADE_H

#include "constants/graphics.h"
#include "constants/heap.h"

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

enum FadeType {
    FADE_TYPE_BRIGHTNESS_OUT = 0,
    FADE_TYPE_BRIGHTNESS_IN,
    FADE_TYPE_UNK_2,
    FADE_TYPE_DOWNWARD_IN,
    FADE_TYPE_UPWARD_OUT,
    FADE_TYPE_UNK_5,
    FADE_TYPE_UNK_6,
    FADE_TYPE_UNK_7,
    FADE_TYPE_UNK_8,
    FADE_TYPE_UNK_9,
    FADE_TYPE_UNK_10,
    FADE_TYPE_UNK_11,
    FADE_TYPE_UNK_12,
    FADE_TYPE_UNK_13,
    FADE_TYPE_UNK_14,
    FADE_TYPE_UNK_15,
    FADE_TYPE_UNK_16,
    FADE_TYPE_UNK_17,
    FADE_TYPE_UNK_18,
    FADE_TYPE_UNK_19,
    FADE_TYPE_UNK_20,
    FADE_TYPE_UNK_21,
    FADE_TYPE_UNK_22,
    FADE_TYPE_UNK_23,
    FADE_TYPE_UNK_24,
    FADE_TYPE_UNK_25,
    FADE_TYPE_UNK_26,
    FADE_TYPE_UNK_27,
    FADE_TYPE_UNK_28,
    FADE_TYPE_UNK_29,
    FADE_TYPE_UNK_30,
    FADE_TYPE_UNK_31,
    FADE_TYPE_UNK_32,
    FADE_TYPE_UNK_33,
    FADE_TYPE_UNK_34,
    FADE_TYPE_UNK_35,
    FADE_TYPE_UNK_36,
    FADE_TYPE_UNK_37,
    FADE_TYPE_UNK_38,
    FADE_TYPE_UNK_39,
    FADE_TYPE_UNK_40,
    FADE_TYPE_UNK_41,

    FADE_TYPE_MAX,
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
    enum HeapId heapID;
    u16 color;
    // u8 padding_26[2];

    enum FadeDirection direction;
    enum FadeMethod method;
} ScreenFade;

void StartScreenFade(enum FadeMode mode, enum FadeType typeMain, enum FadeType typeSub, u16 color, int steps, int framesPerStep, enum HeapId heapID);
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
void RequestEnableScreenHBlank(ScreenFadeHBlanks *hblanks, void *data, Callback callback, enum DSScreen screen, enum HeapId heapID);
void RequestDisableScreenHBlank(ScreenFadeHBlanks *hblanks, enum DSScreen screen, enum HeapId heapID);

#endif // POKEPLATINUM_SCREEN_FADE_H
