#include "overlay017/ov17_0224A0FC.h"

#include <cstdlib>
#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "overlay017/ov17_0223DAD0.h"
#include "overlay017/ov17_0223F118.h"
#include "overlay017/struct_ov17_0224A1EC.h"
#include "overlay017/struct_ov17_0224A8D4.h"
#include "overlay017/struct_ov17_0224ABFC.h"
#include "overlay017/struct_ov17_0224AE84.h"
#include "overlay017/struct_ov17_0224B058.h"
#include "overlay017/struct_ov17_0224B09C.h"
#include "overlay017/struct_ov17_0224B5C8.h"
#include "overlay017/struct_ov17_0224B7BC.h"
#include "overlay017/struct_ov17_0224BE50.h"
#include "overlay017/struct_ov17_0224C0C0.h"
#include "overlay017/struct_ov17_0224C384.h"
#include "overlay017/struct_ov17_0224C9A4.h"
#include "overlay017/struct_ov17_0224CAC0.h"
#include "overlay017/struct_ov17_0224CD84.h"
#include "overlay017/struct_ov17_0224DF54.h"
#include "overlay017/struct_ov17_0224EDE0.h"
#include "overlay017/struct_ov17_02253084.h"
#include "overlay017/struct_ov17_0225470C.h"
#include "overlay022/ov22_0225AF8C.h"
#include "overlay022/struct_ov22_0225AF8C.h"
#include "overlay022/struct_ov22_0225B1BC_decl.h"

#include "assert.h"
#include "cell_actor.h"
#include "game_options.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "pokemon.h"
#include "spl.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_02012744.h"
#include "unk_02014000.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"

typedef struct {
    UnkStruct_ov17_0224DF54 *unk_00;
    UnkStruct_ov17_0224B09C *unk_04;
    UnkStruct_ov17_0224ABFC *unk_08;
    u8 *unk_0C;
    u8 unk_10;
    u8 unk_11;
    s32 unk_14;
    s32 unk_18;
    s32 unk_1C;
    fx32 unk_20;
    s32 unk_24;
    s32 unk_28;
} UnkStruct_ov17_0224C6B0;

typedef struct {
    UnkStruct_ov22_0225B1BC *unk_00;
    u8 *unk_04;
    GXRgb unk_08;
    GXRgb unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    u8 unk_10;
} UnkStruct_ov17_0224CEE4;

static void ov17_0224A8D4(SysTask *param0, void *param1);
static void ov17_0224AA68(SysTask *param0, void *param1);
static void ov17_0224B528(UnkStruct_ov17_0224DF54 *param0, int param1, int param2, int param3, int param4, int param5);
static void ov17_0224B5F0(SysTask *param0, void *param1);
void ov17_0224BD00(UnkStruct_ov17_0224DF54 *param0);
void ov17_0224BD28(UnkStruct_ov17_0224DF54 *param0, int param1, int param2);
int ov17_0224BDF0(UnkStruct_ov17_0224DF54 *param0, int param1);
int ov17_0224BE24(UnkStruct_ov17_0224DF54 *param0, int param1);
static void ov17_0224BE50(SysTask *param0, void *param1);
static void ov17_0224BE64(UnkStruct_ov17_0224BE50 *param0);
static void ov17_0224BF58(UnkStruct_ov17_0224BE50 *param0);
static void ov17_0224C414(SysTask *param0, void *param1);
static BOOL ov17_0224B7BC(UnkStruct_ov17_0224B7BC *param0, Sprite *param1, UnkStruct_ov17_0224B09C *param2, int param3, int param4, int param5, UnkStruct_ov17_0224ABFC *param6, u32 param7);
static BOOL ov17_0224B8D0(UnkStruct_ov17_0224B7BC *param0, Sprite *param1, UnkStruct_ov17_0224B09C *param2, int param3, int param4, int param5, int param6, u32 param7);
static BOOL ov17_0224BA50(UnkStruct_ov17_0224B7BC *param0, Sprite *param1, UnkStruct_ov17_0224B09C *param2, int param3, int param4, int param5, int param6, u32 param7);
static void ov17_0224ABFC(SysTask *param0, void *param1);
static int ov17_0224B06C(int param0);
static void ov17_0224AE84(SysTask *param0, void *param1);
static void ov17_0224C718(SysTask *param0, void *param1);
void ov17_0224C89C(UnkStruct_ov17_0224DF54 *param0, const UnkStruct_ov17_0224EDE0 *param1);
static void ov17_0224CA28(SysTask *param0, void *param1);
static void ov17_0224CAC0(SPLEmitter *param0);
static void ov17_0224CB00(UnkStruct_ov17_0224DF54 *param0, int param1, int param2);
static void ov17_0224CB80(UnkStruct_ov17_0224DF54 *param0, int param1);
void ov17_0224CD84(UnkStruct_ov17_0224DF54 *param0, u32 param1, u32 param2, int param3, int param4, u16 param5);
static void ov17_0224CD60(SysTask *param0, void *param1);
static void ov17_0224CF4C(SysTask *param0, void *param1);
static void ov17_0224C7B8(SysTask *param0, void *param1);

__attribute__((aligned(4))) static const struct {
    u16 unk_00;
    u16 unk_02;
} Unk_ov17_022546DC[] = {
    { 0x0, 0x0 },
    { 0x1F, 0x7 },
    { 0x7C00, 0x7 },
    { 0x3E0, 0x7 },
    { 0x27FF, 0x8 },
    { 0x0, 0x7 }
};

__attribute__((aligned(4))) static const u8 Unk_ov17_022549C0[] = {
    0x0,
    0x4,
    0x8,
    0xC
};

__attribute__((aligned(4))) static const s16 Unk_ov17_022546F4[4][3] = {
    { 0x80, 0x60, 0xFFFFFFFFFFFFFE00 },
    { 0x30, 0x28, 0xFFFFFFFFFFFFFD80 },
    { 0x80, 0x28, 0xFFFFFFFFFFFFFD80 },
    { 0xD0, 0x28, 0xFFFFFFFFFFFFFD80 }
};

__attribute__((aligned(4))) static const s16 Unk_ov17_022546CC[4][2] = {
    { 0x80, 0x58 },
    { 0x30, 0x20 },
    { 0x80, 0x20 },
    { 0xD0, 0x20 }
};

__attribute__((aligned(4))) static const u8 Unk_ov17_022549BC[] = {
    0xB0,
    0xA8,
    0xB0,
    0xB8
};

static const SpriteTemplate Unk_ov17_02254760 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x2D,
    0x2,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80EB, 0x80E9, 0x80EB, 0x80EB, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_02254794 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xD,
    0x3,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80EF, 0x80E9, 0x80EC, 0x80EC, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov17_022547C8 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x2E,
    0x1,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F0, 0x80E9, 0x80ED, 0x80ED, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov17_022547FC = {
    0x0,
    0x90,
    0x0,
    0x0,
    0xB,
    0x5,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F1, 0x80E9, 0x80EE, 0x80EE, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov17_02254830 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x30,
    0x1,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F2, 0x80E9, 0x80EF, 0x80EF, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_02254864 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x2F,
    0x3,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F4, 0x80E9, 0x80F1, 0x80F1, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_0225472C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xE,
    0x2,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F5, 0x80E9, 0x80F2, 0x80F2, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const UnkStruct_ov17_0225470C Unk_ov17_0225470C[] = {
    { 0x0, 0x0 },
    { 0x8, 0x6 },
    { 0x14, 0x1 },
    { 0xB, 0x0 },
    { 0x9, 0x3 },
    { 0xA, 0x3 },
    { 0x12, 0x4 },
    { 0x13, 0x0 }
};

__attribute__((aligned(4))) static const s32 Unk_ov17_02254938[(16 * 2) + 1] = {
    0xFFFFFFFFFFFF8A08,
    0xFFFFFFFFFFFF9104,
    0xFFFFFFFFFFFF97FF,
    0xFFFFFFFFFFFF9EFB,
    0xFFFFFFFFFFFFA5F6,
    0xFFFFFFFFFFFFACF2,
    0xFFFFFFFFFFFFB3ED,
    0xFFFFFFFFFFFFBA21,
    0xFFFFFFFFFFFFC1E4,
    0xFFFFFFFFFFFFC8E0,
    0xFFFFFFFFFFFFCFDB,
    0xFFFFFFFFFFFFD6D7,
    0xFFFFFFFFFFFFDDD2,
    0xFFFFFFFFFFFFE4CE,
    0xFFFFFFFFFFFFEBC9,
    0xFFFFFFFFFFFFF2C5,
    0xFFFFFFFFFFFFF9C0,
    0xBB,
    0x7B7,
    0xEB2,
    0x15AE,
    0x1CA9,
    0x23A5,
    0x2AA0,
    0x319C,
    0x3897,
    0x3F93,
    0x468E,
    0x4D8A,
    0x5485,
    0x5B81,
    0x627C,
    0x6978
};

__attribute__((aligned(4))) static const s32 Unk_ov17_022548D4[(12 * 2) + 1] = {
    0xFFFFFFFFFFFF9104,
    0xFFFFFFFFFFFF99BE,
    0xFFFFFFFFFFFFA278,
    0xFFFFFFFFFFFFAB32,
    0xFFFFFFFFFFFFB3EC,
    0xFFFFFFFFFFFFBCA6,
    0xFFFFFFFFFFFFC560,
    0xFFFFFFFFFFFFCE1A,
    0xFFFFFFFFFFFFD6D4,
    0xFFFFFFFFFFFFDF8E,
    0xFFFFFFFFFFFFE848,
    0xFFFFFFFFFFFFF102,
    0xFFFFFFFFFFFFF9BC,
    0x276,
    0xB30,
    0x13EA,
    0x1CA4,
    0x255E,
    0x2E18,
    0x36D2,
    0x3F8C,
    0x4846,
    0x5100,
    0x59BA,
    0x6274
};

static const s32 *const Unk_ov17_022546C4[] = {
    Unk_ov17_02254938,
    Unk_ov17_022548D4
};

s16 ov17_0224A0FC(int param0)
{
    return Unk_ov17_022546F4[param0][0];
}

s16 ov17_0224A10C(int param0)
{
    return Unk_ov17_022546F4[param0][1];
}

s16 ov17_0224A120(int param0)
{
    return Unk_ov17_022546F4[param0][2];
}

void ov17_0224A134(UnkStruct_ov17_0224DF54 *param0)
{
    int v0;
    UnkStruct_ov22_0225AF8C v1;
    int v2;

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->unk_14.unk_98[v0].unk_00 == NULL);
    }

    MI_CpuClear8(&v1, sizeof(UnkStruct_ov22_0225AF8C));
    v1.unk_0C = 23;

    for (v0 = 0; v0 < 4; v0++) {
        int v3;

        v3 = param0->unk_A3C.unk_05[v0];
        v2 = Pokemon_DPSpriteYOffset(param0->unk_00->unk_00.unk_00[v3], 2);

        v1.unk_04 = Unk_ov17_022546F4[v0][0];
        v1.unk_08 = Unk_ov17_022546F4[v0][1] + v2;

        param0->unk_14.unk_04[v3].unk_04 = v1.unk_04;
        param0->unk_14.unk_04[v3].unk_08 = v1.unk_08;
        param0->unk_14.unk_04[v3].unk_0C = Unk_ov17_022546F4[v0][2];
        param0->unk_14.unk_04[v3].unk_00 = ov22_0225AFD4(&v1, param0->unk_00->unk_00.unk_E8[v3]);

        ov22_0225B100(param0->unk_14.unk_04[v3].unk_00, param0->unk_14.unk_04[v3].unk_04, param0->unk_14.unk_04[v3].unk_08);

        if (v0 > 0) {
            ov22_0225B07C(param0->unk_14.unk_04[v3].unk_00, 0);
            ov22_0225B1AC(param0->unk_14.unk_04[v3].unk_00, -100);
        }
    }
}

