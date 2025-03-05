#include "overlay012/ov12_022346A4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/pokemon_sprite.h"

#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02226454.h"

#include "heap.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"
#include "unk_0200762C.h"

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    int unk_04;
    int unk_08;
    SpriteManager *unk_0C;
    int unk_10;
    ManagedSprite *unk_14[2];
    UnkStruct_ov12_02225F6C unk_1C[2];
    UnkStruct_ov12_02225F6C unk_64[2];
} UnkStruct_ov12_022346A4;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    int unk_04;
    int unk_08;
    SpriteManager *unk_0C;
    ManagedSprite *unk_10;
    UnkStruct_ov12_02226454 unk_14;
} UnkStruct_ov12_022348C8;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    int unk_04;
    SpriteManager *unk_08;
    ManagedSprite *unk_0C[6];
    int unk_24[6];
    int unk_3C[6];
} UnkStruct_ov12_02234A10;

typedef struct {
    UnkStruct_ov12_0221FCDC *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    ManagedSprite *unk_18[6];
    UnkStruct_ov12_02225F6C unk_30[6];
    UnkStruct_ov12_02226454 unk_108;
    s16 unk_130;
    s16 unk_132;
} UnkStruct_ov12_02234BD8;

static void ov12_02234750(SysTask *param0, void *param1);
static void ov12_0223483C(ManagedSprite *param0, UnkStruct_ov12_02225F6C *param1, UnkStruct_ov12_02225F6C *param2, int param3);
static BOOL ov12_0223489C(ManagedSprite *param0, UnkStruct_ov12_02225F6C *param1, UnkStruct_ov12_02225F6C *param2);
static void ov12_02234918(SysTask *param0, void *param1);
static void ov12_02234B64(SysTask *param0, void *param1);
static BOOL ov12_02234B34(ManagedSprite *param0, int *param1, int *param2);
static void ov12_02234AE0(ManagedSprite *param0, int *param1, int *param2, int param3, int param4);
static void ov12_02234CA8(SysTask *param0, void *param1);

void ov12_022346A4(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    SpriteTemplate v0;
    UnkStruct_ov12_022346A4 *v1;
    int v2;
    int v3;

    v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022346A4));

    v1->unk_00 = param0;
    v1->unk_0C = param2;

    v3 = ov12_02220240(param0);
    v1->unk_10 = ov12_02225964(param0, v3);

    v0 = ov12_0222329C(v1->unk_00);
    v0.x = ov12_022258E0(param0, v3, 0);
    v0.y = ov12_022258E0(param0, v3, 1);

    for (v2 = 0; v2 < 2; v2++) {
        if (v2 == 0) {
            v1->unk_14[v2] = param3;
            ManagedSprite_SetPositionXY(v1->unk_14[v2], v0.x, v0.y);
        } else {
            v1->unk_14[v2] = SpriteSystem_NewSprite(param1, param2, &v0);
        }

        ManagedSprite_SetDrawFlag(v1->unk_14[v2], 0);
        ManagedSprite_SetPriority(v1->unk_14[v2], 100);
        ManagedSprite_SetExplicitPriority(v1->unk_14[v2], 1);
    }

    ov12_022201E8(v1->unk_00, ov12_02234750, v1);
}

static void ov12_02234750(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022346A4 *v0 = param1;
    int v1;

    switch (v0->unk_04) {
    case 0:
        ov12_0223483C(v0->unk_14[0], &v0->unk_1C[0], &v0->unk_64[0], v0->unk_10);
        ov12_0223489C(v0->unk_14[0], &v0->unk_1C[0], &v0->unk_64[0]);
        v0->unk_04++;
        v0->unk_08 = 8;
        break;
    case 1:
        v0->unk_08--;
        ov12_0223489C(v0->unk_14[0], &v0->unk_1C[0], &v0->unk_64[0]);

        if (v0->unk_08 < 0) {
            v0->unk_04++;
        }
        break;
    case 2:
        ov12_0223483C(v0->unk_14[1], &v0->unk_1C[1], &v0->unk_64[1], v0->unk_10);
        ov12_0223489C(v0->unk_14[1], &v0->unk_1C[1], &v0->unk_64[1]);
        ov12_0223489C(v0->unk_14[0], &v0->unk_1C[0], &v0->unk_64[0]);
        v0->unk_04++;
        break;
    case 3:
        ov12_0223489C(v0->unk_14[0], &v0->unk_1C[0], &v0->unk_64[0]);

        if (ov12_0223489C(v0->unk_14[1], &v0->unk_1C[1], &v0->unk_64[1])) {
            v0->unk_04++;
        }
        break;
    case 4:
        for (v1 = 0; v1 < 2; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_14[v1]);
        }

        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_0C);
}

