#include "overlay083/ov83_0223D6A8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02015064_decl.h"
#include "struct_decls/struct_02015128_decl.h"
#include "struct_decls/struct_020151A4_decl.h"
#include "struct_decls/struct_02015214_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay021/struct_ov21_021E7F40.h"
#include "overlay022/struct_ov22_022557A0.h"
#include "overlay022/struct_ov22_02255800.h"
#include "overlay083/ov83_0223D4CC.h"
#include "overlay083/struct_ov83_0223D4CC_decl.h"
#include "overlay083/struct_ov83_0223D784.h"
#include "overlay083/struct_ov83_0223D95C.h"
#include "overlay083/struct_ov83_0223D9EC.h"
#include "overlay083/struct_ov83_0223DA94.h"
#include "overlay083/struct_ov83_0223DB30.h"
#include "overlay083/struct_ov83_0223DB4C.h"
#include "overlay083/struct_ov83_0223DEA0.h"
#include "overlay083/struct_ov83_0223E138.h"
#include "overlay083/struct_ov83_0223E244.h"
#include "overlay083/struct_ov83_0223E340.h"
#include "overlay083/struct_ov83_0223E5C0.h"
#include "overlay083/struct_ov83_0223E824.h"
#include "overlay083/struct_ov83_0223ED3C.h"
#include "overlay083/struct_ov83_0223F054.h"
#include "overlay083/struct_ov83_0223F29C.h"
#include "overlay083/struct_ov83_0223F410.h"
#include "overlay083/struct_ov83_0223F4AC.h"
#include "overlay083/struct_ov83_0223F670.h"
#include "overlay083/struct_ov83_0223F770.h"
#include "overlay083/struct_ov83_0223F7A4.h"
#include "overlay083/struct_ov83_0223FCE8.h"
#include "overlay083/struct_ov83_0223FE50.h"

#include "cell_actor.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_0200DA60.h"
#include "unk_02015064.h"
#include "unk_02015920.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201E3BC.h"
#include "unk_02098FFC.h"

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    u8 unk_10;
    u8 unk_11;
} UnkStruct_ov83_02240460;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
} UnkStruct_ov83_022404B0;

static void ov83_0223E09C(UnkStruct_ov83_0223E138 *param0, u32 param1);
static void ov83_0223E138(UnkStruct_ov83_0223E138 *param0);
static void ov83_0223E15C(UnkStruct_ov83_0223E138 *param0, u32 param1, NARC *param2);
static void ov83_0223E208(UnkStruct_ov83_0223E138 *param0);
static void ov83_0223E21C(Window *param0, Strbuf *param1, int param2, int param3);
static void ov83_0223E77C(UnkStruct_ov83_0223E824 *param0, u32 param1);
static void ov83_0223E824(UnkStruct_ov83_0223E824 *param0);
static void ov83_0223E844(UnkStruct_ov83_0223E824 *param0, u32 param1, NARC *param2);
static UnkStruct_ov83_0223F054 *ov83_0223EFF4(UnkStruct_ov83_0223ED3C *param0);
static UnkStruct_ov83_0223F054 *ov83_0223F018(UnkStruct_ov83_0223ED3C *param0);
static void ov83_0223F054(UnkStruct_ov83_0223F054 *param0);
static void ov83_0223F074(UnkStruct_ov83_0223F054 *param0);
static void ov83_0223F0F4(UnkStruct_ov83_0223F054 *param0, UnkStruct_ov83_0223FE50 *param1);
static void ov83_0223F1C0(UnkStruct_ov83_0223F054 *param0, int param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, fx32 param8, fx32 param9, fx32 param10, BOOL param11, int param12, UnkStruct_ov83_0223D95C *param13, int param14, UnkStruct_ov83_0223D784 *param15, u32 param16, BOOL param17, u8 param18);
static void ov83_0223F268(UnkStruct_ov83_0223F054 *param0);
static void ov83_0223F410(UnkStruct_ov83_0223F410 *param0);
static void ov83_0223F420(UnkStruct_ov83_0223F410 *param0);
static void ov83_0223F44C(UnkStruct_ov83_0223F410 *param0);
static void ov83_0223F458(UnkStruct_ov83_0223F410 *param0);
static UnkStruct_ov83_0223F670 *ov83_0223F650(UnkStruct_ov83_0223F4AC *param0);
static void ov83_0223F670(UnkStruct_ov83_0223F670 *param0);
static void ov83_0223F6B4(UnkStruct_ov83_0223F670 *param0);
static void ov83_0223F6CC(UnkStruct_ov83_0223F670 *param0, int param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7);

static int ov83_0223D6A8(int param0, const Strbuf *param1, int param2)
{
    u32 v0;

    v0 = Font_CalcStrbufWidth(param2, param1, 0);
    v0 /= 2;
    param0 -= v0;

    return param0;
}

static UnkStruct_02015128 *ov83_0223D6BC(UnkStruct_02015064 *param0, u32 param1, u32 param2, NARC *param3)
{
    UnkStruct_ov22_022557A0 v0;
    void *v1;
    NNSG2dCharacterData *v2;
    UnkStruct_02015128 *v3;

    v1 = sub_020071B4(param3, param1, 0, &v2, param2);
    v0.unk_00 = param0;
    v0.unk_04 = v2;
    v3 = sub_02015128(&v0);

    Heap_FreeToHeap(v1);

    return v3;
}

static UnkStruct_020151A4 *ov83_0223D6EC(UnkStruct_02015064 *param0, u32 param1, u32 param2, NARC *param3)
{
    UnkStruct_ov22_02255800 v0;
    void *v1;
    NNSG2dPaletteData *v2;
    UnkStruct_020151A4 *v3;

    v1 = sub_020071EC(param3, param1, &v2, param2);
    v0.unk_00 = param0;
    v0.unk_04 = v2;
    v0.unk_08 = 1;
    v3 = sub_020151A4(&v0);

    Heap_FreeToHeap(v1);

    return v3;
}

static UnkStruct_02015214 *ov83_0223D720(UnkStruct_02015064 *param0, UnkStruct_02015128 *param1, UnkStruct_020151A4 *param2, int param3, int param4, int param5)
{
    UnkStruct_ov21_021E7F40 v0;
    UnkStruct_02015214 *v1;

    v0.unk_00 = param0;
    v0.unk_04 = param1;
    v0.unk_08 = param2;
    v0.unk_0C = param3;
    v0.unk_0E = param4;
    v0.unk_10 = 0;
    v0.unk_14 = 31;
    v0.unk_18 = param5;
    v0.unk_1C = 0;

    v1 = sub_02015214(&v0);
    sub_02015240(v1, 0);

    return v1;
}

void ov83_0223D754(UnkStruct_ov83_0223D784 *param0, int param1, int param2, int param3)
{
    int v0;

    param0->unk_00 = sub_020095C4(param1, &param0->unk_04, param3);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = SpriteResourceCollection_New(param2, v0, param3);
    }
}

void ov83_0223D784(UnkStruct_ov83_0223D784 *param0)
{
    int v0;

    CellActorCollection_Delete(param0->unk_00);
    param0->unk_00 = NULL;

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_190[v0]);
    }
}

void ov83_0223D7A8(UnkStruct_ov83_0223D784 *param0, UnkStruct_ov83_0223D95C *param1, NARC *param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, u32 param9)
{
    BOOL v0;

    param1->unk_00[0] = SpriteResourceCollection_AddTilesFromEx(param0->unk_190[0], param2, param5, 0, param8, NNS_G2D_VRAM_TYPE_2DMAIN, param9, 1);
    param1->unk_00[1] = SpriteResourceCollection_AddPaletteFromEx(param0->unk_190[1], param2, param3, 0, param8, NNS_G2D_VRAM_TYPE_2DMAIN, param4, param9, 1);
    param1->unk_10 = 0;
    param1->unk_00[2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], param2, param6, 0, param8, 2, param9);
    param1->unk_00[3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], param2, param7, 0, param8, 3, param9);

    v0 = sub_0200A450(param1->unk_00[0]);
    GF_ASSERT(v0);
    SpriteResource_ReleaseData(param1->unk_00[0]);

    v0 = sub_0200A640(param1->unk_00[1]);
    GF_ASSERT(v0);
    SpriteResource_ReleaseData(param1->unk_00[1]);

    sub_020093B4(&param1->unk_14, param8, param8, param8, param8, 0xffffffff, 0xffffffff, 0, 0, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);
}

