#include "overlay116/ov116_02261870.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay114/ov114_0225C700.h"
#include "overlay116/ov116_0226432C.h"
#include "overlay116/struct_ov116_0226139C.h"
#include "overlay116/struct_ov116_02262A8C.h"
#include "overlay116/struct_ov116_0226501C.h"

#include "camera.h"
#include "easy3d_object.h"
#include "font.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "strbuf.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_0202419C.h"

static inline void inline_ov116_02261940(UnkStruct_ov116_0226501C *param0);
static inline void inline_ov116_02261940_1(void);
static void ov116_02261CD8(SpriteTemplate *param0, s16 param1, s16 param2, int param3, int param4, int param5);
void include_ov116_02261870(void);

void ov116_02261870(Easy3DObject *param0, MtxFx43 *param1, VecFx32 *param2)
{
    if (param0->visible) {
        NNS_G3dGlbFlush();
        NNS_G3dGeTranslateVec(param2);
        NNS_G3dGeMultMtx43(param1);
        NNS_G3dGlbSetBaseScale(&param0->scale);
        NNS_G3dDraw(&param0->renderObj);
    }
}

static inline void inline_ov116_02261940(UnkStruct_ov116_0226501C *param0)
{
    NNS_G3dGePushMtx();
    ov116_02261870(&param0->unk_00, &param0->unk_1B0, &param0->unk_1E0);
    NNS_G3dGePopMtx(1);
}

static inline void inline_ov116_02261940_2(UnkStruct_ov116_0226501C *wk, UnkStruct_ov116_0226501C *wk2)
{
    NNS_G3dGePushMtx();
    ov116_02261870(&wk2->unk_00, &wk->unk_1B0, &wk->unk_1E0);
    NNS_G3dGePopMtx(1);
}

static inline void inline_ov116_02261940_1(void)
{
    VecFx32 v0 = { 0, (-FX32_ONE), (-FX32_ONE) };

    VEC_Normalize(&v0, &v0);

    NNS_G3dGlbLightVector(0, v0.x, v0.y, v0.z);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
}

void ov116_022618A8(UnkStruct_ov116_0226501C *param0, NARC *param1, int param2)
{
    Easy3DModel_LoadFrom(&param0->unk_78, param1, param2, 106);
}

void ov116_022618B4(UnkStruct_ov116_0226501C *param0, int param1)
{
    Easy3DObject_Init(&param0->unk_00, &param0->unk_78);
    Easy3DObject_SetPosition(&param0->unk_00, (0 * FX32_ONE), (-20 * FX32_ONE), (0 * FX32_ONE));

    if (param1 == 0) {
        Easy3DObject_SetScale(&param0->unk_00, FX32_CONST(1.00f), FX32_CONST(1.00f), FX32_CONST(1.00f));
    } else {
        Easy3DObject_SetScale(&param0->unk_00, FX32_CONST(1.50f), FX32_CONST(1.50f), FX32_CONST(1.50f));
    }

    Easy3DObject_SetVisibility(&param0->unk_00, 1);

    param0->unk_1E0.x = (0 * FX32_ONE);
    param0->unk_1E0.y = (-20 * FX32_ONE);
    param0->unk_1E0.z = (0 * FX32_ONE);
    param0->unk_1FC = 0.0f;
    param0->unk_200 = 0.0f;
    param0->unk_1EC = 0;
    param0->unk_1F0 = 1;
}

void ov116_0226192C(UnkStruct_ov116_0226501C *param0)
{
    param0->unk_1F0 = 0;
    Easy3DModel_Release(&param0->unk_78);
}

