#include "applications/frontier/battle_castle/sprite_manager.h"

#include <nitro.h>

#include "applications/party_menu/main.h"

#include "char_transfer.h"
#include "gx_layers.h"
#include "item.h"
#include "narc.h"
#include "narc_frontier_obj.h"
#include "party.h"
#include "pltt_transfer.h"
#include "pokemon_icon.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "vram_transfer.h"

static void InitCharPlttTransferBuffers(void);
static void InitItemIconSpriteResources(BattleCastleAppSpriteManager *spriteMan);

static const u8 sCapacities[4] = { NUM_SPRITES, NUM_SPRITES, NUM_SPRITES, NUM_SPRITES };

void BattleCastleApp_InitSpriteManager(BattleCastleAppSpriteManager *spriteMan, Party *party, u8 challengeType)
{
    VramTransfer_New(32, HEAP_ID_BATTLE_CASTLE_APP);
    InitCharPlttTransferBuffers();

    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->spriteList = SpriteList_InitRendering(40, &spriteMan->renderer, HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        spriteMan->resourceCollection[i] = SpriteResourceCollection_New(sCapacities[i], i, HEAP_ID_BATTLE_CASTLE_APP);
    }

    spriteMan->resources[0][0] = SpriteResourceCollection_AddTiles(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_CASTLE_APP_SPRITES_NCGR, TRUE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[0][1] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_CASTLE_APP_SPRITES_PLTT, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[0][2] = SpriteResourceCollection_Add(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_CASTLE_APP_SPRITES_NCER, TRUE, 0, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[0][3] = SpriteResourceCollection_Add(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_CASTLE_APP_SPRITES_NANR, TRUE, 0, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_CASTLE_APP);

    NARC *narc = NARC_ctor(NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, HEAP_ID_BATTLE_CASTLE_APP);

    spriteMan->resources[1][0] = SpriteResourceCollection_AddTilesFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], narc, Item_FileID(0, 1), FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[1][1] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(0, 2), FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[1][2] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], narc, Item_IconNCERFile(), FALSE, 1, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[1][3] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], narc, Item_IconNANRFile(), FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_CASTLE_APP);

    NARC_dtor(narc);
    InitItemIconSpriteResources(spriteMan);

    narc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_BATTLE_CASTLE_APP);

    spriteMan->resources[3][1] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[3][2] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], narc, PokeIcon32KCellsFileIndex(), FALSE, 3, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[3][3] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], narc, PokeIcon32KAnimationFileIndex(), FALSE, 3, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < 4; i++) {
        Pokemon *mon;

        if (i == 3) {
            if (challengeType == 0) {
                mon = Party_GetPokemonBySlotIndex(party, 0);
            } else {
                mon = Party_GetPokemonBySlotIndex(party, i);
            }
        } else {
            mon = Party_GetPokemonBySlotIndex(party, i);
        }

        spriteMan->resources[3 + i][0] = SpriteResourceCollection_AddTilesFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], narc, Pokemon_IconSpriteIndex(mon), FALSE, 3 + i, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_CASTLE_APP);
    }

    NARC_dtor(narc);

    for (int i = 0; i < NUM_SPRITES; i++) {
        SpriteTransfer_RequestChar(spriteMan->resources[i][0]);
    }

    for (int i = 0; i < 4; i++) {
        SpriteTransfer_RequestPlttWholeRange(spriteMan->resources[i][1]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

Sprite *BattleCastleApp_InitSprite(BattleCastleAppSpriteManager *spriteMan, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animID, u32 priority, int resourcePriority, u8 onSubScreen)
{
    SpriteResourcesHeader resourceHeader;
    SpriteResourcesHeader_Init(&resourceHeader, charResourceID, plttResourceID, cellResourceID, cellResourceID, -1, -1, FALSE, resourcePriority, spriteMan->resourceCollection[0], spriteMan->resourceCollection[1], spriteMan->resourceCollection[2], spriteMan->resourceCollection[3], NULL, NULL);

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

    spriteTemplate.heapID = HEAP_ID_BATTLE_CASTLE_APP;

    if (onSubScreen == TRUE) {
        spriteTemplate.position.y += FX32_CONST(192);
    }

    Sprite *sprite = SpriteList_AddAffine(&spriteTemplate);

    Sprite_SetAnimateFlag(sprite, TRUE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
    Sprite_SetAnim(sprite, animID);

    return sprite;
}

void BattleCastleApp_FreeSprites(BattleCastleAppSpriteManager *spriteMan)
{
    for (u8 i = 0; i < NUM_SPRITES; i++) {
        SpriteTransfer_ResetCharTransfer(spriteMan->resources[i][SPRITE_RESOURCE_CHAR]);
    }

    for (u8 i = 0; i < 4; i++) {
        SpriteTransfer_ResetPlttTransfer(spriteMan->resources[i][SPRITE_RESOURCE_PLTT]);
    }

    for (u8 i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        SpriteResourceCollection_Delete(spriteMan->resourceCollection[i]);
    }

    SpriteList_Delete(spriteMan->spriteList);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

void BattleCastleApp_SetItemGraphic(BattleCastleAppSpriteManager *spriteMan, u16 item)
{
    SpriteResource *resource = SpriteResourceCollection_Find(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], 1);

    SpriteResourceCollection_ModifyTiles(spriteMan->resourceCollection[0], resource, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_ICON), FALSE, HEAP_ID_BATTLE_CASTLE_APP);
    SpriteTransfer_RetransferCharData(resource);
}

void BattleCastleApp_SetItemPalette(BattleCastleAppSpriteManager *spriteMan, u16 item)
{
    SpriteResource *resource = SpriteResourceCollection_Find(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], 1);

    SpriteResourceCollection_ModifyPalette(spriteMan->resourceCollection[1], resource, NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON, Item_FileID(item, ITEM_FILE_TYPE_PALETTE), FALSE, HEAP_ID_BATTLE_CASTLE_APP);
    SpriteTransfer_ReplacePlttData(resource);
}

static void InitCharPlttTransferBuffers(void)
{
    CharTransferTemplate transferTemplate = { 32, 1024, 1024, HEAP_ID_BATTLE_CASTLE_APP };

    CharTransfer_InitWithVramModes(&transferTemplate, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);

    PlttTransfer_Init(8, HEAP_ID_BATTLE_CASTLE_APP);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void InitItemIconSpriteResources(BattleCastleAppSpriteManager *spriteMan)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, HEAP_ID_BATTLE_CASTLE_APP);

    spriteMan->resources[2][0] = SpriteResourceCollection_AddTilesFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], narc, sub_02081930(), FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[2][1] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_GRAPHIC__PL_PLIST_GRA, sub_02081934(), FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[2][2] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], narc, sub_02081938(), FALSE, 2, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_CASTLE_APP);
    spriteMan->resources[2][3] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], narc, sub_0208193C(), FALSE, 2, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_CASTLE_APP);

    NARC_dtor(narc);
}
