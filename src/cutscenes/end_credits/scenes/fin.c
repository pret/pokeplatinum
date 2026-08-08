#include <nitro.h>
#include <string.h>

#include "cutscenes/end_credits/defs.h"
#include "cutscenes/end_credits/scenes.h"

#include "screen_fade.h"
#include "system.h"

enum EndCreditsFinSceneState {
    END_CREDITS_FIN_SCENE_STATE_INIT = 0,
    END_CREDITS_FIN_SCENE_STATE_WAIT_FOR_PRESS,
    END_CREDITS_FIN_SCENE_STATE_END
};

BOOL EndCreditsFinScene_Run(EndCreditsApp *endCreditsApp, EndCreditsSceneManager *sceneManager)
{
    EndCreditsFinSceneData *data = &sceneManager->finSceneData;

    switch (sceneManager->state) {
    case END_CREDITS_FIN_SCENE_STATE_INIT:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 30, 1, HEAP_ID_END_CREDITS);
        sceneManager->state++;
        break;
    case END_CREDITS_FIN_SCENE_STATE_WAIT_FOR_PRESS:
        if (IsScreenFadeDone() == TRUE) {
            if ((endCreditsApp->framesElapsed > 10080) || (gSystem.pressedKeys & PAD_BUTTON_A) || (gSystem.pressedKeys & PAD_BUTTON_START)) {
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 45, 1, HEAP_ID_END_CREDITS);
                sceneManager->state++;
            }
        }
        break;
    case END_CREDITS_FIN_SCENE_STATE_END:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
