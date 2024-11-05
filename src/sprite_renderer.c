#include "sprite_renderer.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "overlay007/struct_ov7_0224F358.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "sprite_resource.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_02017728.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"

static BOOL SpriteRenderer_LoadResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, enum SpriteResourceType resourceType, int resourceID);
static BOOL SpriteRenderer_LoadResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, enum SpriteResourceType resourceType, int resourceID);
static BOOL SpriteResourceList_Add(SpriteResourceList *resourceList, SpriteResource *resource);
static BOOL sub_0200D27C(SpriteResourceCollection *resourceCollection, SpriteResourceList *resourceList, int resourceID);
static BOOL sub_0200D2D0(SpriteResourceCollection *resourceCollection, SpriteResourceList *resourceList, int resourceID);
static BOOL SpriteResourceCollection_RemoveFromResourceList(SpriteResourceCollection *resourceCollection, SpriteResourceList *resourceList, int resourceID);

SpriteRenderer *SpriteRenderer_Create(int heapID)
{
    SpriteRenderer *renderer = Heap_AllocFromHeap(heapID, sizeof(SpriteRenderer));

    if (renderer == NULL) {
        return NULL;
    }

    renderer->heapID = heapID;
    renderer->numGfxHandlers = 0;
    renderer->hasOamManager = TRUE;

    return renderer;
}

SpriteGfxHandler *SpriteRenderer_CreateGfxHandler(SpriteRenderer *renderer)
{
    GF_ASSERT(renderer != NULL);

    SpriteGfxHandler *gfxHandler = Heap_AllocFromHeap(renderer->heapID, sizeof(SpriteGfxHandler));

    if (gfxHandler == NULL) {
        return NULL;
    }

    renderer->numGfxHandlers++;

    for (int i = 0; i < SPRITE_RESOURCE_TYPE_MAX; i++) {
        gfxHandler->spriteResourceCollectionList[i] = NULL;
    }

    return gfxHandler;
}

GF_G2dRenderer *SpriteRenderer_GetG2dRenderer(SpriteRenderer *renderer)
{
    return &renderer->renderer;
}

BOOL SpriteRenderer_CreateOamCharPlttManagers(SpriteRenderer *renderer, const UnkStruct_ov104_0224133C *param1, const UnkStruct_ov104_022412F4 *param2, int param3)
{
    GF_ASSERT(renderer != NULL);

    if (renderer == NULL) {
        return FALSE;
    }

    {
        UnkStruct_ov22_022559F8 v0;

        v0.unk_00 = param2->unk_00;
        v0.unk_04 = param2->unk_04;
        v0.unk_08 = param2->unk_08;
        v0.unk_0C = renderer->heapID;

        sub_0201E88C(&v0, param2->unk_0C, param2->unk_10);
    }

    sub_0201F834(param3, renderer->heapID);
    NNS_G2dInitOamManagerModule();

    if (renderer->hasOamManager == TRUE) {
        sub_0200A784(param1->unk_00, param1->unk_04, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, param1->unk_18, param1->unk_1C, renderer->heapID);
    }

    renderer->cellTransferState = sub_0201DCC8(32, renderer->heapID);

    sub_0201E994();
    sub_0201F8E4();

    return TRUE;
}

BOOL SpriteRenderer_CreateCellActorList(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int numCells)
{
    if ((renderer == NULL) || (gfxHandler == NULL)) {
        return FALSE;
    }

    gfxHandler->cellActorCollection = sub_020095C4(numCells, &renderer->renderer, renderer->heapID);
    return TRUE;
}

void thunk_CellActor_Delete(CellActor *cellActor)
{
    CellActor_Delete(cellActor);
}

void SpriteGfxHandler_UpdateCellActorCollection(SpriteGfxHandler *gfxHandler)
{
    GF_ASSERT(gfxHandler != NULL);
    CellActorCollection_Update(gfxHandler->cellActorCollection);
}

void OAMManager_ApplyAndResetBuffers(void)
{
    sub_0200A858();
}

void sub_0200C808(void)
{
    sub_0201DCE8();
}

void SpriteGfxHandler_DeleteCellActorCollection(SpriteGfxHandler *gfxHandler)
{
    CellActorCollection_Delete(gfxHandler->cellActorCollection);
}

void SpriteGfxHandler_DeleteCellActorData(SpriteGfxHandler *gfxHandler)
{
    if (gfxHandler->cellActorDataList == NULL) {
        return;
    }

    sub_020095A8(gfxHandler->cellActorDataList);
}

void SpriteGfxHandler_DeleteSpriteResources(SpriteGfxHandler *gfxHandler)
{
    int i;
    for (i = 0; i < gfxHandler->numSpriteResourceTypes; i++) {
        SpriteResourceTable *v1 = SpriteResourceTable_GetArrayElement(gfxHandler->spriteResourceTable, i);
        SpriteResourceTable_Clear(v1);
    }

    Heap_FreeToHeap(gfxHandler->spriteResourceTable);
    sub_0200A508(gfxHandler->spriteResourceList[SPRITE_RESOURCE_TILES]);
    sub_0200A700(gfxHandler->spriteResourceList[SPRITE_RESOURCE_PALETTE]);

    for (i = 0; i < gfxHandler->numSpriteResourceTypes; i++) {
        SpriteResourceList_Delete(gfxHandler->spriteResourceList[i]);
        SpriteResourceCollection_Delete(gfxHandler->spriteResourceCollectionList[i]);
    }
}

void SpriteRenderer_Deinit(SpriteRenderer *renderer)
{
    sub_0201DCF0(renderer->cellTransferState);
    sub_0201E958();
    sub_0201F8B4();

    if (renderer->hasOamManager == TRUE) {
        sub_0200A878();
    }
}

