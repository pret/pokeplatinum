	.include "macros/function.inc"
	.include "include/ov21_021D423C.inc"

	

	.text


	thumb_func_start ov21_021D423C
ov21_021D423C: ; 0x021D423C
	push {r4, lr}
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _021D424C
	bl sub_02022974
_021D424C:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D423C

	thumb_func_start ov21_021D426C
ov21_021D426C: ; 0x021D426C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _021D427C
	bl sub_02022974
_021D427C:
	str r4, [r5, #0]
	str r6, [r5, #4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D426C

	thumb_func_start ov21_021D4284
ov21_021D4284: ; 0x021D4284
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _021D4292
	bl sub_02022974
_021D4292:
	add r0, r4, #0
	bl ov21_021D42EC
	cmp r0, #0
	bne _021D42AE
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021D42FC
	add r1, r0, #0
	beq _021D42AE
	add r0, r4, #0
	bl ov21_021D4334
_021D42AE:
	add r0, r4, #0
	bl ov21_021D42EC
	cmp r0, #1
	bne _021D42CE
	ldr r1, [r4, #8]
	add r0, r1, #0
	ldr r1, [r1, #4]
	add r0, #8
	blx r1
	cmp r0, #1
	bne _021D42CE
	add r0, r4, #0
	mov r1, #0
	bl ov21_021D4334
_021D42CE:
	ldr r0, [r4, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D4284

	thumb_func_start ov21_021D42D4
ov21_021D42D4: ; 0x021D42D4
	push {r4, lr}
	add r4, r0, #0
	bne _021D42DE
	bl sub_02022974
_021D42DE:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D42E8
	mov r0, #1
	pop {r4, pc}
_021D42E8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021D42D4

	thumb_func_start ov21_021D42EC
ov21_021D42EC: ; 0x021D42EC
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021D42F6
	mov r0, #1
	bx lr
_021D42F6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D42EC

	thumb_func_start ov21_021D42FC
ov21_021D42FC: ; 0x021D42FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	mov r6, #0
	cmp r0, #0
	ble _021D4330
	add r4, r6, #0
_021D430C:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _021D4316
	bl sub_02022974
_021D4316:
	ldr r0, [r5, #0]
	ldr r1, [r0, r4]
	tst r1, r7
	beq _021D4326
	mov r1, #0x14
	mul r1, r6
	add r0, r0, r1
	pop {r3, r4, r5, r6, r7, pc}
_021D4326:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _021D430C
_021D4330:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D42FC

	thumb_func_start ov21_021D4334
ov21_021D4334: ; 0x021D4334
	str r1, [r0, #8]
	cmp r1, #0
	beq _021D433E
	mov r0, #0
	str r0, [r1, #8]
_021D433E:
	bx lr
	thumb_func_end ov21_021D4334