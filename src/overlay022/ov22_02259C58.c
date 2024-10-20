#include "overlay022/ov22_02259C58.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay022/funcptr_ov22_02259D78.h"
#include "overlay022/ov22_02255094.h"
#include "overlay022/struct_ov22_02259C58.h"
#include "overlay022/struct_ov22_02259C58_1.h"
#include "overlay022/struct_ov22_02259C9C.h"
#include "overlay022/struct_ov22_02259D2C.h"
#include "overlay022/struct_ov22_0225A0E4.h"
#include "overlay022/struct_ov22_0225A154.h"

#include "cell_actor.h"
#include "error_handling.h"
#include "font.h"
#include "message.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_02023FCC.h"

static void ov22_02259D94(UnkStruct_ov22_02259C58 *param0, void *param1);
static void ov22_0225A0E4(UnkStruct_ov22_02259C58 *param0, int param1, UnkStruct_ov22_0225A0E4 *param2, int param3, int param4, int param5, int param6);
static void ov22_0225A154(UnkStruct_ov22_0225A154 *param0, int param1, UnkStruct_ov22_0225A0E4 *param2, const UnkStruct_02012744 *param3, const Window *param4, int param5, int param6, int param7, int param8);
static void ov22_0225A200(TouchScreenHitTable *hitTable, int param1, int param2, int param3, int param4, int param5);
static void ov22_0225A218(UnkStruct_ov22_0225A0E4 *param0);
static void ov22_0225A2A8(UnkStruct_ov22_0225A0E4 *param0);
static Window *ov22_0225A348(UnkStruct_ov22_0225A0E4 *param0, u32 param1, u32 param2, u32 param3, int param4, int param5);
static void ov22_0225A3D0(Window *param0);
static void ov22_0225A2D0(UnkStruct_ov22_02259C58 *param0, int param1);
static void ov22_0225A338(UnkStruct_ov22_02259C58 *param0, int param1, int param2, int param3);
static void ov22_0225A2F4(UnkStruct_ov22_0225A154 *param0, int param1);
static void ov22_0225A3DC(UnkStruct_ov22_02259C58 *param0, int param1, int param2);
static void ov22_0225A418(UnkStruct_ov22_0225A154 *param0, int param1, int param2);
static void ov22_0225A02C(u32 param0, u32 param1, void *param2);

void ov22_02259C58(UnkStruct_ov22_02259C58 *param0, UnkStruct_ov22_02259C58_1 *param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1);

    param0->unk_00 = CellActorCollection_AddEx(param1->unk_00);
    GF_ASSERT(param0->unk_00);

    param0->unk_04 = param1->unk_0C;
    param0->unk_08 = param1->unk_08;

    if (param1->unk_04) {
        param0->unk_0C = param1->unk_04;
    } else {
        param0->unk_0C = ov22_02259D94;
    }
}

void ov22_02259C9C(UnkStruct_ov22_0225A154 *param0, UnkStruct_ov22_02259C9C *param1)
{
    UnkStruct_020127E8 v0;

    ov22_02259C58(&param0->unk_00, &param1->unk_00);

    v0.unk_00 = param1->unk_14;
    v0.unk_04 = param1->unk_10;
    v0.unk_08 = param1->unk_00.unk_00->collection;
    v0.unk_0C = param1->unk_18;
    v0.unk_10 = param0->unk_00.unk_00;
    v0.unk_14 = param1->unk_24;
    v0.unk_18 = param1->unk_1C;
    v0.unk_1C = param1->unk_20;
    v0.unk_20 = 0;
    v0.unk_24 = 0;
    v0.unk_28 = param1->unk_00.unk_00->vramType;
    v0.unk_2C = param1->unk_00.unk_00->heapID;

    param0->unk_10 = sub_020127E8(&v0);
}

void ov22_02259CE8(UnkStruct_ov22_02259C58 *param0)
{
    CellActor_Delete(param0->unk_00);
    memset(param0, 0, sizeof(UnkStruct_ov22_02259C58));
}

void ov22_02259D00(UnkStruct_ov22_0225A154 *param0)
{
    ov22_02259CE8(&param0->unk_00);
    sub_02012870(param0->unk_10);
    memset(param0, 0, sizeof(UnkStruct_ov22_0225A154));
}

