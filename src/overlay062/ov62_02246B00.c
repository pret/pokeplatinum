#include "overlay062/ov62_02246B00.h"

#include <nitro.h>
#include <string.h>

#include "overlay062/struct_ov62_02246B00.h"
#include "overlay062/struct_ov62_02246BF4.h"
#include "overlay062/struct_ov62_02246BF4_sub1.h"

#include "bg_window.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "narc.h"
#include "palette.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "touch_screen_actions.h"

static inline void inline_ov62_02247CE0(UnkStruct_ov62_02246BF4 *param0, int param1, s16 param2, s16 param3);

UnkStruct_ov62_02246B00 *ov62_02246B00(int heapID, int param1, int param2[], Options *param3)
{
    int v0;
    UnkStruct_ov62_02246B00 *v1 = NULL;

    v1 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov62_02246B00));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov62_02246B00));
    v1->unk_00 = param1;
    v1->unk_18 = Strbuf_Init(param1 + 1, heapID);
    v1->unk_1C = param3;

    for (v0 = 0; v0 < 3; v0++) {
        v1->unk_04[v0] = param2[v0];
    }

    v1->unk_04[v0] = param2[v0 - 1];

    return v1;
}

void ov62_02246B4C(UnkStruct_ov62_02246B00 *param0)
{
    GF_ASSERT(param0->unk_18 != NULL);
    GF_ASSERT(param0 != NULL);

    Strbuf_Free(param0->unk_18);
    Heap_FreeToHeap(param0);
}

void ov62_02246B70(UnkStruct_ov62_02246BF4 *param0, int param1)
{
    int v0;

    param0->unk_20C = param0->unk_208;
    param0->unk_208 = param1;
    param0->unk_210 = 0;
    param0->unk_214 = 0;
    param0->unk_218 = 0;
    param0->unk_21C = 0;

    if (param0->unk_208 != 0) {
        param0->unk_210 = param0->unk_1E4[param0->unk_208 - 1][0];
        param0->unk_214 = param0->unk_1E4[param0->unk_208 - 1][1];
    }

    if (param0->unk_20C != 0) {
        param0->unk_218 = param0->unk_1E4[param0->unk_20C - 1][0];
        param0->unk_21C = param0->unk_1E4[param0->unk_20C - 1][1];
    }
}

void ov62_02246BF4(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;

    param0->unk_220.unk_78 = 1;

    {
        param0->unk_1E4[0][0] = 0;
        param0->unk_1E4[0][1] = param0->unk_2A8.unk_04[0];
        param0->unk_1E4[1][0] = param0->unk_2A8.unk_04[0];
        param0->unk_1E4[1][1] = param0->unk_2A8.unk_04[0] + param0->unk_2A8.unk_04[1];
        param0->unk_1E4[2][0] = param0->unk_2A8.unk_04[0] + param0->unk_2A8.unk_04[1];
        param0->unk_1E4[2][1] = param0->unk_2A8.unk_04[0] + param0->unk_2A8.unk_04[1] + param0->unk_2A8.unk_04[2];
    }

    ov62_02246B70(param0, 1);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_204 += param0->unk_2A8.unk_04[v0];
    }

    {
        int v1 = 0;
        const v2[][3] = {
            { 56, 20, 8 },
            { 56, 12, 0 },
        };

        if (param0->unk_2A8.unk_04[0] != 4) {
            v1 = 1;
        }

        for (v0 = 0; v0 < 3; v0++) {
            param0->unk_1DC[v0] = v2[v1][v0];
        }

        param0->unk_1DC[v0] = v2[v1][v0 - 1];
    }

    {
        int v3 = 0;

        for (v0 = 0; v0 < 3 - 1; v0++) {
            v3 += param0->unk_2A8.unk_04[v0];
            param0->unk_150[v0].unk_00 = v3 - 1;
        }
    }

    {
        int v4;
        int v5 = 0;

        v0 = 0;

        do {
            for (v4 = 0; v4 < param0->unk_2A8.unk_04[v5]; v4++) {
                param0->unk_00[v0].unk_04 = v5 + 1;
                v0++;
            }

            v5++;
        } while (v0 < param0->unk_204);
    }
}

