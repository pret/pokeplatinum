#include "overlay019/ov19_021D8B54.h"

#include <nitro.h>
#include <string.h>

#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021D79F8.h"
#include "overlay019/ov19_021DA270.h"
#include "overlay019/ov19_021DC5F0.h"
#include "overlay019/ov19_021DE3E8.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D5DF8_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021D8E00.h"
#include "overlay019/struct_ov19_021DCD18.h"

#include "graphics.h"
#include "heap.h"
#include "math.h"
#include "narc.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    Sprite *unk_00;
    u16 unk_04;
    u16 unk_06;
    u32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    fx32 unk_24;
    UnkStruct_ov19_021D8E00 *unk_28;
} UnkStruct_ov19_021D9554;

static void ov19_021D8E00(UnkStruct_ov19_021D8E00 *param0);
static void ov19_021D8EE0(const UnkStruct_ov19_021D8E00 *param0, BOOL *param1, BOOL *param2);
static void ov19_021D9088(SysTask *param0, void *param1);
static void ov19_021D928C(SysTask *param0, void *param1);
static void ov19_021D93D0(SysTask *param0, void *param1);
static void ov19_021D9554(UnkStruct_ov19_021D8E00 *param0, Sprite *param1, fx32 param2, s32 param3, u32 param4);
static BOOL ov19_021D95E0(UnkStruct_ov19_021D8E00 *param0);
static void ov19_021D95F4(void *param0);
static void ov19_021D9600(SysTask *param0, void *param1);
static void ov19_021D9718(SysTask *param0, void *param1);
static void ov19_021D9894(SysTask *param0, void *param1);
static void ov19_021D9B78(SysTask *param0, void *param1);
static void ov19_021D9C18(SysTask *param0, void *param1);
static void ov19_021D9CB4(SysTask *param0, void *param1);
static void ov19_021D9D48(s32 *param0, s32 *param1, u8 *param2, UnkStruct_ov19_021D8E00 *param3);
static void ov19_021D9E04(UnkStruct_ov19_021D8E00 *param0, VecFx32 *param1);
static void ov19_021D9EB0(UnkStruct_ov19_021D8E00 *param0);
static void ov19_021DA038(UnkStruct_ov19_021D8E00 *param0);
static void ov19_021DA06C(UnkStruct_ov19_021D8E00 *param0);
static void ov19_021DA110(UnkStruct_ov19_021D8E00 *param0);
static void ov19_021DA1F8(UnkStruct_ov19_021D8E00 *param0);
static void ov19_021DA204(UnkStruct_ov19_021D8E00 *param0);
static Sprite *ov19_021DA224(UnkStruct_ov19_021D8E00 *param0);

BOOL ov19_021D8B54(UnkStruct_ov19_021D8E00 *param0, UnkStruct_ov19_021D61B0 *param1, const UnkStruct_ov19_021D4DF0 *param2, SpriteList *param3, NARC *param4)
{
    param0->unk_794 = param1;
    param0->unk_790 = param2;
    param0->unk_00 = param3;
    param0->unk_758 = ov19_021D77E0(param1);
    param0->unk_75C = ov19_021D77E8(param1);
    param0->unk_48 = ov19_021D77D8(param1);
    param0->unk_785 = ov19_021D5E10(param2);
    param0->unk_789 = ov19_021D5E14(param2);
    param0->unk_78A = ov19_021D5E1C(param2);
    param0->unk_78B = ov19_021D5E2C(param2);
    param0->unk_04 = NULL;
    param0->unk_08 = NULL;
    param0->unk_0C = NULL;
    param0->unk_10 = NULL;
    param0->unk_754 = 0;
    param0->unk_78E = 1;
    param0->unk_14 = Graphics_GetCellBankFromOpenNARC(param4, 13, 1, &(param0->unk_1C), HEAP_ID_10);
    param0->unk_18 = Graphics_GetAnimBankFromOpenNARC(param4, 14, 1, &(param0->unk_20), HEAP_ID_10);

    if ((param0->unk_14 == NULL) || (param0->unk_18 == NULL)) {
        return 0;
    }

    return 1;
}

