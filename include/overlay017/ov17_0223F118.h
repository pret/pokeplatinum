#ifndef POKEPLATINUM_OV17_0223F118_H
#define POKEPLATINUM_OV17_0223F118_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02095C48.h"

#include "overlay017/struct_ov17_0223F2E4.h"
#include "overlay017/struct_ov17_0223F6E8.h"
#include "overlay017/struct_ov17_0223F744.h"

#include "strbuf.h"
#include "text.h"

GenericPointerData *ov17_0223F140(int param0);
void ov17_0223F1E0(GenericPointerData *param0);
void ov17_0223F1E8(int param0, BGL *param1, SpriteGfxHandler *param2, UnkStruct_02012744 *param3, UnkStruct_ov17_0223F2E4 *param4, const Strbuf *param5, enum Font param6, TextColor param7, int param8, int param9, int param10, int param11, int param12, int param13, int param14);
void ov17_0223F2E4(UnkStruct_ov17_0223F2E4 *param0);
void ov17_0223F2F8(UnkStruct_ov17_0223F2E4 *param0, int param1, int param2, int param3);
Strbuf *ov17_0223F310(u32 param0, u32 param1);
void ov17_0223F334(UnkStruct_02095C48 *param0, int param1);
void ov17_0223F374(UnkStruct_02095C48 *param0);
void ov17_0223F560(SpriteRenderer *param0, SpriteGfxHandler *param1, PaletteData *param2, int param3, int param4, int param5, int param6);
void ov17_0223F5E8(SpriteGfxHandler *param0, int param1, int param2, int param3, int param4);
void ov17_0223F630(UnkStruct_ov17_0223F6E8 *param0, SpriteRenderer *param1, SpriteGfxHandler *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, u32 param10);
void ov17_0223F6C4(UnkStruct_ov17_0223F6E8 *param0);
UnkStruct_ov17_0223F744 *ov17_0223F70C(int param0, PaletteData *param1, const u16 *param2, int param3, int param4, u32 param5);
void ov17_0223F744(UnkStruct_ov17_0223F744 *param0);
BOOL ov17_0223F760(void);

#endif // POKEPLATINUM_OV17_0223F118_H
