#include "cutscenes/end_credits/scenes/bike_day.h"

#include <nitro.h>
#include <string.h>

#include "cutscenes/end_credits/common.h"
#include "cutscenes/end_credits/defs.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "math_util.h"
#include "palette.h"
#include "sprite_system.h"

enum EndCreditsDaySceneState {
    END_CREDITS_DAY_SCENE_STATE_INIT = 0,
    END_CREDITS_DAY_SCENE_STATE_RUNNING,
    END_CREDITS_DAY_SCENE_STATE_END
};

enum EndCreditsDaySceneWingullPhase {
    END_CREDITS_DAY_SCENE_WINGULL_PHASE_INIT = 0,
    END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_IN,
    END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_AROUND_INIT,
    END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_AROUND,
    END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_OUT_INIT,
    END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_OUT
};

typedef struct {
    s32 animStartFrame;
    fx32 flyInXAmplitude;
    fx32 flyInYAmplitude;
    fx32 startFlyInSpeed;
    fx32 startDegrees;
    fx32 startDecelDegree;
    fx32 endDecelDegree;
    fx32 decelSpeed;
    fx32 minSpeed;
    fx32 xAmplitude;
    fx32 yAmplitude;
    fx32 xSpeed;
    fx32 ySpeed;
    fx32 flyOutXAmplitude;
    fx32 flyOutYAmplitude;
    fx32 flyOutSpeed;
    fx32 startXPos;
    fx32 startYPos;
    fx32 moveUpSpeed;
    s32 rotateSpeed;
    u16 rotateDuration;
    u16 unused_52;
} WingullAnim;

static void EndCreditsDayScene_SetWingullStartingPositions(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data);
static void EndCreditsDayScene_AnimateAllWingull(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data);
static void EndCreditsDayScene_AnimateBackground(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data);
static void EndCreditsDayScene_AnimateBackgroundSun(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data);
static void EndCreditsDayScene_AnimateWingull(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data, ManagedSprite *managedSprite, int index);

static const WingullAnim sEndCreditsWingullAnims[] = {
    {
        90,
        160 * FX32_ONE,
        32 * FX32_ONE,
        0x2700,
        0 * FX32_ONE,
        70 * FX32_ONE,
        90 * FX32_ONE,
        0x200,
        0x1800,
        -24 * FX32_ONE,
        7 * FX32_ONE,
        0x1b00,
        0x7800,
        160 * FX32_ONE,
        60 * FX32_ONE,
        0x3000,
        (128 - 54) * FX32_ONE,
        (96 + 16) * FX32_ONE,
        0x80,
        80,
        30,
    },
    {
        100,
        -160 * FX32_ONE,
        -48 * FX32_ONE,
        0x2400,
        0 * FX32_ONE,
        80 * FX32_ONE,
        90 * FX32_ONE,
        0x40,
        0x1800,
        24 * FX32_ONE,
        6 * FX32_ONE,
        0x1d00,
        0x7000,
        -160 * FX32_ONE,
        -52 * FX32_ONE,
        0x2800,
        (128 + 62) * FX32_ONE,
        (96 + 10) * FX32_ONE,
        0x80,
        70,
        35,
    },
};

