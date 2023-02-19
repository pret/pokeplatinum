#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_plstring_decl.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay052/struct_ov52_02256694_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay052/struct_ov52_02256694_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002B7C.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "plstring.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay052/ov52_02256694.h"

struct UnkStruct_ov52_02256694_t {
    const UnkStruct_ov52_02256694_1 * unk_00;
    UnkStruct_02018340 * unk_04;
    u32 unk_08[6];
    UnkStruct_0205AA50 unk_20;
    UnkStruct_ov25_022555E8 * unk_30;
    UnkStruct_ov25_022558C4 * unk_34[4];
    UnkStruct_ov25_02255958 unk_44;
    UnkStruct_0200B144 * unk_58;
    PLString * unk_5C;
};

static void ov52_0225670C(UnkStruct_ov52_02256694 * param0, const UnkStruct_ov52_02256694_1 * param1);
static void ov52_0225677C(UnkStruct_ov52_02256694 * param0);
static void ov52_022567E0(UnkStruct_ov25_02255224 * param0);
static void ov52_022567F4(UnkStruct_0201CD38 * param0, void * param1);
static void ov52_022568B4(UnkStruct_0201CD38 * param0, void * param1);
static void ov52_022568D8(UnkStruct_0201CD38 * param0, void * param1);
static void ov52_0225691C(UnkStruct_0201CD38 * param0, void * param1);
static void ov52_02256968(UnkStruct_0201CD38 * param0, void * param1);
static void ov52_022569B4(UnkStruct_0201CD38 * param0, void * param1);
static void ov52_02256A00(UnkStruct_0201CD38 * param0, void * param1);
static void ov52_02256A58(UnkStruct_0201CD38 * param0, void * param1);
static void ov52_02256A7C(UnkStruct_ov52_02256694 * param0);
static void ov52_02256B10(UnkStruct_ov52_02256694 * param0);
static void ov52_02256B64(UnkStruct_ov52_02256694 * param0);
static void ov52_02256BDC(UnkStruct_ov52_02256694 * param0);
static void ov52_02256C64(UnkStruct_ov52_02256694 * param0, const UnkStruct_ov52_02256694_1 * param1);

BOOL ov52_02256694 (UnkStruct_ov52_02256694 ** param0, const UnkStruct_ov52_02256694_1 * param1, UnkStruct_02018340 * param2)
{
    UnkStruct_ov52_02256694 * v0 = (UnkStruct_ov52_02256694 *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov52_02256694));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_30 = ov25_02254664();
        v0->unk_58 = sub_0200B144(1, 26, 461, 8);
        v0->unk_5C = PLString_AllocFromHeap(96, 8);
        ov52_0225670C(v0, param1);
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov52_022566EC (UnkStruct_ov52_02256694 * param0)
{
    if (param0 != NULL) {
        PLString_FreeToHeap(param0->unk_5C);
        sub_0200B190(param0->unk_58);
        ov52_0225677C(param0);
        Heap_FreeToHeap(param0);
    }
}

static void ov52_0225670C (UnkStruct_ov52_02256694 * param0, const UnkStruct_ov52_02256694_1 * param1)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            {(112 << FX32_SHIFT), (150 << FX32_SHIFT)},
            3,
            0,
            2,
            0,
            0
        },
        {
            {(112 << FX32_SHIFT), (102 << FX32_SHIFT)},
            1,
            0,
            2,
            0,
            0
        },
        {
            {(112 << FX32_SHIFT), (102 << FX32_SHIFT)},
            2,
            0,
            2,
            0,
            0
        },
        {
            {(112 << FX32_SHIFT), (150 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        }
    };
    int v1;

    sub_02006EC0(12, 99, 1, 0, 0, 1, 8);
    ov25_02255958(&param0->unk_44, 12, 97, 98, 8);

    for (v1 = 0; v1 < 4; v1++) {
        param0->unk_34[v1] = ov25_02255810(param0->unk_30, &v0[v1], &param0->unk_44);
    }

    ov25_02255914(param0->unk_34[1], 1);
    ov25_02255914(param0->unk_34[2], 1);
    ov25_02255914(param0->unk_34[3], 1);
}

static void ov52_0225677C (UnkStruct_ov52_02256694 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_34[v0]) {
            ov25_022558B0(param0->unk_30, param0->unk_34[v0]);
        }
    }

    ov25_022559B0(&param0->unk_44);
}

