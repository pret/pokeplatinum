#ifndef POKEPLATINUM_SPRITE_RESOURCE_H
#define POKEPLATINUM_SPRITE_RESOURCE_H

#include "constants/heap.h"
#include "resource_collection.h"

#include "struct_decls/struct_02006C24_decl.h"

#include <nnsys.h>

enum SpriteResourceType {
    SPRITE_RESOURCE_TILES = 0,
    SPRITE_RESOURCE_PALETTE,
    SPRITE_RESOURCE_SPRITE,
    SPRITE_RESOURCE_SPRITE_ANIM,
    SPRITE_RESOURCE_MULTI_SPRITE,
    SPRITE_RESOURCE_MULTI_SPRITE_ANIM,
};

typedef struct SpriteResource {
    Resource *rawResource;
    enum SpriteResourceType type;
    void *data;
} SpriteResource;

typedef struct SpriteResourceCollection {
    ResourceCollection *collection;
    SpriteResource *resources;
    int capacity;
    int count;
    enum SpriteResourceType type;
} SpriteResourceCollection;

typedef struct SpriteResourceTableEntryFile {
    int id;
    char filename[64];
    NNS_G2D_VRAM_TYPE vramType;
    int paletteIndex;
} SpriteResourceTableEntryFile;

typedef struct SpriteResourceTableEntryNARC {
    int narcIndex;
    int memberIndex;
    BOOL compressed;
    int id;
    NNS_G2D_VRAM_TYPE vramType;
    int paletteIndex;
} SpriteResourceTableEntryNARC;

typedef struct SpriteResourceTable {
    void *entries;
    int count;
    enum SpriteResourceType type;
    u8 isNARC; // Whether the entries are SpriteResourceTableEntryNARC or SpriteResourceTableEntryFile
} SpriteResourceTable;

// Fixed size, non-owning list of SpriteResource pointers
typedef struct SpriteResourceList {
    SpriteResource **resources;
    int capacity;
    int count;
} SpriteResourceList;

SpriteResourceCollection *SpriteResourceCollection_New(int capacity, enum SpriteResourceType type, enum HeapId heapID);
void SpriteResourceCollection_Delete(SpriteResourceCollection *spriteResources);
SpriteResource *SpriteResourceCollection_AddFromTable(SpriteResourceCollection *spriteResources, const SpriteResourceTable *table, int index, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddTiles(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddPalette(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_Add(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, BOOL compressed, int id, enum SpriteResourceType type, enum HeapId heapID);
void SpriteResourceCollection_ModifyTiles(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, int narcIdx, int memberIdx, BOOL compressed, enum HeapId heapID);
void SpriteResourceCollection_ModifyPalette(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, int narcIdx, int memberIdx, BOOL compressed, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddTilesFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddTilesFromEx(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID, int param7);
SpriteResource *SpriteResourceCollection_AddPaletteFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID);
SpriteResource *SpriteResourceCollection_AddPaletteFromEx(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID, int param8);
SpriteResource *SpriteResourceCollection_AddFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, BOOL compressed, int id, enum SpriteResourceType type, enum HeapId heapID);
void SpriteResourceCollection_ModifyTilesFrom(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, NARC *narc, int memberIdx, BOOL compressed, enum HeapId heapID);
int SpriteResourceCollection_AddTable(SpriteResourceCollection *spriteResources, const SpriteResourceTable *table, SpriteResourceList *outList, enum HeapId heapID);
void SpriteResoureCollection_AddTableEx(SpriteResourceCollection *spriteResources, const SpriteResourceTable *table, int first, int count, SpriteResourceList *outList, enum HeapId heapID);
SpriteResourceList *SpriteResourceList_New(int capacity, enum HeapId heapID);
void SpriteResourceList_Delete(SpriteResourceList *list);
BOOL SpriteResourceCollection_IsIDUnused(const SpriteResourceCollection *spriteResources, int id);
void SpriteResource_ReleaseData(SpriteResource *spriteRes);
void SpriteResourceCollection_Remove(SpriteResourceCollection *spriteResources, SpriteResource *resource);
void SpriteResourceCollection_Clear(SpriteResourceCollection *spriteResources);
SpriteResource *SpriteResourceCollection_Find(const SpriteResourceCollection *spriteResources, int id);
int SpriteResource_GetID(const SpriteResource *spriteRes);
NNSG2dCharacterData *SpriteResource_GetTileData(const SpriteResource *spriteRes);
NNSG2dPaletteData *SpriteResource_GetPaletteData(const SpriteResource *spriteRes);
NNSG2dCellDataBank *SpriteResource_GetSpriteData(const SpriteResource *spriteRes);
NNSG2dCellAnimBankData *SpriteResource_GetSpriteAnimData(const SpriteResource *spriteRes);
NNSG2dMultiCellDataBank *SpriteResource_GetMultiSpriteData(const SpriteResource *spriteRes);
NNSG2dMultiCellAnimBankData *SpriteResource_GetMultiSpriteAnimData(const SpriteResource *spriteRes);
enum SpriteResourceType SpriteResource_GetType(const SpriteResource *spriteRes);
NNS_G2D_VRAM_TYPE SpriteResource_GetVRAMType(const SpriteResource *spriteRes);
int SpriteResource_GetPaletteIndex(const SpriteResource *spriteRes);
void SpriteResource_SetVRAMType(SpriteResource *spriteRes, NNS_G2D_VRAM_TYPE vramType);
int SpriteResourceTable_Size(void);
SpriteResourceTable *SpriteResourceTable_GetArrayElement(SpriteResourceTable *table, int index);
void SpriteResourceTable_LoadFromBinary(const void *data, SpriteResourceTable *table, enum HeapId heapID);
void SpriteResourceTable_Clear(SpriteResourceTable *table);
int SpriteResourceTable_GetCount(const SpriteResourceTable *table);
int SpriteResourceTable_GetEntryID(const SpriteResourceTable *table, int index);
int SpriteResourceTable_GetNARCEntryMemberIndex(const SpriteResourceTable *table, int index);
BOOL SpriteResourceTable_IsNARCEntryCompressed(const SpriteResourceTable *table, int index);
NNS_G2D_VRAM_TYPE SpriteResourceTable_GetEntryVRAMType(const SpriteResourceTable *table, int index);
int SpriteResourceTable_GetPaletteIndex(const SpriteResourceTable *table, int index);

#endif // POKEPLATINUM_SPRITE_RESOURCE_H
