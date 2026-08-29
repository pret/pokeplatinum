#include "applications/scratch_off_cards/sprite_manager.h"

#include <nitro.h>

#include "char_transfer.h"
#include "gx_layers.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "vram_transfer.h"

static void InitCharPlttTransferBuffers(void);
static void InitPokemonSpriteResources(ScratchOffCardsAppSpriteManager *spriteMan, int resourceID, int resourceID2, enum NNS_G2D_VRAM_TYPE vRamType);
static void InitCardSpriteResources(ScratchOffCardsAppSpriteManager *spriteMan, int unused);
static void InitBoxSpriteResources(ScratchOffCardsAppSpriteManager *spriteMan, int unused);
static void InitWinPopupSpriteResources(ScratchOffCardsAppSpriteManager *spriteMan, int unused);

static const u8 sCapacities[4] = { 5, 5, 5, 5 };

void ScratchOffCardsApp_InitSpriteManager(ScratchOffCardsAppSpriteManager *spriteMan)
{
    VramTransfer_New(32, HEAP_ID_SCRATCH_OFF_CARD_APP);
    InitCharPlttTransferBuffers();

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->spriteList = SpriteList_InitRendering(40, &spriteMan->g2dRenderer, HEAP_ID_SCRATCH_OFF_CARD_APP);
    SetSubScreenViewRect(&spriteMan->g2dRenderer, 0, FX32_CONST(512));

    for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        spriteMan->resourceCollections[i] = SpriteResourceCollection_New(sCapacities[i], i, HEAP_ID_SCRATCH_OFF_CARD_APP);
    }

    InitCardSpriteResources(spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN);
    InitPokemonSpriteResources(spriteMan, RESOURCE_ID_MON_SPRITES_MAIN, RESOURCE_ID_MON_SPRITES_MAIN, NNS_G2D_VRAM_TYPE_2DMAIN);
    InitBoxSpriteResources(spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN);
    InitWinPopupSpriteResources(spriteMan, NNS_G2D_VRAM_TYPE_2DMAIN);
    InitPokemonSpriteResources(spriteMan, RESOURCE_ID_MON_SPRITES_SUB, RESOURCE_ID_MON_SPRITES_SUB, NNS_G2D_VRAM_TYPE_2DSUB);

    for (int i = 0; i < 5; i++) {
        SpriteTransfer_RequestChar(spriteMan->resources[i][SPRITE_RESOURCE_CHAR]);
        SpriteTransfer_RequestPlttWholeRange(spriteMan->resources[i][SPRITE_RESOURCE_PLTT]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void InitCardSpriteResources(ScratchOffCardsAppSpriteManager *spriteMan, int unused)
{
    spriteMan->resources[RESOURCE_ID_CARD_SPRITES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], NARC_INDEX_SCRATCH_OFF_CARDS, 12, FALSE, RESOURCE_ID_CARD_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_CARD_SPRITES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], NARC_INDEX_SCRATCH_OFF_CARDS, 13, FALSE, RESOURCE_ID_CARD_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, 4, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_CARD_SPRITES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], NARC_INDEX_SCRATCH_OFF_CARDS, 11, FALSE, RESOURCE_ID_CARD_SPRITES, SPRITE_RESOURCE_CELL, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_CARD_SPRITES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], NARC_INDEX_SCRATCH_OFF_CARDS, 10, FALSE, RESOURCE_ID_CARD_SPRITES, SPRITE_RESOURCE_ANIM, HEAP_ID_SCRATCH_OFF_CARD_APP);
}

static void InitPokemonSpriteResources(ScratchOffCardsAppSpriteManager *spriteMan, int resourceID, int resourceID2, enum NNS_G2D_VRAM_TYPE vRamType)
{
    spriteMan->resources[resourceID][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], NARC_INDEX_SCRATCH_OFF_CARDS, 32, FALSE, resourceID2, vRamType, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[resourceID][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], NARC_INDEX_SCRATCH_OFF_CARDS, 33, FALSE, resourceID2, vRamType, 5, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[resourceID][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], NARC_INDEX_SCRATCH_OFF_CARDS, 31, FALSE, resourceID2, SPRITE_RESOURCE_CELL, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[resourceID][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], NARC_INDEX_SCRATCH_OFF_CARDS, 30, FALSE, resourceID2, SPRITE_RESOURCE_ANIM, HEAP_ID_SCRATCH_OFF_CARD_APP);
}

static void InitBoxSpriteResources(ScratchOffCardsAppSpriteManager *spriteMan, int unused)
{
    spriteMan->resources[RESOURCE_ID_BOX_SPRITES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], NARC_INDEX_SCRATCH_OFF_CARDS, 16, FALSE, RESOURCE_ID_BOX_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_BOX_SPRITES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], NARC_INDEX_SCRATCH_OFF_CARDS, 17, FALSE, RESOURCE_ID_BOX_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, 4, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_BOX_SPRITES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], NARC_INDEX_SCRATCH_OFF_CARDS, 15, FALSE, RESOURCE_ID_BOX_SPRITES, SPRITE_RESOURCE_CELL, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_BOX_SPRITES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], NARC_INDEX_SCRATCH_OFF_CARDS, 14, FALSE, RESOURCE_ID_BOX_SPRITES, SPRITE_RESOURCE_ANIM, HEAP_ID_SCRATCH_OFF_CARD_APP);
}