void ov116_02261940(UnkStruct_ov116_0226139C *param0)
{
    sub_020241B4();
    Camera_ComputeViewMatrix();

    inline_ov116_02261940_1();

    {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            inline_ov116_02261940(&param0->unk_04->unk_B38[v0]);
            Easy3DAnim_UpdateLooped(&param0->unk_04->unk_B38[v0].unk_88[0], FX32_CONST(1));
        }
    }

    switch (param0->unk_04->unk_F8) {
    case 0:
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[0].unk_00, 1);
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[1].unk_00, 0);
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[2].unk_00, 0);
        Easy3DAnim_UpdateLooped(&param0->unk_04->unk_308[0].unk_88[param0->unk_04->unk_308[0].unk_1F4], FX32_CONST(1));
        break;
    case 1:
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[0].unk_00, 0);
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[1].unk_00, 1);
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[2].unk_00, 0);
        Easy3DAnim_Update(&param0->unk_04->unk_308[1].unk_88[0], FX32_CONST(1));
        break;
    case 2:
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[0].unk_00, 0);
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[1].unk_00, 0);
        Easy3DObject_SetVisibility(&param0->unk_04->unk_308[2].unk_00, 1);
        Easy3DAnim_Update(&param0->unk_04->unk_308[2].unk_88[0], FX32_CONST(1));
        break;
    }

    inline_ov116_02261940_2(&param0->unk_04->unk_308[0], &param0->unk_04->unk_308[param0->unk_04->unk_F8]);
    inline_ov116_02261940(&param0->unk_04->unk_FC);
    inline_ov116_02261940(&param0->unk_04->unk_92C);

    if (param0->unk_04->unk_1DA4.unk_1F0) {
        inline_ov116_02261940(&param0->unk_04->unk_1DA4);
        if (param0->unk_04->unk_1DA4.unk_1EC) {
            BOOL v1[2];

            v1[0] = Easy3DAnim_Update(&param0->unk_04->unk_1DA4.unk_88[0], FX32_CONST(1));
            v1[1] = Easy3DAnim_Update(&param0->unk_04->unk_1DA4.unk_88[1], FX32_CONST(1));

            if (v1[0] && v1[1]) {
                param0->unk_04->unk_1DA4.unk_1EC = 0;
            }
        }
    }
    if (param0->unk_04->unk_1B98.unk_1F0) {
        inline_ov116_02261940(&param0->unk_04->unk_1B98);

        if (param0->unk_04->unk_1B98.unk_1EC) {
            Easy3DAnim_UpdateLooped(&param0->unk_04->unk_1B98.unk_88[1], FX32_CONST(1));
        }
    }

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    sub_0200C7EC(param0->unk_48.unk_0C);
}

void ov116_02261C48(UnkStruct_ov116_02262A8C *param0, int param1)
{
    int v0 = param0->unk_308[0].unk_1F4;
    int v1 = param1;

    if (v1 == v0) {
        return;
    }

    Easy3DObject_RemoveAnim(&param0->unk_308[0].unk_00, &param0->unk_308[0].unk_88[v0]);
    param0->unk_308[0].unk_1F4 = param1;
    Easy3DObject_AddAnim(&param0->unk_308[0].unk_00, &param0->unk_308[0].unk_88[v1]);
}

void ov116_02261C88(UnkStruct_ov116_0226139C *param0)
{
    VecFx32 v0 = { 0, 0, 0 };
    VecFx32 v1 = { 0, 0, (FX32_ONE * 160) };

    Camera_InitWithTargetAndPosition(&v0, &v1, 0xb60, 0, 0, param0->unk_48.camera);
    Camera_SetClipping((FX32_ONE * -1000), (FX32_ONE * 1000), param0->unk_48.camera);
    Camera_SetAsActive(param0->unk_48.camera);
}

static void ov116_02261CD8(SpriteTemplate *param0, s16 param1, s16 param2, int param3, int param4, int param5)
{
    param0->x = param1;
    param0->y = param2;
    param0->z = 0;
    param0->animIdx = 0;
    param0->priority = 0;
    param0->vramType = param3;
    param0->bgPriority = 2;
    param0->transferToVRAM = FALSE;
    param0->plttIdx = param4;
    param0->resources[0] = param5;
    param0->resources[1] = param5;
    param0->resources[2] = param5;
    param0->resources[3] = param5;
    param0->resources[4] = SPRITE_RESOURCE_NONE;
    param0->resources[5] = SPRITE_RESOURCE_NONE;
}

static const s16 Unk_ov116_02267A78[][3] = {
    { 0x0, 0x0, 0x0 },
    { 0x80, 0x0, 0x0 },
    { 0x55, 0xAA, 0x0 },
    { 0x40, 0x80, 0xC0 }
};

void ov116_02261D08(UnkStruct_ov116_02262A8C *param0)
{
    SpriteTemplate v0;
    SpriteRenderer *v1 = param0->unk_14->unk_08;
    SpriteGfxHandler *v2 = param0->unk_14->unk_0C;
    PaletteData *v3 = param0->unk_14->unk_14;
    int v4;

    for (v4 = 0; v4 < (3 * 12); v4++) {
        ov116_02261CD8(&v0, v4 * 8, 20, 1, 3, 9006);
        param0->unk_28[v4] = SpriteActor_LoadResources(v1, v2, &v0);
        sub_0200D430(param0->unk_28[v4], 3);
        sub_0200D364(param0->unk_28[v4], (v4 % 11) + 1);
    }

    ov116_02261E0C(param0, 0, 0);
}

