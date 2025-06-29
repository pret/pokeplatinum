#include "overlay017/ov17_02251D6C.h"

#include <nitro.h>
#include <string.h>

#include "overlay017/ov17_0223F118.h"
#include "overlay017/ov17_0224F18C.h"
#include "overlay017/ov17_02250744.h"
#include "overlay017/struct_ov17_02243C28.h"
#include "overlay017/struct_ov17_02243C80.h"
#include "overlay017/struct_ov17_0224F30C.h"
#include "overlay017/struct_ov17_0224F3D8.h"
#include "overlay017/struct_ov17_0224FCA0.h"
#include "overlay017/struct_ov17_0224FCA0_sub1.h"
#include "overlay017/struct_ov17_0224FCA0_sub2.h"
#include "overlay017/struct_ov17_02251EAC.h"
#include "overlay017/struct_ov17_0225201C.h"
#include "overlay017/struct_ov17_0225228C.h"
#include "overlay017/struct_ov17_022523AC.h"
#include "overlay017/struct_ov17_02252580.h"
#include "overlay017/struct_ov17_0225266C.h"
#include "overlay017/struct_ov17_02252858.h"
#include "overlay017/struct_ov17_022529C8.h"
#include "overlay017/struct_ov17_022539E4.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "heap.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static int ov17_02251DAC(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_02251DC0(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_02251DD0(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, UnkStruct_ov17_0224F3D8 *param3, int param4);
static int ov17_02251E54(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_02251E68(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_02251EAC(SysTask *param0, void *param1);
static int ov17_02252008(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0225201C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_02252060(SysTask *param0, void *param1);
static int ov17_022521E4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_022521F8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static int ov17_02252210(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_02252224(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0225228C(SysTask *param0, void *param1);
static int ov17_02252344(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_02252358(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_022523AC(SysTask *param0, void *param1);
static int ov17_0225260C(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_02252620(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0225266C(SysTask *param0, void *param1);
static int ov17_02252514(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_02252528(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_02252580(SysTask *param0, void *param1);
static int ov17_02251DD4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_02251DE8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static int ov17_02252798(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_022527AC(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_02252858(SysTask *param0, void *param1);
static int ov17_02252970(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_02252984(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_022529C8(SysTask *param0, void *param1);

static const UnkStruct_ov17_022539E4 Unk_ov17_02254D18[] = {
    { ov17_02251DAC, ov17_02251DC0, ov17_02251DD0 },
    { ov17_02251DD4, ov17_02251DE8, NULL },
    { ov17_02251E54, ov17_02251E68, NULL },
    { ov17_02252008, ov17_0225201C, NULL },
    { ov17_022521E4, ov17_022521F8, NULL },
    { ov17_02252210, ov17_02252224, NULL },
    { ov17_02252344, ov17_02252358, NULL },
    { ov17_02252514, ov17_02252528, NULL },
    { ov17_0225260C, ov17_02252620, NULL },
    { ov17_02252798, ov17_022527AC, NULL },
    { ov17_02252970, ov17_02252984, NULL }
};

__attribute__((aligned(4))) static const s8 Unk_ov17_02254CF8[] = {
    0xF,
    0xB,
    0x7,
    0x3,
    0xFFFFFFFFFFFFFFFF
};

__attribute__((aligned(4))) static const u16 Unk_ov17_02254D00[] = {
    0x20,
    0x28,
    0x30,
    0x38,
    0xA0,
    0xA8,
    0xB0,
    0xB8,
    0x120,
    0x128,
    0x130,
    0x138
};

void ov17_02251D6C(UnkStruct_ov17_0224FCA0 *param0)
{
    UnkStruct_ov17_02243C28 v0;

    v0.unk_00 = Unk_ov17_02254D18;
    v0.unk_04 = NELEMS(Unk_ov17_02254D18);
    v0.unk_06 = param0->unk_00->unk_00.unk_113;
    v0.unk_08 = param0->unk_00->unk_00.unk_10C;
    v0.unk_07 = param0->unk_00->unk_155;

    ov17_0224F18C(&param0->unk_85C, &v0);
}

static int ov17_02251DAC(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_02251DC0(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    ov17_0224F26C(param0, param2, NULL, 0);
}

static void ov17_02251DD0(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, UnkStruct_ov17_0224F3D8 *param3, int param4)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    return;
}

static int ov17_02251DD4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224FCA0_sub1));
    return v1;
}

static void ov17_02251DE8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_0224FCA0_sub1 *v1 = param3;
    int v2;

    v0->unk_39A = *v1;

    for (v2 = 0; v2 < 4; v2++) {
        v0->unk_00->unk_00.unk_118[v2] = v1->unk_00[v2];
    }

    ov17_0224F26C(param0, param2, NULL, 0);
}

static int ov17_02251E54(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_02251E68(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_02251EAC *v1 = Heap_AllocFromHeap(HEAP_ID_24, sizeof(UnkStruct_ov17_02251EAC));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02251EAC));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;

    SysTask_Start(ov17_02251EAC, v1, 30000);
}

static void ov17_02251EAC(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02251EAC *v0 = param1;

    switch (v0->unk_10) {
    case 0:

        if (v0->unk_14 > 0) {
            v0->unk_14--;
            break;
        }

        if (v0->unk_13 > 0) {
            v0->unk_13--;
            break;
        }

        v0->unk_13 = 1;

        {
            u16 *v1, *v2;
            int v3, v4, v5, v6, v7;

            v1 = Bg_GetTilemapBuffer(v0->unk_00->unk_10.unk_20, 2);

            for (v4 = 0; v4 < 4; v4++) {
                if (Unk_ov17_02254CF8[v0->unk_11] + v4 < 0) {
                    continue;
                }

                v2 = &v1[32 * (Unk_ov17_02254CF8[v0->unk_11] + v4)];
                v7 = Unk_ov17_02254D00[v0->unk_12] + 32 * v4;
                v5 = 0;

                for (v6 = 0; v6 < 32 / 8; v6++) {
                    for (v3 = 0; v3 < 8; v3++) {
                        v2[v5 + v3] &= 0xfc00;
                        v2[v5 + v3] |= v7 + v3;
                    }

                    v5 += 8;
                }
            }

            {
                if ((v0->unk_11 > 0) && (v0->unk_12 == 0)) {
                    v2 = &v1[32 * Unk_ov17_02254CF8[v0->unk_11 - 1]];

                    for (v6 = 0; v6 < 32; v6++) {
                        v2[v6] &= 0xfc00;
                    }
                }
            }

            Bg_ScheduleTilemapTransfer(v0->unk_00->unk_10.unk_20, 2);
        }

        v0->unk_12++;

        if (v0->unk_12 >= NELEMS(Unk_ov17_02254D00)) {
            v0->unk_12 = 0;
            v0->unk_11++;
            v0->unk_14 = 0;

            if (v0->unk_11 >= NELEMS(Unk_ov17_02254CF8)) {
                v0->unk_10++;
            }
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02252008(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_0225201C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_0225201C *v1 = Heap_AllocFromHeap(HEAP_ID_24, sizeof(UnkStruct_ov17_0225201C));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_0225201C));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;

    SysTask_Start(ov17_02252060, v1, 30000);
}

static void ov17_02252060(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0225201C *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        if (v0->unk_14 > 0) {
            v0->unk_14--;
            break;
        }

        if (v0->unk_13 > 0) {
            v0->unk_13--;
            break;
        }

        v0->unk_13 = 1;

        {
            u16 *v1, *v2;
            int v3, v4, v5, v6, v7;
            int v8;

            v1 = Bg_GetTilemapBuffer(v0->unk_00->unk_10.unk_20, 2);

            for (v4 = 0; v4 < 4; v4++) {
                v8 = Unk_ov17_02254CF8[NELEMS(Unk_ov17_02254CF8) - 1 - v0->unk_11];

                if (v8 + v4 < 0) {
                    continue;
                }

                v2 = &v1[32 * (v8 + v4)];
                v7 = Unk_ov17_02254D00[NELEMS(Unk_ov17_02254D00) - 1 - v0->unk_12] + 32 * v4;
                v5 = 0;

                for (v6 = 0; v6 < 32 / 8; v6++) {
                    for (v3 = 0; v3 < 8; v3++) {
                        v2[v5 + v3] &= 0xfc00;
                        v2[v5 + v3] |= v7 + v3;
                    }

                    v5 += 8;
                }
            }

            {
                if ((v0->unk_11 > 0) && (v0->unk_12 == 0)) {
                    v8 = Unk_ov17_02254CF8[NELEMS(Unk_ov17_02254CF8) - 1 - v0->unk_11 + 1];
                    v8 += 4 - 1;
                    v2 = &v1[v8 * 32];

                    for (v6 = 0; v6 < 32; v6++) {
                        v2[v6] &= 0xfc00;
                        v2[v6] |= 0x200 + (v6 % 8);
                    }
                }
            }

            Bg_ScheduleTilemapTransfer(v0->unk_00->unk_10.unk_20, 2);
        }

        v0->unk_12++;

        if (v0->unk_12 >= NELEMS(Unk_ov17_02254D00)) {
            v0->unk_12 = 0;
            v0->unk_11++;
            v0->unk_14 = 0;

            if (v0->unk_11 >= NELEMS(Unk_ov17_02254CF8)) {
                v0->unk_10++;
            }
        }

        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_022521E4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_022521F8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;

    v0->unk_1278 = 1;
    ov17_0224F26C(param0, param2, NULL, 0);
}

static int ov17_02252210(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224FCA0_sub2));
    return v1;
}

static void ov17_02252224(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_0224FCA0_sub2 *v1 = param3;
    UnkStruct_ov17_0225228C *v2 = Heap_AllocFromHeap(HEAP_ID_24, sizeof(UnkStruct_ov17_0225228C));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_0225228C));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;
    v2->unk_11 = v1->unk_00;
    v2->unk_14 = v1->unk_08;
    v2->unk_1A = v1->unk_0E;
    v2->unk_1D = v1->unk_11;
    v2->unk_1C = v1->unk_10;
    v2->unk_1B = v1->unk_0F;

    SysTask_Start(ov17_0225228C, v2, 30000);
}

static void ov17_0225228C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0225228C *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        if (v0->unk_1A != 0) {
            if (v0->unk_1D == 0) {
                Window_DrawMessageBoxWithScrollCursor(&v0->unk_00->unk_10.unk_24[0], 1, 1, 14);
                Bg_ScheduleTilemapTransfer(v0->unk_00->unk_10.unk_20, 1);
            }

            ov17_02250968(v0->unk_00, v0->unk_1A, &v0->unk_14);
            v0->unk_10++;
        } else {
            v0->unk_10 = 100;
        }
        break;
    case 1:
        if (ov17_0225099C(v0->unk_00) == 0) {
            v0->unk_10++;
        }
        break;
    case 2:
        v0->unk_12++;

        if (v0->unk_1C == 1) {
            v0->unk_10++;
        } else if (v0->unk_12 >= v0->unk_1B) {
            Window_EraseMessageBox(&v0->unk_00->unk_10.unk_24[0], 1);
            Bg_ScheduleTilemapTransfer(v0->unk_00->unk_10.unk_20, 1);
            v0->unk_10++;
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02252344(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224FCA0_sub1));
    return v1;
}

static void ov17_02252358(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_022523AC *v1;

    v0->unk_39A = *((UnkStruct_ov17_0224FCA0_sub1 *)param3);

    v1 = Heap_AllocFromHeap(HEAP_ID_24, sizeof(UnkStruct_ov17_022523AC));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_022523AC));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;

    SysTask_Start(ov17_022523AC, v1, 1000);
}

static void ov17_022523AC(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022523AC *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        ov17_0223F744(v0->unk_00->unk_848);
        v0->unk_10++;
        break;
    case 1:
        if (ov17_0223F760() == 1) {
            v0->unk_10++;
        }
        break;
    case 2:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_24);
        Sound_StopBGM(SEQ_CONTEST_DRESSING_ROOM, 30);
        v0->unk_10++;
        break;
    case 3:
        if (IsScreenFadeDone() == TRUE) {
            v0->unk_10++;
        }
        break;
    case 4:
        ov17_02250A84(v0->unk_00);
        ov17_02250AD8(v0->unk_00);

        ov17_02250B00(v0->unk_00);
        ov17_02250D28(v0->unk_00);

        ov17_02250CEC(v0->unk_00);

        Window_DrawMessageBoxWithScrollCursor(&v0->unk_00->unk_10.unk_24[0], 0, 1, 14);

        Window_FillTilemap(&v0->unk_00->unk_10.unk_24[0], 0xff);
        Window_CopyToVRAM(&v0->unk_00->unk_10.unk_24[0]);

        {
            int v1;

            for (v1 = 0; v1 < 4; v1++) {
                PokemonSprite_SetAttribute(v0->unk_00->unk_10.unk_08[v1], MON_SPRITE_HIDE, 1);
            }
        }

        v0->unk_00->unk_127B = 1;
        v0->unk_10++;
        break;
    case 5:
        if (Sound_IsFadeActive() == FALSE) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_24);
            v0->unk_10++;
        }
        break;
    case 6:
        if (IsScreenFadeDone() == TRUE) {
            Sound_PlayBGM(SEQ_CO_KEKKA);
            v0->unk_10++;
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02252514(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224FCA0_sub2));
    return v1;
}

static void ov17_02252528(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_0224FCA0_sub2 *v1 = param3;
    UnkStruct_ov17_02252580 *v2;
    int v3;

    v2 = Heap_AllocFromHeap(HEAP_ID_24, sizeof(UnkStruct_ov17_02252580));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_02252580));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;

    for (v3 = 0; v3 < 4; v3++) {
        v2->unk_11[v3] = v1->unk_03[v3];
    }

    SysTask_Start(ov17_02252580, v2, 30000);
}

