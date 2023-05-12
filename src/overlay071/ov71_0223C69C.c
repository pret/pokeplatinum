#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02072014.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_02002B7C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_02023790.h"
#include "unk_0202CBE4.h"
#include "overlay071/ov71_0223C69C.h"

static void ov71_0223CD64(UnkStruct_0205AA50 * param0, const u32 param1, const u32 param2, const u32 param3, Strbuf *param4, const u32 param5, const u8 param6, const int param7);
static void ov71_0223CDB0(UnkStruct_0205AA50 * param0, const u32 param1, const u32 param2, const u32 param3, const Strbuf *param4);

static const UnkStruct_ov61_0222C884 Unk_ov71_0223D670[] = {
    {0x7, 0x2, 0x4, 0x11, 0x2, 0xF, 0x6F},
    {0x7, 0x2, 0x6, 0x11, 0x2, 0xF, 0x91},
    {0x7, 0x2, 0x9, 0x11, 0x2, 0xF, 0xB3},
    {0x7, 0x2, 0xC, 0x11, 0x2, 0xF, 0xD5},
    {0x7, 0x2, 0xF, 0x11, 0x2, 0xF, 0xF7},
    {0x7, 0x2, 0x12, 0x1C, 0x2, 0xF, 0x119},
    {0x7, 0x2, 0x14, 0x1C, 0x2, 0xF, 0x151},
    {0x7, 0x2, 0x2, 0x1C, 0x4, 0xF, 0xC1},
    {0x7, 0x2, 0x7, 0x1C, 0x2, 0xF, 0x131},
    {0x7, 0x2, 0x9, 0x1C, 0x2, 0xF, 0x169},
    {0x7, 0x2, 0xB, 0x1C, 0x2, 0xF, 0x1A1}
};

void ov71_0223C69C (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1)
{
    u8 v0;
    const UnkStruct_ov61_0222C884 * v1 = Unk_ov71_0223D670;

    for (v0 = 0; v0 < 11; v0++) {
        sub_0201A8D4(param0, &param1[v0], &v1[v0]);
    }

    sub_020196C0(param0, 7, 0, 1, 0);
}

void ov71_0223C6D4 (UnkStruct_0205AA50 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 11; v0++) {
        sub_0201A8FC(&param0[v0]);
    }
}

static const int Unk_ov71_0223D644[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA
};

