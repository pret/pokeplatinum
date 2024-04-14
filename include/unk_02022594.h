#ifndef POKEPLATINUM_UNK_02022594_H
#define POKEPLATINUM_UNK_02022594_H

#define TOUCHSCREEN_USE_CIRCLE 0xfe

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

int sub_02022644(const TouchScreenRect *rect);
int sub_02022664(const TouchScreenRect *rect);
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
BOOL sub_020227A4(u32 * param0, u32 * param1);
BOOL sub_020227C0(u32 * param0, u32 * param1);
int sub_020227DC(const TouchScreenHitTable *hitTable, u32 param1, u32 param2);
BOOL sub_02022830(const TouchScreenHitTable *hitTable, u32 param1, u32 param2);

#endif // POKEPLATINUM_UNK_02022594_H
