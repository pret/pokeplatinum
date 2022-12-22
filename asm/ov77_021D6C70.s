	.include "macros/function.inc"
	.include "include/ov77_021D6C70.inc"

	

	.text


	thumb_func_start ov77_021D6C70
ov77_021D6C70: ; 0x021D6C70
	push {r4, lr}
	ldr r3, _021D6C90 ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bl sub_020145B4
	cmp r4, #0
	bne _021D6C88
	bl sub_02022974
_021D6C88:
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_021D6C90: .word 0x02100DEC
	thumb_func_end ov77_021D6C70

	thumb_func_start ov77_021D6C94
ov77_021D6C94: ; 0x021D6C94
	push {r4, lr}
	ldr r3, _021D6CB4 ; =0x02100DF4
	mov r2, #1
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bne _021D6CA6
	bl sub_02022974
_021D6CA6:
	add r0, r4, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_021D6CB4: .word 0x02100DF4
	thumb_func_end ov77_021D6C94

	thumb_func_start ov77_021D6CB8
ov77_021D6CB8: ; 0x021D6CB8
	mov r0, #0x2c
	bx lr
	thumb_func_end ov77_021D6CB8

	thumb_func_start ov77_021D6CBC
ov77_021D6CBC: ; 0x021D6CBC
	push {r4, lr}
	add r4, r0, #0
	beq _021D6CC8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D6CCC
_021D6CC8:
	bl sub_02022974
_021D6CCC:
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov77_021D6CBC

	thumb_func_start ov77_021D6CD0
ov77_021D6CD0: ; 0x021D6CD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	beq _021D6CE0
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021D6CE4
_021D6CE0:
	bl sub_02022974
