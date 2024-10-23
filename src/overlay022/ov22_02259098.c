#include "overlay022/ov22_02259098.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02007768_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_020298D8.h"

#include "overlay022/ov22_02255094.h"
#include "overlay022/struct_ov22_022596B0.h"
#include "overlay022/struct_ov22_0225A0E4.h"

#include "core_sys.h"
#include "graphics.h"
#include "heap.h"
#include "pokemon.h"
#include "touch_screen.h"
#include "unk_0200762C.h"

static int ov22_0225936C(char *param0, int param1);
static void ov22_02259448(TouchScreenRect *rect, int param1, int param2, int param3, int param4);
static void ov22_022593B8(char *param0, int param1, int param2, UnkStruct_ov22_022596B0 *param3);

void ov22_02259098(UnkStruct_ov22_0225A0E4 *param0, ArchivedSprite *param1)
{
    void *v0;
    NNSG2dCharacterData *v1;

    v0 = sub_02006FE8(param1->archive, param1->character, 0, 14, 0);
    v1 = ov22_02255340(param0, v0, (100 + 18));

    sub_020093A0((u8 *)v1->pRawData, param1->archive);
}

void ov22_022590C0(UnkStruct_020298D8 *param0, UnkStruct_02007768 *param1, Pokemon *param2, ArchivedSprite *param3, int param4)
{
    ov22_022590D4(param0, param1, param2, param3, param4, 0);
}

void ov22_022590D4(UnkStruct_020298D8 *param0, UnkStruct_02007768 *param1, Pokemon *param2, ArchivedSprite *param3, int param4, BOOL param5)
{
    int v0 = Pokemon_GetValue(param2, MON_DATA_SPECIES, NULL);

    Pokemon_BuildArchivedDPSprite(param3, param2, 2);
    param0->unk_00 = sub_02007C34(param1, param3, 192, 56, 0, 0, NULL, NULL);

    {
        int v1, v2;

        ov22_02259270(param0, &v1, &v2);

        v1 /= 2;
        v2 /= 2;

        param0->unk_04.rect.top = 56 - v2;
        param0->unk_04.rect.bottom = 56 + v2;
        param0->unk_04.rect.left = 192 - v1;
        param0->unk_04.rect.right = 192 + v1;

        ov22_02259448(&param0->unk_04, 192, 56, v1, v2);
    }

    {
        u8 v3 = Pokemon_DPSpriteYOffset(param2, 2);
        void *v4;
        NNSG2dCharacterData *v5;

        v4 = sub_02006FE8(param3->archive, param3->character, 0, param4, 0);

        NNS_G2dGetUnpackedCharacterData(v4, &v5);
        sub_020093A0((u8 *)v5->pRawData, param3->archive);

        if (param5 == 0) {
            ov22_022593B8(v5->pRawData, v5->W * 8, v5->H * 8, &param0->unk_08);
        } else {
            param0->unk_08.unk_00 = ov22_0225936C(v5->pRawData, v5->W * 8);
            param0->unk_08.unk_01 = param0->unk_08.unk_00;
            param0->unk_08.unk_03 = v3;
            param0->unk_08.unk_02 = v3;
        }

        Heap_FreeToHeap(v4);
    }

    param0->unk_0C = param2;
}

void ov22_022591B8(UnkStruct_020298D8 *param0)
{
    sub_02007DC8(param0->unk_00);
    memset(param0, 0, sizeof(UnkStruct_020298D8));
}

void ov22_022591D0(UnkStruct_020298D8 *param0, int param1)
{
    sub_02007DEC(param0->unk_00, 2, param1);
}

int ov22_022591E0(UnkStruct_020298D8 *param0)
{
    return sub_020080C0(param0->unk_00, 2);
}

void ov22_022591EC(UnkStruct_020298D8 *param0, int param1, int param2)
{
    int v0, v1;

    ov22_02259270(param0, &v0, &v1);
    sub_02007DEC(param0->unk_00, 0, param1);
    sub_02007DEC(param0->unk_00, 1, param2);

    v1 /= 2;
    v0 /= 2;

    ov22_02259448(&param0->unk_04, param1, param2, v0, v1);
}

BOOL ov22_02259238(UnkStruct_020298D8 *param0)
{
    return TouchScreen_LocationHeld(&param0->unk_04);
}

