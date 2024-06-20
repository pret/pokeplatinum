#include <nitro.h>
#include <string.h>

#include "overlay025/poketch_button.h"

#include "touch_screen.h"

#include "heap.h"

static void PoketchButton_Init(PoketchButton *button);
static void PoketchButton_ChangeState(PoketchButton *button, enum ButtonEventState state);
static void PoketchButton_IncrementTimer(PoketchButton *button);
static u32 PoketchButton_CheckTimers(PoketchButton *button);
static u32 Button_OnIdle(PoketchButton *button, BOOL touched, BOOL tapped);
static u32 Button_OnPressed(PoketchButton *button, BOOL touched, BOOL tapped);
static u32 Button_OnCheckDoubleTap(PoketchButton *button, BOOL touched, BOOL tapped);
static u32 Button_OnDoubleTap(PoketchButton *button, BOOL touched, BOOL tapped);
static u32 Button_OnReset(PoketchButton *button, BOOL touched, BOOL tapped);

PoketchButtonManager* PoketchButtonManager_New(const TouchScreenHitTable *hitTable, u32 numButtons, PoketchButtonCallback callback, void *callbackData, u32 heapID)
{
    GF_ASSERT(numButtons > 0);

    PoketchButtonManager *buttonManager = Heap_AllocFromHeap(heapID, sizeof(PoketchButtonManager));

    if (buttonManager) {
        buttonManager->heapID = heapID;
        buttonManager->callback = callback;
        buttonManager->hitTable = hitTable;
        buttonManager->numButtons = numButtons;
        buttonManager->buttonCallbackData = callbackData;
        buttonManager->buttons = Heap_AllocFromHeap(heapID, sizeof(PoketchButton) * numButtons);

        if (buttonManager->buttons) {
            for (u32 i = 0; i < numButtons; i++) {
                PoketchButton_Init(&buttonManager->buttons[i]);
            }
        } else {
            Heap_FreeToHeapExplicit(heapID, buttonManager);
            buttonManager = NULL;
        }
    }

    return buttonManager;
}

void PoketchButtonManager_Free(PoketchButtonManager *buttonManager)
{
    GF_ASSERT(buttonManager);
    Heap_FreeToHeapExplicit(buttonManager->heapID, buttonManager->buttons);
    Heap_FreeToHeapExplicit(buttonManager->heapID, buttonManager);
}

// These functions all return ButtonManagerState values.
typedef u32(*const ButtonEvent[])(PoketchButton *button, BOOL touched, BOOL tapped);
static ButtonEvent sButtonEvents = {
    Button_OnIdle,
    Button_OnPressed,
    Button_OnCheckDoubleTap,
    Button_OnDoubleTap,
    Button_OnReset
};

void PoketchButtonManager_Update(PoketchButtonManager *buttonManager)
{
    BOOL touched, tapped;
    u32 i, buttonState, touchState;

    touched = TouchScreen_Touched();

    // If we touched the screen this frame, check the location and update the button states accordingly
    if (touched) {
        tapped = TouchScreen_Tapped();

        for (i = 0; i < buttonManager->numButtons; i++) {
            buttonManager->buttons[i].prevScreenTouched = buttonManager->buttons[i].screenTouched;

            if (buttonManager->buttons[i].screenTouched) {
                buttonManager->buttons[i].screenTouched = TouchScreen_LocationHeld(&buttonManager->hitTable[i]);
            } else {
                buttonManager->buttons[i].screenTouched = TouchScreen_LocationPressed(&buttonManager->hitTable[i]);
            }
        }
    // Didn't touch the screen--just update the button states
    } else {
        tapped = FALSE;

        for (i = 0; i < buttonManager->numButtons; i++) {
            buttonManager->buttons[i].prevScreenTouched = buttonManager->buttons[i].screenTouched;
            buttonManager->buttons[i].screenTouched = FALSE;
        }
    }

    // Call Buttons's state machine function, and then optionally the button manager's currently set callback after that.
    for (i = 0; i < buttonManager->numButtons; i++) {
        buttonState = sButtonEvents[buttonManager->buttons[i].state](&buttonManager->buttons[i], touched, tapped);

        if (buttonManager->buttons[i].screenTouched != buttonManager->buttons[i].prevScreenTouched) {
            touchState = buttonManager->buttons[i].screenTouched;
        } else {
            touchState = BUTTON_TOUCH_DOWN;
        }

        // We only call the button manager's callback once per update, and only if a button's state changed
        if (buttonState != BUTTON_MANAGER_STATE_NULL || touchState != BUTTON_TOUCH_DOWN) {
            buttonManager->callback(i, buttonState, touchState, buttonManager->buttonCallbackData);
            break;
        }
    }

    // Call the state functions for the rest of the buttons
    for (i++; i < buttonManager->numButtons; i++) {
        sButtonEvents[buttonManager->buttons[i].state](&buttonManager->buttons[i], touched, tapped);
    }
}

