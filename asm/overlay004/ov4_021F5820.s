	.include "macros/function.inc"
	.include "overlay004/ov4_021F5820.inc"

	

	.text


	arm_func_start ov4_021F5820
ov4_021F5820: ; 0x021F5820
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _021F5848
	ldr r0, _021F5884 ; =0x022191E8
	ldr r1, _021F5888 ; =0x022191F8
	ldr r2, _021F588C ; =0x022191BC
	mov r3, #0x2f
	bl __msl_assertion_failed
_021F5848:
	cmp r5, #0
	bne _021F5864
	ldr r0, _021F5890 ; =0x02219208
	ldr r1, _021F5888 ; =0x022191F8
	ldr r2, _021F588C ; =0x022191BC
	mov r3, #0x30
	bl __msl_assertion_failed
_021F5864:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl strncpy
	add r0, r6, r4
	mov r1, #0
	strb r1, [r0, #-1]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F5884: .word Unk_ov4_022191E8
_021F5888: .word Unk_ov4_022191F8
_021F588C: .word Unk_ov4_022191BC
_021F5890: .word Unk_ov4_02219208
	arm_func_end ov4_021F5820

	arm_func_start ov4_021F5894
ov4_021F5894: ; 0x021F5894
	stmfd sp!, {r0, r1, r2, r3}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov4_021F5894

	arm_func_start ov4_021F58A0
ov4_021F58A0: ; 0x021F58A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r7, r0
	mov r5, r2
	ldr r1, _021F5968 ; =0x02219214
	mov r0, r6
	mov r2, #7
	ldr r4, [r7, #0]
	bl strncmp
	cmp r0, #0
	bne _021F595C
	ldr r1, _021F596C ; =0x0221921C
	add r2, sp, #0
	mov r0, r6
	mov r3, #0x10
	bl ov4_021F5978
	cmp r0, #0
	beq _021F58F8
	add r0, sp, #0
	bl atoi
	str r0, [r4, #0x418]
_021F58F8:
	ldr r1, _021F5970 ; =0x02219224
	mov r0, r6
	mov r2, r4
	mov r3, #0x100
	bl ov4_021F5978
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r4]
	cmp r5, #0
	beq _021F5950
	ldr r1, _021F5974 ; =0x02219230
	mov r0, r6
	bl strstr
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r7
	mov r1, #4
	bl ov4_021EDE68
_021F5950:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F595C:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F5968: .word Unk_ov4_02219214
_021F596C: .word Unk_ov4_0221921C
_021F5970: .word Unk_ov4_02219224
_021F5974: .word Unk_ov4_02219230
	arm_func_end ov4_021F58A0

	arm_func_start ov4_021F5978
ov4_021F5978: ; 0x021F5978
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r0
	mov r8, r1
	mov r4, r2
	mov r7, r3
	bne _021F59A4
	ldr r0, _021F5A5C ; =0x02219238
	ldr r1, _021F5A60 ; =0x022191F8
	ldr r2, _021F5A64 ; =0x022191C4
	ldr r3, _021F5A68 ; =0x0000010D
	bl __msl_assertion_failed
_021F59A4:
	cmp r8, #0
	bne _021F59C0
	ldr r0, _021F5A6C ; =0x02219248
	ldr r1, _021F5A60 ; =0x022191F8
	ldr r2, _021F5A64 ; =0x022191C4
	ldr r3, _021F5A70 ; =0x0000010E
	bl __msl_assertion_failed
_021F59C0:
	cmp r4, #0
	bne _021F59DC
	ldr r0, _021F5A74 ; =0x02219254
	ldr r1, _021F5A60 ; =0x022191F8
	ldr r2, _021F5A64 ; =0x022191C4
	ldr r3, _021F5A78 ; =0x0000010F
	bl __msl_assertion_failed
_021F59DC:
	cmp r7, #0
	bgt _021F59F8
	ldr r0, _021F5A7C ; =0x02219264
	ldr r1, _021F5A60 ; =0x022191F8
	ldr r2, _021F5A64 ; =0x022191C4
	mov r3, #0x110
	bl __msl_assertion_failed
_021F59F8:
	ldrsb r6, [r8]
	mov r0, r5
	mov r1, r8
	bl strstr
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl strlen
	add r1, r5, r0
	mov r3, #0
	sub r0, r7, #1
	b _021F5A34
_021F5A2C:
	strb r2, [r4, r3]
	add r3, r3, #1
_021F5A34:
	cmp r3, r0
	bge _021F5A4C
	ldrsb r2, [r1, r3]
	cmp r2, #0
	cmpne r2, r6
	bne _021F5A2C
_021F5A4C:
	mov r0, #0
	strb r0, [r4, r3]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F5A5C: .word Unk_ov4_02219238
_021F5A60: .word Unk_ov4_022191F8
_021F5A64: .word Unk_ov4_022191C4
_021F5A68: .word 0x0000010D
_021F5A6C: .word Unk_ov4_02219248
_021F5A70: .word 0x0000010E
_021F5A74: .word Unk_ov4_02219254
_021F5A78: .word 0x0000010F
_021F5A7C: .word Unk_ov4_02219264
	arm_func_end ov4_021F5978

	arm_func_start ov4_021F5A80
ov4_021F5A80: ; 0x021F5A80
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov ip, #0
	mov r4, r2
	mov r5, r0
	mov r0, r1
	add r2, sp, #4
	add r3, sp, #0
	mov r1, ip
	str ip, [sp, #4]
	str ip, [sp]
	bl ov4_021EAA74
	mvn r1, #0
	cmp r0, r1
	bne _021F5AF4
	ldr r1, _021F5B64 ; =0x0221926C
	mov r0, r5
	bl ov4_021F5894
	ldr r2, _021F5B68 ; =0x02219280
	mov r0, r5
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r3, r4, r5, pc}
_021F5AF4:
	cmp r0, #0
	ble _021F5B54
	ldr r0, [sp]
	cmp r0, #0
	beq _021F5B28
	ldr r1, _021F5B6C ; =0x022192B8
	mov r0, r5
	bl ov4_021F5894
	mov r0, #4
	str r0, [r4, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021F5B28:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021F5B54
	ldr r1, _021F5B70 ; =0x022192D0
	mov r0, r5
	bl ov4_021F5894
	mov r0, #3
	str r0, [r4, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021F5B54:
	mov r0, #0
	str r0, [r4, #0]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F5B64: .word Unk_ov4_0221926C
_021F5B68: .word Unk_ov4_02219280
_021F5B6C: .word Unk_ov4_022192B8
_021F5B70: .word Unk_ov4_022192D0
	arm_func_end ov4_021F5A80

	arm_func_start ov4_021F5B74
ov4_021F5B74: ; 0x021F5B74
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x18]
	bne _021F5BA4
	ldr r0, _021F5D1C ; =0x022192E8
	ldr r1, _021F5D20 ; =0x022191F8
	ldr r2, _021F5D24 ; =0x022191D4
	ldr r3, _021F5D28 ; =0x00000199
	bl __msl_assertion_failed
_021F5BA4:
	cmp r5, #0
	bne _021F5BC0
	ldr r0, _021F5D2C ; =0x02219248
	ldr r1, _021F5D20 ; =0x022191F8
	ldr r2, _021F5D24 ; =0x022191D4
	ldr r3, _021F5D30 ; =0x0000019A
	bl __msl_assertion_failed
_021F5BC0:
	cmp r4, #0
	bne _021F5BDC
	ldr r0, _021F5D34 ; =0x02219254
	ldr r1, _021F5D20 ; =0x022191F8
	ldr r2, _021F5D24 ; =0x022191D4
	ldr r3, _021F5D38 ; =0x0000019B
	bl __msl_assertion_failed
_021F5BDC:
	ldr r1, [r6, #0]
	ldrsb r0, [r7, r1]
	add r3, r7, r1
	cmp r0, #0x5c
	beq _021F5C18
	ldr r2, _021F5D3C ; =0x022192F8
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F5C18:
	ldrsb r1, [r3, #1]
	add r7, r3, #2
	mov r2, #0
	cmp r1, #0x5c
	beq _021F5CA4
	ldr r0, _021F5D40 ; =0x000001FF
_021F5C30:
	cmp r1, #0
	bne _021F5C60
	ldr r2, _021F5D3C ; =0x022192F8
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F5C60:
	cmp r2, r0
	bne _021F5C90
	ldr r2, _021F5D3C ; =0x022192F8
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F5C90:
	strb r1, [r5], #1
	ldrsb r1, [r7], #1
	add r2, r2, #1
	cmp r1, #0x5c
	bne _021F5C30
_021F5CA4:
	mov r1, #0
	strb r1, [r5]
	ldr r0, _021F5D40 ; =0x000001FF
	b _021F5CEC
_021F5CB4:
	cmp r1, r0
	bne _021F5CE4
	ldr r2, _021F5D3C ; =0x022192F8
	mov r0, r8
	mov r1, #1
	bl ov4_021F5D44
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl ov4_021EDE68
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F5CE4:
	strb r2, [r4], #1
	add r1, r1, #1
_021F5CEC:
	ldrsb r2, [r7], #1
	cmp r2, #0x5c
	cmpne r2, #0
	bne _021F5CB4
	mov r0, #0
	strb r0, [r4]
	sub r1, r7, r3
	ldr r2, [r6, #0]
	sub r1, r1, #1
	add r1, r2, r1
	str r1, [r6, #0]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F5D1C: .word Unk_ov4_022192E8
_021F5D20: .word Unk_ov4_022191F8
_021F5D24: .word Unk_ov4_022191D4
_021F5D28: .word 0x00000199
_021F5D2C: .word Unk_ov4_02219248
_021F5D30: .word 0x0000019A
_021F5D34: .word Unk_ov4_02219254
_021F5D38: .word 0x0000019B
_021F5D3C: .word Unk_ov4_022192F8
_021F5D40: .word 0x000001FF
	arm_func_end ov4_021F5B74

	arm_func_start ov4_021F5D44
ov4_021F5D44: ; 0x021F5D44
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	mov r5, r1
	mov r1, r2
	mov r0, r4
	mov r2, #0x100
	bl ov4_021F5820
	str r5, [r4, #0x418]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021F5D44

	arm_func_start ov4_021F5D68
ov4_021F5D68: ; 0x021F5D68
	ldr ip, _021F5D78 ; =ov4_021F5820
	ldr r0, [r0, #0]
	mov r2, #0x100
	bx ip
	; .align 2, 0
_021F5D78: .word ov4_021F5820
	arm_func_end ov4_021F5D68

	.data


	.global Unk_ov4_022191BC
Unk_ov4_022191BC: ; 0x022191BC
	.incbin "incbin/overlay4_data.bin", 0x333C, 0x3344 - 0x333C

	.global Unk_ov4_022191C4
Unk_ov4_022191C4: ; 0x022191C4
	.incbin "incbin/overlay4_data.bin", 0x3344, 0x3354 - 0x3344

	.global Unk_ov4_022191D4
Unk_ov4_022191D4: ; 0x022191D4
	.incbin "incbin/overlay4_data.bin", 0x3354, 0x3368 - 0x3354

	.global Unk_ov4_022191E8
Unk_ov4_022191E8: ; 0x022191E8
	.incbin "incbin/overlay4_data.bin", 0x3368, 0x3378 - 0x3368

	.global Unk_ov4_022191F8
Unk_ov4_022191F8: ; 0x022191F8
	.incbin "incbin/overlay4_data.bin", 0x3378, 0x3388 - 0x3378

	.global Unk_ov4_02219208
Unk_ov4_02219208: ; 0x02219208
	.incbin "incbin/overlay4_data.bin", 0x3388, 0x3394 - 0x3388

	.global Unk_ov4_02219214
Unk_ov4_02219214: ; 0x02219214
	.incbin "incbin/overlay4_data.bin", 0x3394, 0x339C - 0x3394

	.global Unk_ov4_0221921C
Unk_ov4_0221921C: ; 0x0221921C
	.incbin "incbin/overlay4_data.bin", 0x339C, 0x33A4 - 0x339C

	.global Unk_ov4_02219224
Unk_ov4_02219224: ; 0x02219224
	.incbin "incbin/overlay4_data.bin", 0x33A4, 0x33B0 - 0x33A4

	.global Unk_ov4_02219230
Unk_ov4_02219230: ; 0x02219230
	.incbin "incbin/overlay4_data.bin", 0x33B0, 0x33B8 - 0x33B0

	.global Unk_ov4_02219238
Unk_ov4_02219238: ; 0x02219238
	.incbin "incbin/overlay4_data.bin", 0x33B8, 0x33C8 - 0x33B8

	.global Unk_ov4_02219248
Unk_ov4_02219248: ; 0x02219248
	.incbin "incbin/overlay4_data.bin", 0x33C8, 0x33D4 - 0x33C8

	.global Unk_ov4_02219254
Unk_ov4_02219254: ; 0x02219254
	.incbin "incbin/overlay4_data.bin", 0x33D4, 0x33E4 - 0x33D4

	.global Unk_ov4_02219264
Unk_ov4_02219264: ; 0x02219264
	.incbin "incbin/overlay4_data.bin", 0x33E4, 0x33EC - 0x33E4

	.global Unk_ov4_0221926C
Unk_ov4_0221926C: ; 0x0221926C
	.incbin "incbin/overlay4_data.bin", 0x33EC, 0x3400 - 0x33EC

	.global Unk_ov4_02219280
Unk_ov4_02219280: ; 0x02219280
	.incbin "incbin/overlay4_data.bin", 0x3400, 0x3438 - 0x3400

	.global Unk_ov4_022192B8
Unk_ov4_022192B8: ; 0x022192B8
	.incbin "incbin/overlay4_data.bin", 0x3438, 0x3450 - 0x3438

	.global Unk_ov4_022192D0
Unk_ov4_022192D0: ; 0x022192D0
	.incbin "incbin/overlay4_data.bin", 0x3450, 0x3468 - 0x3450

	.global Unk_ov4_022192E8
Unk_ov4_022192E8: ; 0x022192E8
	.incbin "incbin/overlay4_data.bin", 0x3468, 0x3478 - 0x3468

	.global Unk_ov4_022192F8
Unk_ov4_022192F8: ; 0x022192F8
	.incbin "incbin/overlay4_data.bin", 0x3478, 0xD

