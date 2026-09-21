#include "overlay100/ov100_021D13E4.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "overlay100/ov100_021D400C.h"
#include "overlay100/ov100_021D46C8.h"
#include "overlay100/ov100_021D4E04.h"
#include "overlay100/struct_ov100_021D1808.h"
#include "overlay100/struct_ov100_021D4DD8.h"
#include "overlay100/struct_ov100_021D4EBC.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d_object.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "palette.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "unk_0202419C.h"

static void LakeGuardiansArrival_InitGraphics(LakeGuardiansArrivalContext *context);
static void LakeGuardiansArrival_FreeLights(LakeGuardiansArrivalContext *context);
static void LakeGuardiansArrival_InitLights(LakeGuardiansArrivalContext *context);
static void LakeGuardiansArrival_UpdateScene(LakeGuardiansArrivalContext *context);
static void LakeGuardiansArrival_InitCamera(Camera *camera, VecFx32 *target);

void *LakeGuardiansArrival_Init(SpearPillarCutsceneData *cutscene)
{
    LakeGuardiansArrivalContext *context = Heap_Alloc(HEAP_ID_SPEAR_PILLAR_CUTSCENE, sizeof(LakeGuardiansArrivalContext));

    memset(context, 0, sizeof(LakeGuardiansArrivalContext));

    context->graphics = &cutscene->scene;
    context->args = cutscene->args;

    LakeGuardiansArrival_InitGraphics(context);
    LakeGuardiansArrival_InitLights(context);

    ScreenScrollTask_Init(&context->lights.scroll, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    ScreenScrollTask_Scroll(&context->lights.scroll, 0, 191, (0xffff / 192) * 2, FX32_CONST(2), 1 * 100, REG_DB_BG1HOFS_ADDR, 0, 0x1000, 1);

    ScreenCaptureTemplate unused = { // not used, but removing it causes checksum error.
        .displayMode = GX_DISPMODE_VRAM_C,
        .bgMode = GX_BGMODE_0,
        .bg0As = GX_BG0_AS_3D,
        .captureSize = GX_CAPTURE_SIZE_256x192,
        .captureMode = GX_CAPTURE_MODE_AB,
        .captureSrcA = GX_CAPTURE_SRCA_3D,
        .captureSrcB = GX_CAPTURE_SRCB_VRAM_0x00000,
        .captureDest = GX_CAPTURE_DEST_VRAM_C_0x00000,
        .captureEva = 4,
        .captureEvb = 12,
        .heapID = HEAP_ID_SPEAR_PILLAR_CUTSCENE
    };

    LakeGuardiansArrival_InitCamera(context->graphics->camera, &context->graphics->cameraTarget);
    context->graphics->cameraTarget.y += FX32_CONST(25);

    G2S_BlendNone();
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 7, 8);

    SpearPillarCutscene_SwapDisplay(1);
    Sound_FadeOutBGM(0, 10);

    return context;
}

enum LakeGuardiansArrivalState {
    LAKE_GUARDIANS_ARRIVAL_STATE_FADE_IN,
    LAKE_GUARDIANS_ARRIVAL_STATE_WAIT_FADE_IN,
    LAKE_GUARDIANS_ARRIVAL_STATE_REVEAL_GUARDIAN,
    LAKE_GUARDIANS_ARRIVAL_STATE_WAIT_GUARDIAN_CRY,
    LAKE_GUARDIANS_ARRIVAL_STATE_FLASH_GUARDIAN,
    LAKE_GUARDIANS_ARRIVAL_STATE_WAIT_FLASH_FADE,
    LAKE_GUARDIANS_ARRIVAL_STATE_FLASH_MAIN_SCREEN,
};

enum LakeGuardiansArrivalExitState {
    LAKE_GUARDIANS_ARRIVAL_EXIT_STATE_FREE_LIGHTS,
    LAKE_GUARDIANS_ARRIVAL_EXIT_STATE_RELEASE_MODELS,
};

