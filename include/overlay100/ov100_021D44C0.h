#ifndef POKEPLATINUM_OV100_021D44C0_H
#define POKEPLATINUM_OV100_021D44C0_H

#include "overlay100/struct_ov100_021D49B4.h"
#include "overlay100/struct_ov100_021D54D0.h"

enum CutsceneModelPose {
    CUTSCENE_MODEL_POSE_NONE = 0,
    CUTSCENE_MODEL_POSE_WALK_BACKWARD = 1,
    CUTSCENE_MODEL_POSE_STEP_BACK_2 = 2,
    CUTSCENE_MODEL_POSE_STEP_SIDE_1 = 3,
    CUTSCENE_MODEL_POSE_STEP_SIDE_2 = 4,
    CUTSCENE_MODEL_POSE_TURN_NORTH = 5,
    CUTSCENE_MODEL_POSE_TURN_SOUTH = 6,
    CUTSCENE_MODEL_POSE_PUSHED_BACK = 9,
};

void PoseSequence_Start(CutsceneModel *model, PoseStep *step);
void PoseSequence_UpdateAnimFrame(CutsceneModel *model);
void PoseSequence_UpdateMovement(CutsceneModel *model);

#endif // POKEPLATINUM_OV100_021D44C0_H