void ov19_021D8C1C(UnkStruct_ov19_021D8E00 *param0, NARC *param1)
{
    SpriteResourcesHeader v0;
    u32 v1, v2;

    NNS_G2dInitImageProxy(&(param0->unk_24));

    Graphics_LoadImageMappingFromOpenNARC(param1, 12, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0 * 0x20, 10, &(param0->unk_24));
    ov19_021D783C(&v0, &(param0->unk_24), ov19_021D77D0(param0->unk_794), param0->unk_1C, param0->unk_20, ((param0->unk_785 == 1) ? 1 : 2));
    ov19_021D9D48(&param0->unk_764, &param0->unk_768, &param0->unk_785, param0);

    param0->unk_04 = ov19_021D785C(param0->unk_00, &v0, param0->unk_764, param0->unk_768, 1, NNS_G2D_VRAM_TYPE_2DMAIN);
    param0->unk_08 = ov19_021D785C(param0->unk_00, &v0, param0->unk_764, param0->unk_768 + 24, 42, NNS_G2D_VRAM_TYPE_2DMAIN);

    v1 = ov19_021D5E10(param0->unk_790);
    v2 = ov19_021D5E08(param0->unk_790);

    {
        int v3, v4;

        if (v2 != 4) {
            v3 = 108;
            v4 = 236;
        } else {
            v3 = 108 + -44;
            v4 = 236 + -44;
        }

        v0.priority = 2;
        param0->unk_0C = ov19_021D785C(param0->unk_00, &v0, v3, 20, 43, NNS_G2D_VRAM_TYPE_2DMAIN);
        param0->unk_10 = ov19_021D785C(param0->unk_00, &v0, v4, 20, 43, NNS_G2D_VRAM_TYPE_2DMAIN);
    }

    Sprite_SetAnim(param0->unk_08, 5);
    Sprite_SetExplicitPriority(param0->unk_08, 2);

    v1 = ov19_021D5E10(param0->unk_790);

    if (v1 != 2) {
        Sprite_SetAnim(param0->unk_0C, 6);
        Sprite_SetAnim(param0->unk_10, 7);
    } else {
        Sprite_SetAnim(param0->unk_0C, 8);
        Sprite_SetAnim(param0->unk_10, 9);
    }

    if (v1 != 0) {
        Sprite_SetDrawFlag(param0->unk_08, 0);
    }

    if (v2 != 3) {
        if (ov19_021D5E38(param0->unk_790) == 1) {
            Sprite_SetAnim(param0->unk_04, 0);
            ov19_021DA3CC(param0->unk_48, param0->unk_4C, (5 * 6));
            param0->unk_78C = 0;
        } else {
            Sprite_SetAnim(param0->unk_04, 2);
            ov19_021D8E00(param0);
            param0->unk_78C = 1;
        }

        param0->unk_78D = 0;
    } else {
        if (ov19_021D5F7C(param0->unk_790) == 0) {
            Sprite_SetAnim(param0->unk_04, 0);
            param0->unk_78D = 0;
        } else {
            Sprite_SetAnim(param0->unk_04, 2);
            param0->unk_78D = 1;
        }

        ov19_021DA3CC(param0->unk_48, param0->unk_4C, (5 * 6));
        param0->unk_78C = 0;
    }

    param0->unk_760 = ov19_021D7800(param0->unk_794);

    ov19_021D9AEC(param0);
}

static void ov19_021D8E00(UnkStruct_ov19_021D8E00 *param0)
{
    VecFx32 v0;
    s32 v1, v2;

    v0 = *Sprite_GetPosition(param0->unk_04);
    v1 = (v0.x >> FX32_SHIFT) - 0;
    v2 = (v0.y >> FX32_SHIFT) - -4;

    ov19_021DA3CC(param0->unk_48, param0->unk_4C, 1);
    ov19_021DA428(param0->unk_48, ov19_GetPreviewedBoxMon(param0->unk_790), v1, v2, Sprite_GetExplicitPriority(param0->unk_04), 2, 1240, param0->unk_4C);

    param0->unk_664[0].unk_00 = (0 * FX32_ONE);
    param0->unk_664[0].unk_04 = (-4 * FX32_ONE);
    param0->unk_754 = 1;
    param0->unk_78C = 1;
}

void ov19_021D8E84(UnkStruct_ov19_021D8E00 *param0)
{
    if (param0->unk_14) {
        Heap_FreeToHeap(param0->unk_14);
        param0->unk_14 = NULL;
    }

    if (param0->unk_18) {
        Heap_FreeToHeap(param0->unk_18);
        param0->unk_18 = NULL;
    }

    if (param0->unk_04 != NULL) {
        Sprite_Delete(param0->unk_04);
        param0->unk_04 = NULL;
    }

    if (param0->unk_08 != NULL) {
        Sprite_Delete(param0->unk_08);
        param0->unk_08 = NULL;
    }

    if (param0->unk_0C != NULL) {
        Sprite_Delete(param0->unk_0C);
        param0->unk_0C = NULL;
    }

    if (param0->unk_10 != NULL) {
        Sprite_Delete(param0->unk_10);
        param0->unk_10 = NULL;
    }
}

static void ov19_021D8EE0(const UnkStruct_ov19_021D8E00 *param0, BOOL *param1, BOOL *param2)
{
    *param1 = *param2 = 0;

    switch (param0->unk_785) {
    case 0:
        if (param0->unk_786 == 0) {
            u32 v0 = ov19_021D5E14(param0->unk_790);

            if ((param0->unk_789 == 0) && (v0 == 5) || (param0->unk_789 == 5) && (v0 == 0)) {
                *param1 = 1;
            }
        }
        break;
    case 2:
        if ((param0->unk_786 == 4) || (param0->unk_786 == 3)) {
            *param2 = 1;
        }
        break;
    case 4:
    case 3:
        if (param0->unk_786 == 2) {
            *param2 = 1;
        }
        break;
    }
}