static void ov12_0223483C(ManagedSprite *param0, UnkStruct_ov12_02225F6C *param1, UnkStruct_ov12_02225F6C *param2, int param3)
{
    s16 v0, v1;

    ManagedSprite_SetAffineOverwriteMode(param0, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetDrawFlag(param0, TRUE);
    ManagedSprite_GetPositionXY(param0, &v0, &v1);

    ov12_02225BC8(param1, v0, v0 + (16 * param3), v1, v1 + -32, 32);
    ov12_02225E68(param2, 2, 10, 10, 32);
}

static BOOL ov12_0223489C(ManagedSprite *param0, UnkStruct_ov12_02225F6C *param1, UnkStruct_ov12_02225F6C *param2)
{
    BOOL v0;

    ov12_02225C50(param1, param0);
    v0 = ov12_022260A8(param2, param0);

    if (v0) {
        return 0;
    }

    ManagedSprite_SetDrawFlag(param0, 0);
    return 1;
}

void ov12_022348C8(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_022348C8 *v0;
    int v1;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_022348C8));

    v0->unk_00 = param0;
    v0->unk_0C = param2;
    v0->unk_10 = param3;

    ManagedSprite_SetDrawFlag(v0->unk_10, 0);
    ManagedSprite_SetExplicitOamMode(v0->unk_10, GX_OAM_MODE_XLU);
    ManagedSprite_SetPriority(v0->unk_10, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_10, 1);

    v0->unk_08 = ManagedSprite_GetExplicitPaletteOffset(v0->unk_10);

    ov12_022201E8(v0->unk_00, ov12_02234918, v0);
}

static void ov12_02234918(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022348C8 *v0 = param1;
    int v1;

    switch (v0->unk_04) {
    case 0:
        ov12_02226424(&v0->unk_14, 0, 16, 20 - 0, 20 - 16, 10);
        ManagedSprite_SetDrawFlag(v0->unk_10, 1);
        ov12_02235780(v0->unk_00, 0, 20 - 0);
        v0->unk_04++;
        break;
    case 1:
        if (ov12_02226454(&v0->unk_14)) {
            v0->unk_04++;

            ManagedSprite_SetAnimateFlag(v0->unk_10, 1);
            ManagedSprite_SetAnimationSpeed(v0->unk_10, FX32_ONE);
        }
        break;
    case 2:
        v1 = ManagedSprite_GetAnimationFrame(v0->unk_10);
        v1 %= 3;

        ManagedSprite_SetExplicitPaletteOffset(v0->unk_10, v0->unk_08 + v1);

        if (ManagedSprite_IsAnimated(v0->unk_10) == 0) {
            v0->unk_04++;
            ov12_02226424(&v0->unk_14, 16, 0, 20 - 16, 20 - 0, 8);
        }
        break;
    case 3:
        if (ov12_02226454(&v0->unk_14)) {
            v0->unk_04++;
            ManagedSprite_SetDrawFlag(v0->unk_10, 0);
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(v0->unk_10);
        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_0C);
}

void ov12_02234A10(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    SpriteTemplate v0;
    UnkStruct_ov12_02234A10 *v1;
    int v2;
    int v3;
    int v4;

    v1 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02234A10));

    v1->unk_00 = param0;
    v1->unk_08 = param2;

    v2 = ov12_02220240(v1->unk_00);
    v4 = ov12_02225964(param0, v2);
    v0 = ov12_0222329C(v1->unk_00);

    v0.x = ov12_022258E0(param0, v2, 0);
    v0.y = ov12_022258E0(param0, v2, 1);

    for (v3 = 6 - 1; v3 >= 0; v3--) {
        if (v3 == 6 - 1) {
            v1->unk_0C[v3] = param3;
            ManagedSprite_SetPositionXY(param3, v0.x, v0.y);
        } else {
            v1->unk_0C[v3] = SpriteSystem_NewSprite(param1, param2, &v0);
        }

        ManagedSprite_SetPriority(v1->unk_0C[v3], 100);
        ManagedSprite_SetExplicitPriority(v1->unk_0C[v3], 1);
        ManagedSprite_SetDrawFlag(v1->unk_0C[v3], 0);

        ov12_02234AE0(v1->unk_0C[v3], &v1->unk_24[v3], &v1->unk_3C[v3], v3, v4);
    }

    ov12_022201E8(v1->unk_00, ov12_02234B64, v1);
}

static void ov12_02234AE0(ManagedSprite *param0, int *param1, int *param2, int param3, int param4)
{
    s16 v0, v1;

    ManagedSprite_SetAnim(param0, param3 / 2);

    *param2 = param3 * 2;
    *param1 = 16;

    ManagedSprite_GetPositionXY(param0, &v0, &v1);

    v0 += (40 + (-12 * param3)) * param4;
    v1 += 40;

    ManagedSprite_SetPositionXY(param0, v0, v1);
}

