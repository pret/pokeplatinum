#include "touch_screen.h"

#include <nitro.h>
#include <string.h>

#include "system.h"

static int CheckRectangleTouch(const TouchScreenRect *rect, u32 x, u32 y);
static BOOL sub_020225E0(const TouchScreenHitTable *hitTable, u32 param1, u32 param2);
static BOOL sub_0202260C(const TouchScreenHitTable *hitTable, u32 param1, u32 param2);

static int CheckRectangleTouch(const TouchScreenRect *rect, u32 x, u32 y)
{
    for (int i = 0; rect[i].rect.top != 0xFF; i++) {
        if (((x - rect[i].rect.left) < (rect[i].rect.right - rect[i].rect.left)) & ((y - rect[i].rect.top) < (rect[i].rect.bottom - rect[i].rect.top))) {
            return i;
        }
    }

    return TOUCHSCREEN_INPUT_NONE;
}

static BOOL sub_020225E0(const TouchScreenHitTable *hitTable, u32 param1, u32 param2)
{
    param1 = (hitTable->circle.x - param1) * (hitTable->circle.x - param1);
    param2 = (hitTable->circle.y - param2) * (hitTable->circle.y - param2);

    if (param1 + param2 < (hitTable->circle.r * hitTable->circle.r)) {
        return 1;
    }

    return 0;
}

static BOOL sub_0202260C(const TouchScreenHitTable *hitTable, u32 param1, u32 param2)
{
    if (((u32)(param1 - hitTable->rect.left) < (u32)(hitTable->rect.right - hitTable->rect.left)) & ((u32)(param2 - hitTable->rect.top) < (u32)(hitTable->rect.bottom - hitTable->rect.top))) {
        return 1;
    }

    return 0;
}

int TouchScreen_CheckRectangleHeld(const TouchScreenRect *rect)
{
    if (gSystem.touchHeld) {
        return CheckRectangleTouch(rect, gSystem.touchX, gSystem.touchY);
    }

    return TOUCHSCREEN_INPUT_NONE;
}

int TouchScreen_CheckRectanglePressed(const TouchScreenRect *rect)
{
    if (gSystem.touchPressed) {
        return CheckRectangleTouch(rect, gSystem.touchX, gSystem.touchY);
    }

    return TOUCHSCREEN_INPUT_NONE;
}

int sub_02022684(const TouchScreenHitTable *hitTable)
{
    if (gSystem.touchHeld) {
        int v0;

        for (v0 = 0; hitTable[v0].circle.code != 0xff; v0++) {
            if (hitTable[v0].circle.code == TOUCHSCREEN_USE_CIRCLE) {
                if (sub_020225E0(&hitTable[v0], gSystem.touchX, gSystem.touchY)) {
                    return v0;
                }
            } else {
                if (sub_0202260C(&hitTable[v0], gSystem.touchX, gSystem.touchY)) {
                    return v0;
                }
            }
        }
    }

    return TOUCHSCREEN_INPUT_NONE;
}

int sub_020226DC(const TouchScreenHitTable *hitTable)
{
    if (gSystem.touchPressed) {
        int v0;

        for (v0 = 0; hitTable[v0].circle.code != 0xff; v0++) {
            if (hitTable[v0].circle.code == TOUCHSCREEN_USE_CIRCLE) {
                if (sub_020225E0(&hitTable[v0], gSystem.touchX, gSystem.touchY)) {
                    return v0;
                }
            } else {
                if (sub_0202260C(&hitTable[v0], gSystem.touchX, gSystem.touchY)) {
                    return v0;
                }
            }
        }
    }

    return TOUCHSCREEN_INPUT_NONE;
}

BOOL TouchScreen_LocationHeld(const TouchScreenHitTable *hitTable)
{
    if (gSystem.touchHeld) {
        if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
            return sub_020225E0(hitTable, gSystem.touchX, gSystem.touchY);
        } else {
            return sub_0202260C(hitTable, gSystem.touchX, gSystem.touchY);
        }
    }

    return FALSE;
}

BOOL TouchScreen_LocationPressed(const TouchScreenHitTable *hitTable)
{
    if (gSystem.touchPressed) {
        if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
            return sub_020225E0(hitTable, gSystem.touchX, gSystem.touchY);
        } else {
            return sub_0202260C(hitTable, gSystem.touchX, gSystem.touchY);
        }
    }

    return FALSE;
}

BOOL TouchScreen_Touched(void)
{
    return gSystem.touchHeld;
}

BOOL TouchScreen_Tapped(void)
{
    return gSystem.touchPressed;
}

BOOL TouchScreen_GetHoldState(u32 *x, u32 *y)
{
    if (gSystem.touchHeld) {
        *x = gSystem.touchX;
        *y = gSystem.touchY;
        return TRUE;
    }

    return FALSE;
}

BOOL TouchScreen_GetTapState(u32 *x, u32 *y)
{
    if (gSystem.touchPressed) {
        *x = gSystem.touchX;
        *y = gSystem.touchY;
        return TRUE;
    }

    return FALSE;
}

int sub_020227DC(const TouchScreenHitTable *hitTable, u32 param1, u32 param2)
{
    int v0;

    for (v0 = 0; hitTable[v0].circle.code != 0xff; v0++) {
        if (hitTable[v0].circle.code == TOUCHSCREEN_USE_CIRCLE) {
            if (sub_020225E0(&hitTable[v0], param1, param2)) {
                return v0;
            }
        } else {
            if (sub_0202260C(&hitTable[v0], param1, param2)) {
                return v0;
            }
        }
    }

    return TOUCHSCREEN_INPUT_NONE;
}

BOOL sub_02022830(const TouchScreenHitTable *hitTable, u32 param1, u32 param2)
{
    if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
        return sub_020225E0(hitTable, param1, param2);
    } else {
        return sub_0202260C(hitTable, param1, param2);
    }

    return 0;
}
