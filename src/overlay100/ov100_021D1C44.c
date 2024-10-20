#include "overlay100/ov100_021D1C44.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_template.h"

#include "overlay100/ov100_021D400C.h"
#include "overlay100/ov100_021D44C0.h"
#include "overlay100/ov100_021D46C8.h"
#include "overlay100/ov100_021D4E04.h"
#include "overlay100/struct_ov100_021D1C98.h"
#include "overlay100/struct_ov100_021D4DD8.h"
#include "overlay100/struct_ov100_021D54D0.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "easy3d_object.h"
#include "heap.h"
#include "sys_task.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_0201D15C.h"
#include "unk_0202419C.h"

static void ov100_021D1C98(UnkStruct_ov100_021D1C98 *param0);
static void ov100_021D2324(UnkStruct_ov100_021D1C98 *param0);
static void ov100_021D2250(UnkStruct_ov100_021D1C98 *param0);
static void ov100_021D2E0C(UnkStruct_ov100_021D1C98 *param0);
static void ov100_021D1C44(Camera *camera, VecFx32 *param1);

static UnkStruct_ov100_021D54D0 Unk_ov100_021D54D0[] = {
    { 0x6, 0x4, 0x0 },
    { 0x0, 0x1 }
};

static UnkStruct_ov100_021D54D0 Unk_ov100_021D54E8[] = {
    { 0x6, 0x4, 0x0 },
    { 0x5, 0x4, 0x0 },
    { 0x0, 0x1 }
};

static UnkStruct_ov100_021D54D0 Unk_ov100_021D54B8[] = {
    { 0x1, 0x2, -(FX32_HALF >> 1) },
    { 0x0, 0x1 }
};

static UnkStruct_ov100_021D54D0 Unk_ov100_021D54A0[] = {
    { 0x9, 0x2, -(FX32_HALF >> 1) },
    { 0x0, 0x1 }
};

static void ov100_021D1C44(Camera *camera, VecFx32 *param1)
{
    CameraAngle v0 = { -0x29fe, 0, 0 };

    Camera_InitWithTarget(param1, 0x13c805, &v0, 0xc01, 0, 1, camera);
    Camera_SetAsActive(camera);
    Camera_SetClipping(FX32_ONE * 10, FX32_ONE * 1008, camera);
}