void SpriteRenderer_RemoveGfxHandler(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler)
{
    renderer->numGfxHandlers--;
    Heap_FreeToHeap(gfxHandler);
}

void SpriteRenderer_DeleteGfxHandler(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler)
{
    SpriteGfxHandler_DeleteCellActorCollection(gfxHandler);
    SpriteGfxHandler_DeleteCellActorData(gfxHandler);
    SpriteGfxHandler_DeleteSpriteResources(gfxHandler);
    SpriteRenderer_RemoveGfxHandler(renderer, gfxHandler);
}

void SpriteRenderer_Free(SpriteRenderer *renderer)
{
    GF_ASSERT(renderer->numGfxHandlers == 0);

    SpriteRenderer_Deinit(renderer);
    Heap_FreeToHeap(renderer);
}

BOOL SpriteRenderer_LoadSpriteResourceData(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, const SpriteResourceDataPath *resourcePaths)
{
    int numEntries = SPRITE_RESOURCE_TYPE_MAX;

    if ((renderer == NULL) || (gfxHandler == NULL)) {
        return FALSE;
    }

    if (resourcePaths->paths.multiCellsDataPath == NULL) {
        numEntries = SPRITE_RESOURCE_TYPE_MAX - 2;
    }

    gfxHandler->numSpriteResourceTypes = numEntries;
    int size = SpriteResourceTable_Size();
    gfxHandler->spriteResourceTable = Heap_AllocFromHeap(renderer->heapID, size * numEntries);

    for (int entryIndex = 0; entryIndex < numEntries; entryIndex++) {
        SpriteResourceTable *resourceTable = SpriteResourceTable_GetArrayElement(gfxHandler->spriteResourceTable, entryIndex);
        void *resourceEntryData = ReadFileToHeap(renderer->heapID, resourcePaths->val1[entryIndex]);

        SpriteResourceTable_LoadFromBinary(resourceEntryData, resourceTable, renderer->heapID);
        Heap_FreeToHeap(resourceEntryData);
    }

    for (int entryIndex = 0; entryIndex < numEntries; entryIndex++) {
        SpriteResourceTable *resourceTable = SpriteResourceTable_GetArrayElement(gfxHandler->spriteResourceTable, entryIndex);
        size = SpriteResourceTable_GetCount(resourceTable);

        gfxHandler->spriteResourceCollectionList[entryIndex] = SpriteResourceCollection_New(size, entryIndex, renderer->heapID);
    }

    for (int entryIndex = 0; entryIndex < numEntries; entryIndex++) {
        SpriteResourceTable *resourceTable = SpriteResourceTable_GetArrayElement(gfxHandler->spriteResourceTable, entryIndex);
        size = SpriteResourceTable_GetCount(resourceTable);

        gfxHandler->spriteResourceList[entryIndex] = SpriteResourceList_New(size, renderer->heapID);
        gfxHandler->numSpriteResources[entryIndex] = SpriteResourceCollection_Extend(gfxHandler->spriteResourceCollectionList[entryIndex], resourceTable, gfxHandler->spriteResourceList[entryIndex], renderer->heapID);
    }

    sub_0200A368(gfxHandler->spriteResourceList[SPRITE_RESOURCE_TILES]);
    sub_0200A60C(gfxHandler->spriteResourceList[SPRITE_RESOURCE_PALETTE]);

    void *resourceEntryData = ReadFileToHeap(renderer->heapID, resourcePaths->paths.combinedResourceDataPath);
    gfxHandler->cellActorDataList = sub_02009508(
        resourceEntryData,
        renderer->heapID,
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_SPRITE],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_SPRITE_ANIM],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_MULTI_SPRITE],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM]);

    Heap_FreeToHeap(resourceEntryData);
    return 1;
}

CellActor *SpriteRenderer_CreateCellActorFromTemplate(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, const UnkStruct_ov7_0224F358 *template)
{
    return SpriteRenderer_CreateCellActor(renderer, gfxHandler, template->unk_00, template->unk_04, template->unk_06, template->unk_04, template->unk_0A, template->unk_0C, template->unk_10, template->unk_14, template->unk_18, template->unk_1C, template->unk_20, template->unk_24);
}

CellActor *SpriteRenderer_CreateCellActor(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int resourceIndex, s16 x, s16 y, s16 z, u16 anim, int priority, int palette, int vramType, int param10, int param11, int param12, int param13)
{
    CellActorInitParamsEx cellActorParams;

    cellActorParams.collection = gfxHandler->cellActorCollection;
    cellActorParams.resourceData = &gfxHandler->cellActorDataList->resourceDataList[resourceIndex];
    cellActorParams.position.x = FX32_CONST(x);
    cellActorParams.position.y = FX32_CONST(y);
    cellActorParams.position.z = FX32_CONST(z);

    if (vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
        cellActorParams.position.y += (192 << FX32_SHIFT);
    }

    cellActorParams.affineScale.x = FX32_ONE;
    cellActorParams.affineScale.y = FX32_ONE;
    cellActorParams.affineScale.z = FX32_ONE;
    cellActorParams.affineZRotation = 0;
    cellActorParams.priority = priority;
    cellActorParams.vramType = vramType;
    cellActorParams.heapID = renderer->heapID;

    CellActor *cellActor = CellActorCollection_AddEx(&cellActorParams);

    if (cellActor != NULL) {
        CellActor_SetAnim(cellActor, anim);
        CellActor_SetExplicitPalette(cellActor, palette);
    }

    return cellActor;
}