void ov19_021D8F60(UnkStruct_ov19_021D8E00 *param0)
{
    BOOL v0, v1;
    s32 v2, v3;
    s32 v4, v5;
    s32 v6;

    ov19_021D9D48(&(param0->unk_76C), &(param0->unk_770), &(param0->unk_786), param0);
    ov19_021D8EE0(param0, &v0, &v1);

    if (param0->unk_786 != 0) {
        Sprite_SetDrawFlag(param0->unk_08, 0);
    }

    param0->unk_774 = param0->unk_764 << FX32_SHIFT;
    param0->unk_778 = param0->unk_768 << FX32_SHIFT;

    v2 = param0->unk_76C << FX32_SHIFT;
    v3 = param0->unk_770 << FX32_SHIFT;

    if (v0 == 0) {
        v4 = v2 - param0->unk_774;
    } else {
        if (v2 > param0->unk_774) {
            v4 = -((272 - param0->unk_76C) + (param0->unk_764 - 70));
        } else {
            v4 = (272 - param0->unk_764) + (param0->unk_76C - 70);
        }

        v4 <<= FX32_SHIFT;
    }

    if (v1 == 0) {
        v5 = v3 - param0->unk_778;
    } else {
        if (v3 > param0->unk_778) {
            v5 = -((208 - param0->unk_770) + (param0->unk_768 - -24));
        } else {
            v5 = (208 - param0->unk_768) + (param0->unk_770 - -24);
        }

        v5 <<= FX32_SHIFT;
    }

    if (v0 || v1) {
        v6 = 12;
    } else {
        v6 = 6;
    }

    param0->unk_77C = v4 / v6;
    param0->unk_780 = v5 / v6;
    param0->unk_787 = v6;

    ov19_021D77C8(ov19_021D9088, param0, 0);
}

BOOL ov19_021D9074(UnkStruct_ov19_021D8E00 *param0)
{
    return param0->unk_787 == 0;
}

static void ov19_021D9088(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8E00 *v0 = (UnkStruct_ov19_021D8E00 *)param1;
    VecFx32 v1;

    v1.z = 0;

    if (v0->unk_787) {
        v0->unk_774 += v0->unk_77C;

        if ((v0->unk_77C > 0) && (v0->unk_774 > 1114112)) {
            v0->unk_774 = 286720 + (1114112 - v0->unk_774);
        }

        if ((v0->unk_77C < 0) && (v0->unk_774 < 286720)) {
            v0->unk_774 = 1114112 - (286720 - v0->unk_774);
        }

        v0->unk_778 += v0->unk_780;

        if ((v0->unk_780 > 0) && (v0->unk_778 > 851968)) {
            v0->unk_778 = -98304 + (851968 - v0->unk_778);
        }

        if ((v0->unk_780 < 0) && (v0->unk_778 < -98304)) {
            v0->unk_778 = 851968 - (-98304 - v0->unk_778);
        }

        v1.x = v0->unk_774;
        v1.y = v0->unk_778;
        v1.z = 0;

        ov19_021D9E04(v0, &v1);

        v0->unk_787--;
        return;
    }

    v1.x = v0->unk_76C << FX32_SHIFT;
    v1.y = v0->unk_770 << FX32_SHIFT;
    v1.z = 0;

    ov19_021D9E04(v0, &v1);

    v0->unk_764 = v0->unk_76C;
    v0->unk_768 = v0->unk_770;
    v0->unk_785 = v0->unk_786;
    v0->unk_789 = ov19_021D5E14(v0->unk_790);
    v0->unk_78A = ov19_021D5E1C(v0->unk_790);
    v0->unk_78B = ov19_021D5E2C(v0->unk_790);

    if (v0->unk_786 == 0) {
        Sprite_SetDrawFlag(v0->unk_08, 1);
    }

    if (v0->unk_786 != 2) {
        Sprite_SetAnim(v0->unk_0C, 6);
        Sprite_SetAnim(v0->unk_10, 7);
    } else {
        Sprite_SetAnim(v0->unk_0C, 8);
        Sprite_SetAnim(v0->unk_10, 9);
    }

    SysTask_Done(param0);
}

void ov19_021D9230(UnkStruct_ov19_021D8E00 *param0)
{
    Sprite_SetAnim(param0->unk_04, 1);

    param0->unk_780 = (12 << FX32_SHIFT) / 6;
    param0->unk_770 = (param0->unk_768 + 12);
    param0->unk_787 = 6;
    param0->unk_784 = 0;

    ov19_021D9EB0(param0);
    ov19_021D77C8(ov19_021D928C, param0, 0);
}

BOOL ov19_021D9278(UnkStruct_ov19_021D8E00 *param0)
{
    return param0->unk_784 == 255;
}

