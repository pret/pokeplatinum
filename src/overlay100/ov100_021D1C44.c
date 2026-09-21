#include "overlay100/ov100_021D1C44.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "overlay100/ov100_021D400C.h"
#include "overlay100/ov100_021D44C0.h"
#include "overlay100/ov100_021D46C8.h"
#include "overlay100/ov100_021D4E04.h"
#include "overlay100/struct_ov100_021D1C98.h"
#include "overlay100/struct_ov100_021D4DD8.h"
#include "overlay100/struct_ov100_021D54D0.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d_object.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "palette.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0202419C.h"

enum GiratinaInterventionStep {
    GIRATINA_INTERVENTION_STEP_FADE_IN,
    GIRATINA_INTERVENTION_STEP_WAIT_FADE_IN,
    GIRATINA_INTERVENTION_STEP_PAN_ANGLE_DOWN,
    GIRATINA_INTERVENTION_STEP_WAIT_PAN_ANGLE_DOWN,
    GIRATINA_INTERVENTION_STEP_WAIT_LAKE_TRIO_DIALOGUE,
    GIRATINA_INTERVENTION_STEP_PAN_TO_PLAYER,
    GIRATINA_INTERVENTION_STEP_WAIT_PAN_TO_PLAYER,
    GIRATINA_INTERVENTION_STEP_WAIT_DISMISSAL_DIALOGUE,
    GIRATINA_INTERVENTION_STEP_DARKEN_SCREEN,
    GIRATINA_INTERVENTION_STEP_PAN_TO_GIRATINA,
    GIRATINA_INTERVENTION_STEP_WAIT_PAN_TO_GIRATINA,
    GIRATINA_INTERVENTION_STEP_PLAY_GIRATINA_BGM,
    GIRATINA_INTERVENTION_STEP_GIRATINA_SHADOW_RISES,
    GIRATINA_INTERVENTION_STEP_GIRATINA_RISE_MOVEMENT,
    GIRATINA_INTERVENTION_STEP_GIRATINA_RISE_COMPLETE,
    GIRATINA_INTERVENTION_STEP_DIALGA_PALKIA_STEP_BACK,
    GIRATINA_INTERVENTION_STEP_WAIT_SHADOW_POKEMON_DIALOGUE,
    GIRATINA_INTERVENTION_STEP_GIRATINA_TRANSFORM,
    GIRATINA_INTERVENTION_STEP_WAIT_HARNESSED_POWERS_DIALOGUE,
    GIRATINA_INTERVENTION_STEP_GIRATINA_ATTACKS_CYRUS,
    GIRATINA_INTERVENTION_STEP_FADE_OUT,
    GIRATINA_INTERVENTION_STEP_WAIT_FADE_OUT,
};

enum GiratinaInterventionExitStep {
    GIRATINA_INTERVENTION_EXIT_STEP_FREE_LIGHTS,
    GIRATINA_INTERVENTION_EXIT_STEP_RELEASE_MODELS,
};

static void GiratinaIntervention_InitSpriteSystem(GiratinaInterventionContext *context);
static void SpearPillarCutscene_FreeLakeGuardianLights(GiratinaInterventionContext *context);
static void GiratinaIntervention_InitLakeGuardianLights(GiratinaInterventionContext *context);
static void GiratinaIntervention_UpdateScene(GiratinaInterventionContext *context);
static void GiratinaIntervention_InitCamera(Camera *camera, VecFx32 *target);

static PoseStep sCyrusDismissalPose[] = {
    { .pose = CUTSCENE_MODEL_POSE_TURN_SOUTH, .repeatCount = 4, .stepDistance = 0 },
    { .pose = CUTSCENE_MODEL_POSE_NONE, .repeatCount = 1 }
};

static PoseStep sCyrusPanToGiratinaPose[] = {
    { .pose = CUTSCENE_MODEL_POSE_TURN_SOUTH, .repeatCount = 4, .stepDistance = 0 },
    { .pose = CUTSCENE_MODEL_POSE_TURN_NORTH, .repeatCount = 4, .stepDistance = 0 },
    { .pose = CUTSCENE_MODEL_POSE_NONE, .repeatCount = 1 }
};

