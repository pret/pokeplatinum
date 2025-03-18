#ifndef POKEPLATINUM_OV21_021D4C0C_H
#define POKEPLATINUM_OV21_021D4C0C_H

#include "generated/text_banks.h"

#include "overlay021/struct_ov21_021D1FA4.h"
#include "overlay021/struct_ov21_021D4C0C_decl.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"

#include "bg_window.h"
#include "strbuf.h"

UnkStruct_ov21_021D4C0C *ov21_021D4C0C(const UnkStruct_ov21_021D1FA4 *param0);
void ov21_021D4C6C(UnkStruct_ov21_021D4C0C *param0);
UnkStruct_ov21_021D4CA0 *ov21_021D4CA0(const UnkStruct_ov21_021D4CB8 *param0);
UnkStruct_ov21_021D4CA0 *ov21_021D4CB8(const UnkStruct_ov21_021D4CB8 *param0, int param1);
void ov21_021D4D1C(UnkStruct_ov21_021D4CA0 *param0);
void ov21_021D4D3C(UnkStruct_ov21_021D4C0C *param0);
Window *ov21_021D4D6C(UnkStruct_ov21_021D4C0C *param0, int param1, int param2);
void ov21_021D4DA0(Window *param0);
u32 Pokedex_DisplayMessage(UnkStruct_ov21_021D4C0C *param0, Window *window, u32 bankID, u32 entryID, int xOffset, int yOffset);
void ov21_021D4E10(UnkStruct_ov21_021D4C0C *param0, Window *param1, u32 param2, u32 param3);
void ov21_021D4E80(UnkStruct_ov21_021D4C0C *param0, Window *param1, Strbuf *param2, int param3, int param4);

#endif // POKEPLATINUM_OV21_021D4C0C_H
