	.include "macros/function.inc"
	.include "include/unk_02095CD4.inc"

	

	.text


	thumb_func_start sub_02095CD4
sub_02095CD4: ; 0x02095CD4
	ldr r3, _02095CE0 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _02095CE4 ; =0x020F59BC
	mov r1, #0xb
	bx r3
	nop
_02095CE0: .word sub_02032798
_02095CE4: .word 0x020F59BC
	thumb_func_end sub_02095CD4

	thumb_func_start sub_02095CE8
sub_02095CE8: ; 0x02095CE8
	cmp r0, #0xc
	bne _02095CF0
	mov r0, #0xc
	bx lr
_02095CF0:
	cmp r0, #6
	bhs _02095CF8
	add r0, r0, #6
	bx lr
_02095CF8:
	sub r0, r0, #6
	bx lr
	thumb_func_end sub_02095CE8

	thumb_func_start sub_02095CFC
sub_02095CFC: ; 0x02095CFC
	push {r4, r5, r6, lr}
	add r3, #0x88
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0]
	bl sub_0203608C
	cmp r5, r0
	beq _02095D6A
	ldr r0, _02095D6C ; =0x0000221C
	mov r2, #0x59
	ldr r0, [r4, r0]
	add r1, r6, #0
	lsl r2, r2, #4
	bl memcpy
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	bl sub_02079FEC
	mov r1, #0x59
	ldr r2, [r4, #0x58]
	lsl r1, r1, #4
	mul r1, r2
	cmp r1, r0
	blt _02095D56
	bl sub_0203608C
	cmp r0, #1
	bne _02095D46
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #0
	bl ov88_0223D058
	b _02095D64
_02095D46:
	bl sub_0203608C
	ldr r1, _02095D70 ; =0x00002218
	ldr r2, [r4, #0x50]
	ldr r1, [r4, r1]
	bl ov88_0223D098
	b _02095D64
_02095D56:
	bl sub_0203608C
	ldr r1, _02095D70 ; =0x00002218
	ldr r2, [r4, #0x50]
	ldr r1, [r4, r1]
	bl ov88_0223D098
_02095D64:
	ldr r0, [r4, #0x50]
	add r0, r0, #1
	str r0, [r4, #0x50]
_02095D6A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02095D6C: .word 0x0000221C
_02095D70: .word 0x00002218
	thumb_func_end sub_02095CFC

	thumb_func_start sub_02095D74
sub_02095D74: ; 0x02095D74
	push {r4, r5, r6, lr}
	add r3, #0x88
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0]
	bl sub_0203608C
	cmp r5, r0
	beq _02095D90
	ldrb r0, [r6]
	bl sub_02095CE8
	add r4, #0x8c
	str r0, [r4, #0]
_02095D90:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02095D74

	thumb_func_start sub_02095D94
sub_02095D94: ; 0x02095D94
	add r3, #0x88
	ldrb r2, [r2]
	ldr r1, [r3, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	str r2, [r0, #0x60]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095D94

	thumb_func_start sub_02095DA4
sub_02095DA4: ; 0x02095DA4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DA4

	thumb_func_start sub_02095DA8
sub_02095DA8: ; 0x02095DA8
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DA8

	thumb_func_start sub_02095DAC
sub_02095DAC: ; 0x02095DAC
	add r3, #0x88
	ldr r0, [r3, #0]
	mov r1, #2
	str r1, [r0, #0x54]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DAC

	thumb_func_start sub_02095DB8
sub_02095DB8: ; 0x02095DB8
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DB8

	thumb_func_start sub_02095DBC
sub_02095DBC: ; 0x02095DBC
	add r3, #0x88
	mov r0, #0x8b
	ldrb r2, [r2]
	ldr r1, [r3, #0]
	lsl r0, r0, #6
	str r2, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095DBC

	thumb_func_start sub_02095DCC
sub_02095DCC: ; 0x02095DCC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r3, #0xc]
	add r5, r2, #0
	bl sub_0202D79C
	add r4, r0, #0
	bl sub_0203608C
	cmp r6, r0
	beq _02095DF8
	mov r2, #0
_02095DE4:
	ldrb r1, [r5, r2]
	cmp r1, #0
	beq _02095DF2
	ldrb r0, [r4, r2]
	cmp r0, r1
	beq _02095DF2
	strb r1, [r4, r2]
_02095DF2:
	add r2, r2, #1
	cmp r2, #0xe
	blt _02095DE4
_02095DF8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02095DCC

	thumb_func_start sub_02095DFC
sub_02095DFC: ; 0x02095DFC
	push {r4, r5, r6, lr}
	add r3, #0x88
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0]
	bl sub_0203608C
	cmp r5, r0
	beq _02095E20
	ldr r0, _02095E24 ; =0x00002224
	add r1, r6, #0
	ldr r0, [r4, r0]
	mov r2, #1
	mov r3, #0x1a
	bl sub_02027FEC
	mov r0, #3
	str r0, [r4, #0x54]
_02095E20:
	pop {r4, r5, r6, pc}
	nop
_02095E24: .word 0x00002224
	thumb_func_end sub_02095DFC

	thumb_func_start sub_02095E28
sub_02095E28: ; 0x02095E28
	push {r4, r5, r6, lr}
	add r3, #0x88
	add r5, r0, #0
	add r6, r2, #0
	ldr r4, [r3, #0]
	bl sub_0203608C
	cmp r5, r0
	beq _02095E5A
	ldr r1, _02095E5C ; =0x00002E14
	mov r2, #0xfb
	add r3, r4, r1
	lsl r2, r2, #2
	add r1, r5, #0
	mul r1, r2
	add r0, r6, #0
	add r1, r3, r1
	sub r2, r2, #4
	bl MIi_CpuCopyFast
	mov r0, #4
	str r0, [r4, #0x54]
	mov r0, #0
	bl sub_0203632C
_02095E5A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02095E5C: .word 0x00002E14
	thumb_func_end sub_02095E28

	thumb_func_start sub_02095E60
sub_02095E60: ; 0x02095E60
	add r0, #0x88
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095E60

	thumb_func_start sub_02095E68
sub_02095E68: ; 0x02095E68
	mov r0, #0xfb
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095E68

	thumb_func_start sub_02095E70
sub_02095E70: ; 0x02095E70
	mov r0, #0xe
	bx lr
	thumb_func_end sub_02095E70

	thumb_func_start sub_02095E74
sub_02095E74: ; 0x02095E74
	mov r0, #0x88
	bx lr
	thumb_func_end sub_02095E74

	thumb_func_start sub_02095E78
sub_02095E78: ; 0x02095E78
	mov r0, #0x59
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095E78

	thumb_func_start sub_02095E80
sub_02095E80: ; 0x02095E80
	add r1, #0x88
	ldr r2, [r1, #0]
	ldr r1, _02095E94 ; =0x000022F4
	add r2, r2, r1
	mov r1, #0x59
	lsl r1, r1, #4
	mul r1, r0
	add r0, r2, r1
	bx lr
	nop
_02095E94: .word 0x000022F4
	thumb_func_end sub_02095E80

	.rodata


	.global Unk_020F59BC
Unk_020F59BC: ; 0x020F59BC
	.incbin "incbin/arm9_rodata.bin", 0x10D7C, 0x84

