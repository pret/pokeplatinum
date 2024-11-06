#include "unk_020093B4.h"

#include <nitro.h>
#include <string.h>

#include "cell_actor.h"
#include "heap.h"
#include "sprite_renderer.h"
#include "sprite_resource.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202309C.h"

void CellActorResourceData_Init(CellActorResourceData *resourceData, int tileIndex, int paletteIndex, int cellIndex, int animIndex, int multiCellIndex, int multiAnimIndex, BOOL vramTransfer, int priority, SpriteResourceCollection *tileCollection, SpriteResourceCollection *paletteCollection, SpriteResourceCollection *cellCollection, SpriteResourceCollection *animCollection, SpriteResourceCollection *multiCellCollection, SpriteResourceCollection *multiAnimCollection)
{
    SpriteResource *tileResource;
    SpriteResource *paletteResource;
    SpriteResource *cellResource;
    SpriteResource *animResource = NULL;
    SpriteResource *multiCellResource = NULL;
    SpriteResource *multiAnimResource = NULL;
    NNSG2dImageProxy *imageProxy;

    GF_ASSERT(tileCollection);
    GF_ASSERT(paletteCollection);
    GF_ASSERT(animCollection);
    GF_ASSERT(cellCollection);
    GF_ASSERT(resourceData);

    tileResource = SpriteResourceCollection_Find(tileCollection, tileIndex);
    GF_ASSERT(tileResource);

    paletteResource = SpriteResourceCollection_Find(paletteCollection, paletteIndex);
    GF_ASSERT(paletteResource);

    cellResource = SpriteResourceCollection_Find(cellCollection, cellIndex);
    GF_ASSERT(cellResource);

    if (animCollection) {
        if (animIndex != -1) {
            animResource = SpriteResourceCollection_Find(animCollection, animIndex);
            GF_ASSERT(animResource);
        }
    }

    if (multiCellCollection != NULL) {
        if (multiCellIndex != -1) {
            multiCellResource = SpriteResourceCollection_Find(multiCellCollection, multiCellIndex);
        }

        if (multiAnimIndex != -1) {
            multiAnimResource = SpriteResourceCollection_Find(multiAnimCollection, multiAnimIndex);
        }
    }

    if (vramTransfer) {
        imageProxy = sub_0200A558(tileResource, cellResource);
        GF_ASSERT(imageProxy);

        resourceData->charData = SpriteResource_GetTileData(tileResource);
    } else {
        imageProxy = sub_0200A534(tileResource);
        GF_ASSERT(imageProxy);
        resourceData->charData = NULL;
    }

    resourceData->paletteProxy = sub_0200A72C(paletteResource, imageProxy);
    resourceData->imageProxy = imageProxy;
    resourceData->cellBank = SpriteResource_GetSpriteData(cellResource);

    if (animResource) {
        resourceData->cellAnimBank = SpriteResource_GetSpriteAnimData(animResource);
    } else {
        resourceData->cellAnimBank = NULL;
    }

    if (multiCellResource) {
        resourceData->multiCellBank = SpriteResource_GetMultiSpriteData(multiCellResource);
        resourceData->multiCellAnimBank = SpriteResource_GetMultiSpriteAnimData(multiAnimResource);
    } else {
        resourceData->multiCellBank = NULL;
        resourceData->multiCellAnimBank = NULL;
    }

    resourceData->isVRamTransfer = vramTransfer;
    resourceData->priority = priority;
}

void sub_020094F0(CellActorResourceData *param0)
{
    sub_0200A5B4(param0->imageProxy);
    memset(param0, 0, sizeof(CellActorResourceData));
}

