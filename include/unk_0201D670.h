#ifndef POKEPLATINUM_UNK_0201D670_H
#define POKEPLATINUM_UNK_0201D670_H

#include "struct_defs/struct_0201D670.h"
#include "struct_defs/struct_0201D738.h"
#include "struct_defs/struct_0201D834.h"
#include "functypes/funcptr_0201D834.h"
#include "strbuf.h"
#include "struct_defs/struct_0205AA50.h"

void sub_0201D670(const UnkStruct_0201D670 * param0);
void sub_0201D710(void);
u8 Message_Printing(u8 param0);
void sub_0201D730(u8 param0);

/**
 * @brief Print a string into the target window.
 * 
 * @param window        The window which will display the printed string.
 * @param fontID        ID of the font to be used.
 * @param strbuf        String which will be printed.
 * @param xOffset       X-offset to apply to the left-edge of the cursor before printing.
 * @param yOffset       Y-offset to apply to the top-edge of the cursor before printing.
 * @param renderDelay   Delay in frames to apply between rendering each character of the string.
 * @param callback      Callback function when done printing.
 * @return 
 */
u8 PrintStringSimple(Window *window, u32 fontID, const Strbuf *strbuf, u32 xOffset, u32 yOffset, u32 renderDelay, UnkFuncPtr_0201D834 callback);
u8 sub_0201D78C(Window * param0, u32 param1, const Strbuf *param2, u32 param3, u32 param4, u32 param5, u32 param6, UnkFuncPtr_0201D834 param7);
u8 sub_0201D7E0(Window * param0, u32 param1, const Strbuf *param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, UnkFuncPtr_0201D834 param9);
u8 sub_0201D834(const UnkStruct_0201D738 * param0, u32 param1, UnkFuncPtr_0201D834 param2);
void sub_0201D9FC(u8 param0, u8 param1, u8 param2);
void sub_0201DAA0(u32 param0, u32 param1);
void sub_0201DB8C(UnkStruct_0201D834 * param0, u16 param1, u16 param2, u16 param3);

#endif // POKEPLATINUM_UNK_0201D670_H
