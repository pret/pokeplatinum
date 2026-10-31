#include "applications/pc_boxes/dial.h"

#include <nitro.h>

#include "touch_screen.h"

static void BoxDial_RegisterAction(BoxDial *dial, int (*action)(BoxDial *, BOOL, BOOL));
static int BoxDial_TrySetInitialTouchAction(BoxDial *dial, BOOL touchInBounds, BOOL isNewTouch);
static int BoxDial_WaitForReleaseAction(BoxDial *dial, BOOL touchInBounds, BOOL isNewTouch);
static u16 BoxDial_GetTouchAngle(const BoxDial *dial, u32 x, u32 y);
static int BoxDial_CalcScrollAmountFromAngle(const BoxDial *dial, u16 initialAngle, u16 currentAngle);

void BoxDial_Init(BoxDial *dial, int circleX, int circleY, int innerRadius, int outerRadius)
{
    dial->action = BoxDial_TrySetInitialTouchAction;
    dial->touchInBounds = FALSE;
    dial->circleX = circleX;
    dial->circleY = circleY;
    dial->currentTouchX = circleX;
    dial->currentTouchY = circleY;
    dial->initialTouchX = circleX;
    dial->initialTouchY = circleY;
    dial->innerCircle.circle.code = TOUCHSCREEN_USE_CIRCLE;
    dial->innerCircle.circle.x = circleX;
    dial->innerCircle.circle.y = circleY;
    dial->innerCircle.circle.r = innerRadius;
    dial->outerCircle.circle.code = TOUCHSCREEN_USE_CIRCLE;
    dial->outerCircle.circle.x = circleX;
    dial->outerCircle.circle.y = circleY;
    dial->outerCircle.circle.r = outerRadius;

    if (circleX < HW_LCD_WIDTH / 2) {
        dial->scrollSign = 1;
    } else {
        dial->scrollSign = -1;
    }
}

int BoxDial_HandleAction(BoxDial *dial)
{
    BOOL touchInBounds, isNewTouch;

    if (TouchScreen_LocationHeld(&dial->outerCircle) == TRUE && TouchScreen_LocationHeld(&dial->innerCircle) == FALSE) {
        u32 x, y;

        touchInBounds = TRUE;
        isNewTouch = !dial->touchInBounds;

        if (TouchScreen_GetHoldState(&x, &y)) {
            dial->currentTouchX = x;
            dial->currentTouchY = y;
        }
    } else {
        touchInBounds = FALSE;
        isNewTouch = FALSE;
    }

    dial->touchInBounds = touchInBounds;
    return dial->action(dial, touchInBounds, isNewTouch);
}

static void BoxDial_RegisterAction(BoxDial *dial, int (*action)(BoxDial *, BOOL, BOOL))
{
    dial->unread_00 = 0;
    dial->action = action;
}

static int BoxDial_TrySetInitialTouchAction(BoxDial *dial, BOOL touchInBounds, BOOL isNewTouch)
{
    if (touchInBounds && isNewTouch) {
        dial->initialTouchX = dial->currentTouchX;
        dial->initialTouchY = dial->currentTouchY;
        dial->initialTouchAngle = BoxDial_GetTouchAngle(dial, dial->initialTouchX, dial->initialTouchY);
        BoxDial_RegisterAction(dial, BoxDial_WaitForReleaseAction);
        return BOX_DIAL_INITIAL_TOUCH;
    }

    return BOX_DIAL_NO_TOUCH;
}

static int BoxDial_WaitForReleaseAction(BoxDial *dial, BOOL touchInBounds, BOOL isNewTouch)
{
    if (touchInBounds == FALSE) {
        BoxDial_RegisterAction(dial, BoxDial_TrySetInitialTouchAction);
        return BOX_DIAL_END_SCROLL;
    }

    return BOX_DIAL_SCROLLING;
}

int BoxDial_CalcScrollAmount(const BoxDial *dial)
{
    u16 currentAngle = BoxDial_GetTouchAngle(dial, dial->currentTouchX, dial->currentTouchY);
    return BoxDial_CalcScrollAmountFromAngle(dial, dial->initialTouchAngle, currentAngle);
}

static u16 BoxDial_GetTouchAngle(const BoxDial *dial, u32 x, u32 y)
{
    fx32 relativeX = (int)(x - dial->circleX) << FX32_SHIFT;
    fx32 relativeY = (int)(y - dial->circleY) << FX32_SHIFT;

    return FX_Atan2Idx(relativeY, relativeX);
}

static int BoxDial_CalcScrollAmountFromAngle(const BoxDial *dial, u16 initialAngle, u16 currentAngle)
{
    static const u16 angleBreakpoints[] = {
        FX_DEG_TO_IDX(FX32_CONST(4.219)), // minimum turn to scroll 1 step
        FX_DEG_TO_IDX(FX32_CONST(33.75)), // minimum turn to scroll 2 steps
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

    return i * angleChangeDirection * dial->scrollSign;
}
