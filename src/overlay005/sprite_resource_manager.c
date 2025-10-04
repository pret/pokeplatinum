#include "overlay005/sprite_resource_manager.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "narc.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"

static BOOL SpriteResourceList_AddResource(SpriteResourceList *resourceList, SpriteResource *resource);
static void SpriteResourceManager_AddResourceByType(SpriteResourceManager *spriteManager, int data, int size, int offset, int resourceType, int id);
static void SpriteResourceManager_LoadResourceByType(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, enum SpriteResourceType type, int id);

void SpriteResourceManager_Init(SpriteResourceManager *spriteManager, const SpriteResourceDataPaths *resourcePaths, u32 maxSprites, u32 heapID)
{
    SpriteResourceTable *resourceTable;
    void *fileData;
    u32 resourceCount;
    u32 resourceTypeIndex;

    spriteManager->spriteList = SpriteList_InitRendering(maxSprites, &spriteManager->renderer, heapID);
    spriteManager->heapID = heapID;

    if (resourcePaths->asStruct.mcellResources == NULL) {
        spriteManager->resourceTypeCount = SPRITE_RESOURCE_MAX - 2;
    } else {
        spriteManager->resourceTypeCount = SPRITE_RESOURCE_MAX;
    }

    SpriteResourceTable *resourceTableArray = Heap_Alloc(heapID, SpriteResourceTable_Size() * spriteManager->resourceTypeCount);

    for (resourceTypeIndex = 0; resourceTypeIndex < spriteManager->resourceTypeCount; resourceTypeIndex++) {
        resourceTable = SpriteResourceTable_GetArrayElement(resourceTableArray, resourceTypeIndex);
        fileData = ReadFileToHeap(heapID, resourcePaths->asArray[resourceTypeIndex]);

        SpriteResourceTable_LoadFromBinary(fileData, resourceTable, heapID);
        Heap_Free(fileData);
    }

    for (resourceTypeIndex = 0; resourceTypeIndex < spriteManager->resourceTypeCount; resourceTypeIndex++) {
        resourceTable = SpriteResourceTable_GetArrayElement(resourceTableArray, resourceTypeIndex);
        resourceCount = SpriteResourceTable_GetCount(resourceTable);
        spriteManager->resourceCollections[resourceTypeIndex] = SpriteResourceCollection_New(resourceCount, resourceTypeIndex, heapID);
    }

    for (resourceTypeIndex = 0; resourceTypeIndex < spriteManager->resourceTypeCount; resourceTypeIndex++) {
        resourceTable = SpriteResourceTable_GetArrayElement(resourceTableArray, resourceTypeIndex);
        resourceCount = SpriteResourceTable_GetCount(resourceTable);
        spriteManager->resourceLists[resourceTypeIndex] = SpriteResourceList_New(resourceCount, heapID);
        SpriteResourceCollection_Extend(spriteManager->resourceCollections[resourceTypeIndex], resourceTable, spriteManager->resourceLists[resourceTypeIndex], heapID);
    }

    for (resourceTypeIndex = 0; resourceTypeIndex < spriteManager->resourceTypeCount; resourceTypeIndex++) {
        resourceTable = SpriteResourceTable_GetArrayElement(resourceTableArray, resourceTypeIndex);
        SpriteResourceTable_Clear(resourceTable);
    }

    Heap_Free(resourceTableArray);
    SpriteTransfer_RequestCharListAtEnd(spriteManager->resourceLists[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttFreeSpaceList(spriteManager->resourceLists[SPRITE_RESOURCE_PLTT]);

    fileData = ReadFileToHeap(heapID, resourcePaths->asStruct.spriteTable);
    spriteManager->resourceHeaderList = SpriteResourcesHeaderList_NewFromResdat(fileData, heapID, spriteManager->resourceCollections[SPRITE_RESOURCE_CHAR], spriteManager->resourceCollections[SPRITE_RESOURCE_PLTT], spriteManager->resourceCollections[SPRITE_RESOURCE_CELL], spriteManager->resourceCollections[SPRITE_RESOURCE_ANIM], spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_CELL], spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_ANIM]);

    Heap_Free(fileData);
}

