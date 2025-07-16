#include "unk_02089604.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02089688.h"

#include "heap.h"
#include "palette.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_020393C8.h"
#include "unk_0208A3F4.h"

void sub_02089604(UnkStruct_02089688 *param0, int param1)
{
    int v0;

    param0->unk_2D8 = param0->unk_2D4;
    param0->unk_2D4 = param1;
    param0->unk_2DC = 0;
    param0->unk_2E0 = 0;
    param0->unk_2E4 = 0;
    param0->unk_2E8 = 0;

    if (param0->unk_2D4 != 0) {
        param0->unk_2DC = param0->unk_2AA[param0->unk_2D4 - 1][0];
        param0->unk_2E0 = param0->unk_2AA[param0->unk_2D4 - 1][1];
    }

    if (param0->unk_2D8 != 0) {
        param0->unk_2E4 = param0->unk_2AA[param0->unk_2D8 - 1][0];
        param0->unk_2E8 = param0->unk_2AA[param0->unk_2D8 - 1][1];
    }
}

void sub_02089688(UnkStruct_02089688 *param0)
{
    int v0;
    param0->unk_2EC.unk_88 = 1;
    u16 v1 = 0;
    int v2, v3, v4, v5;

    for (v0 = 0; v0 < 4 + 1; v0++) {
        param0->unk_2AA[v0][0] = v1;
        v1 += param0->unk_3B8.unk_04[v0];
        param0->unk_2AA[v0][1] = v1;
    }

    sub_02089604(param0, param0->unk_3B8.unk_24 + 1);

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_3B8.unk_04[v0] == 0) {
            break;
        }

        param0->unk_2D0 += param0->unk_3B8.unk_04[v0];
        param0->unk_3EC++;
    }

    param0->unk_3EC--;
    v2 = 8 * (param0->unk_2D0 + param0->unk_3EC);
    param0->unk_2A0[0] = 112 - v2 / 2;

    for (v0 = 0; v0 < 4; v0++) {
        v2 = 8 * param0->unk_3EC + (8 * (param0->unk_2D0 - param0->unk_3B8.unk_04[v0]) + 32 * param0->unk_3B8.unk_04[v0]);

        param0->unk_2A0[v0 + 1] = 112 - v2 / 2;
    }

    param0->unk_2A0[1] += 12;
    v3 = 0;

    for (v0 = 0; v0 < param0->unk_3EC; v0++) {
        v3 += param0->unk_3B8.unk_04[v0];
        param0->unk_1C0[v0].unk_00 = v3 - 1;
    }

    v5 = 0;
    v0 = 0;

    do {
        for (v4 = 0; v4 < param0->unk_3B8.unk_04[v5]; v4++) {
            param0->unk_00[v0].unk_04 = v5 + 1;
            v0++;
        }
        v5++;
    } while (v0 < param0->unk_2D0);

    for (v0 = 0; v0 < param0->unk_3B8.unk_24; v0++) {
        param0->unk_3F0 += param0->unk_3B8.unk_04[v0];
    }
}

void sub_02089808(UnkStruct_02089688 *param0, int param1)
{
    param0->unk_2C0 = param1;
    param0->unk_2C4 = 0;
    param0->unk_2C8 = 0;
    param0->unk_2CC = 0;
}

BOOL sub_02089820(UnkStruct_02089688 *param0)
{
    sub_0208A490(param0);
    sub_0208ADA4(param0);
    sub_0208A758(param0);
    sub_0208ADE4(param0, 0);
    sub_0208A8A0(param0);
    sub_0208A9BC(param0);
    sub_0208AF44(param0);
    sub_0208AFCC(param0);
    sub_0208B064(param0);
    sub_0208B1C4(param0->unk_2EC.unk_0C, &param0->unk_2EC.unk_B0, 4, 2, 21, 27, 2, 100, param0->unk_3B8.unk_2C);

    if (param0->unk_3B8.unk_30 != 0) {
        NNSG2dPaletteData *v0;
        void *v1 = sub_020394A8(HEAP_ID_101);

        NNS_G2dGetUnpackedPaletteData(v1, &v0);
        PaletteData_LoadBuffer(param0->unk_2EC.unk_10, v0->pRawData, 0x1 | 0x2, 0xe0, 0x20);
        Heap_Free(v1);
    }

    sub_02089808(param0, 1);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_101);

    return 0;
}

