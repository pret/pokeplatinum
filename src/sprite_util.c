#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "struct_decls/struct_02006C24_decl.h"

#include "struct_defs/struct_02009CFC.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "sprite_util.h"
#include "heap.h"
#include "resource_collection.h"


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
    int unk_10;
} SpriteResourceCollection;

typedef struct {
    int unk_00;
    char unk_04[64];
    int unk_44[2];
} UnkStruct_02009794;

typedef struct {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    int unk_0C;
    int unk_10[2];
} UnkStruct_0200A2C0;

typedef struct UnkStruct_02009F38_t {
    void * unk_00;
    int unk_04;
    int unk_08;
    u8 unk_0C;
} UnkStruct_02009F38;

typedef struct {
    NNSG2dCharacterData * charData;
    int unk_04;
} CharacterResourceData;

typedef struct {
    NNSG2dPaletteData * paletteData;
    int unk_04;
    int unk_08;
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
static void SpriteResourceCollection_InitResFromFile(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    const char *filename, int id, int param4, int param5, enum SpriteResourceType type, enum HeapId heapID);
static void SpriteResourceCollection_InitRes(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    int narcIdx, int memberIdx, BOOL compressed, int id, int param6, int param7, enum SpriteResourceType type, enum HeapId heapID, u32 param10);
static void SpriteResourceCollection_InitResFromNARC(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    NARC *narc, int memberIdx, BOOL compressed, int id, int param6, int param7, enum SpriteResourceType type, enum HeapId heapID, u32 param10);
static void * sub_0200A2DC(NARC * param0, u32 param1, BOOL param2, u32 param3, u32 param4);
static void SpriteResource_UnpackData(SpriteResource *spriteRes, enum SpriteResourceType type, int param2, int param3, enum HeapId heapID);
static CharacterResourceData *SpriteUtil_UnpackCharacterResource(void *rawData, int param1, enum HeapId heapID);
static PaletteResourceData *SpriteUtil_UnpackPaletteResource(void *rawData, int param1, int param2, enum HeapId heapID);
static CellResourceData *SpriteUtil_UnpackCellResource(void *rawData, enum HeapId heapID);
static CellAnimResourceData *SpriteUtil_UnpackCellAnimResource(void *rawData, enum HeapId heapID);
static MultiCellResourceData *SpriteUtil_UnpackMultiCellResource(void *rawData, enum HeapId heapID);
static MultiCellAnimResourceData *SpriteUtil_UnpackMultiCellAnimResource(void *rawData, enum HeapId heapID);
static void *SpriteResource_GetData(const SpriteResource *spriteRes);
static void SpriteResource_FreeData(SpriteResource *spriteRes);
static int sub_0200A2C0(const UnkStruct_0200A2C0 * param0);

SpriteResourceCollection *SpriteResourceCollection_New(int capacity, int param1, enum HeapId heapID)
{
    SpriteResourceCollection *spriteResources = Heap_AllocFromHeap(heapID, sizeof(SpriteResourceCollection));
    spriteResources->collection = ResourceCollection_New(capacity, heapID);
    spriteResources->resources = Heap_AllocFromHeap(heapID, sizeof(SpriteResource) * capacity);

    memset(spriteResources->resources, 0, sizeof(SpriteResource) * capacity);

    spriteResources->capacity = capacity;
    spriteResources->count = 0;
    spriteResources->unk_10 = param1;

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

SpriteResource * sub_02009794 (SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, int param2, int param3)
{
    SpriteResource * v0;
    UnkStruct_02009794 * v1;
    UnkStruct_0200A2C0 * v2;

    GF_ASSERT(param0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 > param2);
    GF_ASSERT(param0->unk_10 == param1->unk_08);

    v0 = SpriteResourceCollection_AllocResource(param0);
    GF_ASSERT(v0);

    if (param1->unk_0C == 0) {
        v1 = (UnkStruct_02009794 *)param1->unk_00 + param2;
        GF_ASSERT(sub_02009D34(param0, v1->unk_00) == 1);
        SpriteResourceCollection_InitResFromFile(param0, v0, v1->unk_04, v1->unk_00, v1->unk_44[0], v1->unk_44[1], param1->unk_08, param3);
    } else {
        v2 = (UnkStruct_0200A2C0 *)param1->unk_00 + param2;
        GF_ASSERT(sub_02009D34(param0, v2->unk_0C) == 1);
        SpriteResourceCollection_InitRes(param0, v0, v2->unk_00, v2->unk_04, v2->unk_08, v2->unk_0C, v2->unk_10[0], v2->unk_10[1], param1->unk_08, param3, 0);
    }

    param0->count++;

    return v0;
}

SpriteResource *sub_0200985C(SpriteResourceCollection *spriteResources, int param1, int param2, BOOL param3, 
    int param4, int param5, int param6)
{
    GF_ASSERT(spriteResources);
    GF_ASSERT(spriteResources->unk_10 == 0);

    SpriteResource *spriteRes = SpriteResourceCollection_AllocResource(spriteResources);

    GF_ASSERT(spriteRes);
    SpriteResourceCollection_InitRes(spriteResources, spriteRes, param1, param2, param3, param4, param5, 0, 0, param6, 0);

    spriteResources->count++;

    return spriteRes;
}

SpriteResource * sub_020098B8 (SpriteResourceCollection * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = SpriteResourceCollection_AllocResource(param0);

    GF_ASSERT(v0);
    SpriteResourceCollection_InitRes(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, 0);

    param0->count++;
    return v0;
}

SpriteResource * sub_02009918 (SpriteResourceCollection * param0, int param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    SpriteResource * v0;

    GF_ASSERT(param0);

    v0 = SpriteResourceCollection_AllocResource(param0);

    GF_ASSERT(v0);
    SpriteResourceCollection_InitRes(param0, v0, param1, param2, param3, param4, 0, 0, param5, param6, 0);

    param0->count++;
    return v0;
}

void sub_02009968 (SpriteResourceCollection * param0, SpriteResource * param1, int param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->type == 0);

    v1 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);

    SpriteResourceCollection_Remove(param0, param1);
    SpriteResourceCollection_InitRes(param0, param1, param2, param3, param4, v1, v0, 0, 0, param5, 0);
}

