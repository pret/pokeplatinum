#ifndef POKEPLATINUM_UNK_02012744_H
#define POKEPLATINUM_UNK_02012744_H

#include <nitro/gx.h>

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02012B20_decl.h"
#include "struct_defs/struct_020127E8.h"

#include "bg_window.h"
#include "sprite.h"

UnkStruct_02012744 *sub_02012744(int param0, int param1);
void sub_020127BC(UnkStruct_02012744 *param0);
FontOAM *sub_020127E8(const FontOAMInitData *param0);
void sub_02012870(FontOAM *param0);
int sub_02012898(const Window *param0, int param1, int param2);
void sub_020128C4(FontOAM *param0, int param1, int param2);
void sub_02012938(FontOAM *param0);
void sub_020129A4(const FontOAM *param0, int *param1, int *param2);
void FontOAM_SetDrawFlag(FontOAM *param0, BOOL param1);
void sub_02012A00(FontOAM *param0, u8 param1);
void sub_02012A30(FontOAM *param0, u32 param1);
void sub_02012A60(FontOAM *param0, u32 param1);
void sub_02012A90(FontOAM *param0, u32 param1);
void sub_02012AC0(FontOAM *param0, u32 param1);
void sub_02012AF0(FontOAM *param0, GXOamMode param1);
UnkStruct_02012B20 *sub_02012B20(const Window *param0, int param1);
void sub_02012B48(UnkStruct_02012B20 *param0);
int sub_02012B58(const UnkStruct_02012B20 *param0, int param1);
FontOAM *sub_02012B60(const FontOAMInitData *param0, const UnkStruct_02012B20 *param1);
void sub_02012BD8(FontOAM *param0);
void sub_02012BE0(FontOAM *param0, const UnkStruct_02012B20 *param1, const Window *param2, int param3);
void sub_02012C60(const Window *param0, int param1, int param2, int param3, int param4, char *param5);
void sub_020131E0(FontOAM *param0, const Sprite *param1);

#endif // POKEPLATINUM_UNK_02012744_H
