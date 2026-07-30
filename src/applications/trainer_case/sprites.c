#include "applications/trainer_case/sprites.h"

#include <nitro.h>

#include "applications/trainer_case/defs.h"

#include "badges.h"
#include "char_transfer.h"
#include "coordinates.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

#include "res/graphics/trainer_case/trainer_case.naix"

static const u8 sSpriteResourceCapacities[MAX_SPRITE_RESOURCE_GEN4] = {
    [SPRITE_RESOURCE_CHAR] = 1,
    [SPRITE_RESOURCE_PLTT] = 2,
    [SPRITE_RESOURCE_CELL] = 1,
    [SPRITE_RESOURCE_ANIM] = 1
};

static const CoordinatesInt sBadgeCoordinates[] = {
    [BADGE_ID_COAL] = { .x = 24, .y = 40 },
    [BADGE_ID_FOREST] = { .x = 80, .y = 40 },
    [BADGE_ID_COBBLE] = { .x = 136, .y = 40 },
    [BADGE_ID_FEN] = { .x = 192, .y = 40 },
    [BADGE_ID_RELIC] = { .x = 24, .y = 72 },
    [BADGE_ID_MINE] = { .x = 80, .y = 72 },
    [BADGE_ID_ICICLE] = { .x = 136, .y = 72 },
    [BADGE_ID_BEACON] = { .x = 192, .y = 72 }
};

static const CoordinatesInt sSparkleCoordinates[] = {
    [BADGE_ID_COAL] = { .x = 24, .y = 40 },
    [BADGE_ID_FOREST] = { .x = 80, .y = 40 },
    [BADGE_ID_COBBLE] = { .x = 136, .y = 40 },
    [BADGE_ID_FEN] = { .x = 192, .y = 40 },
    [BADGE_ID_RELIC] = { .x = 24, .y = 96 },
    [BADGE_ID_MINE] = { .x = 80, .y = 96 },
    [BADGE_ID_ICICLE] = { .x = 136, .y = 96 },
    [BADGE_ID_BEACON] = { .x = 192, .y = 96 }
};

static void TrainerCaseApp_InitCharPlttTransferBuffers(void);