void ov116_02261D70(UnkStruct_ov116_02262A8C *param0)
{
    SpriteTemplate v0;
    SpriteRenderer *v1 = param0->unk_14->unk_08;
    SpriteGfxHandler *v2 = param0->unk_14->unk_0C;
    PaletteData *v3 = param0->unk_14->unk_14;
    int v4;
    s16 v5[] = { 72, 180, 24, 232 };

    for (v4 = 0; v4 < 4; v4++) {
        ov116_02261CD8(&v0, v5[v4], (192 + 32), 1, 1, 9004);

        v0.bgPriority = 0;
        v0.priority = 1;
        param0->unk_B8[v4] = SpriteActor_LoadResources(v1, v2, &v0);

        sub_0200D33C(param0->unk_B8[v4]);
        sub_0200D430(param0->unk_B8[v4], 1);
    }
}

void ov116_02261DF0(UnkStruct_ov116_02262A8C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D0F4(param0->unk_B8[v0]);
    }
}

void ov116_02261E0C(UnkStruct_ov116_02262A8C *param0, BOOL param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < (3 * 12); v0++) {
        SpriteActor_EnableObject(param0->unk_28[v0], param1);
    }
}

void ov116_02261E28(UnkStruct_ov116_02262A8C *param0)
{
    int v0;

    for (v0 = 0; v0 < (3 * 12); v0++) {
        sub_0200D33C(param0->unk_28[v0]);
    }
}

void ov116_02261E40(UnkStruct_ov116_02262A8C *param0)
{
    int v0;

    for (v0 = 0; v0 < (3 * 12); v0++) {
        sub_0200D0F4(param0->unk_28[v0]);
    }
}

void include_ov116_02261870(void)
{
    int dummy[][2] = {
        { 0, 2 },
        { 0, 3 },
        { 0, 4 },
        { 1, 2 },
    };

    dummy[0];
}

void ov116_02261E58(UnkStruct_ov116_02262A8C *param0, int param1, int param2)
{
    int v0[][2] = {
        { 0, 2 },
        { 0, 3 },
        { 0, 4 },
        { 1, 2 },
    };

    int v1 = param0->unk_DC[param1];

    sub_0200D364(param0->unk_1C[v1], v0[param2][0]);
    sub_0200D364(param0->unk_20[v1], v0[param2][1]);
}

int ov116_02261EA4(UnkStruct_ov116_02262A8C *param0, int param1)
{
    int v0[][2] = {
        { 0, 2 },
        { 0, 3 },
        { 0, 4 },
        { 1, 2 },
    };

    int v1;
    int v2[2];

    v1 = param0->unk_DC[param1];
    v2[0] = sub_0200D37C(param0->unk_1C[v1]);
    v2[1] = sub_0200D37C(param0->unk_20[v1]);

    {
        int v3;

        for (v3 = 0; v3 < 4; v3++) {
            if ((v2[0] == v0[v3][0]) && (v2[1] == v0[v3][1])) {
                return v3;
            }
        }
    }

    GF_ASSERT(0);

    return 0;
}

void ov116_02261F08(UnkStruct_ov116_02262A8C *param0)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (v0 == param0->unk_00) {
            continue;
        }

        sub_0200D33C(param0->unk_1C[v1]);
        sub_0200D33C(param0->unk_20[v1]);
        sub_0200D33C(param0->unk_24[v1]);

        v1++;
    }
}

void ov116_02261F3C(UnkStruct_ov116_02262A8C *param0)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (v0 == param0->unk_00) {
            continue;
        }

        sub_0200D0F4(param0->unk_1C[v1]);
        sub_0200D0F4(param0->unk_20[v1]);
        sub_0200D0F4(param0->unk_24[v1]);

        v1++;
    }
}