void ov17_0224A1EC(UnkStruct_ov17_0224A1EC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov22_0225B020(param0->unk_04[v0].unk_00);

        param0->unk_98[v0].unk_00 = NULL;
    }
}

void ov17_0224A20C(SpriteRenderer *param0, SpriteGfxHandler *param1)
{
    return;
}

void ov17_0224A210(SpriteGfxHandler *param0)
{
    return;
}

__attribute__((aligned(4))) static const u16 Unk_ov17_02254898[] = {
    0x2291,
    0x22B1,
    0x22D1,
    0x22F1,
    0x2311,
    0x2331,
    0x22B1,
    0x2351,
    0x2371,
    0x2311,
    0x2331,
    0x2391,
    0x22D1,
    0x2371,
    0x2311,
    0x2291,
    0x22B1,
    0x22D1,
    0x22F1,
    0x2311,
    0x2331,
    0x22B1,
    0x2351,
    0x2371,
    0x2311,
    0x2331,
    0x2391,
    0x22D1,
    0x2371,
    0x2311
};

void ov17_0224A214(UnkStruct_ov17_0224A1EC *param0, int param1, int param2)
{
    int v0, v1, v2;
    int v3, v4, v5;

    v3 = ov17_0223F0BC(param2, 2);
    v4 = ov17_0223F0BC(param2, 3);
    v5 = (256 / 8 - v3) / 2;

    if (param1 > v4) {
        param1 = v4;
    }

    v1 = param1 / 8;
    v2 = param1 % 8;

    {
        u16 *v6;

        v6 = sub_02019FE4(param0->unk_60, 3);
        v6 = &v6[32 * 0x13 + v5];

        if (param2 == 0) {
            for (v0 = 0; v0 < v1; v0++) {
                if (v0 % 8 == 0) {
                    v6[v0] = (0x200c + 8);
                } else {
                    v6[v0] = (v0 & 1) ? (0x202c + 8) : (0x204c + 8);
                }
            }

            if (v0 < v3) {
                if (v0 % 8 == 0) {
                    v6[v0] = 0x200c + v2;
                } else {
                    v6[v0] = ((v0 & 1) ? 0x202c : 0x204c) + v2;
                }

                v0++;
            }

            for (; v0 < v3; v0++) {
                if (v0 % 8 == 0) {
                    v6[v0] = 0x200c;
                } else {
                    v6[v0] = (v0 & 1) ? 0x202c : 0x204c;
                }
            }
        } else {
            for (v0 = 0; v0 < v1; v0++) {
                v6[v0] = Unk_ov17_02254898[v0] + 8;
            }

            if (v0 < v3) {
                v6[v0] = Unk_ov17_02254898[v0] + v2;
                v0++;
            }

            for (; v0 < v3; v0++) {
                v6[v0] = Unk_ov17_02254898[v0];
            }
        }

        sub_0201C3C0(param0->unk_60, 3);
    }
}

void ov17_0224A368(UnkStruct_ov17_0224A1EC *param0, int param1, int param2, int param3)
{
    int v0;

    v0 = param1 * ov17_0223F0BC(param3, 3) / param2;
    ov17_0224A214(param0, v0, param3);
}

void ov17_0224A390(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 58, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33003);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 59, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33004);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 60, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33005);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 61, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33006);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 62, 1, 33003);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 63, 1, 33003);
}

void ov17_0224A428(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33003);
    SpriteGfxHandler_UnloadCharObjById(param0, 33004);
    SpriteGfxHandler_UnloadCharObjById(param0, 33005);
    SpriteGfxHandler_UnloadCharObjById(param0, 33006);
    SpriteGfxHandler_UnloadCellObjById(param0, 33003);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33003);
}

static int ov17_0224A46C(UnkStruct_ov17_0224A1EC *param0, SpriteRenderer *param1, SpriteGfxHandler *param2, int param3, int param4, int param5, int param6, int param7)
{
    CellActorData *v0;
    int v1;
    SpriteTemplate v2;

    v2 = Unk_ov17_02254760;

    if (param3 == 2) {
        v2.priority += 10;
    } else {
        switch (param7) {
        case 0:
        default:
            break;
        case 1:
            v2.priority += 3;
            break;
        case 2:
            v2.priority += 2;
            break;
        case 3:
            v2.priority += 1;
            break;
        }
    }

    switch (param4) {
    case 3:
        v2.resources[0] = 33004;
        v2.plttIdx = 2;
        break;
    case 4:
        v2.resources[0] = 33006;
        v2.plttIdx = 6;
        break;
    case 1:
        v2.resources[0] = 33005;
        v2.plttIdx = 7;
        break;
    case 2:
    default:
        v2.resources[0] = 33003;
        v2.plttIdx = 2;
        break;
    }

    v0 = SpriteActor_LoadResources(param1, param2, &v2);

    sub_0200D364(v0, param3);
    SpriteActor_UpdateObject(v0->unk_00);
    sub_0200D500(v0, param5, param6, (256 * FX32_ONE));
    sub_0200D390(v0, 1);

    for (v1 = 0; v1 < (((16 * 2) / 2) * 4 + 4); v1++) {
        if (param0->unk_D8[v1] == NULL) {
            param0->unk_D8[v1] = v0;
            return v1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

void ov17_0224A580(UnkStruct_ov17_0224A1EC *param0)
{
    int v0;

    for (v0 = 0; v0 < (((16 * 2) / 2) * 4 + 4); v0++) {
        if (param0->unk_D8[v0] != NULL) {
            sub_0200D0F4(param0->unk_D8[v0]);
            param0->unk_D8[v0] = NULL;
        }
    }
}

void ov17_0224A5A8(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 55, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33007);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 56, 1, 33004);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 57, 1, 33004);
}

void ov17_0224A5F8(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33007);
    SpriteGfxHandler_UnloadCellObjById(param0, 33004);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33004);
}

void ov17_0224A61C(UnkStruct_ov17_0224A1EC *param0, SpriteRenderer *param1, SpriteGfxHandler *param2)
{
    CellActorData *v0;
    int v1;

    for (v1 = 0; v1 < 3; v1++) {
        param0->unk_960[v1] = SpriteActor_LoadResources(param1, param2, &Unk_ov17_02254794);
        SpriteActor_EnableObject(param0->unk_960[v1], 0);
    }
}

void ov17_0224A650(UnkStruct_ov17_0224A1EC *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0200D0F4(param0->unk_960[v0]);
        param0->unk_960[v0] = NULL;
    }
}

void ov17_0224A674(UnkStruct_ov17_0224A1EC *param0)
{
    int v0;
    Strbuf *v1, *v2, *v3;

    v1 = MessageLoader_GetNewStrbuf(param0->unk_84, 5);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_84, 6);
    v3 = MessageLoader_GetNewStrbuf(param0->unk_84, 7);

    for (v0 = 0; v0 < 3; v0++) {
        ov17_0223F1E8(23, param0->unk_60, param0->unk_5C, param0->unk_94, &param0->unk_96C[0][v0], v1, FONT_SYSTEM, TEXT_COLOR(0xb, 0xc, 0), 0, 33001, 0, 0, 1, 1, 12);
        sub_020129D0(param0->unk_96C[0][v0].unk_00, 0);

        ov17_0223F1E8(23, param0->unk_60, param0->unk_5C, param0->unk_94, &param0->unk_96C[1][v0], v2, FONT_SYSTEM, TEXT_COLOR(0xb, 0xc, 0), 0, 33001, 0, 0, 1, 1, 12);
        sub_020129D0(param0->unk_96C[1][v0].unk_00, 0);

        ov17_0223F1E8(23, param0->unk_60, param0->unk_5C, param0->unk_94, &param0->unk_96C[2][v0], v3, FONT_SYSTEM, TEXT_COLOR(0xb, 0xc, 0), 0, 33001, 0, 0, 1, 1, 12);
        sub_020129D0(param0->unk_96C[2][v0].unk_00, 0);
    }

    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
}

void ov17_0224A7B8(UnkStruct_ov17_0224A1EC *param0)
{
    int v0, v1;

    for (v1 = 0; v1 < 3; v1++) {
        for (v0 = 0; v0 < 3; v0++) {
            ov17_0223F2E4(&param0->unk_96C[v1][v0]);
        }
    }
}

void ov17_0224A7E0(UnkStruct_ov17_0224A1EC *param0, SpriteRenderer *param1, SpriteGfxHandler *param2, int param3, int param4, u8 param5)
{
    CellActorData *v0;
    int v1, v2, v3, v4;
    UnkStruct_ov17_0224A8D4 *v5;

    v4 = (param5 == 0) ? param5 : (param5 - 1);

    v5 = &param0->unk_92C[v4];

    if (v5->unk_08 != NULL) {
        SysTask_Done(v5->unk_08);
    }

    MI_CpuClear8(v5, sizeof(UnkStruct_ov17_0224A8D4));

    v2 = Unk_ov17_022546CC[param5][0];
    v3 = Unk_ov17_022546CC[param5][1];

    v5->unk_00 = param0->unk_960[v4];

    sub_0200D364(v5->unk_00, param3);
    sub_0200D500(v5->unk_00, v2, v3, (256 * FX32_ONE));
    SpriteActor_UpdateObject(v5->unk_00->unk_00);
    SpriteActor_EnableObject(v5->unk_00, 1);

    for (v1 = 0; v1 < 3; v1++) {
        sub_020129D0(param0->unk_96C[v1][v4].unk_00, 0);
    }

    v5->unk_04 = &param0->unk_96C[param3][v4];

    ov17_0223F2F8(v5->unk_04, v2, v3, 1);
    sub_020129D0(v5->unk_04->unk_00, 1);

    v5->unk_08 = SysTask_Start(ov17_0224A8D4, v5, ((30000 + 10000) + 200));
}