static const UnkStruct_ov25_0225517C Unk_ov52_02256DE4[] = {
    {0x0, ov52_022567F4, 0x0},
    {0x1, ov52_022568B4, 0x0},
    {0x2, ov52_022568D8, 0x0},
    {0x3, ov52_0225691C, 0x0},
    {0x4, ov52_02256968, 0x0},
    {0x5, ov52_022569B4, 0x0},
    {0x6, ov52_02256A00, 0x0},
    {0x7, ov52_02256A58, 0x0},
    {0x0, NULL, 0x0}
};

void ov52_022567A4 (UnkStruct_ov52_02256694 * param0, u32 param1)
{
    ov25_0225517C(Unk_ov52_02256DE4, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov52_022567C8 (UnkStruct_ov52_02256694 * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov52_022567D4 (UnkStruct_ov52_02256694 * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov52_022567E0 (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov52_02256694 * v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov52_022567F4 (UnkStruct_0201CD38 * param0, void * param1)
{
    static const UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    GXSDispCnt v1;
    UnkStruct_ov52_02256694 * v2;
    void * v3;
    NNSG2dPaletteData * v4;
    u32 v5;

    v2 = ov25_0225523C(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);

    v5 = sub_02006E3C(12, 96, v2->unk_04, 6, 0, 0, 1, 8);
    v5 /= 0x20;

    sub_02006E60(12, 95, v2->unk_04, 6, 0, 0, 1, 8);
    ov25_022546B8(0, 0);

    sub_0201A7E8(v2->unk_04, &v2->unk_20, 6, 2, 2, 24, 20, 0, v5);
    sub_0201A9F4(&v2->unk_20);

    ov52_02256A7C(v2);
    sub_02019448(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov52_022567E0(param1);
}

static void ov52_022568B4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov52_02256694 * v0 = ov25_0225523C(param1);

    sub_0201A8FC(&v0->unk_20);
    sub_02019044(v0->unk_04, 6);

    ov52_022567E0(param1);
}

static void ov52_022568D8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov52_02256694 * v0 = ov25_0225523C(param1);

    ov25_02255914(v0->unk_34[0], 0);
    ov25_02255914(v0->unk_34[1], 1);
    ov25_02255914(v0->unk_34[2], 1);
    ov25_02255914(v0->unk_34[3], 1);

    ov52_02256A7C(v0);
    ov25_02254424(1635);
    ov52_022567E0(param1);
}

static void ov52_0225691C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov52_02256694 * v0 = ov25_0225523C(param1);

    ov25_02255914(v0->unk_34[0], 0);
    ov25_02255914(v0->unk_34[1], 0);
    ov25_02255914(v0->unk_34[2], 1);
    ov25_02255914(v0->unk_34[3], 1);
    ov25_022558C4(v0->unk_34[1], 1);

    ov52_02256B10(v0);
    ov25_02254424(1635);
    ov52_022567E0(param1);
}

static void ov52_02256968 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov52_02256694 * v0 = ov25_0225523C(param1);

    ov25_02255914(v0->unk_34[0], 0);
    ov25_02255914(v0->unk_34[1], 1);
    ov25_02255914(v0->unk_34[2], 0);
    ov25_02255914(v0->unk_34[3], 1);
    ov25_022558C4(v0->unk_34[2], 2);
    ov52_02256B64(v0);
    ov25_02254424(1646);
    ov52_022567E0(param1);
}

static void ov52_022569B4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov52_02256694 * v0 = ov25_0225523C(param1);

    ov25_02255914(v0->unk_34[0], 0);
    ov25_02255914(v0->unk_34[1], 1);
    ov25_02255914(v0->unk_34[2], 0);
    ov25_02255914(v0->unk_34[3], 1);
    ov25_022558C4(v0->unk_34[2], 2);
    ov52_02256BDC(v0);
    ov25_02254424(1646);
    ov52_022567E0(param1);
}

static void ov52_02256A00 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov52_02256694 * v0 = ov25_0225523C(param1);
    const UnkStruct_ov52_02256694_1 * v1 = ov25_02255240(param1);

    ov25_02255914(v0->unk_34[0], 1);
    ov25_02255914(v0->unk_34[1], 1);
    ov25_02255914(v0->unk_34[2], 1);
    ov25_02255914(v0->unk_34[3], 0);
    ov25_022558C4(v0->unk_34[3], 0);

    ov52_02256C64(v0, v1);
    ov25_02254424(1635);
    ov52_022567E0(param1);
}

static void ov52_02256A58 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov52_02256694 * v0 = ov25_0225523C(param1);
    const UnkStruct_ov52_02256694_1 * v1 = ov25_02255240(param1);

    ov52_02256C64(v0, v1);
    ov52_022567E0(param1);
}

