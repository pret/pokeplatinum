#include "brightness_controller.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/brightness_transition_data.h"

typedef struct {
    Transition_Data data;
    s8 direction;
    s16 brightness_delta;
    s16 step_delta;
    u16 step_remainder;
    u16 accumulator;
    s16 brightness;
    BOOL isActive;
} Transition_Controller;

static void BrightnessController_TransitionSetup(Transition_Controller *controller, const u8 step_count, const s16 target_brightness, const s16 start_brightness, const int plane_mask, const u32 screen_select);

static Transition_Controller controller_a; // Top Screen
static Transition_Controller controller_b; // Bottom Screen

static void BrightnessController_StepTransition(Transition_Controller *controller)
{
    Transition_Data *data;
    BOOL transition_finished;

    transition_finished = 0;
    data = &controller->data;

    if ((controller->brightness + controller->direction * controller->step_delta != data->target_brightness) && (controller->brightness != data->target_brightness)) {
        controller->brightness += controller->direction * controller->step_delta;
        controller->accumulator += controller->step_remainder;

        if (controller->accumulator >= data->step_count) {
            controller->brightness += controller->direction;

            if (controller->brightness != data->target_brightness) {
                controller->accumulator -= data->step_count;
            } else {
                transition_finished = 1;
            }
        }
    } else {
        controller->brightness = data->target_brightness;
        transition_finished = 1;
    }

    if (data->screen_select & SCREEN_A) {
        G2_SetBlendBrightness(data->plane_mask, controller->brightness);
    } else if (data->screen_select & SCREEN_B) {
        G2S_SetBlendBrightness(data->plane_mask, controller->brightness);
    }

    if (transition_finished == 1) {
        controller->isActive = 0;
    }
}

static void BrightnessController_TransitionSetup(Transition_Controller *controller, const u8 step_count, const s16 target_brightness, const s16 start_brightness, const int plane_mask, const u32 screen_select)
{
    Transition_Data *data;

    GF_ASSERT(controller->isActive == 0);
    controller->isActive = 1;

    data = &controller->data;

    data->plane_mask = (u8)plane_mask;
    data->screen_select = (u8)screen_select;
    data->step_count = step_count;
    data->target_brightness = target_brightness;

    controller->brightness = start_brightness;
    controller->brightness_delta = start_brightness - target_brightness;

    if (controller->brightness_delta > 0) {
        controller->direction = -1;
    } else {
        controller->direction = 1;
        controller->brightness_delta *= -1;
    }

    controller->step_delta = controller->brightness_delta / step_count;
    controller->step_remainder = controller->brightness_delta % step_count;
    controller->accumulator = 0;
}

void BrightnessController_StartTransition(const u8 step_count, const s16 traget_brightness, const s16 start_brightness, const int plane_mask, const u32 screen_select)
{
    Transition_Controller *controller;

    if (step_count == 0) {
        return;
    }

    if (screen_select & SCREEN_A) {
        G2_SetBlendBrightness(plane_mask, start_brightness);
        controller = &controller_a;
        BrightnessController_TransitionSetup(controller, step_count, traget_brightness, start_brightness, plane_mask, SCREEN_A);
    }

    if (screen_select & SCREEN_B) {
        G2S_SetBlendBrightness(plane_mask, start_brightness);
        controller = &controller_b;
        BrightnessController_TransitionSetup(controller, step_count, traget_brightness, start_brightness, plane_mask, SCREEN_B);
    }
}

void BrightnessController_SetScreenBrightness(const s16 brightness, const int plane_mask, const u32 screen_select)
{
    if (screen_select & SCREEN_A) {
        G2_SetBlendBrightness(plane_mask, brightness);
    }

    if (screen_select & SCREEN_B) {
        G2S_SetBlendBrightness(plane_mask, brightness);
    }

    BrightnessController_ResetScreenController(screen_select);
}

void BrightnessController_ResetAllControllers(void)
{
    MI_CpuClear8(&controller_a, sizeof(Transition_Controller));
    MI_CpuClear8(&controller_b, sizeof(Transition_Controller));

    controller_a.isActive = 0;
    controller_b.isActive = 0;
}

void BrightnessController_ResetScreenController(const u32 screen_select)
{
    if (screen_select & SCREEN_A) {
        MI_CpuClear8(&controller_a, sizeof(Transition_Controller));
        controller_a.isActive = 0;
    }

    if (screen_select & SCREEN_B) {
        MI_CpuClear8(&controller_b, sizeof(Transition_Controller));
        controller_b.isActive = 0;
    }
}

void BrightnessController_Update(void)
{
    if (controller_a.isActive) {
        BrightnessController_StepTransition(&controller_a);
    }

    if (controller_b.isActive) {
        BrightnessController_StepTransition(&controller_b);
    }
}

BOOL BrightnessController_IsTransitionComplete(u32 screen_select)
{
    if (screen_select == (SCREEN_A | SCREEN_B)) {
        if ((controller_a.isActive == 0) && (controller_b.isActive == 0)) {
            return 1;
        }
    } else if (screen_select == SCREEN_A) {
        if (controller_a.isActive == 0) {
            return 1;
        }
    } else if (screen_select == SCREEN_B) {
        if (controller_b.isActive == 0) {
            return 1;
        }
    }

    return 0;
}
