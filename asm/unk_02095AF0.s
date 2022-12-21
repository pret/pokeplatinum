	.include "macros/function.inc"
	.include "include/unk_02095AF0.inc"

	

	.text


	thumb_func_start sub_02095AF0
sub_02095AF0: ; 0x02095AF0
	ldr r3, _02095AFC ; =sub_02032798
	add r2, r0, #0
	ldr r0, _02095B00 ; =0x020F58FC
	mov r1, #0x10
	bx r3
	nop
_02095AFC: .word sub_02032798
_02095B00: .word 0x020F58FC
	thumb_func_end sub_02095AF0

	thumb_func_start sub_02095B04
sub_02095B04: ; 0x02095B04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	add r4, r1, #0
	cmp r2, r0
	blt _02095B16
	bl sub_02022974
_02095B16:
	ldr r0, _02095B20 ; =0x00000985
	add r1, r4, r0
	lsl r0, r5, #0xa
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02095B20: .word 0x00000985
	thumb_func_end sub_02095B04

	thumb_func_start sub_02095B24
sub_02095B24: ; 0x02095B24
	mov r0, #0xa
	bx lr
	thumb_func_end sub_02095B24

	thumb_func_start sub_02095B28
sub_02095B28: ; 0x02095B28
	mov r0, #8
	bx lr
	thumb_func_end sub_02095B28

	thumb_func_start sub_02095B2C
sub_02095B2C: ; 0x02095B2C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02095B2C

	thumb_func_start sub_02095B30
sub_02095B30: ; 0x02095B30
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02029C64
	add r2, r0, #0
	ldrb r1, [r5, r2]
	add r0, r5, #0
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0xf8
	ldr r1, [r1, #0]
	bl sub_020C4DB0
	ldr r0, _02095B58 ; =0x00000584
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_02095B58: .word 0x00000584
	thumb_func_end sub_02095B30

	thumb_func_start sub_02095B5C
sub_02095B5C: ; 0x02095B5C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02029C64
	add r4, r0, #0
	mov r0, #0x14
	add r1, r4, #1
	bl sub_02018144
	add r5, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C4DB0
	mov r0, #0x20
	add r1, r5, #0
	add r2, r4, #1
	strb r6, [r5, r4]
	bl sub_020359DC
	cmp r0, #1
	bne _02095B90
	mov r4, #1
	b _02095B92
_02095B90:
	mov r4, #0
_02095B92:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02095B5C

	thumb_func_start sub_02095B9C
sub_02095B9C: ; 0x02095B9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_02029C64
	add r6, r0, #0
	mov r0, #1
	lsl r1, r6, #2
	lsl r0, r0, #0xa
	cmp r1, r0
	blt _02095BB8
	bl sub_02022974
_02095BB8:
	mov r7, #0
	ldr r4, [sp, #4]
	add r5, r7, #0
_02095BBE:
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xf8
	ldr r1, [r1, #0]
	add r0, r0, r5
	add r2, r6, #0
	bl sub_020C4DB0
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, r6
	cmp r7, #4
	blt _02095BBE
	ldr r1, _02095BE8 ; =0x00000584
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp, #4]
	strb r2, [r0, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02095BE8: .word 0x00000584
	thumb_func_end sub_02095B9C

	thumb_func_start sub_02095BEC
sub_02095BEC: ; 0x02095BEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02029C64
	add r6, r0, #0
	mov r1, #1
	lsl r0, r6, #2
	lsl r1, r1, #0xa
	str r0, [sp]
	cmp r0, r1
	blt _02095C0A
	bl sub_02022974
_02095C0A:
	ldr r0, _02095C44 ; =0x00000585
	mov r7, #0
	add r0, r4, r0
	str r0, [sp, #4]
	add r4, r7, #0
_02095C14:
	ldr r1, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r1, r4
	add r2, r6, #0
	bl sub_020C4DB0
	add r7, r7, #1
	add r4, r4, r6
	add r5, r5, #4
	cmp r7, #4
	blt _02095C14
	ldr r1, [sp, #4]
	ldr r2, [sp]
	mov r0, #0x21
	bl sub_0203597C
	cmp r0, #1
	bne _02095C3E
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02095C3E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02095C44: .word 0x00000585
	thumb_func_end sub_02095BEC

	thumb_func_start sub_02095C48
sub_02095C48: ; 0x02095C48
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _02095C5C ; =0x000019A0
	add r0, r2, #0
	add r1, r3, r1
	add r2, r4, #0
	bl sub_020C4DB0
	pop {r4, pc}
	nop
_02095C5C: .word 0x000019A0
	thumb_func_end sub_02095C48

	thumb_func_start sub_02095C60
sub_02095C60: ; 0x02095C60
	push {r3, lr}
	add r3, r0, #0
	ldrb r0, [r3, #0x16]
	cmp r0, #0
	bne _02095C70
	str r1, [r3, #0]
	mov r0, #1
	pop {r3, pc}
_02095C70:
	ldrb r2, [r3, #0x14]
	ldrb r0, [r3, #0x15]
	cmp r2, r0
	beq _02095C7C
	mov r0, #0
	pop {r3, pc}
_02095C7C:
	str r1, [r3, #8]
	add r3, #8
	mov r0, #0x22
	add r1, r3, #0
	mov r2, #8
	bl sub_020359DC
	cmp r0, #1
	bne _02095C92
	mov r0, #1
	pop {r3, pc}
_02095C92:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02095C60

	thumb_func_start sub_02095C98
sub_02095C98: ; 0x02095C98
	ldrb r2, [r2, #4]
	add r1, r3, r0
	ldr r0, _02095CA4 ; =0x000019B0
	strb r2, [r1, r0]
	bx lr
	nop
_02095CA4: .word 0x000019B0
	thumb_func_end sub_02095C98

	thumb_func_start sub_02095CA8
sub_02095CA8: ; 0x02095CA8
	push {r3, lr}
	add r2, r0, #0
	ldrb r0, [r2, #0x16]
	cmp r0, #0
	bne _02095CB8
	strb r1, [r2, #0x10]
	mov r0, #1
	pop {r3, pc}
_02095CB8:
	strb r1, [r2, #0xc]
	add r2, #8
	add r1, r2, #0
	mov r0, #0x23
	mov r2, #8
	bl sub_020359DC
	cmp r0, #1
	bne _02095CCE
	mov r0, #1
	pop {r3, pc}
_02095CCE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02095CA8

	.rodata


	.global Unk_020F58FC
Unk_020F58FC: ; 0x020F58FC
	.incbin "incbin/arm9_rodata.bin", 0x10CBC, 0xC0