static PoseStep sCyrusShadowRisesPose[] = {
    { .pose = CUTSCENE_MODEL_POSE_WALK_BACKWARD, .repeatCount = 2, .stepDistance = -(FX32_HALF >> 1) },
    { .pose = CUTSCENE_MODEL_POSE_NONE, .repeatCount = 1 }
};

static PoseStep sCyrusPushBackPose[] = {
    { .pose = CUTSCENE_MODEL_POSE_PUSHED_BACK, .repeatCount = 2, .stepDistance = -(FX32_HALF >> 1) },
    { .pose = CUTSCENE_MODEL_POSE_NONE, .repeatCount = 1 }
};

static void GiratinaIntervention_InitCamera(Camera *camera, VecFx32 *target)
{
    CameraAngle cameraAngle = { .x = -0x29fe, .y = 0, .z = 0 };

    Camera_InitWithTarget(target, 0x13c805, &cameraAngle, 0xc01, 0, 1, camera);
    Camera_SetAsActive(camera);
    Camera_SetClipping(FX32_ONE * 10, FX32_ONE * 1008, camera);
}

static void GiratinaIntervention_InitSpriteSystem(GiratinaInterventionContext *context)
{
    NARC *narc = context->graphics->narc;
    BgConfig *bgConfig = context->graphics->bgConfig;
    SpriteSystem *spriteSystem = context->graphics->spriteSystem;
    SpriteManager *spriteMan = context->graphics->spriteManager;
    PaletteData *plttdata = context->graphics->paletteData;
    int resourceId = 50000;

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 18, bgConfig, 5, 0, 0, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 20, bgConfig, 5, 0, 0, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    PaletteData_LoadBufferFromFileStart(plttdata, NARC_INDEX_ARC__DEMO_TENGAN_GRA, 19, HEAP_ID_SPEAR_PILLAR_CUTSCENE, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 2, 0);
    PaletteData_LoadBufferFromFileStart(plttdata, NARC_INDEX_ARC__DEMO_TENGAN_GRA, 19, HEAP_ID_SPEAR_PILLAR_CUTSCENE, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * 2, 0);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(plttdata, PLTTBUF_SUB_OBJ, spriteSystem, spriteMan, narc, 50, FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, resourceId);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteMan, narc, 48, FALSE, resourceId);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteMan, narc, 47, FALSE, resourceId);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteMan, narc, 49, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, resourceId);

    CutsceneModel_LoadMesh(&context->models.unk_04, 46, context->graphics->narc);

    for (int i = 0; i < 4; i++) {
        CutsceneModel_LoadMesh(&context->models.shadow[i], 65, context->graphics->narc);
        Easy3DObject_SetScale(&context->models.shadow[i].object, FX32_CONST(1.2), FX32_CONST(1.0), FX32_CONST(1.2));
    }

    CutsceneModel_LoadMesh(&context->models.shockwave, 24, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.shockwave, 22, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.shockwave, 23, context->graphics->narc, &context->graphics->allocator);

    CutsceneModel_LoadMesh(&context->models.dropletSplash, 53, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.dropletSplash, 51, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.dropletSplash, 52, context->graphics->narc, &context->graphics->allocator);

    CutsceneModel_LoadMesh(&context->models.distortionRipple, 55, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.distortionRipple, 54, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.distortionRipple, 56, context->graphics->narc, &context->graphics->allocator);

    CutsceneModel_LoadMesh(&context->models.summonBubble[0], 66, context->graphics->narc);
    Easy3DObject_SetPosition(&context->models.summonBubble[0].object, FX32_CONST(-50), FX32_CONST(+0), FX32_CONST(-50));
    CutsceneModel_LoadAnim(0, &context->models.summonBubble[0], 67, context->graphics->narc, &context->graphics->allocator);

    context->models.summonBubble[0].playing = 1;
    context->models.summonBubble[0].looping = 1;
    context->models.summonBubble[0].animSpeed = FX32_HALF;

    CutsceneModel_LoadMesh(&context->models.summonBubble[1], 68, context->graphics->narc);
    Easy3DObject_SetPosition(&context->models.summonBubble[1].object, FX32_CONST(+50), FX32_CONST(+0), FX32_CONST(-50));
    CutsceneModel_LoadAnim(0, &context->models.summonBubble[1], 69, context->graphics->narc, &context->graphics->allocator);

    context->models.summonBubble[1].playing = 1;
    context->models.summonBubble[1].looping = 1;
    context->models.summonBubble[1].animSpeed = FX32_HALF;

    CutsceneModel_LoadMesh(&context->models.unk_934[0], 26, context->graphics->narc);
    Easy3DObject_SetPosition(&context->models.unk_934[0].object, FX32_CONST(0), FX32_CONST(-90), FX32_CONST(0));
    Easy3DObject_SetVisible(&context->models.unk_934[0].object, 0);
    CutsceneModel_LoadAnim(0, &context->models.unk_934[0], 25, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.unk_934[0], 27, context->graphics->narc, &context->graphics->allocator);

    context->models.unk_934[0].loopSecondaryAnim = 1;

    CutsceneModel_LoadMesh(&context->models.unk_934[1], 29, context->graphics->narc);
    Easy3DObject_SetVisible(&context->models.unk_934[1].object, 0);
    CutsceneModel_LoadAnim(0, &context->models.unk_934[1], 28, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.unk_934[1], 30, context->graphics->narc, &context->graphics->allocator);

    context->models.unk_934[1].loopSecondaryAnim = 1;

    CutsceneModel_LoadMesh(&context->models.unk_934[2], 32, context->graphics->narc);
    Easy3DObject_SetVisible(&context->models.unk_934[2].object, 0);
    CutsceneModel_LoadAnim(0, &context->models.unk_934[2], 31, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.unk_934[2], 33, context->graphics->narc, &context->graphics->allocator);

    context->models.unk_934[2].loopSecondaryAnim = 1;

    CutsceneModel_LoadMesh(&context->models.unk_934[3], 35, context->graphics->narc);
    Easy3DObject_SetVisible(&context->models.unk_934[3].object, 0);
    CutsceneModel_LoadAnim(0, &context->models.unk_934[3], 34, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.unk_934[3], 36, context->graphics->narc, &context->graphics->allocator);

    context->models.unk_934[3].loopSecondaryAnim = 1;

    CutsceneModel_LoadMesh(&context->models.unk_934[4], 38, context->graphics->narc);
    Easy3DObject_SetVisible(&context->models.unk_934[4].object, 0);
    CutsceneModel_LoadAnim(0, &context->models.unk_934[4], 37, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.unk_934[4], 39, context->graphics->narc, &context->graphics->allocator);

    context->models.unk_934[4].loopSecondaryAnim = 1;

    CutsceneModel_LoadMesh(&context->models.unk_10DC[0], 41, context->graphics->narc);
    Easy3DObject_SetVisible(&context->models.unk_10DC[0].object, 0);
    CutsceneModel_LoadAnim(0, &context->models.unk_10DC[0], 40, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadMesh(&context->models.unk_10DC[1], 42, context->graphics->narc);
    Easy3DObject_SetVisible(&context->models.unk_10DC[1].object, 0);

    if (TrainerInfo_Gender(context->args->trainerInfo) != 1) {
        CutsceneModel_LoadMesh(&context->models.trainers[0], 61, context->graphics->narc);
        CutsceneModel_LoadAnim(0, &context->models.trainers[0], 62, context->graphics->narc, &context->graphics->allocator);
    } else {
        CutsceneModel_LoadMesh(&context->models.trainers[0], 63, context->graphics->narc);
        CutsceneModel_LoadAnim(0, &context->models.trainers[0], 64, context->graphics->narc, &context->graphics->allocator);
    }

    Easy3DObject_SetPosition(&context->models.trainers[0].object, FX32_CONST(1), FX32_CONST(+0), FX32_CONST(+140));

    context->models.trainers[0].looping = 1;
    context->models.trainers[0].animSpeed = (FX32_HALF >> 1);
    context->models.trainers[0].pose = 2;

    CutsceneModel_LoadMesh(&context->models.trainers[1], 13, context->graphics->narc);
    Easy3DObject_SetPosition(&context->models.trainers[1].object, FX32_CONST(1), FX32_CONST(+0), FX32_CONST(+60));
    CutsceneModel_LoadAnim(0, &context->models.trainers[1], 14, context->graphics->narc, &context->graphics->allocator);

    context->models.trainers[1].looping = 1;
    context->models.trainers[1].animSpeed = (FX32_HALF >> 1);
    context->models.trainers[1].pose = 2;
}