static void InitWinPopupSpriteResources(ScratchOffCardsAppSpriteManager *spriteMan, int unused)
{
    spriteMan->resources[RESOURCE_ID_WIN_POPUP_SPRITE][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], NARC_INDEX_SCRATCH_OFF_CARDS, 20, FALSE, RESOURCE_ID_WIN_POPUP_SPRITE, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_WIN_POPUP_SPRITE][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], NARC_INDEX_SCRATCH_OFF_CARDS, 21, FALSE, RESOURCE_ID_WIN_POPUP_SPRITE, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_WIN_POPUP_SPRITE][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], NARC_INDEX_SCRATCH_OFF_CARDS, 19, FALSE, RESOURCE_ID_WIN_POPUP_SPRITE, SPRITE_RESOURCE_CELL, HEAP_ID_SCRATCH_OFF_CARD_APP);
    spriteMan->resources[RESOURCE_ID_WIN_POPUP_SPRITE][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], NARC_INDEX_SCRATCH_OFF_CARDS, 18, FALSE, RESOURCE_ID_WIN_POPUP_SPRITE, SPRITE_RESOURCE_ANIM, HEAP_ID_SCRATCH_OFF_CARD_APP);
}

Sprite *ScratchOffCardsApp_InitSprite(ScratchOffCardsAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u32 resourcePriority, u32 priority, u8 onSubScreen)
{
    SpriteResourcesHeader resourceHeader;
    SpriteResourcesHeader_Init(&resourceHeader, resourceID, resourceID, resourceID, resourceID, -1, -1, FALSE, resourcePriority, spriteMan->resourceCollections[SPRITE_RESOURCE_CHAR], spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], spriteMan->resourceCollections[SPRITE_RESOURCE_CELL], spriteMan->resourceCollections[SPRITE_RESOURCE_ANIM], NULL, NULL);

    AffineSpriteListTemplate spriteTemplate;
    spriteTemplate.list = spriteMan->spriteList;
    spriteTemplate.resourceData = &resourceHeader;
    spriteTemplate.position.x = 0;
    spriteTemplate.position.y = 0;
    spriteTemplate.position.z = 0;
    spriteTemplate.affineScale.x = FX32_ONE;
    spriteTemplate.affineScale.y = FX32_ONE;
    spriteTemplate.affineScale.z = FX32_ONE;
    spriteTemplate.affineZRotation = 0;
    spriteTemplate.priority = priority;
    spriteTemplate.heapID = HEAP_ID_SCRATCH_OFF_CARD_APP;

    if (!onSubScreen) {
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    } else {
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    }

    Sprite *sprite = SpriteList_AddAffine(&spriteTemplate);

    Sprite_SetAnimateFlag(sprite, FALSE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
    Sprite_SetAnim(sprite, animID);

    return sprite;
}

void ScratchOffCardsApp_FreeSprites(ScratchOffCardsAppSpriteManager *spriteMan)
{
    for (u8 i = 0; i < 5; i++) {
        SpriteTransfer_ResetCharTransfer(spriteMan->resources[i][SPRITE_RESOURCE_CHAR]);
        SpriteTransfer_ResetPlttTransfer(spriteMan->resources[i][SPRITE_RESOURCE_PLTT]);
    }

    for (u8 i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        SpriteResourceCollection_Delete(spriteMan->resourceCollections[i]);
    }

    SpriteList_Delete(spriteMan->spriteList);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

static void InitCharPlttTransferBuffers(void)
{
    CharTransferTemplate transferTemplate = {
        .maxTasks = 5,
        .sizeMain = 3000,
        .sizeSub = 5120,
        .heapID = HEAP_ID_SCRATCH_OFF_CARD_APP
    };

    CharTransfer_InitWithVramModes(&transferTemplate, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K);

    PlttTransfer_Init(14, HEAP_ID_SCRATCH_OFF_CARD_APP);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static u8 sBoxSpritePalettes[8] = {
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29
};

void ScratchOffCardsApp_UpdateBoxPalettes(ScratchOffCardsAppSpriteManager *spriteMan, int index)
{
    if (index >= 8) {
        GF_ASSERT(FALSE);
    }

    SpriteResource *resource = SpriteResourceCollection_Find(spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], RESOURCE_ID_BOX_SPRITES);

    SpriteResourceCollection_ModifyPalette(spriteMan->resourceCollections[SPRITE_RESOURCE_PLTT], resource, NARC_INDEX_SCRATCH_OFF_CARDS, sBoxSpritePalettes[index], FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
    SpriteTransfer_ReplacePlttData(resource);
}