void sub_020099D4 (SpriteResourceCollection * param0, SpriteResource * param1, int param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;
    int v2;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);
    GF_ASSERT(param1);
    GF_ASSERT(param1->type == 1);

    v2 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);
    v1 = sub_02009EE8(param1);

    SpriteResourceCollection_Remove(param0, param1);
    SpriteResourceCollection_InitRes(param0, param1, param2, param3, param4, v2, v0, v1, 1, param5, 0);
}

SpriteResource * sub_02009A4C (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);

    v0 = SpriteResourceCollection_AllocResource(param0);
    GF_ASSERT(v0);

    SpriteResourceCollection_InitResFromNARC(param0, v0, param1, param2, param3, param4, param5, 0, 0, param6, 0);
    param0->count++;

    return v0;
}

SpriteResource * sub_02009AA8 (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);

    v0 = SpriteResourceCollection_AllocResource(param0);
    GF_ASSERT(v0);

    SpriteResourceCollection_InitResFromNARC(param0, v0, param1, param2, param3, param4, param5, 0, 0, param6, param7);

    param0->count++;

    return v0;
}

SpriteResource * sub_02009B04 (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = SpriteResourceCollection_AllocResource(param0);

    GF_ASSERT(v0);
    SpriteResourceCollection_InitResFromNARC(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, 0);

    param0->count++;
    return v0;
}

SpriteResource * sub_02009B64 (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6, int param7, int param8)
{
    SpriteResource * v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 1);

    v0 = SpriteResourceCollection_AllocResource(param0);

    GF_ASSERT(v0);
    SpriteResourceCollection_InitResFromNARC(param0, v0, param1, param2, param3, param4, param5, param6, 1, param7, param8);

    param0->count++;
    return v0;
}