void ov83_0223D894(UnkStruct_ov83_0223D784 *param0, UnkStruct_ov83_0223D95C *param1, NARC *param2, SpriteResource *param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    BOOL v0;
    u32 v1;

    param1->unk_00[0] = SpriteResourceCollection_AddTilesFromEx(param0->unk_190[0], param2, param4, 0, param7, NNS_G2D_VRAM_TYPE_2DMAIN, param8, 1);
    param1->unk_00[1] = param3;
    param1->unk_10 = 1;

    v1 = SpriteResource_GetID(param3);

    param1->unk_00[2] = SpriteResourceCollection_AddFrom(param0->unk_190[2], param2, param5, 0, param7, 2, param8);
    param1->unk_00[3] = SpriteResourceCollection_AddFrom(param0->unk_190[3], param2, param6, 0, param7, 3, param8);

    v0 = sub_0200A450(param1->unk_00[0]);
    GF_ASSERT(v0);

    SpriteResource_ReleaseData(param1->unk_00[0]);
    sub_020093B4(&param1->unk_14, param7, v1, param7, param7, 0xffffffff, 0xffffffff, 0, 0, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);
}

void ov83_0223D95C(UnkStruct_ov83_0223D784 *param0, UnkStruct_ov83_0223D95C *param1)
{
    int v0;

    sub_0200A4E4(param1->unk_00[0]);

    if (param1->unk_10 == 0) {
        sub_0200A6DC(param1->unk_00[1]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v0 != 1) {
            SpriteResourceCollection_Remove(param0->unk_190[v0], param1->unk_00[v0]);
        } else {
            if (param1->unk_10 == 0) {
                SpriteResourceCollection_Remove(param0->unk_190[v0], param1->unk_00[v0]);
            }
        }
    }
}

CellActor *ov83_0223D9A8(UnkStruct_ov83_0223D784 *param0, UnkStruct_ov83_0223D95C *param1, fx32 param2, fx32 param3, fx32 param4, int param5, int param6)
{
    CellActorInitParams v0;
    CellActor *v1;

    v0.collection = param0->unk_00;
    v0.resourceData = &param1->unk_14;
    v0.position.x = param2;
    v0.position.y = param3;
    v0.position.z = param4;
    v0.priority = param5;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = param6;

    v1 = CellActorCollection_Add(&v0);
    GF_ASSERT(v1);

    return v1;
}

void ov83_0223D9DC(UnkStruct_ov83_0223D9EC *param0, fx32 param1, fx32 param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_10 = param3;
    param0->unk_0C = 0;
}

BOOL ov83_0223D9EC(UnkStruct_ov83_0223D9EC *param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->unk_08, param0->unk_0C << FX32_SHIFT);
    v0 = FX_Div(v0, param0->unk_10 << FX32_SHIFT);

    param0->unk_00 = v0 + param0->unk_04;

    if ((param0->unk_0C + 1) <= param0->unk_10) {
        param0->unk_0C++;
        return 0;
    }

    param0->unk_0C = param0->unk_10;

    return 1;
}

void ov83_0223DA34(UnkStruct_ov83_0223DA94 *param0, fx32 param1, fx32 param2, fx32 param3, int param4)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v2 = param2 - param1;

    v0 = (param4 * param4) << FX32_SHIFT;
    v1 = FX_Mul(param3, param4 * FX32_ONE);
    v1 = v2 - v1;
    v1 = FX_Mul(v1, 2 * FX32_ONE);
    v3 = FX_Div(v1, v0);

    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param3;
    param0->unk_0C = v3;
    param0->unk_10 = 0;
    param0->unk_14 = param4;
}

BOOL ov83_0223DA94(UnkStruct_ov83_0223DA94 *param0)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v3 = FX_Mul(param0->unk_08, param0->unk_10 << FX32_SHIFT);
    v1 = (param0->unk_10 * param0->unk_10) << FX32_SHIFT;
    v2 = FX_Mul(param0->unk_0C, v1);
    v2 = FX_Div(v2, 2 * FX32_ONE);
    v0 = v3 + v2;

    param0->unk_00 = param0->unk_04 + v0;

    if ((param0->unk_10 + 1) <= param0->unk_14) {
        param0->unk_10++;
        return 0;
    }

    param0->unk_10 = param0->unk_14;
    return 1;
}

VecFx32 ov83_0223DAFC(fx32 param0, fx32 param1, fx32 param2)
{
    VecFx32 v0;

    v0.x = param0;
    v0.y = param1;
    v0.z = param2;
    return v0;
}

static const UnkStruct_ov83_02240460 Unk_ov83_02240460[4] = {
    { FX32_CONST(0), FX32_CONST(0), 0x40, 0x60, 0xFFFFFFFFFFFFFFE0, 0x58, 0x20, 0xA },
    { FX32_CONST(0), FX32_CONST(0), 0x118, 0x9C, 0xC0, 0x80, 0x20, 0x20 },
    { FX32_CONST(0), FX32_CONST(0), 0xFFFFFFFFFFFFFFE0, 0x80, 0x20, 0x60, 0x20, 0x20 },
    { FX32_CONST(0), FX32_CONST(0), 0x80, 0x74, 0xFFFFFFFFFFFFFFE0, 0x60, 0x20, 0x20 }
};

void ov83_0223DB18(UnkStruct_ov83_0223DB30 *param0, int param1)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223DB30));
    param0->unk_108 = param1;
}

void ov83_0223DB30(UnkStruct_ov83_0223DB30 *param0)
{
    GF_ASSERT(param0->unk_00 == 0);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223DB30));
}

void ov83_0223DB4C(UnkStruct_ov83_0223DB30 *param0, UnkStruct_ov83_0223DB4C *param1, UnkStruct_ov83_0223D784 *param2, UnkStruct_ov83_0223D95C *param3, u32 param4)
{
    int v0;
    int v1;
    NARC *v2;

    v2 = NARC_ctor(NARC_INDEX_GRAPHIC__NTAG_GRA, param4);
    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->unk_00[v0].unk_00 != 0) {
            ov83_0223D7A8(param2, &param0->unk_28[v1], v2, (70 + ((param1->unk_00[v0].unk_00) - 149)), 1, (6 + ((param1->unk_00[v0].unk_00) - 149)), 5, 4, 1000 + v0, param4);

            param0->unk_08[v1] = ov83_0223D9A8(param2, &param0->unk_28[v1], 0, 0, 0, 0, param4);
            CellActor_SetDrawFlag(param0->unk_08[v1], 0);

            param0->unk_18[v1] = ov83_0223D9A8(param2, &param3[0], 0, 0, 0, 0, param4);
            CellActor_SetDrawFlag(param0->unk_18[v1], 0);
            CellActor_SetAnim(param0->unk_18[v1], 1);
            v1++;
        }

        if (param0->unk_108 == v1) {
            break;
        }
    }

    NARC_dtor(v2);

    param0->unk_00 = 1;
}

void ov83_0223DC1C(UnkStruct_ov83_0223DB30 *param0, UnkStruct_ov83_0223D784 *param1)
{
    int v0;

    GF_ASSERT(param0->unk_00 == 1);

    for (v0 = 0; v0 < param0->unk_108; v0++) {
        CellActor_Delete(param0->unk_08[v0]);
        CellActor_Delete(param0->unk_18[v0]);
        ov83_0223D95C(param1, &param0->unk_28[v0]);
    }

    param0->unk_00 = 0;
}

void ov83_0223DC68(UnkStruct_ov83_0223DB30 *param0)
{
    int v0;
    VecFx32 v1;

    GF_ASSERT(param0->unk_04 == 0);

    for (v0 = 0; v0 < param0->unk_108; v0++) {
        ov83_0223DA34(&param0->unk_10C[v0], Unk_ov83_02240460[v0].unk_08 * FX32_ONE, Unk_ov83_02240460[v0].unk_0A * FX32_ONE, Unk_ov83_02240460[v0].unk_00, Unk_ov83_02240460[v0].unk_10);
        ov83_0223DA34(&param0->unk_16C[v0], Unk_ov83_02240460[v0].unk_0C * FX32_ONE, Unk_ov83_02240460[v0].unk_0E * FX32_ONE, Unk_ov83_02240460[v0].unk_04, Unk_ov83_02240460[v0].unk_10);

        v1 = ov83_0223DAFC(param0->unk_10C[v0].unk_00, param0->unk_16C[v0].unk_00, 0);
        CellActor_SetPosition(param0->unk_08[v0], &v1);

        param0->unk_1CC[v0] = 0;
        param0->unk_1DC[v0] = Unk_ov83_02240460[v0].unk_11;
    }

    param0->unk_1EC = 0;
    param0->unk_04 = 1;
}