BOOL EndCreditsDayScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager)
{
    EndCreditsDaySceneData *data = &sceneManager->daySceneData;

    switch (sceneManager->state) {
    case END_CREDITS_DAY_SCENE_STATE_INIT:
        EndCreditsDayScene_SetWingullStartingPositions(endCreditsApp, data);
        BrightnessController_StartTransition(24, BRIGHTNESS_NORMAL, BRIGHTNESS_BLACK, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        sceneManager->state++;
        break;
    case END_CREDITS_DAY_SCENE_STATE_RUNNING:
        if (endCreditsApp->framesElapsed >= 6000) {
            BrightnessController_StartTransition(24, BRIGHTNESS_BLACK, BRIGHTNESS_NORMAL, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            sceneManager->state++;
        }
        break;
    case END_CREDITS_DAY_SCENE_STATE_END:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            return TRUE;
        }
        break;
    }

    EndCreditsCommon_AnimatePlayerSprite(endCreditsApp, endCreditsApp->managedSprites[END_CREDITS_SPRITE_DAY_PLAYER]);
    EndCreditsDayScene_AnimateAllWingull(endCreditsApp, data);
    EndCreditsCommon_Scroll3DModels(endCreditsApp, -1);
    EndCreditsDayScene_AnimateBackground(endCreditsApp, data);
    EndCreditsDayScene_AnimateBackgroundSun(endCreditsApp, data);

    return FALSE;
}

static void EndCreditsDayScene_SetWingullStartingPositions(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data)
{
    int i, j = 0;

    GF_ASSERT(NELEMS(sEndCreditsWingullAnims) == 3 - 2 + 1);

    for (i = 2; i <= 3; i++, j++) {
        data->wingullStates[j].xPos = sEndCreditsWingullAnims[j].startXPos - sEndCreditsWingullAnims[j].flyInXAmplitude;
        data->wingullStates[j].yPos = sEndCreditsWingullAnims[j].startYPos;
        data->wingullStates[j].degrees = sEndCreditsWingullAnims[j].startDegrees;
        data->wingullStates[j].flyInOutSpeed = sEndCreditsWingullAnims[j].startFlyInSpeed;
        data->wingullStates[j].xOffset = FX_Mul(CalcSineDegrees_FX32(sEndCreditsWingullAnims[j].startDegrees), sEndCreditsWingullAnims[j].flyInXAmplitude);
        data->wingullStates[j].yOffset = FX_Mul(CalcCosineDegrees_FX32(sEndCreditsWingullAnims[j].startDegrees), sEndCreditsWingullAnims[j].flyInYAmplitude);
        data->wingullStates[j].startTimer = sEndCreditsWingullAnims[j].animStartFrame;

        ManagedSprite_SetPositionFxXYWithSubscreenOffset(endCreditsApp->managedSprites[i], data->wingullStates[j].xPos + data->wingullStates[j].xOffset, data->wingullStates[j].yPos + data->wingullStates[j].yOffset, ((192 + 80) << FX32_SHIFT));
        ManagedSprite_SetAffineOverwriteMode(endCreditsApp->managedSprites[i], AFFINE_OVERWRITE_MODE_DOUBLE);
    }
}

static void EndCreditsDayScene_AnimateAllWingull(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data)
{
    int i, j = 0;

    for (i = 2; i <= 3; i++, j++) {
        EndCreditsDayScene_AnimateWingull(endCreditsApp, data, endCreditsApp->managedSprites[i], j);
    }
}

static void EndCreditsDayScene_AnimateWingull(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data, ManagedSprite *managedSprite, int index)
{
    WingullState *currentState = &data->wingullStates[index];
    const WingullAnim *wingullAnim = &sEndCreditsWingullAnims[index];
    fx32 unused1 = 0, unused2 = 0;

    if (currentState->startTimer > 0) {
        currentState->startTimer--;
        return;
    }

    switch (currentState->phase) {
    case END_CREDITS_DAY_SCENE_WINGULL_PHASE_INIT:
        currentState->phase++;
    case END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_IN:
        if (currentState->degrees > wingullAnim->startDecelDegree) {
            currentState->flyInOutSpeed -= wingullAnim->decelSpeed;

            if (currentState->flyInOutSpeed < wingullAnim->minSpeed) {
                currentState->flyInOutSpeed = wingullAnim->minSpeed;
            }
        }

        currentState->degrees += currentState->flyInOutSpeed;

        if (currentState->degrees >= wingullAnim->endDecelDegree) {
            currentState->degrees = wingullAnim->endDecelDegree;
            currentState->phase++;
        }

        currentState->xOffset = FX_Mul(CalcSineDegrees_FX32(currentState->degrees), wingullAnim->flyInXAmplitude);
        currentState->yOffset = FX_Mul(CalcCosineDegrees_FX32(currentState->degrees), wingullAnim->flyInYAmplitude);
        break;
    case END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_AROUND_INIT:
        currentState->xPos += currentState->xOffset;
        currentState->yPos += currentState->yOffset;
        currentState->xOffset = 0;
        currentState->yOffset = 0;
        currentState->xSpeed = wingullAnim->xSpeed;
        currentState->ySpeed = wingullAnim->ySpeed;
        currentState->phase++;
    case END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_AROUND:
        currentState->xDegrees += currentState->xSpeed;
        currentState->yDegrees += currentState->ySpeed;

        if (currentState->xDegrees >= (360 << FX32_SHIFT)) {
            currentState->xDegrees -= 360 << FX32_SHIFT;
        }

        if (currentState->yDegrees >= (360 << FX32_SHIFT)) {
            currentState->yDegrees -= 360 << FX32_SHIFT;
        }

        currentState->xOffset = FX_Mul(CalcSineDegrees_FX32(currentState->xDegrees), wingullAnim->xAmplitude);
        currentState->yOffset = FX_Mul(CalcSineDegrees_FX32(currentState->yDegrees), wingullAnim->yAmplitude);

        if (endCreditsApp->framesElapsed >= 5970) {
            currentState->xSpeed -= wingullAnim->xSpeed / 20;
            currentState->ySpeed -= wingullAnim->ySpeed / 20;

            if (currentState->xSpeed <= wingullAnim->xSpeed / 20) {
                currentState->phase++;
            }
        }
        break;
    case END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_OUT_INIT:
        currentState->xPos = (currentState->xPos + currentState->xOffset) - wingullAnim->flyOutXAmplitude;
        currentState->yPos = currentState->yPos + currentState->yOffset;
        currentState->degrees = 0;
        currentState->flyInOutSpeed = wingullAnim->flyOutSpeed;
        currentState->xOffset = FX_Mul(CalcSineDegrees_FX32(0), wingullAnim->flyOutXAmplitude);
        currentState->yOffset = FX_Mul(CalcCosineDegrees_FX32(0), wingullAnim->flyOutYAmplitude);
        currentState->phase++;
    case END_CREDITS_DAY_SCENE_WINGULL_PHASE_FLY_OUT:
        currentState->degrees += currentState->flyInOutSpeed;
        currentState->xOffset = FX_Mul(CalcCosineDegrees_FX32(currentState->degrees), wingullAnim->flyOutXAmplitude);
        currentState->yOffset = FX_Mul(CalcSineDegrees_FX32(currentState->degrees), wingullAnim->flyOutYAmplitude);

        if (currentState->degrees >= (180 << FX32_SHIFT)) {
            currentState->phase++;
        }
        break;
    default:
        break;
    }

    if (currentState->rotateDirection == 0) {
        ManagedSprite_OffsetAffineZRotation(managedSprite, wingullAnim->rotateSpeed);
    } else {
        ManagedSprite_OffsetAffineZRotation(managedSprite, -wingullAnim->rotateSpeed);
    }

    currentState->rotateTimer++;

    if (currentState->rotateTimer >= wingullAnim->rotateDuration) {
        currentState->rotateTimer = 0;
        currentState->rotateDirection ^= 1;
    }

    currentState->yPos -= wingullAnim->moveUpSpeed;
    ManagedSprite_SetPositionFxXYWithSubscreenOffset(managedSprite, currentState->xPos + currentState->xOffset, currentState->yPos + currentState->yOffset, ((192 + 80) << FX32_SHIFT));
}

static void EndCreditsDayScene_AnimateBackground(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data)
{
    data->bgYPos += 0x60;

    Bg_SetOffset(endCreditsApp->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, data->bgYPos / FX32_ONE);
    Bg_SetOffset(endCreditsApp->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_Y, data->bgYPos / FX32_ONE);
}

static void EndCreditsDayScene_AnimateBackgroundSun(EndCreditsApp *endCreditsApp, EndCreditsDaySceneData *data)
{
    int unused, i;
    int frames, fraction, nextFrame;
    u16 *fadedBuffer;

    frames = data->currentTransitionFrame;
    data->fraction += 0x200;

    if (data->fraction >= (16 << 8)) {
        fraction = 16;
        data->fraction = 0;

        if (data->animDirection == 0) {
            data->currentTransitionFrame++;

            if (data->currentTransitionFrame >= 4) {
                data->currentTransitionFrame = 4 - 2;
                data->animDirection ^= 1;
            }
        } else {
            data->currentTransitionFrame--;

            if (data->currentTransitionFrame < 0) {
                data->currentTransitionFrame = 1;
                data->animDirection ^= 1;
            }
        }
    } else {
        fraction = data->fraction >> 8;
    }

    if (data->animDirection == 0) {
        nextFrame = frames + 1;

        if (nextFrame >= 4) {
            nextFrame = frames - 1;
        }
    } else {
        nextFrame = frames - 1;

        if (nextFrame < 0) {
            nextFrame = 1;
        }
    }

    fadedBuffer = PaletteData_GetFadedBuffer(endCreditsApp->paletteData, PLTTBUF_SUB_BG);

    for (i = 0; i < 16; i++) {
        BlendPalette(&data->bgPaletteBuffers[frames][i], &fadedBuffer[(2 * 16) + i], 1, fraction, data->bgPaletteBuffers[nextFrame][i]);
    }
}
