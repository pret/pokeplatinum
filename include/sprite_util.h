#ifndef POKEPLATINUM_UNK_02009714_H
#define POKEPLATINUM_UNK_02009714_H

#include "constants/heap.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_defs/struct_02009CFC.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02009F38_decl.h"

#include <nnsys.h>

enum SpriteResourceType {
    SPRITE_RESOURCE_CHAR = 0,
    SPRITE_RESOURCE_PALETTE,
    SPRITE_RESOURCE_CELL,
    SPRITE_RESOURCE_CELL_ANIM,
    SPRITE_RESOURCE_MULTI_CELL,
    SPRITE_RESOURCE_MULTI_CELL_ANIM,
};

SpriteResourceCollection * SpriteResourceCollection_New(int param0, enum SpriteResourceType param1, enum HeapId param2);
void SpriteResourceCollection_Delete(SpriteResourceCollection * param0);
SpriteResource * sub_02009794(SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, int param2, int param3);
SpriteResource * SpriteResourceCollection_AddChar(SpriteResourceCollection * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6);
SpriteResource * SpriteResourceCollection_AddPalette(SpriteResourceCollection * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6, int param7);
SpriteResource * SpriteResourceCollection_Add(SpriteResourceCollection * param0, int param1, int param2, BOOL param3, int param4, enum SpriteResourceType param5, int param6);
void SpriteResourceCollection_ModifyChar(SpriteResourceCollection * param0, SpriteResource * param1, int param2, int param3, BOOL param4, int param5);
void SpriteResourceCollection_ModifyPalette(SpriteResourceCollection * param0, SpriteResource * param1, int param2, int param3, BOOL param4, int param5);
SpriteResource * SpriteResourceCollection_AddCharFrom(SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6);
SpriteResource * SpriteResourceCollection_AddCharFromEx(SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7);
SpriteResource * SpriteResourceCollection_AddPaletteFrom(SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7);
SpriteResource * SpriteResourceCollection_AddPaletteFromEx(SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7, int param8);
SpriteResource * SpriteResourceCollection_AddFrom(SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, enum SpriteResourceType param5, int param6);
void SpriteResourceCollection_ModifyCharFrom(SpriteResourceCollection * param0, SpriteResource * param1, NARC * param2, int param3, BOOL param4, int param5);
int sub_02009C80(SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, UnkStruct_02009CFC * param2, int param3);
void sub_02009CB4(SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, int param2, int param3, UnkStruct_02009CFC * param4, int param5);
UnkStruct_02009CFC * sub_02009CFC(int param0, int param1);
void sub_02009D20(UnkStruct_02009CFC * param0);
BOOL SpriteResourceCollection_IsIDUnused(const SpriteResourceCollection * param0, int param1);
void SpriteResource_ReleaseData(SpriteResource * param0);
void SpriteResourceCollection_Remove(SpriteResourceCollection * param0, SpriteResource * param1);
void SpriteResourceCollection_Clear(SpriteResourceCollection * param0);
SpriteResource * sub_02009DC8(const SpriteResourceCollection * param0, int param1);
int SpriteResource_GetID(const SpriteResource * param0);
NNSG2dCharacterData * sub_02009E1C(const SpriteResource * param0);
NNSG2dPaletteData * sub_02009E34(const SpriteResource * param0);
NNSG2dCellDataBank * sub_02009E4C(const SpriteResource * param0);
NNSG2dCellAnimBankData * sub_02009E64(const SpriteResource * param0);
NNSG2dMultiCellDataBank * sub_02009E7C(const SpriteResource * param0);
NNSG2dMultiCellAnimBankData * sub_02009E94(const SpriteResource * param0);
int sub_02009EAC(const SpriteResource * param0);
int sub_02009EBC(const SpriteResource * param0);
int sub_02009EE8(const SpriteResource * param0);
void sub_02009F08(SpriteResource * param0, int param1);
int sub_02009F34(void);
UnkStruct_02009F38 * sub_02009F38(UnkStruct_02009F38 * param0, int param1);
void sub_02009F40(const void * param0, UnkStruct_02009F38 * param1, int param2);
void sub_02009F8C(UnkStruct_02009F38 * param0);
int sub_02009FA4(const UnkStruct_02009F38 * param0);
int sub_02009FB4(const UnkStruct_02009F38 * param0, int param1);
int sub_02009FE8(const UnkStruct_02009F38 * param0, int param1);
int sub_0200A014(const UnkStruct_02009F38 * param0, int param1);
int sub_0200A040(const UnkStruct_02009F38 * param0, int param1);
int sub_0200A074(const UnkStruct_02009F38 * param0, int param1);

#endif // POKEPLATINUM_UNK_02009714_H
