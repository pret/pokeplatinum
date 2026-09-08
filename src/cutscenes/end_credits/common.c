#include "cutscenes/end_credits/common.h"

#include <nitro.h>
#include <string.h>

#include "cutscenes/end_credits/defs.h"
#include "pch/global_pch.h"

#include "bg_window.h"
#include "easy3d_object.h"
#include "ending.naix"
#include "genders.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "palette.h"
#include "sprite.h"
#include "sprite_system.h"

typedef struct MemoryImageData {
    u16 tiles;
    u16 tileMap;
    u16 palette;
    s16 xOffset;
    s16 yOffset;
    u16 unused_0A[3];
} MemoryImageData;

static const Bg3DModelAnim sEndCredits3DModelAnims[][2] = {
    {
        { .modelCount = 14, .speed = 940, .startXPos = 415744, .xOffset = 116736, .startYPos = -217088, .yOffset = 178176, .startZPos = 28672, .zOffset = 290816 },
        { .modelCount = 14, .speed = 1560, .startXPos = 634880, .xOffset = 116736, .startYPos = -217088, .yOffset = 178176, .startZPos = 28672, .zOffset = 290816 },
    },
    {
        { .modelCount = 14, .speed = 440, .startXPos = 415744, .xOffset = 116736, .startYPos = -217088, .yOffset = 178176, .startZPos = 28672, .zOffset = 290816 },
        { .modelCount = 0, .speed = 0, .startXPos = 0, .xOffset = 0, .startYPos = 0, .yOffset = 0, .startZPos = 0, .zOffset = 0 },
    },
    {
        { .modelCount = 16, .speed = 940, .startXPos = 415744, .xOffset = 116736, .startYPos = -217088, .yOffset = 178176, .startZPos = 28672, .zOffset = 290816 },
        { .modelCount = 14, .speed = 1560, .startXPos = 634880, .xOffset = 116736, .startYPos = -217088, .yOffset = 178176, .startZPos = 28672, .zOffset = 290816 },
    },
};

static const MemoryImageData sEndCreditsMaleMemories[] = {
    { .tiles = memory_lucas_route_201_starter_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_route_201_starter_NCLR, .xOffset = 0, .yOffset = 0 },
    { .tiles = memory_lucas_rowans_lab_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_rowans_lab_NCLR, .xOffset = -32, .yOffset = -48 },
    { .tiles = memory_lucas_pokemon_center_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_pokemon_center_NCLR, .xOffset = -16, .yOffset = -30 },
    { .tiles = memory_lucas_valley_windworks_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_valley_windworks_NCLR, .xOffset = -42, .yOffset = -2 },
    { .tiles = memory_lucas_route_210_psyduck_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_route_210_psyduck_NCLR, .xOffset = -8, .yOffset = -20 },
    { .tiles = memory_lucas_eterna_forest_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_eterna_forest_NCLR, .xOffset = -50, .yOffset = -16 },
    { .tiles = memory_lucas_pastoria_great_marsh_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_pastoria_great_marsh_NCLR, .xOffset = -40, .yOffset = -34 },
    { .tiles = memory_lucas_canalave_barry_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_canalave_barry_NCLR, .xOffset = -16, .yOffset = -1 },
    { .tiles = memory_lucas_lake_acuity_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_lake_acuity_NCLR, .xOffset = -44, .yOffset = -15 },
    { .tiles = memory_lucas_spear_pillar_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_lucas_spear_pillar_NCLR, .xOffset = -30, .yOffset = -30 }
};