u32 ov83_0223DD30(UnkStruct_ov83_0223DB30 *param0)
{
    int v0;
    BOOL v1;
    VecFx32 v2;
    u32 v3 = 0;

    if (param0->unk_04 == 0) {
        return 1;
    }

    if (param0->unk_1EC < param0->unk_108) {
        param0->unk_1DC[param0->unk_1EC]--;

        if (param0->unk_1DC[param0->unk_1EC] <= 0) {
            param0->unk_1CC[param0->unk_1EC] = 1;
            CellActor_SetDrawFlag(param0->unk_08[param0->unk_1EC], 1);

            v3 = 2 + param0->unk_1EC;
            param0->unk_1EC++;
        }
    }

    for (v0 = 0; v0 < param0->unk_108; v0++) {
        switch (param0->unk_1CC[v0]) {
        case 0:
            break;
        case 1:
            v1 = ov83_0223DA94(&param0->unk_10C[v0]);
            ov83_0223DA94(&param0->unk_16C[v0]);

            v2 = ov83_0223DAFC(param0->unk_10C[v0].unk_00, param0->unk_16C[v0].unk_00, 0);
            CellActor_SetPosition(param0->unk_08[v0], &v2);

            if (v1 == 1) {
                CellActor_SetPosition(param0->unk_18[v0], &v2);
                CellActor_SetDrawFlag(param0->unk_18[v0], 1);
                CellActor_SetAnimateFlag(param0->unk_18[v0], 1);
                CellActor_SetDrawFlag(param0->unk_08[v0], 0);
                Sound_PlayEffect(1724);
                param0->unk_1CC[v0]++;
            }
            break;
        case 2:
            if (CellActor_IsAnimated(param0->unk_18[v0]) == 0) {
                CellActor_SetDrawFlag(param0->unk_18[v0], 0);
                param0->unk_1CC[v0]++;
            }
            break;
        case 3:
            break;
        default:
            GF_ASSERT(0);
            break;
        }
    }

    if (param0->unk_1CC[param0->unk_108 - 1] == 3) {
        param0->unk_04 = 0;
        return 1;
    }

    return v3;
}

void ov83_0223DEA0(UnkStruct_ov83_0223E138 *param0, int param1, UnkStruct_ov83_0223DEA0 *param2, UnkStruct_ov83_0223FE50 *param3, int param4, u32 param5)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E138));
    param0->unk_18 = param2;
    param0->unk_14 = param1;
    param0->unk_00 = param5;
    param0->unk_1C = param3;
    param0->unk_10 = param4;
}

void ov83_0223DEC4(UnkStruct_ov83_0223E138 *param0)
{
    GF_ASSERT(param0->unk_30 == 0);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E138));
}

void ov83_0223DEE0(UnkStruct_ov83_0223E138 *param0, BGL *param1, u32 param2, NARC *param3)
{
    GF_ASSERT(param0->unk_30 == 0);

    param0->unk_04 = param1;

    ov83_0223E09C(param0, param2);
    ov83_0223E15C(param0, param2, param3);

    param0->unk_30 = 1;
}

void ov83_0223DF10(UnkStruct_ov83_0223E138 *param0)
{
    GF_ASSERT(param0->unk_30 == 1);

    ov83_0223E138(param0);
    ov83_0223E208(param0);

    param0->unk_30 = 0;
}

void ov83_0223DF30(UnkStruct_ov83_0223E138 *param0, int param1)
{
    StringTemplate_SetItemName(param0->unk_18->unk_04, 0, param1);
    StringTemplate_Format(param0->unk_18->unk_04, param0->unk_18->unk_08, param0->unk_18->unk_10);
    BGL_FillWindow(param0->unk_08, 15);
    ov83_0223E21C(param0->unk_08, param0->unk_18->unk_08, 0, 0);
    sub_0200E060(param0->unk_08, 0, 1, 0);
}

void ov83_0223DF70(UnkStruct_ov83_0223E138 *param0)
{
    sub_0201ACF4(param0->unk_08);
    sub_02019EBC(param0->unk_04, 4);
}

void ov83_0223DF84(UnkStruct_ov83_0223E138 *param0)
{
    BGL_FillWindow(param0->unk_08, 15);
    ov83_0223E21C(param0->unk_08, param0->unk_18->unk_0C, 0, 0);
    sub_0200E060(param0->unk_08, 0, 1, 0);
}

void ov83_0223DFAC(UnkStruct_ov83_0223E138 *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6, v7;

    if (param0->unk_14 == 1) {
        return;
    }

    for (v0 = 0; v0 < param0->unk_14; v0++) {
        v1 = v0 % 2;
        v2 = (v0 / 2);
        v3 = v1 * 12;
        v4 = v2 * 5;
        v1 *= 10;
        v2 *= 4;

        sub_020198E8(param0->unk_04, 5, 5 + v3, 13 + v4, 10, 4, param0->unk_2C->rawData, v1, v2, 10 * 2, 4 * 2);
        sub_02019E2C(param0->unk_04, 5, 5 + v3, 13 + v4, 10, 4, 2);

        v5 = param0->unk_1C->unk_130[v0];
        StringTemplate_SetPlayerName(param0->unk_18->unk_04, 0, param0->unk_1C->unk_134[v5]);
        StringTemplate_Format(param0->unk_18->unk_04, param0->unk_18->unk_08, param0->unk_18->unk_14);

        v6 = ov83_0223D6A8((v3 * 8) + 32, param0->unk_18->unk_08, 1);
        v7 = (v4 * 8) + 8;
        ov83_0223E21C(param0->unk_0C, param0->unk_18->unk_08, v6, v7);
    }

    sub_0201A9A4(param0->unk_0C);
    sub_0201C3C0(param0->unk_04, 5);
}

static void ov83_0223E09C(UnkStruct_ov83_0223E138 *param0, u32 param1)
{
    param0->unk_08 = sub_0201A778(param1, 1);
    param0->unk_0C = sub_0201A778(param1, 1);

    BGL_AddWindow(param0->unk_04, param0->unk_08, 4, 4, 19, 23, 4, 1, (18 + 12) + 1);
    BGL_AddWindow(param0->unk_04, param0->unk_0C, 4, 6, 13, 20, 8, 1, (18 + 12) + 1);
    BGL_FillWindow(param0->unk_08, 15);
    BGL_FillWindow(param0->unk_0C, 0);
    sub_0200DD0C(param0->unk_04, 4, 1, 0, param0->unk_10, param1);
    Font_LoadScreenIndicatorsPalette(4, 1 * 32, param1);
    sub_0200E060(param0->unk_08, 1, 1, 0);
}

static void ov83_0223E138(UnkStruct_ov83_0223E138 *param0)
{
    BGL_DeleteWindow(param0->unk_08);
    sub_0201A928(param0->unk_08, 1);
    BGL_DeleteWindow(param0->unk_0C);
    sub_0201A928(param0->unk_0C, 1);
}

static void ov83_0223E15C(UnkStruct_ov83_0223E138 *param0, u32 param1, NARC *param2)
{
    int v0;

    sub_02007130(param2, 1, 4, 2 * 32, 2 * 32, param1);
    sub_020070E8(param2, 0, param0->unk_04, 5, 0, 0, 0, param1);

    if (param0->unk_14 == 1) {
        v0 = 2;
    } else {
        v0 = 3;
    }

    param0->unk_20 = sub_020071D0(param2, v0, 0, &param0->unk_24, param1);

    sub_020198C0(param0->unk_04, 5, param0->unk_24->rawData, 0, 0, param0->unk_24->screenWidth / 8, param0->unk_24->screenHeight / 8);
    sub_02019E2C(param0->unk_04, 5, 0, 0, param0->unk_24->screenWidth / 8, param0->unk_24->screenHeight / 8, 2 + 1);

    param0->unk_28 = sub_020071D0(param2, 4, 0, &param0->unk_2C, param1);

    sub_0201C3C0(param0->unk_04, 5);
}

