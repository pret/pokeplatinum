	.include "macros/function.inc"
	.include "include/ov59_021D2A2C.inc"

	

	.text


	thumb_func_start ov59_021D2A2C
ov59_021D2A2C: ; 0x021D2A2C
	mov r0, #0x2c
	bx lr
	thumb_func_end ov59_021D2A2C

	thumb_func_start ov59_021D2A30
ov59_021D2A30: ; 0x021D2A30
	add r0, #0x2c
	bx lr
	thumb_func_end ov59_021D2A30

	thumb_func_start ov59_021D2A34
ov59_021D2A34: ; 0x021D2A34
	push {r4, r5, r6, r7}
	add r7, r0, #0
	add r6, r7, #0
	mov ip, r1
	mov r5, #5
	add r6, #0xdc
_021D2A40:
	add r4, r6, #0
	sub r4, #0x2c
	add r3, r6, #0
	mov r2, #5
_021D2A48:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2A48
	ldr r0, [r4, #0]
	sub r5, r5, #1
	sub r6, #0x2c
	str r0, [r3, #0]
	cmp r5, #2
	bgt _021D2A40
	add r7, #0x58
	mov r3, #5
_021D2A60:
	mov r2, ip
	ldmia r2!, {r0, r1}
	mov ip, r2
	stmia r7!, {r0, r1}
	sub r3, r3, #1
	bne _021D2A60
	mov r0, ip
	ldr r0, [r0, #0]
	str r0, [r7, #0]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2A34

	thumb_func_start ov59_021D2A78
ov59_021D2A78: ; 0x021D2A78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #2
	blt _021D2A86
	cmp r5, #5
	ble _021D2A8A
_021D2A86:
	bl sub_02022974
_021D2A8A:
	add r2, r5, #1
	cmp r2, #5
	bgt _021D2AB2
	mov r0, #0x2c
	mul r0, r2
	add r3, r4, r0
_021D2A96:
	add r6, r3, #0
	add r7, r3, #0
	sub r6, #0x2c
	mov r5, #5
_021D2A9E:
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r5, r5, #1
	bne _021D2A9E
	ldr r0, [r7, #0]
	add r2, r2, #1
	add r3, #0x2c
	str r0, [r6, #0]
	cmp r2, #5
	ble _021D2A96
_021D2AB2:
	ldr r0, _021D2AC0 ; =0x0000FFFF
	add r1, r4, #0
	add r4, #0xdc
	add r1, #0xdc
	strh r0, [r4]
	strh r0, [r1, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2AC0: .word 0x0000FFFF
	thumb_func_end ov59_021D2A78

	thumb_func_start ov59_021D2AC4
ov59_021D2AC4: ; 0x021D2AC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r5, r2, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	cmp r0, #0
	ble _021D2B3E
	mov r7, #0x2c
_021D2ADC:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r6, [r0, #0]
	ldr r0, [sp, #4]
	cmp r1, r0
	beq _021D2B2C
	cmp r6, #0
	beq _021D2B2C
	add r0, r6, #0
	bl sub_0202B510
	cmp r0, #1
	beq _021D2B2C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202B530
	cmp r0, #0
	bne _021D2B2C
	mov r4, #0
_021D2B04:
	add r1, r4, #2
	add r2, r1, #0
	mul r2, r7
	add r0, r6, #0
	add r1, r5, r2
	bl sub_0202B530
	cmp r0, #0
	beq _021D2B1E
	add r0, r5, #0
	add r1, r4, #2
	bl ov59_021D2A78
_021D2B1E:
	add r4, r4, #1
	cmp r4, #4
	blt _021D2B04
	add r0, r5, #0
	add r1, r6, #0
	bl ov59_021D2A34
_021D2B2C:
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D2ADC
_021D2B3E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2AC4