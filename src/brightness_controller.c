#include "brightness_controller.h"

#include <nitro.h>
#include <string.h>

#include "include/constants/screen.h"

#define IS_SCREEN_SELECTED(screenMask, screenConst) (screenMask & screenConst)

typedef struct {
    int planeMask;
    u32 screenSelect;
    u16 stepCount;
    s16 targetBrightness;
    u8 padding[4];
} TransitionData;

typedef struct {
    TransitionData data;
    s8 direction;
    s16 brightnessDelta;
    s16 stepDelta;
    u16 stepRemainder;
    u16 accumulator;
    s16 brightness;
    BOOL isActive;
} TransitionController;

static void BrightnessController_TransitionSetup(TransitionController *controller, const u8 stepCount, const s16 targetBrightness, const s16 startBrightness, const int planeMask, const u32 screenSelect);

static TransitionController controllerMain; // Top Screen
static TransitionController controllerSub; // Bottom Screen

static void BrightnessController_StepTransition(TransitionController *controller)
{
    BOOL transitionFinished = 0;
    TransitionData *data = &controller->data;

    if ((controller->brightness + controller->direction * controller->stepDelta != data->targetBrightness) && (controller->brightness != data->targetBrightness)) {
        controller->brightness += controller->direction * controller->stepDelta;
        controller->accumulator += controller->stepRemainder;

        if (controller->accumulator >= data->stepCount) {
            controller->brightness += controller->direction;

            if (controller->brightness != data->targetBrightness) {
                controller->accumulator -= data->stepCount;
            } else {
                transitionFinished = 1;
            }
        }
    } else {
        controller->brightness = data->targetBrightness;
        transitionFinished = 1;
    }

    if (IS_SCREEN_SELECTED(data->screenSelect, BRIGHTNESS_MAIN_SCREEN)) {
        G2_SetBlendBrightness(data->planeMask, controller->brightness);
    } else if (IS_SCREEN_SELECTED(data->screenSelect, BRIGHTNESS_SUB_SCREEN)) {
        G2S_SetBlendBrightness(data->planeMask, controller->brightness);
    }

    if (transitionFinished == 1) {
        controller->isActive = 0;
    }
}

static void BrightnessController_TransitionSetup(TransitionController *controller, const u8 stepCount, const s16 targetBrightness, const s16 startBrightness, const int planeMask, const u32 screenSelect)
{
    GF_ASSERT(controller->isActive == 0);
    controller->isActive = 1;

    TransitionData *data = &controller->data;

    data->planeMask = (u8)planeMask;
    data->screenSelect = (u8)screenSelect;
    data->stepCount = stepCount;
    data->targetBrightness = targetBrightness;

    controller->brightness = startBrightness;
    controller->brightnessDelta = startBrightness - targetBrightness;

    if (controller->brightnessDelta > 0) {
        controller->direction = -1;
    } else {
        controller->direction = 1;
        controller->brightnessDelta *= -1;
    }

    controller->stepDelta = controller->brightnessDelta / stepCount;
    controller->stepRemainder = controller->brightnessDelta % stepCount;
    controller->accumulator = 0;
}

void BrightnessController_StartTransition(const u8 stepCount, const s16 tragetBrightness, const s16 startBrightness, const int planeMask, const u32 screenSelect)
{
    if (stepCount == 0) {
        return;
    }

    if (IS_SCREEN_SELECTED(screenSelect, BRIGHTNESS_MAIN_SCREEN)) {
        G2_SetBlendBrightness(planeMask, startBrightness);
        TransitionController *controller = &controllerMain;
        BrightnessController_TransitionSetup(controller, stepCount, tragetBrightness, startBrightness, planeMask, BRIGHTNESS_MAIN_SCREEN);
    }

    if (IS_SCREEN_SELECTED(screenSelect, BRIGHTNESS_SUB_SCREEN)) {
        G2S_SetBlendBrightness(planeMask, startBrightness);
        TransitionController *controller = &controllerSub;
        BrightnessController_TransitionSetup(controller, stepCount, tragetBrightness, startBrightness, planeMask, BRIGHTNESS_SUB_SCREEN);
    }
}

void BrightnessController_SetScreenBrightness(const s16 brightness, const int planeMask, const u32 screenSelect)
{
    if (IS_SCREEN_SELECTED(screenSelect, BRIGHTNESS_MAIN_SCREEN)) {
        G2_SetBlendBrightness(planeMask, brightness);
    }

    if (IS_SCREEN_SELECTED(screenSelect, BRIGHTNESS_SUB_SCREEN)) {
        G2S_SetBlendBrightness(planeMask, brightness);
    }

    BrightnessController_ResetScreenController(screenSelect);
}

void BrightnessController_ResetAllControllers(void)
{
    MI_CpuClear8(&controllerMain, sizeof(TransitionController));
    MI_CpuClear8(&controllerSub, sizeof(TransitionController));

    controllerMain.isActive = 0;
    controllerSub.isActive = 0;
}

void BrightnessController_ResetScreenController(const u32 screenSelect)
{
    if (IS_SCREEN_SELECTED(screenSelect, BRIGHTNESS_MAIN_SCREEN)) {
        MI_CpuClear8(&controllerMain, sizeof(TransitionController));
        controllerMain.isActive = 0;
    }

    if (IS_SCREEN_SELECTED(screenSelect, BRIGHTNESS_SUB_SCREEN)) {
        MI_CpuClear8(&controllerSub, sizeof(TransitionController));
        controllerSub.isActive = 0;
    }
}

void BrightnessController_Update(void)
{
    if (controllerMain.isActive) {
        BrightnessController_StepTransition(&controllerMain);
    }

    if (controllerSub.isActive) {
        BrightnessController_StepTransition(&controllerSub);
    }
}

BOOL BrightnessController_IsTransitionComplete(u32 screenSelect)
{
    if (screenSelect == BRIGHTNESS_BOTH_SCREENS) {
        if ((controllerMain.isActive == 0) && (controllerSub.isActive == 0)) {
            return 1;
        }
    } else if (screenSelect == BRIGHTNESS_MAIN_SCREEN) {
        if (controllerMain.isActive == 0) {
            return 1;
        }
    } else if (screenSelect == BRIGHTNESS_SUB_SCREEN) {
        if (controllerSub.isActive == 0) {
            return 1;
        }
    }

    return 0;
}