static void ov17_0224A8D4(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224A8D4 *v0 = param1;
    int v1, v2;

    switch (v0->unk_10) {
    case 0:
        sub_020129A4(v0->unk_04->unk_00, &v1, &v2);
        v2 += -4;
        sub_020128C4(v0->unk_04->unk_00, v1, v2);
        sub_0200D5DC(v0->unk_00, 0, -4);

        v0->unk_0C++;

        if (v0->unk_0C > 4) {
            v0->unk_0C = 0;

            v0->unk_10++;
        }
        break;
    case 1:
        v0->unk_0C++;

        if (v0->unk_0C > 14) {
            v0->unk_10++;
        }
        break;
    default:
        sub_020129D0(v0->unk_04->unk_00, 0);
        SpriteActor_EnableObject(v0->unk_00, 0);
        v0->unk_08 = NULL;
        SysTask_Done(param0);
        return;
    }
}

void ov17_0224A95C(UnkStruct_ov17_0224A1EC *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_92C[v0].unk_08 != NULL) {
            SysTask_Done(param0->unk_92C[v0].unk_08);
            param0->unk_92C[v0].unk_08 = NULL;
        }
    }
}

void ov17_0224A984(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 64, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33008);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 65, 1, 33005);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 66, 1, 33005);
}

void ov17_0224A9D4(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33008);
    SpriteGfxHandler_UnloadCellObjById(param0, 33005);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33005);
}

void ov17_0224A9F8(UnkStruct_ov17_0224A1EC *param0, SpriteRenderer *param1, SpriteGfxHandler *param2)
{
    CellActorData *v0;

    v0 = SpriteActor_LoadResources(param1, param2, &Unk_ov17_022547C8);
    SpriteActor_UpdateObject(v0->unk_00);

    param0->unk_1E8 = v0;
}

void ov17_0224AA1C(UnkStruct_ov17_0224A1EC *param0)
{
    int v0, v1;

    if (param0->unk_1E8 != NULL) {
        sub_0200D0F4(param0->unk_1E8);
        param0->unk_1E8 = NULL;
    }
}

void ov17_0224AA38(UnkStruct_ov17_0224DF54 *param0)
{
    param0->unk_14.unk_1EC = SysTask_Start(ov17_0224AA68, param0, (((30000 + 10000) + 100) + 10));
}

void ov17_0224AA58(UnkStruct_ov17_0224DF54 *param0)
{
    SysTask_Done(param0->unk_14.unk_1EC);
}

static void ov17_0224AA68(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1, v2, v3;

    v3 = v0->unk_00->unk_00.unk_113;
    v1 = v0->unk_14.unk_04[v3].unk_04;
    v2 = v0->unk_14.unk_04[v3].unk_08;

    sub_0200D500(v0->unk_14.unk_1E8, v1, v2 - 8 * 5, (256 * FX32_ONE));
}

void ov17_0224AA94(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 90, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33010);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 89, 1, 33007);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 88, 1, 33007);
}

void ov17_0224AAE4(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33010);
    SpriteGfxHandler_UnloadCellObjById(param0, 33007);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33007);
}

void ov17_0224AB08(UnkStruct_ov17_0224A1EC *param0, SpriteRenderer *param1, SpriteGfxHandler *param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_200[v0].unk_04 = SpriteActor_LoadResources(param1, param2, &Unk_ov17_02254830);
        SpriteActor_UpdateObject(param0->unk_200[v0].unk_04->unk_00);
        sub_0200D6A4(param0->unk_200[v0].unk_04, 1);
        param0->unk_200[v0].unk_13 = v0;
        param0->unk_200[v0].unk_0C = &param0->unk_04[v0];
        param0->unk_200[v0].unk_14 = Pokemon_DPSpriteYOffset(param0->unk_00->unk_00[v0], 2);
        ov17_0224AC78(&param0->unk_200[v0], 1, 1);
        param0->unk_200[v0].unk_00 = SysTask_Start(ov17_0224ABFC, &param0->unk_200[v0], (((30000 + 10000) + 100) + 1000));
    }

    ov17_0224ABDC(param0, 0);
}

void ov17_0224ABB0(UnkStruct_ov17_0224A1EC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D0F4(param0->unk_200[v0].unk_04);
        SysTask_Done(param0->unk_200[v0].unk_00);
        param0->unk_200[v0].unk_04 = NULL;
    }
}

void ov17_0224ABDC(UnkStruct_ov17_0224A1EC *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        SpriteActor_EnableObject(param0->unk_200[v0].unk_04, param1);
    }
}

static void ov17_0224ABFC(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224ABFC *v0 = param1;
    int v1, v2, v3, v4;
    f32 v5;

    v1 = v0->unk_0C->unk_04;
    v2 = v0->unk_0C->unk_08;
    v3 = v0->unk_0C->unk_0C;

    {
        int v6;

        v6 = ov17_0224B06C(v3);
        v4 = (80 / 2 - v0->unk_14) * v6 / 0x100;
        v2 += v4;
        v5 = (100 * v6 / 0x100);
        v5 /= 100.0f;
    }

    if (v0->unk_12 == 0) {
        s16 v7, v8;

        sub_0200D5A0(v0->unk_04, &v7, &v8, (256 * FX32_ONE));
        v2 = v8;
    }

    sub_0200D500(v0->unk_04, v1, v2, (256 * FX32_ONE));
    sub_0200D6E8(v0->unk_04, v5, v5);
}

void ov17_0224AC78(UnkStruct_ov17_0224ABFC *param0, int param1, int param2)
{
    param0->unk_11 = param1;
    param0->unk_12 = param2;
}

void ov17_0224AC80(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 93, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33011);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 92, 1, 33008);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 91, 1, 33008);
}

void ov17_0224ACD0(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33011);
    SpriteGfxHandler_UnloadCellObjById(param0, 33008);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33008);
}

void ov17_0224ACF4(UnkStruct_ov17_0224A1EC *param0, SpriteRenderer *param1, SpriteGfxHandler *param2)
{
    return;
}

void ov17_0224ACF8(UnkStruct_ov17_0224A1EC *param0)
{
    return;
}

void ov17_0224ACFC(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 96, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33012);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 95, 1, 33009);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 94, 1, 33009);
}

void ov17_0224AD4C(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33012);
    SpriteGfxHandler_UnloadCellObjById(param0, 33009);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33009);
}

BOOL ov17_0224AD70(UnkStruct_ov17_0224DF54 *param0, int param1, int param2)
{
    CellActorData *v0;
    u32 v1, v2;
    UnkStruct_ov17_0224AE84 *v3;
    int v4, v5, v6;

    v3 = param0->unk_14.unk_290[param1];

    for (v4 = 0; v4 < 16; v4++) {
        if (v3->unk_00 == NULL) {
            break;
        }

        v3++;
    }

    if (v4 == 16) {
        return 0;
    }

    v0 = SpriteActor_LoadResources(param0->unk_14.unk_58, param0->unk_14.unk_5C, &Unk_ov17_02254864);

    if (v0 == NULL) {
        return 0;
    }

    v5 = param0->unk_14.unk_04[param1].unk_04;
    v6 = param0->unk_14.unk_04[param1].unk_08;

    sub_0200D364(v0, param2);
    sub_0200D500(v0, v5, v6, (256 * FX32_ONE));
    CellActor_SetAnimateFlag(v0->unk_00, 1);
    SpriteActor_UpdateObject(v0->unk_00);

    v1 = sub_02094E98(param0->unk_00);
    v2 = 0x500;

    CP_SetDiv32_32(v1, v2);
    MI_CpuClear8(v3, sizeof(UnkStruct_ov17_0224AE84));

    v3->unk_04 = v0;
    v3->unk_08 = v5 << 8;
    v3->unk_0C = v6 << 8;
    v3->unk_10 = CP_GetDivRemainder32() + 0x0;

    if (v3->unk_10 & 1) {
        v3->unk_10 = -v3->unk_10;
    }

    v1 = sub_02094E98(param0->unk_00);
    v2 = 0xf00;

    CP_SetDivImm32_32(v1, v2);

    v3->unk_14 = -(0x400 + CP_GetDivRemainder32());
    v3->unk_00 = SysTask_Start(ov17_0224AE84, v3, (30000 + 10000));

    return 1;
}

static void ov17_0224AE84(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224AE84 *v0 = param1;
    s32 v1, v2;

    v0->unk_08 += v0->unk_10;
    v0->unk_0C += v0->unk_14;
    v0->unk_14 += 0x200;
    v0->unk_18++;

    if ((v0->unk_18 > 10) || (v0->unk_08 > ((256 + 16) << 8)) || (v0->unk_08 < ((-256 - 16) * 0x100)) || (v0->unk_0C > ((192 + 16) << 8))) {
        sub_0200D0F4(v0->unk_04);
        SysTask_Done(param0);
        v0->unk_04 = NULL;
        v0->unk_00 = NULL;
        return;
    }

    CP_SetDiv32_32(v0->unk_08, 0x100);
    v1 = CP_GetDivResult32();

    CP_SetDivImm32_32(v0->unk_0C, 0x100);
    v2 = CP_GetDivResult32();

    sub_0200D500(v0->unk_04, v1, v2, (256 * FX32_ONE));
}

static void ov17_0224AF3C(UnkStruct_ov17_0224DF54 *param0, int param1, int param2, int param3)
{
    int v0, v1, v2, v3, v4;

    if ((param2 == 2) || (param0->unk_A3C.unk_0A[param1] == 0)) {
        return;
    }

    v3 = param0->unk_A3C.unk_0A[param1];
    CP_SetDiv32_32(v3, 2);

    if (param3 == 0) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    v4 = CP_GetDivResult32();

    if (v4 > 16) {
        v4 = 16;
    }

    for (v0 = 0; v0 < v4; v0++) {
        v2 = ov17_0224AD70(param0, param1, v1);

        if (v2 == 0) {
            break;
        }
    }
}

void ov17_0224AFA8(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 99, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33013);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 98, 1, 33010);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 97, 1, 33010);
}

