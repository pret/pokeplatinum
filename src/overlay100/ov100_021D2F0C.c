#include "overlay100/ov100_021D2F0C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"

#include "overlay100/ov100_021D46C8.h"
#include "overlay100/ov100_021D4E04.h"
#include "overlay100/struct_ov100_021D3084.h"
#include "overlay100/struct_ov100_021D36CC.h"
#include "overlay100/struct_ov100_021D37F4.h"
#include "overlay100/struct_ov100_021D4DD8.h"
#include "overlay100/struct_ov100_021D4EBC.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "easy3d_object.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_0202419C.h"

static void ov100_021D3084(UnkStruct_ov100_021D3084 *param0);
static void ov100_021D3400(UnkStruct_ov100_021D3084 *param0);
static void ov100_021D34C0(UnkStruct_ov100_021D3084 *param0);
static void ov100_021D3504(Camera *camera, VecFx32 *param1);
static void ov100_021D3558(UnkStruct_ov100_021D3084 *param0);
void *ov100_021D3620(UnkStruct_ov100_021D4DD8 *param0);
BOOL ov100_021D39E4(void *param0);
BOOL ov100_021D3FD4(void *param0);

static void ov100_021D2F0C(BGL *param0, PaletteData *param1)
{
    int v0 = 12;
    int v1 = 10;
    int v2 = 11;
    int v3 = 12;
    int v4 = 4;
    int v5 = 111;

    sub_02006E3C(v0, v1, param0, v4, 0, 0, 1, v5);
    sub_02006E60(v0, v2, param0, v4, 0, 0, 1, v5);
    PaletteSys_LoadPalette(param1, v0, v3, v5, 1, 0x20 * 1, 0);
}

