#include <nitro/types.h>
#include <nitro/mi/memory.h>

#define HALFW_CONDAL 0xe0000000
#define HALFW_CONDNE 0x10000000
#define HALFW_CONDEQ 0x00000000

#define HALFW_OFF_PL 0x00800000
#define HALFW_OFF_MI 0x00000000
#define HALFW_LOAD 0x00100000
#define HALFW_STORE 0x00000000
#define HALFW_RN(n) ((n) << 16)
#define HALFW_RD(n) ((n) << 12)

#define HALFW_DEF1 0x004000B0
#define HALFW_DEF2 0x014000B0

#define HALFW_IMM(n) (((n) & 0xf) | (((n) & 0xf0) << 4))

#define HALFW_DCD(cond, d, n, offset, sign, ldst, def) \
    dcd(def) | (cond) | (sign) | (ldst) | HALFW_RN(n) | HALFW_RD(d) | HALFW_IMM(offset)

#define LDRH_AD1(cond, d, n, offset) \
    HALFW_DCD(cond, d, n, offset, HALFW_OFF_PL, HALFW_LOAD, HALFW_DEF1)

#define LDRH_AD2(cond, d, n, offset) \
    HALFW_DCD(cond, d, n, offset, HALFW_OFF_PL, HALFW_LOAD, HALFW_DEF2)

#define LDRH_AD3(cond, d, n, offset) \
    HALFW_DCD(cond, d, n, offset, HALFW_OFF_MI, HALFW_LOAD, HALFW_DEF1)

#define LDRH_AD4(cond, d, n, offset) \
    HALFW_DCD(cond, d, n, offset, HALFW_OFF_MI, HALFW_LOAD, HALFW_DEF2)

#define STRH_AD1(cond, d, n, offset) \
    HALFW_DCD(cond, d, n, offset, HALFW_OFF_PL, HALFW_STORE, HALFW_DEF1)

#define STRH_AD2(cond, d, n, offset) \
    HALFW_DCD(cond, d, n, offset, HALFW_OFF_PL, HALFW_STORE, HALFW_DEF2)

#define STRH_AD3(cond, d, n, offset) \
    HALFW_DCD(cond, d, n, offset, HALFW_OFF_MI, HALFW_STORE, HALFW_DEF1)

#define STRH_AD4(cond, d, n, offset) \
    HALFW_DCD(cond, d, n, offset, HALFW_OFF_MI, HALFW_STORE, HALFW_DEF2)

#include <nitro/code32.h>

asm void MIi_CpuClear16 (register u16 data, register void * destp, register u32 size) {
    mov r3, #0
    @00 :
    cmp r3, r2
    blt @strlth1
    b @strlth2
 @strlth1:
    strh r0, [r1, r3]
 @strlth2:
    blt @addlt1
    b @addlt2
 @addlt1:
    add r3, r3, #2
 @addlt2:
    blt @00
    bx lr
}

asm void MIi_CpuCopy16 (register const void * srcp, register void * destp, register u32 size) {
    mov r12, #0
    @10 :
    cmp r12, r2
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    blt @ldrlth1
    b @ldrlth2
 @ldrlth1:
    ldrh r3, [r0, r12]
 @ldrlth2:
#else
    dcd     0xb19030bc
#endif
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    blt @strlth1
    b @strlth2
 @strlth1:
    strh r3, [r1, r12]
 @strlth2:
#else
    dcd     0xb18130bc
#endif
    blt @addlt1
    b @addlt2
 @addlt1:
    add r12, r12, #2
 @addlt2:
    blt @10
    bx lr
}

