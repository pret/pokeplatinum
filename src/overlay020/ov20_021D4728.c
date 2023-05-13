#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_020998EC_decl.h"
#include "overlay020/struct_ov20_021D16E8_decl.h"
#include "overlay020/struct_ov20_021D2128_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay083/struct_ov83_0223D9A8.h"

#include "unk_02002B7C.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "overlay020/ov20_021D0D80.h"
#include "overlay020/ov20_021D2098.h"
#include "overlay020/ov20_021D4728.h"

typedef struct {
    void * unk_00;
    NNSG2dCellDataBank * unk_04;
    void * unk_08;
    NNSG2dAnimBankData * unk_0C;
} UnkStruct_ov20_021D4B2C;

typedef struct UnkStruct_ov20_021D4AD4_t {
    UnkStruct_ov20_021D2128 * unk_00;
    const UnkStruct_ov20_021D16E8 * unk_04;
    const UnkStruct_020998EC * unk_08;
    UnkStruct_02018340 * unk_0C;
    UnkStruct_020218BC * unk_10;
    UnkStruct_02022550 * unk_14;
    UnkStruct_02022550 * unk_18;
    UnkStruct_ov20_021D4B2C unk_1C;
    u16 unk_2C[8][77];
    UnkStruct_0201CD38 * unk_4FC;
} UnkStruct_ov20_021D4AD4;

typedef struct {
    UnkStruct_ov20_021D4AD4 * unk_00;
    int unk_04;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_ov20_021D4BA4;

static void ov20_021D4874(UnkStruct_ov20_021D4AD4 * param0, NARC * param1);
static void ov20_021D48C4(UnkStruct_ov20_021D4AD4 * param0, NARC * param1);
static void ov20_021D498C(UnkStruct_0205AA50 * param0, UnkStruct_02018340 * param1, const Strbuf *param2, int param3);
static void ov20_021D4A24(UnkStruct_ov20_021D4AD4 * param0, NARC * param1);
static void ov20_021D4AD4(UnkStruct_ov20_021D4AD4 * param0);
static void ov20_021D4AF8(UnkStruct_ov20_021D4B2C * param0, NARC * param1, u32 param2, u32 param3);
static void ov20_021D4B2C(UnkStruct_ov20_021D4B2C * param0);
static void ov20_021D4C40(UnkStruct_0201CD38 * param0, void * param1);
static UnkStruct_02022550 * ov20_021D4B40(UnkStruct_ov20_021D4AD4 * param0, NNSG2dImageProxy * param1, NNSG2dImagePaletteProxy * param2, UnkStruct_ov20_021D4B2C * param3, int param4, int param5, int param6, int param7);

UnkStruct_ov20_021D4AD4 * ov20_021D4728 (UnkStruct_ov20_021D2128 * param0, const UnkStruct_ov20_021D16E8 * param1, const UnkStruct_020998EC * param2)
{
    UnkStruct_ov20_021D4AD4 * v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D4AD4));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_0C = ov20_021D2E04(param0);
    v0->unk_10 = ov20_021D2E08(param0);
    v0->unk_14 = NULL;
    v0->unk_18 = NULL;
    v0->unk_4FC = NULL;

    return v0;
}

void ov20_021D4764 (UnkStruct_ov20_021D4AD4 * param0)
{
    ov20_021D4AD4(param0);
    Heap_FreeToHeap(param0);
}

void ov20_021D4774 (UnkStruct_ov20_021D4AD4 * param0, NARC * param1)
{
    sub_02007130(param1, 21, 4, 0, 0x40, 35);
    sub_0200710C(param1, 11, param0->unk_0C, 4, 0, 0, 1, 35);

    ov20_021D4874(param0, param1);
    ov20_021D48C4(param0, param1);

    if (ov20_021D1F94(param0->unk_04) == 0) {
        sub_020198E8(param0->unk_0C, 4, 3, 3, 11, 7, param0->unk_2C[3], 0, 0, 11, 7);
        sub_020198E8(param0->unk_0C, 4, 3, 14, 11, 7, param0->unk_2C[4], 0, 0, 11, 7);
    } else {
        sub_020198E8(param0->unk_0C, 4, 3, 3, 11, 7, param0->unk_2C[0], 0, 0, 11, 7);
        sub_020198E8(param0->unk_0C, 4, 3, 14, 11, 7, param0->unk_2C[7], 0, 0, 11, 7);
    }

    ov20_021D4A24(param0, param1);
    sub_02019448(param0->unk_0C, 4);
}