void ov116_02261F70(UnkStruct_ov116_02262A8C *param0)
{
    Window_Init(&param0->unk_1FC8);
    BGL_AddWindow(param0->unk_14->unk_10, &param0->unk_1FC8, 7, 2, 19, 28, 4, 14, 256 + (16 * 3));
    BGL_FillWindow(&param0->unk_1FC8, 0xFF);

    {
        MessageLoader *v0;
        Strbuf *v1;

        v0 = MessageLoader_Init(0, 26, 410, 106);
        v1 = MessageLoader_GetNewStrbuf(v0, 0);

        Text_AddPrinterWithParams(&param0->unk_1FC8, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_INSTANT, NULL);
        Strbuf_Free(v1);
        MessageLoader_Free(v0);
    }

    Window_Show(&param0->unk_1FC8, 0, 180, 13);
    sub_0201A954(&param0->unk_1FC8);
}

void ov116_02262004(UnkStruct_ov116_02262A8C *param0)
{
    if (BGL_WindowAdded(&param0->unk_1FC8) == 1) {
        Window_Clear(&param0->unk_1FC8, 1);
        sub_0201ACF4(&param0->unk_1FC8);
        BGL_DeleteWindow(&param0->unk_1FC8);
    }
}

void ov116_02262034(UnkStruct_ov116_0226139C *param0, int param1)
{
    PaletteData *v0 = param0->unk_48.unk_14;
    static int v1[][4][4 + 1] = {
        {
            { 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
        },
        {
            { 1, 2, 0, 0, 0 },
            { 2, 1, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
            { 0, 0, 0, 0, 0 },
        },
        {
            { 1, 2, 3, 0, 0 },
            { 2, 1, 3, 0, 0 },
            { 3, 1, 2, 0, 0 },
            { 0, 0, 0, 0, 0 },
        },
        {
            { 1, 2, 3, 4, 0 },
            { 2, 1, 3, 4, 0 },
            { 3, 1, 2, 4, 0 },
            { 4, 1, 2, 3, 0 },
        },
    };

    {
        int v2;

        for (v2 = 0; v2 < 4; v2++) {
            sub_02002FEC(v0, 164, 73, 106, 1, 0x20, (v2 + 1) * 16, v1[param0->unk_04->unk_04 - 1][param1][v2 + 1] * 16);
        }
    }
}

static int ov116_0226208C(Window *param0, Strbuf *param1)
{
    int v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param1, 0);
    int v1 = (sub_0201C294(param0) * 8 - v0) / 2;

    return v1;
}

void ov116_022620AC(UnkStruct_ov116_0226139C *param0, UnkStruct_ov116_02262A8C *param1)
{
    int v0;
    int v1 = 0;
    int v2 = 256;
    Window *v3;
    s16 v4[][3][4] = {
        {
            { 12, 8, 8, 2 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
        },
        {
            { 4 + 1, 8, 8, 2 },
            { 18 + 1, 8, 8, 2 },
            { 0, 0, 0, 0 },
        },
        {
            { 0 + 1, 8, 8, 2 },
            { 11 + 1, 8, 8, 2 },
            { 22 + 1, 8, 8, 2 },
        },
    };
    int v5, v6, v7, v8;
    TrainerInfo *v9;
    BOOL v10;

    switch (param1->unk_04) {
    case 2:
        sub_0200710C(param1->unk_14->unk_00, 79, param1->unk_14->unk_10, 7, 0, 0, 0, 106);
        break;
    case 3:
        sub_0200710C(param1->unk_14->unk_00, 80, param1->unk_14->unk_10, 7, 0, 0, 0, 106);
        break;
    case 4:
        sub_0200710C(param1->unk_14->unk_00, 81, param1->unk_14->unk_10, 7, 0, 0, 0, 106);
        break;
    default:
        GF_ASSERT(0);
    }

    for (v0 = 0; v0 < param1->unk_04; v0++) {
        if (v0 == param1->unk_00) {
            continue;
        }

        v10 = ov114_0225C7A4(&param0->unk_84, v0);
        v3 = &param1->unk_1FD8[v1];
        v9 = ov114_0225C7CC(&param0->unk_84, v0);

        Window_Init(v3);

        v5 = v4[param1->unk_04 - 2][v1][0];
        v6 = v4[param1->unk_04 - 2][v1][1];
        v7 = v4[param1->unk_04 - 2][v1][2];
        v8 = v4[param1->unk_04 - 2][v1][3];

        BGL_AddWindow(param1->unk_14->unk_10, v3, 7, v5, v6, v7, v8, 14, v2);
        v2 += (v7 * v8);
        BGL_FillWindow(v3, 0xFF);

        {
            Strbuf *v11;
            int v12;

            v11 = TrainerInfo_NameNewStrbuf(v9, 106);
            v12 = ov116_0226208C(v3, v11);

            if (v10) {
                Text_AddPrinterWithParamsColorAndSpacing(v3, FONT_SYSTEM, v11, v12, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(5, 6, 15), 0, 0, NULL);
            } else {
                Text_AddPrinterWithParamsColorAndSpacing(v3, FONT_SYSTEM, v11, v12, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), 0, 0, NULL);
            }

            Strbuf_Free(v11);
        }

        sub_0201A954(v3);
        v1++;
    }
}

void ov116_02262264(UnkStruct_ov116_02262A8C *param0)
{
    int v0;
    int v1 = 0;
    Window *v2;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (v0 == param0->unk_00) {
            continue;
        }

        if (BGL_WindowAdded(&param0->unk_1FD8[v1]) == 1) {
            Window_Clear(&param0->unk_1FD8[v1], 1);
            sub_0201ACF4(&param0->unk_1FD8[v1]);
            BGL_DeleteWindow(&param0->unk_1FD8[v1]);
        }

        v1++;
    }

    sub_0200710C(param0->unk_14->unk_00, 78, param0->unk_14->unk_10, 7, 0, 0, 0, 106);
}

