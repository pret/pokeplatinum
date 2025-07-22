#include "overlay019/touch_dial.h"

#include <nitro.h>
#include <string.h>

#include "touch_screen.h"

static void TouchDial_RegisterAction(TouchDial *touchDial, int (*func)(TouchDial *, BOOL, BOOL));
static int TouchDial_TrySetInitialTouchAction(TouchDial *touchDial, BOOL touchInBounds, BOOL param2);
static int TouchDial_CheckForNewScrollAction(TouchDial *touchDial, BOOL touchInBounds, BOOL param2);
static u16 TouchDial_GetTouchAngle(const TouchDial *touchDial, u32 x, u32 y);
static int TouchDial_CalcScrollAmountFromAngle(const TouchDial *touchDial, u16 initialAngle, u16 currentAngle);

void TouchDial_Init(TouchDial *touchDial, int circleX, int circleY, int innerRadius, int outerRadius) {
    touchDial->action = TouchDial_TrySetInitialTouchAction;
    touchDial->touchInBounds = FALSE;
    touchDial->circleX = circleX;
    touchDial->circleY = circleY;
    touchDial->currentTouchX = circleX;
    touchDial->currentTouchY = circleY;
    touchDial->initialTouchX = circleX;
    touchDial->initialTouchY = circleY;
    touchDial->innerCircle.circle.code = TOUCHSCREEN_USE_CIRCLE;
    touchDial->innerCircle.circle.x = circleX;
    touchDial->innerCircle.circle.y = circleY;
    touchDial->innerCircle.circle.r = innerRadius;
    touchDial->outerCircle.circle.code = TOUCHSCREEN_USE_CIRCLE;
    touchDial->outerCircle.circle.x = circleX;
    touchDial->outerCircle.circle.y = circleY;
    touchDial->outerCircle.circle.r = outerRadius;

    if (circleX < 128) {
        touchDial->buttonDirection = 1;
    } else {
        touchDial->buttonDirection = -1;
    }
}

int TouchDial_HandleAction(TouchDial *touchDial) {
    BOOL touchInBounds, previousTouchInBounds;

    if (TouchScreen_LocationHeld(&touchDial->outerCircle) == TRUE && TouchScreen_LocationHeld(&touchDial->innerCircle) == FALSE) {
        u32 x, y;

        touchInBounds = TRUE;
        previousTouchInBounds = !touchDial->touchInBounds;

        if (TouchScreen_GetHoldState(&x, &y)) {
            touchDial->currentTouchX = x;
            touchDial->currentTouchY = y;
        }
    } else {
        touchInBounds = FALSE;
        previousTouchInBounds = FALSE;
    }

    touchDial->touchInBounds = touchInBounds;
    return touchDial->action(touchDial, touchInBounds, previousTouchInBounds);
}

static void TouchDial_RegisterAction(TouchDial *touchDial, int (*action)(TouchDial *, BOOL, BOOL)) {
    touchDial->unused = 0;
    touchDial->action = action;
}

static int TouchDial_TrySetInitialTouchAction(TouchDial *touchDial, BOOL touchInBounds, BOOL previousTouchInBounds) {
    if (touchInBounds && previousTouchInBounds) {
        touchDial->initialTouchX = touchDial->currentTouchX;
        touchDial->initialTouchY = touchDial->currentTouchY;
        touchDial->initialTouchAngle = TouchDial_GetTouchAngle(touchDial, touchDial->initialTouchX, touchDial->initialTouchY);
        TouchDial_RegisterAction(touchDial, TouchDial_CheckForNewScrollAction);
        return TOUCH_DIAL_INITIAL_TOUCH;
    }

    return TOUCH_DIAL_NO_TOUCH;
}

static int TouchDial_CheckForNewScrollAction(TouchDial *touchDial, BOOL touchInBounds, BOOL previousTouchInBounds) {
    if (touchInBounds == FALSE) {
        TouchDial_RegisterAction(touchDial, TouchDial_TrySetInitialTouchAction);
        return TOUCH_DIAL_END_SCROLL;
    }

    return TOUCH_DIAL_SCROLLING;
}

int TouchDial_CalcScrollAmount(const TouchDial *touchDial) {
    u16 currentAngle = TouchDial_GetTouchAngle(touchDial, touchDial->currentTouchX, touchDial->currentTouchY);
    return TouchDial_CalcScrollAmountFromAngle(touchDial, touchDial->initialTouchAngle, currentAngle);
}

static u16 TouchDial_GetTouchAngle(const TouchDial *touchDial, u32 x, u32 y) {
    fx32 relativeX = (int)(x - touchDial->circleX) << FX32_SHIFT;
    fx32 relativeY = (int)(y - touchDial->circleY) << FX32_SHIFT;

    return FX_Atan2Idx(relativeY, relativeX);
}

static int TouchDial_CalcScrollAmountFromAngle(const TouchDial *touchDial, u16 initialAngle, u16 currentAngle) {
    static const u16 angleBreakpoints[] = {
        FX_DEG_TO_IDX(FX32_CONST(4.219)),
        FX_DEG_TO_IDX(FX32_CONST(33.75)),
    };
    int angleChange, i;

    angleChange = currentAngle - initialAngle;

    int angleChangeDirection;
    if (angleChange < 0) {
        angleChangeDirection = -1;
        angleChange *= -1;
    } else {
        angleChangeDirection = 1;
    }

    for (i = 0; i < NELEMS(angleBreakpoints); i++) {
        if (angleChange < angleBreakpoints[i]) {
            break;
        }
    }

    return i * angleChangeDirection * touchDial->buttonDirection;
}