void ov71_0223C6F0 (UnkStruct_0205AA50 * param0, const UnkStruct_02072014 * param1)
{
    u8 v0;
    UnkStruct_0200B144 * v1;
    Strbuf* v2;

    sub_0201AE78(&param0[0], 0, 0, 0, 17 * 8, 2 * 8);
    sub_0201AE78(&param0[1], 0, 0, 0, 17 * 8, 2 * 8);
    sub_0201AE78(&param0[2], 0, 0, 0, 17 * 8, 2 * 8);
    sub_0201AE78(&param0[3], 0, 0, 0, 17 * 8, 2 * 8);
    sub_0201AE78(&param0[4], 0, 0, 0, 17 * 8, 2 * 8);
    sub_0201AE78(&param0[5], 0, 0, 0, 28 * 8, 2 * 8);
    sub_0201AE78(&param0[6], 0, 0, 0, 28 * 8, 2 * 8);

    v1 = sub_0200B144(0, 26, 616, 25);
    v2 = sub_02023790(32, 25);

    for (v0 = 0; v0 < 7; v0++) {
        if ((v0 != 3) || (v0 == 3) && (param1->unk_04_3)) {
            sub_0200B1B8(v1, Unk_ov71_0223D644[v0], v2);
            sub_0201D78C(&param0[v0], 0, v2, 0, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);
        }
    }

    {
        Strbuf* v3 = sub_02023790(32, 25);
        UnkStruct_0200B358 * v4 = sub_0200B368(6, 32, 25);

        ov71_0223CD64(&param0[0], (8 * 17), 0, 0, v2, param1->unk_28, 5, 2);
        sub_02023D28(v2, param1->unk_08);
        ov71_0223CDB0(&param0[1], (8 * 17), 0, 0, v2);

        {
            u32 v5;

            sub_0200B60C(v4, 5, param1->unk_1C, 6, 0, 1);
            sub_0200B1B8(v1, 14, v3);
            sub_0200C388(v4, v2, v3);

            v5 = (8 * 17) - sub_02002D7C(0, v2, 0);

            sub_0201D78C(&param0[2], 0, v2, v5, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);
        }

        if (param1->unk_04_3) {
            u32 v6;

            sub_0200B60C(v4, 5, param1->unk_20, 3, 0, 1);
            sub_0200B1B8(v1, 21, v3);
            sub_0200C388(v4, v2, v3);

            v6 = (8 * 17) - sub_02002D7C(0, v2, 0);

            sub_0201D78C(&param0[3], 0, v2, v6, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);
        }

        ov71_0223CD64(&param0[4], (8 * 17), 0, 0, v2, param1->unk_24, 9, 1);

        {
            u32 v7;

            if (param1->unk_04_1) {
                sub_0200B60C(v4, 0, sub_0202CC58(param1->unk_18), 3, 1, 1);
                sub_0200B60C(v4, 1, sub_0202CC5C(param1->unk_18), 2, 2, 1);
                sub_0200B1B8(v1, 16, v3);
            } else {
                sub_0200B60C(v4, 0, param1->unk_2A, 3, 1, 1);
                sub_0200B60C(v4, 1, param1->unk_2E, 2, 2, 1);
                sub_0200B1B8(v1, 15, v3);
            }

            sub_0200C388(v4, v2, v3);
            v7 = (8 * 28) - sub_02002D7C(0, v2, 0);
            sub_0201D78C(&param0[5], 0, v2, v7, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);
        }

        {
            u32 v8;

            sub_0200B60C(v4, 2, param1->unk_2F, 2, 2, 1);
            sub_0200C2E0(v4, 3, param1->unk_30);
            sub_0200B60C(v4, 4, param1->unk_31, 2, 2, 1);
            sub_0200B1B8(v1, 17, v3);
            sub_0200C388(v4, v2, v3);

            v8 = (8 * 28) - sub_02002D7C(0, v2, 0);

            sub_0201D78C(&param0[6], 0, v2, v8, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);
        }

        sub_020237BC(v3);
        sub_0200B3F0(v4);
    }

    sub_020237BC(v2);
    sub_0200B190(v1);
}