void ov17_0224AFF8(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33013);
    SpriteGfxHandler_UnloadCellObjById(param0, 33010);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33010);
}

BOOL ov17_0224B01C(UnkStruct_ov17_0224DF54 *param0)
{
    CellActorData *v0;
    UnkStruct_ov17_0224B058 *v1;

    v1 = &param0->unk_14.unk_910;
    v0 = SpriteActor_LoadResources(param0->unk_14.unk_58, param0->unk_14.unk_5C, &Unk_ov17_0225472C);

    sub_0200D500(v0, -1, (0x16 * 8), (256 * FX32_ONE));
    SpriteActor_UpdateObject(v0->unk_00);
    SpriteActor_EnableObject(v0, 0);

    v1->unk_04 = v0;
    return 1;
}

void ov17_0224B058(UnkStruct_ov17_0224DF54 *param0)
{
    UnkStruct_ov17_0224B058 *v0;

    v0 = &param0->unk_14.unk_910;
    sub_0200D0F4(v0->unk_04);
}

void ov17_0224B068(UnkStruct_ov17_0224A1EC *param0, int param1)
{
    return;
}

static int ov17_0224B06C(int param0)
{
    int v0;

    if (param0 == (-0x200 - 0x80)) {
        v0 = 0xc0;
    } else if (param0 == -0x200) {
        v0 = 0x100;
    } else {
        v0 = (param0 - (-0x200 - 0x80)) * (0x100 - 0xc0) / (-0x200 - (-0x200 - 0x80));
        v0 += 0xc0;
    }

    return v0;
}

void ov17_0224B09C(Sprite *param0, UnkStruct_ov17_0224B09C *param1)
{
    s32 v0, v1;

    v0 = param1->unk_0C;
    v1 = ov17_0224B06C(v0);

    {
        fx32 v2;

        if (v1 == 0x100) {
            v2 = FX32_ONE;
        } else {
            v2 = FX32_ONE * v1 / 0x100;
        }

        ov22_0225B0EC(param1->unk_00, v2, v2, FX32_ONE);
    }
}

void ov17_0224B0CC(UnkStruct_ov17_0224A1EC *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov17_0224B09C(param0->unk_48[v0], &param0->unk_04[v0]);
    }
}

static BOOL ov17_0224B0E8(UnkStruct_ov17_0224DF54 *param0, int param1, const UnkStruct_ov17_0224EDE0 *param2)
{
    int v0;
    int v1, v2, v3;
    int v4, v5;

    v4 = ov17_0223F0BC(param0->unk_A3C.unk_2F, 3);
    v0 = (param2->unk_02 == param1) ? 0 : 1;
    v1 = 256 / ov17_0223F0BC(param0->unk_A3C.unk_2F, 4) * param2->unk_06;
    v5 = (256 - v4) / 2;
    v1 += v5;
    v2 = Unk_ov17_022549BC[param2->unk_07];

    {
        s16 v6, v7;
        int v8;

        for (v8 = 0; v8 < (((16 * 2) / 2) * 4 + 4); v8++) {
            if (param0->unk_14.unk_D8[v8] != NULL) {
                sub_0200D5A0(param0->unk_14.unk_D8[v8], &v6, &v7, (256 * FX32_ONE));

                if ((v6 == v1) && (v7 == v2) && (sub_0200D37C(param0->unk_14.unk_D8[v8]) != 2)) {
                    return 0;
                }
            }
        }
    }

    ov17_0224A46C(&param0->unk_14, param0->unk_14.unk_58, param0->unk_14.unk_5C, v0, param2->unk_03, v1, v2, param2->unk_07);

    if ((param2->unk_07 == 0) && (v0 == 1)) {
        v1 += 256 / 2 - v5;
        v2 = Unk_ov17_022549BC[param0->unk_A3C.unk_05[param0->unk_00->unk_00.unk_113]];

        ov17_0224A46C(&param0->unk_14, param0->unk_14.unk_58, param0->unk_14.unk_5C, 2, param2->unk_03, v1, v2, param0->unk_A3C.unk_05[param0->unk_00->unk_00.unk_113]);
    }

    return 1;
}

void ov17_0224B20C(UnkStruct_ov17_0224DF54 *param0, const UnkStruct_ov17_0224EDE0 *param1)
{
    int v0, v1, v2;

    v1 = param1->unk_02;

    if (param0->unk_00->unk_00.unk_113 == param0->unk_00->unk_00.unk_10C) {
        (void)0;
    }

    {
        switch (param1->unk_05) {
        case 0:
            v2 = 2;
            break;
        case 1:
            v2 = 2;
            break;
        case 2:
            v2 = 1;
            break;
        case 3:
            v2 = 1;
            break;
        default:
            v2 = 0;
            break;
        }

        param0->unk_A3C.unk_0A[v1] += v2;
    }

    if (param1->unk_07 == 0) {
        for (v0 = 0; v0 < 8; v0++) {
            if (param0->unk_1AD4[v0].unk_08_2 == 0) {
                param0->unk_1AD4[v0] = *param1;
                break;
            } else if (param0->unk_1AD4[v0].unk_06 == param1->unk_06) {
                break;
            }
        }

        if (v0 >= 8) {
            (void)0;
        }
    }

    if (param1->unk_04 == 0) {
        param0->unk_14.unk_A19[param1->unk_02]++;
        param0->unk_14.unk_A1D[param1->unk_02]++;
    } else {
        param0->unk_14.unk_A19[param1->unk_02] = 0;
        param0->unk_14.unk_A1D[param1->unk_02] = 0;
    }

    if (param1->unk_04 != 2) {
        param0->unk_14.unk_A28[param1->unk_02]++;
    } else {
        param0->unk_14.unk_A21[param1->unk_02]++;
        param0->unk_14.unk_A28[param1->unk_02] = 0;
    }

    if (param1->unk_07 > 0) {
        switch (param1->unk_04) {
        case 0:
            param0->unk_14.unk_A25++;
            break;
        case 1:
            param0->unk_14.unk_A26++;
            break;
        case 2:
            param0->unk_14.unk_A27++;
            break;
        }
    }

    ov17_0224A7E0(&param0->unk_14, param0->unk_14.unk_58, param0->unk_14.unk_5C, param1->unk_04, param1->unk_02, param1->unk_07);
    ov17_0224B0E8(param0, param0->unk_00->unk_00.unk_113, param1);
    ov17_0224B528(param0, param1->unk_02, param1->unk_07, param1->unk_03, param1->unk_08_0, param0->unk_A3C.unk_0A[v1]);
    ov17_0224AF3C(param0, param1->unk_02, param1->unk_04, param1->unk_07);
    ov17_0224C89C(param0, param1);

    if (param1->unk_02 == param0->unk_00->unk_00.unk_113) {
        if (param1->unk_04 == 0) {
            ov17_0224CB00(param0, param1->unk_06, 1);
        } else if (param1->unk_04 == 1) {
            ov17_0224CB00(param0, param1->unk_06, 0);
        }
    }

    if ((param1->unk_07 == 0) && (param1->unk_08_0 == 1)) {
        if (param0->unk_14.unk_A1D[param1->unk_02] == param0->unk_A3C.unk_2E) {
            ov17_0224CB80(param0, 1);
        } else if (param0->unk_14.unk_A21[param1->unk_02] == 0) {
            ov17_0224CB80(param0, 0);
        }
    } else if ((param1->unk_07 > 0) && (param1->unk_08_0 == 1)) {
        if (param0->unk_A3C.unk_2E * (4 - 1) == param0->unk_14.unk_A25 + param0->unk_14.unk_A26 + param0->unk_14.unk_A27) {
            if (param0->unk_A3C.unk_2E * (4 - 1) == param0->unk_14.unk_A25) {
                ov17_0224CB80(param0, 1);
            } else if (param0->unk_14.unk_A27 == 0) {
                ov17_0224CB80(param0, 0);
            }
        }
    }

    if (param1->unk_08_0 == 1) {
        Sound_PlayEffect(1781);
    } else {
        Sound_PlayEffect(1780);
    }

    if ((param0->unk_14.unk_A2C == 0) || ((param0->unk_14.unk_A2C > 0) && ((param1->unk_07 == 0) || (param1->unk_02 == param0->unk_00->unk_00.unk_113)))) {
        switch (param1->unk_04) {
        case 0:
            if (param0->unk_14.unk_A1D[param1->unk_02] == param0->unk_A3C.unk_2E) {
                Sound_PlayEffect(1776);
            } else if (param0->unk_14.unk_A1D[param1->unk_02] == param0->unk_A3C.unk_2E - 1) {
                Sound_PlayEffect(1775);
            } else {
                Sound_PlayEffect(1774);
            }
            break;
        case 1:
            Sound_PlayEffect(1777);
            break;
        case 2:
            if (param1->unk_08_1 == 1) {
                Sound_PlayEffect(1778);
            } else {
                Sound_PlayEffect(1526);
            }
            break;
        }
    }
}

static void ov17_0224B528(UnkStruct_ov17_0224DF54 *param0, int param1, int param2, int param3, int param4, int param5)
{
    int v0, v1;
    UnkStruct_ov17_0224B5C8 *v2;

    v2 = &param0->unk_EA4[param1];
    v1 = -1;

    for (v0 = v2->unk_20; v0 < (16 * 2); v0++) {
        if (v2->unk_00[v0] == 0) {
            v1 = v0;
            break;
        }
    }

    if (v1 == -1) {
        for (v0 = 0; v0 < v2->unk_20; v0++) {
            if (v2->unk_00[v0] == 0) {
                v1 = v0;
                break;
            }
        }
    }

    if (v1 == -1) {
        GF_ASSERT(FALSE);
        return;
    }

    v2->unk_00[v1] = param3;
    v2->unk_21 = param2;
    v2->unk_22 = param4;
    v2->unk_23 = param5;
}

void ov17_0224B59C(UnkStruct_ov17_0224DF54 *param0)
{
    param0->unk_08 = SysTask_Start(ov17_0224B5F0, param0, ((30000 + 9000) + 10));
}

void ov17_0224B5B8(UnkStruct_ov17_0224DF54 *param0)
{
    SysTask_Done(param0->unk_08);
    param0->unk_08 = NULL;
}

BOOL ov17_0224B5C8(UnkStruct_ov17_0224DF54 *param0)
{
    UnkStruct_ov17_0224B5C8 *v0;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        v0 = &param0->unk_EA4[v1];

        if (v0->unk_00[v0->unk_20] != 0) {
            return 0;
        }
    }

    return 1;
}

