#ifndef POKEPLATINUM_UNK_02006E3C_H
#define POKEPLATINUM_UNK_02006E3C_H

#include <nnsys.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "bg_window.h"

u32 sub_02006E3C(u32 param0, u32 param1, BGL *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void sub_02006E60(u32 param0, u32 param1, BGL *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void sub_02006E84(u32 param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5);
void sub_02006E9C(u32 param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6);
u32 sub_02006EC0(u32 param0, u32 param1, int param2, u32 param3, u32 param4, BOOL param5, u32 param6);
void sub_02006EE0(u32 param0, u32 param1, NNS_G2D_VRAM_TYPE param2, u32 param3, u32 param4, NNSG2dImagePaletteProxy *param5);
u32 sub_02006F00(u32 param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8);
void sub_02006F28(u32 param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8);
void *sub_02006F50(u32 param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 param4);
void *sub_02006F6C(u32 param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 param4);
void *sub_02006F88(u32 bankID, u32 memberIndex, NNSG2dPaletteData **param2, u32 param3);
void *sub_02006FA0(u32 param0, u32 param1, BOOL param2, NNSG2dCellDataBank **param3, u32 param4);
void *sub_02006FBC(u32 param0, u32 param1, BOOL param2, NNSG2dAnimBankData **param3, u32 param4);
void *sub_02006FD8(u32 param0, u32 param1, u32 param2);
void *sub_02006FE8(u32 param0, u32 param1, BOOL param2, u32 param3, int param4);
void *sub_02007068(u32 narcIndex, u32 fileIndex, BOOL param2, u32 heapID, int param4, u32 *fileSize);
u32 sub_020070E8(NARC *param0, u32 param1, BGL *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void sub_0200710C(NARC *param0, u32 param1, BGL *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void sub_02007130(NARC *param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5);
void sub_02007148(NARC *param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6);
void sub_0200716C(NARC *param0, u32 param1, NNS_G2D_VRAM_TYPE param2, u32 param3, u32 param4, NNSG2dImagePaletteProxy *param5);
u32 sub_0200718C(NARC *param0, u32 param1, BOOL param2, int param3, u32 param4, NNS_G2D_VRAM_TYPE param5, u32 param6, u32 param7, NNSG2dImageProxy *param8);
void *sub_020071B4(NARC *param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 param4);
void *sub_020071D0(NARC *param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 param4);
void *sub_020071EC(NARC *param0, u32 param1, NNSG2dPaletteData **param2, u32 param3);
void *sub_02007204(NARC *param0, u32 param1, BOOL param2, NNSG2dCellDataBank **param3, u32 param4);
void *sub_02007220(NARC *param0, u32 param1, BOOL param2, NNSG2dAnimBankData **param3, u32 param4);
void *sub_0200723C(NARC *param0, u32 param1, BOOL param2, u32 param3, int param4);
void *sub_02007250(NARC *param0, u32 param1, BOOL param2, u32 param3, int param4, u32 *param5);

#endif // POKEPLATINUM_UNK_02006E3C_H