void ov62_02246D60(UnkStruct_ov62_02246BF4 *param0, int param1)
{
    param0->unk_1F4 = param1;
    param0->unk_1F8 = 0;
    param0->unk_1FC = 0;
    param0->unk_200 = 0;
}

BOOL ov62_02246D78(UnkStruct_ov62_02246BF4 *param0)
{
    ov62_02246BF4(param0);
    ov62_02247220(param0);
    ov62_02247574(param0);
    ov62_02247B48(param0);
    ov62_02247754(param0);
    ov62_02247B88(param0, 0);
    ov62_0224784C(param0);
    ov62_02247CE0(param0);
    ov62_02246D60(param0, 1);

    return 0;
}

BOOL ov62_02246DB8(UnkStruct_ov62_02246BF4 *param0)
{
    TouchScreenActions_Free(param0->unk_220.unk_14);
    ov62_02247694(param0);

    return 1;
}

BOOL ov62_02246DD0(UnkStruct_ov62_02246BF4 *param0)
{
    switch (param0->unk_1FC) {
    case 0:
        param0->unk_1FC++;
        break;
    default:
        ov62_022474A8(param0);
        TouchScreenActions_HandleAction(param0->unk_220.unk_14);
        break;
    }

    return 0;
}

BOOL ov62_02246DF8(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;
    static f32 v1[] = {
        0.5f, 0.2f, 0.5f, 1.0f, 1.2f, 1.0f, 1.0f
    };
    static f32 v2[] = {
        0.8f, 0.6f, 0.4f, 0.2f, 0.8f, 1.0f, 1.0f
    };

    switch (param0->unk_1FC) {
    case 0:
        ov62_02247968(param0, 0, 0);
        {
            for (v0 = 0; v0 < param0->unk_204; v0++) {
                if (param0->unk_00[v0].unk_14.unk_04 == 0) {
                    continue;
                }

                ManagedSprite_OffsetPositionXY(param0->unk_00[v0].unk_0C, param0->unk_00[v0].unk_14.unk_00, param0->unk_00[v0].unk_14.unk_02);
                param0->unk_00[v0].unk_14.unk_04--;

                if ((v0 >= param0->unk_210) && (v0 < param0->unk_214)) {
                    ManagedSprite_SetAffineScale(param0->unk_00[v0].unk_0C, v1[param0->unk_00[v0].unk_14.unk_05], v1[param0->unk_00[v0].unk_14.unk_05]);
                    param0->unk_00[v0].unk_14.unk_05++;
                    ManagedSprite_SetAffineOverwriteMode(param0->unk_00[v0].unk_0C, AFFINE_OVERWRITE_MODE_DOUBLE);
                }

                if ((v0 >= param0->unk_218) && (v0 < param0->unk_21C)) {
                    ManagedSprite_SetAffineScale(param0->unk_00[v0].unk_0C, v2[param0->unk_00[v0].unk_14.unk_05], v2[param0->unk_00[v0].unk_14.unk_05]);
                    param0->unk_00[v0].unk_14.unk_05++;
                    ManagedSprite_SetAffineOverwriteMode(param0->unk_00[v0].unk_0C, AFFINE_OVERWRITE_MODE_DOUBLE);
                }
            }

            for (v0 = 0; v0 < 3 - 1; v0++) {
                if (param0->unk_150[v0].unk_14.unk_04 == 0) {
                    continue;
                }

                ManagedSprite_OffsetPositionXY(param0->unk_150[v0].unk_0C, param0->unk_150[v0].unk_14.unk_00, param0->unk_150[v0].unk_14.unk_02);
                param0->unk_150[v0].unk_14.unk_04--;
            }

            if (param0->unk_00[0].unk_14.unk_04 == 0) {
                for (v0 = param0->unk_210; v0 < param0->unk_214; v0++) {
                    ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
                    ManagedSprite_TickFrame(param0->unk_00[v0].unk_0C);
                }

                for (v0 = param0->unk_218; v0 < param0->unk_21C; v0++) {
                    ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
                    ManagedSprite_TickFrame(param0->unk_00[v0].unk_0C);
                }
                param0->unk_1FC++;
            }
            param0->unk_200++;
        }
        break;
    case 1:
        for (v0 = param0->unk_210; v0 < param0->unk_214; v0++) {
            if (param0->unk_00[v0].unk_14.unk_05 == 6) {
                ManagedSprite_SetAffineOverwriteMode(param0->unk_00[v0].unk_0C, AFFINE_OVERWRITE_MODE_NORMAL);
                continue;
            }

            ManagedSprite_SetAffineScale(param0->unk_00[v0].unk_0C, v1[param0->unk_00[v0].unk_14.unk_05], v1[param0->unk_00[v0].unk_14.unk_05]);
            param0->unk_00[v0].unk_14.unk_05++;
        }

        for (v0 = param0->unk_218; v0 < param0->unk_21C; v0++) {
            if (param0->unk_00[v0].unk_14.unk_05 == 6) {
                ManagedSprite_SetAffineOverwriteMode(param0->unk_00[v0].unk_0C, AFFINE_OVERWRITE_MODE_NORMAL);
                continue;
            }

            ManagedSprite_SetAffineScale(param0->unk_00[v0].unk_0C, v2[param0->unk_00[v0].unk_14.unk_05], v2[param0->unk_00[v0].unk_14.unk_05]);
            param0->unk_00[v0].unk_14.unk_05++;
        }

        param0->unk_200++;

        if (param0->unk_200 == 6) {
            param0->unk_1FC++;
        }
        break;
    default:
        ov62_02247CE0(param0);

        if (param0->unk_29C.unk_08 == 0) {
            ov62_02247998(param0, ov62_02247518(param0, param0->unk_29C.unk_04));
        } else {
            ov62_02247998(param0, ov62_02247540(param0, param0->unk_29C.unk_04));
        }

        if (param0->unk_208 != 0) {
            ov62_02247968(param0, 0, 1);
        }

        ov62_02247504(param0);
        ov62_02246D60(param0, 1);
        break;
    }

    return 0;
}

