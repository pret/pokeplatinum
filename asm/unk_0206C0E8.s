	.include "macros/function.inc"
	.include "include/unk_0206C0E8.inc"

	

	.text


	thumb_func_start sub_0206C0E8
sub_0206C0E8: ; 0x0206C0E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #0x10
	bl sub_02018184
	add r4, r0, #0
	mov r0, #0xb
	bl ov6_022426AC
	str r0, [r4, #0]
	mov r0, #0xb
	add r1, r5, #0
	bl ov6_02242A10
	str r0, [r4, #4]
	mov r0, #0
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x10]
	ldr r1, _0206C11C ; =sub_0206C120
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_0206C11C: .word sub_0206C120
	thumb_func_end sub_0206C0E8

	thumb_func_start sub_0206C120
sub_0206C120: ; 0x0206C120
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl sub_02050A60
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #8
	bls _0206C13C
	b _0206C2BE
_0206C13C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206C148: ; jump table
	.short _0206C15A - _0206C148 - 2 ; case 0
	.short _0206C17E - _0206C148 - 2 ; case 1
	.short _0206C18A - _0206C148 - 2 ; case 2
	.short _0206C1B2 - _0206C148 - 2 ; case 3
	.short _0206C1BE - _0206C148 - 2 ; case 4
	.short _0206C22E - _0206C148 - 2 ; case 5
	.short _0206C27C - _0206C148 - 2 ; case 6
	.short _0206C288 - _0206C148 - 2 ; case 7
	.short _0206C29E - _0206C148 - 2 ; case 8
_0206C15A:
	add r0, r6, #0
	mov r1, #1
	bl sub_02070428
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #4]
	bl ov6_02242A94
	ldr r0, [r4, #4]
	bl ov6_02242AEC
	str r0, [r4, #8]
	add r0, r5, #0
	bl sub_020558AC
	mov r0, #1
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C17E:
	add r0, r5, #0
	bl sub_02055820
	mov r0, #2
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C18A:
	ldr r0, [r6, #0xc]
	bl sub_020507E4
	ldrb r1, [r4, #0xd]
	cmp r1, #0
	bne _0206C19C
	bl sub_0206AE0C
	b _0206C1A4
_0206C19C:
	cmp r1, #5
	bne _0206C1A4
	bl sub_0206AE1C
_0206C1A4:
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl sub_020539A0
	mov r0, #3
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C1B2:
	add r0, r5, #0
	bl sub_02055868
	mov r0, #4
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C1BE:
	ldr r0, [r6, #0x3c]
	bl sub_0205EB3C
	ldrb r1, [r4, #0xd]
	add r7, r0, #0
	add r1, r1, #1
	strb r1, [r4, #0xd]
	ldrb r1, [r4, #0xd]
	cmp r1, #5
	bhi _0206C21C
	add r0, r6, #0
	bl ov6_02242984
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_02062D64
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov6_022426C0
	ldr r0, [r4, #0]
	bl ov6_022427F4
	mov r0, #0
	strb r0, [r4, #0xe]
	ldr r0, _0206C2C4 ; =0x00000679
	bl sub_02005748
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r3, _0206C2C8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x11
	bl sub_02056B30
	mov r0, #5
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C21C:
	mov r1, #0
	bl sub_02062D64
	add r0, r5, #0
	bl sub_020558F0
	mov r0, #8
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C22E:
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xe]
	cmp r0, #0x3c
	bhs _0206C244
	ldr r0, _0206C2CC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0206C2BE
_0206C244:
	ldrb r0, [r4, #0xd]
	ldr r1, [r4, #4]
	bl ov6_02242A94
	ldr r0, [r4, #4]
	bl ov6_02242AEC
	str r0, [r4, #8]
	ldr r0, _0206C2C4 ; =0x00000679
	bl sub_02005748
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r3, _0206C2C8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x10
	bl sub_02056B30
	mov r0, #6
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C27C:
	ldr r0, [r4, #0]
	bl ov6_02242814
	mov r0, #7
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C288:
	ldr r0, [r4, #0]
	bl ov6_02242820
	cmp r0, #0
	beq _0206C2BE
	ldr r0, [r4, #0]
	bl ov6_02242828
	mov r0, #1
	strb r0, [r4, #0xc]
	b _0206C2BE
_0206C29E:
	add r0, r6, #0
	mov r1, #0
	bl sub_02070428
	ldr r0, [r4, #4]
	bl ov6_02242A8C
	ldr r0, [r4, #0]
	bl ov6_022426B8
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206C2BE:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206C2C4: .word 0x00000679
_0206C2C8: .word 0x0000FFFF
_0206C2CC: .word 0x021BF67C
	thumb_func_end sub_0206C120