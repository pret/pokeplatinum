	.include "macros/function.inc"
	.include "include/ov5_021F5A10.inc"

	

	.text


	thumb_func_start ov5_021F5A10
ov5_021F5A10: ; 0x021F5A10
	push {r4, lr}
	mov r2, #0
	mov r1, #0xc
	add r3, r2, #0
	add r4, r0, #0
	bl ov5_021DF53C
	str r4, [r0, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5A10

	thumb_func_start ov5_021F5A24
ov5_021F5A24: ; 0x021F5A24
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F5B50
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F5A24

	thumb_func_start ov5_021F5A34
ov5_021F5A34: ; 0x021F5A34
	mov r1, #0
	ldrsh r1, [r0, r1]
	add r1, r1, #1
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F5A34

	thumb_func_start ov5_021F5A40
ov5_021F5A40: ; 0x021F5A40
	push {r3, lr}
	mov r1, #0
	ldrsh r2, [r0, r1]
	sub r2, r2, #1
	strh r2, [r0]
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _021F5A54
	bl sub_02022974
_021F5A54:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5A40

	thumb_func_start ov5_021F5A58
ov5_021F5A58: ; 0x021F5A58
	mov r1, #2
	ldrsh r1, [r0, r1]
	add r1, r1, #1
	strh r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F5A58

	thumb_func_start ov5_021F5A64
ov5_021F5A64: ; 0x021F5A64
	push {r3, lr}
	mov r1, #2
	ldrsh r2, [r0, r1]
	sub r2, r2, #1
	strh r2, [r0, #2]
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _021F5A78
	bl sub_02022974
_021F5A78:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5A64

	thumb_func_start ov5_021F5A7C
ov5_021F5A7C: ; 0x021F5A7C
	push {r3, lr}
	cmp r1, #0
	bne _021F5A88
	bl ov5_021F5A34
	pop {r3, pc}
_021F5A88:
	bl ov5_021F5A58
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5A7C

	thumb_func_start ov5_021F5A90
ov5_021F5A90: ; 0x021F5A90
	push {r3, lr}
	cmp r1, #0
	bne _021F5A9C
	bl ov5_021F5A40
	pop {r3, pc}
_021F5A9C:
	bl ov5_021F5A64
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5A90

	thumb_func_start ov5_021F5AA4
ov5_021F5AA4: ; 0x021F5AA4
	push {r4, lr}
	ldr r0, [r0, #0x40]
	add r4, r1, #0
	mov r1, #0x14
	bl ov5_021DF55C
	strb r4, [r0, #6]
	pop {r4, pc}
	thumb_func_end ov5_021F5AA4

	thumb_func_start ov5_021F5AB4
ov5_021F5AB4: ; 0x021F5AB4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _021F5AF8
	mov r1, #1
	strb r1, [r4, #4]
	ldr r0, [r4, #8]
	mov r2, #0x55
	bl ov5_021DF9E0
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #0xaa
	bl ov5_021DFA14
	mov r1, #1
	ldr r0, [r4, #8]
	mov r2, #4
	add r3, r1, #0
	bl ov5_021DFA3C
	mov r1, #1
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F5AFC ; =0x02200BC0
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	add r3, r1, #0
	bl ov5_021DF864
_021F5AF8:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021F5AFC: .word 0x02200BC0
	thumb_func_end ov5_021F5AB4

	thumb_func_start ov5_021F5B00
ov5_021F5B00: ; 0x021F5B00
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _021F5B48
	mov r0, #1
	strb r0, [r4, #5]
	ldr r0, [r4, #8]
	mov r1, #0xa
	mov r2, #0x6c
	bl ov5_021DF9E0
	ldr r0, [r4, #8]
	mov r1, #0xa
	mov r2, #0xaa
	bl ov5_021DFA14
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0xd
	mov r3, #1
	bl ov5_021DFA3C
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021F5B4C ; =0x02200BC0
	mov r2, #0xa
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r1, #0xc
	add r3, r2, #0
	bl ov5_021DF864
_021F5B48:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021F5B4C: .word 0x02200BC0
	thumb_func_end ov5_021F5B00

	thumb_func_start ov5_021F5B50
ov5_021F5B50: ; 0x021F5B50
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _021F5B7E
	mov r0, #0
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov5_021DFA08
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov5_021DFA30
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov5_021DFA7C
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov5_021DF9D4
_021F5B7E:
	pop {r4, pc}
	thumb_func_end ov5_021F5B50

	thumb_func_start ov5_021F5B80
ov5_021F5B80: ; 0x021F5B80
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #1
	bne _021F5BAE
	mov r0, #0
	strb r0, [r4, #5]
	ldr r0, [r4, #8]
	mov r1, #0xa
	bl ov5_021DFA08
	ldr r0, [r4, #8]
	mov r1, #0xa
	bl ov5_021DFA30
	ldr r0, [r4, #8]
	mov r1, #0xb
	bl ov5_021DFA7C
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl ov5_021DF9D4
_021F5BAE:
	pop {r4, pc}
	thumb_func_end ov5_021F5B80

	thumb_func_start ov5_021F5BB0
ov5_021F5BB0: ; 0x021F5BB0
	push {r3, lr}
	mov r1, #0
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bne _021F5BBE
	bl ov5_021F5AB4
_021F5BBE:
	pop {r3, pc}
	thumb_func_end ov5_021F5BB0

	thumb_func_start ov5_021F5BC0
ov5_021F5BC0: ; 0x021F5BC0
	push {r3, lr}
	mov r1, #2
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bne _021F5BCE
	bl ov5_021F5B00
_021F5BCE:
	pop {r3, pc}
	thumb_func_end ov5_021F5BC0

	thumb_func_start ov5_021F5BD0
ov5_021F5BD0: ; 0x021F5BD0
	push {r3, lr}
	mov r1, #0
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bne _021F5BDE
	bl ov5_021F5B50
_021F5BDE:
	pop {r3, pc}
	thumb_func_end ov5_021F5BD0

	thumb_func_start ov5_021F5BE0
ov5_021F5BE0: ; 0x021F5BE0
	push {r3, lr}
	mov r1, #2
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bne _021F5BEE
	bl ov5_021F5B80
_021F5BEE:
	pop {r3, pc}
	thumb_func_end ov5_021F5BE0

	thumb_func_start ov5_021F5BF0
ov5_021F5BF0: ; 0x021F5BF0
	push {r3, lr}
	cmp r1, #0
	bne _021F5BFC
	bl ov5_021F5BB0
	pop {r3, pc}
_021F5BFC:
	bl ov5_021F5BC0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5BF0

	thumb_func_start ov5_021F5C04
ov5_021F5C04: ; 0x021F5C04
	push {r3, lr}
	cmp r1, #0
	bne _021F5C10
	bl ov5_021F5BD0
	pop {r3, pc}
_021F5C10:
	bl ov5_021F5BE0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5C04

	thumb_func_start ov5_021F5C18
ov5_021F5C18: ; 0x021F5C18
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, _021F5C48 ; =0x02200B7C
	add r4, r3, #0
	ldmia r6!, {r5, r6}
	add r3, sp, #0
	str r5, [sp]
	str r6, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	bl ov5_021DF84C
	add r5, r0, #0
	cmp r4, #1
	bne _021F5C40
	bl sub_020213F4
	mov r1, #0
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
_021F5C40:
	add r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021F5C48: .word 0x02200B7C
	thumb_func_end ov5_021F5C18

	thumb_func_start ov5_021F5C4C
ov5_021F5C4C: ; 0x021F5C4C
	push {r3, lr}
	bl sub_02071598
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5C4C

	thumb_func_start ov5_021F5C58
ov5_021F5C58: ; 0x021F5C58
	push {r3, lr}
	bl sub_02071598
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _021F5C6E
	mov r1, #0
	bl sub_02021320
_021F5C6E:
	pop {r3, pc}
	thumb_func_end ov5_021F5C58

	thumb_func_start ov5_021F5C70
ov5_021F5C70: ; 0x021F5C70
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x30
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov5_021F5BF0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r3, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldrb r3, [r3, #6]
	ldr r1, [r4, #0x30]
	add r2, sp, #0
	bl ov5_021F5C18
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov5_021F5A7C
	add r0, r5, #0
	bl sub_020715B4
	cmp r0, #1
	bne _021F5CC8
	ldr r0, _021F5CD0 ; =0x000005DD
	bl sub_02005748
_021F5CC8:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021F5CD0: .word 0x000005DD
	thumb_func_end ov5_021F5C70

	thumb_func_start ov5_021F5CD4
ov5_021F5CD4: ; 0x021F5CD4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl sub_020715E4
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021F5CF0
	cmp r0, #1
	beq _021F5D12
	cmp r0, #2
	b _021F5D2A
_021F5CF0:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	beq _021F5D06
	mov r0, #2
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4, #0x28]
	b _021F5D2A
_021F5D06:
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F5D2A
_021F5D12:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _021F5D2A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x14]
_021F5D2A:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5CD4

	thumb_func_start ov5_021F5D38
ov5_021F5D38: ; 0x021F5D38
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x40]
	bl sub_020211FC
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov5_021F5A90
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov5_021F5C04
	pop {r4, pc}
	thumb_func_end ov5_021F5D38

	thumb_func_start ov5_021F5D54
ov5_021F5D54: ; 0x021F5D54
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _021F5D86
	add r1, sp, #0
	bl sub_020715E4
	ldr r1, [sp]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl sub_020212A8
_021F5D86:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5D54

	thumb_func_start ov5_021F5D8C
ov5_021F5D8C: ; 0x021F5D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp, #8]
	add r7, r3, #0
	bl ov5_021DF578
	add r4, r0, #0
	mov r1, #0x14
	str r6, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl ov5_021DF55C
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, sp, #0xc
	str r5, [sp, #0x24]
	bl sub_02063050
	add r0, r5, #0
	bl sub_02062C0C
	add r2, r0, #1
	cmp r7, #1
	bne _021F5DC4
	ldr r1, _021F5DDC ; =0x02200BAC
	b _021F5DC6
_021F5DC4:
	ldr r1, _021F5DE0 ; =0x02200B84
_021F5DC6:
	add r0, sp, #0x18
	str r0, [sp]
	str r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	add r2, sp, #0xc
	bl ov5_021DF72C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F5DDC: .word 0x02200BAC
_021F5DE0: .word 0x02200B84
	thumb_func_end ov5_021F5D8C

	thumb_func_start ov5_021F5DE4
ov5_021F5DE4: ; 0x021F5DE4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x30
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x3c]
	bl sub_02062910
	str r0, [r4, #8]
	ldr r0, [r4, #0x3c]
	bl sub_02062918
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov5_021F5BF0
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715E4
	ldr r3, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldrb r3, [r3, #6]
	ldr r1, [r4, #0x30]
	add r2, sp, #0
	bl ov5_021F5C18
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov5_021F5A7C
	add r0, r5, #0
	bl sub_020715B4
	cmp r0, #1
	bne _021F5E4C
	ldr r0, _021F5E54 ; =0x000005DD
	bl sub_02005748
_021F5E4C:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021F5E54: .word 0x000005DD
	thumb_func_end ov5_021F5DE4

	thumb_func_start ov5_021F5E58
ov5_021F5E58: ; 0x021F5E58
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x3c]
	ldr r1, [r4, #8]
	add r5, r0, #0
	ldr r2, [r4, #0xc]
	add r0, r6, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F5E74
	bl sub_02022974
_021F5E74:
	add r0, r6, #0
	add r1, sp, #0
	bl ov5_021ECDA0
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r2, [sp, #8]
	lsr r1, r0, #5
	add r1, r2, r1
	str r1, [sp, #8]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021F5E9C
	cmp r1, #1
	beq _021F5EBC
	cmp r1, #2
	b _021F5ED4
_021F5E9C:
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r4, #0x1c]
	beq _021F5EB0
	ldr r1, [r4, #0x28]
	lsr r0, r0, #4
	sub r0, r1, r0
	str r0, [r4, #0x28]
	b _021F5ED4
_021F5EB0:
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F5ED4
_021F5EBC:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _021F5ED4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x14]
_021F5ED4:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021F5E58

	thumb_func_start ov5_021F5EE0
ov5_021F5EE0: ; 0x021F5EE0
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x30
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x3c]
	bl sub_02062910
	str r0, [r4, #8]
	ldr r0, [r4, #0x3c]
	bl sub_02062918
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov5_021F5BF0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl ov5_021F5A7C
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov5_021F5EE0

	thumb_func_start ov5_021F5F24
ov5_021F5F24: ; 0x021F5F24
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x3c]
	ldr r1, [r4, #8]
	add r5, r0, #0
	ldr r2, [r4, #0xc]
	add r0, r6, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F5F40
	bl sub_02022974
_021F5F40:
	add r0, r6, #0
	add r1, sp, #0
	bl ov5_021ECDA0
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	lsr r0, r0, #5
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _021F5FFA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F5F6C: ; jump table
	.short _021F5F7A - _021F5F6C - 2 ; case 0
	.short _021F5F7A - _021F5F6C - 2 ; case 1
	.short _021F5F80 - _021F5F6C - 2 ; case 2
	.short _021F5F9E - _021F5F6C - 2 ; case 3
	.short _021F5FC0 - _021F5F6C - 2 ; case 4
	.short _021F5FE2 - _021F5F6C - 2 ; case 5
	.short _021F5FFA - _021F5F6C - 2 ; case 6
_021F5F7A:
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F5FFA
_021F5F80:
	ldr r3, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldrb r3, [r3, #6]
	ldr r1, [r4, #0x30]
	add r2, sp, #0
	bl ov5_021F5C18
	str r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021320
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F5FFA
_021F5F9E:
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021320
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_020715B4
	cmp r0, #1
	bne _021F5FBA
	ldr r0, _021F6008 ; =0x000005DD
	bl sub_02005748
_021F5FBA:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021F5FC0:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	beq _021F5FD6
	mov r0, #2
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4, #0x28]
	b _021F5FFA
_021F5FD6:
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021F5FFA
_021F5FE2:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _021F5FFA
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x14]
_021F5FFA:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021F6008: .word 0x000005DD
	thumb_func_end ov5_021F5F24

	.rodata


	.global Unk_ov5_02200B7C
Unk_ov5_02200B7C: ; 0x02200B7C
	.incbin "incbin/overlay5_rodata.bin", 0x8268, 0x8270 - 0x8268

	.global Unk_ov5_02200B84
Unk_ov5_02200B84: ; 0x02200B84
	.incbin "incbin/overlay5_rodata.bin", 0x8270, 0x8284 - 0x8270

	.global Unk_ov5_02200B98
Unk_ov5_02200B98: ; 0x02200B98
	.incbin "incbin/overlay5_rodata.bin", 0x8284, 0x8298 - 0x8284

	.global Unk_ov5_02200BAC
Unk_ov5_02200BAC: ; 0x02200BAC
	.incbin "incbin/overlay5_rodata.bin", 0x8298, 0x82AC - 0x8298

	.global Unk_ov5_02200BC0
Unk_ov5_02200BC0: ; 0x02200BC0
	.incbin "incbin/overlay5_rodata.bin", 0x82AC, 0x18

