#include "cutscenes/end_credits/scenes/memories.h"

#include <nitro.h>
#include <string.h>

#include "cutscenes/end_credits/common.h"
#include "cutscenes/end_credits/defs.h"

#include "bg_window.h"
#include "brightness_controller.h"

enum EndCreditsTwinleafSceneState {
    END_CREDITS_MEMORIES_SCENE_STATE_INIT = 0,
    END_CREDITS_MEMORIES_SCENE_STATE_SHOW_IMAGE,
    END_CREDITS_MEMORIES_SCENE_STATE_FADE_OUT,
    END_CREDITS_MEMORIES_SCENE_STATE_COOLDOWN,
    END_CREDITS_MEMORIES_SCENE_STATE_END
};

BOOL EndCreditsMemoriesScene_Run1(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager)
{
    EndCreditsMemoriesSceneData *data = &sceneManager->memoriesSceneData;

    switch (sceneManager->state) {
    case END_CREDITS_MEMORIES_SCENE_STATE_INIT:
        BrightnessController_StartTransition(24, BRIGHTNESS_NORMAL, BRIGHTNESS_BLACK, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        sceneManager->state++;
        break;
    case END_CREDITS_MEMORIES_SCENE_STATE_SHOW_IMAGE:
        if (data->framesElapsed > ((4815 - 1830 - 30 * (7 - 1)) / 7)) {
            BrightnessController_StartTransition(32, BRIGHTNESS_BLACK, BRIGHTNESS_NORMAL, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            data->framesElapsed = 0;
            sceneManager->state++;
        }
        break;
    case END_CREDITS_MEMORIES_SCENE_STATE_FADE_OUT:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            if (endCreditsApp->currentMemory < END_CREDITS_MEMORY_CANALAVE_BARRY) {
                sceneManager->state = END_CREDITS_MEMORIES_SCENE_STATE_COOLDOWN;
            } else {
                sceneManager->state = END_CREDITS_MEMORIES_SCENE_STATE_END;
            }
        }
        break;
    case END_CREDITS_MEMORIES_SCENE_STATE_COOLDOWN:
        sceneManager->memoryCooldown++;

        if (sceneManager->memoryCooldown > 30) {
            sceneManager->memoryCooldown = 0;
            EndCreditsCommon_LoadMemoryImage(endCreditsApp, endCreditsApp->currentMemory, BG_LAYER_MAIN_3, FALSE);
            endCreditsApp->currentMemory++;
            BrightnessController_StartTransition(32, BRIGHTNESS_NORMAL, BRIGHTNESS_BLACK, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            sceneManager->state = END_CREDITS_MEMORIES_SCENE_STATE_SHOW_IMAGE;
        }
        break;
    case END_CREDITS_MEMORIES_SCENE_STATE_END:
        if (endCreditsApp->framesElapsed >= 4815) {
            return TRUE;
        }
        break;
    }

    data->framesElapsed++;
    return FALSE;
}

BOOL EndCreditsMemoriesScene_Run2(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager)
{
    EndCreditsMemoriesSceneData *data = &sceneManager->memoriesSceneData;

    switch (sceneManager->state) {
    case END_CREDITS_MEMORIES_SCENE_STATE_INIT:
        BrightnessController_StartTransition(24, BRIGHTNESS_NORMAL, BRIGHTNESS_BLACK, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        sceneManager->state++;
        break;
    case END_CREDITS_MEMORIES_SCENE_STATE_SHOW_IMAGE:
        if (data->framesElapsed > ((6960 - 6000 - 30 * (10 - 7 - 1)) / (10 - 7))) {
            BrightnessController_StartTransition(32, BRIGHTNESS_BLACK, BRIGHTNESS_NORMAL, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            data->framesElapsed = 0;
            sceneManager->state++;
        }
        break;
    case END_CREDITS_MEMORIES_SCENE_STATE_FADE_OUT:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) {
            if (endCreditsApp->currentMemory < END_CREDITS_MEMORY_COUNT) {
                sceneManager->state = END_CREDITS_MEMORIES_SCENE_STATE_COOLDOWN;
            } else {
                sceneManager->state = END_CREDITS_MEMORIES_SCENE_STATE_END;
            }
        }
        break;
    case END_CREDITS_MEMORIES_SCENE_STATE_COOLDOWN:
        sceneManager->memoryCooldown++;

        if (sceneManager->memoryCooldown > 30) {
            sceneManager->memoryCooldown = 0;
            EndCreditsCommon_LoadMemoryImage(endCreditsApp, endCreditsApp->currentMemory, BG_LAYER_MAIN_3, FALSE);
            endCreditsApp->currentMemory++;
            BrightnessController_StartTransition(32, BRIGHTNESS_NORMAL, BRIGHTNESS_BLACK, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            sceneManager->state = END_CREDITS_MEMORIES_SCENE_STATE_SHOW_IMAGE;
        }
        break;
    case END_CREDITS_MEMORIES_SCENE_STATE_END:
        if (endCreditsApp->framesElapsed >= 4815) {
            return TRUE;
        }
        break;
    }

    data->framesElapsed++;
    return FALSE;
}
