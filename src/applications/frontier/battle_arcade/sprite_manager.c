#include "applications/frontier/battle_arcade/sprite_manager.h"

#include <nitro.h>

#include "applications/party_menu/main.h"

#include "char_transfer.h"
#include "gx_layers.h"
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

static const u8 sCapacities[4] = { 11, 11, 11, 11 };

static void InitCharPlttTransferBuffers(void);
static void InitMainScreenSpriteResources(BattleArcadeAppSpriteManager *spriteMan);
static void InitItemSpriteResources(BattleArcadeAppSpriteManager *spriteMan);
static void InitMonSpriteResources(BattleArcadeAppSpriteManager *spriteMan, Party *party, Party *opponentParty, u8 isMultiPlayerChallenge);
static void InitSubScreenSpriteResources(BattleArcadeAppSpriteManager *spriteMan);

void BattleArcadeApp_InitSpriteManager(BattleArcadeAppSpriteManager *spriteMan, Party *party, Party *opponentParty, u8 isMultiPlayerChallenge)
{
    VramTransfer_New(32, HEAP_ID_BATTLE_ARCADE_APP);
    InitCharPlttTransferBuffers();

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_BATTLE_ARCADE_APP);

    spriteMan->spriteList = SpriteList_InitRendering(34, &spriteMan->renderer, HEAP_ID_BATTLE_ARCADE_APP);

    for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        spriteMan->resourceCollection[i] = SpriteResourceCollection_New(sCapacities[i], i, HEAP_ID_BATTLE_ARCADE_APP);
    }

    InitSubScreenSpriteResources(spriteMan);
    InitMainScreenSpriteResources(spriteMan);
    InitItemSpriteResources(spriteMan);
    InitMonSpriteResources(spriteMan, party, opponentParty, isMultiPlayerChallenge);

    for (int i = 0; i < 11; i++) {
        SpriteTransfer_RequestChar(spriteMan->resources[i][SPRITE_RESOURCE_CHAR]);
    }

    for (int i = 0; i < 4; i++) {
        SpriteTransfer_RequestPlttWholeRange(spriteMan->resources[i][SPRITE_RESOURCE_PLTT]);
    }

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

Sprite *BattleArcadeApp_InitSprite(BattleArcadeAppSpriteManager *spriteMan, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animID, u32 priority, int resourcePriority, u8 onSubScreen)
{
    SpriteResourcesHeader resourceHeader;
    SpriteResourcesHeader_Init(&resourceHeader, charResourceID, plttResourceID, cellResourceID, cellResourceID, -1, -1, FALSE, resourcePriority, spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

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
    spriteTemplate.heapID = HEAP_ID_BATTLE_ARCADE_APP;

    if (!onSubScreen) {
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    } else {
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        spriteTemplate.position.y += FX32_CONST(HW_LCD_HEIGHT);
    }

    Sprite *sprite = SpriteList_AddAffine(&spriteTemplate);

    Sprite_SetAnimateFlag(sprite, TRUE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
    Sprite_SetAnim(sprite, animID);

    return sprite;
}

void BattleArcadeApp_FreeSprites(BattleArcadeAppSpriteManager *spriteMan)
{
    for (u8 i = 0; i < 11; i++) {
        SpriteTransfer_ResetCharTransfer(spriteMan->resources[i][SPRITE_RESOURCE_CHAR]);
    }

    for (u8 i = 0; i < 4; i++) {
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
        .maxTasks = 32,
        .sizeMain = 1024,
        .sizeSub = 1024,
        HEAP_ID_BATTLE_ARCADE_APP
    };

    CharTransfer_InitWithVramModes(&transferTemplate, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);

    PlttTransfer_Init(14, HEAP_ID_BATTLE_ARCADE_APP);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void InitMainScreenSpriteResources(BattleArcadeAppSpriteManager *spriteMan)
{
    spriteMan->resources[RESOURCE_ID_MAIN_SPRITES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_ARCADE_APP_SPRITES_NCGR, TRUE, RESOURCE_ID_MAIN_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_MAIN_SPRITES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_ARCADE_APP_SPRITES_PLTT, FALSE, RESOURCE_ID_MAIN_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, 8, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_MAIN_SPRITES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_ARCADE_APP_SPRITES_NCER, TRUE, RESOURCE_ID_MAIN_SPRITES, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_MAIN_SPRITES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_ARCADE_APP_SPRITES_NANR, TRUE, RESOURCE_ID_MAIN_SPRITES, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_ARCADE_APP);
}

static void InitItemSpriteResources(BattleArcadeAppSpriteManager *spriteMan)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, HEAP_ID_BATTLE_ARCADE_APP);

    spriteMan->resources[RESOURCE_ID_ITEM_SPRITES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], narc, sub_02081930(), FALSE, RESOURCE_ID_ITEM_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_ITEM_SPRITES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_GRAPHIC__PL_PLIST_GRA, sub_02081934(), FALSE, RESOURCE_ID_ITEM_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_ITEM_SPRITES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], narc, sub_02081938(), FALSE, RESOURCE_ID_ITEM_SPRITES, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_ITEM_SPRITES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], narc, sub_0208193C(), FALSE, RESOURCE_ID_ITEM_SPRITES, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_ARCADE_APP);

    NARC_dtor(narc);
}

