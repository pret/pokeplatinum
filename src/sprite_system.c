#include "sprite_system.h"

#include "nitro/fx/fx.h"
#include <string.h>

#include "constants/heap.h"

#include "nnsys/g2d/g2d_Image.h"

#include "cell_actor.h"
#include "cell_transfer.h"
#include "char_transfer.h"
#include "heap.h"
#include "narc.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"

static CellActor *CreateSpriteFromResourceHeader(SpriteSystem *spriteSys, SpriteManager *spriteMan, int resourceHeaderID, s16 x, s16 y, s16 z, u16 animIdx, int priority, int plttIdx, enum NNS_G2D_VRAM_TYPE vramType, int param10, int param11, int param12, int param13);
static BOOL LoadResObjInternal(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, int compressed, int type, int resourceID);
static BOOL LoadResObjFromNarcInternal(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int type, int resourceID);
static BOOL RegisterLoadedResource(SpriteResourceList *resourceList, SpriteResource *resource);
static BOOL UnregisterLoadedResource(SpriteResourceCollection *ownedResources, SpriteResourceList *unownedResources, int toUnload);
static BOOL UnregisterLoadedCharResource(SpriteResourceCollection *ownedResources, SpriteResourceList *unownedResources, int toUnload);
static BOOL UnregisterLoadedPlttResource(SpriteResourceCollection *ownedResources, SpriteResourceList *unownedResources, int toUnload);
static void SetSpriteAnimateFlag(CellActor *sprite, BOOL animate);
static void SetSpriteAnimationSpeed(CellActor *sprite, fx32 speed);
static BOOL IsSpriteAnimated(CellActor *sprite);
static void SetSpriteAnimationFrame(CellActor *sprite, u16 frame);
static u16 GetSpriteAnimationFrame(CellActor *sprite);
static void SetSpriteExplicitPaletteOffset(CellActor *sprite, int paletteOffset);
static void SetSpriteExplicitPriority(CellActor *sprite, int priority);
static void SetSpritePriority(CellActor *sprite, int priority);
static u32 GetSpritePriority(CellActor *sprite);
static void SetSpriteAffineOverwriteMode(CellActor *sprite, enum AffineOverwriteMode mode);
static void SetSpriteAffineScale(CellActor *sprite, f32 xScale, f32 yScale);
static void OffsetSpriteAffineScale(CellActor *sprite, f32 xOffset, f32 yOffset);
static void GetSpriteAffineScale(CellActor *sprite, f32 *outXScale, f32 *outYOffset);
static void SetSpriteAffineZRotation(CellActor *sprite, u16 angle);
static void OffsetSpriteAffineZRotation(CellActor *sprite, s32 offset);

SpriteSystem *SpriteSystem_Alloc(enum HeapId heapID)
{
    SpriteSystem *spriteSys = Heap_AllocFromHeap(heapID, sizeof(SpriteSystem));
    if (spriteSys == NULL) {
        return NULL;
    }

    spriteSys->heapId = heapID;
    spriteSys->spriteManagerCount = 0;
    spriteSys->inUse = TRUE;

    return spriteSys;
}

SpriteManager *SpriteManager_New(SpriteSystem *spriteSys)
{
    GF_ASSERT(spriteSys != NULL);

    SpriteManager *spriteMan = Heap_AllocFromHeap(spriteSys->heapId, sizeof(SpriteManager));
    if (spriteMan == NULL) {
        return NULL;
    }

    spriteSys->spriteManagerCount++;
    for (int i = 0; i < 6; i++) {
        spriteMan->ownedResources[i] = NULL;
    }

    return spriteMan;
}

G2dRenderer *SpriteSystem_GetRenderer(SpriteSystem *spriteSys)
{
    return &spriteSys->renderer;
}

BOOL SpriteSystem_Init(SpriteSystem *spriteSys, const RenderOamTemplate *oamTemplate, const CharTransferTemplateWithModes *transferTemplate, int plttCapacity)
{
    GF_ASSERT(spriteSys != NULL);
    if (spriteSys == NULL) {
        return FALSE;
    }

    CharTransferTemplate charTransferTemplate;
    charTransferTemplate.maxTasks = transferTemplate->maxTasks;
    charTransferTemplate.sizeMain = transferTemplate->sizeMain;
    charTransferTemplate.sizeSub = transferTemplate->sizeSub;
    charTransferTemplate.heapID = spriteSys->heapId;
    CharTransfer_InitWithVramModes(&charTransferTemplate, transferTemplate->modeMain, transferTemplate->modeSub);
    PlttTransfer_Init(plttCapacity, spriteSys->heapId);
    NNS_G2dInitOamManagerModule();

    if (spriteSys->inUse == TRUE) {
        RenderOam_Init(oamTemplate->mainOamStart, oamTemplate->mainOamCount, oamTemplate->mainAffineOamStart, oamTemplate->mainAffineOamCount, oamTemplate->subOamStart, oamTemplate->subOamCount, oamTemplate->subAffineOamStart, oamTemplate->subAffineOamCount, spriteSys->heapId);
    }

    spriteSys->cellTransferStates = CellTransfer_New(32, spriteSys->heapId);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();

    return TRUE;
}

BOOL SpriteSystem_InitSprites(SpriteSystem *spriteSys, SpriteManager *spriteMan, int maxSprites)
{
    if (spriteSys == NULL || spriteMan == NULL) {
        return FALSE;
    }

    spriteMan->sprites = SpriteList_InitRendering(maxSprites, &spriteSys->renderer, spriteSys->heapId);
    return TRUE;
}

void SpriteSystem_DeleteSprite(CellActor *sprite)
{
    CellActor_Delete(sprite);
}

void SpriteSystem_DrawSprites(SpriteManager *spriteMan)
{
    GF_ASSERT(spriteMan != NULL);
    CellActorCollection_Update(spriteMan->sprites);
}

void SpriteSystem_TransferOam(void)
{
    RenderOam_Transfer();
}

void SpriteSystem_UpdateTransfer(void)
{
    CellTransfer_Update();
}

