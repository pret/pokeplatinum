#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "nnsys/g2d/g2d_Image.h"
#include "struct_decls/struct_02006C24_decl.h"

#include "struct_defs/struct_02009CFC.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "sprite_util.h"
#include "heap.h"
#include "resource_collection.h"

#define SPRITE_VRAM_TYPE_DEFAULT NNS_G2D_VRAM_TYPE_3DMAIN
#define NARC_INDEX_NONE 0xFFFFFFFE

typedef struct SpriteResource_t {
    Resource *rawResource;
    enum SpriteResourceType type;
    void * data;
} SpriteResource;

typedef struct SpriteResourceCollection_t {
    ResourceCollection * collection;
    SpriteResource * resources;
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

typedef struct UnkStruct_02009F38_t {
    void *entries;
    int count;
    enum SpriteResourceType type;
    u8 isNARC; // Whether the entries are SpriteResourceTableEntryNARC or SpriteResourceTableEntryFile
} SpriteResourceTable;

typedef struct SpriteResourceTableBinary {
    enum SpriteResourceType type;
    union {
        SpriteResourceTableEntryFile fileEntries[1];
        SpriteResourceTableEntryNARC narcEntries[1];
    };
} SpriteResourceTableBinary;

typedef struct {
    NNSG2dCharacterData * charData;
    NNS_G2D_VRAM_TYPE vramType;
} CharResourceData;

typedef struct {
    NNSG2dPaletteData * paletteData;
    NNS_G2D_VRAM_TYPE vramType;
    int paletteIndex;
} PaletteResourceData;

typedef struct {
    NNSG2dCellDataBank * cellBank;
} CellResourceData;

typedef struct {
    NNSG2dAnimBankData * animBank;
} CellAnimResourceData;

typedef struct {
    NNSG2dMultiCellDataBank * multiCellBank;
} MultiCellResourceData;

typedef struct {
    NNSG2dAnimBankData * multiCellAnimBank;
} MultiCellAnimResourceData;

static SpriteResource *SpriteResourceCollection_AllocResource(SpriteResourceCollection *spriteResources);
static void SpriteResourceCollection_InitResFromFile(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, const char *filename, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum SpriteResourceType type, enum HeapId heapID);
static void SpriteResourceCollection_InitRes(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, int narcIdx, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum SpriteResourceType type, enum HeapId heapID, u32 param10);
static void SpriteResourceCollection_InitResFromNARC(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum SpriteResourceType type, enum HeapId heapID, u32 param10);
static void *SpriteUtil_ReadNARCMember(NARC *param0, u32 param1, BOOL param2, u32 param3, u32 param4);
static void SpriteResource_UnpackData(SpriteResource *spriteRes, enum SpriteResourceType type, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID);
static CharResourceData *SpriteUtil_UnpackCharacterResource(void *rawData, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID);
static PaletteResourceData *SpriteUtil_UnpackPaletteResource(void *rawData, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID);
static CellResourceData *SpriteUtil_UnpackCellResource(void *rawData, enum HeapId heapID);
static CellAnimResourceData *SpriteUtil_UnpackCellAnimResource(void *rawData, enum HeapId heapID);
static MultiCellResourceData *SpriteUtil_UnpackMultiCellResource(void *rawData, enum HeapId heapID);
static MultiCellAnimResourceData *SpriteUtil_UnpackMultiCellAnimResource(void *rawData, enum HeapId heapID);
static void *SpriteResource_GetData(const SpriteResource *spriteRes);
static void SpriteResource_FreeData(SpriteResource *spriteRes);
static int SpriteResourceTableEntryNARC_GetEntryCount(const SpriteResourceTableEntryNARC *param0);

SpriteResourceCollection *SpriteResourceCollection_New(int capacity, enum SpriteResourceType type, enum HeapId heapID)
{
    SpriteResourceCollection *spriteResources = Heap_AllocFromHeap(heapID, sizeof(SpriteResourceCollection));
    spriteResources->collection = ResourceCollection_New(capacity, heapID);
    spriteResources->resources = Heap_AllocFromHeap(heapID, sizeof(SpriteResource) * capacity);

    memset(spriteResources->resources, 0, sizeof(SpriteResource) * capacity);

    spriteResources->capacity = capacity;
    spriteResources->count = 0;
    spriteResources->type = type;

    return spriteResources;
}

void SpriteResourceCollection_Delete(SpriteResourceCollection *spriteResources)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->collection);
    GF_ASSERT(spriteResources->resources);

    SpriteResourceCollection_Clear(spriteResources);

    ResourceCollection_Delete(spriteResources->collection);
    spriteResources->collection = NULL;

    Heap_FreeToHeap(spriteResources->resources);
    spriteResources->resources = NULL;

    Heap_FreeToHeap(spriteResources);
    spriteResources = NULL;
}

