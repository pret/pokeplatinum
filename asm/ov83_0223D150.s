	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov83_0223D150
ov83_0223D150: ; 0x0223D150
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0223D1D8 ; =0x0000142C
	add r4, r1, #0
	ldr r1, [r7, r0]
	cmp r1, #1
	bne _0223D168
	bl sub_02035E18
	ldr r1, _0223D1DC ; =0x00001424
	str r0, [r7, r1]
	b _0223D16E
_0223D168:
	mov r1, #1
	sub r0, #8
	str r1, [r7, r0]
_0223D16E:
	bl ov83_0223D144
	add r5, r0, #0
	bl ov83_0223D14C
	add r1, r0, #0
	ldr r0, [r7, #0]
	ldr r3, _0223D1D8 ; =0x0000142C
	str r0, [sp]
	ldr r3, [r7, r3]
	add r0, r5, #0
	add r2, r7, #0
	bl ov83_0223D4CC
	ldr r1, _0223D1E0 ; =0x00001428
	str r0, [r7, r1]
	ldr r0, _0223D1E4 ; =0x00001560
	mov r1, #4
	add r0, r7, r0
	add r2, r1, #0
	bl sub_020D5124
	ldr r0, _0223D1D8 ; =0x0000142C
	ldr r0, [r7, r0]
	cmp r0, #1
	bne _0223D1CC
	mov r6, #0
	add r4, r6, #0
	add r5, r7, #0
_0223D1A8:
	add r0, r4, #0
	bl sub_02032EE8
	ldr r1, _0223D1E8 ; =0x00001564
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223D1C2
	ldr r0, _0223D1E4 ; =0x00001560
	add r1, r7, r6
	strb r4, [r1, r0]
	add r6, r6, #1
_0223D1C2:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223D1A8
	pop {r3, r4, r5, r6, r7, pc}
_0223D1CC:
	ldr r0, _0223D1E4 ; =0x00001560
	mov r1, #0
	strb r1, [r7, r0]
	add r0, r0, #4
	str r4, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D1D8: .word 0x0000142C
_0223D1DC: .word 0x00001424
_0223D1E0: .word 0x00001428
_0223D1E4: .word 0x00001560
_0223D1E8: .word 0x00001564
	thumb_func_end ov83_0223D150

	thumb_func_start ov83_0223D1EC
ov83_0223D1EC: ; 0x0223D1EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D200 ; =0x00001428
	ldr r0, [r4, r0]
	bl ov83_0223D558
	ldr r0, _0223D200 ; =0x00001428
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0223D200: .word 0x00001428
	thumb_func_end ov83_0223D1EC

	thumb_func_start ov83_0223D204
ov83_0223D204: ; 0x0223D204
	add r0, r3, #0
	ldr r3, _0223D20C ; =ov83_0223B774
	mov r1, #3
	bx r3
	; .align 2, 0
_0223D20C: .word ov83_0223B774
	thumb_func_end ov83_0223D204

	thumb_func_start ov83_0223D210
ov83_0223D210: ; 0x0223D210
	add r0, r3, #0
	ldr r3, _0223D218 ; =ov83_0223B77C
	mov r1, #8
	bx r3
	; .align 2, 0
_0223D218: .word ov83_0223B77C
	thumb_func_end ov83_0223D210

	thumb_func_start ov83_0223D21C
ov83_0223D21C: ; 0x0223D21C
	push {r3, r4, r5, lr}
	ldr r0, _0223D250 ; =0x0000149C
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	add r0, r4, r0
	add r2, r5, #0
	bl sub_020D50B8
	ldr r0, _0223D254 ; =0x000014AC
	mov r1, #0xa
	add r3, r4, r0
	add r0, #0x1c
	add r2, r4, r0
_0223D238:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0223D238
	add r0, r4, #0
	mov r1, #5
	bl ov83_0223B774
	pop {r3, r4, r5, pc}
	nop
_0223D250: .word 0x0000149C
_0223D254: .word 0x000014AC
	thumb_func_end ov83_0223D21C

	thumb_func_start ov83_0223D258
ov83_0223D258: ; 0x0223D258
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _0223D2D4 ; =0x00001428
	add r5, r3, #0
	ldr r0, [r5, r0]
	str r1, [sp]
	str r2, [sp, #4]
	bl ov83_0223D570
	cmp r0, #0
	bne _0223D2D0
	ldr r0, _0223D2D8 ; =0x00001544
	lsl r4, r6, #2
	add r7, r5, r0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r7, r4
	bl sub_020D50B8
	ldr r0, _0223D2DC ; =0x00001554
	mov r2, #1
	add r1, r5, r6
	strb r2, [r1, r0]
	ldr r1, [r7, r4]
	add r2, r5, r4
	sub r0, #0xf0
	str r1, [r2, r0]
	mov r0, #0
	ldr r1, _0223D2DC ; =0x00001554
	add r3, r0, #0
_0223D296:
	add r2, r5, r3
	ldrb r2, [r2, r1]
	cmp r2, #1
	bne _0223D2A0
	add r0, r0, #1
_0223D2A0:
	add r3, r3, #1
	cmp r3, #4
	blt _0223D296
	ldr r1, _0223D2E0 ; =0x00001424
	ldr r2, [r5, r1]
	cmp r0, r2
	blt _0223D2D0
	mov r0, #0xba
	lsl r0, r0, #2
	add r1, #0x50
	add r0, r5, r0
	add r1, r5, r1
	bl ov83_0223FF44
	bl ov83_0223D4B4
	ldr r3, _0223D2E4 ; =0x00001464
	add r2, r0, #0
	add r1, r5, r3
	sub r3, #0x3c
	ldr r3, [r5, r3]
	mov r0, #0x18
	bl ov83_0223D508
_0223D2D0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D2D4: .word 0x00001428
_0223D2D8: .word 0x00001544
_0223D2DC: .word 0x00001554
_0223D2E0: .word 0x00001424
_0223D2E4: .word 0x00001464
	thumb_func_end ov83_0223D258

	thumb_func_start ov83_0223D2E8
ov83_0223D2E8: ; 0x0223D2E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r3, #0
	mov ip, r2
	ldr r3, _0223D348 ; =0x000014D6
	mov r2, #0x1c
	add r5, r0, #0
	mul r5, r2
	add r2, r4, r3
	str r2, [sp, #4]
	str r1, [sp]
	mov r1, ip
	ldrb r2, [r2, r5]
	add r1, #8
	cmp r2, #1
	bne _0223D31C
	ldrb r1, [r1, #0xe]
	cmp r1, #0
	bne _0223D31C
	cmp r0, #0
	bne _0223D31C
	add r1, r4, r5
	sub r0, r3, #2
	mov r6, #1
	ldrb r7, [r1, r0]
	b _0223D31E
_0223D31C:
	mov r6, #0
_0223D31E:
	mov r0, #0x53
	lsl r0, r0, #6
	add r0, r4, r0
	ldr r2, [sp]
	add r0, r0, r5
	mov r1, ip
	bl sub_020D50B8
	cmp r6, #1
	bne _0223D33C
	ldr r0, [sp, #4]
	add r1, r4, r5
	strb r6, [r0, r5]
	ldr r0, _0223D34C ; =0x000014D4
	strb r7, [r1, r0]
_0223D33C:
	ldr r0, _0223D350 ; =0x00001602
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D348: .word 0x000014D6
_0223D34C: .word 0x000014D4
_0223D350: .word 0x00001602
	thumb_func_end ov83_0223D2E8

	thumb_func_start ov83_0223D354
ov83_0223D354: ; 0x0223D354
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov ip, r1
	add r1, r2, #0
	mov r2, #0x1c
	ldr r0, _0223D39C ; =0x000014D6
	add r5, r3, #0
	mul r4, r2
	add r7, r5, r0
	ldrb r2, [r7, r4]
	cmp r2, #1
	bne _0223D37E
	ldrb r2, [r1, #0xe]
	cmp r2, #0
	bne _0223D37E
	add r2, r5, r4
	sub r0, r0, #2
	ldrb r0, [r2, r0]
	mov r6, #1
	str r0, [sp]
	b _0223D380
_0223D37E:
	mov r6, #0
_0223D380:
	ldr r0, _0223D3A0 ; =0x000014C8
	mov r2, ip
	add r0, r5, r0
	add r0, r0, r4
	bl sub_020D50B8
	cmp r6, #1
	bne _0223D39A
	strb r6, [r7, r4]
	ldr r1, _0223D3A4 ; =0x000014D4
	ldr r0, [sp]
	add r2, r5, r4
	strb r0, [r2, r1]
_0223D39A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D39C: .word 0x000014D6
_0223D3A0: .word 0x000014C8
_0223D3A4: .word 0x000014D4
	thumb_func_end ov83_0223D354

	thumb_func_start ov83_0223D3A8
ov83_0223D3A8: ; 0x0223D3A8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	mov r0, #0x53
	add r5, r3, #0
	lsl r0, r0, #6
	add r6, r1, #0
	add r1, r5, r0
	mov r0, #0x1c
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0
	add r2, r6, #0
	bl sub_020D50B8
	ldr r0, _0223D3D4 ; =0x000015F8
	lsl r1, r4, #1
	add r2, r5, r0
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	pop {r4, r5, r6, pc}
	nop
_0223D3D4: .word 0x000015F8
	thumb_func_end ov83_0223D3A8

	thumb_func_start ov83_0223D3D8
ov83_0223D3D8: ; 0x0223D3D8
	push {r3, r4, r5, lr}
	ldr r0, _0223D3F4 ; =0x00001488
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	add r0, r4, r0
	add r2, r5, #0
	bl sub_020D50B8
	add r0, r4, #0
	mov r1, #0xa
	bl ov83_0223B774
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D3F4: .word 0x00001488
	thumb_func_end ov83_0223D3D8

	thumb_func_start ov83_0223D3F8
ov83_0223D3F8: ; 0x0223D3F8
	push {r4, lr}
	ldr r0, _0223D40C ; =0x00001530
	add r4, r1, #0
	ldr r0, [r3, r0]
	add r1, r2, #0
	add r2, r4, #0
	bl sub_020D50B8
	pop {r4, pc}
	nop
_0223D40C: .word 0x00001530
	thumb_func_end ov83_0223D3F8

	thumb_func_start ov83_0223D410
ov83_0223D410: ; 0x0223D410
	push {r3, r4, r5, lr}
	ldr r0, _0223D42C ; =0x00001575
	add r5, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	add r0, r4, r0
	add r2, r5, #0
	bl sub_020D50B8
	add r0, r4, #0
	mov r1, #0xc
	bl ov83_0223B774
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D42C: .word 0x00001575
	thumb_func_end ov83_0223D410

	thumb_func_start ov83_0223D430
ov83_0223D430: ; 0x0223D430
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0223D49C ; =0x00001428
	add r4, r3, #0
	ldr r0, [r4, r0]
	add r6, r1, #0
	add r7, r2, #0
	bl ov83_0223D570
	cmp r0, #0
	bne _0223D49A
	ldr r0, _0223D4A0 ; =0x00001558
	add r1, r7, #0
	add r0, r4, r0
	add r0, r0, r5
	add r2, r6, #0
	bl sub_020D50B8
	ldr r0, _0223D4A4 ; =0x0000155C
	add r1, r4, r5
	mov r2, #1
	strb r2, [r1, r0]
	add r6, sp, #0
	mov r3, #0
	strb r2, [r6]
	add r2, r3, #0
	sub r7, r0, #4
	add r5, r0, #0
_0223D468:
	add r1, r4, r2
	ldrb r0, [r1, r5]
	cmp r0, #1
	bne _0223D47A
	ldrb r0, [r6]
	ldrb r1, [r1, r7]
	add r3, r3, #1
	and r0, r1
	strb r0, [r6]
_0223D47A:
	add r2, r2, #1
	cmp r2, #4
	blt _0223D468
	ldr r0, _0223D4A8 ; =0x00001424
	ldr r0, [r4, r0]
	cmp r3, r0
	blt _0223D49A
	bl ov83_0223D4B0
	ldr r3, _0223D49C ; =0x00001428
	add r2, r0, #0
	ldr r3, [r4, r3]
	mov r0, #0x1d
	add r1, sp, #0
	bl ov83_0223D508
_0223D49A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D49C: .word 0x00001428
_0223D4A0: .word 0x00001558
_0223D4A4: .word 0x0000155C
_0223D4A8: .word 0x00001424
	thumb_func_end ov83_0223D430

	thumb_func_start ov83_0223D4AC
ov83_0223D4AC: ; 0x0223D4AC
	mov r0, #0
	bx lr
	thumb_func_end ov83_0223D4AC

	thumb_func_start ov83_0223D4B0
ov83_0223D4B0: ; 0x0223D4B0
	mov r0, #1
	bx lr
	thumb_func_end ov83_0223D4B0

	thumb_func_start ov83_0223D4B4
ov83_0223D4B4: ; 0x0223D4B4
	mov r0, #0x24
	bx lr
	thumb_func_end ov83_0223D4B4

	thumb_func_start ov83_0223D4B8
ov83_0223D4B8: ; 0x0223D4B8
	mov r0, #4
	bx lr
	thumb_func_end ov83_0223D4B8

	thumb_func_start ov83_0223D4BC
ov83_0223D4BC: ; 0x0223D4BC
	mov r0, #0x1c
	bx lr
	thumb_func_end ov83_0223D4BC

	thumb_func_start ov83_0223D4C0
ov83_0223D4C0: ; 0x0223D4C0
	mov r0, #0x14
	bx lr
	thumb_func_end ov83_0223D4C0

	thumb_func_start ov83_0223D4C4
ov83_0223D4C4: ; 0x0223D4C4
	mov r0, #0x14
	bx lr
	thumb_func_end ov83_0223D4C4

	thumb_func_start ov83_0223D4C8
ov83_0223D4C8: ; 0x0223D4C8
	mov r0, #8
	bx lr
	thumb_func_end ov83_0223D4C8