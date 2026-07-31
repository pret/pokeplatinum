#include "cutscenes/end_credits/scenes/bike_night.h"

#include <nitro.h>
#include <string.h>

#include "cutscenes/end_credits/common.h"
#include "cutscenes/end_credits/defs.h"

#include "brightness_controller.h"
#include "math_util.h"
#include "palette.h"
#include "sprite_system.h"

enum EndCreditsNightSceneState {
    END_CREDITS_NIGHT_SCENE_STATE_INIT = 0,
    END_CREDITS_NIGHT_SCENE_STATE_WAIT,
    END_CREDITS_NIGHT_SCENE_STATE_RUNNING,
    END_CREDITS_NIGHT_SCENE_STATE_END
};

enum EndCreditsNightSceneModelType {
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE = 0,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_LAMPPOST = 3
};

enum EndCreditsNightBackgroundState {
    END_CREDITS_NIGHT_BACKGROUND_STATE_STATIC = 0,
    END_CREDITS_NIGHT_BACKGROUND_STATE_TRANSITION
};

typedef struct {
    s16 startXPos;
    s16 startYPos;
    fx32 xSpeed;
    fx32 ySpeed;
    fx32 bobbingSpeed;
    fx32 amplitude;
    s32 rotateSpeed;
    u16 rotateDuration;
} MagnezoneAnim;

typedef struct {
    s16 startXPos;
    s16 startYPos;
} MeteorAnim;

static void EndCreditsNightScene_SetMagnezoneStartingPositions(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data);
static void EndCreditsNightScene_AnimateMagnezone(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data);
static void EndCreditsNightScene_UpdateMagnezoneAnim(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data, ManagedSprite *managedSprite, int index);
static void EndCreditsNightScene_AnimateBackgroundSprite(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data);
static void EndCreditsNightScene_InitMeteors(EndCreditsApp *endCreditsApp);
static void EndCreditsNightScene_AnimateMeteors(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data);
static void EndCreditsNightScene_SetMeteorStartingPosition(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data, int index);
static void EndCreditsNightScene_UpdateMeteorAnim(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data);

static const MagnezoneAnim sEndCreditsMagnezoneAnims[] = {
    { 0x130, -10, -0xe00, 0x600, 0x8000, 0xC000, 0x96, 0x14 }
};

static const MeteorAnim sEndCreditsMeteorAnims[] = {
    { 0xC8, 0x0 },
    { 0x90, 0x0 },
    { 0xB4, 0x0 }
};

__attribute__((aligned(4))) const u16 sEndCreditsNightTreeTypes[] = {
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_NORMAL_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE,
    END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE
};

BOOL EndCreditsNightScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager)
{
    EndCreditsNightSceneData *data = &sceneManager->nightSceneData;
    s32 modelType;

    switch (sceneManager->state) {
    case END_CREDITS_NIGHT_SCENE_STATE_INIT: {
        int i;

        for (i = 0; i < 16; i++) {
            MI_CpuClear8(&endCreditsApp->bg3DObjects[0][i].renderObj, sizeof(NNSG3dRenderObj));

            if (i % 8 == 0) {
                modelType = END_CREDITS_NIGHT_SCENE_MODEL_TYPE_LAMPPOST;
            } else if (i >= NELEMS(sEndCreditsNightTreeTypes)) {
                modelType = END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE;
            } else {
                modelType = sEndCreditsNightTreeTypes[i];
            }

            NNS_G3dRenderObjInit(&endCreditsApp->bg3DObjects[0][i].renderObj, endCreditsApp->bg3DModels[modelType].model);
        }

        data->modelToRender = 16;
    }
        EndCreditsNightScene_SetMagnezoneStartingPositions(endCreditsApp, data);
        EndCreditsNightScene_InitMeteors(endCreditsApp);
        BrightnessController_StartTransition(24, BRIGHTNESS_NORMAL, BRIGHTNESS_BLACK, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        sceneManager->state++;
        break;
    case END_CREDITS_NIGHT_SCENE_STATE_WAIT:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ, 31, 0);
            sceneManager->state++;
        }
        break;
    case END_CREDITS_NIGHT_SCENE_STATE_RUNNING:
        if (endCreditsApp->framesElapsed >= 7980) {
            BrightnessController_StartTransition(24, BRIGHTNESS_BLACK, BRIGHTNESS_NORMAL, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            sceneManager->state++;
        }
        break;
    case END_CREDITS_NIGHT_SCENE_STATE_END:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            return TRUE;
        }
        break;
    }

    if (data->modelToRender % 8 == 0) {
        modelType = END_CREDITS_NIGHT_SCENE_MODEL_TYPE_LAMPPOST;
    } else if (data->modelToRender >= NELEMS(sEndCreditsNightTreeTypes)) {
        modelType = END_CREDITS_NIGHT_SCENE_MODEL_TYPE_SNOW_TREE;
    } else {
        modelType = sEndCreditsNightTreeTypes[data->modelToRender];
    }

    if (EndCreditsCommon_Scroll3DModels(endCreditsApp, modelType) == TRUE) {
        data->modelToRender++;
    }

    EndCreditsCommon_AnimatePlayerSprite(endCreditsApp, endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_PLAYER]);
    EndCreditsNightScene_AnimateMagnezone(endCreditsApp, data);
    EndCreditsNightScene_AnimateMeteors(endCreditsApp, data);
    EndCreditsNightScene_AnimateBackgroundSprite(endCreditsApp, data);

    return FALSE;
}

