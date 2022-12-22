	.include "macros/function.inc"
	.include "include/unk_0202B37C.inc"

	

	.text


	thumb_func_start sub_0202B37C
sub_0202B37C: ; 0x0202B37C
	mov r0, #0x42
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B37C

	thumb_func_start sub_0202B384
sub_0202B384: ; 0x0202B384
	push {r4, r5}
	add r5, r2, #0
	mov r3, #0x2c
	add r2, r1, #0
	mul r2, r3
	mul r5, r3
	add r4, r0, r2
	add r3, r0, r5
	mov r2, #5
_0202B396:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0202B396
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B384

	thumb_func_start sub_0202B3A8
sub_0202B3A8: ; 0x0202B3A8
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x42
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl MIi_CpuClearFast
	ldr r0, _0202B3D0 ; =0x0000FFFF
	mov r1, #0
	add r2, r4, #0
_0202B3BE:
	strh r0, [r2]
	strh r0, [r2, #0x10]
	add r1, r1, #1
	add r2, #0x2c
	cmp r1, #6
	blt _0202B3BE
	ldr r0, _0202B3D4 ; =0x021C079C
	str r4, [r0, #0]
	pop {r4, pc}
	; .align 2, 0
_0202B3D0: .word 0x0000FFFF
_0202B3D4: .word 0x021C079C
	thumb_func_end sub_0202B3A8

	thumb_func_start sub_0202B3D8
sub_0202B3D8: ; 0x0202B3D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r7, #0
_0202B3E0:
	mov r4, #0
	cmp r6, #0
	bls _0202B3F4
_0202B3E6:
	ldr r0, [r5, #0x28]
	bl sub_0201D30C
	add r4, r4, #1
	str r0, [r5, #0x28]
	cmp r4, r6
	blo _0202B3E6
_0202B3F4:
	add r7, r7, #1
	add r5, #0x2c
	cmp r7, #6
	blo _0202B3E0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202B3D8

	thumb_func_start sub_0202B400
sub_0202B400: ; 0x0202B400
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B400

	thumb_func_start sub_0202B40C
sub_0202B40C: ; 0x0202B40C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x2c
	add r4, r1, #0
	mul r4, r0
	add r0, r5, r4
	str r2, [r0, #0x24]
	add r0, r2, #0
	bl sub_0201D30C
	add r1, r5, r4
	str r0, [r1, #0x28]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202B40C

	thumb_func_start sub_0202B428
sub_0202B428: ; 0x0202B428
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end sub_0202B428

	thumb_func_start sub_0202B42C
sub_0202B42C: ; 0x0202B42C
	cmp r2, #0
	bne _0202B438
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	bx lr
_0202B438:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	add r0, #0x10
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B42C

	thumb_func_start sub_0202B444
sub_0202B444: ; 0x0202B444
	push {r4, lr}
	add r4, r0, #0
	cmp r2, #0
	bne _0202B45C
	mov r2, #0x2c
	mul r2, r1
	add r1, r4, r2
	add r0, r3, #0
	mov r2, #8
	bl sub_02023DF0
	pop {r4, pc}
_0202B45C:
	mov r2, #0x2c
	mul r2, r1
	add r1, r4, r2
	add r0, r3, #0
	add r1, #0x10
	mov r2, #8
	bl sub_02023DF0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202B444

	thumb_func_start sub_0202B470
sub_0202B470: ; 0x0202B470
	mov r3, #0x2c
	mul r3, r1
	add r0, r0, r3
	add r0, #0x20
	strb r2, [r0]
	bx lr
	thumb_func_end sub_0202B470

	thumb_func_start sub_0202B47C
sub_0202B47C: ; 0x0202B47C
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	add r0, #0x20
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202B47C

	thumb_func_start sub_0202B488
sub_0202B488: ; 0x0202B488
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	add r0, #0x21
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202B488

	thumb_func_start sub_0202B494
sub_0202B494: ; 0x0202B494
	mov r3, #0x2c
	mul r3, r1
	add r0, r0, r3
	add r0, #0x21
	strb r2, [r0]
	bx lr
	thumb_func_end sub_0202B494

	thumb_func_start sub_0202B4A0
sub_0202B4A0: ; 0x0202B4A0
	ldr r3, _0202B4A8 ; =sub_020245BC
	mov r1, #0x11
	bx r3
	nop
_0202B4A8: .word sub_020245BC
	thumb_func_end sub_0202B4A0

	thumb_func_start sub_0202B4AC
sub_0202B4AC: ; 0x0202B4AC
	push {r3, lr}
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	bl sub_0202B510
	cmp r0, #0
	bne _0202B4C0
	mov r0, #1
	pop {r3, pc}
_0202B4C0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0202B4AC

	thumb_func_start sub_0202B4C4
sub_0202B4C4: ; 0x0202B4C4
	mov r2, #0x2c
	add r3, r0, #0
	mul r2, r1
	add r1, r3, r2
	ldr r3, _0202B4D4 ; =sub_0202B530
	add r0, #0x2c
	bx r3
	nop
_0202B4D4: .word sub_0202B530
	thumb_func_end sub_0202B4C4

	thumb_func_start sub_0202B4D8
sub_0202B4D8: ; 0x0202B4D8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldrh r1, [r6]
	add r5, r0, #0
	ldr r0, _0202B50C ; =0x0000FFFF
	cmp r1, r0
	bne _0202B4EA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202B4EA:
	mov r4, #0
	mov r7, #8
_0202B4EE:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02002238
	cmp r0, #0
	bne _0202B500
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202B500:
	add r4, r4, #1
	add r5, #0x2c
	cmp r4, #6
	blt _0202B4EE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202B50C: .word 0x0000FFFF
	thumb_func_end sub_0202B4D8

	thumb_func_start sub_0202B510
sub_0202B510: ; 0x0202B510
	ldrh r2, [r0]
	ldr r1, _0202B52C ; =0x0000FFFF
	cmp r2, r1
	bne _0202B51C
	mov r0, #1
	bx lr
_0202B51C:
	ldrh r0, [r0, #0x10]
	cmp r0, r1
	bne _0202B526
	mov r0, #1
	bx lr
_0202B526:
	mov r0, #0
	bx lr
	nop
_0202B52C: .word 0x0000FFFF
	thumb_func_end sub_0202B510

	thumb_func_start sub_0202B530
sub_0202B530: ; 0x0202B530
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x10
	add r1, #0x10
	mov r2, #8
	bl sub_02002238
	cmp r0, #0
	beq _0202B548
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202B548:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02002238
	cmp r0, #0
	beq _0202B55A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202B55A:
	add r0, r5, #0
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r1, r0
	beq _0202B56E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202B56E:
	add r0, r5, #0
	add r0, #0x21
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r1, r0
	beq _0202B582
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202B582:
	ldr r1, [r5, #0x24]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	bne _0202B58E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202B58E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202B530

	.bss


	.global Unk_021C079C
Unk_021C079C: ; 0x021C079C
	.space 0x4

