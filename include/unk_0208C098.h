#ifndef POKEPLATINUM_UNK_0208C098_H
#define POKEPLATINUM_UNK_0208C098_H

#include <nnsys.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "bg_window.h"

enum BarColor {
    BARCOLOR_EMPTY = 0,
    BARCOLOR_RED,
    BARCOLOR_YELLOW,
    BARCOLOR_GREEN,

    BARCOLOR_MAX,
};

int sub_0208C098(int param0);
u32 sub_0208C0A4(u32 param0, u32 param1);

/**
 * @brief Determine how many pixels are needed to represent a fractional value.
 *
 * @param cur       The current value; the fraction's numerator.
 * @param max       The maximum value; the fraction's denominator.
 * @param maxPixels How many pixels would be used to display max / max.
 * @return The number of pixels needed to display cur / max.
 */
u8 App_PixelCount(u32 cur, u32 max, u8 maxPixels);

/**
 * @brief Determine what color should be used for a value represented by a
 * visual bar, e.g. the health bar in battle.
 *
 * @param cur   The current value of the bar.
 * @param max   The maximum value of the bar.
 * @return The color to be used for the bar's current value.
 */
u8 App_BarColor(u32 cur, u32 max);

/**
 * @brief Determine the color of the health bar.
 *
 * @param curHP     The current HP value.
 * @param maxHP     The maximum HP value.
 * @param barSize   The size of the health bar, in pixels.
 * @return The color to be used for the health bar's current value.
 */
u8 HealthBar_Color(u16 curHP, u16 maxHP, u32 barSize);
void sub_0208C120(u8 param0, u32 param1);
u8 sub_0208C15C(s16 *param0, u16 param1);
void sub_0208C210(BgConfig *param0, int param1, NARC *param2, int param3, int param4, int param5, int param6, u16 param7, u16 param8);
void *sub_0208C2F4(NARC *param0, int param1, int param2, NNSG2dScreenData **param3, int param4);

#endif // POKEPLATINUM_UNK_0208C098_H
