#include "sprite_util.h"

#include "constants/heap.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "heap.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "render_view.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

#define RESDAT_TABLE_TERMINATOR 0xFFFFFFFE

void SpriteResourcesHeader_Init(SpriteResourcesHeader *resourceHeader, int charResourceID, int plttResourceID, int cellResourceID, int animResourceID, int mcellResourceID, int manimResourceID, BOOL vramTransfer, int priority, SpriteResourceCollection *charResources, SpriteResourceCollection *plttResources, SpriteResourceCollection *cellResources, SpriteResourceCollection *animResources, SpriteResourceCollection *mcellResources, SpriteResourceCollection *manimResources) {
    SpriteResource *charResource;
    SpriteResource *plttResource;
    SpriteResource *cellResource;
    SpriteResource *animResource = NULL;
    SpriteResource *mcellResource = NULL;
    SpriteResource *manimResource = NULL;
    NNSG2dImageProxy *imageProxy;

    GF_ASSERT(charResources);
    GF_ASSERT(plttResources);
    GF_ASSERT(animResources);
    GF_ASSERT(cellResources);
    GF_ASSERT(resourceHeader);

    charResource = SpriteResourceCollection_Find(charResources, charResourceID);
    GF_ASSERT(charResource);

    plttResource = SpriteResourceCollection_Find(plttResources, plttResourceID);
    GF_ASSERT(plttResource);

    cellResource = SpriteResourceCollection_Find(cellResources, cellResourceID);
    GF_ASSERT(cellResource);

    if (animResources) {
        if (animResourceID != -1) {
            animResource = SpriteResourceCollection_Find(animResources, animResourceID);
            GF_ASSERT(animResource);
        }
    }

    if (mcellResources != NULL) {
        if (mcellResourceID != -1) {
            mcellResource = SpriteResourceCollection_Find(mcellResources, mcellResourceID);
        }

        if (manimResourceID != -1) {
            manimResource = SpriteResourceCollection_Find(manimResources, manimResourceID);
        }
    }

    if (vramTransfer) {
        imageProxy = SpriteTransfer_GetCellTransferProxy(charResource, cellResource);
        GF_ASSERT(imageProxy);
        resourceHeader->charData = SpriteResource_GetTileData(charResource);
    } else {
        imageProxy = SpriteTransfer_GetImageProxy(charResource);
        GF_ASSERT(imageProxy);
        resourceHeader->charData = NULL;
    }

    resourceHeader->paletteProxy = SpriteTransfer_GetPaletteProxy(plttResource, imageProxy);
    resourceHeader->imageProxy = imageProxy;
    resourceHeader->cellBank = SpriteResource_GetSpriteData(cellResource);
    resourceHeader->cellAnimBank = animResource ? SpriteResource_GetSpriteAnimData(animResource) : NULL;

    if (mcellResource) {
        resourceHeader->multiCellBank = SpriteResource_GetMultiSpriteData(mcellResource);
        resourceHeader->multiCellAnimBank = SpriteResource_GetMultiSpriteAnimData(manimResource);
    } else {
        resourceHeader->multiCellBank = NULL;
        resourceHeader->multiCellAnimBank = NULL;
    }

    resourceHeader->isVRamTransfer = vramTransfer;
    resourceHeader->priority = priority;
}

void SpriteResourcesHeader_Clear(SpriteResourcesHeader *resourceHeader) {
    SpriteTransfer_DeleteCharTransfer(resourceHeader->imageProxy);
    memset(resourceHeader, 0, sizeof(SpriteResourcesHeader));
}

SpriteResourcesHeaderList *SpriteResourcesHeaderList_NewFromResdat(const ResdatTableEntry *resdatEntries, enum HeapId heapID, SpriteResourceCollection *charResources, SpriteResourceCollection *plttResources, SpriteResourceCollection *cellResources, SpriteResourceCollection *animResources, SpriteResourceCollection *mcellResources, SpriteResourceCollection *manimResources) {
    int resdatLength = 0;
    while (resdatEntries[resdatLength].charResourceID != RESDAT_TABLE_TERMINATOR) {
        resdatLength++;
    }

    SpriteResourcesHeaderList *headerList = Heap_AllocFromHeap(heapID, sizeof(SpriteResourcesHeaderList));
    headerList->headers = Heap_AllocFromHeap(heapID, sizeof(SpriteResourcesHeader) * resdatLength);
    headerList->length = resdatLength;

    for (int i = 0; i < headerList->length; i++) {
        SpriteResourcesHeader_Init(headerList->headers + i,
            resdatEntries[i].charResourceID,
            resdatEntries[i].plttResourceID,
            resdatEntries[i].cellResourceID,
            resdatEntries[i].animResourceID,
            resdatEntries[i].mcellResourceID,
            resdatEntries[i].manimResourceID,
            resdatEntries[i].vramTransfer,
            resdatEntries[i].priority,
            charResources,
            plttResources,
            cellResources,
            animResources,
            mcellResources,
            manimResources);
    }

    return headerList;
}

