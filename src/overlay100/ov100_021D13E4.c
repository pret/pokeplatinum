#include "overlay100/ov100_021D13E4.h"

#include <nitro.h>
#include <string.h>

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

static void ov100_021D1808(UnkStruct_ov100_021D1808 *param0);
static void ov100_021D1A24(UnkStruct_ov100_021D1808 *param0);
static void ov100_021D1A54(UnkStruct_ov100_021D1808 *param0);
static void ov100_021D17B4(UnkStruct_ov100_021D1808 *param0);
static void ov100_021D1758(Camera *camera, VecFx32 *param1);

void *ov100_021D13E4(UnkStruct_ov100_021D4DD8 *param0)
{
    UnkStruct_ov100_021D1808 *v0 = Heap_AllocFromHeap(HEAP_ID_111, sizeof(UnkStruct_ov100_021D1808));

    memset(v0, 0, sizeof(UnkStruct_ov100_021D1808));

    v0->unk_7C4 = &param0->unk_0C;
    v0->unk_7C8 = param0->unk_D0;

    ov100_021D1808(v0);
    ov100_021D1A54(v0);

    {
        ov100_021D4E3C(&v0->unk_0C.unk_00, HEAP_ID_111);
        ov100_021D4E70(&v0->unk_0C.unk_00, 0, 191, (0xffff / 192) * 2, FX32_CONST(2), 1 * 100, REG_DB_BG1HOFS_ADDR, 0, 0x1000, 1);
    }
    {
        UnkStruct_ov100_021D4EBC v1 = {
            GX_DISPMODE_VRAM_C,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
            GX_CAPTURE_SIZE_256x192,
            GX_CAPTURE_MODE_AB,
            GX_CAPTURE_SRCA_3D,
            GX_CAPTURE_SRCB_VRAM_0x00000,
            GX_CAPTURE_DEST_VRAM_C_0x00000,
            4,
            12,
            111
        };
    }

    ov100_021D1758(v0->unk_7C4->camera, &v0->unk_7C4->unk_44);
    v0->unk_7C4->unk_44.y += FX32_CONST(25);

    G2S_BlendNone();
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 7, 8);

    ov100_021D4DC8(1);
    Sound_FadeOutBGM(0, 10);

    return v0;
}

BOOL ov100_021D14A8(void *param0)
{
    UnkStruct_ov100_021D1808 *v0 = param0;
    static const u16 v1[] = {
        210,
        120,
        120,
    };
    static const u16 v2[] = {
        145,
        119,
        100,
    };
    static const u16 v3[] = {
        100,
        19,
        18,
    };
    static const u32 v4[] = {
        480,
        481,
        482,
    };

    switch (v0->unk_00) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_111);
        v0->unk_00++;
    case 1:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }

        Sound_SetSceneAndPlayBGM(SOUND_SCENE_18, SEQ_D_RYAYHY, 0);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_63, SEQ_NONE, 0);
        v0->unk_00 = 2;
        break;
    case 2:
        Easy3DObject_SetVisible(&v0->unk_1A4.unk_00[v0->unk_08].unk_00, 1);
        v0->unk_1A4.unk_00[v0->unk_08].unk_160 = 1;
        v0->unk_1A4.unk_00[v0->unk_08].unk_16C = 1;
        v0->unk_00++;
        v0->unk_04 = 0;
        break;
    case 3:
        if (v0->unk_04 == v3[v0->unk_08]) {
            Sound_PlayEffect(SEQ_SE_PL_W392);
        }

        if (v0->unk_04 == v2[v0->unk_08]) {
            Sound_PlayPokemonCryEx(POKECRY_NORMAL, v4[v0->unk_08], 0, 100, HEAP_ID_111, 0);
        }

        if ((++v0->unk_04) >= v1[v0->unk_08]) {
            v0->unk_7C4->unk_50.unk_03 = 0;
            v0->unk_04 = 0;
            v0->unk_00++;
        }
        break;
    case 4:
        if ((++v0->unk_7C4->unk_50.unk_03) != (+16)) {
            G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, v0->unk_7C4->unk_50.unk_03);
        } else {
            v0->unk_0C.unk_0C[v0->unk_08].unk_3C = 1;
            Easy3DObject_SetVisible(&v0->unk_1A4.unk_00[v0->unk_08].unk_00, 0);
            v0->unk_00++;

            v0->unk_08++;

            if (v0->unk_08 >= 3) {
                v0->unk_7C4->unk_50.unk_03 = 0;
                v0->unk_00 = 6;
            }
        }
        break;
    case 5:
        if ((--v0->unk_7C4->unk_50.unk_03) > 0) {
            G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, v0->unk_7C4->unk_50.unk_03);
        } else {
            v0->unk_00 = 2;
        }
        break;
    case 6:
        if ((++v0->unk_04) < 30 * 4) {
            break;
        }

        if ((++v0->unk_7C4->unk_50.unk_03) != (+16)) {
            G2S_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, v0->unk_7C4->unk_50.unk_03);
        } else {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 1, 1, HEAP_ID_111);
            v0->unk_00 = 0;
            return 0;
        }
    }

    ov100_021D17B4(v0);
    ov100_021D4C94(v0->unk_7C4, v0->unk_08);

    return 1;
}