static void GiratinaIntervention_InitLakeGuardianLights(GiratinaInterventionContext *context)
{
    SpriteSystem *spriteSys = context->graphics->spriteSystem;
    SpriteManager *spriteMan = context->graphics->spriteManager;
    SpriteTemplate template;

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animIdx = 0;
    template.priority = 0;
    template.plttIdx = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    template.bgPriority = 0;
    template.vramTransfer = FALSE;

    template.resources[4] = SPRITE_RESOURCE_NONE;
    template.resources[5] = SPRITE_RESOURCE_NONE;

    template.resources[0] = 50000;
    template.resources[1] = 50000;
    template.resources[2] = 50000;
    template.resources[3] = 50000;

    for (int i = 0; i < 3; i++) {
        context->lights.guardianLights[i].sprite = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);

        ManagedSprite_TickFrame(context->lights.guardianLights[i].sprite);
        ManagedSprite_SetAffineOverwriteMode(context->lights.guardianLights[i].sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAffineScale(context->lights.guardianLights[i].sprite, 0.5f, 0.5f);
        ManagedSprite_SetExplicitPaletteOffset(context->lights.guardianLights[i].sprite, i);
        ManagedSprite_SetPositionXY(context->lights.guardianLights[i].sprite, 16 + (i * 64), 64);

        context->lights.guardianLights[i].state = 1;
        context->lights.guardianLights[i].index = i;
        context->lights.guardianLights[i].depth = 50;
        context->lights.guardianLights[i].orbitAngle = i * 120;
        context->lights.guardianLights[i].driftAngle = context->lights.guardianLights[i].orbitAngle;
        context->lights.guardianLights[i].jitterIntensity = i;
        context->lights.guardianLights[i].stateParams[0] = 1;
        context->lights.guardianLights[i].stateParams[1] = 1;
        context->lights.guardianLights[i].stateParams[2] = LCRNG_Next() % 10;
        context->lights.guardianLights[i].stateParams[3] = 0;
        context->lights.guardianLights[i].task = SysTask_Start(LightBall_Update, &context->lights.guardianLights[i], 4096);
    }
}

