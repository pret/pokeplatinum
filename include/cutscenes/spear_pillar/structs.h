#ifndef POKEPLATINUM_SPEAR_PILLAR_STRUCTS_H
#define POKEPLATINUM_SPEAR_PILLAR_STRUCTS_H

#include <nitro/fx/fx.h>
#include <nitro/gx.h>
#include <nnsys.h>

#include "cutscenes/spear_pillar/main.h"

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
    struct {
        s32 framesRemaining;
        s32 x;
        s32 y;
        s32 z;
        s32 unused_10;
    } angleStep;
    struct {
        fx32 unused_00;
        fx32 x;
        fx32 y;
        fx32 z;
        fx32 unused_10;
    } positionStep;
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
    CutsceneModel whirlpool1OrGiratinaStage1; // Dialga/Palkia stage: the left whirlpool; Giratina stage: its rising silhouette
    CutsceneModel whirlpool2OrGiratinaStage2; // Dialga/Palkia stage: the right whirlpool; Giratina stage: its settled/floating form after rising
    CutsceneModel giratinaStage3; // Giratina-only: its "shadow Pokemon" wing-spread form
    CutsceneModel giratinaStage4; // Giratina-only: its lunge-ready transform stage
    CutsceneModel giratinaStage5; // Giratina-only: its final attacking form
    CutsceneModel dialgaBallOrShadowPool; // Dialga/Palkia stage: Dialga's falling summon ball; Giratina stage: the shadow pool
    CutsceneModel palkiaBallOrRedEyes; // Dialga/Palkia stage: Palkia's falling summon ball; Giratina stage: the eyes-appearing effect
    CutsceneModel trainerPlayer;
    CutsceneModel trainerCyrus;
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