BOOL SpriteRenderer_InitGfxResourceList(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, const UnkStruct_ov104_02241308 *param2)
{
    int i;
    int j;
    int numEntries = SPRITE_RESOURCE_TYPE_MAX;

    if ((renderer == NULL) || (gfxHandler == NULL)) {
        return FALSE;
    }

    if ((param2->val2.unk_10 == 0) || (param2->val2.unk_14 == 0)) {
        numEntries = SPRITE_RESOURCE_TYPE_MAX - 2;
    }

    gfxHandler->numSpriteResourceTypes = numEntries;

    for (i = 0; i < numEntries; i++) {
        gfxHandler->spriteResourceCollectionList[i] = SpriteResourceCollection_New(param2->val1[i], i, renderer->heapID);
    }

    for (i = 0; i < numEntries; i++) {
        int capacity = param2->val1[i];

        if (capacity == 0) {
            continue;
        }

        gfxHandler->spriteResourceList[i] = SpriteResourceList_New(capacity, renderer->heapID);
        gfxHandler->numSpriteResources[i] = 0;

        for (j = 0; j < gfxHandler->spriteResourceList[i]->capacity; j++) {
            gfxHandler->spriteResourceList[i]->resources[j] = NULL;
        }
    }

    return TRUE;
}

BOOL SpriteRenderer_LoadCharResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddTiles(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], narcIndex, memberIndex, compressed, resourceID, vramType, renderer->heapID);

    if (resource != NULL) {
        sub_0200A3DC(resource);
        SpriteResourceList_Add(gfxHandler->spriteResourceList[SPRITE_RESOURCE_TILES], resource);

        return TRUE;
    }

    GF_ASSERT(0);

    return (resource == NULL) ? FALSE : TRUE;
}

BOOL SpriteRenderer_LoadCharResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *param1, NARC *narc, int memberIndex, BOOL compressed, int vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(param1->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddTilesFrom(param1->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], narc, memberIndex, compressed, resourceID, vramType, renderer->heapID);

    if (resource != NULL) {
        sub_0200A3DC(resource);
        SpriteResourceList_Add(param1->spriteResourceList[SPRITE_RESOURCE_TILES], resource);
        return TRUE;
    }

    GF_ASSERT(0);

    return (resource == NULL) ? FALSE : TRUE;
}

s8 SpriteRenderer_LoadPaletteResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int paletteIndex, int vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], resourceID) == FALSE) {
        return -1;
    }

    SpriteResource *resource = SpriteResourceCollection_AddPalette(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], narcIndex, memberIndex, compressed, resourceID, vramType, paletteIndex, renderer->heapID);

    if (resource != NULL) {
        GF_ASSERT(sub_0200A640(resource) == TRUE);
        SpriteResourceList_Add(gfxHandler->spriteResourceList[SPRITE_RESOURCE_PALETTE], resource);
        return sub_0200A760(resource, vramType);
    }

    GF_ASSERT(0);

    return -1;
}

s8 SpriteRenderer_LoadPaletteResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int paletteIndex, int vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], resourceID) == FALSE) {
        return -1;
    }

    SpriteResource *resource = SpriteResourceCollection_AddPaletteFrom(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], narc, memberIndex, compressed, resourceID, vramType, paletteIndex, renderer->heapID);

    if (resource != NULL) {
        GF_ASSERT(sub_0200A640(resource) == TRUE);
        SpriteResourceList_Add(gfxHandler->spriteResourceList[SPRITE_RESOURCE_PALETTE], resource);
        return sub_0200A760(resource, vramType);
    }

    GF_ASSERT(0);
    return -1;
}

u8 SpriteRenderer_LoadPalette(PaletteData *palette, enum PaletteBufferID bufferID, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, int compressed, int paletteIndex, int vramType, int resourceID)
{
    int resource = SpriteRenderer_LoadPaletteResObj(renderer, gfxHandler, narcIndex, memberIndex, compressed, paletteIndex, vramType, resourceID);

    if (resource != -1) {
        PaletteData_LoadBufferFromHardware(palette, bufferID, resource * 16, paletteIndex * 0x20);
    }

    return resource;
}

u8 SpriteRenderer_LoadPaletteFromOpenNarc(PaletteData *palette, enum PaletteBufferID bufferID, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, int compressed, int paletteIndex, int vramType, int resourceID)
{
    int resource = SpriteRenderer_LoadPaletteResObjFromOpenNarc(renderer, gfxHandler, narc, memberIndex, compressed, paletteIndex, vramType, resourceID);

    if (resource != -1) {
        PaletteData_LoadBufferFromHardware(palette, bufferID, resource * 16, paletteIndex * 0x20);
    }

    return resource;
}

BOOL SpriteRenderer_LoadCellResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID)
{
    return SpriteRenderer_LoadResObj(renderer, gfxHandler, narcIndex, memberIndex, compressed, SPRITE_RESOURCE_SPRITE, resourceID);
}

BOOL SpriteRenderer_LoadCellResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int resourceID)
{
    return SpriteRenderer_LoadResObjFromOpenNarc(renderer, gfxHandler, narc, memberIndex, compressed, SPRITE_RESOURCE_SPRITE, resourceID);
}

BOOL SpriteRenderer_LoadAnimResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID)
{
    return SpriteRenderer_LoadResObj(renderer, gfxHandler, narcIndex, memberIndex, compressed, SPRITE_RESOURCE_SPRITE_ANIM, resourceID);
}

BOOL SpriteRenderer_LoadAnimResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int resourceID)
{
    return SpriteRenderer_LoadResObjFromOpenNarc(renderer, gfxHandler, narc, memberIndex, compressed, SPRITE_RESOURCE_SPRITE_ANIM, resourceID);
}