static void SpearPillarCutscene_FreeLakeGuardianLights(GiratinaInterventionContext *context)
{
    for (int i = 0; i < 3; i++) {
        SysTask_Done(context->lights.guardianLights[i].task);
        Sprite_DeleteAndFreeResources(context->lights.guardianLights[i].sprite);
    }
}

void *GiratinaIntervention_Init(SpearPillarCutsceneData *cutscene)
{
    GiratinaInterventionContext *context = Heap_Alloc(HEAP_ID_SPEAR_PILLAR_CUTSCENE, sizeof(GiratinaInterventionContext));

    memset(context, 0, sizeof(GiratinaInterventionContext));

    context->graphics = &cutscene->scene;
    context->args = cutscene->args;

    GiratinaIntervention_InitSpriteSystem(context);
    GiratinaIntervention_InitLakeGuardianLights(context);

    ScreenScrollTask_Init(&context->lights.scroll, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    ScreenScrollTask_Scroll(&context->lights.scroll, 0, 191, (0xffff / 192) * 2, FX32_CONST(4), 1 * 100, REG_DB_BG1HOFS_ADDR, 0, 0x1000, 1);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 7, 8);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 10);

    static const GXRgb edgeColors[8] = {
        GX_RGB(2, 2, 2),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
        GX_RGB(10, 10, 10),
    };

    G3X_EdgeMarking(1);
    G3X_SetEdgeColorTable(edgeColors);

    GiratinaIntervention_InitCamera(context->graphics->camera, &context->graphics->cameraTarget);
    context->graphics->cameraTarget.y = FX32_CONST(0);

    SpearPillarCutscene_SwapDisplay(1);
    SpearPillarCutscene_SetBrightness(cutscene, +16);

    return context;
}

