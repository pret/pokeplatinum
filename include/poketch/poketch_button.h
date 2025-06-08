#ifndef POKEPLATINUM_POKETCH_BUTTON_H
#define POKEPLATINUM_POKETCH_BUTTON_H

#include "touch_screen.h"

#define BUTTON_TIMER_MAX                     0xffff
#define BUTTON_MANAGER_NUM_TIMERS_PER_BUTTON 2

typedef void (*PoketchButtonCallback)(u32, u32, u32, void *);

enum ButtonManagerState {
    BUTTON_MANAGER_STATE_NULL = 0,
    BUTTON_MANAGER_STATE_TOUCH,
    BUTTON_MANAGER_STATE_DRAGGING,
    BUTTON_MANAGER_STATE_TAP,
    BUTTON_MANAGER_STATE_DOUBLE_TAP,
    BUTTON_MANAGER_STATE_TIMER0,
    BUTTON_MANAGER_STATE_TIMER1,
    BUTTON_MANAGER_STATE_REPEAT,
};

/** Button states similar to a game input */
enum ButtonTouchState {
    BUTTON_TOUCH_PRESSED = 0, //!< up last frame, down this frame
    BUTTON_TOUCH_RELEASED, //!< down last frame, up this frame
    BUTTON_TOUCH_DOWN, //!< down last frame, down this frame
};

/** States in the Button State Machine */
enum ButtonEventState {
    BUTTON_STATE_IDLE = 0,
    BUTTON_STATE_TAP,
    BUTTON_STATE_CHECK_DOUBLE_TAP,
    BUTTON_STATE_DOUBLE_TAP,
    BUTTON_STATE_RESET,
};

typedef struct PoketchButton {
    u8 state;
    u8 screenTouched;
    u8 prevScreenTouched;
    u8 unused;
    u16 timer;
    u16 doubleTapTime;
    u16 timerDurations[BUTTON_MANAGER_NUM_TIMERS_PER_BUTTON];
    u16 repeatTime;
} PoketchButton;

typedef struct PoketchButtonManager {
    const TouchScreenHitTable *hitTable;
    PoketchButtonCallback callback;
    u32 heapID;
    u32 numButtons;
    void *buttonCallbackData;
    PoketchButton *buttons;
} PoketchButtonManager;

PoketchButtonManager *PoketchButtonManager_New(const TouchScreenHitTable *hitTable, u32 numButtons, PoketchButtonCallback callback, void *callbackData, u32 heapID);
void PoketchButtonManager_Free(PoketchButtonManager *buttonManager);
void PoketchButtonManager_Update(PoketchButtonManager *buttonManager);
void PoketchButtonManager_SetButtonTimer(PoketchButtonManager *buttonManager, u32 buttonIndex, u32 timerIndex, u16 time);
void PoketchButtonManager_SetRepeatTime(PoketchButtonManager *buttonManager, u32 index, u16 repeatTime);
void PoketchButtonManager_ResetButtonState(PoketchButtonManager *buttonManager, u32 index);

#endif // POKEPLATINUM_POKETCH_BUTTON_H
