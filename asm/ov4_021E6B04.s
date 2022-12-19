	.include "macros/function.inc"
	.include "include/ov4_021E6B04.inc"

	

	.text


	arm_func_start ov4_021E6B04
ov4_021E6B04: ; 0x021E6B04
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl ov4_021E62EC
	ldrsh r1, [r4]
	cmp r1, #5
	bne _021E6B7C
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _021E6B4C
	cmp r1, #0xf
	beq _021E6B58
	cmp r1, #0x11
	beq _021E6B64
	b _021E6B70
_021E6B4C:
	mov r1, #1
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021E6B58:
	mov r1, #2
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021E6B64:
	mov r1, #3
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021E6B70:
	mov r1, #4
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021E6B7C:
	cmp r1, #7
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl ov4_021E6588
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E6B04