static const MemoryImageData sEndCreditsFemaleMemories[] = {
    { .tiles = memory_dawn_route_201_starter_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_route_201_starter_NCLR, .xOffset = 0, .yOffset = 0 },
    { .tiles = memory_dawn_jubilife_looker_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_jubilife_looker_NCLR, .xOffset = -32, .yOffset = -48 },
    { .tiles = memory_dawn_pokemon_mart_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_pokemon_mart_NCLR, .xOffset = -16, .yOffset = -30 },
    { .tiles = memory_dawn_eterna_cyrus_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_eterna_cyrus_NCLR, .xOffset = -42, .yOffset = -2 },
    { .tiles = memory_dawn_hearthome_contest_hall_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_hearthome_contest_hall_NCLR, .xOffset = -8, .yOffset = -20 },
    { .tiles = memory_dawn_solaceon_town_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_solaceon_town_NCLR, .xOffset = -50, .yOffset = -16 },
    { .tiles = memory_dawn_route_216_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_route_216_NCLR, .xOffset = -40, .yOffset = -34 },
    { .tiles = memory_dawn_lake_valor_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_lake_valor_NCLR, .xOffset = -16, .yOffset = -1 },
    { .tiles = memory_dawn_galactic_hq_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_galactic_hq_NCLR, .xOffset = -44, .yOffset = -15 },
    { .tiles = memory_dawn_spear_pillar_NCGR, .tileMap = memory_shared_NSCR, .palette = memory_dawn_spear_pillar_NCLR, .xOffset = -30, .yOffset = -30 }
};

static const MemoryImageData sEndCreditsMaleTwinleaf[] = {
    { .tiles = twinleaf_lucas_1_NCGR, .tileMap = twinleaf_shared_NSCR, .palette = twinleaf_lucas_1_NCLR, .xOffset = 0, .yOffset = 0 },
    { .tiles = twinleaf_lucas_2_NCGR, .tileMap = twinleaf_shared_NSCR, .palette = twinleaf_lucas_2_NCLR, .xOffset = 0, .yOffset = 0 },
    { .tiles = twinleaf_lucas_3_NCGR, .tileMap = twinleaf_shared_NSCR, .palette = twinleaf_lucas_3_NCLR, .xOffset = 0, .yOffset = 0 },
    { .tiles = twinleaf_lucas_4_NCGR, .tileMap = twinleaf_shared_NSCR, .palette = twinleaf_lucas_4_NCLR, .xOffset = 0, .yOffset = 0 }
};

static const MemoryImageData sEndCreditsFemaleTwinleaf[] = {
    { .tiles = twinleaf_dawn_1_NCGR, .tileMap = twinleaf_shared_NSCR, .palette = twinleaf_dawn_1_NCLR, .xOffset = 0, .yOffset = 0 },
    { .tiles = twinleaf_dawn_2_NCGR, .tileMap = twinleaf_shared_NSCR, .palette = twinleaf_dawn_2_NCLR, .xOffset = 0, .yOffset = 0 },
    { .tiles = twinleaf_dawn_3_NCGR, .tileMap = twinleaf_shared_NSCR, .palette = twinleaf_dawn_3_NCLR, .xOffset = 0, .yOffset = 0 },
    { .tiles = twinleaf_dawn_4_NCGR, .tileMap = twinleaf_shared_NSCR, .palette = twinleaf_dawn_4_NCLR, .xOffset = 0, .yOffset = 0 }
};

void EndCreditsCommon_Load3DModelStartingPositions(EndCreditsApp *endCreditsApp, int bikeSceneIndex)
{
    for (int i = 0; i < SNELEMS(endCreditsApp->modelManager.bg3DModels); i++) {
        endCreditsApp->modelManager.bg3DModels[i] = sEndCredits3DModelAnims[bikeSceneIndex][i];
    }
}

void EndCreditsCommon_Set3DModelStartingPositions(EndCreditsApp *endCreditsApp)
{
    int j;

    for (int i = 0; i < endCreditsApp->bg3DModelRows; i++) {
        Bg3DModelAnim *modelAnim = &endCreditsApp->modelManager.bg3DModels[i];
        GF_ASSERT(modelAnim->modelCount <= 16);

        for (j = 0; j < modelAnim->modelCount; j++) {
            Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[i][j], modelAnim->startXPos - modelAnim->xOffset * j, modelAnim->startYPos - modelAnim->yOffset * j, modelAnim->startZPos - modelAnim->zOffset * j);
            Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[i][j], FX32_ONE, FX32_ONE, FX32_ONE);
            Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[i][j], TRUE);
        }

        for (; j < SNELEMS(endCreditsApp->bg3DObjects[i]); j++) {
            Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[i][j], 0, (-64 * FX32_ONE), (-50 * FX32_ONE));
            Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[i][j], FX32_ONE, FX32_ONE, FX32_ONE);
            Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[i][j], FALSE);
        }
    }
}

