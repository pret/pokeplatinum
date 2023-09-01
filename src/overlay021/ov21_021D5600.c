#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "error_handling.h"
#include "strbuf.h"
#include "unk_020986CC.h"
#include "overlay021/ov21_021D5600.h"

static const u8 Unk_ov21_021E9CC4[6] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x0
};

static inline int inline_ov21_021D5764(int param0);
static inline BOOL inline_ov21_021D5764_1(int param0, int param1);
static Strbuf* ov21_021D5724(int param0, int param1, int param2);
static void ov21_021D5764(int param0, int param1, int * param2, int * param3, int * param4);

void ov21_021D5600 (Strbuf *param0)
{
    Strbuf_Free(param0);
}

int ov21_021D5608 (int param0)
{
    return sub_020986E8(Unk_ov21_021E9CC4[param0 + 1]);
}


static const u32 Unk_ov21_021E9CCC[] = {
    0x2CD,
    0x2C8,
    0x2C9,
    0x2CA,
    0x2CB,
    0x2CC
};

asm Strbuf* ov21_021D561C (int param0, int param1, int param2)
{
    push {r4, r5, r6, lr}
    sub sp, #0x28
    add r4, r2, #0
    add r2, sp, #4
    str r2, [sp]
    add r2, sp, #0xc
    add r3, sp, #8
    add r5, r0, #0
    bl ov21_021D5764
    ldr r2, [sp, #4]
    cmp r2, #6
    bne _021D5642
    add r0, r5, #0
    add r1, r4, #0
    bl sub_0200B32C
    add sp, #0x28
    pop {r4, r5, r6, pc}
 _021D5642:
    ldr r6, = Unk_ov21_021E9CCC
    add r5, sp, #0x10
    add r3, r5, #0
    ldmia r6 !, {r0, r1}
    stmia r5 !, {r0, r1}
    ldmia r6 !, {r0, r1}
    stmia r5 !, {r0, r1}
    ldmia r6 !, {r0, r1}
    stmia r5 !, {r0, r1}
    lsl r0, r2, #2
    ldr r1, [sp, #0xc]
    ldr r0, [r3, r0]
    add r2, r4, #0
    str r1, [sp, #4]
    bl ov21_021D5724
    add sp, #0x28
    pop {r4, r5, r6, pc}
    nop
}

static const u32 Unk_ov21_021E9CE4[] = {
    0x2D3,
    0x2CE,
    0x2CF,
    0x2D0,
    0x2D1,
    0x2D2
};

asm Strbuf* ov21_021D566C (int param0, int param1, int param2)
{
    push {r4, r5, r6, lr}
    sub sp, #0x28
    add r4, r2, #0
    add r2, sp, #4
    str r2, [sp]
    add r2, sp, #0xc
    add r3, sp, #8
    add r5, r0, #0
    bl ov21_021D5764
    ldr r2, [sp, #4]
    cmp r2, #6
    bne _021D568C
    str r5, [sp, #4]
    ldr r0, = 0x2C7
    b _021D56A6
 _021D568C:
    ldr r6, = Unk_ov21_021E9CE4
    add r5, sp, #0x10
    add r3, r5, #0
    ldmia r6 !, {r0, r1}
    stmia r5 !, {r0, r1}
    ldmia r6 !, {r0, r1}
    stmia r5 !, {r0, r1}
    ldmia r6 !, {r0, r1}
    stmia r5 !, {r0, r1}
    lsl r0, r2, #2
    ldr r1, [sp, #0xc]
    ldr r0, [r3, r0]
    str r1, [sp, #4]
 _021D56A6:
    ldr r1, [sp, #4]
    add r2, r4, #0
    bl ov21_021D5724
    add sp, #0x28
    pop {r4, r5, r6, pc}
}

static const u32 Unk_ov21_021E9CFC[] = {
    0x2C1,
    0x2BC,
    0x2BD,
    0x2BE,
    0x2BF,
    0x2C0
};

asm Strbuf* ov21_021D56BC (int param0, int param1, int param2, int param3)
{
    push {r4, r5, r6, lr}
    sub sp, #0x28
    add r4, r2, #0
    add r2, sp, #4
    add r6, r3, #0
    str r2, [sp]
    add r2, sp, #0xc
    add r3, sp, #8
    add r5, r0, #0
    bl ov21_021D5764
    ldr r0, [sp, #4]
    cmp r0, #6
    bne _021D56E8
    cmp r4, #1
    blt _021D56E0
    bl ErrorHandling_AssertFail
 _021D56E0:
    add r0, r5, r4
    str r0, [sp, #4]
    ldr r0, = 0x2C2
    b _021D570E
 _021D56E8:
    ldr r3, = Unk_ov21_021E9CFC
    add r2, sp, #0x10
    ldmia r3 !, {r0, r1}
    stmia r2 !, {r0, r1}
    ldmia r3 !, {r0, r1}
    stmia r2 !, {r0, r1}
    ldmia r3 !, {r0, r1}
    stmia r2 !, {r0, r1}
    cmp r4, #1
    blt _021D5700
    bl ErrorHandling_AssertFail
 _021D5700:
    ldr r0, [sp, #4]
    lsl r1, r0, #2
    add r0, sp, #0x10
    ldr r0, [r0, r1]
    ldr r1, [sp, #0xc]
    add r1, r1, r4
    str r1, [sp, #4]
 _021D570E:
    ldr r1, [sp, #4]
    add r2, r6, #0
    bl ov21_021D5724
    add sp, #0x28
    pop {r4, r5, r6, pc}
    nop
}

static inline BOOL inline_ov21_021D5764_1 (int param0, int param1)
{
    if ((param0 > 493) && (param1 != 6)) {
        return 0;
    }

    return 1;
}

static Strbuf* ov21_021D5724 (int param0, int param1, int param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, param0, param2);

    if (v0) {
        Strbuf* v1 = Strbuf_Init(256, param2);

        if (v1) {
            MessageLoader_GetStrbuf(v0, param1, v1);
        }

        MessageLoader_Free(v0);
        return v1;
    }

    return NULL;
}

static void ov21_021D5764 (int param0, int param1, int * param2, int * param3, int * param4)
{
    *param3 = sub_020986CC(param1);

    GF_ASSERT(*param3 < 6);

    *param2 = param0;
    *param4 = inline_ov21_021D5764(*param3);

    GF_ASSERT(inline_ov21_021D5764_1(*param2, *param4));
}

static inline int inline_ov21_021D5764 (int param0)
{
    GF_ASSERT(param0 < 6);
    return (param0 == 1) ? 6 : param0;
}
