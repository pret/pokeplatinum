	.include "macros/function.inc"
	.include "include/sceneopterase1.inc"

	

	.text


	arm_func_start ov18_02230B84
ov18_02230B84: ; 0x02230B84
	stmfd sp!, {r3, lr}
	bl ov18_02230BA8
	mov r0, #0x19
	bl ov18_0222B7C8
	bl ov18_0223E61C
	ldr r0, _02230BA4 ; =ov18_02230C28
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230BA4: .word ov18_02230C28
	arm_func_end ov18_02230B84

	arm_func_start ov18_02230BA8
ov18_02230BA8: ; 0x02230BA8
	stmfd sp!, {r3, lr}
	ldr r0, _02230C18 ; =0x02249F84
	ldr r1, _02230C1C ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02230C20 ; =0x04001008
	ldr r1, _02230C24 ; =0x0400000A
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
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230C18: .word Unk_ov18_02249F84
_02230C1C: .word GX_LoadBG2Scr
_02230C20: .word 0x04001008
_02230C24: .word 0x0400000A
	arm_func_end ov18_02230BA8

	arm_func_start ov18_02230C28
ov18_02230C28: ; 0x02230C28
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02230C58 ; =ov18_02230C5C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230C58: .word ov18_02230C5C
	arm_func_end ov18_02230C28

	arm_func_start ov18_02230C5C
ov18_02230C5C: ; 0x02230C5C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #5
	bl ov18_0222B790
	ldr r0, _02230C84 ; =ov18_02230C88
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230C84: .word ov18_02230C88
	arm_func_end ov18_02230C5C

	arm_func_start ov18_02230C88
ov18_02230C88: ; 0x02230C88
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02230CAC ; =ov18_02230CB0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230CAC: .word ov18_02230CB0
	arm_func_end ov18_02230C88

	arm_func_start ov18_02230CB0
ov18_02230CB0: ; 0x02230CB0
	stmfd sp!, {r3, lr}
	bl ov18_02230CC4
	bl ov18_02230CE4
	bl ov18_02230CE8
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02230CB0

	arm_func_start ov18_02230CC4
ov18_02230CC4: ; 0x02230CC4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02230CC4

	arm_func_start ov18_02230CE4
ov18_02230CE4: ; 0x02230CE4
	bx lr
	arm_func_end ov18_02230CE4

	arm_func_start ov18_02230CE8
ov18_02230CE8: ; 0x02230CE8
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	ldr r0, _02230D0C ; =ov18_02230D10
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230D0C: .word ov18_02230D10
	arm_func_end ov18_02230CE8

	arm_func_start ov18_02230D10
ov18_02230D10: ; 0x02230D10
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02230D2C ; =ov18_02230D30
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230D2C: .word ov18_02230D30
	arm_func_end ov18_02230D10

	arm_func_start ov18_02230D30
ov18_02230D30: ; 0x02230D30
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
	ldr r0, _02230D78 ; =ov18_02230D7C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02230D78: .word ov18_02230D7C
	arm_func_end ov18_02230D30

	arm_func_start ov18_02230D7C
ov18_02230D7C: ; 0x02230D7C
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
	bl OS_SpinWait
	bl PM_ForceToPowerOff
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02230D7C

	.data


	.global Unk_ov18_02249F84
Unk_ov18_02249F84: ; 0x02249F84
	.incbin "incbin/overlay18_data.bin", 0x824, 0x14

