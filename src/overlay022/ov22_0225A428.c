#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "message.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "strbuf.h"

#include "struct_defs/struct_020279FC.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02095C60.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_02256BAC.h"
#include "overlay022/struct_ov22_022597BC.h"
#include "overlay022/struct_ov22_022599A0.h"
#include "overlay022/struct_ov22_0225A428.h"
#include "overlay022/struct_ov22_0225A914.h"
#include "overlay022/struct_ov22_0225AB54.h"
#include "overlay022/struct_ov22_0225AD68.h"
#include "overlay022/struct_ov22_0225AE9C.h"
#include "overlay083/struct_ov83_0223D9A8.h"

#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "message.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "unk_020279FC.h"
#include "unk_02095AF0.h"
#include "overlay022/ov22_022597BC.h"
#include "overlay022/ov22_0225A428.h"

static void ov22_0225A6E0(UnkStruct_ov22_022597BC * param0, BGL * param1);
static void ov22_0225A718(BGL * param0, const AnimationControlFlags * param1);
static void ov22_0225A748(Window ** param0, BGL * param1, int param2, int param3, int param4, int param5, int param6, BOOL param7);
static void ov22_0225A7B8(UnkStruct_ov22_022597BC * param0);
static void ov22_0225A7C0(Window * param0);
static s32 ov22_0225A7CC(Window * param0, int param1, int param2, int param3, int param4, int param5, u32 param6);
static s32 ov22_0225A814(Window * param0, int param1, int param2, int param3, int param4, int param5, u32 param6, Strbuf **param7);
static s32 ov22_0225A860(Window * param0, int param1, int param2, int param3, int param4, int param5, u32 param6, u32 param7);
static s32 ov22_0225A8B4(Window * param0, int param1, int param2, int param3, int param4, int param5, u32 param6, u32 param7, Strbuf **param8);
static void ov22_0225A914(UnkStruct_ov22_0225A914 * param0, GraphicElementManager * param1, UnkStruct_02009714 ** param2, int param3, NARC * param4);
static void ov22_0225A9C8(UnkStruct_ov22_0225A914 * param0, int param1);
static void ov22_0225AA10(UnkStruct_ov22_0225A914 * param0, UnkStruct_02009714 ** param1);
static void ov22_0225AB54(UnkStruct_ov22_0225AB54 * param0, GraphicElementManager * param1, UnkStruct_02009714 ** param2, int param3, BGL * param4, UnkStruct_02095C60 * param5, NARC * param6);
static void ov22_0225AC58(UnkStruct_ov22_0225AB54 * param0, UnkStruct_02009714 ** param1);
static void ov22_0225AC8C(UnkStruct_ov22_0225AB54 * param0);
static void ov22_0225AD5C(UnkStruct_ov22_0225AB54 * param0);
static void ov22_0225ACBC(UnkStruct_ov22_0225AB54 * param0);
static void ov22_0225ACE4(UnkStruct_ov22_0225AB54 * param0);
static void ov22_0225ADC0(UnkStruct_ov22_0225AB54 * param0, UnkStruct_ov22_0225AE9C * param1);
static void ov22_0225AE9C(UnkStruct_ov22_0225AE9C * param0);
static BOOL ov22_0225AF34(const UnkStruct_ov22_0225AE9C * param0);
static void ov22_0225AA34(UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, int param2, NARC * param3, int param4, int param5, int param6, int param7, int param8, int param9);
static void ov22_0225AAC0(UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1);
static void ov22_0225AAF4(UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, UnkStruct_ov19_021DA864 * param2, int param3);
static void ov22_0225AD68(UnkStruct_ov22_0225AD68 * param0, fx32 param1, fx32 param2, int param3);
static BOOL ov22_0225AD78(UnkStruct_ov22_0225AD68 * param0);