static void ov19_021D928C(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8E00 *v0 = (UnkStruct_ov19_021D8E00 *)param1;
    VecFx32 v1 = *(Sprite_GetPosition(v0->unk_04));

    switch (v0->unk_784) {
    case 0:
        v0->unk_78E = 0;

        if (v0->unk_787) {
            v1.y += v0->unk_780;
            ov19_021D9E04(v0, &v1);
            v0->unk_787--;
            break;
        }

        v1.y = v0->unk_770 << FX32_SHIFT;

        ov19_021D9E04(v0, &v1);
        Sprite_SetAnim(v0->unk_04, 2);
        ov19_021DA038(v0);

        v0->unk_787 = 6;
        v0->unk_784++;
    case 1:
        if (v0->unk_787) {
            v1.y -= v0->unk_780;
            ov19_021D9E04(v0, &v1);
            v0->unk_787--;
            break;
        }

        v1.y = v0->unk_768 << FX32_SHIFT;
        ov19_021D9E04(v0, &v1);
        v0->unk_784 = 255;
        v0->unk_78E = 1;
        SysTask_Done(param0);
    }
}

void ov19_021D9368(UnkStruct_ov19_021D8E00 *param0)
{
    param0->unk_780 = (12 << FX32_SHIFT) / 6;
    param0->unk_770 = (param0->unk_768 + 12);
    param0->unk_787 = 6;
    param0->unk_784 = 0;

    ov19_021D77C8(ov19_021D93D0, param0, 0);
}

BOOL ov19_021D939C(UnkStruct_ov19_021D8E00 *param0)
{
    if (param0->unk_784 == 255) {
        ov19_021DA06C(param0);
        ov19_021DA3CC(param0->unk_48, param0->unk_4C, param0->unk_754);
        param0->unk_754 = 0;
        return 1;
    }

    return 0;
}

static void ov19_021D93D0(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8E00 *v0 = (UnkStruct_ov19_021D8E00 *)param1;
    VecFx32 v1 = *(Sprite_GetPosition(v0->unk_04));

    switch (v0->unk_784) {
    case 0:
        v0->unk_78E = 0;

        if (v0->unk_787) {
            v1.y += v0->unk_780;
            ov19_021D9E04(v0, &v1);
            v0->unk_787--;
            break;
        }

        v1.y = v0->unk_770 << FX32_SHIFT;

        ov19_021D9E04(v0, &v1);
        Sprite_SetAnim(v0->unk_04, 1);
        ov19_021DA1F8(v0);

        v0->unk_787 = 6;
        v0->unk_784++;
    case 1:
        if (v0->unk_787) {
            v1.y -= v0->unk_780;
            ov19_021D9E04(v0, &v1);
            v0->unk_787--;
            break;
        }

        v1.y = v0->unk_768 << FX32_SHIFT;

        ov19_021D9E04(v0, &v1);
        Sprite_SetAnim(v0->unk_04, 0);

        v0->unk_784 = 255;
        v0->unk_78E = 1;

        SysTask_Done(param0);
    }
}

void ov19_021D94B4(UnkStruct_ov19_021D8E00 *param0)
{
    VecFx32 v0;
    Sprite *v1;

    Sprite_SetAnim(param0->unk_04, 1);

    param0->unk_788 = 0;

    v1 = ov19_021DA224(param0);
    v0 = *(Sprite_GetPosition(v1));
    ov19_021D9554(param0, param0->unk_4C->unk_00, v0.y, 1, Sprite_GetPriority(v1));

    v0 = *(Sprite_GetPosition(param0->unk_4C->unk_00));
    ov19_021D9554(param0, v1, v0.y, -1, Sprite_GetPriority(param0->unk_4C->unk_00));

    param0->unk_784 = 0;
}

BOOL ov19_021D9530(UnkStruct_ov19_021D8E00 *param0)
{
    if (ov19_021D95E0(param0)) {
        Sprite_SetAnim(param0->unk_04, 2);
        ov19_021DA110(param0);
        return 1;
    }

    return 0;
}

static void ov19_021D9554(UnkStruct_ov19_021D8E00 *param0, Sprite *param1, fx32 param2, s32 param3, u32 param4)
{
    UnkStruct_ov19_021D9554 *v0 = Heap_AllocFromHeap(HEAP_ID_10, sizeof(UnkStruct_ov19_021D9554));

    if (v0) {
        VecFx32 v1;

        v1 = *Sprite_GetPosition(param1);

        v0->unk_00 = param1;
        v0->unk_04 = 12;
        v0->unk_06 = 12 / 2;
        v0->unk_08 = param4;
        v0->unk_0C = v1.y;
        v0->unk_14 = v1.x;
        v0->unk_10 = param2;
        v0->unk_18 = 0;
        v0->unk_24 = param3 * 12;
        v0->unk_1C = (v0->unk_10 - v0->unk_0C) / 12;
        v0->unk_20 = (180 << FX32_SHIFT) / 12;
        v0->unk_28 = param0;

        if (ov19_021D77C8(ov19_021D9600, v0, 0)) {
            param0->unk_788 = 1;
            return;
        } else {
            Heap_FreeToHeap(v0);
        }
    }
}

