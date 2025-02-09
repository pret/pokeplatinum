#include "sprite_system.h"

#include <nitro.h>
#include <string.h>

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

static CellActor *CreateSpriteFromResourceHeader(SpriteSystem *param0, SpriteManager *param1, int param2, s16 param3, s16 param4, s16 param5, u16 param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13);
static BOOL LoadCellResObjInternal(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5, int param6);
static BOOL LoadCellResObjFromNarcInternal(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, int param4, int param5, int param6);
static BOOL RegisterLoadedResource(SpriteResourceList *param0, SpriteResource *param1);
static BOOL UnregisterLoadedCharResource(SpriteResourceCollection *param0, SpriteResourceList *param1, int param2);
static BOOL UnregisterLoadedPlttResource(SpriteResourceCollection *param0, SpriteResourceList *param1, int param2);
static BOOL UnregisterLoadedResource(SpriteResourceCollection *param0, SpriteResourceList *param1, int param2);
static void SetSpriteAnimateFlag(CellActor *param0, int param1);
static void SetSpriteAnimationSpeed(CellActor *param0, fx32 param1);
static BOOL IsSpriteAnimated(CellActor *param0);
static void SetSpriteAnimationFrame(CellActor *param0, u16 param1);
static u16 GetSpriteAnimationFrame(CellActor *param0);
static void SetSpriteExplicitPaletteOffset(CellActor *param0, int param1);
static void SetSpriteExplicitPriority(CellActor *param0, int param1);
static void SetSpritePriority(CellActor *param0, int param1);
static u32 GetSpritePriority(CellActor *param0);
static void SetSpriteAffineOverwriteMode(CellActor *param0, int param1);
static void SetSpriteAffineScale(CellActor *param0, f32 param1, f32 param2);
static void OffsetSpriteAffineScale(CellActor *param0, f32 param1, f32 param2);
static void GetSpriteAffineScale(CellActor *param0, f32 *param1, f32 *param2);
static void SetSpriteAffineZRotation(CellActor *param0, u16 param1);
static void OffsetSpriteAffineZRotation(CellActor *param0, s32 param1);

SpriteSystem *SpriteSystem_Alloc(int param0)
{
    SpriteSystem *v0 = NULL;

    v0 = Heap_AllocFromHeap(param0, sizeof(SpriteSystem));

    if (v0 == NULL) {
        return NULL;
    }

    v0->heapId = param0;
    v0->spriteManagerCount = 0;
    v0->inUse = TRUE;

    return v0;
}

SpriteManager *SpriteManager_New(SpriteSystem *param0)
{
    int v0;
    SpriteManager *v1 = NULL;

    GF_ASSERT(param0 != NULL);

    v1 = Heap_AllocFromHeap(param0->heapId, sizeof(SpriteManager));

    if (v1 == NULL) {
        return NULL;
    }

    param0->spriteManagerCount++;

    for (v0 = 0; v0 < 6; v0++) {
        v1->ownedResources[v0] = NULL;
    }

    return v1;
}

G2dRenderer *SpriteSystem_GetRenderer(SpriteSystem *param0)
{
    return &param0->renderer;
}

BOOL SpriteSystem_Init(SpriteSystem *param0, const RenderOamTemplate *param1, const CharTransferTemplateWithModes *param2, int param3)
{
    GF_ASSERT(param0 != NULL);

    if (param0 == NULL) {
        return 0;
    }

    {
        CharTransferTemplate v0;

        v0.maxTasks = param2->maxTasks;
        v0.sizeMain = param2->sizeMain;
        v0.sizeSub = param2->sizeSub;
        v0.heapID = param0->heapId;

        CharTransfer_InitWithVramModes(&v0, param2->modeMain, param2->modeSub);
    }

    PlttTransfer_Init(param3, param0->heapId);
    NNS_G2dInitOamManagerModule();

    if (param0->inUse == TRUE) {
        RenderOam_Init(param1->mainOamStart, param1->mainOamCount, param1->mainAffineOamStart, param1->mainAffineOamCount, param1->subOamStart, param1->subOamCount, param1->subAffineOamStart, param1->subAffineOamCount, param0->heapId);
    }

    param0->cellTransferStates = CellTransfer_New(32, param0->heapId);

    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();

    return 1;
}

BOOL SpriteSystem_InitSprites(SpriteSystem *param0, SpriteManager *param1, int param2)
{
    if ((param0 == NULL) || (param1 == NULL)) {
        return 0;
    }

    param1->sprites = SpriteList_InitRendering(param2, &param0->renderer, param0->heapId);
    return 1;
}

void SpriteSystem_DeleteSprite(CellActor *param0)
{
    CellActor_Delete(param0);
}

void SpriteSystem_DrawSprites(SpriteManager *param0)
{
    GF_ASSERT(param0 != NULL);
    CellActorCollection_Update(param0->sprites);
}

void SpriteSystem_TransferOam(void)
{
    RenderOam_Transfer();
}

void SpriteSystem_UpdateTransfer(void)
{
    CellTransfer_Update();
}

void SpriteManager_DeleteAllSprites(SpriteManager *param0)
{
    CellActorCollection_Delete(param0->sprites);
}

