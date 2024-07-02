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
static void *sub_0200A2DC(NARC *param0, u32 param1, BOOL param2, u32 param3, u32 param4);
static void SpriteResource_UnpackData(SpriteResource *spriteRes, enum SpriteResourceType type, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID);
static CharResourceData *SpriteUtil_UnpackCharacterResource(void *rawData, NNS_G2D_VRAM_TYPE vramType, enum HeapId heapID);
static PaletteResourceData *SpriteUtil_UnpackPaletteResource(void *rawData, NNS_G2D_VRAM_TYPE vramType, int paletteIdx, enum HeapId heapID);
static CellResourceData *SpriteUtil_UnpackCellResource(void *rawData, enum HeapId heapID);
static CellAnimResourceData *SpriteUtil_UnpackCellAnimResource(void *rawData, enum HeapId heapID);
static MultiCellResourceData *SpriteUtil_UnpackMultiCellResource(void *rawData, enum HeapId heapID);
static MultiCellAnimResourceData *SpriteUtil_UnpackMultiCellAnimResource(void *rawData, enum HeapId heapID);
static void *SpriteResource_GetData(const SpriteResource *spriteRes);
static void SpriteResource_FreeData(SpriteResource *spriteRes);
static int sub_0200A2C0(const UnkStruct_0200A2C0 *param0);

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

SpriteResource * sub_02009794 (SpriteResourceCollection * param0, const UnkStruct_02009F38 * param1, int param2, int param3)
{
    SpriteResource * v0;
    UnkStruct_02009794 * v1;
    UnkStruct_0200A2C0 * v2;

    GF_ASSERT(param0);
    GF_ASSERT(param1);
    GF_ASSERT(param1->unk_04 > param2);
    GF_ASSERT(param0->type == param1->unk_08);

    v0 = SpriteResourceCollection_AllocResource(param0);
    GF_ASSERT(v0);

    if (param1->unk_0C == 0) {
        v1 = (UnkStruct_02009794 *)param1->unk_00 + param2;
        GF_ASSERT(SpriteResourceCollection_IsIDUnused(param0, v1->unk_00) == 1);
        SpriteResourceCollection_InitResFromFile(param0, v0, v1->unk_04, v1->unk_00, v1->unk_44[0], v1->unk_44[1], param1->unk_08, param3);
    } else {
        v2 = (UnkStruct_0200A2C0 *)param1->unk_00 + param2;
        GF_ASSERT(SpriteResourceCollection_IsIDUnused(param0, v2->unk_0C) == 1);
        SpriteResourceCollection_InitRes(param0, v0, v2->unk_00, v2->unk_04, v2->unk_08, v2->unk_0C, v2->unk_10[0], v2->unk_10[1], param1->unk_08, param3, 0);
    }

    param0->count++;

    return v0;
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

int SpriteResource_GetID(const SpriteResource *spriteRes)
{
    GF_ASSERT(spriteRes);
    return Resource_GetID(spriteRes->rawResource);
}

NNSG2dCharacterData * sub_02009E1C (const SpriteResource * param0)
{
    CharResourceData * v0;

    GF_ASSERT(param0->type == 0);

    v0 = (CharResourceData *)SpriteResource_GetData(param0);
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

void sub_02009F08 (SpriteResource * param0, int param1)
{
    GF_ASSERT(param0);

    if (param0->type == 0) {
        CharResourceData * v0;

        v0 = SpriteResource_GetData(param0);
        v0->vramType = param1;
    }

    if (param0->type == 1) {
        PaletteResourceData * v1;

        v1 = SpriteResource_GetData(param0);
        v1->vramType = param1;
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
    void *data = sub_0200A2DC(narc, memberIdx, compressed, heapID, param10);

    spriteRes->rawResource = ResourceCollection_Add(spriteResources->collection, data, id);
    spriteRes->type = type;

    SpriteResource_UnpackData(spriteRes, type, vramType, paletteIdx, heapID);
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