static BOOL (*const Unk_ov62_02249700[])(UnkStruct_ov62_02246BF4 *wk) = {
    ov62_02246D78,
    ov62_02246DD0,
    ov62_02246DF8,
    ov62_02246DB8,
};

BOOL ov62_02247084(UnkStruct_ov62_02246BF4 *param0)
{
    BOOL v0 = Unk_ov62_02249700[param0->unk_1F4](param0);

    if (v0 == 0) {
        ov62_02247A70(param0);
    }

    return v0;
}

void ov62_022470A8(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;
    u32 v1 = 0;
    Strbuf *v2 = Strbuf_Init(100, HEAP_ID_102);

    param0->unk_2C8 = 1;
    param0->unk_2CC = 0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if (param0->unk_00[v0].unk_00 == 0) {
            param0->unk_00[v0].unk_00 = 1;
            ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
        }

        v1 = param0->unk_00[v0].unk_00 - 1;

        if (v0 != 0) {
            param0->unk_2CC *= 10;
        }

        param0->unk_2CC += v1;

        Strbuf_FormatInt(v2, v1, 1, 1, 1);
        Strbuf_Concat(param0->unk_2A8.unk_18, v2);
    }

    Strbuf_Free(v2);
    ov62_02246D60(param0, 3);
}

void ov62_02247160(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;
    int v1;
    int v2;

    if (param0->unk_208 == 0) {
        v0 = param0->unk_188[0].unk_00 = param0->unk_204 - 1;
        v2 = param0->unk_00[v0].unk_04;
        param0->unk_29C.unk_00 = 1;
        param0->unk_29C.unk_04 = v2;
        param0->unk_29C.unk_08 = 1;
        return;
    }

    v0 = param0->unk_188[0].unk_00;
    param0->unk_00[v0].unk_00 = 0;

    ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));

    v1 = param0->unk_00[v0].unk_04;

    if (v0 > 0) {
        v0--;
        ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
        v2 = param0->unk_00[v0].unk_04;

        if (v1 != v2) {
            param0->unk_29C.unk_00 = 1;
            param0->unk_29C.unk_04 = v2;
            param0->unk_29C.unk_08 = 1;
        } else {
            param0->unk_29C.unk_00 = 2;
            param0->unk_29C.unk_04 = v0;
        }
    } else {
        param0->unk_2C8 = 0;
        ov62_02246D60(param0, 3);
    }
}