SpriteResource *SpriteResourceCollection_AddFromTable(SpriteResourceCollection *spriteResources, 
    const SpriteResourceTable *table, int index, enum HeapId heapID)
{
    SpriteResource * spriteRes;
    SpriteResourceTableEntryFile * fileEntry;
    SpriteResourceTableEntryNARC * narcEntry;

    GF_ASSERT(spriteResources);
    GF_ASSERT(table);
    GF_ASSERT(table->count > index);
    GF_ASSERT(spriteResources->type == table->type);

    spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    if (table->isNARC == FALSE) {
        fileEntry = (SpriteResourceTableEntryFile *)table->entries + index;
        GF_ASSERT(SpriteResourceCollection_IsIDUnused(spriteResources, fileEntry->id) == TRUE);
        SpriteResourceCollection_InitResFromFile(
            spriteResources, 
            spriteRes, 
            fileEntry->filename, 
            fileEntry->id, 
            fileEntry->vramType, 
            fileEntry->paletteIndex, 
            table->type, 
            heapID
        );
    } else {
        narcEntry = (SpriteResourceTableEntryNARC *)table->entries + index;
        GF_ASSERT(SpriteResourceCollection_IsIDUnused(spriteResources, narcEntry->id) == TRUE);
        SpriteResourceCollection_InitRes(
            spriteResources, 
            spriteRes, 
            narcEntry->narcIndex, 
            narcEntry->memberIndex, 
            narcEntry->compressed, 
            narcEntry->id, 
            narcEntry->vramType, 
            narcEntry->paletteIndex, 
            table->type, 
            heapID, 
            0
        );
    }

    spriteResources->count++;
    return spriteRes;
}

SpriteResource *SpriteResourceCollection_AddChar(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, 
    BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_CHAR);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    SpriteResourceCollection_InitRes(
        spriteResources, 
        spriteRes, 
        narcIdx, 
        memberIdx, 
        compressed, 
        id, 
        vramType, 
        0, 
        SPRITE_RESOURCE_CHAR, 
        heapID, 
        0
    );

    spriteResources->count++;
    return spriteRes;
}

SpriteResource *SpriteResourceCollection_AddPalette(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, 
    BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_PALETTE);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    SpriteResourceCollection_InitRes(
        spriteResources, 
        spriteRes, 
        narcIdx, 
        memberIdx, 
        compressed, 
        id, 
        vramType, 
        paletteIdx, 
        SPRITE_RESOURCE_PALETTE, 
        heapID, 
        0
    );

    spriteResources->count++;
    return spriteRes;
}

SpriteResource *SpriteResourceCollection_Add(SpriteResourceCollection *spriteResources, int narcIdx, int memberIdx, 
    BOOL compressed, int id, enum SpriteResourceType type, enum HeapId heapID)
{
    GF_ASSERT(spriteResources);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    SpriteResourceCollection_InitRes(spriteResources, spriteRes, narcIdx, memberIdx, compressed, id, 0, 0, type, heapID, 0);

    spriteResources->count++;
    return spriteRes;
}

void SpriteResourceCollection_ModifyChar(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    int narcIdx, int memberIdx, BOOL compressed, enum HeapId heapID)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_CHAR);
    GF_ASSERT(spriteRes);
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_CHAR);

    int id = SpriteResource_GetID(spriteRes);
    NNS_G2D_VRAM_TYPE vramType = SpriteResource_GetVRAMType(spriteRes);

    SpriteResourceCollection_Remove(spriteResources, spriteRes);
    SpriteResourceCollection_InitRes(spriteResources, spriteRes, narcIdx, memberIdx, compressed, id, vramType, 0, SPRITE_RESOURCE_CHAR, heapID, 0);
}