void SpriteManager_DeleteAllSprites(SpriteManager *spriteMan)
{
    CellActorCollection_Delete(spriteMan->sprites);
}

void SpriteManager_FreeResourceHeaders(SpriteManager *spriteMan)
{
    if (spriteMan->resourceHeaders == NULL) {
        return;
    }

    SpriteResourcesHeaderList_Free(spriteMan->resourceHeaders);
}

void SpriteManager_FreeResources(SpriteManager *spriteMan)
{
    for (int i = 0; i < spriteMan->numResourceTypes; i++) {
        SpriteResourceTable *resTable = SpriteResourceTable_GetArrayElement(spriteMan->resourcePaths, i);
        SpriteResourceTable_Clear(resTable);
    }

    Heap_FreeToHeap(spriteMan->resourcePaths);
    SpriteTransfer_ResetCharTransferList(spriteMan->unownedResources[SPRITE_RESOURCE_TILES]);
    SpriteTransfer_ResetPlttTransferList(spriteMan->unownedResources[SPRITE_RESOURCE_PALETTE]);

    for (int i = 0; i < spriteMan->numResourceTypes; i++) {
        SpriteResourceList_Delete(spriteMan->unownedResources[i]);
        SpriteResourceCollection_Delete(spriteMan->ownedResources[i]);
    }
}

void SpriteSystem_FreeVramTransfers(SpriteSystem *spriteSys)
{
    CellTransfer_Free(spriteSys->cellTransferStates);
    CharTransfer_Free();
    PlttTransfer_Free();

    if (spriteSys->inUse == TRUE) {
        RenderOam_Free();
    }
}

void SpriteSystem_FreeSpriteManager(SpriteSystem *spriteSys, SpriteManager *spriteMan)
{
    spriteSys->spriteManagerCount--;
    Heap_FreeToHeap(spriteMan);
}

void SpriteSystem_DestroySpriteManager(SpriteSystem *spriteSys, SpriteManager *spriteMan)
{
    SpriteManager_DeleteAllSprites(spriteMan);
    SpriteManager_FreeResourceHeaders(spriteMan);
    SpriteManager_FreeResources(spriteMan);
    SpriteSystem_FreeSpriteManager(spriteSys, spriteMan);
}

void SpriteSystem_Free(SpriteSystem *spriteSys)
{
    GF_ASSERT(spriteSys->spriteManagerCount == 0);
    SpriteSystem_FreeVramTransfers(spriteSys);
    Heap_FreeToHeap(spriteSys);
}

BOOL SpriteSystem_LoadResourceDataFromFilepaths(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteResourceDataPaths *paths)
{
    int numResourceTypes = SPRITE_RESOURCE_MAX;

    if (spriteSys == NULL || spriteMan == NULL) {
        return FALSE;
    }

    if (paths->asStruct.mcellResources == NULL) {
        numResourceTypes = SPRITE_RESOURCE_MAX - 2;
    }

    spriteMan->numResourceTypes = numResourceTypes;
    int resourceCount = SpriteResourceTable_Size();
    spriteMan->resourcePaths = Heap_AllocFromHeap(spriteSys->heapId, resourceCount * numResourceTypes);

    for (int i = 0; i < numResourceTypes; i++) {
        SpriteResourceTable *resourceTable = SpriteResourceTable_GetArrayElement(spriteMan->resourcePaths, i);
        void *buf = ReadFileToHeap(spriteSys->heapId, paths->asArray[i]);
        SpriteResourceTable_LoadFromBinary(buf, resourceTable, spriteSys->heapId);
        Heap_FreeToHeap(buf);
    }

    for (int i = 0; i < numResourceTypes; i++) {
        SpriteResourceTable *resourceTable = SpriteResourceTable_GetArrayElement(spriteMan->resourcePaths, i);
        resourceCount = SpriteResourceTable_GetCount(resourceTable);
        spriteMan->ownedResources[i] = SpriteResourceCollection_New(resourceCount, i, spriteSys->heapId);
    }

    for (int i = 0; i < numResourceTypes; i++) {
        SpriteResourceTable *resourceTable = SpriteResourceTable_GetArrayElement(spriteMan->resourcePaths, i);
        resourceCount = SpriteResourceTable_GetCount(resourceTable);
        spriteMan->unownedResources[i] = SpriteResourceList_New(resourceCount, spriteSys->heapId);
        spriteMan->loadedResourceCount[i] = SpriteResourceCollection_Extend(spriteMan->ownedResources[i], resourceTable, spriteMan->unownedResources[i], spriteSys->heapId);
    }

    SpriteTransfer_RequestCharList(spriteMan->unownedResources[SPRITE_RESOURCE_TILES]);
    SpriteTransfer_RequestPlttWholeRangeList(spriteMan->unownedResources[SPRITE_RESOURCE_PALETTE]);

    void *buf = ReadFileToHeap(spriteSys->heapId, paths->asStruct.spriteTable);
    spriteMan->resourceHeaders = SpriteResourcesHeaderList_NewFromResdat(buf,
        spriteSys->heapId,
        spriteMan->ownedResources[SPRITE_RESOURCE_TILES],
        spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE],
        spriteMan->ownedResources[SPRITE_RESOURCE_SPRITE],
        spriteMan->ownedResources[SPRITE_RESOURCE_SPRITE_ANIM],
        spriteMan->ownedResources[SPRITE_RESOURCE_MULTI_SPRITE],
        spriteMan->ownedResources[SPRITE_RESOURCE_MULTI_SPRITE_ANIM]);

    Heap_FreeToHeap(buf);
    return TRUE;
}

CellActor *SpriteSystem_NewSpriteFromResourceHeader(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteTemplateFromResourceHeader *template)
{
    return CreateSpriteFromResourceHeader(spriteSys,
        spriteMan,
        template->resourceHeaderID,
        template->x,
        template->y,
        template->x,
        template->animIdx,
        template->priority,
        template->plttIdx,
        template->vramType,
        template->dummy18,
        template->dummy1C,
        template->dummy20,
        template->dummy24);
}