void ov62_02247220(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;

    for (v0 = 0; v0 < 11 + 1; v0++) {
        param0->unk_00[v0].unk_10 = &param0->unk_220.unk_18[v0];
    }

    {
        const s16 v1[][4] = {
            { 32, 80, 20, 20 },
            { 80, 80, 20, 20 },
            { 128, 80, 20, 20 },
            { 176, 80, 20, 20 },
            { 224, 80, 20, 20 },
            { 32, 128, 20, 20 },
            { 80, 128, 20, 20 },
            { 128, 128, 20, 20 },
            { 176, 128, 20, 20 },
            { 224, 128, 20, 20 },
            { 64 + 12, 176, 60, 12 },
            { 192, 176, 60, 12 },
        };

        for (; v0 < 24; v0++) {
            param0->unk_220.unk_18[v0].rect.top = v1[v0 - 12][1] - v1[v0 - 12][3];
            param0->unk_220.unk_18[v0].rect.left = v1[v0 - 12][0] - v1[v0 - 12][2];
            param0->unk_220.unk_18[v0].rect.bottom = v1[v0 - 12][1] + v1[v0 - 12][3];
            param0->unk_220.unk_18[v0].rect.right = v1[v0 - 12][0] + v1[v0 - 12][2];
        }

        param0->unk_220.unk_18[22].rect.top = 152;
        param0->unk_220.unk_18[22].rect.left = 32;
        param0->unk_220.unk_18[22].rect.bottom = 152 + 32;
        param0->unk_220.unk_18[22].rect.right = 128;
        param0->unk_220.unk_18[23].rect.top = 152;
        param0->unk_220.unk_18[23].rect.left = 128;
        param0->unk_220.unk_18[23].rect.bottom = 152 + 32;
        param0->unk_220.unk_18[23].rect.right = 224;
    }

    param0->unk_220.unk_14 = TouchScreenActions_RegisterHandler(param0->unk_220.unk_18, 24, ov62_0224730C, param0, HEAP_ID_102);
}

void ov62_0224730C(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov62_02246BF4 *v0 = param2;

    if (v0->unk_1F4 != 1) {
        return;
    }

    if (v0->unk_220.unk_78 != 1) {
        v0->unk_220.unk_78 = 1;
    }

    if (param1 == TOUCH_BUTTON_PRESSED) {
        if ((param0 >= 0) && (param0 <= 11)) {
            if (v0->unk_00[param0].unk_08 == 1) {
                v0->unk_29C.unk_00 = 2;
                v0->unk_29C.unk_04 = param0;
            } else {
                v0->unk_29C.unk_00 = 1;
                v0->unk_29C.unk_04 = v0->unk_00[param0].unk_04;
            }

            Sound_PlayEffect(SEQ_SE_PL_BREC57);
        } else {
            if (param0 == 22) {
                v0->unk_188[1].unk_14.unk_00 = 0;
                v0->unk_188[1].unk_14.unk_02 = 2;
            } else if (param0 == 23) {
                v0->unk_188[1].unk_14.unk_00 = 3;
                v0->unk_188[1].unk_14.unk_02 = 2;
            } else {
                v0->unk_188[1].unk_14.unk_00 = (param0 - 12) % 5;
                v0->unk_188[1].unk_14.unk_02 = (param0 - 12) / 5;
            }

            if ((param0 >= 12) && (param0 <= 21)) {
                int v1;
                int v2;
                int v3;

                if (v0->unk_208 == 0) {
                    return;
                }

                Sound_PlayEffect(SEQ_SE_PL_BREC57);

                v1 = v0->unk_188[0].unk_00;
                v0->unk_00[v1].unk_00 = param0 - 12 + 1;

                ManagedSprite_SetAnim(v0->unk_00[v1].unk_0C, ov62_02247B3C(v0->unk_00[v1].unk_00, v0->unk_00[v1].unk_08));
                ov62_02247968(v0, 1, 1);
                ov62_022479D4(v0, param0 - 12);
                ov62_02247968(v0, 1, 0);
                ov62_02247968(v0, 2, 1);
                ov62_02247A20(v0, param0 - 12, 2);
                ManagedSprite_SetAnim(v0->unk_188[2].unk_0C, 3);

                v2 = v0->unk_00[v1].unk_04;
                v1++;

                if (v1 == v0->unk_204) {
                    v0->unk_29C.unk_00 = 1;
                    v0->unk_29C.unk_04 = 0;
                    v0->unk_29C.unk_08 = 0;
                } else {
                    v3 = v0->unk_00[v1].unk_04;

                    if (v2 != v3) {
                        v0->unk_29C.unk_00 = 1;
                        v0->unk_29C.unk_04 = v3;
                        v0->unk_29C.unk_08 = 0;
                    } else {
                        v0->unk_29C.unk_00 = 2;
                        v0->unk_29C.unk_04 = v1;
                    }
                }
            } else {
                if (param0 == 22) {
                    Sound_PlayEffect(SEQ_SE_PL_BREC57);
                    ov62_02247160(v0);
                } else {
                    Sound_PlayEffect(SEQ_SE_PL_BREC57);
                    ov62_022470A8(v0);
                }
            }
        }
    }
}

