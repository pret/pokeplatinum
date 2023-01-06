	.include "macros/function.inc"
	.include "include/error.inc"

	

	.text


	arm_func_start ov4_021E7210
ov4_021E7210: ; 0x021E7210
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov4_021E62EC
	add r0, r0, #0xa
	bl ov4_021E70C8
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E7210

	arm_func_start ov4_021E7234
ov4_021E7234: ; 0x021E7234
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl ov4_021E62EC
	mov r4, r0
	bl ov4_021E63E4
	cmp r0, #4
	bge _021E7258
	bl ov4_021E7284
	ldmia sp!, {r4, pc}
_021E7258:
	cmp r0, #5
	bge _021E7268
	bl ov4_021E72C8
	ldmia sp!, {r4, pc}
_021E7268:
	cmp r0, #5
	mov r0, r4
	bne _021E727C
	bl ov4_021E72D0
	ldmia sp!, {r4, pc}
_021E727C:
	bl ov4_021E72EC
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E7234

	arm_func_start ov4_021E7284
ov4_021E7284: ; 0x021E7284
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021E72C0
_021E7290: ; jump table
	b _021E72A8 ; case 0
	b _021E72A0 ; case 1
	b _021E72B0 ; case 2
	b _021E72B8 ; case 3
_021E72A0:
	mvn r0, #8
	bx lr
_021E72A8:
	mvn r0, #9
	bx lr
_021E72B0:
	mvn r0, #7
	bx lr
_021E72B8:
	mvn r0, #6
	bx lr
_021E72C0:
	mov r0, #0
	bx lr
	arm_func_end ov4_021E7284

	arm_func_start ov4_021E72C8
ov4_021E72C8: ; 0x021E72C8
	mvn r0, #5
	bx lr
	arm_func_end ov4_021E72C8

	arm_func_start ov4_021E72D0
ov4_021E72D0: ; 0x021E72D0
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	ldreq r0, _021E72E4 ; =0xFFFF3C4D
	ldrne r0, _021E72E8 ; =0xFFFF3865
	bx lr
	; .align 2, 0
_021E72E4: .word 0xFFFF3C4D
_021E72E8: .word 0xFFFF3865
	arm_func_end ov4_021E72D0

	arm_func_start ov4_021E72EC
ov4_021E72EC: ; 0x021E72EC
	ldrb r1, [r0, #0x22]
	ldrb r2, [r0, #0x16]
	cmp r1, #0
	ldreqb r1, [r0, #0x15]
	cmp r2, #0xa
	bhs _021E7338
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	ldreq r0, _021E73D4 ; =0xFFFF3864
	subeq r0, r0, r1
	bxeq lr
	cmp r0, #4
	ldrne r0, _021E73D8 ; =0xFFFF379C
	subne r0, r0, r1
	bxne lr
	mov r0, #0xc800
	rsb r0, r0, #0
	sub r0, r0, r1
	bx lr
_021E7338:
	cmp r2, #0xd
	ldrlo r0, _021E73DC ; =0xFFFF34E0
	sublo r0, r0, r1
	bxlo lr
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldreq r0, _021E73E0 ; =0xFFFF3CB0
	subeq r0, r0, r1
	bxeq lr
	mvn r3, #0
	cmp r0, r3
	ldreq r0, _021E73E4 ; =0xFFFF347C
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #1
	cmp r0, r2
	ldreq r0, _021E73E8 ; =0xFFFF3418
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #2
	cmp r0, r2
	ldreq r0, _021E73EC ; =0xFFFF33B4
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #3
	cmp r0, r2
	ldreq r0, _021E73F0 ; =0xFFFF30F8
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #4
	cmp r0, r2
	ldreq r0, _021E73F4 ; =0xFFFF3094
	subeq r0, r0, r1
	bxeq lr
	sub r2, r3, #5
	cmp r0, r2
	ldreq r0, _021E73F8 ; =0xFFFF3030
	subeq r0, r0, r1
	bx lr
	; .align 2, 0
_021E73D4: .word 0xFFFF3864
_021E73D8: .word 0xFFFF379C
_021E73DC: .word 0xFFFF34E0
_021E73E0: .word 0xFFFF3CB0
_021E73E4: .word 0xFFFF347C
_021E73E8: .word 0xFFFF3418
_021E73EC: .word 0xFFFF33B4
_021E73F0: .word 0xFFFF30F8
_021E73F4: .word 0xFFFF3094
_021E73F8: .word 0xFFFF3030
	arm_func_end ov4_021E72EC