void ov22_0225A428 (UnkStruct_ov22_0225A428 * param0, UnkStruct_ov22_02256BAC * param1, int param2)
{
    if (param2 & 1) {
        memset(param0, 0, sizeof(UnkStruct_ov22_0225A428));
    }

    if (param2 & 2) {
        ov22_0225A6E0(&param0->unk_00, param1->unk_00);
    }

    if (param2 & 4) {
        ov22_0225A748(&param0->unk_2C, param1->unk_00, 2, 19, 27, 4, (18 + 12) + 1, 1);
    }

    if (param2 & 8) {
        ov22_0225A914(&param0->unk_38, param1->unk_04, param1->unk_08, param1->unk_10, param1->unk_24);
    }

    if (param2 & 16) {
        ov22_0225AB54(&param0->unk_A0, param1->unk_04, param1->unk_08, param1->unk_1C, param1->unk_00, param1->unk_20, param1->unk_24);
    }

    if (param2 & 32) {
        ov22_0225A748(&param0->unk_134, param1->unk_00, 2, 1, 27, 2, (18 + 12) + (1 + (27 * 4)), 1);
        BGL_FillWindow(param0->unk_134, 15);
        ov22_0225A860(param0->unk_134, 26, param1->unk_14, 6, 0, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0)), 0xff);
        ov22_0225A860(param0->unk_134, 26, param1->unk_14, param1->unk_18, 72, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0)), 0xff);
        sub_0200E060(param0->unk_134, 0, 1, 1);
    }

    param0->unk_30 = param1->unk_04;
    param0->unk_34 = param1->unk_08;

    ov22_0225A718(param1->unk_00, param1->unk_0C);

    param0->unk_13C = sub_02027B50(param1->unk_0C);
    param0->unk_140 = sub_02027AC0(param1->unk_0C);
    param0->unk_138 |= param2;
}

void ov22_0225A560 (UnkStruct_ov22_0225A428 * param0)
{
    if (param0->unk_138 & 2) {
        ov22_0225A7B8(&param0->unk_00);
        param0->unk_138 &= ~2;
    }

    if (param0->unk_138 & 4) {
        ov22_0225A7C0(param0->unk_2C);
        param0->unk_138 &= ~4;
    }

    if (param0->unk_138 & 8) {
        ov22_0225AA10(&param0->unk_38, param0->unk_34);
        param0->unk_138 &= ~8;
    }

    if (param0->unk_138 & 16) {
        ov22_0225AC58(&param0->unk_A0, param0->unk_34);
        param0->unk_138 &= ~16;
    }

    if (param0->unk_138 & 32) {
        ov22_0225A7C0(param0->unk_134);
        param0->unk_138 &= ~32;
    }

    memset(param0, 0, sizeof(UnkStruct_ov22_0225A428));
}

void ov22_0225A610 (UnkStruct_ov22_0225A428 * param0)
{
    if (param0->unk_138 & 16) {
        ov22_0225AC8C(&param0->unk_A0);
    }
}

void ov22_0225A628 (UnkStruct_ov22_0225A428 * param0, int param1, int param2, int param3)
{
    GF_ASSERT((param0->unk_138 & 4));
    ov22_0225A7CC(param0->unk_2C, param1, param2, param3, 0, 0, 0xff);
}

s32 ov22_0225A660 (UnkStruct_ov22_0225A428 * param0, int param1, int param2, int param3)
{
    GF_ASSERT((param0->unk_138 & 4));
    return ov22_0225A814(param0->unk_2C, param1, param2, param3, 0, 0, param0->unk_140, &param0->unk_144);
}

void ov22_0225A6A0 (UnkStruct_ov22_0225A428 * param0)
{
    Strbuf_Free(param0->unk_144);
    param0->unk_144 = NULL;
}

void ov22_0225A6B8 (UnkStruct_ov22_0225A428 * param0, int param1)
{
    ov22_0225A9C8(&param0->unk_38, param1);
}

int ov22_0225A6C4 (const UnkStruct_ov22_0225A428 * param0)
{
    return param0->unk_A0.unk_1C;
}

void ov22_0225A6CC (UnkStruct_ov22_0225A428 * param0, int param1)
{
    param0->unk_A0.unk_20 = param1;
}

BOOL ov22_0225A6D4 (const UnkStruct_ov22_0225A428 * param0)
{
    return ov22_0225AF34(&param0->unk_A0.unk_30);
}

static void ov22_0225A6E0 (UnkStruct_ov22_022597BC * param0, BGL * param1)
{
    UnkStruct_ov22_022599A0 v0;

    v0.unk_00 = param1;
    v0.unk_04 = 25;
    v0.unk_08 = 224;
    v0.unk_0C = 225;
    v0.unk_10 = 226;
    v0.unk_14 = 0;
    v0.unk_18 = 0;
    v0.unk_1C = 4;
    v0.unk_20 = 1;
    v0.unk_24 = 0;
    v0.unk_28 = 0;
    v0.unk_2C = 14;

    ov22_022597BC(param0, &v0);
}

static void ov22_0225A718 (BGL * param0, const AnimationControlFlags * param1)
{
    int v0 = sub_02027B50(param1);

    sub_0200DD0C(param0, 5, 1, 1, v0, 14);
    sub_02002E98(4, 2 * 32, 14);
}