void SpriteResourceCollection_ModifyPalette(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    int narcIdx, int memberIdx, BOOL compressed, enum HeapId heapID)
{

    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_PALETTE);
    GF_ASSERT(spriteRes);
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_PALETTE);

    int id = SpriteResource_GetID(spriteRes);
    NNS_G2D_VRAM_TYPE vramType = SpriteResource_GetVRAMType(spriteRes);
    int paletteIdx = SpriteResource_GetPaletteIndex(spriteRes);

    SpriteResourceCollection_Remove(spriteResources, spriteRes);
    SpriteResourceCollection_InitRes(
        spriteResources, 
        spriteRes, 
        narcIdx, 
        memberIdx, 
        compressed, 
        id, 
        vramType, 
        paletteIdx, 
        SPRITE_RESOURCE_PALETTE, 
        heapID, 
        0
    );
}

SpriteResource *SpriteResourceCollection_AddCharFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, 
    BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_CHAR);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    SpriteResourceCollection_InitResFromNARC(
        spriteResources, 
        spriteRes, 
        narc, 
        memberIdx, 
        compressed, 
        id, 
        vramType, 
        0, 
        SPRITE_RESOURCE_CHAR, 
        heapID, 
        0
    );

    spriteResources->count++;
    return spriteRes;
}

SpriteResource *SpriteResourceCollection_AddCharFromEx(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, 
    BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID, int param7)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_CHAR);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    SpriteResourceCollection_InitResFromNARC(
        spriteResources, 
        spriteRes, 
        narc, 
        memberIdx,
        compressed, 
        id, 
        vramType, 
        0, 
        SPRITE_RESOURCE_CHAR, 
        heapID, 
        param7
    );

    spriteResources->count++;
    return spriteRes;
}

SpriteResource *SpriteResourceCollection_AddPaletteFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, 
    BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_PALETTE);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    SpriteResourceCollection_InitResFromNARC(
        spriteResources, 
        spriteRes, 
        narc, 
        memberIdx, 
        compressed, 
        id, 
        vramType, 
        paletteIdx, 
        SPRITE_RESOURCE_PALETTE, 
        heapID, 
        0
    );

    spriteResources->count++;
    return spriteRes;
}

SpriteResource *SpriteResourceCollection_AddPaletteFromEx(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, 
    BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID, int param8)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_PALETTE);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    SpriteResourceCollection_InitResFromNARC(
        spriteResources, 
        spriteRes, 
        narc, 
        memberIdx, 
        compressed, 
        id, 
        vramType, 
        paletteIdx, 
        SPRITE_RESOURCE_PALETTE, 
        heapID, 
        param8
    );

    spriteResources->count++;
    return spriteRes;
}

SpriteResource *SpriteResourceCollection_AddFrom(SpriteResourceCollection *spriteResources, NARC *narc, int memberIdx, 
    BOOL compressed, int id, enum SpriteResourceType type, enum HeapId heapID)
{
    GF_ASSERT(spriteResources);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);
    GF_ASSERT(spriteRes);

    SpriteResourceCollection_InitResFromNARC(
        spriteResources, 
        spriteRes, 
        narc, 
        memberIdx, 
        compressed, 
        id, 
        SPRITE_VRAM_TYPE_DEFAULT, 
        0, 
        type, 
        heapID, 
        0
    );

    spriteResources->count++;
    return spriteRes;
}

void SpriteResourceCollection_ModifyCharFrom(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    NARC *narc, int memberIdx, BOOL compressed, enum HeapId heapID)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->type == SPRITE_RESOURCE_CHAR);
    GF_ASSERT(spriteRes);
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_CHAR);

    int id = SpriteResource_GetID(spriteRes);
    NNS_G2D_VRAM_TYPE vramType = SpriteResource_GetVRAMType(spriteRes);

    SpriteResourceCollection_Remove(spriteResources, spriteRes);
    SpriteResourceCollection_InitResFromNARC(
        spriteResources, 
        spriteRes, 
        narc, 
        memberIdx, 
        compressed, 
        id, 
        vramType, 
        0, 
        SPRITE_RESOURCE_CHAR, 
        heapID, 
        0
    );
}