asm void ov71_0223CA28 (UnkStruct_0205AA50 * param0, const UnkStruct_02072014 * param1)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x18
    add r6, r0, #0
    mov r0, #0xe0
    str r0, [sp]
    mov r0, #0x20
    str r1, [sp, #0x10]
    mov r1, #0
    str r0, [sp, #4]
    add r0, r6, #0
    add r0, #0x70
    add r2, r1, #0
    add r3, r1, #0
    bl sub_0201AE78
    mov r1, #0
    mov r0, #0xe0
    str r0, [sp]
    mov r0, #0x10
    str r0, [sp, #4]
    add r0, r6, #0
    add r0, #0x80
    add r2, r1, #0
    add r3, r1, #0
    bl sub_0201AE78
    mov r1, #0
    mov r0, #0xe0
    str r0, [sp]
    mov r0, #0x10
    str r0, [sp, #4]
    add r0, r6, #0
    add r0, #0x90
    add r2, r1, #0
    add r3, r1, #0
    bl sub_0201AE78
    mov r1, #0
    mov r0, #0xe0
    str r0, [sp]
    mov r0, #0x10
    str r0, [sp, #4]
    add r0, r6, #0
    add r0, #0xa0
    add r2, r1, #0
    add r3, r1, #0
    bl sub_0201AE78
    mov r2, #0x9a
    mov r0, #0
    mov r1, #0x1a
    lsl r2, r2, #2
    mov r3, #0x19
    bl sub_0200B144
    add r7, r0, #0
    mov r0, #0x20
    mov r1, #0x19
    bl sub_02023790
    add r5, r0, #0
    mov r4, #7
 _0223CAA4:
    ldr r1, = Unk_ov71_0223D644
    lsl r2, r4, #2
    ldr r1, [r1, r2]
    add r0, r7, #0
    add r2, r5, #0
    bl sub_0200B1B8
    mov r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    ldr r0, = 0x10200
    mov r1, #0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    lsl r0, r4, #4
    add r0, r6, r0
    add r2, r5, #0
    add r3, r1, #0
    bl sub_0201D78C
    add r0, r4, #1
    lsl r0, r0, #0x18
    lsr r4, r0, #0x18
    cmp r4, #0xb
    blo _0223CAA4
    mov r0, #0x20
    mov r1, #0x19
    bl sub_02023790
    str r0, [sp, #0x14]
    mov r0, #6
    mov r1, #0x20
    mov r2, #0x19
    bl sub_0200B368
    ldr r1, [sp, #0x10]
    add r4, r0, #0
    add r1, #0x33
    ldrb r1, [r1]
    cmp r1, #0
    beq _0223CB6E
    mov r1, #2
    str r1, [sp]
    mov r2, #1
    str r2, [sp, #4]
    ldr r2, [sp, #0x10]
    add r3, r1, #0
    add r2, #0x32
    ldrb r2, [r2]
    bl sub_0200B60C
    ldr r2, [sp, #0x10]
    add r0, r4, #0
    add r2, #0x33
    ldrb r2, [r2]
    mov r1, #3
    bl sub_0200C2E0
    mov r3, #2
    ldr r2, [sp, #0x10]
    str r3, [sp]
    mov r0, #1
    str r0, [sp, #4]
    add r2, #0x34
    ldrb r2, [r2]
    add r0, r4, #0
    mov r1, #4
    bl sub_0200B60C
    mov r0, #1
    str r0, [sp]
    str r0, [sp, #4]
    ldr r2, [sp, #0x10]
    add r0, r4, #0
    ldrh r2, [r2, #0x2c]
    mov r1, #0
    mov r3, #3
    bl sub_0200B60C
    mov r3, #2
    ldr r2, [sp, #0x10]
    str r3, [sp]
    mov r1, #1
    str r1, [sp, #4]
    add r2, #0x35
    ldrb r2, [r2]
    add r0, r4, #0
    bl sub_0200B60C
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0x11
    bl sub_0200B1B8
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_0200C388
    b _0223CBA6
 _0223CB6E:
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0xc
    bl sub_0200B1B8
    mov r1, #0
    str r1, [sp]
    mov r0, #2
    str r0, [sp, #4]
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r3, r1, #0
    bl sub_0200B48C
    mov r3, #0
    str r3, [sp]
    mov r0, #2
    str r0, [sp, #4]
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    mov r1, #1
    bl sub_0200B48C
    add r0, r7, #0
    mov r1, #0x14
    add r2, r5, #0
    bl sub_0200B1B8
 _0223CBA6:
    mov r0, #0
    add r1, r5, #0
    add r2, r0, #0
    bl sub_02002D7C
    mov r1, #0xe0
    sub r3, r1, r0
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x70
    add r2, r5, #0
    str r1, [sp, #0xc]
    bl sub_0201D78C
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0xf
    bl sub_0200B1B8
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_0200C388
    mov r0, #0
    add r1, r5, #0
    add r2, r0, #0
    bl sub_02002D7C
    mov r1, #0xe0
    sub r3, r1, r0
    mov r0, #0x10
    str r0, [sp]
    mov r1, #0
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x70
    add r2, r5, #0
    str r1, [sp, #0xc]
    bl sub_0201D78C
    mov r0, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r2, [sp, #0x10]
    add r0, r4, #0
    ldr r2, [r2, #0x38]
    mov r1, #5
    mov r3, #6
    bl sub_0200B60C
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0x16
    bl sub_0200B1B8
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_0200C388
    mov r0, #0
    add r1, r5, #0
    add r2, r0, #0
    bl sub_02002D7C
    mov r1, #0xe0
    sub r3, r1, r0
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x80
    add r2, r5, #0
    str r1, [sp, #0xc]
    bl sub_0201D78C
    add r0, r7, #0
    mov r1, #0x12
    add r2, r5, #0
    bl sub_0200B1B8
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x90
    add r2, r5, #0
    mov r3, #0x70
    str r1, [sp, #0xc]
    bl sub_0201D78C
    mov r2, #0
    ldr r0, [sp, #0x10]
    str r5, [sp]
    ldr r0, [r0, #0x40]
    mov r1, #0xe0
    str r0, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #1
    str r0, [sp, #0xc]
    add r0, r6, #0
    add r0, #0x90
    add r3, r2, #0
    bl ov71_0223CD64
    add r0, r7, #0
    mov r1, #0x13
    add r2, r5, #0
    bl sub_0200B1B8
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r0, r6, #0
    add r0, #0x90
    add r2, r5, #0
    mov r3, #0xb0
    str r1, [sp, #0xc]
    bl sub_0201D78C
    ldr r0, [sp, #0x10]
    str r5, [sp]
    ldr r0, [r0, #0x3c]
    mov r1, #0xe0
    str r0, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #1
    str r0, [sp, #0xc]
    add r0, r6, #0
    add r0, #0x90
    mov r2, #0x40
    mov r3, #0
    bl ov71_0223CD64
    mov r0, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r2, [sp, #0x10]
    add r0, r4, #0
    ldr r2, [r2, #0x44]
    mov r1, #5
    mov r3, #6
    bl sub_0200B60C
    ldr r2, [sp, #0x14]
    add r0, r7, #0
    mov r1, #0x16
    bl sub_0200B1B8
    ldr r2, [sp, #0x14]
    add r0, r4, #0
    add r1, r5, #0
    bl sub_0200C388
    mov r0, #0
    add r1, r5, #0
    add r2, r0, #0
    bl sub_02002D7C
    mov r1, #0xe0
    sub r3, r1, r0
    mov r1, #0
    str r1, [sp]
    ldr r0, = 0x10200
    str r1, [sp, #4]
    str r0, [sp, #8]
    add r6, #0xa0
    add r0, r6, #0
    add r2, r5, #0
    str r1, [sp, #0xc]
    bl sub_0201D78C
    ldr r0, [sp, #0x14]
    bl sub_020237BC
    add r0, r4, #0
    bl sub_0200B3F0
    add r0, r5, #0
    bl sub_020237BC
    add r0, r7, #0
    bl sub_0200B190
    add sp, #0x18
    pop {r3, r4, r5, r6, r7, pc}
}

void ov71_0223CD44 (UnkStruct_0205AA50 * param0, const u8 param1, const u8 param2)
{
    u8 v0;

    for (v0 = param1; v0 <= param2; v0++) {
        sub_0201ACF4(&param0[v0]);
    }
}

static void ov71_0223CD64 (UnkStruct_0205AA50 * param0, const u32 param1, const u32 param2, const u32 param3, Strbuf *param4, const u32 param5, const u8 param6, const int param7)
{
    u32 v0;

    sub_020238A0(param4, param5, param6, param7, 1);
    v0 = sub_02002D7C(0, param4, 0);
    sub_0201D78C(param0, 0, param4, param1 - (v0 + param2), param3, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);
}

static void ov71_0223CDB0 (UnkStruct_0205AA50 * param0, const u32 param1, const u32 param2, const u32 param3, const Strbuf *param4)
{
    u32 v0;

    v0 = sub_02002D7C(0, param4, 0);
    sub_0201D78C(param0, 0, param4, param1 - (v0 + param2), param3, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);
}

void ov71_0223CDE8 (UnkStruct_0205AA50 * param0, const UnkStruct_02072014 * param1, Strbuf *param2)
{
    int v0;

    GF_ASSERT(param1->unk_18 != NULL);

    v0 = sub_0202CC58(param1->unk_18);

    if (v0 > 999) {
        v0 = 999;
    }

    sub_0201AE78(&param0[5], 0, 184, 0, 40, 2 * 8);

    {
        u32 v1;
        UnkStruct_0200B144 * v2 = sub_0200B144(0, 26, 616, 25);
        Strbuf* v3 = sub_02023790(32, 25);
        Strbuf* v4 = sub_02023790(32, 25);
        UnkStruct_0200B358 * v5 = sub_0200B368((1 + 1), 32, 25);

        sub_0200B60C(v5, 0, sub_0202CC58(param1->unk_18), 3, 1, 1);
        sub_0200B60C(v5, 1, sub_0202CC5C(param1->unk_18), 2, 2, 1);
        sub_0200B1B8(v2, 16, v4);
        sub_0200C388(v5, v3, v4);
        v1 = (8 * 28) - sub_02002D7C(0, v3, 0);
        sub_0201D78C(&param0[5], 0, v3, v1, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);

        sub_0200B190(v2);
        sub_020237BC(v3);
        sub_020237BC(v4);
        sub_0200B3F0(v5);
    }
}

void ov71_0223CECC (UnkStruct_0205AA50 * param0, const BOOL param1, Strbuf *param2)
{
    if (param1) {
        sub_0201D78C(param0, 0, param2, (207 - 2), 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((0 & 0xff) << 0)))), NULL);
    } else {
        sub_0201AE78(param0, 0, (207 - 2), 0, 5, 2 * 8);
        sub_0201A954(param0);
    }
}