static void ov100_021D1C98(UnkStruct_ov100_021D1C98 *param0)
{
    NARC *v0 = param0->unk_1EBC->unk_00;
    BGL *v1 = param0->unk_1EBC->unk_0C;
    SpriteRenderer *v2 = param0->unk_1EBC->unk_04;
    SpriteGfxHandler *v3 = param0->unk_1EBC->unk_08;
    PaletteData *v4 = param0->unk_1EBC->unk_10;
    int v5 = 50000;

    sub_020070E8(v0, 18, v1, 5, 0, 0, 0, 111);
    sub_0200710C(v0, 20, v1, 5, 0, 0, 0, 111);
    PaletteSys_LoadPalette(v4, 172, 19, 111, 1, 0x20 * 2, 0);
    PaletteSys_LoadPalette(v4, 172, 19, 111, 0, 0x20 * 2, 0);

    SpriteRenderer_LoadPalette(v4, 3, v2, v3, v0, 50, 0, 3, NNS_G2D_VRAM_TYPE_2DSUB, v5);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v2, v3, v0, 48, 0, v5);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v2, v3, v0, 47, 0, v5);
    SpriteRenderer_LoadCharResObjFromOpenNarc(v2, v3, v0, 49, 0, NNS_G2D_VRAM_TYPE_2DSUB, v5);

    ov100_021D4AC8(&param0->unk_1A0.unk_04, 46, param0->unk_1EBC->unk_00);

    {
        int v6;

        for (v6 = 0; v6 < 4; v6++) {
            ov100_021D4AC8(&param0->unk_1A0.unk_16FC[v6], 65, param0->unk_1EBC->unk_00);
            Easy3DObject_SetScale(&param0->unk_1A0.unk_16FC[v6].unk_00, FX32_CONST(1.2), FX32_CONST(1.0), FX32_CONST(1.2));
        }
    }

    ov100_021D4AC8(&param0->unk_1A0.unk_314, 24, param0->unk_1EBC->unk_00);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_314, 22, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A0.unk_314, 23, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    ov100_021D4AC8(&param0->unk_1A0.unk_49C, 53, param0->unk_1EBC->unk_00);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_49C, 51, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A0.unk_49C, 52, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    ov100_021D4AC8(&param0->unk_1A0.unk_18C, 55, param0->unk_1EBC->unk_00);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_18C, 54, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A0.unk_18C, 56, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    ov100_021D4AC8(&param0->unk_1A0.unk_624[0], 66, param0->unk_1EBC->unk_00);
    Easy3DObject_SetPosition(&param0->unk_1A0.unk_624[0].unk_00, FX32_CONST(-50), FX32_CONST(+0), FX32_CONST(-50));
    ov100_021D4B4C(0, &param0->unk_1A0.unk_624[0], 67, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    param0->unk_1A0.unk_624[0].unk_160 = 1;
    param0->unk_1A0.unk_624[0].unk_164 = 1;
    param0->unk_1A0.unk_624[0].unk_154 = FX32_HALF;

    ov100_021D4AC8(&param0->unk_1A0.unk_624[1], 68, param0->unk_1EBC->unk_00);
    Easy3DObject_SetPosition(&param0->unk_1A0.unk_624[1].unk_00, FX32_CONST(+50), FX32_CONST(+0), FX32_CONST(-50));
    ov100_021D4B4C(0, &param0->unk_1A0.unk_624[1], 69, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    param0->unk_1A0.unk_624[1].unk_160 = 1;
    param0->unk_1A0.unk_624[1].unk_164 = 1;
    param0->unk_1A0.unk_624[1].unk_154 = FX32_HALF;

    ov100_021D4AC8(&param0->unk_1A0.unk_934[0], 26, param0->unk_1EBC->unk_00);
    Easy3DObject_SetPosition(&param0->unk_1A0.unk_934[0].unk_00, FX32_CONST(0), FX32_CONST(-90), FX32_CONST(0));
    Easy3DObject_SetVisibility(&param0->unk_1A0.unk_934[0].unk_00, 0);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_934[0], 25, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A0.unk_934[0], 27, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    param0->unk_1A0.unk_934[0].unk_168 = 1;

    ov100_021D4AC8(&param0->unk_1A0.unk_934[1], 29, param0->unk_1EBC->unk_00);
    Easy3DObject_SetVisibility(&param0->unk_1A0.unk_934[1].unk_00, 0);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_934[1], 28, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A0.unk_934[1], 30, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    param0->unk_1A0.unk_934[1].unk_168 = 1;

    ov100_021D4AC8(&param0->unk_1A0.unk_934[2], 32, param0->unk_1EBC->unk_00);
    Easy3DObject_SetVisibility(&param0->unk_1A0.unk_934[2].unk_00, 0);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_934[2], 31, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A0.unk_934[2], 33, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    param0->unk_1A0.unk_934[2].unk_168 = 1;

    ov100_021D4AC8(&param0->unk_1A0.unk_934[3], 35, param0->unk_1EBC->unk_00);
    Easy3DObject_SetVisibility(&param0->unk_1A0.unk_934[3].unk_00, 0);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_934[3], 34, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A0.unk_934[3], 36, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    param0->unk_1A0.unk_934[3].unk_168 = 1;

    ov100_021D4AC8(&param0->unk_1A0.unk_934[4], 38, param0->unk_1EBC->unk_00);
    Easy3DObject_SetVisibility(&param0->unk_1A0.unk_934[4].unk_00, 0);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_934[4], 37, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A0.unk_934[4], 39, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    param0->unk_1A0.unk_934[4].unk_168 = 1;

    ov100_021D4AC8(&param0->unk_1A0.unk_10DC[0], 41, param0->unk_1EBC->unk_00);
    Easy3DObject_SetVisibility(&param0->unk_1A0.unk_10DC[0].unk_00, 0);
    ov100_021D4B4C(0, &param0->unk_1A0.unk_10DC[0], 40, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    ov100_021D4AC8(&param0->unk_1A0.unk_10DC[1], 42, param0->unk_1EBC->unk_00);
    Easy3DObject_SetVisibility(&param0->unk_1A0.unk_10DC[1].unk_00, 0);

    if (TrainerInfo_Gender(param0->unk_1EC0->unk_08) != 1) {
        ov100_021D4AC8(&param0->unk_1A0.unk_13EC[0], 61, param0->unk_1EBC->unk_00);
        ov100_021D4B4C(0, &param0->unk_1A0.unk_13EC[0], 62, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    } else {
        ov100_021D4AC8(&param0->unk_1A0.unk_13EC[0], 63, param0->unk_1EBC->unk_00);
        ov100_021D4B4C(0, &param0->unk_1A0.unk_13EC[0], 64, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);
    }

    Easy3DObject_SetPosition(&param0->unk_1A0.unk_13EC[0].unk_00, FX32_CONST(1), FX32_CONST(+0), FX32_CONST(+140));

    param0->unk_1A0.unk_13EC[0].unk_164 = 1;
    param0->unk_1A0.unk_13EC[0].unk_154 = (FX32_HALF >> 1);
    param0->unk_1A0.unk_13EC[0].unk_158 = 2;

    ov100_021D4AC8(&param0->unk_1A0.unk_13EC[1], 13, param0->unk_1EBC->unk_00);
    Easy3DObject_SetPosition(&param0->unk_1A0.unk_13EC[1].unk_00, FX32_CONST(1), FX32_CONST(+0), FX32_CONST(+60));
    ov100_021D4B4C(0, &param0->unk_1A0.unk_13EC[1], 14, param0->unk_1EBC->unk_00, &param0->unk_1EBC->unk_1C);

    param0->unk_1A0.unk_13EC[1].unk_164 = 1;
    param0->unk_1A0.unk_13EC[1].unk_154 = (FX32_HALF >> 1);
    param0->unk_1A0.unk_13EC[1].unk_158 = 2;
}

static void ov100_021D2250(UnkStruct_ov100_021D1C98 *param0)
{
    int v0;
    NARC *v1 = param0->unk_1EBC->unk_00;
    BGL *v2 = param0->unk_1EBC->unk_0C;
    SpriteRenderer *v3 = param0->unk_1EBC->unk_04;
    SpriteGfxHandler *v4 = param0->unk_1EBC->unk_08;
    PaletteData *v5 = param0->unk_1EBC->unk_10;
    SpriteTemplate v6;

    v6.x = 0;
    v6.y = 0;
    v6.z = 0;
    v6.animIdx = 0;
    v6.priority = 0;
    v6.plttIdx = 0;
    v6.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v6.bgPriority = 0;
    v6.transferToVRAM = FALSE;

    v6.resources[4] = SPRITE_RESOURCE_NONE;
    v6.resources[5] = SPRITE_RESOURCE_NONE;

    v6.resources[0] = 50000;
    v6.resources[1] = 50000;
    v6.resources[2] = 50000;
    v6.resources[3] = 50000;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_08.unk_0C[v0].unk_00 = SpriteActor_LoadResources(v3, v4, &v6);

        sub_0200D330(param0->unk_08.unk_0C[v0].unk_00);
        sub_0200D6A4(param0->unk_08.unk_0C[v0].unk_00, 2);
        sub_0200D6E8(param0->unk_08.unk_0C[v0].unk_00, 0.5f, 0.5f);
        sub_0200D430(param0->unk_08.unk_0C[v0].unk_00, v0);
        SpriteActor_SetSpritePositionXY(param0->unk_08.unk_0C[v0].unk_00, 16 + (v0 * 64), 64);

        param0->unk_08.unk_0C[v0].unk_0C = 1;
        param0->unk_08.unk_0C[v0].unk_08 = v0;
        param0->unk_08.unk_0C[v0].unk_14 = 50;
        param0->unk_08.unk_0C[v0].unk_1C = v0 * 120;
        param0->unk_08.unk_0C[v0].unk_20 = param0->unk_08.unk_0C[v0].unk_1C;
        param0->unk_08.unk_0C[v0].unk_24 = v0;
        param0->unk_08.unk_0C[v0].unk_28[0] = 1;
        param0->unk_08.unk_0C[v0].unk_28[1] = 1;
        param0->unk_08.unk_0C[v0].unk_28[2] = LCRNG_Next() % 10;
        param0->unk_08.unk_0C[v0].unk_28[3] = 0;
        param0->unk_08.unk_0C[v0].unk_40 = SysTask_Start(ov100_021D4414, &param0->unk_08.unk_0C[v0], 4096);
    }
}

static void ov100_021D2324(UnkStruct_ov100_021D1C98 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        SysTask_Done(param0->unk_08.unk_0C[v0].unk_40);
        sub_0200D0F4(param0->unk_08.unk_0C[v0].unk_00);
    }
}

void *ov100_021D2340(UnkStruct_ov100_021D4DD8 *param0)
{
    UnkStruct_ov100_021D1C98 *v0 = Heap_AllocFromHeap(111, sizeof(UnkStruct_ov100_021D1C98));

    memset(v0, 0, sizeof(UnkStruct_ov100_021D1C98));

    v0->unk_1EBC = &param0->unk_0C;
    v0->unk_1EC0 = param0->unk_D0;

    ov100_021D1C98(v0);
    ov100_021D2250(v0);

    {
        ov100_021D4E3C(&v0->unk_08.unk_00, 111);
        ov100_021D4E70(&v0->unk_08.unk_00, 0, 191, ((0xffff / 192) * 2), FX32_CONST(4), (1 * 100), REG_DB_BG1HOFS_ADDR, 0, 0x1000, 1);
    }

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

    ov100_021D1C44(v0->unk_1EBC->camera, &v0->unk_1EBC->unk_44);
    v0->unk_1EBC->unk_44.y = FX32_CONST(0);

    ov100_021D4DC8(1);
    ov100_021D4DD8(param0, (+16));

    return v0;
}

BOOL ov100_021D2428(void *param0)
{
    UnkStruct_ov100_021D1C98 *v0 = (UnkStruct_ov100_021D1C98 *)param0;

    switch (v0->unk_00) {
    case 0:
        sub_0200F174(0, 1, 1, 0x7fff, 6, 1, 111);
        v0->unk_1EBC->unk_50.unk_03 = 0;
        G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1EBC->unk_50.unk_03);
        G2S_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1EBC->unk_50.unk_03);
        v0->unk_00++;
    case 1:
        if (ScreenWipe_Done() == 0) {
            break;
        }
        v0->unk_00++;
        break;
    case 2: {
        v0->unk_1EBC->unk_58.unk_0C = 20;
        v0->unk_1EBC->unk_58.unk_10 = 0;
        v0->unk_1EBC->unk_58.unk_14 = 0;
        v0->unk_1EBC->unk_58.unk_08 = 60;
        v0->unk_1EBC->unk_58.camera = v0->unk_1EBC->camera;
        v0->unk_1EBC->unk_58.unk_18 = 0;
        v0->unk_1EBC->unk_58.unk_1C = 0;
        v0->unk_1EBC->unk_58.unk_20 = 0;
        v0->unk_1EBC->unk_58.unk_04 = &v0->unk_1EBC->unk_44;

        ov100_021D4890(&v0->unk_1EBC->unk_58);
        v0->unk_00++;
    } break;
    case 3:
        if (ov100_021D4920(&v0->unk_1EBC->unk_58)) {
            ov100_021D46C8(v0->unk_1EBC, v0->unk_1EC0, 20);
            v0->unk_00++;
        }
        break;
    case 4:
        if (Text_IsPrinterActive(v0->unk_1EBC->unk_40)) {
            break;
        }

        ov100_021D4788(v0->unk_1EBC);
        v0->unk_00++;
        break;
    case 5: {
        v0->unk_1EBC->unk_58.unk_0C = 0;
        v0->unk_1EBC->unk_58.unk_10 = 0;
        v0->unk_1EBC->unk_58.unk_14 = 0;
        v0->unk_1EBC->unk_58.unk_08 = 60;
        v0->unk_1EBC->unk_58.camera = v0->unk_1EBC->camera;
        v0->unk_1EBC->unk_58.unk_18 = 0;
        v0->unk_1EBC->unk_58.unk_1C = 0;
        v0->unk_1EBC->unk_58.unk_20 = FX32_CONST(70);
        v0->unk_1EBC->unk_58.unk_04 = &v0->unk_1EBC->unk_44;
        ov100_021D4890(&v0->unk_1EBC->unk_58);
        v0->unk_00++;
    } break;
    case 6:
        if (ov100_021D4920(&v0->unk_1EBC->unk_58) == 0) {
            break;
        }

        if (++v0->unk_04 < 10) {
            break;
        }

        ov100_021D46C8(v0->unk_1EBC, v0->unk_1EC0, 21);
        ov100_021D44C0(&v0->unk_1A0.unk_13EC[1], Unk_ov100_021D54D0);

        v0->unk_00++;
        v0->unk_04 = 0;
        break;
    case 7:
        if (Text_IsPrinterActive(v0->unk_1EBC->unk_40)) {
            break;
        }

        ov100_021D4788(v0->unk_1EBC);
        ov100_021D46C8(v0->unk_1EBC, v0->unk_1EC0, 22);
        sub_0200564C(0, 10);
        v0->unk_00++;
        break;
    case 8:
        if (Text_IsPrinterActive(v0->unk_1EBC->unk_40)) {
            break;
        }

        ov100_021D4788(v0->unk_1EBC);
        v0->unk_04++;

        if (v0->unk_04 == 15) {
            {
                int v1;

                for (v1 = 0; v1 < 3; v1++) {
                    v0->unk_08.unk_0C[v1].unk_0C %= 2;
                    v0->unk_08.unk_0C[v1].unk_0C += 2;
                }
            }
        }

        if (v0->unk_04 < 30) {
            break;
        }

        if (v0->unk_04 == 31) {
            (void)0;
        }

        if (v0->unk_1EBC->unk_50.unk_03 > -6) {
            if (v0->unk_04 % 2) {
                v0->unk_1EBC->unk_50.unk_03--;
            }

            G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1EBC->unk_50.unk_03);
            G2S_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1EBC->unk_50.unk_03);
        } else {
            ov100_021D46C8(v0->unk_1EBC, v0->unk_1EC0, 23);

            v0->unk_04 = 0;
            v0->unk_00++;
        }
        break;
    case 9:
        if (Text_IsPrinterActive(v0->unk_1EBC->unk_40)) {
            break;
        }

        ov100_021D4788(v0->unk_1EBC);
        ov100_021D44C0(&v0->unk_1A0.unk_13EC[1], Unk_ov100_021D54E8);

        {
            v0->unk_1EBC->unk_58.unk_0C = 0;
            v0->unk_1EBC->unk_58.unk_10 = 0;
            v0->unk_1EBC->unk_58.unk_14 = 0;
            v0->unk_1EBC->unk_58.unk_08 = 90;
            v0->unk_1EBC->unk_58.camera = v0->unk_1EBC->camera;
            v0->unk_1EBC->unk_58.unk_18 = 0;
            v0->unk_1EBC->unk_58.unk_1C = 0;
            v0->unk_1EBC->unk_58.unk_20 = -FX32_CONST(80);
            v0->unk_1EBC->unk_58.unk_04 = &v0->unk_1EBC->unk_44;
            ov100_021D4890(&v0->unk_1EBC->unk_58);
            v0->unk_00++;
        }
        break;
    case 10:
        if (ov100_021D4920(&v0->unk_1EBC->unk_58) == 0) {
            break;
        }

        v0->unk_00++;
        v0->unk_04 = 0;
        break;
    case 11:
        v0->unk_1A0.unk_10DC[0].unk_160 = 1;
        Easy3DObject_SetVisibility(&v0->unk_1A0.unk_10DC[0].unk_00, 1);
        Sound_PlayBGM(1214);
        sub_02004550(63, 0, 0);
        v0->unk_00++;
        break;
    case 12:
        if ((++v0->unk_04) == 60) {
            ov100_021D44C0(&v0->unk_1A0.unk_13EC[1], Unk_ov100_021D54B8);
        }

        if ((v0->unk_04 == 15) || (v0->unk_04 == 45) || (v0->unk_04 == 75) || (v0->unk_04 == 95) || (v0->unk_04 == 115) || (v0->unk_04 == 130) || (v0->unk_04 == 145)) {
            Sound_PlayEffect(1477);
            sub_02004F7C(1477, 0xffff, (v0->unk_04 / 30 * 32) + (v0->unk_04 % 32 * 10));
        }

        if (v0->unk_1A0.unk_10DC[0].unk_160 == 0) {
            Easy3DObject_SetVisibility(&v0->unk_1A0.unk_10DC[0].unk_00, 0);
            Easy3DObject_SetVisibility(&v0->unk_1A0.unk_10DC[1].unk_00, 1);
            Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[0].unk_00, 1);

            v0->unk_1A0.unk_934[0].unk_160 = 1;
            v0->unk_04 = 0;
            v0->unk_00++;
        }
        break;
    case 13:
        if (v0->unk_1A0.unk_934[0].unk_00.position.y < FX32_CONST(-50)) {
            v0->unk_1A0.unk_934[0].unk_00.position.y += FX32_HALF;
        } else {
            v0->unk_04 = 0;
            v0->unk_00++;
        }
        break;
    case 14:
        if (v0->unk_1A0.unk_934[0].unk_160 == 0) {
            v0->unk_1A0.unk_934[1].unk_00.position.y = v0->unk_1A0.unk_934[0].unk_00.position.y;
            v0->unk_1A0.unk_934[1].unk_160 = 1;
            v0->unk_1A0.unk_934[1].unk_164 = 1;
            v0->unk_1A0.unk_314.unk_160 = 1;
            v0->unk_1A0.unk_314.unk_16C = 1;
            v0->unk_1A0.unk_18C.unk_160 = 1;
            v0->unk_1A0.unk_18C.unk_168 = 1;

            Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[0].unk_00, 0);
            Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[1].unk_00, 1);

            v0->unk_00++;
        }
        break;
    case 15:
        v0->unk_04++;

        if (v0->unk_04 == 1) {
            Sound_PlayEffect(1478);
        }

        if (v0->unk_04 == 20) {
            ov100_021D44C0(&v0->unk_1A0.unk_13EC[1], Unk_ov100_021D54A0);
        }

        if (v0->unk_04 == 15 + 25) {
            Sound_PlayPokemonCry(0, 483, -80, 40, 111, 0);
        }

        if (v0->unk_04 == 40 + 25) {
            Sound_PlayPokemonCry(0, 484, +80, 40, 111, 0);
        }

        if (v0->unk_04 < 15 + 25) {
            v0->unk_1A0.unk_624[0].unk_00.position.z -= FX32_HALF >> 1;
        } else {
            v0->unk_1A0.unk_624[0].unk_00.position.z -= FX32_HALF;
        }

        if (v0->unk_04 < 40 + 25) {
            v0->unk_1A0.unk_624[1].unk_00.position.z -= FX32_HALF >> 1;
        } else {
            v0->unk_1A0.unk_624[1].unk_00.position.z -= FX32_HALF;
        }

        if (v0->unk_1A0.unk_934[1].unk_00.position.y < FX32_CONST(0)) {
            v0->unk_1A0.unk_934[1].unk_00.position.y += FX32_HALF;
        } else {
            v0->unk_1A0.unk_934[1].unk_00.position.y = FX32_CONST(0);
            v0->unk_04 = 0;
            ov100_021D46C8(v0->unk_1EBC, v0->unk_1EC0, 24);
            v0->unk_00++;
        }
        break;
    case 16:
        if (Text_IsPrinterActive(v0->unk_1EBC->unk_40)) {
            break;
        }

        ov100_021D4788(v0->unk_1EBC);

        v0->unk_1A0.unk_49C.unk_160 = 1;
        v0->unk_1A0.unk_49C.unk_164 = 0;
        v0->unk_1A0.unk_49C.unk_16C = 1;
        v0->unk_1A0.unk_934[2].unk_160 = 1;

        Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[1].unk_00, 0);
        Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[2].unk_00, 1);
        Sound_PlayPokemonCry(2, 487, 0, 127, 111, 0);

        v0->unk_04 = 0;
        v0->unk_00++;
        break;
    case 17:
        if (v0->unk_1A0.unk_934[2].unk_160 == 0) {
            ov100_021D46C8(v0->unk_1EBC, v0->unk_1EC0, 25);

            v0->unk_1A0.unk_934[3].unk_160 = 1;
            v0->unk_1A0.unk_934[3].unk_164 = 1;
            v0->unk_1A0.unk_49C.unk_160 = 0;

            Easy3DObject_SetVisibility(&v0->unk_1A0.unk_49C.unk_00, 0);
            Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[2].unk_00, 0);
            Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[3].unk_00, 1);

            v0->unk_00++;
        }
        break;
    case 18:
        if (Text_IsPrinterActive(v0->unk_1EBC->unk_40)) {
            break;
        }

        if (v0->unk_04 == 0) {
            ov100_021D4788(v0->unk_1EBC);
        }

        Sound_PlayBGM(1215);

        v0->unk_1A0.unk_934[4].unk_160 = 1;

        Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[3].unk_00, 0);
        Easy3DObject_SetVisibility(&v0->unk_1A0.unk_934[4].unk_00, 1);
        v0->unk_04 = 0;
        v0->unk_00++;
        break;
    case 19:
        if ((++v0->unk_04) == 238) {
            Sound_PlayPokemonCry(2, 487, 0, 127, 111, 0);
        }

        if (v0->unk_04 == 170) {
            ov100_021D46C8(v0->unk_1EBC, v0->unk_1EC0, 26);
        }

        if (v0->unk_04 == 180) {
            (void)0;
        }

        if (v0->unk_04 == 210) {
            (void)0;
        }

        if (v0->unk_04 == 220) {
            (void)0;
        }

        if (v0->unk_04 == 230) {
            (void)0;
        }

        if (v0->unk_1A0.unk_934[4].unk_160 == 0) {
            if (Text_IsPrinterActive(v0->unk_1EBC->unk_40)) {
                Text_RemovePrinter(v0->unk_1EBC->unk_40);
            }

            v0->unk_1EBC->unk_50.unk_03 = -16;

            G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1EBC->unk_50.unk_03);
            G2S_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1EBC->unk_50.unk_03);

            {
                u16 v2 = sub_020041FC();

                sub_020055D0(v2, 0);
            }

            ov100_021D4788(v0->unk_1EBC);

            v0->unk_00++;
            v0->unk_04 = 0;
        }
        break;
    case 20:
        sub_0200F174(0, 0, 0, 0x0, 1, 1, 111);
        v0->unk_00++;
    case 21:
        if (ScreenWipe_Done() == 0) {
            break;
        }

        v0->unk_1EBC->unk_50.unk_03 = 0;
        G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1EBC->unk_50.unk_03);
        G2S_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), v0->unk_1EBC->unk_50.unk_03);
        v0->unk_00++;
        break;
    default:
        if ((++v0->unk_04) >= 60) {
            v0->unk_00 = 0;
            return 0;
        }

        break;
    }

    v0->unk_1A0.unk_16FC[0].unk_00.position = v0->unk_1A0.unk_624[0].unk_00.position;
    v0->unk_1A0.unk_16FC[1].unk_00.position = v0->unk_1A0.unk_624[1].unk_00.position;
    v0->unk_1A0.unk_16FC[2].unk_00.position = v0->unk_1A0.unk_13EC[0].unk_00.position;
    v0->unk_1A0.unk_16FC[3].unk_00.position = v0->unk_1A0.unk_13EC[1].unk_00.position;
    v0->unk_1A0.unk_16FC[0].unk_00.position.z -= (FX32_ONE * 2);
    v0->unk_1A0.unk_16FC[1].unk_00.position.z -= (FX32_ONE * 2);
    v0->unk_1A0.unk_16FC[2].unk_00.position.z -= (FX32_ONE * 2);
    v0->unk_1A0.unk_16FC[3].unk_00.position.z -= (FX32_ONE * 2);
    v0->unk_1A0.unk_16FC[2].unk_00.position.x -= FX32_ONE;
    v0->unk_1A0.unk_16FC[3].unk_00.position.x -= FX32_ONE;

    ov100_021D2E0C(v0);
    ov100_021D4BF0(v0->unk_1EBC);

    return 1;
}

