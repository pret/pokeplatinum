	.include "macros/function.inc"
	.include "overlay004/ov4_021D78C8.inc"

	

	.text


	arm_func_start ov4_021D78C8
ov4_021D78C8: ; 0x021D78C8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _021D7928 ; =0x0221A4DC
	mov r4, r0
	ldr r2, [r2, #4]
	mov r6, r1
	mov r5, r3
	cmp r2, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, #0
	mov r2, #0x64
	bl MI_CpuFill8
	strh r6, [r4, #8]
	mov r0, #1
	strh r0, [r4, #0xa]
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	strb r0, [r4, #0xc]
	ldr r1, _021D7928 ; =0x0221A4DC
	str r0, [r4, #0x10]
	mov r0, r5
	str r4, [r1, #4]
	bl ov4_0220DCE0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D7928: .word 0x0221A4DC
	arm_func_end ov4_021D78C8

	arm_func_start ov4_021D792C
ov4_021D792C: ; 0x021D792C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _021D794C
	cmp r0, #1
	beq _021D7958
	cmp r0, #2
	beq _021D7964
	ldmia sp!, {r3, pc}
_021D794C:
	ldr r0, _021D7970 ; =0x022173B8
	bl ov4_021D3038
	ldmia sp!, {r3, pc}
_021D7958:
	ldr r0, _021D7974 ; =0x022173E0
	bl ov4_021D3038
	ldmia sp!, {r3, pc}
_021D7964:
	ldr r0, _021D7978 ; =0x02217404
	bl ov4_021D3038
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D7970: .word 0x022173B8
_021D7974: .word 0x022173E0
_021D7978: .word 0x02217404
	arm_func_end ov4_021D792C

	arm_func_start ov4_021D797C
ov4_021D797C: ; 0x021D797C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _021D7A20 ; =0x0221A4DC
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021D7A0C
	ldrh r0, [r0, #4]
	cmp r0, #1
	addne sp, sp, #0xc
	ldmneia sp!, {pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, _021D7A20 ; =0x0221A4DC
	ldr r3, _021D7A24 ; =ov4_021D7780
	ldr lr, [r0, #4]
	ldr r2, _021D7A28 ; =ov4_021D77C4
	ldrh ip, [lr, #8]
	add r0, sp, #0
	mov r1, #2
	strb ip, [sp, #8]
	ldrh ip, [lr, #0xa]
	strb ip, [sp, #9]
	str r3, [sp]
	str r2, [sp, #4]
	strh r1, [lr, #4]
	bl ov4_021E5C34
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {pc}
	ldr r1, _021D7A2C ; =0xFFFF3BE9
	mov r0, #9
	bl ov4_021D7724
	add sp, sp, #0xc
	ldmia sp!, {pc}
_021D7A0C:
	ldr r1, _021D7A2C ; =0xFFFF3BE9
	mov r0, #9
	bl ov4_021D7724
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_021D7A20: .word 0x0221A4DC
_021D7A24: .word ov4_021D7780
_021D7A28: .word ov4_021D77C4
_021D7A2C: .word 0xFFFF3BE9
	arm_func_end ov4_021D797C

	arm_func_start ov4_021D7A30
ov4_021D7A30: ; 0x021D7A30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021D797C
	ldr r0, _021D7A88 ; =0x0221A4DC
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #1
	strneb r0, [r1, #0xc]
	bl ov4_021D7BFC
	cmp r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr ip, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl ov4_021E5FDC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7A88: .word 0x0221A4DC
	arm_func_end ov4_021D7A30

	arm_func_start ov4_021D7A8C
ov4_021D7A8C: ; 0x021D7A8C
	stmfd sp!, {r3, lr}
	ldr r0, _021D7AE0 ; =0x0221A4DC
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _021D7AD8
	mov r0, #3
	strh r0, [r1, #4]
	bl ov4_021D7BFC
	ldr r0, _021D7AE0 ; =0x0221A4DC
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
_021D7AD8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D7AE0: .word 0x0221A4DC
	arm_func_end ov4_021D7A8C

	arm_func_start ov4_021D7AE4
ov4_021D7AE4: ; 0x021D7AE4
	stmfd sp!, {r3, lr}
	ldr r0, _021D7BF8 ; =0x0221A4DC
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r1, #0x10]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021D7B98
_021D7B08: ; jump table
	b _021D7B98 ; case 0
	b _021D7B1C ; case 1
	b _021D7B38 ; case 2
	b _021D7B74 ; case 3
	b _021D7B94 ; case 4
_021D7B1C:
	mov r0, #0
	str r0, [r1, #0]
	bl ov4_021E9214
	ldr r1, _021D7BF8 ; =0x0221A4DC
	ldr r1, [r1, #4]
	str r0, [r1, #0x10]
	ldmia sp!, {r3, pc}
_021D7B38:
	bl ov4_021E9548
	ldr r0, _021D7BF8 ; =0x0221A4DC
	mov r1, #8
	ldr r3, [r0, #4]
	str r1, [sp]
	ldr r2, [r3, #0x54]
	add r0, r3, #0x14
	add r1, r3, #0x34
	add r3, r3, #0x58
	bl ov4_021D7A30
	ldr r0, _021D7BF8 ; =0x0221A4DC
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, pc}
_021D7B74:
	bl ov4_021E9548
	ldr r0, _021D7BF8 ; =0x0221A4DC
	mvn r3, #0
	ldr r2, [r0, #4]
	mov r1, #1
	str r3, [r2, #0]
	ldr r0, [r0, #4]
	strb r1, [r0, #0xc]
_021D7B94:
	ldmia sp!, {r3, pc}
_021D7B98:
	ldrh r0, [r1, #4]
	cmp r0, #2
	bne _021D7BB8
	bl ov4_021E5DDC
	ldr r1, _021D7BF8 ; =0x0221A4DC
	ldr r1, [r1, #4]
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
_021D7BB8:
	cmp r0, #4
	ldmneia sp!, {r3, pc}
	ldrh r0, [r1, #6]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_02213898
	cmp r0, #9
	ldmeqia sp!, {r3, pc}
	ldr r0, _021D7BF8 ; =0x0221A4DC
	mov r3, #0
	ldr r2, [r0, #4]
	mov r1, #6
	strh r3, [r2, #6]
	ldr r0, [r0, #4]
	strh r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D7BF8: .word 0x0221A4DC
	arm_func_end ov4_021D7AE4

	arm_func_start ov4_021D7BFC
ov4_021D7BFC: ; 0x021D7BFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _021D7DA8 ; =0x0221A4DC
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r1, #0x10]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021D7C84
_021D7C24: ; jump table
	b _021D7C84 ; case 0
	b _021D7C38 ; case 1
	b _021D7C40 ; case 2
	b _021D7C48 ; case 3
	b _021D7C7C ; case 4
_021D7C38:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D7C40:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D7C48:
	bl ov4_021D7AE4
	ldr r1, _021D7DA8 ; =0x0221A4DC
	mov r0, #5
	ldr r1, [r1, #0]
	bl ov4_021D7724
	ldr r1, _021D7DA8 ; =0x0221A4DC
	mov r0, #7
	ldr r3, [r1, #4]
	mov r2, #4
	strh r0, [r3, #4]
	ldr r1, [r1, #4]
	str r2, [r1, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D7C7C:
	mov r0, #7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D7C84:
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl ov4_021E5EAC
	mov r4, r0
	cmp r4, #5
	bne _021D7CC8
	ldr r1, _021D7DA8 ; =0x0221A4DC
	mov r0, #4
	ldr r2, [r1, #4]
	mov r3, #1
	strh r0, [r2, #4]
	ldr r2, [r1, #4]
	strh r3, [r2, #6]
	ldr r1, [r1, #4]
	strb r3, [r1, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D7CC8:
	cmp r4, #0
	bge _021D7DA0
	mvn r0, #9
	cmp r4, r0
	blt _021D7CFC
	ldr r1, _021D7DAC ; =0xFFFF3BE9
	mov r0, #9
	bl ov4_021D7724
	ldr r1, _021D7DA8 ; =0x0221A4DC
	mov r0, #8
	ldr r1, [r1, #4]
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D7CFC:
	ldr r0, _021D7DA8 ; =0x0221A4DC
	ldr r5, [r0, #4]
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _021D7D74
	ldrh r7, [r5, #8]
	bl ov4_0220DCD0
	ldr r1, _021D7DA8 ; =0x0221A4DC
	mov r6, r0
	str r4, [r1, #0]
	bl ov4_021D7DB0
	mov r2, r6, lsl #0x10
	mov r3, r2, lsr #0x10
	mov r0, r5
	mov r1, r7
	mov r2, #1
	bl ov4_021D78C8
	ldr r0, _021D7DA8 ; =0x0221A4DC
	ldr r0, [r0, #4]
	add r0, r0, #0x14
	bl ov4_021E91B4
	ldr r0, _021D7DA8 ; =0x0221A4DC
	mov r3, #1
	ldr r1, [r0, #4]
	mov r2, #0
	str r3, [r1, #0x10]
	ldr r1, [r0, #4]
	mov r0, #2
	str r2, [r1, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D7D74:
	ldr r0, [r0, #0]
	cmp r0, r4
	movlt r4, r0
	mov r1, r4
	mov r0, #5
	bl ov4_021D7724
	ldr r1, _021D7DA8 ; =0x0221A4DC
	mov r0, #7
	ldr r1, [r1, #4]
	strh r0, [r1, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D7DA0:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D7DA8: .word 0x0221A4DC
_021D7DAC: .word 0xFFFF3BE9
	arm_func_end ov4_021D7BFC

	arm_func_start ov4_021D7DB0
ov4_021D7DB0: ; 0x021D7DB0
	stmfd sp!, {r4, lr}
	ldr r0, _021D7E0C ; =0x0221A4DC
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r1, #4]
	cmp r1, #1
	moveq r1, #0
	streq r1, [r0, #4]
	ldmeqia sp!, {r4, pc}
	bl ov4_021E5FA0
	cmp r0, #0
	bne _021D7DFC
	mov r4, #0xa
_021D7DE8:
	mov r0, r4
	bl OS_Sleep
	bl ov4_021E5FA0
	cmp r0, #0
	beq _021D7DE8
_021D7DFC:
	ldr r0, _021D7E0C ; =0x0221A4DC
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D7E0C: .word 0x0221A4DC
	arm_func_end ov4_021D7DB0

	arm_func_start ov4_021D7E10
ov4_021D7E10: ; 0x021D7E10
	stmfd sp!, {r3, lr}
	ldr r0, _021D7E7C ; =0x0221A4DC
	ldr r2, [r0, #4]
	cmp r2, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldrh r1, [r2, #4]
	cmp r1, #8
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #1
	bne _021D7E50
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, pc}
_021D7E50:
	mov r0, #5
	strh r0, [r2, #4]
	bl ov4_021E5FA0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _021D7E7C ; =0x0221A4DC
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D7E7C: .word 0x0221A4DC
	arm_func_end ov4_021D7E10

	arm_func_start ov4_021D7E80
ov4_021D7E80: ; 0x021D7E80
	ldr r0, _021D7EA8 ; =0x0221A4DC
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021D7EA0
	ldrh r0, [r0, #4]
	cmp r0, #6
	moveq r0, #1
	bxeq lr
_021D7EA0:
	mov r0, #0
	bx lr
	; .align 2, 0
_021D7EA8: .word 0x0221A4DC
	arm_func_end ov4_021D7E80

	arm_func_start ov4_021D7EAC
ov4_021D7EAC: ; 0x021D7EAC
	ldr ip, _021D7EB4 ; =ov4_022156EC
	bx ip
	; .align 2, 0
_021D7EB4: .word ov4_022156EC
	arm_func_end ov4_021D7EAC

	arm_func_start ov4_021D7EB8
ov4_021D7EB8: ; 0x021D7EB8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r1, #0
	mov r2, #0x3c
	mov r4, r0
	bl MI_CpuFill8
	mov r0, #0xff
	str r0, [r4, #4]
	bl ov4_021D7BFC
	cmp r0, #4
	addne sp, sp, #0xc
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	bl ov4_021E5F18
	str r0, [r4, #0]
	cmp r0, #0xff
	beq _021D7F04
	cmp r0, #0x63
	ble _021D7F18
_021D7F04:
	mov r0, #0x63
	str r0, [r4, #0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021D7F18:
	bl OS_DisableInterrupts
	mov r6, r0
	bl ov4_02215398
	mov r5, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r5, #0
	bne _021D7F4C
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021D7F4C:
	mov r0, r5
	add r1, r4, #0x33
	mov r2, #6
	bl MI_CpuCopy8
	ldr r0, [r4, #0]
	cmp r0, #0
	blt _021D7FB0
	cmp r0, #3
	bge _021D7FB0
	add r0, sp, #0
	bl ov4_022153DC
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _021D7FA0
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021D7FA0:
	ldrh r2, [sp]
	mov r0, r5
	add r1, r4, #0x12
	bl MI_CpuCopy8
_021D7FB0:
	mov r0, r6
	bl OS_RestoreInterrupts
	add r0, sp, #2
	bl ov4_021E5F48
	cmp r0, #0
	beq _021D8004
	ldrb r1, [sp, #2]
	mov r0, #0
	cmp r1, #0x30
	blo _021D7FE0
	cmp r1, #0x39
	movls r0, #1
_021D7FE0:
	cmp r0, #0
	subne r3, r1, #0x30
	moveq r3, #0xff
	add r0, sp, #3
	add r1, r4, #8
	mov r2, #9
	str r3, [r4, #4]
	bl MI_CpuCopy8
	b _021D800C
_021D8004:
	mov r0, #0xff
	str r0, [r4, #4]
_021D800C:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov4_021D7EB8

	arm_func_start ov4_021D8018
ov4_021D8018: ; 0x021D8018
	stmfd sp!, {r3, lr}
	bl ov4_021D7AE4
	bl ov4_021D7E80
	cmp r0, #0
	beq _021D8060
	bl ov4_021E5F18
	mov r2, r0
	cmp r2, #0xff
	beq _021D8044
	cmp r2, #0x63
	bls _021D8048
_021D8044:
	mov r2, #0x63
_021D8048:
	ldr r1, _021D8068 ; =0xFFFF2D10
	mov r0, #8
	sub r1, r1, r2
	bl ov4_021D7724
	mov r0, #1
	ldmia sp!, {r3, pc}
_021D8060:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D8068: .word 0xFFFF2D10
	arm_func_end ov4_021D8018

	.data


	.global Unk_ov4_022173B8
Unk_ov4_022173B8: ; 0x022173B8
	.incbin "incbin/overlay4_data.bin", 0x1538, 0x1560 - 0x1538

	.global Unk_ov4_022173E0
Unk_ov4_022173E0: ; 0x022173E0
	.incbin "incbin/overlay4_data.bin", 0x1560, 0x1584 - 0x1560

	.global Unk_ov4_02217404
Unk_ov4_02217404: ; 0x02217404
	.incbin "incbin/overlay4_data.bin", 0x1584, 0x20



	.bss


	.global Unk_ov4_0221A4DC
Unk_ov4_0221A4DC: ; 0x0221A4DC
	.space 0x4

	.global Unk_ov4_0221A4E0
Unk_ov4_0221A4E0: ; 0x0221A4E0
	.space 0x4

