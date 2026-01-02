#include "poffin_sprite.h"

#include <nitro.h>

#include "constants/narc.h"

#include "heap.h"
#include "narc.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

static void InitSprites(PoffinSpriteManager *spriteMan);
static void FreeResources(PoffinSpriteManager *spriteMan);
static void LoadResources(PoffinSpriteManager *spriteMan);
static s16 GetAvailableIndex(PoffinSpriteManager *spriteMan, u8 flavor);

PoffinSpriteManager *PoffinSpriteManager_New(enum HeapID heapID, u16 maxSprites, u16 numPalettes, u16 vramType, int transferType)
{
    PoffinSpriteManager *spriteMan = Heap_Alloc(heapID, sizeof(PoffinSpriteManager));
    MI_CpuClear8(spriteMan, sizeof(PoffinSpriteManager));

    spriteMan->heapID = heapID;

    if (maxSprites > 16) {
        spriteMan->numPalettes = 16;
    } else {
        spriteMan->numPalettes = numPalettes;
    }

    spriteMan->maxSprites = maxSprites;
    spriteMan->vramType = vramType;
    spriteMan->transferType = transferType;

    InitSprites(spriteMan);
    return spriteMan;
}

void PoffinSpriteManager_Free(PoffinSpriteManager *spriteMan)
{
    FreeResources(spriteMan);
    MI_CpuClear8(spriteMan, sizeof(PoffinSpriteManager));
    Heap_Free(spriteMan);
}

static void InitSprites(PoffinSpriteManager *spriteMan)
{
    u8 resourceCounts[] = { 1, 1, 1, 1 };

    spriteMan->spriteList = SpriteList_InitRendering(spriteMan->maxSprites, &spriteMan->renderer, spriteMan->heapID);

    resourceCounts[SPRITE_RESOURCE_PLTT] = spriteMan->numPalettes;

    for (u32 i = 0; i < 4; i++) {
        spriteMan->ownedResources[i] = SpriteResourceCollection_New(resourceCounts[i], i, spriteMan->heapID);
        spriteMan->unownedResources[i] = SpriteResourceList_New(resourceCounts[i], spriteMan->heapID);

        for (u32 j = 0; j < spriteMan->unownedResources[i]->capacity; j++) {
            spriteMan->unownedResources[i]->resources[j] = NULL;
        }
    }

    LoadResources(spriteMan);

    spriteMan->poffinList = Heap_Alloc(spriteMan->heapID, sizeof(PoffinSpriteItem));
    MI_CpuClear8(spriteMan->poffinList, sizeof(PoffinSpriteItem));
}

