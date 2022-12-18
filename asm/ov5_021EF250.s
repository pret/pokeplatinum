	.include "macros/function.inc"
	.include "include/ov5_021EF250.inc"

	

	.text


	thumb_func_start ov5_021EF250
ov5_021EF250: ; 0x021EF250
	push {r4, r5}
	ldr r3, [r2, #0x14]
	cmp r3, #0
	bne _021EF25E
	mov r0, #0
	pop {r4, r5}
	bx lr
_021EF25E:
	ldr r5, [r2, #0]
	ldr r3, [r2, #8]
	ldr r4, [r2, #4]
	ldr r2, [r2, #0xc]
	add r3, r5, r3
	add r2, r4, r2
	sub r3, r3, #1
	sub r2, r2, #1
	cmp r5, r0
	bgt _021EF284
	cmp r0, r3
	bgt _021EF284
	cmp r4, r1
	bgt _021EF284
	cmp r1, r2
	bgt _021EF284
	mov r0, #1
	pop {r4, r5}
	bx lr
_021EF284:
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EF250

	thumb_func_start ov5_021EF28C
ov5_021EF28C: ; 0x021EF28C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl sub_02018144
	mov r1, #0x18
	add r4, r0, #0
	add r0, r6, #0
	mul r1, r5
	bl sub_02018144
	str r0, [r4, #4]
	mov r6, #0
	str r5, [r4, #0]
	cmp r5, #0
	bls _021EF2C8
	add r0, r6, #0
	mov r1, #0x18
_021EF2B4:
	add r2, r6, #0
	ldr r3, [r4, #4]
	mul r2, r1
	add r2, r3, r2
	str r0, [r2, #0x14]
	add r2, r6, #1
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	cmp r6, r5
	blo _021EF2B4
_021EF2C8:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EF28C

	thumb_func_start ov5_021EF2CC
ov5_021EF2CC: ; 0x021EF2CC
	push {r4, r5}
	ldr r5, [sp, #0x10]
	mov r4, #0x18
	mul r4, r0
	ldr r0, [r5, #4]
	str r1, [r0, r4]
	ldr r0, [r5, #4]
	ldr r1, [sp, #8]
	add r0, r0, r4
	str r2, [r0, #4]
	ldr r0, [r5, #4]
	add r0, r0, r4
	str r3, [r0, #8]
	ldr r0, [r5, #4]
	add r0, r0, r4
	str r1, [r0, #0xc]
	ldr r0, [r5, #4]
	ldr r1, [sp, #0xc]
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, r4
	str r1, [r0, #0x14]
	pop {r4, r5}
	bx lr
	thumb_func_end ov5_021EF2CC

	thumb_func_start ov5_021EF300
ov5_021EF300: ; 0x021EF300
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF300

	thumb_func_start ov5_021EF314
ov5_021EF314: ; 0x021EF314
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp]
	cmp r3, #0
	bne _021EF326
	bl sub_02022974
_021EF326:
	ldr r0, [r5, #0]
	mov r4, #0
	cmp r0, #0
	ble _021EF356
_021EF32E:
	mov r3, #0x18
	ldr r2, [r5, #4]
	mul r3, r4
	add r0, r6, #0
	add r1, r7, #0
	add r2, r2, r3
	bl ov5_021EF250
	cmp r0, #0
	beq _021EF34A
	ldr r0, [sp]
	strb r4, [r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EF34A:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r5, #0]
	cmp r4, r0
	blt _021EF32E
_021EF356:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF314

	thumb_func_start ov5_021EF35C
ov5_021EF35C: ; 0x021EF35C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r5, r0
	blt _021EF36C
	bl sub_02022974
_021EF36C:
	mov r0, #0x18
	add r6, r5, #0
	mul r6, r0
	ldr r0, [r4, #4]
	add r0, r0, r6
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021EF380
	bl sub_02022974
_021EF380:
	ldr r0, [r4, #4]
	add r0, r0, r6
	ldr r0, [r0, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EF35C

	thumb_func_start ov5_021EF388
ov5_021EF388: ; 0x021EF388
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	ldr r0, [r6, #0]
	add r4, r1, #0
	cmp r5, r0
	blt _021EF39A
	bl sub_02022974
_021EF39A:
	mov r0, #0x18
	ldr r1, [r6, #4]
	mul r0, r5
	add r0, r1, r0
	str r4, [r0, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EF388