CellActorData *CellActor_LoadResources(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, const SpriteTemplate *template)
{
    CellActorInitParamsEx cellActorParams;
    int resourceIDList[SPRITE_RESOURCE_TYPE_MAX];

    CellActorData *cellActorData = Heap_AllocFromHeap(renderer->heapID, sizeof(CellActorData));

    if (cellActorData == NULL) {
        return NULL;
    }

    cellActorData->cellActorResourceList = Heap_AllocFromHeap(renderer->heapID, sizeof(CellActorResourceDataList));

    if (cellActorData->cellActorResourceList == NULL) {
        return NULL;
    }

    cellActorData->cellActorResourceList->resourceDataList = Heap_AllocFromHeap(renderer->heapID, sizeof(CellActorResourceData));
    cellActorData->cellActorResource = cellActorData->cellActorResourceList->resourceDataList;

    if (cellActorData->cellActorResourceList->resourceDataList == NULL) {
        if (cellActorData->cellActorResourceList) {
            Heap_FreeToHeap(cellActorData->cellActorResourceList);
        }

        return NULL;
    }

    for (int i = 0; i < SPRITE_RESOURCE_TYPE_MAX; i++) {
        resourceIDList[i] = template->resources[i];
    }

    if ((gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_MULTI_SPRITE] == NULL) || (gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM] == NULL)) {
        resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE] = -1;
        resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM] = -1;
    } else {
        if ((resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE] != -1) && (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_MULTI_SPRITE], resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE]) == FALSE)) {
            resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE] = -1;
        }

        if ((resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM] != -1) && (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM], resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM]) == FALSE)) {
            resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM] = -1;
        }
    }

    sub_020093B4(
        cellActorData->cellActorResource,
        resourceIDList[SPRITE_RESOURCE_TILES],
        resourceIDList[SPRITE_RESOURCE_PALETTE],
        resourceIDList[SPRITE_RESOURCE_SPRITE],
        resourceIDList[SPRITE_RESOURCE_SPRITE_ANIM],
        resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE],
        resourceIDList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM],
        template->transferToVRAM,
        template->bgPriority,
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_SPRITE],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_SPRITE_ANIM],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_MULTI_SPRITE],
        gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_MULTI_SPRITE_ANIM]);

    cellActorParams.collection = gfxHandler->cellActorCollection;
    cellActorParams.resourceData = cellActorData->cellActorResource;
    cellActorParams.position.x = FX32_CONST(template->x);
    cellActorParams.position.y = FX32_CONST(template->y);
    cellActorParams.position.z = FX32_CONST(template->z);

    if (template->vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
        cellActorParams.position.y += (192 << FX32_SHIFT);
    }

    cellActorParams.affineScale.x = FX32_ONE;
    cellActorParams.affineScale.y = FX32_ONE;
    cellActorParams.affineScale.z = FX32_ONE;
    cellActorParams.affineZRotation = 0;
    cellActorParams.priority = template->priority;
    cellActorParams.vramType = template->vramType;
    cellActorParams.heapID = renderer->heapID;
    cellActorData->cellActor = CellActorCollection_AddEx(&cellActorParams);
    cellActorData->vramTransfer = template->transferToVRAM;

    if (cellActorData->cellActor != NULL) {
        int palette = CellActor_GetExplicitPalette(cellActorData->cellActor);

        CellActor_SetAnim(cellActorData->cellActor, template->animIdx);
        CellActor_SetExplicitPalette(cellActorData->cellActor, palette + template->plttIdx);
    } else {
        GF_ASSERT(FALSE);
    }

    return cellActorData;
}

const NNSG2dImagePaletteProxy *SpriteGfxHandler_GetPaletteProxy(SpriteGfxHandler *gfxHandler, int resourceID)
{
    return sub_0200A72C(SpriteResourceCollection_Find(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], resourceID), NULL);
}

u32 SpriteGfxHandler_GetPaletteNumberById(SpriteGfxHandler *gfxHandler, int resourceID, NNS_G2D_VRAM_TYPE vramType)
{
    return sub_0200A760(SpriteResourceCollection_Find(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], resourceID), vramType);
}

BOOL SpriteGfxHandler_UnloadCharObjById(SpriteGfxHandler *gfxHandler, int resourceID)
{
    return sub_0200D27C(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], gfxHandler->spriteResourceList[0], resourceID);
}

BOOL SpriteGfxHandler_UnloadPlttObjById(SpriteGfxHandler *gfxHandler, int resourceID)
{
    return sub_0200D2D0(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], gfxHandler->spriteResourceList[1], resourceID);
}

BOOL SpriteGfxHandler_UnloadCellObjById(SpriteGfxHandler *gfxHandler, int resourceID)
{
    return SpriteResourceCollection_RemoveFromResourceList(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_SPRITE], gfxHandler->spriteResourceList[2], resourceID);
}

BOOL SpriteGfxHandler_UnloadAnimObjById(SpriteGfxHandler *gfxHandler, int resourceID)
{
    return SpriteResourceCollection_RemoveFromResourceList(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_SPRITE_ANIM], gfxHandler->spriteResourceList[3], resourceID);
}

void SpriteRenderer_UnloadResourcesAndRemoveGfxHandler(SpriteRenderer *spriteRenderer, SpriteGfxHandler *gfxHandler)
{
    SpriteGfxHandler_DeleteCellActorCollection(gfxHandler);
    sub_0200A508(gfxHandler->spriteResourceList[SPRITE_RESOURCE_TILES]);
    sub_0200A700(gfxHandler->spriteResourceList[SPRITE_RESOURCE_PALETTE]);

    for (int i = 0; i < gfxHandler->numSpriteResourceTypes; i++) {
        SpriteResourceList_Delete(gfxHandler->spriteResourceList[i]);
        SpriteResourceCollection_Delete(gfxHandler->spriteResourceCollectionList[i]);
    }

    SpriteRenderer_RemoveGfxHandler(spriteRenderer, gfxHandler);
}