static CellActor *CreateSpriteFromResourceHeader(SpriteSystem *spriteSys, SpriteManager *spriteMan, int resourceHeaderID, s16 x, s16 y, s16 z, u16 animIdx, int priority, int plttIdx, enum NNS_G2D_VRAM_TYPE vramType, int param10, int param11, int param12, int param13)
{
    CellActorInitParamsEx template;

    template.collection = spriteMan->sprites;
    template.resourceData = &spriteMan->resourceHeaders->headers[resourceHeaderID];
    template.position.x = FX32_CONST(x);
    template.position.y = FX32_CONST(y);
    template.position.z = FX32_CONST(z);

    if (vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
        template.position.y += (192 << FX32_SHIFT);
    }

    template.affineScale.x = FX32_ONE;
    template.affineScale.y = FX32_ONE;
    template.affineScale.z = FX32_ONE;
    template.affineZRotation = 0;
    template.priority = priority;
    template.vramType = vramType;
    template.heapID = spriteSys->heapId;

    CellActor *sprite = CellActorCollection_AddEx(&template);
    if (sprite != NULL) {
        CellActor_SetAnim(sprite, animIdx);
        CellActor_SetExplicitPalette(sprite, plttIdx);
    }

    return sprite;
}

BOOL SpriteSystem_InitManagerWithCapacities(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteResourceCapacities *capacities)
{
    int i, j; // must pre-declare to match
    int numResourceTypes = SPRITE_RESOURCE_MAX;

    if (spriteSys == NULL || spriteMan == NULL) {
        return FALSE;
    }

    if (capacities->asStruct.mcellCapacity == 0 || capacities->asStruct.manimCapacity == 0) {
        numResourceTypes = SPRITE_RESOURCE_MAX - 2;
    }

    spriteMan->numResourceTypes = numResourceTypes;
    for (i = 0; i < numResourceTypes; i++) {
        spriteMan->ownedResources[i] = SpriteResourceCollection_New(capacities->asArray[i], i, spriteSys->heapId);
    }

    for (i = 0; i < numResourceTypes; i++) {
        int capacity = capacities->asArray[i];
        if (capacity == 0) {
            continue;
        }

        spriteMan->unownedResources[i] = SpriteResourceList_New(capacity, spriteSys->heapId);
        spriteMan->loadedResourceCount[i] = 0;

        for (j = 0; j < spriteMan->unownedResources[i]->capacity; j++) {
            spriteMan->unownedResources[i]->resources[j] = NULL;
        }
    }

    return TRUE;
}

BOOL SpriteSystem_LoadCharResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddTiles(spriteMan->ownedResources[SPRITE_RESOURCE_TILES],
        narcID,
        memberIdx,
        compressed,
        resourceID,
        vramType,
        spriteSys->heapId);
    if (resource != NULL) {
        SpriteTransfer_RequestCharAtEnd(resource);
        RegisterLoadedResource(spriteMan->unownedResources[SPRITE_RESOURCE_TILES], resource);
        return TRUE;
    }

    GF_ASSERT(FALSE);
    return (resource == NULL) ? FALSE : TRUE;
}

BOOL SpriteSystem_LoadCharResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddTilesFrom(spriteMan->ownedResources[SPRITE_RESOURCE_TILES],
        narc,
        memberIdx,
        compressed,
        resourceID,
        vramType,
        spriteSys->heapId);
    if (resource != NULL) {
        SpriteTransfer_RequestCharAtEnd(resource);
        RegisterLoadedResource(spriteMan->unownedResources[SPRITE_RESOURCE_TILES], resource);
        return TRUE;
    }

    GF_ASSERT(FALSE);
    return (resource == NULL) ? FALSE : TRUE;
}

s8 SpriteSystem_LoadPlttResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE], resourceID) == FALSE) {
        return -1;
    }

    SpriteResource *resource = SpriteResourceCollection_AddPalette(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE],
        narcID,
        memberIdx,
        compressed,
        resourceID,
        vramType,
        paletteIdx,
        spriteSys->heapId);
    if (resource != NULL) {
        BOOL success = SpriteTransfer_RequestPlttFreeSpace(resource);
        GF_ASSERT(success == TRUE);
        RegisterLoadedResource(spriteMan->unownedResources[SPRITE_RESOURCE_PALETTE], resource);
        return SpriteTransfer_GetPlttOffset(resource, vramType);
    }

    GF_ASSERT(FALSE);
    return -1;
}

s8 SpriteSystem_LoadPlttResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE], resourceID) == FALSE) {
        return -1;
    }

    SpriteResource *resource = SpriteResourceCollection_AddPaletteFrom(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE],
        narc,
        memberIdx,
        compressed,
        resourceID,
        vramType,
        paletteIdx,
        spriteSys->heapId);
    if (resource != NULL) {
        BOOL success = SpriteTransfer_RequestPlttFreeSpace(resource);
        GF_ASSERT(success == TRUE);
        RegisterLoadedResource(spriteMan->unownedResources[SPRITE_RESOURCE_PALETTE], resource);

        return SpriteTransfer_GetPlttOffset(resource, vramType);
    }

    GF_ASSERT(FALSE);
    return -1;
}

u8 SpriteSystem_LoadPaletteBuffer(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    int paletteOffset = SpriteSystem_LoadPlttResObj(spriteSys, spriteMan, narcID, memberIdx, compressed, paletteIdx, vramType, resourceID);
    if (paletteOffset != -1) {
        PaletteData_LoadBufferFromHardware(paletteData, bufferID, paletteOffset * 16, paletteIdx * PALETTE_SIZE_BYTES);
    }

    return paletteOffset;
}

u8 SpriteSystem_LoadPaletteBufferFromOpenNarc(PaletteData *paletteData, enum PaletteBufferID bufferID, SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int paletteIdx, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    int paletteOffset = SpriteSystem_LoadPlttResObjFromOpenNarc(spriteSys, spriteMan, narc, memberIdx, compressed, paletteIdx, vramType, resourceID);
    if (paletteOffset != -1) {
        PaletteData_LoadBufferFromHardware(paletteData, bufferID, paletteOffset * 16, paletteIdx * PALETTE_SIZE_BYTES);
    }

    return paletteOffset;
}

