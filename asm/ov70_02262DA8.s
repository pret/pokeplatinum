	.include "macros/function.inc"
	.include "include/ov70_02262DA8.inc"

	

	.text


	thumb_func_start ov70_02262DA8
ov70_02262DA8: ; 0x02262DA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xbf
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0xbf
	mov r1, #0
	lsl r2, r2, #2
	add r7, r0, #0
	bl memset
	str r6, [r7, #0]
	add r5, r7, #0
	str r4, [r7, #4]
	mov r4, #0
	add r5, #8
_02262DCE:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov70_02262F64
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x14
	blt _02262DCE
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	add r2, r6, #0
	bl ov70_02262F64
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02262DA8

	thumb_func_start ov70_02262DF4
ov70_02262DF4: ; 0x02262DF4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #8
_02262DFE:
	add r0, r5, #0
	bl ov70_02262F70
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x14
	blt _02262DFE
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r6, r0
	bl ov70_02262F70
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02262DF4

	thumb_func_start ov70_02262E20
ov70_02262E20: ; 0x02262E20
	ldr r3, _02262E28 ; =ov70_02262F14
	mov r1, #0
	bx r3
	nop
_02262E28: .word ov70_02262F14
	thumb_func_end ov70_02262E20

	thumb_func_start ov70_02262E2C
ov70_02262E2C: ; 0x02262E2C
	ldr r3, _02262E34 ; =ov70_02262F14
	mov r1, #1
	bx r3
	nop
_02262E34: .word ov70_02262F14
	thumb_func_end ov70_02262E2C

	thumb_func_start ov70_02262E38
ov70_02262E38: ; 0x02262E38
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov70_02262E38

	thumb_func_start ov70_02262E3C
ov70_02262E3C: ; 0x02262E3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	beq _02262E4C
	bl GF_AssertFail
_02262E4C:
	ldrh r0, [r5]
	add r1, r4, #0
	bl sub_02018144
	mov r1, #0
	add r2, r4, #0
	str r0, [r5, #8]
	bl memset
	ldr r0, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02262E3C

	thumb_func_start ov70_02262E64
ov70_02262E64: ; 0x02262E64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02262E72
	bl GF_AssertFail
_02262E72:
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02262E64

	thumb_func_start ov70_02262E80
ov70_02262E80: ; 0x02262E80
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov70_02262E80

	thumb_func_start ov70_02262E84
ov70_02262E84: ; 0x02262E84
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E84

	thumb_func_start ov70_02262E88
ov70_02262E88: ; 0x02262E88
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E88

	thumb_func_start ov70_02262E8C
ov70_02262E8C: ; 0x02262E8C
	ldr r1, [r0, #0x10]
	add r1, r1, #1
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E8C

	thumb_func_start ov70_02262E94
ov70_02262E94: ; 0x02262E94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02262EA6
	bl GF_AssertFail
_02262EA6:
	cmp r4, #0x14
	blo _02262EAE
	bl GF_AssertFail
_02262EAE:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_02262FD4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262E94

	thumb_func_start ov70_02262EC0
ov70_02262EC0: ; 0x02262EC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02262ED2
	bl GF_AssertFail
_02262ED2:
	cmp r4, #0x14
	blo _02262EDA
	bl GF_AssertFail
_02262EDA:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov70_0226300C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262EC0

	thumb_func_start ov70_02262EEC
ov70_02262EEC: ; 0x02262EEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _02262EFC
	bl GF_AssertFail
_02262EFC:
	cmp r4, #0x14
	blo _02262F04
	bl GF_AssertFail
_02262F04:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	bl ov70_02263008
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02262EEC

	thumb_func_start ov70_02262F14
ov70_02262F14: ; 0x02262F14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r7, r0
	str r1, [sp]
	bl ov70_0226307C
	cmp r0, #1
	bne _02262F3A
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r2, [sp]
	add r0, r7, r0
	add r1, r7, #0
	mov r3, #0
	bl ov70_02262F94
	pop {r3, r4, r5, r6, r7, pc}
_02262F3A:
	add r6, r7, #0
	add r6, #8
	mov r4, #0
	add r5, r6, #0
_02262F42:
	add r0, r6, #0
	bl ov70_0226307C
	cmp r0, #1
	bne _02262F58
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov70_02262F94
_02262F58:
	add r4, r4, #1
	add r6, #0x24
	add r5, #0x24
	cmp r4, #0x14
	blt _02262F42
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262F14

	thumb_func_start ov70_02262F64
ov70_02262F64: ; 0x02262F64
	strh r2, [r0]
	mov r2, #1
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02262F64

	thumb_func_start ov70_02262F70
ov70_02262F70: ; 0x02262F70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02262F7E
	bl sub_020181C4
_02262F7E:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02262F88
	bl sub_020181C4
_02262F88:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	bl memset
	pop {r4, pc}
	thumb_func_end ov70_02262F70

	thumb_func_start ov70_02262F94
ov70_02262F94: ; 0x02262F94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #2]
	add r6, r1, #0
	add r7, r3, #0
	cmp r0, #0
	beq _02262FD2
	cmp r2, #0
	beq _02262FAC
	cmp r2, #1
	beq _02262FB2
	b _02262FB8
_02262FAC:
	ldr r0, [r5, #4]
	ldr r4, [r0, #0]
	b _02262FBC
_02262FB2:
	ldr r0, [r5, #4]
	ldr r4, [r0, #4]
	b _02262FBC
_02262FB8:
	bl GF_AssertFail
_02262FBC:
	cmp r4, #0
	beq _02262FD2
	ldr r1, [r6, #4]
	add r0, r5, #0
	add r2, r7, #0
	blx r4
	cmp r0, #1
	bne _02262FD2
	add r0, r5, #0
	bl ov70_02263044
_02262FD2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262F94

	thumb_func_start ov70_02262FD4
ov70_02262FD4: ; 0x02262FD4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov70_0226306C
	cmp r0, #1
	beq _02262FEA
	bl GF_AssertFail
_02262FEA:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02262FF4
	bl GF_AssertFail
_02262FF4:
	mov r3, #0
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	str r3, [sp]
	bl ov70_0226308C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02262FD4

	thumb_func_start ov70_02263008
ov70_02263008: ; 0x02263008
	strb r1, [r0, #2]
	bx lr
	thumb_func_end ov70_02263008

	thumb_func_start ov70_0226300C
ov70_0226300C: ; 0x0226300C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov70_0226306C
	cmp r0, #1
	beq _02263022
	bl GF_AssertFail
_02263022:
	add r2, r5, #0
	add r3, r5, #4
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r3, #0
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	str r3, [sp]
	bl ov70_0226308C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0226300C

	thumb_func_start ov70_02263044
ov70_02263044: ; 0x02263044
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02263052
	bl GF_AssertFail
_02263052:
	add r3, r4, #0
	add r3, #0x14
	add r2, r4, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r4, #0x14
	add r0, r4, #0
	bl ov70_02263098
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02263044

	thumb_func_start ov70_0226306C
ov70_0226306C: ; 0x0226306C
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _02263076
	mov r0, #1
	bx lr
_02263076:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226306C

	thumb_func_start ov70_0226307C
ov70_0226307C: ; 0x0226307C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02263086
	mov r0, #1
	bx lr
_02263086:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_0226307C

	thumb_func_start ov70_0226308C
ov70_0226308C: ; 0x0226308C
	str r1, [r0, #0]
	ldr r1, [sp]
	str r3, [r0, #0xc]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov70_0226308C

	thumb_func_start ov70_02263098
ov70_02263098: ; 0x02263098
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0xc]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov70_02263098