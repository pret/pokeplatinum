	.include "macros/function.inc"
	.include "include/ov17_0224E930.inc"

	

	.text


	thumb_func_start ov17_0224E930
ov17_0224E930: ; 0x0224E930
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #0
	mov r2, #0x3c
	add r7, r3, #0
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0x37
	strb r4, [r0]
	add r0, r5, #0
	add r0, #0x38
	strb r6, [r0]
	str r7, [r5, #0x30]
	ldr r0, [sp, #0x18]
	add r5, #0x39
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224E930

	thumb_func_start ov17_0224E958
ov17_0224E958: ; 0x0224E958
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x30]
	mov r2, #0x3c
	str r1, [sp]
	add r1, r5, #0
	add r1, #0x37
	ldrb r7, [r1]
	add r1, r5, #0
	add r1, #0x38
	ldrb r6, [r1]
	add r1, r5, #0
	add r1, #0x39
	ldrb r4, [r1]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	str r0, [r5, #0x30]
	add r0, r5, #0
	add r0, #0x37
	strb r7, [r0]
	add r0, r5, #0
	add r0, #0x38
	strb r6, [r0]
	add r5, #0x39
	strb r4, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224E958

	thumb_func_start ov17_0224E990
ov17_0224E990: ; 0x0224E990
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r0, #0
	ldr r0, _0224EBCC ; =0x00000B1B
	add r4, r1, #0
	ldrb r0, [r7, r0]
	mov r1, #4
	str r3, [sp]
	bl ov17_0223F0BC
	str r0, [sp, #8]
	ldr r0, _0224EBCC ; =0x00000B1B
	ldrb r0, [r7, r0]
	cmp r0, #0
	bne _0224E9C0
	ldr r0, [sp]
	ldr r1, _0224EBD0 ; =0x00001388
	lsr r0, r0, #2
	add r0, r0, r1
	lsl r1, r1, #1
	bl _u32_div_f
	str r0, [sp, #0xc]
	b _0224E9D4
_0224E9C0:
	ldr r0, [sp]
	mov r1, #6
	bl _u32_div_f
	ldr r1, _0224EBD0 ; =0x00001388
	add r0, r0, r1
	lsl r1, r1, #1
	bl _u32_div_f
	str r0, [sp, #0xc]
_0224E9D4:
	mov r0, #0x12
	ldr r1, [r7, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224E9E4
	cmp r0, #1
	bne _0224E9FA
_0224E9E4:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0x14]
	b _0224EA0E
_0224E9FA:
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	str r0, [sp, #0x14]
	ldr r0, [sp]
	lsr r0, r0, #1
	str r0, [sp]
_0224EA0E:
	ldr r2, [sp, #8]
	mov r5, #0
	lsr r3, r2, #0x1f
	add r3, r2, r3
	add r1, r5, #0
	add r0, sp, #0x2c
	asr r2, r3, #1
	b _0224EA22
_0224EA1E:
	strb r1, [r0, r5]
	add r5, r5, #1
_0224EA22:
	cmp r5, r2
	blt _0224EA1E
	ldr r0, [sp, #0x14]
	mov r6, #0
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x30
	str r0, [sp, #0x18]
_0224EA36:
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x18]
	bl sub_02094EA0
	ldr r1, [sp, #0x14]
	bl _s32_div_f
	add r5, r1, #0
	beq _0224EA36
	add r0, sp, #0x2c
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _0224EA36
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0224EA90
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bne _0224EA66
	sub r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
_0224EA66:
	sub r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
	add r1, r5, #1
	add r0, sp, #0x2c
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0224EA36
	mov r0, #1
	tst r0, r5
	beq _0224EA90
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x18]
	bl sub_02094EA0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x80
	blt _0224EA36
_0224EA90:
	mov r1, #1
	add r0, sp, #0x2c
	strb r1, [r0, r5]
	ldr r0, _0224EBD4 ; =0x00000B1A
	add r6, r6, #1
	ldrb r0, [r7, r0]
	cmp r6, r0
	blt _0224EA36
	ldr r0, [sp, #8]
	mov r6, #0
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	add r5, r6, #0
	str r0, [sp, #0x20]
	b _0224EAD0
_0224EAB0:
	add r0, sp, #0x2c
	ldrb r0, [r0, r5]
	cmp r0, #1
	bne _0224EACE
	ldr r0, [sp]
	add r1, r5, #0
	mul r1, r0
	ldr r0, _0224EBD0 ; =0x00001388
	add r0, r1, r0
	ldr r1, _0224EBD8 ; =0x00002710
	bl _u32_div_f
	lsl r1, r6, #2
	str r0, [r4, r1]
	add r6, r6, #1
_0224EACE:
	add r5, r5, #1
_0224EAD0:
	ldr r0, [sp, #0x20]
	cmp r5, r0
	blt _0224EAB0
	mov r0, #0x12
	ldr r1, [r7, #0]
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r1, r4, #0
	add r1, #0x39
	ldrb r1, [r1]
	bl ov17_0224EBE0
	add r6, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x24]
	add r0, #0x30
	str r0, [sp, #0x24]
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r0, r0, #1
	add r0, r0, #1
	mov r5, #0
	str r0, [sp, #0x28]
	b _0224EB3A
_0224EB00:
	ldr r0, [r4, #0x30]
	ldr r1, [sp, #0x24]
	bl sub_02094EA0
	add r1, r6, #2
	bl _s32_div_f
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	add r1, r0, r1
	ldr r0, [sp, #0x28]
	sub r3, r1, r0
	bpl _0224EB1C
	mov r3, #0
_0224EB1C:
	lsl r0, r5, #2
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	sub r2, r3, r1
	cmp r2, r0
	blo _0224EB2C
	add r0, r0, r1
	sub r3, r0, #1
_0224EB2C:
	lsl r0, r5, #2
	add r1, r4, r5
	str r3, [r4, r0]
	add r1, #0x28
	mov r0, #1
	strb r0, [r1]
	add r5, r5, #1
_0224EB3A:
	ldr r0, _0224EBD4 ; =0x00000B1A
	ldrb r0, [r7, r0]
	cmp r5, r0
	blt _0224EB00
	mov r0, #0x12
	ldr r1, [r7, #0]
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	ldr r0, _0224EBDC ; =0x02254A84
	ldrb r0, [r0, r1]
	add r1, r4, #0
	add r1, #0x30
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	bl sub_02094EA0
	add r6, r4, #0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0x20
	strb r1, [r0]
	mov r5, #1
	add r6, #0x30
	b _0224EBBE
_0224EB74:
	ldr r0, _0224EBD4 ; =0x00000B1A
	ldrb r0, [r7, r0]
	sub r0, r0, #1
	cmp r5, r0
	bge _0224EBA2
	ldr r0, [r4, #0x30]
	add r1, r6, #0
	bl sub_02094EA0
	mov r1, #0x64
	bl _s32_div_f
	ldr r0, [sp, #4]
	cmp r0, r1
	ble _0224EBA2
	sub r0, r5, #1
	add r0, r4, r0
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r4, r5
	add r0, #0x20
	strb r1, [r0]
	b _0224EBBC
_0224EBA2:
	ldr r0, [r4, #0x30]
	add r1, r6, #0
	bl sub_02094EA0
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r0, r4, r5
	add r1, r1, r2
	add r0, #0x20
	strb r1, [r0]
_0224EBBC:
	add r5, r5, #1
_0224EBBE:
	ldr r0, _0224EBD4 ; =0x00000B1A
	ldrb r0, [r7, r0]
	cmp r5, r0
	blt _0224EB74
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0224EBCC: .word 0x00000B1B
_0224EBD0: .word 0x00001388
_0224EBD4: .word 0x00000B1A
_0224EBD8: .word 0x00002710
_0224EBDC: .word 0x02254A84
	thumb_func_end ov17_0224E990

	thumb_func_start ov17_0224EBE0
ov17_0224EBE0: ; 0x0224EBE0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blo _0224EBEE
	bl GF_AssertFail
_0224EBEE:
	ldr r0, _0224EC20 ; =0x02254A80
	cmp r4, #3
	ldrsb r0, [r0, r5]
	bhi _0224EC16
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224EC02: ; jump table
	.short _0224EC0A - _0224EC02 - 2 ; case 0
	.short _0224EC1C - _0224EC02 - 2 ; case 1
	.short _0224EC0E - _0224EC02 - 2 ; case 2
	.short _0224EC16 - _0224EC02 - 2 ; case 3
_0224EC0A:
	lsl r0, r0, #1
	pop {r3, r4, r5, pc}
_0224EC0E:
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	pop {r3, r4, r5, pc}
_0224EC16:
	mov r1, #3
	bl _s32_div_f
_0224EC1C:
	pop {r3, r4, r5, pc}
	nop
_0224EC20: .word 0x02254A80
	thumb_func_end ov17_0224EBE0

	thumb_func_start ov17_0224EC24
ov17_0224EC24: ; 0x0224EC24
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	str r2, [sp]
	ldr r4, [sp, #0x18]
	cmp r0, #4
	blo _0224EC3A
	bl GF_AssertFail
_0224EC3A:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0224EC5A
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0224EC52
	mov r1, #1
	add r0, r6, #0
	and r0, r1
	and r1, r4
	cmp r0, r1
_0224EC52:
	sub r0, r6, r4
	cmp r0, #4
	sub r0, r6, r4
	cmp r0, #8
_0224EC5A:
	ldr r1, _0224ECC0 ; =0x02254A80
	ldr r0, [sp]
	cmp r7, #3
	ldrsb r0, [r1, r0]
	bhi _0224EC9E
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224EC70: ; jump table
	.short _0224EC78 - _0224EC70 - 2 ; case 0
	.short _0224EC7C - _0224EC70 - 2 ; case 1
	.short _0224EC80 - _0224EC70 - 2 ; case 2
	.short _0224EC9E - _0224EC70 - 2 ; case 3
_0224EC78:
	lsl r0, r0, #1
	b _0224ECB6
_0224EC7C:
	lsl r0, r0, #1
	b _0224ECB6
_0224EC80:
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224EC94
	cmp r5, #2
	beq _0224EC8E
	cmp r5, #3
	bne _0224EC94
_0224EC8E:
	lsl r1, r0, #1
	add r0, r0, r1
	b _0224ECB6
_0224EC94:
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	add r0, r0, r1
	b _0224ECB6
_0224EC9E:
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _0224ECB6
	cmp r5, #2
	beq _0224ECAC
	cmp r5, #3
	bne _0224ECB6
_0224ECAC:
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r1, r1, #1
	lsl r0, r0, #1
	add r0, r1, r0
_0224ECB6:
	cmp r0, #0
	bge _0224ECBC
	mov r0, #0
_0224ECBC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ECC0: .word 0x02254A80
	thumb_func_end ov17_0224EC24

	thumb_func_start ov17_0224ECC4
ov17_0224ECC4: ; 0x0224ECC4
	push {r3, r4, r5, r6}
	add r6, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r5, r3, #0
	mov r4, #0
	ldr r2, [sp, #0x14]
	cmp r1, #3
	bhi _0224ED08
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224ECE2: ; jump table
	.short _0224ECEA - _0224ECE2 - 2 ; case 0
	.short _0224ECF2 - _0224ECE2 - 2 ; case 1
	.short _0224ECFA - _0224ECE2 - 2 ; case 2
	.short _0224ED02 - _0224ECE2 - 2 ; case 3
_0224ECEA:
	cmp r2, #1
	bne _0224ED08
	add r4, r4, #3
	b _0224ED08
_0224ECF2:
	cmp r2, #2
	bne _0224ED08
	add r4, r4, #3
	b _0224ED08
_0224ECFA:
	cmp r2, #4
	bne _0224ED08
	add r4, r4, #3
	b _0224ED08
_0224ED02:
	cmp r2, #3
	bne _0224ED08
	add r4, r4, #3
_0224ED08:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0224ED14
	cmp r2, r1
	beq _0224ED14
	add r4, #8
_0224ED14:
	mov r1, #0
	ldr r3, [sp, #0x10]
	mvn r1, r1
	cmp r3, r1
	beq _0224ED36
	mov r1, #1
	add r2, r5, #0
	and r2, r1
	and r1, r3
	cmp r2, r1
	beq _0224ED2C
	add r4, r4, #2
_0224ED2C:
	ldr r1, [sp, #0x10]
	sub r1, r5, r1
	cmp r1, #8
	blt _0224ED36
	add r4, r4, #5
_0224ED36:
	cmp r6, #3
	bhi _0224ED70
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224ED46: ; jump table
	.short _0224ED4E - _0224ED46 - 2 ; case 0
	.short _0224ED52 - _0224ED46 - 2 ; case 1
	.short _0224ED56 - _0224ED46 - 2 ; case 2
	.short _0224ED70 - _0224ED46 - 2 ; case 3
_0224ED4E:
	lsl r4, r4, #1
	b _0224ED84
_0224ED52:
	lsl r4, r4, #1
	b _0224ED84
_0224ED56:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _0224ED66
	sub r0, r0, #2
	cmp r0, #1
	bhi _0224ED66
	lsl r4, r4, #1
	b _0224ED84
_0224ED66:
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	add r4, r4, r0
	b _0224ED84
_0224ED70:
	ldr r1, [sp, #0x1c]
	cmp r1, #1
	bne _0224ED84
	sub r0, r0, #2
	cmp r0, #1
	bhi _0224ED84
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	add r4, r4, r0
_0224ED84:
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov17_0224ECC4

	thumb_func_start ov17_0224ED8C
ov17_0224ED8C: ; 0x0224ED8C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r4, #0x38
	ldrb r4, [r4]
	cmp r4, #0
	bne _0224EDBA
	cmp r0, #0
	bne _0224EDBA
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x18]
	bl ov17_0224EDE0
	add sp, #0xc
	pop {r3, r4, pc}
_0224EDBA:
	cmp r4, #0
	beq _0224EDDA
	cmp r0, #1
	bne _0224EDDA
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x18]
	bl ov17_0224EE90
_0224EDDA:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov17_0224ED8C

	thumb_func_start ov17_0224EDE0
ov17_0224EDE0: ; 0x0224EDE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x38
	ldrb r3, [r0]
	cmp r3, #0
	bne _0224EE82
	ldr r0, [sp, #0x44]
	add r1, #0x36
	ldrb r0, [r0, #5]
	ldrb r1, [r1]
	cmp r1, r0
	bhs _0224EE82
	mov r5, #0x34
	ldrsh r5, [r4, r5]
	cmp r5, #0
	ble _0224EE0E
	sub r0, r5, #1
	add sp, #0x28
	strh r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0224EE0E:
	mov r5, #0
_0224EE10:
	add r6, r4, r5
	add r6, #0x28
	ldrb r6, [r6]
	cmp r6, #1
	beq _0224EE20
	add r5, r5, #1
	cmp r5, #8
	blt _0224EE10
_0224EE20:
	cmp r5, #8
	bge _0224EE82
	lsl r6, r5, #2
	ldr r6, [r4, r6]
	cmp r6, r2
	bhi _0224EE82
	ldr r6, [sp, #0x44]
	add r6, #8
	str r6, [sp]
	add r6, sp, #0x1c
	str r6, [sp, #4]
	mov r6, #0
	str r6, [sp, #8]
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, _0224EE88 ; =0x00000B1B
	add r1, r4, r5
	ldrb r0, [r7, r0]
	add r1, #0x20
	ldr r3, [sp, #0x40]
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0x37
	ldrb r0, [r0]
	ldrb r1, [r1]
	bl ov17_0224DE54
	ldr r0, [sp, #0x48]
	add r1, sp, #0x1c
	bl ov17_0224D6B0
	add r0, r4, r5
	add r1, r6, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x36
	strb r1, [r0]
	ldr r0, [sp, #0x40]
	ldr r1, _0224EE8C ; =0x00002710
	bl _u32_div_f
	sub r0, r0, #2
	strh r0, [r4, #0x34]
_0224EE82:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224EE88: .word 0x00000B1B
_0224EE8C: .word 0x00002710
	thumb_func_end ov17_0224EDE0

	thumb_func_start ov17_0224EE90
ov17_0224EE90: ; 0x0224EE90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r6, r0, #0
	ldr r0, [sp, #0x64]
	add r5, r1, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x60]
	str r2, [sp, #0x1c]
	lsr r0, r0, #1
	str r0, [sp, #0x38]
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224EECC
	add r0, r5, #0
	add r0, #0x36
	ldrb r1, [r0]
	ldr r0, [sp, #0x64]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bhs _0224EECC
	mov r0, #0xa
	mul r0, r1
	ldr r2, _0224F068 ; =0x00001BBC
	add r4, r6, r0
	ldrb r2, [r4, r2]
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x1f
	bne _0224EECE
_0224EECC:
	b _0224F062
_0224EECE:
	mov r7, #0x34
	ldrsh r2, [r5, r7]
	cmp r2, #0
	ble _0224EEDE
	sub r0, r2, #1
	add sp, #0x48
	strh r0, [r5, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0224EEDE:
	ldr r2, _0224F068 ; =0x00001BBC
	sub r2, #8
	add r2, r6, r2
	add r4, r2, r0
	ldr r0, [sp, #0x1c]
	lsr r2, r3, #1
	sub r0, r0, r2
	str r0, [sp, #0x34]
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq _0224EEF6
	b _0224EFF8
_0224EEF6:
	cmp r1, #0
	bne _0224EF02
	mov r0, #0
	sub r7, #0x35
	str r0, [sp, #0x20]
	b _0224EF18
_0224EF02:
	sub r1, r1, #1
	mov r0, #0xa
	mul r0, r1
	ldr r1, _0224F068 ; =0x00001BBC
	add r0, r6, r0
	sub r1, r1, #2
	ldrb r7, [r0, r1]
	ldr r1, _0224F068 ; =0x00001BBC
	sub r1, r1, #5
	ldrb r0, [r0, r1]
	str r0, [sp, #0x20]
_0224EF18:
	ldr r1, [r6, #0]
	ldr r0, _0224F06C ; =0x00000B1B
	str r7, [sp]
	ldrb r0, [r6, r0]
	mov r2, #0x12
	lsl r2, r2, #4
	str r0, [sp, #4]
	ldr r0, _0224F070 ; =0x00001C0E
	ldrb r0, [r6, r0]
	str r0, [sp, #8]
	ldrb r0, [r1, r2]
	sub r2, r2, #1
	ldrb r1, [r1, r2]
	add r2, r5, #0
	add r2, #0x39
	ldrb r2, [r2]
	ldrb r3, [r4, #6]
	bl ov17_0224EC24
	ldr r1, [r6, #0]
	str r0, [sp, #0x2c]
	str r7, [sp]
	ldrb r0, [r4, #3]
	mov r2, #0x12
	lsl r2, r2, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	str r0, [sp, #8]
	ldr r0, _0224F070 ; =0x00001C0E
	ldrb r0, [r6, r0]
	str r0, [sp, #0xc]
	ldrb r0, [r1, r2]
	sub r2, r2, #1
	ldrb r1, [r1, r2]
	add r2, r5, #0
	add r2, #0x39
	ldrb r2, [r2]
	ldrb r3, [r4, #6]
	bl ov17_0224ECC4
	str r0, [sp, #0x28]
	ldrb r1, [r4, #6]
	ldr r0, [sp, #0x38]
	mul r0, r1
	ldr r1, _0224F074 ; =0x00001388
	add r0, r0, r1
	lsl r1, r1, #1
	bl _u32_div_f
	add r7, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x30]
	add r1, #0x30
	bl sub_02094EA0
	ldr r1, [sp, #0x2c]
	add r1, r1, #2
	bl _s32_div_f
	ldr r0, [sp, #0x2c]
	lsr r2, r0, #0x1f
	add r2, r0, r2
	asr r0, r2, #1
	add r0, r0, #1
	sub r0, r1, r0
	add r0, r0, r7
	str r0, [sp, #0x30]
	bpl _0224EFA4
	mov r0, #0
	str r0, [sp, #0x30]
_0224EFA4:
	add r1, r5, #0
	ldr r0, [r5, #0x30]
	add r1, #0x30
	bl sub_02094EA0
	mov r1, #0x64
	bl _s32_div_f
	ldr r2, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r0, r2, r0
	cmp r1, r0
	bge _0224EFE4
	add r7, r5, #0
	add r7, #0x30
_0224EFC2:
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	bl sub_02094EA0
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r0, r1, r2
	str r0, [sp, #0x24]
	bl ov17_0224DD28
	ldrb r1, [r4, #3]
	cmp r1, r0
	beq _0224EFC2
	b _0224EFEC
_0224EFE4:
	ldrb r0, [r4, #3]
	bl ov17_0224DD5C
	str r0, [sp, #0x24]
_0224EFEC:
	ldr r0, [sp, #0x30]
	str r0, [r5, #0]
	ldr r0, [sp, #0x24]
	strb r0, [r5, #4]
	mov r0, #1
	strb r0, [r5, #5]
_0224EFF8:
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	bhi _0224F062
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x1c]
	add r0, #8
	str r0, [sp]
	add r0, sp, #0x3c
	str r0, [sp, #4]
	ldr r0, _0224F078 ; =0x00001BB4
	ldr r3, [sp, #0x60]
	add r0, r6, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x38
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	ldrb r0, [r0, #5]
	str r0, [sp, #0x14]
	ldr r0, _0224F06C ; =0x00000B1B
	ldrb r0, [r6, r0]
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0x37
	ldrb r0, [r0]
	ldrb r1, [r5, #4]
	bl ov17_0224DE54
	ldr r0, [sp, #0x68]
	add r1, sp, #0x3c
	bl ov17_0224D6B0
	mov r0, #0
	strb r0, [r5, #5]
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x36
	strb r1, [r0]
	ldr r0, [sp, #0x60]
	ldr r1, _0224F07C ; =0x00002710
	bl _u32_div_f
	sub r0, r0, #2
	strh r0, [r5, #0x34]
_0224F062:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224F068: .word 0x00001BBC
_0224F06C: .word 0x00000B1B
_0224F070: .word 0x00001C0E
_0224F074: .word 0x00001388
_0224F078: .word 0x00001BB4
_0224F07C: .word 0x00002710
	thumb_func_end ov17_0224EE90

	.rodata


	.global Unk_ov17_02254A80
Unk_ov17_02254A80: ; 0x02254A80
	.incbin "incbin/overlay17_rodata.bin", 0x1CF4, 0x1CF8 - 0x1CF4

	.global Unk_ov17_02254A84
Unk_ov17_02254A84: ; 0x02254A84
	.incbin "incbin/overlay17_rodata.bin", 0x1CF8, 0x4