static void ov100_021D2F64(UnkStruct_ov100_021D3084 *param0)
{
    NARC *v0 = param0->unk_1D28->unk_00;
    BGL *v1 = param0->unk_1D28->unk_0C;
    SpriteRenderer *v2 = param0->unk_1D28->unk_04;
    SpriteGfxHandler *v3 = param0->unk_1D28->unk_08;
    PaletteData *v4 = param0->unk_1D28->unk_10;

    ov100_021D4AC8(&param0->unk_0C.unk_934[0], 84, param0->unk_1D28->unk_00);
    ov100_021D4B4C(0, &param0->unk_0C.unk_934[0], 82, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4B4C(1, &param0->unk_0C.unk_934[0], 83, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    Easy3DObject_SetPosition(&param0->unk_0C.unk_934[0].unk_00, FX32_CONST(-48), FX32_CONST(-5), FX32_CONST(-70));

    param0->unk_0C.unk_934[0].unk_160 = 0;

    ov100_021D4B10(&param0->unk_0C.unk_934[0], &param0->unk_0C.unk_934[1], 84, param0->unk_1D28->unk_00);
    ov100_021D4BA0(0, &param0->unk_0C.unk_934[0], &param0->unk_0C.unk_934[1], 82, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4BA0(1, &param0->unk_0C.unk_934[0], &param0->unk_0C.unk_934[1], 83, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    Easy3DObject_SetPosition(&param0->unk_0C.unk_934[1].unk_00, FX32_CONST(+48), FX32_CONST(-5), FX32_CONST(-70));

    param0->unk_0C.unk_934[1].unk_160 = 0;
    param0->unk_0C.unk_934[0].unk_150 = FX32_CONST(0.1);
    param0->unk_0C.unk_934[1].unk_150 = FX32_CONST(0.1);

    Easy3DObject_SetScale(&param0->unk_0C.unk_934[0].unk_00, param0->unk_0C.unk_934[0].unk_150, FX32_CONST(1.0), param0->unk_0C.unk_934[0].unk_150);
    Easy3DObject_SetScale(&param0->unk_0C.unk_934[1].unk_00, param0->unk_0C.unk_934[1].unk_150, FX32_CONST(1.0), param0->unk_0C.unk_934[1].unk_150);
}

static void ov100_021D3084(UnkStruct_ov100_021D3084 *param0)
{
    NARC *v0 = param0->unk_1D28->unk_00;
    BGL *v1 = param0->unk_1D28->unk_0C;
    SpriteRenderer *v2 = param0->unk_1D28->unk_04;
    SpriteGfxHandler *v3 = param0->unk_1D28->unk_08;
    PaletteData *v4 = param0->unk_1D28->unk_10;

    ov100_021D4AC8(&param0->unk_0C.unk_04, 46, param0->unk_1D28->unk_00);
    ov100_021D4AC8(&param0->unk_0C.unk_314, 24, param0->unk_1D28->unk_00);
    ov100_021D4B4C(0, &param0->unk_0C.unk_314, 22, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4B4C(1, &param0->unk_0C.unk_314, 23, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);

    ov100_021D4AC8(&param0->unk_0C.unk_10DC[0], 79, param0->unk_1D28->unk_00);
    ov100_021D4B4C(0, &param0->unk_0C.unk_10DC[0], 77, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4B4C(1, &param0->unk_0C.unk_10DC[0], 78, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4B4C(2, &param0->unk_0C.unk_10DC[0], 80, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4B4C(3, &param0->unk_0C.unk_10DC[0], 81, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    Easy3DObject_SetPosition(&param0->unk_0C.unk_10DC[0].unk_00, FX32_CONST(-48), FX32_CONST(-10), FX32_CONST(-70));

    param0->unk_0C.unk_10DC[0].unk_160 = 0;
    param0->unk_0C.unk_10DC[0].unk_170 = 0;

    ov100_021D4AC8(&param0->unk_0C.unk_10DC[1], 79, param0->unk_1D28->unk_00);
    ov100_021D4B4C(0, &param0->unk_0C.unk_10DC[1], 77, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4B4C(1, &param0->unk_0C.unk_10DC[1], 78, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4B4C(2, &param0->unk_0C.unk_10DC[1], 80, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    ov100_021D4B4C(3, &param0->unk_0C.unk_10DC[1], 81, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    Easy3DObject_SetPosition(&param0->unk_0C.unk_10DC[1].unk_00, FX32_CONST(+48), FX32_CONST(-10), FX32_CONST(-70));

    param0->unk_0C.unk_10DC[1].unk_160 = 0;
    param0->unk_0C.unk_10DC[1].unk_170 = 0;

    {
        int v5;

        for (v5 = 0; v5 < 4; v5++) {
            ov100_021D4AC8(&param0->unk_0C.unk_16FC[v5], 65, param0->unk_1D28->unk_00);

            Easy3DObject_SetScale(&param0->unk_0C.unk_16FC[v5].unk_00, FX32_CONST(1.2), FX32_CONST(1.0), FX32_CONST(1.2));
        }
    }

    ov100_021D4AC8(&param0->unk_0C.unk_624[0], 66, param0->unk_1D28->unk_00);
    Easy3DObject_SetPosition(&param0->unk_0C.unk_624[0].unk_00, FX32_CONST(-50), FX32_CONST(+0), FX32_CONST(-50));
    ov100_021D4B4C(0, &param0->unk_0C.unk_624[0], 67, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);

    param0->unk_0C.unk_624[0].unk_160 = 1;
    param0->unk_0C.unk_624[0].unk_164 = 1;
    param0->unk_0C.unk_624[0].unk_154 = FX32_HALF;

    Easy3DObject_SetVisibility(&param0->unk_0C.unk_624[0].unk_00, 0);
    Easy3DObject_SetVisibility(&param0->unk_0C.unk_16FC[0].unk_00, 0);

    ov100_021D4AC8(&param0->unk_0C.unk_624[1], 68, param0->unk_1D28->unk_00);
    Easy3DObject_SetPosition(&param0->unk_0C.unk_624[1].unk_00, FX32_CONST(+50), FX32_CONST(+0), FX32_CONST(-50));
    ov100_021D4B4C(0, &param0->unk_0C.unk_624[1], 69, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);

    param0->unk_0C.unk_624[1].unk_160 = 1;
    param0->unk_0C.unk_624[1].unk_164 = 1;
    param0->unk_0C.unk_624[1].unk_154 = FX32_HALF;

    Easy3DObject_SetVisibility(&param0->unk_0C.unk_624[1].unk_00, 0);
    Easy3DObject_SetVisibility(&param0->unk_0C.unk_16FC[1].unk_00, 0);

    if (TrainerInfo_Gender(param0->unk_1D2C->unk_08) != 1) {
        ov100_021D4AC8(&param0->unk_0C.unk_13EC[0], 61, param0->unk_1D28->unk_00);
        ov100_021D4B4C(0, &param0->unk_0C.unk_13EC[0], 62, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    } else {
        ov100_021D4AC8(&param0->unk_0C.unk_13EC[0], 63, param0->unk_1D28->unk_00);
        ov100_021D4B4C(0, &param0->unk_0C.unk_13EC[0], 64, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);
    }

    Easy3DObject_SetPosition(&param0->unk_0C.unk_13EC[0].unk_00, FX32_CONST(1), FX32_CONST(+0), FX32_CONST(+140));

    param0->unk_0C.unk_13EC[0].unk_164 = 1;
    param0->unk_0C.unk_13EC[0].unk_154 = (FX32_HALF >> 1);
    param0->unk_0C.unk_13EC[0].unk_158 = 2;

    ov100_021D4AC8(&param0->unk_0C.unk_13EC[1], 13, param0->unk_1D28->unk_00);
    Easy3DObject_SetPosition(&param0->unk_0C.unk_13EC[1].unk_00, FX32_CONST(1), FX32_CONST(+0), FX32_CONST(+60));
    ov100_021D4B4C(0, &param0->unk_0C.unk_13EC[1], 14, param0->unk_1D28->unk_00, &param0->unk_1D28->unk_1C);

    param0->unk_0C.unk_13EC[1].unk_164 = 1;
    param0->unk_0C.unk_13EC[1].unk_154 = (FX32_HALF >> 1);
    param0->unk_0C.unk_13EC[1].unk_158 = 2;
}

static void ov100_021D3400(UnkStruct_ov100_021D3084 *param0)
{
    ov100_021D4AA4(&param0->unk_0C.unk_04, &param0->unk_1D28->unk_1C, 0);

    {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            ov100_021D4AA4(&param0->unk_0C.unk_16FC[v0], &param0->unk_1D28->unk_1C, 0);
        }
    }

    ov100_021D4AA4(&param0->unk_0C.unk_314, &param0->unk_1D28->unk_1C, 2);

    ov100_021D4AA4(&param0->unk_0C.unk_624[0], &param0->unk_1D28->unk_1C, 1);
    ov100_021D4AA4(&param0->unk_0C.unk_624[1], &param0->unk_1D28->unk_1C, 1);

    ov100_021D4AA4(&param0->unk_0C.unk_934[0], &param0->unk_1D28->unk_1C, 2);
    ov100_021D4AA4(&param0->unk_0C.unk_934[1], &param0->unk_1D28->unk_1C, 2);

    ov100_021D4AA4(&param0->unk_0C.unk_13EC[0], &param0->unk_1D28->unk_1C, 1);
    ov100_021D4AA4(&param0->unk_0C.unk_13EC[1], &param0->unk_1D28->unk_1C, 1);
}

static void ov100_021D34C0(UnkStruct_ov100_021D3084 *param0)
{
    ov100_021D4AA4(&param0->unk_0C.unk_10DC[0], &param0->unk_1D28->unk_1C, 4);
    ov100_021D4AA4(&param0->unk_0C.unk_10DC[1], &param0->unk_1D28->unk_1C, 4);

    param0->unk_0C.unk_10DC[0].unk_174 = 0;
    param0->unk_0C.unk_10DC[1].unk_174 = 0;
}

static void ov100_021D3504(Camera *camera, VecFx32 *param1)
{
    CameraAngle v0 = { -0x29fe, 0, 0 };

    Camera_InitWithTarget(param1, 0x13c805, &v0, 0xc01, 0, 1, camera);
    Camera_SetAsActive(camera);
    Camera_SetClipping(FX32_ONE * 10, FX32_ONE * 1008, camera);
}

static void ov100_021D3558(UnkStruct_ov100_021D3084 *param0)
{
    sub_020241B4();
    Camera_ComputeViewMatrix();

    ov100_021D47A0(param0->unk_1D28);
    ov100_021D4844(param0->unk_1D28);

    ov100_021D49B4(&param0->unk_0C.unk_04);
    ov100_021D49B4(&param0->unk_0C.unk_314);

    ov100_021D49B4(&param0->unk_0C.unk_624[0]);
    ov100_021D49B4(&param0->unk_0C.unk_624[1]);

    ov100_021D49B4(&param0->unk_0C.unk_10DC[0]);
    ov100_021D49B4(&param0->unk_0C.unk_10DC[1]);

    ov100_021D49B4(&param0->unk_0C.unk_934[0]);
    ov100_021D49B4(&param0->unk_0C.unk_934[1]);

    ov100_021D49B4(&param0->unk_0C.unk_13EC[0]);
    ov100_021D49B4(&param0->unk_0C.unk_13EC[1]);

    ov100_021D49B4(&param0->unk_0C.unk_16FC[0]);
    ov100_021D49B4(&param0->unk_0C.unk_16FC[1]);
    ov100_021D49B4(&param0->unk_0C.unk_16FC[2]);
    ov100_021D49B4(&param0->unk_0C.unk_16FC[3]);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
}

void *ov100_021D3620(UnkStruct_ov100_021D4DD8 *param0)
{
    UnkStruct_ov100_021D3084 *v0 = Heap_AllocFromHeap(111, sizeof(UnkStruct_ov100_021D3084));

    memset(v0, 0, sizeof(UnkStruct_ov100_021D3084));

    v0->unk_1D28 = &param0->unk_0C;
    v0->unk_1D2C = param0->unk_D0;

    ov100_021D3084(v0);
    ov100_021D2F0C(v0->unk_1D28->unk_0C, v0->unk_1D28->unk_10);

    {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 7, 8);
        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 10);

        {
            static const GXRgb v1[8] = {
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
            G3X_SetEdgeColorTable(v1);
        }
    }

    v0->unk_1D28->unk_44.z = FX32_CONST(34);

    ov100_021D3504(v0->unk_1D28->camera, &v0->unk_1D28->unk_44);
    sub_02004550(63, 0, 0);

    return v0;
}

static void ov100_021D36CC(SysTask *param0, void *param1)
{
    UnkStruct_ov100_021D36CC *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        v0->unk_10->unk_08 = 2;

        if (v0->unk_08) {
            if ((v0->unk_00 == 4) || (v0->unk_00 == 6)) {
                v0->unk_10->unk_18 = +FX32_CONST(2);
            } else if (v0->unk_00 == 5) {
                v0->unk_10->unk_18 = +FX32_CONST(4);
            } else if (v0->unk_00 == 0xFF) {
                v0->unk_10->unk_18 = +FX32_CONST(6);
            } else if (v0->unk_00 == 7) {
                v0->unk_10->unk_18 = +FX32_CONST(2);
                v0->unk_10->unk_08 = 4;
            }
        } else {
            if ((v0->unk_00 == 4) || (v0->unk_00 == 6)) {
                v0->unk_10->unk_18 = -FX32_CONST(2);
            } else if (v0->unk_00 == 5) {
                v0->unk_10->unk_18 = -FX32_CONST(4);
            } else if (v0->unk_00 == 0xFF) {
                v0->unk_10->unk_18 = -FX32_CONST(6);
            } else if (v0->unk_00 == 7) {
                v0->unk_10->unk_18 = -FX32_CONST(2);
                v0->unk_10->unk_08 = 4;
            }
        }

        v0->unk_08 ^= 1;
        v0->unk_10->unk_1C = 0;
        v0->unk_10->unk_20 = 0;
        ov100_021D4890(v0->unk_10);
        v0->unk_04++;
    case 1:
        if (ov100_021D4920(v0->unk_10)) {
            if (v0->unk_00 == 8) {
                v0->unk_04++;
            } else {
                v0->unk_04--;
            }
        }
        break;
    default:
        SysTask_Done(param0);
        break;
    }
}

static void ov100_021D37B0(UnkStruct_ov100_021D3084 *param0)
{
    param0->unk_1D28->unk_58.unk_0C = 0;
    param0->unk_1D28->unk_58.unk_10 = 0;
    param0->unk_1D28->unk_58.unk_14 = 0;
    param0->unk_1D28->unk_58.unk_04 = &param0->unk_1D28->unk_44;
    param0->unk_1D28->unk_AC.unk_10 = &param0->unk_1D28->unk_58;
    param0->unk_1D28->unk_AC.unk_00 = 0;

    SysTask_Start(ov100_021D36CC, &param0->unk_1D28->unk_AC, 0x1000);
}

static void ov100_021D37F4(SysTask *param0, void *param1)
{
    UnkStruct_ov100_021D37F4 *v0 = param1;
    f32 v1[] = {
        0.0f,
        0.3f,
        0.6f,
        1.0f,
        1.2f,
        1.1f,
        1.0f,
    };

    switch (v0->unk_00) {
    case 0:
        Easy3DObject_SetScale(&v0->unk_10->unk_00, FX32_CONST(v1[v0->unk_04]), FX32_CONST(1.00f), FX32_CONST(1.00f));
        Easy3DObject_SetScale(&v0->unk_14->unk_00, FX32_CONST(v1[v0->unk_04]), FX32_CONST(1.00f), FX32_CONST(1.00f));

        v0->unk_04++;

        Easy3DObject_SetVisibility(&v0->unk_10->unk_00, 1);
        Easy3DObject_SetVisibility(&v0->unk_14->unk_00, 1);

        v0->unk_00++;
        break;
    case 1:
        if ((++v0->unk_04) >= NELEMS(v1)) {
            Sound_PlayPokemonCry(0, v0->unk_08, v0->unk_0C, 80, 111, 0);
            v0->unk_00++;
        } else {
            Easy3DObject_SetScale(&v0->unk_10->unk_00, FX32_CONST(v1[v0->unk_04]), FX32_CONST(1.00f), FX32_CONST(1.00f));
            Easy3DObject_SetScale(&v0->unk_14->unk_00, FX32_CONST(v1[v0->unk_04]), FX32_CONST(1.00f), FX32_CONST(1.00f));
        }
        break;
    default:
        SysTask_Done(param0);
        break;
    }
}

static void ov100_021D398C(UnkStruct_ov100_021D3084 *param0, int param1, int param2)
{
    UnkStruct_ov100_021D37F4 *v0 = &param0->unk_1D30[param1];

    v0->unk_00 = 0;
    v0->unk_04 = 0;
    v0->unk_08 = param2;
    v0->unk_10 = &param0->unk_0C.unk_624[param1];
    v0->unk_14 = &param0->unk_0C.unk_16FC[param1];

    if (param1 == 0) {
        v0->unk_0C = -80;
    } else {
        v0->unk_0C = +80;
    }

    SysTask_Start(ov100_021D37F4, v0, 0x1000);
}

BOOL ov100_021D39E4(void *param0)
{
    UnkStruct_ov100_021D3084 *v0 = param0;

    switch (v0->unk_00) {
    case 0:
        if (ScreenWipe_Done() == 0) {
            break;
        }

        v0->unk_00++;
    case 1: {
        v0->unk_1D28->unk_58.unk_0C = 0;
        v0->unk_1D28->unk_58.unk_10 = 0;
        v0->unk_1D28->unk_58.unk_14 = 0;
        v0->unk_1D28->unk_58.unk_08 = 60;
        v0->unk_1D28->unk_58.camera = v0->unk_1D28->camera;
        v0->unk_1D28->unk_58.unk_18 = 0;
        v0->unk_1D28->unk_58.unk_1C = 0;
        v0->unk_1D28->unk_58.unk_20 = -FX32_CONST(80 - 34);
        v0->unk_1D28->unk_58.unk_04 = &v0->unk_1D28->unk_44;
        ov100_021D4890(&v0->unk_1D28->unk_58);
        v0->unk_00++;
    }
    case 2:
        if (ov100_021D4920(&v0->unk_1D28->unk_58)) {
            v0->unk_04 = 0;
            v0->unk_00++;
            ov100_021D46C8(v0->unk_1D28, v0->unk_1D2C, 14);
        }
        break;
    case 3:
        if (Text_IsPrinterActive(v0->unk_1D28->unk_40)) {
            break;
        }

        ov100_021D4788(v0->unk_1D28);
        ov100_021D46C8(v0->unk_1D28, v0->unk_1D2C, 16);
        v0->unk_00++;
    case 4:
        if (Text_IsPrinterActive(v0->unk_1D28->unk_40)) {
            break;
        }

        {
            UnkStruct_ov100_021D4EBC v1 = {
                GX_DISPMODE_VRAM_C,
                GX_BGMODE_0,
                GX_BG0_AS_3D,
                GX_CAPTURE_SIZE_256x192,
                GX_CAPTURE_MODE_AB,
                GX_CAPTURE_SRCA_2D3D,
                GX_CAPTURE_SRCB_VRAM_0x00000,
                GX_CAPTURE_DEST_VRAM_C_0x00000,
                4,
                12,
                111
            };

            v0->unk_1D28->unk_54 = ov100_021D4EBC(&v1);
        }

        ov100_021D37B0(v0);
        ov100_021D4788(v0->unk_1D28);

        v0->unk_0C.unk_10DC[0].unk_160 = 1;
        v0->unk_0C.unk_10DC[0].unk_170 = 1;
        v0->unk_00++;
    case 5:
        if ((++v0->unk_04) >= 60) {
            v0->unk_1D28->unk_AC.unk_00 = 4;
            v0->unk_0C.unk_10DC[1].unk_160 = 1;
            v0->unk_0C.unk_10DC[1].unk_170 = 1;
            v0->unk_00++;
        }
        break;
    case 6:
        v0->unk_04++;

        if (v0->unk_04 == 80) {
            sub_02005728(1746, -70);
        }

        if (v0->unk_04 == 135) {
            sub_02005728(1746, +70);
        }

        if ((v0->unk_04 == 310) || (v0->unk_04 == 375) || (v0->unk_04 == 432)) {
            Sound_PlayEffect(1748);
        }

        if ((v0->unk_04 == 284) || (v0->unk_04 == 338) || (v0->unk_04 == 406)) {
            Sound_PlayEffect(1749);
        }

        if (v0->unk_04 == 165) {
            sub_02005728(1747, -70);
        }

        if (v0->unk_04 == 220) {
            sub_02005728(1747, +70);
        }

        if (v0->unk_04 == 470) {
            sub_02005728(1750, -70);
        }

        if (v0->unk_04 == 520) {
            sub_02005728(1750, +70);
        }

        if (v0->unk_04 == 120) {
            v0->unk_1D28->unk_AC.unk_00 = 5;
        }

        if (v0->unk_04 == 210) {
            v0->unk_1D28->unk_AC.unk_00 = 0xFF;
        }

        if (v0->unk_0C.unk_10DC[0].unk_160 == 0) {
            v0->unk_1D28->unk_AC.unk_00 = 6;
            ov100_021D398C(v0, 0, 483);
            sub_02005728(1751, -70);
            v0->unk_00++;
        }
        break;
    case 7:
        if (v0->unk_0C.unk_10DC[1].unk_160 == 0) {
            v0->unk_1D28->unk_AC.unk_00 = 7;
            ov100_021D398C(v0, 1, 484);
            sub_02005728(1751, +70);
            v0->unk_00++;
            v0->unk_04 = 0;
        }
        break;
    case 8:
        if ((++v0->unk_04) >= 30) {
            v0->unk_04 = 0;
            v0->unk_00++;
        }
        break;
    case 9:
        v0->unk_1D28->unk_AC.unk_00 = 8;

        if (v0->unk_08 == 0) {
            if (v0->unk_1D28->unk_50.unk_03 < 8) {
                v0->unk_1D28->unk_50.unk_03 += 1;
                G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1D28->unk_50.unk_03);
            } else {
                v0->unk_08 = 1;
            }
        } else {
            if (v0->unk_1D28->unk_50.unk_03 > 0) {
                v0->unk_1D28->unk_50.unk_03 -= 2;
                G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1D28->unk_50.unk_03);
            } else {
                v0->unk_00++;
                v0->unk_08 = 0;
            }
        }
        break;
    case 10:
        if (v0->unk_08 == 0) {
            if (v0->unk_1D28->unk_50.unk_03 < 12) {
                v0->unk_1D28->unk_50.unk_03 += 1;
                G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1D28->unk_50.unk_03);
            } else {
                v0->unk_08 = 1;
            }
        } else {
            if (v0->unk_1D28->unk_50.unk_03 > 0) {
                v0->unk_1D28->unk_50.unk_03 -= 2;
                G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1D28->unk_50.unk_03);
            } else {
                v0->unk_00++;
                v0->unk_08 = 0;
            }
        }
        break;
    case 11:
        if (v0->unk_1D28->unk_50.unk_03 < (+16)) {
            v0->unk_1D28->unk_50.unk_03 += 2;
            G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1D28->unk_50.unk_03);
        } else {
            ov100_021D34C0(v0);
            ov100_021D2F64(v0);
            v0->unk_00++;
        }
        break;
    case 12:
        if (v0->unk_1D28->unk_50.unk_03 != 0) {
            v0->unk_1D28->unk_50.unk_03--;
            G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1D28->unk_50.unk_03);
        } else {
            {
                UnkStruct_ov100_021D4EBC v2 = {
                    GX_DISPMODE_VRAM_C, GX_BGMODE_0, GX_BG0_AS_3D, GX_CAPTURE_SIZE_256x192, GX_CAPTURE_MODE_AB, GX_CAPTURE_SRCA_2D3D, GX_CAPTURE_SRCB_VRAM_0x00000, GX_CAPTURE_DEST_VRAM_C_0x00000, 4, 12, 111
                };
            }

            v0->unk_0C.unk_934[0].unk_160 = 1;
            v0->unk_0C.unk_934[0].unk_164 = 1;
            v0->unk_0C.unk_934[0].unk_16C = 1;
            v0->unk_0C.unk_934[1].unk_160 = 1;
            v0->unk_0C.unk_934[1].unk_164 = 1;
            v0->unk_0C.unk_934[1].unk_16C = 1;
            v0->unk_00++;
        }
        break;
    case 13:
        if (v0->unk_0C.unk_934[0].unk_150 < FX32_CONST(0.80)) {
            v0->unk_0C.unk_934[0].unk_150 += FX32_CONST(0.02);
            v0->unk_0C.unk_934[1].unk_150 += FX32_CONST(0.02);
            Easy3DObject_SetScale(&v0->unk_0C.unk_934[0].unk_00, v0->unk_0C.unk_934[0].unk_150, FX32_CONST(1.0), v0->unk_0C.unk_934[0].unk_150);
            Easy3DObject_SetScale(&v0->unk_0C.unk_934[1].unk_00, v0->unk_0C.unk_934[1].unk_150, FX32_CONST(1.0), v0->unk_0C.unk_934[1].unk_150);
        } else {
            ov100_021D46C8(v0->unk_1D28, v0->unk_1D2C, 18);
            v0->unk_00++;
        }
        break;
    case 14:
        if (Text_IsPrinterActive(v0->unk_1D28->unk_40)) {
            break;
        }

        ov100_021D4788(v0->unk_1D28);
        ov100_021D46C8(v0->unk_1D28, v0->unk_1D2C, 19);

        v0->unk_00++;
        break;
    case 15:
        if (Text_IsPrinterActive(v0->unk_1D28->unk_40)) {
            break;
        }

        if (v0->unk_0C.unk_934[0].unk_150 > FX32_CONST(0.10)) {
            v0->unk_0C.unk_934[0].unk_150 -= FX32_CONST(0.02);
            v0->unk_0C.unk_934[1].unk_150 -= FX32_CONST(0.02);
            Easy3DObject_SetScale(&v0->unk_0C.unk_934[0].unk_00, v0->unk_0C.unk_934[0].unk_150, FX32_CONST(1.0), v0->unk_0C.unk_934[0].unk_150);
            Easy3DObject_SetScale(&v0->unk_0C.unk_934[1].unk_00, v0->unk_0C.unk_934[1].unk_150, FX32_CONST(1.0), v0->unk_0C.unk_934[1].unk_150);
        } else {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, 111);
            v0->unk_00++;
        }
        break;
    case 16:
        if (ScreenWipe_Done() == 0) {
            break;
        }

        ov100_021D4788(v0->unk_1D28);
        v0->unk_00++;
        break;
    case 17:
        v0->unk_00 = 0;
        v0->unk_04 = 0;
        return 0;
        break;
    }

    v0->unk_0C.unk_16FC[0].unk_00.position = v0->unk_0C.unk_624[0].unk_00.position;
    v0->unk_0C.unk_16FC[1].unk_00.position = v0->unk_0C.unk_624[1].unk_00.position;
    v0->unk_0C.unk_16FC[2].unk_00.position = v0->unk_0C.unk_13EC[0].unk_00.position;
    v0->unk_0C.unk_16FC[3].unk_00.position = v0->unk_0C.unk_13EC[1].unk_00.position;

    v0->unk_0C.unk_16FC[0].unk_00.position.z -= (FX32_ONE * 2);
    v0->unk_0C.unk_16FC[1].unk_00.position.z -= (FX32_ONE * 2);
    v0->unk_0C.unk_16FC[2].unk_00.position.z -= (FX32_ONE * 2);
    v0->unk_0C.unk_16FC[3].unk_00.position.z -= (FX32_ONE * 2);

    v0->unk_0C.unk_16FC[2].unk_00.position.x -= FX32_ONE;
    v0->unk_0C.unk_16FC[3].unk_00.position.x -= FX32_ONE;

    ov100_021D3558(v0);

    return 1;
}

BOOL ov100_021D3FD4(void *param0)
{
    UnkStruct_ov100_021D3084 *v0 = param0;

    switch (v0->unk_00) {
    case 0:
        ov100_021D3400(v0);
        ov100_021D4F0C(&v0->unk_1D28->unk_54, GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);
        v0->unk_00++;
        break;
    default:
        Heap_FreeToHeap(v0);
        return 0;
    }

    return 1;
}
