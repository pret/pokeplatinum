	.include "macros/function.inc"
	.include "include/unk_02095E98.inc"

	

	.text


	thumb_func_start sub_02095E98
sub_02095E98: ; 0x02095E98
	ldr r3, _02095EA4 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _02095EA8 ; =0x020F5A40
	mov r1, #0x6e
	bx r3
	nop
_02095EA4: .word sub_02032798
_02095EA8: .word 0x020F5A40
	thumb_func_end sub_02095E98

	thumb_func_start sub_02095EAC
sub_02095EAC: ; 0x02095EAC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _02095F0A
	mov r3, #0xfb
	lsl r3, r3, #2
	ldrb r2, [r5, r3]
	sub r0, r3, #4
	add r1, r2, #0
	mul r1, r0
	mov r0, #0xe1
	lsl r0, r0, #6
	cmp r1, r0
	ldr r2, _02095F38 ; =0x000043D0
	ble _02095EE0
	add r2, r4, r2
	add r1, r2, r1
	mov r2, #0x19
	add r0, r5, #0
	lsl r2, r2, #4
	bl MIi_CpuCopyFast
	b _02095EEC
_02095EE0:
	add r2, r4, r2
	add r1, r2, r1
	add r0, r5, #0
	sub r2, r3, #4
	bl MIi_CpuCopyFast
_02095EEC:
	mov r1, #0xb5
	ldr r0, _02095F38 ; =0x000043D0
	lsl r1, r1, #2
	mov r2, #0xe1
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsl r2, r2, #6
	bl MIi_CpuCopyFast
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A954
	pop {r3, r4, r5, pc}
_02095F0A:
	ldr r1, _02095F3C ; =0x000043CC
	mov r0, #0xfa
	ldr r2, [r4, r1]
	lsl r0, r0, #2
	add r3, r2, #0
	mul r3, r0
	mov r0, #0xe1
	lsl r0, r0, #6
	cmp r3, r0
	bge _02095F2C
	add r0, r2, #1
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl sub_0209617C
	pop {r3, r4, r5, pc}
_02095F2C:
	mov r1, #0
	mov r0, #0x7c
	add r2, r1, #0
	bl sub_02035AC4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02095F38: .word 0x000043D0
_02095F3C: .word 0x000043CC
	thumb_func_end sub_02095EAC

	thumb_func_start sub_02095F40
sub_02095F40: ; 0x02095F40
	push {r3, r4}
	cmp r0, #0
	beq _02095F5E
	add r4, r0, #0
	mov r1, #0xa
	mul r4, r1
	ldr r0, _02095F64 ; =0x000093BD
	add r3, r3, r4
	add r3, r3, r0
_02095F52:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _02095F52
_02095F5E:
	pop {r3, r4}
	bx lr
	nop
_02095F64: .word 0x000093BD
	thumb_func_end sub_02095F40

	thumb_func_start sub_02095F68
sub_02095F68: ; 0x02095F68
	push {r4, r5, r6, r7}
	cmp r3, #0
	beq _02095F92
	cmp r0, #0
	bne _02095F92
	ldr r0, _02095F98 ; =0x00004382
	mov r7, #0
_02095F76:
	add r6, r2, #0
	add r5, r3, r0
	mov r4, #0xa
_02095F7C:
	ldrb r1, [r6]
	add r6, r6, #1
	strb r1, [r5]
	add r5, r5, #1
	sub r4, r4, #1
	bne _02095F7C
	add r7, r7, #1
	add r2, #0xa
	add r3, #0xa
	cmp r7, #5
	blt _02095F76
_02095F92:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02095F98: .word 0x00004382
	thumb_func_end sub_02095F68

	thumb_func_start sub_02095F9C
sub_02095F9C: ; 0x02095F9C
	push {r4, lr}
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov58_021D2434
	ldr r1, _02095FDC ; =0x000043D0
	mov r2, #0xe1
	mov r0, #0
	add r1, r4, r1
	lsl r2, r2, #6
	bl MIi_CpuClearFast
	bl sub_0203608C
	cmp r0, #0
	bne _02095FDA
	bl sub_02035E18
	mov r1, #0xc6
	lsl r1, r1, #2
	str r0, [r4, r1]
	bl sub_020318EC
	mov r1, #0xc7
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02095FE0 ; =0x000093F4
	mov r1, #1
	str r1, [r4, r0]
_02095FDA:
	pop {r4, pc}
	; .align 2, 0
_02095FDC: .word 0x000043D0
_02095FE0: .word 0x000093F4
	thumb_func_end sub_02095F9C

	thumb_func_start sub_02095FE4