SpriteResource * sub_02009BC4 (SpriteResourceCollection * param0, NARC * param1, int param2, BOOL param3, int param4, int param5, int param6)
{
    SpriteResource * v0;

    GF_ASSERT(param0);

    v0 = SpriteResourceCollection_AllocResource(param0);

    GF_ASSERT(v0);
    SpriteResourceCollection_InitResFromNARC(param0, v0, param1, param2, param3, param4, 0, 0, param5, param6, 0);

    param0->count++;
    return v0;
}

void sub_02009C14 (SpriteResourceCollection * param0, SpriteResource * param1, NARC * param2, int param3, BOOL param4, int param5)
{
    int v0;
    int v1;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_10 == 0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->type == 0);

    v1 = sub_02009E08(param1);
    v0 = sub_02009EBC(param1);

    SpriteResourceCollection_Remove(param0, param1);
    SpriteResourceCollection_InitResFromNARC(param0, param1, param2, param3, param4, v1, v0, 0, 0, param5, 0);
}

int sub_02009C80 (SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, UnkStruct_02009CFC * param2, int param3)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1);

    sub_02009CB4(param0, param1, 0, param1->unk_04, param2, param3);
    return param1->unk_04;
}

void sub_02009CB4 (SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, int param2, int param3, UnkStruct_02009CFC * param4, int param5)
{
    int v0;
    SpriteResource * v1;

    for (v0 = param2; v0 < param2 + param3; v0++) {
        v1 = sub_02009794(param0, param1, v0, param5);

        if (param4 != NULL) {
            if (param4->unk_04 > param4->unk_08) {
                param4->unk_00[param4->unk_08] = v1;
                param4->unk_08++;
            }
        }
    }
}

UnkStruct_02009CFC * sub_02009CFC (int param0, int param1)
{
    UnkStruct_02009CFC * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_02009CFC));

    v0->unk_00 = Heap_AllocFromHeap(param1, sizeof(SpriteResource *) * param0);
    v0->unk_04 = param0;
    v0->unk_08 = 0;

    return v0;
}

void sub_02009D20 (UnkStruct_02009CFC * param0)
{
    Heap_FreeToHeap(param0->unk_00);
    Heap_FreeToHeap(param0);
    param0 = NULL;
}

BOOL sub_02009D34 (const SpriteResourceCollection * param0, int param1)
{
    GF_ASSERT(param0);
    return ResourceCollection_IsIDUnused(param0->collection, param1);
}

void sub_02009D4C (SpriteResource * param0)
{
    GF_ASSERT(param0);

    SpriteResource_FreeData(param0);
    Resource_SetData(param0->rawResource, NULL);
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

SpriteResource * sub_02009DC8 (const SpriteResourceCollection * param0, int param1)
{
    int v0;
    int v1;

    GF_ASSERT(param0);

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0].rawResource) {
            v1 = Resource_GetID(param0->resources[v0].rawResource);

            if (v1 == param1) {
                return param0->resources + v0;
            }
        }
    }

    return NULL;
}

int sub_02009E08 (const SpriteResource * param0)
{
    GF_ASSERT(param0);
    return Resource_GetID(param0->rawResource);
}

NNSG2dCharacterData * sub_02009E1C (const SpriteResource * param0)
{
    CharacterResourceData * v0;

    GF_ASSERT(param0->type == 0);

    v0 = (CharacterResourceData *)SpriteResource_GetData(param0);
    return v0->charData;
}

NNSG2dPaletteData * sub_02009E34 (const SpriteResource * param0)
{
    PaletteResourceData * v0;

    GF_ASSERT(param0->type == 1);

    v0 = (PaletteResourceData *)SpriteResource_GetData(param0);
    return v0->paletteData;
}

NNSG2dCellDataBank * sub_02009E4C (const SpriteResource * param0)
{
    CellResourceData * v0;

    GF_ASSERT(param0->type == 2);

    v0 = (CellResourceData *)SpriteResource_GetData(param0);
    return v0->cellBank;
}

