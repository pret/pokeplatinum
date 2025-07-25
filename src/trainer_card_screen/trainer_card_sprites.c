#include "trainer_card_screen/trainer_card_sprites.h"

#include <nitro.h>
#include <string.h>

#include "trainer_card_screen/struct_trainer_card_sprite_data.h"

#include "badges.h"
#include "char_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

typedef struct Coordinates {
    int x;
    int y;
} Coordinates;

static const u8 sSpriteResourceCapacities[4] = {
    [SPRITE_RESOURCE_CHAR] = 1,
    [SPRITE_RESOURCE_PLTT] = 2,
    [SPRITE_RESOURCE_CELL] = 1,
    [SPRITE_RESOURCE_ANIM] = 1
};

static const Coordinates sBadgeCoordinates[] = {
    [BADGE_ID_COAL] = { .x = 24, .y = 40 },
    [BADGE_ID_FOREST] = { .x = 80, .y = 40 },
    [BADGE_ID_COBBLE] = { .x = 136, .y = 40 },
    [BADGE_ID_FEN] = { .x = 192, .y = 40 },
    [BADGE_ID_RELIC] = { .x = 24, .y = 72 },
    [BADGE_ID_MINE] = { .x = 80, .y = 72 },
    [BADGE_ID_ICICLE] = { .x = 136, .y = 72 },
    [BADGE_ID_BEACON] = { .x = 192, .y = 72 }
};

static const Coordinates sSparkleCoordinates[] = {
    [BADGE_ID_COAL] = { .x = 24, .y = 40 },
    [BADGE_ID_FOREST] = { .x = 80, .y = 40 },
    [BADGE_ID_COBBLE] = { .x = 136, .y = 40 },
    [BADGE_ID_FEN] = { .x = 192, .y = 40 },
    [BADGE_ID_RELIC] = { .x = 24, .y = 96 },
    [BADGE_ID_MINE] = { .x = 80, .y = 96 },
    [BADGE_ID_ICICLE] = { .x = 136, .y = 96 },
    [BADGE_ID_BEACON] = { .x = 192, .y = 96 }
};

static void TrainerCard_InitCharPlttTransferBuffers(void);

