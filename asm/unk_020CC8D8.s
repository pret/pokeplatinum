	.include "macros/function.inc"
	.include "include/unk_020CC8D8.inc"

	

	.text


	arm_func_start sub_020CC8D8
sub_020CC8D8: ; 0x020CC8D8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020CCC00 ; =0x021CEE20
	mov r5, r0
	ldr r4, [r1, #0]
	mov r1, #0
	add r0, r4, #0x18
	mov r2, #0x48
	bl sub_020C4CF4
	ldr r0, _020CCC04 ; =0x0000203F
	str r5, [r4, #4]
	str r0, [r4, #0x58]
	cmp r5, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5, asr #8
	and r0, r0, #0xff
	mov r3, #1
	mov ip, r3, lsl r0
	and r2, r5, #0xff
	mov r1, r5, asr #0x10
	str ip, [r4, #0x18]
	mov r0, #0xff
	strb r0, [r4, #0x54]
	cmp r2, #1
	and r0, r1, #0xff
	bne _020CC9D8
	cmp ip, #0x200
	beq _020CC958
	cmp ip, #0x2000
	beq _020CC978
	cmp ip, #0x10000
	beq _020CC99C
	b _020CCBE0
_020CC958:
	mov r0, #0x10
	str r0, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #0xf0
	strb r0, [r4, #0x54]
	b _020CC9BC
_020CC978:
	mov r0, #0x20
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #0
	strb r0, [r4, #0x54]
	b _020CC9BC
_020CC99C:
	mov r0, #0x80
	str r0, [r4, #0x24]
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0xa
	str r0, [r4, #0x2c]
	mov r0, #0
	strb r0, [r4, #0x54]
_020CC9BC:
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x40
	orr r0, r0, #0x4300
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020CC9D8:
	cmp r2, #2
	bne _020CCBA0
	cmp ip, #0x100000
	bhi _020CCA08
	bhs _020CCA2C
	cmp ip, #0x40000
	bhi _020CC9FC
	beq _020CCA2C
	b _020CCBE0
_020CC9FC:
	cmp ip, #0x80000
	beq _020CCA2C
	b _020CCBE0
_020CCA08:
	cmp ip, #0x400000
	bhi _020CCA20
	bhs _020CCAA4
	cmp ip, #0x200000
	beq _020CCA58
	b _020CCBE0
_020CCA20:
	cmp ip, #0x800000
	beq _020CCAF4
	b _020CCBE0
_020CCA2C:
	mov r0, #0x19
	str r0, [r4, #0x30]
	mov r1, #0x12c
	str r1, [r4, #0x34]
	ldr r0, _020CCC08 ; =0x00001388
	str r1, [r4, #0x50]
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x480
	str r0, [r4, #0x58]
	b _020CCB70
_020CCA58:
	mov r0, #0x17
	str r0, [r4, #0x30]
	mov r1, #0x12c
	str r1, [r4, #0x34]
	mov r1, #0x1f4
	ldr r0, _020CCC08 ; =0x00001388
	str r1, [r4, #0x40]
	str r0, [r4, #0x44]
	mov r1, r0, lsl #1
	ldr r0, _020CCC0C ; =0x0000EA60
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	mov r0, #0
	strb r0, [r4, #0x54]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x80
	orr r0, r0, #0x5400
	str r0, [r4, #0x58]
	b _020CCB70
_020CCAA4:
	mov r0, #0x258
	str r0, [r4, #0x40]
	add r0, r0, #0x960
	str r0, [r4, #0x44]
	mov r0, #0x46
	str r0, [r4, #0x48]
	mov r0, #0x96
	str r0, [r4, #0x4c]
	ldr r1, _020CCC10 ; =0x000059D8
	ldr r0, _020CCC14 ; =0x000C3500
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	mov r0, #0
	strb r0, [r4, #0x54]
	mov r0, #0x1000
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0xd000
	str r0, [r4, #0x58]
	b _020CCB70
_020CCAF4:
	cmp r0, #0
	bne _020CCB34
	mov r0, #0x3e8
	str r0, [r4, #0x40]
	add r0, r0, #0x7d0
	str r0, [r4, #0x44]
	ldr r1, _020CCC18 ; =0x000109A0
	ldr r0, _020CCC1C ; =0x00027100
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	mov r0, #0
	strb r0, [r4, #0x54]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x5000
	str r0, [r4, #0x58]
	b _020CCB70
_020CCB34:
	cmp r0, #1
	bne _020CCB70
	mov r0, #0x3e8
	str r0, [r4, #0x40]
	add r0, r0, #0x7d0
	str r0, [r4, #0x44]
	ldr r1, _020CCC18 ; =0x000109A0
	ldr r0, _020CCC1C ; =0x00027100
	str r1, [r4, #0x38]
	str r0, [r4, #0x3c]
	mov r0, #0x84
	strb r0, [r4, #0x54]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x5000
	str r0, [r4, #0x58]
_020CCB70:
	mov r0, #0x10000
	str r0, [r4, #0x1c]
	mov r0, #0x100
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r4, #0x28]
	mov r0, #5
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0xb40
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020CCBA0:
	cmp r2, #3
	bne _020CCBE0
	cmp ip, #0x2000
	cmpne ip, #0x8000
	bne _020CCBE0
	str ip, [r4, #0x24]
	str ip, [r4, #0x1c]
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0
	strb r0, [r4, #0x54]
	ldr r0, [r4, #0x58]
	orr r0, r0, #0x40
	orr r0, r0, #0x4300
	str r0, [r4, #0x58]
	ldmia sp!, {r3, r4, r5, pc}
_020CCBE0:
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #0x18]
	ldr r0, _020CCC00 ; =0x021CEE20
	mov r1, #3
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CCC00: .word 0x021CEE20
_020CCC04: .word 0x0000203F
_020CCC08: .word 0x00001388
_020CCC0C: .word 0x0000EA60
_020CCC10: .word 0x000059D8
_020CCC14: .word 0x000C3500
_020CCC18: .word 0x000109A0
_020CCC1C: .word 0x00027100
	arm_func_end sub_020CC8D8