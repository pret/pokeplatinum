#include "overlay022/ov22_022578F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020298D8.h"

#include "overlay022/ov22_02254DE0.h"
#include "overlay022/ov22_02255D44.h"
#include "overlay022/ov22_02259098.h"
#include "overlay022/ov22_02259484.h"
#include "overlay022/ov22_02259560.h"
#include "overlay022/ov22_022597BC.h"
#include "overlay022/struct_ov22_0225500C.h"
#include "overlay022/struct_ov22_02255040.h"
#include "overlay022/struct_ov22_02257964.h"
#include "overlay022/struct_ov22_02259560.h"
#include "overlay022/struct_ov22_022599A0.h"
#include "overlay022/struct_ov22_0225B388.h"

#include "pokemon.h"
#include "pokemon_sprite.h"
#include "touch_screen.h"
#include "unk_02015064.h"

static void ov22_02257DEC(UnkStruct_ov22_02257964 *param0, UnkStruct_ov22_02259560 *param1, BOOL param2, NNSG2dCharacterData **param3);
static void ov22_02257EC8(UnkStruct_ov22_02259560 *param0, int *param1, int *param2);

void ov22_022578F4(UnkStruct_ov22_02257964 *param0, UnkStruct_ov22_0225B388 *param1)
{
    param0->unk_2C.unk_00 = param1->unk_00;
    param0->unk_2C.unk_04 = param1->unk_04;
    param0->unk_2C.unk_08 = param1->unk_08;
    param0->unk_2C.unk_0C = param1->unk_0C;
    param0->unk_2C.unk_10 = param1->unk_10;
    param0->unk_2C.unk_14 = param1->unk_14;
    param0->unk_2C.unk_18 = param1->unk_18;
    param0->unk_2C.unk_48 = 0;
    param0->unk_00.unk_00 = param1->unk_1C;
    param0->unk_00.unk_04.unk_08 = &param0->unk_00.unk_04;
    param0->unk_00.unk_04.unk_0C = &param0->unk_00.unk_04;
    param0->unk_00.unk_14.unk_08 = &param0->unk_00.unk_14;
    param0->unk_00.unk_14.unk_0C = &param0->unk_00.unk_14;
    param0->unk_00.unk_24 = 0;
    param0->unk_00.unk_28 = param1->unk_20;

    {
        UnkStruct_ov22_02259560 *v0;

        v0 = ov22_022594C0(param0->unk_00.unk_00, &param0->unk_2C.unk_4C, 3);
        ov22_02259520(v0, &param0->unk_00.unk_14);
    }
}

void ov22_02257948(UnkStruct_ov22_02257964 *param0)
{
    ov22_022579F0(param0);
    ov22_02257A98(param0);
    memset(param0, 0, sizeof(UnkStruct_ov22_02257964));
}

void ov22_02257964(UnkStruct_ov22_02257964 *param0, Pokemon *param1, PokemonSpriteTemplate *param2, int param3, int param4, int param5, int param6)
{
    ov22_022590C0(&param0->unk_2C.unk_4C, param0->unk_2C.unk_10, param1, param2, param6);
    ov22_022591D0(&param0->unk_2C.unk_4C, param5);
    ov22_022591EC(&param0->unk_2C.unk_4C, param3, param4);
}

void ov22_02257998(UnkStruct_ov22_02257964 *param0, Pokemon *param1, PokemonSpriteTemplate *param2, int param3)
{
    ov22_022590C0(&param0->unk_2C.unk_4C, param0->unk_2C.unk_10, param1, param2, param3);
}

void ov22_022579B4(UnkStruct_ov22_02257964 *param0, Pokemon *param1, PokemonSpriteTemplate *param2, int param3)
{
    ov22_022590D4(&param0->unk_2C.unk_4C, param0->unk_2C.unk_10, param1, param2, param3, 1);
}

void ov22_022579D8(UnkStruct_ov22_02257964 *param0, UnkStruct_ov22_02259560 *param1)
{
    ov22_02259520(param1, param0->unk_00.unk_14.unk_0C);
}

void ov22_022579E8(UnkStruct_ov22_02259560 *param0)
{
    ov22_02259530(param0);
}