sub_02095FE4: ; 0x02095FE4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r2, #0
	add r4, r3, #0
	cmp r6, #0
	beq _0209607E
	bl sub_0203608C
	cmp r0, #0
	bne _020960C8
	ldrb r0, [r5]
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r5, #1]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	strb r0, [r1, #2]
	ldrb r0, [r5, #3]
	strb r0, [r1, #3]
	mov r0, #0xc6
	strb r6, [r1]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	strb r0, [r1, #1]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _02096020
	cmp r0, #1
	b _02096070
_02096020:
	bl sub_02035E18
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _0209604E
	bl ov58_021D2A4C
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _0209604E
	bl sub_020318EC
	bl MATH_CountPopulation
	mov r1, #0xc6
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _02096056
_0209604E:
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #3]
	b _02096070
_02096056:
	ldr r0, _020960CC ; =0x000093B4
	mov r1, #1
	add r2, r1, #0
	ldr r3, [r4, r0]
	lsl r2, r6
	orr r2, r3
	str r2, [r4, r0]
	add r0, sp, #0
	strb r1, [r0, #3]
	bl sub_02035E18
	bl sub_02037B58
_02096070:
	mov r0, #0x7e
	add r1, sp, #0
	mov r2, #4
	bl sub_02035AC4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209607E:
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq _0209608C
	cmp r0, #1
	beq _020960BE
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0209608C:
	ldrb r6, [r5]
	bl sub_0203608C
	cmp r6, r0
	bne _020960C8
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _020960AA
	add r0, r4, #0
	mov r1, #9
	add r2, r6, #0
	bl ov58_021D2434
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020960AA:
	ldrb r1, [r5, #1]
	ldr r0, _020960D0 ; =0x000093B8
	strh r1, [r4, r0]
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #8
	bl ov58_021D2434
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020960BE:
	ldrb r2, [r5]
	add r0, r4, #0
	mov r1, #0x15
	bl ov58_021D2434
_020960C8:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020960CC: .word 0x000093B4
_020960D0: .word 0x000093B8
	thumb_func_end sub_02095FE4

	thumb_func_start sub_020960D4
sub_020960D4: ; 0x020960D4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020960D4

	thumb_func_start sub_020960D8
sub_020960D8: ; 0x020960D8
	push {r4, lr}
	ldrb r2, [r2]
	add r4, r3, #0
	add r0, r4, #0
	mov r1, #1
	bl ov58_021D2434
	bl sub_0203608C
	cmp r0, #0
	bne _02096106
	mov r0, #3
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02096106
	ldr r1, _02096108 ; =0x000043CC
	mov r0, #0
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl sub_0209617C
_02096106:
	pop {r4, pc}
	; .align 2, 0
_02096108: .word 0x000043CC
	thumb_func_end sub_020960D8

	thumb_func_start sub_0209610C
sub_0209610C: ; 0x0209610C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0209610C

	thumb_func_start sub_02096110
sub_02096110: ; 0x02096110
	bx lr
	; .align 2, 0
	thumb_func_end sub_02096110

	thumb_func_start sub_02096114
sub_02096114: ; 0x02096114
	push {r4, lr}
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209612A
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl ov58_021D2434
_0209612A:
	pop {r4, pc}
	thumb_func_end sub_02096114

	thumb_func_start sub_0209612C
sub_0209612C: ; 0x0209612C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0209613E
	bl GF_AssertFail
_0209613E:
	bl sub_0203608C
	cmp r0, #0
	bne _02096162
	ldr r0, _0209616C ; =0x000093FC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0209615E
	add r0, sp, #0
	strb r5, [r0]
	mov r0, #0x7b
	add r1, sp, #0
	mov r2, #1
	bl sub_02035AC4
	b _02096162
_0209615E:
	mov r1, #1
	str r1, [r4, r0]
_02096162:
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0209616C: .word 0x000093FC
	thumb_func_end sub_0209612C

	thumb_func_start sub_02096170
sub_02096170: ; 0x02096170
	ldr r0, _02096178 ; =0x000093F4
	mov r1, #1
	str r1, [r3, r0]
	bx lr
	; .align 2, 0
_02096178: .word 0x000093F4
	thumb_func_end sub_02096170

	thumb_func_start sub_0209617C
sub_0209617C: ; 0x0209617C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb5
	mov r2, #0xfa
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	lsl r2, r2, #2
	add r0, r4, #0
	mul r0, r2
	add r0, r1, r0
	ldr r1, _020961C8 ; =0x00007C10
	add r1, r5, r1
	bl MIi_CpuCopyFast
	ldr r0, _020961C8 ; =0x00007C10
	mov r2, #0
	add r1, r2, #0
	add r3, r5, r0
_020961A2:
	ldr r0, [r3, #0]
	add r1, r1, #1
	eor r2, r0
	add r3, r3, #4
	cmp r1, #0xfa
	blt _020961A2
	ldr r0, _020961CC ; =0x00007FF8
	ldr r1, _020961C8 ; =0x00007C10
	str r2, [r5, r0]
	add r0, r0, #4
	mov r2, #0x3f
	strb r4, [r5, r0]
	mov r0, #0x76
	add r1, r5, r1
	lsl r2, r2, #4
	bl sub_02035A3C
	pop {r3, r4, r5, pc}
	nop
_020961C8: .word 0x00007C10
_020961CC: .word 0x00007FF8
	thumb_func_end sub_0209617C

	thumb_func_start sub_020961D0
sub_020961D0: ; 0x020961D0
	mov r2, #2
	lsl r2, r2, #0xe
	add r2, r1, r2
	mov r1, #0x3f
	lsl r1, r1, #4
	mul r1, r0
	add r0, r2, r1
	bx lr
	thumb_func_end sub_020961D0

	thumb_func_start sub_020961E0
sub_020961E0: ; 0x020961E0
	mov r0, #4
	bx lr
	thumb_func_end sub_020961E0

	thumb_func_start sub_020961E4
sub_020961E4: ; 0x020961E4
	mov r0, #4
	bx lr
	thumb_func_end sub_020961E4

	.rodata


	.global Unk_020F5A40
Unk_020F5A40: ; 0x020F5A40
	.incbin "incbin/arm9_rodata.bin", 0x10E00, 0x528

