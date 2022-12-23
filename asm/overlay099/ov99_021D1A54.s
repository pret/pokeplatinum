	.include "macros/function.inc"
	.include "overlay099/ov99_021D1A54.inc"

	

	.text


	thumb_func_start ov99_021D1A54
ov99_021D1A54: ; 0x021D1A54
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	ldr r0, _021D1B84 ; =0x000010F8
	bne _021D1AD0
	ldr r0, [r5, r0]
	mov r1, #2
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021D1B88 ; =0x00002711
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl sub_0200CDC4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021D1B88 ; =0x00002711
	ldr r2, _021D1B84 ; =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	mov r3, #0x1c
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1B88 ; =0x00002711
	ldr r2, _021D1B84 ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	mov r3, #0x1d
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1B88 ; =0x00002711
	ldr r2, _021D1B84 ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	mov r3, #0x1e
	bl sub_0200CE54
	b _021D1B3A
_021D1AD0:
	ldr r0, [r5, r0]
	mov r1, #2
	str r0, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021D1B88 ; =0x00002711
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	bl sub_0200CDC4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021D1B88 ; =0x00002711
	ldr r2, _021D1B84 ; =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	mov r3, #0x21
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1B88 ; =0x00002711
	ldr r2, _021D1B84 ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	mov r3, #0x22
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1B88 ; =0x00002711
	ldr r2, _021D1B84 ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, r2]
	mov r3, #0x23
	bl sub_0200CE54
_021D1B3A:
	ldr r0, _021D1B8C ; =0x00001101
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _021D1B4E
	cmp r0, #2
	beq _021D1B7E
	cmp r0, #4
	beq _021D1B68
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D1B4E:
	mov r0, #4
	str r0, [sp]
	ldr r0, _021D1B90 ; =0x0000199C
	lsl r2, r4, #0x14
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_020039B0
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021D1B68:
	mov r0, #4
	str r0, [sp]
	ldr r0, _021D1B94 ; =0x0000416B
	lsl r2, r4, #0x14
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_020039B0
_021D1B7E:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D1B84: .word 0x000010F8
_021D1B88: .word 0x00002711
_021D1B8C: .word 0x00001101
_021D1B90: .word 0x0000199C
_021D1B94: .word 0x0000416B
	thumb_func_end ov99_021D1A54

	thumb_func_start ov99_021D1B98
ov99_021D1B98: ; 0x021D1B98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1BC0 ; =0x00002711
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1BC0 ; =0x00002711
	bl sub_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1BC0 ; =0x00002711
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1BC0 ; =0x00002711
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_021D1BC0: .word 0x00002711
	thumb_func_end ov99_021D1B98

	thumb_func_start ov99_021D1BC4
ov99_021D1BC4: ; 0x021D1BC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, _021D1C90 ; =0x021D4900
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r3, sp, #8
	mov r2, #6
