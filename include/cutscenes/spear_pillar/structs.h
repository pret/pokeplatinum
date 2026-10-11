#ifndef POKEPLATINUM_SPEAR_PILLAR_STRUCTS_H
#define POKEPLATINUM_SPEAR_PILLAR_STRUCTS_H

#include <nitro/fx/fx.h>
#include <nitro/gx.h>
#include <nnsys.h>

#include "struct_defs/struct_020985E4.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d_object.h"
#include "g3d_pipeline.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "screen_scroll_manager.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct BlendColor {
    u8 r;
    u8 g;
    u8 b;
    s8 brightness;
} BlendColor;

typedef struct PoseStep {
    int pose;
    int repeatCount;
    fx32 stepDistance;
} PoseStep;

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

typedef struct CameraPan {
    Camera *camera;
    VecFx32 *target;
    int durationFrames;
    s32 angleDeltaX;
    s32 angleDeltaY;
    s32 angleDeltaZ;
    fx32 positionDeltaX;
    fx32 positionDeltaY;
    fx32 positionDeltaZ;
    s32 angleStep[5]; // [0] is the frames-remaining countdown, [1..3] are the per-frame angle step for x/y/z
    fx32 positionStep[5]; // [1..3] are the per-frame position step for x/y/z
    CameraAngle cameraAngle;
} CameraPan;

typedef struct CameraShakeTask {
    int intensity;
    int step;
    int direction;
    int unused_0C;
    CameraPan *cameraPan;
} CameraShakeTask;

typedef struct SummonBubbleTask {
    int step;
    int scaleIndex;
    int speciesID;
    s16 pan;
    CutsceneModel *summonBubble;
    CutsceneModel *shadow;
} SummonBubbleTask;

typedef struct ScreenCapture ScreenCapture;

typedef struct ScreenCaptureTemplate {
    GXDispMode displayMode;
    GXBGMode bgMode;
    GXBG0As bg0As;
    GXCaptureSize captureSize;
    GXCaptureMode captureMode;
    GXCaptureSrcA captureSrcA;
    GXCaptureSrcB captureSrcB;
    GXCaptureDest captureDest;
    int captureEva;
    int captureEvb;
    int heapID;
} ScreenCaptureTemplate;

typedef struct CutsceneGraphics {
    NARC *narc;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    BgConfig *bgConfig;
    PaletteData *paletteData;
    G3DPipelineBuffers *g3dPipeline;
    Camera *camera;
    NNSFndAllocator allocator;
    MessageLoader *messageLoader;
    Window messageWindow;
    int messagePrinter;
    VecFx32 cameraTarget;
    BlendColor tint;
    ScreenCapture *screenCapture;
    CameraPan cameraPan;
    CameraShakeTask cameraShake;
    u8 flashState;
    u8 flashIntensity;
    u8 flashTimer;
} CutsceneGraphics;

typedef struct ScreenScrollTask {
    ScreenScrollManager *screenScrollMgr;
    SysTask *task;
    u32 swapCounter;
} ScreenScrollTask;

typedef struct LightBall {
    ManagedSprite *sprite;
    ManagedSprite *targetSprite;
    int index;
    int state;
    s16 unused_10;
    s16 unused_12;
    s16 depth;
    s16 unused_16;
    s16 unused_18;
    int orbitAngle;
    int driftAngle;
    int jitterIntensity;
    int stateParams[4]; // 0/1 = LightBall_Jitter's radius factors, 2 = LightBall_Wander's target point index, 3 = unused
    int unused_38;
    BOOL followTarget;
    SysTask *task;
} LightBall;

typedef struct LakeGuardianLights {
    ScreenScrollTask scroll;
    LightBall guardianLights[3];
    LightBall orbitLights[3];
} LakeGuardianLights;

typedef struct LakeGuardianModels {
    CutsceneModel guardians[3];
    CutsceneModel backlight;
} LakeGuardianModels;

typedef struct SpearPillarCutsceneData {
    BOOL unused_00;
    int stageIndex;
    void *stageContext;
    CutsceneGraphics scene;
    SpearPillarCutsceneArgs *args;
} SpearPillarCutsceneData;

typedef struct LakeGuardiansArrivalContext {
    int state;
    int timer;
    int guardianIndex;
    LakeGuardianLights lights;
    LakeGuardianModels models;
    CutsceneGraphics *graphics;
    SpearPillarCutsceneArgs *args;
} LakeGuardiansArrivalContext;

typedef struct CastModels {
    int unused_00;
    CutsceneModel unk_04; // static background prop, unidentified; present and untouched in both stages
    CutsceneModel distortionRipple;
    CutsceneModel shockwave;
    CutsceneModel dropletSplash;
    CutsceneModel summonBubble[2];
    CutsceneModel unk_934[5]; // Dialga/Palkia stage: [0]/[1] are the twin whirlpools; Giratina stage: [0..4] are its 5-stage rise/transform sequence
    CutsceneModel unk_10DC[2]; // Dialga/Palkia stage: the falling summon balls; Giratina stage: the shadow pool's growth + eyes-appearing effect
    CutsceneModel trainers[2]; // 0 = player, 1 = Cyrus
    CutsceneModel shadow[4];
} CastModels;

typedef struct GiratinaInterventionContext {
    int step;
    int timer;
    LakeGuardianLights lights;
    CastModels models;
    CutsceneGraphics *graphics;
    SpearPillarCutsceneArgs *args;
} GiratinaInterventionContext;

typedef struct DialgaPalkiaArrivalContext {
    int state;
    int timer;
    int flashState;
    CastModels models;
    CutsceneGraphics *graphics;
    SpearPillarCutsceneArgs *args;
    SummonBubbleTask summonBubbleTasks[2];
} DialgaPalkiaArrivalContext;

#endif // POKEPLATINUM_SPEAR_PILLAR_STRUCTS_H