static void ov83_0223E208(UnkStruct_ov83_0223E138 *param0)
{
    Heap_FreeToHeap(param0->unk_20);
    Heap_FreeToHeap(param0->unk_28);
}

static void ov83_0223E21C(Window *param0, Strbuf *param1, int param2, int param3)
{
    Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, param1, param2, param3, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
}

void ov83_0223E244(UnkStruct_ov83_0223E244 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E244));
}

void ov83_0223E260(UnkStruct_ov83_0223E244 *param0)
{
    GF_ASSERT(param0->unk_00 == 0);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E244));
}

void ov83_0223E28C(UnkStruct_ov83_0223E244 *param0, UnkStruct_ov83_0223D784 *param1, UnkStruct_ov83_0223D95C *param2, u32 param3, u32 param4, u32 param5)
{
    param0->unk_08 = ov83_0223D9A8(param1, &param2[param4], (128 * FX32_ONE), (96 * FX32_ONE), 0, 0, param3);
    CellActor_SetDrawFlag(param0->unk_08, 0);
    CellActor_SetAnim(param0->unk_08, param5);
    param0->unk_00 = 1;
}

void ov83_0223E2C8(UnkStruct_ov83_0223E244 *param0)
{
    GF_ASSERT(param0->unk_00 == 1);
    CellActor_Delete(param0->unk_08);
    param0->unk_00 = 0;
}

void ov83_0223E2E4(UnkStruct_ov83_0223E244 *param0)
{
    CellActor_SetDrawFlag(param0->unk_08, 1);
    CellActor_SetAnimateFlag(param0->unk_08, 1);
}

void ov83_0223E2FC(UnkStruct_ov83_0223E244 *param0)
{
    VecFx32 v0;

    CellActor_SetDrawFlag(param0->unk_08, 1);
    CellActor_SetAnimateFlag(param0->unk_08, 1);

    v0.x = 168 * FX32_ONE;
    v0.y = 60 * FX32_ONE;

    CellActor_SetPosition(param0->unk_08, &v0);
}

BOOL ov83_0223E32C(UnkStruct_ov83_0223E244 *param0)
{
    if (CellActor_IsAnimated(param0->unk_08) == 0) {
        return 1;
    }

    return 0;
}

static const u8 Unk_ov83_02240414[3] = {
    0x4,
    0x3,
    0x2
};

static const fx32 Unk_ov83_02240448[3] = {
    FX32_CONST(0.98f),
    FX32_CONST(0.95f),
    FX32_CONST(0.92f)
};

static const fx32 Unk_ov83_02240454[3] = {
    FX32_CONST(1.0f),
    FX32_CONST(1.0f),
    FX32_CONST(1.0f)
};

void ov83_0223E340(UnkStruct_ov83_0223E340 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E340));
}

void ov83_0223E34C(UnkStruct_ov83_0223E340 *param0)
{
    GF_ASSERT(param0->unk_74 == 0);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E340));
}

void ov83_0223E368(UnkStruct_ov83_0223E340 *param0, UnkStruct_02015064 *param1, u32 param2, NARC *param3)
{
    int v0;
    static const u8 v1[] = {
        34,
        38,
        40,
        42,
        44,
        46,
    };
    static const u8 v2[] = {
        35,
        36,
        37,
        39,
        41,
        43,
        45,
        47,
    };
    static const u8 v3[] = {
        0,
        0,
        0,
        1,
        2,
        3,
        4,
        5,
    };
    static const u8 v4[] = {
        3,
        2,
        1,
        7,
        0,
        6,
        5,
        4,
    };
    static const u8 v5[] = {
        0,
        0,
        0,
        0,
        0,
        64,
        64,
        64,
    };
    static const u8 v6[] = {
        0,
        0,
        0,
        0,
        0,
        32,
        32,
        32,
    };

    GF_ASSERT(param0->unk_74 == 0);

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_00[v0] = ov83_0223D6BC(param1, v1[v0], param2, param3);
    }

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_18[v0] = ov83_0223D6EC(param1, v2[v0], param2, param3);
    }

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_38[v0] = ov83_0223D720(param1, param0->unk_00[v3[v0]], param0->unk_18[v0], v5[v0], v6[v0], v4[v0]);
        sub_02015268(param0->unk_38[v0], 128 - v5[v0], 96 - v6[v0]);
    }

    param0->unk_74 = 1;
}

void ov83_0223E438(UnkStruct_ov83_0223E340 *param0)
{
    int v0;

    GF_ASSERT(param0->unk_74 == 1);

    for (v0 = 0; v0 < 8; v0++) {
        sub_02015238(param0->unk_38[v0]);
    }

    for (v0 = 0; v0 < 6; v0++) {
        sub_02015164(param0->unk_00[v0]);
    }

    for (v0 = 0; v0 < 8; v0++) {
        sub_020151D4(param0->unk_18[v0]);
    }

    param0->unk_74 = 0;
}

void ov83_0223E484(UnkStruct_ov83_0223E340 *param0, u32 param1, BOOL param2)
{
    GF_ASSERT(param1 < 8);
    sub_02015240(param0->unk_38[param1], param2);
}

void ov83_0223E4A4(UnkStruct_ov83_0223E340 *param0, u16 param1)
{
    int v0;

    for (v0 = 5; v0 <= 7; v0++) {
        sub_020152BC(param0->unk_38[v0], param1);
    }
}

void ov83_0223E4C0(UnkStruct_ov83_0223E340 *param0, fx32 param1)
{
    int v0;

    for (v0 = 5; v0 <= 7; v0++) {
        sub_02015270(param0->unk_38[v0], param1, param1);
    }
}

void ov83_0223E4E0(UnkStruct_ov83_0223E340 *param0, u32 param1, u32 param2)
{
    GF_ASSERT(param1 < 8);
    sub_02015294(param0->unk_38[param1], param2);
}

void ov83_0223E500(UnkStruct_ov83_0223E340 *param0)
{
    param0->unk_6C = 1;
    param0->unk_70 = 0;

    ov83_0223D9DC(&param0->unk_58, FX32_ONE, Unk_ov83_02240448[0], Unk_ov83_02240414[0]);
}

void ov83_0223E51C(UnkStruct_ov83_0223E340 *param0, int param1)
{
    BOOL v0;
    int v1;

    switch (param0->unk_6C) {
    case 0:

        if (param0->unk_70 == 0) {
            ov83_0223D9DC(&param0->unk_58, Unk_ov83_02240448[param1], Unk_ov83_02240454[param1], Unk_ov83_02240414[param1]);
        } else {
            ov83_0223D9DC(&param0->unk_58, Unk_ov83_02240454[param1], Unk_ov83_02240448[param1], Unk_ov83_02240414[param1]);
        }

        param0->unk_6C++;
    case 1:
        v0 = ov83_0223D9EC(&param0->unk_58);

        for (v1 = 0; v1 <= 2; v1++) {
            sub_02015270(param0->unk_38[v1], param0->unk_58.unk_00, param0->unk_58.unk_00);
        }

        if (v0 == 1) {
            param0->unk_6C = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

void ov83_0223E5A4(UnkStruct_ov83_0223E5C0 *param0, const UnkStruct_ov83_0223FE50 *param1, u32 param2, UnkStruct_ov83_0223D4CC *param3)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E5C0));
    param0->unk_14 = param1;
    param0->unk_18 = param2;
    param0->unk_1C = param3;
}

void ov83_0223E5C0(UnkStruct_ov83_0223E5C0 *param0)
{
    GF_ASSERT(param0->unk_00 == 0);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E5C0));
}

void ov83_0223E5DC(UnkStruct_ov83_0223E5C0 *param0, UnkStruct_ov83_0223D784 *param1, UnkStruct_ov83_0223D95C *param2, u32 param3)
{
    int v0;
    VecFx32 v1;

    v1.x = 128 * FX32_ONE;
    v1.y = 96 * FX32_ONE;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_04[v0] = ov83_0223D9A8(param1, &param2[1], 128, 96, 0, 2, param3);
        CellActor_SetDrawFlag(param0->unk_04[v0], 0);
        CellActor_SetAnim(param0->unk_04[v0], 4 + v0);
        CellActor_SetPosition(param0->unk_04[v0], &v1);
    }

    param0->unk_00 = 1;
}

void ov83_0223E63C(UnkStruct_ov83_0223E5C0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        CellActor_Delete(param0->unk_04[v0]);
    }

    param0->unk_00 = 0;
}