BOOL ov22_02259244(UnkStruct_020298D8 *param0, int param1, int param2)
{
    return sub_02022830(&param0->unk_04, param1, param2);
}

void ov22_02259250(UnkStruct_020298D8 *param0, int *param1, int *param2)
{
    *param1 = sub_020080C0(param0->unk_00, 0);
    *param2 = sub_020080C0(param0->unk_00, 1);
}

void ov22_02259270(UnkStruct_020298D8 *param0, int *param1, int *param2)
{
    *param1 = 80;
    *param2 = 80;
}

BOOL ov22_02259278(UnkStruct_020298D8 *param0, int *param1, int *param2, NNSG2dCharacterData *param3)
{
    int v0;
    int v1, v2;
    int v3, v4;

    v0 = ov22_02259238(param0);

    if (v0 == 0) {
        return 0;
    }

    ov22_02259250(param0, &v3, &v4);
    ov22_02259270(param0, &v1, &v2);

    v3 -= (v1 / 2);
    v4 -= (v2 / 2);

    *param1 = gCoreSys.touchX - v3;
    *param2 = gCoreSys.touchY - v4;

    v0 = ov22_02255420(param3, *param1, *param2, 0);

    if (v0 == 0) {
        return 1;
    }

    return 0;
}

BOOL ov22_022592F0(UnkStruct_020298D8 *param0, int param1, int param2, NNSG2dCharacterData *param3)
{
    int v0;
    int v1, v2;
    int v3, v4;

    v0 = ov22_02259244(param0, param1, param2);

    if (v0 == 0) {
        return 0;
    }

    ov22_02259250(param0, &v3, &v4);
    ov22_02259270(param0, &v1, &v2);

    v3 -= (v1 / 2);
    v4 -= (v2 / 2);

    param1 -= v3;
    param2 -= v4;

    v0 = ov22_02255420(param3, param1, param2, 0);

    if (v0 == 0) {
        return 1;
    }

    return 0;
}

void ov22_02259358(UnkStruct_020298D8 *param0, UnkStruct_ov22_022596B0 *param1)
{
    *param1 = param0->unk_08;
}

static int ov22_0225936C(char *param0, int param1)
{
    int v0, v1;
    int v2;
    int v3;
    u8 v4;

    for (v0 = 0; v0 < 80; v0++) {
        for (v1 = 0; v1 < 80; v1++) {
            v2 = ((v1 * param1) + v0) / 2;
            v3 = ((v1 * param1) + v0) % 2;
            v4 = 0xf << (4 * v3);

            if ((param0[v2] & v4) != 0) {
                return v0;
            }
        }
    }

    return 80;
}

static void ov22_022593B8(char *param0, int param1, int param2, UnkStruct_ov22_022596B0 *param3)
{
    int v0, v1;
    int v2;
    int v3;
    u8 v4;

    param3->unk_00 = 80 / 2;
    param3->unk_01 = 80 / 2;
    param3->unk_02 = 80 / 2;
    param3->unk_03 = 80 / 2;

    for (v0 = 0; v0 < 80; v0++) {
        for (v1 = 0; v1 < 80; v1++) {
            v2 = ((v1 * param1) + v0) / 2;
            v3 = ((v1 * param1) + v0) % 2;
            v4 = 0xf << (4 * v3);

            if ((param0[v2] & v4) != 0) {
                if (param3->unk_00 > v0) {
                    param3->unk_00 = v0;
                }

                if (param3->unk_01 > 80 - v0) {
                    param3->unk_01 = 80 - v0;
                }

                if (param3->unk_02 > v1) {
                    param3->unk_02 = v1;
                }

                if (param3->unk_03 > 80 - v1) {
                    param3->unk_03 = 80 - v1;
                }
            }
        }
    }
}

static void ov22_02259448(TouchScreenRect *rect, int param1, int param2, int param3, int param4)
{
    if ((param2 - param4) >= 0) {
        rect->rect.top = param2 - param4;
    } else {
        rect->rect.top = 0;
    }

    if ((param2 + param4) <= 191) {
        rect->rect.bottom = param2 + param4;
    } else {
        rect->rect.bottom = 191;
    }

    if ((param1 - param3) >= 0) {
        rect->rect.left = param1 - param3;
    } else {
        rect->rect.left = 0;
    }

    if ((param1 + param3) <= 255) {
        rect->rect.right = param1 + param3;
    } else {
        rect->rect.right = 255;
    }
}