void TrainerCard_InitSpriteData(TrainerCardSpriteData *spriteData, NARC *narc)
{
    int resourceType;

    TrainerCard_InitCharPlttTransferBuffers();
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_TRAINER_CARD_SCREEN);

    spriteData->spriteList = SpriteList_InitRendering((MAX_BADGES * 3 + 1), &spriteData->g2dRenderer, HEAP_ID_TRAINER_CARD_SCREEN);

    for (resourceType = SPRITE_RESOURCE_CHAR; resourceType < SPRITE_RESOURCE_MULTI_CELL; resourceType++) {
        spriteData->spriteResourceCollection[resourceType] = SpriteResourceCollection_New(sSpriteResourceCapacities[resourceType], resourceType, HEAP_ID_TRAINER_CARD_SCREEN);
    }

    spriteData->spriteResources[0][SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(spriteData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, 33, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_TRAINER_CARD_SCREEN);
    spriteData->spriteResources[0][SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(spriteData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narc, 14, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 9, HEAP_ID_TRAINER_CARD_SCREEN);
    spriteData->spriteResources[0][SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(spriteData->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, 44, FALSE, 1, SPRITE_RESOURCE_CELL, HEAP_ID_TRAINER_CARD_SCREEN);
    spriteData->spriteResources[0][SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(spriteData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, 46, FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_TRAINER_CARD_SCREEN);

    SpriteTransfer_RequestChar(spriteData->spriteResources[0][SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttWholeRange(spriteData->spriteResources[0][SPRITE_RESOURCE_PLTT]);

    u8 badgeID;
    const int badgePaletteNarcIndices[MAX_BADGES] = {
        [BADGE_ID_COAL] = 16,
        [BADGE_ID_FOREST] = 17,
        [BADGE_ID_COBBLE] = 18,
        [BADGE_ID_FEN] = 19,
        [BADGE_ID_RELIC] = 20,
        [BADGE_ID_MINE] = 21,
        [BADGE_ID_ICICLE] = 22,
        [BADGE_ID_BEACON] = 23
    };

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        spriteData->badgePaletteBuffers[badgeID] = NARC_AllocAndReadWholeMember(narc, badgePaletteNarcIndices[badgeID], HEAP_ID_TRAINER_CARD_SCREEN);

        if (spriteData->badgePaletteBuffers[badgeID] != NULL) {
            if (NNS_G2dGetUnpackedPaletteData(spriteData->badgePaletteBuffers[badgeID], &spriteData->badgePalettes[badgeID]) == FALSE) {
                Heap_Free(spriteData->badgePalettes[badgeID]);
                GF_ASSERT(0);
            }
        } else {
            GF_ASSERT(0);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

void TrainerCard_DrawBadgeCaseSprites(TrainerCardSpriteData *spriteData, u8 *badgesObtained)
{
    int badgeID;
    SpriteResourcesHeader resourceData;

    SpriteResourcesHeader_Init(&resourceData, 1, 1, 1, 1, 0xffffffff, 0xffffffff, FALSE, 1, spriteData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], spriteData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], spriteData->spriteResourceCollection[SPRITE_RESOURCE_CELL], spriteData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    u8 index;
    AffineSpriteListTemplate template;

    template.list = spriteData->spriteList;
    template.resourceData = &resourceData;
    template.position.x = 0;
    template.position.y = 0;
    template.position.z = 0;
    template.affineScale.x = FX32_ONE;
    template.affineScale.y = FX32_ONE;
    template.affineScale.z = FX32_ONE;
    template.affineZRotation = 0;
    template.priority = 2;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_TRAINER_CARD_SCREEN;

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        // clang-format off
        template.position.x = FX32_ONE * sBadgeCoordinates[badgeID].x;
        template.position.y = FX32_ONE * sBadgeCoordinates[badgeID].y;
        // clang-format on
        spriteData->sprites[badgeID] = SpriteList_AddAffine(&template);
        Sprite_SetAnimateFlag(spriteData->sprites[badgeID], FALSE);
        Sprite_SetAnim(spriteData->sprites[badgeID], badgeID);

        if (!badgesObtained[badgeID]) {
            Sprite_SetDrawFlag(spriteData->sprites[badgeID], FALSE);
        }
    }

    index = TRAINER_CARD_TWO_SPARKLES_SPRITES_INDEX;

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        // clang-format off
        template.position.x = FX32_ONE * sSparkleCoordinates[badgeID].x;
        template.position.y = FX32_ONE * sSparkleCoordinates[badgeID].y;
        // clang-format on
        template.priority = 1;
        spriteData->sprites[index + badgeID] = SpriteList_AddAffine(&template);
        Sprite_SetAnimateFlag(spriteData->sprites[index + badgeID], TRUE);
        Sprite_SetAnim(spriteData->sprites[index + badgeID], 8);
        Sprite_SetDrawFlag(spriteData->sprites[index + badgeID], FALSE);
    }

    index += TRAINER_CARD_FOUR_SPARKLES_SPRITES_INDEX - TRAINER_CARD_TWO_SPARKLES_SPRITES_INDEX;

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        // clang-format off
        template.position.x = FX32_ONE * sSparkleCoordinates[badgeID].x;
        template.position.y = FX32_ONE * sSparkleCoordinates[badgeID].y;
        // clang-format on
        template.priority = 1;
        spriteData->sprites[index + badgeID] = SpriteList_AddAffine(&template);
        Sprite_SetAnimateFlag(spriteData->sprites[index + badgeID], TRUE);
        Sprite_SetAnim(spriteData->sprites[index + badgeID], 9);
        Sprite_SetDrawFlag(spriteData->sprites[index + badgeID], FALSE);
    }

    index += TRAINER_CARD_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX - TRAINER_CARD_FOUR_SPARKLES_SPRITES_INDEX;

    resourceData.priority = 0;
    template.position.x = FX32_ONE * (12 * 8);
    template.position.y = FX32_ONE * (17 * 8);
    template.priority = 0;
    spriteData->sprites[index] = SpriteList_AddAffine(&template);
    Sprite_SetAnimateFlag(spriteData->sprites[index], FALSE);
    Sprite_SetAnim(spriteData->sprites[index], 10);
    Sprite_SetDrawFlag(spriteData->sprites[index], FALSE);
}

void TrainerCard_FreeSprites(TrainerCardSpriteData *spriteData)
{
    u8 i;

    for (i = 0; i < MAX_BADGES; i++) {
        Heap_Free(spriteData->badgePaletteBuffers[i]);
    }

    SpriteTransfer_ResetCharTransfer(spriteData->spriteResources[0][0]);
    SpriteTransfer_ResetPlttTransfer(spriteData->spriteResources[0][1]);

    for (i = SPRITE_RESOURCE_CHAR; i < SPRITE_RESOURCE_MULTI_CELL; i++) {
        SpriteResourceCollection_Delete(spriteData->spriteResourceCollection[i]);
    }

    SpriteList_Delete(spriteData->spriteList);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

void TrainerCard_DrawBadgeDirt(TrainerCardSpriteData *spriteData, u8 badgeID, u8 dirtLevel)
{
    GF_ASSERT(badgeID < MAX_BADGES);
    GF_ASSERT(dirtLevel <= 3);

    NNSG2dImagePaletteProxy *paletteProxy = Sprite_GetPaletteProxy(spriteData->sprites[badgeID]);
    u32 vramLocation = NNS_G2dGetImagePaletteLocation(paletteProxy, NNS_G2D_VRAM_TYPE_2DMAIN);
    vramLocation += badgeID * PALETTE_SIZE_BYTES;
    u8 *rawData = spriteData->badgePalettes[badgeID]->pRawData;

    DC_FlushRange(&rawData[dirtLevel * PALETTE_SIZE_BYTES], PALETTE_SIZE_BYTES);
    GX_LoadOBJPltt(&rawData[dirtLevel * PALETTE_SIZE_BYTES], vramLocation, PALETTE_SIZE_BYTES);
}

static void TrainerCard_InitCharPlttTransferBuffers(void)
{
    CharTransferTemplate template = {
        .maxTasks = 1,
        .sizeMain = 2048,
        .sizeSub = 0,
        .heapID = HEAP_ID_TRAINER_CARD_SCREEN
    };

    CharTransfer_Init(&template);

    PlttTransfer_Init(2, HEAP_ID_TRAINER_CARD_SCREEN);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}