void ov83_0223E658(UnkStruct_ov83_0223E5C0 *param0)
{
    int v0;
    int v1;
    VecFx32 v2;
    const UnkStruct_ov83_0223FCE8 *v3 = &param0->unk_14->unk_90[0].unk_08;

    for (v0 = 0; v0 < param0->unk_18; v0++) {
        v1 = param0->unk_14->unk_130[v0];
        v2.x = v3->unk_00[v1] * FX32_ONE;
        v2.y = v3->unk_04[v1] * FX32_ONE;
        CellActor_SetPosition(param0->unk_04[v0], &v2);
    }
}

void ov83_0223E69C(UnkStruct_ov83_0223E5C0 *param0, BOOL param1)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param0->unk_18; v0++) {
        v1 = param0->unk_14->unk_130[v0];

        if (ov83_0223D570(param0->unk_1C) != v1) {
            CellActor_SetDrawFlag(param0->unk_04[v0], param1);
        }
    }
}

void ov83_0223E6D4(UnkStruct_ov83_0223E824 *param0, int param1, UnkStruct_ov83_0223DEA0 *param2, UnkStruct_ov83_0223FE50 *param3, int param4, u32 param5)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223E824));
    param0->unk_1C = param2;
    param0->unk_20 = param1;
    param0->unk_00 = param5;
    param0->unk_24 = param3;
    param0->unk_18 = param4;
}

void ov83_0223E6F8(UnkStruct_ov83_0223E824 *param0)
{
    GF_ASSERT(param0->unk_28 == 0);

    ov83_0223E994(param0);
    ov83_0223E9D0(param0);

    memset(param0, 0, sizeof(UnkStruct_ov83_0223E824));
}

void ov83_0223E720(UnkStruct_ov83_0223E824 *param0, BGL *param1, u32 param2, NARC *param3)
{
    GF_ASSERT(param0->unk_28 == 0);

    param0->unk_04 = param1;

    ov83_0223E77C(param0, param2);
    ov83_0223E844(param0, param2, param3);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

    param0->unk_28 = 1;
}

void ov83_0223E760(UnkStruct_ov83_0223E824 *param0)
{
    GF_ASSERT(param0->unk_28 == 1);

    ov83_0223E824(param0);

    param0->unk_28 = 0;
}

static void ov83_0223E77C(UnkStruct_ov83_0223E824 *param0, u32 param1)
{
    int v0;
    static u16 v1[4][6] = {
        { 8, 11, 16, 4, 2, 40 },
        { 2, 1, 28, 15, 3, 40 },
        { 2, 18, 28, 5, 3, 460 },
        { 2, 2, 27, 5, 2, 40 }
    };

    sub_0200DD0C(param0->unk_04, 2, 1, 0, param0->unk_18, param1);
    Font_LoadScreenIndicatorsPalette(0, 2 * 32, param1);
    sub_0200DAA4(param0->unk_04, 2, (1 + (18 + 12)), 1, 0, param1);
    Font_LoadTextPalette(0, 3 * 32, param1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_08[v0] = sub_0201A778(param1, 1);
        BGL_AddWindow(param0->unk_04, param0->unk_08[v0], 2, v1[v0][0], v1[v0][1], v1[v0][2], v1[v0][3], v1[v0][4], v1[v0][5]);
        BGL_FillWindow(param0->unk_08[v0], 0);
    }
}

static void ov83_0223E824(UnkStruct_ov83_0223E824 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        BGL_DeleteWindow(param0->unk_08[v0]);
        sub_0201A928(param0->unk_08[v0], 1);
    }
}

static void ov83_0223E844(UnkStruct_ov83_0223E824 *param0, u32 param1, NARC *param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    sub_02007130(param2, 6, 0, 4 * 32, 1 * 32, param1);
    sub_020070E8(param2, 5, param0->unk_04, 1, 0, 0, 0, param1);

    v0 = sub_020071D0(param2, 7, 0, &v1, param1);

    sub_020198C0(param0->unk_04, 1, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    sub_02019E2C(param0->unk_04, 1, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8, 4);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_04, 1);
}

static void ov83_0223E8DC(SysTask *param0, void *param1)
{
    UnkStruct_ov83_0223E824 *v0 = param1;

    v0->unk_30++;

    if (v0->unk_30 >= 30) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        SysTask_Done(param0);
        v0->unk_2C = NULL;
    }
}

