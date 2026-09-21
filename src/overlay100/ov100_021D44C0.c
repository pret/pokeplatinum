#include "overlay100/ov100_021D44C0.h"

#include <nitro.h>
#include <string.h>

#include "overlay100/struct_ov100_021D49B4.h"
#include "overlay100/struct_ov100_021D54D0.h"

#include "easy3d_object.h"

static const int sPoseAnimFrames[][5] = {
    { 1, 2, 3, 2, 0xFF },
    { 5, 6, 7, 6, 0xFF },
    { 9, 10, 11, 10, 0xFF },
    { 13, 14, 15, 14, 0xFF },
    { 0, 0, 0, 0, 0xFF },
    { 4, 4, 4, 4, 0xFF },
    { 10, 10, 10, 10, 0xFF },
    { 14, 14, 14, 14, 0xFF },
    { 0, 0, 0, 0, 0xFF },
    { 0, 1, 2, 3, 0xFF },
    { 4, 5, 6, 7, 0xFF },
    { 8, 9, 10, 11, 0xFF },
    { 12, 13, 14, 15, 0xFF }
};

void PoseSequence_Start(CutsceneModel *model, PoseStep *step)
{
    model->playing = 1;
    model->poseSteps = step;
    model->poseStepIndex = 0;
    model->poseRepeatsLeft = step[model->poseStepIndex].repeatCount;
    model->poseRepeatCount = step[model->poseStepIndex].repeatCount;
    model->pose = step[model->poseStepIndex].pose;
}

void PoseSequence_UpdateAnimFrame(CutsceneModel *model)
{
    int currentFrameIndex;
    int nextFrameIndex;
    int targetAnimFrame;
    fx32 newFrame;
    fx32 currentFrame = Easy3DAnim_GetFrame(&model->anims[0]);
    fx32 nextFrame;

    currentFrameIndex = currentFrame >> FX32_SHIFT;
    currentFrameIndex %= 4;
    nextFrame = currentFrame + model->animSpeed;
    nextFrameIndex = nextFrame >> FX32_SHIFT;
    nextFrameIndex %= 4;
    targetAnimFrame = sPoseAnimFrames[model->pose - 1][model->poseFrame];

    if (targetAnimFrame == 0xFF) {
        return;
    }

    if (nextFrameIndex != currentFrameIndex) {
        model->poseFrame++;
        newFrame = FX32_CONST(targetAnimFrame * 4);
    } else {
        newFrame = nextFrame;
    }

    Easy3DAnim_SetFrame(&model->anims[0], newFrame);
}

void PoseSequence_UpdateMovement(CutsceneModel *model)
{
    int stepPose;
    PoseStep *step = model->poseSteps;

    if ((model->poseRepeatsLeft == 0xFF) || (model->poseStepIndex == 0xFF)) {
        return;
    }

    stepPose = step[model->poseStepIndex].pose;

    if (stepPose == CUTSCENE_MODEL_POSE_NONE) {
        model->playing = 0;
        model->poseStepIndex = 0xFF;
        model->poseRepeatsLeft = 0xFF;
        model->poseRepeatCount = 0xFF;
    } else {
        if (model->poseFrame >= 4) {
            model->poseRepeatsLeft--;
            model->poseFrame = 0;

            if (model->poseRepeatsLeft == 0) {
                model->poseStepIndex++;
                model->pose = step[model->poseStepIndex].pose;
                model->poseRepeatsLeft = step[model->poseStepIndex].repeatCount;
                model->poseRepeatCount = step[model->poseStepIndex].repeatCount;

                if (model->pose == CUTSCENE_MODEL_POSE_NONE) {
                    model->playing = 0;
                    model->poseStepIndex = 0xFF;
                    model->poseRepeatsLeft = 0xFF;
                    model->poseRepeatCount = 0xFF;
                }
            }
        } else {
            if ((model->poseFrame == 0) && (model->poseRepeatsLeft == model->poseRepeatCount)) {
                return;
            }

            switch (model->pose) {
            case CUTSCENE_MODEL_POSE_WALK_BACKWARD:
            case CUTSCENE_MODEL_POSE_STEP_BACK_2:
            case CUTSCENE_MODEL_POSE_PUSHED_BACK:
                model->object.position.z -= step[model->poseStepIndex].stepDistance;
                break;
            case CUTSCENE_MODEL_POSE_STEP_SIDE_2:
            case CUTSCENE_MODEL_POSE_STEP_SIDE_1:
                model->object.position.x += step[model->poseStepIndex].stepDistance;
                break;
            }
        }
    }
}