void SpriteManager_FreeResourceHeaders(SpriteManager *param0)
{
    if (param0->resourceHeaders == NULL) {
        return;
    }

    SpriteResourcesHeaderList_Free(param0->resourceHeaders);
}

void SpriteManager_FreeResources(SpriteManager *param0)
{
    int v0;
    SpriteResourceTable *v1;

    for (v0 = 0; v0 < param0->numResourceTypes; v0++) {
        v1 = SpriteResourceTable_GetArrayElement(param0->resourcePaths, v0);
        SpriteResourceTable_Clear(v1);
    }

    Heap_FreeToHeap(param0->resourcePaths);
    SpriteTransfer_ResetCharTransferList(param0->unownedResources[0]);
    SpriteTransfer_ResetPlttTransferList(param0->unownedResources[1]);

    for (v0 = 0; v0 < param0->numResourceTypes; v0++) {
        SpriteResourceList_Delete(param0->unownedResources[v0]);
        SpriteResourceCollection_Delete(param0->ownedResources[v0]);
    }
}

void SpriteSystem_FreeVramTransfers(SpriteSystem *param0)
{
    CellTransfer_Free(param0->cellTransferStates);
    CharTransfer_Free();

    PlttTransfer_Free();

    if (param0->inUse == TRUE) {
        RenderOam_Free();
    }
}

void SpriteSystem_FreeSpriteManager(SpriteSystem *param0, SpriteManager *param1)
{
    param0->spriteManagerCount--;
    Heap_FreeToHeap(param1);
}

void SpriteSystem_DestroySpriteManager(SpriteSystem *param0, SpriteManager *param1)
{
    SpriteManager_DeleteAllSprites(param1);
    SpriteManager_FreeResourceHeaders(param1);
    SpriteManager_FreeResources(param1);
    SpriteSystem_FreeSpriteManager(param0, param1);
}

void SpriteSystem_Free(SpriteSystem *param0)
{
    GF_ASSERT(param0->spriteManagerCount == 0);

    SpriteSystem_FreeVramTransfers(param0);
    Heap_FreeToHeap(param0);
}

BOOL SpriteSystem_LoadResourceDataFromFilepaths(SpriteSystem *param0, SpriteManager *param1, const SpriteResourceDataPaths *param2)
{
    int v0;
    int v1 = 6;
    int v2;
    SpriteResourceTable *v3;
    void *v4;

    if ((param0 == NULL) || (param1 == NULL)) {
        return 0;
    }

    if (param2->asStruct.mcellResources == NULL) {
        v1 = 6 - 2;
    }

    param1->numResourceTypes = v1;
    v2 = SpriteResourceTable_Size();
    param1->resourcePaths = Heap_AllocFromHeap(param0->heapId, v2 * v1);

    for (v0 = 0; v0 < v1; v0++) {
        v3 = SpriteResourceTable_GetArrayElement(param1->resourcePaths, v0);
        v4 = ReadFileToHeap(param0->heapId, param2->asArray[v0]);

        SpriteResourceTable_LoadFromBinary(v4, v3, param0->heapId);
        Heap_FreeToHeap(v4);
    }

    for (v0 = 0; v0 < v1; v0++) {
        v3 = SpriteResourceTable_GetArrayElement(param1->resourcePaths, v0);
        v2 = SpriteResourceTable_GetCount(v3);

        param1->ownedResources[v0] = SpriteResourceCollection_New(v2, v0, param0->heapId);
    }

    for (v0 = 0; v0 < v1; v0++) {
        v3 = SpriteResourceTable_GetArrayElement(param1->resourcePaths, v0);
        v2 = SpriteResourceTable_GetCount(v3);

        param1->unownedResources[v0] = SpriteResourceList_New(v2, param0->heapId);
        param1->loadedResourceCount[v0] = SpriteResourceCollection_Extend(param1->ownedResources[v0], v3, param1->unownedResources[v0], param0->heapId);
    }

    SpriteTransfer_RequestCharList(param1->unownedResources[0]);
    SpriteTransfer_RequestPlttWholeRangeList(param1->unownedResources[1]);

    v4 = ReadFileToHeap(param0->heapId, param2->asStruct.spriteTable);
    param1->resourceHeaders = SpriteResourcesHeaderList_NewFromResdat(v4, param0->heapId, param1->ownedResources[0], param1->ownedResources[1], param1->ownedResources[2], param1->ownedResources[3], param1->ownedResources[4], param1->ownedResources[5]);

    Heap_FreeToHeap(v4);
    return 1;
}

CellActor *SpriteSystem_NewSpriteFromResourceHeader(SpriteSystem *param0, SpriteManager *param1, const SpriteTemplateFromResourceHeader *param2)
{
    CellActor *v0 = NULL;

    v0 = CreateSpriteFromResourceHeader(param0, param1, param2->resourceHeaderID, param2->x, param2->y, param2->x, param2->animIdx, param2->priority, param2->plttIdx, param2->vramType, param2->dummy18, param2->dummy1C, param2->dummy20, param2->dummy24);
    return v0;
}