int SpriteResourceCollection_AddTable(SpriteResourceCollection *spriteResources, const SpriteResourceTable *table, 
    SpriteResourceList *outList, int heapID)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(table);

    SpriteResoureCollection_AddTableEx(spriteResources, table, 0, table->count, outList, heapID);
    return table->count;
}

void SpriteResoureCollection_AddTableEx(SpriteResourceCollection *spriteResources, const SpriteResourceTable *table, int first, int count, 
    SpriteResourceList *outList, int heapID)
{
    for (int i = first; i < first + count; i++) {
        SpriteResource *spriteRes = SpriteResourceCollection_AddFromTable(spriteResources, table, i, heapID);

        if (outList != NULL && outList->capacity > outList->count) {
            outList->resources[outList->count] = spriteRes;
            outList->count++;
        }
    }
}

SpriteResourceList *SpriteResourceList_New(int capacity, int heapID)
{
    SpriteResourceList *list = Heap_AllocFromHeap(heapID, sizeof(SpriteResourceList));

    list->resources = Heap_AllocFromHeap(heapID, sizeof(SpriteResource *) * capacity);
    list->capacity = capacity;
    list->count = 0;

    return list;
}

void SpriteResourceList_Delete(SpriteResourceList *list)
{
    Heap_FreeToHeap(list->resources);
    Heap_FreeToHeap(list);
    list = NULL;
}

BOOL SpriteResourceCollection_IsIDUnused(const SpriteResourceCollection *spriteResources, int id)
{
    GF_ASSERT(spriteResources);
    return ResourceCollection_IsIDUnused(spriteResources->collection, id);
}

void SpriteResource_ReleaseData(SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes);

    SpriteResource_FreeData(spriteRes);
    Resource_SetData(spriteRes->rawResource, NULL);
}

void SpriteResourceCollection_Remove(SpriteResourceCollection *spriteResources, SpriteResource *resource)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->resources);

    SpriteResource_FreeData(resource);
    ResourceCollection_Remove(spriteResources->collection, resource->rawResource);

    resource->rawResource = NULL;
    spriteResources->count--;
}

void SpriteResourceCollection_Clear(SpriteResourceCollection *spriteResources)
{
    for (int i = 0; i < spriteResources->capacity; i++) {
        if (spriteResources->resources[i].rawResource != NULL) {
            SpriteResourceCollection_Remove(spriteResources, spriteResources->resources + i);
        }
    }
}

SpriteResource *SpriteResourceCollection_Find(const SpriteResourceCollection *spriteResources, int id)
{
    GF_ASSERT(spriteResources);

    for (int i = 0; i < spriteResources->capacity; i++) {
        if (spriteResources->resources[i].rawResource) {
            // Explicit assignment is needed to match
            int resID = Resource_GetID(spriteResources->resources[i].rawResource);
            if (resID == id) {
                return spriteResources->resources + i;
            }
        }
    }

    return NULL;
}

int SpriteResource_GetID(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes);
    return Resource_GetID(spriteRes->rawResource);
}

NNSG2dCharacterData *SpriteResource_GetCharData(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_CHAR);

    CharResourceData *charRes = SpriteResource_GetData(spriteRes);
    return charRes->charData;
}

NNSG2dPaletteData *SpriteResource_GetPaletteData(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_PALETTE);

    PaletteResourceData *paletteRes = SpriteResource_GetData(spriteRes);
    return paletteRes->paletteData;
}

NNSG2dCellDataBank *SpriteResource_GetCellData(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_CELL);

    CellResourceData *cellRes = SpriteResource_GetData(spriteRes);
    return cellRes->cellBank;
}

NNSG2dCellAnimBankData *SpriteResource_GetCellAnimData(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_CELL_ANIM);

    CellAnimResourceData *cellAnimRes = SpriteResource_GetData(spriteRes);
    return cellAnimRes->animBank;
}