CellActorResourceDataList *CellActorResourceDataList_FromTemplate(const SpriteTemplateTableEntry *templateList, int heapId, SpriteResourceCollection *tilesCollection, SpriteResourceCollection *paletteCollection, SpriteResourceCollection *cellsCollection, SpriteResourceCollection *animCollection, SpriteResourceCollection *multiCellCollection, SpriteResourceCollection *multiAnimCollection)
{
    int resourceCount = 0;
    while (templateList[resourceCount].tileIndex != -2) {
        resourceCount++;
    }

    CellActorResourceDataList *resources = Heap_AllocFromHeap(heapId, sizeof(CellActorResourceDataList));
    resources->resourceDataList = Heap_AllocFromHeap(heapId, sizeof(CellActorResourceData) * resourceCount);
    resources->numEntries = resourceCount;

    for (int i = 0; i < resources->numEntries; i++) {
        CellActorResourceData_Init(
            resources->resourceDataList + i, 
            templateList[i].tileIndex, 
            templateList[i].paletteIndex, 
            templateList[i].cellsIndex, 
            templateList[i].animIndex, 
            templateList[i].multiCellsIndex, 
            templateList[i].multiAnimIndex, 
            templateList[i].vramTransfer, 
            templateList[i].priority, 
            tilesCollection, 
            paletteCollection, 
            cellsCollection, 
            animCollection, 
            multiCellCollection, 
            multiAnimCollection);
    }

    return resources;
}

void sub_020095A8(CellActorResourceDataList *param0)
{
    GF_ASSERT(param0);

    if (param0->resourceDataList) {
        Heap_FreeToHeap(param0->resourceDataList);
    }

    Heap_FreeToHeap(param0);
}

CellActorCollection *sub_020095C4(int param0, GF_G2dRenderer *param1, int param2)
{
    CellActorCollectionParams v0;
    NNSG2dViewRect v1;

    sub_0202309C(&param1->rendererInstance, -FX32_ONE);

    v1.posTopLeft.x = 0;
    v1.posTopLeft.y = 0;
    v1.sizeView.x = (255 << FX32_SHIFT);
    v1.sizeView.y = (192 << FX32_SHIFT);

    sub_0200A8B0(&param1->renderSurface[0], &v1, NNS_G2D_SURFACETYPE_MAIN2D, &param1->rendererInstance);

    v1.posTopLeft.x = 0;
    v1.posTopLeft.y = (192 << FX32_SHIFT);
    v1.sizeView.x = (255 << FX32_SHIFT);
    v1.sizeView.y = (192 << FX32_SHIFT);

    sub_0200A8B0(&param1->renderSurface[1], &v1, NNS_G2D_SURFACETYPE_SUB2D, &param1->rendererInstance);

    v0.maxElements = param0;
    v0.renderer = &param1->rendererInstance;
    v0.heapID = param2;

    return CellActorCollection_New(&v0);
}

void sub_0200962C(GF_G2dRenderer *param0, fx32 param1, fx32 param2)
{
    NNSG2dViewRect v0;

    v0.posTopLeft.x = param1;
    v0.posTopLeft.y = param2;
    v0.sizeView.x = (255 << FX32_SHIFT);
    v0.sizeView.y = (192 << FX32_SHIFT);

    sub_020230E0(&param0->renderSurface[0], &v0);
}

void sub_0200964C(GF_G2dRenderer *param0, fx32 param1, fx32 param2)
{
    NNSG2dViewRect v0;

    v0.posTopLeft.x = param1;
    v0.posTopLeft.y = param2;
    v0.sizeView.x = (255 << FX32_SHIFT);
    v0.sizeView.y = (192 << FX32_SHIFT);

    sub_020230E0(&param0->renderSurface[1], &v0);
}

void sub_0200966C(u32 param0, GXOBJVRamModeChar param1)
{
    switch (param1) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        if ((GX_GetBankForOBJ() == GX_VRAM_OBJ_16_G) || (GX_GetBankForOBJ() == GX_VRAM_OBJ_16_F)) {
            sub_0201E9C0(((512 - 16) * 32), 16 * 32, param0);
        } else {
            sub_0201E9C0(((1024 - 16) * 32), 16 * 32, param0);
        }
        break;
    case GX_OBJVRAMMODE_CHAR_1D_64K:
        sub_0201E9C0(((2048 - 16) * 32), 16 * 32, param0);
        break;
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        if ((GX_GetBankForOBJ() == GX_VRAM_OBJ_80_EF) || (GX_GetBankForOBJ() == GX_VRAM_OBJ_80_EG)) {
            sub_0201E9C0(((2560 - 16) * 32), 16 * 32, param0);
        } else {
            sub_0201E9C0(((4096 - 16) * 32), 16 * 32, param0);
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

void sub_02009704(u32 param0)
{
    sub_0201F890((1 << 14 | 1 << 15), param0);
}