BOOL EndCreditsCommon_Scroll3DModels(EndCreditsApp *endCreditsApp, s32 nightModelType)
{
    fx32 nextXPos, nextYPos, nextZPos;
    fx32 currentXPos, currentYPos, currentZPos;
    BOOL status = FALSE;

    for (int i = 0; i < endCreditsApp->bg3DModelRows; i++) {
        Bg3DModelAnim *modelAnim = &endCreditsApp->modelManager.bg3DModels[i];
        nextXPos = modelAnim->xOffset * modelAnim->modelCount / modelAnim->speed;
        nextYPos = modelAnim->yOffset * modelAnim->modelCount / modelAnim->speed;
        nextZPos = modelAnim->zOffset * modelAnim->modelCount / modelAnim->speed;

        for (int j = 0; j < modelAnim->modelCount; j++) {
            Easy3DObject_GetPosition(&endCreditsApp->bg3DObjects[i][j], &currentXPos, &currentYPos, &currentZPos);

            if (currentXPos + nextXPos >= modelAnim->startXPos) {
                Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[i][j], currentXPos + nextXPos - modelAnim->xOffset * modelAnim->modelCount, currentYPos + nextYPos - modelAnim->yOffset * modelAnim->modelCount, currentZPos + nextZPos - modelAnim->zOffset * modelAnim->modelCount);

                if ((nightModelType != -1) && (i == 0)) {
                    MI_CpuClear8(&endCreditsApp->bg3DObjects[i][j].renderObj, sizeof(NNSG3dRenderObj));
                    NNS_G3dRenderObjInit(
                        &endCreditsApp->bg3DObjects[i][j].renderObj, endCreditsApp->bg3DModels[nightModelType].model);
                }

                status = TRUE;
            } else {
                Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[i][j], currentXPos + nextXPos, currentYPos + nextYPos, currentZPos + nextZPos);
            }

            Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[i][j], TRUE);
        }
    }

    return status;
}

void EndCreditsCommon_LoadMemoryImage(EndCreditsApp *endCreditsApp, int index, int bgLayer, int twinleaf)
{
    BgConfig *bgConfig = endCreditsApp->bgConfig;
    NNSG2dPaletteData *palette;
    const MemoryImageData *memoryImage;

    GF_ASSERT(NELEMS(sEndCreditsMaleMemories) == NELEMS(sEndCreditsFemaleMemories));
    GF_ASSERT(NELEMS(sEndCreditsMaleTwinleaf) == NELEMS(sEndCreditsFemaleTwinleaf));

    switch (twinleaf) {
    case FALSE:
        GF_ASSERT(NELEMS(sEndCreditsMaleMemories) > index);

        if (endCreditsApp->clearGamePlayerInfo->gender == GENDER_MALE) {
            memoryImage = &sEndCreditsMaleMemories[index];
        } else {
            memoryImage = &sEndCreditsFemaleMemories[index];
        }
        break;
    case TRUE:
        GF_ASSERT(NELEMS(sEndCreditsFemaleMemories) > index);

        if (endCreditsApp->clearGamePlayerInfo->gender == GENDER_MALE) {
            memoryImage = &sEndCreditsMaleTwinleaf[index];
        } else {
            memoryImage = &sEndCreditsFemaleTwinleaf[index];
        }
        break;
    }

    void *nclrBuffer = Graphics_GetPlttDataFromOpenNARC(endCreditsApp->narc, memoryImage->palette, &palette, HEAP_ID_END_CREDITS);

    DC_FlushRange(palette->pRawData, palette->szByte);
    GX_BeginLoadBGExtPltt();

    if (bgLayer == BG_LAYER_MAIN_3) {
        GX_LoadBGExtPltt(palette->pRawData, 0x6000, 0x2000);
    } else {
        GX_LoadBGExtPltt(palette->pRawData, 0x4000, 0x2000);
    }

    GX_EndLoadBGExtPltt();

    Heap_Free(nclrBuffer);
    PaletteData_FillBufferRange(endCreditsApp->paletteData, PLTTBUF_MAIN_BG, PLTTSEL_BOTH, 0x0, 0, 1);
    PaletteData_FillBufferRange(endCreditsApp->paletteData, PLTTBUF_SUB_BG, PLTTSEL_BOTH, 0x0, 0, 1);
    Graphics_LoadTilesToBgLayerFromOpenNARC(endCreditsApp->narc, memoryImage->tiles, endCreditsApp->bgConfig, bgLayer, 0, 0, 0, HEAP_ID_END_CREDITS);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(endCreditsApp->narc, memoryImage->tileMap, endCreditsApp->bgConfig, bgLayer, 0, 0, 0, HEAP_ID_END_CREDITS);
    Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_X, memoryImage->xOffset);
    Bg_SetOffset(bgConfig, bgLayer, BG_OFFSET_UPDATE_SET_Y, memoryImage->yOffset);
}