NNSG2dMultiCellDataBank *SpriteResource_GetMultiCellData(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_MULTI_CELL);

    MultiCellResourceData *multiCellRes = SpriteResource_GetData(spriteRes);
    return multiCellRes->multiCellBank;
}

NNSG2dMultiCellAnimBankData *SpriteResource_GetMultiCellAnimData(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes->type == SPRITE_RESOURCE_MULTI_CELL_ANIM);

    MultiCellAnimResourceData *multiCellAnimRes = SpriteResource_GetData(spriteRes);
    return multiCellAnimRes->multiCellAnimBank;
}

enum SpriteResourceType SpriteResource_GetType(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes);
    return spriteRes->type;
}

NNS_G2D_VRAM_TYPE SpriteResource_GetVRAMType(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes);

    if (spriteRes->type == SPRITE_RESOURCE_CHAR) {
        CharResourceData *charRes = SpriteResource_GetData(spriteRes);
        return charRes->vramType;
    }

    if (spriteRes->type == SPRITE_RESOURCE_PALETTE) {
        PaletteResourceData *paletteRes = SpriteResource_GetData(spriteRes);
        return paletteRes->vramType;
    }

    return SPRITE_VRAM_TYPE_DEFAULT;
}

int SpriteResource_GetPaletteIndex(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes);

    if (spriteRes->type == SPRITE_RESOURCE_PALETTE) {
        PaletteResourceData *paletteRes = SpriteResource_GetData(spriteRes);
        return paletteRes->paletteIndex;
    }

    return 0;
}

void SpriteResource_SetVRAMType(SpriteResource *spriteRes, NNS_G2D_VRAM_TYPE vramType)
{
    GF_ASSERT(spriteRes);

    if (spriteRes->type == SPRITE_RESOURCE_CHAR) {
        CharResourceData *charRes = SpriteResource_GetData(spriteRes);
        charRes->vramType = vramType;
    }

    if (spriteRes->type == SPRITE_RESOURCE_PALETTE) {
        PaletteResourceData *paletteRes = SpriteResource_GetData(spriteRes);
        paletteRes->vramType = vramType;
    }
}

int SpriteResourceTable_Size(void)
{
    return sizeof(SpriteResourceTable);
}

SpriteResourceTable *SpriteResourceTable_GetArrayElement(SpriteResourceTable *table, int index)
{
    return table + index;
}

void SpriteResourceTable_LoadFromBinary(const void *data, SpriteResourceTable *table, int heapID)
{
    GF_ASSERT(table);

    const SpriteResourceTableBinary *tableBin = data;
    table->type = tableBin->type;
    table->isNARC = TRUE;
    table->count = SpriteResourceTableEntryNARC_GetEntryCount(tableBin->narcEntries);

    if (table->count > 0) {
        table->entries = Heap_AllocFromHeap(heapID, sizeof(SpriteResourceTableEntryNARC) * table->count);
    } else {
        table->entries = NULL;
    }

    if (table->entries) {
        memcpy(table->entries, tableBin->narcEntries, sizeof(SpriteResourceTableEntryNARC) * table->count);
    }
}

void SpriteResourceTable_Clear(SpriteResourceTable *table)
{
    if (table->entries) {
        Heap_FreeToHeap(table->entries);
    }

    table->entries = NULL;
    table->count = 0;
}

int SpriteResourceTable_GetCount(const SpriteResourceTable *table)
{
    GF_ASSERT(table);
    return table->count;
}

int SpriteResourceTable_GetEntryID(const SpriteResourceTable *table, int index)
{
    GF_ASSERT(table);
    GF_ASSERT(table->count > index);

    if (table->isNARC == FALSE) {
        SpriteResourceTableEntryFile *fileEntries = table->entries;
        return fileEntries[index].id;
    } else {
        SpriteResourceTableEntryNARC *narcEntries = table->entries;
        return narcEntries[index].id;
    }
}

