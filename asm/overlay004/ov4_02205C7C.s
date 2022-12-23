	.include "macros/function.inc"
	.include "overlay004/ov4_02205C7C.inc"

	

	.text


	arm_func_start ov4_02205C7C
ov4_02205C7C: ; 0x02205C7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02205CB0 ; =0x02000C30
	bl OSi_ReferSymbol
	ldr r0, _02205CB4 ; =0x0221A134
	ldr r1, [r0, #0]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	str r4, [r0, #0]
	bl ov4_02205CF8
	bl ov4_02205CB8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02205CB0: .word 0x02000C30
_02205CB4: .word 0x0221A134
	arm_func_end ov4_02205C7C

	arm_func_start ov4_02205CB8
ov4_02205CB8: ; 0x02205CB8
	stmfd sp!, {r4, lr}
	ldr r0, _02205CEC ; =0x0221A134
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x20]
	bl ov4_02205EF0
	movs r4, r0
	bmi _02205CE4
	ldr r0, _02205CF0 ; =0x0221A16C
	bl ov4_02206224
	ldr r1, _02205CF4 ; =0x0221DBF0
	str r0, [r1, #0xc]
_02205CE4:
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02205CEC: .word 0x0221A134
_02205CF0: .word 0x0221A16C
_02205CF4: .word 0x0221DBF0
	arm_func_end ov4_02205CB8

	arm_func_start ov4_02205CF8
ov4_02205CF8: ; 0x02205CF8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02205E2C ; =0x0221A134
	ldr r4, _02205E30 ; =0x0221DC00
	ldr r5, [r0, #0]
	mov r0, r4
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r1, [r5, #0x18]
	ldr r0, _02205E34 ; =0x0221DBF0
	ldr r2, _02205E38 ; =ov4_02205ED8
	str r1, [r0, #0x14]
	ldr r3, [r5, #0x1c]
	mov r1, #0
	str r3, [r0, #0x18]
	str r2, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	ldr r1, [r0, #0]
	str r1, [r0, #0x3c]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	moveq r0, #0x4000
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _02205D78
	ldr r1, _02205E2C ; =0x0221A134
	ldr r0, [r4, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	blx r1
_02205D78:
	str r0, [r4, #0x1c]
	ldr r1, [r5, #0x30]
	ldr lr, [r5, #0x34]
	cmp r1, #0
	moveq r1, #0x240
	sub ip, r1, #0x28
	cmp lr, #0
	moveq lr, #0x10c0
	ldr r2, _02205E3C ; =0x0221A154
	add r0, lr, lr, lsr #31
	ldr r1, _02205E40 ; =0x0221DE40
	mov r3, #0
	strh lr, [r2, #2]
	mov r0, r0, asr #1
	strh r0, [r2, #4]
	str ip, [r4, #0x24]
	str r3, [r1, #0]
	ldr r0, [r5, #0]
	mov r2, #1
	cmp r0, #0
	beq _02205DEC
	ldr r1, _02205E44 ; =ov4_02205EC0
	ldr r0, _02205E34 ; =0x0221DBF0
	str r3, [r4, #0]
	str r1, [r4, #0xc]
	str r2, [r0, #8]
	ldr r0, [r0, #4]
	str r0, [r4, #0x28]
	b _02205E00
_02205DEC:
	ldr r0, _02205E34 ; =0x0221DBF0
	ldr r1, _02205E48 ; =ov4_02205E54
	str r3, [r0, #8]
	str r2, [r4, #0]
	str r1, [r4, #0xc]
_02205E00:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	moveq r0, #0xb
	bl ov4_02209108
	ldr r0, _02205E4C ; =ov4_0220962C
	bl ov4_0221543C
	ldr r0, _02205E50 ; =ov4_02207D54
	bl ov4_022090B0
	mov r0, r4
	bl ov4_02208E24
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02205E2C: .word 0x0221A134
_02205E30: .word 0x0221DC00
_02205E34: .word 0x0221DBF0
_02205E38: .word ov4_02205ED8
_02205E3C: .word 0x0221A154
_02205E40: .word 0x0221DE40
_02205E44: .word ov4_02205EC0
_02205E48: .word ov4_02205E54
_02205E4C: .word ov4_0220962C
_02205E50: .word ov4_02207D54
	arm_func_end ov4_02205CF8

	arm_func_start ov4_02205E54
ov4_02205E54: ; 0x02205E54
	ldr r0, _02205EA8 ; =0x0221A134
	ldr r1, _02205EAC ; =0x0221DE40
	ldr ip, [r0]
	ldr r0, _02205EB0 ; =0x0221DE0C
	ldr r3, [ip, #4]
	ldr r2, _02205EB4 ; =0x0221DE1C
	str r3, [r1, #0]
	ldr r3, [ip, #8]
	ldr r1, _02205EB8 ; =0x0221DE50
	str r3, [r0, #0]
	ldr r3, [ip, #0xc]
	ldr r0, _02205EBC ; =0x0221DBF0
	str r3, [r2, #0]
	ldr r2, [ip, #0x10]
	str r2, [r1, #0]
	ldr r2, [ip, #0x14]
	str r2, [r1, #4]
	ldr r1, [r0, #8]
	orr r1, r1, #2
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_02205EA8: .word 0x0221A134
_02205EAC: .word 0x0221DE40
_02205EB0: .word 0x0221DE0C
_02205EB4: .word 0x0221DE1C
_02205EB8: .word 0x0221DE50
_02205EBC: .word 0x0221DBF0
	arm_func_end ov4_02205E54

	arm_func_start ov4_02205EC0
ov4_02205EC0: ; 0x02205EC0
	ldr r0, _02205ED4 ; =0x0221DBF0
	ldr r1, [r0, #8]
	orr r1, r1, #2
	str r1, [r0, #8]
	bx lr
	; .align 2, 0
_02205ED4: .word 0x0221DBF0
	arm_func_end ov4_02205EC0

	arm_func_start ov4_02205ED8
ov4_02205ED8: ; 0x02205ED8
	stmfd sp!, {r3, lr}
	bl ov4_02215398
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_02205ED8

	.data


	.global Unk_ov4_0221A134
Unk_ov4_0221A134: ; 0x0221A134
	.incbin "incbin/overlay4_data.bin", 0x42B4, 0x4



	.bss


	.global Unk_ov4_0221DBF0
Unk_ov4_0221DBF0: ; 0x0221DBF0
	.space 0x4

	.global Unk_ov4_0221DBF4
Unk_ov4_0221DBF4: ; 0x0221DBF4
	.space 0x4

	.global Unk_ov4_0221DBF8
Unk_ov4_0221DBF8: ; 0x0221DBF8
	.space 0x4

	.global Unk_ov4_0221DBFC
Unk_ov4_0221DBFC: ; 0x0221DBFC
	.space 0x4

	.global Unk_ov4_0221DC00
Unk_ov4_0221DC00: ; 0x0221DC00
	.space 0x30