void ov62_022474A8(UnkStruct_ov62_02246BF4 *param0)
{
    switch (param0->unk_29C.unk_00) {
    case 0:
        break;
    case 1:
        ov62_02246B70(param0, param0->unk_29C.unk_04);
        ov62_02247B48(param0);
        ov62_02247B88(param0, 1);
        ov62_02246D60(param0, 2);
        param0->unk_29C.unk_00 = 255;
        break;
    case 2:
        ov62_02247998(param0, param0->unk_29C.unk_04);
        ov62_02247504(param0);
        break;
    case 255:
        break;
    }
}

void ov62_02247504(UnkStruct_ov62_02246BF4 *param0)
{
    param0->unk_29C.unk_00 = 0;
    param0->unk_29C.unk_04 = 0;
    param0->unk_29C.unk_08 = 0;
}

int ov62_02247518(UnkStruct_ov62_02246BF4 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if (param0->unk_00[v0].unk_04 == param1) {
            return v0;
        }
    }

    return 0;
}

int ov62_02247540(UnkStruct_ov62_02246BF4 *param0, int param1)
{
    int v0;
    int v1 = 0;
    int v2 = 0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if (param0->unk_00[v0].unk_04 == param1) {
            v2 = 1;
        } else {
            if (v2 == 1) {
                return v0 - 1;
            }
        }
    }

    return param0->unk_204 - 1;
}

void ov62_02247574(UnkStruct_ov62_02246BF4 *param0)
{
    NARC *v0;
    BgConfig *v1;
    SpriteSystem *v2;
    SpriteManager *v3;
    PaletteData *v4;

    v2 = param0->unk_220.unk_04;
    v3 = param0->unk_220.unk_08;
    v4 = param0->unk_220.unk_10;
    v1 = param0->unk_220.unk_0C;
    v0 = param0->unk_220.unk_00;

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 54, param0->unk_220.unk_0C, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_102);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 43, v1, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_102);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(v4, PLTTBUF_MAIN_OBJ, v2, v3, v0, 44, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    SpriteSystem_LoadCharResObjFromOpenNarc(v2, v3, v0, 40, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    SpriteSystem_LoadCellResObjFromOpenNarc(v2, v3, v0, 41, FALSE, 1000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v2, v3, v0, 42, FALSE, 1000);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(v4, PLTTBUF_MAIN_OBJ, v2, v3, v0, 88, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1001);
    SpriteSystem_LoadCharResObjFromOpenNarc(v2, v3, v0, 87, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1001);
    SpriteSystem_LoadCellResObjFromOpenNarc(v2, v3, v0, 85, FALSE, 1001);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v2, v3, v0, 86, FALSE, 1001);
}