void ov22_02259D1C(UnkStruct_ov22_02259C58 *param0, int param1)
{
    if (param1 == param0->unk_04) {
        param0->unk_0C(param0, param0->unk_08);
    }
}

void ov22_02259D2C(UnkStruct_ov22_02259D2C *param0, int param1, int param2)
{
    int v0;
    UnkStruct_ov22_02259C58 *v1;

    for (v0 = 2; v0 <= 3; v0++) {
        v1 = param0->unk_00 + v0;

        if (v0 != param1) {
            ov22_02259DA4(v1);
        } else {
            if (param2 == 0) {
                ov22_02259DB0(v1);

                Sound_PlayEffect(1661);
            } else if (param2 == 2) {
                ov22_02259D98(v1);
            } else {
                ov22_02259DB0(v1);
            }
        }
    }
}

void ov22_02259D78(UnkStruct_ov22_02259C58 *param0, UnkFuncPtr_ov22_02259D78 param1, void *param2, int param3)
{
    GF_ASSERT(param0);

    param0->unk_04 = param3;
    param0->unk_08 = param2;
    param0->unk_0C = param1;
}

static void ov22_02259D94(UnkStruct_ov22_02259C58 *param0, void *param1)
{
    return;
}

void ov22_02259D98(UnkStruct_ov22_02259C58 *param0)
{
    SpriteActor_SetAnimFrame(param0->unk_00, 2);
}

void ov22_02259DA4(UnkStruct_ov22_02259C58 *param0)
{
    SpriteActor_SetAnimFrame(param0->unk_00, 0);
}

void ov22_02259DB0(UnkStruct_ov22_02259C58 *param0)
{
    SpriteActor_SetAnimFrame(param0->unk_00, 1);
}

void ov22_02259DBC(UnkStruct_ov22_02259D2C *param0, UnkStruct_ov22_0225A0E4 *param1)
{
    Window *v0;

    param0->unk_64 = sub_02012744(1, 13);

    ov22_0225A218(param1);

    ov22_0225A0E4(&param0->unk_00[0], 0, param1, 48, 144, 40, 32);
    ov22_0225A200(param0->unk_6C, 0, 48, 144 + 8, 40, 32 - 8);

    ov22_0225A0E4(&param0->unk_00[1], 1, param1, 8, 144, 40, 32);
    ov22_0225A200(param0->unk_6C, 1, 8, 144 + 8, 40, 32 - 8);

    ov22_0225A0E4(&param0->unk_00[2], 2, param1, 96, 144, 40, 42);
    ov22_0225A200(param0->unk_6C, 2, 96, 144 + 12, 40, 42 - 8);

    ov22_0225A0E4(&param0->unk_00[3], 3, param1, 136, 144, 40, 42);
    ov22_0225A200(param0->unk_6C, 3, 136, 144 + 12, 40, 42 - 8);

    Font_InitManager(FONT_SUBSCREEN, 14);

    v0 = ov22_0225A348(param1, 26, 385, 0, 72 / 8, 42 / 8);

    ov22_0225A154(&param0->unk_40, 4, param1, param0->unk_64, v0, 184, 144, 72, 42);
    ov22_0225A200(param0->unk_6C, 4, 184, 144 + 12, 72, 42 - 8);

    ov22_0225A3D0(v0);
    Font_Free(FONT_SUBSCREEN);

    param0->unk_60 = 1;

    ov22_0225A2A8(param1);
    ov22_02259D98(&param0->unk_00[2]);

    param0->unk_68 = sub_02023FCC(param0->unk_6C, 5, ov22_0225A02C, param0, 13);
}

void ov22_02259F24(UnkStruct_ov22_02259D2C *param0, UnkStruct_ov22_0225A0E4 *param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        ov22_022552EC(param1, v0);
        ov22_02255300(param1, v0);
        sub_0201EB50(v0);
    }

    sub_0201F9F0(0);
    sub_0201F9F0(1);

    for (v0 = 0; v0 < 4; v0++) {
        ov22_02259CE8(&param0->unk_00[v0]);
    }

    sub_0201EE28(&param0->unk_40.unk_14);
    ov22_02259D00(&param0->unk_40);
    sub_020127BC(param0->unk_64);
    sub_02024034(param0->unk_68);

    param0->unk_68 = NULL;
}

void ov22_02259F88(UnkStruct_ov22_02259D2C *param0)
{
    GF_ASSERT(param0->unk_68);
    sub_0202404C(param0->unk_68);
}