BOOL sub_020898DC(UnkStruct_02089688 *param0)
{
    switch (param0->unk_2C8) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_101);
        param0->unk_2C8++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            param0->unk_2C8++;
        }
        break;
    default:
        return 1;
    }

    return 0;
}

BOOL sub_02089938(UnkStruct_02089688 *param0)
{
    switch (param0->unk_2C8) {
    case 0:
        if (IsScreenFadeDone() == TRUE) {
            param0->unk_2C8++;
        }
        break;
    default:
        sub_0208A328(param0);
        TouchScreenActions_HandleAction(param0->unk_2EC.unk_14);
        sub_02089C20(param0);
        break;
    }

    return 0;
}

BOOL sub_02089974(UnkStruct_02089688 *param0)
{
    int v0;
    static f32 v1[] = {
        0.5f, 0.2f, 0.5f, 1.0f, 1.2f, 1.0f, 1.0f
    };
    static f32 v2[] = {
        0.8f, 0.6f, 0.4f, 0.2f, 0.8f, 1.0f, 1.0f
    };

    switch (param0->unk_2C8) {
    case 0:
        sub_0208AAB4(param0, 0, 0);
        {
            for (v0 = 0; v0 < param0->unk_2D0; v0++) {
                if (param0->unk_00[v0].unk_14.unk_04 == 0) {
                    continue;
                }

                ManagedSprite_OffsetPositionXY(param0->unk_00[v0].unk_0C, param0->unk_00[v0].unk_14.unk_00, param0->unk_00[v0].unk_14.unk_02);
                param0->unk_00[v0].unk_14.unk_04--;

                if ((v0 >= param0->unk_2DC) && (v0 < param0->unk_2E0)) {
                    ManagedSprite_SetAffineScale(param0->unk_00[v0].unk_0C, v1[param0->unk_00[v0].unk_14.unk_05], v1[param0->unk_00[v0].unk_14.unk_05]);
                    param0->unk_00[v0].unk_14.unk_05++;
                }

                if ((v0 >= param0->unk_2E4) && (v0 < param0->unk_2E8)) {
                    ManagedSprite_SetAffineScale(param0->unk_00[v0].unk_0C, v2[param0->unk_00[v0].unk_14.unk_05], v2[param0->unk_00[v0].unk_14.unk_05]);
                    param0->unk_00[v0].unk_14.unk_05++;
                }
            }

            for (v0 = 0; v0 < param0->unk_3EC; v0++) {
                if (param0->unk_1C0[v0].unk_14.unk_04 == 0) {
                    continue;
                }

                ManagedSprite_OffsetPositionXY(param0->unk_1C0[v0].unk_0C, param0->unk_1C0[v0].unk_14.unk_00, param0->unk_1C0[v0].unk_14.unk_02);
                param0->unk_1C0[v0].unk_14.unk_04--;
            }

            if (param0->unk_00[0].unk_14.unk_04 == 0) {
                for (v0 = param0->unk_2DC; v0 < param0->unk_2E0; v0++) {
                    ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
                    ManagedSprite_TickFrame(param0->unk_00[v0].unk_0C);
                }

                for (v0 = param0->unk_2E4; v0 < param0->unk_2E8; v0++) {
                    ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
                    ManagedSprite_TickFrame(param0->unk_00[v0].unk_0C);
                }

                param0->unk_2C8++;
            }

            param0->unk_2CC++;
        }
        break;
    case 1:
        for (v0 = param0->unk_2DC; v0 < param0->unk_2E0; v0++) {
            if (param0->unk_00[v0].unk_14.unk_05 == 6) {
                continue;
            }

            ManagedSprite_SetAffineScale(param0->unk_00[v0].unk_0C, v1[param0->unk_00[v0].unk_14.unk_05], v1[param0->unk_00[v0].unk_14.unk_05]);
            param0->unk_00[v0].unk_14.unk_05++;
        }

        for (v0 = param0->unk_2E4; v0 < param0->unk_2E8; v0++) {
            if (param0->unk_00[v0].unk_14.unk_05 == 6) {
                continue;
            }

            ManagedSprite_SetAffineScale(param0->unk_00[v0].unk_0C, v2[param0->unk_00[v0].unk_14.unk_05], v2[param0->unk_00[v0].unk_14.unk_05]);
            param0->unk_00[v0].unk_14.unk_05++;
        }

        param0->unk_2CC++;

        if (param0->unk_2CC == 6) {
            param0->unk_2C8++;
        }
        break;
    default:
        sub_0208AF44(param0);

        if (param0->unk_3AC.unk_08 == 0) {
            sub_0208AAE4(param0, sub_0208A398(param0, param0->unk_3AC.unk_04));
        } else {
            sub_0208AAE4(param0, sub_0208A3C0(param0, param0->unk_3AC.unk_04));
        }

        if (param0->unk_2D4 != 0) {
            sub_0208AAB4(param0, 0, 1);
        }

        sub_0208A384(param0);
        sub_02089808(param0, 1);
        break;
    }

    return 0;
}