static CellActor *CreateSpriteFromResourceHeader(SpriteSystem *param0, SpriteManager *param1, int param2, s16 param3, s16 param4, s16 param5, u16 param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13)
{
    CellActor *v0 = NULL;
    CellActorInitParamsEx v1;

    v1.collection = param1->sprites;
    v1.resourceData = &param1->resourceHeaders->headers[param2];
    v1.position.x = FX32_CONST(param3);
    v1.position.y = FX32_CONST(param4);
    v1.position.z = FX32_CONST(param5);

    if (param9 == NNS_G2D_VRAM_TYPE_2DSUB) {
        v1.position.y += (192 << FX32_SHIFT);
    }

    v1.affineScale.x = FX32_ONE;
    v1.affineScale.y = FX32_ONE;
    v1.affineScale.z = FX32_ONE;
    v1.affineZRotation = 0;
    v1.priority = param7;
    v1.vramType = param9;
    v1.heapID = param0->heapId;

    v0 = CellActorCollection_AddEx(&v1);

    if (v0 != NULL) {
        CellActor_SetAnim(v0, param6);
        CellActor_SetExplicitPalette(v0, param8);
    }

    return v0;
}

BOOL SpriteSystem_InitManagerWithCapacities(SpriteSystem *param0, SpriteManager *param1, const SpriteResourceCapacities *param2)
{
    int v0;
    int v1;
    int v2 = 6;
    int v3;
    SpriteResourceTable *v4;

    if ((param0 == NULL) || (param1 == NULL)) {
        return 0;
    }

    if ((param2->asStruct.mcellCapacity == 0) || (param2->asStruct.manimCapacity == 0)) {
        v2 = 6 - 2;
    }

    param1->numResourceTypes = v2;

    for (v0 = 0; v0 < v2; v0++) {
        param1->ownedResources[v0] = SpriteResourceCollection_New(param2->asArray[v0], v0, param0->heapId);
    }

    for (v0 = 0; v0 < v2; v0++) {
        v3 = param2->asArray[v0];

        if (v3 == 0) {
            continue;
        }

        param1->unownedResources[v0] = SpriteResourceList_New(v3, param0->heapId);
        param1->loadedResourceCount[v0] = 0;

        for (v1 = 0; v1 < param1->unownedResources[v0]->capacity; v1++) {
            param1->unownedResources[v0]->resources[v1] = NULL;
        }
    }

    return 1;
}

BOOL SpriteSystem_LoadCharResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6)
{
    SpriteResource *v0;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[0], param6) == 0) {
        return 0;
    }

    v0 = SpriteResourceCollection_AddTiles(param1->ownedResources[0], param2, param3, param4, param6, param5, param0->heapId);

    if (v0 != NULL) {
        SpriteTransfer_RequestCharAtEnd(v0);
        RegisterLoadedResource(param1->unownedResources[0], v0);

        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

BOOL SpriteSystem_LoadCharResObjFromOpenNarc(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5, int param6)
{
    SpriteResource *v0;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[0], param6) == 0) {
        return 0;
    }

    v0 = SpriteResourceCollection_AddTilesFrom(param1->ownedResources[0], param2, param3, param4, param6, param5, param0->heapId);

    if (v0 != NULL) {
        SpriteTransfer_RequestCharAtEnd(v0);
        RegisterLoadedResource(param1->unownedResources[0], v0);
        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

s8 SpriteSystem_LoadPlttResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    SpriteResource *v0;
    int v1;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[1], param7) == 0) {
        return -1;
    }

    v0 = SpriteResourceCollection_AddPalette(param1->ownedResources[1], param2, param3, param4, param7, param6, param5, param0->heapId);

    if (v0 != NULL) {
        v1 = SpriteTransfer_RequestPlttFreeSpace(v0);
        GF_ASSERT(v1 == 1);

        RegisterLoadedResource(param1->unownedResources[1], v0);
        return SpriteTransfer_GetPlttOffset(v0, param6);
    }

    GF_ASSERT(0);

    return -1;
}

s8 SpriteSystem_LoadPlttResObjFromOpenNarc(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, int param4, int param5, int param6, int param7)
{
    SpriteResource *v0;
    int v1;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[1], param7) == 0) {
        return -1;
    }

    v0 = SpriteResourceCollection_AddPaletteFrom(param1->ownedResources[1], param2, param3, param4, param7, param6, param5, param0->heapId);

    if (v0 != NULL) {
        v1 = SpriteTransfer_RequestPlttFreeSpace(v0);
        GF_ASSERT(v1 == 1);
        RegisterLoadedResource(param1->unownedResources[1], v0);

        return SpriteTransfer_GetPlttOffset(v0, param6);
    }

    GF_ASSERT(0);
    return -1;
}

u8 SpriteSystem_LoadPaletteBuffer(PaletteData *param0, int param1, SpriteSystem *param2, SpriteManager *param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    int v0;

    v0 = SpriteSystem_LoadPlttResObj(param2, param3, param4, param5, param6, param7, param8, param9);

    if (v0 != -1) {
        PaletteData_LoadBufferFromHardware(param0, param1, v0 * 16, param7 * 0x20);
    }

    return v0;
}

u8 SpriteSystem_LoadPaletteBufferFromOpenNarc(PaletteData *param0, enum PaletteBufferID param1, SpriteSystem *param2, SpriteManager *param3, NARC *param4, int param5, BOOL param6, int param7, int param8, int param9)
{
    int v0;

    v0 = SpriteSystem_LoadPlttResObjFromOpenNarc(param2, param3, param4, param5, param6, param7, param8, param9);

    if (v0 != -1) {
        PaletteData_LoadBufferFromHardware(param0, param1, v0 * 16, param7 * 0x20);
    }

    return v0;
}

