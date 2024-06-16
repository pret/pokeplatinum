#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"

#include "struct_defs/archived_sprite.h"
#include "overlay079/struct_ov79_021D3820.h"
#include "overlay079/struct_ov79_021D38D0.h"
#include "overlay115/camera_angle.h"

#include "unk_0200762C.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_0202419C.h"
#include "pokemon.h"
#include "overlay079/ov79_021D3768.h"

static void ov79_021D3870(UnkStruct_ov79_021D3820 * param0, int param1);
static void ov79_021D38D0(UnkStruct_ov79_021D3820 * param0, UnkStruct_ov79_021D38D0 * param1, int param2);

void ov79_021D3768 (UnkStruct_ov79_021D3820 * param0, UnkStruct_ov79_021D38D0 * param1, int param2)
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

    ov79_021D3870(param0, param2);
    ov79_021D38D0(param0, param1, param2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
}

void ov79_021D3820 (UnkStruct_ov79_021D3820 * param0)
{
    sub_020241B4();
    sub_020203EC();

    G3_MtxMode(GX_MTXMODE_PROJECTION);
    G3_Identity();
    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    G3_Identity();

    NNS_G3dGlbFlush();
    NNS_G2dSetupSoftwareSpriteCamera();
    sub_02007768(param0->unk_04);

    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void ov79_021D385C (UnkStruct_ov79_021D3820 * param0)
{
    sub_020203B8(param0->unk_00);
    sub_02007B6C(param0->unk_04);
}

static void ov79_021D3870 (UnkStruct_ov79_021D3820 * param0, int param1)
{
    VecFx32 v0 = {0, 0, 0x10000};
    CameraAngle v1 = {0, 0, 0};
    fx32 v2 = 0x10000;
    u16 v3 = 0x5c1;

    param0->unk_00 = sub_020203AC(param1);

    sub_02020738(&v0, v2, &v1, v3, 1, param0->unk_00);
    sub_020206BC(0, FX32_CONST(100), param0->unk_00);
    sub_020206B0(param0->unk_00);
    sub_020203D4(param0->unk_00);
}

static void ov79_021D38D0 (UnkStruct_ov79_021D3820 * param0, UnkStruct_ov79_021D38D0 * param1, int param2)
{
    ArchivedSprite v0;
    Sprite * v1;

    param0->unk_04 = sub_0200762C(param2);

    Pokemon_BuildArchivedSprite(&v0, param1->unk_00, 2);

    v1 = sub_02007C34(param0->unk_04, &v0, 128, 96, 0, 0, NULL, NULL);
    sub_02007DEC(v1, 35, param1->unk_08);

    param0->unk_18 = v1;
}