static BOOL (*const Unk_020F2EB8[])(UnkStruct_02089688 *) = {
    sub_02089820,
    sub_02089938,
    sub_02089974,
    sub_020898DC,
};

BOOL sub_02089BEC(UnkStruct_02089688 *param0)
{
    BOOL v0 = Unk_020F2EB8[param0->unk_2C0](param0);

    sub_0208ABB4(param0);
    sub_0208AC8C(param0);
    SpriteSystem_DrawSprites(param0->unk_2EC.unk_08);

    return v0;
}

void sub_02089C20(UnkStruct_02089688 * param0)
{
    const int Unk_020F2EC8[][5] = {
        {0, 1, 2, 3, 4},
        {5, 6, 7, 8, 9},
        {10,10,10,11,11},
    };
    BOOL v1 = FALSE;
    int v2 = Unk_020F2EC8[param0->unk_214[1].unk_14.unk_02][param0->unk_214[1].unk_14.unk_00];

    if (param0->unk_2C0 != 1 || param0->unk_3AC.unk_00 == 1) {
        return;
    }

    if (param0->unk_2EC.unk_88 == TRUE) {
        if (gSystem.pressedKeys && !TouchScreen_Touched()) {
            param0->unk_2EC.unk_88 = FALSE;
            sub_0208AB2C(param0, v2);
            if (v2 == 10 || v2 == 11){
                if (param0->unk_214[1].unk_00 != 2) {
                    param0->unk_214[1].unk_00 = 2;
                }
            }
            else {
                if (param0->unk_214[1].unk_00 != 1) {
                    param0->unk_214[1].unk_00 = 1;
                }
            }
        }
        return;
    }

    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        if (param0->unk_214[1].unk_14.unk_02 > 0) {
            param0->unk_214[1].unk_14.unk_02--;
        }
        else {
            param0->unk_214[1].unk_14.unk_02 = 2;
        }
        v1 = TRUE;
    }
    else if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        param0->unk_214[1].unk_14.unk_02++;
        param0->unk_214[1].unk_14.unk_02 %= 3;
        v1 = TRUE;
    }
    else if (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT) {
        
        if (v2 == 10) {
            param0->unk_214[1].unk_14.unk_00 = 3;
        }
        else if (v2 == 11) {
            param0->unk_214[1].unk_14.unk_00 = 0;            
        }
        else {                
            param0->unk_214[1].unk_14.unk_00++;
            param0->unk_214[1].unk_14.unk_00 %= 5;
        }
        v1 = TRUE;
    }
    else if (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) {
        
        if (v2 == 10){
            param0->unk_214[1].unk_14.unk_00 = 3;
        }
        else if (v2 == 11){
            param0->unk_214[1].unk_14.unk_00 = 0;            
        }
        else {                
            if (param0->unk_214[1].unk_14.unk_00 > 0) {
                param0->unk_214[1].unk_14.unk_00--;
            }
            else {
                param0->unk_214[1].unk_14.unk_00 = 4;
            }
        }
        v1 = TRUE;
    }
    else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        int v3;
        int v4;
        int v5;

        if (v2 == 10) {
            sub_02089FFC(param0);

            Sound_PlayEffect(1509);
        }        
        else if (v2 == 11) {
            sub_02089F80(param0);    

            Sound_PlayEffect(1506);                
        }
        else {
            if (param0->unk_2D4 == 0)
                return;

            v3 = param0->unk_214[0].unk_00;                
            param0->unk_00[v3].unk_00 = v2 + 1;
            sub_0208AAB4(param0, 1, FALSE);
            sub_0208AAB4(param0, 2, TRUE);
            sub_0208AB6C(param0, v2, 2);
            ManagedSprite_SetAnim(param0->unk_00[v3].unk_0C, sub_0208AD98(param0->unk_00[v3].unk_00, param0->unk_00[v3].unk_08));
            ManagedSprite_SetAnim(param0->unk_214[2].unk_0C, 3);

            v4 = param0->unk_00[v3].unk_04;
            v3++;
            if (v3 == param0->unk_2D0) {
                                    
                param0->unk_3AC.unk_00     = 1;
                param0->unk_3AC.unk_04 = 0;                
                param0->unk_214[1].unk_14.unk_00 = 3;
                param0->unk_214[1].unk_14.unk_02 = 2;
                v1 = TRUE;
            }
            else {                    
                v5 = param0->unk_00[v3].unk_04;
                
                if (v4 != v5) {
                    
                    param0->unk_3AC.unk_00 = 1;
                    param0->unk_3AC.unk_04 = v5;
                }
                else {
                    param0->unk_3AC.unk_00 = 2;
                    param0->unk_3AC.unk_04 = v3;
                }
                Sound_PlayEffect(1509);
            }
        }
    }
    else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        sub_02089FFC(param0);
        Sound_PlayEffect(1509);
    }
    else if (gSystem.pressedKeysRepeatable & PAD_BUTTON_L) {
        int v6 = param0->unk_214[0].unk_00;
        
        if (v6 == param0->unk_3F0) {
            param0->unk_214[0].unk_00 = param0->unk_2D0 - 1;
        }
        else {
            param0->unk_214[0].unk_00--;
        }
        v6 = param0->unk_214[0].unk_00;
        
        if (param0->unk_00[v6].unk_08 == 1) {
            param0->unk_3AC.unk_00 = 2;
            param0->unk_3AC.unk_04 = v6;
        }
        else {
            param0->unk_3AC.unk_00 = 1;
            param0->unk_3AC.unk_04 = param0->unk_00[v6].unk_04;
            param0->unk_3AC.unk_08 = 1;
        }
        Sound_PlayEffect(1504);
    }
    else if (gSystem.pressedKeysRepeatable & PAD_BUTTON_R) {
        int v7 = param0->unk_214[0].unk_00;
        
        if (v7 == param0->unk_2D0 - 1){
            param0->unk_214[0].unk_00 = param0->unk_3F0;
        }
        else {
            param0->unk_214[0].unk_00++;
        }
        v7 = param0->unk_214[0].unk_00;
        
        if (param0->unk_00[v7].unk_08 == 1) {
            param0->unk_3AC.unk_00 = 2;
            param0->unk_3AC.unk_04 = v7;
        }
        else {
            param0->unk_3AC.unk_00 = 1;
            param0->unk_3AC.unk_04 = param0->unk_00[v7].unk_04;
        }
        Sound_PlayEffect(1504);
    }

    if (v1 == TRUE) {
        Sound_PlayEffect(1504);

        v2 = Unk_020F2EC8[param0->unk_214[1].unk_14.unk_02][param0->unk_214[1].unk_14.unk_00];
        sub_0208AB2C(param0, v2);
        
        if (v2 == 10 || v2 == 11) {
            if (param0->unk_214[1].unk_00 != 2) {
                param0->unk_214[1].unk_00 = 2;
            }
        }
        else {
            if (param0->unk_214[1].unk_00 != 1) {
                param0->unk_214[1].unk_00 = 1;
            }
        }
    }
}

