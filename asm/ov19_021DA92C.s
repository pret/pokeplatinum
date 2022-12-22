	.include "macros/function.inc"
	.include "include/ov19_021DA92C.inc"

	

	.text


	thumb_func_start ov19_021DA92C
ov19_021DA92C: ; 0x021DA92C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	add r7, r3, #0
	bl ov19_021D5E08
	cmp r0, #4
	bne _021DA948
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DA948:
	str r4, [r5, #0x14]
	str r7, [r5, #8]
	ldr r0, [sp, #0x18]
	str r6, [r5, #0x10]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x24]
	add r0, r4, #0
	bl ov19_021D7818
	str r0, [r5, #0x20]
	mov r0, #9
	mov r1, #6
	mov r2, #0xf
	mov r3, #0xa
	bl sub_0200C440
	str r0, [r5, #0x18]
	mov r0, #1
	mov r1, #2
	mov r2, #0xf
	mov r3, #0xa
	bl sub_0200C440
	str r0, [r5, #0x1c]
	mov r0, #0xa
	str r0, [sp]
	add r3, r5, #0
	ldr r0, [sp, #0x20]
	mov r1, #0x10
	mov r2, #1
	add r3, #0x2c
	bl sub_02007204
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x30]
	ldr r0, [sp, #0x1c]
	mov r1, #0x15
	bl sub_0200B1EC
	str r0, [r5, #0x44]
	ldr r0, [sp, #0x1c]
	mov r1, #0x16
	bl sub_0200B1EC
	str r0, [r5, #0x48]
	bl sub_0207C944
	add r4, r0, #0
	bl sub_0207C924
	add r1, r0, #0
	mov r0, #0xa
	add r3, r5, #0
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	add r3, #0x38
	bl sub_02006FA0
	mov r1, #0
	str r0, [r5, #0x34]
	add r2, r5, #0
	add r0, r1, #0
_021DA9CE:
	add r1, r1, #1
	str r0, [r2, #0x3c]
	add r2, r2, #4
	cmp r1, #2
	blt _021DA9CE
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DA92C

	thumb_func_start ov19_021DA9E0
ov19_021DA9E0: ; 0x021DA9E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021DAA7E
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021DAA0E
	mov r6, #0
	add r4, r6, #0
_021DA9F4:
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl sub_0201A8FC
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #4
	blt _021DA9F4
	ldr r0, [r5, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r5, #4]
_021DAA0E:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021DAA18
	bl sub_0200C560
_021DAA18:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DAA22
	bl sub_0200C560
_021DAA22:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _021DAA2C
	bl sub_020237BC
_021DAA2C:
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _021DAA36
	bl sub_020237BC
_021DAA36:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021DAA44
	bl sub_02007DC8
	mov r0, #0
	str r0, [r5, #0x24]
_021DAA44:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021DAA4E
	bl sub_020181C4
_021DAA4E:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DAA58
	bl sub_02021BD4
_021DAA58:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021DAA62
	bl sub_020181C4
_021DAA62:
	mov r6, #0
	add r4, r5, #0
_021DAA66:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021DAA70
	bl sub_02021BD4
_021DAA70:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _021DAA66
	add r0, r5, #0
	bl ov19_021DAC90
_021DAA7E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov19_021DA9E0

	thumb_func_start ov19_021DAA80
ov19_021DAA80: ; 0x021DAA80
	push {r3, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _021DAA8E
	ldr r0, [r0, #0x20]
	bl sub_02008A94
_021DAA8E:
	pop {r3, pc}
	thumb_func_end ov19_021DAA80

	thumb_func_start ov19_021DAA90
ov19_021DAA90: ; 0x021DAA90
	push {r4, lr}
	sub sp, #0x20
	mov r2, #0
	str r2, [sp]
	add r4, r0, #0
	str r2, [sp, #4]
	add r0, sp, #0x10
	mov r1, #1
	add r3, r2, #0
	str r2, [sp, #8]
	bl sub_02075FB4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x20]
	add r1, sp, #0x10
	mov r2, #0x2c
	mov r3, #0x54
	bl sub_02007C34
	str r0, [r4, #0x24]
	add sp, #0x20
	pop {r4, pc}
	thumb_func_end ov19_021DAA90

	thumb_func_start ov19_021DAAC4
ov19_021DAAC4: ; 0x021DAAC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021DAAD8
	bl sub_02007DC8
	mov r0, #0
	str r0, [r4, #0x24]
	pop {r4, pc}
_021DAAD8:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov19_021DAAC4

	thumb_func_start ov19_021DAADC
ov19_021DAADC: ; 0x021DAADC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021DAB3C
	mov r0, #0xa
	mov r1, #4
	bl sub_0201A778
	str r0, [r5, #4]
	cmp r0, #0
	beq _021DAB30
	mov r7, #0
	ldr r6, _021DAB40 ; =0x021E01D8
	add r4, r7, #0
_021DAAFA:
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	add r1, r1, r4
	add r2, r6, #0
	bl sub_0201A8D4
	cmp r7, #3
	ldr r0, [r5, #4]
	beq _021DAB14
	add r0, r0, r4
	bl sub_0201A9F4
	b _021DAB1E
_021DAB14:
	add r0, r0, r4
	mov r1, #0xc
	mov r2, #2
	bl sub_0201AA10
_021DAB1E:
	add r7, r7, #1
	add r6, #8
	add r4, #0x10
	cmp r7, #4
	blt _021DAAFA
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_02019448
_021DAB30:
	add r0, r5, #0
	bl ov19_021DAB44
	add r0, r5, #0
	bl ov19_021DAC4C
_021DAB3C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DAB40: .word 0x021E01D8
	thumb_func_end ov19_021DAADC

	thumb_func_start ov19_021DAB44
ov19_021DAB44: ; 0x021DAB44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r5, r0, #0
	bl sub_0207C944
	str r0, [sp, #0x1c]
	mov r0, #2
	bl sub_0207C908
	str r0, [sp, #0x18]
	bl sub_0207C920
	add r1, r0, #0
	mov r0, #0x60
	str r0, [sp]
	mov r3, #0xa
	str r3, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r2, #1
	lsl r3, r3, #5
	bl sub_02006E84
	mov r0, #0
	mov r6, #0x5e
	str r0, [sp, #0x14]
	lsl r6, r6, #4
	mov r7, #0x18
	add r4, r5, #0
_021DAB7C:
	add r0, sp, #0x44
	bl NNS_G2dInitImageProxy
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	lsl r0, r6, #5
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x44
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	mov r2, #1
	mov r3, #0
	bl sub_02006F28
	ldr r0, [r5, #0x14]
	bl ov19_021D77D0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r3, [r5, #0x38]
	add r0, sp, #0x20
	add r1, sp, #0x44
	bl ov19_021D783C
	mov r0, #0x2e
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x20
	add r2, r7, #0
	mov r3, #0xb0
	bl ov19_021D785C
	str r0, [r4, #0x3c]
	cmp r0, #0
	bne _021DABDA
	bl GF_AssertFail
_021DABDA:
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [sp, #0x14]
	add r6, #8
	add r0, r0, #1
	add r7, #0x24
	add r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #2
	blo _021DAB7C
	add r0, sp, #0x44
	bl NNS_G2dInitImageProxy
	mov r3, #0
	mov r0, #0xb9
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	lsl r0, r0, #8
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	add r0, sp, #0x44
	str r0, [sp, #0x10]
	mov r0, #0x12
	mov r1, #0xf
	bl sub_02006F00
	ldr r0, [r5, #0x14]
	bl ov19_021D77D0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r3, [r5, #0x2c]
	add r0, sp, #0x20
	add r1, sp, #0x44
	bl ov19_021D783C
	mov r0, #0x2f
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x20
	mov r2, #0x38
	mov r3, #0xb0
	bl ov19_021D785C
	str r0, [r5, #0x30]
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DAB44

	thumb_func_start ov19_021DAC4C
ov19_021DAC4C: ; 0x021DAC4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _021DAC8A
	mov r0, #0xa
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	beq _021DAC86
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _021DAC72
	mov r0, #4
	b _021DAC74
_021DAC72:
	mov r0, #0
_021DAC74:
	strh r0, [r4]
	ldr r0, _021DAC8C ; =ov19_021DACF8
	str r5, [r4, #8]
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	str r0, [r5, #0x4c]
	pop {r3, r4, r5, pc}
_021DAC86:
	bl GF_AssertFail
_021DAC8A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DAC8C: .word ov19_021DACF8
	thumb_func_end ov19_021DAC4C

	thumb_func_start ov19_021DAC90
ov19_021DAC90: ; 0x021DAC90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021DACAC
	bl sub_0201CED0
	bl sub_020181C4
	ldr r0, [r4, #0x4c]
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x4c]
_021DACAC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DAC90

	thumb_func_start ov19_021DACB0
ov19_021DACB0: ; 0x021DACB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	bl sub_0201CED0
	add r4, r0, #0
	beq _021DACD8
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _021DACCE
	mov r0, #4
	b _021DACD0
_021DACCE:
	mov r0, #0
_021DACD0:
	strh r0, [r4]
	add r0, r5, #0
	bl ov19_021DAE10
_021DACD8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DACB0

	thumb_func_start ov19_021DACDC
ov19_021DACDC: ; 0x021DACDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_0201CED0
	cmp r0, #0
	beq _021DACF4
	mov r1, #4
	strh r1, [r0]
	add r0, r4, #0
	bl ov19_021DAE10
_021DACF4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DACDC

	thumb_func_start ov19_021DACF8
ov19_021DACF8: ; 0x021DACF8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r0, [r4]
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021DADC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DAD10: ; jump table
	.short _021DAD1A - _021DAD10 - 2 ; case 0
	.short _021DAD2C - _021DAD10 - 2 ; case 1
	.short _021DAD4C - _021DAD10 - 2 ; case 2
	.short _021DAD76 - _021DAD10 - 2 ; case 3
	.short _021DADC8 - _021DAD10 - 2 ; case 4
_021DAD1A:
	ldr r0, [r5, #0x10]
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021DADC8
	mov r0, #0
	strh r0, [r4, #2]
	mov r0, #1
	strh r0, [r4]
_021DAD2C:
	ldr r0, [r5, #4]
	ldrh r2, [r4, #2]
	add r0, #0x30
	add r1, r5, #0
	mov r3, #0
	bl ov19_021DAE60
	ldr r0, [r5, #4]
	add r0, #0x30
	bl sub_0201ACCC
	mov r0, #0
	strh r0, [r4, #4]
	mov r0, #2
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021DAD4C:
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	bne _021DADC8
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r4, #4]
	cmp r0, #0x50
	bls _021DADC8
	add r0, r4, #0
	bl ov19_021DAE2C
	mov r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	mov r0, #3
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021DAD76:
	ldrh r0, [r4, #6]
	mov r1, #1
	lsl r1, r1, #0xe
	add r0, r0, #4
	strh r0, [r4, #6]
	add r0, r5, #0
	bl ov19_021DADCC
	ldr r0, [r5, #4]
	mov r1, #0
	add r0, #0x30
	mov r2, #4
	add r3, r1, #0
	bl sub_0201C04C
	ldr r0, [r5, #4]
	add r0, #0x30
	bl sub_0201ACCC
	ldrh r0, [r4, #6]
	cmp r0, #0x10
	blo _021DADC8
	ldrh r0, [r4, #2]
	cmp r0, #1
	bne _021DADAE
	add r0, r5, #0
	bl ov19_021DAE10
_021DADAE:
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #4
	blo _021DADBE
	mov r0, #0
	strh r0, [r4, #2]
_021DADBE:
	mov r0, #0
	strh r0, [r4, #6]
	strh r0, [r4, #4]
	mov r0, #2
	strh r0, [r4]
_021DADC8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov19_021DACF8

	thumb_func_start ov19_021DADCC
ov19_021DADCC: ; 0x021DADCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
_021DADD6:
	ldr r0, [r5, #0x3c]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	sub r0, r0, r7
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	bl sub_02021C50
	cmp r4, #0
	bne _021DAE02
	ldr r0, [r5, #0x3c]
	bl sub_02021D34
_021DAE02:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021DADD6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov19_021DADCC

	thumb_func_start ov19_021DAE10
ov19_021DAE10: ; 0x021DAE10
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021DAE18:
	ldr r0, [r5, #0x3c]
	add r1, r6, #0
	bl sub_02021CAC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021DAE18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov19_021DAE10

	thumb_func_start ov19_021DAE2C
ov19_021DAE2C: ; 0x021DAE2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r1, #0
	ldr r4, [r0, #4]
	add r4, #0x30
	add r0, r4, #0
	bl sub_0201ADA4
	ldrh r2, [r5, #2]
	ldr r1, [r5, #8]
	add r0, r4, #0
	mov r3, #0
	bl ov19_021DAE60
	ldrh r0, [r5, #2]
	add r2, r0, #1
	cmp r2, #4
	blo _021DAE54
	mov r2, #0
_021DAE54:
	ldr r1, [r5, #8]
	add r0, r4, #0
	mov r3, #1
	bl ov19_021DAE60
	pop {r3, r4, r5, pc}
	thumb_func_end ov19_021DAE2C

	thumb_func_start ov19_021DAE60
ov19_021DAE60: ; 0x021DAE60
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	lsl r5, r3, #4
	cmp r2, #3
	bls _021DAE6E
	b _021DAF8E
_021DAE6E:
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DAE7A: ; jump table
	.short _021DAE82 - _021DAE7A - 2 ; case 0
	.short _021DAE94 - _021DAE7A - 2 ; case 1
	.short _021DAE88 - _021DAE7A - 2 ; case 2
	.short _021DAE8E - _021DAE7A - 2 ; case 3
_021DAE82:
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #0x68]
	b _021DAF7A
_021DAE88:
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #0x6c]
	b _021DAF7A
_021DAE8E:
	ldr r1, [r4, #0x10]
	ldr r2, [r1, #0x70]
	b _021DAF7A
_021DAE94:
	bl sub_0207C944
	ldr r0, [r4, #0x10]
	add r0, #0x58
	ldrb r0, [r0]
	bl sub_0207C908
	bl sub_0207C944
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	add r0, #0x58
	ldrb r0, [r0]
	bl sub_0207C908
	mov r2, #0
	add r1, r0, #0
	mov r3, #0x2f
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r3, r3, #0xa
	bl sub_02006EC0
	ldr r0, [r4, #0x3c]
	bl sub_02021D28
	add r6, r0, #0
	add r3, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	add r5, #0xb0
	str r0, [r3, #0]
	lsl r0, r5, #0xc
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x3c]
	add r1, r2, #0
	bl sub_02021C50
	ldr r0, [r4, #0x10]
	add r0, #0x58
	ldrb r0, [r0]
	bl sub_0207C92C
	add r1, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, #0xa
	bl sub_02021E90
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [r4, #0x10]
	add r0, r1, #0
	add r0, #0x59
	add r1, #0x58
	ldrb r5, [r0]
	ldrb r0, [r1]
	cmp r0, r5
	beq _021DAF6E
	bl sub_0207C944
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0207C908
	mov r2, #0
	add r1, r0, #0
	mov r3, #0xbd
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	add r0, r6, #0
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #9
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x40]
	add r1, sp, #0x10
	bl sub_02021C50
	ldr r0, [r4, #0x10]
	add r0, #0x59
	ldrb r0, [r0]
	bl sub_0207C92C
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	add r1, #0xa
	bl sub_02021E90
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021CAC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_021DAF6E:
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_021DAF7A:
	str r5, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	ldr r1, _021DAF94 ; =0x00090600
	str r1, [sp, #8]
	mov r1, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
_021DAF8E:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021DAF94: .word 0x00090600
	thumb_func_end ov19_021DAE60

	thumb_func_start ov19_021DAF98
ov19_021DAF98: ; 0x021DAF98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021DAFF6
	ldr r0, [r4, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0xf
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0xf
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, [r4, #0x10]
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021DAFD8
	add r0, r4, #0
	bl ov19_021DB0E4
_021DAFD8:
	ldr r0, [r4, #4]
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x10
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x20
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x30
	bl sub_0201ACCC
_021DAFF6:
	pop {r4, pc}
	thumb_func_end ov19_021DAF98

	thumb_func_start ov19_021DAFF8
ov19_021DAFF8: ; 0x021DAFF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021DB074
	ldr r0, [r4, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0xf
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0xf
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021DB036
	bl sub_02007DC8
	mov r0, #0
	str r0, [r4, #0x24]
_021DB036:
	ldr r0, [r4, #0x10]
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021DB048
	add r0, r4, #0
	bl ov19_021DB0E4
	b _021DB050
_021DB048:
	add r0, r4, #0
	mov r1, #0
	bl ov19_021DB24C
_021DB050:
	ldr r0, [r4, #4]
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x10
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x20
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x30
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov19_021DACB0
_021DB074:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DAFF8

	thumb_func_start ov19_021DB078
ov19_021DB078: ; 0x021DB078
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021DB0E2
	ldr r0, [r4, #4]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0xf
	add r0, #0x10
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0xf
	add r0, #0x20
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021DB0B6
	bl sub_02007DC8
	mov r0, #0
	str r0, [r4, #0x24]
_021DB0B6:
	add r0, r4, #0
	mov r1, #0
	bl ov19_021DB24C
	ldr r0, [r4, #4]
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x10
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x20
	bl sub_0201ACCC
	ldr r0, [r4, #4]
	add r0, #0x30
	bl sub_0201ACCC
	add r0, r4, #0
	bl ov19_021DACDC
_021DB0E2:
	pop {r4, pc}
	thumb_func_end ov19_021DB078

	thumb_func_start ov19_021DB0E4
ov19_021DB0E4: ; 0x021DB0E4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB20C ; =0x0009060F
	mov r3, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x18]
	bl sub_0201D78C
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB210 ; =0x0001020F
	mov r3, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x14]
	add r0, #0x20
	bl sub_0201D78C
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB210 ; =0x0001020F
	mov r3, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x14]
	add r0, #0x20
	bl sub_0201D78C
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _021DB14A
	cmp r0, #1
	beq _021DB166
	b _021DB180
_021DB14A:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB214 ; =0x0007080F
	mov r3, #0x46
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x44]
	add r0, #0x20
	bl sub_0201D78C
	b _021DB180
_021DB166:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB218 ; =0x0003040F
	mov r3, #0x46
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x48]
	add r0, #0x20
	bl sub_0201D78C
_021DB180:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021DB1DA
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB21C ; =0x00090600
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x1c]
	add r0, #0x30
	bl sub_0201D78C
	ldrh r2, [r4, #8]
	cmp r2, #0
	beq _021DB1BE
	mov r1, #2
	str r1, [sp]
	ldr r0, [r5, #4]
	mov r3, #3
	add r0, #0x10
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	bl sub_0200C648
_021DB1BE:
	mov r1, #1
	str r1, [sp]
	ldr r0, [r5, #4]
	mov r3, #3
	add r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, #0xa]
	ldr r0, [r5, #0x1c]
	bl sub_0200C648
_021DB1DA:
	ldr r1, [r4, #0]
	add r0, sp, #0x10
	mov r2, #2
	mov r3, #0
	bl sub_02075F0C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x10
	mov r2, #0x2c
	mov r3, #0x54
	bl sub_02007C34
	str r0, [r5, #0x24]
	ldrb r1, [r4, #0xb]
	add r0, r5, #0
	bl ov19_021DB24C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021DB20C: .word 0x0009060F
_021DB210: .word 0x0001020F
_021DB214: .word 0x0007080F
_021DB218: .word 0x0003040F
_021DB21C: .word 0x00090600
	thumb_func_end ov19_021DB0E4

	thumb_func_start ov19_021DB220
ov19_021DB220: ; 0x021DB220
	mov r0, #1
	bx lr
	thumb_func_end ov19_021DB220

	thumb_func_start ov19_021DB224
ov19_021DB224: ; 0x021DB224
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021DB248
	ldr r0, [r4, #0x10]
	bl ov19_021D5E4C
	cmp r0, #0
	beq _021DB248
	ldr r0, [r4, #0x10]
	bl ov19_021D5E70
	add r1, r0, #0
	ldrb r1, [r1, #0xb]
	add r0, r4, #0
	bl ov19_021DB24C
_021DB248:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov19_021DB224

	thumb_func_start ov19_021DB24C
ov19_021DB24C: ; 0x021DB24C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r4, r1, #0
	ldr r0, [r0, #8]
	mov r1, #2
	bl sub_02019FE4
	mov ip, r0
	add r2, r0, #0
	mov r0, #1
	ldr r6, _021DB2AC ; =0x000004C8
	mov r1, #0
	lsl r7, r0, #0xd
_021DB268:
	add r3, r0, #0
	lsl r3, r1
	tst r3, r4
	beq _021DB27A
	add r3, r1, #0
	add r3, #0x98
	orr r3, r7
	strh r3, [r2, r6]
	b _021DB288
_021DB27A:
	add r5, r1, #0
	mov r3, #2
	add r5, #0x84
	lsl r3, r3, #0xc
	orr r5, r3
	ldr r3, _021DB2AC ; =0x000004C8
	strh r5, [r2, r3]
_021DB288:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #6
	blt _021DB268
	mov r2, #0x99
	lsl r2, r2, #2
	ldr r0, [sp, #4]
	str r2, [sp]
	lsl r3, r2, #1
	mov r2, ip
	add r2, r2, r3
	ldr r0, [r0, #8]
	mov r1, #2
	mov r3, #0xc
	bl sub_02019460
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB2AC: .word 0x000004C8
	thumb_func_end ov19_021DB24C

	thumb_func_start ov19_021DB2B0
ov19_021DB2B0: ; 0x021DB2B0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021DB2F4
	ldr r0, [r5, #0x10]
	bl ov19_021D5E70
	add r4, r0, #0
	ldr r0, [r5, #4]
	mov r1, #0
	add r0, #0x30
	bl sub_0201ADA4
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _021DB2EE
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021DB2F8 ; =0x00090600
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [r4, #0x1c]
	add r0, #0x30
	bl sub_0201D78C
_021DB2EE:
	add r0, r5, #0
	bl ov19_021DACB0
_021DB2F4:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DB2F8: .word 0x00090600
	thumb_func_end ov19_021DB2B0

	.rodata


	.global Unk_ov19_021E01D8
Unk_ov19_021E01D8: ; 0x021E01D8
	.incbin "incbin/overlay19_rodata.bin", 0x3E8, 0x20

