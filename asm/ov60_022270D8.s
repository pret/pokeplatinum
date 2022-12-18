	.include "macros/function.inc"
	.include "include/ov60_022270D8.inc"

	

	.text


	arm_func_start ov60_022270D8
ov60_022270D8: ; 0x022270D8
	ldr ip, _022270E0 ; =sub_020D33DC
	bx ip
	; .align 2, 0
_022270E0: .word sub_020D33DC
	arm_func_end ov60_022270D8

	arm_func_start ov60_022270E4
ov60_022270E4: ; 0x022270E4
	cmp r2, #0
	ble _02227144
_022270EC:
	ldrsb ip, [r0], #1
	ldrsb r3, [r1], #1
	cmp ip, #0
	cmpne r3, #0
	bne _02227110
	cmp ip, #0
	cmpeq r3, #0
	moveq r2, #0
	b _02227144
_02227110:
	cmp r3, #0x41
	blt _02227120
	cmp r3, #0x5a
	addle r3, r3, #0x20
_02227120:
	cmp ip, #0x41
	blt _02227130
	cmp ip, #0x5a
	addle ip, ip, #0x20
_02227130:
	cmp ip, r3
	bne _02227144
	sub r2, r2, #1
	cmp r2, #0
	bgt _022270EC
_02227144:
	mov r0, r2
	bx lr
	arm_func_end ov60_022270E4

	arm_func_start ov60_0222714C
ov60_0222714C: ; 0x0222714C
	ldr ip, _02227154 ; =sub_020D33B4
	bx ip
	; .align 2, 0
_02227154: .word sub_020D33B4
	arm_func_end ov60_0222714C

	arm_func_start ov60_02227158
ov60_02227158: ; 0x02227158
	ldr ip, _02227168 ; =sub_020C4CF4
	mov r2, r1
	mov r1, #0
	bx ip
	; .align 2, 0
_02227168: .word sub_020C4CF4
	arm_func_end ov60_02227158

	arm_func_start ov60_0222716C
ov60_0222716C: ; 0x0222716C
	ldr ip, _02227180 ; =sub_020C4DB0
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	; .align 2, 0
_02227180: .word sub_020C4DB0
	arm_func_end ov60_0222716C