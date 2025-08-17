#ifndef POKEPLATINUM_TOUCH_DIAL_H
#define POKEPLATINUM_TOUCH_DIAL_H

#include "touch_screen.h"

typedef struct TouchDial {
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
    int (*action)(struct TouchDial *, BOOL, BOOL);
} TouchDial;

enum TouchDialState {
    TOUCH_DIAL_NO_TOUCH,
    TOUCH_DIAL_INITIAL_TOUCH,
    TOUCH_DIAL_SCROLLING,
    TOUCH_DIAL_END_SCROLL
};

void TouchDial_Init(TouchDial *touchDial, int circleX, int circleY, int innerRadius, int outerRadius);
int TouchDial_HandleAction(TouchDial *touchDial);
int TouchDial_CalcScrollAmount(const TouchDial *touchDial);

#endif // POKEPLATINUM_TOUCH_DIAL_H