static void EndCreditsNightScene_SetMagnezoneStartingPositions(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data)
{
    int i, j = 0;

    GF_ASSERT(NELEMS(sEndCreditsMagnezoneAnims) == 2 - 2 + 1);

    for (i = 2; i <= 2; i++, j++) {
        ManagedSprite_SetAffineOverwriteMode(endCreditsApp->managedSprites[i], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetPositionXYWithSubscreenOffset(endCreditsApp->managedSprites[i], sEndCreditsMagnezoneAnims[j].startXPos, sEndCreditsMagnezoneAnims[j].startYPos, ((192 + 80) << FX32_SHIFT));
        data->magnezoneStates[j].xPos = sEndCreditsMagnezoneAnims[j].startXPos * FX32_ONE;
        data->magnezoneStates[j].yPos = sEndCreditsMagnezoneAnims[j].startYPos * FX32_ONE;
    }
}

static void EndCreditsNightScene_AnimateMagnezone(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data)
{
    int i, j = 0;

    if (endCreditsApp->framesElapsed < 7440) {
        return;
    }

    for (i = 2; i <= 2; i++, j++) {
        EndCreditsNightScene_UpdateMagnezoneAnim(endCreditsApp, data, endCreditsApp->managedSprites[i], j);
    }
}

static void EndCreditsNightScene_UpdateMagnezoneAnim(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data, ManagedSprite *managedSprite, int index)
{
    MagnezoneState *currentState = &data->magnezoneStates[index];
    const MagnezoneAnim *magnezoneAnim = &sEndCreditsMagnezoneAnims[index];
    fx32 yOffset;

    if (currentState->xPos < -64 * FX32_ONE) {
        return;
    }

    currentState->degrees += magnezoneAnim->bobbingSpeed;

    if (currentState->degrees >= (360 << FX32_SHIFT)) {
        currentState->degrees -= 360 << FX32_SHIFT;
    }

    yOffset = FX_Mul(CalcSineDegrees_FX32(currentState->degrees), magnezoneAnim->amplitude);

    currentState->xPos += magnezoneAnim->xSpeed;
    currentState->yPos += magnezoneAnim->ySpeed;

    ManagedSprite_SetPositionFxXYWithSubscreenOffset(managedSprite, currentState->xPos, currentState->yPos + yOffset, ((192 + 80) << FX32_SHIFT));

    if (currentState->rotateDirection == 0) {
        ManagedSprite_OffsetAffineZRotation(managedSprite, magnezoneAnim->rotateSpeed);
    } else {
        ManagedSprite_OffsetAffineZRotation(managedSprite, -magnezoneAnim->rotateSpeed);
    }

    currentState->rotateTimer++;

    if (currentState->rotateTimer >= magnezoneAnim->rotateDuration) {
        currentState->rotateTimer = 0;
        currentState->rotateDirection ^= 1;
    }
}

static void EndCreditsNightScene_InitMeteors(EndCreditsApp *endCreditsApp)
{
    ManagedSprite_SetExplicitOamMode(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], GX_OAM_MODE_XLU);
    ManagedSprite_SetExplicitOamMode(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2], GX_OAM_MODE_XLU);
}

static void EndCreditsNightScene_AnimateMeteors(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data)
{
    if (endCreditsApp->framesElapsed == 7200) {
        EndCreditsNightScene_SetMeteorStartingPosition(endCreditsApp, data, 0);
    }

    if (endCreditsApp->framesElapsed == 7380) {
        EndCreditsNightScene_SetMeteorStartingPosition(endCreditsApp, data, 1);
    }

    if (endCreditsApp->framesElapsed == 7440) {
        EndCreditsNightScene_SetMeteorStartingPosition(endCreditsApp, data, 2);
    }

    EndCreditsNightScene_UpdateMeteorAnim(endCreditsApp, data);
}

