#include <nitro/types.h>
#include <nitro/mi/uncompress.h>
#include <nitro/code32.h>

asm void MI_UnpackBits (register const void * srcp, register void * destp, register MIUnpackBitsParam * paramp) {
    stmfd sp !, {r4 - r11, lr}
    sub sp, sp, #4
    ldrh r7, [r2, #0]
    @00: ldrb r6, [r2, #2]
    rsb r10, r6, #8
    mov r14, #0
    ldr r11, [r2, #4]
    mov r8, r11, lsr #31
    ldr r11, [r2, #4]
    mov r11, r11, lsl #1
    mov r11, r11, lsr #1
    str r11, [sp, #0]
    ldrb r2, [r2, #3]
    mov r3, #0
    @01: subs r7, r7, #1
    blt @06
    mov r11, #0xff
    mov r5, r11, asr r10
    ldrb r9, [r0], #1
    mov r4, #0
    @02: cmp r4, #8
    bge @01
    and r11, r9, r5
    movs r12, r11, lsr r4
    cmpeq r8, #0
    beq @04
    @03: ldr r11, [sp, #0]
    add r12, r12, r11
    @04: orr r14, r14, r12, lsl r3
    add r3, r3, r2
    cmp r3, #0x20
    blt @05
    str r14, [r1], #4
    mov r14, #0
    mov r3, #0
    @05: mov r5, r5, lsl r6
    add r4, r4, r6
    b @02
    @06: add sp, sp, #4
    ldmfd sp !, {r4 - r11, lr}
    bx lr
}

asm void MI_UncompressLZ8 (register const void * srcp, register void * destp) {
    stmfd sp !, {r4 - r7, lr}
    ldr r5, [r0], #4
    mov r2, r5, lsr #8
    mov r7, #0
    tst r5, #0x0F
    bne @movne1
    b @movne2
 @movne1:
    mov r7, #1
 @movne2:
    @21: cmp r2, #0
    ble @26
    ldrb r14, [r0], #1
    mov r4, #8
    @22: subs r4, r4, #1
    blt @21
    tst r14, #0x80
    bne @23
    ldrb r6, [r0], #1
    swpb r6, r6, [r1]
    add r1, r1, #1
    sub r2, r2, #1
    b @25
    @23: ldrb r5, [r0, #0]
    cmp r7, #0
    beq @moveq3
    b @moveq4
 @moveq3:
    mov r6, #3
 @moveq4:
    beq @23_2
    tst r5, #0xE0
    bne @movne5
    b @movne6
 @movne5:
    mov r6, #1
 @movne6:
    bne @23_2
    add r0, r0, #1
    and r6, r5, #0xf
    mov r6, r6, lsl #4
    tst r5, #0x10
    beq @23_1
    mov r6, r6, lsl #8
    ldrb r5, [r0], #1
    add r6, r6, r5, lsl #4
    add r6, r6, #0x100
    @23_1:
    add r6, r6, #0x11
    ldrb r5, [r0, #0]
    @23_2:
    add r3, r6, r5, asr #4
    add r0, r0, #1
    and r5, r5, #0xf
    mov r12, r5, lsl #8
    ldrb r6, [r0], #1
    orr r5, r6, r12
    add r12, r5, #1
    sub r2, r2, r3
    @24: ldrb r5, [r1, -r12]
    swpb r5, r5, [r1]
    add r1, r1, #1
    subs r3, r3, #1
    bgt @24
    @25: cmp r2, #0
    bgt @movgt7
    b @movgt8
 @movgt7:
    mov r14, r14, lsl #1
 @movgt8:
    bgt @22
    b @21
    @26: ldmfd sp !, {r4 - r7, lr}
    bx lr
}

asm void MI_UncompressLZ16 (register const void * srcp, register void * destp) {
    stmfd sp !, {r4 - r11, lr}
    mov r3, #0
    ldr r8, [r0], #4
    mov r10, r8, lsr #8
    mov r2, #0
    mov r11, #0
    tst r8, #0x0F
    bne @movne1
    b @movne2
 @movne1:
    mov r11, #1
 @movne2:
    @31: cmp r10, #0
    ble @36
    ldrb r6, [r0], #1
    mov r7, #8
    @32: subs r7, r7, #1
    blt @31
    tst r6, #0x80
    bne @33
    ldrb r9, [r0], #1
    orr r3, r3, r9, lsl r2
    sub r10, r10, #1
    eors r2, r2, #8
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    beq @streqh3
    b @streqh4
 @streqh3:
    strh r3, [r1], #2
 @streqh4:
#else
    dcd 0x00c130b2
#endif
    beq @moveq5
    b @moveq6
 @moveq5:
    mov r3, #0
 @moveq6:
    b @35
    @33: ldrb r9, [r0, #0]
    cmp r11, #0
    beq @moveq7
    b @moveq8
 @moveq7:
    mov r8, #3
 @moveq8:
    beq @33_2
    tst r9, #0xE0
    bne @movne9
    b @movne10
 @movne9:
    mov r8, #1
 @movne10:
    bne @33_2
    add r0, r0, #1
    and r8, r9, #0xf
    mov r8, r8, lsl #4
    tst r9, #0x10
    beq @33_1
    mov r8, r8, lsl #8
    ldrb r9, [r0], #1
    add r8, r8, r9, lsl #4
    add r8, r8, #0x100
    @33_1:
    add r8, r8, #0x11
    ldrb r9, [r0, #0]
    @33_2:
    add r5, r8, r9, asr #4
    ldrb r9, [r0], #1
    and r8, r9, #0xf
    mov r4, r8, lsl #8
    ldrb r9, [r0], #1
    orr r8, r9, r4
    add r4, r8, #1
    rsb r8, r2, #8
    and r9, r4, #1
    eor r14, r8, r9, lsl #3
    sub r10, r10, r5
    @34: eor r14, r14, #8
    rsb r8, r2, #8
    add r8, r4, r8, lsr #3
    mov r8, r8, lsr #1
    mov r8, r8, lsl #1
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    ldrh r9, [r1, -r8]
#else
    dcd     0xe11190b8
#endif
    mov r8, #0xff
    and r8, r9, r8, lsl r14
    mov r8, r8, asr r14
    orr r3, r3, r8, lsl r2
    eors r2, r2, #8
#ifndef CW_BUG_FOR_LDRH_AND_STRH
    beq @streqh11
    b @streqh12
 @streqh11:
    strh r3, [r1], #2
 @streqh12:
#else
    dcd 0x00c130b2
#endif
    beq @moveq13
    b @moveq14
 @moveq13:
    mov r3, #0
 @moveq14:
    subs r5, r5, #1
    bgt @34
    @35: cmp r10, #0
    bgt @movgt15
    b @movgt16
 @movgt15:
    mov r6, r6, lsl #1
 @movgt16:
    bgt @32
    b @31
    @36: ldmfd sp !, {r4 - r11, lr}
    bx lr
}

asm void MI_UncompressHuffman (register const void * srcp, register void * destp) {
    stmfd sp !, {r4 - r11, lr}
    sub sp, sp, #4
    add r2, r0, #4
    add r7, r2, #1
    ldrb r10, [r0, #0]
    and r4, r10, #0xf
    mov r3, #0
    mov r14, #0
    and r10, r4, #7
    add r11, r10, #4
    str r11, [sp, #0]
    ldr r10, [r0, #0]
    mov r12, r10, lsr #8
    ldrb r10, [r2, #0]
    add r10, r10, #1
    add r0, r2, r10, lsl #1
    mov r2, r7
    @11: cmp r12, #0
    ble @14
    mov r8, #32
    ldr r5, [r0], #4
    @12: subs r8, r8, #1
    blt @11
    mov r10, #1
    and r9, r10, r5, lsr #31
    ldrb r6, [r2, #0]
    mov r6, r6, lsl r9
    mov r10, r2, lsr #1
    mov r10, r10, lsl #1
    ldrb r11, [r2, #0]
    and r11, r11, #0x3f
    add r11, r11, #1
    add r10, r10, r11, lsl #1
    add r2, r10, r9
    tst r6, #0x80
    beq @13
    mov r3, r3, lsr r4
    ldrb r10, [r2, #0]
    rsb r11, r4, #32
    orr r3, r3, r10, lsl r11
    mov r2, r7
    add r14, r14, #1
    ldr r11, [sp, #0]
    cmp r14, r11
    beq @streq1
    b @streq2
 @streq1:
    str r3, [r1], #4
 @streq2:
    beq @subeq3
    b @subeq4
 @subeq3:
    sub r12, r12, #4
 @subeq4:
    beq @moveq5
    b @moveq6
 @moveq5:
    mov r14, #0
 @moveq6:
    @13: cmp r12, #0
    bgt @movgt7
    b @movgt8
 @movgt7:
    mov r5, r5, lsl #1
 @movgt8:
    bgt @12
    b @11
    @14: add sp, sp, #4
    ldmfd sp !, {r4 - r11, lr}
    bx lr
}

asm void MI_UncompressRL8 (register const void * srcp, register void * destp) {
    stmfd sp !, {r4, r5, r7}
    ldmia r0 !, {r3}
    mov r7, r3, lsr #8
    @41: cmp r7, #0
    ble @45
    ldrb r4, [r0], #1
    ands r2, r4, #0x7f
    tst r4, #0x80
    bne @43
    add r2, r2, #1
    sub r7, r7, r2
    @42: ldrb r3, [r0], #1
    swpb r3, r3, [r1]
    add r1, r1, #1
    subs r2, r2, #1
    bgt @42
    b @41
    @43: add r2, r2, #3
    sub r7, r7, r2
    ldrb r5, [r0], #1
    @44: swpb r4, r5, [r1]
    add r1, r1, #1
    subs r2, r2, #1
    bgt @44
    b @41
    @45: ldmfd sp !, {r4, r5, r7}
    bx lr
}

#include <nitro/code16.h>

asm void MI_UncompressRL16 (register const void * srcp, register void * destp) {
    push {r4 - r7}
    sub sp, #0xc
    mov r7, #0
    ldmia r0 !, {r3}
    lsr r5, r3, #8
    mov r4, #0
    @51: cmp r5, #0
    ble @57
    ldrb r3, [r0, #0]
    str r3, [sp, #4]
    add r0, #1
    ldr r3, [sp, #4]
    lsl r2, r3, #25
    lsr r2, r2, #25
    ldr r6, [sp, #4]
    lsr r3, r6, #8
    bcs @54
    add r2, #1
    sub r5, r5, r2
    @52: ldrb r6, [r0, #0]
    lsl r6, r4
    orr r7, r6
    add r0, #1
    mov r3, #8
    eor r4, r3
    bne @53
    strh r7, [r1, #0]
    add r1, #2
    mov r7, #0
    @53: sub r2, r2, #1
    bgt @52
    b @51
    @54: add r2, #3
    sub r5, r5, r2
    ldrb r6, [r0, #0]
    str r6, [sp, #8]
    add r0, #1
    @55: ldr r6, [sp, #8]
    lsl r6, r4
    orr r7, r6
    mov r3, #8
    eor r4, r3
    bne @56
    strh r7, [r1, #0]
    add r1, #2
    mov r7, #0
    @56: sub r2, r2, #1
    bgt @55
    b @51
    @57: add sp, #0xc
    pop {r4 - r7}
    bx lr
}

#include <nitro/code32.h>

asm void MI_UnfilterDiff8 (register const void * srcp, register void * destp) {
    stmfd sp !, {r4}
    ldmia r0, {r2}
    mov r3, #0
    and r4, r2, #0xF
    mov r2, r2, lsr #8
    cmp r4, #1
    bne @63
    @61
    add r0, r0, #3
    sub r1, r1, #1
    @62
    ldrb r4, [r0, #1] !
    subs r2, r2, #1
    add r3, r3, r4
    strb r3, [r1, #1] !
    bgt @62
    b @65
    @63
    add r0, r0, #2
    sub r1, r1, #2
    @64
    ldrh r4, [r0, #2] !
    subs r2, r2, #2
    add r3, r3, r4
    strh r3, [r1, #2] !
    bgt @64
    @65
    ldmfd sp !, {r4}
    bx lr
}

asm void MI_UnfilterDiff16 (register const void * srcp, register void * destp) {
    stmfd sp !, {r4, r5}
    ldmia r0, {r2}
    mov r3, #0
    and r4, r2, #0xF
    mov r2, r2, lsr #8
    cmp r4, #1
    bne @63
    @61
    add r0, r0, #2
    sub r1, r1, #2
    @62
    ldrh r4, [r0, #2] !
    sub r2, r2, #2
    add r3, r3, r4
    and r5, r3, #0xFF
    add r3, r3, r4, lsr #8
    add r5, r5, r3, lsl #8
    strh r5, [r1, #2] !
    cmp r2, #1
    bgt @62
    bne @65
    ldrh r4, [r0, #2] !
    add r3, r3, r4
    and r5, r3, #0xFF
    strh r5, [r1, #2] !
    b @65
    @63
    add r0, r0, #2
    sub r1, r1, #2
    @64
    ldrh r4, [r0, #2] !
    subs r2, r2, #2
    add r3, r3, r4
    strh r3, [r1, #2] !
    bgt @64
    @65
    ldmfd sp !, {r4, r5}
    bx lr
}

#include <nitro/codereset.h>
