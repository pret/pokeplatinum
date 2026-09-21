#include "overlay100/ov100_021D46C8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020985E4.h"

#include "overlay100/ov100_021D44C0.h"
#include "overlay100/struct_ov100_021D46C8.h"
#include "overlay100/struct_ov100_021D4890.h"
#include "overlay100/struct_ov100_021D49B4.h"
#include "overlay100/struct_ov100_021D4DD8.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d_object.h"
#include "game_options.h"
#include "gx_layers.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "render_window.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"

int SpearPillarCutscene_ShowMessage(CutsceneGraphics *graphics, SpearPillarCutsceneArgs *args, int textId)
{
    int printerId;
    MessageLoader *msgLoader;
    String *rawMessage;
    String *message = String_Init(511, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    u8 frameDelay = 0;

    msgLoader = graphics->messageLoader;
    rawMessage = MessageLoader_GetNewString(msgLoader, textId);

    if (textId == 22) {
        String *playerName = TrainerInfo_NameNewString(args->trainerInfo, 111);
        StringTemplate *nameTemplate = StringTemplate_Default(HEAP_ID_SPEAR_PILLAR_CUTSCENE);

        StringTemplate_SetString(nameTemplate, 0, playerName, 0, 1, GAME_LANGUAGE);
        StringTemplate_Format(nameTemplate, message, rawMessage);
        String_Free(playerName);
        StringTemplate_Free(nameTemplate);
    } else {
        String_Copy(message, rawMessage);
    }

    frameDelay = Options_TextFrameDelay(args->options);
    Window_FillTilemap(&graphics->messageWindow, 0xFF);

    printerId = Text_AddPrinterWithParams(&graphics->messageWindow, FONT_MESSAGE, message, 0, 0, frameDelay, NULL);
    Window_CopyToVRAM(&graphics->messageWindow);

    Window_DrawMessageBoxWithScrollCursor(&graphics->messageWindow, 0, 500, 15);
    String_Free(rawMessage);
    String_Free(message);

    graphics->messagePrinter = printerId;

    return printerId;
}

void SpearPillarCutscene_ClearMessage(CutsceneGraphics *graphics)
{
    Window_EraseMessageBox(&graphics->messageWindow, 1);
    Window_ClearAndCopyToVRAM(&graphics->messageWindow);
}

void SpearPillarCutscene_InitLighting(CutsceneGraphics *unused)
{
    VecFx32 light0Direction = { 0, -FX32_ONE, -FX32_ONE };
    VecFx32 light1Direction = { -2043, -3548, 110 };

    VEC_Normalize(&light0Direction, &light0Direction);
    NNS_G3dGlbLightVector(0, light0Direction.x, light0Direction.y, light0Direction.z);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));

    VEC_Normalize(&light1Direction, &light1Direction);
    NNS_G3dGlbLightVector(1, light1Direction.x, light1Direction.y, light1Direction.z);
    NNS_G3dGlbLightColor(1, GX_RGB(23, 23, 25));

    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(16, 16, 16), GX_RGB(14, 14, 14), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(20, 20, 20), GX_RGB(16, 16, 16), 0);
}

void SpearPillarCutscene_UpdateCamera(CutsceneGraphics *graphics)
{
    CameraAngle cameraAngle = Camera_GetAngle(graphics->camera);
    VecFx32 pos = Camera_GetPosition(graphics->camera);

    Camera_SetPosition(&pos, graphics->camera);
    Camera_SetAngleAroundTarget(&cameraAngle, graphics->camera);
}

void CameraPan_Start(CameraPan *cameraPan)
{
    CameraAngle cameraAngle;

    cameraPan->angleStep[0] = cameraPan->durationFrames;
    cameraPan->angleStep[1] = ((65535 / 360) * cameraPan->angleDeltaX / cameraPan->durationFrames);
    cameraPan->angleStep[2] = ((65535 / 360) * cameraPan->angleDeltaY / cameraPan->durationFrames);
    cameraPan->angleStep[3] = ((65535 / 360) * cameraPan->angleDeltaZ / cameraPan->durationFrames);

    cameraPan->positionStep[1] = cameraPan->positionDeltaX / cameraPan->durationFrames;
    cameraPan->positionStep[2] = cameraPan->positionDeltaY / cameraPan->durationFrames;
    cameraPan->positionStep[3] = cameraPan->positionDeltaZ / cameraPan->durationFrames;

    cameraAngle = Camera_GetAngle(cameraPan->camera);

    cameraPan->cameraAngle.x = cameraAngle.x + ((65535 / 360) * cameraPan->angleDeltaX);
    cameraPan->cameraAngle.y = cameraAngle.y + ((65535 / 360) * cameraPan->angleDeltaY);
    cameraPan->cameraAngle.z = cameraAngle.z + ((65535 / 360) * cameraPan->angleDeltaZ);
}