NNSG2dCellAnimBankData * sub_02009E64 (const SpriteResource * param0)
{
    CellAnimResourceData * v0;

    GF_ASSERT(param0->type == 3);

    v0 = (CellAnimResourceData *)SpriteResource_GetData(param0);
    return v0->animBank;
}

NNSG2dMultiCellDataBank * sub_02009E7C (const SpriteResource * param0)
{
    MultiCellResourceData * v0;

    GF_ASSERT(param0->type == 4);

    v0 = (MultiCellResourceData *)SpriteResource_GetData(param0);
    return v0->multiCellBank;
}

NNSG2dMultiCellAnimBankData * sub_02009E94 (const SpriteResource * param0)
{
    MultiCellAnimResourceData * v0;

    GF_ASSERT(param0->type == 5);

    v0 = (MultiCellAnimResourceData *)SpriteResource_GetData(param0);
    return v0->multiCellAnimBank;
}

int sub_02009EAC (const SpriteResource * param0)
{
    GF_ASSERT(param0);
    return param0->type;
}

int sub_02009EBC (const SpriteResource * param0)
{
    GF_ASSERT(param0);

    if (param0->type == 0) {
        CharacterResourceData * v0;

        v0 = SpriteResource_GetData(param0);
        return v0->unk_04;
    }

    if (param0->type == 1) {
        PaletteResourceData * v1;

        v1 = SpriteResource_GetData(param0);
        return v1->unk_04;
    }

    return 0;
}

int sub_02009EE8 (const SpriteResource * param0)
{
    GF_ASSERT(param0);

    if (param0->type == 1) {
        PaletteResourceData * v0;

        v0 = SpriteResource_GetData(param0);
        return v0->unk_08;
    }

    return 0;
}

void sub_02009F08 (SpriteResource * param0, int param1)
{
    GF_ASSERT(param0);

    if (param0->type == 0) {
        CharacterResourceData * v0;

        v0 = SpriteResource_GetData(param0);
        v0->unk_04 = param1;
    }

    if (param0->type == 1) {
        PaletteResourceData * v1;

        v1 = SpriteResource_GetData(param0);
        v1->unk_04 = param1;
    }
}

int sub_02009F34 (void)
{
    return sizeof(UnkStruct_02009F38);
}

UnkStruct_02009F38 * sub_02009F38 (UnkStruct_02009F38 * param0, int param1)
{
    return param0 + param1;
}

void sub_02009F40 (const void * param0, UnkStruct_02009F38 * param1, int param2)
{
    int v0;
    const int * v1;

    GF_ASSERT(param1);

    v1 = param0;

    param1->unk_08 = v1[0];
    param1->unk_0C = 1;
    param1->unk_04 = sub_0200A2C0((const UnkStruct_0200A2C0 *)(v1 + 1));

    if (param1->unk_04 > 0) {
        param1->unk_00 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_0200A2C0) * param1->unk_04);
    } else {
        param1->unk_00 = NULL;
    }

    if (param1->unk_00) {
        memcpy(param1->unk_00, v1 + 1, sizeof(UnkStruct_0200A2C0) * param1->unk_04);
    }
}

void sub_02009F8C (UnkStruct_02009F38 * param0)
{
    if (param0->unk_00) {
        Heap_FreeToHeap(param0->unk_00);
    }

    param0->unk_00 = NULL;
    param0->unk_04 = 0;
}

int sub_02009FA4 (const UnkStruct_02009F38 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_04;
}

int sub_02009FB4 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_00;
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_0C;
    }

    return v0;
}

int sub_02009FE8 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 1) {
        UnkStruct_0200A2C0 * v1 = param0->unk_00;

        v0 = v1[param1].unk_04;
    }

    return v0;
}

int sub_0200A014 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 1) {
        UnkStruct_0200A2C0 * v1 = param0->unk_00;

        v0 = v1[param1].unk_08;
    }

    return v0;
}

int sub_0200A040 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_44[0];
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_10[0];
    }

    return v0;
}

