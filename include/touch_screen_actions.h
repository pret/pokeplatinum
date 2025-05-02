#ifndef POKEPLATINUM_TOUCH_SCREEN_HIT_TABLE_ACTION_H
#define POKEPLATINUM_TOUCH_SCREEN_HIT_TABLE_ACTION_H

#include "touch_screen.h"

typedef void (*TouchScreenHitTableAction)(u32, enum TouchScreenButtonState, void *);

typedef struct TouchScreenHitTableActionStateInternal TouchScreenHitTableActionStateInternal;

typedef struct TouchScreenActions {
    const TouchScreenHitTable *hitTables;
    u32 hitTablesLength;
    TouchScreenHitTableAction action;
    void *hitTableContext;
    TouchScreenHitTableActionStateInternal *actionStates;
} TouchScreenActions;

TouchScreenActions *TouchScreenActions_RegisterHandler(const TouchScreenHitTable *hitTable, u32 hitTableLength, TouchScreenHitTableAction action, void *context, u32 heapID);
void TouchScreenActions_Free(TouchScreenActions *buttonAction);
void TouchScreenActions_HandleAction(TouchScreenActions *buttonAction);

#endif // POKEPLATINUM_TOUCH_SCREEN_HIT_TABLE_ACTION_H