static void ov17_0224B5F0(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224B5C8 *v1;
    int v2, v3, v4;
    u32 v5;

    for (v4 = 0; v4 < 4; v4++) {
        v1 = &v0->unk_EA4[v4];
        v2 = v1->unk_00[v1->unk_20];
        v3 = 0;

        if (v2 == 0) {
            continue;
        }

        ov17_0224BD28(v0, v4, 4);

        v5 = v0->unk_A3C.unk_18 / 10000;
        v5--;

        switch (v2) {
        case 1:
            if (v0->unk_14.unk_A14[v4] == 1) {
                v3 = ov17_0224B7BC(&v1->unk_24, v0->unk_14.unk_48[v4], &v0->unk_14.unk_04[v4], v1->unk_21, v1->unk_22, v1->unk_23, &v0->unk_14.unk_200[v4], v5);
            } else {
                v3 = ov17_0224B8D0(&v1->unk_24, v0->unk_14.unk_48[v4], &v0->unk_14.unk_04[v4], v1->unk_21, v1->unk_22, v1->unk_23, 0, v5);
            }
            break;
        case 2:
            v3 = ov17_0224B8D0(&v1->unk_24, v0->unk_14.unk_48[v4], &v0->unk_14.unk_04[v4], v1->unk_21, v1->unk_22, v1->unk_23, 1, v5);
            break;
        case 3:
            v3 = ov17_0224BA50(&v1->unk_24, v0->unk_14.unk_48[v4], &v0->unk_14.unk_04[v4], v1->unk_21, v1->unk_22, v1->unk_23, 1, v5);
            break;
        case 4:
            v3 = ov17_0224BA50(&v1->unk_24, v0->unk_14.unk_48[v4], &v0->unk_14.unk_04[v4], v1->unk_21, v1->unk_22, v1->unk_23, 0, v5);
            break;
        default:
            GF_ASSERT(FALSE);
            break;
        }

        if (v3 == 1) {
            v1->unk_00[v1->unk_20] = 0;
            v1->unk_20++;

            if (v1->unk_20 >= (16 * 2)) {
                v1->unk_20 = 0;
            }

            MI_CpuClear8(&v1->unk_24, sizeof(UnkStruct_ov17_0224B7BC));
            ov17_0224BD28(v0, v4, 3);
        }
    }
}

static inline void inline_ov17_0224B7BC(UnkStruct_ov17_0224B7BC *param0, Sprite *param1, UnkStruct_ov17_0224B09C *param2, int param3, int param4, int param5)
{
    s32 v0, v1, v2, v3;
    s32 v4, v5;

    if (param3 == 0) {
        v4 = 100;
    } else {
        v4 = 40;
    }

    if (1) {
        v5 = (2 << 8) * param4;

        if (v5 > (100 << 8)) {
            v5 = (100 << 8);
        }

        v4 += v5 >> 8;
    }

    v0 = param0->unk_08 - param0->unk_00;
    v1 = param0->unk_0C - param0->unk_04;

    v0 = v0 * v4 / 100;
    v1 = v1 * v4 / 100;

    v2 = param0->unk_00 + v0;
    v3 = param0->unk_04 + v1;

    param2->unk_04 = v2 / 0x100;
    param2->unk_08 = v3 / 0x100;

    ov22_0225B100(param2->unk_00, param2->unk_04, param2->unk_08);
}

static BOOL ov17_0224B7BC(UnkStruct_ov17_0224B7BC *param0, Sprite *param1, UnkStruct_ov17_0224B09C *param2, int param3, int param4, int param5, UnkStruct_ov17_0224ABFC *param6, u32 param7)
{
    BOOL v0 = 0;

    switch (param0->unk_10) {
    case 0:
        param0->unk_00 = param2->unk_04 * 0x100;
        param0->unk_04 = param2->unk_08 * 0x100;
        param0->unk_08 = param0->unk_00;
        param0->unk_0C = param0->unk_04;

        {
            int v1;

            v1 = 0x500 / (param7 / 2);

            if (param4 == 1) {
                param0->unk_14_val1.unk_00 = -0x500 * 200 / 100;
                param0->unk_14_val1.unk_02 = v1 * 200 / 100;
            } else {
                param0->unk_14_val1.unk_00 = -0x500;
                param0->unk_14_val1.unk_02 = v1;
            }
        }

        ov17_0224AC78(param6, 1, 0);
        param0->unk_10++;

    case 1:
        param0->unk_0C += param0->unk_14_val1.unk_00;
        param0->unk_14_val1.unk_00 += param0->unk_14_val1.unk_02;

        if (param0->unk_0C >= param0->unk_04) {
            param0->unk_0C = param0->unk_04;
            ov17_0224AC78(param6, 1, 1);
            v0 = 1;
            param0->unk_10++;
        }
        break;
    default:
        return 1;
    }

    inline_ov17_0224B7BC(param0, param1, param2, param3, param5, param4);
    return v0;
}

static BOOL ov17_0224B8D0(UnkStruct_ov17_0224B7BC *param0, Sprite *param1, UnkStruct_ov17_0224B09C *param2, int param3, int param4, int param5, int param6, u32 param7)
{
    BOOL v0 = 0;
    s32 v1;

    switch (param0->unk_10) {
    case 0:
        param0->unk_00 = param2->unk_04 * 0x100;
        param0->unk_04 = param2->unk_08 * 0x100;
        param0->unk_08 = param0->unk_00;
        param0->unk_0C = param0->unk_04;

        {
            int v2, v3;

            v2 = param7 * 30 / 100;
            v3 = param7 - v2;

            param0->unk_14_val2.unk_00 = 16 * 0x100 / v2;
            param0->unk_14_val2.unk_04 = 16 * 0x100 / v3;

            if (param6 == 0) {
                param0->unk_14_val2.unk_00 *= -1;
                param0->unk_14_val2.unk_04 *= -1;
            }
        }

        param0->unk_10++;
    case 1:
        if (param4 == 1) {
            param0->unk_0C += param0->unk_14_val2.unk_00 * 200 / 100;
            v1 = 16 * 200 / 100;
        } else {
            param0->unk_0C += param0->unk_14_val2.unk_00;
            v1 = 16;
        }

        if (abs(param0->unk_0C - param0->unk_04) >= v1 * 0x100) {
            if (param6 == 1) {
                param0->unk_0C = param0->unk_04 + v1 * 0x100;
            } else {
                param0->unk_0C = param0->unk_04 - v1 * 0x100;
            }

            param0->unk_10++;
        }
        break;
    case 2:
        if (param4 == 1) {
            param0->unk_0C -= param0->unk_14_val2.unk_04 * 200 / 100;
        } else {
            param0->unk_0C -= param0->unk_14_val2.unk_04;
        }

        if (((param6 == 1) && (param0->unk_0C <= param0->unk_04)) || ((param6 == 0) && (param0->unk_0C >= param0->unk_04))) {
            param0->unk_0C = param0->unk_04;
            param0->unk_10++;
            v0 = 1;
        }
        break;
    default:
        return 1;
    }

    inline_ov17_0224B7BC(param0, param1, param2, param3, param5, param4);
    return v0;
}

static BOOL ov17_0224BA50(UnkStruct_ov17_0224B7BC *param0, Sprite *param1, UnkStruct_ov17_0224B09C *param2, int param3, int param4, int param5, int param6, u32 param7)
{
    BOOL v0 = 0;
    s32 v1;

    switch (param0->unk_10) {
    case 0:
        param0->unk_00 = param2->unk_04 * 0x100;
        param0->unk_04 = param2->unk_08 * 0x100;
        param0->unk_08 = param0->unk_00;
        param0->unk_0C = param0->unk_04;

        {
            int v2, v3;

            v2 = param7 * 30 / 100;
            v3 = param7 - v2;

            param0->unk_14_val3.unk_04 = (65536 / 360 * 5 * 0x100) / v2;
            param0->unk_14_val3.unk_08 = -(65536 / 360 * 5 * 0x100) / v3;
            param0->unk_14_val3.unk_0C = 16 * 0x100 / v2;
            param0->unk_14_val3.unk_10 = -(16 * 0x100 / v3);

            if (param6 == 1) {
                param0->unk_14_val3.unk_04 *= -1;
                param0->unk_14_val3.unk_08 *= -1;
                param0->unk_14_val3.unk_0C *= -1;
                param0->unk_14_val3.unk_10 *= -1;
            }
        }

        param0->unk_10++;
    case 1:
        if (param4 == 1) {
            param0->unk_08 += param0->unk_14_val3.unk_0C * 200 / 100;
            v1 = 16 * 200 / 100;
            param0->unk_14_val3.unk_00 += param0->unk_14_val3.unk_04 * 200 / 100;
        } else {
            param0->unk_08 += param0->unk_14_val3.unk_0C;
            v1 = 16;
            param0->unk_14_val3.unk_00 += param0->unk_14_val3.unk_04;
        }

        if (abs(param0->unk_08 - param0->unk_00) >= v1 * 0x100) {
            if (param6 == 1) {
                param0->unk_08 = param0->unk_00 - v1 * 0x100;
            } else {
                param0->unk_08 = param0->unk_00 + v1 * 0x100;
            }

            param0->unk_0C = param0->unk_04;
            param0->unk_10++;
        }
        break;
    case 2:
        if (param4 == 1) {
            param0->unk_08 += param0->unk_14_val3.unk_10 * 200 / 100;
            param0->unk_14_val3.unk_00 += param0->unk_14_val3.unk_08 * 200 / 100;
        } else {
            param0->unk_08 += param0->unk_14_val3.unk_10;
            param0->unk_14_val3.unk_00 += param0->unk_14_val3.unk_08;
        }

        if (((param6 == 1) && (param0->unk_08 >= param0->unk_00)) || ((param6 == 0) && (param0->unk_08 <= param0->unk_00))) {
            param0->unk_08 = param0->unk_00;
            param0->unk_14_val3.unk_00 = 0;
            param0->unk_10++;
            v0 = 1;
        }
        break;
    default:
        return 1;
    }

    ov22_0225B0E4(param2->unk_00, param0->unk_14_val3.unk_00 / 0x100);
    inline_ov17_0224B7BC(param0, param1, param2, param3, param5, param4);
    return v0;
}

void ov17_0224BC4C(UnkStruct_ov17_0224DF54 *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_1AD4[v0].unk_08_2 = 0;
    }
}

