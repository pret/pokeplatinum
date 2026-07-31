#include "cutscenes/end_credits/scenes/bike_morning.h"

#include <nitro.h>
#include <string.h>

#include "cutscenes/end_credits/common.h"
#include "cutscenes/end_credits/defs.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "math_util.h"
#include "sprite_system.h"

enum EndCreditsMorningSceneState {
    END_CREDITS_MORNING_SCENE_STATE_INIT = 0,
    END_CREDITS_MORNING_SCENE_STATE_RUNNING,
    END_CREDITS_MORNING_SCENE_STATE_END
};

typedef struct {
    s32 animStartFrame;
    fx32 startXPos;
    fx32 startYPos;
    fx32 speedX;
    fx32 speedY;
    fx32 bobbingSpeed;
    fx32 yAmplitude;
    f32 scaleSpeed;
    u16 scaleDuration;
    u16 unused_22;
} DrifloonAnim;

static void EndCreditsMorningScene_SetDrifloonStartingPositions(EndCreditsApp *endCreditsApp, EndCreditsMorningSceneData *data);
static void EndCreditsMorningScene_AnimateDrifloon(EndCreditsApp *endCreditsApp, EndCreditsMorningSceneData *data);
static void EndCreditsMorningScene_AnimateBackground(EndCreditsApp *endCreditsApp, EndCreditsMorningSceneData *data);
static void EndCreditsMorningScene_UpdateDrifloonAnim(EndCreditsApp *endCreditsApp, EndCreditsMorningSceneData *data, ManagedSprite *managedSprite, int index);

static const DrifloonAnim sEndCreditsDrifloonAnims[] = {
    {
        900,
        -64 * FX32_ONE,
        80 * FX32_ONE,
        0x600,
        -0x80,
        0xe00,
        0x8000,
        0.0030,
        60,
    },
    {
        1350,
        -64 * FX32_ONE,
        190 * FX32_ONE,
        0x780,
        -0xa0,
        0x1000,
        0xc000,
        -0.0040,
        50,
    },
    {
        1590,
        -64 * FX32_ONE,
        120 * FX32_ONE,
        0x640,
        -0x90,
        0xc00,
        0x8000,
        -0.0045,
        60,
    },
};

BOOL EndCreditsMorningScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager)
{
    EndCreditsMorningSceneData *data = &sceneManager->morningSceneData;

    switch (sceneManager->state) {
    case END_CREDITS_MORNING_SCENE_STATE_INIT:
        EndCreditsMorningScene_SetDrifloonStartingPositions(endCreditsApp, data);
        BrightnessController_StartTransition(24, BRIGHTNESS_NORMAL, BRIGHTNESS_BLACK, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        sceneManager->state++;
        break;
    case END_CREDITS_MORNING_SCENE_STATE_RUNNING:
        if (endCreditsApp->framesElapsed >= 1830) {
            BrightnessController_StartTransition(24, BRIGHTNESS_BLACK, BRIGHTNESS_NORMAL, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            sceneManager->state++;
        }
        break;
    case END_CREDITS_MORNING_SCENE_STATE_END:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            return TRUE;
        }
        break;
    }

    EndCreditsCommon_AnimatePlayerSprite(endCreditsApp, endCreditsApp->managedSprites[END_CREDITS_SPRITE_MORNING_PLAYER]);
    EndCreditsMorningScene_AnimateDrifloon(endCreditsApp, data);
    EndCreditsCommon_Scroll3DModels(endCreditsApp, -1);
    EndCreditsMorningScene_AnimateBackground(endCreditsApp, data);

    return FALSE;
}

static void EndCreditsMorningScene_SetDrifloonStartingPositions(EndCreditsApp *endCreditsApp, EndCreditsMorningSceneData *data)
{
    int i, j = 0;

    GF_ASSERT(NELEMS(sEndCreditsDrifloonAnims) == 4 - 2 + 1);

    for (i = 2; i <= 4; i++, j++) {
        ManagedSprite_SetPositionFxXYWithSubscreenOffset(endCreditsApp->managedSprites[i], sEndCreditsDrifloonAnims[j].startXPos, sEndCreditsDrifloonAnims[j].startYPos, ((192 + 80) << FX32_SHIFT));
        data->drifloonStates[j].xPos = sEndCreditsDrifloonAnims[j].startXPos;
        data->drifloonStates[j].yPos = sEndCreditsDrifloonAnims[j].startYPos;
    }
}

static void EndCreditsMorningScene_AnimateDrifloon(EndCreditsApp *endCreditsApp, EndCreditsMorningSceneData *data)
{
    int i, j = 0;

    for (i = 2; i <= 4; i++, j++) {
        EndCreditsMorningScene_UpdateDrifloonAnim(endCreditsApp, data, endCreditsApp->managedSprites[i], j);
    }
}

static void EndCreditsMorningScene_UpdateDrifloonAnim(EndCreditsApp *endCreditsApp, EndCreditsMorningSceneData *data, ManagedSprite *managedSprite, int index)
{
    DrifloonState *currentState = &data->drifloonStates[index];
    const DrifloonAnim *drifloonAnim = &sEndCreditsDrifloonAnims[index];
    fx32 yOffset;

    if (currentState->frame < drifloonAnim->animStartFrame) {
        currentState->frame++;
        return;
    }

    currentState->degrees += drifloonAnim->bobbingSpeed;

    if (currentState->degrees >= (360 << FX32_SHIFT)) {
        currentState->degrees -= 360 << FX32_SHIFT;
    }

    yOffset = FX_Mul(CalcSineDegrees_FX32(currentState->degrees), drifloonAnim->yAmplitude);

    currentState->xPos += drifloonAnim->speedX;
    currentState->yPos += drifloonAnim->speedY;

    ManagedSprite_SetPositionFxXYWithSubscreenOffset(managedSprite, currentState->xPos, currentState->yPos + yOffset, ((192 + 80) << FX32_SHIFT));

    if (currentState->scaleDirection == 0) {
        ManagedSprite_OffsetAffineScale(managedSprite, drifloonAnim->scaleSpeed, drifloonAnim->scaleSpeed);
    } else {
        ManagedSprite_OffsetAffineScale(managedSprite, -drifloonAnim->scaleSpeed, -drifloonAnim->scaleSpeed);
    }

    currentState->scaleTimer++;

    if (currentState->scaleTimer >= drifloonAnim->scaleDuration) {
        currentState->scaleTimer = 0;
        currentState->scaleDirection ^= 1;
    }
}

static void EndCreditsMorningScene_AnimateBackground(EndCreditsApp *endCreditsApp, EndCreditsMorningSceneData *data)
{
    data->bgXPos += -0x40;

    Bg_SetOffset(endCreditsApp->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, data->bgXPos / FX32_ONE);
    Bg_SetOffset(endCreditsApp->bgConfig, BG_LAYER_SUB_3, BG_OFFSET_UPDATE_SET_X, data->bgXPos / FX32_ONE);
}