static BOOL ov19_021D95E0(UnkStruct_ov19_021D8E00 *param0)
{
    return param0->unk_788 == 0;
}

static void ov19_021D95F4(void *param0)
{
    UnkStruct_ov19_021D8E00 *v0 = param0;
    v0->unk_788 = 0;
}

static void ov19_021D9600(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D9554 *v0 = (UnkStruct_ov19_021D9554 *)param1;
    VecFx32 v1;

    v1 = *Sprite_GetPosition(v0->unk_00);

    if (v0->unk_04) {
        fx32 v2;

        v0->unk_04--;

        if (v0->unk_04 == v0->unk_06) {
            ov19_021D78AC(v0->unk_00, v0->unk_08);
        }

        v0->unk_0C += v0->unk_1C;
        v1.y = v0->unk_0C;
        v0->unk_18 += v0->unk_20;
        v2 = v0->unk_24 * CalcSineDegrees(v0->unk_18 >> FX32_SHIFT);
        v1.x = v0->unk_14 + v2;

        Sprite_SetPosition(v0->unk_00, &v1);
    } else {
        v1.x = v0->unk_14;
        v1.y = v0->unk_10;

        Sprite_SetPosition(v0->unk_00, &v1);
        ov19_021D79B8(param1, ov19_021D95F4, v0->unk_28);
        SysTask_Done(param0);
    }
}

void ov19_021D9690(UnkStruct_ov19_021D8E00 *param0)
{
    VecFx32 v0;

    if ((param0->unk_78C == 0) && (param0->unk_78D == 0)) {
        Sprite_SetAnim(param0->unk_04, 3);
    }

    v0 = *Sprite_GetPosition(param0->unk_04);
    v0.y += (-2 * FX32_ONE);

    ov19_021D9E04(param0, &v0);

    param0->unk_784 = 0;
    param0->unk_787 = 0;

    if (ov19_021D77C8(ov19_021D9718, param0, 0)) {
        param0->unk_788 = 1;
    }
}

BOOL ov19_021D9704(UnkStruct_ov19_021D8E00 *param0)
{
    return param0->unk_788 == 0;
}

static void ov19_021D9718(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8E00 *v0 = (UnkStruct_ov19_021D8E00 *)param1;

    switch (v0->unk_784) {
    case 0:
        if (++(v0->unk_787) >= 4) {
            VecFx32 v1 = *Sprite_GetPosition(v0->unk_04);

            v0->unk_770 = (v1.y >> FX32_SHIFT) + 6;
            v0->unk_780 = (6 * FX32_ONE) / 2;
            v0->unk_787 = 2;

            if ((v0->unk_78C == 0) && (v0->unk_78D == 0)) {
                Sprite_SetAnim(v0->unk_04, 4);
            }

            v0->unk_784++;
        }
        break;
    case 1: {
        VecFx32 v2 = *Sprite_GetPosition(v0->unk_04);

        if (v0->unk_787) {
            v2.y += v0->unk_780;
            ov19_021D9E04(v0, &v2);
            v0->unk_787--;
        } else {
            v2.y = v0->unk_770 << FX32_SHIFT;
            ov19_021D9E04(v0, &v2);
            v0->unk_788 = 0;
            SysTask_Done(param0);
        }
    } break;
    }
}

void ov19_021D97FC(UnkStruct_ov19_021D8E00 *param0)
{
    VecFx32 v0 = *Sprite_GetPosition(param0->unk_04);

    param0->unk_770 = (v0.y >> FX32_SHIFT) + -4;
    param0->unk_780 = (-4 * FX32_ONE) / 4;
    param0->unk_787 = 4;
    param0->unk_784 = 0;

    if (ov19_021D77C8(ov19_021D9894, param0, 0)) {
        param0->unk_788 = 1;
    }
}

BOOL ov19_021D9858(UnkStruct_ov19_021D8E00 *param0)
{
    if (param0->unk_788 == 0) {
        if ((param0->unk_78C == 0) && (param0->unk_78D == 0)) {
            if (Sprite_GetActiveAnim(param0->unk_04) != 0) {
                Sprite_SetAnim(param0->unk_04, 0);
            }
        }

        return 1;
    }

    return 0;
}

static void ov19_021D9894(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8E00 *v0;
    VecFx32 v1;

    v0 = (UnkStruct_ov19_021D8E00 *)param1;
    v1 = *Sprite_GetPosition(v0->unk_04);

    if (v0->unk_787) {
        v1.y += v0->unk_780;
        ov19_021D9E04(v0, &v1);
        v0->unk_787--;
    } else {
        v1.y = v0->unk_770 << FX32_SHIFT;
        ov19_021D9E04(v0, &v1);
        v0->unk_788 = 0;
        SysTask_Done(param0);
    }
}