void ov22_022579F0(UnkStruct_ov22_02257964 *param0)
{
    ov22_022591B8(&param0->unk_2C.unk_4C);
}

BOOL ov22_022579FC(UnkStruct_ov22_02257964 *param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_ov22_0225500C v0;
    UnkStruct_ov22_02255040 *v1;

    if (param0->unk_00.unk_24 < param0->unk_00.unk_28) {
        v0.unk_00 = param0->unk_2C.unk_18;
        v0.unk_04 = param0->unk_2C.unk_00;
        v0.unk_08 = param0->unk_2C.unk_04[param1];
        v0.unk_0C = param0->unk_2C.unk_08[0];
        v0.unk_10 = param2;
        v0.unk_14 = param3;
        v0.unk_18 = param1;
        v0.unk_1C = param0->unk_2C.unk_0C[param1];

        v1 = ov22_02254E20(&v0);
        ov22_02254F6C(v1, param4);

        {
            UnkStruct_ov22_02259560 *v2;

            v2 = ov22_022594C0(param0->unk_00.unk_00, v1, 0);
            ov22_02259520(v2, &param0->unk_00.unk_04);
        }

        param0->unk_00.unk_24++;

        return 1;
    }

    return 0;
}

BOOL ov22_02257A5C(UnkStruct_ov22_02257964 *param0, UnkStruct_ov22_02259560 *param1, NNSG2dCharacterData **param2)
{
    if (param0->unk_00.unk_24 < param0->unk_00.unk_28) {
        ov22_02257DEC(param0, param1, 1, param2);
        param0->unk_00.unk_24++;

        return 1;
    }

    return 0;
}

void ov22_02257A80(UnkStruct_ov22_02257964 *param0, UnkStruct_ov22_02259560 *param1)
{
    ov22_02259530(param1);

    param0->unk_00.unk_24--;

    GF_ASSERT(param0->unk_00.unk_24 >= 0);
}

void ov22_02257A98(UnkStruct_ov22_02257964 *param0)
{
    ov22_02259540(&param0->unk_00.unk_04);
    ov22_02259540(&param0->unk_00.unk_14);

    param0->unk_00.unk_24 = 0;
}

void ov22_02257AB0(UnkStruct_ov22_02257964 *param0, int param1, int param2)
{
    ov22_022596EC(&param0->unk_00.unk_04, param1, param2);
    ov22_022596EC(&param0->unk_00.unk_14, param1, param2);
}

void ov22_02257ACC(UnkStruct_ov22_02257964 *param0, int param1, int param2)
{
    ov22_022596EC(&param0->unk_00.unk_14, param1, param2);
}

void ov22_02257AD8(UnkStruct_ov22_02257964 *param0, int param1, int param2, int param3, int param4)
{
    ov22_022596EC(&param0->unk_00.unk_04, -param1, -param2);
    ov22_022596EC(&param0->unk_00.unk_04, param3, param4);
    ov22_022596EC(&param0->unk_00.unk_14, -param1, -param2);
    ov22_022596EC(&param0->unk_00.unk_14, param3, param4);
}

void ov22_02257B10(UnkStruct_ov22_02257964 *param0)
{
    ov22_02257B1C(param0, -1);
}

void ov22_02257B1C(UnkStruct_ov22_02257964 *param0, int param1)
{
    UnkStruct_ov22_02259560 *v0 = param0->unk_00.unk_14.unk_08;

    while (v0 != &param0->unk_00.unk_14) {
        if (v0->unk_04 == 0) {
            ov22_02254F6C(v0->unk_00, param1);
        } else {
            ov22_022591D0(v0->unk_00, param1);
        }

        param1--;

        v0 = v0->unk_08;
    }

    param1 -= 8;

    v0 = param0->unk_00.unk_04.unk_08;

    while (v0 != &param0->unk_00.unk_04) {
        if (v0->unk_04 == 0) {
            ov22_02254F6C(v0->unk_00, param1);
        } else {
            ov22_022591D0(v0->unk_00, param1);
        }

        param1--;
        v0 = v0->unk_08;
    }
}