void ov17_0224BC68(UnkStruct_ov17_0224DF54 *param0, int param1, int param2)
{
    GF_ASSERT(param0->unk_FC8[param1].unk_04 == NULL);
    MI_CpuClear8(&param0->unk_FC8[param1], sizeof(UnkStruct_ov17_0224BE50));

    param0->unk_FC8[param1].unk_00 = param0;
    param0->unk_FC8[param1].unk_1A = param1;
    param0->unk_FC8[param1].unk_19 = param2;
    param0->unk_FC8[param1].unk_08 = param0->unk_14.unk_48[param1];
    param0->unk_FC8[param1].unk_0C = &param0->unk_14.unk_04[param1];
    param0->unk_FC8[param1].unk_24_2 = 1;
    param0->unk_FC8[param1].unk_24_3 = 1;
    param0->unk_FC8[param1].unk_04 = SysTask_Start(ov17_0224BE50, &param0->unk_FC8[param1], (30000 + 9000));
}

void ov17_0224BD00(UnkStruct_ov17_0224DF54 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_FC8[v0].unk_04 != NULL) {
            SysTask_Done(param0->unk_FC8[v0].unk_04);
            param0->unk_FC8[v0].unk_04 = NULL;
        }
    }
}

void ov17_0224BD28(UnkStruct_ov17_0224DF54 *param0, int param1, int param2)
{
    if (param0->unk_FC8[param1].unk_04 == NULL) {
        return;
    }

    switch (param2) {
    case 0:
        param0->unk_FC8[param1].unk_24_5 = 0;
        param0->unk_FC8[param1].unk_24_4 = 0;
        break;
    case 1:
        param0->unk_FC8[param1].unk_24_5 = 1;
        break;
    case 2:
        param0->unk_FC8[param1].unk_24_4 = 1;
        break;
    case 3:
        param0->unk_FC8[param1].unk_24_1 = 0;
        param0->unk_FC8[param1].unk_24_0 = 0;
        param0->unk_FC8[param1].unk_24_2 = 1;
        break;
    case 4:
        if (param0->unk_FC8[param1].unk_24_1 == 0) {
            param0->unk_FC8[param1].unk_24_1 = 1;

            if (param0->unk_FC8[param1].unk_24_2 == 0) {
                param0->unk_FC8[param1].unk_20 = param0->unk_FC8[param1].unk_14;
            }
        }
        break;
    case 5:
        param0->unk_FC8[param1].unk_24_0 = 1;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

int ov17_0224BDF0(UnkStruct_ov17_0224DF54 *param0, int param1)
{
    if (param0->unk_FC8[param1].unk_04 == NULL) {
        return 1;
    }

    if ((param0->unk_FC8[param1].unk_24_5 == 1) || (param0->unk_FC8[param1].unk_19 == 0)) {
        return 1;
    }

    return 0;
}

int ov17_0224BE24(UnkStruct_ov17_0224DF54 *param0, int param1)
{
    if (param0->unk_FC8[param1].unk_04 == NULL) {
        return 1;
    }

    if (param0->unk_FC8[param1].unk_24_1 == 1) {
        return 1;
    }

    return 0;
}

static void ov17_0224BE50(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224BE50 *v0 = param1;

    ov17_0224BE64(v0);
    ov17_0224BF58(v0);
}

static void ov17_0224BE64(UnkStruct_ov17_0224BE50 *param0)
{
    u64 v0, v1;
    u32 v2;
    int v3, v4;

    if ((param0->unk_24_5 == 1) || (param0->unk_19 == 0)) {
        return;
    }

    v0 = param0->unk_00->unk_107C;
    v0 *= 10000;
    v0 %= param0->unk_00->unk_A3C.unk_18;
    v1 = v0 * 0x2000 / (param0->unk_00->unk_A3C.unk_18 / 2);
    v3 = 1;

    if (v0 >= (param0->unk_00->unk_A3C.unk_18 / 2)) {
        v1 = 0x2000 - (v1 - 0x2000);
        v3 = 0;
    }

    v2 = param0->unk_10;
    v4 = param0->unk_24_6;

    param0->unk_10 = (-0x200 - 0x80) * 0x100 + v1;
    param0->unk_24_6 = v3;

    if (param0->unk_24_4 == 1) {
        if ((param0->unk_10 == (-0x200 - 0x80) * 0x100) || (v4 == 0) && (v3 == 1)) {
            param0->unk_10 = (-0x200 - 0x80) * 0x100;
            param0->unk_24_4 = 0;
            param0->unk_24_5 = 1;
        }
    }

    param0->unk_0C->unk_0C = param0->unk_10 / 0x100;
    ov17_0224B09C(param0->unk_08, param0->unk_0C);
}

static void ov17_0224BF58(UnkStruct_ov17_0224BE50 *param0)
{
    u32 v0;
    s32 v1, v2;
    u64 v3, v4;

    v0 = param0->unk_14;
    v3 = param0->unk_00->unk_107C;
    v3 *= 10000;
    v3 %= param0->unk_00->unk_A3C.unk_18 * 2;
    v4 = v3 * 360 / (param0->unk_00->unk_A3C.unk_18 * 2);
    v4 <<= 8;

    param0->unk_14 = v4;

    if (param0->unk_24_1 > 0) {
        return;
    }

    if (param0->unk_24_3 == 1) {
        v0 = v4;
        param0->unk_24_3 = 0;
    }

    if (param0->unk_24_2 == 1) {
        u32 v5;
        u32 v6, v7;

        if (v0 > v4) {
            v5 = v0 + v4;
        } else {
            v5 = v4;
        }

        v6 = param0->unk_20;
        v7 = v0;

        if ((param0->unk_20 == v4) || ((v7 <= v6) && (v6 <= v5)) || ((param0->unk_20 <= v4) && (v0 > v4))) {
            param0->unk_24_2 = 0;
        } else {
            return;
        }
    }

    if (param0->unk_24_0 == 1) {
        if ((v4 == 0) || (v0 > v4)) {
            v4 = 0;
            param0->unk_24_0 = 0;
            param0->unk_24_1 = 1;
            param0->unk_20 = v4;
        }
    }

    v2 = (param0->unk_19 == 0) ? 3 : 3;
    v1 = sub_0201D1D4(param0->unk_14 >> 8) * v2 / FX32_ONE;

    param0->unk_0C->unk_04 = v1 + Unk_ov17_022546F4[param0->unk_19][0] - v2;
    ov22_0225B100(param0->unk_0C->unk_00, param0->unk_0C->unk_04, param0->unk_0C->unk_08);
}

static void ov17_0224C0C0(UnkStruct_ov17_0224DF54 *param0, int param1, const UnkStruct_ov17_0224C0C0 *param2)
{
    u32 v0;

    if (param1 != 0) {
        GF_ASSERT(param2 != NULL);
    }

    switch (param1) {
    case 0:
        break;
    case 1:
        StringTemplate_SetNickname(param0->unk_14.unk_88, 0, Pokemon_GetBoxPokemon(param0->unk_14.unk_00->unk_00[param2->unk_00]));
        break;
    case 2:
        v0 = sub_02095848(param0->unk_00->unk_00.unk_110, param0->unk_00->unk_00.unk_111, param0->unk_00->unk_155);
        StringTemplate_SetContestRankName(param0->unk_14.unk_88, 0, v0);
        break;
    case 3:
        StringTemplate_SetNumber(param0->unk_14.unk_88, 0, param2->unk_04, 1, 0, 1);
        break;
    case 4:
        StringTemplate_SetStrbuf(param0->unk_14.unk_88, 0, param0->unk_00->unk_00.unk_D8[param2->unk_00], param0->unk_00->unk_00.unk_F8[param2->unk_00], 1, GAME_LANGUAGE);
        StringTemplate_SetNickname(param0->unk_14.unk_88, 1, Pokemon_GetBoxPokemon(param0->unk_14.unk_00->unk_00[param2->unk_00]));
        break;
    case 5:
        StringTemplate_SetNickname(param0->unk_14.unk_88, 0, Pokemon_GetBoxPokemon(param0->unk_14.unk_00->unk_00[param2->unk_00]));
        StringTemplate_SetNumber(param0->unk_14.unk_88, 1, param2->unk_04, 1, 0, 1);
        break;
    case 6:
        v0 = sub_02095848(param0->unk_00->unk_00.unk_110, param0->unk_00->unk_00.unk_111, param0->unk_00->unk_155);
        StringTemplate_SetContestRankName(param0->unk_14.unk_88, 0, v0);
        StringTemplate_SetNumber(param0->unk_14.unk_88, 1, param2->unk_04, 1, 0, 1);
        StringTemplate_SetStrbuf(param0->unk_14.unk_88, 2, param0->unk_00->unk_00.unk_D8[param2->unk_00], param0->unk_00->unk_00.unk_F8[param2->unk_00], 1, GAME_LANGUAGE);
        StringTemplate_SetNickname(param0->unk_14.unk_88, 3, Pokemon_GetBoxPokemon(param0->unk_14.unk_00->unk_00[param2->unk_00]));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void ov17_0224C244(UnkStruct_ov17_0224DF54 *param0, MessageLoader *param1, u32 param2, int param3, const UnkStruct_ov17_0224C0C0 *param4)
{
    Strbuf *v0;
    int v1;

    if (param0->unk_00->unk_155 == 0) {
        v1 = Options_TextFrameDelay(param0->unk_00->unk_196C);
    } else {
        v1 = TEXT_SPEED_FAST;
    }

    v0 = MessageLoader_GetNewStrbuf(param1, param2);
    ov17_0224C0C0(param0, param3, param4);

    StringTemplate_Format(param0->unk_14.unk_88, param0->unk_14.unk_8C, v0);
    BGL_FillWindow(&param0->unk_14.unk_64[0], 0xff);

    param0->unk_14.unk_A18 = Text_AddPrinterWithParams(&param0->unk_14.unk_64[0], FONT_MESSAGE, param0->unk_14.unk_8C, 0, 0, v1, NULL);
    Strbuf_Free(v0);
}

void ov17_0224C2CC(UnkStruct_ov17_0224DF54 *param0, u32 param1, const UnkStruct_ov17_0224C0C0 *param2)
{
    u32 v0, v1;

    GF_ASSERT(param1 < NELEMS(Unk_ov17_0225470C));

    v0 = Unk_ov17_0225470C[param1].unk_00;
    v1 = Unk_ov17_0225470C[param1].unk_02;

    ov17_0224C244(param0, param0->unk_14.unk_84, v0, v1, param2);
}

int ov17_0224C300(UnkStruct_ov17_0224DF54 *param0)
{
    return Text_IsPrinterActive(param0->unk_14.unk_A18);
}

void ov17_0224C310(SpriteRenderer *param0, SpriteGfxHandler *param1, NARC *param2)
{
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0, param1, param2, 76, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33009);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0, param1, param2, 77, 1, 33006);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0, param1, param2, 78, 1, 33006);
}

void ov17_0224C360(SpriteGfxHandler *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0, 33009);
    SpriteGfxHandler_UnloadCellObjById(param0, 33006);
    SpriteGfxHandler_UnloadAnimObjById(param0, 33006);
}