static void InitMonSpriteResources(BattleArcadeAppSpriteManager *spriteMan, Party *party, Party *opponentParty, u8 isMultiPlayerChallenge)
{
    Pokemon *mon, *oppMon;
    NARC *narc = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_BATTLE_ARCADE_APP);

    spriteMan->resources[RESOURCE_ID_MON_SPRITES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, RESOURCE_ID_MON_SPRITES, NNS_G2D_VRAM_TYPE_2DMAIN, RESOURCE_ID_MON_SPRITES, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_MON_SPRITES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], narc, PokeIcon32KCellsFileIndex(), FALSE, RESOURCE_ID_MON_SPRITES, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_MON_SPRITES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], narc, PokeIcon32KAnimationFileIndex(), FALSE, RESOURCE_ID_MON_SPRITES, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_ARCADE_APP);

    for (u32 i = 0; i < NUM_MON_SPRITES; i++) {
        if (i == ARCADE_PARTY_SIZE_SOLO) {
            if (!isMultiPlayerChallenge) {
                mon = Party_GetPokemonBySlotIndex(party, 0);
                oppMon = Party_GetPokemonBySlotIndex(opponentParty, 0);
            } else {
                mon = Party_GetPokemonBySlotIndex(party, i);
                oppMon = Party_GetPokemonBySlotIndex(opponentParty, i);
            }
        } else {
            mon = Party_GetPokemonBySlotIndex(party, i);
            oppMon = Party_GetPokemonBySlotIndex(opponentParty, i);
        }

        spriteMan->resources[RESOURCE_ID_MON_SPRITES + i][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], narc, Pokemon_IconSpriteIndex(mon), SPRITE_RESOURCE_CHAR, RESOURCE_ID_MON_SPRITES + i, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_ARCADE_APP);
        spriteMan->resources[RESOURCE_ID_OPP_MON_ANIMS + i][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], narc, Pokemon_IconSpriteIndex(oppMon), SPRITE_RESOURCE_CHAR, RESOURCE_ID_OPP_MON_ANIMS + i, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_BATTLE_ARCADE_APP);
    }

    NARC_dtor(narc);
}

static void InitSubScreenSpriteResources(BattleArcadeAppSpriteManager *spriteMan)
{
    spriteMan->resources[RESOURCE_ID_SUB_SPRITES][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_ARCADE_APP_SUB_SPRITES_NCGR, TRUE, RESOURCE_ID_SUB_SPRITES, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_SUB_SPRITES][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_ARCADE_APP_SUB_SPRITES_PLTT, FALSE, RESOURCE_ID_SUB_SPRITES, NNS_G2D_VRAM_TYPE_2DSUB, 2, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_SUB_SPRITES][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_ARCADE_APP_SUB_SPRITES_NCER, TRUE, RESOURCE_ID_SUB_SPRITES, SPRITE_RESOURCE_CELL, HEAP_ID_BATTLE_ARCADE_APP);
    spriteMan->resources[RESOURCE_ID_SUB_SPRITES][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, BATTLE_ARCADE_APP_SUB_SPRITES_NANR, TRUE, RESOURCE_ID_SUB_SPRITES, SPRITE_RESOURCE_ANIM, HEAP_ID_BATTLE_ARCADE_APP);
}