void ov83_0223E908(UnkStruct_ov83_0223E824 *param0, u32 param1)
{
    GF_ASSERT(param0->unk_2C == NULL);

    param0->unk_2C = SysTask_Start(ov83_0223E8DC, param0, 1024);
    param0->unk_30 = 0;

    BGL_FillWindow(param0->unk_08[0], 0);

    {
        u32 v0 = Font_CalcCenterAlignment(FONT_MESSAGE, param0->unk_1C->unk_38[param1], 0, 128);
        Text_AddPrinterWithParamsAndColor(param0->unk_08[0], FONT_MESSAGE, param0->unk_1C->unk_38[param1], v0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    }

    sub_0201A954(param0->unk_08[0]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
}

BOOL ov83_0223E984(const UnkStruct_ov83_0223E824 *param0)
{
    if (param0->unk_2C == NULL) {
        return 1;
    }

    return 0;
}

void ov83_0223E994(UnkStruct_ov83_0223E824 *param0)
{
    if (param0->unk_2C == NULL) {
        return;
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    SysTask_Done(param0->unk_2C);

    param0->unk_2C = NULL;
}

void ov83_0223E9BC(UnkStruct_ov83_0223E824 *param0)
{
    ov83_0223E9D0(param0);
    param0->unk_34 = sub_0200E7FC(param0->unk_08[3], 1);
}

void ov83_0223E9D0(UnkStruct_ov83_0223E824 *param0)
{
    if (param0->unk_34 != NULL) {
        DeleteWaitDial(param0->unk_34);
        param0->unk_34 = NULL;
    }
}

static void ov83_0223E9E4(UnkStruct_ov83_0223E824 *param0)
{
    sub_02019EBC(param0->unk_04, 2);
    BGL_FillWindow(param0->unk_08[1], 15);

    {
        u32 v0 = Font_CalcCenterAlignment(FONT_SYSTEM, param0->unk_1C->unk_34, 0, 224);
        Text_AddPrinterWithParamsAndColor(param0->unk_08[1], FONT_SYSTEM, param0->unk_1C->unk_34, v0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    }

    Window_Show(param0->unk_08[1], 0, (1 + (18 + 12)), 1);
    BGL_FillWindow(param0->unk_08[2], 15);
    Text_AddPrinterWithParamsAndColor(param0->unk_08[2], FONT_SYSTEM, param0->unk_1C->unk_4C[6], 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Window_Show(param0->unk_08[2], 0, (1 + (18 + 12)), 1);
    sub_0201A9A4(param0->unk_08[1]);
    sub_0201A9A4(param0->unk_08[2]);
}

static void ov83_0223EA6C(UnkStruct_ov83_0223E824 *param0)
{
    Text_AddPrinterWithParamsAndColor(param0->unk_08[1], FONT_SYSTEM, param0->unk_1C->unk_4C[0], 0, 24, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    StringTemplate_SetNumber(param0->unk_1C->unk_04, 0, param0->unk_24->unk_58.unk_0E, 2, 2, 1);
    StringTemplate_SetNumber(param0->unk_1C->unk_04, 1, param0->unk_24->unk_58.unk_0F, 2, 2, 1);
    StringTemplate_SetNumber(param0->unk_1C->unk_04, 2, param0->unk_24->unk_58.unk_10, 2, 2, 1);
    StringTemplate_Format(param0->unk_1C->unk_04, param0->unk_1C->unk_08, param0->unk_1C->unk_4C[1]);
    Text_AddPrinterWithParamsAndColor(param0->unk_08[1], FONT_SYSTEM, param0->unk_1C->unk_08, 160, 24, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Text_AddPrinterWithParamsAndColor(param0->unk_08[1], FONT_SYSTEM, param0->unk_1C->unk_4C[2], 0, 48, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    StringTemplate_SetNumber(param0->unk_1C->unk_04, 0, param0->unk_24->unk_58.unk_00, 4, 0, 1);

    {
        int v0 = (param0->unk_24->unk_58.unk_00 == 1) ? 3 : 5;
        StringTemplate_Format(param0->unk_1C->unk_04, param0->unk_1C->unk_08, param0->unk_1C->unk_4C[v0]);
    }

    Text_AddPrinterWithParamsAndColor(param0->unk_08[1], FONT_SYSTEM, param0->unk_1C->unk_08, 160, 48, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Text_AddPrinterWithParamsAndColor(param0->unk_08[1], FONT_SYSTEM, param0->unk_1C->unk_4C[4], 0, 68, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    StringTemplate_SetNumber(param0->unk_1C->unk_04, 0, param0->unk_24->unk_58.unk_04, 4, 0, 1);

    {
        int v1 = (param0->unk_24->unk_58.unk_04 == 1) ? 3 : 5;
        StringTemplate_Format(param0->unk_1C->unk_04, param0->unk_1C->unk_08, param0->unk_1C->unk_4C[v1]);
    }

    Text_AddPrinterWithParamsAndColor(param0->unk_08[1], FONT_SYSTEM, param0->unk_1C->unk_08, 160, 68, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    sub_0201A9A4(param0->unk_08[1]);
}

static void ov83_0223EBD8(UnkStruct_ov83_0223E824 *param0)
{
    StringTemplate_SetPoffinName(param0->unk_1C->unk_04, 3, param0->unk_24->unk_58.unk_0C);
    StringTemplate_SetNumber(param0->unk_1C->unk_04, 1, param0->unk_24->unk_58.unk_0D, 2, 2, 1);
    StringTemplate_SetNumber(param0->unk_1C->unk_04, 2, param0->unk_20, 2, 2, 1);
    StringTemplate_Format(param0->unk_1C->unk_04, param0->unk_1C->unk_08, param0->unk_1C->unk_4C[7]);
    Text_AddPrinterWithParamsAndColor(param0->unk_08[2], FONT_SYSTEM, param0->unk_1C->unk_08, 16, 24, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    sub_0201A9A4(param0->unk_08[2]);
}

void ov83_0223EC4C(UnkStruct_ov83_0223E824 *param0, u32 param1)
{
    switch (param1) {
    case 0:
        ov83_0223E9E4(param0);
        break;
    case 1:
        ov83_0223EA6C(param0);
        break;
    case 2:
        ov83_0223EBD8(param0);
        break;
    }
}

void ov83_0223EC70(UnkStruct_ov83_0223E824 *param0)
{
    sub_02019EBC(param0->unk_04, 2);
    sub_0201ACF4(param0->unk_08[1]);
    sub_0201ACF4(param0->unk_08[2]);
}

void ov83_0223EC8C(UnkStruct_ov83_0223E824 *param0, u32 param1)
{
    Strbuf *v0;
    int v1;

    ov83_0223E9D0(param0);
    BGL_FillWindow(param0->unk_08[3], 15);

    switch (param1) {
    case 0:
        StringTemplate_SetPlayerName(param0->unk_1C->unk_04, 0, param0->unk_24->unk_134[param0->unk_24->unk_144]);
        StringTemplate_Format(param0->unk_1C->unk_04, param0->unk_1C->unk_08, param0->unk_1C->unk_18);
        v0 = param0->unk_1C->unk_08;
        break;
    case 1:
        v0 = param0->unk_1C->unk_1C;
        break;
    case 2:
        v0 = param0->unk_1C->unk_28;
        break;
    case 3:
        v0 = param0->unk_1C->unk_24;
        break;
    case 4:
        v0 = param0->unk_1C->unk_20;
        break;
    case 5:
        v0 = param0->unk_1C->unk_2C;
        break;
    case 6:
        v0 = param0->unk_1C->unk_0C;
        break;
    }

    Text_AddPrinterWithParamsAndColor(param0->unk_08[3], FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    sub_0200E060(param0->unk_08[3], 0, 1, 0);
    sub_0201A9A4(param0->unk_08[3]);
}

static const UnkStruct_ov83_022404B0 Unk_ov83_022404B0[8] = {
    { FX32_CONST(0.50f), FX32_CONST(1.50f), FX32_CONST(0.0f), FX32_CONST(0.0f), 0x20, 0x40, 0x0, 0x0, 0x20, 0x2, 0x1, 0x0, 0x0, 0x0, 0x5 },
    { FX32_CONST(0.50f), FX32_CONST(1.0f), FX32_CONST(0.0f), FX32_CONST(0.0f), 0x0, 0x8, 0x0, 0x18, 0x10, 0x2, 0x2, 0x1, 0x1, 0x1, 0xA },
    { FX32_CONST(0.50f), FX32_CONST(1.50f), FX32_CONST(0.0f), FX32_CONST(2.0f), 0x20, 0x40, 0x20, 0x40, 0x10, 0x2, 0x0, 0x0, 0x0, 0x0, 0x5 },
    { FX32_CONST(0.50f), FX32_CONST(1.50f), FX32_CONST(0.0f), FX32_CONST(0.0f), 0x20, 0x40, 0x0, 0x0, 0x20, 0x3, 0x1, 0x0, 0x0, 0x0, 0x5 },
    { FX32_CONST(0.50f), FX32_CONST(1.0f), FX32_CONST(0.0f), FX32_CONST(0.0f), 0x0, 0x8, 0x0, 0x18, 0x10, 0x3, 0x2, 0x1, 0x1, 0x1, 0xA },
    { FX32_CONST(0.50f), FX32_CONST(1.50f), FX32_CONST(0.0f), FX32_CONST(4.0f), 0x20, 0x40, 0x20, 0x40, 0x10, 0x3, 0x0, 0x0, 0x0, 0x0, 0x5 },
    { FX32_CONST(0.50f), FX32_CONST(1.50f), FX32_CONST(0.0f), FX32_CONST(0.0f), 0x20, 0x40, 0x0, 0x0, 0x20, 0x4, 0x0, 0x0, 0x0, 0x0, 0x5 },
    { FX32_CONST(0.50f), FX32_CONST(1.50f), FX32_CONST(0.0f), FX32_CONST(0.0f), 0x20, 0x40, 0x0, 0x0, 0x20, 0x4, 0x1, 0x0, 0x0, 0x0, 0x5 }
};

void ov83_0223ED3C(UnkStruct_ov83_0223ED3C *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223ED3C));
}

void ov83_0223ED4C(UnkStruct_ov83_0223ED3C *param0)
{
    GF_ASSERT(param0->unk_00 == 0);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223ED3C));
}

void ov83_0223ED6C(UnkStruct_ov83_0223ED3C *param0, UnkStruct_ov83_0223D784 *param1, UnkStruct_ov83_0223D95C *param2, u32 param3)
{
    param0->unk_04 = param1;
    param0->unk_08 = param2;
    param0->unk_0C = param3;
    param0->unk_00 = 1;
}

void ov83_0223ED78(UnkStruct_ov83_0223ED3C *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_10[v0].unk_78 != NULL) {
            ov83_0223F054(&param0->unk_10[v0]);
        }
    }

    param0->unk_00 = 0;
}

void ov83_0223EDA4(UnkStruct_ov83_0223ED3C *param0, UnkStruct_ov83_0223FE50 *param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_10[v0].unk_78) {
            ov83_0223F074(&param0->unk_10[v0]);

            if (param0->unk_10[v0].unk_10) {
                ov83_0223F0F4(&param0->unk_10[v0], param1);
            }
        }
    }
}

void ov83_0223EDDC(UnkStruct_ov83_0223ED3C *param0, int param1, int param2)
{
    UnkStruct_ov83_0223F054 *v0;
    u16 v1;
    fx32 v2, v3, v4, v5, v6, v7, v8;
    UnkStruct_ov83_022404B0 v9 = Unk_ov83_022404B0[param1 * 3 + param2];
    int v10, v11;

    if ((param1 * 3 + param2) >= ((3 * 3) - 1)) {
        return;
    }

    v0 = ov83_0223EFF4(param0);

    if (v0 == NULL) {
        v0 = ov83_0223F018(param0);
        GF_ASSERT(v0);
        ov83_0223F054(v0);
    }

    v1 = MTRNG_Next();
    v10 = v9.unk_10 + (MTRNG_Next() % v9.unk_11);
    v11 = v9.unk_12 + (MTRNG_Next() % v9.unk_13);

    v11 += v10;

    v2 = FX_Mul(FX_SinIdx(v1), v10 * FX32_ONE);
    v4 = FX_Mul(FX_CosIdx(v1), v10 * FX32_ONE);
    v3 = FX_Mul(FX_SinIdx(v1), v11 * FX32_ONE);
    v5 = FX_Mul(FX_CosIdx(v1), v11 * FX32_ONE);
    v7 = FX_Mul(FX_SinIdx(v1), v9.unk_0C);
    v8 = FX_Mul(FX_CosIdx(v1), v9.unk_0C);

    v2 += 128 * FX32_ONE;
    v3 += 128 * FX32_ONE;
    v4 += 96 * FX32_ONE;
    v5 += 96 * FX32_ONE;

    v6 = v9.unk_00 + (MTRNG_Next() % v9.unk_04);
    ov83_0223F1C0(v0, v9.unk_17, v2, v3, v7, v4, v5, v8, FX32_CONST(0.10f), v6, v9.unk_08, v9.unk_18, v9.unk_14, &param0->unk_08[v9.unk_15], v9.unk_16, param0->unk_04, param0->unk_0C, v9.unk_19, v9.unk_1A);
    v0->unk_7C = param0->unk_410;

    param0->unk_410++;
}

void ov83_0223EFCC(UnkStruct_ov83_0223ED3C *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_10[v0].unk_78 != NULL) {
            ov83_0223F268(&param0->unk_10[v0]);
        }
    }
}

static UnkStruct_ov83_0223F054 *ov83_0223EFF4(UnkStruct_ov83_0223ED3C *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_10[v0].unk_78 == NULL) {
            return &param0->unk_10[v0];
        }
    }

    return NULL;
}

static UnkStruct_ov83_0223F054 *ov83_0223F018(UnkStruct_ov83_0223ED3C *param0)
{
    int v0;
    UnkStruct_ov83_0223F054 *v1 = NULL;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_10[v0].unk_78 != NULL) {
            if (v1 == NULL) {
                v1 = &param0->unk_10[v0];
            } else {
                if (v1->unk_7C > param0->unk_10[v0].unk_7C) {
                    v1 = &param0->unk_10[v0];
                }
            }
        }
    }

    return v1;
}

