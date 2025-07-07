#include "overlay019/touch_scroll_circle.h"

#include <nitro.h>
#include <string.h>

#include "touch_screen.h"

static void TouchScrollCircle_RegisterAction(TouchScrollCircle *scrollCircle, int (*func)(TouchScrollCircle *, BOOL, BOOL));
static int TouchScrollCircle_TrySetInitialTouchAction(TouchScrollCircle *scrollCircle, BOOL touchInBounds, BOOL param2);
static int TouchScrollCircle_CheckForNewScrollAction(TouchScrollCircle *scrollCircle, BOOL touchInBounds, BOOL param2);
static u16 TouchScrollCircle_GetTouchAngle(const TouchScrollCircle *scrollCircle, u32 x, u32 y);
static int TouchScrollCircle_CalcScrollAmountFromAngle(const TouchScrollCircle *scrollCircle, u16 initialAngle, u16 currentAngle);

void TouchScrollCircle_Init(TouchScrollCircle *scrollCircle, int circleX, int circleY, int innerRadius, int outerRadius)
{
    scrollCircle->action = TouchScrollCircle_TrySetInitialTouchAction;
    scrollCircle->touchInBounds = FALSE;
    scrollCircle->circleX = circleX;
    scrollCircle->circleY = circleY;
    scrollCircle->currentTouchX = circleX;
    scrollCircle->currentTouchY = circleY;
    scrollCircle->initialTouchX = circleX;
    scrollCircle->initialTouchY = circleY;
    scrollCircle->innerCircle.circle.code = TOUCHSCREEN_USE_CIRCLE;
    scrollCircle->innerCircle.circle.x = circleX;
    scrollCircle->innerCircle.circle.y = circleY;
    scrollCircle->innerCircle.circle.r = innerRadius;
    scrollCircle->outerCircle.circle.code = TOUCHSCREEN_USE_CIRCLE;
    scrollCircle->outerCircle.circle.x = circleX;
    scrollCircle->outerCircle.circle.y = circleY;
    scrollCircle->outerCircle.circle.r = outerRadius;

    if (circleX < 128) {
        scrollCircle->buttonDirection = 1;
    } else {
        scrollCircle->buttonDirection = -1;
    }
}

int TouchScrollCircle_HandleAction(TouchScrollCircle *scrollCircle)
{
    BOOL touchInBounds, previousTouchInBounds;

    if (TouchScreen_LocationHeld(&scrollCircle->outerCircle) == TRUE && TouchScreen_LocationHeld(&scrollCircle->innerCircle) == FALSE) {
        u32 x, y;

        touchInBounds = TRUE;
        previousTouchInBounds = !scrollCircle->touchInBounds;

        if (TouchScreen_GetHoldState(&x, &y)) {
            scrollCircle->currentTouchX = x;
            scrollCircle->currentTouchY = y;
        }
    } else {
        touchInBounds = FALSE;
        previousTouchInBounds = FALSE;
    }

    scrollCircle->touchInBounds = touchInBounds;
    return scrollCircle->action(scrollCircle, touchInBounds, previousTouchInBounds);
}

static void TouchScrollCircle_RegisterAction(TouchScrollCircle *scrollCircle, int (*action)(TouchScrollCircle *, BOOL, BOOL))
{
    scrollCircle->unused = 0;
    scrollCircle->action = action;
}

static int TouchScrollCircle_TrySetInitialTouchAction(TouchScrollCircle *scrollCircle, BOOL touchInBounds, BOOL previousTouchInBounds)
{
    if (touchInBounds && previousTouchInBounds) {
        scrollCircle->initialTouchX = scrollCircle->currentTouchX;
        scrollCircle->initialTouchY = scrollCircle->currentTouchY;
        scrollCircle->initialTouchAngle = TouchScrollCircle_GetTouchAngle(scrollCircle, scrollCircle->initialTouchX, scrollCircle->initialTouchY);
        TouchScrollCircle_RegisterAction(scrollCircle, TouchScrollCircle_CheckForNewScrollAction);
        return SCROLL_CIRCLE_INITIAL_TOUCH;
    }

    return SCROLL_CIRCLE_NO_TOUCH;
}

static int TouchScrollCircle_CheckForNewScrollAction(TouchScrollCircle *scrollCircle, BOOL touchInBounds, BOOL previousTouchInBounds)
{
    if (touchInBounds == FALSE) {
        TouchScrollCircle_RegisterAction(scrollCircle, TouchScrollCircle_TrySetInitialTouchAction);
        return SCROLL_CIRCLE_END_SCROLL;
    }

    return SCROLL_CIRCLE_SCROLLING;
}

int TouchScrollCircle_CalcScrollAmount(const TouchScrollCircle *scrollCircle)
{
    u16 currentAngle = TouchScrollCircle_GetTouchAngle(scrollCircle, scrollCircle->currentTouchX, scrollCircle->currentTouchY);
    return TouchScrollCircle_CalcScrollAmountFromAngle(scrollCircle, scrollCircle->initialTouchAngle, currentAngle);
}

static u16 TouchScrollCircle_GetTouchAngle(const TouchScrollCircle *scrollCircle, u32 x, u32 y)
{
    fx32 relativeX = (int)(x - scrollCircle->circleX) << FX32_SHIFT;
    fx32 relativeY = (int)(y - scrollCircle->circleY) << FX32_SHIFT;

    return FX_Atan2Idx(relativeY, relativeX);
}

static int TouchScrollCircle_CalcScrollAmountFromAngle(const TouchScrollCircle *scrollCircle, u16 initialAngle, u16 currentAngle)
{
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

    return i * angleChangeDirection * scrollCircle->buttonDirection;
}