void ov17_0224C384(UnkStruct_ov17_0224DF54 *param0, SpriteRenderer *param1, SpriteGfxHandler *param2)
{
    UnkStruct_ov17_0224C384 *v0;

    GF_ASSERT(param0->unk_14.unk_1FC == NULL);

    v0 = Heap_AllocFromHeap(23, sizeof(UnkStruct_ov17_0224C384));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224C384));

    param0->unk_14.unk_1FC = v0;

    v0->unk_08 = param0;
    v0->unk_04 = SpriteActor_LoadResources(param0->unk_14.unk_58, param0->unk_14.unk_5C, &Unk_ov17_022547FC);

    SpriteActor_UpdateObject(v0->unk_04->unk_00);
    SpriteActor_EnableObject(v0->unk_04, 0);

    v0->unk_00 = SysTask_Start(ov17_0224C414, v0, ((30000 + 10000) + 15));
}

void ov17_0224C3E4(UnkStruct_ov17_0224DF54 *param0)
{
    SysTask_Done(param0->unk_14.unk_1FC->unk_00);
    sub_0200D0F4(param0->unk_14.unk_1FC->unk_04);
    Heap_FreeToHeap(param0->unk_14.unk_1FC);

    param0->unk_14.unk_1FC = NULL;
}

static void ov17_0224C414(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224C384 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        v0->unk_0C++;
        break;
    case 1:
        break;
    case 2:
        break;
    }

    SpriteActor_UpdateObject(v0->unk_04->unk_00);
}

void ov17_0224C434(UnkStruct_ov17_0224B058 *param0, u32 param1, u32 param2, int param3)
{
    u32 v0;
    int v1, v2;

    v1 = ov17_0223F0BC(param3, 3);
    v2 = (256 - v1) / 2;
    v0 = param1 * v1 / param2;

    sub_0200D500(param0->unk_04, v0 - 1 + v2, (0x16 * 8), (256 * FX32_ONE));
    SpriteActor_EnableObject(param0->unk_04, 1);
}

void ov17_0224C47C(UnkStruct_ov17_0224B058 *param0, int param1)
{
    sub_0200D500(param0->unk_04, -1, (0x16 * 8), (256 * FX32_ONE));
    SpriteActor_EnableObject(param0->unk_04, param1);
}

void ov17_0224C49C(UnkStruct_ov17_0224C384 *param0, u32 param1, u32 param2, int param3)
{
    u32 v0, v1, v2;
    int v3, v4, v5;
    int v6, v7;

    v6 = ov17_0223F0BC(param3, 3);
    v0 = param1 * v6 / param2;

    if (param3 == 0) {
        v1 = (v6 * 10000) / ov17_0223F0BC(param3, 1);
    } else {
        v1 = (v6 * 10000) / 8;
    }

    v2 = (v0 * 10000) % v1;
    v5 = 180 * v2 / v1;
    v7 = (256 - v6) / 2;
    v3 = v0 + v7;
    v4 = (0x12 * 8);
    v4 -= sub_0201D15C(v5) * 10 / FX32_ONE;

    sub_0200D500(param0->unk_04, v3, v4, (256 * FX32_ONE));
    SpriteActor_EnableObject(param0->unk_04, 1);
}

void ov17_0224C540(UnkStruct_ov17_0224C384 *param0)
{
    SpriteActor_EnableObject(param0->unk_04, 0);
}

void ov17_0224C54C(UnkStruct_ov17_0224C384 *param0, int param1)
{
    int v0, v1;

    v0 = ov17_0223F0BC(param1, 3);
    v1 = (256 - v0) / 2;

    SpriteActor_EnableObject(param0->unk_04, 1);
    sub_0200D500(param0->unk_04, v1, (0x12 * 8), (256 * FX32_ONE));
}

int ov17_0224C57C(int param0)
{
    const u8 v0[] = { 3, 3, 4, 4 };

    GF_ASSERT(NELEMS(v0) - 1 == 3);
    return v0[param0];
}

void ov17_0224C5A0(UnkStruct_ov17_0224DF54 *param0, u32 param1, const UnkStruct_ov17_0224C0C0 *param2)
{
    u32 v0, v1;
    Strbuf *v2;

    GF_ASSERT(param1 < NELEMS(Unk_ov17_0225470C));

    if (param0->unk_1B25 == 1) {
        return;
    }

    sub_0200E060(&param0->unk_14.unk_64[1], 1, 1, 14);
    sub_0201C3C0(param0->unk_14.unk_60, 1);

    v0 = Unk_ov17_0225470C[param1].unk_00;
    v1 = Unk_ov17_0225470C[param1].unk_02;
    v2 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_84, v0);

    ov17_0224C0C0(param0, v1, param2);

    StringTemplate_Format(param0->unk_14.unk_88, param0->unk_14.unk_8C, v2);
    BGL_FillWindow(&param0->unk_14.unk_64[1], 0xff);
    Text_AddPrinterWithParams(&param0->unk_14.unk_64[1], FONT_MESSAGE, param0->unk_14.unk_8C, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v2);

    param0->unk_1B25 = 1;
}

void ov17_0224C640(UnkStruct_ov17_0224DF54 *param0)
{
    sub_0200E084(&param0->unk_14.unk_64[1], 1);
    sub_0201C3C0(param0->unk_14.unk_60, 1);
    param0->unk_1B25 = 0;
}

s64 ov17_0224C660(UnkStruct_ov17_0224DF54 *param0, const UnkStruct_ov17_02253084 *param1, int param2)
{
    s64 v0;

    v0 = (param0->unk_A3C.unk_1C * param1->unk_04) * param2;
    v0 += ((param0->unk_A3C.unk_20 + param0->unk_A3C.unk_24) * param2 + param0->unk_A3C.unk_20) / 10000;

    return v0 - param0->unk_107C;
}

s64 ov17_0224C6A8(UnkStruct_ov17_0224DF54 *param0, const UnkStruct_ov17_02253084 *param1, int param2)
{
    s64 v0;

    v0 = ov17_0224C660(param0, param1, param2);
    return v0;
}

void ov17_0224C6B0(UnkStruct_ov17_0224DF54 *param0, int param1, u8 *param2)
{
    UnkStruct_ov17_0224C6B0 *v0;

    *param2 = 0;

    v0 = Heap_AllocFromHeap(23, sizeof(UnkStruct_ov17_0224C6B0));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224C6B0));

    v0->unk_00 = param0;
    v0->unk_04 = &param0->unk_14.unk_04[param1];
    v0->unk_08 = &param0->unk_14.unk_200[param1];
    v0->unk_0C = param2;

    if (param0->unk_14.unk_A14[param1] == 1) {
        SysTask_Start(ov17_0224C718, v0, (30000 + 10000));
    } else {
        SysTask_Start(ov17_0224C7B8, v0, (30000 + 10000));
    }
}

static void ov17_0224C718(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224C6B0 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        ov17_0224AC78(v0->unk_08, 1, 0);
        v0->unk_1C = v0->unk_04->unk_08 * 0x100;
        v0->unk_18 = v0->unk_1C;
        v0->unk_14 = 0x500;
        v0->unk_10++;
    case 1:
        v0->unk_18 -= v0->unk_14;
        v0->unk_14 -= 0x200;

        if (v0->unk_18 >= v0->unk_1C) {
            v0->unk_18 = v0->unk_1C;
            v0->unk_11++;

            if (v0->unk_11 > 1) {
                v0->unk_10++;
            } else {
                v0->unk_10 = 0;
            }
        }

        v0->unk_04->unk_08 = v0->unk_18 / 0x100;
        ov22_0225B100(v0->unk_04->unk_00, v0->unk_04->unk_04, v0->unk_04->unk_08);
        break;
    default:
        *(v0->unk_0C) = 1;
        ov17_0224AC78(v0->unk_08, 1, 1);
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        return;
    }
}

static void ov17_0224C7B8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224C6B0 *v0 = param1;
    s32 v1;
    fx32 v2;

    switch (v0->unk_10) {
    case 0:
        v0->unk_28 = v0->unk_04->unk_04 * 0x100;
        v0->unk_24 = v0->unk_28;
        v0->unk_10++;
    case 1:
        v1 = sub_0201D2B8(v0->unk_20) * 4 / FX32_ONE;
        v2 = v0->unk_20;
        v0->unk_20 += (50 << FX32_SHIFT);

        if ((v0->unk_20 >> FX32_SHIFT) >= 360) {
            v0->unk_11++;

            if (v0->unk_11 > 5) {
                v0->unk_24 = v0->unk_28;
                v1 = 0;
                v0->unk_10++;
            }
        }

        v0->unk_04->unk_04 = v0->unk_24 / 0x100 + v1;
        ov22_0225B100(v0->unk_04->unk_00, v0->unk_04->unk_04, v0->unk_04->unk_08);
        break;
    default:
        *(v0->unk_0C) = 1;
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        return;
    }
}

void ov17_0224C848(UnkStruct_ov17_0224DF54 *param0)
{
    return;
}

void ov17_0224C84C(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 0, 0);
}

void ov17_0224C864(UnkStruct_ov17_0224DF54 *param0, int param1)
{
    u16 *v0;

    v0 = sub_02003164(param0->unk_14.unk_90, 0);
    sub_020039F8(v0, param0->unk_1050.unk_00, (0x1fff ^ ((1 << 4) | (1 << 3) | (1 << 2))), Unk_ov17_022546DC[param1].unk_02, Unk_ov17_022546DC[param1].unk_00);
}

void ov17_0224C89C(UnkStruct_ov17_0224DF54 *param0, const UnkStruct_ov17_0224EDE0 *param1)
{
    int v0;

    if (param1->unk_07 != 0) {
        return;
    }

    switch (param1->unk_04) {
    case 0:
    case 1:
        switch (param1->unk_03) {
        case 1:
            v0 = 1;
            break;
        case 2:
            v0 = 2;
            break;
        case 3:
            v0 = 3;
            break;
        case 4:
            v0 = 4;
            break;
        }
        break;
    case 2:
    default:
        v0 = 5;
        break;
    }

    ov17_0224C864(param0, v0);
}