static void ov52_02256A7C (UnkStruct_ov52_02256694 * param0)
{
    u32 v0;

    sub_0201ADA4(&param0->unk_20, 4);
    sub_0200B1B8(param0->unk_58, 0, param0->unk_5C);

    v0 = ((24 * 8) - sub_02002D7C(0, param0->unk_5C, 0)) / 2;

    sub_0201D78C(&param0->unk_20, 0, param0->unk_5C, v0, 8, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
    sub_0200B1B8(param0->unk_58, 10, param0->unk_5C);

    v0 = ((24 * 8) - sub_02002EB4(0, param0->unk_5C, 0)) / 2;

    {
        u32 v1 = 8 + 56;

        v1 -= sub_02023C5C(param0->unk_5C) * 8;
        sub_0201D78C(&param0->unk_20, 0, param0->unk_5C, v0, v1, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
    }

    sub_0201ACCC(&param0->unk_20);
}

static void ov52_02256B10 (UnkStruct_ov52_02256694 * param0)
{
    sub_0201ADA4(&param0->unk_20, 4);
    sub_0200B1B8(param0->unk_58, 1, param0->unk_5C);

    {
        u32 v0 = (24 * 8 - sub_02002EB4(0, param0->unk_5C, 0)) / 2;
        sub_0201D78C(&param0->unk_20, 0, param0->unk_5C, v0, 16, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
    }

    sub_0201ACCC(&param0->unk_20);
}

static void ov52_02256B64 (UnkStruct_ov52_02256694 * param0)
{
    u32 v0;

    sub_0201ADA4(&param0->unk_20, 4);
    sub_0200B1B8(param0->unk_58, 2, param0->unk_5C);

    v0 = ((24 * 8) - sub_02002D7C(0, param0->unk_5C, 0)) / 2;

    sub_0201D78C(&param0->unk_20, 0, param0->unk_5C, v0, 8, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
    sub_0200B1B8(param0->unk_58, 3, param0->unk_5C);
    sub_0201D78C(&param0->unk_20, 0, param0->unk_5C, 16, 24, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
    sub_0201ACCC(&param0->unk_20);
}

asm static void ov52_02256BDC (UnkStruct_ov52_02256694 * param0)
{
    push {r4, lr}
    sub sp, #0x10
    add r4, r0, #0
    add r0, #0x20
    mov r1, #4
    bl sub_0201ADA4
    ldr r0, [r4, #0x58]
    ldr r2, [r4, #0x5c]
    mov r1, #2
    bl sub_0200B1B8
    mov r0, #0
    ldr r1, [r4, #0x5c]
    add r2, r0, #0
    bl sub_02002D7C
    mov r1, #0xc0
    sub r0, r1, r0
    lsr r3, r0, #1
    mov r0, #8
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10804
    mov r1, #0
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    add r0, r4, #0
    ldr r2, [r4, #0x5c]
    add r0, #0x20
    bl sub_0201D78C
    ldr r0, [r4, #0x58]
    ldr r2, [r4, #0x5c]
    mov r1, #4
    bl sub_0200B1B8
    mov r0, #0
    ldr r1, [r4, #0x5c]
    add r2, r0, #0
    bl sub_02002EB4
    mov r1, #0xc0
    sub r0, r1, r0
    lsr r3, r0, #1
    mov r0, #0x18
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10804
    mov r1, #0
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    add r0, r4, #0
    ldr r2, [r4, #0x5c]
    add r0, #0x20
    bl sub_0201D78C
    add r4, #0x20
    add r0, r4, #0
    bl sub_0201ACCC
    add sp, #0x10
    pop {r4, pc}
    nop
}

static void ov52_02256C64 (UnkStruct_ov52_02256694 * param0, const UnkStruct_ov52_02256694_1 * param1)
{
    static const u8 v0[] = {
        6, 7, 8, 9,
    };
    u32 v1;
    int v2;

    sub_0201ADA4(&param0->unk_20, 4);
    sub_0200B1B8(param0->unk_58, 5, param0->unk_5C);

    v1 = ((24 * 8) - sub_02002D7C(0, param0->unk_5C, 0)) / 2;
    sub_0201D78C(&param0->unk_20, 0, param0->unk_5C, v1, 8, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);

    for (v2 = 0; v2 < 4; v2++) {
        sub_0200B1B8(param0->unk_58, v0[v2], param0->unk_5C);
        sub_0201D78C(&param0->unk_20, 0, param0->unk_5C, 8, 32 + 16 * v2, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
        PLString_FromInteger(param0->unk_5C, param1->unk_00[v2], 2, 2, 1);
        sub_0201D78C(&param0->unk_20, 0, param0->unk_5C, 160, 32 + 16 * v2, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
    }

    sub_0201ACCC(&param0->unk_20);
}