static void ov22_0225A748 (Window ** param0, BGL * param1, int param2, int param3, int param4, int param5, int param6, BOOL param7)
{
    *param0 = sub_0201A778(14, 1);

    sub_0201A7A0(*param0);
    BGL_AddWindow(param1, *param0, 5, param2, param3, param4, param5, 2, param6);
    BGL_FillWindow(*param0, 15);

    if (param7) {
        sub_0200E060(*param0, 0, 1, 1);
    }

    sub_0201A954(*param0);
}

static void ov22_0225A7B8 (UnkStruct_ov22_022597BC * param0)
{
    ov22_02259804(param0);
}

static void ov22_0225A7C0 (Window * param0)
{
    sub_0201A928(param0, 1);
}

static s32 ov22_0225A7CC (Window * param0, int param1, int param2, int param3, int param4, int param5, u32 param6)
{
    s32 v0;

    BGL_FillWindow(param0, 15);
    v0 = ov22_0225A860(param0, param1, param2, param3, param4, param5, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0)), param6);
    sub_0200E060(param0, 0, 1, 1);

    return v0;
}

static s32 ov22_0225A814 (Window * param0, int param1, int param2, int param3, int param4, int param5, u32 param6, Strbuf **param7)
{
    s32 v0;

    BGL_FillWindow(param0, 15);
    v0 = ov22_0225A8B4(param0, param1, param2, param3, param4, param5, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0)), param6, param7);
    sub_0200E060(param0, 0, 1, 1);

    return v0;
}

static s32 ov22_0225A860 (Window * param0, int param1, int param2, int param3, int param4, int param5, u32 param6, u32 param7)
{
    MessageLoader * v0;
    Strbuf* v1;
    s32 v2;

    v0 = MessageLoader_Init(0, param1, param2, 13);
    GF_ASSERT(v0);

    v1 = MessageLoader_GetNewStrbuf(v0, param3);
    v2 = sub_0201D78C(param0, 1, v1, param4, param5, param7, param6, NULL);

    Strbuf_Free(v1);
    MessageLoader_Free(v0);

    return v2;
}

static s32 ov22_0225A8B4 (Window * param0, int param1, int param2, int param3, int param4, int param5, u32 param6, u32 param7, Strbuf **param8)
{
    MessageLoader * v0;
    s32 v1;

    GF_ASSERT(*param8 == NULL);

    v0 = MessageLoader_Init(0, param1, param2, 13);
    GF_ASSERT(v0);
    *param8 = MessageLoader_GetNewStrbuf(v0, param3);
    v1 = sub_0201D78C(param0, 1, *param8, param4, param5, param7, param6, NULL);

    MessageLoader_Free(v0);

    return v1;
}

static void ov22_0225A914 (UnkStruct_ov22_0225A914 * param0, GraphicElementManager * param1, UnkStruct_02009714 ** param2, int param3, NARC * param4)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    int v2, v3;

    ov22_0225AA34(param0->unk_00, param2, 14, param4, 103, 225, 102, 101, 2, 2000);
    ov22_0225AAF4(param0->unk_00, param2, &v0, 0);

    v1.unk_00 = param1;
    v1.unk_04 = &v0;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_14 = 0;
    v1.unk_1C = 14;

    for (v2 = 0; v2 < (20 / 10); v2++) {
        v1.unk_08.y = 104 + (18 * v2);
        v1.unk_08.y *= FX32_ONE;
        v1.unk_08.y += (512 * FX32_ONE);

        for (v3 = 0; v3 < 10; v3++) {
            v1.unk_08.x = 38 + (18 * v3);
            v1.unk_08.x *= FX32_ONE;

            param0->unk_10[(v2 * 10) + v3] = sub_02021B90(&v1);
            sub_02021D6C(param0->unk_10[(v2 * 10) + v3], 1);

            if (((v2 * 10) + v3) >= param3) {
                sub_02021CAC(param0->unk_10[(v2 * 10) + v3], 0);
            }
        }
    }
}

static void ov22_0225A9C8 (UnkStruct_ov22_0225A914 * param0, int param1)
{
    int v0;

    if (param0->unk_60 < param1) {
        for (v0 = param0->unk_60; v0 < param1; v0++) {
            sub_02021D6C(param0->unk_10[v0], 0);
        }
    } else if (param0->unk_60 > param1) {
        for (v0 = param0->unk_60 - 1; v0 >= param1; v0--) {
            sub_02021D6C(param0->unk_10[v0], 1);
        }
    }

    param0->unk_60 = param1;
}

