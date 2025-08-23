#ifndef POKEPLATINUM_SPRITE_UTIL_H
#define POKEPLATINUM_SPRITE_UTIL_H

#include <nitro/gx.h>

#include "sprite.h"
#include "sprite_resource.h"

#define RESOURCE_NONE -1

typedef struct ResdatTableEntry {
    u32 charResourceID;
    u32 plttResourceID;
    u32 cellResourceID;
    u32 animResourceID;
    u32 mcellResourceID;
    u32 manimResourceID;
    u32 vramTransfer;
    u32 priority;
} ResdatTableEntry;

typedef struct G2dRenderer {
    NNSG2dRendererInstance renderer;
    NNSG2dRenderSurface mainScreen;
    NNSG2dRenderSurface subScreen;
} G2dRenderer;

void SpriteResourcesHeader_Init(SpriteResourcesHeader *resourceHeader,
    int charResourceID,
    int plttResourceID,
    int cellResourceID,
    int animResourceID,
    int mcellResourceID,
    int manimResourceID,
    BOOL vramTransfer,
    int priority,
    SpriteResourceCollection *charResources,
    SpriteResourceCollection *plttResources,
    SpriteResourceCollection *cellResources,
    SpriteResourceCollection *animResources,
    SpriteResourceCollection *mcellResources,
    SpriteResourceCollection *manimResources);
void SpriteResourcesHeader_Clear(SpriteResourcesHeader *resourceHeader);

SpriteResourcesHeaderList *SpriteResourcesHeaderList_NewFromResdat(const ResdatTableEntry *resdatEntries,
    enum HeapId heapID,
    SpriteResourceCollection *charResources,
    SpriteResourceCollection *plttResources,
    SpriteResourceCollection *cellResources,
    SpriteResourceCollection *animResources,
    SpriteResourceCollection *mcellResources,
    SpriteResourceCollection *manimResources);
void SpriteResourcesHeaderList_Free(SpriteResourcesHeaderList *param0);

SpriteList *SpriteList_InitRendering(int maxElements, G2dRenderer *g2dRenderer, enum HeapId heapID);
void SetMainScreenViewRect(G2dRenderer *g2dRenderer, fx32 x, fx32 y);
void SetSubScreenViewRect(G2dRenderer *g2dRenderer, fx32 x, fx32 y);
void ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE vramType, GXOBJVRamModeChar vramMode);
void ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE vramType);

#endif // POKEPLATINUM_SPRITE_UTIL_H
