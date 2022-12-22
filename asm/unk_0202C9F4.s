	.include "macros/function.inc"
	.include "include/unk_0202C9F4.inc"

	

	.text


	thumb_func_start sub_0202C9F4
sub_0202C9F4: ; 0x0202C9F4
	mov r0, #0x17
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C9F4

	thumb_func_start sub_0202C9FC
sub_0202C9FC: ; 0x0202C9FC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0202C9F4
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	pop {r4, pc}
	thumb_func_end sub_0202C9FC

	thumb_func_start sub_0202CA10
sub_0202CA10: ; 0x0202CA10
	ldr r3, _0202CA18 ; =MI_CpuCopy8
	mov r2, #0x18
	bx r3
	nop
_0202CA18: .word MI_CpuCopy8
	thumb_func_end sub_0202CA10

	thumb_func_start sub_0202CA1C
sub_0202CA1C: ; 0x0202CA1C
	ldr r3, _0202CA24 ; =sub_020245BC
	mov r1, #0x15
	bx r3
	nop
_0202CA24: .word sub_020245BC
	thumb_func_end sub_0202CA1C

	thumb_func_start sub_0202CA28
sub_0202CA28: ; 0x0202CA28
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xc
	blt _0202CA36
	bl sub_02022974
_0202CA36:
	mov r0, #0x18
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202CA28

	thumb_func_start sub_0202CA40
sub_0202CA40: ; 0x0202CA40
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #0xc
	blt _0202CA50
	bl sub_02022974
_0202CA50:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202CA28
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202CA10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202CA40

	thumb_func_start sub_0202CA64
sub_0202CA64: ; 0x0202CA64
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _0202CA72
	bl sub_02022974
_0202CA72:
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202CA64

	thumb_func_start sub_0202CA7C
sub_0202CA7C: ; 0x0202CA7C
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202CA7C

	thumb_func_start sub_0202CA80
sub_0202CA80: ; 0x0202CA80
	ldrb r0, [r0, #1]
	bx lr
	thumb_func_end sub_0202CA80

	thumb_func_start sub_0202CA84
sub_0202CA84: ; 0x0202CA84
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_0202CA84

	thumb_func_start sub_0202CA88
sub_0202CA88: ; 0x0202CA88
	mov r1, #0x12
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0202CA88

	thumb_func_start sub_0202CA90
sub_0202CA90: ; 0x0202CA90
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end sub_0202CA90

	thumb_func_start sub_0202CA94
sub_0202CA94: ; 0x0202CA94
	mov r3, #0
	add r2, r1, #1
_0202CA98:
	ldrb r1, [r0]
	cmp r2, r1
	bne _0202CAA2
	mov r0, #1
	bx lr
_0202CAA2:
	add r3, r3, #1
	add r0, r0, #3
	cmp r3, #8
	blt _0202CA98
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CA94

	thumb_func_start sub_0202CAB0
sub_0202CAB0: ; 0x0202CAB0
	push {r4, r5, r6, r7}
	mov r6, #0
	add r4, r6, #0
	add r2, r1, #1
	add r3, r6, #0
_0202CABA:
	add r5, r3, #0
	add r7, r0, #0
_0202CABE:
	ldrb r1, [r7]
	cmp r2, r1
	bne _0202CAC6
	add r6, r6, #1
_0202CAC6:
	add r5, r5, #1
	add r7, r7, #3
	cmp r5, #8
	blt _0202CABE
	add r4, r4, #1
	add r0, #0x18
	cmp r4, #0xc
	blt _0202CABA
	add r0, r6, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0202CAB0

	thumb_func_start sub_0202CADC
sub_0202CADC: ; 0x0202CADC
	strb r2, [r0, r1]
	bx lr
	thumb_func_end sub_0202CADC

	thumb_func_start sub_0202CAE0
sub_0202CAE0: ; 0x0202CAE0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	sub r1, r5, #1
	add r6, r0, #0
	add r4, r2, #0
	bl sub_0202CAB0
	mov r1, #0x12
	lsl r1, r1, #4
	add r2, r6, r1
	sub r1, r5, #1
	ldrb r3, [r2, r1]
	add r0, r0, r3
	cmp r4, #0
	bge _0202CB0A
	add r0, r4, r3
	bmi _0202CB06
	strb r0, [r2, r1]
	b _0202CB1A
_0202CB06:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202CB0A:
	add r0, r0, r4
	cmp r0, #0x63
	bgt _0202CB16
	add r0, r3, r4
	strb r0, [r2, r1]
	b _0202CB1A
_0202CB16:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202CB1A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202CAE0

	thumb_func_start sub_0202CB20
sub_0202CB20: ; 0x0202CB20
	push {r4, r5, r6, lr}
	add r5, r1, #0
	sub r1, r5, #1
	add r6, r0, #0
	add r4, r2, #0
	bl sub_0202CAB0
	cmp r4, #0
	bge _0202CB48
	mov r0, #0x12
	lsl r0, r0, #4
	add r2, r6, r0
	sub r1, r5, #1
	ldrb r0, [r2, r1]
	add r0, r4, r0
	bmi _0202CB44
	strb r0, [r2, r1]
	b _0202CB6C
_0202CB44:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202CB48:
	add r0, r0, r4
	cmp r0, #0x63
	bgt _0202CB68
	mov r0, #0x12
	lsl r0, r0, #4
	add r2, r6, r0
	sub r1, r5, #1
	ldrb r0, [r2, r1]
	add r0, r0, r4
	strb r0, [r2, r1]
	ldrb r0, [r2, r1]
	cmp r0, #0x63
	blo _0202CB6C
	mov r0, #0x63
	strb r0, [r2, r1]
	b _0202CB6C
_0202CB68:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202CB6C:
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202CB20

	thumb_func_start sub_0202CB70
sub_0202CB70: ; 0x0202CB70
	push {r4, r5, r6, lr}
	add r5, r1, #0
	sub r1, r5, #1
	add r6, r0, #0
	add r4, r2, #0
	bl sub_0202CAB0
	sub r1, r5, #1
	add r2, r6, r1
	mov r1, #0x12
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	add r0, r0, r1
	cmp r4, #0
	bge _0202CB9A
	add r0, r4, r1
	bmi _0202CB96
	mov r0, #1
	pop {r4, r5, r6, pc}
_0202CB96:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202CB9A:
	add r0, r0, r4
	cmp r0, #0x63
	bgt _0202CBA4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0202CBA4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202CB70

	thumb_func_start sub_0202CBA8
sub_0202CBA8: ; 0x0202CBA8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #0
	mov r4, #1
_0202CBB0:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202CBC8
	cmp r0, #0
	beq _0202CBBE
	add r5, r5, #1
_0202CBBE:
	add r4, r4, #1
	cmp r4, #0x51
	blt _0202CBB0
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202CBA8

	thumb_func_start sub_0202CBC8
sub_0202CBC8: ; 0x0202CBC8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	sub r1, r5, #1
	add r4, r0, #0
	bl sub_0202CAB0
	sub r1, r5, #1
	add r2, r4, r1
	mov r1, #0x12
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	add r0, r0, r1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202CBC8