BOOL ov100_021D16C4(void *param0)
{
    UnkStruct_ov100_021D1808 *v0 = param0;

    switch (v0->unk_00) {
    case 0:
        ov100_021D4E58(&v0->unk_0C.unk_00);
        ov100_021D1A24(v0);

        v0->unk_00++;
        break;
    case 1:
        ov100_021D4AA4(&v0->unk_1A4.unk_00[0], &v0->unk_7C4->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A4.unk_00[1], &v0->unk_7C4->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A4.unk_00[2], &v0->unk_7C4->unk_1C, 2);
        ov100_021D4AA4(&v0->unk_1A4.unk_498, &v0->unk_7C4->unk_1C, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        v0->unk_00++;
        break;
    default:
        Heap_Free(v0);
        return 0;
    }

    return 1;
}

static void ov100_021D1758(Camera *camera, VecFx32 *param1)
{
    CameraAngle v0 = { 1274, 0, 0 };

    Camera_InitWithTarget(param1, FX32_CONST(200), &v0, 0xa66, 0, 1, camera);
    Camera_ComputeProjectionMatrix(0, camera);
    Camera_SetAsActive(camera);
    Camera_SetClipping(FX32_CONST(0.1), FX32_CONST(2048), camera);
}

static void ov100_021D17B4(UnkStruct_ov100_021D1808 *param0)
{
    G3_ResetG3X();
    Camera_ComputeViewMatrix();

    ov100_021D47A0(param0->unk_7C4);
    ov100_021D4844(param0->unk_7C4);

    ov100_021D49B4(&param0->unk_1A4.unk_00[0]);
    ov100_021D49B4(&param0->unk_1A4.unk_00[1]);
    ov100_021D49B4(&param0->unk_1A4.unk_00[2]);
    ov100_021D49B4(&param0->unk_1A4.unk_498);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
}

static void ov100_021D1808(UnkStruct_ov100_021D1808 *param0)
{
    NARC *v0 = param0->unk_7C4->unk_00;
    BgConfig *v1 = param0->unk_7C4->unk_0C;
    SpriteSystem *v2 = param0->unk_7C4->unk_04;
    SpriteManager *v3 = param0->unk_7C4->unk_08;
    PaletteData *v4 = param0->unk_7C4->unk_10;
    int v5 = 50000;

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 70, v1, 5, 0, 0, 0, HEAP_ID_111);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 72, v1, 5, 0, 0, 0, HEAP_ID_111);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 73, v1, 4, 0, 0, 0, HEAP_ID_111);
    PaletteData_LoadBufferFromFileStart(v4, 172, 71, 111, 1, 0x20 * 2, 0);

    {
        const u16 v6[] = { 0x421 };
        PaletteData_LoadBuffer(v4, &v6, 0, 0, 0x2);
    }

    SpriteSystem_LoadPaletteBufferFromOpenNarc(v4, PLTTBUF_SUB_OBJ, v2, v3, v0, 50, FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, v5);
    SpriteSystem_LoadCellResObjFromOpenNarc(v2, v3, v0, 48, FALSE, v5);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v2, v3, v0, 47, FALSE, v5);
    SpriteSystem_LoadCharResObjFromOpenNarc(v2, v3, v0, 49, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, v5);

    ov100_021D4AC8(&param0->unk_1A4.unk_498, 60, param0->unk_7C4->unk_00);

    ov100_021D4AC8(&param0->unk_1A4.unk_00[0], 59, param0->unk_7C4->unk_00);
    ov100_021D4B4C(0, &param0->unk_1A4.unk_00[0], 57, param0->unk_7C4->unk_00, &param0->unk_7C4->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A4.unk_00[0], 58, param0->unk_7C4->unk_00, &param0->unk_7C4->unk_1C);

    ov100_021D4AC8(&param0->unk_1A4.unk_00[1], 45, param0->unk_7C4->unk_00);
    ov100_021D4B4C(0, &param0->unk_1A4.unk_00[1], 43, param0->unk_7C4->unk_00, &param0->unk_7C4->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A4.unk_00[1], 44, param0->unk_7C4->unk_00, &param0->unk_7C4->unk_1C);

    ov100_021D4AC8(&param0->unk_1A4.unk_00[2], 17, param0->unk_7C4->unk_00);
    ov100_021D4B4C(0, &param0->unk_1A4.unk_00[2], 15, param0->unk_7C4->unk_00, &param0->unk_7C4->unk_1C);
    ov100_021D4B4C(1, &param0->unk_1A4.unk_00[2], 16, param0->unk_7C4->unk_00, &param0->unk_7C4->unk_1C);

    Easy3DObject_SetVisible(&param0->unk_1A4.unk_00[0].unk_00, 1);
    Easy3DObject_SetVisible(&param0->unk_1A4.unk_00[1].unk_00, 0);
    Easy3DObject_SetVisible(&param0->unk_1A4.unk_00[2].unk_00, 0);
}