void EndCreditsCommon_AnimatePlayerSprite(EndCreditsApp *endCreditsApp, ManagedSprite *managedSprite)
{
    u32 animID;

    if (endCreditsApp->eyeCharData == NULL) {
        return;
    }

    if (endCreditsApp->playerAnimManager.animCount == -1) {
        if (endCreditsApp->playerAnimManager.blinkFrames > 0) {
            endCreditsApp->playerAnimManager.blinkFrames--;
        } else {
            void *charPtr = G2_GetOBJCharPtr();
            NNSG2dImageProxy *image = Sprite_GetImageProxy(managedSprite->sprite);

            if (endCreditsApp->clearGamePlayerInfo->gender == GENDER_MALE) {
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((32 * 8) / 2)], (void *)((u32)charPtr + 0x1d * 32 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 32);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((32 * 8) / 2) + 32], (void *)((u32)charPtr + 0x1e * 32 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 32);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((32 * 8) / 2) + 64], (void *)((u32)charPtr + 0x25 * 32 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 32);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((32 * 8) / 2) + 96], (void *)((u32)charPtr + 0x26 * 32 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 32);
            } else {
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((32 * 8) / 2)], (void *)((u32)charPtr + 0x45 * 32 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 32);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((32 * 8) / 2) + 32], (void *)((u32)charPtr + 0x46 * 32 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 32);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((32 * 8) / 2) + 64], (void *)((u32)charPtr + 0x4d * 32 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 32);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((32 * 8) / 2) + 96], (void *)((u32)charPtr + 0x4e * 32 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 32);
            }

            if (endCreditsApp->playerAnimManager.blinkState == 0) {
                if (endCreditsApp->playerAnimManager.blinkCount % 3 == 0) {
                    if (LCRNG_Next() & 1) {
                        endCreditsApp->playerAnimManager.blinkFrames = LCRNG_Next() % 10;
                        endCreditsApp->playerAnimManager.blinkCount++;
                    } else {
                        endCreditsApp->playerAnimManager.blinkFrames = 40;
                    }
                } else {
                    endCreditsApp->playerAnimManager.blinkFrames = 40;
                    endCreditsApp->playerAnimManager.blinkCount++;
                }
            } else {
                endCreditsApp->playerAnimManager.blinkFrames = 1;
            }

            endCreditsApp->playerAnimManager.blinkState ^= 1;
        }
    }

    if (ManagedSprite_IsAnimated(managedSprite) == FALSE) {
        if (endCreditsApp->playerAnimManager.animCount != -1) {
            endCreditsApp->playerAnimManager.animCount++;

            if ((endCreditsApp->playerAnimManager.animCount > 16) && (LCRNG_Next() % 5 == 0)) {
                animID = 1;
                endCreditsApp->playerAnimManager.animCount = -1;
            } else {
                animID = 0;
            }

            ManagedSprite_SetAnim(managedSprite, animID);
        } else {
            endCreditsApp->playerAnimManager.animCount = 0;
            ManagedSprite_SetAnim(managedSprite, 0);
        }
    }
}
