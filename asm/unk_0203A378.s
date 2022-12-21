	.include "macros/function.inc"
	.include "include/unk_0203A378.inc"

	

	.text


	thumb_func_start sub_0203A378
sub_0203A378: ; 0x0203A378
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	cmp r0, #0
	beq _0203A388
	bl sub_02022974
_0203A388:
	ldr r1, _0203A394 ; =0x00000AC8
	add r0, r4, #0
	bl sub_02018144
	str r0, [r5, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203A394: .word 0x00000AC8
	thumb_func_end sub_0203A378

	thumb_func_start sub_0203A398
sub_0203A398: ; 0x0203A398
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0203A3A6
	bl sub_02022974
_0203A3A6:
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A398

	thumb_func_start sub_0203A3B0
sub_0203A3B0: ; 0x0203A3B0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	cmp r0, #0
	bne _0203A3C0
	bl sub_02022974
_0203A3C0:
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0203A3E8
	ldr r0, [r5, #0x14]
	bl sub_0203A5B0
	mov r0, #0x92
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r4, #0
	bl sub_0203A614
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0203A64C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203A3B0

	thumb_func_start sub_0203A3E8
sub_0203A3E8: ; 0x0203A3E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0203A124
	add r4, r0, #0
	mov r0, #0x20
	add r1, r4, #0
	bl sub_02006B58
	mov r1, #2
	lsl r1, r1, #0xa
	cmp r0, r1
	blo _0203A408
	bl sub_02022974
_0203A408:
	add r5, #0x20
	add r0, r5, #0
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02006AA4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203A3E8

	thumb_func_start sub_0203A418
sub_0203A418: ; 0x0203A418
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r0, #4]
	cmp r0, #0
	bne _0203A428
	bl sub_02022974
_0203A428:
	cmp r4, #0
	beq _0203A43C
	ldr r1, [r5, #0x1c]
	ldr r3, [r5, #0x14]
	ldr r0, [r5, #0x38]
	ldr r1, [r1, #0]
	ldr r3, [r3, #0x14]
	add r2, r4, #0
	bl sub_02062068
_0203A43C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0203A418

	thumb_func_start sub_0203A440
sub_0203A440: ; 0x0203A440
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A440

	thumb_func_start sub_0203A448
sub_0203A448: ; 0x0203A448
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A448

	thumb_func_start sub_0203A450
sub_0203A450: ; 0x0203A450
	ldr r2, [r0, #0x14]
	ldr r0, [r2, #8]
	cmp r1, r0
	blo _0203A45C
	mov r0, #0
	bx lr
_0203A45C:
	mov r0, #0xc
	ldr r2, [r2, #0x18]
	mul r0, r1
	add r0, r2, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A450

	thumb_func_start sub_0203A468
sub_0203A468: ; 0x0203A468
	push {r4, r5, r6, r7}
	ldr r5, [r0, #0x14]
	mov r3, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	bls _0203A49A
	ldr r6, [r5, #0x18]
	add r4, r3, #0
	add r0, r6, #0
_0203A47A:
	ldrh r7, [r0]
	cmp r1, r7
	bne _0203A48E
	add r7, r6, r4
	ldrh r7, [r7, #2]
	cmp r2, r7
	bne _0203A48E
	add r0, r3, #0
	pop {r4, r5, r6, r7}
	bx lr
_0203A48E:
	ldr r7, [r5, #8]
	add r3, r3, #1
	add r0, #0xc
	add r4, #0xc
	cmp r3, r7
	blo _0203A47A
_0203A49A:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A468

	thumb_func_start sub_0203A4A4
sub_0203A4A4: ; 0x0203A4A4
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A4A4

	thumb_func_start sub_0203A4AC
sub_0203A4AC: ; 0x0203A4AC
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x1c]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A4AC

	thumb_func_start sub_0203A4B4
sub_0203A4B4: ; 0x0203A4B4
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A4B4

	thumb_func_start sub_0203A4BC
sub_0203A4BC: ; 0x0203A4BC
	ldr r0, [r0, #0x14]
	ldr r0, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A4BC

	thumb_func_start sub_0203A4C4
sub_0203A4C4: ; 0x0203A4C4
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0x14]
	add r4, r1, #0
	ldr r5, [r0, #4]
	add r7, r2, #0
	add r1, r3, #0
	mov r2, #0
	ldr r3, [r0, #0x14]
	cmp r5, #0
	bls _0203A4F4
	add r6, r3, #0
_0203A4DA:
	ldrh r0, [r6]
	cmp r4, r0
	bne _0203A4EC
	lsl r0, r2, #5
	add r0, r3, r0
	strh r7, [r0, #0x18]
	strh r1, [r0, #0x1a]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203A4EC:
	add r2, r2, #1
	add r6, #0x20
	cmp r2, r5
	blo _0203A4DA
_0203A4F4:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203A4C4

	thumb_func_start sub_0203A4FC
sub_0203A4FC: ; 0x0203A4FC
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x14]
	mov r3, #0
	ldr r5, [r0, #4]
	ldr r4, [r0, #0x14]
	cmp r5, #0
	bls _0203A524
	add r6, r4, #0
_0203A50C:
	ldrh r0, [r6]
	cmp r1, r0
	bne _0203A51C
	lsl r0, r3, #5
	add r0, r4, r0
	strh r2, [r0, #0xc]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203A51C:
	add r3, r3, #1
	add r6, #0x20
	cmp r3, r5
	blo _0203A50C
_0203A524:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203A4FC

	thumb_func_start sub_0203A52C
sub_0203A52C: ; 0x0203A52C
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x14]
	mov r3, #0
	ldr r5, [r0, #4]
	ldr r4, [r0, #0x14]
	cmp r5, #0
	bls _0203A554
	add r6, r4, #0
_0203A53C:
	ldrh r0, [r6]
	cmp r1, r0
	bne _0203A54C
	lsl r0, r3, #5
	add r0, r4, r0
	strh r2, [r0, #4]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203A54C:
	add r3, r3, #1
	add r6, #0x20
	cmp r3, r5
	blo _0203A53C
_0203A554:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203A52C

	thumb_func_start sub_0203A55C
sub_0203A55C: ; 0x0203A55C
	push {r3, r4}
	ldr r0, [r0, #0x14]
	ldr r4, [r0, #0x18]
	mov r0, #0xc
	mul r0, r1
	strh r2, [r4, r0]
	add r0, r4, r0
	strh r3, [r0, #2]
	mov r0, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A55C

	thumb_func_start sub_0203A574
sub_0203A574: ; 0x0203A574
	ldr r0, [r0, #0x14]
	ldr r3, [r0, #0x18]
	mov r0, #0xc
	mul r0, r1
	add r0, r3, r0
	strh r2, [r0, #4]
	mov r0, #1
	bx lr
	thumb_func_end sub_0203A574

	thumb_func_start sub_0203A584
sub_0203A584: ; 0x0203A584
	ldr r0, [r0, #0x14]
	ldr r3, [r0, #0x18]
	mov r0, #0xc
	mul r0, r1
	add r0, r3, r0
	strh r2, [r0, #6]
	mov r0, #1
	bx lr
	thumb_func_end sub_0203A584

	thumb_func_start sub_0203A594
sub_0203A594: ; 0x0203A594
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203A440
	mov r1, #0x14
	mul r1, r5
	add r0, r0, r1
	str r4, [r0, #4]
	str r6, [r0, #8]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203A594

	thumb_func_start sub_0203A5B0
sub_0203A5B0: ; 0x0203A5B0
	add r1, r0, #0
	ldr r2, [r0, #0x20]
	add r1, #0x20
	add r1, r1, #4
	str r2, [r0, #0]
	cmp r2, #0
	beq _0203A5C2
	str r1, [r0, #0x10]
	b _0203A5C6
_0203A5C2:
	mov r2, #0
	str r2, [r0, #0x10]
_0203A5C6:
	ldr r3, [r0, #0]
	mov r2, #0x14
	mul r2, r3
	add r3, r1, r2
	ldr r2, [r1, r2]
	add r1, r3, #4
	str r2, [r0, #4]
	cmp r2, #0
	beq _0203A5DC
	str r1, [r0, #0x14]
	b _0203A5E0
_0203A5DC:
	mov r2, #0
	str r2, [r0, #0x14]
_0203A5E0:
	ldr r2, [r0, #4]
	lsl r2, r2, #5
	add r3, r1, r2
	ldr r2, [r1, r2]
	add r1, r3, #4
	str r2, [r0, #8]
	cmp r2, #0
	beq _0203A5F4
	str r1, [r0, #0x18]
	b _0203A5F8
_0203A5F4:
	mov r2, #0
	str r2, [r0, #0x18]
_0203A5F8:
	ldr r3, [r0, #8]
	mov r2, #0xc
	mul r2, r3
	add r3, r1, r2
	ldr r1, [r1, r2]
	str r1, [r0, #0xc]
	cmp r1, #0
	beq _0203A60E
	add r1, r3, #4
	str r1, [r0, #0x1c]
	bx lr
_0203A60E:
	mov r1, #0
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0203A5B0

	thumb_func_start sub_0203A614
sub_0203A614: ; 0x0203A614
	push {r3, r4, r5, lr}
	mov r2, #0x6a
	add r4, r1, #0
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	bl sub_0203A0EC
	cmp r0, #0
	beq _0203A63E
	add r0, r4, #0
	bl sub_0203A110
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0xa1
	bl sub_02006AA4
_0203A63E:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203A614

	thumb_func_start sub_0203A640
sub_0203A640: ; 0x0203A640
	ldr r1, [r0, #0x14]
	mov r0, #0x92
	lsl r0, r0, #4
	add r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A640

	thumb_func_start sub_0203A64C
sub_0203A64C: ; 0x0203A64C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0203A0B0
	mov r1, #0x82
	lsl r1, r1, #4
	mov r2, #1
	add r4, r0, #0
	mov r0, #0
	add r1, r5, r1
	lsl r2, r2, #8
	bl sub_020C4BB8
	mov r0, #0xa
	add r1, r4, #0
	bl sub_02006B58
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	blo _0203A67C
	bl sub_02022974
_0203A67C:
	mov r0, #0x82
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0xa
	add r2, r4, #0
	bl sub_02006AA4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203A64C

	thumb_func_start sub_0203A68C
sub_0203A68C: ; 0x0203A68C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0203A69A
	bl sub_02022974
_0203A69A:
	mov r0, #0x82
	ldr r1, [r4, #0x14]
	lsl r0, r0, #4
	add r0, r1, r0
	pop {r4, pc}
	thumb_func_end sub_0203A68C

	thumb_func_start sub_0203A6A4
sub_0203A6A4: ; 0x0203A6A4
	push {r4, r5, r6, r7}
	ldr r0, [r0, #0x14]
	mov r3, #0
	ldr r4, [r0, #4]
	cmp r4, #0
	bls _0203A6D6
	ldr r6, [r0, #0x14]
	add r5, r3, #0
	add r4, r6, #0
_0203A6B6:
	ldrh r7, [r4, #0x18]
	cmp r1, r7
	bne _0203A6CA
	add r7, r6, r5
	ldrh r7, [r7, #0x1a]
	cmp r2, r7
	bne _0203A6CA
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0203A6CA:
	ldr r7, [r0, #4]
	add r3, r3, #1
	add r4, #0x20
	add r5, #0x20
	cmp r3, r7
	blo _0203A6B6
_0203A6D6:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0203A6A4