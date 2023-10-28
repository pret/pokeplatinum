#ifndef POKEPLATINUM_UNK_0208C098_H
#define POKEPLATINUM_UNK_0208C098_H

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"

#include <nnsys.h>

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
u8 sub_0208C0D4(u32 param0, u32 param1);
u8 sub_0208C104(u16 param0, u16 param1, u32 param2);
void sub_0208C120(u8 param0, u32 param1);
u8 sub_0208C15C(s16 * param0, u16 param1);
void sub_0208C210(BGL * param0, int param1, NARC * param2, int param3, int param4, int param5, int param6, u16 param7, u16 param8);
void * sub_0208C2F4(NARC * param0, int param1, int param2, NNSG2dScreenData ** param3, int param4);

#endif // POKEPLATINUM_UNK_0208C098_H