static void ov17_02252580(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02252580 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        v0->unk_10++;
        break;
    case 1:
        ov17_0225131C(v0->unk_00, v0->unk_11[4 - 1 - v0->unk_15], 4 - 1 - v0->unk_15);
        v0->unk_15++;
        v0->unk_10++;
        break;
    case 2:
        v0->unk_16++;

        if (v0->unk_16 > 30) {
            v0->unk_16 = 0;
            v0->unk_10++;
        }
        break;
    case 3:
        if (v0->unk_15 < 4) {
            v0->unk_10 = 1;
        } else {
            v0->unk_10++;
        }
        break;
    case 4:
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_0225260C(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224FCA0_sub2));
    return v1;
}

static void ov17_02252620(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_0224FCA0_sub2 *v1 = param3;
    UnkStruct_ov17_0225266C *v2 = Heap_AllocFromHeap(HEAP_ID_24, sizeof(UnkStruct_ov17_0225266C));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_0225266C));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;
    v2->unk_11 = v1->unk_02;

    SysTask_Start(ov17_0225266C, v2, 30000);
}

static void ov17_0225266C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0225266C *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        ov17_02250FE4(v0->unk_00);
        ov17_02251598(v0->unk_00, 0, &v0->unk_12);
        Sound_PlayBGM(SEQ_CO_FANFA);
        Sound_PlayEffect(SEQ_SE_DP_CON_007);
        v0->unk_10++;
        break;
    case 1:
        if (v0->unk_12 == 1) {
            v0->unk_10++;
        }
        break;
    case 2:
        ov17_02251718(v0->unk_00, v0->unk_11, 0, &v0->unk_13);
        v0->unk_10++;
        break;
    case 3:
        if (v0->unk_13 == 1) {
            v0->unk_10++;
        }
        break;
    case 4: {
        int v1, v2;

        v1 = Pokemon_GetValue(v0->unk_00->unk_10.unk_00->unk_00[v0->unk_11], MON_DATA_SPECIES, NULL);
        v2 = Pokemon_GetValue(v0->unk_00->unk_10.unk_00->unk_00[v0->unk_11], MON_DATA_FORM, NULL);
        Pokemon_PlayCry(v0->unk_00->unk_00->unk_14C[v0->unk_11], 0, v1, v2, 0, 127, NULL, 24);
    }
        v0->unk_10++;
        break;
    case 5:
        if (Sound_IsPokemonCryPlaying() == 0) {
            v0->unk_10++;
        }
        break;
    case 6:
        v0->unk_14++;

        if (v0->unk_14 > 60) {
            v0->unk_14 = 0;
            v0->unk_10++;
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02252798(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224FCA0_sub2));
    return v1;
}