BOOL LakeGuardiansArrival_Update(void *param)
{
    LakeGuardiansArrivalContext *context = param;
    static const u16 revealDuration[] = {
        210,
        120,
        120,
    };
    static const u16 cryFrame[] = {
        145,
        119,
        100,
    };
    static const u16 sfxFrame[] = {
        100,
        19,
        18,
    };
    static const u32 guardianSpecies[] = {
        SPECIES_UXIE,
        SPECIES_MESPRIT,
        SPECIES_AZELF,
    };

    switch (context->state) {
    case LAKE_GUARDIANS_ARRIVAL_STATE_FADE_IN:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
        context->state++;
    case LAKE_GUARDIANS_ARRIVAL_STATE_WAIT_FADE_IN:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }

        Sound_SetSceneAndPlayBGM(SOUND_SCENE_18, SEQ_D_RYAYHY_sseq, 0);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_63, SEQ_NONE, 0);
        context->state = LAKE_GUARDIANS_ARRIVAL_STATE_REVEAL_GUARDIAN;
        break;
    case LAKE_GUARDIANS_ARRIVAL_STATE_REVEAL_GUARDIAN:
        Easy3DObject_SetVisible(&context->models.guardians[context->guardianIndex].object, 1);
        context->models.guardians[context->guardianIndex].playing = 1;
        context->models.guardians[context->guardianIndex].playSecondaryAnim = 1;
        context->state++;
        context->timer = 0;
        break;
    case LAKE_GUARDIANS_ARRIVAL_STATE_WAIT_GUARDIAN_CRY:
        if (context->timer == sfxFrame[context->guardianIndex]) {
            Sound_PlayEffect(SEQ_SE_PL_W392_sseq);
        }

        if (context->timer == cryFrame[context->guardianIndex]) {
            Sound_PlayPokemonCryEx(POKECRY_NORMAL, guardianSpecies[context->guardianIndex], 0, 100, HEAP_ID_SPEAR_PILLAR_CUTSCENE, 0);
        }

        if ((++context->timer) >= revealDuration[context->guardianIndex]) {
            context->graphics->tint.brightness = 0;
            context->timer = 0;
            context->state++;
        }
        break;
    case LAKE_GUARDIANS_ARRIVAL_STATE_FLASH_GUARDIAN:
        if ((++context->graphics->tint.brightness) != (+16)) {
            G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        } else {
            context->lights.guardianLights[context->guardianIndex].followTarget = 1;
            Easy3DObject_SetVisible(&context->models.guardians[context->guardianIndex].object, 0);
            context->state++;

            context->guardianIndex++;

            if (context->guardianIndex >= 3) {
                context->graphics->tint.brightness = 0;
                context->state = LAKE_GUARDIANS_ARRIVAL_STATE_FLASH_MAIN_SCREEN;
            }
        }
        break;
    case LAKE_GUARDIANS_ARRIVAL_STATE_WAIT_FLASH_FADE:
        if ((--context->graphics->tint.brightness) > 0) {
            G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        } else {
            context->state = LAKE_GUARDIANS_ARRIVAL_STATE_REVEAL_GUARDIAN;
        }
        break;
    case LAKE_GUARDIANS_ARRIVAL_STATE_FLASH_MAIN_SCREEN:
        if ((++context->timer) < 30 * 4) {
            break;
        }

        if ((++context->graphics->tint.brightness) != (+16)) {
            G2S_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, context->graphics->tint.brightness);
        } else {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 1, 1, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
            context->state = 0;
            return FALSE;
        }
    }

    LakeGuardiansArrival_UpdateScene(context);
    SpearPillarCutscene_UpdateGuardianFlash(context->graphics, context->guardianIndex);

    return TRUE;
}

