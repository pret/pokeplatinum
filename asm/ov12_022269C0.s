	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov12_022269C0
ov12_022269C0: ; 0x022269C0
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022269C0

	thumb_func_start ov12_022269C4
ov12_022269C4: ; 0x022269C4
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022269D6
	cmp r0, #1
	beq _022269DC
	pop {r4, pc}
_022269D6:
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_022269DC:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220220
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_022269C4

	thumb_func_start ov12_022269EC
ov12_022269EC: ; 0x022269EC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r2, r0, #0
	mov r0, #0
	strb r0, [r2]
	mov r3, #1
	ldr r1, _02226A10 ; =ov12_022269C4
	add r0, r4, #0
	lsl r3, r3, #0xc
	str r4, [r2, #4]
	bl ov12_022201CC
	pop {r4, pc}
	nop
_02226A10: .word ov12_022269C4
	thumb_func_end ov12_022269EC

	thumb_func_start ov12_02226A14
ov12_02226A14: ; 0x02226A14
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02226A26
	cmp r0, #1
	beq _02226A2C
	pop {r4, pc}
_02226A26:
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_02226A2C:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov12_02220230
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov12_02226A14

	thumb_func_start ov12_02226A3C
ov12_02226A3C: ; 0x02226A3C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r2, r0, #0
	mov r0, #0
	strb r0, [r2]
	mov r3, #1
	ldr r1, _02226A60 ; =ov12_02226A14
	add r0, r4, #0
	lsl r3, r3, #0xc
	str r4, [r2, #4]
	bl ov12_02220204
	pop {r4, pc}
	nop
_02226A60: .word ov12_02226A14
	thumb_func_end ov12_02226A3C

	thumb_func_start ov12_02226A64
ov12_02226A64: ; 0x02226A64
	push {r4, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	cmp r1, #0
	beq _02226A74
	cmp r1, #1
	beq _02226A7A
	pop {r4, pc}
_02226A74:
	add r0, r1, #1
	strb r0, [r4]
	pop {r4, pc}
_02226A7A:
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02226A64

	thumb_func_start ov12_02226A88
ov12_02226A88: ; 0x02226A88
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1]
	mov r2, #1
	ldr r0, _02226AA8 ; =ov12_02226A64
	lsl r2, r2, #0xc
	str r4, [r1, #4]
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_02226AA8: .word ov12_02226A64
	thumb_func_end ov12_02226A88

	thumb_func_start ov12_02226AAC
ov12_02226AAC: ; 0x02226AAC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5]
	cmp r0, #0
	beq _02226ABE
	cmp r0, #1
	beq _02226B04
	pop {r4, r5, r6, pc}
_02226ABE:
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r5, #0x14]
	mov r1, #1
	ldr r0, [r0, #0]
	mov r2, #0
	bl sub_0200D5AC
	ldr r0, [r5, #0x18]
	mov r1, #0
	ldr r0, [r0, #0]
	mvn r1, r1
	mov r2, #0
	bl sub_0200D5AC
	ldr r0, [r5, #0x1c]
	mov r1, #1
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_0200D5AC
	ldr r0, [r5, #0xc]
	bl sub_0200C7EC
	pop {r4, r5, r6, pc}
_02226B04:
	ldr r0, [r5, #0x10]
	ldr r4, [r5, #4]
	bl sub_0200D0F4
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02220220
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02226AAC

	thumb_func_start ov12_02226B1C
ov12_02226B1C: ; 0x02226B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r1, #0
	mov r1, #0x73
	str r0, [sp]
	mov r0, #5
	lsl r1, r1, #2
	add r7, r2, #0
	add r5, r3, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02226B3A
	bl sub_02022974
_02226B3A:
	mov r0, #0
	strb r0, [r4]
	str r6, [r4, #8]
	str r7, [r4, #0xc]
	ldr r0, [sp]
	str r5, [r4, #0x10]
	str r0, [r4, #4]
	ldr r1, [sp]
	add r0, sp, #4
	bl ov12_0222329C
	str r5, [r4, #0x14]
	mov r6, #1
	add r5, r4, #4
	add r7, sp, #4
_02226B58:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r7, #0
	bl sub_0200CE6C
	str r0, [r5, #0x14]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _02226B58
	mov r3, #1
	ldr r0, [sp]
	ldr r1, _02226B80 ; =ov12_02226AAC
	add r2, r4, #0
	lsl r3, r3, #0xc
	bl ov12_022201CC
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02226B80: .word ov12_02226AAC
	thumb_func_end ov12_02226B1C