	.include "macros/function.inc"
	.include "include/ov18_0222B580.inc"

	

	.text


	arm_func_start ov18_0222B580
ov18_0222B580: ; 0x0222B580
	ldr r0, _0222B590 ; =0x0225324C
	mov r1, #0
	strb r1, [r0]
	bx lr
	; .align 2, 0
_0222B590: .word 0x0225324C
	arm_func_end ov18_0222B580

	arm_func_start ov18_0222B594
ov18_0222B594: ; 0x0222B594
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r3, _0222B650 ; =0x0225324C
	mov r7, r0
	ldrb r0, [r3]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0222B654 ; =0x02249900
	ldr r1, _0222B658 ; =0x020C03CC
	bl ov18_0222B700
	ldr r3, _0222B65C ; =0x01920000
	ldr r2, _0222B660 ; =0x04001010
	mov r0, #1
	mov r1, #0
	str r3, [r2, #0]
	bl ov18_0224467C
	ldr r1, _0222B664 ; =0x022532D8
	mov r4, r0
	ldr r0, [r1, #0]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl ov18_0222F8D0
	mov r5, r0
	bl ov18_0222B8F8
	mov r1, #0x40
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	mov r0, r4
	mov r1, #0x14
	mov r2, #0
	mov r3, #0xd8
	bl ov18_02244A9C
	mov r0, r4
	bl ov18_02244C08
	mov r0, #1
	ldr r1, _0222B650 ; =0x0225324C
	strb r0, [r1]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B650: .word 0x0225324C
_0222B654: .word 0x02249900
_0222B658: .word 0x020C03CC
_0222B65C: .word 0x01920000
_0222B660: .word 0x04001010
_0222B664: .word 0x022532D8
	arm_func_end ov18_0222B594

	arm_func_start ov18_0222B668
ov18_0222B668: ; 0x0222B668
	stmfd sp!, {r3, lr}
	ldr r0, _0222B69C ; =0x0225324C
	ldrb r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #1
	bl ov18_022448E0
	ldr r0, _0222B69C ; =0x0225324C
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222B69C: .word 0x0225324C
	arm_func_end ov18_0222B668

	.data


	.global Unk_ov18_02249900
Unk_ov18_02249900: ; 0x02249900
	.incbin "incbin/overlay18_data.bin", 0x1A0, 0x12



	.bss


	.global Unk_ov18_0225324C
Unk_ov18_0225324C: ; 0x0225324C
	.space 0x4