int SpriteResourceTable_GetNARCEntryMemberIndex(const SpriteResourceTable *table, int index)
{
    int memberIdx;

    GF_ASSERT(table);
    GF_ASSERT(table->count > index);

    if (table->isNARC == TRUE) {
        SpriteResourceTableEntryNARC *narcEntries = table->entries;
        memberIdx = narcEntries[index].memberIndex;
    }

    return memberIdx;
}

BOOL SpriteResourceTable_IsNARCEntryCompressed(const SpriteResourceTable *table, int index)
{
    BOOL compressed;

    GF_ASSERT(table);
    GF_ASSERT(table->count > index);

    if (table->isNARC == TRUE) {
        SpriteResourceTableEntryNARC *narcEntries = table->entries;
        compressed = narcEntries[index].compressed;
    }

    return compressed;
}

NNS_G2D_VRAM_TYPE SpriteResourceTable_GetEntryVRAMType(const SpriteResourceTable *table, int index)
{
    GF_ASSERT(table);
    GF_ASSERT(table->count > index);

    if (table->isNARC == FALSE) {
        SpriteResourceTableEntryFile *fileEntries = table->entries;
        return fileEntries[index].vramType;
    } else {
        SpriteResourceTableEntryNARC *narcEntries = table->entries;
        return narcEntries[index].vramType;
    }
}

int SpriteResourceTable_GetPaletteIndex(const SpriteResourceTable *table, int index)
{
    GF_ASSERT(table);
    GF_ASSERT(table->count > index);

    if (table->isNARC == FALSE) {
        SpriteResourceTableEntryFile *fileEntries = table->entries;
        return fileEntries[index].paletteIndex;
    } else {
        SpriteResourceTableEntryNARC *narcEntries = table->entries;
        return narcEntries[index].paletteIndex;
    }
}

static SpriteResource *SpriteResourceCollection_AllocResource(SpriteResourceCollection *spriteResources)
{
    for (int i = 0; i < spriteResources->capacity; i++) {
        if (spriteResources->resources[i].rawResource == NULL) {
            return spriteResources->resources + i;
        }
    }

    return NULL;
}

static void SpriteResource_UnpackData(SpriteResource *spriteRes, enum SpriteResourceType type, 
    NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID)
{
    void *rawData = Resource_GetData(spriteRes->rawResource);

    switch (type) {
    case SPRITE_RESOURCE_CHAR:
        spriteRes->data = SpriteUtil_UnpackCharacterResource(rawData, vramType, heapID);
        break;
    case SPRITE_RESOURCE_PALETTE:
        spriteRes->data = SpriteUtil_UnpackPaletteResource(rawData, vramType, paletteIdx, heapID);
        break;
    case SPRITE_RESOURCE_CELL:
        spriteRes->data = SpriteUtil_UnpackCellResource(rawData, heapID);
        break;
    case SPRITE_RESOURCE_CELL_ANIM:
        spriteRes->data = SpriteUtil_UnpackCellAnimResource(rawData, heapID);
        break;
    case SPRITE_RESOURCE_MULTI_CELL:
        spriteRes->data = SpriteUtil_UnpackMultiCellResource(rawData, heapID);
        break;
    case SPRITE_RESOURCE_MULTI_CELL_ANIM:
        spriteRes->data = SpriteUtil_UnpackMultiCellAnimResource(rawData, heapID);
        break;
    }
}

static CharResourceData *SpriteUtil_UnpackCharacterResource(void *rawData, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID)
{
    CharResourceData *charRes = Heap_AllocFromHeap(heapID, sizeof(CharResourceData));
    NNS_G2dGetUnpackedCharacterData(rawData, &charRes->charData);
    charRes->vramType = vramType;

    return charRes;
}

static PaletteResourceData *SpriteUtil_UnpackPaletteResource(void *rawData, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID)
{
    PaletteResourceData *paletteRes = Heap_AllocFromHeap(heapID, sizeof(PaletteResourceData));
    NNS_G2dGetUnpackedPaletteData(rawData, &paletteRes->paletteData);

    paletteRes->vramType = vramType;
    paletteRes->paletteIndex = paletteIdx;

    return paletteRes;
}