void CellActorData_Delete(CellActorData *cellActorData)
{
    if (cellActorData->vramTransfer) {
        sub_0200A5B4(cellActorData->cellActorResource->imageProxy);
    }

    CellActor_Delete(cellActorData->cellActor);
    sub_020095A8(cellActorData->cellActorResourceList);
    Heap_FreeToHeap(cellActorData);
}

static BOOL SpriteRenderer_LoadResObj(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, enum SpriteResourceType resourceType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[resourceType], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_Add(gfxHandler->spriteResourceCollectionList[resourceType], narcIndex, memberIndex, compressed, resourceID, resourceType, renderer->heapID);

    if (resource != NULL) {
        BOOL v1 = SpriteResourceList_Add(gfxHandler->spriteResourceList[resourceType], resource);
        GF_ASSERT(v1 == TRUE);
        return v1;
    }

    GF_ASSERT(0);
    return (resource == NULL) ? FALSE : TRUE;
}

static BOOL SpriteRenderer_LoadResObjFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, enum SpriteResourceType resourceType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[resourceType], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddFrom(gfxHandler->spriteResourceCollectionList[resourceType], narc, memberIndex, compressed, resourceID, resourceType, renderer->heapID);

    if (resource != NULL) {
        BOOL v1 = SpriteResourceList_Add(gfxHandler->spriteResourceList[resourceType], resource);
        GF_ASSERT(v1 == TRUE);
        return v1;
    }

    GF_ASSERT(0);

    return (resource == NULL) ? FALSE : TRUE;
}

static BOOL SpriteResourceList_Add(SpriteResourceList *resourceList, SpriteResource *resource)
{
    for (int i = 0; i < resourceList->capacity; i++) {
        if (resourceList->resources[i] != NULL) {
            continue;
        }

        resourceList->resources[i] = resource;
        resourceList->count++;

        return TRUE;
    }

    return FALSE;
}

static BOOL SpriteResourceCollection_RemoveFromResourceList(SpriteResourceCollection *resourceCollection, SpriteResourceList *resourceList, int resourceID)
{
    for (int i = 0; i < resourceList->capacity; i++) {
        if (resourceList->resources[i] == NULL) {
            continue;
        }

        int spriteResourceID = SpriteResource_GetID(resourceList->resources[i]);

        if (spriteResourceID == resourceID) {
            SpriteResourceCollection_Remove(resourceCollection, resourceList->resources[i]);

            resourceList->resources[i] = NULL;
            resourceList->count--;

            return TRUE;
        }
    }

    return FALSE;
}

static BOOL sub_0200D27C(SpriteResourceCollection *resourceCollection, SpriteResourceList *resourceList, int resourceID)
{
    for (int i = 0; i < resourceList->capacity; i++) {
        if (resourceList->resources[i] == NULL) {
            continue;
        }

        int spriteResourceID = SpriteResource_GetID(resourceList->resources[i]);

        if (spriteResourceID == resourceID) {
            sub_0201EB50(resourceID);
            SpriteResourceCollection_Remove(resourceCollection, resourceList->resources[i]);

            resourceList->resources[i] = NULL;
            resourceList->count--;

            return TRUE;
        }
    }

    return FALSE;
}

static BOOL sub_0200D2D0(SpriteResourceCollection *resourceCollection, SpriteResourceList *resourceList, int resourceID)
{
    for (int i = 0; i < resourceList->capacity; i++) {
        if (resourceList->resources[i] == NULL) {
            continue;
        }

        int spriteResourceID = SpriteResource_GetID(resourceList->resources[i]);

        if (spriteResourceID == resourceID) {
            sub_0201F9F0(resourceID);
            SpriteResourceCollection_Remove(resourceCollection, resourceList->resources[i]);

            resourceList->resources[i] = NULL;
            resourceList->count--;

            return TRUE;
        }
    }

    return FALSE;
}

void CellActor_UpdateObject(CellActor *cellActor)
{
    CellActor_UpdateAnim(cellActor, FX32_ONE);
}

void CellActorData_UpdateObject(CellActorData *cellActorData)
{
    CellActor_UpdateObject(cellActorData->cellActor);
}

void CellActorData_Update2Frames(CellActorData *cellActorData)
{
    CellActor_UpdateAnim(cellActorData->cellActor, FX32_CONST(2));
}

void CellActorData_UpdateNFrames(CellActorData *cellActorData, fx32 frames)
{
    CellActor_UpdateAnim(cellActorData->cellActor, frames);
}

u32 CellActorData_GetActorAnimCount(CellActorData *cellActorData)
{
    return CellActor_GetAnimCount(cellActorData->cellActor);
}

void CellActorData_SetAnim(CellActorData *cellActorData, u32 animID)
{
    CellActor_SetAnim(cellActorData->cellActor, animID);
}

void CellActorData_SetAnimNoRestart(CellActorData *cellActorData, u32 animID)
{
    CellActor_SetAnimNoRestart(cellActorData->cellActor, animID);
}

u32 CellActorData_GetActiveAnim(CellActorData *cellActorData)
{
    return CellActor_GetActiveAnim(cellActorData->cellActor);
}

void thunk_CellActor_SetAnimateFlag(CellActor *cellActor, BOOL animate)
{
    CellActor_SetAnimateFlag(cellActor, animate);
}