int sub_0200A074 (const UnkStruct_02009F38 * param0, int param1)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_04 > param1);

    if (param0->unk_0C == 0) {
        UnkStruct_02009794 * v1 = param0->unk_00;
        v0 = v1[param1].unk_44[1];
    } else {
        UnkStruct_0200A2C0 * v2 = param0->unk_00;
        v0 = v2[param1].unk_10[1];
    }

    return v0;
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

static void SpriteResource_UnpackData(SpriteResource *spriteRes, enum SpriteResourceType type, int param2, int param3, enum HeapId heapID)
{
    void *rawData = Resource_GetData(spriteRes->rawResource);

    switch (type) {
    case SPRITE_RESOURCE_CHARACTER:
        spriteRes->data = SpriteUtil_UnpackCharacterResource(rawData, param2, heapID);
        break;
    case SPRITE_RESOURCE_PALETTE:
        spriteRes->data = SpriteUtil_UnpackPaletteResource(rawData, param2, param3, heapID);
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

static CharacterResourceData *SpriteUtil_UnpackCharacterResource(void *rawData, int param1, enum HeapId heapID)
{
    CharacterResourceData *charRes = Heap_AllocFromHeap(heapID, sizeof(CharacterResourceData));
    NNS_G2dGetUnpackedCharacterData(rawData, &charRes->charData);
    charRes->unk_04 = param1;

    return charRes;
}

static PaletteResourceData *SpriteUtil_UnpackPaletteResource(void *rawData, int param1, int param2, enum HeapId heapID)
{
    PaletteResourceData *paletteRes = Heap_AllocFromHeap(heapID, sizeof(PaletteResourceData));
    NNS_G2dGetUnpackedPaletteData(rawData, &paletteRes->paletteData);

    paletteRes->unk_04 = param1;
    paletteRes->unk_08 = param2;

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
    const char *filename, int id, int param4, int param5, enum SpriteResourceType type, enum HeapId heapID)
{
    spriteRes->rawResource = ResourceCollection_AddFromFile(spriteResources->collection, filename, id, heapID);
    spriteRes->type = type;

    SpriteResource_UnpackData(spriteRes, type, param4, param5, heapID);
}

static void SpriteResourceCollection_InitRes(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    int narcIdx, int memberIdx, BOOL compressed, int id, int param6, int param7, enum SpriteResourceType type, enum HeapId heapID, u32 param10)
{
    void *data = sub_02006FE8(narcIdx, memberIdx, compressed, heapID, param10);

    spriteRes->rawResource = ResourceCollection_Add(spriteResources->collection, data, id);
    spriteRes->type = type;

    SpriteResource_UnpackData(spriteRes, type, param6, param7, heapID);
}

static void SpriteResourceCollection_InitResFromNARC(SpriteResourceCollection *spriteResources, SpriteResource *spriteRes, 
    NARC *narc, int memberIdx, BOOL compressed, int id, int param6, int param7, enum SpriteResourceType type, enum HeapId heapID, u32 param10)
{
    void *data = sub_0200A2DC(narc, memberIdx, compressed, heapID, param10);

    spriteRes->rawResource = ResourceCollection_Add(spriteResources->collection, data, id);
    spriteRes->type = type;

    SpriteResource_UnpackData(spriteRes, type, param6, param7, heapID);
}

static int sub_0200A2C0 (const UnkStruct_0200A2C0 * param0)
{
    int v0;

    v0 = 0;

    while (param0[v0].unk_00 != 0xfffffffe) {
        v0++;
    }

    return v0;
}

static void * sub_0200A2DC (NARC * param0, u32 param1, BOOL param2, u32 param3, u32 param4)
{
    void * v0;

    v0 = NARC_AllocAndReadWholeMember(param0, param1, param3);

    if (v0 != NULL) {
        if (param2) {
            void * v1;

            if (param4 == 0) {
                v1 = Heap_AllocFromHeap(param3, MI_GetUncompressedSize(v0));
            } else {
                v1 = Heap_AllocFromHeapAtEnd(param3, MI_GetUncompressedSize(v0));
            }

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                Heap_FreeToHeap(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}