void ov22_02259FA0(UnkStruct_ov22_02259D2C *param0)
{
    ov22_0225A2D0(&param0->unk_40.unk_00, 3);
    ov22_0225A2F4(&param0->unk_40, 3);
    ov22_02259D2C(param0, 2, 3);
}

void ov22_02259FC4(UnkStruct_ov22_02259D2C *param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov22_0225A3DC(param0->unk_00 + v0, param1, param2);
    }

    ov22_0225A418(&param0->unk_40, param1, param2);
}

void ov22_02259FF4(UnkStruct_ov22_02259D2C *param0, int param1, UnkFuncPtr_ov22_02259D78 param2, void *param3, int param4)
{
    GF_ASSERT(param0);

    if (param1 < 4) {
        ov22_02259D78(
            &param0->unk_00[param1], param2, param3, param4);
    } else {
        ov22_02259D78(
            &param0->unk_40.unk_00, param2, param3, param4);
    }
}

static void ov22_0225A02C(u32 param0, u32 param1, void *param2)
{
    UnkStruct_ov22_02259D2C *v0 = param2;

    switch (param0) {
    case 0:
        ov22_0225A2D0(&v0->unk_00[0], param1);
        ov22_0225A338(&v0->unk_00[0], 1665, 0, param1);
        ov22_02259D1C(&v0->unk_00[0], param1);
        break;
    case 1:
        ov22_0225A2D0(&v0->unk_00[1], param1);
        ov22_0225A338(&v0->unk_00[1], 1665, 0, param1);
        ov22_02259D1C(&v0->unk_00[1], param1);
        break;
    case 2:
    case 3:
        ov22_02259D2C(v0, param0, param1);
        ov22_02259D1C(&v0->unk_00[param0], param1);
        break;
    case 4:
        if (v0->unk_60 == 1) {
            ov22_0225A2D0(&v0->unk_40.unk_00, param1);
            ov22_0225A2F4(&v0->unk_40, param1);
            ov22_0225A338(&v0->unk_40.unk_00, 1506, 0, param1);
            ov22_02259D1C(&v0->unk_40.unk_00, param1);
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov22_0225A0E4(UnkStruct_ov22_02259C58 *param0, int param1, UnkStruct_ov22_0225A0E4 *param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_ov22_02259C58_1 v0;
    CellActorResourceData v1;
    CellActorInitParamsEx v2;

    sub_020093B4(&v1, param1, 0, param1, param1, 0xFFFFFFFF, 0xFFFFFFFF, 0, 0, param2->unk_48[0], param2->unk_48[1], param2->unk_48[2], param2->unk_48[3], NULL, NULL);

    v2.collection = param2->unk_44;
    v2.resourceData = &v1;
    v2.position.x = param3 << 12;
    v2.position.y = param4 << 12;
    v2.position.z = 0;
    v2.priority = 2;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.heapID = 14;

    v0.unk_00 = &v2;
    v0.unk_04 = NULL;
    v0.unk_08 = NULL;
    v0.unk_0C = 1;

    ov22_02259C58(param0, &v0);
}

static void ov22_0225A154(UnkStruct_ov22_0225A154 *param0, int param1, UnkStruct_ov22_0225A0E4 *param2, const UnkStruct_02012744 *param3, const Window *param4, int param5, int param6, int param7, int param8)
{
    UnkStruct_ov22_02259C9C v0;
    CellActorResourceData v1;
    CellActorInitParamsEx v2;
    SpriteResource *v3;

    sub_020093B4(&v1, param1, 0, param1, param1, 0xFFFFFFFF, 0xFFFFFFFF, 0, 0, param2->unk_48[0], param2->unk_48[1], param2->unk_48[2], param2->unk_48[3], NULL, NULL);

    v2.collection = param2->unk_44;
    v2.resourceData = &v1;
    v2.position.x = param5 << 12;
    v2.position.y = param6 << 12;
    v2.position.z = 0;
    v2.priority = 2;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.heapID = 14;

    v0.unk_00.unk_00 = &v2;
    v0.unk_00.unk_04 = NULL;
    v0.unk_00.unk_08 = NULL;
    v0.unk_00.unk_0C = 1;
    v0.unk_14 = param3;
    v0.unk_10 = param4;
    v0.unk_1C = 0;
    v0.unk_20 = 19;

    v3 = SpriteResourceCollection_Find(param2->unk_48[1], 1);
    v0.unk_18 = sub_0200A72C(v3, NULL);

    GF_ASSERT(sub_0201ED94(sub_02012898(param4, NNS_G2D_VRAM_TYPE_2DMAIN, 13), 1, NNS_G2D_VRAM_TYPE_2DMAIN, &param0->unk_14));

    v0.unk_24 = param0->unk_14.unk_04;

    ov22_02259C9C(param0, &v0);
}

static void ov22_0225A200(TouchScreenHitTable *hitTable, int param1, int param2, int param3, int param4, int param5)
{
    hitTable[param1].rect.top = param3;
    hitTable[param1].rect.left = param2;
    hitTable[param1].rect.bottom = param3 + param5;
    hitTable[param1].rect.right = param2 + param4;
}

static void ov22_0225A218(UnkStruct_ov22_0225A0E4 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        ov22_02255248(param0, param0->unk_5C, (v0) * 3 + 105 + 2, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v0);
        ov22_0225528C(param0, param0->unk_5C, (v0) * 3 + 105 + 1, 0, v0);
        ov22_022552A8(param0, param0->unk_5C, (v0) * 3 + 105 + 0, 0, v0);
    }

    ov22_02255268(param0, param0->unk_5C, 104, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, 0);
    ov22_02255268(param0, param0->unk_5C, 120, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1);
}

static void ov22_0225A2A8(UnkStruct_ov22_0225A0E4 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        ov22_022552C4(param0, v0);
    }

    ov22_022552D8(param0, 0);
    ov22_022552D8(param0, 1);
}

static void ov22_0225A2D0(UnkStruct_ov22_02259C58 *param0, int param1)
{
    if (param1 == 0) {
        ov22_02259DB0(param0);
    } else if (param1 == 2) {
        ov22_02259D98(param0);
    } else if ((param1 == 1) || (param1 == 3)) {
        ov22_02259DA4(param0);
    }
}

static void ov22_0225A2F4(UnkStruct_ov22_0225A154 *param0, int param1)
{
    if (param1 == 0) {
        sub_020128C4(param0->unk_10, 0, 15);
        sub_02012A60(param0->unk_10, 4);
    } else {
        if (param1 == 1) {
            sub_020128C4(param0->unk_10, 0, 19);
        }

        if (param1 == 3) {
            sub_020128C4(param0->unk_10, 0, 19);
            sub_02012A60(param0->unk_10, 3);
        }
    }
}

static void ov22_0225A338(UnkStruct_ov22_02259C58 *param0, int param1, int param2, int param3)
{
    if (param3 == param2) {
        Sound_PlayEffect(param1);
    }
}

static Window *ov22_0225A348(UnkStruct_ov22_0225A0E4 *param0, u32 param1, u32 param2, u32 param3, int param4, int param5)
{
    MessageLoader *v0;
    Strbuf *v1;
    Window *v2;

    v0 = MessageLoader_Init(0, param1, param2, 13);
    GF_ASSERT(v0);
    v1 = MessageLoader_GetNewStrbuf(v0, param3);

    v2 = sub_0201A778(14, 1);
    Window_Init(v2);
    BGL_AddFramelessWindow(param0->unk_40, v2, param4, param5, 0, 0);

    {
        u32 v3 = Font_CalcCenterAlignment(FONT_SUBSCREEN, v1, 0, param4 * 8);
        Text_AddPrinterWithParamsAndColor(v2, FONT_SUBSCREEN, v1, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 3), NULL);
    }

    Strbuf_Free(v1);
    MessageLoader_Free(v0);

    return v2;
}

static void ov22_0225A3D0(Window *param0)
{
    sub_0201A928(param0, 1);
}

static void ov22_0225A3DC(UnkStruct_ov22_02259C58 *param0, int param1, int param2)
{
    const VecFx32 *v0;
    VecFx32 v1;

    v0 = CellActor_GetPosition(param0->unk_00);
    v1 = *v0;
    v1.x += param1 << FX32_SHIFT;
    v1.y += param2 << FX32_SHIFT;
    CellActor_SetPosition(param0->unk_00, &v1);
}

static void ov22_0225A418(UnkStruct_ov22_0225A154 *param0, int param1, int param2)
{
    ov22_0225A3DC(&param0->unk_00, param1, param2);
    sub_02012938(param0->unk_10);
}