void sub_02089F80(UnkStruct_02089688 *param0)
{
    int v0;
    u32 v1 = 0;
    Strbuf *v2 = Strbuf_Init(100, HEAP_ID_101);

    param0->unk_268[1].unk_00 = 1;
    param0->unk_268[1].unk_14.unk_04 = 0;

    for (v0 = 0; v0 < param0->unk_2D0; v0++) {
        if (param0->unk_00[v0].unk_00 == 0) {
            param0->unk_00[v0].unk_00 = 1;
            ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
        }

        v1 = param0->unk_00[v0].unk_00 - 1;
        Strbuf_FormatInt(v2, v1, 1, 1, 1);
        Strbuf_Concat(param0->unk_3B8.unk_1C, v2);
    }

    Strbuf_Free(v2);
    sub_02089808(param0, 3);
}

void sub_02089FFC(UnkStruct_02089688 *param0)
{
    int v0;
    int v1;
    int v2;

    param0->unk_268[0].unk_00 = 1;
    param0->unk_268[0].unk_14.unk_04 = 0;

    if (param0->unk_2D4 == 0) {
        v0 = param0->unk_214[0].unk_00 = param0->unk_2D0 - 1;
        v2 = param0->unk_00[v0].unk_04;

        param0->unk_3AC.unk_00 = 1;
        param0->unk_3AC.unk_04 = v2;
        param0->unk_3AC.unk_08 = 1;

        return;
    }

    v0 = param0->unk_214[0].unk_00;
    param0->unk_00[v0].unk_00 = 0;

    ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
    v1 = param0->unk_00[v0].unk_04;

    if (v0 > param0->unk_3F0) {
        v0--;
        ManagedSprite_SetAnim(param0->unk_00[v0].unk_0C, sub_0208AD98(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));

        v2 = param0->unk_00[v0].unk_04;

        if (v1 != v2) {
            param0->unk_3AC.unk_00 = 1;
            param0->unk_3AC.unk_04 = v2;
            param0->unk_3AC.unk_08 = 1;
        } else {
            param0->unk_3AC.unk_00 = 2;
            param0->unk_3AC.unk_04 = v0;
        }
    }
}

