#ifndef POKEPLATINUM_TOUCH_SCREEN_H
#define POKEPLATINUM_TOUCH_SCREEN_H

#define TOUCHSCREEN_USE_CIRCLE 0xfe
#define TOUCHSCREEN_INPUT_NONE -1

/**
 * These two structs represent regions that can be checked on the touch screen.
 * The first struct, TouchScreenRect, is for strictly rectangular regions.
 * The second struct, TouchScreenHitTable, is for rectangles OR circles.
 * To enable circle mode, set the 'code' value to TOUCHSCREEN_USE_CIRCLE.
 */
typedef union {
    struct {
        u8 top;
        u8 bottom;
        u8 left;
        u8 right;
    } rect;

    struct {
        u8 code;
        u8 x;
        u8 y;
        u8 r;
    } circle;
} TouchScreenRect, TouchScreenHitTable;

int TouchScreen_CheckRectangleHeld(const TouchScreenRect *rect);
int TouchScreen_CheckRectanglePressed(const TouchScreenRect *rect);
int sub_02022684(const TouchScreenHitTable *hitTable);
int sub_020226DC(const TouchScreenHitTable *hitTable);
BOOL TouchScreen_LocationHeld(const TouchScreenHitTable *hitTable);
BOOL TouchScreen_LocationPressed(const TouchScreenHitTable *hitTable);
BOOL TouchScreen_Touched(void);

/**
 * @brief Check if the touch screen is tapped.
 *
 * @return TRUE if the touch screen is tapped, FALSE otherwise.
 */
BOOL TouchScreen_Tapped(void);
BOOL TouchScreen_GetHoldState(u32 *x, u32 *y);
BOOL TouchScreen_GetTapState(u32 *x, u32 *y);
int sub_020227DC(const TouchScreenHitTable *hitTable, u32 param1, u32 param2);
BOOL sub_02022830(const TouchScreenHitTable *hitTable, u32 param1, u32 param2);

#endif // POKEPLATINUM_UNK_02022594_H