void ov22_02257B74(UnkStruct_ov22_02257964 *param0, int param1)
{
    UnkStruct_ov22_02259560 *v0;
    int v1;

    v0 = param0->unk_00.unk_14.unk_08;

    while (v0 != &param0->unk_00.unk_14) {
        if (v0->unk_04 == 0) {
            v1 = ov22_02254F78(v0->unk_00);
            ov22_02254F6C(v0->unk_00, v1 + param1);
        } else {
            v1 = ov22_022591E0(v0->unk_00);
            ov22_022591D0(v0->unk_00, v1 + param1);
        }

        v0 = v0->unk_08;
    }

    v0 = param0->unk_00.unk_04.unk_08;

    while (v0 != &param0->unk_00.unk_04) {
        if (v0->unk_04 == 0) {
            v1 = ov22_02254F78(v0->unk_00);
            ov22_02254F6C(v0->unk_00, v1 + param1);
        } else {
            v1 = ov22_022591E0(v0->unk_00);
            ov22_022591D0(v0->unk_00, v1 + param1);
        }

        v0 = v0->unk_08;
    }
}

BOOL ov22_02257BE8(UnkStruct_ov22_02257964 *param0)
{
    TouchScreenHitTable v0;

    v0.rect.top = (16 + 2);
    v0.rect.bottom = (16 + 2) + (129 - (2 * 2));
    v0.rect.left = (136 + 2);
    v0.rect.right = (136 + 2) + (112 - (2 * 2));

    return TouchScreen_LocationHeld(&v0);
}

BOOL ov22_02257C04(UnkStruct_ov22_02257964 *param0, int param1, int param2)
{
    TouchScreenHitTable v0;

    v0.rect.top = (16 + 2);
    v0.rect.bottom = (16 + 2) + (129 - (2 * 2));
    v0.rect.left = (136 + 2);
    v0.rect.right = (136 + 2) + (112 - (2 * 2));

    return sub_02022830(&v0, param1, param2);
}

UnkStruct_ov22_02259560 *ov22_02257C20(UnkStruct_ov22_02257964 *param0, int *param1, int *param2, NNSG2dCharacterData **param3)
{
    UnkStruct_ov22_02259560 *v0;
    BOOL v1;

    v0 = param0->unk_00.unk_14.unk_08;

    while (v0 != &param0->unk_00.unk_14) {
        v1 = ov22_022595AC(v0, param1, param2, param3);

        if (v1 == 1) {
            return v0;
        }

        v0 = v0->unk_08;
    }

    v0 = param0->unk_00.unk_04.unk_08;

    while (v0 != &param0->unk_00.unk_04) {
        v1 = ov22_022595AC(v0, param1, param2, param3);

        if (v1 == 1) {
            return v0;
        }

        v0 = v0->unk_08;
    }

    return NULL;
}

void ov22_02257C88(UnkStruct_ov22_02257964 *param0, int param1, int heapID)
{
    UnkStruct_ov22_022599A0 v0;

    v0.unk_00 = param0->unk_2C.unk_14;
    v0.unk_04 = 25;
    v0.unk_08 = (param1) * 4 + 134;
    v0.unk_0C = (param1) * 4 + 134 + 1;
    v0.unk_10 = (param1) * 4 + 134 + 2;
    v0.unk_14 = 136;
    v0.unk_18 = 16;
    v0.unk_1C = 2;
    v0.unk_20 = 1;
    v0.unk_24 = 13;
    v0.unk_28 = 0;
    v0.heapID = heapID;

    ov22_022597BC(&param0->unk_2C.unk_1C, &v0);

    param0->unk_2C.unk_48 = param1;
}

void ov22_02257CD4(UnkStruct_ov22_02257964 *param0)
{
    ov22_02259804(&param0->unk_2C.unk_1C);
}

void ov22_02257CE0(UnkStruct_ov22_02257964 *param0, int *param1, int *param2)
{
    *param1 = sub_020080C0(param0->unk_2C.unk_4C.unk_00, 0);
    *param2 = sub_020080C0(param0->unk_2C.unk_4C.unk_00, 1);
}

int ov22_02257D00(UnkStruct_ov22_02257964 *param0)
{
    return param0->unk_00.unk_24;
}