void sub_0208A0B8(UnkStruct_02089688 *param0)
{
    int v0;

    for (v0 = 0; v0 < 15 + 1; v0++) {
        param0->unk_00[v0].unk_10 = &param0->unk_2EC.unk_18[v0];
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
            { 64, 176, 60, 12 },
            { 192, 176, 60, 12 },
        };

        for (; v0 < 0x1c; v0++) {
            param0->unk_2EC.unk_18[v0].rect.top = v1[v0 - 16][1] - v1[v0 - 16][3];
            param0->unk_2EC.unk_18[v0].rect.left = v1[v0 - 16][0] - v1[v0 - 16][2];
            param0->unk_2EC.unk_18[v0].rect.bottom = v1[v0 - 16][1] + v1[v0 - 16][3];
            param0->unk_2EC.unk_18[v0].rect.right = v1[v0 - 16][0] + v1[v0 - 16][2];
        }
    }

    param0->unk_2EC.unk_14 = TouchScreenActions_RegisterHandler(param0->unk_2EC.unk_18, 0x1c, sub_0208A180, param0, HEAP_ID_101);
}

void sub_0208A180(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_02089688 *v0 = param2;

    if (v0->unk_2C0 != 1) {
        return;
    }

    if (v0->unk_2EC.unk_88 != 1) {
        v0->unk_2EC.unk_88 = 1;
    }

    if (param1 == TOUCH_BUTTON_PRESSED) {
        if ((param0 >= 0) && (param0 < 16)) {
            if (param0 < v0->unk_3F0) {
                return;
            }

            if (v0->unk_00[param0].unk_08 == 1) {
                v0->unk_3AC.unk_00 = 2;
                v0->unk_3AC.unk_04 = param0;
            } else {
                v0->unk_3AC.unk_00 = 1;
                v0->unk_3AC.unk_04 = v0->unk_00[param0].unk_04;
            }

            Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
        } else {
            if (param0 == 26) {
                v0->unk_214[1].unk_14.unk_00 = 0;
                v0->unk_214[1].unk_14.unk_02 = 2;
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
            } else if (param0 == 27) {
                v0->unk_214[1].unk_14.unk_00 = 3;
                v0->unk_214[1].unk_14.unk_02 = 2;
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO);
            } else {
                v0->unk_214[1].unk_14.unk_00 = (param0 - 16) % 5;
                v0->unk_214[1].unk_14.unk_02 = (param0 - 16) / 5;
                Sound_PlayEffect(SEQ_SE_DP_BUTTON3);
            }

            if ((param0 >= 16) && (param0 <= 25)) {
                int v1;
                int v2;
                int v3;

                if (v0->unk_2D4 == 0) {
                    return;
                }

                v1 = v0->unk_214[0].unk_00;
                v0->unk_00[v1].unk_00 = param0 - 16 + 1;

                ManagedSprite_SetAnim(v0->unk_00[v1].unk_0C, sub_0208AD98(v0->unk_00[v1].unk_00, v0->unk_00[v1].unk_08));
                sub_0208AAB4(v0, 1, 1);
                sub_0208AB2C(v0, param0 - 16);
                sub_0208AAB4(v0, 1, 0);
                sub_0208AAB4(v0, 2, 1);
                sub_0208AB6C(v0, param0 - 16, 2);
                ManagedSprite_SetAnim(v0->unk_214[2].unk_0C, 3);

                v2 = v0->unk_00[v1].unk_04;
                v1++;

                if (v1 == v0->unk_2D0) {
                    v0->unk_3AC.unk_00 = 1;
                    v0->unk_3AC.unk_04 = 0;
                    v0->unk_3AC.unk_08 = 0;
                } else {
                    v3 = v0->unk_00[v1].unk_04;

                    if (v2 != v3) {
                        v0->unk_3AC.unk_00 = 1;
                        v0->unk_3AC.unk_04 = v3;
                        v0->unk_3AC.unk_08 = 0;
                    } else {
                        v0->unk_3AC.unk_00 = 2;
                        v0->unk_3AC.unk_04 = v1;
                    }
                }
            } else {
                if (param0 == 26) {
                    sub_02089FFC(v0);
                } else {
                    sub_02089F80(v0);
                }
            }
        }
    }
}

