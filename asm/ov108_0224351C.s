	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov108_0224351C
ov108_0224351C: ; 0x0224351C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x67
	mov r1, #0x14
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02243538:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02243538
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, sp, #0x4c
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov108_022430F0
	str r0, [r4, #0x10]
	add r0, sp, #0x28
	ldrh r3, [r0, #0x14]
	strh r3, [r4, #0xc]
	ldrh r1, [r0, #0x18]
	add r0, sp, #0x4c
	ldrb r2, [r0]
	strh r1, [r4, #0xe]
	lsl r0, r3, #0xc
	strb r2, [r4, #0xb]
	lsl r1, r1, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	cmp r2, #1
	bne _02243584
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x18]
_02243584:
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	bl sub_02021C50
	add r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov108_0224351C

	thumb_func_start ov108_02243594
ov108_02243594: ; 0x02243594
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov108_02243594

	thumb_func_start ov108_022435A8
ov108_022435A8: ; 0x022435A8
	ldr r3, _022435B0 ; =sub_02021CAC
	ldr r0, [r0, #0x10]
	bx r3
	nop
_022435B0: .word sub_02021CAC
	thumb_func_end ov108_022435A8

	thumb_func_start ov108_022435B4
ov108_022435B4: ; 0x022435B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	lsl r1, r6, #0xc
	str r0, [r2, #0]
	lsl r0, r4, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	ldrb r0, [r5, #0xb]
	cmp r0, #1
	bne _022435E6
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #4]
_022435E6:
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov108_022435B4

	thumb_func_start ov108_022435F4
ov108_022435F4: ; 0x022435F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	ldr r0, [r5, #0x10]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl sub_02021DCC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov108_022435F4

	thumb_func_start ov108_02243610
ov108_02243610: ; 0x02243610
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02079FC4
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02021F24
	pop {r4, pc}
	thumb_func_end ov108_02243610

	thumb_func_start ov108_02243624
ov108_02243624: ; 0x02243624
	ldr r3, _0224362C ; =sub_02021CC8
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0224362C: .word sub_02021CC8
	thumb_func_end ov108_02243624