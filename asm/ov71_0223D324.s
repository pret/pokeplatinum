	.include "macros/function.inc"
	.include "include/ov71_0223D324.inc"

	

	.text


	thumb_func_start ov71_0223D324
ov71_0223D324: ; 0x0223D324
	mov r2, #0
	mov r1, #0xff
_0223D328:
	strb r2, [r0]
	strb r1, [r0, #1]
	add r2, r2, #1
	add r0, r0, #2
	cmp r2, #4
	blt _0223D328
	bx lr
	; .align 2, 0
	thumb_func_end ov71_0223D324

	thumb_func_start ov71_0223D338
ov71_0223D338: ; 0x0223D338
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov71_0223D370
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov71_0223D3A0
	cmp r0, #1
	beq _0223D36C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov71_0223D3D8
	cmp r0, #1
	beq _0223D36C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov71_0223D410
	cmp r0, #1
_0223D36C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov71_0223D338

	thumb_func_start ov71_0223D370
ov71_0223D370: ; 0x0223D370
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	add r5, r7, #0
	mov r6, #0xff
_0223D37A:
	ldrb r0, [r5, #1]
	cmp r0, #0xff
	beq _0223D38E
	ldrb r0, [r5]
	add r0, r0, #3
	bl sub_02004B04
	cmp r0, #0
	bne _0223D38E
	strb r6, [r5, #1]
_0223D38E:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0223D37A
	add r0, r7, #0
	bl ov71_0223D454
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov71_0223D370

	thumb_func_start ov71_0223D3A0
ov71_0223D3A0: ; 0x0223D3A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
	add r1, r6, #0
_0223D3AA:
	ldrb r0, [r1, #1]
	cmp r5, r0
	bne _0223D3CA
	lsl r7, r4, #1
	ldrb r0, [r6, r7]
	add r1, r5, #0
	bl ov71_0223D470
	ldrb r2, [r6, r7]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r5, #0
	bl ov71_0223D42C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223D3CA:
	add r4, r4, #1
	add r1, r1, #2
	cmp r4, #4
	blt _0223D3AA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov71_0223D3A0

	thumb_func_start ov71_0223D3D8
ov71_0223D3D8: ; 0x0223D3D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r4, #0
	add r1, r5, #0
_0223D3E2:
	ldrb r0, [r1, #1]
	cmp r0, #0xff
	bne _0223D402
	lsl r6, r4, #1
	ldrb r0, [r5, r6]
	add r1, r7, #0
	bl ov71_0223D470
	ldrb r2, [r5, r6]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov71_0223D42C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223D402:
	add r4, r4, #1
	add r1, r1, #2
	cmp r4, #4
	blt _0223D3E2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov71_0223D3D8

	thumb_func_start ov71_0223D410
ov71_0223D410: ; 0x0223D410
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #6]
	add r4, r1, #0
	bl ov71_0223D470
	ldrb r2, [r5, #6]
	add r0, r5, #0
	mov r1, #3
	add r3, r4, #0
	bl ov71_0223D42C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov71_0223D410

	thumb_func_start ov71_0223D42C
ov71_0223D42C: ; 0x0223D42C
	push {r4, r5}
	cmp r1, #0
	ble _0223D44A
	lsl r4, r1, #1
	add r4, r0, r4
_0223D436:
	sub r5, r4, #2
	ldrb r5, [r5]
	sub r1, r1, #1
	strb r5, [r4]
	sub r5, r4, #1
	ldrb r5, [r5]
	strb r5, [r4, #1]
	sub r4, r4, #2
	cmp r1, #0
	bgt _0223D436
_0223D44A:
	strb r2, [r0]
	strb r3, [r0, #1]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov71_0223D42C

	thumb_func_start ov71_0223D454
ov71_0223D454: ; 0x0223D454
	mov r3, #0
	mov r1, #0xff
_0223D458:
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _0223D464
	ldrb r2, [r0, #2]
	strb r2, [r0]
	strb r1, [r0, #2]
_0223D464:
	add r3, r3, #1
	add r0, r0, #2
	cmp r3, #4
	blt _0223D458
	bx lr
	; .align 2, 0
	thumb_func_end ov71_0223D454

	thumb_func_start ov71_0223D470
ov71_0223D470: ; 0x0223D470
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r0, r5, #3
	add r4, r1, #0
	ldr r2, _0223D49C ; =0x00000694
	add r1, r0, #0
	bl sub_02004AE8
	ldr r2, _0223D4A0 ; =0x0223D77C
	lsl r3, r4, #1
	ldrh r2, [r2, r3]
	mov r3, #4
	sub r4, r3, r6
	mov r3, #0x98
	mul r3, r4
	ldr r1, _0223D4A4 ; =0x0000FFFF
	add r0, r5, #3
	sub r2, r2, r3
	bl sub_02004F68
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223D49C: .word 0x00000694
_0223D4A0: .word 0x0223D77C
_0223D4A4: .word 0x0000FFFF
	thumb_func_end ov71_0223D470

	.rodata


	.global Unk_ov71_0223D77C
Unk_ov71_0223D77C: ; 0x0223D77C
	.incbin "incbin/overlay71_rodata.bin", 0x2D4, 0x10