BOOL ov100_021D2C8C(void *param0)
{
    UnkStruct_ov100_021D1C98 *v0 = (UnkStruct_ov100_021D1C98 *)param0;

    switch (v0->unk_00) {
    case 0:
        ov100_021D2324(v0);
        ov100_021D4E58(&v0->unk_08.unk_00);
        v0->unk_00++;
        break;
    case 1:
        ov100_021D4AA4(&v0->unk_1A0.unk_04, &v0->unk_1EBC->unk_1C, 0);

        {
            int v1;

            for (v1 = 0; v1 < 4; v1++) {
                ov100_021D4AA4(&v0->unk_1A0.unk_16FC[v1], &v0->unk_1EBC->unk_1C, 0);
            }
        }

        ov100_021D4AA4(&v0->unk_1A0.unk_314, &v0->unk_1EBC->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A0.unk_49C, &v0->unk_1EBC->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A0.unk_18C, &v0->unk_1EBC->unk_1C, 2);

        ov100_021D4AA4(&v0->unk_1A0.unk_624[0], &v0->unk_1EBC->unk_1C, 1);
        ov100_021D4AA4(&v0->unk_1A0.unk_624[1], &v0->unk_1EBC->unk_1C, 1);

        ov100_021D4AA4(&v0->unk_1A0.unk_934[0], &v0->unk_1EBC->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A0.unk_934[1], &v0->unk_1EBC->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A0.unk_934[2], &v0->unk_1EBC->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A0.unk_934[3], &v0->unk_1EBC->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A0.unk_934[4], &v0->unk_1EBC->unk_1C, 2);

        ov100_021D4AA4(&v0->unk_1A0.unk_10DC[0], &v0->unk_1EBC->unk_1C, 1);
        ov100_021D4AA4(&v0->unk_1A0.unk_10DC[1], &v0->unk_1EBC->unk_1C, 0);

        ov100_021D4AA4(&v0->unk_1A0.unk_13EC[0], &v0->unk_1EBC->unk_1C, 1);
        ov100_021D4AA4(&v0->unk_1A0.unk_13EC[1], &v0->unk_1EBC->unk_1C, 1);

        v0->unk_00++;
        break;
    default:
        Heap_FreeToHeap(v0);
        return 0;
    }

    return 1;
}