BOOL SpriteSystem_LoadCellResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5)
{
    return LoadCellResObjInternal(param0, param1, param2, param3, param4, 2, param5);
}

BOOL SpriteSystem_LoadCellResObjFromOpenNarc(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5)
{
    return LoadCellResObjFromNarcInternal(param0, param1, param2, param3, param4, 2, param5);
}

BOOL SpriteSystem_LoadAnimResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5)
{
    return LoadCellResObjInternal(param0, param1, param2, param3, param4, 3, param5);
}

BOOL SpriteSystem_LoadAnimResObjFromOpenNarc(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5)
{
    return LoadCellResObjFromNarcInternal(param0, param1, param2, param3, param4, 3, param5);
}

CellActorData *SpriteSystem_NewSprite(SpriteSystem *param0, SpriteManager *param1, const SpriteTemplate *param2)
{
    int v0;
    int v1;
    CellActorData *v2 = NULL;
    CellActorInitParamsEx v3;
    int v4[6];

    v2 = Heap_AllocFromHeap(param0->heapId, sizeof(CellActorData));

    if (v2 == NULL) {
        return NULL;
    }

    v2->resourceHeaderList = Heap_AllocFromHeap(param0->heapId, sizeof(SpriteResourcesHeaderList));

    if (v2->resourceHeaderList == NULL) {
        return NULL;
    }

    v2->resourceHeaderList->headers = Heap_AllocFromHeap(param0->heapId, sizeof(CellActorResourceData));
    v2->resourceHeader = v2->resourceHeaderList->headers;

    if (v2->resourceHeaderList->headers == NULL) {
        if (v2->resourceHeaderList) {
            Heap_FreeToHeap(v2->resourceHeaderList);
        }

        return NULL;
    }

    for (v0 = 0; v0 < 6; v0++) {
        v4[v0] = param2->resources[v0];
    }

    if ((param1->ownedResources[4] == NULL) || (param1->ownedResources[5] == NULL)) {
        v4[4] = 0xffffffff;
        v4[5] = 0xffffffff;
    } else {
        if ((v4[4] != 0xffffffff) && (SpriteResourceCollection_IsIDUnused(param1->ownedResources[4], v4[4]) == 0)) {
            v4[4] = 0xffffffff;
        }

        if ((v4[5] != 0xffffffff) && (SpriteResourceCollection_IsIDUnused(param1->ownedResources[5], v4[5]) == 0)) {
            v4[5] = 0xffffffff;
        }
    }

    SpriteResourcesHeader_Init(v2->resourceHeader, v4[0], v4[1], v4[2], v4[3], v4[4], v4[5], param2->vramTransfer, param2->bgPriority, param1->ownedResources[0], param1->ownedResources[1], param1->ownedResources[2], param1->ownedResources[3], param1->ownedResources[4], param1->ownedResources[5]);

    v3.collection = param1->sprites;
    v3.resourceData = v2->resourceHeader;
    v3.position.x = FX32_CONST(param2->x);
    v3.position.y = FX32_CONST(param2->y);
    v3.position.z = FX32_CONST(param2->z);

    if (param2->vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
        v3.position.y += (192 << FX32_SHIFT);
    }

    v3.affineScale.x = FX32_ONE;
    v3.affineScale.y = FX32_ONE;
    v3.affineScale.z = FX32_ONE;
    v3.affineZRotation = 0;
    v3.priority = param2->priority;
    v3.vramType = param2->vramType;
    v3.heapID = param0->heapId;
    v2->sprite = CellActorCollection_AddEx(&v3);
    v2->vramTransfer = param2->vramTransfer;

    if (v2->sprite != NULL) {
        v1 = CellActor_GetExplicitPalette(v2->sprite);

        CellActor_SetAnim(v2->sprite, param2->animIdx);
        CellActor_SetExplicitPalette(v2->sprite, v1 + param2->plttIdx);
    } else {
        GF_ASSERT(FALSE);
    }

    return v2;
}

const NNSG2dImagePaletteProxy *SpriteManager_FindPlttResourceProxy(SpriteManager *param0, int param1)
{
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->ownedResources[1], param1);
    return SpriteTransfer_GetPaletteProxy(v0, NULL);
}

u32 SpriteManager_FindPlttResourceOffset(SpriteManager *param0, int param1, NNS_G2D_VRAM_TYPE param2)
{
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->ownedResources[1], param1);
    return SpriteTransfer_GetPlttOffset(v0, param2);
}

BOOL SpriteManager_UnloadCharObjById(SpriteManager *param0, int param1)
{
    return UnregisterLoadedCharResource(param0->ownedResources[0], param0->unownedResources[0], param1);
}

BOOL SpriteManager_UnloadPlttObjById(SpriteManager *param0, int param1)
{
    return UnregisterLoadedPlttResource(param0->ownedResources[1], param0->unownedResources[1], param1);
}

BOOL SpriteManager_UnloadCellObjById(SpriteManager *param0, int param1)
{
    return UnregisterLoadedResource(param0->ownedResources[2], param0->unownedResources[2], param1);
}

