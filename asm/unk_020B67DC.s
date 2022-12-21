	.include "macros/function.inc"
	.include "include/unk_020B67DC.inc"

	

	.text


	arm_func_start sub_020B67DC
sub_020B67DC: ; 0x020B67DC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, [r6, #0]
	mov r4, #0
	ands r5, r0, #0x18
	bne _020B6808
	add r1, r6, #0x1c
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
_020B6808:
	ldr r0, [r6, #0]
	tst r0, #4
	bne _020B6878
	cmp r5, #0
	movne r4, #1
	bne _020B6878
	ldr r2, [r6, #0x4c]
	ldr r0, [r6, #0x10]
	add r1, sp, #0
	smull r3, r0, r2, r0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp]
	ldr r3, [r6, #0x50]
	ldr r2, [r6, #0x14]
	mov r0, #0x1c
	smull ip, r2, r3, r2
	mov r3, ip, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sp, #4]
	ldr ip, [r6, #0x54]
	ldr r3, [r6, #0x18]
	mov r2, #3
	smull lr, r3, ip, r3
	mov ip, lr, lsr #0xc
	orr ip, ip, r3, lsl #20
	str ip, [sp, #8]
	bl sub_020B275C
_020B6878:
	ldr r0, [r6, #0]
	tst r0, #2
	bne _020B68B0
	cmp r4, #0
	add r1, r6, #0x28
	beq _020B68A0
	mov r0, #0x19
	mov r2, #0xc
	bl sub_020B275C
	b _020B68C8
_020B68A0:
	mov r0, #0x1a
	mov r2, #9
	bl sub_020B275C
	b _020B68C8
_020B68B0:
	cmp r4, #0
	beq _020B68C8
	add r1, r6, #0x4c
	mov r0, #0x1c
	mov r2, #3
	bl sub_020B275C
_020B68C8:
	cmp r5, #0
	bne _020B68E0
	add r1, r6, #0x10
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
_020B68E0:
	ldr r0, [r6, #0]
	tst r0, #1
	addne sp, sp, #0xc
	ldmneia sp!, {r3, r4, r5, r6, pc}
	add r1, r6, #4
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_020B67DC

	arm_func_start sub_020B6908
sub_020B6908: ; 0x020B6908
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	tst r3, #4
	ldrb r4, [r2, #1]
	ldrb r0, [r2, #2]
	beq _020B69A4
	ldr r2, [r5, #0]
	ldr r1, _020B6B08 ; =0x021C5CF0
	orr r2, r2, #1
	str r2, [r5, #0]
	ldr r3, [r1, #0]
	mov r1, r0, lsr #5
	add r1, r3, r1, lsl #2
	ldr r1, [r1, #0xc4]
	and r2, r0, #0x1f
	mov r6, #1
	tst r1, r6, lsl r2
	beq _020B6978
	add r3, r3, #0xc4
	mov r2, r4, lsr #5
	ldr r1, [r3, r2, lsl #2]
	and r0, r4, #0x1f
	orr r0, r1, r6, lsl r0
	str r0, [r3, r2, lsl #2]
	ldr r0, [r5, #0]
	orr r0, r0, #0x18
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B6978:
	mov r2, #0x18
	ldr r7, _020B6B0C ; =0x021C6AF4
	mul r6, r0, r2
	mla r1, r4, r2, r7
	add r0, r7, r6
	bl sub_020C4B68
	add r0, r7, r6
	add r1, r5, #0x10
	mov r2, #0x18
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B69A4:
	ldr r3, [r1, #0]
	ldr r2, _020B6B08 ; =0x021C5CF0
	str r3, [r5, #4]
	ldr r3, [r1, #4]
	mov r7, r0, lsr #5
	str r3, [r5, #8]
	ldr r3, [r1, #8]
	and r8, r0, #0x1f
	str r3, [r5, #0xc]
	ldr r6, [r2, #0]
	mov r3, #1
	add r2, r6, r7, lsl #2
	ldr r2, [r2, #0xc4]
	tst r2, r3, lsl r8
	mov r2, #0x18
	beq _020B6A2C
	ldr r3, _020B6B0C ; =0x021C6AF4
	mov r0, r1
	mla r1, r4, r2, r3
	bl sub_020C4B68
	ldr r0, _020B6B08 ; =0x021C5CF0
	mov r2, r4, lsr #5
	ldr r1, [r0, #0]
	and r0, r4, #0x1f
	add r3, r1, #0xc4
	mov r1, #1
	mvn r0, r1, lsl r0
	ldr r1, [r3, r2, lsl #2]
	and r0, r1, r0
	str r0, [r3, r2, lsl #2]
	ldr r0, [r5, #0]
	orr r0, r0, #0x18
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B6A2C:
	mul ip, r0, r2
	and r7, r4, #0x1f
	mvn r7, r3, lsl r7
	add r6, r6, #0xc4
	mov lr, r4, lsr #5
	ldr r8, [r6, lr, lsl #2]
	mul r3, r4, r2
	and r4, r8, r7
	str r4, [r6, lr, lsl #2]
	ldr r0, _020B6B0C ; =0x021C6AF4
	ldr r7, [r1, #0]
	ldr r4, [r0, ip]
	ldr r6, _020B6B10 ; =0x021C6AF8
	smull r8, r4, r7, r4
	mov r7, r8, lsr #0xc
	orr r7, r7, r4, lsl #20
	str r7, [r0, r3]
	ldr r8, [r1, #4]
	ldr r4, [r6, ip]
	ldr r7, _020B6B14 ; =0x021C6AFC
	smull lr, r4, r8, r4
	mov r8, lr, lsr #0xc
	orr r8, r8, r4, lsl #20
	str r8, [r6, r3]
	ldr r8, [r1, #8]
	ldr r4, [r7, ip]
	ldr r6, _020B6B18 ; =0x021C6B00
	smull lr, r4, r8, r4
	mov r8, lr, lsr #0xc
	orr r8, r8, r4, lsl #20
	str r8, [r7, r3]
	ldr r7, [r1, #0xc]
	ldr r4, [r6, ip]
	ldr lr, _020B6B1C ; =0x021C6B04
	smull r8, r4, r7, r4
	mov r7, r8, lsr #0xc
	orr r7, r7, r4, lsl #20
	str r7, [r6, r3]
	ldr r7, [r1, #0x10]
	ldr r6, [lr, ip]
	ldr r4, _020B6B20 ; =0x021C6B08
	smull r8, r6, r7, r6
	mov r7, r8, lsr #0xc
	orr r7, r7, r6, lsl #20
	str r7, [lr, r3]
	ldr r6, [r1, #0x14]
	ldr r1, [r4, ip]
	add r0, r0, ip
	smull ip, r1, r6, r1
	mov r6, ip, lsr #0xc
	orr r6, r6, r1, lsl #20
	add r1, r5, #0x10
	str r6, [r4, r3]
	bl sub_020C4B68
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B6B08: .word 0x021C5CF0
_020B6B0C: .word 0x021C6AF4
_020B6B10: .word 0x021C6AF8
_020B6B14: .word 0x021C6AFC
_020B6B18: .word 0x021C6B00
_020B6B1C: .word 0x021C6B04
_020B6B20: .word 0x021C6B08
	arm_func_end sub_020B6908

	arm_func_start sub_020B6B24
sub_020B6B24: ; 0x020B6B24
	stmdb sp!, {lr}
	sub sp, sp, #0x3c
	ldr r1, [r0, #0]
	mov r2, #0
	tst r1, #8
	ldrne r1, _020B6CE8 ; =0x00101710
	mov r3, #3
	strne r1, [sp]
	ldreq r1, _020B6CEC ; =0x00101910
	str r3, [sp, #4]
	streq r1, [sp]
	mov r1, #2
	str r2, [sp, #0x34]
	str r2, [sp, #0x28]
	str r2, [sp, #0x24]
	str r2, [sp, #0x20]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x14]
	str r2, [sp, #0x10]
	str r2, [sp, #0xc]
	str r1, [sp, #0x38]
	ldr r1, [r0, #0]
	tst r1, #4
	beq _020B6BBC
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	ldr r1, [r0, #0]
	tst r1, #1
	beq _020B6BA8
	mov r1, #0x1000
	str r1, [sp, #8]
	str r1, [sp, #0x18]
	b _020B6C5C
_020B6BA8:
	ldr r1, [r0, #0x18]
	str r1, [sp, #8]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x18]
	b _020B6C5C
_020B6BBC:
	tst r1, #1
	beq _020B6C04
	ldr r2, [r0, #0x24]
	ldrh r1, [r0, #0x2c]
	mov r2, r2, lsl #4
	rsb r2, r2, #0
	mul r1, r2, r1
	str r1, [sp, #0x2c]
	ldr r2, [r0, #0x28]
	ldrh r1, [r0, #0x2e]
	mov r2, r2, lsl #4
	rsb r2, r2, #0
	mul r3, r2, r1
	mov r1, #0x1000
	str r3, [sp, #0x30]
	str r1, [sp, #8]
	str r1, [sp, #0x18]
	b _020B6C5C
_020B6C04:
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x24]
	ldrh ip, [r0, #0x2c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #8
	orr r2, r2, r1, lsl #24
	rsb r1, r2, #0
	mul r1, ip, r1
	str r1, [sp, #0x2c]
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x28]
	ldrh ip, [r0, #0x2e]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #8
	orr r2, r2, r1, lsl #24
	rsb r1, r2, #0
	mul r1, ip, r1
	str r1, [sp, #0x30]
	ldr r1, [r0, #0x18]
	str r1, [sp, #8]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x18]
_020B6C5C:
	ldr ip, [r0, #0x30]
	cmp ip, #0x1000
	beq _020B6C94
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x2c]
	smull r3, r2, ip, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sp, #8]
	ldr r2, [r0, #0x30]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x2c]
_020B6C94:
	ldr ip, [r0, #0x34]
	cmp ip, #0x1000
	beq _020B6CCC
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x30]
	smull r3, r2, ip, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	str r3, [sp, #0x18]
	ldr r0, [r0, #0x34]
	smull r2, r1, r0, r1
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #20
	str r0, [sp, #0x30]
_020B6CCC:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0xe
	bl sub_020B275C
	add sp, sp, #0x3c
	ldmia sp!, {pc}
	; .align 2, 0
_020B6CE8: .word 0x00101710
_020B6CEC: .word 0x00101910
	arm_func_end sub_020B6B24