BOOL SpriteSystem_LoadCellResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, int compressed, int resourceID)
{
    return LoadResObjInternal(spriteSys, spriteMan, narcID, memberIdx, compressed, SPRITE_RESOURCE_SPRITE, resourceID);
}

BOOL SpriteSystem_LoadCellResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID)
{
    return LoadResObjFromNarcInternal(spriteSys, spriteMan, narc, memberIdx, compressed, SPRITE_RESOURCE_SPRITE, resourceID);
}

BOOL SpriteSystem_LoadAnimResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, int compressed, int resourceID)
{
    return LoadResObjInternal(spriteSys, spriteMan, narcID, memberIdx, compressed, SPRITE_RESOURCE_SPRITE_ANIM, resourceID);
}

BOOL SpriteSystem_LoadAnimResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID)
{
    return LoadResObjFromNarcInternal(spriteSys, spriteMan, narc, memberIdx, compressed, SPRITE_RESOURCE_SPRITE_ANIM, resourceID);
}

CellActorData *SpriteSystem_NewSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteTemplate *template)
{
    int i;
    int spritePalette;
    CellActorData *managedSprite = NULL;
    CellActorInitParamsEx innerTemplate;
    int resourceIDs[6];

    managedSprite = Heap_AllocFromHeap(spriteSys->heapId, sizeof(CellActorData));
    if (managedSprite == NULL) {
        return NULL;
    }

    managedSprite->resourceHeaderList = Heap_AllocFromHeap(spriteSys->heapId, sizeof(SpriteResourcesHeaderList));
    if (managedSprite->resourceHeaderList == NULL) {
        return NULL;
    }

    managedSprite->resourceHeaderList->headers = Heap_AllocFromHeap(spriteSys->heapId, sizeof(CellActorResourceData));
    managedSprite->resourceHeader = managedSprite->resourceHeaderList->headers;
    if (managedSprite->resourceHeaderList->headers == NULL) {
        if (managedSprite->resourceHeaderList) {
            Heap_FreeToHeap(managedSprite->resourceHeaderList);
        }
        return NULL;
    }

    for (i = 0; i < SPRITE_RESOURCE_MAX; i++) {
        resourceIDs[i] = template->resources[i];
    }

    if (spriteMan->ownedResources[SPRITE_RESOURCE_MULTI_SPRITE] == NULL || spriteMan->ownedResources[SPRITE_RESOURCE_MULTI_SPRITE_ANIM] == NULL) {
        resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE] = SPRITE_RESOURCE_NONE;
        resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE_ANIM] = SPRITE_RESOURCE_NONE;
    } else {
        if (resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE] != SPRITE_RESOURCE_NONE
            && SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_MULTI_SPRITE], resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE]) == FALSE) {
            resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE] = SPRITE_RESOURCE_NONE;
        }

        if (resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE_ANIM] != SPRITE_RESOURCE_NONE
            && SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_MULTI_SPRITE_ANIM], resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE_ANIM]) == 0) {
            resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE_ANIM] = SPRITE_RESOURCE_NONE;
        }
    }

    SpriteResourcesHeader_Init(managedSprite->resourceHeader,
        resourceIDs[SPRITE_RESOURCE_TILES],
        resourceIDs[SPRITE_RESOURCE_PALETTE],
        resourceIDs[SPRITE_RESOURCE_SPRITE],
        resourceIDs[SPRITE_RESOURCE_SPRITE_ANIM],
        resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE],
        resourceIDs[SPRITE_RESOURCE_MULTI_SPRITE_ANIM],
        template->vramTransfer,
        template->bgPriority,
        spriteMan->ownedResources[SPRITE_RESOURCE_TILES],
        spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE],
        spriteMan->ownedResources[SPRITE_RESOURCE_SPRITE],
        spriteMan->ownedResources[SPRITE_RESOURCE_SPRITE_ANIM],
        spriteMan->ownedResources[SPRITE_RESOURCE_MULTI_SPRITE],
        spriteMan->ownedResources[SPRITE_RESOURCE_MULTI_SPRITE_ANIM]);

    innerTemplate.collection = spriteMan->sprites;
    innerTemplate.resourceData = managedSprite->resourceHeader;
    innerTemplate.position.x = FX32_CONST(template->x);
    innerTemplate.position.y = FX32_CONST(template->y);
    innerTemplate.position.z = FX32_CONST(template->z);

    if (template->vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
        innerTemplate.position.y += (192 << FX32_SHIFT);
    }

    innerTemplate.affineScale.x = FX32_ONE;
    innerTemplate.affineScale.y = FX32_ONE;
    innerTemplate.affineScale.z = FX32_ONE;
    innerTemplate.affineZRotation = 0;
    innerTemplate.priority = template->priority;
    innerTemplate.vramType = template->vramType;
    innerTemplate.heapID = spriteSys->heapId;

    managedSprite->sprite = CellActorCollection_AddEx(&innerTemplate);
    managedSprite->vramTransfer = template->vramTransfer;
    if (managedSprite->sprite != NULL) {
        spritePalette = CellActor_GetExplicitPalette(managedSprite->sprite);
        CellActor_SetAnim(managedSprite->sprite, template->animIdx);
        CellActor_SetExplicitPalette(managedSprite->sprite, spritePalette + template->plttIdx);
    } else {
        GF_ASSERT(FALSE);
    }

    return managedSprite;
}

const NNSG2dImagePaletteProxy *SpriteManager_FindPlttResourceProxy(SpriteManager *spriteMan, int resourceID)
{
    SpriteResource *resource = SpriteResourceCollection_Find(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE], resourceID);
    return SpriteTransfer_GetPaletteProxy(resource, NULL);
}