BOOL GiratinaIntervention_Update(void *param)
{
    GiratinaInterventionContext *context = (GiratinaInterventionContext *)param;

    switch (context->step) {
    case GIRATINA_INTERVENTION_STEP_FADE_IN:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 6, 1, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
        context->graphics->tint.brightness = 0;
        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        G2S_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        context->step++;
    case GIRATINA_INTERVENTION_STEP_WAIT_FADE_IN:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }
        context->step++;
        break;
    case GIRATINA_INTERVENTION_STEP_PAN_ANGLE_DOWN: {
        context->graphics->cameraPan.angleDeltaX = 20;
        context->graphics->cameraPan.angleDeltaY = 0;
        context->graphics->cameraPan.angleDeltaZ = 0;
        context->graphics->cameraPan.durationFrames = 60;
        context->graphics->cameraPan.camera = context->graphics->camera;
        context->graphics->cameraPan.positionDeltaX = 0;
        context->graphics->cameraPan.positionDeltaY = 0;
        context->graphics->cameraPan.positionDeltaZ = 0;
        context->graphics->cameraPan.target = &context->graphics->cameraTarget;

        CameraPan_Start(&context->graphics->cameraPan);
        context->step++;
        break;
    }
    case GIRATINA_INTERVENTION_STEP_WAIT_PAN_ANGLE_DOWN:
        if (CameraPan_Update(&context->graphics->cameraPan)) {
            SpearPillarCutscene_ShowMessage(context->graphics, context->args, 20);
            context->step++;
        }
        break;
    case GIRATINA_INTERVENTION_STEP_WAIT_LAKE_TRIO_DIALOGUE:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        SpearPillarCutscene_ClearMessage(context->graphics);
        context->step++;
        break;
    case GIRATINA_INTERVENTION_STEP_PAN_TO_PLAYER: {
        context->graphics->cameraPan.angleDeltaX = 0;
        context->graphics->cameraPan.angleDeltaY = 0;
        context->graphics->cameraPan.angleDeltaZ = 0;
        context->graphics->cameraPan.durationFrames = 60;
        context->graphics->cameraPan.camera = context->graphics->camera;
        context->graphics->cameraPan.positionDeltaX = 0;
        context->graphics->cameraPan.positionDeltaY = 0;
        context->graphics->cameraPan.positionDeltaZ = FX32_CONST(70);
        context->graphics->cameraPan.target = &context->graphics->cameraTarget;
        CameraPan_Start(&context->graphics->cameraPan);
        context->step++;
        break;
    }
    case GIRATINA_INTERVENTION_STEP_WAIT_PAN_TO_PLAYER:
        if (CameraPan_Update(&context->graphics->cameraPan) == 0) {
            break;
        }

        if (++context->timer < 10) {
            break;
        }

        SpearPillarCutscene_ShowMessage(context->graphics, context->args, 21);
        PoseSequence_Start(&context->models.trainers[1], sCyrusDismissalPose);

        context->step++;
        context->timer = 0;
        break;
    case GIRATINA_INTERVENTION_STEP_WAIT_DISMISSAL_DIALOGUE:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        SpearPillarCutscene_ClearMessage(context->graphics);
        SpearPillarCutscene_ShowMessage(context->graphics, context->args, 22);
        Sound_FadeOutBGM(0, 10);
        context->step++;
        break;
    case GIRATINA_INTERVENTION_STEP_DARKEN_SCREEN:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        SpearPillarCutscene_ClearMessage(context->graphics);
        context->timer++;

        if (context->timer == 15) {
            for (int i = 0; i < 3; i++) {
                context->lights.guardianLights[i].state %= 2;
                context->lights.guardianLights[i].state += 2;
            }
        }

        if (context->timer < 30) {
            break;
        }

        if (context->timer == 31) {
            (void)0;
        }

        if (context->graphics->tint.brightness > -6) {
            if (context->timer % 2) {
                context->graphics->tint.brightness--;
            }

            G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
            G2S_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        } else {
            SpearPillarCutscene_ShowMessage(context->graphics, context->args, 23);

            context->timer = 0;
            context->step++;
        }
        break;
    case GIRATINA_INTERVENTION_STEP_PAN_TO_GIRATINA:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        SpearPillarCutscene_ClearMessage(context->graphics);
        PoseSequence_Start(&context->models.trainers[1], sCyrusPanToGiratinaPose);

        context->graphics->cameraPan.angleDeltaX = 0;
        context->graphics->cameraPan.angleDeltaY = 0;
        context->graphics->cameraPan.angleDeltaZ = 0;
        context->graphics->cameraPan.durationFrames = 90;
        context->graphics->cameraPan.camera = context->graphics->camera;
        context->graphics->cameraPan.positionDeltaX = 0;
        context->graphics->cameraPan.positionDeltaY = 0;
        context->graphics->cameraPan.positionDeltaZ = -FX32_CONST(80);
        context->graphics->cameraPan.target = &context->graphics->cameraTarget;
        CameraPan_Start(&context->graphics->cameraPan);
        context->step++;
        break;
    case GIRATINA_INTERVENTION_STEP_WAIT_PAN_TO_GIRATINA:
        if (CameraPan_Update(&context->graphics->cameraPan) == 0) {
            break;
        }

        context->step++;
        context->timer = 0;
        break;
    case GIRATINA_INTERVENTION_STEP_PLAY_GIRATINA_BGM:
        context->models.unk_10DC[0].playing = 1;
        Easy3DObject_SetVisible(&context->models.unk_10DC[0].object, 1);
        Sound_PlayBGM(SEQ_PL_EV_GIRA_sseq);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_63, SEQ_NONE, 0);
        context->step++;
        break;
    case GIRATINA_INTERVENTION_STEP_GIRATINA_SHADOW_RISES:
        if ((++context->timer) == 60) {
            PoseSequence_Start(&context->models.trainers[1], sCyrusShadowRisesPose);
        }

        if ((context->timer == 15) || (context->timer == 45) || (context->timer == 75) || (context->timer == 95) || (context->timer == 115) || (context->timer == 130) || (context->timer == 145)) {
            Sound_PlayEffect(SEQ_SE_PL_W060_sseq);
            Sound_SetPitchForSequence(1477, 0xffff, (context->timer / 30 * 32) + (context->timer % 32 * 10));
        }

        if (context->models.unk_10DC[0].playing == 0) {
            Easy3DObject_SetVisible(&context->models.unk_10DC[0].object, 0);
            Easy3DObject_SetVisible(&context->models.unk_10DC[1].object, 1);
            Easy3DObject_SetVisible(&context->models.unk_934[0].object, 1);

            context->models.unk_934[0].playing = 1;
            context->timer = 0;
            context->step++;
        }
        break;
    case GIRATINA_INTERVENTION_STEP_GIRATINA_RISE_MOVEMENT:
        if (context->models.unk_934[0].object.position.y < FX32_CONST(-50)) {
            context->models.unk_934[0].object.position.y += FX32_HALF;
        } else {
            context->timer = 0;
            context->step++;
        }
        break;
    case GIRATINA_INTERVENTION_STEP_GIRATINA_RISE_COMPLETE:
        if (context->models.unk_934[0].playing == 0) {
            context->models.unk_934[1].object.position.y = context->models.unk_934[0].object.position.y;
            context->models.unk_934[1].playing = 1;
            context->models.unk_934[1].looping = 1;
            context->models.shockwave.playing = 1;
            context->models.shockwave.playSecondaryAnim = 1;
            context->models.distortionRipple.playing = 1;
            context->models.distortionRipple.loopSecondaryAnim = 1;

            Easy3DObject_SetVisible(&context->models.unk_934[0].object, 0);
            Easy3DObject_SetVisible(&context->models.unk_934[1].object, 1);

            context->step++;
        }
        break;
    case GIRATINA_INTERVENTION_STEP_DIALGA_PALKIA_STEP_BACK:
        context->timer++;

        if (context->timer == 1) {
            Sound_PlayEffect(SEQ_SE_PL_W082C_sseq);
        }

        if (context->timer == 20) {
            PoseSequence_Start(&context->models.trainers[1], sCyrusPushBackPose);
        }

        if (context->timer == 15 + 25) {
            Sound_PlayPokemonCryEx(POKECRY_NORMAL, SPECIES_DIALGA, -80, 40, HEAP_ID_SPEAR_PILLAR_CUTSCENE, 0);
        }

        if (context->timer == 40 + 25) {
            Sound_PlayPokemonCryEx(POKECRY_NORMAL, SPECIES_PALKIA, +80, 40, HEAP_ID_SPEAR_PILLAR_CUTSCENE, 0);
        }

        if (context->timer < 15 + 25) {
            context->models.summonBubble[0].object.position.z -= FX32_HALF >> 1;
        } else {
            context->models.summonBubble[0].object.position.z -= FX32_HALF;
        }

        if (context->timer < 40 + 25) {
            context->models.summonBubble[1].object.position.z -= FX32_HALF >> 1;
        } else {
            context->models.summonBubble[1].object.position.z -= FX32_HALF;
        }

        if (context->models.unk_934[1].object.position.y < FX32_CONST(0)) {
            context->models.unk_934[1].object.position.y += FX32_HALF;
        } else {
            context->models.unk_934[1].object.position.y = FX32_CONST(0);
            context->timer = 0;
            SpearPillarCutscene_ShowMessage(context->graphics, context->args, 24);
            context->step++;
        }
        break;
    case GIRATINA_INTERVENTION_STEP_WAIT_SHADOW_POKEMON_DIALOGUE:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        SpearPillarCutscene_ClearMessage(context->graphics);

        context->models.dropletSplash.playing = 1;
        context->models.dropletSplash.looping = 0;
        context->models.dropletSplash.playSecondaryAnim = 1;
        context->models.unk_934[2].playing = 1;

        Easy3DObject_SetVisible(&context->models.unk_934[1].object, 0);
        Easy3DObject_SetVisible(&context->models.unk_934[2].object, 1);
        Sound_PlayPokemonCryEx(POKECRY_FIELD_EVENT, SPECIES_GIRATINA, 0, 127, HEAP_ID_SPEAR_PILLAR_CUTSCENE, 0);

        context->timer = 0;
        context->step++;
        break;
    case GIRATINA_INTERVENTION_STEP_GIRATINA_TRANSFORM:
        if (context->models.unk_934[2].playing == 0) {
            SpearPillarCutscene_ShowMessage(context->graphics, context->args, 25);

            context->models.unk_934[3].playing = 1;
            context->models.unk_934[3].looping = 1;
            context->models.dropletSplash.playing = 0;

            Easy3DObject_SetVisible(&context->models.dropletSplash.object, 0);
            Easy3DObject_SetVisible(&context->models.unk_934[2].object, 0);
            Easy3DObject_SetVisible(&context->models.unk_934[3].object, 1);

            context->step++;
        }
        break;
    case GIRATINA_INTERVENTION_STEP_WAIT_HARNESSED_POWERS_DIALOGUE:
        if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
            break;
        }

        if (context->timer == 0) {
            SpearPillarCutscene_ClearMessage(context->graphics);
        }

        Sound_PlayBGM(SEQ_PL_EV_GIRA2_sseq);

        context->models.unk_934[4].playing = 1;

        Easy3DObject_SetVisible(&context->models.unk_934[3].object, 0);
        Easy3DObject_SetVisible(&context->models.unk_934[4].object, 1);
        context->timer = 0;
        context->step++;
        break;
    case GIRATINA_INTERVENTION_STEP_GIRATINA_ATTACKS_CYRUS:
        if ((++context->timer) == 238) {
            Sound_PlayPokemonCryEx(POKECRY_FIELD_EVENT, SPECIES_GIRATINA, 0, 127, HEAP_ID_SPEAR_PILLAR_CUTSCENE, 0);
        }

        if (context->timer == 170) {
            SpearPillarCutscene_ShowMessage(context->graphics, context->args, 26);
        }

        if (context->timer == 180) {
            (void)0;
        }

        if (context->timer == 210) {
            (void)0;
        }

        if (context->timer == 220) {
            (void)0;
        }

        if (context->timer == 230) {
            (void)0;
        }

        if (context->models.unk_934[4].playing == 0) {
            if (Text_IsPrinterActive(context->graphics->messagePrinter)) {
                Text_RemovePrinter(context->graphics->messagePrinter);
            }

            context->graphics->tint.brightness = -16;

            G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
            G2S_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);

            u16 currentBGM = Sound_GetCurrentBGM();
            Sound_StopBGM(currentBGM, 0);

            SpearPillarCutscene_ClearMessage(context->graphics);

            context->step++;
            context->timer = 0;
        }
        break;
    case GIRATINA_INTERVENTION_STEP_FADE_OUT:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 1, 1, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
        context->step++;
    case GIRATINA_INTERVENTION_STEP_WAIT_FADE_OUT:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }

        context->graphics->tint.brightness = 0;
        G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        G2S_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        context->step++;
        break;
    default:
        if ((++context->timer) >= 60) {
            context->step = 0;
            return 0;
        }

        break;
    }

    context->models.shadow[0].object.position = context->models.summonBubble[0].object.position;
    context->models.shadow[1].object.position = context->models.summonBubble[1].object.position;
    context->models.shadow[2].object.position = context->models.trainers[0].object.position;
    context->models.shadow[3].object.position = context->models.trainers[1].object.position;
    context->models.shadow[0].object.position.z -= (FX32_ONE * 2);
    context->models.shadow[1].object.position.z -= (FX32_ONE * 2);
    context->models.shadow[2].object.position.z -= (FX32_ONE * 2);
    context->models.shadow[3].object.position.z -= (FX32_ONE * 2);
    context->models.shadow[2].object.position.x -= FX32_ONE;
    context->models.shadow[3].object.position.x -= FX32_ONE;

    GiratinaIntervention_UpdateScene(context);
    SpearPillarCutscene_UpdateBackgroundPulse(context->graphics);

    return TRUE;
}

