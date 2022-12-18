	.include "macros/function.inc"
	.include "include/ov60_02225E1C.inc"

	

	.text


	arm_func_start ov60_02225E1C
ov60_02225E1C: ; 0x02225E1C
	stmfd sp!, {r3, lr}
	ldr r0, _02225E30 ; =0x0222A8F8
	bl sub_020C29C0
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225E30: .word 0x0222A8F8
	arm_func_end ov60_02225E1C

	arm_func_start ov60_02225E34
ov60_02225E34: ; 0x02225E34
	bx lr
	arm_func_end ov60_02225E34

	arm_func_start ov60_02225E38
ov60_02225E38: ; 0x02225E38
	ldr ip, _02225E44 ; =sub_020C29D8
	ldr r0, _02225E48 ; =0x0222A8F8
	bx ip
	; .align 2, 0
_02225E44: .word sub_020C29D8
_02225E48: .word 0x0222A8F8
	arm_func_end ov60_02225E38

	arm_func_start ov60_02225E4C
ov60_02225E4C: ; 0x02225E4C
	ldr ip, _02225E58 ; =sub_020C2A5C
	ldr r0, _02225E5C ; =0x0222A8F8
	bx ip
	; .align 2, 0
_02225E58: .word sub_020C2A5C
_02225E5C: .word 0x0222A8F8
	arm_func_end ov60_02225E4C

	arm_func_start ov60_02225E60
ov60_02225E60: ; 0x02225E60
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl sub_020C1F24
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _02225EC8 ; =0x0222A910
	ldr r1, _02225ECC ; =0x0222A8F4
	mov r2, #1
	bl sub_020C2748
	mov r0, #0x2000
	str r0, [sp]
	ldr r0, _02225ED0 ; =0x0222A930
	ldr r1, _02225ED4 ; =ov60_022274A0
	add r3, r4, #0x2000
	mov r2, #0
	str r5, [sp, #4]
	bl sub_020C1F34
	ldr r0, _02225ED0 ; =0x0222A930
	bl sub_020C22D0
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02225EC8: .word 0x0222A910
_02225ECC: .word 0x0222A8F4
_02225ED0: .word 0x0222A930
_02225ED4: .word ov60_022274A0
	arm_func_end ov60_02225E60

	arm_func_start ov60_02225ED8
ov60_02225ED8: ; 0x02225ED8
	stmfd sp!, {r3, lr}
	ldr r0, _02225EF8 ; =0x0222A024
	mov r1, #1
	str r1, [r0, #0]
	bl ov60_02225F1C
	ldr r0, _02225EFC ; =0x0222A930
	bl sub_020C21D4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225EF8: .word 0x0222A024
_02225EFC: .word 0x0222A930
	arm_func_end ov60_02225ED8

	arm_func_start ov60_02225F00
ov60_02225F00: ; 0x02225F00
	stmfd sp!, {r3, lr}
	ldr r0, _02225F18 ; =0x0222A910
	add r1, sp, #0
	mov r2, #1
	bl sub_020C2804
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225F18: .word 0x0222A910
	arm_func_end ov60_02225F00

	arm_func_start ov60_02225F1C
ov60_02225F1C: ; 0x02225F1C
	ldr ip, _02225F30 ; =sub_020C2770
	mov r1, #0
	ldr r0, _02225F34 ; =0x0222A910
	mov r2, r1
	bx ip
	; .align 2, 0
_02225F30: .word sub_020C2770
_02225F34: .word 0x0222A910
	arm_func_end ov60_02225F1C

	.bss


	.global Unk_ov60_0222A8F4
Unk_ov60_0222A8F4: ; 0x0222A8F4
	.space 0x4

	.global Unk_ov60_0222A8F8
Unk_ov60_0222A8F8: ; 0x0222A8F8
	.space 0x18

	.global Unk_ov60_0222A910
Unk_ov60_0222A910: ; 0x0222A910
	.space 0x20

	.global Unk_ov60_0222A930
Unk_ov60_0222A930: ; 0x0222A930
	.space 0xC0