BOOL CameraPan_Update(CameraPan *cameraPan)
{
    BOOL panComplete = FALSE;
    CameraAngle cameraAngle = Camera_GetAngle(cameraPan->camera);

    if (cameraPan->angleStep[0] == 0) {
        return 1;
    }

    if ((--cameraPan->angleStep[0]) == 0) {
        cameraAngle.x = cameraPan->cameraAngle.x;
        cameraAngle.y = cameraPan->cameraAngle.y;
        cameraAngle.z = cameraPan->cameraAngle.z;
        panComplete = TRUE;
    } else {
        cameraAngle.x += (cameraPan->angleStep[1]);
        cameraAngle.y += (cameraPan->angleStep[2]);
        cameraAngle.z += (cameraPan->angleStep[3]);

        cameraPan->target->x += cameraPan->positionStep[1];
        cameraPan->target->y += cameraPan->positionStep[2];
        cameraPan->target->z += cameraPan->positionStep[3];
    }

    Camera_SetAngleAroundTarget(&cameraAngle, cameraPan->camera);

    return panComplete;
}

void CutsceneModel_Update(CutsceneModel *model)
{
    if (model->loaded == 0) {
        return;
    }

    if (model->playing) {
        BOOL animFinished = 0;

        if (model->looping) {
            if (model->pose == 0) {
                Easy3DAnim_UpdateLooped(&model->anims[0], model->animSpeed);
            } else {
                PoseSequence_UpdateMovement(model);
                PoseSequence_UpdateAnimFrame(model);
            }
        } else {
            if (model->useAllAnimTracks) {
                for (int i = 0; i < 4; i++) {
                    animFinished = Easy3DAnim_Update(&model->anims[i], model->animSpeed);
                }
            } else {
                animFinished = Easy3DAnim_Update(&model->anims[0], model->animSpeed);
            }
        }

        if (model->loopSecondaryAnim) {
            Easy3DAnim_UpdateLooped(&model->anims[1], model->animSpeed);
        }

        if (model->playSecondaryAnim) {
            Easy3DAnim_Update(&model->anims[1], model->animSpeed);
        }

        if (animFinished == TRUE) {
            model->playing = 0;
        }
    }

    NNS_G3dGePushMtx();
    Easy3DObject_Draw(&model->object);
    NNS_G3dGePopMtx(1);
}

void CutsceneModel_ReleaseModel(CutsceneModel *model)
{
    Easy3DModel_Release(&model->model);
}

void CutsceneModel_ReleaseAnim(int index, CutsceneModel *model, NNSFndAllocator *allocator)
{
    Easy3DAnim_Release(&model->anims[index], allocator);
}

void CutsceneModel_Release(CutsceneModel *model, NNSFndAllocator *allocator, int animCount)
{
    CutsceneModel_ReleaseModel(model);

    for (int i = 0; i < animCount; i++) {
        CutsceneModel_ReleaseAnim(i, model, allocator);
    }
}

