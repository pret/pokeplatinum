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

SpriteResourceCollection *SpriteResourceCollection_New(int capacity, enum SpriteResourceType type, enum HeapId heapID);
void SpriteResourceCollection_Delete(SpriteResourceCollection *spriteResources);
SpriteResource *SpriteResourceCollection_AddFromTable(SpriteResourceCollection *spriteResources, const SpriteResourceTable *table, int index, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddChar(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddPalette(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_Add(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, BOOL compressed, int id, enum SpriteResourceType type, enum HeapId heapID);
void SpriteResourceCollection_ModifyChar(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, int narcIdx, int memberIdx, BOOL compressed, enum HeapId heapID);
void SpriteResourceCollection_ModifyPalette(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, int narcIdx, int memberIdx, BOOL compressed, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddCharFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddCharFromEx(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID, int param7);
SpriteResource *SpriteResourceCollection_AddPaletteFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddPaletteFromEx(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID, int param8);
SpriteResource *SpriteResourceCollection_AddFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, enum SpriteResourceType type, enum HeapId heapID);
void SpriteResourceCollection_ModifyCharFrom(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, NARC *narc, int memberIdx, BOOL compressed, enum HeapId heapID);
int SpriteResourceCollection_AddTable(SpriteResourceCollection * param0, const SpriteResourceTable * param1, SpriteResourceList * param2, int param3);
void SpriteResoureCollection_AddTableEx(SpriteResourceCollection * param0, const SpriteResourceTable * param1, int param2, int param3, SpriteResourceList * param4, int param5);
SpriteResourceList * SpriteResourceList_New(int param0, int param1);
void SpriteResourceList_Delete(SpriteResourceList * param0);
BOOL SpriteResourceCollection_IsIDUnused(const SpriteResourceCollection * param0, int param1);
void SpriteResource_ReleaseData(SpriteResource * param0);
void SpriteResourceCollection_Remove(SpriteResourceCollection * param0, SpriteResource * param1);
void SpriteResourceCollection_Clear(SpriteResourceCollection * param0);
SpriteResource * SpriteResourceCollection_Find(const SpriteResourceCollection * param0, int param1);
int SpriteResource_GetID(const SpriteResource * param0);
NNSG2dCharacterData * SpriteResource_GetCharData(const SpriteResource * param0);
NNSG2dPaletteData * SpriteResource_GetPaletteData(const SpriteResource * param0);
NNSG2dCellDataBank * SpriteResource_GetCellData(const SpriteResource * param0);
NNSG2dCellAnimBankData * SpriteResource_GetCellAnimData(const SpriteResource * param0);
NNSG2dMultiCellDataBank * SpriteResource_GetMultiCellData(const SpriteResource * param0);
NNSG2dMultiCellAnimBankData * SpriteResource_GetMultiCellAnimData(const SpriteResource * param0);
enum SpriteResourceType SpriteResource_GetType(const SpriteResource * param0);
NNS_G2D_VRAM_TYPE SpriteResource_GetVRAMType(const SpriteResource *spriteRes);
int SpriteResource_GetPaletteIndex(const SpriteResource *spriteRes);
void SpriteResource_SetVRAMType(SpriteResource * param0, NNS_G2D_VRAM_TYPE param1);
int SpriteResourceTable_Size(void);
SpriteResourceTable * SpriteResourceTable_GetArrayElement(SpriteResourceTable * param0, int param1);
void SpriteResourceTable_LoadFromBinary(const void * param0, SpriteResourceTable * param1, int param2);
void SpriteResourceTable_Clear(SpriteResourceTable * param0);
int SpriteResourceTable_GetCount(const SpriteResourceTable * param0);
int SpriteResourceTable_GetEntryID(const SpriteResourceTable * param0, int param1);
int SpriteResourceTable_GetNARCEntryMemberIndex(const SpriteResourceTable * param0, int param1);
BOOL SpriteResourceTable_IsNARCEntryCompressed(const SpriteResourceTable * param0, int param1);
NNS_G2D_VRAM_TYPE SpriteResourceTable_GetEntryVRAMType(const SpriteResourceTable * param0, int param1);
int SpriteResourceTable_GetPaletteIndex(const SpriteResourceTable * param0, int param1);

#endif // POKEPLATINUM_UNK_02009714_H