void ov116_022622C8(UnkStruct_ov116_0226139C *param0)
{
    NARC *v0 = param0->unk_48.unk_00;
    NARC *v1 = param0->unk_48.unk_04;
    BGL *v2 = param0->unk_48.unk_10;
    SpriteRenderer *v3 = param0->unk_48.unk_08;
    SpriteGfxHandler *v4 = param0->unk_48.unk_0C;
    PaletteData *v5 = param0->unk_48.unk_14;
    NARC *v6;
    int v7;
    int v8;
    int v9;
    int v10;
    int v11;
    int v12;

    v6 = v0;
    v7 = 82;
    v8 = 83;
    v9 = 84;
    v10 = 85;
    v11 = 9000;
    v12 = 13;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v3, v4, v6, v9, 0, NNS_G2D_VRAM_TYPE_2DSUB, v11);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v3, v4, v6, v8, 0, v11);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v3, v4, v6, v7, 0, v11);
    SpriteRenderer_LoadPalette(v5, 3, v3, v4, v6, v10, 0, v12, NNS_G2D_VRAM_TYPE_2DSUB, v11);

    v7 = 27;
    v8 = 28;
    v9 = 29;
    v10 = 30;
    v11 = 9003;
    v12 = 1;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v3, v4, v6, v9, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v11);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v3, v4, v6, v8, 0, v11);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v3, v4, v6, v7, 0, v11);
    SpriteRenderer_LoadPalette(v5, 2, v3, v4, v6, v10, 0, v12, NNS_G2D_VRAM_TYPE_2DMAIN, v11);

    v7 = 11;
    v8 = 12;
    v9 = 13;
    v10 = 14;
    v11 = 9004;
    v12 = 1;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v3, v4, v6, v9, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v11);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v3, v4, v6, v8, 0, v11);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v3, v4, v6, v7, 0, v11);
    SpriteRenderer_LoadPalette(v5, 2, v3, v4, v6, v10, 0, v12, NNS_G2D_VRAM_TYPE_2DMAIN, v11);

    v7 = 19;
    v8 = 20;
    v9 = 21;
    v10 = 22;
    v11 = 9005;
    v12 = 1;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v3, v4, v6, v9, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v11);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v3, v4, v6, v8, 0, v11);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v3, v4, v6, v7, 0, v11);
    SpriteRenderer_LoadPalette(v5, 2, v3, v4, v6, v10, 0, v12, NNS_G2D_VRAM_TYPE_2DMAIN, v11);

    v7 = 15;
    v8 = 16;
    v9 = 17;
    v10 = 18;
    v11 = 9006;
    v12 = 1;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v3, v4, v6, v9, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v11);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v3, v4, v6, v8, 0, v11);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v3, v4, v6, v7, 0, v11);
    SpriteRenderer_LoadPalette(v5, 2, v3, v4, v6, v10, 0, v12, NNS_G2D_VRAM_TYPE_2DMAIN, v11);

    v7 = 23;
    v8 = 24;
    v9 = 25;
    v10 = 26;
    v11 = 9002;
    v12 = 3;

    SpriteRenderer_LoadCharResObjFromOpenNarc(v3, v4, v6, v9, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v11);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v3, v4, v6, v8, 0, v11);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v3, v4, v6, v7, 0, v11);
    SpriteRenderer_LoadPalette(v5, 2, v3, v4, v6, v10, 0, v12, NNS_G2D_VRAM_TYPE_2DMAIN, v11);

    {
        NARC *v13 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__WIFI_LOBBY_MINIGAME__WLMNGM_TOOL, 106);

        v7 = 23;
        v8 = 22;
        v9 = 21;
        v10 = 20;
        v11 = 9007;
        v12 = 2;

        SpriteRenderer_LoadCharResObjFromOpenNarc(v3, v4, v13, v9, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v11);
        SpriteRenderer_LoadCellResObjFromOpenNarc(v3, v4, v13, v8, 0, v11);
        SpriteRenderer_LoadAnimResObjFromOpenNarc(v3, v4, v13, v7, 0, v11);
        SpriteRenderer_LoadPalette(v5, 2, v3, v4, v13, v10, 0, v12, NNS_G2D_VRAM_TYPE_2DMAIN, v11);
        NARC_dtor(v13);
    }
}