void sub_0208A328(UnkStruct_02089688 *param0)
{
    switch (param0->unk_3AC.unk_00) {
    case 0:
        break;
    case 1:
        sub_02089604(param0, param0->unk_3AC.unk_04);
        sub_0208ADA4(param0);
        sub_0208ADE4(param0, 1);
        sub_02089808(param0, 2);
        param0->unk_3AC.unk_00 = 0xFF;
        break;
    case 2:
        sub_0208AAE4(param0, param0->unk_3AC.unk_04);
        sub_0208A384(param0);
        break;
    case 0xFF:
        break;
    }
}

void sub_0208A384(UnkStruct_02089688 *param0)
{
    param0->unk_3AC.unk_00 = 0;
    param0->unk_3AC.unk_04 = 0;
    param0->unk_3AC.unk_08 = 0;
}

int sub_0208A398(UnkStruct_02089688 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_2D0; v0++) {
        if (param0->unk_00[v0].unk_04 == param1) {
            return v0;
        }
    }

    return 0;
}

int sub_0208A3C0(UnkStruct_02089688 *param0, int param1)
{
    int v0;
    int v1 = 0;
    int v2 = 0;

    for (v0 = 0; v0 < param0->unk_2D0; v0++) {
        if (param0->unk_00[v0].unk_04 == param1) {
            v2 = 1;
        } else {
            if (v2 == 1) {
                return v0 - 1;
            }
        }
    }

    return param0->unk_2D0 - 1;
}