u32 SpriteManager_FindPlttResourceOffset(SpriteManager *spriteMan, int resourceID, enum NNS_G2D_VRAM_TYPE vramType)
{
    SpriteResource *resource = SpriteResourceCollection_Find(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE], resourceID);
    return SpriteTransfer_GetPlttOffset(resource, vramType);
}

BOOL SpriteManager_UnloadCharObjById(SpriteManager *spriteMan, int resourceID)
{
    return UnregisterLoadedCharResource(spriteMan->ownedResources[SPRITE_RESOURCE_TILES], spriteMan->unownedResources[SPRITE_RESOURCE_TILES], resourceID);
}

BOOL SpriteManager_UnloadPlttObjById(SpriteManager *spriteMan, int resourceID)
{
    return UnregisterLoadedPlttResource(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE], spriteMan->unownedResources[SPRITE_RESOURCE_PALETTE], resourceID);
}

BOOL SpriteManager_UnloadCellObjById(SpriteManager *spriteMan, int resourceID)
{
    return UnregisterLoadedResource(spriteMan->ownedResources[SPRITE_RESOURCE_SPRITE], spriteMan->unownedResources[SPRITE_RESOURCE_SPRITE], resourceID);
}

BOOL SpriteManager_UnloadAnimObjById(SpriteManager *spriteMan, int resourceID)
{
    return UnregisterLoadedResource(spriteMan->ownedResources[SPRITE_RESOURCE_SPRITE_ANIM], spriteMan->unownedResources[SPRITE_RESOURCE_SPRITE_ANIM], resourceID);
}

void SpriteSystem_FreeResourcesAndManager(SpriteSystem *spriteSys, SpriteManager *spriteMan)
{
    SpriteManager_DeleteAllSprites(spriteMan);
    SpriteTransfer_ResetCharTransferList(spriteMan->unownedResources[SPRITE_RESOURCE_TILES]);
    SpriteTransfer_ResetPlttTransferList(spriteMan->unownedResources[SPRITE_RESOURCE_PALETTE]);

    for (int i = 0; i < spriteMan->numResourceTypes; i++) {
        SpriteResourceList_Delete(spriteMan->unownedResources[i]);
        SpriteResourceCollection_Delete(spriteMan->ownedResources[i]);
    }

    SpriteSystem_FreeSpriteManager(spriteSys, spriteMan);
}

void Sprite_DeleteAndFreeResources(CellActorData *sprite)
{
    if (sprite->vramTransfer) {
        SpriteTransfer_DeleteCharTransfer(sprite->resourceHeader->imageProxy);
    }

    CellActor_Delete(sprite->sprite);
    SpriteResourcesHeaderList_Free(sprite->resourceHeaderList);
    Heap_FreeToHeap(sprite);
}

static BOOL LoadResObjInternal(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, int compressed, int type, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[type], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_Add(spriteMan->ownedResources[type], narcID, memberIdx, compressed, resourceID, type, spriteSys->heapId);
    if (resource != NULL) {
        BOOL success = RegisterLoadedResource(spriteMan->unownedResources[type], resource);
        GF_ASSERT(success == TRUE);
        return success;
    }

    GF_ASSERT(FALSE);
    return (resource == NULL) ? FALSE : TRUE;
}

static BOOL LoadResObjFromNarcInternal(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int type, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[type], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddFrom(spriteMan->ownedResources[type], narc, memberIdx, compressed, resourceID, type, spriteSys->heapId);
    if (resource != NULL) {
        BOOL success = RegisterLoadedResource(spriteMan->unownedResources[type], resource);
        GF_ASSERT(success == TRUE);
        return success;
    }

    GF_ASSERT(FALSE);
    return (resource == NULL) ? FALSE : TRUE;
}

static BOOL RegisterLoadedResource(SpriteResourceList *resourceList, SpriteResource *resource)
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