void CellActorData_SetAnimateFlag(CellActorData *cellActorData, BOOL animate)
{
    thunk_CellActor_SetAnimateFlag(cellActorData->cellActor, animate);
}

void thunk_CellActor_SetAnimSpeed(CellActor *cellActor, fx32 speed)
{
    CellActor_SetAnimSpeed(cellActor, speed);
}

void CellActorData_SetAnimSpeed(CellActorData *cellActorData, fx32 speed)
{
    thunk_CellActor_SetAnimSpeed(cellActorData->cellActor, speed);
}

BOOL thunk_CellActor_IsAnimated(CellActor *cellActor)
{
    return CellActor_IsAnimated(cellActor);
}

BOOL CellActorData_IsAnimated(CellActorData *cellActorData)
{
    return thunk_CellActor_IsAnimated(cellActorData->cellActor);
}

void thunk_CellActor_SetAnimFrame(CellActor *cellActor, u16 frame)
{
    SpriteActor_SetAnimFrame(cellActor, frame);
}

void CellActorData_SetAnimFrame(CellActorData *cellActorData, u16 frame)
{
    thunk_CellActor_SetAnimFrame(cellActorData->cellActor, frame);
}

u16 thunk_CellActor_GetAnimFrame(CellActor *cellActor)
{
    return CellActor_GetAnimFrame(cellActor);
}

u16 CellActorData_GetAnimFrame(CellActorData *cellActorData)
{
    return thunk_CellActor_GetAnimFrame(cellActorData->cellActor);
}

void CellActor_DrawSprite(CellActor *cellActor, BOOL drawFlag)
{
    CellActor_SetDrawFlag(cellActor, drawFlag);
}

void CellActorData_DrawSprite(CellActorData *cellActorData, BOOL drawFlag)
{
    CellActor_DrawSprite(cellActorData->cellActor, drawFlag);
}

int thunk_CellActor_GetDrawFlag(CellActor *cellActor)
{
    return CellActor_GetDrawFlag(cellActor);
}

int CellActorData_GetDrawFlag(CellActorData *cellActorData)
{
    return thunk_CellActor_GetDrawFlag(cellActorData->cellActor);
}

void thunk_CellActor_SetExplicitPalette(CellActor *cellActor, int palette)
{
    CellActor_SetExplicitPalette(cellActor, palette);
}

void CellActorData_SetExplicitPalette(CellActorData *cellActorData, int palette)
{
    thunk_CellActor_SetExplicitPalette(cellActorData->cellActor, palette);
}

void thunk_CellActor_SetExplicitPaletteOffset(CellActor *cellActor, int paletteOffset)
{
    CellActor_SetExplicitPaletteOffset(cellActor, paletteOffset);
}

void CellActorData_SetExplicitPaletteOffset(CellActorData *cellActorData, int paletteOffset)
{
    thunk_CellActor_SetExplicitPaletteOffset(cellActorData->cellActor, paletteOffset);
}

int CellActorData_GetExplicitPaletteOffset(CellActorData *cellActorData)
{
    return CellActor_GetExplicitPaletteOffset(cellActorData->cellActor);
}

void thunk_CellActor_SetExplicitPriority(CellActor *cellActor, int priority)
{
    CellActor_SetExplicitPriority(cellActor, priority);
}

int CellActorData_GetExplicitPriority(CellActorData *cellActorData)
{
    return CellActor_GetExplicitPriority(cellActorData->cellActor);
}

void CellActorData_SetExplicitPriority(CellActorData *cellActorData, int priority)
{
    thunk_CellActor_SetExplicitPriority(cellActorData->cellActor, priority);
}

void thunk_CellActor_SetPriority(CellActor *cellActor, int priority)
{
    CellActor_SetPriority(cellActor, priority);
}

void CellActorData_SetPriority(CellActorData *cellActorData, int priority)
{
    thunk_CellActor_SetPriority(cellActorData->cellActor, priority);
}

u32 thunk_CellActor_GetPriority(CellActor *cellActor)
{
    return CellActor_GetPriority(cellActor);
}

u32 CellActorData_GetPriority(CellActorData *cellActorData)
{
    return thunk_CellActor_GetPriority(cellActorData->cellActor);
}

void CellActor_SetPositionXY(CellActor *cellActor, s16 x, s16 y)
{
    VecFx32 position;

    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    if (CellActor_GetVRamType(cellActor) == NNS_G2D_VRAM_TYPE_2DSUB) {
        position.y += (192 << FX32_SHIFT);
    }

    position.z = 0;

    CellActor_SetPosition(cellActor, &position);
}

void CellActorData_SetPositionXY(CellActorData *cellActorData, s16 x, s16 y)
{
    CellActor_SetPositionXY(cellActorData->cellActor, x, y);
}

void CellActor_SetPositionWithOffsetXY(CellActor *cellActor, s16 x, s16 y, fx32 offset)
{
    VecFx32 position;

    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;

    if (CellActor_GetVRamType(cellActor) == NNS_G2D_VRAM_TYPE_2DSUB) {
        position.y += offset;
    }

    position.z = 0;

    CellActor_SetPosition(cellActor, &position);
}

void CellActorData_SetPositionWithOffsetXY(CellActorData *cellActorData, s16 x, s16 y, fx32 offset)
{
    CellActor_SetPositionWithOffsetXY(cellActorData->cellActor, x, y, offset);
}