static void ov83_0223F054(UnkStruct_ov83_0223F054 *param0)
{
    GF_ASSERT(param0->unk_78);

    CellActor_Delete(param0->unk_78);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223F054));
}

static void ov83_0223F074(UnkStruct_ov83_0223F054 *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04 = ov83_0223DA94(&param0->unk_30);
        ov83_0223DA94(&param0->unk_48);
        ov83_0223DA94(&param0->unk_60);

        param0->unk_14.x = param0->unk_30.unk_00;
        param0->unk_14.y = param0->unk_48.unk_00;

        CellActor_SetPosition(param0->unk_78, &param0->unk_14);

        if (param0->unk_0C) {
            param0->unk_20.x = param0->unk_60.unk_00;
            param0->unk_20.y = param0->unk_60.unk_00;
            param0->unk_20.z = param0->unk_60.unk_00;

            CellActor_SetAffineScale(param0->unk_78, &param0->unk_20);
        }
    }

    if (param0->unk_08 == 0) {
        if (CellActor_IsAnimated(param0->unk_78) == 0) {
            param0->unk_08 = 1;
        }
    }

    if (param0->unk_00 == 0) {
        if ((param0->unk_04 == 1) && (param0->unk_08 == 1)) {
            ov83_0223F054(param0);
        }
    }
}

static void ov83_0223F0F4(UnkStruct_ov83_0223F054 *param0, UnkStruct_ov83_0223FE50 *param1)
{
    VecFx32 v0;
    u32 v1;
    u16 v2;
    u16 v3;
    fx32 v4, v5;

    if ((param0->unk_04 == 1) && (param0->unk_08 == 1)) {
        if (param1->unk_90[0].unk_08.unk_0C == 0) {
            param0->unk_2C += param1->unk_90[0].unk_08.unk_0A;
        } else {
            param0->unk_2C -= param1->unk_90[0].unk_08.unk_0A;
        }

        v4 = param0->unk_14.x - (128 * FX32_ONE);
        v5 = param0->unk_14.y - (96 * FX32_ONE);
        v1 = sub_0201E3BC(v4 >> FX32_SHIFT, v5 >> FX32_SHIFT, 0, 0);
        v2 = FX_Atan2Idx(v5, v4);
        v3 = v2 + param0->unk_2C;

        v0.x = FX_Mul(FX_CosIdx(v3), v1 * FX32_ONE);
        v0.y = FX_Mul(FX_SinIdx(v3), v1 * FX32_ONE);
        v0.x += (128 * FX32_ONE);
        v0.y += (96 * FX32_ONE);

        CellActor_SetPosition(param0->unk_78, &v0);
    }
}

static void ov83_0223F1C0(UnkStruct_ov83_0223F054 *param0, int param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, fx32 param8, fx32 param9, fx32 param10, BOOL param11, int param12, UnkStruct_ov83_0223D95C *param13, int param14, UnkStruct_ov83_0223D784 *param15, u32 param16, BOOL param17, u8 param18)
{
    param0->unk_00 = param1;

    ov83_0223DA34(&param0->unk_30, param2, param3, param4, param12);
    ov83_0223DA34(&param0->unk_48, param5, param6, param7, param12);
    ov83_0223DA34(&param0->unk_60, param8, param9, param10, param12);

    param0->unk_14.x = param2;
    param0->unk_14.y = param5;
    param0->unk_20.x = param8;
    param0->unk_20.y = param8;
    param0->unk_20.z = param8;
    param0->unk_0C = param11;
    param0->unk_10 = param17;
    param0->unk_78 = ov83_0223D9A8(param15, param13, param2, param5, 0, param18, param16);

    GF_ASSERT(param0->unk_78);

    if (param0->unk_0C) {
        CellActor_SetAffineScaleEx(param0->unk_78, &param0->unk_20, 2);
    }

    CellActor_SetAnim(param0->unk_78, param14);
    CellActor_SetAnimateFlag(param0->unk_78, 1);
    CellActor_SetExplicitPriority(param0->unk_78, 2);
}

static void ov83_0223F268(UnkStruct_ov83_0223F054 *param0)
{
    if (param0->unk_00 != 1) {
        return;
    }

    ov83_0223DA34(&param0->unk_60, param0->unk_60.unk_00, FX32_CONST(0.050f), 0, 8);

    param0->unk_00 = 0;
    param0->unk_0C = 1;

    CellActor_SetAffineOverwriteMode(param0->unk_78, 2);
}

void ov83_0223F29C(UnkStruct_ov83_0223F29C *param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223F29C));
}

void ov83_0223F2A8(UnkStruct_ov83_0223F29C *param0)
{
    GF_ASSERT(param0->unk_7C == 0);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223F29C));
}

void ov83_0223F2C4(UnkStruct_ov83_0223F29C *param0, UnkStruct_ov83_0223D784 *param1, u32 param2, NARC *param3)
{
    int v0;

    GF_ASSERT(param0->unk_7C == 0);

    param0->unk_00 = param1;

    ov83_0223D7A8(param1, &param0->unk_04, param3, 33, 2, 32, 31, 30, 7000, param2);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_3C[v0].unk_00 = ov83_0223D9A8(param1, &param0->unk_04, (128 * FX32_ONE), (96 * FX32_ONE), 0, 0, param2);

        if (v0 >= 2) {
            CellActor_SetAnim(param0->unk_3C[v0].unk_00, 1);
        }

        CellActor_SetDrawFlag(param0->unk_3C[v0].unk_00, 0);
    }

    param0->unk_7C = 1;
}

void ov83_0223F348(UnkStruct_ov83_0223F29C *param0)
{
    int v0;

    GF_ASSERT(param0->unk_7C == 1);

    for (v0 = 0; v0 < 4; v0++) {
        CellActor_Delete(param0->unk_3C[v0].unk_00);
    }

    ov83_0223D95C(param0->unk_00, &param0->unk_04);

    param0->unk_7C = 0;
}

void ov83_0223F378(UnkStruct_ov83_0223F29C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if ((v0 == 2) || (v0 == 0)) {
            ov83_0223F420(&param0->unk_3C[v0]);
        } else {
            ov83_0223F458(&param0->unk_3C[v0]);
        }
    }
}

