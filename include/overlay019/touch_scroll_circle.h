#ifndef POKEPLATINUM_TOUCH_SCROLL_CIRCLE_H
#define POKEPLATINUM_TOUCH_SCROLL_CIRCLE_H

#include "touch_screen.h"

typedef struct TouchScrollCircle {
    u32 unused; // always 0, never read from
    u32 initialTouchX;
    u32 initialTouchY;
    u32 circleX;
    u32 circleY;
    u32 currentTouchX;
    u32 currentTouchY;
    BOOL touchInBounds;
    u16 initialTouchAngle;
    u8 padding_22[2];
    int buttonDirection;
    TouchScreenHitTable innerCircle;
    TouchScreenHitTable outerCircle;
    int (*action)(struct TouchScrollCircle *, BOOL, BOOL);
} TouchScrollCircle;

enum TouchScrollCircleState {
    SCROLL_CIRCLE_NO_TOUCH,
    SCROLL_CIRCLE_INITIAL_TOUCH,
    SCROLL_CIRCLE_SCROLLING,
    SCROLL_CIRCLE_END_SCROLL
};

void TouchScrollCircle_Init(TouchScrollCircle *scrollCircle, int circleX, int circleY, int innerRadius, int outerRadius);
int TouchScrollCircle_HandleAction(TouchScrollCircle *scrollCircle);
int TouchScrollCircle_CalcScrollAmount(const TouchScrollCircle *scrollCircle);

#endif // POKEPLATINUM_TOUCH_SCROLL_CIRCLE_H