void CellActor_GetPositionXY(CellActor *cellActor, s16 *x, s16 *y)
{
    const VecFx32 *position;

    position = CellActor_GetPosition(cellActor);
    *x = position->x / FX32_ONE;

    if (CellActor_GetVRamType(cellActor) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *y = (position->y - (192 << FX32_SHIFT)) / FX32_ONE;
    } else {
        *y = position->y / FX32_ONE;
    }
}

void CellActorData_GetPositionXY(CellActorData *cellActorData, s16 *x, s16 *y)
{
    CellActor_GetPositionXY(cellActorData->cellActor, x, y);
}

void CellActor_GetPositionWithOffsetXY(CellActor *cellActor, s16 *x, s16 *y, fx32 offset)
{
    const VecFx32 *position;

    position = CellActor_GetPosition(cellActor);
    *x = position->x / FX32_ONE;

    if (CellActor_GetVRamType(cellActor) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *y = (position->y - offset) / FX32_ONE;
    } else {
        *y = position->y / FX32_ONE;
    }
}

void CellActorData_GetPositionWithOffsetXY(CellActorData *cellActorData, s16 *x, s16 *y, fx32 offset)
{
    CellActor_GetPositionWithOffsetXY(cellActorData->cellActor, x, y, offset);
}

void CellActor_AddPositionXY(CellActor *cellActor, s16 x, s16 y)
{
    const VecFx32 *position;
    VecFx32 newPosition;

    position = CellActor_GetPosition(cellActor);

    newPosition.x = position->x + (x * FX32_ONE);
    newPosition.y = position->y + (y * FX32_ONE);
    newPosition.z = position->z;

    CellActor_SetPosition(cellActor, &newPosition);
}

void CellActorData_AddPositionXY(CellActorData *cellActorData, s16 x, s16 y)
{
    CellActor_AddPositionXY(cellActorData->cellActor, x, y);
}

void CellActorData_AddPositionXYFx32(CellActorData *cellActorData, fx32 x, fx32 y)
{
    const VecFx32 *position;
    VecFx32 newPosition;

    position = CellActor_GetPosition(cellActorData->cellActor);

    newPosition.x = position->x + x;
    newPosition.y = position->y + y;
    newPosition.z = position->z;

    CellActor_SetPosition(cellActorData->cellActor, &newPosition);
}

void CellActorData_SetPositionFx32(CellActorData *cellActorData, fx32 x, fx32 y)
{
    const VecFx32 *position;
    VecFx32 newPosition;

    position = CellActor_GetPosition(cellActorData->cellActor);

    newPosition.x = x;
    newPosition.y = y;
    newPosition.z = position->z;

    CellActor_SetPosition(cellActorData->cellActor, &newPosition);
}

void CellActorData_GetPositionFx32(CellActorData *cellActorData, fx32 *x, fx32 *y)
{
    const VecFx32 *position;

    position = CellActor_GetPosition(cellActorData->cellActor);

    *x = position->x;
    *y = position->y;
}

void CellActorData_SetPositionWithOffsetFx32(CellActorData *cellActorData, fx32 x, fx32 y, fx32 offset)
{
    if (CellActor_GetVRamType(cellActorData->cellActor) == NNS_G2D_VRAM_TYPE_2DSUB) {
        CellActorData_SetPositionFx32(cellActorData, x, y + offset);
    } else {
        CellActorData_SetPositionFx32(cellActorData, x, y);
    }
}

void CellActorData_GetPositionFx32WithOffset(CellActorData *cellActorData, fx32 *x, fx32 *y, fx32 offset)
{
    CellActorData_GetPositionFx32(cellActorData, x, y);

    if (CellActor_GetVRamType(cellActorData->cellActor) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *y = *y - offset;
    }
}

void thunk_CellActor_SetAffineOverwriteMode(CellActor *cellActor, enum AffineOverwriteMode mode)
{
    CellActor_SetAffineOverwriteMode(cellActor, mode);
}

void CellActorData_SetAffineOverwriteMode(CellActorData *cellActorData, enum AffineOverwriteMode mode)
{
    thunk_CellActor_SetAffineOverwriteMode(cellActorData->cellActor, mode);
}

void CellActor_SetAffineScaleXYFx32(CellActor *cellActor, f32 x, f32 y)
{
    const VecFx32 *scale;
    VecFx32 *newScale;

    scale = CellActor_GetAffineScale(cellActor);
    newScale = (VecFx32 *)scale;

    newScale->x = (x * FX32_ONE);
    newScale->y = (y * FX32_ONE);

    CellActor_SetAffineScale(cellActor, newScale);
}

void CellActorData_SetAffineScaleXYFx32(CellActorData *cellActorData, f32 x, f32 y)
{
    CellActor_SetAffineScaleXYFx32(cellActorData->cellActor, x, y);
}

void CellActor_AddAffineScaleFx32(CellActor *cellActor, f32 x, f32 y)
{
    const VecFx32 *scale;
    VecFx32 *newScale;

    scale = CellActor_GetAffineScale(cellActor);
    newScale = (VecFx32 *)scale;

    newScale->x = scale->x + (x * FX32_ONE);
    newScale->y = scale->y + (y * FX32_ONE);

    CellActor_SetAffineScale(cellActor, newScale);
}

void CellActorData_AddAffineScaleFx32(CellActorData *cellActorData, f32 x, f32 y)
{
    CellActor_AddAffineScaleFx32(cellActorData->cellActor, x, y);
}

void CellActor_GetAffineScaleF32(CellActor *cellActor, f32 *x, f32 *y)
{
    const VecFx32 *scale;
    VecFx32 *v1;

    scale = CellActor_GetAffineScale(cellActor);

    *x = FX_FX32_TO_F32(scale->x);
    *y = FX_FX32_TO_F32(scale->y);
}