void ov62_02247694(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_00[v0].unk_0C);
    }

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_150[v0].unk_0C);
    }

    for (v0 = 0; v0 < 3; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_188[v0].unk_0C);
    }

    SpriteManager_UnloadCharObjById(param0->unk_220.unk_08, 1000);
    SpriteManager_UnloadPlttObjById(param0->unk_220.unk_08, 1000);
    SpriteManager_UnloadCellObjById(param0->unk_220.unk_08, 1000);
    SpriteManager_UnloadAnimObjById(param0->unk_220.unk_08, 1000);
    SpriteManager_UnloadCharObjById(param0->unk_220.unk_08, 1001);
    SpriteManager_UnloadPlttObjById(param0->unk_220.unk_08, 1001);
    SpriteManager_UnloadCellObjById(param0->unk_220.unk_08, 1001);
    SpriteManager_UnloadAnimObjById(param0->unk_220.unk_08, 1001);
}

void ov62_02247754(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;
    int v1 = 0;
    int v2 = 0;
    SpriteTemplate v3;
    SpriteSystem *v4;
    SpriteManager *v5;
    PaletteData *v6;

    v4 = param0->unk_220.unk_04;
    v5 = param0->unk_220.unk_08;
    v6 = param0->unk_220.unk_10;

    v3.x = 0;
    v3.y = 0;
    v3.z = 0;
    v3.animIdx = 0;
    v3.priority = 10;
    v3.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v3.bgPriority = 0;
    v3.vramTransfer = FALSE;
    v3.plttIdx = 0;
    v3.resources[0] = 1000;
    v3.resources[1] = 1000;
    v3.resources[2] = 1000;
    v3.resources[3] = 1000;
    v3.resources[4] = SPRITE_RESOURCE_NONE;
    v3.resources[5] = SPRITE_RESOURCE_NONE;

    for (v0 = 0; v0 < param0->unk_204 + 3 - 1; v0++) {
        if (v0 == (param0->unk_150[v2].unk_00 + v2 + 1)) {
            param0->unk_150[v2].unk_0C = SpriteSystem_NewSprite(v4, v5, &v3);
            ManagedSprite_SetPositionXY(param0->unk_150[v2].unk_0C, 72 + (v0 * 8) + 4, 24);
            ManagedSprite_SetAnim(param0->unk_150[v2].unk_0C, 22);
            ManagedSprite_TickFrame(param0->unk_150[v2].unk_0C);
            v2++;
        } else {
            param0->unk_00[v1].unk_0C = SpriteSystem_NewSprite(v4, v5, &v3);
            ManagedSprite_SetPositionXY(param0->unk_00[v1].unk_0C, 72 + (v0 * 8) + 4, 24);
            ManagedSprite_SetAnim(param0->unk_00[v1].unk_0C, ov62_02247B3C(param0->unk_00[v1].unk_00, param0->unk_00[v1].unk_08));
            ManagedSprite_SetAffineOverwriteMode(param0->unk_00[v1].unk_0C, AFFINE_OVERWRITE_MODE_NONE);
            ManagedSprite_TickFrame(param0->unk_00[v1].unk_0C);
            v1++;
        }
    }
}

void ov62_0224784C(UnkStruct_ov62_02246BF4 *param0)
{
    SpriteTemplate v0;
    SpriteSystem *v1;
    SpriteManager *v2;
    PaletteData *v3;

    v1 = param0->unk_220.unk_04;
    v2 = param0->unk_220.unk_08;
    v3 = param0->unk_220.unk_10;

    v0.x = 0;
    v0.y = 0;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = 0;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.bgPriority = 0;
    v0.vramTransfer = FALSE;
    v0.plttIdx = 0;
    v0.resources[0] = 1001;
    v0.resources[1] = 1001;
    v0.resources[2] = 1001;
    v0.resources[3] = 1001;
    v0.resources[4] = SPRITE_RESOURCE_NONE;
    v0.resources[5] = SPRITE_RESOURCE_NONE;

    param0->unk_188[0].unk_0C = SpriteSystem_NewSprite(v1, v2, &v0);
    param0->unk_188[1].unk_0C = SpriteSystem_NewSprite(v1, v2, &v0);
    param0->unk_188[2].unk_0C = SpriteSystem_NewSprite(v1, v2, &v0);

    ov62_02247998(param0, 0);
    ManagedSprite_SetAnim(param0->unk_188[0].unk_0C, 0);
    ManagedSprite_TickFrame(param0->unk_188[0].unk_0C);

    param0->unk_188[1].unk_14.unk_00 = 0;
    param0->unk_188[1].unk_14.unk_02 = 0;
    param0->unk_188[1].unk_00 = 1;

    ov62_022479D4(param0, 0);
    ManagedSprite_SetAnim(param0->unk_188[1].unk_0C, param0->unk_188[1].unk_00);
    ManagedSprite_TickFrame(param0->unk_188[1].unk_0C);
    ManagedSprite_SetExplicitOamMode(param0->unk_188[1].unk_0C, GX_OAM_MODE_XLU);

    param0->unk_188[2].unk_14.unk_00 = 0;
    param0->unk_188[2].unk_14.unk_02 = 0;
    param0->unk_188[2].unk_00 = 1;

    ov62_022479D4(param0, 0);
    ManagedSprite_SetAnim(param0->unk_188[2].unk_0C, param0->unk_188[2].unk_00);
    ManagedSprite_TickFrame(param0->unk_188[2].unk_0C);
    ManagedSprite_SetExplicitOamMode(param0->unk_188[2].unk_0C, GX_OAM_MODE_XLU);
    ov62_02247968(param0, 1, 0);
    ov62_02247968(param0, 2, 0);
}