BOOL GiratinaIntervention_Exit(void *param)
{
    GiratinaInterventionContext *context = (GiratinaInterventionContext *)param;

    switch (context->step) {
    case GIRATINA_INTERVENTION_EXIT_STEP_FREE_LIGHTS:
        SpearPillarCutscene_FreeLakeGuardianLights(context);
        ScreenScrollTask_Free(&context->lights.scroll);
        context->step++;
        break;
    case GIRATINA_INTERVENTION_EXIT_STEP_RELEASE_MODELS:
        CutsceneModel_Release(&context->models.unk_04, &context->graphics->allocator, 0);

        for (int i = 0; i < 4; i++) {
            CutsceneModel_Release(&context->models.shadow[i], &context->graphics->allocator, 0);
        }

        CutsceneModel_Release(&context->models.shockwave, &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.dropletSplash, &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.distortionRipple, &context->graphics->allocator, 2);

        CutsceneModel_Release(&context->models.summonBubble[0], &context->graphics->allocator, 1);
        CutsceneModel_Release(&context->models.summonBubble[1], &context->graphics->allocator, 1);

        CutsceneModel_Release(&context->models.unk_934[0], &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.unk_934[1], &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.unk_934[2], &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.unk_934[3], &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.unk_934[4], &context->graphics->allocator, 2);

        CutsceneModel_Release(&context->models.unk_10DC[0], &context->graphics->allocator, 1);
        CutsceneModel_Release(&context->models.unk_10DC[1], &context->graphics->allocator, 0);

        CutsceneModel_Release(&context->models.trainers[0], &context->graphics->allocator, 1);
        CutsceneModel_Release(&context->models.trainers[1], &context->graphics->allocator, 1);

        context->step++;
        break;
    default:
        Heap_Free(context);
        return FALSE;
    }

    return TRUE;
}

