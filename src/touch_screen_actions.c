#include "touch_screen_actions.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "touch_screen.h"

typedef struct TouchScreenHitTableActionStateInternal {
    u8 touchStateFunction;
    u8 activated;
    u16 unused;
};

static void ButtonActionState_InternalInit(TouchScreenHitTableActionStateInternal *buttonActionState);
static u32 DetermineButtonInputStateInitial(TouchScreenHitTableActionStateInternal *buttonActionState, BOOL touched, BOOL tapped);
static u32 DetermineButtonInputState(TouchScreenHitTableActionStateInternal *buttonActionState, BOOL touched, BOOL tapped);
static void SetButtonTouchStateFunctionID(TouchScreenHitTableActionStateInternal *buttonActionState, u32 touchStateFunction);

TouchScreenActions *TouchScreenActions_RegisterHandler(const TouchScreenHitTable *hitTable, u32 hitTableLength, TouchScreenHitTableAction action, void *context, u32 heapID) {
    GF_ASSERT(hitTableLength > 0);

    TouchScreenActions *buttonAction = Heap_AllocFromHeap(heapID, sizeof(TouchScreenActions));

    if (buttonAction) {
        buttonAction->hitTables = hitTable;
        buttonAction->hitTablesLength = hitTableLength;
        buttonAction->action = action;
        buttonAction->hitTableContext = context;
        buttonAction->actionStates = Heap_AllocFromHeap(heapID, sizeof(TouchScreenHitTableActionStateInternal) * hitTableLength);

        if (buttonAction->actionStates) {
            for (u32 i = 0; i < hitTableLength; i++) {
                ButtonActionState_InternalInit(&buttonAction->actionStates[i]);
            }
        } else {
            Heap_Free(buttonAction);
            buttonAction = NULL;
        }
    }

    return buttonAction;
}

static void ButtonActionState_InternalInit(TouchScreenHitTableActionStateInternal *buttonActionState) {
    buttonActionState->touchStateFunction = 0;
    buttonActionState->activated = FALSE;
    buttonActionState->unused = 0;
}

void TouchScreenActions_Free(TouchScreenActions *buttonAction) {
    GF_ASSERT(buttonAction);

    Heap_Free(buttonAction->actionStates);
    Heap_Free(buttonAction);
}

void TouchScreenActions_HandleAction(TouchScreenActions *buttonAction) {
    BOOL tapped;
    u32 i;

    BOOL touched = TouchScreen_Touched();

    if (touched) {
        tapped = TouchScreen_Tapped();

        for (i = 0; i < buttonAction->hitTablesLength; i++) {
            if (buttonAction->actionStates[i].activated) {
                buttonAction->actionStates[i].activated = TouchScreen_LocationHeld(&buttonAction->hitTables[i]);
            } else {
                buttonAction->actionStates[i].activated = TouchScreen_LocationPressed(&buttonAction->hitTables[i]);
            }
        }
    } else {
        tapped = FALSE;

        for (i = 0; i < buttonAction->hitTablesLength; i++) {
            buttonAction->actionStates[i].activated = FALSE;
        }
    }

    static u32 (*const buttonTouchStateFunctions[])(TouchScreenHitTableActionStateInternal *, BOOL, BOOL) = {
        DetermineButtonInputStateInitial,
        DetermineButtonInputState
    };

    for (i = 0; i < buttonAction->hitTablesLength; i++) {
        u32 buttonTouchState = buttonTouchStateFunctions[buttonAction->actionStates[i].touchStateFunction](&buttonAction->actionStates[i], touched, tapped);

        if (buttonTouchState != -1) {
            buttonAction->action(i, buttonTouchState, buttonAction->hitTableContext);
        }
    }
}

static u32 DetermineButtonInputStateInitial(TouchScreenHitTableActionStateInternal *buttonActionState, BOOL touched, BOOL tapped) {
    if (buttonActionState->activated) {
        if (tapped) {
            SetButtonTouchStateFunctionID(buttonActionState, 1);
            return TOUCH_BUTTON_PRESSED;
        }
    }

    return TOUCH_BUTTON_NOT_PRESSED;
}

static u32 DetermineButtonInputState(TouchScreenHitTableActionStateInternal *buttonActionState, BOOL touched, BOOL tapped) {
    if (buttonActionState->activated) {
        if (buttonActionState->unused < (u16)-1) {
            buttonActionState->unused++;
        }

        return TOUCH_BUTTON_HELD;
    } else if (touched) {
        SetButtonTouchStateFunctionID(buttonActionState, 0);
        return TOUCH_BUTTON_HELD_OUT_OF_BOUNDS;
    } else {
        SetButtonTouchStateFunctionID(buttonActionState, 0);
        return TOUCH_BUTTON_RELEASED;
    }
}

static void SetButtonTouchStateFunctionID(TouchScreenHitTableActionStateInternal *buttonActionState, u32 touchStateFunction) {
    buttonActionState->touchStateFunction = touchStateFunction;
    buttonActionState->unused = 0;
}
