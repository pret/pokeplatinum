	.include "macros/function.inc"
	.include "overlay105/ov105_02245FB8.inc"

	

	.text


	thumb_func_start ov105_02245FB8
ov105_02245FB8: ; 0x02245FB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x5d
	mov r1, #0x14
	str r2, [sp, #8]
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02245FD4:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02245FD4
	strb r7, [r4]
	ldr r0, [sp, #8]
	strb r0, [r4, #0x10]
	strb r5, [r4, #1]
	add r0, sp, #0x20
	ldrb r2, [r0, #0x10]
	ldr r0, [sp, #0x34]
	strb r2, [r4, #2]
	str r0, [r4, #4]
	ldr r0, [sp, #0x38]
	str r0, [r4, #8]
	cmp r0, #0
	beq _0224600C
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r3, [r4, #8]
	add r0, r6, #0
	ldrb r2, [r3, r2]
	add r3, r1, #0
	bl ov105_02245BA4
	str r0, [r4, #0xc]
	b _02246036
_0224600C:
	cmp r5, #0
	bne _02246024
	mov r1, #0
	str r1, [sp]
	add r0, r6, #0
	mov r2, #8
	add r3, r1, #0
	str r1, [sp, #4]
	bl ov105_02245BA4
	str r0, [r4, #0xc]
	b _02246036
_02246024:
	mov r1, #0
	str r1, [sp]
	add r0, r6, #0
	mov r2, #9
	add r3, r1, #0
	str r1, [sp, #4]
	bl ov105_02245BA4
	str r0, [r4, #0xc]
_02246036:
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, sp, #0xc
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r4, #0xc]
	bl sub_02021C50
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov105_02245FB8

	thumb_func_start ov105_02246060
ov105_02246060: ; 0x02246060
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02021BD4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov105_02246060

	thumb_func_start ov105_02246074
ov105_02246074: ; 0x02246074
	ldr r3, _0224607C ; =sub_02021CAC
	ldr r0, [r0, #0xc]
	bx r3
	nop
_0224607C: .word sub_02021CAC
	thumb_func_end ov105_02246074

	thumb_func_start ov105_02246080
ov105_02246080: ; 0x02246080
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #1
	bne _0224608E
	b _02246196
_0224608E:
	ldr r0, _0224619C ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02246196
	ldrb r1, [r4, #1]
	cmp r1, #2
	bne _02246114
	mov r1, #0x20
	tst r1, r0
	beq _022460B6
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _022460B0
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4, #2]
	b _0224614E
_022460B0:
	sub r0, r0, #1
	strb r0, [r4, #2]
	b _0224614E
_022460B6:
	mov r1, #0x10
	tst r1, r0
	beq _022460D2
	ldrb r0, [r4]
	ldrb r1, [r4, #2]
	sub r0, r0, #1
	cmp r1, r0
	bne _022460CC
	mov r0, #0
	strb r0, [r4, #2]
	b _0224614E
_022460CC:
	add r0, r1, #1
	strb r0, [r4, #2]
	b _0224614E
_022460D2:
	mov r1, #0x80
	tst r1, r0
	beq _022460F8
	ldrb r0, [r4, #0x10]
	ldrb r1, [r4, #2]
	cmp r1, r0
	bhs _022460E4
	strb r0, [r4, #2]
	b _0224614E
_022460E4:
	ldrb r0, [r4]
	sub r0, r0, #1
	cmp r1, r0
	bne _022460F2
	mov r0, #0
	strb r0, [r4, #2]
	b _0224614E
_022460F2:
	add r0, r1, #1
	strb r0, [r4, #2]
	b _0224614E
_022460F8:
	mov r1, #0x40
	tst r0, r1
	beq _0224614E
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #0x10]
	cmp r1, r0
	bhs _0224610E
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4, #2]
	b _0224614E
_0224610E:
	sub r0, r1, #1
	strb r0, [r4, #2]
	b _0224614E
_02246114:
	cmp r1, #0
	bne _0224611E
	mov r1, #0x10
	mov r2, #0x20
	b _02246122
_0224611E:
	mov r1, #0x80
	mov r2, #0x40
_02246122:
	tst r1, r0
	beq _0224613A
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	blo _0224614E
	mov r0, #0
	strb r0, [r4, #2]
	b _0224614E
_0224613A:
	tst r0, r2
	beq _0224614E
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02246148
	ldrb r0, [r4]
	strb r0, [r4, #2]
_02246148:
	ldrb r0, [r4, #2]
	sub r0, r0, #1
	strb r0, [r4, #2]
_0224614E:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0224615E
	ldrb r1, [r4, #2]
	ldr r0, [r4, #0xc]
	ldrb r1, [r2, r1]
	bl sub_02021DCC
_0224615E:
	ldr r0, [r4, #0xc]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r2, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl sub_02021C50
_02246196:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0224619C: .word 0x021BF67C
	thumb_func_end ov105_02246080

	thumb_func_start ov105_022461A0
ov105_022461A0: ; 0x022461A0
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov105_022461A0

	thumb_func_start ov105_022461A4
ov105_022461A4: ; 0x022461A4
	push {r3, lr}
	strb r1, [r0, #3]
	cmp r1, #0
	ldr r0, [r0, #0xc]
	bne _022461B6
	mov r1, #8
	bl sub_02021DCC
	pop {r3, pc}
_022461B6:
	mov r1, #0xd
	bl sub_02021DCC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov105_022461A4

	thumb_func_start ov105_022461C0
ov105_022461C0: ; 0x022461C0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	strb r1, [r4, #2]
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _022461D8
	ldrb r1, [r4, #2]
	ldr r0, [r4, #0xc]
	ldrb r1, [r2, r1]
	bl sub_02021DCC
_022461D8:
	ldr r0, [r4, #0xc]
	bl sub_02021D28
	add r5, r0, #0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r2, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov105_022461C0