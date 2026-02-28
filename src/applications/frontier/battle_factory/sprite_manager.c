#include "applications/frontier/battle_factory/sprite_manager.h"

#include <nitro.h>

#include "char_transfer.h"
#include "gx_layers.h"
#include "narc_frontier_obj.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

static void InitCharPlttTransferBuffers(void);

static const u8 sCapacities[4] = { 1, 1, 1, 1 };

void BattleFactoryApp_InitSpriteManager(BattleFactoryAppSpriteManager *sprites)
{
    InitCharPlttTransferBuffers();
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_BATTLE_FACTORY_APP);

    sprites->spriteList = SpriteList_InitRendering(9, &sprites->unk_04, HEAP_ID_BATTLE_FACTORY_APP);

    for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        sprites->resourceCollection[i] = SpriteResourceCollection_New(sCapacities[i], i, HEAP_ID_BATTLE_FACTORY_APP);
    }

    sprites->resources[0][0] = SpriteResourceCollection_AddTiles(sprites->resourceCollection[0], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_FACTORY_APP_SPRITES_NCGR, TRUE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_FACTORY_APP);
    sprites->resources[0][1] = SpriteResourceCollection_AddPalette(sprites->resourceCollection[1], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_FACTORY_APP_SPRITES_PLTT, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 8, HEAP_ID_BATTLE_FACTORY_APP);
    sprites->resources[0][2] = SpriteResourceCollection_Add(sprites->resourceCollection[2], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_FACTORY_APP_SPRITES_NCER, TRUE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_FACTORY_APP);
    sprites->resources[0][3] = SpriteResourceCollection_Add(sprites->resourceCollection[3], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_FACTORY_APP_SPRITES_NANR, TRUE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_FACTORY_APP);

    SpriteTransfer_RequestChar(sprites->resources[0][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttWholeRange(sprites->resources[0][SPRITE_RESOURCE_PLTT]);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

Sprite *BattleFactoryApp_InitSprite(BattleFactoryAppSpriteManager *spriteMan, u32 resourceID, u32 animID, u32 priority, int resourcePriority, u8 onSubScreen)
{
    SpriteResourcesHeader resourceHeader;
    SpriteResourcesHeader_Init(&resourceHeader, resourceID, resourceID, resourceID, resourceID, -1, -1, FALSE, resourcePriority, spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

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

    spriteTemplate.heapID = HEAP_ID_BATTLE_FACTORY_APP;

    if (onSubScreen == TRUE) {
        spriteTemplate.position.y += FX32_CONST(HW_LCD_HEIGHT);
    }

    Sprite *sprite = SpriteList_AddAffine(&spriteTemplate);

    Sprite_SetAnimateFlag(sprite, TRUE);
    Sprite_SetAnim(sprite, animID);

    return sprite;
}

void BattleFactoryApp_FreeSprites(BattleFactoryAppSpriteManager *spriteMan)
{
    SpriteTransfer_ResetCharTransfer(spriteMan->resources[0][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(spriteMan->resources[0][SPRITE_RESOURCE_PLTT]);

    for (u8 i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
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
        32, 2048, 2048, HEAP_ID_BATTLE_FACTORY_APP
    };

    CharTransfer_InitWithVramModes(&transferTemplate, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_64K);

    PlttTransfer_Init(8, HEAP_ID_BATTLE_FACTORY_APP);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}
