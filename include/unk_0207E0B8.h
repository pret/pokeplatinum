#ifndef POKEPLATINUM_UNK_0207E0B8_H
#define POKEPLATINUM_UNK_0207E0B8_H

#include "struct_defs/struct_0207F248.h"

void sub_0207EA74(GameWindowLayout *windowLayout, int param1);
u8 sub_0207EF04(GameWindowLayout *windowLayout, u8 param1);
u8 sub_0207EF14(GameWindowLayout *windowLayout, u8 partySlot);
const u16 *sub_0207F248(GameWindowLayout *windowLayout);
void sub_0207F8F8(GameWindowLayout *windowLayout, u8 partySlot);
void sub_0207FD68(GameWindowLayout *windowLayout, u8 partySlot);
u8 sub_02080354(GameWindowLayout *windowLayout, u8 partySlot);
u8 sub_02080404(GameWindowLayout *windowLayout, u8 partySlot);
u8 sub_02080488(GameWindowLayout *windowLayout, u8 partySlot);
u8 sub_020805D0(u8 param0, u8 param1);
u8 GetElementIndex(u16 param0);
u32 sub_02081930(void);
u32 sub_02081934(void);
u32 sub_02081938(void);
u32 sub_0208193C(void);
void LoadScreenDataFromNARC(u32 param0, u16 *param1, u16 *param2, u16 *param3);
void LoadOverlay118(GameWindowLayout *windowLayout);
void UnloadOverlay118(GameWindowLayout *windowLayout);

#endif // POKEPLATINUM_UNK_0207E0B8_H