void SpriteResourceManager_Free(SpriteResourceManager *spriteManager)
{
    SpriteList_Delete(spriteManager->spriteList);
    SpriteResourcesHeaderList_Free(spriteManager->resourceHeaderList);
    SpriteTransfer_ResetCharTransferList(spriteManager->resourceLists[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransferList(spriteManager->resourceLists[SPRITE_RESOURCE_PLTT]);

    for (u32 resourceTypeIndex = 0; resourceTypeIndex < spriteManager->resourceTypeCount; resourceTypeIndex++) {
        SpriteResourceList_Delete(spriteManager->resourceLists[resourceTypeIndex]);
        SpriteResourceCollection_Delete(spriteManager->resourceCollections[resourceTypeIndex]);
    }
}

Sprite *SpriteResourceManager_CreateSprite(SpriteResourceManager *spriteManager, const SpriteTemplateFromResourceHeader *template)
{
    AffineSpriteListTemplate spriteTemplate;
    VecFx32 defaultScale = { FX32_ONE, FX32_ONE, FX32_ONE };
    VecFx32 position;

    position.x = template->x * FX32_ONE;
    position.y = template->y * FX32_ONE;
    position.z = template->z * FX32_ONE;

    spriteTemplate.list = spriteManager->spriteList;
    spriteTemplate.resourceData = &spriteManager->resourceHeaderList->headers[template->resourceHeaderID];
    spriteTemplate.position = position;
    spriteTemplate.affineScale = defaultScale;
    spriteTemplate.affineZRotation = 0;
    spriteTemplate.priority = template->priority;
    spriteTemplate.vramType = template->vramType;
    spriteTemplate.heapID = spriteManager->heapID;

    Sprite *sprite = SpriteList_AddAffine(&spriteTemplate);
    GF_ASSERT(sprite);

    Sprite_SetAnim(sprite, template->animIdx);
    Sprite_SetExplicitPaletteWithOffset(sprite, template->plttIdx);

    return sprite;
}

void SpriteResourceManager_SetCapacities(SpriteResourceManager *spriteManager, SpriteResourceCapacities *capacities, u32 maxElements, u32 heapID)
{
    u32 resourceTypeIndex;

    spriteManager->spriteList = SpriteList_InitRendering(maxElements, &spriteManager->renderer, heapID);
    spriteManager->heapID = heapID;

    if (capacities->asStruct.mcellCapacity == 0 || capacities->asStruct.manimCapacity == 0) {
        spriteManager->resourceTypeCount = SPRITE_RESOURCE_MAX - 2;
        spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_CELL] = NULL;
        spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_ANIM] = NULL;
    } else {
        spriteManager->resourceTypeCount = SPRITE_RESOURCE_MAX;
    }

    for (resourceTypeIndex = 0; resourceTypeIndex < spriteManager->resourceTypeCount; resourceTypeIndex++) {
        spriteManager->resourceCollections[resourceTypeIndex] = SpriteResourceCollection_New(capacities->asArray[resourceTypeIndex], resourceTypeIndex, heapID);
    }

    for (resourceTypeIndex = 0; resourceTypeIndex < spriteManager->resourceTypeCount; resourceTypeIndex++) {
        if (capacities->asArray[resourceTypeIndex] == 0) {
            continue;
        }

        spriteManager->resourceLists[resourceTypeIndex] = SpriteResourceList_New(capacities->asArray[resourceTypeIndex], heapID);

        for (u32 resourceIndex = 0; resourceIndex < spriteManager->resourceLists[resourceTypeIndex]->capacity; resourceIndex++) {
            spriteManager->resourceLists[resourceTypeIndex]->resources[resourceIndex] = NULL;
        }
    }
}