void CellActorData_GetAffineScaleF32(CellActorData *cellActorData, f32 *x, f32 *y)
{
    CellActor_GetAffineScaleF32(cellActorData->cellActor, x, y);
}

void thunk_CellActor_SetAffineZRotation(CellActor *cellActor, u16 angle)
{
    CellActor_SetAffineZRotation(cellActor, angle);
}

void CellActorData_SetAffineZRotation(CellActorData *cellActorData, u16 angle)
{
    thunk_CellActor_SetAffineZRotation(cellActorData->cellActor, angle);
}

void CellActor_AddAffineZRotation(CellActor *cellActor, s32 angle)
{
    u16 rotation;

    rotation = CellActor_GetAffineZRotation(cellActor);
    rotation += angle;

    CellActor_SetAffineZRotation(cellActor, rotation);
}

void CellActorData_AddAffineZRotation(CellActorData *cellActorData, s32 angle)
{
    CellActor_AddAffineZRotation(cellActorData->cellActor, angle);
}

void thunk_CellActor_SetFlipMode(CellActor *cellActor, int mode)
{
    CellActor_SetFlipMode(cellActor, mode);
}

void CellActorData_SetFlipMode(CellActorData *cellActorData, int mode)
{
    thunk_CellActor_SetFlipMode(cellActorData->cellActor, mode);
}

void CellActorData_SetAffineTranslationXY(CellActorData *cellActorData, s16 x, s16 y)
{
    VecFx32 translation;

    translation.x = x << FX32_SHIFT;
    translation.y = y << FX32_SHIFT;
    translation.z = 0;

    CellActor_SetAffineTranslation(cellActorData->cellActor, &translation);
}

void CellActorData_SetPixelated(CellActorData *cellActorData, BOOL pixelated)
{
    CellActor_SetPixelated(cellActorData->cellActor, pixelated);
}

void thunk_CellActor_SetExplicitOAMMode(CellActor *cellActor, GXOamMode mode)
{
    CellActor_SetExplicitOAMMode(cellActor, mode);
}

void CellActorData_SetExplicitOAMMode(CellActorData *cellActorData, GXOamMode mode)
{
    thunk_CellActor_SetExplicitOAMMode(cellActorData->cellActor, mode);
}

u32 CellActorData_GetUserAttrForCurrentAnimFrame(CellActorData *cellActorData)
{
    return CellActor_GetUserAttrForCurrentAnimFrame(cellActorData->cellActor);
}

BOOL sub_0200D828(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int vramType, int resourceID)
{
    SpriteResource *resource;

    if (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    resource = SpriteResourceCollection_AddTiles(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], narcIndex, memberIndex, compressed, resourceID, vramType, renderer->heapID);

    if (resource != NULL) {
        sub_0200A39C(resource);
        SpriteResourceList_Add(gfxHandler->spriteResourceList[SPRITE_RESOURCE_TILES], resource);

        return TRUE;
    }

    GF_ASSERT(0);

    return (resource == NULL) ? FALSE : TRUE;
}

BOOL sub_0200D888(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int vramType, int resourceID)
{
    SpriteResource *resource;

    if (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    resource = SpriteResourceCollection_AddTiles(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], narcIndex, memberIndex, compressed, resourceID, vramType, renderer->heapID);

    if (resource != NULL) {
        sub_0200A450(resource);
        SpriteResourceList_Add(gfxHandler->spriteResourceList[SPRITE_RESOURCE_TILES], resource);

        return TRUE;
    }

    GF_ASSERT(0);

    return (resource == NULL) ? FALSE : TRUE;
}

BOOL sub_0200D8E8(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int vramType, int resourceID)
{
    SpriteResource *resource;

    if (SpriteResourceCollection_IsIDUnused(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    resource = SpriteResourceCollection_AddTilesFrom(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], narc, memberIndex, compressed, resourceID, vramType, renderer->heapID);

    if (resource != NULL) {
        sub_0200A450(resource);
        SpriteResourceList_Add(gfxHandler->spriteResourceList[SPRITE_RESOURCE_TILES], resource);

        return TRUE;
    }

    GF_ASSERT(0);

    return (resource == NULL) ? FALSE : TRUE;
}

void SpriteRenderer_ModifyTiles(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID)
{
    SpriteResource *resource;

    resource = SpriteResourceCollection_Find(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], resourceID);

    SpriteResourceCollection_ModifyTiles(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_TILES], resource, narcIndex, memberIndex, compressed, renderer->heapID);
    sub_0200A4C0(resource);
}

void SpriteRenderer_ModifyPalette(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, int narcIndex, int memberIndex, BOOL compressed, int resourceID)
{
    SpriteResource *resource;

    resource = SpriteResourceCollection_Find(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], resourceID);

    SpriteResourceCollection_ModifyPalette(gfxHandler->spriteResourceCollectionList[SPRITE_RESOURCE_PALETTE], resource, narcIndex, memberIndex, compressed, renderer->heapID);
    sub_0200A6B8(resource);
}

CellActorCollection *SpriteGfxHandler_GetCellActorCollection(SpriteGfxHandler *gfxHandler)
{
    return gfxHandler->cellActorCollection;
}

void SpriteRenderer_ModifyTilesFromOpenNarc(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, NARC *narc, int memberIndex, BOOL compressed, int resourceID)
{
    SpriteResource *resource;

    resource = SpriteResourceCollection_Find(gfxHandler->spriteResourceCollectionList[0], resourceID);

    SpriteResourceCollection_ModifyTilesFrom(gfxHandler->spriteResourceCollectionList[0], resource, narc, memberIndex, compressed, renderer->heapID);
    sub_0200A4C0(resource);
}