static void ov17_022527AC(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_0224FCA0_sub2 *v1 = param3;
    UnkStruct_ov17_02252858 *v2;
    int v3;

    v2 = Heap_AllocFromHeap(HEAP_ID_24, sizeof(UnkStruct_ov17_02252858));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_02252858));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;
    v2->unk_11 = v1->unk_07;

    switch (v1->unk_07) {
    case 0:
        for (v3 = 0; v3 < 4; v3++) {
            v2->unk_14[v3] = v0->unk_39A.unk_82[v3];
        }
        break;
    case 1:
        for (v3 = 0; v3 < 4; v3++) {
            v2->unk_14[v3] = v0->unk_39A.unk_8A[v3];
        }
        break;
    case 2:
        for (v3 = 0; v3 < 4; v3++) {
            v2->unk_14[v3] = v0->unk_39A.unk_92[v3];
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    SysTask_Start(ov17_02252858, v2, 30000);
}

static void ov17_02252858(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02252858 *v0 = param1;
    int v1, v2, v3;

    switch (v0->unk_10) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_CON_033);
        v0->unk_10++;
        break;
    case 1:
        v0->unk_12++;

        if (v0->unk_12 > 45) {
            v0->unk_12 = 0;
            v0->unk_10++;
        }
        break;
    case 2:
        for (v1 = 0; v1 < 4; v1++) {
            if (v0->unk_14[v1] > 0) {
                Sound_PlayEffect(SEQ_SE_DP_CON_034);
                break;
            }
        }

        v0->unk_10++;
    case 3:
        v0->unk_12++;

        if (v0->unk_12 < 1) {
            break;
        }

        v0->unk_12 = 0;
        v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            v3 = v0->unk_00->unk_39A.unk_30[v1];
            v0->unk_1C[v3]++;

            if (v0->unk_1C[v3] <= v0->unk_14[v3]) {
                ov17_022513F4(v0->unk_00, v3, v0->unk_11, v0->unk_1C[v3], v1);
            } else {
                v2++;
            }
        }

        if (v2 >= 4) {
            v0->unk_10++;
        }
        break;
    case 4:
        for (v1 = 0; v1 < 4; v1++) {
            if (v0->unk_14[v1] > 0) {
                Sound_PlayEffect(SEQ_SE_DP_CON_032);
                break;
            }
        }

        Sound_StopEffect(1786, 0);
        v0->unk_10++;
        break;
    case 5:
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02252970(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_02252984(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    UnkStruct_ov17_022529C8 *v1 = Heap_AllocFromHeap(HEAP_ID_24, sizeof(UnkStruct_ov17_022529C8));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_022529C8));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;

    SysTask_Start(ov17_022529C8, v1, 30000);
}

static void ov17_022529C8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022529C8 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        BrightnessController_StartTransition(90, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        Sound_StopBGM(SEQ_CO_FANFA, 90);
        v0->unk_10++;
        break;
    case 1:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == TRUE) && (Sound_IsFadeActive() == FALSE)) {
            ov17_02251020(v0->unk_00);
            GX_SetMasterBrightness(16);
            GXS_SetMasterBrightness(16);
            v0->unk_10++;
        }
        break;
    case 2:
        v0->unk_12++;

        if (v0->unk_12 > 60) {
            v0->unk_12 = 0;
            v0->unk_10++;
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_Free(v0);
        SysTask_Done(param0);
        return;
    }
}