static void FreeResources(PoffinSpriteManager *spriteMan)
{
    Heap_Free(spriteMan->poffinList);
    SpriteList_Delete(spriteMan->spriteList);
    SpriteTransfer_ResetCharTransferList(spriteMan->unownedResources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransferList(spriteMan->unownedResources[SPRITE_RESOURCE_PLTT]);

    for (u32 i = 0; i < 4; i++) {
        SpriteResourceList_Delete(spriteMan->unownedResources[i]);
        SpriteResourceCollection_Delete(spriteMan->ownedResources[i]);
    }
}

void PoffinSpriteManager_DrawSprites(PoffinSpriteManager *spriteMan)
{
    SpriteList_Update(spriteMan->spriteList);
}

PoffinSprite *PoffinSprite_New(PoffinSpriteManager *spriteMan, enum PoffinType type, u16 x, u16 y, u16 z, u8 bgPriority, u8 priority, BOOL onSubScreen)
{
    s16 index = GetAvailableIndex(spriteMan, type);

    if (index < 0) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    PoffinSprite *poffinSprite = Heap_Alloc(spriteMan->heapID, sizeof(PoffinSprite));
    MI_CpuClear8(poffinSprite, sizeof(PoffinSprite));
    poffinSprite->index = index;

    u8 vRamType;
    if (onSubScreen == FALSE) {
        vRamType = NNS_G2D_VRAM_TYPE_2DMAIN;
    } else {
        vRamType = NNS_G2D_VRAM_TYPE_2DSUB;
    }

    SpriteResource *resource = spriteMan->unownedResources[SPRITE_RESOURCE_PLTT]->resources[index];

    SpriteResourceCollection_ModifyPalette(
        spriteMan->ownedResources[SPRITE_RESOURCE_PLTT],
        spriteMan->unownedResources[SPRITE_RESOURCE_PLTT]->resources[index],
        NARC_INDEX_GRAPHIC__PORUACT,
        3 + type,
        FALSE,
        spriteMan->heapID);
    SpriteTransfer_ReplacePlttData(spriteMan->unownedResources[SPRITE_RESOURCE_PLTT]->resources[index]);

    ManagedSprite *managedSprite = Heap_Alloc(spriteMan->heapID, sizeof(ManagedSprite));

    managedSprite->resourceHeaderList = Heap_Alloc(spriteMan->heapID, sizeof(SpriteResourcesHeaderList));
    managedSprite->resourceHeaderList->headers = Heap_Alloc(spriteMan->heapID, sizeof(SpriteResourcesHeader));
    managedSprite->resourceHeader = managedSprite->resourceHeaderList->headers;

    SpriteResourcesHeader_Init(
        managedSprite->resourceHeader,
        0xe000,
        0xe000 + index,
        0xe000,
        0xe000,
        -1,
        -1,
        FALSE,
        bgPriority,
        spriteMan->ownedResources[SPRITE_RESOURCE_CHAR],
        spriteMan->ownedResources[SPRITE_RESOURCE_PLTT],
        spriteMan->ownedResources[SPRITE_RESOURCE_CELL],
        spriteMan->ownedResources[SPRITE_RESOURCE_ANIM],
        NULL,
        NULL);

    AffineSpriteListTemplate spriteTemplate;
    spriteTemplate.list = spriteMan->spriteList;
    spriteTemplate.resourceData = managedSprite->resourceHeader;
    spriteTemplate.position.x = FX32_CONST(x);
    spriteTemplate.position.y = FX32_CONST(y);
    spriteTemplate.position.z = FX32_CONST(z);

    if (vRamType == NNS_G2D_VRAM_TYPE_2DSUB) {
        spriteTemplate.position.y += FX32_CONST(192);
    }

    spriteTemplate.affineScale.x = FX32_ONE;
    spriteTemplate.affineScale.y = FX32_ONE;
    spriteTemplate.affineScale.z = FX32_ONE;
    spriteTemplate.affineZRotation = 0;
    spriteTemplate.priority = priority;
    spriteTemplate.vramType = vRamType;
    spriteTemplate.heapID = spriteMan->heapID;

    managedSprite->sprite = SpriteList_AddAffine(&spriteTemplate);

    if (managedSprite->sprite != NULL) {
        Sprite_SetAnim(managedSprite->sprite, 0);
        u32 palette = SpriteTransfer_GetPlttOffset(resource, vRamType);
        Sprite_SetExplicitPalette(managedSprite->sprite, palette);
    } else {
        GF_ASSERT(FALSE);
    }

    poffinSprite->sprite = managedSprite;
    return poffinSprite;
}

void PoffinSprite_UpdateType(PoffinSpriteManager *spriteMan, PoffinSprite *sprite, enum PoffinType poffinType)
{
    SpriteResource *resource = spriteMan->unownedResources[SPRITE_RESOURCE_PLTT]->resources[sprite->index];

    SpriteResourceCollection_ModifyPalette(spriteMan->ownedResources[SPRITE_RESOURCE_PLTT], resource, NARC_INDEX_GRAPHIC__PORUACT, 3 + poffinType, FALSE, spriteMan->heapID);
    SpriteTransfer_ReplacePlttData(resource);
}

void PoffinSprite_Free(PoffinSpriteManager *spriteMan, PoffinSprite *poffinSprite)
{
    Sprite_DeleteAndFreeResources(poffinSprite->sprite);

    spriteMan->poffinList[poffinSprite->index].inUse = FALSE;
    spriteMan->poffinList[poffinSprite->index].index = 0;
    spriteMan->poffinList[poffinSprite->index].type = 0;

    Heap_Free(poffinSprite);
}

static void LoadResources(PoffinSpriteManager *spriteMan)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__PORUACT, spriteMan->heapID);

    SpriteResourceList *resourceList = spriteMan->unownedResources[SPRITE_RESOURCE_CHAR];
    resourceList->resources[0] = SpriteResourceCollection_AddTilesFrom(
        spriteMan->ownedResources[SPRITE_RESOURCE_CHAR],
        narc,
        0,
        FALSE,
        0xe000,
        spriteMan->vramType,
        spriteMan->heapID);

    GF_ASSERT(resourceList->resources[0] != NULL);

    switch (spriteMan->transferType) {
    case 1:
        SpriteTransfer_RequestCharAtEnd(resourceList->resources[0]);
        break;
    case 2:
        SpriteTransfer_RequestCharAtEndWithHardwareMappingType(resourceList->resources[0]);
        break;
    case 0:
    default:
        SpriteTransfer_RequestChar(resourceList->resources[0]);
        break;
    }

    for (int i = 0; i < 2; i++) {
        resourceList = spriteMan->unownedResources[2 + i];
        resourceList->resources[0] = SpriteResourceCollection_AddFrom(
            spriteMan->ownedResources[2 + i],
            narc,
            1 + i,
            FALSE,
            0xe000,
            2 + i,
            spriteMan->heapID);

        GF_ASSERT(resourceList->resources[0] != NULL);
    }

    resourceList = spriteMan->unownedResources[1];

    for (int i = 0; i < spriteMan->numPalettes; i++) {
        resourceList->resources[i] = SpriteResourceCollection_AddPaletteFrom(
            spriteMan->ownedResources[SPRITE_RESOURCE_PLTT],
            narc,
            3 + 1,
            FALSE,
            0xe000 + i,
            spriteMan->vramType,
            1,
            spriteMan->heapID);

        GF_ASSERT(resourceList->resources[i] != NULL);
        SpriteTransfer_RequestPlttWholeRange(resourceList->resources[i]);
    }

    NARC_dtor(narc);
}

static s16 GetAvailableIndex(PoffinSpriteManager *spriteMan, u8 type)
{
    for (u16 i = 0; i < spriteMan->numPalettes; i++) {
        if (!spriteMan->poffinList[i].inUse) {
            spriteMan->poffinList[i].index = i;
            spriteMan->poffinList[i].type = type;
            spriteMan->poffinList[i].inUse = TRUE;
            return i;
        }
    }

    return -1;
}
