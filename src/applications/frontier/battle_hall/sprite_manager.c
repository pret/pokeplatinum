#include "applications/frontier/battle_hall/sprite_manager.h"

#include <nitro.h>

#include "char_transfer.h"
#include "gx_layers.h"
#include "narc.h"
#include "narc_frontier_obj.h"
#include "pltt_transfer.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

static void InitCharPlttTransferBuffers(void);

static const u8 sCapacities[4] = { 2, 2, 2, 2 };

void BattleHallApp_InitSpriteManager(BattleHallAppSpriteManager *sprites, Pokemon *mon)
{
    InitCharPlttTransferBuffers();
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_BATTLE_HALL_APP);

    sprites->spriteList = SpriteList_InitRendering(2, &sprites->renderer, HEAP_ID_BATTLE_HALL_APP);

    for (int i = 0; i < 4; i++) {
        sprites->resourceCollection[i] = SpriteResourceCollection_New(sCapacities[i], i, HEAP_ID_BATTLE_HALL_APP);
    }

    sprites->resources[0][0] = SpriteResourceCollection_AddTiles(sprites->resourceCollection[SPRITE_RESOURCE_CHAR], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_HALL_APP_CURSOR_BOX_NCGR, TRUE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_HALL_APP);
    sprites->resources[0][1] = SpriteResourceCollection_AddPalette(sprites->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_HALL_APP_CURSOR_BOX_PLTT, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_BATTLE_HALL_APP);
    sprites->resources[0][2] = SpriteResourceCollection_Add(sprites->resourceCollection[SPRITE_RESOURCE_CELL], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_HALL_APP_CURSOR_BOX_NCER, TRUE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_HALL_APP);
    sprites->resources[0][3] = SpriteResourceCollection_Add(sprites->resourceCollection[SPRITE_RESOURCE_ANIM], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_HALL_APP_CURSOR_BOX_NANR, TRUE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_HALL_APP);

    NARC *narc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_BATTLE_HALL_APP);

    sprites->resources[1][0] = SpriteResourceCollection_AddTilesFrom(sprites->resourceCollection[SPRITE_RESOURCE_CHAR], narc, Pokemon_IconSpriteIndex(mon), FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_HALL_APP);
    sprites->resources[1][1] = SpriteResourceCollection_AddPalette(sprites->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_BATTLE_HALL_APP);
    sprites->resources[1][2] = SpriteResourceCollection_AddFrom(sprites->resourceCollection[SPRITE_RESOURCE_CELL], narc, PokeIcon32KCellsFileIndex(), FALSE, 1, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_HALL_APP);
    sprites->resources[1][3] = SpriteResourceCollection_AddFrom(sprites->resourceCollection[SPRITE_RESOURCE_ANIM], narc, PokeIcon32KAnimationFileIndex(), FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_HALL_APP);

    for (int i = 0; i < 2; i++) {
        SpriteTransfer_RequestChar(sprites->resources[i][0]);
        SpriteTransfer_RequestPlttWholeRange(sprites->resources[i][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    NARC_dtor(narc);
}

Sprite *BattleHallApp_InitSprite(BattleHallAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u32 priority, u8 onSubScreen)
{
    SpriteResourcesHeader resourceHeader;
    SpriteResourcesHeader_Init(&resourceHeader, resourceID, resourceID, resourceID, resourceID, -1, -1, FALSE, 1, spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

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

    if (!onSubScreen) {
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    } else {
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    }

    spriteTemplate.heapID = HEAP_ID_BATTLE_HALL_APP;

    if (onSubScreen == TRUE) {
        spriteTemplate.position.y += FX32_CONST(192);
    }

    Sprite *sprite = SpriteList_AddAffine(&spriteTemplate);

    Sprite_SetAnimateFlag(sprite, TRUE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
    Sprite_SetAnim(sprite, animID);

    return sprite;
}

void BattleHallApp_FreeSprites(BattleHallAppSpriteManager *spriteMan)
{
    for (u8 i = 0; i < 2; i++) {
        SpriteTransfer_ResetCharTransfer(spriteMan->resources[i][SPRITE_RESOURCE_CHAR]);
        SpriteTransfer_ResetPlttTransfer(spriteMan->resources[i][SPRITE_RESOURCE_PLTT]);
    }

    for (u8 i = 0; i < 4; i++) {
        SpriteResourceCollection_Delete(spriteMan->resourceCollection[i]);
    }

    SpriteList_Delete(spriteMan->spriteList);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

static void InitCharPlttTransferBuffers(void)
{
    CharTransferTemplate transferTemplate = {
        3, 2048, 2048, HEAP_ID_BATTLE_HALL_APP
    };

    CharTransfer_InitWithVramModes(&transferTemplate, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);

    PlttTransfer_Init(4, HEAP_ID_BATTLE_HALL_APP);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}
