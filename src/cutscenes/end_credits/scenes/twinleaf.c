#include <nitro.h>
#include <string.h>

#include "cutscenes/end_credits/common.h"
#include "cutscenes/end_credits/defs.h"
#include "cutscenes/end_credits/scenes.h"

#include "bg_window.h"
#include "brightness_controller.h"

enum EndCreditsTwinleafSceneState {
    END_CREDITS_TWINLEAF_SCENE_STATE_INIT = 0,
    END_CREDITS_TWINLEAF_SCENE_STATE_SHOW_IMAGE,
    END_CREDITS_TWINLEAF_SCENE_STATE_FADE_OUT,
    END_CREDITS_TWINLEAF_SCENE_STATE_FADE_IN,
    END_CREDITS_TWINLEAF_SCENE_STATE_END
};

static void EndCreditsTwinleafScene_InitBGsTransition(EndCreditsTwinleafSceneData *data, u32 plane1);
static BOOL EndCreditsTwinleafScene_TransitionBGs(EndCreditsTwinleafSceneData *data);

BOOL EndCreditsTwinleafScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager)
{
    EndCreditsTwinleafSceneData *data = &sceneManager->twinleafSceneData;

    switch (sceneManager->state) {
    case END_CREDITS_TWINLEAF_SCENE_STATE_INIT:
        BrightnessController_StartTransition(24, BRIGHTNESS_NORMAL, BRIGHTNESS_BLACK, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        sceneManager->state++;
        break;
    case END_CREDITS_TWINLEAF_SCENE_STATE_SHOW_IMAGE:
        data->framesElapsed++;

        if (data->framesElapsed > ((8280 - 7980 - (4 * 16) * (4 - 1)) / 4)) {
            data->framesElapsed = 0;
            sceneManager->state++;
        }
        break;
    case END_CREDITS_TWINLEAF_SCENE_STATE_FADE_OUT:
        if (data->currentImage >= 4 - 1) {
            BrightnessController_StartTransition(32, BRIGHTNESS_BLACK, BRIGHTNESS_NORMAL, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            sceneManager->state = END_CREDITS_TWINLEAF_SCENE_STATE_END;
        } else {
            if (data->currentImage & 1) {
                EndCreditsCommon_LoadMemoryImage(endCreditsApp, endCreditsApp->currentMemory, BG_LAYER_MAIN_2, TRUE);
                EndCreditsTwinleafScene_InitBGsTransition(data, (GX_BLEND_PLANEMASK_BG3));
            } else {
                EndCreditsCommon_LoadMemoryImage(endCreditsApp, endCreditsApp->currentMemory, BG_LAYER_MAIN_3, TRUE);
                EndCreditsTwinleafScene_InitBGsTransition(data, (GX_BLEND_PLANEMASK_BG2));
            }

            endCreditsApp->currentMemory++;
            data->currentImage++;
            sceneManager->state = END_CREDITS_TWINLEAF_SCENE_STATE_FADE_IN;
        }
        break;
    case END_CREDITS_TWINLEAF_SCENE_STATE_FADE_IN:
        if (EndCreditsTwinleafScene_TransitionBGs(data) == TRUE) {
            sceneManager->state = END_CREDITS_TWINLEAF_SCENE_STATE_SHOW_IMAGE;
        }
        break;
    case END_CREDITS_TWINLEAF_SCENE_STATE_END:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void EndCreditsTwinleafScene_InitBGsTransition(EndCreditsTwinleafSceneData *data, u32 plane1)
{
    data->plane1 = plane1;
    data->ev1 = 16;
    data->ev2 = 0;

    if (plane1 == (GX_BLEND_PLANEMASK_BG2)) {
        G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG2), (GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), data->ev1, data->ev2);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, TRUE);
    } else {
        G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BD), data->ev1, data->ev2);
        Bg_ToggleLayer(BG_LAYER_MAIN_2, TRUE);
    }
}

static BOOL EndCreditsTwinleafScene_TransitionBGs(EndCreditsTwinleafSceneData *data)
{
    data->ev1 -= 1;

    if (data->ev1 < 16) {
        data->ev2 += 1;
    }

    if (data->ev1 < 0) {
        data->ev1 = 0;
    }

    if (data->ev2 > 16) {
        data->ev2 = 16;
    }

    G2_ChangeBlendAlpha(data->ev1, data->ev2);

    if ((data->ev1 == 0) && (data->ev2 == 16)) {
        if (data->plane1 == (GX_BLEND_PLANEMASK_BG2)) {
            Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
            Bg_SetPriority(BG_LAYER_MAIN_2, 3);
            Bg_SetPriority(BG_LAYER_MAIN_3, 2);
        } else {
            Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
            Bg_SetPriority(BG_LAYER_MAIN_2, 2);
            Bg_SetPriority(BG_LAYER_MAIN_3, 3);
        }

        return TRUE;
    }

    return FALSE;
}