_021D6CE4:
	ldr r0, [r5, #0x18]
	mov r1, #1
	bl sub_02014788
	mov r2, #0
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	add r3, r2, #0
	bl sub_020146F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6CD0

	thumb_func_start ov77_021D6CFC
ov77_021D6CFC: ; 0x021D6CFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	ldr r3, _021D6E14 ; =0x021D7934
	add r5, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x28
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0x10
	bl sub_02013880
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mul r1, r2
	add r2, r0, r1
	mov r1, #1
	add r4, r2, #0
	and r4, r1
	mov r1, #3
	bl _u32_div_f
	add r2, r1, #0
	mov r1, #0
	add r6, sp, #0x28
	add r7, sp, #0x1c
_021D6D32:
	lsl r3, r2, #2
	ldr r3, [r6, r3]
	lsl r0, r1, #2
	str r3, [r7, r0]
	add r0, r5, r0
	str r2, [r0, #0x1c]
	cmp r4, #0
	beq _021D6D46
	add r2, r2, #1
	b _021D6D48
_021D6D46:
	sub r2, r2, #1
_021D6D48:
	cmp r2, #3
	blt _021D6D50
	mov r2, #0
	b _021D6D56
_021D6D50:
	cmp r2, #0
	bge _021D6D56
	mov r2, #2
_021D6D56:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #3
	blo _021D6D32
	mov r0, #0x4c
	bl sub_0200762C
	ldr r7, _021D6E18 ; =0x021D7958
	str r0, [r5, #0]
	mov r4, #0
_021D6D6C:
	lsl r6, r4, #2
	add r1, sp, #0x1c
	mov r0, #0
	ldr r1, [r1, r6]
	str r0, [sp]
	str r0, [sp, #4]
	lsl r1, r1, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x34
	lsr r1, r1, #0x10
	mov r2, #0
	mov r3, #2
	bl sub_02075FB4
	add r6, r5, r6
	ldr r0, [r6, #0x1c]
	add r1, sp, #0x34
	lsl r2, r0, #3
	ldr r0, _021D6E1C ; =0x000003FF
	add r3, r7, r2
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r2, [r7, r2]
	ldr r3, [r3, #4]
	bl sub_02007C34
	mov r1, #6
	mov r2, #1
	str r0, [r6, #4]
	bl sub_02007DEC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D6D6C
	mov r0, #1
	str r0, [r5, #0x10]
	bl sub_02014000
	mov r1, #0x12
	mov r0, #0x4c
	lsl r1, r1, #0xa
	bl sub_02018144
	str r0, [r5, #0x14]
	mov r0, #1
	str r0, [sp]
	mov r0, #0x4c
	str r0, [sp, #4]
	mov r3, #0x12
	ldr r0, _021D6E20 ; =ov77_021D6C70
	ldr r1, _021D6E24 ; =ov77_021D6C94
	ldr r2, [r5, #0x14]
	lsl r3, r3, #0xa
	bl sub_02014014
	str r0, [r5, #0x18]
	bl sub_02014784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	mov r0, #0x3d
	mov r1, #4
	mov r2, #0x4c
	bl sub_020144C4
	add r1, r0, #0
	ldr r0, [r5, #0x18]
	mov r2, #0xa
	mov r3, #1
	bl sub_020144CC
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6E14: .word 0x021D7934
_021D6E18: .word 0x021D7958
_021D6E1C: .word 0x000003FF
_021D6E20: .word ov77_021D6C70
_021D6E24: .word ov77_021D6C94
	thumb_func_end ov77_021D6CFC

	thumb_func_start ov77_021D6E28
ov77_021D6E28: ; 0x021D6E28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0201411C
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	ldr r0, [r4, #0]
	bl sub_02007B6C
	pop {r4, pc}
	thumb_func_end ov77_021D6E28

	thumb_func_start ov77_021D6E40
ov77_021D6E40: ; 0x021D6E40
	push {r3, lr}
	cmp r0, #0
	beq _021D6E4C
	ldr r0, [r0, #0]
	bl sub_02008A94
_021D6E4C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6E40

	thumb_func_start ov77_021D6E50
ov77_021D6E50: ; 0x021D6E50
	push {r4, lr}
	add r4, r0, #0
	beq _021D6E74
	bl NNS_G3dGeFlushBuffer
	bl sub_020241B4
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r0, [r4, #0]
	bl sub_02007768
	bl ov77_021D725C
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
_021D6E74:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov77_021D6E50

	thumb_func_start ov77_021D6E78
ov77_021D6E78: ; 0x021D6E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r2, r4, #0
	add r2, #0x28
	ldrb r2, [r2]
	add r5, r4, #0
	add r6, r1, #0
	add r5, #0x28
	cmp r2, #5
	bls _021D6E90
	b _021D6FE2
_021D6E90:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D6E9C: ; jump table
	.short _021D6EA8 - _021D6E9C - 2 ; case 0
	.short _021D6EEA - _021D6E9C - 2 ; case 1
	.short _021D6F0E - _021D6E9C - 2 ; case 2
	.short _021D6F6E - _021D6E9C - 2 ; case 3
	.short _021D6F92 - _021D6E9C - 2 ; case 4
	.short _021D6FBE - _021D6E9C - 2 ; case 5
_021D6EA8:
	ldr r0, _021D6FE8 ; =0x0400004A
	mov r1, #0x3f
	ldrh r2, [r0]
	add r7, r4, #4
	bic r2, r1
	mov r1, #0x11
	orr r1, r2
	mov r2, #0x20
	orr r1, r2
	strh r1, [r0]
	lsl r0, r6, #2
	str r0, [sp]
	ldr r0, [r7, r0]
	mov r1, #0xc
	lsl r2, r2, #5
	bl sub_02007DEC
	ldr r0, [sp]
	mov r2, #1
	ldr r0, [r7, r0]
	mov r1, #0xd
	lsl r2, r2, #0xa
	bl sub_02007DEC
	ldr r0, [sp]
	mov r1, #6
	ldr r0, [r7, r0]
	mov r2, #0
	bl sub_02007DEC
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_021D6EEA:
	lsl r2, r6, #2
	add r2, r4, r2
	ldr r2, [r2, #0x1c]
	add r0, r4, #0
	lsl r3, r2, #3
	ldr r2, _021D6FEC ; =0x021D7940
	add r1, r6, #0
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021D6FE2
	mov r0, #0
	add r4, #0x29
	strb r0, [r4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F0E:
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02014788
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	lsl r6, r6, #2
	add r7, r4, #4
	ldr r1, [r1, r6]
	mov r2, #0xc
	mul r2, r1
	ldr r1, _021D6FF0 ; =0x021D7970
	ldr r0, [r4, #0x18]
	ldr r1, [r1, r2]
	ldr r2, _021D6FF4 ; =ov77_021D7268
	ldr r3, [r7, r6]
	bl sub_020146F4
	ldr r1, [sp, #4]
	mov r2, #0xc
	ldr r1, [r1, r6]
	ldr r0, [r4, #0x18]
	mul r2, r1
	ldr r1, _021D6FF8 ; =0x021D7974
	ldr r3, [r7, r6]
	ldr r1, [r1, r2]
	ldr r2, _021D6FF4 ; =ov77_021D7268
	bl sub_020146F4
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r2, [r1, r6]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D6FFC ; =0x021D7978
	ldr r2, _021D6FF4 ; =ov77_021D7268
	ldr r1, [r1, r3]
	ldr r3, [r7, r6]
	bl sub_020146F4
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F6E:
	ldr r0, [r4, #0x18]
	bl sub_02014710
	cmp r0, #0
	bne _021D6FE2
	ldr r1, _021D6FE8 ; =0x0400004A
	mov r0, #0x3f
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x10
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6F92:
	lsl r6, r6, #2
	add r2, r4, r6
	ldr r2, [r2, #0x1c]
	lsl r3, r2, #3
	ldr r2, _021D7000 ; =0x021D7944
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _021D6FE2
	add r0, r4, r6
	ldr r0, [r0, #4]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	mov r0, #0
	add r4, #0x29
	strb r0, [r4]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	b _021D6FE2
_021D6FBE:
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0x14
	blo _021D6FE2
	mov r0, #0
	add r4, #0x29
	strb r0, [r4]
	strb r0, [r5]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D6FE2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D6FE8: .word 0x0400004A
_021D6FEC: .word 0x021D7940
_021D6FF0: .word 0x021D7970
_021D6FF4: .word ov77_021D7268
_021D6FF8: .word 0x021D7974
_021D6FFC: .word 0x021D7978
_021D7000: .word 0x021D7944
	thumb_func_end ov77_021D6E78

	thumb_func_start ov77_021D7004
ov77_021D7004: ; 0x021D7004
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	mov r2, #6
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x11
	bl sub_02008274
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8c
	bl sub_02008274
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8d
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D706E
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D706E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7004

	thumb_func_start ov77_021D7074
ov77_021D7074: ; 0x021D7074
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	sub r2, r1, #3
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x13
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D70C6
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D70C6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7074

	thumb_func_start ov77_021D70CC
ov77_021D70CC: ; 0x021D70CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x10
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x11
	bl sub_02008274
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8c
	bl sub_02008274
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8d
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D7138
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D7138:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov77_021D70CC

	thumb_func_start ov77_021D713C
ov77_021D713C: ; 0x021D713C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	sub r2, r1, #6
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x11
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D718E
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D718E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D713C

	thumb_func_start ov77_021D7194
ov77_021D7194: ; 0x021D7194
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	mov r2, #8
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x11
	bl sub_02008274
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8c
	bl sub_02008274
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x8d
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D71FE
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D71FE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7194

	thumb_func_start ov77_021D7204
ov77_021D7204: ; 0x021D7204
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r5, r0
	ldr r4, [r0, #4]
	mov r1, #0
	add r0, r4, #0
	mov r2, #6
	bl sub_02008274
	mov r1, #1
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0x15
	bl sub_02008274
	add r0, r5, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x29
	add r5, #0x29
	strb r1, [r0]
	ldrb r0, [r5]
	cmp r0, #6
	blo _021D7256
	mov r1, #0xc
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf4
	bl sub_02007DEC
	mov r1, #0xd
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D7256:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7204

	thumb_func_start ov77_021D725C
ov77_021D725C: ; 0x021D725C
	push {r3, lr}
	bl sub_0201469C
	bl sub_020146C0
	pop {r3, pc}
	thumb_func_end ov77_021D725C

	thumb_func_start ov77_021D7268
ov77_021D7268: ; 0x021D7268
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r2, sp, #0
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r4, r0, #0
	str r1, [r2, #8]
	bl sub_020080C0
	sub r0, #0x80
	mov r1, #0xac
	mul r1, r0
	str r1, [sp]
	add r0, r4, #0
	mov r1, #1
	bl sub_020080C0
	sub r0, #0x60
	mov r1, #0xac
	mul r1, r0
	str r1, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov77_021D7268

	.rodata


	.global Unk_ov77_021D7934
Unk_ov77_021D7934: ; 0x021D7934
	.incbin "incbin/overlay77_rodata.bin", 0x66C, 0x678 - 0x66C

	.global Unk_ov77_021D7940
Unk_ov77_021D7940: ; 0x021D7940
	.incbin "incbin/overlay77_rodata.bin", 0x678, 0x690 - 0x678

	.global Unk_ov77_021D7958
Unk_ov77_021D7958: ; 0x021D7958
	.incbin "incbin/overlay77_rodata.bin", 0x690, 0x6A8 - 0x690

	.global Unk_ov77_021D7970
Unk_ov77_021D7970: ; 0x021D7970
	.incbin "incbin/overlay77_rodata.bin", 0x6A8, 0x24

