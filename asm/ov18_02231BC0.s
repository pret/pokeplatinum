	.include "macros/function.inc"
	.include "include/ov18_02231BC0.inc"

	

	.text


	arm_func_start ov18_02231BC0
ov18_02231BC0: ; 0x02231BC0
	stmfd sp!, {r3, lr}
	bl ov18_02231BE0
	mov r0, #0x1f
	bl ov18_0222B7C8
	ldr r0, _02231BDC ; =ov18_02231C48
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231BDC: .word ov18_02231C48
	arm_func_end ov18_02231BC0

	arm_func_start ov18_02231BE0
ov18_02231BE0: ; 0x02231BE0
	ldr r3, _02231C40 ; =0x04001008
	ldr r1, _02231C44 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
_02231C40: .word 0x04001008
_02231C44: .word 0x0400000A
	arm_func_end ov18_02231BE0

	arm_func_start ov18_02231C48
ov18_02231C48: ; 0x02231C48
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02231C78 ; =ov18_02231C7C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231C78: .word ov18_02231C7C
	arm_func_end ov18_02231C48

	arm_func_start ov18_02231C7C
ov18_02231C7C: ; 0x02231C7C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #5
	bl ov18_0222B790
	ldr r0, _02231CA4 ; =ov18_02231CA8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231CA4: .word ov18_02231CA8
	arm_func_end ov18_02231C7C

	arm_func_start ov18_02231CA8
ov18_02231CA8: ; 0x02231CA8
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02231CCC ; =ov18_02231CD0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231CCC: .word ov18_02231CD0
	arm_func_end ov18_02231CA8

	arm_func_start ov18_02231CD0
ov18_02231CD0: ; 0x02231CD0
	stmfd sp!, {r3, lr}
	bl ov18_02231CE4
	bl ov18_02231D04
	bl ov18_02231D08
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02231CD0

	arm_func_start ov18_02231CE4
ov18_02231CE4: ; 0x02231CE4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02231CE4

	arm_func_start ov18_02231D04
ov18_02231D04: ; 0x02231D04
	bx lr
	arm_func_end ov18_02231D04

	arm_func_start ov18_02231D08
ov18_02231D08: ; 0x02231D08
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02231D2C ; =ov18_02231D30
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231D2C: .word ov18_02231D30
	arm_func_end ov18_02231D08

	arm_func_start ov18_02231D30
ov18_02231D30: ; 0x02231D30
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02231D4C ; =ov18_02231D50
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231D4C: .word ov18_02231D50
	arm_func_end ov18_02231D30

	arm_func_start ov18_02231D50
ov18_02231D50: ; 0x02231D50
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #3
	mov r1, #1
	mov r2, #0x3f
	mov r3, #0x40
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x40
	bl ov18_02244194
	ldr r0, _02231D98 ; =ov18_02231D9C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231D98: .word ov18_02231D9C
	arm_func_end ov18_02231D50

	arm_func_start ov18_02231D9C
ov18_02231D9C: ; 0x02231D9C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0x1000000
	bl sub_020C3E08
	bl sub_020CB218
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02231D9C