void ov19_021D9900(UnkStruct_ov19_021D8E00 *param0)
{
    if (param0->unk_790->unk_110 == ov19_GetCurrentBox(param0->unk_790)) {
        ov19_021D84E0(param0->unk_758);
    }

    ov19_021DA204(param0);
    Sprite_SetAnim(param0->unk_04, 0);
}

void ov19_021D9938(UnkStruct_ov19_021D8E00 *param0)
{
    Sprite_SetAnim(param0->unk_04, 1);
    ov19_021DA7B8(param0->unk_48, param0->unk_4C, 1);

    param0->unk_784 = 0;
}

BOOL ov19_021D995C(UnkStruct_ov19_021D8E00 *param0)
{
    const UnkStruct_ov19_021D5DF8 *v0 = ov19_021D7964(param0->unk_794);

    switch (param0->unk_784) {
    case 0:
        if (ov19_021DA7E0(param0->unk_48, param0->unk_4C)) {
            param0->unk_784++;
        }
        break;
    case 1:
        if (ov19_021D3B18(v0)) {
            if (ov19_021D3B20(v0)) {
                Sprite_SetAnim(param0->unk_04, 0);
                ov19_021DA204(param0);
                return 1;
            } else {
                ov19_021DA7B8(param0->unk_48, param0->unk_4C, 2);
                param0->unk_784++;
            }
        }
        break;
    case 2:
        if (ov19_021DA7E0(param0->unk_48, param0->unk_4C)) {
            Sprite_SetAnim(param0->unk_04, 2);
            return 1;
        }

        break;
    }

    return 0;
}

void ov19_021D99F4(UnkStruct_ov19_021D8E00 *param0)
{
    Sprite_SetExplicitPriority(param0->unk_04, 1);

    if (param0->unk_78C) {
        Sprite_SetExplicitPriority(param0->unk_4C->unk_00, 1);
    }

    if (param0->unk_78D) {
        ov19_021DEBDC(param0->unk_760, 1);
    }
}

void ov19_021D9A2C(UnkStruct_ov19_021D8E00 *param0)
{
    Sprite_SetExplicitPriority(param0->unk_04, 2);

    if (param0->unk_78C) {
        Sprite_SetExplicitPriority(param0->unk_4C->unk_00, 2);
    }

    if (param0->unk_78D) {
        ov19_021DEBDC(param0->unk_760, 2);
    }
}

void ov19_021D9A64(UnkStruct_ov19_021D8E00 *param0)
{
    if (param0->unk_78C) {
        u32 v0 = ov19_GetPreviewedMonMarkings(param0->unk_790);
        ov19_021DA68C(param0->unk_48, param0->unk_4C, v0);
    }
}

void ov19_021D9A8C(UnkStruct_ov19_021D8E00 *param0)
{
    u32 v0 = ov19_021D5EC8(param0->unk_790);

    if (param0->unk_4C->unk_00 != NULL) {
        ov19_021DA63C(param0->unk_48, param0->unk_4C, v0);
    }
}

void ov19_021D9AB0(UnkStruct_ov19_021D8E00 *param0, u32 param1)
{
    if (param0->unk_4C->unk_00 != NULL) {
        ov19_021DA690(param0->unk_48, param0->unk_4C, param1);
        ov19_021DA63C(param0->unk_48, param0->unk_4C, ov19_021D5EC8(param0->unk_790));
        ov19_021DA694(param0->unk_48, param0->unk_4C, 0);
    }
}

void ov19_021D9AEC(UnkStruct_ov19_021D8E00 *param0)
{
    if (ov19_021D5EE0(param0->unk_790)) {
        Sprite_SetExplicitPalette(param0->unk_04, 1);
    } else {
        Sprite_SetExplicitPalette(param0->unk_04, 0);
    }
}

void ov19_021D9B10(UnkStruct_ov19_021D8E00 *param0)
{
    Sprite_SetAnim(param0->unk_04, 1);
}

void ov19_021D9B1C(UnkStruct_ov19_021D8E00 *param0, VecFx32 *param1)
{
    *param1 = *(Sprite_GetPosition(param0->unk_04));
}

void ov19_021D9B34(UnkStruct_ov19_021D8E00 *param0)
{
    param0->unk_784 = 0;

    if (SysTask_Start(ov19_021D9B78, param0, 0)) {
        param0->unk_78D = 1;
        param0->unk_788 = 1;
    }
}

BOOL ov19_021D9B64(UnkStruct_ov19_021D8E00 *param0)
{
    return param0->unk_788 == 0;
}

static void ov19_021D9B78(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8E00 *v0 = param1;

    switch (v0->unk_784) {
    case 0:
        Sprite_SetAnim(v0->unk_04, 1);
        ov19_021DE954(v0->unk_760);
        v0->unk_784++;
        break;
    case 1:
        if (ov19_021DE9A8(v0->unk_760)) {
            Sprite_SetAnim(v0->unk_04, 2);
            v0->unk_788 = 0;
            SysTask_Done(param0);
        }
    }
}