void CutsceneModel_LoadMesh(CutsceneModel *model, int narcMemberIndex, NARC *narc)
{
    Easy3DModel_LoadFrom(&model->model, narc, narcMemberIndex, HEAP_ID_SPEAR_PILLAR_CUTSCENE);
    Easy3DObject_Init(&model->object, &model->model);
    Easy3DObject_SetPosition(&model->object, 0, 0, 0);
    Easy3DObject_SetScale(&model->object, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    Easy3DObject_SetVisible(&model->object, 1);

    model->loaded = 1;
}

void CutsceneModel_CloneMesh(CutsceneModel *source, CutsceneModel *model, int narcMemberIndex, NARC *narc)
{
    Easy3DObject_Init(&model->object, &source->model);
    Easy3DObject_SetPosition(&model->object, 0, 0, 0);
    Easy3DObject_SetScale(&model->object, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    Easy3DObject_SetVisible(&model->object, 1);

    model->loaded = 1;
}

void CutsceneModel_LoadAnim(int index, CutsceneModel *model, int narcMemberIndex, NARC *narc, NNSFndAllocator *allocator)
{
    Easy3DAnim_LoadFrom(&model->anims[index], &model->model, narc, narcMemberIndex, 111, allocator);
    Easy3DAnim_SetFrame(&model->anims[index], 0);
    Easy3DObject_AddAnim(&model->object, &model->anims[index]);

    model->animSpeed = FX32_CONST(1);
    model->poseStepIndex = 0xFF;
    model->poseRepeatsLeft = 0xFF;
}

void CutsceneModel_CloneAnim(int index, CutsceneModel *source, CutsceneModel *model, int narcMemberIndex, NARC *narc, NNSFndAllocator *allocator)
{
    Easy3DAnim_LoadFrom(&model->anims[index], &source->model, narc, narcMemberIndex, 111, allocator);
    Easy3DAnim_SetFrame(&model->anims[index], 0);
    Easy3DObject_AddAnim(&model->object, &model->anims[index]);

    model->animSpeed = FX32_CONST(1);
    model->poseStepIndex = 0xFF;
    model->poseRepeatsLeft = 0xFF;
}

void SpearPillarCutscene_UpdateBackgroundPulse(CutsceneGraphics *graphics)
{
    if (graphics->flashState == 0) {
        if (graphics->flashIntensity < 31) {
            graphics->flashIntensity++;
        } else {
            graphics->flashState ^= 1;
        }
    } else {
        if (graphics->flashIntensity > 0) {
            graphics->flashIntensity--;
        } else {
            graphics->flashState ^= 1;
        }
    }

    PaletteData_Blend(graphics->paletteData, PLTTBUF_SUB_BG, 0, 4, graphics->flashIntensity / 8, 0xCCCC);
    PaletteData_Blend(graphics->paletteData, PLTTBUF_SUB_BG, 4, 6, graphics->flashIntensity / 8, 0xCCCC);
}

void SpearPillarCutscene_UpdateGuardianFlash(CutsceneGraphics *graphics, int guardianIndex)
{
    int profileIndex;
    const u8 intensityDivisor[] = {
        4,
        4,
        4,
    };
    const int intensityRange[][2] = {
        { 0, 31 },
        { 0, 31 },
        { 0, 31 },
    };
    const u8 paletteRange[][2] = {
        { 0, 32 },
        { 0, 32 },
        { 0, 32 },
    };
    const int blendColor[] = {
        0x10,
        0x10,
        0x10,
    };

    profileIndex = guardianIndex;

    if (guardianIndex >= NELEMS(blendColor)) {
        profileIndex = NELEMS(blendColor) - 1;
    }

    if (graphics->flashState == 2) {
        if (graphics->flashTimer < ((profileIndex + 1) * 2)) {
            graphics->flashTimer++;
        } else {
            graphics->flashState = 0;
            graphics->flashTimer = 0;
        }

        return;
    }

    if (graphics->flashState == 0) {
        if (graphics->flashIntensity < intensityRange[profileIndex][1]) {
            graphics->flashIntensity++;
        } else {
            graphics->flashState++;
        }
    } else {
        if (graphics->flashIntensity > intensityRange[profileIndex][0]) {
            graphics->flashIntensity--;
        } else {
            graphics->flashState++;
        }
    }

    PaletteData_Blend(graphics->paletteData, PLTTBUF_SUB_BG, paletteRange[profileIndex][0], paletteRange[profileIndex][1], graphics->flashIntensity / intensityDivisor[profileIndex], blendColor[profileIndex]);
}

void SpearPillarCutscene_SwapDisplay(int screenIs3D)
{
    gSystem.whichScreenIs3D = screenIs3D;
    GXLayers_SwapDisplay();
}

void SpearPillarCutscene_SetBrightness(SpearPillarCutsceneData *cutscene, int brightness)
{
    cutscene->scene.tint.brightness = brightness;
    G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), cutscene->scene.tint.brightness);
    G2S_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), cutscene->scene.tint.brightness);
}
