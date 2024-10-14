#include "overlay021/ov21_021D1FA4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"

#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D4EE4.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D1FA4.h"
#include "overlay021/struct_ov21_021D22F8.h"
#include "overlay021/struct_ov21_021D23F8.h"
#include "overlay021/struct_ov21_021D2584.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D3124.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021D4EE4_decl.h"
#include "overlay022/struct_ov22_022550D4.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pokemon.h"
#include "sprite_resource.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_02012744.h"
#include "unk_02015064.h"
#include "unk_02018340.h"

static void ov21_021D2830(BGL *param0, int param1);
static void ov21_021D299C(BGL *param0);
static void ov21_021D29D0(UnkStruct_ov21_021D13FC *param0, int param1);
static void ov21_021D2A00(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D2A0C(UnkStruct_ov21_021D13FC *param0, int param1);
static void ov21_021D2AB4(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D2AE8(UnkStruct_ov21_021D13FC *param0, int param1);
static void ov21_021D2C10(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D2C8C(UnkStruct_ov21_021D13FC *param0, int param1);
static void ov21_021D2D4C(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D2E70(UnkStruct_ov21_021D13FC *param0, int param1);
static void ov21_021D2F14(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D2F5C(UnkStruct_ov21_021D13FC *param0, int param1);
static void ov21_021D300C(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D3034(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D3054(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D3064(SysTask *param0, void *param1);
static void ov21_021D30D8(UnkStruct_ov21_021D2584 *param0, int param1, int param2, int param3, int param4);
static void ov21_021D31D0(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D31F0(UnkStruct_ov21_021D13FC *param0);
static void ov21_021D3124(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3, int param4);
static void ov21_021D3194(SysTask *param0, void *param1);

void ov21_021D1FA4(UnkStruct_ov21_021D13FC *param0, int param1)
{
    UnkStruct_ov84_0223BA5C v0;
    UnkStruct_ov21_021D1FA4 v1;

    param0->unk_278 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__ZUKAN__ZUKAN, param1);
    param0->unk_00 = sub_02018340(param1);

    v0.unk_00 = GX_DISPMODE_GRAPHICS;
    v0.unk_04 = GX_BGMODE_0;
    v0.unk_08 = GX_BGMODE_1;
    v0.unk_0C = GX_BG0_AS_3D;

    sub_02018368(&v0);

    ov21_021D2830(param0->unk_00, param1);
    ov21_021D29D0(param0, param1);

    param0->unk_138 = sub_020095C4(128, &param0->unk_14, param1);
    param0->unk_13C[0] = SpriteResourceCollection_New(32, 0, param1);
    param0->unk_13C[1] = SpriteResourceCollection_New(32, 1, param1);
    param0->unk_13C[2] = SpriteResourceCollection_New(32, 2, param1);
    param0->unk_13C[3] = SpriteResourceCollection_New(32, 3, param1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    v1.unk_00 = param0->unk_138;
    v1.unk_04 = param0->unk_00;
    v1.unk_08 = 16;
    v1.unk_0C = param1;

    param0->unk_14C = ov21_021D4C0C(&v1);

    Font_InitManager(FONT_SUBSCREEN, param1);

    ov21_021D2A0C(param0, param1);
    ov21_021D2AE8(param0, param1);
    ov21_021D2C8C(param0, param1);
    ov21_021D2E70(param0, param1);
    ov21_021D2F5C(param0, param1);
}

void ov21_021D2098(UnkStruct_ov21_021D13FC *param0)
{
    ov21_021D2D4C(param0);
    ov21_021D2C10(param0);
    ov21_021D300C(param0);
    ov21_021D2F14(param0);
    ov21_021D2A00(param0);
    ov21_021D299C(param0->unk_00);

    Heap_FreeToHeap(param0->unk_00);
    CellActorCollection_Delete(param0->unk_138);
    SpriteResourceCollection_Delete(param0->unk_13C[0]);
    SpriteResourceCollection_Delete(param0->unk_13C[1]);
    SpriteResourceCollection_Delete(param0->unk_13C[2]);
    SpriteResourceCollection_Delete(param0->unk_13C[3]);

    ov21_021D4C6C(param0->unk_14C);
    Font_Free(FONT_SUBSCREEN);
    ov21_021D2AB4(param0);
    NARC_dtor(param0->unk_278);

    memset(param0, 0, sizeof(UnkStruct_ov21_021D13FC));
}

void ov21_021D2124(UnkStruct_ov21_021D13FC *param0)
{
    CellActorCollection_Update(param0->unk_138);

    NNS_G2dSetupSoftwareSpriteCamera();

    sub_02007768(param0->unk_150);
    sub_020150EC(param0->unk_164);
}

void ov21_021D214C(UnkStruct_ov21_021D13FC *param0)
{
    sub_0201C2B8(param0->unk_00);
    sub_02008A94(param0->unk_150);
}

void ov21_021D2164(UnkStruct_ov21_021D13FC *param0, int param1, int param2)
{
    ov21_021D222C(param0, param1, param2, 0);
}

Sprite *ov21_021D2170(const UnkStruct_ov21_021D13FC *param0)
{
    return ov21_021D2274(param0, 0);
}

void ov21_021D217C(const UnkStruct_ov21_021D13FC *param0, BOOL param1)
{
    ov21_021D2280(param0, param1, 0);
}

void ov21_021D2188(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3, int param4, u8 param5, u32 param6, int param7, int param8, int param9)
{
    ArchivedSprite v0;
    s16 v1;

    if (param0->unk_154[param9]) {
        sub_02007DC8(param0->unk_154[param9]);
    }

    if (param2 == -1) {
        param2 = Pokemon_GetGenderOf(param1, 0);
    }

    BuildArchivedPokemonSprite(&v0, param1, param2, param3, param4, param5, param6);

    if (param3 == 0) {
        v1 = LoadPokemonSpriteYOffset(param1, param2, param3, param5, param6);
        v1 += 0;
    } else {
        v1 = 0;
    }

    param0->unk_154[param9] = sub_02007C34(
        param0->unk_150, &v0, param7, param8 + v1, 0, 0, NULL, NULL);
}

void ov21_021D222C(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3)
{
    sub_02007DEC(param0->unk_154[param3], 0, param1);
    sub_02007DEC(param0->unk_154[param3], 1, param2);
}

void ov21_021D2250(UnkStruct_ov21_021D13FC *param0, int *param1, int *param2, int param3)
{
    *param1 = sub_020080C0(param0->unk_154[param3], 0);
    *param2 = sub_020080C0(param0->unk_154[param3], 1);
}

Sprite *ov21_021D2274(const UnkStruct_ov21_021D13FC *param0, int param1)
{
    return param0->unk_154[param1];
}

void ov21_021D2280(const UnkStruct_ov21_021D13FC *param0, BOOL param1, int param2)
{
    if (param0->unk_154[param2] == NULL) {
        return;
    }

    if (param1 == 1) {
        sub_02007DEC(param0->unk_154[param2], 6, 0);
    } else {
        sub_02007DEC(param0->unk_154[param2], 6, 1);
    }
}

CellActor *ov21_021D22A8(const UnkStruct_ov21_021D13FC *param0)
{
    GF_ASSERT(param0->unk_1B0.unk_00);
    return param0->unk_1B0.unk_00;
}

CellActor *ov21_021D22C4(const UnkStruct_ov21_021D13FC *param0)
{
    GF_ASSERT(param0->unk_1B0.unk_04);
    return param0->unk_1B0.unk_04;
}

void ov21_021D22E0(UnkStruct_ov21_021D13FC *param0, UnkStruct_ov21_021D4CB8 *param1, int param2, int param3, u32 param4)
{
    ov21_021D22F8(&param0->unk_1B0, param1, param2, param3, param4);
}

void ov21_021D22F8(UnkStruct_ov21_021D22F8 *param0, UnkStruct_ov21_021D4CB8 *param1, int param2, int param3, u32 param4)
{
    if ((param3 == param0->unk_28) && (param4 == param0->unk_2C)) {
        sub_020129D0(param0->unk_08->unk_00, 1);
        return;
    } else {
        param0->unk_28 = param3;
        param0->unk_2C = param4;
    }

    if (param0->unk_08) {
        ov21_021D4D1C(param0->unk_08);
    }

    if (param2 != 0) {
        param0->unk_08 = ov21_021D4CB8(param1, param2);
    } else {
        param0->unk_08 = ov21_021D4CA0(param1);
    }
}

SpriteResource *ov21_021D2344(const UnkStruct_ov21_021D13FC *param0, int param1)
{
    GF_ASSERT(param1 <= 3);
    return param0->unk_1B0.unk_0C[param1];
}

void ov21_021D2360(const UnkStruct_ov21_021D13FC *param0, GXOamMode param1)
{
    CellActor_SetExplicitOAMMode(param0->unk_1B0.unk_00, param1);
    CellActor_SetExplicitOAMMode(param0->unk_1B0.unk_04, param1);
    sub_02012AF0(param0->unk_1B0.unk_08->unk_00, param1);
}

void ov21_021D238C(const UnkStruct_ov21_021D13FC *param0, int param1)
{
    CellActor_SetExplicitPriority(param0->unk_1B0.unk_00, param1);
    CellActor_SetExplicitPriority(param0->unk_1B0.unk_04, param1);
    sub_02012A00(param0->unk_1B0.unk_08->unk_00, param1);
}

void ov21_021D23C0(const UnkStruct_ov21_021D13FC *param0, BOOL param1)
{
    if (param0->unk_1B0.unk_00) {
        CellActor_SetDrawFlag(param0->unk_1B0.unk_00, param1);
    }

    if (param0->unk_1B0.unk_04) {
        CellActor_SetDrawFlag(param0->unk_1B0.unk_04, param1);
    }

    if (param0->unk_1B0.unk_08->unk_00) {
        sub_020129D0(param0->unk_1B0.unk_08->unk_00, param1);
    }
}

void ov21_021D23F8(UnkStruct_ov21_021D23F8 *param0, u8 param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    param0->unk_00 = param8;
    param0->unk_04 = param6;
    param0->unk_08 = param7 | GX_BLEND_PLANEMASK_BD;
    param0->unk_0C = param2;
    param0->unk_10 = param3 - param2;
    param0->unk_14 = param4;
    param0->unk_18 = param5 - param4;
    param0->unk_1C = param1;
    param0->unk_20 = 0;
}

BOOL ov21_021D2424(UnkStruct_ov21_021D23F8 *param0)
{
    int v0, v1;

    if (ov21_021D24EC(param0) == 0) {
        v0 = ov21_021D2484(param0);
        v1 = ov21_021D24B8(param0);

        if (param0->unk_00 == 0) {
            G2_SetBlendBrightnessExt(param0->unk_04, param0->unk_08, v0, 0, v1);
        } else {
            G2S_SetBlendBrightnessExt(param0->unk_04, param0->unk_08, v0, 0, v1);
        }

        param0->unk_20++;
    }

    return ov21_021D24EC(param0);
}

int ov21_021D2484(UnkStruct_ov21_021D23F8 *param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->unk_18 << FX32_SHIFT, param0->unk_20 << FX32_SHIFT);
    v0 = FX_Div(v0, param0->unk_1C << FX32_SHIFT);

    return (v0 >> FX32_SHIFT) + param0->unk_14;
}

int ov21_021D24B8(UnkStruct_ov21_021D23F8 *param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->unk_10 << FX32_SHIFT, param0->unk_20 << FX32_SHIFT);
    v0 = FX_Div(v0, param0->unk_1C << FX32_SHIFT);

    return (v0 >> FX32_SHIFT) + param0->unk_0C;
}

BOOL ov21_021D24EC(UnkStruct_ov21_021D23F8 *param0)
{
    if (param0->unk_20 <= param0->unk_1C) {
        return 0;
    }

    return 1;
}

void ov21_021D24FC(const UnkStruct_ov21_021D13FC *param0, UnkStruct_ov21_021D23F8 *param1)
{
    Sprite *v0;
    int v1;

    v1 = -ov21_021D24B8(param1);
    v0 = ov21_021D2170(param0);

    sub_020086FC(v0, v1, v1, 0, 0);
}

void ov21_021D251C(const UnkStruct_ov21_021D13FC *param0, UnkStruct_ov21_021D23F8 *param1, int param2)
{
    Sprite *v0;
    int v1;

    v1 = -ov21_021D24B8(param1);
    v0 = ov21_021D2274(param0, param2);

    sub_020086FC(v0, v1, v1, 0, 0);
}

void ov21_021D2544(const UnkStruct_ov21_021D4EE4 *param0, UnkStruct_ov21_021D13FC *param1)
{
    int v0, v1, v2, v3;

    ov21_021D4F94(param0, &v0, &v1);
    ov21_021D4FBC(param0, &v2, &v3);
    ov21_021D2574(param1, v0, v1, v2, v3);
}

void ov21_021D2574(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3, int param4)
{
    ov21_021D3124(param0, param1, param2, param3, param4);
}

void ov21_021D2584(UnkStruct_ov21_021D2584 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        CellActor_SetDrawFlag(param0->unk_00[v0], param1);
    }
}

BOOL ov21_021D25A0(UnkStruct_ov21_021D2584 *param0)
{
    return CellActor_GetDrawFlag(param0->unk_00[0]);
}

void ov21_021D25AC(UnkStruct_ov21_021D2584 *param0, BOOL param1)
{
    param0->unk_30 = param1;

    if (param1 == 0) {
        param0->unk_34 = 0;
    }
}

void ov21_021D25B8(const UnkStruct_ov21_021D4EE4 *param0, UnkStruct_ov21_021D13FC *param1)
{
    int v0, v1, v2, v3;

    ov21_021D4F94(param0, &v0, &v1);
    ov21_021D4FBC(param0, &v2, &v3);
    ov21_021D25E8(param1, v0, v1, v2, v3);
}

void ov21_021D25E8(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3, int param4)
{
    param0->unk_1E0.unk_20 = param1;
    param0->unk_1E0.unk_24 = param2;
    param0->unk_1E0.unk_28 = param3;
    param0->unk_1E0.unk_2C = param4;

    ov21_021D30D8(&param0->unk_1E0, param0->unk_1E0.unk_20, param0->unk_1E0.unk_24, param0->unk_1E0.unk_28, param0->unk_1E0.unk_2C);

    param0->unk_218.unk_44 = param1;
    param0->unk_218.unk_48 = param2;
    param0->unk_218.unk_4C = param3;
    param0->unk_218.unk_50 = param4;
    param0->unk_218.unk_54 = 0;
}

void ov21_021D2648(UnkStruct_ov21_021D2648 *param0, int param1, int param2, int param3, int param4, int param5)
{
    param0->unk_00 = param1;
    param0->unk_04 = param3;
    param0->unk_08 = param1;
    param0->unk_0C = param3;
    param0->unk_10 = param2 - param1;
    param0->unk_14 = param4 - param3;
    param0->unk_1C = param5;
    param0->unk_18 = 0;
}

BOOL ov21_021D2664(UnkStruct_ov21_021D2648 *param0)
{
    fx32 v0, v1;

    v0 = FX_Mul(param0->unk_10 << FX32_SHIFT, param0->unk_18 << FX32_SHIFT);
    v0 = FX_Div(v0, param0->unk_1C << FX32_SHIFT);
    v1 = FX_Mul(param0->unk_14 << FX32_SHIFT, param0->unk_18 << FX32_SHIFT);
    v1 = FX_Div(v1, param0->unk_1C << FX32_SHIFT);

    param0->unk_00 = (v0 >> FX32_SHIFT) + param0->unk_08;
    param0->unk_04 = (v1 >> FX32_SHIFT) + param0->unk_0C;

    if ((param0->unk_18 + 1) <= param0->unk_1C) {
        param0->unk_18++;
        return 0;
    }

    param0->unk_18 = param0->unk_1C;
    return 1;
}

NARC *ov21_021D26E0(UnkStruct_ov21_021D13FC *param0)
{
    return param0->unk_278;
}

void *ov21_021D26E8(UnkStruct_ov21_021D13FC *param0, u32 param1, BOOL param2, u32 param3)
{
    void *v0;

    v0 = NARC_AllocAndReadWholeMember(param0->unk_278, param1, param3);

    if (v0 != NULL) {
        if (param2) {
            void *v1;

            v1 = Heap_AllocFromHeap(param3, MI_GetUncompressedSize(v0));

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                Heap_FreeToHeap(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}

u32 ov21_021D2724(UnkStruct_ov21_021D13FC *param0, u32 param1, BGL *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7)
{
    void *v0 = ov21_021D26E8(param0, param1, param6, param7);

    if (v0 != NULL) {
        NNSG2dCharacterData *v1;

        if (NNS_G2dGetUnpackedBGCharacterData(v0, &v1)) {
            if (param5 == 0) {
                param5 = v1->szByte;
            }

            sub_0201958C(param2, param3, v1->pRawData, param5, param4);
        }

        Heap_FreeToHeap(v0);
    }

    return param5;
}

void ov21_021D276C(UnkStruct_ov21_021D13FC *param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5)
{
    static void (*const v0[])(const void *, u32, u32) = {
        GX_LoadBGPltt,
        GX_LoadOBJPltt,
        GX_LoadBGExtPltt,
        GX_LoadOBJExtPltt,
        GXS_LoadBGPltt,
        GXS_LoadOBJPltt,
        GXS_LoadBGExtPltt,
        GXS_LoadOBJExtPltt
    };

    void *v1 = ov21_021D26E8(param0, param1, 0, param5);

    if (v1 != NULL) {
        NNSG2dPaletteData *v2;

        if (NNS_G2dGetUnpackedPaletteData(v1, &v2)) {
            if (param4 == 0) {
                param4 = v2->szByte;
            }

            DC_FlushRange(v2->pRawData, param4);
            v0[param2](v2->pRawData, param3, param4);
        }

        Heap_FreeToHeap(v1);
    }
}

void *ov21_021D27B8(UnkStruct_ov21_021D13FC *param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 param4)
{
    void *v0 = ov21_021D26E8(param0, param1, param2, param4);

    if (v0 != NULL) {
        if (NNS_G2dGetUnpackedScreenData(v0, param3) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

void *ov21_021D27E0(UnkStruct_ov21_021D13FC *param0, u32 param1, NNSG2dPaletteData **param2, u32 param3)
{
    void *v0 = ov21_021D26E8(param0, param1, 0, param3);

    if (v0 != NULL) {
        if (NNS_G2dGetUnpackedPaletteData(v0, param2) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

void *ov21_021D2808(UnkStruct_ov21_021D13FC *param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 param4)
{
    void *v0 = ov21_021D26E8(param0, param1, param2, param4);

    if (v0 != NULL) {
        if (NNS_G2dGetUnpackedBGCharacterData(v0, param3) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

static void ov21_021D2830(BGL *param0, int param1)
{
    {
        UnkStruct_ov97_0222DB78 v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v0, 0);
        sub_02019690(1, 32, 0, param1);
        sub_02019EBC(param0, 1);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v1, 0);
        sub_02019690(2, 32, 0, param1);
        sub_02019EBC(param0, 2);
    }

    BGL_SetPriority(0, 2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        sub_020183C4(param0, 3, &v2, 0);
        sub_02019690(3, 32, 0, param1);
        sub_02019EBC(param0, 3);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v3, 0);
        sub_02019690(5, 32, 0, param1);
        sub_02019EBC(param0, 5);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 6, &v4, 0);
        sub_02019690(6, 32, 0, param1);
        sub_02019EBC(param0, 6);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x400,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 7, &v5, 1);
        sub_02019690(7, 64, 0, param1);
        sub_02019EBC(param0, 7);
    }
}

static void ov21_021D299C(BGL *param0)
{
    sub_02019044(param0, 1);
    sub_02019044(param0, 2);
    sub_02019044(param0, 3);
    sub_02019044(param0, 5);
    sub_02019044(param0, 7);
    sub_02019044(param0, 6);
}

static void ov21_021D29D0(UnkStruct_ov21_021D13FC *param0, int param1)
{
    BGL_AddWindow(param0->unk_00, &param0->unk_04, 1, 0, 0, 32, 32, 0, 0);
    BGL_FillWindow(&param0->unk_04, 0);
    sub_0201A954(&param0->unk_04);
}

static void ov21_021D2A00(UnkStruct_ov21_021D13FC *param0)
{
    BGL_DeleteWindow(&param0->unk_04);
}

static void ov21_021D2A0C(UnkStruct_ov21_021D13FC *param0, int param1)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    int v2;

    param0->unk_150 = sub_0200762C(param1);

    v0 = NNS_GfdAllocTexVram(0x8000, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x80, 0, NNS_GFD_ALLOC_FROM_LOW);

    sub_02008A78(param0->unk_150, NNS_GfdGetTexKeyAddr(v0), NNS_GfdGetTexKeySize(v0));
    sub_02008A84(param0->unk_150, NNS_GfdGetPlttKeyAddr(v1), NNS_GfdGetPlttKeySize(v1));

    for (v2 = 0; v2 < 4; v2++) {
        param0->unk_154[v2] = NULL;
    }

    {
        UnkStruct_ov22_022550D4 v3 = {
            8, 8, 8, 0
        };

        v3.unk_0C = param1;
        param0->unk_164 = sub_02015064(&v3);
    }
}

static void ov21_021D2AB4(UnkStruct_ov21_021D13FC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_154[v0]) {
            sub_02007DC8(param0->unk_154[v0]);
        }
    }

    sub_02007B6C(param0->unk_150);
    sub_020150A8(param0->unk_164);
}

static void ov21_021D2AE8(UnkStruct_ov21_021D13FC *param0, int param1)
{
    UnkStruct_ov21_021D22F8 *v0 = &param0->unk_1B0;
    NARC *v1 = ov21_021D26E0(param0);

    v0->unk_0C[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_13C[0], v1, 78, 1, 3000, NNS_G2D_VRAM_TYPE_2DMAIN, param1);

    sub_0200A3DC(v0->unk_0C[0]);
    SpriteResource_ReleaseData(v0->unk_0C[0]);

    v0->unk_0C[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_13C[1], v1, 3, 0, 3000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param1);

    sub_0200A640(v0->unk_0C[1]);
    SpriteResource_ReleaseData(v0->unk_0C[1]);

    v0->unk_0C[2] = SpriteResourceCollection_AddFrom(param0->unk_13C[2], v1, 76, 1, 3000, 2, param1);
    v0->unk_0C[3] = SpriteResourceCollection_AddFrom(param0->unk_13C[3], v1, 77, 1, 3000, 3, param1);
}

void ov21_021D2B88(UnkStruct_ov21_021D22F8 *param0, SpriteResourceCollection **param1, int param2, NARC *param3)
{
    param0->unk_0C[0] = SpriteResourceCollection_AddTilesFrom(param1[0], param3, 78, 1, 3000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_0C[0]);
    SpriteResource_ReleaseData(param0->unk_0C[0]);

    param0->unk_0C[1] = SpriteResourceCollection_AddPaletteFrom(param1[1], param3, 3, 0, 3000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    sub_0200A640(param0->unk_0C[1]);
    SpriteResource_ReleaseData(param0->unk_0C[1]);

    param0->unk_0C[2] = SpriteResourceCollection_AddFrom(param1[2], param3, 76, 1, 3000, 2, param2);
    param0->unk_0C[3] = SpriteResourceCollection_AddFrom(param1[3], param3, 77, 1, 3000, 3, param2);
}

static void ov21_021D2C10(UnkStruct_ov21_021D13FC *param0)
{
    UnkStruct_ov21_021D22F8 *v0 = &param0->unk_1B0;

    sub_0200A4E4(v0->unk_0C[0]);
    sub_0200A6DC(v0->unk_0C[1]);

    SpriteResourceCollection_Remove(param0->unk_13C[0], v0->unk_0C[0]);
    SpriteResourceCollection_Remove(param0->unk_13C[1], v0->unk_0C[1]);
    SpriteResourceCollection_Remove(param0->unk_13C[2], v0->unk_0C[2]);
    SpriteResourceCollection_Remove(param0->unk_13C[3], v0->unk_0C[3]);
}

void ov21_021D2C58(UnkStruct_ov21_021D22F8 *param0, SpriteResourceCollection **param1)
{
    sub_0200A4E4(param0->unk_0C[0]);
    sub_0200A6DC(param0->unk_0C[1]);

    SpriteResourceCollection_Remove(param1[0], param0->unk_0C[0]);
    SpriteResourceCollection_Remove(param1[1], param0->unk_0C[1]);
    SpriteResourceCollection_Remove(param1[2], param0->unk_0C[2]);
    SpriteResourceCollection_Remove(param1[3], param0->unk_0C[3]);
}

static void ov21_021D2C8C(UnkStruct_ov21_021D13FC *param0, int param1)
{
    CellActorResourceData v0;
    CellActorInitParams v1;

    sub_020093B4(&v0, 3000, 3000, 3000, 3000, 0xffffffff, 0xffffffff, 0, 0, param0->unk_13C[0], param0->unk_13C[1], param0->unk_13C[2], param0->unk_13C[3], NULL, NULL);

    v1.collection = param0->unk_138;
    v1.resourceData = &v0;
    v1.priority = 0;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param1;
    v1.position.x = 0;
    v1.position.y = 0;

    param0->unk_1B0.unk_00 = CellActorCollection_Add(&v1);

    CellActor_SetDrawFlag(param0->unk_1B0.unk_00, 0);
    CellActor_SetPriority(param0->unk_1B0.unk_00, 1);

    v1.position.x = 0;
    v1.position.y = 0;

    param0->unk_1B0.unk_04 = CellActorCollection_Add(&v1);

    CellActor_SetDrawFlag(param0->unk_1B0.unk_04, 0);
    CellActor_SetAnim(param0->unk_1B0.unk_04, 1);

    param0->unk_1B0.unk_08 = NULL;
    param0->unk_1B0.unk_28 = 0;
    param0->unk_1B0.unk_2C = 0;
}

static void ov21_021D2D4C(UnkStruct_ov21_021D13FC *param0)
{
    CellActor_Delete(param0->unk_1B0.unk_00);
    param0->unk_1B0.unk_00 = NULL;

    CellActor_Delete(param0->unk_1B0.unk_04);
    param0->unk_1B0.unk_04 = NULL;

    if (param0->unk_1B0.unk_08) {
        ov21_021D4D1C(param0->unk_1B0.unk_08);
        param0->unk_1B0.unk_08 = NULL;
    }
}

void ov21_021D2D88(UnkStruct_ov21_021D22F8 *param0, CellActorCollection *param1, SpriteResourceCollection **param2, int param3, int param4)
{
    CellActorResourceData v0;
    CellActorInitParams v1;

    sub_020093B4(&v0, 3000, 3000, 3000, 3000, 0xffffffff, 0xffffffff, 0, param4, param2[0], param2[1], param2[2], param2[3], NULL, NULL);

    v1.collection = param1;
    v1.resourceData = &v0;
    v1.priority = 0;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = 0;
    v1.position.y = 0;

    param0->unk_00 = CellActorCollection_Add(&v1);

    CellActor_SetDrawFlag(param0->unk_00, 0);
    CellActor_SetPriority(param0->unk_00, 1);

    v1.position.x = 0;
    v1.position.y = 0;

    param0->unk_04 = CellActorCollection_Add(&v1);

    CellActor_SetDrawFlag(param0->unk_04, 0);
    CellActor_SetAnim(param0->unk_04, 1);

    param0->unk_08 = NULL;
    param0->unk_28 = 0;
    param0->unk_2C = 0;
}

void ov21_021D2E1C(UnkStruct_ov21_021D22F8 *param0)
{
    CellActor_Delete(param0->unk_00);
    param0->unk_00 = NULL;

    CellActor_Delete(param0->unk_04);
    param0->unk_04 = NULL;

    if (param0->unk_08) {
        ov21_021D4D1C(param0->unk_08);
        param0->unk_08 = NULL;
    }
}

void ov21_021D2E44(UnkStruct_ov21_021D22F8 *param0, BOOL param1)
{
    if (param0->unk_00) {
        CellActor_SetDrawFlag(param0->unk_00, param1);
    }

    if (param0->unk_04) {
        CellActor_SetDrawFlag(param0->unk_04, param1);
    }

    if (param0->unk_08->unk_00) {
        sub_020129D0(param0->unk_08->unk_00, param1);
    }
}

static void ov21_021D2E70(UnkStruct_ov21_021D13FC *param0, int param1)
{
    UnkStruct_ov21_021D2584 *v0 = &param0->unk_1E0;
    NARC *v1 = ov21_021D26E0(param0);

    v0->unk_10[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_13C[0], v1, 119, 1, 12000, NNS_G2D_VRAM_TYPE_2DSUB, param1);

    sub_0200A3DC(v0->unk_10[0]);
    SpriteResource_ReleaseData(v0->unk_10[0]);

    v0->unk_10[1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_13C[1], v1, 21, 0, 12000, NNS_G2D_VRAM_TYPE_2DSUB, 1, param1);

    sub_0200A640(v0->unk_10[1]);
    SpriteResource_ReleaseData(v0->unk_10[1]);

    v0->unk_10[2] = SpriteResourceCollection_AddFrom(param0->unk_13C[2], v1, 120, 1, 12000, 2, param1);
    v0->unk_10[3] = SpriteResourceCollection_AddFrom(param0->unk_13C[3], v1, 118, 1, 12000, 3, param1);
}

static void ov21_021D2F14(UnkStruct_ov21_021D13FC *param0)
{
    UnkStruct_ov21_021D2584 *v0 = &param0->unk_1E0;

    sub_0200A4E4(v0->unk_10[0]);
    sub_0200A6DC(v0->unk_10[1]);

    SpriteResourceCollection_Remove(param0->unk_13C[0], v0->unk_10[0]);
    SpriteResourceCollection_Remove(param0->unk_13C[1], v0->unk_10[1]);
    SpriteResourceCollection_Remove(param0->unk_13C[2], v0->unk_10[2]);
    SpriteResourceCollection_Remove(param0->unk_13C[3], v0->unk_10[3]);
}

static void ov21_021D2F5C(UnkStruct_ov21_021D13FC *param0, int param1)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    int v2;
    UnkStruct_ov21_021D2584 *v3 = &param0->unk_1E0;

    sub_020093B4(&v0, 12000, 12000, 12000, 12000, 0xffffffff, 0xffffffff, 0, 0, param0->unk_13C[0], param0->unk_13C[1], param0->unk_13C[2], param0->unk_13C[3], NULL, NULL);

    v1.collection = param0->unk_138;
    v1.resourceData = &v0;
    v1.priority = 0;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param1;
    v1.position.y = (192 << FX32_SHIFT) + (100 * FX32_ONE);
    v1.position.x = (100 * FX32_ONE);

    for (v2 = 0; v2 < 4; v2++) {
        v3->unk_00[v2] = CellActorCollection_Add(&v1);
        CellActor_SetAnim(v3->unk_00[v2], v2);
    }

    ov21_021D2584(v3, 0);
    ov21_021D3034(param0);
    ov21_021D31D0(param0);
}

static void ov21_021D300C(UnkStruct_ov21_021D13FC *param0)
{
    int v0;
    UnkStruct_ov21_021D2584 *v1 = &param0->unk_1E0;

    ov21_021D31F0(param0);
    ov21_021D3054(param0);

    for (v0 = 0; v0 < 4; v0++) {
        CellActor_Delete(v1->unk_00[v0]);
    }
}

static void ov21_021D3034(UnkStruct_ov21_021D13FC *param0)
{
    param0->unk_270 = SysTask_Start(ov21_021D3064, &param0->unk_1E0, 1);
}

static void ov21_021D3054(UnkStruct_ov21_021D13FC *param0)
{
    SysTask_Done(param0->unk_270);
}

static void ov21_021D3064(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021D2584 *v0 = param1;
    int v1;
    int v2, v3;
    fx32 v4;
    int v5;

    if (v0->unk_30) {
        ov21_021D30D8(v0, v0->unk_20, v0->unk_24, v0->unk_28, v0->unk_2C);
        return;
    }

    v0->unk_34 = (v0->unk_34 + 1) % (32 * 2);

    if (v0->unk_34 < 32) {
        v5 = v0->unk_34;
    } else {
        v5 = (32 * 2) - (v0->unk_34 + 1);
    }

    v4 = FX_Mul(4 << FX32_SHIFT, v5 << FX32_SHIFT);
    v4 = FX_Div(v4, 32 << FX32_SHIFT);
    v4 >>= FX32_SHIFT;
    v2 = v0->unk_28 + v4;
    v3 = v0->unk_2C + v4;

    ov21_021D30D8(v0, v0->unk_20, v0->unk_24, v2, v3);
}

static void ov21_021D30D8(UnkStruct_ov21_021D2584 *param0, int param1, int param2, int param3, int param4)
{
    VecFx32 v0;
    int v1, v2;
    int v3;

    for (v3 = 0; v3 < 4; v3++) {
        ov21_021D4FFC(v3, &v1, &v2, param1, param2, param3, param4);
        v0.x = v1 << FX32_SHIFT;
        v0.y = (v2 << FX32_SHIFT) + (192 << FX32_SHIFT);

        CellActor_SetPosition(param0->unk_00[v3], &v0);
    }
}

static void ov21_021D3124(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_ov21_021D3124 *v0 = &param0->unk_218;

    if ((v0->unk_44 == param1) && (v0->unk_48 == param2) && (v0->unk_4C == param3) && (v0->unk_50 == param4)) {
        return;
    }

    v0->unk_00 = &param0->unk_1E0;

    ov21_021D2648(&v0->unk_04, v0->unk_00->unk_20, param1, v0->unk_00->unk_24, param2, 3);
    ov21_021D2648(&v0->unk_24, v0->unk_00->unk_28, param3, v0->unk_00->unk_2C, param4, 3);

    v0->unk_44 = param1;
    v0->unk_48 = param2;
    v0->unk_4C = param3;
    v0->unk_50 = param4;
    v0->unk_54 = 1;
}

static void ov21_021D3194(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021D3124 *v0 = param1;
    BOOL v1;

    if (v0->unk_54 == 0) {
        return;
    }

    v1 = ov21_021D2664(&v0->unk_04);
    ov21_021D2664(&v0->unk_24);

    v0->unk_00->unk_20 = v0->unk_04.unk_00;
    v0->unk_00->unk_24 = v0->unk_04.unk_04;
    v0->unk_00->unk_28 = v0->unk_24.unk_00;
    v0->unk_00->unk_2C = v0->unk_24.unk_04;

    if (v1 == 1) {
        v0->unk_54 = 0;
    }
}

static void ov21_021D31D0(UnkStruct_ov21_021D13FC *param0)
{
    param0->unk_274 = SysTask_Start(ov21_021D3194, &param0->unk_218, 0);
}

static void ov21_021D31F0(UnkStruct_ov21_021D13FC *param0)
{
    SysTask_Done(param0->unk_274);
    param0->unk_274 = NULL;
}