void ov19_021D9BD4(UnkStruct_ov19_021D8E00 *param0)
{
    param0->unk_784 = 0;

    if (SysTask_Start(ov19_021D9C18, param0, 0)) {
        param0->unk_78D = 0;
        param0->unk_788 = 1;
    }
}

BOOL ov19_021D9C04(UnkStruct_ov19_021D8E00 *param0)
{
    return param0->unk_788 == 0;
}

static void ov19_021D9C18(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8E00 *v0 = param1;

    switch (v0->unk_784) {
    case 0:
        Sprite_SetAnim(v0->unk_04, 1);
        ov19_021DEA18(v0->unk_760);
        v0->unk_784++;
        break;
    case 1:
        if (ov19_021DEA64(v0->unk_760)) {
            Sprite_SetAnim(v0->unk_04, 0);
            v0->unk_788 = 0;
            SysTask_Done(param0);
        }
    }
}

void ov19_021D9C74(UnkStruct_ov19_021D8E00 *param0)
{
    param0->unk_784 = 0;

    if (SysTask_Start(ov19_021D9CB4, param0, 0)) {
        param0->unk_788 = 1;
    }
}

BOOL ov19_021D9CA0(UnkStruct_ov19_021D8E00 *param0)
{
    return param0->unk_788 == 0;
}

static void ov19_021D9CB4(SysTask *param0, void *param1)
{
    UnkStruct_ov19_021D8E00 *v0 = param1;

    switch (v0->unk_784) {
    case 0:
        Sprite_SetAnim(v0->unk_04, 1);
        ov19_021DEA74(v0->unk_760);
        v0->unk_784++;
        break;
    case 1:
        if (ov19_021DEB08(v0->unk_760)) {
            Sprite_SetAnim(v0->unk_04, 2);
            v0->unk_788 = 0;
            SysTask_Done(param0);
        }
    }
}

void ov19_021D9D10(UnkStruct_ov19_021D8E00 *param0)
{
    if (param0->unk_78D) {
        Sprite_SetAnim(param0->unk_04, 1);
    }
}

void ov19_021D9D28(UnkStruct_ov19_021D8E00 *param0)
{
    if (param0->unk_78D) {
        Sprite_SetAnim(param0->unk_04, 0);
        param0->unk_78D = 0;
    }
}

static void ov19_021D9D48(s32 *param0, s32 *param1, u8 *param2, UnkStruct_ov19_021D8E00 *param3)
{
    const UnkStruct_ov19_021D4DF0 *v0 = param3->unk_790;

    *param2 = ov19_021D5E10(v0);

    switch (*param2) {
    case 0:
        *param0 = 112 + ov19_021D7820(param3->unk_794) + ov19_021D5E14(v0) * 24 + 0;
        *param1 = 40 + ov19_021D5E1C(v0) * 24 + -16;
        break;
    case 1: {
        u32 v1 = ov19_021D5E2C(v0);

        ov19_021DCD30(ov19_021D77E8(param3->unk_794), v1, param0, param1);
        (*param0) += 0;
        (*param1) += -16;
    } break;
    case 2:
        *param0 = 168 + ov19_021D7820(param3->unk_794);
        *param1 = 8;
        break;
    case 3:
        *param0 = 159 + ov19_021D7820(param3->unk_794);
        *param1 = 160;
        break;
    case 4:
        *param0 = 235 + ov19_021D7820(param3->unk_794);
        *param1 = 160;
        break;
    }
}

static void ov19_021D9E04(UnkStruct_ov19_021D8E00 *param0, VecFx32 *param1)
{
    Sprite_SetPosition(param0->unk_04, param1);

    if (param0->unk_78C) {
        VecFx32 v0;
        int v1;

        v0.z = 0;

        for (v1 = 0; v1 < param0->unk_754; v1++) {
            v0.x = param1->x + param0->unk_664[v1].unk_00;
            v0.y = param1->y - param0->unk_664[v1].unk_04;
            Sprite_SetPosition(param0->unk_4C[v1].unk_00, &v0);
        }
    }

    if (param0->unk_78D) {
        ov19_021DEB9C(param0->unk_760, param1);
    }

    if (param0->unk_78E) {
        VecFx32 v2 = *param1;

        v2.y += (24 << FX32_SHIFT);
        Sprite_SetPosition(param0->unk_08, &v2);
    }
}