void ov17_0224C8E8(UnkStruct_ov17_0224DF54 *param0, u32 param1)
{
    int v0;
    u32 v1;
    u32 v2;

    v2 = param0->unk_A3C.unk_18 >> 1;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_1AD4[v0].unk_08_2 == 1) {
            v1 = (param0->unk_1AD4[v0].unk_06 + ov17_0223F0BC(param0->unk_A3C.unk_2F, 4) / 2) * v2;
            CP_SetDiv32_32(v1, 10000);
            v1 = CP_GetDivResult32();

            if (v1 == param1) {
                ov17_0224C89C(param0, &param0->unk_1AD4[v0]);
                return;
            }
        }
    }
}

void ov17_0224C9A4(UnkStruct_ov17_0224DF54 *param0)
{
    UnkStruct_ov17_0224C9A4 *v0;

    GF_ASSERT(param0->unk_14.unk_1F0.unk_04 == NULL);

    v0 = &param0->unk_14.unk_1F0;
    v0->unk_00 = param0;
    v0->unk_04 = SysTask_Start(ov17_0224CA28, v0, (30000 + 10000));
}

void ov17_0224C9D4(UnkStruct_ov17_0224DF54 *param0)
{
    if (param0->unk_14.unk_1F0.unk_04 == NULL) {
        return;
    }

    SysTask_Done(param0->unk_14.unk_1F0.unk_04);
    param0->unk_14.unk_1F0.unk_04 = NULL;
}

void ov17_0224C9F0(UnkStruct_ov17_0224DF54 *param0, int param1)
{
    UnkStruct_ov17_0224C9A4 *v0;

    v0 = &param0->unk_14.unk_1F0;
    GF_ASSERT(v0->unk_04 != NULL);

    if (param1 == 0) {
        v0->unk_0A = 4 * 16;
    } else {
        v0->unk_0A = 3 * 16;
    }

    v0->unk_0B = 1;
    v0->unk_08 = (10 << 8);

    Sound_PlayEffect(1784);
}

static void ov17_0224CA28(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224C9A4 *v0 = param1;

    if (v0->unk_0B == 0) {
        return;
    }

    {
        u16 *v1;

        v1 = sub_02003164(v0->unk_00->unk_14.unk_90, 0);
        sub_0200393C(&v1[v0->unk_0A], &v0->unk_00->unk_1050.unk_00[v0->unk_0A], 16, v0->unk_08 >> 8, 0x7fff);
    }

    if (v0->unk_08 == 0) {
        v0->unk_0B = 0;
    } else if (v0->unk_08 > 0x100) {
        v0->unk_08 -= 0x100;
    } else {
        v0->unk_08 = 0;
    }
}

void ov17_0224CA90(UnkStruct_ov17_0224DF54 *param0, u32 param1, s32 param2, s32 param3, s32 param4, fx32 param5)
{
    param0->unk_1064.unk_00 = param2;
    param0->unk_1064.unk_04 = param3;
    param0->unk_1064.unk_08 = param4;
    param0->unk_1064.unk_0C = param5;

    sub_020146F4(param0->unk_0C, param1, ov17_0224CAC0, param0);
}

static void ov17_0224CAC0(SPLEmitter *param0)
{
    UnkStruct_ov17_0224DF54 *v0;
    UnkStruct_ov17_0224CAC0 *v1;

    v0 = sub_02014764();
    v1 = &v0->unk_1064;

    SPLEmitter_SetPosX(param0, v1->unk_00);
    SPLEmitter_SetPosY(param0, v1->unk_04);
    SPLEmitter_SetPosZ(param0, v1->unk_08);

    sub_020147B0(param0, v1->unk_0C);
}

static void ov17_0224CB00(UnkStruct_ov17_0224DF54 *param0, int param1, int param2)
{
    s32 v0;

    v0 = Unk_ov17_022546C4[param0->unk_A3C.unk_2F][param1];

    if (param2 == 0) {
        ov17_0224CA90(param0, 0, v0, -17700, -5248, FX32_ONE);
        ov17_0224CA90(param0, 1, v0, -17700, -5248, FX32_ONE);
    } else {
        ov17_0224CA90(param0, 2, v0, -17700, -5248, FX32_ONE);
        ov17_0224CA90(param0, 3, v0, -17700, -5248, FX32_ONE);
    }
}

static void ov17_0224CB80(UnkStruct_ov17_0224DF54 *param0, int param1)
{
    fx32 v0 = FX32_ONE;

    if (param1 == 0) {
        ov17_0224CA90(param0, 5, -13000, -6300, -5248, v0);
        ov17_0224CA90(param0, 6, -13000, -6300, -5248, v0);
        ov17_0224CA90(param0, 7, -13000, -6300, -5248, v0);

        ov17_0224CA90(param0, 5, (13000 + 7500), -6300, -5248, v0);
        ov17_0224CA90(param0, 6, (13000 + 7500), -6300, -5248, v0);
        ov17_0224CA90(param0, 7, (13000 + 7500), -6300, -5248, v0);
    } else {
        ov17_0224CA90(param0, 8, (-13000 - 4000), -6300, -5248, v0);
        ov17_0224CA90(param0, 9, (-13000 - 4000), -6300, -5248, v0);
        ov17_0224CA90(param0, 10, (-13000 - 4000), -6300, -5248, v0);
        ov17_0224CA90(param0, 11, (-13000 - 4000), -6300, -5248, v0);
        ov17_0224CA90(param0, 12, (-13000 - 4000), -6300, -5248, v0);

        ov17_0224CA90(param0, 8, ((13000 + 7500) - 4000), -6300, -5248, v0);
        ov17_0224CA90(param0, 9, ((13000 + 7500) - 4000), -6300, -5248, v0);
        ov17_0224CA90(param0, 10, ((13000 + 7500) - 4000), -6300, -5248, v0);
        ov17_0224CA90(param0, 11, ((13000 + 7500) - 4000), -6300, -5248, v0);
        ov17_0224CA90(param0, 12, ((13000 + 7500) - 4000), -6300, -5248, v0);
    }

    ov17_0224CD84(param0, (0x1fff ^ ((1 << 4) | (1 << 3) | (1 << 2))), 8, 16, 0, 0x7fff);
    sub_02003178(param0->unk_14.unk_90, 0x4, 0x3fff, -1, 16, 0, 0x7fff);

    G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 16);

    SysTask_Start(ov17_0224CD60, param0, 1000);
    Sound_PlayEffect(1765);
}

static void ov17_0224CD60(SysTask *param0, void *param1)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 0, 0);
    SysTask_Done(param0);
}

void ov17_0224CD84(UnkStruct_ov17_0224DF54 *param0, u32 param1, u32 param2, int param3, int param4, u16 param5)
{
    UnkStruct_ov17_0224CD84 *v0;

    v0 = &param0->unk_1050;
    v0->unk_08 = param3 << 8;
    v0->unk_0A = param4 << 8;
    v0->unk_0E = param5;
    v0->unk_06 = param1;
    v0->unk_0C = ((param4 - param3) * 0x100) / param2;
    v0->unk_10 = 1;
}

void ov17_0224CDB4(UnkStruct_ov17_0224DF54 *param0, int param1)
{
    param0->unk_1050.unk_11 = param1;
}

void ov17_0224CDC0(UnkStruct_ov17_0224DF54 *param0, int param1, int param2)
{
    int v0;
    GXRgb v1, v2;

    if (param2 == 0) {
        v1 = 0x7fff;
        v2 = 0x254a;
    } else {
        v1 = 0x254a;
        v2 = 0x7fff;
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v0 == param1) {
            ov22_0225B198(param0->unk_14.unk_04[v0].unk_00, v1);
        } else {
            ov22_0225B198(param0->unk_14.unk_04[v0].unk_00, v2);
        }
    }

    Sound_PlayEffect(1772);
}

void ov17_0224CE08(UnkStruct_ov17_0224DF54 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov22_0225B198(param0->unk_14.unk_04[v0].unk_00, 0x7fff);
    }
}

void ov17_0224CE28(UnkStruct_ov17_0224DF54 *param0)
{
    int v0, v1, v2;
    s16 v3[4];
    u8 v4[4];
    u8 v5[4];

    for (v0 = 0; v0 < 4; v0++) {
        v3[v0] = param0->unk_A3C.unk_0A[v0];
        v4[v0] = v0;
    }

    for (v0 = 0; v0 < 4 - 1; v0++) {
        for (v1 = 4 - 1; v1 > v0; v1--) {
            if (v3[v1 - 1] < v3[v1]) {
                v2 = v3[v1];
                v3[v1] = v3[v1 - 1];
                v3[v1 - 1] = v2;

                v2 = v4[v1];
                v4[v1] = v4[v1 - 1];
                v4[v1 - 1] = v2;
            }
        }
    }

    v5[0] = Unk_ov17_022549C0[0];

    for (v0 = 1; v0 < 4; v0++) {
        v5[v0] = Unk_ov17_022549C0[v0];

        if (v3[v0] == v3[v0 - 1]) {
            v5[v0] = v5[v0 - 1];
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        ov17_0224CEE4(param0, v4[v0], 0x7fff, 0x254a, v5[v0], 30, NULL);
    }
}

void ov17_0224CEE4(UnkStruct_ov17_0224DF54 *param0, int param1, GXRgb param2, GXRgb param3, int param4, int param5, u8 *param6)
{
    UnkStruct_ov17_0224CEE4 *v0;

    v0 = Heap_AllocFromHeap(23, sizeof(UnkStruct_ov17_0224CEE4));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224CEE4));

    v0->unk_00 = param0->unk_14.unk_04[param1].unk_00;
    v0->unk_08 = param2;
    v0->unk_0A = param3;
    v0->unk_10 = param4;
    v0->unk_0C = (param4 << 8) / param5;
    v0->unk_04 = param6;

    if (param6 != NULL) {
        *param6 = 0;
    }

    ov22_0225B198(v0->unk_00, param2);
    SysTask_Start(ov17_0224CF4C, v0, (30000 + 10000));
}

static void ov17_0224CF4C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224CEE4 *v0 = param1;
    u16 v1;
    int v2;

    v0->unk_0E += v0->unk_0C;
    v2 = v0->unk_0E >> 8;

    if (v2 > v0->unk_10) {
        v2 = v0->unk_10;
    }

    sub_0200393C(&v0->unk_08, &v1, 1, v2, v0->unk_0A);
    ov22_0225B198(v0->unk_00, v1);

    if (v2 >= v0->unk_10) {
        if (v0->unk_04 != NULL) {
            *(v0->unk_04) = 1;
        }

        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        return;
    }
}

BOOL ov17_0224CFA8(u32 param0)
{
    switch (param0) {
    case 50:
    case 51:
        return 0;
    }

    return 1;
}
