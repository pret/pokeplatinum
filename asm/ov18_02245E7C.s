	.include "macros/function.inc"
	.include "include/ov18_02245E7C.inc"

	

	.text


	arm_func_start ov18_02245E7C
ov18_02245E7C: ; 0x02245E7C
	stmfd sp!, {r3, lr}
	bl sub_020BEEA0
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0]
	bl sub_020BEEB4
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #4]
	bl sub_020BEEC8
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #8]
	bl sub_020BEEEC
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0xc]
	bl sub_020BEF10
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x10]
	bl sub_020BEF24
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x14]
	bl sub_020BEF38
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x18]
	bl sub_020BEF74
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x1c]
	bl sub_020BEF88
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x20]
	bl sub_020BEF9C
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x24]
	bl sub_020BEFC4
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x28]
	bl sub_020BEF4C
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x2c]
	bl sub_020BEF60
	ldr r1, _02245F2C ; =0x022533F0
	str r0, [r1, #0x30]
	ldr r0, [r1, #0x2c]
	bl sub_020BE984
	bl ov18_02246038
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02245F2C: .word 0x022533F0
	arm_func_end ov18_02245E7C

	arm_func_start ov18_02245F30
ov18_02245F30: ; 0x02245F30
	stmfd sp!, {r4, lr}
	bl sub_020BEEA0
	bl sub_020BEEB4
	bl sub_020BEF74
	bl sub_020BEF88
	bl ov18_02246038
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0]
	bl sub_020BE004
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #4]
	bl sub_020BE294
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #8]
	bl sub_020BE3E4
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0xc]
	bl sub_020BE4E4
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0x10]
	bl sub_020BE590
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0x14]
	bl sub_020BE768
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0x18]
	bl sub_020BE850
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0x1c]
	bl sub_020BEA50
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0x20]
	bl sub_020BEAF8
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0x24]
	bl sub_020BEB68
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0x28]
	bl sub_020BEBE8
	ldr r0, _0224602C ; =0x022533F0
	ldr r0, [r0, #0x30]
	bl sub_020BEA30
	mov r3, #0
	ldr r2, _02246030 ; =0x04000050
	ldr r0, _02246034 ; =0x04001014
	strh r3, [r2]
	add r1, r2, #0x1000
	strh r3, [r1]
	str r3, [r2, #-0x40]
	str r3, [r2, #-0x3c]
	str r3, [r2, #-0x38]
	str r3, [r2, #-0x34]
	str r3, [r2, #0xfc0]
	str r3, [r0, #0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	bl sub_020C3D98
	mov r4, r0
	mov r0, #1
	bl sub_020CB65C
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224602C: .word 0x022533F0
_02246030: .word 0x04000050
_02246034: .word 0x04001014
	arm_func_end ov18_02245F30

	arm_func_start ov18_02246038
ov18_02246038: ; 0x02246038
	stmfd sp!, {r3, lr}
	ldr r0, _022460AC ; =0x000001F3
	bl sub_020BEA30
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0x40000
	bl sub_020C4BB8
	ldr r1, _022460B0 ; =0x06880000
	mov r0, #0
	mov r2, #0x24000
	bl sub_020C4BB8
	bl sub_020BEF60
	mov r0, #0x200
	mov r1, #0x7000000
	mov r2, #0x400
	bl sub_020C4BB8
	mov r0, #0
	mov r1, #0x5000000
	mov r2, #0x400
	bl sub_020C4BB8
	mov r0, #0x200
	ldr r1, _022460B4 ; =0x07000400
	mov r2, #0x400
	bl sub_020C4BB8
	mov r0, #0
	ldr r1, _022460B8 ; =0x05000400
	mov r2, #0x400
	bl sub_020C4BB8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022460AC: .word 0x000001F3
_022460B0: .word 0x06880000
_022460B4: .word 0x07000400
_022460B8: .word 0x05000400
	arm_func_end ov18_02246038

	arm_func_start ov18_022460BC
ov18_022460BC: ; 0x022460BC
	stmfd sp!, {r3, lr}
	add r0, sp, #0
	bl sub_020CB750
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, [sp]
	cmp r0, #0xf
	ldmeqia sp!, {r3, pc}
	mov r0, #0xf
	bl sub_020CB6E0
	ldmia sp!, {r3, pc}
	arm_func_end ov18_022460BC

	arm_func_start ov18_022460E8
ov18_022460E8: ; 0x022460E8
	ldr ip, _022460F4 ; =sub_020CB6E0
	mov r0, #1
	bx ip
	; .align 2, 0
_022460F4: .word sub_020CB6E0
	arm_func_end ov18_022460E8

	.bss


	.global Unk_ov18_022533F0
Unk_ov18_022533F0: ; 0x022533F0
	.space 0x34