static void ov22_0225AA10 (UnkStruct_ov22_0225A914 * param0, UnkStruct_02009714 ** param1)
{
    int v0;

    for (v0 = 0; v0 < 20; v0++) {
        sub_02021BD4(param0->unk_10[v0]);
    }

    ov22_0225AAC0(param0->unk_00, param1);
}

static void ov22_0225AA34 (UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, int param2, NARC * param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    param0[0] = sub_02009A4C(param1[0], param3, param4, 0, param9 + param4, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    sub_0200A3DC(param0[0]);
    sub_02009D4C(param0[0]);

    param0[1] = sub_02009B04(param1[1], param3, param5, 0, param9 + param5, NNS_G2D_VRAM_TYPE_2DSUB, param8, param2);

    sub_0200A640(param0[1]);
    sub_02009D4C(param0[1]);

    param0[2] = sub_02009BC4(param1[2], param3, param6, 0, param9 + param6, 2, param2);
    param0[3] = sub_02009BC4(param1[3], param3, param7, 0, param9 + param7, 3, param2);
}

static void ov22_0225AAC0 (UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1)
{
    sub_0200A4E4(param0[0]);
    sub_0200A6DC(param0[1]);
    sub_02009D68(param1[0], param0[0]);
    sub_02009D68(param1[1], param0[1]);
    sub_02009D68(param1[2], param0[2]);
    sub_02009D68(param1[3], param0[3]);
}

static void ov22_0225AAF4 (UnkStruct_02009DC8 ** param0, UnkStruct_02009714 ** param1, UnkStruct_ov19_021DA864 * param2, int param3)
{
    sub_020093B4(param2, sub_02009E08(param0[0]), sub_02009E08(param0[1]), sub_02009E08(param0[2]), sub_02009E08(param0[3]), 0xffffffff, 0xffffffff, 0, param3, param1[0], param1[1], param1[2], param1[3], NULL, NULL);
}

static void ov22_0225AB54 (UnkStruct_ov22_0225AB54 * param0, GraphicElementManager * param1, UnkStruct_02009714 ** param2, int param3, BGL * param4, UnkStruct_02095C60 * param5, NARC * param6)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    int v2;

    ov22_0225AA34(param0->unk_00, param2, 14, param6, 229, 230, 228, 227, 2, 3000);
    ov22_0225AAF4(param0->unk_00, param2, &v0, 0);

    v1.unk_00 = param1;
    v1.unk_04 = &v0;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_14 = 0;
    v1.unk_1C = 14;
    v1.unk_08.y = 58 * FX32_ONE;
    v1.unk_08.y += (512 * FX32_ONE);

    for (v2 = 0; v2 < 2; v2++) {
        v1.unk_08.x = 103 + (v2 * 24);
        v1.unk_08.x *= FX32_ONE;
        param0->unk_10[v2] = sub_02021B90(&v1);
    }

    param0->unk_1C = param3;
    param0->unk_20 = param3 * 30;
    param0->unk_2C = param5;
    param0->unk_2C->unk_00.unk_00 = param3;
    param0->unk_2C->unk_08.unk_00 = param3;
    param0->unk_90 = 0;

    ov22_0225ACE4(param0);
    ov22_0225A748(&param0->unk_18, param4, 10, 8, 14, 4, (18 + 12) + ((1 + (27 * 4)) + (27 * 2)), 0);

    BGL_FillWindow(param0->unk_18, 0);

    ov22_0225A860(param0->unk_18, 26, 385, 4, 0, 4, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), 0xff);
    ov22_0225A860(param0->unk_18, 26, 385, 5, 0 + 72, 4, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), 0xff);

    sub_0201A954(param0->unk_18);
}

static void ov22_0225AC58 (UnkStruct_ov22_0225AB54 * param0, UnkStruct_02009714 ** param1)
{
    if (param0->unk_24) {
        SysTask_Done(param0->unk_24);
    }

    if (param0->unk_28) {
        SysTask_Done(param0->unk_28);
    }

    ov22_0225AAC0(param0->unk_00, param1);
    ov22_0225A7C0(param0->unk_18);

    memset(param0, 0, sizeof(UnkStruct_ov22_0225AB54));
}

static void ov22_0225AC8C (UnkStruct_ov22_0225AB54 * param0)
{
    u32 v0;

    ov22_0225AD5C(param0);
    v0 = param0->unk_20 / 30;
    sub_02095C60(param0->unk_2C, v0);

    ov22_0225ACBC(param0);
    ov22_0225ACE4(param0);
    ov22_0225AE9C(&param0->unk_30);
}

