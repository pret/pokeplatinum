	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov12_022380BC
ov12_022380BC: ; 0x022380BC
	push {r3, lr}
	add r3, r1, #0
	ldr r1, [r0, #0]
	mov r2, #0
	bl ov12_022380DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_022380BC

	thumb_func_start ov12_022380CC
ov12_022380CC: ; 0x022380CC
	push {r3, lr}
	add r3, r1, #0
	ldr r1, [r0, #4]
	mov r2, #1
	bl ov12_022380DC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_022380CC

	thumb_func_start ov12_022380DC
ov12_022380DC: ; 0x022380DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_020089B0
	ldr r0, [r5, #4]
	lsl r1, r0, #1
	add r1, r5, r1
	ldrh r6, [r1, #0x28]
	add r1, r5, r0
	add r1, #0x30
	ldrb r1, [r1]
	add r2, r5, r0
	add r2, #0x38
	str r1, [sp, #0x1c]
	add r1, r5, r0
	lsl r0, r0, #2
	ldrb r2, [r2]
	add r0, r5, r0
	add r1, #0x34
	ldr r0, [r0, #0x3c]
	ldrb r1, [r1]
	str r2, [sp, #0x18]
	str r0, [sp, #0x14]
	cmp r7, #0
	beq _02238132
	add r0, r5, r4
	add r0, #0x4c
	ldrb r2, [r0]
	mov r0, #1
	tst r0, r2
	beq _0223812E
	mov r4, #0
	b _02238144
_0223812E:
	mov r4, #2
	b _02238144
_02238132:
	add r0, r5, r4
	add r0, #0x4c
	ldrb r2, [r0]
	mov r0, #1
	tst r0, r2
	beq _02238142
	mov r4, #2
	b _02238144
_02238142:
	mov r4, #0
_02238144:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x18
	lsl r3, r4, #0x18
	str r0, [sp, #8]
	add r0, sp, #0x28
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02075FB4
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_02008A90
	add r7, r0, #0
	add r3, sp, #0x28
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_020089A0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrh r0, [r7, #6]
	str r0, [sp, #0xc]
	ldr r3, [r5, #0]
	ldrh r0, [r7]
	lsl r3, r3, #2
	add r3, r5, r3
	ldr r3, [r3, #8]
	ldrh r1, [r7, #2]
	ldr r3, [r3, #0]
	bl sub_02013750
	ldr r1, [r5, #0]
	ldr r3, [sp, #0x18]
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r2, r4, #0x18
	lsl r3, r3, #0x18
	ldrh r0, [r7]
	ldr r1, [r1, #8]
	lsr r2, r2, #0x18
	str r0, [r1, #4]
	ldr r1, [r5, #0]
	ldrh r0, [r7, #4]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	lsr r3, r3, #0x18
	str r0, [r1, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	lsl r0, r6, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl sub_02076648
	ldr r1, [r5, #0]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0]
	lsl r1, r0, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	add r0, r5, r0
	ldr r1, [r1, #0xc]
	add r0, #0x4c
	lsl r1, r1, #0x18
	asr r7, r1, #0x18
	ldrb r0, [r0]
	mov r1, #1
	bl ov12_022384CC
	str r0, [sp, #0x20]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x20]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #1
	add r2, r2, r7
	bl sub_02007DEC
	cmp r4, #2
	bne _022382B8
	ldr r1, [sp, #0x10]
	mov r0, #0x93
	bl sub_02006C24
	add r1, sp, #0x24
	lsl r2, r6, #0x10
	add r1, #2
	lsr r2, r2, #0x10
	add r4, r0, #0
	bl sub_02078A80
	add r1, sp, #0x24
	lsl r2, r6, #0x10
	add r0, r4, #0
	add r1, #1
	lsr r2, r2, #0x10
	bl sub_02078AA4
	lsl r2, r6, #0x10
	add r0, r4, #0
	add r1, sp, #0x24
	lsr r2, r2, #0x10
	bl sub_02078AC8
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r2, sp, #0x24
	lsl r0, r0, #2
	add r0, r5, r0
	ldrb r2, [r2]
	ldr r0, [r0, #0x18]
	mov r1, #0x2e
	bl sub_02007DEC
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x20]
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, #0x24
	ldr r0, [r0, #0x18]
	mov r1, #0x14
	str r2, [sp, #0x20]
	bl sub_02007DEC
	ldr r0, [r5, #0]
	add r3, sp, #0x24
	lsl r0, r0, #2
	mov r2, #1
	add r0, r5, r0
	ldrsb r2, [r3, r2]
	ldr r0, [r0, #0x18]
	mov r1, #0x15
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r2, #0x24
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #0x16
	sub r2, r2, r7
	bl sub_02007DEC
	ldr r0, [r5, #0]
	add r3, sp, #0x24
	lsl r0, r0, #2
	mov r2, #2
	add r0, r5, r0
	ldrsb r2, [r3, r2]
	ldr r0, [r0, #0x18]
	mov r1, #0x29
	bl sub_02007DEC
_022382B8:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022380DC

	thumb_func_start ov12_022382BC
ov12_022382BC: ; 0x022382BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r1, [sp, #0x10]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_02008A0C
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_02008A90
	add r4, r0, #0
	ldr r0, [r5, #0]
	lsl r1, r0, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x28]
	lsl r3, r0, #2
	str r1, [sp, #0x1c]
	add r1, r5, r0
	add r1, #0x30
	ldrb r1, [r1]
	str r1, [sp, #0x18]
	add r1, r5, r0
	add r1, #0x38
	ldrb r1, [r1]
	add r0, r5, r0
	add r0, #0x4c
	str r1, [sp, #0x14]
	add r1, r5, r3
	ldr r7, [r1, #0x3c]
	ldrb r1, [r0]
	mov r0, #1
	tst r0, r1
	beq _0223830E
	mov r6, #2
	b _02238310
_0223830E:
	mov r6, #0
_02238310:
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldrh r0, [r4, #6]
	add r3, r5, r3
	ldr r2, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r3, [r3, #8]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r3, [r3, #0]
	bl sub_02013750
	ldr r1, [r5, #0]
	ldrh r0, [r4]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	ldr r3, [sp, #0x14]
	str r0, [r1, #4]
	ldr r1, [r5, #0]
	lsl r2, r6, #0x18
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r3, r3, #0x18
	ldrh r0, [r4, #4]
	ldr r1, [r1, #8]
	lsr r2, r2, #0x18
	str r0, [r1, #8]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	str r7, [sp]
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl sub_02076648
	ldr r1, [r5, #0]
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r1, [r1, #8]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0]
	mov r1, #1
	lsl r4, r0, #2
	add r0, r5, r0
	add r0, #0x4c
	ldrb r0, [r0]
	bl ov12_022384CC
	add r1, r5, r4
	add r2, r0, #0
	ldr r0, [r1, #8]
	ldr r3, [r0, #0xc]
	ldr r0, [r1, #0x18]
	mov r1, #1
	add r2, r3, r2
	bl sub_02007DEC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022382BC

	thumb_func_start ov12_02238390
ov12_02238390: ; 0x02238390
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_020089B0
	mov r0, #0x75
	add r2, sp, #0
	strh r0, [r2, #4]
	mov r0, #0xfa
	strh r0, [r2, #8]
	mov r0, #0
	strh r0, [r2, #0xa]
	strb r0, [r2, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r5, r0
	add r1, #0x4c
	ldrb r3, [r1]
	mov r1, #1
	tst r1, r3
	beq _022383CC
	mov r1, #0xf9
	strh r1, [r2, #6]
	mov r4, #0x87
	b _022383D2
_022383CC:
	mov r1, #0xf8
	strh r1, [r2, #6]
	mov r4, #0x86
_022383D2:
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_02008A90
	add r7, r0, #0
	add r3, sp, #4
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	bl sub_020089A0
	ldr r3, [r5, #0]
	ldrh r0, [r7]
	lsl r3, r3, #2
	add r3, r5, r3
	ldr r3, [r3, #8]
	ldrh r1, [r7, #2]
	ldr r3, [r3, #0]
	add r2, r6, #0
	bl sub_02013610
	ldr r2, [r5, #0]
	add r1, sp, #0
	lsl r2, r2, #2
	add r2, r5, r2
	ldrh r0, [r1, #4]
	ldr r2, [r2, #8]
	str r0, [r2, #4]
	ldr r0, [r5, #0]
	ldrh r1, [r1, #8]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	add r2, r4, #0
	str r1, [r0, #8]
	add r0, sp, #0
	mov r1, #0x79
	bl sub_02006AA4
	add r0, sp, #0
	ldrb r1, [r0]
	ldr r0, [r5, #0]
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	ldr r0, [r5, #0]
	mov r1, #1
	lsl r4, r0, #2
	add r0, r5, r0
	add r0, #0x4c
	ldrb r0, [r0]
	bl ov12_022384CC
	add r2, r5, r4
	ldr r1, [r2, #8]
	ldr r1, [r1, #0xc]
	add r4, r1, r0
	ldr r0, [r2, #0x18]
	mov r1, #1
	add r2, r4, #0
	bl sub_02007DEC
	ldr r1, [r5, #0]
	mov r2, #1
	add r0, r5, r1
	add r0, #0x4c
	ldrb r0, [r0]
	tst r0, r2
	beq _022384C6
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r1, #0x2e
	bl sub_02007DEC
	ldr r0, [r5, #0]
	add r2, sp, #0
	ldrb r3, [r2]
	lsl r0, r0, #2
	add r0, r5, r0
	mov r2, #0x24
	sub r2, r2, r3
	ldr r0, [r0, #0x18]
	mov r1, #0x14
	add r2, r4, r2
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #0x15
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r5, #0]
	add r2, sp, #0
	lsl r0, r0, #2
	ldrb r3, [r2]
	add r0, r5, r0
	mov r2, #0x24
	ldr r0, [r0, #0x18]
	mov r1, #0x16
	sub r2, r2, r3
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #0x29
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	mov r2, #0
	bl sub_02007DEC
_022384C6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02238390

	thumb_func_start ov12_022384CC
ov12_022384CC: ; 0x022384CC
	cmp r1, #0
	bne _022384D8
	lsl r1, r0, #2
	ldr r0, _022384E8 ; =0x0223B0A0
	ldrsh r0, [r0, r1]
	bx lr
_022384D8:
	mov r2, #6
	mul r2, r0
	ldr r0, _022384EC ; =0x0223B0B8
	lsl r1, r1, #1
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	bx lr
	nop
_022384E8: .word 0x0223B0A0
_022384EC: .word 0x0223B0B8
	thumb_func_end ov12_022384CC

	.rodata


	.global Unk_ov12_0223B0A0
Unk_ov12_0223B0A0: ; 0x0223B0A0
	.incbin "incbin/overlay12_rodata.bin", 0x2B0C, 0x2B24 - 0x2B0C

	.global Unk_ov12_0223B0B8
Unk_ov12_0223B0B8: ; 0x0223B0B8
	.incbin "incbin/overlay12_rodata.bin", 0x2B24, 0x2B48 - 0x2B24

	.global Unk_ov12_0223B0DC
Unk_ov12_0223B0DC: ; 0x0223B0DC
	.incbin "incbin/overlay12_rodata.bin", 0x2B48, 0x24