BOOL SpriteManager_UnloadAnimObjById(SpriteManager *param0, int param1)
{
    return UnregisterLoadedResource(param0->ownedResources[3], param0->unownedResources[3], param1);
}

void SpriteSystem_FreeResourcesAndManager(SpriteSystem *param0, SpriteManager *param1)
{
    int v0;

    SpriteManager_DeleteAllSprites(param1);
    SpriteTransfer_ResetCharTransferList(param1->unownedResources[0]);
    SpriteTransfer_ResetPlttTransferList(param1->unownedResources[1]);

    for (v0 = 0; v0 < param1->numResourceTypes; v0++) {
        SpriteResourceList_Delete(param1->unownedResources[v0]);
        SpriteResourceCollection_Delete(param1->ownedResources[v0]);
    }

    SpriteSystem_FreeSpriteManager(param0, param1);
}

void Sprite_DeleteAndFreeResources(CellActorData *param0)
{
    if (param0->vramTransfer) {
        SpriteTransfer_DeleteCharTransfer(param0->resourceHeader->imageProxy);
    }

    CellActor_Delete(param0->sprite);
    SpriteResourcesHeaderList_Free(param0->resourceHeaderList);
    Heap_FreeToHeap(param0);
}

static BOOL LoadCellResObjInternal(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, int param4, int param5, int param6)
{
    SpriteResource *v0;
    int v1;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[param5], param6) == 0) {
        return 0;
    }

    v0 = SpriteResourceCollection_Add(param1->ownedResources[param5], param2, param3, param4, param6, param5, param0->heapId);

    if (v0 != NULL) {
        v1 = RegisterLoadedResource(param1->unownedResources[param5], v0);

        GF_ASSERT(v1 == 1);
        return v1;
    }

    GF_ASSERT(0);
    return (v0 == NULL) ? 0 : 1;
}

static BOOL LoadCellResObjFromNarcInternal(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, int param4, int param5, int param6)
{
    SpriteResource *v0;
    int v1;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[param5], param6) == 0) {
        return 0;
    }

    v0 = SpriteResourceCollection_AddFrom(param1->ownedResources[param5], param2, param3, param4, param6, param5, param0->heapId);

    if (v0 != NULL) {
        v1 = RegisterLoadedResource(param1->unownedResources[param5], v0);

        GF_ASSERT(v1 == 1);
        return v1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

static BOOL RegisterLoadedResource(SpriteResourceList *param0, SpriteResource *param1)
{
    int v0;

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0] != NULL) {
            continue;
        }

        param0->resources[v0] = param1;
        param0->count++;

        return 1;
    }

    return 0;
}

static BOOL UnregisterLoadedResource(SpriteResourceCollection *param0, SpriteResourceList *param1, int param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param1->capacity; v0++) {
        if (param1->resources[v0] == NULL) {
            continue;
        }

        v1 = SpriteResource_GetID(param1->resources[v0]);

        if (v1 == param2) {
            SpriteResourceCollection_Remove(param0, param1->resources[v0]);

            param1->resources[v0] = NULL;
            param1->count--;

            return 1;
        }
    }

    return 0;
}

static BOOL UnregisterLoadedCharResource(SpriteResourceCollection *param0, SpriteResourceList *param1, int param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param1->capacity; v0++) {
        if (param1->resources[v0] == NULL) {
            continue;
        }

        v1 = SpriteResource_GetID(param1->resources[v0]);

        if (v1 == param2) {
            CharTransfer_ResetTask(param2);
            SpriteResourceCollection_Remove(param0, param1->resources[v0]);

            param1->resources[v0] = NULL;
            param1->count--;

            return 1;
        }
    }

    return 0;
}

static BOOL UnregisterLoadedPlttResource(SpriteResourceCollection *param0, SpriteResourceList *param1, int param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param1->capacity; v0++) {
        if (param1->resources[v0] == NULL) {
            continue;
        }

        v1 = SpriteResource_GetID(param1->resources[v0]);

        if (v1 == param2) {
            PlttTransfer_ResetTask(param2);
            SpriteResourceCollection_Remove(param0, param1->resources[v0]);

            param1->resources[v0] = NULL;
            param1->count--;

            return 1;
        }
    }

    return 0;
}

void Sprite_TickFrame(CellActor *param0)
{
    CellActor_UpdateAnim(param0, FX32_ONE);
}

void Sprite_TickOneFrame(CellActorData *param0)
{
    Sprite_TickFrame(param0->sprite);
}

void Sprite_TickTwoFrame(CellActorData *param0)
{
    CellActor_UpdateAnim(param0->sprite, FX32_CONST(2));
}

void Sprite_TickNFrames(CellActorData *param0, fx32 param1)
{
    CellActor_UpdateAnim(param0->sprite, param1);
}

u32 Sprite_GetNumFrames(CellActorData *param0)
{
    return CellActor_GetAnimCount(param0->sprite);
}

void Sprite_SetAnim(CellActorData *param0, u32 param1)
{
    CellActor_SetAnim(param0->sprite, param1);
}

void Sprite_SetAnimNoRestart(CellActorData *param0, u32 param1)
{
    CellActor_SetAnimNoRestart(param0->sprite, param1);
}

u32 Sprite_GetActiveAnim(CellActorData *param0)
{
    return CellActor_GetActiveAnim(param0->sprite);
}