static void ov22_0225ACBC (UnkStruct_ov22_0225AB54 * param0)
{
    if (param0->unk_1C != param0->unk_2C->unk_00.unk_00) {
        param0->unk_1C = param0->unk_2C->unk_00.unk_00;

        if (param0->unk_1C <= 10) {
            ov22_0225ADC0(param0, &param0->unk_30);
            Sound_PlayEffect(1667);
        }
    }
}

static void ov22_0225ACE4 (UnkStruct_ov22_0225AB54 * param0)
{
    int v0;
    int v1;
    int v2 = param0->unk_1C;
    int v3;

    v3 = 1;

    for (v0 = 1; v0 < 2; v0++) {
        v3 *= 10;
    }

    for (v0 = 0; v0 < 2; v0++) {
        v1 = v2 / v3;

        GF_ASSERT(v1 <= 10);
        sub_02021D6C(param0->unk_10[v0], 0 + v1);

        v2 -= v1 * v3;
        v3 /= 10;

        if (param0->unk_90 == 0) {
            if (param0->unk_1C <= 10) {
                sub_02021EC4(param0->unk_10[v0], 1);

                if (v0 == 2 - 1) {
                    param0->unk_90 = 1;
                }
            }
        }
    }
}

static void ov22_0225AD5C (UnkStruct_ov22_0225AB54 * param0)
{
    if ((param0->unk_20 - 1) >= 0) {
        param0->unk_20--;
    }
}

static void ov22_0225AD68 (UnkStruct_ov22_0225AD68 * param0, fx32 param1, fx32 param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_10 = param3;
    param0->unk_0C = 0;
}

static BOOL ov22_0225AD78 (UnkStruct_ov22_0225AD68 * param0)
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

static void ov22_0225ADC0 (UnkStruct_ov22_0225AB54 * param0, UnkStruct_ov22_0225AE9C * param1)
{
    int v0;
    fx32 v1;
    fx32 v2, v3;
    VecFx32 v4;
    int v5;

    v4.y = 58 * FX32_ONE;
    v4.y += (512 * FX32_ONE);

    for (v0 = 0; v0 < 2; v0++) {
        param1->unk_04[v0] = param0->unk_10[v0];
        sub_02021CF8(param1->unk_04[v0], 2);
        v4.x = 103 + (v0 * 24);
        v4.x *= FX32_ONE;
        param1->unk_0C[v0] = v4;
    }

    v5 = 10 - param0->unk_1C;

    if (v5 > 0) {
        v1 = (FX32_CONST(1.0f)) + FX_Mul(v5 << FX32_SHIFT, (FX32_CONST(0.150f)));
    } else {
        v1 = (FX32_CONST(1.0f));
    }

    ov22_0225AD68(&param1->unk_24, v1, (FX32_CONST(1.0f)), 16);

    v2 = FX_Mul((FX32_CONST(24)), v1);
    v3 = FX_Mul((FX32_CONST(24)), v1);
    v2 = v2 - (FX32_CONST(24));
    v3 = v3 - (FX32_CONST(24));

    ov22_0225AD68(&param1->unk_38, v2, 0, 16);
    ov22_0225AD68(&param1->unk_4C, v3, 0, 16);

    param1->unk_00 = 1;
}

static void ov22_0225AE9C (UnkStruct_ov22_0225AE9C * param0)
{
    VecFx32 v0;
    VecFx32 v1;
    BOOL v2;

    if (param0->unk_00 == 0) {
        return;
    }

    v2 = ov22_0225AD78(&param0->unk_24);

    ov22_0225AD78(&param0->unk_38);
    ov22_0225AD78(&param0->unk_4C);

    v0.x = param0->unk_24.unk_00;
    v0.y = param0->unk_24.unk_00;
    v0.z = param0->unk_24.unk_00;

    sub_02021C70(param0->unk_04[0], &v0);
    sub_02021C70(param0->unk_04[1], &v0);

    v1 = param0->unk_0C[0];
    v1.x -= param0->unk_38.unk_00;
    v1.y -= param0->unk_4C.unk_00;

    sub_02021C50(param0->unk_04[0], &v1);

    v1 = param0->unk_0C[1];
    v1.y -= param0->unk_4C.unk_00;

    sub_02021C50(param0->unk_04[1], &v1);

    if (v2) {
        param0->unk_00 = 0;
    }
}

static BOOL ov22_0225AF34 (const UnkStruct_ov22_0225AE9C * param0)
{
    if (param0->unk_00 == 1) {
        return 0;
    }

    return 1;
}