static void EndCreditsNightScene_SetMeteorStartingPosition(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data, int index)
{
    GF_ASSERT(data->meteorLoaded == FALSE);
    GF_ASSERT(NELEMS(sEndCreditsMeteorAnims) > index);

    data->meteorLoaded = TRUE;
    data->meteorScreen = 0;
    data->ev1 = 0;
    data->ev2 = 31;

    ManagedSprite_SetPositionXYWithSubscreenOffset(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2], sEndCreditsMeteorAnims[index].startXPos, sEndCreditsMeteorAnims[index].startYPos, ((192 + 80) << FX32_SHIFT));
    ManagedSprite_SetDrawFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2], TRUE);
    ManagedSprite_SetDrawFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], FALSE);

    G2S_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ, data->ev1, data->ev2);
    G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ, data->ev2, data->ev1);
}

static void EndCreditsNightScene_UpdateMeteorAnim(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data)
{
    s16 xPos, yPos;

    if (data->meteorLoaded == FALSE) {
        return;
    }

    if (data->meteorScreen == 0) {
        data->ev1 += 3;
        data->ev2 -= 3;

        if (data->ev1 > 31) {
            data->ev1 = 31;
        }

        if (data->ev2 < 0) {
            data->ev2 = 0;
        }

        G2S_ChangeBlendAlpha(data->ev1, data->ev2);

        ManagedSprite_OffsetPositionFxXY(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2], -0x6000, 0xd000);
        Sprite_GetPositionXYWithSubscreenOffset2(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2], &xPos, &yPos, ((192 + 80) << FX32_SHIFT));

        if (yPos > 192 + 32) {
            ManagedSprite_SetDrawFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_2], FALSE);
            ManagedSprite_SetDrawFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], TRUE);
            ManagedSprite_SetPositionXYWithSubscreenOffset(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], xPos, -32, ((192 + 80) << FX32_SHIFT));
            data->meteorScreen = 1;
        }
    } else {
        data->ev2 += 3;
        data->ev1 -= 3;

        if (data->ev2 > 31) {
            data->ev2 = 31;
        }

        if (data->ev1 < 0) {
            data->ev1 = 0;
        }

        G2_ChangeBlendAlpha(data->ev1, data->ev2);

        ManagedSprite_OffsetPositionFxXY(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], -0x6000, 0xd000);
        Sprite_GetPositionXYWithSubscreenOffset2(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], &xPos, &yPos, ((192 + 80) << FX32_SHIFT));

        if (yPos > 192 + 32) {
            ManagedSprite_SetDrawFlag(endCreditsApp->managedSprites[END_CREDITS_SPRITE_NIGHT_METEOR_1], FALSE);
            data->meteorScreen = 0;
            data->meteorLoaded = FALSE;
        }
    }
}

static void EndCreditsNightScene_AnimateBackgroundSprite(EndCreditsApp *endCreditsApp, EndCreditsNightSceneData *data)
{
    int unused, i;
    int frames, fraction, nextFrame;
    u16 *mainFadedBuffer, *subFadedBuffer;

    switch (data->backgroundState) {
    case END_CREDITS_NIGHT_BACKGROUND_STATE_STATIC:
        if (endCreditsApp->framesElapsed < 7620) {
            return;
        }

        if (data->currentTransitionFrame >= 8) {
            return;
        }

        if (data->frames > 0 * (data->currentTransitionFrame + 1)) {
            data->backgroundState++;
        }
        break;
    case END_CREDITS_NIGHT_BACKGROUND_STATE_TRANSITION:
        frames = data->currentTransitionFrame;
        data->fraction += 0x400;

        if (data->fraction >= (16 << 8)) {
            fraction = 16;
            data->fraction = 0;
            data->currentTransitionFrame++;
            data->backgroundState = END_CREDITS_NIGHT_BACKGROUND_STATE_STATIC;
        } else {
            fraction = data->fraction >> 8;
        }

        nextFrame = frames + 1;

        if (nextFrame >= 8) {
            nextFrame = 8 - 1;
        }

        mainFadedBuffer = PaletteData_GetFadedBuffer(endCreditsApp->paletteData, PLTTBUF_MAIN_BG);
        subFadedBuffer = PaletteData_GetFadedBuffer(endCreditsApp->paletteData, PLTTBUF_SUB_BG);

        for (i = 0; i < 16; i++) {
            BlendPalette(&data->bgPaletteBuffers[frames][i], &mainFadedBuffer[i + 16 * 1], 1, fraction, data->bgPaletteBuffers[nextFrame][i]);
            BlendPalette(&data->bgPaletteBuffers[frames][i], &subFadedBuffer[i + 16 * 1], 1, fraction, data->bgPaletteBuffers[nextFrame][i]);
        }
        break;
    }

    data->frames++;
}