static void SetSpriteAnimateFlag(CellActor *param0, int param1)
{
    CellActor_SetAnimateFlag(param0, param1);
}

void Sprite_SetAnimateFlag(CellActorData *param0, int param1)
{
    SetSpriteAnimateFlag(param0->sprite, param1);
}

static void SetSpriteAnimationSpeed(CellActor *param0, fx32 param1)
{
    CellActor_SetAnimSpeed(param0, param1);
}

void Sprite_SetAnimationSpeed(CellActorData *param0, fx32 param1)
{
    SetSpriteAnimationSpeed(param0->sprite, param1);
}

static BOOL IsSpriteAnimated(CellActor *param0)
{
    return CellActor_IsAnimated(param0);
}

BOOL Sprite_IsAnimated(CellActorData *param0)
{
    return IsSpriteAnimated(param0->sprite);
}

void SetSpriteAnimationFrame(CellActor *param0, u16 param1)
{
    SpriteActor_SetAnimFrame(param0, param1);
}

void Sprite_SetAnimationFrame(CellActorData *param0, u16 param1)
{
    SetSpriteAnimationFrame(param0->sprite, param1);
}

static u16 GetSpriteAnimationFrame(CellActor *param0)
{
    return CellActor_GetAnimFrame(param0);
}

u16 Sprite_GetAnimationFrame(CellActorData *param0)
{
    return GetSpriteAnimationFrame(param0->sprite);
}

void Sprite_SetDrawFlag(CellActor *param0, int param1)
{
    CellActor_SetDrawFlag(param0, param1);
}

void Sprite_SetDrawFlag2(CellActorData *param0, int param1)
{
    Sprite_SetDrawFlag(param0->sprite, param1);
}

int Sprite_GetDrawFlag(CellActor *param0)
{
    return CellActor_GetDrawFlag(param0);
}

int Sprite_GetDrawFlag2(CellActorData *param0)
{
    return Sprite_GetDrawFlag(param0->sprite);
}

void Sprite_SetExplicitPalette(CellActor *param0, int param1)
{
    CellActor_SetExplicitPalette(param0, param1);
}

void Sprite_SetExplicitPalette2(CellActorData *param0, int param1)
{
    Sprite_SetExplicitPalette(param0->sprite, param1);
}

static void SetSpriteExplicitPaletteOffset(CellActor *param0, int param1)
{
    CellActor_SetExplicitPaletteOffset(param0, param1);
}

void Sprite_SetExplicitPaletteOffset(CellActorData *param0, int param1)
{
    SetSpriteExplicitPaletteOffset(param0->sprite, param1);
}

int Sprite_GetExplicitPaletteOffset(CellActorData *param0)
{
    return CellActor_GetExplicitPaletteOffset(param0->sprite);
}

static void SetSpriteExplicitPriority(CellActor *param0, int param1)
{
    CellActor_SetExplicitPriority(param0, param1);
}

int Sprite_GetExplicitPriority(CellActorData *param0)
{
    return CellActor_GetExplicitPriority(param0->sprite);
}

void Sprite_SetExplicitPriority(CellActorData *param0, int param1)
{
    SetSpriteExplicitPriority(param0->sprite, param1);
}

static void SetSpritePriority(CellActor *param0, int param1)
{
    CellActor_SetPriority(param0, param1);
}

void Sprite_SetPriority(CellActorData *param0, int param1)
{
    SetSpritePriority(param0->sprite, param1);
}

u32 GetSpritePriority(CellActor *param0)
{
    return CellActor_GetPriority(param0);
}

u32 Sprite_GetPriority(CellActorData *param0)
{
    return GetSpritePriority(param0->sprite);
}

void Sprite_SetPositionXY(CellActor *param0, s16 param1, s16 param2)
{
    VecFx32 v0;

    v0.x = param1 * FX32_ONE;
    v0.y = param2 * FX32_ONE;

    if (CellActor_GetVRamType(param0) == NNS_G2D_VRAM_TYPE_2DSUB) {
        v0.y += (192 << FX32_SHIFT);
    }

    v0.z = 0;

    CellActor_SetPosition(param0, &v0);
}

void Sprite_SetPositionXY2(CellActorData *param0, s16 param1, s16 param2)
{
    Sprite_SetPositionXY(param0->sprite, param1, param2);
}

void Sprite_SetPositionXYWithSubscreenOffset(CellActor *param0, s16 param1, s16 param2, fx32 param3)
{
    VecFx32 v0;

    v0.x = param1 * FX32_ONE;
    v0.y = param2 * FX32_ONE;

    if (CellActor_GetVRamType(param0) == NNS_G2D_VRAM_TYPE_2DSUB) {
        v0.y += param3;
    }

    v0.z = 0;

    CellActor_SetPosition(param0, &v0);
}

void Sprite_SetPositionXYWithSubscreenOffset2(CellActorData *param0, s16 param1, s16 param2, fx32 param3)
{
    Sprite_SetPositionXYWithSubscreenOffset(param0->sprite, param1, param2, param3);
}

void Sprite_GetPositionXY(CellActor *param0, s16 *param1, s16 *param2)
{
    const VecFx32 *v0;

    v0 = CellActor_GetPosition(param0);
    *param1 = v0->x / FX32_ONE;

    if (CellActor_GetVRamType(param0) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *param2 = (v0->y - (192 << FX32_SHIFT)) / FX32_ONE;
    } else {
        *param2 = v0->y / FX32_ONE;
    }
}