void SpriteResourceManager_AddPalette(SpriteResourceManager *spriteManager, int data, int size, int offset, int vramType, int paletteIdx, int id)
{
    if (!SpriteResourceCollection_IsIDUnused(spriteManager->resourceCollections[SPRITE_RESOURCE_PLTT], id)) {
        GF_ASSERT(FALSE);
        return;
    }

    SpriteResource *spriteResource = SpriteResourceCollection_AddPalette(spriteManager->resourceCollections[SPRITE_RESOURCE_PLTT], data, size, offset, id, paletteIdx, vramType, spriteManager->heapID);

    if (spriteResource != NULL) {
        BOOL transferResult = SpriteTransfer_RequestPlttFreeSpace(spriteResource);
        GF_ASSERT(transferResult == TRUE);

        SpriteResourceList_AddResource(spriteManager->resourceLists[SPRITE_RESOURCE_PLTT], spriteResource);
        SpriteTransfer_GetPlttOffset(spriteResource, paletteIdx);
        return;
    }

    GF_ASSERT(FALSE);
}

void SpriteResourceManager_LoadPalette(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, int paletteIdx, int vramType, int id)
{
    if (!SpriteResourceCollection_IsIDUnused(spriteManager->resourceCollections[SPRITE_RESOURCE_PLTT], id)) {
        GF_ASSERT(FALSE);
        return;
    }

    SpriteResource *spriteResource = SpriteResourceCollection_AddPaletteFrom(spriteManager->resourceCollections[SPRITE_RESOURCE_PLTT], narc, memberIdx, compressed, id, vramType, paletteIdx, spriteManager->heapID);

    if (spriteResource != NULL) {
        BOOL transferResult = SpriteTransfer_RequestPlttFreeSpace(spriteResource);
        GF_ASSERT(transferResult == TRUE);

        SpriteResourceList_AddResource(spriteManager->resourceLists[SPRITE_RESOURCE_PLTT], spriteResource);
        SpriteTransfer_GetPlttOffset(spriteResource, vramType);
        return;
    }

    GF_ASSERT(FALSE);
}

void SpriteResourceManager_AddCell(SpriteResourceManager *spriteManager, int data, int size, int offset, int id)
{
    SpriteResourceManager_AddResourceByType(spriteManager, data, size, offset, SPRITE_RESOURCE_CELL, id);
}

void SpriteResourceManager_LoadCell(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, int id)
{
    SpriteResourceManager_LoadResourceByType(spriteManager, narc, memberIdx, compressed, SPRITE_RESOURCE_CELL, id);
}

void SpriteResourceManager_AddAnimation(SpriteResourceManager *spriteManager, int data, int size, int offset, int id)
{
    SpriteResourceManager_AddResourceByType(spriteManager, data, size, offset, SPRITE_RESOURCE_ANIM, id);
}

void SpriteResourceManager_LoadAnimation(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, int id)
{
    SpriteResourceManager_LoadResourceByType(spriteManager, narc, memberIdx, compressed, SPRITE_RESOURCE_ANIM, id);
}

void SpriteResourceManager_AddTiles(SpriteResourceManager *spriteManager, int data, int size, BOOL compressed, int vramType, int id)
{
    if (!SpriteResourceCollection_IsIDUnused(spriteManager->resourceCollections[SPRITE_RESOURCE_CHAR], id)) {
        GF_ASSERT(FALSE);
        return;
    }

    SpriteResource *spriteResource = SpriteResourceCollection_AddTiles(spriteManager->resourceCollections[SPRITE_RESOURCE_CHAR], data, size, compressed, id, vramType, spriteManager->heapID);

    if (spriteResource != NULL) {
        SpriteTransfer_RequestCharAtEnd(spriteResource);
        SpriteResourceList_AddResource(spriteManager->resourceLists[SPRITE_RESOURCE_CHAR], spriteResource);
        return;
    }

    GF_ASSERT(FALSE);
}

