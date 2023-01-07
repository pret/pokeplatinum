	.include "macros/function.inc"
	.include "include/dwci_nd_bgnend.inc"

	

	.text


	arm_func_start ov60_022241E8
ov60_022241E8: ; 0x022241E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl ov60_02225670
	ldr r1, _02224230 ; =0x02229E50
	mov r4, r0
	ldr r2, [r1, #0xc]
	add r0, r4, #1
	mov r1, #4
	blx r2
	movs r5, r0
	beq _02224228
	mov r1, r6
	mov r2, r4
	bl ov60_0222569C
	mov r0, #0
	strb r0, [r5, r4]
_02224228:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02224230: .word Unk_ov60_02229E50
	arm_func_end ov60_022241E8

	arm_func_start ov60_02224234
ov60_02224234: ; 0x02224234
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _022243C4 ; =0x02229E50
	mov r5, r0
	mov r4, r1
	str r5, [ip, #0xc]
	mov r1, #0
	ldr r0, [sp, #0x20]
	str r4, [ip, #0x20]
	str r0, [ip, #0x18]
	str r1, [ip, #0x1c]
	str r1, [ip, #0x28]
	str r1, [ip, #0x2c]
	str r1, [ip, #0x30]
	str r1, [ip, #4]
	sub r0, r1, #1
	str r0, [ip, #0x24]
	str r1, [ip, #8]
	ldr r0, _022243C8 ; =0x02229E90
	mov r7, r2
	mov r6, r3
	str r1, [ip, #0x10]
	bl ov60_02225610
	ldr r0, _022243CC ; =0x02229ED8
	bl ov60_02224610
	mov r0, r7
	bl ov60_022241E8
	ldr r1, _022243C4 ; =0x02229E50
	cmp r0, #0
	str r0, [r1, #0x10]
	beq _02224380
	mov r0, r6
	bl ov60_022241E8
	ldr r1, _022243C4 ; =0x02229E50
	cmp r0, #0
	str r0, [r1, #8]
	beq _02224380
	ldr r1, [sp, #0x18]
	ldr r0, _022243D0 ; =0x02229E84
	mov r2, #4
	bl ov60_02223FC8
	ldr r1, _022243D0 ; =0x02229E84
	mov r2, #0
	strb r2, [r1, r0]
	ldr r1, [sp, #0x1c]
	ldr r0, _022243D4 ; =0x02229EBC
	mov r2, #0x10
	bl ov60_02223FC8
	ldr r1, _022243D4 ; =0x02229EBC
	mov r2, #0
	strb r2, [r1, r0]
	bl ov60_0222555C
	cmp r0, #0
	beq _0222434C
	bl ov60_02225518
	cmp r0, #0
	beq _0222434C
	mov r0, r5
	mov r1, r4
	mov r2, #0xa
	bl ov60_022257FC
	cmp r0, #0
	beq _02224348
	ldr r0, _022243D8 ; =0x02229EA4
	bl ov60_02224484
	ldr r1, _022243C4 ; =0x02229E50
	str r0, [r1, #4]
	mov r0, #1
	str r0, [r1, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02224348:
	bl ov60_02225530
_0222434C:
	ldr r1, _022243C4 ; =0x02229E50
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _022243C4 ; =0x02229E50
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, _022243C4 ; =0x02229E50
	mov r1, #8
	str r1, [r0, #0x1c]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02224380:
	ldr r1, _022243C4 ; =0x02229E50
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02224398
	ldr r1, [r1, #0x20]
	blx r1
_02224398:
	ldr r1, _022243C4 ; =0x02229E50
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _022243B0
	ldr r1, [r1, #0x20]
	blx r1
_022243B0:
	ldr r0, _022243C4 ; =0x02229E50
	mov r1, #1
	str r1, [r0, #0x1c]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022243C4: .word Unk_ov60_02229E50
_022243C8: .word Unk_ov60_02229E90
_022243CC: .word Unk_ov60_02229ED8
_022243D0: .word Unk_ov60_02229E84
_022243D4: .word Unk_ov60_02229EBC
_022243D8: .word Unk_ov60_02229EA4
	arm_func_end ov60_02224234

	arm_func_start ov60_022243DC
ov60_022243DC: ; 0x022243DC
	stmfd sp!, {r3, lr}
	bl ov60_02223D7C
	bl ov60_02225530
	bl ov60_02225584
	ldr r1, _0222441C ; =0x02229E50
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _0222441C ; =0x02229E50
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, _0222441C ; =0x02229E50
	ldr r0, [r0, #0]
	blx r0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222441C: .word Unk_ov60_02229E50
	arm_func_end ov60_022243DC

	arm_func_start ov60_02224420
ov60_02224420: ; 0x02224420
	ldr r1, _0222443C ; =0x02229E50
	mov r2, #0
	str r2, [r1, #0x14]
	str r0, [r1, #0]
	ldr ip, _02224440 ; =ov60_022258C4
	ldr r0, _02224444 ; =ov60_022243DC
	bx ip
	; .align 2, 0
_0222443C: .word Unk_ov60_02229E50
_02224440: .word ov60_022258C4
_02224444: .word ov60_022243DC
	arm_func_end ov60_02224420

	.bss


	.global Unk_ov60_02229E50
Unk_ov60_02229E50: ; 0x02229E50
	.space 0x4

	.global Unk_ov60_02229E54
Unk_ov60_02229E54: ; 0x02229E54
	.space 0x4

	.global Unk_ov60_02229E58
Unk_ov60_02229E58: ; 0x02229E58
	.space 0x4

	.global Unk_ov60_02229E5C
Unk_ov60_02229E5C: ; 0x02229E5C
	.space 0x4

	.global Unk_ov60_02229E60
Unk_ov60_02229E60: ; 0x02229E60
	.space 0x4

	.global Unk_ov60_02229E64
Unk_ov60_02229E64: ; 0x02229E64
	.space 0x4

	.global Unk_ov60_02229E68
Unk_ov60_02229E68: ; 0x02229E68
	.space 0x4

	.global Unk_ov60_02229E6C
Unk_ov60_02229E6C: ; 0x02229E6C
	.space 0x4

	.global Unk_ov60_02229E70
Unk_ov60_02229E70: ; 0x02229E70
	.space 0x4

	.global Unk_ov60_02229E74
Unk_ov60_02229E74: ; 0x02229E74
	.space 0x4

	.global Unk_ov60_02229E78
Unk_ov60_02229E78: ; 0x02229E78
	.space 0xC

	.global Unk_ov60_02229E84
Unk_ov60_02229E84: ; 0x02229E84
	.space 0xC

	.global Unk_ov60_02229E90
Unk_ov60_02229E90: ; 0x02229E90
	.space 0x14

	.global Unk_ov60_02229EA4
Unk_ov60_02229EA4: ; 0x02229EA4
	.space 0x18

	.global Unk_ov60_02229EBC
Unk_ov60_02229EBC: ; 0x02229EBC
	.space 0x1C

	.global Unk_ov60_02229ED8
Unk_ov60_02229ED8: ; 0x02229ED8
	.space 0x21