static void GiratinaIntervention_UpdateScene(GiratinaInterventionContext *context)
{
    G3_ResetG3X();
    Camera_ComputeViewMatrix();

    SpearPillarCutscene_InitLighting(context->graphics);
    SpearPillarCutscene_UpdateCamera(context->graphics);

    CutsceneModel_Update(&context->models.unk_04);
    CutsceneModel_Update(&context->models.shockwave);
    CutsceneModel_Update(&context->models.dropletSplash);
    CutsceneModel_Update(&context->models.distortionRipple);

    CutsceneModel_Update(&context->models.unk_10DC[0]);
    CutsceneModel_Update(&context->models.unk_10DC[1]);

    CutsceneModel_Update(&context->models.unk_934[0]);
    CutsceneModel_Update(&context->models.unk_934[1]);
    CutsceneModel_Update(&context->models.unk_934[2]);
    CutsceneModel_Update(&context->models.unk_934[3]);
    CutsceneModel_Update(&context->models.unk_934[4]);

    CutsceneModel_Update(&context->models.summonBubble[0]);
    CutsceneModel_Update(&context->models.summonBubble[1]);

    CutsceneModel_Update(&context->models.trainers[0]);
    CutsceneModel_Update(&context->models.trainers[1]);

    CutsceneModel_Update(&context->models.shadow[0]);
    CutsceneModel_Update(&context->models.shadow[1]);
    CutsceneModel_Update(&context->models.shadow[2]);
    CutsceneModel_Update(&context->models.shadow[3]);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
}
