#include "cutscenes/end_credits/common.h"

#include <nitro.h>
#include <string.h>

#include "cutscenes/end_credits/defs.h"

#include "bg_window.h"
#include "easy3d_object.h"
#include "genders.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "palette.h"
#include "sprite.h"
#include "sprite_system.h"

typedef struct {
    u16 tiles;
    u16 tileMap;
    u16 palette;
    s16 xOffset;
    s16 yOffset;
    u16 unused_0A[3];
} MemoryImageData;

static const Bg3DModelAnim sEndCredits3DModelAnims[][2] = {
    {
        { 0xE, 0x3AC, 0x65800, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000 },
        { 0xE, 0x618, 0x9B000, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000 },
    },
    {
        { 0xE, 0x1B8, 0x65800, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000 },
        { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    },
    {
        { 0x10, 0x3AC, 0x65800, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000 },
        { 0xE, 0x618, 0x9B000, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000 },
    },
};

static const MemoryImageData sEndCreditsMaleMemories[] = {
    { 0x26, 0x25, 0x30, 0x0, 0x0 },
    { 0x27, 0x25, 0x31, -32, -48 },
    { 0x28, 0x25, 0x32, -16, -30 },
    { 0x29, 0x25, 0x33, -42, -2 },
    { 0x2A, 0x25, 0x34, -8, -20 },
    { 0x2B, 0x25, 0x35, -50, -16 },
    { 0x2C, 0x25, 0x36, -40, -34 },
    { 0x2D, 0x25, 0x37, -16, -1 },
    { 0x2E, 0x25, 0x38, -44, -15 },
    { 0x2F, 0x25, 0x39, -30, -30 }
};

static const MemoryImageData sEndCreditsFemaleMemories[] = {
    { 0x3A, 0x25, 0x44, 0x0, 0x0 },
    { 0x3B, 0x25, 0x45, -32, -48 },
    { 0x3C, 0x25, 0x46, -16, -30 },
    { 0x3D, 0x25, 0x47, -42, -2 },
    { 0x3E, 0x25, 0x48, -8, -20 },
    { 0x3F, 0x25, 0x49, -50, -16 },
    { 0x40, 0x25, 0x4A, -40, -34 },
    { 0x41, 0x25, 0x4B, -16, -1 },
    { 0x42, 0x25, 0x4C, -44, -15 },
    { 0x43, 0x25, 0x4D, -30, -30 }
};

static const MemoryImageData sEndCreditsMaleTwinleaf[] = {
    { 0x57, 0x56, 0x5B, 0x0, 0x0 },
    { 0x58, 0x56, 0x5C, 0x0, 0x0 },
    { 0x59, 0x56, 0x5D, 0x0, 0x0 },
    { 0x5A, 0x56, 0x5E, 0x0, 0x0 }
};

static const MemoryImageData sEndCreditsFemaleTwinleaf[] = {
    { 0x5F, 0x56, 0x63, 0x0, 0x0 },
    { 0x60, 0x56, 0x64, 0x0, 0x0 },
    { 0x61, 0x56, 0x65, 0x0, 0x0 },
    { 0x62, 0x56, 0x66, 0x0, 0x0 }
};

void EndCreditsCommon_Load3DModelStartingPositions(EndCreditsApp *endCreditsApp, int bikeSceneIndex)
{
    int i;

    for (i = 0; i < 2; i++) {
        endCreditsApp->modelManager.bg3DModels[i] = sEndCredits3DModelAnims[bikeSceneIndex][i];
    }
}

void EndCreditsCommon_Set3DModelStartingPositions(EndCreditsApp *endCreditsApp)
{
    int j, i;
    Bg3DModelAnim *modelAnim;

    for (i = 0; i < endCreditsApp->bg3DModelRows; i++) {
        modelAnim = &endCreditsApp->modelManager.bg3DModels[i];
        GF_ASSERT(modelAnim->modelCount <= 16);

        for (j = 0; j < modelAnim->modelCount; j++) {
            Easy3DObject_SetPosition(&endCreditsApp->bg3DObjects[i][j], modelAnim->startXPos - modelAnim->xOffset * j, modelAnim->startYPos - modelAnim->yOffset * j, modelAnim->startZPos - modelAnim->zOffset * j);
            Easy3DObject_SetScale(&endCreditsApp->bg3DObjects[i][j], FX32_ONE, FX32_ONE, FX32_ONE);
            Easy3DObject_SetVisible(&endCreditsApp->bg3DObjects[i][j], TRUE);
        }

        for (; j < 16; j++) {
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
    int i, j;
    Bg3DModelAnim *modelAnim;
    BOOL status = FALSE;

    for (i = 0; i < endCreditsApp->bg3DModelRows; i++) {
        modelAnim = &endCreditsApp->modelManager.bg3DModels[i];
        nextXPos = modelAnim->xOffset * modelAnim->modelCount / modelAnim->speed;
        nextYPos = modelAnim->yOffset * modelAnim->modelCount / modelAnim->speed;
        nextZPos = modelAnim->zOffset * modelAnim->modelCount / modelAnim->speed;

        for (j = 0; j < modelAnim->modelCount; j++) {
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
    void *nclrBuffer;
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

    nclrBuffer = Graphics_GetPlttDataFromOpenNARC(endCreditsApp->narc, memoryImage->palette, &palette, HEAP_ID_END_CREDITS);

    DC_FlushRange(palette->pRawData, palette->szByte);
    GX_BeginLoadBGExtPltt();

    if (bgLayer == 3) {
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
    void *charPtr;
    u32 animID;
    NNSG2dImageProxy *image;

    if (endCreditsApp->eyeCharData == NULL) {
        return;
    }

    if (endCreditsApp->playerAnimManager.animCount == -1) {
        if (endCreditsApp->playerAnimManager.blinkFrames > 0) {
            endCreditsApp->playerAnimManager.blinkFrames--;
        } else {
            charPtr = G2_GetOBJCharPtr();
            image = Sprite_GetImageProxy(managedSprite->sprite);

            if (endCreditsApp->clearGamePlayerInfo->gender == GENDER_MALE) {
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((0x20 * 8) / 2)], (void *)((u32)charPtr + 0x1d * 0x20 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((0x20 * 8) / 2) + 0x20], (void *)((u32)charPtr + 0x1e * 0x20 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((0x20 * 8) / 2) + 0x40], (void *)((u32)charPtr + 0x25 * 0x20 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((0x20 * 8) / 2) + 0x60], (void *)((u32)charPtr + 0x26 * 0x20 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
            } else {
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((0x20 * 8) / 2)], (void *)((u32)charPtr + 0x45 * 0x20 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((0x20 * 8) / 2) + 0x20], (void *)((u32)charPtr + 0x46 * 0x20 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((0x20 * 8) / 2) + 0x40], (void *)((u32)charPtr + 0x4d * 0x20 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&endCreditsApp->eyeCharData[endCreditsApp->playerAnimManager.blinkState * ((0x20 * 8) / 2) + 0x60], (void *)((u32)charPtr + 0x4e * 0x20 + image->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
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