static CellResourceData *SpriteUtil_UnpackCellResource(void *rawData, enum HeapId heapID)
{
    CellResourceData *cellRes = Heap_AllocFromHeap(heapID, sizeof(CellResourceData));
    NNS_G2dGetUnpackedCellBank(rawData, &cellRes->cellBank);

    return cellRes;
}

static CellAnimResourceData *SpriteUtil_UnpackCellAnimResource(void *rawData, enum HeapId heapID)
{
    CellAnimResourceData *cellAnimRes = Heap_AllocFromHeap(heapID, sizeof(CellAnimResourceData));
    NNS_G2dGetUnpackedAnimBank(rawData, &cellAnimRes->animBank);

    return cellAnimRes;
}

static MultiCellResourceData *SpriteUtil_UnpackMultiCellResource(void *rawData, enum HeapId heapID)
{
    MultiCellResourceData *multiCellRes = Heap_AllocFromHeap(heapID, sizeof(MultiCellResourceData));
    NNS_G2dGetUnpackedMultiCellBank(rawData, &multiCellRes->multiCellBank);

    return multiCellRes;
}

static MultiCellAnimResourceData *SpriteUtil_UnpackMultiCellAnimResource(void *rawData, enum HeapId heapID)
{
    MultiCellAnimResourceData *multiCellAnimRes = Heap_AllocFromHeap(heapID, sizeof(MultiCellAnimResourceData));
    NNS_G2dGetUnpackedMCAnimBank(rawData, &multiCellAnimRes->multiCellAnimBank);

    return multiCellAnimRes;
}

static void SpriteResource_FreeData(SpriteResource *spriteRes)
{
    if (spriteRes->data) {
        Heap_FreeToHeap(spriteRes->data);
    }

    spriteRes->data = NULL;
}

static void *SpriteResource_GetData(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes);
    GF_ASSERT(spriteRes->data);

    return spriteRes->data;
}

static void SpriteResourceCollection_InitResFromFile(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    const char *filename, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum SpriteResourceType type, enum HeapId heapID)
{
    spriteRes->rawResource = ResourceCollection_AddFromFile(spriteResources->collection, filename, id, heapID);
    spriteRes->type = type;

    SpriteResource_UnpackData(spriteRes, type, vramType, paletteIdx, heapID);
}

static void SpriteResourceCollection_InitRes(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    int narcIdx, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum SpriteResourceType type, enum HeapId heapID, u32 param10)
{
    void *data = sub_02006FE8(narcIdx, memberIdx, compressed, heapID, param10);

    spriteRes->rawResource = ResourceCollection_Add(spriteResources->collection, data, id);
    spriteRes->type = type;

    SpriteResource_UnpackData(spriteRes, type, vramType, paletteIdx, heapID);
}

static void SpriteResourceCollection_InitResFromNARC(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    NARC *narc, int memberIdx, BOOL compressed, int id, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum SpriteResourceType type, enum HeapId heapID, u32 param10)
{
    void *data = SpriteUtil_ReadNARCMember(narc, memberIdx, compressed, heapID, param10);

    spriteRes->rawResource = ResourceCollection_Add(spriteResources->collection, data, id);
    spriteRes->type = type;

    SpriteResource_UnpackData(spriteRes, type, vramType, paletteIdx, heapID);
}

static int SpriteResourceTableEntryNARC_GetEntryCount(const SpriteResourceTableEntryNARC *entries)
{
    int i = 0;
    while (entries[i].narcIndex != NARC_INDEX_NONE) {
        i++;
    }

    return i;
}

static void *SpriteUtil_ReadNARCMember(NARC *narc, u32 memberIdx, BOOL compressed, u32 heapID, u32 param4)
{
    void *data = NARC_AllocAndReadWholeMember(narc, memberIdx, heapID);

    if (data != NULL) {
        if (compressed) {
            void *decompressed;

            if (param4 == 0) {
                decompressed = Heap_AllocFromHeap(heapID, MI_GetUncompressedSize(data));
            } else {
                decompressed = Heap_AllocFromHeapAtEnd(heapID, MI_GetUncompressedSize(data));
            }

            if (decompressed) {
                MI_UncompressLZ8(data, decompressed);
                Heap_FreeToHeap(data);
            }

            data = decompressed;
        }
    }

    return data;
}