void Sprite_GetPositionXY2(CellActorData *param0, s16 *param1, s16 *param2)
{
    Sprite_GetPositionXY(param0->sprite, param1, param2);
}

void Sprite_GetPositionXYWithSubscreenOffset(CellActor *param0, s16 *param1, s16 *param2, fx32 param3)
{
    const VecFx32 *v0;

    v0 = CellActor_GetPosition(param0);
    *param1 = v0->x / FX32_ONE;

    if (CellActor_GetVRamType(param0) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *param2 = (v0->y - param3) / FX32_ONE;
    } else {
        *param2 = v0->y / FX32_ONE;
    }
}

void Sprite_GetPositionXYWithSubscreenOffset2(CellActorData *param0, s16 *param1, s16 *param2, fx32 param3)
{
    Sprite_GetPositionXYWithSubscreenOffset(param0->sprite, param1, param2, param3);
}

void Sprite_OffsetPositionXY(CellActor *param0, s16 param1, s16 param2)
{
    const VecFx32 *v0;
    VecFx32 v1;

    v0 = CellActor_GetPosition(param0);

    v1.x = v0->x + (param1 * FX32_ONE);
    v1.y = v0->y + (param2 * FX32_ONE);
    v1.z = v0->z;

    CellActor_SetPosition(param0, &v1);
}

void Sprite_OffsetPositionXY2(CellActorData *param0, s16 param1, s16 param2)
{
    Sprite_OffsetPositionXY(param0->sprite, param1, param2);
}

void Sprite_OffsetPositionFxXY(CellActorData *param0, fx32 param1, fx32 param2)
{
    const VecFx32 *v0;
    VecFx32 v1;

    v0 = CellActor_GetPosition(param0->sprite);

    v1.x = v0->x + param1;
    v1.y = v0->y + param2;
    v1.z = v0->z;

    CellActor_SetPosition(param0->sprite, &v1);
}

void Sprite_SetPositionFxXY(CellActorData *param0, fx32 param1, fx32 param2)
{
    const VecFx32 *v0;
    VecFx32 v1;

    v0 = CellActor_GetPosition(param0->sprite);

    v1.x = param1;
    v1.y = param2;
    v1.z = v0->z;

    CellActor_SetPosition(param0->sprite, &v1);
}

void Sprite_GetPositionFxXY(CellActorData *param0, fx32 *param1, fx32 *param2)
{
    const VecFx32 *v0;
    VecFx32 v1;

    v0 = CellActor_GetPosition(param0->sprite);

    *param1 = v0->x;
    *param2 = v0->y;
}

void Sprite_SetPositionFxXYWithSubscreenOffset(CellActorData *param0, fx32 param1, fx32 param2, fx32 param3)
{
    if (CellActor_GetVRamType(param0->sprite) == NNS_G2D_VRAM_TYPE_2DSUB) {
        Sprite_SetPositionFxXY(param0, param1, param2 + param3);
    } else {
        Sprite_SetPositionFxXY(param0, param1, param2);
    }
}

void Sprite_GetPositionFxXYWithSubscreenOffset(CellActorData *param0, fx32 *param1, fx32 *param2, fx32 param3)
{
    Sprite_GetPositionFxXY(param0, param1, param2);

    if (CellActor_GetVRamType(param0->sprite) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *param2 = *param2 - param3;
    }
}

static void SetSpriteAffineOverwriteMode(CellActor *param0, int param1)
{
    CellActor_SetAffineOverwriteMode(param0, param1);
}

void Sprite_SetAffineOverwriteMode(CellActorData *param0, int param1)
{
    SetSpriteAffineOverwriteMode(param0->sprite, param1);
}

static void SetSpriteAffineScale(CellActor *param0, f32 param1, f32 param2)
{
    const VecFx32 *v0;
    VecFx32 *v1;

    v0 = CellActor_GetAffineScale(param0);
    v1 = (VecFx32 *)v0;

    v1->x = (param1 * FX32_ONE);
    v1->y = (param2 * FX32_ONE);

    CellActor_SetAffineScale(param0, v1);
}

void Sprite_SetAffineScale(CellActorData *param0, f32 param1, f32 param2)
{
    SetSpriteAffineScale(param0->sprite, param1, param2);
}

static void OffsetSpriteAffineScale(CellActor *param0, f32 param1, f32 param2)
{
    const VecFx32 *v0;
    VecFx32 *v1;

    v0 = CellActor_GetAffineScale(param0);
    v1 = (VecFx32 *)v0;

    v1->x = v0->x + (param1 * FX32_ONE);
    v1->y = v0->y + (param2 * FX32_ONE);

    CellActor_SetAffineScale(param0, v1);
}

void Sprite_OffsetAffineScale(CellActorData *param0, f32 param1, f32 param2)
{
    OffsetSpriteAffineScale(param0->sprite, param1, param2);
}

void GetSpriteAffineScale(CellActor *param0, f32 *param1, f32 *param2)
{
    const VecFx32 *v0;
    VecFx32 *v1;

    v0 = CellActor_GetAffineScale(param0);

    *param1 = FX_FX32_TO_F32(v0->x);
    *param2 = FX_FX32_TO_F32(v0->y);
}

