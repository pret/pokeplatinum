	.include "macros/function.inc"
	.include "include/ov18_0222F8FC.inc"

	

	.text


	arm_func_start ov18_0222F8FC
ov18_0222F8FC: ; 0x0222F8FC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, _0222F9D4 ; =0x0001E2A4
	mov r1, #0x20
	bl ov18_02245068
	ldr r2, _0222F9D8 ; =0x022532D0
	add r1, r0, #0x1e000
	str r0, [r2, #0]
	str r4, [r1, #0x298]
	ldr r0, [r2, #0]
	mov r4, #0
	add r0, r0, #0x1e000
	strb r4, [r0, #0x2a0]
	ldr r0, [r2, #0]
	ldr lr, _0222F9DC ; =0x02249D6C
	add r0, r0, #0x1e000
	strb r4, [r0, #0x2a1]
	add ip, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r0, _0222F9E0 ; =0x022532D8
	mov r1, r4
	ldr r0, [r0, #0]
	bl ov18_0222F8B8
	ldr r1, _0222F9E0 ; =0x022532D8
	str r0, [sp, #4]
	ldr r0, [r1, #0]
	mov r1, #1
	bl ov18_0222F8B8
	str r0, [sp, #8]
	bl ov18_0222F7A4
	strb r0, [sp, #0x18]
	ldr r0, _0222F9D8 ; =0x022532D0
	add r1, sp, #0
	ldr r0, [r0, #0]
	bl ov18_022425E8
	bl ov18_02242834
	cmp r0, #0
	bne _0222F9A8
	bl OS_Terminate
_0222F9A8:
	mov r0, #0
	ldr r1, _0222F9E4 ; =ov18_0222FA9C
	mov r2, r0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0222F9D8 ; =0x022532D0
	ldr r1, [r1, #0]
	add r1, r1, #0x1e000
	str r0, [r1, #0x29c]
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0222F9D4: .word 0x0001E2A4
_0222F9D8: .word 0x022532D0
_0222F9DC: .word 0x02249D6C
_0222F9E0: .word 0x022532D8
_0222F9E4: .word ov18_0222FA9C
	arm_func_end ov18_0222F8FC

	arm_func_start ov18_0222F9E8
ov18_0222F9E8: ; 0x0222F9E8
	ldr ip, _0222FA00 ; =ov18_02246304
	mov r0, #0
	ldr r1, _0222FA04 ; =ov18_0222FA08
	mov r2, r0
	mov r3, #0x78
	bx ip
	; .align 2, 0
_0222FA00: .word ov18_02246304
_0222FA04: .word ov18_0222FA08
	arm_func_end ov18_0222F9E8

	arm_func_start ov18_0222FA08
ov18_0222FA08: ; 0x0222FA08
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov18_022426D8
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _0222FA40 ; =0x022532D0
	mov r1, r4
	ldr r0, [r0, #0]
	mov r3, #1
	add r2, r0, #0x1e000
	mov r0, #0
	strb r3, [r2, #0x2a1]
	bl ov18_022463AC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222FA40: .word 0x022532D0
	arm_func_end ov18_0222FA08

	arm_func_start ov18_0222FA44
ov18_0222FA44: ; 0x0222FA44
	ldr r0, _0222FA5C ; =0x022532D0
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_0222FA5C: .word 0x022532D0
	arm_func_end ov18_0222FA44

	arm_func_start ov18_0222FA60
ov18_0222FA60: ; 0x0222FA60
	ldr r1, _0222FA74 ; =0x022532D0
	ldr r1, [r1, #0]
	add r1, r1, #0x1e000
	str r0, [r1, #0x298]
	bx lr
	; .align 2, 0
_0222FA74: .word 0x022532D0
	arm_func_end ov18_0222FA60

	arm_func_start ov18_0222FA78
ov18_0222FA78: ; 0x0222FA78
	ldr ip, _0222FA80 ; =ov18_0224287C
	bx ip
	; .align 2, 0
_0222FA80: .word ov18_0224287C
	arm_func_end ov18_0222FA78

	arm_func_start ov18_0222FA84
ov18_0222FA84: ; 0x0222FA84
	ldr r0, _0222FA98 ; =0x022532D0
	ldr r0, [r0, #0]
	add r0, r0, #0x2280
	add r0, r0, #0x1c000
	bx lr
	; .align 2, 0
_0222FA98: .word 0x022532D0
	arm_func_end ov18_0222FA84

	arm_func_start ov18_0222FA9C
ov18_0222FA9C: ; 0x0222FA9C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl ov18_022428B0
	ldr r0, _0222FD34 ; =0x022532D0
	ldr r0, [r0, #0]
	add r0, r0, #0x1e000
	ldrb r1, [r0, #0x2a0]
	cmp r1, #0
	beq _0222FAF0
	ldrb r1, [r0, #0x2a1]
	cmp r1, #0
	bne _0222FAF0
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, #0
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FAF0:
	add r0, sp, #1
	add r1, sp, #0
	bl ov18_02242C34
	ldrb r0, [sp, #1]
	cmp r0, #0x1a
	bgt _0222FB84
	bge _0222FC90
	cmp r0, #0x14
	bgt _0222FB74
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0222FD2C
_0222FB20: ; jump table
	b _0222FD2C ; case 0
	b _0222FD2C ; case 1
	b _0222FD2C ; case 2
	b _0222FD2C ; case 3
	b _0222FD2C ; case 4
	b _0222FBA8 ; case 5
	b _0222FD2C ; case 6
	b _0222FD2C ; case 7
	b _0222FD2C ; case 8
	b _0222FD2C ; case 9
	b _0222FD2C ; case 10
	b _0222FD2C ; case 11
	b _0222FCD4 ; case 12
	b _0222FC08 ; case 13
	b _0222FD2C ; case 14
	b _0222FD2C ; case 15
	b _0222FD2C ; case 16
	b _0222FD2C ; case 17
	b _0222FD2C ; case 18
	b _0222FD2C ; case 19
	b _0222FC4C ; case 20
_0222FB74:
	cmp r0, #0x17
	beq _0222FC4C
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FB84:
	cmp r0, #0x1d
	bgt _0222FB98
	beq _0222FC90
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FB98:
	cmp r0, #0x22
	beq _0222FD18
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FBA8:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, _0222FD34 ; =0x022532D0
	ldr r0, [r0, #0]
	add r4, r0, #0x2280
	bl ov18_02242C78
	add r1, r4, #0x1c000
	mov r2, #0x16
	bl MIi_CpuCopy16
	ldr r0, _0222FD34 ; =0x022532D0
	ldr r0, [r0, #0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x2a0]
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, #0
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FC08:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, _0222FD34 ; =0x022532D0
	ldr r0, [r0, #0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x2a0]
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, #1
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FC4C:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, _0222FD34 ; =0x022532D0
	ldr r0, [r0, #0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x2a0]
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, #3
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FC90:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, _0222FD34 ; =0x022532D0
	ldr r0, [r0, #0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x2a0]
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, #4
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FCD4:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, _0222FD34 ; =0x022532D0
	ldr r0, [r0, #0]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0x2a0]
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r0, #2
	blx r1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_0222FD18:
	mov r1, r4
	mov r0, #0
	bl ov18_022463AC
	ldr r0, _0222FD38 ; =0x022532D0
	bl ov18_0224508C
_0222FD2C:
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0222FD34: .word 0x022532D0
_0222FD38: .word 0x022532D0
	arm_func_end ov18_0222FA9C

	.data


	.global Unk_ov18_02249D28
Unk_ov18_02249D28: ; 0x02249D28
	.incbin "incbin/overlay18_data.bin", 0x5C8, 0x5DC - 0x5C8

	.global Unk_ov18_02249D3C
Unk_ov18_02249D3C: ; 0x02249D3C
	.incbin "incbin/overlay18_data.bin", 0x5DC, 0x5F4 - 0x5DC

	.global Unk_ov18_02249D54
Unk_ov18_02249D54: ; 0x02249D54
	.incbin "incbin/overlay18_data.bin", 0x5F4, 0x60C - 0x5F4

	.global Unk_ov18_02249D6C
Unk_ov18_02249D6C: ; 0x02249D6C
	.incbin "incbin/overlay18_data.bin", 0x60C, 0x1C



	.bss


	.global Unk_ov18_022532D0
Unk_ov18_022532D0: ; 0x022532D0
	.space 0x4

