#ifndef POKEPLATINUM_STRUCT_BOX_TOUCH_DIAL_HELPER_H
#define POKEPLATINUM_STRUCT_BOX_TOUCH_DIAL_HELPER_H

enum DialID {
    DIALS_NONE = 0,
    DIALS_BOX_JUMP,
    DIALS_MARKINGS,
};

typedef struct BoxDialHelper {
    u8 selectedDial;
    u8 markingsButtonsScrollOffset;
    u8 dialOffset;
    u8 padding_03;
    s16 scrollDelta;
} BoxDialHelper;

#endif // POKEPLATINUM_STRUCT_BOX_TOUCH_DIAL_HELPER_H