void ov62_02247968(UnkStruct_ov62_02246BF4 *param0, int param1, BOOL param2)
{
    if (param2 == 1) {
        ManagedSprite_SetDrawFlag(param0->unk_188[param1].unk_0C, 1);
    } else {
        ManagedSprite_SetDrawFlag(param0->unk_188[param1].unk_0C, 0);
    }
}

void ov62_02247998(UnkStruct_ov62_02246BF4 *param0, int param1)
{
    s16 v0, v1;
    ManagedSprite *v2 = param0->unk_00[param1].unk_0C;
    param0->unk_188[0].unk_00 = param1;

    ManagedSprite_GetPositionXY(v2, &v0, &v1);
    ManagedSprite_SetPositionXY(param0->unk_188[0].unk_0C, v0, v1 + 16);
}

void ov62_022479D4(UnkStruct_ov62_02246BF4 *param0, int param1)
{
    s16 v0 = (param0->unk_220.unk_18[param1 + 12].rect.left + param0->unk_220.unk_18[param1 + 12].rect.right) / 2;
    s16 v1 = (param0->unk_220.unk_18[param1 + 12].rect.top + param0->unk_220.unk_18[param1 + 12].rect.bottom) / 2;

    ManagedSprite_SetPositionXY(param0->unk_188[1].unk_0C, v0 - 0, v1 - 8);
}

void ov62_02247A20(UnkStruct_ov62_02246BF4 *param0, int param1, int param2)
{
    s16 v0 = (param0->unk_220.unk_18[param1 + 12].rect.left + param0->unk_220.unk_18[param1 + 12].rect.right) / 2;
    s16 v1 = (param0->unk_220.unk_18[param1 + 12].rect.top + param0->unk_220.unk_18[param1 + 12].rect.bottom) / 2;

    ManagedSprite_SetPositionXY(param0->unk_188[param2].unk_0C, v0 - 0, v1 - 8);
}

void ov62_02247A70(UnkStruct_ov62_02246BF4 *param0)
{
    ManagedSprite_TickFrame(param0->unk_188[0].unk_0C);
    ManagedSprite_TickFrame(param0->unk_188[1].unk_0C);
    ManagedSprite_TickFrame(param0->unk_188[2].unk_0C);

    {
        int v0 = 2;
        int v1;
        BOOL v2;

        for (v0 = 1; v0 < 3; v0++) {
            v1 = ManagedSprite_GetActiveAnim(param0->unk_188[v0].unk_0C);

            if (v1 == 3) {
                v2 = ManagedSprite_IsAnimated(param0->unk_188[v0].unk_0C);

                if (v2 == 0) {
                    ManagedSprite_SetAnim(param0->unk_188[v0].unk_0C, param0->unk_188[v0].unk_00);

                    if (param0->unk_220.unk_78 == 1) {
                        ov62_02247968(param0, 1, 0);
                    } else {
                        ov62_02247968(param0, 1, 1);
                    }

                    ov62_02247968(param0, 2, 0);
                }
            } else {
                if (v1 != param0->unk_188[v0].unk_00) {
                    ManagedSprite_SetAnim(param0->unk_188[v0].unk_0C, param0->unk_188[v0].unk_00);
                }

                {
                    v1 = ManagedSprite_GetActiveAnim(param0->unk_188[2].unk_0C);

                    if (v1 != 3) {
                        if (param0->unk_220.unk_78 == 1) {
                            ov62_02247968(param0, 1, 0);
                        } else {
                            ov62_02247968(param0, 1, 1);
                        }
                    }
                }
            }
        }
    }
}

