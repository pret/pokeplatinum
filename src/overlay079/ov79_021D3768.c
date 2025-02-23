#include "overlay079/ov79_021D3768.h"

#include <nitro.h>
#include <string.h>

#include "overlay079/struct_ov79_021D3820.h"
#include "overlay079/struct_ov79_021D38D0.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "gx_layers.h"
#include "pokemon.h"
#include "unk_0200762C.h"
#include "unk_0202419C.h"

static void ov79_021D3870(UnkStruct_ov79_021D3820 *param0, int param1);
static void ov79_021D38D0(UnkStruct_ov79_021D3820 *param0, UnkStruct_ov79_021D38D0 *param1, int heapIDs);

void ov79_021D3768(UnkStruct_ov79_021D3820 *param0, UnkStruct_ov79_021D38D0 *param1, int heapID)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_ov79_021D3820));

    NNS_G3dInit();
    G3X_Init();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_AntiAlias(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, 0, 0, 0);
    G3X_SetClearColor(0, 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    ov79_021D3870(param0, heapID);
    ov79_021D38D0(param0, param1, heapID);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
}

void ov79_021D3820(UnkStruct_ov79_021D3820 *param0)
{
    sub_020241B4();
    Camera_ComputeViewMatrix();

    G3_MtxMode(GX_MTXMODE_PROJECTION);
    G3_Identity();
    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    G3_Identity();

    NNS_G3dGlbFlush();
    NNS_G2dSetupSoftwareSpriteCamera();
    sub_02007768(param0->unk_04);

    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void ov79_021D385C(UnkStruct_ov79_021D3820 *param0)
{
    Camera_Delete(param0->camera);
    sub_02007B6C(param0->unk_04);
}

static void ov79_021D3870(UnkStruct_ov79_021D3820 *param0, int param1)
{
    VecFx32 v0 = { 0, 0, 0x10000 };
    CameraAngle v1 = { 0, 0, 0 };
    fx32 v2 = 0x10000;
    u16 v3 = 0x5c1;

    param0->camera = Camera_Alloc(param1);

    Camera_InitWithPosition(&v0, v2, &v1, v3, 1, param0->camera);
    Camera_SetClipping(0, FX32_CONST(100), param0->camera);
    Camera_ReleaseTarget(param0->camera);
    Camera_SetAsActive(param0->camera);
}

static void ov79_021D38D0(UnkStruct_ov79_021D3820 *param0, UnkStruct_ov79_021D38D0 *param1, int heapID)
{
    PokemonSpriteTemplate v0;
    PokemonSprite *v1;

    param0->unk_04 = sub_0200762C(heapID);

    Pokemon_BuildSpriteTemplate(&v0, param1->unk_00, 2);

    v1 = sub_02007C34(param0->unk_04, &v0, 128, 96, 0, 0, NULL, NULL);
    sub_02007DEC(v1, 35, param1->unk_08);

    param0->unk_18 = v1;
}