void ov22_02257D04(UnkStruct_ov22_02257964 *param0, int *param1, int *param2)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_ov22_02259560 *v4 = param0->unk_00.unk_14.unk_08;
    v0 = 0;
    v1 = 0;

    while (v4 != &param0->unk_00.unk_14) {
        ov22_02257EC8(v4, &v2, &v3);

        if (MATH_ABS(v2) > MATH_ABS(v0)) {
            v0 = v2;
        }

        if (MATH_ABS(v3) > MATH_ABS(v1)) {
            v1 = v3;
        }

        v4 = v4->unk_08;
    }

    *param1 = v0;
    *param2 = v1;
}

void ov22_02257D70(UnkStruct_ov22_02257964 *param0, GXRgb param1)
{
    UnkStruct_ov22_02259560 *v0 = param0->unk_00.unk_14.unk_08;

    while (v0 != &param0->unk_00.unk_14) {
        if (v0->unk_04 == 0) {
            UnkStruct_ov22_02255040 *v1 = v0->unk_00;

            sub_0201529C(v1->unk_04, param1);
        } else {
            UnkStruct_020298D8 *v2 = v0->unk_00;

            sub_02007DEC(v2->unk_00, 24, (param1 >> 10) & 0x1f);
            sub_02007DEC(v2->unk_00, 25, (param1 >> 5) & 0x1f);
            sub_02007DEC(v2->unk_00, 26, (param1 >> 0) & 0x1f);
        }

        v0 = v0->unk_08;
    }

    v0 = param0->unk_00.unk_04.unk_08;

    while (v0 != &param0->unk_00.unk_04) {
        UnkStruct_ov22_02255040 *v3 = v0->unk_00;

        sub_0201529C(v3->unk_04, param1);
        v0 = v0->unk_08;
    }
}

static void ov22_02257DEC(UnkStruct_ov22_02257964 *param0, UnkStruct_ov22_02259560 *param1, BOOL param2, NNSG2dCharacterData **param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;
    int v7;
    int v8;
    int v9;
    int v10;
    int v11, v12;
    BOOL v13;
    NNSG2dCharacterData *v14;
    int v15, v16;

    ov22_02259648(param1, &v1, &v2);
    ov22_02259698(param1, &v3, &v4);
    ov22_022596B0(param1, &v5, &v15, &v6, &v16);

    v7 = v2 + v6;
    v8 = v2 + v4 - v16;
    v9 = v1 + v5;
    v10 = v1 + v3 - v15;
    v14 = param3[(100 + 18)];

    v13 = 0;

    for (v0 = 0; v0 < 16; v0++) {
        ov22_022577EC(v7, v8, v9, v10, v0, &v11, &v12);
        v13 |= ov22_022592F0(&param0->unk_2C.unk_4C, v11, v12, v14);
    }

    if (v13) {
        if (param2) {
            ov22_02259520(param1, &param0->unk_00.unk_14);
        } else {
            ov22_02259520(param1, param0->unk_00.unk_14.unk_0C);
        }
    } else {
        if (param2) {
            ov22_02259520(param1, &param0->unk_00.unk_04);
        } else {
            ov22_02259520(param1, param0->unk_00.unk_04.unk_0C);
        }
    }
}

static void ov22_02257EC8(UnkStruct_ov22_02259560 *param0, int *param1, int *param2)
{
    int v0, v1;
    int v2, v3;
    int v4, v5;
    int v6, v7;
    int v8, v9, v10, v11;
    int v12, v13, v14, v15;

    ov22_02259698(param0, &v0, &v1);
    ov22_02259648(param0, &v2, &v3);
    ov22_022596B0(param0, &v4, &v6, &v5, &v7);

    v8 = v3 + v5;
    v9 = v3 + v1 - v7;
    v10 = v2 + v4;
    v11 = v2 + v0 - v6;
    v14 = (136 + 2) - v10;
    v15 = v11 - ((136 + 2) + (112 - (2 * 2)));
    v12 = (16 + 2) - v8;
    v13 = v9 - ((16 + 2) + (129 - (2 * 2)));

    if (v14 > 0) {
        *param1 = v14;
    } else if (v15 > 0) {
        *param1 = -v15;
    } else {
        *param1 = 0;
    }

    if (v12 > 0) {
        *param2 = v12;
    } else if (v13 > 0) {
        *param2 = -v13;
    } else {
        *param2 = 0;
    }
}
