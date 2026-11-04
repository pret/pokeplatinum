#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_DIAL_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_DIAL_H

#include "touch_screen.h"

typedef struct BoxDial {
    u32 unread_00;
    u32 initialTouchX;
    u32 initialTouchY;
    u32 circleX;
    u32 circleY;
    u32 currentTouchX;
    u32 currentTouchY;
    BOOL touchInBounds;
    u16 initialTouchAngle;
    u8 padding_22[2];
    int scrollSign;
    TouchScreenHitTable innerCircle;
    TouchScreenHitTable outerCircle;
    int (*action)(struct BoxDial *, BOOL, BOOL);
} BoxDial;

enum BoxDialState {
    BOX_DIAL_NO_TOUCH = 0,
    BOX_DIAL_INITIAL_TOUCH,
    BOX_DIAL_SCROLLING,
    BOX_DIAL_END_SCROLL,
};

void BoxDial_Init(BoxDial *dial, int circleX, int circleY, int innerRadius, int outerRadius);
int BoxDial_HandleAction(BoxDial *dial);
int BoxDial_CalcScrollAmount(const BoxDial *dial);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_DIAL_H