static void ov19_021D9EB0(UnkStruct_ov19_021D8E00 *param0)
{
    if (ov19_021D5E10(param0->unk_790) == 0) {
        if (ov19_021D5F20(param0->unk_790)) {
            u32 v0 = ov19_021D5E24(param0->unk_790);
            ov19_021D8408(param0->unk_758, v0, 1240, param0->unk_4C);
            param0->unk_754 = 1;
            param0->unk_664[0].unk_00 = (0 * FX32_ONE);
            param0->unk_664[0].unk_04 = (-4 * FX32_ONE);
        } else {
            u32 v1, v2, v3, v4, v5, v6, v7, v8, v9;

            ov19_021D5EE8(param0->unk_790, &v4, &v5, &v6, &v7);

            v8 = ov19_021D5E14(param0->unk_790);
            v9 = ov19_021D5E1C(param0->unk_790);
            v1 = 0;

            for (v3 = v6; v3 <= v7; v3++) {
                for (v2 = v4; v2 <= v5; v2++) {
                    ov19_021D8408(param0->unk_758, v3 * 6 + v2, 1520 + v1 * 16, &param0->unk_4C[v1]);

                    if (param0->unk_4C[v1].unk_00 != NULL) {
                        param0->unk_664[v1].unk_00 = (0 + (v2 - v8) * 24) * FX32_ONE;
                        param0->unk_664[v1].unk_04 = (-4 - (v3 - v9) * 24) * FX32_ONE;
                        v1++;
                    }
                }
            }

            param0->unk_754 = v1;
        }
    } else {
        u32 v10 = ov19_021D5E2C(param0->unk_790);

        ov19_021DCC44(param0->unk_75C, v10, 1240, param0->unk_4C);

        param0->unk_754 = 1;
        param0->unk_664[0].unk_00 = (0 * FX32_ONE);
        param0->unk_664[0].unk_04 = (-4 * FX32_ONE);
    }
}

static void ov19_021DA038(UnkStruct_ov19_021D8E00 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_754; v0++) {
        ov19_021D78AC(param0->unk_4C[v0].unk_00, 2);
    }

    param0->unk_78C = 1;
}

static void ov19_021DA06C(UnkStruct_ov19_021D8E00 *param0)
{
    if (ov19_021D5E10(param0->unk_790) == 0) {
        if (ov19_021D5F20(param0->unk_790)) {
            u32 v0 = ov19_021D5E24(param0->unk_790);
            ov19_021D845C(param0->unk_758, v0, param0->unk_4C);
        } else {
            int v1, v2, v3;

            v2 = ov19_021D5F3C(param0->unk_790);

            for (v1 = 0; v1 < param0->unk_754; v1++) {
                v3 = v2 + ov19_021D5F6C(param0->unk_790, v1);
                ov19_021D845C(param0->unk_758, v3, &param0->unk_4C[v1]);
            }
        }
    } else {
        u32 v4 = ov19_021D5E2C(param0->unk_790);
        ov19_021DCC80(param0->unk_75C, v4, param0->unk_4C);
    }
}

static void ov19_021DA110(UnkStruct_ov19_021D8E00 *param0)
{
    if (ov19_021D5E10(param0->unk_790) == 0) {
        u32 v0 = ov19_021D5E24(param0->unk_790);

        {
            UnkStruct_ov19_021DCD18 *v1 = ov19_021D84C8(param0->unk_758, v0);

            ov19_021DA754(param0->unk_48, param0->unk_4C, 1520);
            ov19_021DA754(param0->unk_48, v1, 1520 + 16);

            OS_WaitVBlankIntr();
        }

        ov19_021D8408(param0->unk_758, v0, 1240, &param0->unk_4C[1]);
        ov19_021D845C(param0->unk_758, v0, param0->unk_4C);
        ov19_021DA418(&(param0->unk_4C[1]), &(param0->unk_4C[0]), 1);
    } else {
        u32 v2 = ov19_021D5E2C(param0->unk_790);

        {
            UnkStruct_ov19_021DCD18 *v3 = ov19_021DCD18(param0->unk_75C, v2);

            ov19_021DA754(param0->unk_48, param0->unk_4C, 1520);
            ov19_021DA754(param0->unk_48, v3, 1520 + 16);

            OS_WaitVBlankIntr();
        }

        ov19_021DCC44(param0->unk_75C, v2, 1240, &param0->unk_4C[1]);
        ov19_021DCCD4(param0->unk_75C, v2, param0->unk_4C);
        ov19_021DA418(&(param0->unk_4C[1]), &(param0->unk_4C[0]), 1);
    }
}

static void ov19_021DA1F8(UnkStruct_ov19_021D8E00 *param0)
{
    param0->unk_78C = 0;
}

static void ov19_021DA204(UnkStruct_ov19_021D8E00 *param0)
{
    ov19_021DA3F0(param0->unk_48, param0->unk_4C, 1);
    param0->unk_78C = 0;
    param0->unk_754 = 0;
}

static Sprite *ov19_021DA224(UnkStruct_ov19_021D8E00 *param0)
{
    UnkStruct_ov19_021DCD18 *v0;
    u32 v1;

    if (ov19_021D5E10(param0->unk_790) == 0) {
        v1 = ov19_021D5E24(param0->unk_790);
        v0 = ov19_021D84C8(param0->unk_758, v1);
        return v0->unk_00;
    } else {
        v1 = ov19_021D5E2C(param0->unk_790);
        v0 = ov19_021DCD18(param0->unk_75C, v1);
        return v0->unk_00;
    }
}
