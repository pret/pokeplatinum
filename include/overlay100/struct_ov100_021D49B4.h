#ifndef POKEPLATINUM_STRUCT_OV100_021D49B4_H
#define POKEPLATINUM_STRUCT_OV100_021D49B4_H

#include "overlay100/struct_ov100_021D54D0.h"

#include "easy3d_object.h"

typedef struct CutsceneModel {
    Easy3DObject object;
    Easy3DModel model;
    Easy3DAnim anims[10];
    fx32 scale;
    fx32 animSpeed;
    int pose;
    int poseFrame;
    BOOL playing;
    BOOL looping;
    BOOL loopSecondaryAnim;
    BOOL playSecondaryAnim;
    BOOL useAllAnimTracks;
    BOOL loaded;
    int poseRepeatsLeft;
    int poseRepeatCount;
    int poseStepIndex;
    PoseStep *poseSteps;
} CutsceneModel;

#endif // POKEPLATINUM_STRUCT_OV100_021D49B4_H