void SpriteResourceManager_LoadTiles(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, int vramType, int id)
{
    if (!SpriteResourceCollection_IsIDUnused(spriteManager->resourceCollections[SPRITE_RESOURCE_CHAR], id)) {
        GF_ASSERT(FALSE);
        return;
    }

    SpriteResource *spriteResource = SpriteResourceCollection_AddTilesFrom(spriteManager->resourceCollections[SPRITE_RESOURCE_CHAR], narc, memberIdx, compressed, id, vramType, spriteManager->heapID);

    if (spriteResource != NULL) {
        SpriteTransfer_RequestCharAtEnd(spriteResource);
        SpriteResourceList_AddResource(spriteManager->resourceLists[SPRITE_RESOURCE_CHAR], spriteResource);

        return;
    }

    GF_ASSERT(FALSE);
}

static BOOL SpriteResourceList_AddResource(SpriteResourceList *resourceList, SpriteResource *resource)
{
    for (int slotIndex = 0; slotIndex < resourceList->capacity; slotIndex++) {
        if (resourceList->resources[slotIndex] != NULL) {
            continue;
        }

        resourceList->resources[slotIndex] = resource;
        resourceList->count++;

        return TRUE;
    }

    return FALSE;
}

static void SpriteResourceManager_AddResourceByType(SpriteResourceManager *spriteManager, int data, int size, int offset, int resourceType, int id)
{
    if (!SpriteResourceCollection_IsIDUnused(spriteManager->resourceCollections[resourceType], id)) {
        GF_ASSERT(FALSE);
        return;
    }

    SpriteResource *spriteResource = SpriteResourceCollection_Add(spriteManager->resourceCollections[resourceType], data, size, offset, id, resourceType, spriteManager->heapID);

    if (spriteResource != NULL) {
        BOOL addResult = SpriteResourceList_AddResource(spriteManager->resourceLists[resourceType], spriteResource);
        GF_ASSERT(addResult == TRUE);
        return;
    }

    GF_ASSERT(FALSE);
}

static void SpriteResourceManager_LoadResourceByType(SpriteResourceManager *spriteManager, NARC *narc, int memberIdx, BOOL compressed, enum SpriteResourceType type, int id)
{
    if (!SpriteResourceCollection_IsIDUnused(spriteManager->resourceCollections[type], id)) {
        GF_ASSERT(FALSE);
        return;
    }

    SpriteResource *spriteResource = SpriteResourceCollection_AddFrom(spriteManager->resourceCollections[type], narc, memberIdx, compressed, id, type, spriteManager->heapID);

    if (spriteResource != NULL) {
        BOOL addResult = SpriteResourceList_AddResource(spriteManager->resourceLists[type], spriteResource);

        GF_ASSERT(addResult == TRUE);
        return;
    }

    GF_ASSERT(FALSE);
}

