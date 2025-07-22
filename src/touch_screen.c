#include "touch_screen.h"

#include <nitro.h>
#include <string.h>

#include "system.h"

static int CheckRectangleTouch(const TouchScreenRect *rect, u32 x, u32 y);
static BOOL IsTouchInCircle(const TouchScreenHitTable *hitTable, u32 touchX, u32 touchY);
static BOOL IsTouchInRectangle(const TouchScreenHitTable *hitTable, u32 touchX, u32 touchY);

static int CheckRectangleTouch(const TouchScreenRect *rect, u32 x, u32 y) {
    for (int i = 0; rect[i].rect.top != TOUCHSCREEN_TABLE_TERMINATOR; i++) {
        if ((x - rect[i].rect.left < rect[i].rect.right - rect[i].rect.left) & (y - rect[i].rect.top < rect[i].rect.bottom - rect[i].rect.top)) {
            return i;
        }
    }

    return TOUCHSCREEN_INPUT_NONE;
}

static BOOL IsTouchInCircle(const TouchScreenHitTable *hitTable, u32 touchX, u32 touchY) {
    touchX = (hitTable->circle.x - touchX) * (hitTable->circle.x - touchX);
    touchY = (hitTable->circle.y - touchY) * (hitTable->circle.y - touchY);

    if (touchX + touchY < (hitTable->circle.r * hitTable->circle.r)) {
        return TRUE;
    }

    return FALSE;
}

static BOOL IsTouchInRectangle(const TouchScreenHitTable *hitTable, u32 touchX, u32 touchY) {
    if ((touchX - hitTable->rect.left < hitTable->rect.right - hitTable->rect.left) & (touchY - hitTable->rect.top < hitTable->rect.bottom - hitTable->rect.top)) {
        return TRUE;
    }

    return FALSE;
}

int TouchScreen_CheckRectangleHeld(const TouchScreenRect *rect) {
    if (gSystem.touchHeld) {
        return CheckRectangleTouch(rect, gSystem.touchX, gSystem.touchY);
    }

    return TOUCHSCREEN_INPUT_NONE;
}

int TouchScreen_CheckRectanglePressed(const TouchScreenRect *rect) {
    if (gSystem.touchPressed) {
        return CheckRectangleTouch(rect, gSystem.touchX, gSystem.touchY);
    }

    return TOUCHSCREEN_INPUT_NONE;
}

int TouchScreen_CheckHeldHitTableID(const TouchScreenHitTable *hitTable) {
    if (gSystem.touchHeld) {
        for (int i = 0; hitTable[i].circle.code != TOUCHSCREEN_TABLE_TERMINATOR; i++) {
            if (hitTable[i].circle.code == TOUCHSCREEN_USE_CIRCLE) {
                if (IsTouchInCircle(&hitTable[i], gSystem.touchX, gSystem.touchY)) {
                    return i;
                }
            } else {
                if (IsTouchInRectangle(&hitTable[i], gSystem.touchX, gSystem.touchY)) {
                    return i;
                }
            }
        }
    }

    return TOUCHSCREEN_INPUT_NONE;
}

int TouchScreen_CheckPressedHitTableID(const TouchScreenHitTable *hitTable) {
    if (gSystem.touchPressed) {
        for (int i = 0; hitTable[i].circle.code != TOUCHSCREEN_TABLE_TERMINATOR; i++) {
            if (hitTable[i].circle.code == TOUCHSCREEN_USE_CIRCLE) {
                if (IsTouchInCircle(&hitTable[i], gSystem.touchX, gSystem.touchY)) {
                    return i;
                }
            } else {
                if (IsTouchInRectangle(&hitTable[i], gSystem.touchX, gSystem.touchY)) {
                    return i;
                }
            }
        }
    }

    return TOUCHSCREEN_INPUT_NONE;
}

BOOL TouchScreen_LocationHeld(const TouchScreenHitTable *hitTable) {
    if (gSystem.touchHeld) {
        if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
            return IsTouchInCircle(hitTable, gSystem.touchX, gSystem.touchY);
        } else {
            return IsTouchInRectangle(hitTable, gSystem.touchX, gSystem.touchY);
        }
    }

    return FALSE;
}

BOOL TouchScreen_LocationPressed(const TouchScreenHitTable *hitTable) {
    if (gSystem.touchPressed) {
        if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
            return IsTouchInCircle(hitTable, gSystem.touchX, gSystem.touchY);
        } else {
            return IsTouchInRectangle(hitTable, gSystem.touchX, gSystem.touchY);
        }
    }

    return FALSE;
}

BOOL TouchScreen_Touched(void) {
    return gSystem.touchHeld;
}

BOOL TouchScreen_Tapped(void) {
    return gSystem.touchPressed;
}

BOOL TouchScreen_GetHoldState(u32 *x, u32 *y) {
    if (gSystem.touchHeld) {
        *x = gSystem.touchX;
        *y = gSystem.touchY;
        return TRUE;
    }

    return FALSE;
}

BOOL TouchScreen_GetTapState(u32 *x, u32 *y) {
    if (gSystem.touchPressed) {
        *x = gSystem.touchX;
        *y = gSystem.touchY;
        return TRUE;
    }

    return FALSE;
}

int TouchScreen_CheckTouchedHitTableID(const TouchScreenHitTable *hitTable, u32 touchX, u32 touchY) {
    for (int i = 0; hitTable[i].circle.code != TOUCHSCREEN_TABLE_TERMINATOR; i++) {
        if (hitTable[i].circle.code == TOUCHSCREEN_USE_CIRCLE) {
            if (IsTouchInCircle(&hitTable[i], touchX, touchY)) {
                return i;
            }
        } else {
            if (IsTouchInRectangle(&hitTable[i], touchX, touchY)) {
                return i;
            }
        }
    }

    return TOUCHSCREEN_INPUT_NONE;
}

BOOL TouchScreen_IsTouchInHitTable(const TouchScreenHitTable *hitTable, u32 touchX, u32 touchY) {
    if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
        return IsTouchInCircle(hitTable, touchX, touchY);
    } else {
        return IsTouchInRectangle(hitTable, touchX, touchY);
    }

    return FALSE;
}