static void ov100_021D1A24(UnkStruct_ov100_021D1808 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        SysTask_Done(param0->unk_0C.unk_0C[v0].unk_40);
        SysTask_Done(param0->unk_0C.unk_D4[v0].unk_40);
        Sprite_DeleteAndFreeResources(param0->unk_0C.unk_0C[v0].unk_00);
        Sprite_DeleteAndFreeResources(param0->unk_0C.unk_D4[v0].unk_00);
    }
}

static void ov100_021D1A54(UnkStruct_ov100_021D1808 *param0)
{
    int v0;
    NARC *v1 = param0->unk_7C4->unk_00;
    BgConfig *v2 = param0->unk_7C4->unk_0C;
    SpriteSystem *v3 = param0->unk_7C4->unk_04;
    SpriteManager *v4 = param0->unk_7C4->unk_08;
    PaletteData *v5 = param0->unk_7C4->unk_10;
    SpriteTemplate v6;

    v6.x = 0;
    v6.y = 0;
    v6.z = 0;
    v6.animIdx = 0;
    v6.priority = 0;
    v6.plttIdx = 0;
    v6.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v6.bgPriority = 2;
    v6.vramTransfer = FALSE;

    v6.resources[4] = SPRITE_RESOURCE_NONE;
    v6.resources[5] = SPRITE_RESOURCE_NONE;

    v6.resources[0] = 50000;
    v6.resources[1] = 50000;
    v6.resources[2] = 50000;
    v6.resources[3] = 50000;

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_0C.unk_D4[v0].unk_00 = SpriteSystem_NewSprite(v3, v4, &v6);

        ManagedSprite_TickFrame(param0->unk_0C.unk_D4[v0].unk_00);
        ManagedSprite_SetDrawFlag(param0->unk_0C.unk_D4[v0].unk_00, 0);
        ManagedSprite_SetExplicitPaletteOffset(param0->unk_0C.unk_D4[v0].unk_00, v0);
        ManagedSprite_SetPositionXY(param0->unk_0C.unk_D4[v0].unk_00, 0, 0);

        param0->unk_0C.unk_D4[v0].unk_0C = 1;
        param0->unk_0C.unk_D4[v0].unk_08 = v0;
        param0->unk_0C.unk_D4[v0].unk_14 = 50;
        param0->unk_0C.unk_D4[v0].unk_1C = v0 * 120;
        param0->unk_0C.unk_D4[v0].unk_20 = param0->unk_0C.unk_D4[v0].unk_1C;
        param0->unk_0C.unk_D4[v0].unk_24 = 0;
        param0->unk_0C.unk_D4[v0].unk_28[0] = 1;
        param0->unk_0C.unk_D4[v0].unk_28[1] = 1;
        param0->unk_0C.unk_D4[v0].unk_28[2] = LCRNG_Next() % 10;
        param0->unk_0C.unk_D4[v0].unk_28[3] = 0;
        param0->unk_0C.unk_D4[v0].unk_40 = SysTask_Start(ov100_021D4438, &param0->unk_0C.unk_D4[v0], 4096 - 1);
    }

    for (v0 = 0; v0 < 3; v0++) {
        s16 v7[] = { 180, -20, 280 };
        s16 v8[] = { 128, 190, 150 };
        f32 v9[] = { 0.1f, 0.3f, 0.2f };

        if (v0 == 1) {
            v6.bgPriority = 0;
        } else {
            v6.bgPriority = 2;
        }

        param0->unk_0C.unk_0C[v0].unk_00 = SpriteSystem_NewSprite(v3, v4, &v6);
        param0->unk_0C.unk_0C[v0].unk_04 = param0->unk_0C.unk_D4[v0].unk_00;

        ManagedSprite_TickFrame(param0->unk_0C.unk_0C[v0].unk_00);
        ManagedSprite_SetAffineOverwriteMode(param0->unk_0C.unk_0C[v0].unk_00, AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAffineScale(param0->unk_0C.unk_0C[v0].unk_00, v9[v0], v9[v0]);
        ManagedSprite_SetExplicitPaletteOffset(param0->unk_0C.unk_0C[v0].unk_00, v0);
        ManagedSprite_SetPositionXY(param0->unk_0C.unk_0C[v0].unk_00, v7[v0], v8[v0]);

        param0->unk_0C.unk_0C[v0].unk_0C = 0;
        param0->unk_0C.unk_0C[v0].unk_08 = v0;
        param0->unk_0C.unk_0C[v0].unk_14 = 50;
        param0->unk_0C.unk_0C[v0].unk_1C = v0 * 120;
        param0->unk_0C.unk_0C[v0].unk_20 = param0->unk_0C.unk_0C[v0].unk_1C;
        param0->unk_0C.unk_0C[v0].unk_24 = 0;
        param0->unk_0C.unk_0C[v0].unk_28[0] = 1;
        param0->unk_0C.unk_0C[v0].unk_28[1] = 1;
        param0->unk_0C.unk_0C[v0].unk_28[2] = LCRNG_Next() % 10;
        param0->unk_0C.unk_0C[v0].unk_28[3] = 0;
        param0->unk_0C.unk_0C[v0].unk_40 = SysTask_Start(ov100_021D4438, &param0->unk_0C.unk_0C[v0], 4096);
    }
}