asm void MIi_CpuSend16 (register const void * srcp, register volatile void * destp, register u32 size) {
    mov r12, #0
    @11 :
    cmp r12, r2
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    blt @ldrlth1
    b @ldrlth2
 @ldrlth1:
    ldrh r3, [r0, r12]
 @ldrlth2:
#else
    dcd 0xb19030bc
#endif
    blt @strlth1
    b @strlth2
 @strlth1:
    strh r3, [r1, #0]
 @strlth2:
    blt @addlt1
    b @addlt2
 @addlt1:
    add r12, r12, #2
 @addlt2:
    blt @11
    bx lr
}

asm void MIi_CpuClear32 (register u32 data, register void * destp, register u32 size) {
    add r12, r1, r2

    @20 :
    cmp r1, r12
    blt @stmltia1
    b @stmltia2
 @stmltia1:
    stmia r1 !, {r0}
 @stmltia2:
    blt @20
    bx lr
}

asm void MIi_CpuCopy32 (register const void * srcp, register void * destp, register u32 size) {
    add r12, r1, r2

    @30 :
    cmp r1, r12
    blt @ldmltia1
    b @ldmltia2
 @ldmltia1:
    ldmia r0 !, {r2}
 @ldmltia2:
    blt @stmltia1
    b @stmltia2
 @stmltia1:
    stmia r1 !, {r2}
 @stmltia2:
    blt @30
    bx lr
}

asm void MIi_CpuSend32 (register const void * srcp, volatile void * destp, u32 size) {
    add r12, r0, r2

    @31 :
    cmp r0, r12
    blt @ldmltia1
    b @ldmltia2
 @ldmltia1:
    ldmia r0 !, {r2}
 @ldmltia2:
    blt @strlt1
    b @strlt2
 @strlt1:
    str r2, [r1]
 @strlt2:
    blt @31
    bx lr
}

asm void MIi_CpuClearFast (register u32 data, register void * destp, register u32 size) {
    stmfd sp !, {r4 - r9}
    add r9, r1, r2
    mov r12, r2, lsr #5
    add r12, r1, r12, lsl #5
    mov r2, r0
    mov r3, r2
    mov r4, r2
    mov r5, r2
    mov r6, r2
    mov r7, r2
    mov r8, r2
    @40 :
    cmp r1, r12
    blt @stmltia1
    b @stmltia2
 @stmltia1:
    stmia r1 !, {r0, r2 - r8}
 @stmltia2:
    blt @40
    @41:
    cmp r1, r9
    blt @stmltia3
    b @stmltia4
 @stmltia3:
    stmia r1 !, {r0}
 @stmltia4:
    blt @41
    ldmfd sp !, {r4 - r9}
    bx lr
}

asm void MIi_CpuCopyFast (register const void * srcp, register void * destp, register u32 size) {
    stmfd sp !, {r4 - r10}
    add r10, r1, r2
    mov r12, r2, lsr #5
    add r12, r1, r12, lsl #5
    @50 :
    cmp r1, r12
    blt @ldmltia1
    b @ldmltia2
 @ldmltia1:
    ldmia r0 !, {r2 - r9}
 @ldmltia2:
    blt @stmltia1
    b @stmltia2
 @stmltia1:
    stmia r1 !, {r2 - r9}
 @stmltia2:
    blt @50
    @51 :
    cmp r1, r10
    blt @ldmltia3
    b @ldmltia4
 @ldmltia3:
    ldmia r0 !, {r2}
 @ldmltia4:
    blt @stmltia3
    b @stmltia4
 @stmltia3:
    stmia r1 !, {r2}
 @stmltia4:
    blt @51
    ldmfd sp !, {r4 - r10}
    bx lr
}

asm void MI_Copy16B (register const void * pSrc, register void * pDest) {
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2}
    stmia r1 !, {r2}
    bx lr
}

asm void MI_Copy32B (register const void * pSrc, register void * pDest) {
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3}
    stmia r1 !, {r2, r3}
    bx lr
}

asm void MI_Copy36B (register const void * pSrc, register void * pDest) {
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    bx lr
}

asm void MI_Copy48B (register const void * pSrc, register void * pDest) {
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    bx lr
}

asm void MI_Copy64B (register const void * pSrc, register void * pDest) {
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0 !, {r2, r3, r12}
    stmia r1 !, {r2, r3, r12}
    ldmia r0, {r0, r2, r3, r12}
    stmia r1 !, {r0, r2, r3, r12}
    bx lr
}

asm void MI_Copy128B (register const void * pSrc, register void * pDest) {
    stmfd sp !, {r4}
    ldmia r0 !, {r2, r3, r4, r12}
    stmia r1 !, {r2, r3, r4, r12}
    ldmia r0 !, {r2, r3, r4, r12}
    stmia r1 !, {r2, r3, r4, r12}
    ldmia r0 !, {r2, r3, r4, r12}
    stmia r1 !, {r2, r3, r4, r12}
    ldmia r0 !, {r2, r3, r4, r12}
    stmia r1 !, {r2, r3, r4, r12}
    ldmia r0 !, {r2, r3, r4, r12}
    stmia r1 !, {r2, r3, r4, r12}
    ldmia r0 !, {r2, r3, r4, r12}
    stmia r1 !, {r2, r3, r4, r12}
    ldmia r0 !, {r2, r3, r4, r12}
    stmia r1 !, {r2, r3, r4, r12}
    ldmia r0 !, {r2, r3, r4, r12}
    stmia r1 !, {r2, r3, r4, r12}
    ldmfd sp !, {r4}
    bx lr
}