static void ov20_021D4874 (UnkStruct_ov20_021D4AD4 * param0, NARC * param1)
{
    static const u16 v0[] = {
        12, 13, 14, 15, 16, 17, 18, 19,
    };
    int v1;
    void * v2;
    NNSG2dScreenData * v3;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        v2 = sub_020071D0(param1, v0[v1], 1, &v3, 35);

        if (v2) {
            MI_CpuCopy16(v3->rawData, param0->unk_2C[v1], 77 * 2);
            DC_FlushRange(param0->unk_2C[v1], 77 * 2);
            Heap_FreeToHeap(v2);
        }
    }
}

asm static void ov20_021D48C4 (UnkStruct_ov20_021D4AD4 * param0, NARC * param1)
{
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x18
    add r5, r0, #0
    add r7, r1, #0
    mov r0, #2
    mov r1, #0
    bl sub_02002BB8
    ldr r1, = 0x1B5
    mov r0, #0x1a
    mov r2, #0xb
    mov r3, #0x23
    bl sub_0200B010
    add r6, r0, #0
    ldr r1, = 0x1B5
    mov r0, #0x1a
    mov r2, #0xc
    mov r3, #0x23
    bl sub_0200B010
    add r4, r0, #0
    mov r0, #0x23
    str r0, [sp]
    add r0, r7, #0
    mov r1, #0x14
    mov r2, #1
    add r3, sp, #4
    bl sub_020071B4
    add r7, r0, #0
    beq _021D496C
    add r0, sp, #8
    bl sub_0201A7A0
    ldr r0, [r5, #0xc]
    add r1, sp, #4
    str r0, [sp, #8]
    mov r0, #0xb
    strb r0, [r1, #0xb]
    mov r0, #0x39
    strb r0, [r1, #0xc]
    ldrh r2, [r1, #0xe]
    ldr r0, = 0xFFFF7FFF
    mov r3, #0
    and r0, r2
    strh r0, [r1, #0xe]
    ldr r0, [sp, #4]
    add r2, r6, #0
    ldr r0, [r0, #0x14]
    str r0, [sp, #0x14]
    ldr r1, [r5, #0xc]
    add r0, sp, #8
    bl ov20_021D498C
    ldr r0, [sp, #4]
    add r2, r4, #0
    ldr r1, [r0, #0x14]
    mov r0, #0x9a
    lsl r0, r0, #6
    add r0, r1, r0
    str r0, [sp, #0x14]
    ldr r1, [r5, #0xc]
    add r0, sp, #8
    mov r3, #0
    bl ov20_021D498C
    ldr r1, [sp, #4]
    ldr r0, [r1, #0x14]
    ldr r1, [r1, #0x10]
    bl DC_FlushRange
    ldr r3, [sp, #4]
    mov r0, #0
    str r0, [sp]
    ldr r2, [r3, #0x14]
    ldr r0, [r5, #0xc]
    ldr r3, [r3, #0x10]
    mov r1, #4
    bl sub_0201958C
    add r0, r7, #0
    bl Heap_FreeToHeap
 _021D496C:
    add r0, r4, #0
    bl Strbuf_Free
    add r0, r6, #0
    bl Strbuf_Free
    mov r0, #2
    bl sub_02002C60
    add sp, #0x18
    pop {r3, r4, r5, r6, r7, pc}
    nop
}

static const s16 Unk_ov20_021D52EC[] = {
    22, (22 + 56 * 1) - 1, (22 + 56 * 2) - 2, (22 + 56 * 3) - 1,
};

asm static void ov20_021D498C (UnkStruct_0205AA50 * param0, UnkStruct_02018340 * param1, const Strbuf *param2, int param3)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x24
    str r0, [sp, #0x10]
    add r0, r2, #0
    str r2, [sp, #0x14]
    add r7, r3, #0
    bl Strbuf_NumLines
    str r0, [sp, #0x1c]
    mov r0, #0x20
    mov r1, #0x23
    bl Strbuf_Init
    add r6, r0, #0
    ldr r0, [sp, #0x1c]
    mov r1, #2
    sub r0, r1, r0
    lsl r0, r0, #4
    lsr r0, r0, #1
    add r7, r7, r0
    mov r0, #0
    str r0, [sp, #0x20]
    ldr r0, [sp, #0x1c]
    cmp r0, #0
    bls _021D4A10
 _021D49BE:
    ldr r1, [sp, #0x14]
    ldr r2, [sp, #0x20]
    add r0, r6, #0
    bl Strbuf_CopyLineNum
    mov r0, #2
    add r1, r6, #0
    mov r2, #0
    mov r3, #0x58
    bl sub_02002EEC
    ldr r5, = Unk_ov20_021D52EC
    str r0, [sp, #0x18]
    mov r4, #0
 _021D49DA:
    mov r0, #0
    ldrsh r0, [r5, r0]
    ldr r3, [sp, #0x18]
    mov r1, #2
    add r0, r7, r0
    str r0, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    ldr r0, = 0x10203
    add r2, r6, #0
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    ldr r0, [sp, #0x10]
    bl sub_0201D78C
    add r4, r4, #1
    add r5, r5, #2
    cmp r4, #4
    blo _021D49DA
    ldr r0, [sp, #0x20]
    add r7, #0x10
    add r1, r0, #1
    ldr r0, [sp, #0x1c]
    str r1, [sp, #0x20]
    cmp r1, r0
    blo _021D49BE
 _021D4A10:
    add r0, r6, #0
    bl Strbuf_Free
    add sp, #0x24
    pop {r4, r5, r6, r7, pc}
    nop
}

static void ov20_021D4A24 (UnkStruct_ov20_021D4AD4 * param0, NARC * param1)
{
    NNSG2dImagePaletteProxy v0;
    NNSG2dImageProxy v1;

    NNS_G2dInitImagePaletteProxy(&v0);
    NNS_G2dInitImageProxy(&v1);

    sub_0200716C(param1, 25, NNS_G2D_VRAM_TYPE_2DSUB, 0, 35, &v0);
    sub_0200718C(param1, 24, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 0, 35, &v1);

    ov20_021D4AF8(&(param0->unk_1C), param1, 22, 23);

    param0->unk_14 = ov20_021D4B40(param0, &v1, &v0, &param0->unk_1C, 192, 56, 0, 0);
    sub_02021D6C(param0->unk_14, 0);
    sub_02021CAC(param0->unk_14, 0);

    param0->unk_18 = ov20_021D4B40(param0, &v1, &v0, &param0->unk_1C, 192, 136, 0, 0);
    sub_02021D6C(param0->unk_18, 2);
    sub_02021CAC(param0->unk_18, 0);
}

static void ov20_021D4AD4 (UnkStruct_ov20_021D4AD4 * param0)
{
    if (param0->unk_14) {
        sub_02021BD4(param0->unk_14);
    }

    if (param0->unk_18) {
        sub_02021BD4(param0->unk_18);
    }

    ov20_021D4B2C(&param0->unk_1C);
}

static void ov20_021D4AF8 (UnkStruct_ov20_021D4B2C * param0, NARC * param1, u32 param2, u32 param3)
{
    param0->unk_00 = sub_02007204(param1, param2, 1, &(param0->unk_04), 35);
    param0->unk_08 = sub_02007220(param1, param3, 1, &(param0->unk_0C), 35);
}

static void ov20_021D4B2C (UnkStruct_ov20_021D4B2C * param0)
{
    Heap_FreeToHeap(param0->unk_00);
    Heap_FreeToHeap(param0->unk_08);
}

static UnkStruct_02022550 * ov20_021D4B40 (UnkStruct_ov20_021D4AD4 * param0, NNSG2dImageProxy * param1, NNSG2dImagePaletteProxy * param2, UnkStruct_ov20_021D4B2C * param3, int param4, int param5, int param6, int param7)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    UnkStruct_02022550 * v2;

    v0.unk_00 = param1;
    v0.unk_08 = param2;
    v0.unk_0C = param3->unk_04;
    v0.unk_10 = param3->unk_0C;
    v0.unk_20 = param6;
    v0.unk_04 = NULL;
    v0.unk_14 = NULL;
    v0.unk_18 = NULL;
    v0.unk_1C = 0;

    v1.unk_00 = param0->unk_10;
    v1.unk_04 = &v0;
    v1.unk_08.x = param4 * FX32_ONE;
    v1.unk_08.y = (param5 + 192) * FX32_ONE;
    v1.unk_08.z = 0;
    v1.unk_14 = param7;
    v1.unk_18 = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.unk_1C = 35;

    v2 = sub_02021B90(&v1);

    if (v2) {
        sub_02021CC8(v2, 1);
        sub_02021CE4(v2, ((FX32_ONE * 2) / 2));
    }

    return v2;
}

void ov20_021D4BA4 (UnkStruct_ov20_021D4AD4 * param0)
{
    UnkStruct_ov20_021D4BA4 * v0 = Heap_AllocFromHeap(35, sizeof(UnkStruct_ov20_021D4BA4));

    if (v0) {
        static const struct {
            u16 unk_00;
            u16 unk_02;
            u16 unk_04;
            u16 unk_06;
            u16 unk_08;
            u16 unk_0A;
            u16 unk_0C;
        } v1[] = {
            {0x1, 0x3, 0x3, 0x3, 0x4, 0x3, 0xE},
            {0x5, 0x7, 0x3, 0xE, 0x0, 0x3, 0x3}
        };
        int v2 = ov20_021D1F94(param0->unk_04);

        v0->unk_00 = param0;
        v0->unk_04 = 0;
        v0->unk_08 = 0;
        v0->unk_0A = v1[v2].unk_00;
        v0->unk_0C = v1[v2].unk_02;
        v0->unk_0E = v1[v2].unk_04;
        v0->unk_10 = v1[v2].unk_06;
        v0->unk_12 = v1[v2].unk_08;
        v0->unk_14 = v1[v2].unk_0A;
        v0->unk_16 = v1[v2].unk_0C;

        param0->unk_4FC = sub_0200D9E8(ov20_021D4C40, v0, 1);
    } else {
        param0->unk_4FC = NULL;
    }
}

BOOL ov20_021D4C2C (UnkStruct_ov20_021D4AD4 * param0)
{
    return param0->unk_4FC == NULL;
}

static void ov20_021D4C40 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov20_021D4BA4 * v0 = param1;

    switch (v0->unk_04) {
    case 0:
        sub_020198E8(v0->unk_00->unk_0C, 4, v0->unk_0E, v0->unk_10, 11, 7, v0->unk_00->unk_2C[v0->unk_0A], 0, 0, 11, 7);
        sub_020198E8(v0->unk_00->unk_0C, 4, v0->unk_14, v0->unk_16, 11, 7, v0->unk_00->unk_2C[v0->unk_12], 0, 0, 11, 7);
        sub_02019448(v0->unk_00->unk_0C, 4);

        v0->unk_0A++;
        v0->unk_04++;
        break;
    case 1:
        if (++(v0->unk_08) >= 2) {
            sub_020198E8(v0->unk_00->unk_0C, 4, v0->unk_0E, v0->unk_10, 11, 7, v0->unk_00->unk_2C[v0->unk_0A], 0, 0, 11, 7);
            sub_02019448(v0->unk_00->unk_0C, 4);

            v0->unk_08 = 0;
            v0->unk_0A++;
            v0->unk_04++;
        }
        break;
    case 2:
        if (++(v0->unk_08) >= 4) {
            sub_020198E8(v0->unk_00->unk_0C, 4, v0->unk_0E, v0->unk_10, 11, 7, v0->unk_00->unk_2C[v0->unk_0A], 0, 0, 11, 7);
            sub_02019448(v0->unk_00->unk_0C, 4);
            v0->unk_04++;
        }
        break;
    case 3:
        v0->unk_00->unk_4FC = NULL;
        Heap_FreeToHeap(param1);
        sub_0200DA58(param0);
    }
}

void ov20_021D4DBC (UnkStruct_ov20_021D4AD4 * param0, BOOL param1)
{
    if (param1) {
        sub_02021CAC(param0->unk_14, ov20_021D204C(param0->unk_04));
        sub_02021CAC(param0->unk_18, ov20_021D2060(param0->unk_04));
    } else {
        sub_02021CAC(param0->unk_14, 0);
        sub_02021CAC(param0->unk_18, 0);
    }
}

void ov20_021D4DF4 (UnkStruct_ov20_021D4AD4 * param0, int param1, int param2)
{
    switch (param1) {
    case 0:
        switch (param2) {
        case 1:
            sub_02021D6C(param0->unk_14, 1);
            break;
        case 0:
            sub_02021D6C(param0->unk_14, 0);
            break;
        }
        break;
    case 1:
        switch (param2) {
        case 1:
            sub_02021D6C(param0->unk_18, 3);
            break;
        case 0:
            sub_02021D6C(param0->unk_18, 2);
            break;
        }
        break;
    }
}