static BOOL ov12_02234B34(ManagedSprite *param0, int *param1, int *param2)
{
    if (*param2 > 0) {
        (*param2)--;

        if (*param2 == 0) {
            ManagedSprite_SetDrawFlag(param0, 1);
        }
    } else {
        if (*param1 > 0) {
            (*param1)--;
        } else {
            ManagedSprite_SetDrawFlag(param0, 0);
            return 1;
        }
    }

    return 0;
}

static void ov12_02234B64(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02234A10 *v0 = param1;
    int v1;
    BOOL v2;

    switch (v0->unk_04) {
    case 0:
        for (v1 = 0; v1 < 6; v1++) {
            v2 = ov12_02234B34(v0->unk_0C[v1], &v0->unk_24[v1], &v0->unk_3C[v1]);
        }

        if (v2) {
            v0->unk_04++;
        }
        break;
    case 1:
        for (v1 = 0; v1 < 6; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_0C[v1]);
        }

        ov12_02220220(v0->unk_00, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

static void ov12_02234BD8(UnkStruct_ov12_02234BD8 *param0, int param1)
{
    int v0;
    int v1 = ((360 * 0xffff) / 360) / 6;

    for (v0 = 0; v0 < 6; v0++) {
        ov12_02225A5C(&param0->unk_30[v0], ((0 * 0xffff) / 360), ((180 * 0xffff) / 360), 0, 0, (FX32_ONE * 50), 0, 48);
        param0->unk_30[v0].unk_04[1] += (v1 * v0);
        param0->unk_30[v0].unk_04[5] *= param1;
    }
}

static void ov12_02234C30(UnkStruct_ov12_02234BD8 *param0)
{
    int v0;
    u16 v1;

    for (v0 = 0; v0 < 6; v0++) {
        ov12_02225AE0(&param0->unk_30[v0]);

        ManagedSprite_SetPositionXY(param0->unk_18[v0], param0->unk_130 + param0->unk_30[v0].unk_00, param0->unk_132);

        if ((param0->unk_30[v0].unk_04[1] >= ((90 * 0xffff) / 360)) && (param0->unk_30[v0].unk_04[1] <= ((269 * 0xffff) / 360))) {
            ManagedSprite_SetExplicitPriority(param0->unk_18[v0], 1);
        } else {
            ManagedSprite_SetExplicitPriority(param0->unk_18[v0], ov12_0222339C(param0->unk_00) + 1);
        }
    }
}

static void ov12_02234CA8(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02234BD8 *v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:

        ov12_02235780(v0->unk_00, 1, 16 - 1);
        ov12_02226424(&v0->unk_108, 1, 16, 16 - 1, 16 - 16, 10);
        ov12_02234BD8(v0, v0->unk_14);
        ov12_02234C30(v0);
        v0->unk_0C++;
        break;
    case 1:
        ov12_02234C30(v0);

        if (ov12_02226454(&v0->unk_108)) {
            v0->unk_0C++;
            v0->unk_10 = (48 - (10 * 2));
        }
        break;
    case 2:
        ov12_02234C30(v0);
        v0->unk_10--;

        if (v0->unk_10 < 0) {
            v0->unk_0C++;
            ov12_02226424(&v0->unk_108, 16, 1, 16 - 16, 16 - 1, 10);
        }
        break;
    case 3:
        ov12_02234C30(v0);

        if (ov12_02226454(&v0->unk_108)) {
            v0->unk_0C++;
        }
        break;
    case 4:
        for (v1 = 0; v1 < 6; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_18[v1]);
        }

        Heap_FreeToHeap(v0);
        ov12_02220220(v0->unk_00, param0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02234D98(UnkStruct_ov12_0221FCDC *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02234BD8 *v0;
    int v1;
    PokemonSprite *v2;
    SpriteTemplate v3;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_02234BD8));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v2 = ov12_022232FC(v0->unk_00, ov12_02220240(param0));

    v0->unk_130 = sub_020080C0(v2, 0);
    v0->unk_132 = sub_020080C0(v2, 1);

    v3 = ov12_0222329C(param0);

    for (v1 = 0; v1 < 6; v1++) {
        if (v1 == 0) {
            v0->unk_18[v1] = param3;
        } else {
            v0->unk_18[v1] = SpriteSystem_NewSprite(v0->unk_04, v0->unk_08, &v3);
        }

        ManagedSprite_SetPriority(v0->unk_18[v1], 100);
        ManagedSprite_SetExplicitOamMode(v0->unk_18[v1], GX_OAM_MODE_XLU);
        ManagedSprite_SetAnimateFlag(v0->unk_18[v1], 1);
    }

    v0->unk_14 = ov12_02225964(v0->unk_00, ov12_02220240(v0->unk_00));
    ov12_022201E8(v0->unk_00, ov12_02234CA8, v0);
}