void TrainerCaseApp_InitSpriteData(TrainerCaseSpriteData *spriteData, NARC *narc)
{
    TrainerCaseApp_InitCharPlttTransferBuffers();
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_TRAINER_CASE);

    spriteData->spriteList = SpriteList_InitRendering(MAX_BADGES * 3 + 1, &spriteData->g2dRenderer, HEAP_ID_TRAINER_CASE);

    for (int resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        spriteData->spriteResourceCollection[resourceType] = SpriteResourceCollection_New(sSpriteResourceCapacities[resourceType], resourceType, HEAP_ID_TRAINER_CASE);
    }

    spriteData->spriteResources[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(spriteData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, badge_case_sprites_NCGR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_TRAINER_CASE);
    spriteData->spriteResources[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(spriteData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narc, badge_case_sprites_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 9, HEAP_ID_TRAINER_CASE);
    spriteData->spriteResources[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(spriteData->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, badge_case_sprites_cell_NCER, FALSE, 1, SPRITE_RESOURCE_CELL, HEAP_ID_TRAINER_CASE);
    spriteData->spriteResources[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(spriteData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, badge_case_sprites_anim_NANR, FALSE, 1, SPRITE_RESOURCE_ANIM, HEAP_ID_TRAINER_CASE);

    SpriteTransfer_RequestChar(spriteData->spriteResources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_RequestPlttWholeRange(spriteData->spriteResources[SPRITE_RESOURCE_PLTT]);

    const int badgePaletteNarcIndices[MAX_BADGES] = {
        [BADGE_ID_COAL] = coal_badge_NCLR,
        [BADGE_ID_FOREST] = forest_badge_NCLR,
        [BADGE_ID_COBBLE] = cobble_badge_NCLR,
        [BADGE_ID_FEN] = fen_badge_NCLR,
        [BADGE_ID_RELIC] = relic_badge_NCLR,
        [BADGE_ID_MINE] = mine_badge_NCLR,
        [BADGE_ID_ICICLE] = icicle_badge_NCLR,
        [BADGE_ID_BEACON] = beacon_badge_NCLR
    };

    for (u8 badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        spriteData->badgePaletteBuffers[badgeID] = NARC_AllocAndReadWholeMember(narc, badgePaletteNarcIndices[badgeID], HEAP_ID_TRAINER_CASE);

        if (spriteData->badgePaletteBuffers[badgeID] != NULL) {
            if (!NNS_G2dGetUnpackedPaletteData(spriteData->badgePaletteBuffers[badgeID], &spriteData->badgePalettes[badgeID])) {
                Heap_Free(spriteData->badgePalettes[badgeID]);
                GF_ASSERT(FALSE);
            }
        } else {
            GF_ASSERT(FALSE);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

void TrainerCase_DrawBadgeCaseSprites(TrainerCaseSpriteData *spriteData, u8 *badgesObtained)
{
    SpriteResourcesHeader resourceData;

    SpriteResourcesHeader_Init(
        &resourceData,
        1,
        1,
        1,
        1,
        -1,
        -1,
        FALSE,
        1,
        spriteData->spriteResourceCollection[SPRITE_RESOURCE_CHAR],
        spriteData->spriteResourceCollection[SPRITE_RESOURCE_PLTT],
        spriteData->spriteResourceCollection[SPRITE_RESOURCE_CELL],
        spriteData->spriteResourceCollection[SPRITE_RESOURCE_ANIM],
        NULL,
        NULL);

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
    template.heapID = HEAP_ID_TRAINER_CASE;

    for (int badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        template.position.x = FX32_ONE * sBadgeCoordinates[badgeID].x;
        template.position.y = FX32_ONE * sBadgeCoordinates[badgeID].y;
        spriteData->sprites[badgeID] = SpriteList_AddAffine(&template);
        Sprite_SetAnimateFlag(spriteData->sprites[badgeID], FALSE);
        Sprite_SetAnim(spriteData->sprites[badgeID], badgeID);

        if (!badgesObtained[badgeID]) {
            Sprite_SetDrawFlag(spriteData->sprites[badgeID], FALSE);
        }
    }

    u8 index = TRAINER_CASE_TWO_SPARKLES_SPRITES_INDEX;

    for (int badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        template.position.x = FX32_ONE * sSparkleCoordinates[badgeID].x;
        template.position.y = FX32_ONE * sSparkleCoordinates[badgeID].y;
        template.priority = 1;
        spriteData->sprites[index + badgeID] = SpriteList_AddAffine(&template);
        Sprite_SetAnimateFlag(spriteData->sprites[index + badgeID], TRUE);
        Sprite_SetAnim(spriteData->sprites[index + badgeID], BADGE_CASE_ANIM_TWO_SPARKLES);
        Sprite_SetDrawFlag(spriteData->sprites[index + badgeID], FALSE);
    }

    index += TRAINER_CASE_FOUR_SPARKLES_SPRITES_INDEX - TRAINER_CASE_TWO_SPARKLES_SPRITES_INDEX;

    for (int badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        template.position.x = FX32_ONE * sSparkleCoordinates[badgeID].x;
        template.position.y = FX32_ONE * sSparkleCoordinates[badgeID].y;
        template.priority = 1;
        spriteData->sprites[index + badgeID] = SpriteList_AddAffine(&template);
        Sprite_SetAnimateFlag(spriteData->sprites[index + badgeID], TRUE);
        Sprite_SetAnim(spriteData->sprites[index + badgeID], BADGE_CASE_ANIM_FOUR_SPARKLES);
        Sprite_SetDrawFlag(spriteData->sprites[index + badgeID], FALSE);
    }

    index += TRAINER_CASE_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX - TRAINER_CASE_FOUR_SPARKLES_SPRITES_INDEX;

    resourceData.priority = 0;
    template.position.x = FX32_ONE * 96;
    template.position.y = FX32_ONE * 136;
    template.priority = 0;
    spriteData->sprites[index] = SpriteList_AddAffine(&template);
    Sprite_SetAnimateFlag(spriteData->sprites[index], FALSE);
    Sprite_SetAnim(spriteData->sprites[index], BADGE_CASE_ANIM_BUTTON_PRESS_EFFECT);
    Sprite_SetDrawFlag(spriteData->sprites[index], FALSE);
}

void TrainerCase_FreeSprites(TrainerCaseSpriteData *spriteData)
{
    for (u8 badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        Heap_Free(spriteData->badgePaletteBuffers[badgeID]);
    }

    SpriteTransfer_ResetCharTransfer(spriteData->spriteResources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(spriteData->spriteResources[SPRITE_RESOURCE_PLTT]);

    for (u8 resourceType = SPRITE_RESOURCE_CHAR; resourceType < MAX_SPRITE_RESOURCE_GEN4; resourceType++) {
        SpriteResourceCollection_Delete(spriteData->spriteResourceCollection[resourceType]);
    }

    SpriteList_Delete(spriteData->spriteList);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

void TrainerCase_DrawBadgeDirt(TrainerCaseSpriteData *spriteData, u8 badgeID, u8 dirtLevel)
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

static void TrainerCaseApp_InitCharPlttTransferBuffers(void)
{
    CharTransferTemplate template = {
        .maxTasks = 1,
        .sizeMain = 2048,
        .sizeSub = 0,
        .heapID = HEAP_ID_TRAINER_CASE
    };

    CharTransfer_Init(&template);

    PlttTransfer_Init(2, HEAP_ID_TRAINER_CASE);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}