BOOL LakeGuardiansArrival_Exit(void *param)
{
    LakeGuardiansArrivalContext *context = param;

    switch (context->state) {
    case LAKE_GUARDIANS_ARRIVAL_EXIT_STATE_FREE_LIGHTS:
        ScreenScrollTask_Free(&context->lights.scroll);
        LakeGuardiansArrival_FreeLights(context);
        context->state++;
        break;
    case LAKE_GUARDIANS_ARRIVAL_EXIT_STATE_RELEASE_MODELS:
        CutsceneModel_Release(&context->models.guardians[0], &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.guardians[1], &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.guardians[2], &context->graphics->allocator, 2);
        CutsceneModel_Release(&context->models.backlight, &context->graphics->allocator, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        context->state++;
        break;
    default:
        Heap_Free(context);
        return FALSE;
    }

    return TRUE;
}

static void LakeGuardiansArrival_InitCamera(Camera *camera, VecFx32 *target)
{
    CameraAngle cameraAngle = { .x = 1274, .y = 0, .z = 0 };

    Camera_InitWithTarget(target, FX32_CONST(200), &cameraAngle, 0xa66, 0, 1, camera);
    Camera_ComputeProjectionMatrix(0, camera);
    Camera_SetAsActive(camera);
    Camera_SetClipping(FX32_CONST(0.1), FX32_CONST(2048), camera);
}

static void LakeGuardiansArrival_UpdateScene(LakeGuardiansArrivalContext *context)
{
    G3_ResetG3X();
    Camera_ComputeViewMatrix();

    SpearPillarCutscene_InitLighting(context->graphics);
    SpearPillarCutscene_UpdateCamera(context->graphics);

    CutsceneModel_Update(&context->models.guardians[0]);
    CutsceneModel_Update(&context->models.guardians[1]);
    CutsceneModel_Update(&context->models.guardians[2]);
    CutsceneModel_Update(&context->models.backlight);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
}

static void LakeGuardiansArrival_InitGraphics(LakeGuardiansArrivalContext *context)
{
    NARC *narc = context->graphics->narc;
    BgConfig *bgConfig = context->graphics->bgConfig;
    SpriteSystem *spriteSys = context->graphics->spriteSystem;
    SpriteManager *spriteMan = context->graphics->spriteManager;
    PaletteData *plttData = context->graphics->paletteData;
    int resourceId = 50000;

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 70, bgConfig, 5, 0, 0, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 72, bgConfig, 5, 0, 0, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 73, bgConfig, 4, 0, 0, 0, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    PaletteData_LoadBufferFromFileStart(plttData, NARC_INDEX_ARC__DEMO_TENGAN_GRA, 71, HEAP_ID_SPEAR_PILLAR_CUTSCENE, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 2, 0);

    const GXRgb skyColor[] = { GX_RGB(1, 1, 1) };
    PaletteData_LoadBuffer(plttData, &skyColor, PLTTBUF_MAIN_BG, 0, sizeof(skyColor));

    SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, PLTTBUF_SUB_OBJ, spriteSys, spriteMan, narc, 50, FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, resourceId);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, spriteMan, narc, 48, FALSE, resourceId);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, spriteMan, narc, 47, FALSE, resourceId);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, spriteMan, narc, 49, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, resourceId);

    CutsceneModel_LoadMesh(&context->models.backlight, 60, context->graphics->narc);

    CutsceneModel_LoadMesh(&context->models.guardians[0], 59, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.guardians[0], 57, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.guardians[0], 58, context->graphics->narc, &context->graphics->allocator);

    CutsceneModel_LoadMesh(&context->models.guardians[1], 45, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.guardians[1], 43, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.guardians[1], 44, context->graphics->narc, &context->graphics->allocator);

    CutsceneModel_LoadMesh(&context->models.guardians[2], 17, context->graphics->narc);
    CutsceneModel_LoadAnim(0, &context->models.guardians[2], 15, context->graphics->narc, &context->graphics->allocator);
    CutsceneModel_LoadAnim(1, &context->models.guardians[2], 16, context->graphics->narc, &context->graphics->allocator);

    Easy3DObject_SetVisible(&context->models.guardians[0].object, 1);
    Easy3DObject_SetVisible(&context->models.guardians[1].object, 0);
    Easy3DObject_SetVisible(&context->models.guardians[2].object, 0);
}