void ov83_0223F3A0(UnkStruct_ov83_0223F29C *param0, int param1)
{
    GF_ASSERT(param1 < 4);

    if ((param1 == 2) || (param1 == 0)) {
        ov83_0223F410(&param0->unk_3C[param1]);
    } else {
        ov83_0223F44C(&param0->unk_3C[param1]);
    }
}

void ov83_0223F3D0(UnkStruct_ov83_0223F29C *param0, int param1)
{
    GF_ASSERT(param1 < 4);

    param0->unk_3C[param1].unk_0C = 0;

    CellActor_SetDrawFlag(param0->unk_3C[param1].unk_00, 0);
}

BOOL ov83_0223F3F0(const UnkStruct_ov83_0223F29C *param0, int param1)
{
    GF_ASSERT(param1 < 4);

    if (param0->unk_3C[param1].unk_0C == 0) {
        return 1;
    }

    return 0;
}

static void ov83_0223F410(UnkStruct_ov83_0223F410 *param0)
{
    param0->unk_04 = 0;
    param0->unk_08 = 3;
    param0->unk_0C = 1;
}

static void ov83_0223F420(UnkStruct_ov83_0223F410 *param0)
{
    if (param0->unk_0C == 0) {
        return;
    }

    ov83_0223F458(param0);

    if (param0->unk_04 == 0) {
        param0->unk_08--;

        if (param0->unk_08 <= 0) {
            param0->unk_0C = 0;

            CellActor_SetDrawFlag(param0->unk_00, 0);
        }
    }
}

static void ov83_0223F44C(UnkStruct_ov83_0223F410 *param0)
{
    param0->unk_04 = 0;
    param0->unk_0C = 1;
}

static void ov83_0223F458(UnkStruct_ov83_0223F410 *param0)
{
    if (param0->unk_0C == 0) {
        return;
    }

    if (param0->unk_04 == 0) {
        CellActor_SetDrawFlag(param0->unk_00, 1);
    } else if (param0->unk_04 == 8) {
        CellActor_SetDrawFlag(param0->unk_00, 0);
    } else if (param0->unk_04 == (8 * 2)) {
        param0->unk_04 = 0;
        return;
    }

    param0->unk_04++;
}

void ov83_0223F494(UnkStruct_ov83_0223F4AC *param0, int param1)
{
    memset(param0, 0, sizeof(UnkStruct_ov83_0223F4AC));
    param0->unk_04 = param1;
}

void ov83_0223F4AC(UnkStruct_ov83_0223F4AC *param0)
{
    GF_ASSERT(param0->unk_00 == 0);
    memset(param0, 0, sizeof(UnkStruct_ov83_0223F4AC));
}

void ov83_0223F4CC(UnkStruct_ov83_0223F4AC *param0, UnkStruct_ov83_0223D784 *param1, UnkStruct_ov83_0223D95C *param2, u32 param3)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        param0->unk_0C[v0].unk_44 = ov83_0223D9A8(param1, &param2[1], 0, 0, 0, 5, param3);
        CellActor_SetDrawFlag(param0->unk_0C[v0].unk_44, 0);
    }

    param0->unk_00 = 1;
}

void ov83_0223F510(UnkStruct_ov83_0223F4AC *param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        CellActor_Delete(param0->unk_0C[v0].unk_44);
    }

    param0->unk_00 = 0;
}

void ov83_0223F52C(UnkStruct_ov83_0223F4AC *param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        ov83_0223F670(&param0->unk_0C[v0]);
    }
}

void ov83_0223F544(UnkStruct_ov83_0223F4AC *param0, int param1, int param2)
{
    UnkStruct_ov83_0223F670 *v0;
    u32 v1;
    fx32 v2, v3;
    fx32 v4, v5;
    int v6;

    v1 = FX_Atan2Idx(param1 - 128, param2 - 96);
    v2 = FX_Mul(FX_CosIdx(v1), (FX32_CONST(16)));
    v3 = FX_Mul(FX_SinIdx(v1), (FX32_CONST(16)));
    v4 = FX_Mul(FX_CosIdx(v1), (FX32_CONST(1)));
    v5 = FX_Mul(FX_SinIdx(v1), (FX32_CONST(1)));
    v0 = ov83_0223F650(param0);

    if (v0) {
        ov83_0223F6CC(v0, param0->unk_08, param1 * FX32_ONE, param2 * FX32_ONE, (128 * FX32_ONE) + v2, (96 * FX32_ONE) + v3, v4, v5);
    }

    v0 = ov83_0223F650(param0);

    if (v0) {
        ov83_0223F6CC(v0, param0->unk_08, param1 * FX32_ONE, param2 * FX32_ONE, (128 * FX32_ONE) - v2, (96 * FX32_ONE) - v3, -v4, -v5);
    }

    param0->unk_08 = (param0->unk_08 + 1) % param0->unk_04;
}

static UnkStruct_ov83_0223F670 *ov83_0223F650(UnkStruct_ov83_0223F4AC *param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        if (param0->unk_0C[v0].unk_00 == 0) {
            return &param0->unk_0C[v0];
        }
    }

    return NULL;
}

static void ov83_0223F670(UnkStruct_ov83_0223F670 *param0)
{
    BOOL v0;

    if (param0->unk_00 == 0) {
        return;
    }

    if (param0->unk_04 == 0) {
        param0->unk_04 = ov83_0223DA94(&param0->unk_14);
        ov83_0223DA94(&param0->unk_2C);
        param0->unk_08.x = param0->unk_14.unk_00;
        param0->unk_08.y = param0->unk_2C.unk_00;
        CellActor_SetPosition(param0->unk_44, &param0->unk_08);
    }

    if (param0->unk_04 == 1) {
        ov83_0223F6B4(param0);
    }
}

static void ov83_0223F6B4(UnkStruct_ov83_0223F670 *param0)
{
    if (param0->unk_00 == 0) {
        return;
    }

    CellActor_SetDrawFlag(param0->unk_44, 0);
    param0->unk_00 = 0;
}

static void ov83_0223F6CC(UnkStruct_ov83_0223F670 *param0, int param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7)
{
    ov83_0223DA34(&param0->unk_14, param2, param4, param6, 16);
    ov83_0223DA34(&param0->unk_2C, param3, param5, param7, 16);

    param0->unk_08.x = param2;
    param0->unk_08.y = param3;

    CellActor_SetDrawFlag(param0->unk_44, 1);
    CellActor_SetAnim(param0->unk_44, param1);
    CellActor_RestartAnim(param0->unk_44);
    CellActor_SetAnimateFlag(param0->unk_44, 1);
    CellActor_SetExplicitPriority(param0->unk_44, 2);

    param0->unk_00 = 1;
    param0->unk_04 = 0;
}

void ov83_0223F730(UnkStruct_ov83_0223F770 *param0, int param1, int param2, int param3, int param4)
{
    param0->unk_00 = sub_02098FFC(param4, 1, 1, (NNS_G2D_VRAM_TYPE_2DMAIN), 2);
    param0->unk_04 = sub_0209916C(param0->unk_00, param3, param1, param2, 0, 0, 0, 0);
}

void ov83_0223F770(UnkStruct_ov83_0223F770 *param0)
{
    sub_02099370(param0->unk_00, param0->unk_04);
    sub_0209903C(param0->unk_00);
}

void ov83_0223F784(UnkStruct_ov83_0223F770 *param0)
{
    sub_02099160(param0->unk_00);
}

void ov83_0223F790(UnkStruct_ov83_0223F7A4 *param0, int param1, BGL *param2)
{
    param0->unk_00 = sub_02015920(param1);
    param0->unk_04 = param2;
}

void ov83_0223F7A4(UnkStruct_ov83_0223F7A4 *param0)
{
    sub_02015938(param0->unk_00);
}

void ov83_0223F7B0(UnkStruct_ov83_0223F7A4 *param0)
{
    UnkStruct_02015958 v0;

    v0.unk_00 = param0->unk_04;
    v0.unk_04 = 2;
    v0.unk_08 = (((1 + (18 + 12)) + 9) + (27 * 5));
    v0.unk_0C = 5;
    v0.unk_10 = 24;
    v0.unk_11 = 8;

    sub_02015958(param0->unk_00, &v0);
}

u32 ov83_0223F7DC(UnkStruct_ov83_0223F7A4 *param0)
{
    u32 v0;

    v0 = sub_020159FC(param0->unk_00);

    if (v0 != 0) {
        sub_02015A54(param0->unk_00);
    }

    return v0;
}
