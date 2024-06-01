#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "touch_screen.h"

static int sub_02022594(const TouchScreenRect *rect, u32 param1, u32 param2);
static BOOL sub_020225E0(const TouchScreenHitTable *hitTable, u32 param1, u32 param2);
static BOOL sub_0202260C(const TouchScreenHitTable *hitTable, u32 param1, u32 param2);

static int sub_02022594 (const TouchScreenRect *rect, u32 param1, u32 param2)
{
    int v0;

    for (v0 = 0; rect[v0].rect.top != 0xff; v0++) {
        if (((u32)(param1 - rect[v0].rect.left) < (u32)(rect[v0].rect.right - rect[v0].rect.left)) & ((u32)(param2 - rect[v0].rect.top) < (u32)(rect[v0].rect.bottom - rect[v0].rect.top))) {
            return v0;
        }
    }

    return 0xffffffff;
}

static BOOL sub_020225E0 (const TouchScreenHitTable *hitTable, u32 param1, u32 param2)
{
    param1 = (hitTable->circle.x - param1) * (hitTable->circle.x - param1);
    param2 = (hitTable->circle.y - param2) * (hitTable->circle.y - param2);

    if (param1 + param2 < (hitTable->circle.r * hitTable->circle.r)) {
        return 1;
    }

    return 0;
}

static BOOL sub_0202260C (const TouchScreenHitTable *hitTable, u32 param1, u32 param2)
{
    if (((u32)(param1 - hitTable->rect.left) < (u32)(hitTable->rect.right - hitTable->rect.left)) & ((u32)(param2 - hitTable->rect.top) < (u32)(hitTable->rect.bottom - hitTable->rect.top))) {
        return 1;
    }

    return 0;
}

int sub_02022644 (const TouchScreenRect *rect)
{
    if (gCoreSys.touchHeld) {
        return sub_02022594(rect, gCoreSys.touchX, gCoreSys.touchY);
    }

    return 0xffffffff;
}

int sub_02022664 (const TouchScreenRect *rect)
{
    if (gCoreSys.touchPressed) {
        return sub_02022594(rect, gCoreSys.touchX, gCoreSys.touchY);
    }

    return 0xffffffff;
}

int sub_02022684 (const TouchScreenHitTable *hitTable)
{
    if (gCoreSys.touchHeld) {
        int v0;

        for (v0 = 0; hitTable[v0].circle.code != 0xff; v0++) {
            if (hitTable[v0].circle.code == TOUCHSCREEN_USE_CIRCLE) {
                if (sub_020225E0(&hitTable[v0], gCoreSys.touchX, gCoreSys.touchY)) {
                    return v0;
                }
            } else {
                if (sub_0202260C(&hitTable[v0], gCoreSys.touchX, gCoreSys.touchY)) {
                    return v0;
                }
            }
        }
    }

    return 0xffffffff;
}

int sub_020226DC (const TouchScreenHitTable *hitTable)
{
    if (gCoreSys.touchPressed) {
        int v0;

        for (v0 = 0; hitTable[v0].circle.code != 0xff; v0++) {
            if (hitTable[v0].circle.code == TOUCHSCREEN_USE_CIRCLE) {
                if (sub_020225E0(&hitTable[v0], gCoreSys.touchX, gCoreSys.touchY)) {
                    return v0;
                }
            } else {
                if (sub_0202260C(&hitTable[v0], gCoreSys.touchX, gCoreSys.touchY)) {
                    return v0;
                }
            }
        }
    }

    return 0xffffffff;
}

BOOL TouchScreen_LocationHeld(const TouchScreenHitTable *hitTable)
{
    if (gCoreSys.touchHeld) {
        if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
            return sub_020225E0(hitTable, gCoreSys.touchX, gCoreSys.touchY);
        } else {
            return sub_0202260C(hitTable, gCoreSys.touchX, gCoreSys.touchY);
        }
    }

    return FALSE;
}

BOOL TouchScreen_LocationPressed(const TouchScreenHitTable *hitTable)
{
    if (gCoreSys.touchPressed) {
        if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
            return sub_020225E0(hitTable, gCoreSys.touchX, gCoreSys.touchY);
        } else {
            return sub_0202260C(hitTable, gCoreSys.touchX, gCoreSys.touchY);
        }
    }

    return FALSE;
}

BOOL TouchScreen_Touched(void)
{
    return gCoreSys.touchHeld;
}

BOOL TouchScreen_Tapped(void)
{
    return gCoreSys.touchPressed;
}

BOOL TouchScreen_TouchLocation(u32 *x, u32 *y)
{
    if (gCoreSys.touchHeld) {
        *x = gCoreSys.touchX;
        *y = gCoreSys.touchY;
        return TRUE;
    }

    return FALSE;
}

BOOL TouchScreen_TapLocation(u32 * x, u32 * y)
{
    if (gCoreSys.touchPressed) {
        *x = gCoreSys.touchX;
        *y = gCoreSys.touchY;
        return TRUE;
    }

    return FALSE;
}

int sub_020227DC (const TouchScreenHitTable *hitTable, u32 param1, u32 param2)
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

    return 0xffffffff;
}

BOOL sub_02022830 (const TouchScreenHitTable *hitTable, u32 param1, u32 param2)
{
    if (hitTable->circle.code == TOUCHSCREEN_USE_CIRCLE) {
        return sub_020225E0(hitTable, param1, param2);
    } else {
        return sub_0202260C(hitTable, param1, param2);
    }

    return 0;
}