static void LakeGuardiansArrival_FreeLights(LakeGuardiansArrivalContext *context)
{
    for (int i = 0; i < 3; i++) {
        SysTask_Done(context->lights.guardianLights[i].task);
        SysTask_Done(context->lights.orbitLights[i].task);
        Sprite_DeleteAndFreeResources(context->lights.guardianLights[i].sprite);
        Sprite_DeleteAndFreeResources(context->lights.orbitLights[i].sprite);
    }
}

static void LakeGuardiansArrival_InitLights(LakeGuardiansArrivalContext *context)
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
    template.bgPriority = 2;
    template.vramTransfer = FALSE;

    template.resources[4] = SPRITE_RESOURCE_NONE;
    template.resources[5] = SPRITE_RESOURCE_NONE;

    template.resources[0] = 50000;
    template.resources[1] = 50000;
    template.resources[2] = 50000;
    template.resources[3] = 50000;

    for (int i = 0; i < 3; i++) {
        context->lights.orbitLights[i].sprite = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);

        ManagedSprite_TickFrame(context->lights.orbitLights[i].sprite);
        ManagedSprite_SetDrawFlag(context->lights.orbitLights[i].sprite, 0);
        ManagedSprite_SetExplicitPaletteOffset(context->lights.orbitLights[i].sprite, i);
        ManagedSprite_SetPositionXY(context->lights.orbitLights[i].sprite, 0, 0);

        context->lights.orbitLights[i].state = 1;
        context->lights.orbitLights[i].index = i;
        context->lights.orbitLights[i].depth = 50;
        context->lights.orbitLights[i].orbitAngle = i * 120;
        context->lights.orbitLights[i].driftAngle = context->lights.orbitLights[i].orbitAngle;
        context->lights.orbitLights[i].jitterIntensity = 0;
        context->lights.orbitLights[i].stateParams[0] = 1;
        context->lights.orbitLights[i].stateParams[1] = 1;
        context->lights.orbitLights[i].stateParams[2] = LCRNG_Next() % 10;
        context->lights.orbitLights[i].stateParams[3] = 0;
        context->lights.orbitLights[i].task = SysTask_Start(LightBall_UpdateOrbitOrApproach, &context->lights.orbitLights[i], 4096 - 1);
    }

    for (int i = 0; i < 3; i++) {
        s16 startX[] = { 180, -20, 280 };
        s16 startY[] = { 128, 190, 150 };
        f32 startScale[] = { 0.1f, 0.3f, 0.2f };

        if (i == 1) {
            template.bgPriority = 0;
        } else {
            template.bgPriority = 2;
        }

        context->lights.guardianLights[i].sprite = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);
        context->lights.guardianLights[i].targetSprite = context->lights.orbitLights[i].sprite;

        ManagedSprite_TickFrame(context->lights.guardianLights[i].sprite);
        ManagedSprite_SetAffineOverwriteMode(context->lights.guardianLights[i].sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAffineScale(context->lights.guardianLights[i].sprite, startScale[i], startScale[i]);
        ManagedSprite_SetExplicitPaletteOffset(context->lights.guardianLights[i].sprite, i);
        ManagedSprite_SetPositionXY(context->lights.guardianLights[i].sprite, startX[i], startY[i]);

        context->lights.guardianLights[i].state = 0;
        context->lights.guardianLights[i].index = i;
        context->lights.guardianLights[i].depth = 50;
        context->lights.guardianLights[i].orbitAngle = i * 120;
        context->lights.guardianLights[i].driftAngle = context->lights.guardianLights[i].orbitAngle;
        context->lights.guardianLights[i].jitterIntensity = 0;
        context->lights.guardianLights[i].stateParams[0] = 1;
        context->lights.guardianLights[i].stateParams[1] = 1;
        context->lights.guardianLights[i].stateParams[2] = LCRNG_Next() % 10;
        context->lights.guardianLights[i].stateParams[3] = 0;
        context->lights.guardianLights[i].task = SysTask_Start(LightBall_UpdateOrbitOrApproach, &context->lights.guardianLights[i], 4096);
    }
}