int ov62_02247B3C(int param0, BOOL param1)
{
    int v0 = 0;

    if (param1 == 0) {
        v0 = 11;
    }

    v0 += param0;
    return v0;
}

void ov62_02247B48(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if ((v0 >= param0->unk_210) && (v0 < param0->unk_214)) {
            param0->unk_00[v0].unk_08 = 1;
        } else {
            param0->unk_00[v0].unk_08 = 0;
        }
    }
}

void ov62_02247B88(UnkStruct_ov62_02246BF4 *param0, int param1)
{
    int v0;
    int v1;
    s16 v2;
    s16 v3, v4;

    v2 = param0->unk_1DC[param0->unk_208];
    v1 = 0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if ((v0 >= param0->unk_210) && (v0 < param0->unk_214)) {
            if (v0 == param0->unk_210) {
                v2 += ((32 + 8) / 2);
            } else {
                v2 += 32;
            }
        } else {
            if (v0 == 0) {
                v2 += ((32 + 8) / 2);
            } else {
                v2 += 8;
            }
        }

        ManagedSprite_GetPositionXY(param0->unk_00[v0].unk_0C, &v3, &v4);

        if (param1 == 0) {
            ManagedSprite_SetPositionXY(param0->unk_00[v0].unk_0C, v2, v4);
        } else {
            param0->unk_00[v0].unk_14.unk_00 = (v2 - v3) / 2;
            param0->unk_00[v0].unk_14.unk_02 = 0;
            param0->unk_00[v0].unk_14.unk_04 = 2;
            param0->unk_00[v0].unk_14.unk_05 = 0;
        }

        if ((v0 == param0->unk_150[v1].unk_00) && (v1 != 3 - 1)) {
            ManagedSprite_GetPositionXY(param0->unk_150[v1].unk_0C, &v3, &v4);

            if (param0->unk_210 == param0->unk_214) {
                v2 += 8;
            } else {
                if ((v0 > param0->unk_210) && (v0 < param0->unk_214)) {
                    v2 += ((32 + 8) / 2);
                } else {
                    v2 += 8;
                }
            }

            if (param1 == 0) {
                ManagedSprite_SetPositionXY(param0->unk_150[v1].unk_0C, v2, v4);
            } else {
                param0->unk_150[v1].unk_14.unk_00 = (v2 - v3) / 2;
                param0->unk_150[v1].unk_14.unk_02 = 0;
                param0->unk_150[v1].unk_14.unk_04 = 2;
            }

            v1++;
        }
    }
}

static inline void inline_ov62_02247CE0(UnkStruct_ov62_02246BF4 *param0, int param1, s16 param2, s16 param3)
{
    s16 v0, v1;
    UnkStruct_ov62_02246BF4_sub1 *v2 = &param0->unk_00[param1];

    ManagedSprite_GetPositionXY(v2->unk_0C, &v0, &v1);

    v2->unk_10->rect.top = v1 - param3;
    v2->unk_10->rect.left = v0 - param2;
    v2->unk_10->rect.bottom = v1 + param3;
    v2->unk_10->rect.right = v0 + param2;

    if (param1 == 0) {
        v2->unk_10->rect.left -= 4;
    }
}

void ov62_02247CE0(UnkStruct_ov62_02246BF4 *param0)
{
    int v0;
    s16 v1;
    s16 v2;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if ((v0 >= param0->unk_210) && (v0 < param0->unk_214)) {
            v1 = 32 / 2;
            v2 = 32 / 2;
        } else {
            v1 = 8 / 2;
            v2 = 8;
        }

        inline_ov62_02247CE0(param0, v0, v1, v2);
    }
}
