	.include "macros/function.inc"
	.include "overlay106/ov106_022435FC.inc"

	

	.text


	thumb_func_start ov106_022435FC
ov106_022435FC: ; 0x022435FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x62
	mov r1, #0x14
	str r2, [sp, #4]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02243618:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02243618
	ldr r0, [sp, #0x2c]
	mov r3, #0
	str r0, [r4, #0xc]
	ldr r2, [sp, #4]
	str r3, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl ov106_022434BC
	str r0, [r4, #0x10]
	lsl r0, r5, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x18
	ldrh r0, [r0, #0x10]
	add r1, sp, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl sub_02021C50
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov106_022435FC

	thumb_func_start ov106_02243650
ov106_02243650: ; 0x02243650
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov106_02243650

	thumb_func_start ov106_02243664
ov106_02243664: ; 0x02243664
	ldr r3, _0224366C ; =sub_02021CAC
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0224366C: .word sub_02021CAC
	thumb_func_end ov106_02243664

	thumb_func_start ov106_02243670
ov106_02243670: ; 0x02243670
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	add r6, r2, #0
	cmp r1, #0
	beq _02243688
	ldrb r1, [r1]
	ldr r0, [r5, #0x10]
	bl sub_02021DCC
_02243688:
	ldr r0, [r5, #0x10]
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	lsl r0, r4, #0xc
	str r0, [sp]
	lsl r0, r6, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov106_02243670

	thumb_func_start ov106_022436B0
ov106_022436B0: ; 0x022436B0
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
	thumb_func_end ov106_022436B0

	thumb_func_start ov106_022436CC
ov106_022436CC: ; 0x022436CC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02079FC4
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_02021F24
	pop {r4, pc}
	thumb_func_end ov106_022436CC