void Sprite_GetAffineScale(CellActorData *param0, f32 *param1, f32 *param2)
{
    GetSpriteAffineScale(param0->sprite, param1, param2);
}

static void SetSpriteAffineZRotation(CellActor *param0, u16 param1)
{
    CellActor_SetAffineZRotation(param0, param1);
}

void Sprite_SetAffineZRotation(CellActorData *param0, u16 param1)
{
    SetSpriteAffineZRotation(param0->sprite, param1);
}

void OffsetSpriteAffineZRotation(CellActor *param0, s32 param1)
{
    u16 v0;

    v0 = CellActor_GetAffineZRotation(param0);
    v0 += param1;

    CellActor_SetAffineZRotation(param0, v0);
}

void Sprite_OffsetAffineZRotation(CellActorData *param0, s32 param1)
{
    OffsetSpriteAffineZRotation(param0->sprite, param1);
}

void Sprite_SetFlipMode(CellActor *param0, int param1)
{
    CellActor_SetFlipMode(param0, param1);
}

void Sprite_SetFlipMode2(CellActorData *param0, int param1)
{
    Sprite_SetFlipMode(param0->sprite, param1);
}

void Sprite_SetAffineTranslation(CellActorData *param0, s16 param1, s16 param2)
{
    VecFx32 v0;

    v0.x = param1 << FX32_SHIFT;
    v0.y = param2 << FX32_SHIFT;
    v0.z = 0;

    CellActor_SetAffineTranslation(param0->sprite, &v0);
}

void Sprite_SetPixelated(CellActorData *param0, BOOL param1)
{
    CellActor_SetPixelated(param0->sprite, param1);
}

void Sprite_SetExplicitOamMode(CellActor *param0, GXOamMode param1)
{
    CellActor_SetExplicitOAMMode(param0, param1);
}

void Sprite_SetExplicitOamMode2(CellActorData *param0, GXOamMode param1)
{
    Sprite_SetExplicitOamMode(param0->sprite, param1);
}

u32 Sprite_SetUserAttrForCurrentAnimFrame(CellActorData *param0)
{
    return CellActor_GetUserAttrForCurrentAnimFrame(param0->sprite);
}

BOOL SpriteSystem_LoadCharResObjWithHardwareMappingType(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6)
{
    SpriteResource *v0;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[0], param6) == 0) {
        return 0;
    }

    v0 = SpriteResourceCollection_AddTiles(param1->ownedResources[0], param2, param3, param4, param6, param5, param0->heapId);

    if (v0 != NULL) {
        SpriteTransfer_RequestCharWithHardwareMappingType(v0);
        RegisterLoadedResource(param1->unownedResources[0], v0);

        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

BOOL SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5, int param6)
{
    SpriteResource *v0;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[0], param6) == 0) {
        return 0;
    }

    v0 = SpriteResourceCollection_AddTiles(param1->ownedResources[0], param2, param3, param4, param6, param5, param0->heapId);

    if (v0 != NULL) {
        SpriteTransfer_RequestCharAtEndWithHardwareMappingType(v0);
        RegisterLoadedResource(param1->unownedResources[0], v0);

        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

BOOL SpriteSystem_LoadCharResObjFromOpenNarcWithHardwareMappingType(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5, int param6)
{
    SpriteResource *v0;

    if (SpriteResourceCollection_IsIDUnused(param1->ownedResources[0], param6) == 0) {
        return 0;
    }

    v0 = SpriteResourceCollection_AddTilesFrom(param1->ownedResources[0], param2, param3, param4, param6, param5, param0->heapId);

    if (v0 != NULL) {
        SpriteTransfer_RequestCharAtEndWithHardwareMappingType(v0);
        RegisterLoadedResource(param1->unownedResources[0], v0);

        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

void SpriteSystem_ReplaceCharResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5)
{
    SpriteResource *v0;

    v0 = SpriteResourceCollection_Find(param1->ownedResources[0], param5);

    SpriteResourceCollection_ModifyTiles(param1->ownedResources[0], v0, param2, param3, param4, param0->heapId);
    SpriteTransfer_RetransferCharData(v0);
}

void SpriteSystem_ReplacePlttResObj(SpriteSystem *param0, SpriteManager *param1, int param2, int param3, BOOL param4, int param5)
{
    SpriteResource *v0;

    v0 = SpriteResourceCollection_Find(param1->ownedResources[1], param5);

    SpriteResourceCollection_ModifyPalette(param1->ownedResources[1], v0, param2, param3, param4, param0->heapId);
    SpriteTransfer_ReplacePlttData(v0);
}

CellActorCollection *SpriteManager_GetSpriteList(SpriteManager *param0)
{
    return param0->sprites;
}

void SpriteSystem_ReplaceCharResObjFromOpenNarc(SpriteSystem *param0, SpriteManager *param1, NARC *param2, int param3, BOOL param4, int param5)
{
    SpriteResource *v0;

    v0 = SpriteResourceCollection_Find(param1->ownedResources[0], param5);

    SpriteResourceCollection_ModifyTilesFrom(param1->ownedResources[0], v0, param2, param3, param4, param0->heapId);
    SpriteTransfer_RetransferCharData(v0);
}