static BOOL UnregisterLoadedResource(SpriteResourceCollection *ownedResources, SpriteResourceList *unownedResources, int toUnload)
{
    for (int i = 0; i < unownedResources->capacity; i++) {
        if (unownedResources->resources[i] == NULL) {
            continue;
        }

        int resourceID = SpriteResource_GetID(unownedResources->resources[i]);
        if (resourceID == toUnload) {
            SpriteResourceCollection_Remove(ownedResources, unownedResources->resources[i]);
            unownedResources->resources[i] = NULL;
            unownedResources->count--;
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL UnregisterLoadedCharResource(SpriteResourceCollection *ownedResources, SpriteResourceList *unownedResources, int toUnload)
{
    for (int i = 0; i < unownedResources->capacity; i++) {
        if (unownedResources->resources[i] == NULL) {
            continue;
        }

        int resourceID = SpriteResource_GetID(unownedResources->resources[i]);
        if (resourceID == toUnload) {
            CharTransfer_ResetTask(toUnload);
            SpriteResourceCollection_Remove(ownedResources, unownedResources->resources[i]);
            unownedResources->resources[i] = NULL;
            unownedResources->count--;
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL UnregisterLoadedPlttResource(SpriteResourceCollection *ownedResources, SpriteResourceList *unownedResources, int toUnload)
{
    for (int i = 0; i < unownedResources->capacity; i++) {
        if (unownedResources->resources[i] == NULL) {
            continue;
        }

        int resourceID = SpriteResource_GetID(unownedResources->resources[i]);
        if (resourceID == toUnload) {
            PlttTransfer_ResetTask(toUnload);
            SpriteResourceCollection_Remove(ownedResources, unownedResources->resources[i]);
            unownedResources->resources[i] = NULL;
            unownedResources->count--;
            return TRUE;
        }
    }

    return FALSE;
}

void Sprite_TickFrame(CellActor *sprite)
{
    CellActor_UpdateAnim(sprite, FX32_ONE);
}

void Sprite_TickOneFrame(CellActorData *managedSprite)
{
    Sprite_TickFrame(managedSprite->sprite);
}

void Sprite_TickTwoFrame(CellActorData *managedSprite)
{
    CellActor_UpdateAnim(managedSprite->sprite, FX32_CONST(2));
}

void Sprite_TickNFrames(CellActorData *managedSprite, fx32 frames)
{
    CellActor_UpdateAnim(managedSprite->sprite, frames);
}

u32 Sprite_GetNumFrames(CellActorData *managedSprite)
{
    return CellActor_GetAnimCount(managedSprite->sprite);
}

void Sprite_SetAnim(CellActorData *managedSprite, u32 animID)
{
    CellActor_SetAnim(managedSprite->sprite, animID);
}

void Sprite_SetAnimNoRestart(CellActorData *managedSprite, u32 animID)
{
    CellActor_SetAnimNoRestart(managedSprite->sprite, animID);
}

u32 Sprite_GetActiveAnim(CellActorData *managedSprite)
{
    return CellActor_GetActiveAnim(managedSprite->sprite);
}

static void SetSpriteAnimateFlag(CellActor *sprite, BOOL animate)
{
    CellActor_SetAnimateFlag(sprite, animate);
}

void Sprite_SetAnimateFlag(CellActorData *managedSprite, BOOL animate)
{
    SetSpriteAnimateFlag(managedSprite->sprite, animate);
}

static void SetSpriteAnimationSpeed(CellActor *sprite, fx32 speed)
{
    CellActor_SetAnimSpeed(sprite, speed);
}

void Sprite_SetAnimationSpeed(CellActorData *managedSprite, fx32 animSpeed)
{
    SetSpriteAnimationSpeed(managedSprite->sprite, animSpeed);
}

static BOOL IsSpriteAnimated(CellActor *sprite)
{
    return CellActor_IsAnimated(sprite);
}

BOOL Sprite_IsAnimated(CellActorData *managedSprite)
{
    return IsSpriteAnimated(managedSprite->sprite);
}

void SetSpriteAnimationFrame(CellActor *sprite, u16 frame)
{
    SpriteActor_SetAnimFrame(sprite, frame);
}

void Sprite_SetAnimationFrame(CellActorData *managedSprite, u16 frame)
{
    SetSpriteAnimationFrame(managedSprite->sprite, frame);
}

static u16 GetSpriteAnimationFrame(CellActor *sprite)
{
    return CellActor_GetAnimFrame(sprite);
}

u16 Sprite_GetAnimationFrame(CellActorData *managedSprite)
{
    return GetSpriteAnimationFrame(managedSprite->sprite);
}

void Sprite_SetDrawFlag(CellActor *sprite, BOOL draw)
{
    CellActor_SetDrawFlag(sprite, draw);
}

void Sprite_SetDrawFlag2(CellActorData *managedSprite, BOOL draw)
{
    Sprite_SetDrawFlag(managedSprite->sprite, draw);
}

int Sprite_GetDrawFlag(CellActor *sprite)
{
    return CellActor_GetDrawFlag(sprite);
}

int Sprite_GetDrawFlag2(CellActorData *managedSprite)
{
    return Sprite_GetDrawFlag(managedSprite->sprite);
}

void Sprite_SetExplicitPalette(CellActor *sprite, int palette)
{
    CellActor_SetExplicitPalette(sprite, palette);
}

void Sprite_SetExplicitPalette2(CellActorData *managedSprite, int paletteIdx)
{
    Sprite_SetExplicitPalette(managedSprite->sprite, paletteIdx);
}

static void SetSpriteExplicitPaletteOffset(CellActor *sprite, int paletteOffset)
{
    CellActor_SetExplicitPaletteOffset(sprite, paletteOffset);
}

void Sprite_SetExplicitPaletteOffset(CellActorData *managedSprite, int paletteOffset)
{
    SetSpriteExplicitPaletteOffset(managedSprite->sprite, paletteOffset);
}

int Sprite_GetExplicitPaletteOffset(CellActorData *managedSprite)
{
    return CellActor_GetExplicitPaletteOffset(managedSprite->sprite);
}

static void SetSpriteExplicitPriority(CellActor *sprite, int explicitPriority)
{
    CellActor_SetExplicitPriority(sprite, explicitPriority);
}

int Sprite_GetExplicitPriority(CellActorData *managedSprite)
{
    return CellActor_GetExplicitPriority(managedSprite->sprite);
}

void Sprite_SetExplicitPriority(CellActorData *managedSprite, int explicitPriority)
{
    SetSpriteExplicitPriority(managedSprite->sprite, explicitPriority);
}

static void SetSpritePriority(CellActor *sprite, int priority)
{
    CellActor_SetPriority(sprite, priority);
}

void Sprite_SetPriority(CellActorData *managedSprite, int priority)
{
    SetSpritePriority(managedSprite->sprite, priority);
}

u32 GetSpritePriority(CellActor *sprite)
{
    return CellActor_GetPriority(sprite);
}

u32 Sprite_GetPriority(CellActorData *managedSprite)
{
    return GetSpritePriority(managedSprite->sprite);
}

void Sprite_SetPositionXY(CellActor *sprite, s16 x, s16 y)
{
    VecFx32 position;
    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;
    if (CellActor_GetVRamType(sprite) == NNS_G2D_VRAM_TYPE_2DSUB) {
        position.y += (192 << FX32_SHIFT);
    }
    position.z = 0;

    CellActor_SetPosition(sprite, &position);
}

void Sprite_SetPositionXY2(CellActorData *managedSprite, s16 x, s16 y)
{
    Sprite_SetPositionXY(managedSprite->sprite, x, y);
}

void Sprite_SetPositionXYWithSubscreenOffset(CellActor *sprite, s16 x, s16 y, fx32 offset)
{
    VecFx32 position;
    position.x = x * FX32_ONE;
    position.y = y * FX32_ONE;
    if (CellActor_GetVRamType(sprite) == NNS_G2D_VRAM_TYPE_2DSUB) {
        position.y += offset;
    }
    position.z = 0;

    CellActor_SetPosition(sprite, &position);
}

void Sprite_SetPositionXYWithSubscreenOffset2(CellActorData *managedSprite, s16 x, s16 y, fx32 offset)
{
    Sprite_SetPositionXYWithSubscreenOffset(managedSprite->sprite, x, y, offset);
}

void Sprite_GetPositionXY(CellActor *sprite, s16 *outX, s16 *outY)
{
    const VecFx32 *position = CellActor_GetPosition(sprite);
    *outX = position->x / FX32_ONE;
    if (CellActor_GetVRamType(sprite) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *outY = (position->y - (192 << FX32_SHIFT)) / FX32_ONE;
    } else {
        *outY = position->y / FX32_ONE;
    }
}

void Sprite_GetPositionXY2(CellActorData *managedSprite, s16 *outX, s16 *outY)
{
    Sprite_GetPositionXY(managedSprite->sprite, outX, outY);
}

void Sprite_GetPositionXYWithSubscreenOffset(CellActor *sprite, s16 *outX, s16 *outY, fx32 offset)
{
    const VecFx32 *position = CellActor_GetPosition(sprite);
    *outX = position->x / FX32_ONE;
    if (CellActor_GetVRamType(sprite) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *outY = (position->y - offset) / FX32_ONE;
    } else {
        *outY = position->y / FX32_ONE;
    }
}

void Sprite_GetPositionXYWithSubscreenOffset2(CellActorData *managedSprite, s16 *outX, s16 *outY, fx32 offset)
{
    Sprite_GetPositionXYWithSubscreenOffset(managedSprite->sprite, outX, outY, offset);
}

void Sprite_OffsetPositionXY(CellActor *sprite, s16 x, s16 y)
{
    const VecFx32 *oldPosition = CellActor_GetPosition(sprite);
    VecFx32 newPosition;
    newPosition.x = oldPosition->x + (x * FX32_ONE);
    newPosition.y = oldPosition->y + (y * FX32_ONE);
    newPosition.z = oldPosition->z;
    CellActor_SetPosition(sprite, &newPosition);
}

void Sprite_OffsetPositionXY2(CellActorData *managedSprite, s16 x, s16 y)
{
    Sprite_OffsetPositionXY(managedSprite->sprite, x, y);
}

void Sprite_OffsetPositionFxXY(CellActorData *managedSprite, fx32 x, fx32 y)
{
    const VecFx32 *oldPosition = CellActor_GetPosition(managedSprite->sprite);
    VecFx32 newPosition;
    newPosition.x = oldPosition->x + x;
    newPosition.y = oldPosition->y + y;
    newPosition.z = oldPosition->z;
    CellActor_SetPosition(managedSprite->sprite, &newPosition);
}

void Sprite_SetPositionFxXY(CellActorData *managedSprite, fx32 x, fx32 y)
{
    const VecFx32 *oldPosition = CellActor_GetPosition(managedSprite->sprite);
    VecFx32 newPosition;
    newPosition.x = x;
    newPosition.y = y;
    newPosition.z = oldPosition->z;
    CellActor_SetPosition(managedSprite->sprite, &newPosition);
}

void Sprite_GetPositionFxXY(CellActorData *managedSprite, fx32 *outX, fx32 *outY)
{
    const VecFx32 *position = CellActor_GetPosition(managedSprite->sprite);
    *outX = position->x;
    *outY = position->y;
}

void Sprite_SetPositionFxXYWithSubscreenOffset(CellActorData *managedSprite, fx32 x, fx32 y, fx32 offset)
{
    if (CellActor_GetVRamType(managedSprite->sprite) == NNS_G2D_VRAM_TYPE_2DSUB) {
        Sprite_SetPositionFxXY(managedSprite, x, y + offset);
    } else {
        Sprite_SetPositionFxXY(managedSprite, x, y);
    }
}

void Sprite_GetPositionFxXYWithSubscreenOffset(CellActorData *managedSprite, fx32 *outX, fx32 *outY, fx32 offset)
{
    Sprite_GetPositionFxXY(managedSprite, outX, outY);
    if (CellActor_GetVRamType(managedSprite->sprite) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *outY = *outY - offset;
    }
}

static void SetSpriteAffineOverwriteMode(CellActor *sprite, enum AffineOverwriteMode mode)
{
    CellActor_SetAffineOverwriteMode(sprite, mode);
}

void Sprite_SetAffineOverwriteMode(CellActorData *managedSprite, enum AffineOverwriteMode mode)
{
    SetSpriteAffineOverwriteMode(managedSprite->sprite, mode);
}

static void SetSpriteAffineScale(CellActor *sprite, f32 xScale, f32 yScale)
{
    VecFx32 *scale = (VecFx32 *)CellActor_GetAffineScale(sprite);
    scale->x = (xScale * FX32_ONE);
    scale->y = (yScale * FX32_ONE);
    CellActor_SetAffineScale(sprite, scale);
}

void Sprite_SetAffineScale(CellActorData *managedSprite, f32 xScale, f32 yScale)
{
    SetSpriteAffineScale(managedSprite->sprite, xScale, yScale);
}

static void OffsetSpriteAffineScale(CellActor *sprite, f32 xOffset, f32 yOffset)
{
    VecFx32 *scale = (VecFx32 *)CellActor_GetAffineScale(sprite);
    scale->x += (xOffset * FX32_ONE);
    scale->y += (yOffset * FX32_ONE);
    CellActor_SetAffineScale(sprite, scale);
}

void Sprite_OffsetAffineScale(CellActorData *managedSprite, f32 xOffset, f32 yOffset)
{
    OffsetSpriteAffineScale(managedSprite->sprite, xOffset, yOffset);
}

void GetSpriteAffineScale(CellActor *sprite, f32 *outXScale, f32 *outYScale)
{
    const VecFx32 *scale = CellActor_GetAffineScale(sprite);
    *outXScale = FX_FX32_TO_F32(scale->x);
    *outYScale = FX_FX32_TO_F32(scale->y);
}

void Sprite_GetAffineScale(CellActorData *managedSprite, f32 *outXScale, f32 *outYScale)
{
    GetSpriteAffineScale(managedSprite->sprite, outXScale, outYScale);
}

static void SetSpriteAffineZRotation(CellActor *sprite, u16 angle)
{
    CellActor_SetAffineZRotation(sprite, angle);
}

void Sprite_SetAffineZRotation(CellActorData *managedSprite, u16 angle)
{
    SetSpriteAffineZRotation(managedSprite->sprite, angle);
}

void OffsetSpriteAffineZRotation(CellActor *sprite, s32 offset)
{
    u16 angle = CellActor_GetAffineZRotation(sprite);
    angle += offset;
    CellActor_SetAffineZRotation(sprite, angle);
}

void Sprite_OffsetAffineZRotation(CellActorData *managedSprite, s32 offset)
{
    OffsetSpriteAffineZRotation(managedSprite->sprite, offset);
}

void Sprite_SetFlipMode(CellActor *sprite, int mode)
{
    CellActor_SetFlipMode(sprite, mode);
}

void Sprite_SetFlipMode2(CellActorData *managedSprite, int mode)
{
    Sprite_SetFlipMode(managedSprite->sprite, mode);
}

void Sprite_SetAffineTranslation(CellActorData *managedSprite, s16 x, s16 y)
{
    VecFx32 translation;
    translation.x = x << FX32_SHIFT;
    translation.y = y << FX32_SHIFT;
    translation.z = 0;
    CellActor_SetAffineTranslation(managedSprite->sprite, &translation);
}

void Sprite_SetPixelated(CellActorData *managedSprite, BOOL pixelated)
{
    CellActor_SetPixelated(managedSprite->sprite, pixelated);
}

void Sprite_SetExplicitOamMode(CellActor *sprite, GXOamMode mode)
{
    CellActor_SetExplicitOAMMode(sprite, mode);
}

void Sprite_SetExplicitOamMode2(CellActorData *managedSprite, GXOamMode mode)
{
    Sprite_SetExplicitOamMode(managedSprite->sprite, mode);
}

u32 Sprite_SetUserAttrForCurrentAnimFrame(CellActorData *managedSprite)
{
    return CellActor_GetUserAttrForCurrentAnimFrame(managedSprite->sprite);
}

BOOL SpriteSystem_LoadCharResObjWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddTiles(spriteMan->ownedResources[SPRITE_RESOURCE_TILES],
        narcID,
        memberIdx,
        compressed,
        resourceID,
        vramType,
        spriteSys->heapId);
    if (resource != NULL) {
        SpriteTransfer_RequestCharWithHardwareMappingType(resource);
        RegisterLoadedResource(spriteMan->unownedResources[SPRITE_RESOURCE_TILES], resource);
        return TRUE;
    }

    GF_ASSERT(FALSE);
    return (resource == NULL) ? FALSE : TRUE;
}

BOOL SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddTiles(spriteMan->ownedResources[SPRITE_RESOURCE_TILES],
        narcID,
        memberIdx,
        compressed,
        resourceID,
        vramType,
        spriteSys->heapId);
    if (resource != NULL) {
        SpriteTransfer_RequestCharAtEndWithHardwareMappingType(resource);
        RegisterLoadedResource(spriteMan->unownedResources[SPRITE_RESOURCE_TILES], resource);
        return TRUE;
    }

    GF_ASSERT(FALSE);
    return (resource == NULL) ? FALSE : TRUE;
}

BOOL SpriteSystem_LoadCharResObjFromOpenNarcWithHardwareMappingType(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, enum NNS_G2D_VRAM_TYPE vramType, int resourceID)
{
    if (SpriteResourceCollection_IsIDUnused(spriteMan->ownedResources[SPRITE_RESOURCE_TILES], resourceID) == FALSE) {
        return FALSE;
    }

    SpriteResource *resource = SpriteResourceCollection_AddTilesFrom(spriteMan->ownedResources[0],
        narc,
        memberIdx,
        compressed,
        resourceID,
        vramType,
        spriteSys->heapId);
    if (resource != NULL) {
        SpriteTransfer_RequestCharAtEndWithHardwareMappingType(resource);
        RegisterLoadedResource(spriteMan->unownedResources[SPRITE_RESOURCE_TILES], resource);
        return TRUE;
    }

    GF_ASSERT(FALSE);
    return (resource == NULL) ? FALSE : TRUE;
}

void SpriteSystem_ReplaceCharResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int resourceID)
{
    SpriteResource *resource = SpriteResourceCollection_Find(spriteMan->ownedResources[SPRITE_RESOURCE_TILES], resourceID);
    SpriteResourceCollection_ModifyTiles(spriteMan->ownedResources[SPRITE_RESOURCE_TILES],
        resource,
        narcID,
        memberIdx,
        compressed,
        spriteSys->heapId);
    SpriteTransfer_RetransferCharData(resource);
}

void SpriteSystem_ReplacePlttResObj(SpriteSystem *spriteSys, SpriteManager *spriteMan, int narcID, int memberIdx, BOOL compressed, int resourceID)
{
    SpriteResource *resource = SpriteResourceCollection_Find(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE], resourceID);
    SpriteResourceCollection_ModifyPalette(spriteMan->ownedResources[SPRITE_RESOURCE_PALETTE],
        resource,
        narcID,
        memberIdx,
        compressed,
        spriteSys->heapId);
    SpriteTransfer_ReplacePlttData(resource);
}

CellActorCollection *SpriteManager_GetSpriteList(SpriteManager *spriteMan)
{
    return spriteMan->sprites;
}

void SpriteSystem_ReplaceCharResObjFromOpenNarc(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, int memberIdx, BOOL compressed, int resourceID)
{
    SpriteResource *resource = SpriteResourceCollection_Find(spriteMan->ownedResources[SPRITE_RESOURCE_TILES], resourceID);
    SpriteResourceCollection_ModifyTilesFrom(spriteMan->ownedResources[SPRITE_RESOURCE_TILES],
        resource,
        narc,
        memberIdx,
        compressed,
        spriteSys->heapId);
    SpriteTransfer_RetransferCharData(resource);
}