_021D1BD4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1BD4
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, _021D1C94 ; =0x00001114
	mov r2, #8
	add r0, r5, r0
	bl MI_CpuFill8
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, sp, #8
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r4, #0]
	bl sub_0200D324
	str r4, [r6, #0]
	mov r0, #0x3c
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, sp, #8
	bl sub_0200CE6C
	add r4, r0, #0
	mov r1, #2
	bl sub_0200D364
	add r0, r4, #0
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r4, #0]
	bl sub_0200D324
	ldr r0, _021D1C98 ; =0x000010F4
	str r4, [r7, #0]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D1C38
	bl GF_AssertFail
_021D1C38:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D1C44
	mov r4, #0x1b
	b _021D1C46
_021D1C44:
	mov r4, #0x20
_021D1C46:
	mov r0, #0x4b
	add r1, r0, #0
	add r1, #0xb5
	bl sub_02018144
	ldr r1, _021D1C98 ; =0x000010F4
	mov r2, #0
	str r0, [r5, r1]
	mov r0, #0x4b
	str r0, [sp]
	add r0, r1, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r3, sp, #4
	bl sub_020071B4
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, _021D1C98 ; =0x000010F4
	mov r2, #1
	ldr r0, [r0, #0x14]
	ldr r1, [r5, r1]
	lsl r2, r2, #8
	bl MIi_CpuCopy32
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _021D1C98 ; =0x000010F4
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r1, r1, #8
	bl DC_FlushRange
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1C90: .word 0x021D4900
_021D1C94: .word 0x00001114
_021D1C98: .word 0x000010F4
	thumb_func_end ov99_021D1BC4

	thumb_func_start ov99_021D1C9C
ov99_021D1C9C: ; 0x021D1C9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	add r0, r1, #0
	bl sub_0200D0F4
	add r0, r5, #0
	bl sub_0200D0F4
	ldr r0, _021D1CC4 ; =0x000010F4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D1CC0
	bl sub_020181C4
	ldr r0, _021D1CC4 ; =0x000010F4
	mov r1, #0
	str r1, [r4, r0]
_021D1CC0:
	pop {r3, r4, r5, pc}
	nop
_021D1CC4: .word 0x000010F4
	thumb_func_end ov99_021D1C9C

	thumb_func_start ov99_021D1CC8
ov99_021D1CC8: ; 0x021D1CC8
	push {r3, r4, r5, lr}
	mov r2, #0x34
	ldr r3, _021D1CF8 ; =0x021D4A04
	mul r2, r1
	ldr r1, [r3, r2]
	add r4, r3, r2
	add r5, r0, #0
	blx r1
	ldr r1, [r4, #4]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #8]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x14]
	add r0, r5, #0
	blx r1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1CF8: .word 0x021D4A04
	thumb_func_end ov99_021D1CC8

	thumb_func_start ov99_021D1CFC
ov99_021D1CFC: ; 0x021D1CFC
	push {r3, r4, r5, lr}
	mov r2, #0x34
	ldr r3, _021D1D2C ; =0x021D4A04
	mul r2, r1
	add r4, r3, r2
	ldr r1, [r4, #0x18]
	add r5, r0, #0
	blx r1
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x24]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x28]
	add r0, r5, #0
	blx r1
	ldr r1, [r4, #0x2c]
	add r0, r5, #0
	blx r1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1D2C: .word 0x021D4A04
	thumb_func_end ov99_021D1CFC

	thumb_func_start ov99_021D1D30
ov99_021D1D30: ; 0x021D1D30
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r2, #0x34
	add r3, r4, #0
	mul r3, r2
	ldr r2, _021D1D60 ; =0x021D4A34
	ldr r1, _021D1D64 ; =0x00000FA4
	add r5, r0, #0
	ldr r2, [r2, r3]
	add r1, r5, r1
	blx r2
	add r4, r0, #0
	cmp r4, #1
	bne _021D1D5A
	ldr r0, _021D1D64 ; =0x00000FA4
	mov r2, #0x4f
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #2
	bl MI_CpuFill8
_021D1D5A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1D60: .word 0x021D4A34
_021D1D64: .word 0x00000FA4
	thumb_func_end ov99_021D1D30

	thumb_func_start ov99_021D1D68
ov99_021D1D68: ; 0x021D1D68
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x7f
	mov r2, #0x12
	mov r3, #0x4b
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D1E68 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #9
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D1E68 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #3
	mov r3, #2
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x7f
	mov r2, #0x15
	mov r3, #0x4b
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D1E68 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #0xc
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D1E68 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #6
	mov r3, #7
	bl sub_0200710C
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #8]
	mov r1, #7
	bl sub_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1E68: .word 0x000010F8
	thumb_func_end ov99_021D1D68

	thumb_func_start ov99_021D1E6C
ov99_021D1E6C: ; 0x021D1E6C
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	pop {r3, pc}
	thumb_func_end ov99_021D1E6C

	thumb_func_start ov99_021D1E90
ov99_021D1E90: ; 0x021D1E90
	ldr r3, _021D1E94 ; =ov99_021D1A54
	bx r3
	; .align 2, 0
_021D1E94: .word ov99_021D1A54
	thumb_func_end ov99_021D1E90

	thumb_func_start ov99_021D1E98
ov99_021D1E98: ; 0x021D1E98
	ldr r3, _021D1E9C ; =ov99_021D1B98
	bx r3
	; .align 2, 0
_021D1E9C: .word ov99_021D1B98
	thumb_func_end ov99_021D1E98

	thumb_func_start ov99_021D1EA0
ov99_021D1EA0: ; 0x021D1EA0
	ldr r2, _021D1EAC ; =0x000010E0
	ldr r3, _021D1EB0 ; =ov99_021D1BC4
	add r1, r0, r2
	add r2, r2, #4
	add r2, r0, r2
	bx r3
	; .align 2, 0
_021D1EAC: .word 0x000010E0
_021D1EB0: .word ov99_021D1BC4
	thumb_func_end ov99_021D1EA0

	thumb_func_start ov99_021D1EB4
ov99_021D1EB4: ; 0x021D1EB4
	ldr r2, _021D1EC0 ; =0x000010E0
	ldr r3, _021D1EC4 ; =ov99_021D1C9C
	ldr r1, [r0, r2]
	add r2, r2, #4
	ldr r2, [r0, r2]
	bx r3
	; .align 2, 0
_021D1EC0: .word 0x000010E0
_021D1EC4: .word ov99_021D1C9C
	thumb_func_end ov99_021D1EB4

	thumb_func_start ov99_021D1EC8
ov99_021D1EC8: ; 0x021D1EC8
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _021D1F3C ; =0x000010F8
	mov r1, #3
	ldr r0, [r4, r0]
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D1F40 ; =0x00002713
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl sub_0200CDC4
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D1F40 ; =0x00002713
	ldr r2, _021D1F3C ; =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1F40 ; =0x00002713
	ldr r2, _021D1F3C ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	mov r3, #1
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1F40 ; =0x00002713
	ldr r2, _021D1F3C ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	mov r3, #2
	bl sub_0200CE54
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_021D1F3C: .word 0x000010F8
_021D1F40: .word 0x00002713
	thumb_func_end ov99_021D1EC8

	thumb_func_start ov99_021D1F44
ov99_021D1F44: ; 0x021D1F44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1F6C ; =0x00002713
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1F6C ; =0x00002713
	bl sub_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1F6C ; =0x00002713
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D1F6C ; =0x00002713
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_021D1F6C: .word 0x00002713
	thumb_func_end ov99_021D1F44

	thumb_func_start ov99_021D1F70
ov99_021D1F70: ; 0x021D1F70
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	ldr r7, _021D1FB0 ; =0x000010E0
	mov r4, #2
	add r5, #8
_021D1F7C:
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	ldr r2, _021D1FB4 ; =0x021D499C
	bl sub_0200CE6C
	ldr r1, _021D1FB0 ; =0x000010E0
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, _021D1FB0 ; =0x000010E0
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D390
	ldr r0, [r5, r7]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	ble _021D1F7C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1FB0: .word 0x000010E0
_021D1FB4: .word 0x021D499C
	thumb_func_end ov99_021D1F70

	thumb_func_start ov99_021D1FB8
ov99_021D1FB8: ; 0x021D1FB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, _021D1FD4 ; =0x000010E0
	mov r4, #2
	add r5, #8
_021D1FC2:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	ble _021D1FC2
	pop {r4, r5, r6, pc}
	nop
_021D1FD4: .word 0x000010E0
	thumb_func_end ov99_021D1FB8

	thumb_func_start ov99_021D1FD8
ov99_021D1FD8: ; 0x021D1FD8
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D20E8 ; =0x000010F8
	add r6, r0, #0
	ldr r1, [r6, r1]
	add r0, #0x2c
	mov r2, #0x50
	mov r3, #0x4b
	bl sub_020170D8
	ldr r0, [r6, #0x34]
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	ldr r0, [r6, #0x34]
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	ldr r0, [r6, #0x34]
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	ldr r0, [r6, #0x34]
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	ldr r1, _021D20E8 ; =0x000010F8
	add r0, r6, #0
	ldr r1, [r6, r1]
	add r0, #0x3c
	mov r2, #0x51
	mov r3, #0x4b
	bl sub_020170D8
	ldr r0, [r6, #0x44]
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	ldr r0, [r6, #0x44]
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	ldr r0, [r6, #0x44]
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	ldr r0, [r6, #0x44]
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	add r5, r6, #0
	add r7, r6, #0
	mov r4, #0
	add r5, #0x6c
	add r7, #0x2c
_021D205C:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02017258
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #0x10
	blt _021D205C
	ldr r0, _021D20EC ; =0x000007EC
	add r7, r6, #0
	mov r5, #0
	add r4, r6, r0
	add r7, #0x3c
_021D2098:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02017258
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	add r5, r5, #1
	add r4, #0x78
	cmp r5, #0x10
	blt _021D2098
	ldr r0, _021D20F0 ; =0x00001104
	mov r1, #2
	strb r1, [r6, r0]
	add r0, r6, #0
	mov r1, #0
	bl ov99_021D4134
	add r0, r6, #0
	bl ov99_021D4170
	ldr r0, _021D20F4 ; =0x00001103
	mov r1, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D20E8: .word 0x000010F8
_021D20EC: .word 0x000007EC
_021D20F0: .word 0x00001104
_021D20F4: .word 0x00001103
	thumb_func_end ov99_021D1FD8

	thumb_func_start ov99_021D20F8
ov99_021D20F8: ; 0x021D20F8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0x2c
_021D2102:
	add r0, r5, #0
	bl sub_02017110
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _021D2102
	ldr r0, _021D2118 ; =0x00001103
	mov r1, #0
	strb r1, [r6, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2118: .word 0x00001103
	thumb_func_end ov99_021D20F8

	thumb_func_start ov99_021D211C
ov99_021D211C: ; 0x021D211C
	push {r4, lr}
	ldr r1, _021D2148 ; =0x00001105
	add r4, r0, #0
	ldrb r1, [r4, r1]
	mov r2, #3
	mov r3, #0
	bl ov99_021D439C
	ldr r0, _021D2148 ; =0x00001105
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_0201C3C0
	pop {r4, pc}
	nop
_021D2148: .word 0x00001105
	thumb_func_end ov99_021D211C

	thumb_func_start ov99_021D214C
ov99_021D214C: ; 0x021D214C
	ldr r3, _021D2154 ; =sub_02019120
	mov r0, #3
	mov r1, #0
	bx r3
	; .align 2, 0
_021D2154: .word sub_02019120
	thumb_func_end ov99_021D214C

	thumb_func_start ov99_021D2158
ov99_021D2158: ; 0x021D2158
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2158

	thumb_func_start ov99_021D215C
ov99_021D215C: ; 0x021D215C
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D215C

	thumb_func_start ov99_021D2160
ov99_021D2160: ; 0x021D2160
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2160

	thumb_func_start ov99_021D2164
ov99_021D2164: ; 0x021D2164
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2164

	thumb_func_start ov99_021D2168
ov99_021D2168: ; 0x021D2168
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2168

	thumb_func_start ov99_021D216C
ov99_021D216C: ; 0x021D216C
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D216C

	thumb_func_start ov99_021D2170
ov99_021D2170: ; 0x021D2170
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2170

	thumb_func_start ov99_021D2174
ov99_021D2174: ; 0x021D2174
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2174

	thumb_func_start ov99_021D2178
ov99_021D2178: ; 0x021D2178
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2178

	thumb_func_start ov99_021D217C
ov99_021D217C: ; 0x021D217C
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D217C

	thumb_func_start ov99_021D2180
ov99_021D2180: ; 0x021D2180
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r4, [r5, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x7f
	mov r2, #0x13
	mov r3, #0x4b
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D22A4 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #0xa
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D22A4 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #4
	mov r3, #2
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x7f
	mov r2, #0x16
	mov r3, #0x4b
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D22A4 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #0xd
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D22A4 ; =0x000010F8
	mov r1, #7
	ldr r0, [r5, r0]
	ldr r2, [r5, #8]
	add r3, r1, #0
	bl sub_0200710C
	ldr r0, _021D22A4 ; =0x000010F8
	mov r1, #0x10
	ldr r0, [r5, r0]
	add r2, sp, #0x10
	mov r3, #0x4b
	bl sub_020071EC
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, _021D22A8 ; =0x00000FB4
	ldr r0, [r0, #0xc]
	add r1, r5, r1
	mov r2, #0x80
	bl MIi_CpuCopy16
	add r0, r6, #0
	bl sub_020181C4
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #8]
	mov r1, #7
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D22A4: .word 0x000010F8
_021D22A8: .word 0x00000FB4
	thumb_func_end ov99_021D2180

	thumb_func_start ov99_021D22AC
ov99_021D22AC: ; 0x021D22AC
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	pop {r3, pc}
	thumb_func_end ov99_021D22AC

	thumb_func_start ov99_021D22D0
ov99_021D22D0: ; 0x021D22D0
	ldr r3, _021D22D4 ; =ov99_021D1A54
	bx r3
	; .align 2, 0
_021D22D4: .word ov99_021D1A54
	thumb_func_end ov99_021D22D0

	thumb_func_start ov99_021D22D8
ov99_021D22D8: ; 0x021D22D8
	ldr r3, _021D22DC ; =ov99_021D1B98
	bx r3
	; .align 2, 0
_021D22DC: .word ov99_021D1B98
	thumb_func_end ov99_021D22D8

	thumb_func_start ov99_021D22E0
ov99_021D22E0: ; 0x021D22E0
	ldr r2, _021D22EC ; =0x000010E0
	ldr r3, _021D22F0 ; =ov99_021D1BC4
	add r1, r0, r2
	add r2, r2, #4
	add r2, r0, r2
	bx r3
	; .align 2, 0
_021D22EC: .word 0x000010E0
_021D22F0: .word ov99_021D1BC4
	thumb_func_end ov99_021D22E0

	thumb_func_start ov99_021D22F4
ov99_021D22F4: ; 0x021D22F4
	ldr r2, _021D2300 ; =0x000010E0
	ldr r3, _021D2304 ; =ov99_021D1C9C
	ldr r1, [r0, r2]
	add r2, r2, #4
	ldr r2, [r0, r2]
	bx r3
	; .align 2, 0
_021D2300: .word 0x000010E0
_021D2304: .word ov99_021D1C9C
	thumb_func_end ov99_021D22F4

	thumb_func_start ov99_021D2308
ov99_021D2308: ; 0x021D2308
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _021D237C ; =0x000010F8
	mov r1, #3
	ldr r0, [r4, r0]
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D2380 ; =0x00002714
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl sub_0200CDC4
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D2380 ; =0x00002714
	ldr r2, _021D237C ; =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D2380 ; =0x00002714
	ldr r2, _021D237C ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	mov r3, #1
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D2380 ; =0x00002714
	ldr r2, _021D237C ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	mov r3, #2
	bl sub_0200CE54
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_021D237C: .word 0x000010F8
_021D2380: .word 0x00002714
	thumb_func_end ov99_021D2308

	thumb_func_start ov99_021D2384
ov99_021D2384: ; 0x021D2384
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D23AC ; =0x00002714
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D23AC ; =0x00002714
	bl sub_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D23AC ; =0x00002714
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D23AC ; =0x00002714
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_021D23AC: .word 0x00002714
	thumb_func_end ov99_021D2384

	thumb_func_start ov99_021D23B0
ov99_021D23B0: ; 0x021D23B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	ldr r7, _021D23E8 ; =0x000010E0
	mov r4, #2
	add r5, #8
_021D23BC:
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x1c]
	ldr r2, _021D23EC ; =0x021D4968
	bl sub_0200CE6C
	ldr r1, _021D23E8 ; =0x000010E0
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D390
	ldr r0, [r5, r7]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	ble _021D23BC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D23E8: .word 0x000010E0
_021D23EC: .word 0x021D4968
	thumb_func_end ov99_021D23B0

	thumb_func_start ov99_021D23F0
ov99_021D23F0: ; 0x021D23F0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, _021D240C ; =0x000010E0
	mov r4, #2
	add r5, #8
_021D23FA:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	ble _021D23FA
	pop {r4, r5, r6, pc}
	nop
_021D240C: .word 0x000010E0
	thumb_func_end ov99_021D23F0

	thumb_func_start ov99_021D2410
ov99_021D2410: ; 0x021D2410
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D24BC ; =0x000010F8
	add r7, r0, #0
	ldr r1, [r7, r1]
	add r0, #0x2c
	mov r2, #0x4e
	mov r3, #0x4b
	bl sub_020170D8
	ldr r0, [r7, #0x34]
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	ldr r0, [r7, #0x34]
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	ldr r0, [r7, #0x34]
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	ldr r0, [r7, #0x34]
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	add r5, r7, #0
	add r6, r7, #0
	mov r4, #0
	add r5, #0x6c
	add r6, #0x2c
_021D2458:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02017258
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #0x10
	blt _021D2458
	ldr r0, _021D24C0 ; =0x000007EC
	mov r5, #0
	add r4, r7, r0
	add r6, r5, #0
_021D2492:
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02017348
	add r5, r5, #1
	add r4, #0x78
	cmp r5, #0x10
	blt _021D2492
	ldr r0, _021D24C4 ; =0x00001104
	mov r1, #1
	strb r1, [r7, r0]
	add r0, r7, #0
	bl ov99_021D4134
	add r0, r7, #0
	bl ov99_021D4170
	ldr r0, _021D24C8 ; =0x00001103
	mov r1, #1
	strb r1, [r7, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D24BC: .word 0x000010F8
_021D24C0: .word 0x000007EC
_021D24C4: .word 0x00001104
_021D24C8: .word 0x00001103
	thumb_func_end ov99_021D2410

	thumb_func_start ov99_021D24CC
ov99_021D24CC: ; 0x021D24CC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0x2c
_021D24D6:
	add r0, r5, #0
	bl sub_02017110
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _021D24D6
	ldr r0, _021D24EC ; =0x00001103
	mov r1, #0
	strb r1, [r6, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D24EC: .word 0x00001103
	thumb_func_end ov99_021D24CC

	thumb_func_start ov99_021D24F0
ov99_021D24F0: ; 0x021D24F0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r4, [r5, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x7f
	mov r2, #0x14
	mov r3, #0x4b
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D2638 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #0xb
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D2638 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #5
	mov r3, #2
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x7f
	mov r2, #0x17
	mov r3, #0x4b
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D2638 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #0xe
	mov r3, #7
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D2638 ; =0x000010F8
	ldr r2, [r5, #8]
	ldr r0, [r5, r0]
	mov r1, #8
	mov r3, #7
	bl sub_0200710C
	ldr r0, _021D2638 ; =0x000010F8
	mov r1, #0x11
	ldr r0, [r5, r0]
	add r2, sp, #0x10
	mov r3, #0x4b
	bl sub_020071EC
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, _021D263C ; =0x00000FB4
	mov r2, #1
	ldr r0, [r0, #0xc]
	add r1, r5, r1
	lsl r2, r2, #8
	bl MIi_CpuCopy16
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #0x20
	ldr r1, _021D263C ; =0x00000FB4
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r1, r5, r1
	mov r2, #0
	mov r3, #0x10
	bl sub_02002FBC
	mov r0, #0x20
	ldr r1, _021D263C ; =0x00000FB4
	str r0, [sp]
	ldr r0, [r5, #0xc]
	add r1, r5, r1
	mov r2, #1
	mov r3, #0x10
	bl sub_02002FBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r5, #8]
	mov r1, #7
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D2638: .word 0x000010F8
_021D263C: .word 0x00000FB4
	thumb_func_end ov99_021D24F0

	thumb_func_start ov99_021D2640
ov99_021D2640: ; 0x021D2640
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	pop {r3, pc}
	thumb_func_end ov99_021D2640

	thumb_func_start ov99_021D2664
ov99_021D2664: ; 0x021D2664
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	bl ov99_021D1A54
	ldr r0, _021D26DC ; =0x000010F8
	mov r1, #2
	ldr r0, [r4, r0]
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021D26E0 ; =0x00002712
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl sub_0200CDC4
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021D26E0 ; =0x00002712
	ldr r2, _021D26DC ; =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D26E0 ; =0x00002712
	ldr r2, _021D26DC ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	mov r3, #1
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D26E0 ; =0x00002712
	ldr r2, _021D26DC ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	mov r3, #2
	bl sub_0200CE54
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_021D26DC: .word 0x000010F8
_021D26E0: .word 0x00002712
	thumb_func_end ov99_021D2664

	thumb_func_start ov99_021D26E4
ov99_021D26E4: ; 0x021D26E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2710 ; =0x00002712
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2710 ; =0x00002712
	bl sub_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2710 ; =0x00002712
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2710 ; =0x00002712
	bl sub_0200D0A0
	add r0, r4, #0
	bl ov99_021D1B98
	pop {r4, pc}
	; .align 2, 0
_021D2710: .word 0x00002712
	thumb_func_end ov99_021D26E4

	thumb_func_start ov99_021D2714
ov99_021D2714: ; 0x021D2714
	push {r4, lr}
	ldr r2, _021D2750 ; =0x000010E0
	add r4, r0, #0
	add r1, r4, r2
	add r2, r2, #4
	add r2, r4, r2
	bl ov99_021D1BC4
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, _021D2754 ; =0x021D49D0
	bl sub_0200CE6C
	ldr r1, _021D2758 ; =0x000010EC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_0200D390
	ldr r0, _021D2758 ; =0x000010EC
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D3F4
	ldr r0, _021D2758 ; =0x000010EC
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r4, pc}
	; .align 2, 0
_021D2750: .word 0x000010E0
_021D2754: .word 0x021D49D0
_021D2758: .word 0x000010EC
	thumb_func_end ov99_021D2714

	thumb_func_start ov99_021D275C
ov99_021D275C: ; 0x021D275C
	push {r4, lr}
	ldr r2, _021D2778 ; =0x000010E0
	add r4, r0, #0
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	bl ov99_021D1C9C
	ldr r0, _021D277C ; =0x000010EC
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	pop {r4, pc}
	nop
_021D2778: .word 0x000010E0
_021D277C: .word 0x000010EC
	thumb_func_end ov99_021D275C

	thumb_func_start ov99_021D2780
ov99_021D2780: ; 0x021D2780
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _021D27F4 ; =0x000010F8
	mov r1, #3
	ldr r0, [r4, r0]
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D27F8 ; =0x00002715
	str r0, [sp, #0x14]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl sub_0200CDC4
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D27F8 ; =0x00002715
	ldr r2, _021D27F4 ; =0x000010F8
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D27F8 ; =0x00002715
	ldr r2, _021D27F4 ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	mov r3, #1
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D27F8 ; =0x00002715
	ldr r2, _021D27F4 ; =0x000010F8
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, r2]
	mov r3, #2
	bl sub_0200CE54
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_021D27F4: .word 0x000010F8
_021D27F8: .word 0x00002715
	thumb_func_end ov99_021D2780

	thumb_func_start ov99_021D27FC
ov99_021D27FC: ; 0x021D27FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2824 ; =0x00002715
	bl sub_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2824 ; =0x00002715
	bl sub_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2824 ; =0x00002715
	bl sub_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _021D2824 ; =0x00002715
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_021D2824: .word 0x00002715
	thumb_func_end ov99_021D27FC

	thumb_func_start ov99_021D2828
ov99_021D2828: ; 0x021D2828
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x18]
	add r4, r5, #0
	ldr r1, [r5, #0x1c]
	ldr r2, _021D287C ; =0x021D4934
	add r4, #8
	bl sub_0200CE6C
	ldr r1, _021D2880 ; =0x000010E0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_0200D390
	ldr r0, _021D2880 ; =0x000010E0
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	ldr r2, _021D2884 ; =0x021D48CC
	bl sub_0200CE6C
	ldr r1, _021D2888 ; =0x000010F0
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_0200D390
	ldr r0, _021D2888 ; =0x000010F0
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	ldr r0, _021D2888 ; =0x000010F0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D287C: .word 0x021D4934
_021D2880: .word 0x000010E0
_021D2884: .word 0x021D48CC
_021D2888: .word 0x000010F0
	thumb_func_end ov99_021D2828

	thumb_func_start ov99_021D288C
ov99_021D288C: ; 0x021D288C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D28A4 ; =0x000010E8
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	ldr r0, _021D28A8 ; =0x000010F0
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	pop {r4, pc}
	nop
_021D28A4: .word 0x000010E8
_021D28A8: .word 0x000010F0
	thumb_func_end ov99_021D288C

	thumb_func_start ov99_021D28AC
ov99_021D28AC: ; 0x021D28AC
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D2A04 ; =0x000010F8
	add r5, r0, #0
	ldr r1, [r5, r1]
	add r0, #0x2c
	mov r2, #0x52
	mov r3, #0x4b
	bl sub_020170D8
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	ldr r0, [r5, #0x34]
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	ldr r0, [r5, #0x34]
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	ldr r0, [r5, #0x34]
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	ldr r1, _021D2A04 ; =0x000010F8
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x3c
	mov r2, #0x53
	mov r3, #0x4b
	bl sub_020170D8
	ldr r0, [r5, #0x44]
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	ldr r0, [r5, #0x44]
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	ldr r0, [r5, #0x44]
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	ldr r0, [r5, #0x44]
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	ldr r1, _021D2A04 ; =0x000010F8
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x4c
	mov r2, #0x54
	mov r3, #0x4b
	bl sub_020170D8
	ldr r0, [r5, #0x54]
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	ldr r0, [r5, #0x54]
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	ldr r0, [r5, #0x54]
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	ldr r0, [r5, #0x54]
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
	ldr r1, _021D2A04 ; =0x000010F8
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x5c
	mov r2, #0x4f
	mov r3, #0x4b
	bl sub_020170D8
	add r4, r5, #0
	add r7, r5, #0
	mov r6, #0
	add r4, #0x6c
	add r7, #0x2c
_021D297C:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02017258
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	add r6, r6, #1
	add r4, #0x78
	cmp r6, #0x10
	blt _021D297C
	ldr r0, _021D2A08 ; =0x000007EC
	add r7, r5, #0
	mov r6, #0
	add r4, r5, r0
	add r7, #0x4c
_021D29B8:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02017258
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	add r6, r6, #1
	add r4, #0x78
	cmp r6, #0x10
	blt _021D29B8
	ldr r0, _021D2A0C ; =0x00001104
	mov r1, #2
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov99_021D4134
	add r0, r5, #0
	bl ov99_021D4170
	ldr r0, _021D2A10 ; =0x00001103
	mov r1, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2A04: .word 0x000010F8
_021D2A08: .word 0x000007EC
_021D2A0C: .word 0x00001104
_021D2A10: .word 0x00001103
	thumb_func_end ov99_021D28AC

	thumb_func_start ov99_021D2A14
ov99_021D2A14: ; 0x021D2A14
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #0x2c
_021D2A1E:
	add r0, r5, #0
	bl sub_02017110
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _021D2A1E
	ldr r0, _021D2A34 ; =0x00001103
	mov r1, #0
	strb r1, [r6, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D2A34: .word 0x00001103
	thumb_func_end ov99_021D2A14

	thumb_func_start ov99_021D2A38
ov99_021D2A38: ; 0x021D2A38
	push {r4, lr}
	add r4, r0, #0
	bl ov99_021D12F0
	ldr r1, _021D2A6C ; =0x00001105
	mov r0, #0
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #2
	mov r3, #1
	bl ov99_021D439C
	ldr r0, _021D2A6C ; =0x00001105
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_0201C3C0
	pop {r4, pc}
	; .align 2, 0
_021D2A6C: .word 0x00001105
	thumb_func_end ov99_021D2A38

	thumb_func_start ov99_021D2A70
ov99_021D2A70: ; 0x021D2A70
	push {r3, lr}
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	pop {r3, pc}
	thumb_func_end ov99_021D2A70

	thumb_func_start ov99_021D2A84
ov99_021D2A84: ; 0x021D2A84
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2A84

	thumb_func_start ov99_021D2A88
ov99_021D2A88: ; 0x021D2A88
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2A88

	thumb_func_start ov99_021D2A8C
ov99_021D2A8C: ; 0x021D2A8C
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2A8C

	thumb_func_start ov99_021D2A90
ov99_021D2A90: ; 0x021D2A90
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2A90

	thumb_func_start ov99_021D2A94
ov99_021D2A94: ; 0x021D2A94
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2A94

	thumb_func_start ov99_021D2A98
ov99_021D2A98: ; 0x021D2A98
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2A98

	thumb_func_start ov99_021D2A9C
ov99_021D2A9C: ; 0x021D2A9C
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2A9C

	thumb_func_start ov99_021D2AA0
ov99_021D2AA0: ; 0x021D2AA0
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2AA0

	thumb_func_start ov99_021D2AA4
ov99_021D2AA4: ; 0x021D2AA4
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2AA4

	thumb_func_start ov99_021D2AA8
ov99_021D2AA8: ; 0x021D2AA8
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2AA8

	thumb_func_start ov99_021D2AAC
ov99_021D2AAC: ; 0x021D2AAC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r4, [r5, #8]
	ldr r0, _021D2BAC ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r2, #2
	add r3, r1, #0
	bl sub_020038B0
	mov r0, #0x4b
	mov r1, #1
	bl sub_0201A778
	str r0, [r5, #0x24]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [r5, #0x24]
	add r0, r4, #0
	mov r2, #7
	bl sub_0201A7E8
	ldr r0, [r5, #0x24]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [r5, #0x24]
	bl sub_0201A9F4
	bl ov99_021D4130
	add r1, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #1
	lsl r1, r1, #8
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #0x50
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2BB0 ; =0x0001020F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r5, #0x24]
	add r2, r6, #0
	bl sub_0201D7E0
	ldr r0, [r5, #0x24]
	bl sub_0201ACCC
	add r0, r6, #0
	bl sub_020237BC
	mov r2, #0
	add r0, r4, #0
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D2BB4 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D2BB8 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	sub r1, #0x10
	bl sub_0200F44C
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	bl sub_0200F44C
	mov r0, #0
	mov r1, #0x3d
	mov r2, #3
	bl sub_0200AB4C
	ldr r0, [r5, #8]
	mov r1, #7
	bl sub_0201C3C0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021D2BAC: .word 0x021BF6DC
_021D2BB0: .word 0x0001020F
_021D2BB4: .word 0xFFFF1FFF
_021D2BB8: .word 0x04001000
	thumb_func_end ov99_021D2AAC

	thumb_func_start ov99_021D2BBC
ov99_021D2BBC: ; 0x021D2BBC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D2BDC
	bl sub_0201A8FC
	ldr r0, [r4, #0x24]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x24]
_021D2BDC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov99_021D2BBC

	thumb_func_start ov99_021D2BE0
ov99_021D2BE0: ; 0x021D2BE0
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2BE0

	thumb_func_start ov99_021D2BE4
ov99_021D2BE4: ; 0x021D2BE4
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2BE4

	thumb_func_start ov99_021D2BE8
ov99_021D2BE8: ; 0x021D2BE8
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2BE8

	thumb_func_start ov99_021D2BEC
ov99_021D2BEC: ; 0x021D2BEC
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2BEC

	thumb_func_start ov99_021D2BF0
ov99_021D2BF0: ; 0x021D2BF0
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2BF0

	thumb_func_start ov99_021D2BF4
ov99_021D2BF4: ; 0x021D2BF4
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2BF4

	thumb_func_start ov99_021D2BF8
ov99_021D2BF8: ; 0x021D2BF8
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2BF8

	thumb_func_start ov99_021D2BFC
ov99_021D2BFC: ; 0x021D2BFC
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2BFC

	thumb_func_start ov99_021D2C00
ov99_021D2C00: ; 0x021D2C00
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2C00

	thumb_func_start ov99_021D2C04
ov99_021D2C04: ; 0x021D2C04
	bx lr
	; .align 2, 0
	thumb_func_end ov99_021D2C04

	.rodata


	.global Unk_ov99_021D48CC
Unk_ov99_021D48CC: ; 0x021D48CC
	.incbin "incbin/overlay99_rodata.bin", 0x200, 0x234 - 0x200

	.global Unk_ov99_021D4900
Unk_ov99_021D4900: ; 0x021D4900
	.incbin "incbin/overlay99_rodata.bin", 0x234, 0x268 - 0x234

	.global Unk_ov99_021D4934
Unk_ov99_021D4934: ; 0x021D4934
	.incbin "incbin/overlay99_rodata.bin", 0x268, 0x29C - 0x268

	.global Unk_ov99_021D4968
Unk_ov99_021D4968: ; 0x021D4968
	.incbin "incbin/overlay99_rodata.bin", 0x29C, 0x2D0 - 0x29C

	.global Unk_ov99_021D499C
Unk_ov99_021D499C: ; 0x021D499C
	.incbin "incbin/overlay99_rodata.bin", 0x2D0, 0x304 - 0x2D0

	.global Unk_ov99_021D49D0
Unk_ov99_021D49D0: ; 0x021D49D0
	.incbin "incbin/overlay99_rodata.bin", 0x304, 0x338 - 0x304

	.global Unk_ov99_021D4A04
Unk_ov99_021D4A04: ; 0x021D4A04
	.incbin "incbin/overlay99_rodata.bin", 0x338, 0x16C