#ifdef SDK_SMALL_BUILD
asm void MI_CpuFill8 (register void * dstp, register u8 data, register u32 size) {
    mov r12, #0
    @1 :
    cmp r12, r2
    strltb r1, [r0, r12]
    addlt r12, r12, #1
    blt @1
    bx lr
}
#else
asm void MI_CpuFill8 (register void * dstp, register u8 data, register u32 size) {
    cmp r2, #0
    beq @bxeq1
    b @bxeq2
 @bxeq1:
    bx lr
 @bxeq2:
    tst r0, #1
    beq @_1
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r12, [r0, #- 1]
#else
    LDRH_AD4(HALFW_CONDAL, 12, 0, 1)
#endif
    and r12, r12, #0x00FF
    orr r3, r12, r1, lsl #8
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r3, [r0, #- 1]
#else
    STRH_AD4(HALFW_CONDAL, 3, 0, 1)
#endif
    add r0, r0, #1
    subs r2, r2, #1
    beq @bxeq3
    b @bxeq4
 @bxeq3:
    bx lr
 @bxeq4:
 @_1:
    cmp r2, #2
    bcc @_6
    orr r1, r1, r1, lsl #8
    tst r0, #2
    beq @_8
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r1, [r0], #2
#else
    STRH_AD1(HALFW_CONDAL, 1, 0, 2)
#endif
    subs r2, r2, #2
    beq @bxeq5
    b @bxeq6
 @bxeq5:
    bx lr
 @bxeq6:
 @_8:
    orr r1, r1, r1, lsl #16
    bics r3, r2, #3
    beq @_10
    sub r2, r2, r3
    add r12, r3, r0
 @_9:
    str r1, [r0], #4
    cmp r0, r12
    bcc @_9
 @_10:
    tst r2, #2
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    bne @strneh1
    b @strneh2
 @strneh1:
    strh r1, [r0], #2
 @strneh2:
#else
    STRH_AD1(HALFW_CONDNE, 1, 0, 2)
#endif
 @_6:
    tst r2, #1
    beq @bxeq7
    b @bxeq8
 @bxeq7:
    bx lr
 @bxeq8:
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r3, [r0]
#else
    LDRH_AD2(HALFW_CONDAL, 3, 0, 0)
#endif
    and r3, r3, #0xFF00
    and r1, r1, #0x00FF
    orr r1, r1, r3
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r1, [r0]
#else
    STRH_AD2(HALFW_CONDAL, 1, 0, 0)
#endif
    bx lr
}
#endif

#ifdef SDK_SMALL_BUILD
asm void MI_CpuCopy8 (register const void * srcp, register void * dstp, register u32 size) {
    mov r12, #0
    @1 :
    cmp r12, r2
    ldrltb r3, [r0, r12]
    strltb r3, [r1, r12]
    addlt r12, r12, #1
    blt @1
    bx lr
}
#else
asm void MI_CpuCopy8 (register const void * srcp, register void * dstp, register u32 size) {
    cmp r2, #0
    beq @bxeq1
    b @bxeq2
 @bxeq1:
    bx lr
 @bxeq2:
    tst r1, #1
    beq @_1
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r12, [r1, #- 1]
#else
    LDRH_AD4(HALFW_CONDAL, 12, 1, 1)
#endif
    and r12, r12, #0x00FF
    tst r0, #1
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    bne @ldrneh1
    b @ldrneh2
 @ldrneh1:
    ldrh r3, [r0, #- 1]
 @ldrneh2:
#else
    LDRH_AD4(HALFW_CONDNE, 3, 0, 1)
#endif
    bne @movne1
    b @movne2
 @movne1:
    mov r3, r3, lsr #8
 @movne2:
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    beq @ldreqh1
    b @ldreqh2
 @ldreqh1:
    ldrh r3, [r0]
 @ldreqh2:
#else
    LDRH_AD2(HALFW_CONDEQ, 3, 0, 0)
#endif
    orr r3, r12, r3, lsl #8
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r3, [r1, #- 1]
#else
    STRH_AD4(HALFW_CONDAL, 3, 1, 1)
#endif
    add r0, r0, #1
    add r1, r1, #1
    subs r2, r2, #1
    beq @bxeq3
    b @bxeq4
 @bxeq3:
    bx lr
 @bxeq4:
 @_1:
    eor r12, r1, r0
    tst r12, #1
    beq @_2
    bic r0, r0, #1
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r12, [r0], #2
#else
    LDRH_AD1(HALFW_CONDAL, 12, 0, 2)
#endif
    mov r3, r12, lsr #8
    subs r2, r2, #2
    bcc @_3
 @_4:
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r12, [r0], #2
#else
    LDRH_AD1(HALFW_CONDAL, 12, 0, 2)
#endif
    orr r12, r3, r12, lsl #8
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r12, [r1], #2
#else
    STRH_AD1(HALFW_CONDAL, 12, 1, 2)
#endif
    mov r3, r12, lsr #16
    subs r2, r2, #2
    bcs @_4
 @_3:
    tst r2, #1
    beq @bxeq5
    b @bxeq6
 @bxeq5:
    bx lr
 @bxeq6:
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r12, [r1]
#else
    LDRH_AD2(HALFW_CONDAL, 12, 1, 0)
#endif
    and r12, r12, #0xFF00
    orr r12, r12, r3
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r12, [r1]
#else
    STRH_AD2(HALFW_CONDAL, 12, 1, 0)
#endif
    bx lr
 @_2:
    tst r12, #2
    beq @_5
    bics r3, r2, #1
    beq @_6
    sub r2, r2, r3
    add r12, r3, r1
 @_7:
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r3, [r0], #2
#else
    LDRH_AD1(HALFW_CONDAL, 3, 0, 2)
#endif
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r3, [r1], #2
#else
    STRH_AD1(HALFW_CONDAL, 3, 1, 2)
#endif
    cmp r1, r12
    bcc @_7
    b @_6
 @_5:
    cmp r2, #2
    bcc @_6
    tst r1, #2
    beq @_8
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r3, [r0], #2
#else
    LDRH_AD1(HALFW_CONDAL, 3, 0, 2)
#endif
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r3, [r1], #2
#else
    STRH_AD1(HALFW_CONDAL, 3, 1, 2)
#endif
    subs r2, r2, #2
    beq @bxeq7
    b @bxeq8
 @bxeq7:
    bx lr
 @bxeq8:
 @_8:
    bics r3, r2, #3
    beq @_10
    sub r2, r2, r3
    add r12, r3, r1
 @_9:
    ldr r3, [r0], #4
    str r3, [r1], #4
    cmp r1, r12
    bcc @_9
 @_10:
    tst r2, #2
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    bne @ldrneh3
    b @ldrneh4
 @ldrneh3:
    ldrh r3, [r0], #2
 @ldrneh4:
    bne @strneh1
    b @strneh2
 @strneh1:
    strh r3, [r1], #2
 @strneh2:
#else
    LDRH_AD1(HALFW_CONDNE, 3, 0, 2)
    STRH_AD1(HALFW_CONDNE, 3, 1, 2)
#endif
 @_6:
    tst r2, #1
    beq @bxeq9
    b @bxeq10
 @bxeq9:
    bx lr
 @bxeq10:
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r2, [r1]
    ldrh r0, [r0]
#else
    LDRH_AD2(HALFW_CONDAL, 2, 1, 0)
    LDRH_AD2(HALFW_CONDAL, 0, 0, 0)
#endif
    and r2, r2, #0xFF00
    and r0, r0, #0x00FF
    orr r0, r2, r0
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    strh r0, [r1]
#else
    STRH_AD2(HALFW_CONDAL, 0, 1, 0)
#endif
    bx lr
}
#endif

#include <nitro/codereset.h>
#include <nitro/code16.h>

asm void MI_Zero32B (register void * pDest) {
    mov r1, #0
    mov r2, #0
    stmia r0 !, {r1, r2}
    mov r3, #0
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    bx lr
}

asm void MI_Zero36B (register void * pDest) {
    mov r1, #0
    mov r2, #0
    mov r3, #0
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    bx lr
}

asm void MI_Zero48B (register void * pDest) {
    mov r1, #0
    mov r2, #0
    mov r3, #0
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    bx lr
}

asm void MI_Zero64B (register void * pDest) {
    mov r1, #0
    mov r2, #0
    stmia r0 !, {r1, r2}
    mov r3, #0
    stmia r0 !, {r1, r2}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2, r3}
    bx lr
}

#include <nitro/codereset.h>
