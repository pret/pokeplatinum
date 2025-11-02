#ifndef POKEPLATINUM_CONSTANTS_COLORS_H
#define POKEPLATINUM_CONSTANTS_COLORS_H

// Equivalent to GX_RGB_ constants
#define COLOR_RGB_R_MASK  0x001F
#define COLOR_RGB_G_SHIFT 5
#define COLOR_RGB_B_SHIFT 10

#define ColorR(source) ((source) & COLOR_RGB_R_MASK)
#define ColorG(source) (((source) >> COLOR_RGB_G_SHIFT) & COLOR_RGB_R_MASK)
#define ColorB(source) (((source) >> COLOR_RGB_B_SHIFT) & COLOR_RGB_R_MASK)
#define RGB(r, g, b)   (((b) << COLOR_RGB_B_SHIFT) | ((g) << COLOR_RGB_G_SHIFT) | (r))

#define COLOR_BLACK       RGB(0, 0, 0)
#define COLOR_DARK_GRAY   RGB(4, 4, 4)
#define COLOR_WHITE       RGB(31, 31, 31)
#define COLOR_GRAY        RGB(16, 16, 16)
#define COLOR_RED         RGB(31, 0, 0)
#define COLOR_TRANSPARENT RGB(31, 31, 16)
#define COLOR_SAVED       0xFFFF

#endif // POKEPLATINUM_CONSTANTS_COLORS_H
