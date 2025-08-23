#ifndef POKEPLATINUM_STRUCT_BOX_TOUCH_DIAL_HELPER_H
#define POKEPLATINUM_STRUCT_BOX_TOUCH_DIAL_HELPER_H

enum TouchDials {
    TOUCH_DIALS_NONE,
    TOUCH_DIALS_BOX_JUMP,
    TOUCH_DIALS_MARKINGS
};

typedef struct BoxTouchDialHelper {
    u8 selectedTouchDial;
    u8 markingsButtonsScrollOffset;
    u8 touchDialOffset;
    u8 padding_03;
    s16 scrollDelta;
} BoxTouchDialHelper;

#endif // POKEPLATINUM_STRUCT_BOX_TOUCH_DIAL_HELPER_H
