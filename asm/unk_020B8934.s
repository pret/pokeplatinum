	.include "macros/function.inc"
	.include "include/unk_020B8934.inc"

	

	.text


	arm_func_start sub_020B8934
sub_020B8934: ; 0x020B8934
	stmfd sp!, {r4, lr}
	ldr r1, _020B899C ; =0x021CB824
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _020B8964
	ldr r0, _020B89A0 ; =0x021CB828
	mov r1, #0
	bl sub_020A4C10
	ldr r0, _020B899C ; =0x021CB824
	mov r1, #1
	str r1, [r0, #0]
_020B8964:
	ldr r1, _020B89A4 ; =sub_020B8E14
	ldr r0, _020B89A8 ; =sub_020B8E60
	str r1, [r4, #8]
	str r4, [r4, #0xc]
	str r0, [r4, #0x14]
	str r4, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x24]
	bic r0, r0, #1
	bic r0, r0, #2
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B899C: .word 0x021CB824
_020B89A0: .word 0x021CB828
_020B89A4: .word sub_020B8E14
_020B89A8: .word sub_020B8E60
	arm_func_end sub_020B8934

	arm_func_start sub_020B89AC
sub_020B89AC: ; 0x020B89AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, #0
	mov r5, r0
	mov ip, r6
	cmp r4, #0
	ble _020B89EC
	mov r1, #1
_020B89CC:
	ldrb r3, [r2, ip]
	add r0, r5, ip
	strb r3, [r0, #0x4c]
	ldrb r0, [r2, ip]
	add ip, ip, #1
	cmp ip, r4
	orr r6, r6, r1, lsl r0
	blt _020B89CC
_020B89EC:
	mov r0, r6
	bl sub_020B7AC4
	cmp r0, #0
	moveq r0, #0
	strne r4, [r5, #0x48]
	strne r6, [r5, #0x44]
	movne r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B89AC

	arm_func_start sub_020B8A0C
sub_020B8A0C: ; 0x020B8A0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020B7B0C
	mov r0, #0
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B8A0C

	arm_func_start sub_020B8A34
sub_020B8A34: ; 0x020B8A34
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	ldr r4, [sl, #0x24]
	mov sb, r1
	mov r1, r4, lsl #0x1f
	mov r8, r2
	mov r4, r3
	movs r1, r1, asr #0x1f
	ldr fp, [sp, #0x44]
	beq _020B8A64
	bl sub_020B8C28
_020B8A64:
	ldr r2, [sl, #0x48]
	mov r0, fp, lsl #5
	mul r1, r2, r0
	mov r0, r4
	bl sub_020E2178
	mul r1, r0, r11
	mov r0, r1, lsl #5
	ldr r2, [sp, #0x40]
	str r0, [sl, #0x28]
	cmp sb, #1
	moveq r0, r0, lsr #1
	mul r0, r2, r0
	mov r1, fp
	bl sub_020E2178
	str r0, [sp, #0x18]
	bl sub_020B7B7C
	cmp r0, #0
	str r0, [sl, #0x40]
	addlt sp, sp, #0x1c
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x48]
	mov r6, #0
	cmp r0, #0
	ble _020B8B3C
	ldr r0, [sp, #0x40]
	ldr r5, _020B8BC8 ; =0x021CB874
	mov r7, r0, lsl #5
	mov r4, r6
_020B8AD8:
	ldr r1, [sl, #0x28]
	add r0, sl, r6
	mla r2, r1, r6, r8
	ldrb r0, [r0, #0x4c]
	mov r3, #1
	str r2, [r5, r0, lsl #3]
	add r1, r5, r0, lsl #3
	str r4, [r1, #4]
	str r4, [sp]
	ldr r2, [sl, #0x28]
	mov r1, sb
	mov r2, r2, lsr #2
	str r2, [sp, #4]
	mov r2, #0x7f
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r2, #0x40
	str r2, [sp, #0x14]
	ldr r2, [r5, r0, lsl #3]
	bl sub_020C53B8
	ldr r0, [sl, #0x48]
	add r6, r6, #1
	cmp r6, r0
	blt _020B8AD8
_020B8B3C:
	str sl, [sp]
	ldr r1, [sp, #0x18]
	ldr r0, [sl, #0x40]
	ldr r3, _020B8BCC ; =sub_020B8D54
	mov r2, r1
	bl sub_020C52D0
	ldr r0, _020B8BD0 ; =0x021CB828
	mov r1, sl
	bl sub_020A4C54
	str sb, [sl, #0x20]
	ldr r1, [sp, #0x48]
	str fp, [sl, #0x2c]
	ldr r0, [sp, #0x4c]
	str r1, [sl, #0x30]
	str r0, [sl, #0x34]
	mov r0, #0
	str r0, [sl, #0x38]
	str r0, [sl, #0x3c]
	ldr r0, [sl, #0x24]
	bic r0, r0, #1
	orr r0, r0, #1
	str r0, [sl, #0x24]
	bl sub_020C3D98
	mov r4, r0
	mov r2, #1
	mov r0, sl
	mov r1, #0
	str r2, [sl, #0x2c]
	bl sub_020B8D64
	mov r0, r4
	str fp, [sl, #0x2c]
	bl sub_020C3DAC
	mov r0, #1
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B8BC8: .word 0x021CB874
_020B8BCC: .word sub_020B8D54
_020B8BD0: .word 0x021CB828
	arm_func_end sub_020B8A34

	arm_func_start sub_020B8BD4
sub_020B8BD4: ; 0x020B8BD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	mov r2, #1
	mov r1, #0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl sub_020C5204
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	ldmneia sp!, {r4, pc}
	add r0, r4, #8
	bl sub_020CB848
	add r0, r4, #0x14
	bl sub_020CB860
	ldr r0, [r4, #0x24]
	orr r0, r0, #2
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B8BD4

	arm_func_start sub_020B8C28
sub_020B8C28: ; 0x020B8C28
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x24]
	mov r1, r1, lsl #0x1f
	movs r1, r1, asr #0x1f
	ldmeqia sp!, {r3, pc}
	bl sub_020B8CB0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B8C28

	arm_func_start sub_020B8C44
sub_020B8C44: ; 0x020B8C44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	str r1, [r7, #0x3c]
	ldr r0, [r7, #0x48]
	mov r6, #0
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _020B8CAC ; =0x021CB874
	mov r8, #1
_020B8C68:
	add r0, r7, r6
	ldrb r5, [r0, #0x4c]
	ldr r1, [r7, #0x3c]
	add r0, r4, r5, lsl #3
	ldr r0, [r0, #4]
	add r0, r1, r0
	bl sub_020C5EEC
	mov r2, r0
	mov r0, r8, lsl r5
	and r1, r2, #0xff
	mov r2, r2, asr #8
	bl sub_020C5370
	ldr r0, [r7, #0x48]
	add r6, r6, #1
	cmp r6, r0
	blt _020B8C68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B8CAC: .word 0x021CB874
	arm_func_end sub_020B8C44

	arm_func_start sub_020B8CB0
sub_020B8CB0: ; 0x020B8CB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	beq _020B8D18
	ldr r0, [r4, #0x40]
	mov r2, #1
	mov r1, #0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl sub_020C522C
	add r0, r4, #8
	bl sub_020CB878
	add r0, r4, #0x14
	bl sub_020CB890
	ldr r0, [r4, #0x24]
	bic r0, r0, #2
	str r0, [r4, #0x24]
	bl sub_020C5AAC
	mov r5, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r5
	bl sub_020C5A40
_020B8D18:
	mov r0, r4
	bl sub_020B8D24
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020B8CB0

	arm_func_start sub_020B8D24
sub_020B8D24: ; 0x020B8D24
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x40]
	bl sub_020B7BC4
	ldr r0, _020B8D50 ; =0x021CB828
	mov r1, r4
	bl sub_020A4D5C
	ldr r0, [r4, #0x24]
	bic r0, r0, #1
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B8D50: .word 0x021CB828
	arm_func_end sub_020B8D24

	arm_func_start sub_020B8D54
sub_020B8D54: ; 0x020B8D54
	ldr ip, _020B8D60 ; =sub_020B8D64
	mov r1, #1
	bx ip
	; .align 2, 0
_020B8D60: .word sub_020B8D64
	arm_func_end sub_020B8D54

	arm_func_start sub_020B8D64
sub_020B8D64: ; 0x020B8D64
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_020E2178
	ldr r1, [r5, #0x48]
	ldr r2, [r5, #0x38]
	mov r3, r0
	mul ip, r3, r2
	cmp r1, #0
	mov lr, #0
	ble _020B8DC8
	ldr r2, _020B8E0C ; =0x021CB874
	ldr r0, _020B8E10 ; =0x021CB834
_020B8DA4:
	add r1, r5, lr
	ldrb r1, [r1, #0x4c]
	ldr r1, [r2, r1, lsl #3]
	add r1, r1, ip
	str r1, [r0, lr, lsl #2]
	ldr r1, [r5, #0x48]
	add lr, lr, #1
	cmp lr, r1
	blt _020B8DA4
_020B8DC8:
	ldr r0, [r5, #0x20]
	ldr r2, _020B8E10 ; =0x021CB834
	str r0, [sp]
	ldr ip, [r5, #0x34]
	mov r0, r4
	str ip, [sp, #4]
	ldr r4, [r5, #0x30]
	blx r4
	ldr r0, [r5, #0x38]
	add r1, r0, #1
	str r1, [r5, #0x38]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	movge r0, #0
	strge r0, [r5, #0x38]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B8E0C: .word 0x021CB874
_020B8E10: .word 0x021CB834
	arm_func_end sub_020B8D64

	arm_func_start sub_020B8E14
sub_020B8E14: ; 0x020B8E14
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x24]
	mov r1, r1, lsl #0x1e
	movs r1, r1, asr #0x1f
	ldmeqia sp!, {r4, pc}
	ldr r2, [r0, #0x40]
	mov r3, #1
	mov r1, #0
	mov r2, r3, lsl r2
	ldr r0, [r0, #0x44]
	mov r3, r1
	bl sub_020C522C
	bl sub_020C5AAC
	mov r4, r0
	mov r0, #1
	bl sub_020C5884
	mov r0, r4
	bl sub_020C5A40
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B8E14

	arm_func_start sub_020B8E60
sub_020B8E60: ; 0x020B8E60
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x24]
	mov r0, r0, lsl #0x1e
	movs r0, r0, asr #0x1f
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _020B8EB0
	mov r5, #1
_020B8E88:
	bl sub_020C3D98
	mov r6, r0
	mov r0, r4
	mov r1, r5
	bl sub_020B8D64
	mov r0, r6
	bl sub_020C3DAC
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _020B8E88
_020B8EB0:
	ldr r0, [r4, #0x40]
	mov r2, #1
	mov r1, #0
	mov r2, r2, lsl r0
	ldr r0, [r4, #0x44]
	mov r3, r1
	bl sub_020C5204
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020B8E60

	.bss


	.global Unk_021CB824
Unk_021CB824: ; 0x021CB824
	.space 0x4

	.global Unk_021CB828
Unk_021CB828: ; 0x021CB828
	.space 0xC

	.global Unk_021CB834
Unk_021CB834: ; 0x021CB834
	.space 0x40

	.global Unk_021CB874
Unk_021CB874: ; 0x021CB874
	.space 0x80

