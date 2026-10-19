#ifndef POKEPLATINUM_SPEAR_PILLAR_POSE_SEQUENCE_H
#define POKEPLATINUM_SPEAR_PILLAR_POSE_SEQUENCE_H

#include "cutscenes/spear_pillar/structs.h"

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

#endif // POKEPLATINUM_SPEAR_PILLAR_POSE_SEQUENCE_H