static void ov100_021D2E0C(UnkStruct_ov100_021D1C98 *param0)
{
    sub_020241B4();
    Camera_ComputeViewMatrix();

    ov100_021D47A0(param0->unk_1EBC);
    ov100_021D4844(param0->unk_1EBC);

    ov100_021D49B4(&param0->unk_1A0.unk_04);
    ov100_021D49B4(&param0->unk_1A0.unk_314);
    ov100_021D49B4(&param0->unk_1A0.unk_49C);
    ov100_021D49B4(&param0->unk_1A0.unk_18C);

    ov100_021D49B4(&param0->unk_1A0.unk_10DC[0]);
    ov100_021D49B4(&param0->unk_1A0.unk_10DC[1]);

    ov100_021D49B4(&param0->unk_1A0.unk_934[0]);
    ov100_021D49B4(&param0->unk_1A0.unk_934[1]);
    ov100_021D49B4(&param0->unk_1A0.unk_934[2]);
    ov100_021D49B4(&param0->unk_1A0.unk_934[3]);
    ov100_021D49B4(&param0->unk_1A0.unk_934[4]);

    ov100_021D49B4(&param0->unk_1A0.unk_624[0]);
    ov100_021D49B4(&param0->unk_1A0.unk_624[1]);

    ov100_021D49B4(&param0->unk_1A0.unk_13EC[0]);
    ov100_021D49B4(&param0->unk_1A0.unk_13EC[1]);

    ov100_021D49B4(&param0->unk_1A0.unk_16FC[0]);
    ov100_021D49B4(&param0->unk_1A0.unk_16FC[1]);
    ov100_021D49B4(&param0->unk_1A0.unk_16FC[2]);
    ov100_021D49B4(&param0->unk_1A0.unk_16FC[3]);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
}