ManagedSprite *SpriteResourceManager_CreateManagedSprite(SpriteResourceManager *spriteManager, const SpriteTemplate *template)
{
    AffineSpriteListTemplate spriteTemplate;
    int resourceIDs[SPRITE_RESOURCE_MAX];

    ManagedSprite *managedSprite = Heap_Alloc(spriteManager->heapID, sizeof(ManagedSprite));

    managedSprite->resourceHeaderList = Heap_Alloc(spriteManager->heapID, sizeof(SpriteResourcesHeaderList));
    managedSprite->resourceHeaderList->headers = Heap_Alloc(spriteManager->heapID, sizeof(SpriteResourcesHeader));
    managedSprite->resourceHeader = managedSprite->resourceHeaderList->headers;

    for (int resourceTypeIndex = 0; resourceTypeIndex < SPRITE_RESOURCE_MAX; resourceTypeIndex++) {
        resourceIDs[resourceTypeIndex] = template->resources[resourceTypeIndex];
    }

    if (spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_CELL] == NULL || spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_ANIM] == NULL) {
        resourceIDs[SPRITE_RESOURCE_MULTI_CELL] = SPRITE_RESOURCE_NONE;
        resourceIDs[SPRITE_RESOURCE_MULTI_ANIM] = SPRITE_RESOURCE_NONE;
    } else {
        if (resourceIDs[SPRITE_RESOURCE_MULTI_CELL] != SPRITE_RESOURCE_NONE && !SpriteResourceCollection_IsIDUnused(spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_CELL], resourceIDs[SPRITE_RESOURCE_MULTI_CELL])) {
            resourceIDs[SPRITE_RESOURCE_MULTI_CELL] = SPRITE_RESOURCE_NONE;
        }

        if (resourceIDs[SPRITE_RESOURCE_MULTI_ANIM] != SPRITE_RESOURCE_NONE && !SpriteResourceCollection_IsIDUnused(spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_ANIM], resourceIDs[SPRITE_RESOURCE_MULTI_ANIM])) {
            resourceIDs[SPRITE_RESOURCE_MULTI_ANIM] = SPRITE_RESOURCE_NONE;
        }
    }

    SpriteResourcesHeader_Init(managedSprite->resourceHeader, resourceIDs[SPRITE_RESOURCE_CHAR], resourceIDs[SPRITE_RESOURCE_PLTT], resourceIDs[SPRITE_RESOURCE_CELL], resourceIDs[SPRITE_RESOURCE_ANIM], resourceIDs[SPRITE_RESOURCE_MULTI_CELL], resourceIDs[SPRITE_RESOURCE_MULTI_ANIM], template->vramTransfer, template->bgPriority, spriteManager->resourceCollections[SPRITE_RESOURCE_CHAR], spriteManager->resourceCollections[SPRITE_RESOURCE_PLTT], spriteManager->resourceCollections[SPRITE_RESOURCE_CELL], spriteManager->resourceCollections[SPRITE_RESOURCE_ANIM], spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_CELL], spriteManager->resourceCollections[SPRITE_RESOURCE_MULTI_ANIM]);

    spriteTemplate.list = spriteManager->spriteList;
    spriteTemplate.resourceData = managedSprite->resourceHeader;
    spriteTemplate.position.x = FX32_CONST(template->x);
    spriteTemplate.position.y = FX32_CONST(template->y);
    spriteTemplate.position.z = FX32_CONST(template->z);

    if (template->vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
        spriteTemplate.position.y += (192 << FX32_SHIFT);
    }

    spriteTemplate.affineScale.x = FX32_ONE;
    spriteTemplate.affineScale.y = FX32_ONE;
    spriteTemplate.affineScale.z = FX32_ONE;
    spriteTemplate.affineZRotation = 0;
    spriteTemplate.priority = template->priority;
    spriteTemplate.vramType = template->vramType;
    spriteTemplate.heapID = spriteManager->heapID;

    managedSprite->sprite = SpriteList_AddAffine(&spriteTemplate);

    if (managedSprite->sprite != NULL) {
        int paletteOffset = Sprite_GetExplicitPalette(managedSprite->sprite);
        Sprite_SetAnim(managedSprite->sprite, template->animIdx);
        Sprite_SetExplicitPalette(managedSprite->sprite, paletteOffset + template->plttIdx);
    } else {
        GF_ASSERT(FALSE);
    }

    return managedSprite;
}

void SpriteResourceManager_Cleanup(SpriteResourceManager *spriteManager)
{
    SpriteList_Delete(spriteManager->spriteList);
    SpriteTransfer_ResetCharTransferList(spriteManager->resourceLists[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransferList(spriteManager->resourceLists[SPRITE_RESOURCE_PLTT]);

    for (u32 resourceTypeIndex = 0; resourceTypeIndex < spriteManager->resourceTypeCount; resourceTypeIndex++) {
        SpriteResourceList_Delete(spriteManager->resourceLists[resourceTypeIndex]);
        SpriteResourceCollection_Delete(spriteManager->resourceCollections[resourceTypeIndex]);
    }
}