void SpriteResourcesHeaderList_Free(SpriteResourcesHeaderList *headerList) {
    GF_ASSERT(headerList);
    if (headerList->headers) {
        Heap_Free(headerList->headers);
    }

    Heap_Free(headerList);
}

SpriteList *SpriteList_InitRendering(int maxElements, G2dRenderer *g2dRenderer, enum HeapId heapID) {
    SpriteListParams template;
    NNSG2dViewRect viewRect;

    InitRenderer(&g2dRenderer->renderer, -FX32_ONE);

    viewRect.posTopLeft.x = 0;
    viewRect.posTopLeft.y = 0;
    viewRect.sizeView.x = (255 << FX32_SHIFT);
    viewRect.sizeView.y = (192 << FX32_SHIFT);
    RenderOam_InitSurface(&g2dRenderer->mainScreen, &viewRect, NNS_G2D_SURFACETYPE_MAIN2D, &g2dRenderer->renderer);

    viewRect.posTopLeft.x = 0;
    viewRect.posTopLeft.y = (192 << FX32_SHIFT);
    viewRect.sizeView.x = (255 << FX32_SHIFT);
    viewRect.sizeView.y = (192 << FX32_SHIFT);
    RenderOam_InitSurface(&g2dRenderer->subScreen, &viewRect, NNS_G2D_SURFACETYPE_SUB2D, &g2dRenderer->renderer);

    template.maxElements = maxElements;
    template.renderer = &g2dRenderer->renderer;
    template.heapID = heapID;
    return SpriteList_New(&template);
}

void SetMainScreenViewRect(G2dRenderer *g2dRenderer, fx32 x, fx32 y) {
    NNSG2dViewRect viewRect;
    viewRect.posTopLeft.x = x;
    viewRect.posTopLeft.y = y;
    viewRect.sizeView.x = (255 << FX32_SHIFT);
    viewRect.sizeView.y = (192 << FX32_SHIFT);
    SetRenderSurfaceViewRect(&g2dRenderer->mainScreen, &viewRect);
}

void SetSubScreenViewRect(G2dRenderer *g2dRenderer, fx32 x, fx32 y) {
    NNSG2dViewRect viewRect;
    viewRect.posTopLeft.x = x;
    viewRect.posTopLeft.y = y;
    viewRect.sizeView.x = (255 << FX32_SHIFT);
    viewRect.sizeView.y = (192 << FX32_SHIFT);
    SetRenderSurfaceViewRect(&g2dRenderer->subScreen, &viewRect);
}

void ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE vramType, GXOBJVRamModeChar vramMode) {
    switch (vramMode) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        if (GX_GetBankForOBJ() == GX_VRAM_OBJ_16_G || GX_GetBankForOBJ() == GX_VRAM_OBJ_16_F) {
            CharTransfer_ReserveVramRange((512 - 16) * TILE_SIZE_4BPP, 16 * TILE_SIZE_4BPP, vramType);
        } else {
            CharTransfer_ReserveVramRange((1024 - 16) * TILE_SIZE_4BPP, 16 * TILE_SIZE_4BPP, vramType);
        }
        break;

    case GX_OBJVRAMMODE_CHAR_1D_64K:
        CharTransfer_ReserveVramRange((2048 - 16) * TILE_SIZE_4BPP, 16 * TILE_SIZE_4BPP, vramType);
        break;

    case GX_OBJVRAMMODE_CHAR_1D_128K:
        if (GX_GetBankForOBJ() == GX_VRAM_OBJ_80_EF || GX_GetBankForOBJ() == GX_VRAM_OBJ_80_EG) {
            CharTransfer_ReserveVramRange((2560 - 16) * TILE_SIZE_4BPP, 16 * TILE_SIZE_4BPP, vramType);
        } else {
            CharTransfer_ReserveVramRange((4096 - 16) * TILE_SIZE_4BPP, 16 * TILE_SIZE_4BPP, vramType);
        }
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }
}

void ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE vramType) {
    PlttTransfer_MarkReservedSlots((1 << 14 | 1 << 15), vramType);
}