void ov116_022625A8(UnkStruct_ov116_0226139C *param0, UnkStruct_ov116_02262A8C *param1)
{
    SpriteTemplate v0;
    SpriteRenderer *v1 = param1->unk_14->unk_08;
    SpriteGfxHandler *v2 = param1->unk_14->unk_0C;
    PaletteData *v3 = param1->unk_14->unk_14;
    int v4;
    int v5 = 0;

    for (v4 = 0; v4 < param1->unk_04; v4++) {
        param1->unk_DC[v4] = 0xFF;
        if (v4 == param1->unk_00) {
            continue;
        }

        param1->unk_DC[v4] = v5;
        ov116_02261CD8(&v0, Unk_ov116_02267A78[param1->unk_04 - 1][v5] + 0, (176 + 64), 2, 0, 9000);
        v0.priority = 1;

        param1->unk_1C[v5] = SpriteActor_LoadResources(v1, v2, &v0);
        ov116_02261CD8(&v0, Unk_ov116_02267A78[param1->unk_04 - 1][v5] + 0, ((176 + 64) + 0), 2, 0, 9000);
        v0.priority = 2;

        param1->unk_20[v5] = SpriteActor_LoadResources(v1, v2, &v0);
        sub_0200D430(param1->unk_20[v5], 0 + ov116_02264680(param0, v4));
        ov116_02261CD8(&v0, Unk_ov116_02267A78[param1->unk_04 - 1][v5] + 0, ((176 + 64) + 0), 2, 0, 9000);
        v0.priority = 3;

        param1->unk_24[v5] = SpriteActor_LoadResources(v1, v2, &v0);
        sub_0200D430(param1->unk_24[v5], 0 + ov116_02264680(param0, v4));
        sub_0200D364(param1->unk_24[v5], 5);
        sub_0200D33C(param1->unk_1C[v5]);
        sub_0200D33C(param1->unk_20[v5]);
        sub_0200D33C(param1->unk_24[v5]);
        ov116_02261E58(param1, v4, 0);

        v5++;
    }
}

CellActorData *ov116_022626E8(UnkStruct_ov116_02262A8C *param0, s16 param1, s16 param2)
{
    CellActorData *v0;
    SpriteTemplate v1;
    SpriteRenderer *v2 = param0->unk_14->unk_08;
    SpriteGfxHandler *v3 = param0->unk_14->unk_0C;
    PaletteData *v4 = param0->unk_14->unk_14;

    ov116_02261CD8(&v1, param1, param2, 1, 0, 9003);

    v1.bgPriority = 0;
    v1.priority = 0;
    v0 = SpriteActor_LoadResources(v2, v3, &v1);

    sub_0200D33C(v0);

    return v0;
}