void PoketchButtonManager_SetButtonTimer(PoketchButtonManager *buttonManager, u32 buttonIndex, u32 timerIndex, u16 time)
{
    buttonManager->buttons[buttonIndex].timerDurations[timerIndex] = time;
}

void PoketchButtonManager_SetRepeatTime(PoketchButtonManager *buttonManager, u32 index, u16 repeatTime)
{
    buttonManager->buttons[index].repeatTime = repeatTime;
}

void PoketchButtonManager_ResetButtonState(PoketchButtonManager *buttonManager, u32 index)
{
    buttonManager->buttons[index].timer = 0;
    buttonManager->buttons[index].state = BUTTON_STATE_RESET;
}

static void PoketchButton_Init(PoketchButton *button)
{
    button->state = BUTTON_STATE_IDLE;
    button->screenTouched = FALSE;
    button->prevScreenTouched = FALSE;
    button->timer = 0;
    button->doubleTapTime = 0;

    for (u32 i = 0; i < BUTTON_MANAGER_NUM_TIMERS_PER_BUTTON; i++) {
        button->timerDurations[i] = 0;
    }

    button->repeatTime = 0;
}

/** Use enum ButtonEventState for state input. */
static void PoketchButton_ChangeState(PoketchButton *button, enum ButtonEventState state)
{
    button->state = state;
    button->timer = 0;
}

/** Use enum ButtonEventState for state input. */
static void PoketchButton_ChangeState_NoReset(PoketchButton *button, enum ButtonEventState state)
{
    button->state = state;
}

static void PoketchButton_IncrementTimer(PoketchButton *button)
{
    if (button->timer < BUTTON_TIMER_MAX) {
        button->timer++;
    }
}

static u32 PoketchButton_CheckTimers(PoketchButton *button)
{
    for (u32 i = 0; i < BUTTON_MANAGER_NUM_TIMERS_PER_BUTTON; i++) {
        if (button->timerDurations[i] == button->timer) {
            return BUTTON_MANAGER_STATE_TIMER0 + i;
        }
    }

    return BUTTON_MANAGER_STATE_NULL;
}

static u32 Button_OnIdle(PoketchButton *button, BOOL touched, BOOL tapped)
{
    if (button->screenTouched) {
        if (tapped) {
            PoketchButton_ChangeState(button, BUTTON_STATE_TAP);
            return BUTTON_MANAGER_STATE_TOUCH;
        }
    }

    return BUTTON_MANAGER_STATE_NULL;
}

static u32 Button_OnPressed(PoketchButton *button, BOOL touched, BOOL tapped)
{
    PoketchButton_IncrementTimer(button);

    if (button->screenTouched) {
        u32 timer_event = PoketchButton_CheckTimers(button);

        if (timer_event != BUTTON_MANAGER_STATE_NULL) {
            return timer_event;
        }

        if ((button->repeatTime != 0) && (button->timer >= button->repeatTime)) {
            button->timer = 0;
            return BUTTON_MANAGER_STATE_REPEAT;
        }
    } else if (touched) {
        PoketchButton_ChangeState(button, BUTTON_STATE_IDLE);
        return BUTTON_MANAGER_STATE_DRAGGING;
    } else {
        // We don't reset the timer because we want to check for double tap with the same timer
        if (button->doubleTapTime) {
            PoketchButton_ChangeState_NoReset(button, BUTTON_STATE_CHECK_DOUBLETAP);
        } else {
            PoketchButton_ChangeState(button, BUTTON_STATE_IDLE);
            return BUTTON_MANAGER_STATE_TAP;
        }
    }

    return BUTTON_MANAGER_STATE_NULL;
}

static u32 Button_OnCheckDoubleTap(PoketchButton *button, BOOL touched, BOOL tapped)
{
    PoketchButton_IncrementTimer(button);

    // Missed the double tap window
    if (button->timer > button->doubleTapTime) {
        PoketchButton_ChangeState(button, BUTTON_STATE_IDLE);
        return BUTTON_MANAGER_STATE_TAP;
    }

    if (button->screenTouched && tapped) {
        PoketchButton_ChangeState(button, BUTTON_STATE_DOUBLETAP);
        return BUTTON_MANAGER_STATE_DOUBLETAP;
    }

    return BUTTON_MANAGER_STATE_NULL;
}

static u32 Button_OnDoubleTap(PoketchButton *button, BOOL touched, BOOL tapped)
{
    if (button->screenTouched) {
        PoketchButton_IncrementTimer(button);
    } else {
        PoketchButton_ChangeState(button, BUTTON_STATE_IDLE);
    }

    return BUTTON_MANAGER_STATE_NULL;
}

static u32 Button_OnReset(PoketchButton *button, BOOL touched, BOOL tapped)
{
    if (button->screenTouched == FALSE) {
        PoketchButton_ChangeState(button, BUTTON_STATE_IDLE);
    }

    return BUTTON_MANAGER_STATE_NULL;
}