void ov116_02262724(UnkStruct_ov116_02262A8C *param0)
{
    int v0;
    CellActorData *v1;
    SpriteTemplate v2;
    SpriteRenderer *v3 = param0->unk_14->unk_08;
    SpriteGfxHandler *v4 = param0->unk_14->unk_0C;
    PaletteData *v5 = param0->unk_14->unk_14;

    for (v0 = 0; v0 < 2; v0++) {
        ov116_02261CD8(&v2, 0, 0, 1, 4, 9002);

        v2.bgPriority = 2;
        v2.priority = 20;
        param0->unk_D0[v0] = SpriteActor_LoadResources(v3, v4, &v2);

        sub_0200D364(param0->unk_D0[v0], 0);
        sub_0200D330(param0->unk_D0[v0]);
        sub_0200D430(param0->unk_D0[v0], 4);
        SpriteActor_SetOAMMode(param0->unk_D0[v0], GX_OAM_MODE_XLU);
        SpriteActor_EnableObject(param0->unk_D0[v0], 0);

        ov116_02261CD8(&v2, 0, 0, 2, 0, 9000);

        v2.bgPriority = 2;
        v2.priority = 20;
        param0->unk_C8[v0] = SpriteActor_LoadResources(v3, v4, &v2);

        sub_0200D364(param0->unk_C8[v0], 6);
        sub_0200D330(param0->unk_C8[v0]);
        sub_0200D430(param0->unk_C8[v0], 0);
        SpriteActor_SetOAMMode(param0->unk_C8[v0], GX_OAM_MODE_XLU);
        SpriteActor_EnableObject(param0->unk_C8[v0], 0);
    }
}

void ov116_0226281C(UnkStruct_ov116_02262A8C *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        sub_0200D0F4(param0->unk_D0[v0]);
        sub_0200D0F4(param0->unk_C8[v0]);
    }
}

void ov116_02262840(UnkStruct_ov116_02262A8C *param0)
{
    int v0;
    CellActorData *v1;
    SpriteTemplate v2;
    SpriteRenderer *v3 = param0->unk_14->unk_08;
    SpriteGfxHandler *v4 = param0->unk_14->unk_0C;
    PaletteData *v5 = param0->unk_14->unk_14;

    ov116_02261CD8(&v2, 128, 128, 1, 7, 9007);

    v2.bgPriority = 0;
    v2.priority = 0;
    param0->unk_D8 = SpriteActor_LoadResources(v3, v4, &v2);

    sub_0200D364(param0->unk_D8, 1);
    SpriteActor_EnableObject(param0->unk_D8, 1);
    sub_0200D330(param0->unk_D8);
    sub_0200D430(param0->unk_D8, 7);
}

void ov116_022628AC(UnkStruct_ov116_02262A8C *param0)
{
    sub_0200D0F4(param0->unk_D8);
}

void ov116_022628B8(UnkStruct_ov116_0226139C *param0)
{
    NARC *v0 = param0->unk_48.unk_00;
    NARC *v1 = param0->unk_48.unk_04;
    BGL *v2 = param0->unk_48.unk_10;
    SpriteRenderer *v3 = param0->unk_48.unk_08;
    SpriteGfxHandler *v4 = param0->unk_48.unk_0C;
    PaletteData *v5 = param0->unk_48.unk_14;
    NARC *v6 = v0;

    sub_020070E8(v6, 72, v2, 4, 0, 0, 0, 106);
    sub_020070E8(v6, 75, v2, 5, 0, 0, 0, 106);
    sub_0200710C(v6, 74, v2, 4, 0, 0, 0, 106);
    sub_0200710C(v6, 76, v2, 5, 0, 0, 0, 106);
    sub_0200710C(v6, 77, v2, 6, 0, 0, 0, 106);
    sub_0200710C(v6, 78, v2, 7, 0, 0, 0, 106);
    PaletteSys_LoadPalette(v5, 164, 73, 106, 1, 0x20 * 5, 0);
    sub_020070E8(v6, 5, v2, 3, 0, 0, 0, 106);
    sub_020070E8(v6, 8, v2, 1, 0, 0, 0, 106);
    sub_0200710C(v6, 7, v2, 3, 0, 0, 0, 106);
    sub_0200710C(v6, 9, v2, 1, 0, 0, 0, 106);
    sub_0200710C(v6, 10, v2, 2, 0, 0, 0, 106);
    PaletteSys_LoadPalette(v5, 164, 6, 106, 0, 0x20, 0);
    PaletteSys_LoadPalette(v5, 14, 7, 106, 1, 0x20, 14 * 16);
    PaletteSys_LoadPalette(v5, 38, Window_FramePalette(), 106, 1, 0x20, 13 * 16);
    sub_0200DAA4(v2, 7, 180, 13, 0, 106);
}
