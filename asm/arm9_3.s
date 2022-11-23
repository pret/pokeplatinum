	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_0202C834
sub_0202C834: ; 0x0202C834
	ldr r3, _0202C83C ; =sub_020245BC
	mov r1, #0x13
	bx r3
	nop
_0202C83C: .word sub_020245BC
	thumb_func_end sub_0202C834

	thumb_func_start sub_0202C840
sub_0202C840: ; 0x0202C840
	add r0, #0x20
	bx lr
	thumb_func_end sub_0202C840

	thumb_func_start sub_0202C844
sub_0202C844: ; 0x0202C844
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C844

	thumb_func_start sub_0202C848
sub_0202C848: ; 0x0202C848
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C848

	thumb_func_start sub_0202C850
sub_0202C850: ; 0x0202C850
	lsl r0, r0, #2
	str r1, [r2, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C850

	thumb_func_start sub_0202C858
sub_0202C858: ; 0x0202C858
	ldr r0, _0202C85C ; =0x00000FF8
	bx lr
	; .align 2, 0
_0202C85C: .word 0x00000FF8
	thumb_func_end sub_0202C858

	thumb_func_start sub_0202C860
sub_0202C860: ; 0x0202C860
	push {r3, lr}
	ldr r2, _0202C874 ; =0x00000FF8
	add r1, r0, #0
	mov r0, #0
	bl sub_020C4B4C
	mov r0, #0x1e
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
_0202C874: .word 0x00000FF8
	thumb_func_end sub_0202C860

	thumb_func_start sub_0202C878
sub_0202C878: ; 0x0202C878
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_0202C878

	thumb_func_start sub_0202C88C
sub_0202C88C: ; 0x0202C88C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #1
	add r5, r1, #0
	lsl r0, r0, #8
	add r4, r2, #0
	cmp r5, r0
	blt _0202C8A0
	bl sub_02022974
_0202C8A0:
	cmp r4, #0x40
	blt _0202C8A8
	bl sub_02022974
_0202C8A8:
	strb r5, [r6, #5]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	strb r4, [r6, #6]
	bl sub_0202C918
	mov r0, #0x1e
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202C88C

	thumb_func_start sub_0202C8C0
sub_0202C8C0: ; 0x0202C8C0
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_0202C8C0

	thumb_func_start sub_0202C8C4
sub_0202C8C4: ; 0x0202C8C4
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_0202C8C4

	thumb_func_start sub_0202C8C8
sub_0202C8C8: ; 0x0202C8C8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #1
	add r5, r1, #0
	lsl r0, r0, #8
	add r4, r2, #0
	cmp r5, r0
	blt _0202C8DC
	bl sub_02022974
_0202C8DC:
	cmp r4, #0x40
	blt _0202C8E4
	bl sub_02022974
_0202C8E4:
	cmp r5, #0
	bne _0202C8EC
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202C8EC:
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	asr r1, r0, #2
	sub r0, r5, #1
	lsl r0, r0, #4
	add r0, r1, r0
	add r0, r6, r0
	ldrb r3, [r0, #7]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #1
	add r1, r3, #0
	asr r1, r0
	mov r0, #3
	and r0, r1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202C8C8

	thumb_func_start sub_0202C918
sub_0202C918: ; 0x0202C918
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	cmp r3, #4
	blt _0202C92A
	bl sub_02022974
_0202C92A:
	mov r0, #1
	lsl r0, r0, #8
	cmp r5, r0
	blt _0202C936
	bl sub_02022974
_0202C936:
	cmp r4, #0x40
	blt _0202C93E
	bl sub_02022974
_0202C93E:
	cmp r5, #0
	beq _0202C98C
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	asr r2, r0, #2
	sub r0, r5, #1
	lsl r0, r0, #4
	add r0, r2, r0
	lsr r2, r4, #0x1f
	lsl r4, r4, #0x1e
	sub r4, r4, r2
	mov r3, #0x1e
	ror r4, r3
	add r2, r2, r4
	lsl r6, r2, #1
	mov r2, #3
	add r3, r2, #0
	add r1, r7, #7
	ldrb r4, [r1, r0]
	lsl r3, r6
	mov r2, #0xff
	eor r2, r3
	and r2, r4
	ldr r3, [sp]
	strb r2, [r1, r0]
	ldrb r2, [r1, r0]
	lsl r3, r6
	orr r2, r3
	strb r2, [r1, r0]
	cmp r5, #0x67
	beq _0202C986
	add r0, r7, #0
	mov r1, #1
	bl sub_0202C994
_0202C986:
	mov r0, #0x1e
	bl sub_02025C84
_0202C98C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C918

	thumb_func_start sub_0202C990
sub_0202C990: ; 0x0202C990
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_0202C990

	thumb_func_start sub_0202C994
sub_0202C994: ; 0x0202C994
	ldr r3, _0202C99C ; =sub_02025C84
	strb r1, [r0, #4]
	mov r0, #0x1e
	bx r3
	; .align 2, 0
_0202C99C: .word sub_02025C84
	thumb_func_end sub_0202C994

	thumb_func_start sub_0202C9A0
sub_0202C9A0: ; 0x0202C9A0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #3
	mov r7, #0
	mov r4, #2
	mov r6, #0xff
	add r3, r0, #0
_0202C9AE:
	ldr r1, [sp]
	add r1, r1, r7
	ldrb r2, [r1, #7]
	mov ip, r1
	mov r1, #0
_0202C9B8:
	add r5, r2, #0
	asr r5, r1
	and r5, r3
	cmp r5, #1
	bne _0202C9D8
	add r5, r0, #0
	lsl r5, r1
	eor r5, r6
	and r2, r5
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	add r2, r4, #0
	lsl r2, r1
	orr r2, r5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_0202C9D8:
	add r1, r1, #2
	cmp r1, #8
	blt _0202C9B8
	mov r1, ip
	strb r2, [r1, #7]
	mov r1, #0xff
	add r7, r7, #1
	lsl r1, r1, #4
	cmp r7, r1
	blt _0202C9AE
	mov r0, #0x1e
	bl sub_02025C84
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C9A0

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
	bl sub_020C4CF4
	pop {r4, pc}
	thumb_func_end sub_0202C9FC

	thumb_func_start sub_0202CA10
sub_0202CA10: ; 0x0202CA10
	ldr r3, _0202CA18 ; =sub_020C4DB0
	mov r2, #0x18
	bx r3
	nop
_0202CA18: .word sub_020C4DB0
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

	thumb_func_start sub_0202CBE4
sub_0202CBE4: ; 0x0202CBE4
	mov r1, #0
	strh r1, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CBE4

	thumb_func_start sub_0202CBF0
sub_0202CBF0: ; 0x0202CBF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r6, [r5]
	ldr r0, _0202CC54 ; =0x000003E7
	cmp r6, r0
	bne _0202CC08
	ldrb r0, [r5, #2]
	cmp r0, #0x3b
	bne _0202CC08
	ldrb r0, [r5, #3]
	cmp r0, #0x3b
	beq _0202CC50
_0202CC08:
	ldrb r0, [r5, #3]
	ldrb r4, [r5, #2]
	add r7, r0, r1
	cmp r7, #0x3b
	bls _0202CC4A
	add r0, r7, #0
	mov r1, #0x3c
	bl sub_020E2178
	add r4, r4, r0
	add r0, r7, #0
	mov r1, #0x3c
	bl sub_020E2178
	add r7, r1, #0
	cmp r4, #0x3b
	bls _0202CC4A
	add r0, r4, #0
	mov r1, #0x3c
	bl sub_020E2178
	add r6, r6, r0
	add r0, r4, #0
	mov r1, #0x3c
	bl sub_020E2178
	ldr r0, _0202CC54 ; =0x000003E7
	add r4, r1, #0
	cmp r6, r0
	blo _0202CC4A
	mov r4, #0x3b
	add r6, r0, #0
	add r7, r4, #0
_0202CC4A:
	strh r6, [r5]
	strb r4, [r5, #2]
	strb r7, [r5, #3]
_0202CC50:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202CC54: .word 0x000003E7
	thumb_func_end sub_0202CBF0

	thumb_func_start sub_0202CC58
sub_0202CC58: ; 0x0202CC58
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0202CC58

	thumb_func_start sub_0202CC5C
sub_0202CC5C: ; 0x0202CC5C
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_0202CC5C

	thumb_func_start sub_0202CC60
sub_0202CC60: ; 0x0202CC60
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end sub_0202CC60

	thumb_func_start sub_0202CC64
sub_0202CC64: ; 0x0202CC64
	mov r0, #0xfb
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CC64

	thumb_func_start sub_0202CC6C
sub_0202CC6C: ; 0x0202CC6C
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0xfb
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020C4B4C
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202CC6C

	thumb_func_start sub_0202CC84
sub_0202CC84: ; 0x0202CC84
	push {r4, lr}
	mov r1, #0xfb
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	bl sub_0202CC6C
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0202CC84

	thumb_func_start sub_0202CC98
sub_0202CC98: ; 0x0202CC98
	ldr r3, _0202CCA0 ; =sub_020245BC
	mov r1, #0x16
	bx r3
	nop
_0202CCA0: .word sub_020245BC
	thumb_func_end sub_0202CC98

	thumb_func_start sub_0202CCA4
sub_0202CCA4: ; 0x0202CCA4
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0202CCA4

	thumb_func_start sub_0202CCA8
sub_0202CCA8: ; 0x0202CCA8
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CCA8

	thumb_func_start sub_0202CCB0
sub_0202CCB0: ; 0x0202CCB0
	add r0, r0, #4
	bx lr
	thumb_func_end sub_0202CCB0

	thumb_func_start sub_0202CCB4
sub_0202CCB4: ; 0x0202CCB4
	push {r4, r5, r6, r7}
	mov r5, #0
	mov r2, #0xfa
	add r4, r5, #0
	mov r6, #0xf
	lsl r2, r2, #2
_0202CCC0:
	ldrsb r7, [r1, r4]
	add r3, r0, r5
	and r7, r6
	lsl r7, r7, #0x18
	lsr r7, r7, #0x18
	sub r7, #8
	lsl r7, r7, #0x18
	asr r7, r7, #0x14
	strb r7, [r0, r5]
	ldrsb r7, [r1, r4]
	add r4, r4, #1
	add r5, r5, #2
	lsl r7, r7, #0x14
	lsr r7, r7, #0x18
	sub r7, #8
	lsl r7, r7, #0x18
	asr r7, r7, #0x14
	strb r7, [r3, #1]
	cmp r4, r2
	blt _0202CCC0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0202CCB4

	thumb_func_start sub_0202CCEC
sub_0202CCEC: ; 0x0202CCEC
	push {r4, r5, r6, r7}
	add r3, r0, #0
	add r2, r1, #0
	mov r0, #1
	mov r1, #0
	str r0, [r3, #0]
	add r0, r1, #0
_0202CCFA:
	ldrsb r4, [r2, r0]
	add r6, r3, r1
	add r7, r2, r0
	asr r5, r4, #3
	lsr r5, r5, #0x1c
	add r5, r4, r5
	lsl r4, r5, #0x14
	asr r4, r4, #0x18
	add r4, #8
	strb r4, [r6, #4]
	mov r4, #4
	ldrsb r5, [r6, r4]
	mov r4, #1
	ldrsb r4, [r7, r4]
	add r0, r0, #2
	add r1, r1, #1
	asr r7, r4, #3
	lsr r7, r7, #0x1c
	add r7, r4, r7
	lsl r4, r7, #0x14
	asr r4, r4, #0x18
	add r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x14
	orr r4, r5
	strb r4, [r6, #4]
	mov r4, #0x7d
	lsl r4, r4, #4
	cmp r0, r4
	blt _0202CCFA
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CCEC

	thumb_func_start sub_0202CD3C
sub_0202CD3C: ; 0x0202CD3C
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0xfb
	ldr r3, _0202CD4C ; =sub_020C4C14
	lsl r2, r2, #2
	bx r3
	nop
_0202CD4C: .word sub_020C4C14
	thumb_func_end sub_0202CD3C

	thumb_func_start sub_0202CD50
sub_0202CD50: ; 0x0202CD50
	mov r0, #0x6f
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CD50

	thumb_func_start sub_0202CD58
sub_0202CD58: ; 0x0202CD58
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x6f
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020C4B4C
	ldr r1, _0202CD80 ; =0x027FFC3C
	ldr r0, [r1, #0]
	ldr r1, [r1, #0]
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0202CD84 ; =0x000001BA
	strh r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl sub_0202CD94
	pop {r4, pc}
	; .align 2, 0
_0202CD80: .word 0x027FFC3C
_0202CD84: .word 0x000001BA
	thumb_func_end sub_0202CD58

	thumb_func_start sub_0202CD88
sub_0202CD88: ; 0x0202CD88
	ldr r3, _0202CD90 ; =sub_020245BC
	mov r1, #0x14
	bx r3
	nop
_0202CD90: .word sub_020245BC
	thumb_func_end sub_0202CD88

	thumb_func_start sub_0202CD94
sub_0202CD94: ; 0x0202CD94
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0202CDBE
	mov r1, #0x6d
	add r0, r4, #4
	lsl r1, r1, #2
	bl sub_0201D5B8
	mov r3, #0x6e
	lsl r3, r3, #2
	strh r0, [r4, r3]
	sub r1, r3, #4
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldrh r3, [r4, r3]
	add r0, r4, #4
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0201D5D4
_0202CDBE:
	pop {r4, pc}
	thumb_func_end sub_0202CD94

	thumb_func_start sub_0202CDC0
sub_0202CDC0: ; 0x0202CDC0
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0202CDDE
	mov r1, #0x6d
	lsl r1, r1, #2
	add r2, r1, #4
	ldrh r3, [r4, r2]
	add r2, r1, #6
	ldrh r2, [r4, r2]
	add r0, r4, #4
	lsl r2, r2, #0x10
	add r2, r3, r2
	bl sub_0201D600
_0202CDDE:
	pop {r4, pc}
	thumb_func_end sub_0202CDC0

	thumb_func_start sub_0202CDE0
sub_0202CDE0: ; 0x0202CDE0
	push {r3, lr}
	cmp r1, #0x47
	bge _0202CDEC
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
_0202CDEC:
	cmp r1, #0x94
	bge _0202CDFE
	sub r1, #0x47
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0x47
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	pop {r3, pc}
_0202CDFE:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202CDE0

	thumb_func_start sub_0202CE08
sub_0202CE08: ; 0x0202CE08
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x47
	bge _0202CE18
	lsl r0, r4, #2
	str r2, [r5, r0]
	b _0202CE30
_0202CE18:
	cmp r4, #0x94
	bge _0202CE2C
	add r0, r4, #0
	sub r0, #0x47
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0x47
	lsl r0, r0, #2
	strh r2, [r1, r0]
	b _0202CE30
_0202CE2C:
	bl sub_02022974
_0202CE30:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDE0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202CE08

	thumb_func_start sub_0202CE3C
sub_0202CE3C: ; 0x0202CE3C
	push {r3, lr}
	cmp r0, #0x47
	bge _0202CE52
	ldr r1, _0202CE70 ; =0x02100984
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0202CE4E
	ldr r0, _0202CE74 ; =0x3B9AC9FF
	pop {r3, pc}
_0202CE4E:
	ldr r0, _0202CE78 ; =0x000F423F
	pop {r3, pc}
_0202CE52:
	cmp r0, #0x94
	bge _0202CE66
	ldr r1, _0202CE70 ; =0x02100984
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0202CE62
	ldr r0, _0202CE7C ; =0x0000FFFF
	pop {r3, pc}
_0202CE62:
	ldr r0, _0202CE80 ; =0x0000270F
	pop {r3, pc}
_0202CE66:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_0202CE70: .word 0x02100984
_0202CE74: .word 0x3B9AC9FF
_0202CE78: .word 0x000F423F
_0202CE7C: .word 0x0000FFFF
_0202CE80: .word 0x0000270F
	thumb_func_end sub_0202CE3C

	thumb_func_start sub_0202CE84
sub_0202CE84: ; 0x0202CE84
	lsl r1, r0, #1
	ldr r0, _0202CE8C ; =0x020E5C68
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0202CE8C: .word 0x020E5C68
	thumb_func_end sub_0202CE84

	thumb_func_start sub_0202CE90
sub_0202CE90: ; 0x0202CE90
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_0202CE3C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDC0
	cmp r6, r7
	bhs _0202CEB8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CE08
	b _0202CEC2
_0202CEB8:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0202CE08
_0202CEC2:
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CD94
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202CE90

	thumb_func_start sub_0202CED0
sub_0202CED0: ; 0x0202CED0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r7, r2, #0
	bl sub_0202CE3C
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202CDC0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202CDE0
	str r0, [sp]
	cmp r7, r4
	bls _0202CEF8
	add r7, r4, #0
_0202CEF8:
	ldr r0, [sp]
	cmp r0, r7
	bhs _0202CF0C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_0202CE08
	str r0, [sp]
	b _0202CF1C
_0202CF0C:
	cmp r0, r4
	bls _0202CF1C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202CE08
	str r0, [sp]
_0202CF1C:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202CD94
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202CED0

	thumb_func_start sub_0202CF28
sub_0202CF28: ; 0x0202CF28
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0202CE3C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDC0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDE0
	add r2, r0, #1
	cmp r2, r6
	bhs _0202CF56
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CE08
	b _0202CF60
_0202CF56:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CE08
_0202CF60:
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CD94
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202CF28

	thumb_func_start sub_0202CF70
sub_0202CF70: ; 0x0202CF70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r7, r2, #0
	bl sub_0202CE3C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDC0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CDE0
	add r2, r0, r7
	cmp r2, r6
	bhs _0202CFA0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CE08
	b _0202CFAA
_0202CFA0:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0202CE08
_0202CFAA:
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202CD94
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202CF70

	thumb_func_start sub_0202CFB8
sub_0202CFB8: ; 0x0202CFB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202CE3C
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202CDC0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202CDE0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0202CD94
	cmp r6, r4
	bhi _0202CFE6
	add r4, r6, #0
_0202CFE6:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202CFB8

	thumb_func_start sub_0202CFEC
sub_0202CFEC: ; 0x0202CFEC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #0x33
	blt _0202CFFA
	bl sub_02022974
_0202CFFA:
	add r0, r5, #0
	mov r1, #1
	bl sub_0202CFB8
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202CE84
	ldr r2, _0202D030 ; =0x05F5E0FF
	add r0, r4, r0
	cmp r0, r2
	bls _0202D01C
	add r0, r5, #0
	mov r1, #1
	bl sub_0202CE90
	pop {r4, r5, r6, pc}
_0202D01C:
	add r0, r6, #0
	bl sub_0202CE84
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0202CF70
	pop {r4, r5, r6, pc}
	nop
_0202D030: .word 0x05F5E0FF
	thumb_func_end sub_0202CFEC

	thumb_func_start sub_0202D034
sub_0202D034: ; 0x0202D034
	ldr r3, _0202D03C ; =sub_0202CFB8
	mov r1, #1
	bx r3
	nop
_0202D03C: .word sub_0202CFB8
	thumb_func_end sub_0202D034

	thumb_func_start sub_0202D040
sub_0202D040: ; 0x0202D040
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl sub_02026F9C
	cmp r0, #0
	bne _0202D058
	add r0, r4, #0
	mov r1, #0x16
	bl sub_0202CFEC
_0202D058:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202D040

	thumb_func_start sub_0202D05C
sub_0202D05C: ; 0x0202D05C
	mov r0, #0xe4
	bx lr
	thumb_func_end sub_0202D05C

	thumb_func_start sub_0202D060
sub_0202D060: ; 0x0202D060
	ldr r3, _0202D068 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x3c
	bx r3
	; .align 2, 0
_0202D068: .word sub_020C4CF4
	thumb_func_end sub_0202D060

	thumb_func_start sub_0202D06C
sub_0202D06C: ; 0x0202D06C
	push {r4, lr}
	mov r2, #0x5a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #1
	strb r0, [r4, #3]
	pop {r4, pc}
	thumb_func_end sub_0202D06C

	thumb_func_start sub_0202D080
sub_0202D080: ; 0x0202D080
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_02014AC4
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl sub_02014AC4
	add r0, r4, #0
	add r0, #0x10
	mov r1, #2
	bl sub_02014AC4
	add r4, #0x18
	add r0, r4, #0
	mov r1, #3
	bl sub_02014AC4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202D080

	thumb_func_start sub_0202D0AC
sub_0202D0AC: ; 0x0202D0AC
	ldr r3, _0202D0B4 ; =sub_020C4CF4
	mov r1, #0
	ldr r2, _0202D0B8 ; =0x00000B3C
	bx r3
	; .align 2, 0
_0202D0B4: .word sub_020C4CF4
_0202D0B8: .word 0x00000B3C
	thumb_func_end sub_0202D0AC

	thumb_func_start sub_0202D0BC
sub_0202D0BC: ; 0x0202D0BC
	push {r3, lr}
	cmp r1, #0xa
	bhi _0202D13A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202D0CE: ; jump table
	.short _0202D0E4 - _0202D0CE - 2 ; case 0
	.short _0202D0EC - _0202D0CE - 2 ; case 1
	.short _0202D0F0 - _0202D0CE - 2 ; case 2
	.short _0202D0F4 - _0202D0CE - 2 ; case 3
	.short _0202D0F8 - _0202D0CE - 2 ; case 4
	.short _0202D0FC - _0202D0CE - 2 ; case 5
	.short _0202D10A - _0202D0CE - 2 ; case 6
	.short _0202D118 - _0202D0CE - 2 ; case 7
	.short _0202D120 - _0202D0CE - 2 ; case 8
	.short _0202D12E - _0202D0CE - 2 ; case 9
	.short _0202D136 - _0202D0CE - 2 ; case 10
_0202D0E4:
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1d
	pop {r3, pc}
_0202D0EC:
	ldrb r0, [r0, #2]
	pop {r3, pc}
_0202D0F0:
	ldrb r0, [r0, #3]
	pop {r3, pc}
_0202D0F4:
	ldrh r0, [r0, #4]
	pop {r3, pc}
_0202D0F8:
	ldrh r0, [r0, #6]
	pop {r3, pc}
_0202D0FC:
	add r1, r2, #0
	add r0, #8
	mov r2, #4
	bl sub_020C4DB0
	mov r0, #0
	pop {r3, pc}
_0202D10A:
	add r1, r2, #0
	add r0, #0x2c
	mov r2, #0x10
	bl sub_020C4DB0
	mov r0, #0
	pop {r3, pc}
_0202D118:
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0202D120:
	add r1, r2, #0
	add r0, #0xc
	mov r2, #0x1c
	bl sub_020C4DB0
	mov r0, #0
	pop {r3, pc}
_0202D12E:
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	pop {r3, pc}
_0202D136:
	ldr r0, [r0, #0x28]
	pop {r3, pc}
_0202D13A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202D0BC

	thumb_func_start sub_0202D140
sub_0202D140: ; 0x0202D140
	push {r4, lr}
	add r3, r0, #0
	cmp r1, #0xa
	bhi _0202D1E6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202D154: ; jump table
	.short _0202D16A - _0202D154 - 2 ; case 0
	.short _0202D17C - _0202D154 - 2 ; case 1
	.short _0202D182 - _0202D154 - 2 ; case 2
	.short _0202D188 - _0202D154 - 2 ; case 3
	.short _0202D18E - _0202D154 - 2 ; case 4
	.short _0202D194 - _0202D154 - 2 ; case 5
	.short _0202D1A2 - _0202D154 - 2 ; case 6
	.short _0202D1B0 - _0202D154 - 2 ; case 7
	.short _0202D1C2 - _0202D154 - 2 ; case 8
	.short _0202D1D6 - _0202D154 - 2 ; case 9
	.short _0202D1D0 - _0202D154 - 2 ; case 10
_0202D16A:
	ldrb r1, [r3]
	mov r0, #0x1c
	bic r1, r0
	ldrb r0, [r2]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1b
	orr r0, r1
	strb r0, [r3]
	pop {r4, pc}
_0202D17C:
	ldrb r0, [r2]
	strb r0, [r3, #2]
	pop {r4, pc}
_0202D182:
	ldrb r0, [r2]
	strb r0, [r3, #3]
	pop {r4, pc}
_0202D188:
	ldrh r0, [r2]
	strh r0, [r3, #4]
	pop {r4, pc}
_0202D18E:
	ldrh r0, [r2]
	strh r0, [r3, #6]
	pop {r4, pc}
_0202D194:
	add r3, #8
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #4
	bl sub_020C4DB0
	pop {r4, pc}
_0202D1A2:
	add r3, #0x2c
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #0x10
	bl sub_020C4DB0
	pop {r4, pc}
_0202D1B0:
	ldrb r4, [r3]
	ldrb r1, [r2]
	mov r0, #1
	bic r4, r0
	mov r0, #1
	and r0, r1
	orr r0, r4
	strb r0, [r3]
	pop {r4, pc}
_0202D1C2:
	add r3, #0xc
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #0x1c
	bl sub_020C4DB0
	pop {r4, pc}
_0202D1D0:
	ldr r0, [r2, #0]
	str r0, [r3, #0x28]
	pop {r4, pc}
_0202D1D6:
	ldrb r1, [r3]
	mov r0, #0xe0
	bic r1, r0
	ldrb r0, [r2]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r3]
_0202D1E6:
	pop {r4, pc}
	thumb_func_end sub_0202D140

	thumb_func_start sub_0202D1E8
sub_0202D1E8: ; 0x0202D1E8
	push {r3, r4}
	ldrb r4, [r0, #3]
	add r1, r4, r1
	cmp r1, #0xff
	bge _0202D1F4
	strb r1, [r0, #3]
_0202D1F4:
	ldrh r1, [r0, #4]
	add r2, r1, r2
	ldr r1, _0202D210 ; =0x0000FFFF
	cmp r2, r1
	bge _0202D200
	strh r2, [r0, #4]
_0202D200:
	ldrh r1, [r0, #6]
	add r2, r1, r3
	ldr r1, _0202D210 ; =0x0000FFFF
	cmp r2, r1
	bge _0202D20C
	strh r2, [r0, #6]
_0202D20C:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0202D210: .word 0x0000FFFF
	thumb_func_end sub_0202D1E8

	thumb_func_start sub_0202D214
sub_0202D214: ; 0x0202D214
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0202D214

	thumb_func_start sub_0202D21C
sub_0202D21C: ; 0x0202D21C
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #2
	lsr r1, r1, #0x1e
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0202D21C

	thumb_func_start sub_0202D230
sub_0202D230: ; 0x0202D230
	cmp r2, #6
	bhi _0202D27E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202D240: ; jump table
	.short _0202D27E - _0202D240 - 2 ; case 0
	.short _0202D24E - _0202D240 - 2 ; case 1
	.short _0202D27E - _0202D240 - 2 ; case 2
	.short _0202D27E - _0202D240 - 2 ; case 3
	.short _0202D27E - _0202D240 - 2 ; case 4
	.short _0202D25C - _0202D240 - 2 ; case 5
	.short _0202D26E - _0202D240 - 2 ; case 6
_0202D24E:
	ldr r2, _0202D284 ; =0x0000270F
	cmp r1, r2
	bls _0202D258
	strh r2, [r0]
	b _0202D27E
_0202D258:
	strh r1, [r0]
	b _0202D27E
_0202D25C:
	ldrh r2, [r0]
	add r2, r2, r1
	ldr r1, _0202D284 ; =0x0000270F
	cmp r2, r1
	ble _0202D26A
	strh r1, [r0]
	b _0202D27E
_0202D26A:
	strh r2, [r0]
	b _0202D27E
_0202D26E:
	ldrh r2, [r0]
	cmp r2, r1
	bhs _0202D27A
	mov r1, #0
	strh r1, [r0]
	b _0202D27E
_0202D27A:
	sub r1, r2, r1
	strh r1, [r0]
_0202D27E:
	ldrh r0, [r0]
	bx lr
	nop
_0202D284: .word 0x0000270F
	thumb_func_end sub_0202D230

	thumb_func_start sub_0202D288
sub_0202D288: ; 0x0202D288
	cmp r1, #2
	beq _0202D292
	cmp r1, #3
	beq _0202D2A0
	b _0202D2BC
_0202D292:
	mov r1, #0
	strb r1, [r0, #2]
	ldrh r2, [r0, #8]
	mov r1, #0x10
	bic r2, r1
	strh r2, [r0, #8]
	b _0202D2BC
_0202D2A0:
	ldrh r1, [r0, #8]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	beq _0202D2B0
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	b _0202D2BC
_0202D2B0:
	mov r1, #1
	strb r1, [r0, #2]
	ldrh r2, [r0, #8]
	mov r1, #0x10
	orr r1, r2
	strh r1, [r0, #8]
_0202D2BC:
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_0202D288

	thumb_func_start sub_0202D2C0
sub_0202D2C0: ; 0x0202D2C0
	cmp r1, #2
	beq _0202D2CE
	cmp r1, #3
	beq _0202D2D4
	cmp r1, #4
	beq _0202D2E0
	b _0202D2EA
_0202D2CE:
	mov r1, #1
	strb r1, [r0, #3]
	b _0202D2EA
_0202D2D4:
	ldrb r1, [r0, #3]
	cmp r1, #0xa
	bhs _0202D2EA
	add r1, r1, #1
	strb r1, [r0, #3]
	b _0202D2EA
_0202D2E0:
	ldrb r1, [r0, #3]
	cmp r1, #1
	bls _0202D2EA
	sub r1, r1, #1
	strb r1, [r0, #3]
_0202D2EA:
	ldrb r0, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D2C0

	thumb_func_start sub_0202D2F0
sub_0202D2F0: ; 0x0202D2F0
	push {r3, lr}
	add r3, r0, #0
	cmp r1, #0
	bne _0202D306
	add r3, #0xc0
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, pc}
_0202D306:
	add r3, #0x18
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, pc}
	thumb_func_end sub_0202D2F0

	thumb_func_start sub_0202D314
sub_0202D314: ; 0x0202D314
	push {r3, lr}
	cmp r1, #0
	bne _0202D326
	add r1, r2, #0
	add r0, #0xc0
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, pc}
_0202D326:
	add r1, r2, #0
	add r0, #0x18
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202D314

	thumb_func_start sub_0202D334
sub_0202D334: ; 0x0202D334
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldrb r0, [r1, #2]
	mov r2, #0xfa
	lsl r2, r2, #2
	sub r0, r0, #1
	add r3, r0, #0
	mul r3, r2
	lsl r0, r3, #0x10
	lsr r4, r0, #0x10
	ldrh r3, [r1, #4]
	mov r0, #0xa
	ldrb r5, [r1, #3]
	mul r0, r3
	mov r3, #0x14
	mul r3, r5
	lsl r0, r0, #0x10
	lsl r3, r3, #0x10
	lsr r0, r0, #0x10
	lsr r3, r3, #0x10
	add r3, r0, r3
	add r0, r2, #0
	sub r0, #0x32
	cmp r3, r0
	ble _0202D36A
	mov r5, #0
	b _0202D372
_0202D36A:
	sub r2, #0x32
	sub r0, r2, r3
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0202D372:
	ldrh r1, [r1, #6]
	ldr r0, _0202D398 ; =0x000003CA
	cmp r1, r0
	bls _0202D37E
	mov r1, #0
	b _0202D38C
_0202D37E:
	add r0, #0x1e
	sub r0, r0, r1
	mov r1, #0x1e
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_0202D38C:
	add r0, r4, r5
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	strh r0, [r6, #0x16]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202D398: .word 0x000003CA
	thumb_func_end sub_0202D334

	thumb_func_start sub_0202D39C
sub_0202D39C: ; 0x0202D39C
	ldrh r0, [r0, #0x16]
	bx lr
	thumb_func_end sub_0202D39C

	thumb_func_start sub_0202D3A0
sub_0202D3A0: ; 0x0202D3A0
	push {r3, lr}
	ldrh r0, [r0, #0x16]
	mov r1, #0xfa
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202D3A0

	thumb_func_start sub_0202D3B4
sub_0202D3B4: ; 0x0202D3B4
	push {r4, r5}
	cmp r1, #5
	bne _0202D3C0
	mov r0, #0
	pop {r4, r5}
	bx lr
_0202D3C0:
	cmp r1, #6
	bne _0202D3C6
	mov r1, #5
_0202D3C6:
	cmp r2, #2
	beq _0202D3D0
	cmp r2, #3
	beq _0202D3DA
	b _0202D3EC
_0202D3D0:
	lsl r2, r1, #1
	mov r3, #0
	add r2, r0, r2
	strh r3, [r2, #0xa]
	b _0202D3EC
_0202D3DA:
	add r5, r0, #0
	add r5, #0xa
	lsl r4, r1, #1
	ldrh r3, [r5, r4]
	ldr r2, _0202D3F8 ; =0x0000FFFE
	cmp r3, r2
	bhs _0202D3EC
	add r2, r3, #1
	strh r2, [r5, r4]
_0202D3EC:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0xa]
	pop {r4, r5}
	bx lr
	nop
_0202D3F8: .word 0x0000FFFE
	thumb_func_end sub_0202D3B4

	thumb_func_start sub_0202D3FC
sub_0202D3FC: ; 0x0202D3FC
	cmp r1, #5
	bne _0202D404
	mov r0, #0
	bx lr
_0202D404:
	cmp r1, #6
	bne _0202D40A
	mov r1, #5
_0202D40A:
	add r0, #0xa
	lsl r1, r1, #1
	strh r2, [r0, r1]
	ldrh r0, [r0, r1]
	bx lr
	thumb_func_end sub_0202D3FC

	thumb_func_start sub_0202D414
sub_0202D414: ; 0x0202D414
	push {r4, lr}
	mov r3, #1
	cmp r1, #0x10
	blo _0202D424
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_0202D424:
	mov r4, #0
	cmp r1, #0
	bls _0202D438
_0202D42A:
	add r4, r4, #1
	lsl r4, r4, #0x10
	lsl r3, r3, #0x11
	lsr r4, r4, #0x10
	lsr r3, r3, #0x10
	cmp r4, r1
	blo _0202D42A
_0202D438:
	cmp r2, #0
	beq _0202D45C
	cmp r2, #1
	beq _0202D454
	cmp r2, #2
	bne _0202D468
	ldr r1, _0202D46C ; =0x0000FFFF
	eor r1, r3
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldrh r1, [r0, #8]
	and r1, r2
	strh r1, [r0, #8]
	b _0202D468
_0202D454:
	ldrh r1, [r0, #8]
	orr r1, r3
	strh r1, [r0, #8]
	b _0202D468
_0202D45C:
	ldrh r0, [r0, #8]
	add r2, r0, #0
	asr r2, r1
	mov r0, #1
	and r0, r2
	pop {r4, pc}
_0202D468:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0202D46C: .word 0x0000FFFF
	thumb_func_end sub_0202D414

	thumb_func_start sub_0202D470
sub_0202D470: ; 0x0202D470
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0202D470

	thumb_func_start sub_0202D474
sub_0202D474: ; 0x0202D474
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0202D474

	thumb_func_start sub_0202D478
sub_0202D478: ; 0x0202D478
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x17
	add r4, r2, #0
	bl sub_020245BC
	ldr r1, _0202D494 ; =0x00000ABC
	add r1, r0, r1
	lsl r0, r5, #3
	add r0, r1, r0
	add r1, r4, #0
	bl sub_02014CC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202D494: .word 0x00000ABC
	thumb_func_end sub_0202D478

	thumb_func_start sub_0202D498
sub_0202D498: ; 0x0202D498
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0202D4AC ; =0x00000ABC
	add r1, r0, r1
	lsl r0, r4, #3
	add r0, r1, r0
	pop {r4, pc}
	; .align 2, 0
_0202D4AC: .word 0x00000ABC
	thumb_func_end sub_0202D498

	thumb_func_start sub_0202D4B0
sub_0202D4B0: ; 0x0202D4B0
	push {r3, r4, r5, r6}
	add r4, r3, #0
	mov r3, #1
	cmp r2, #0
	beq _0202D510
	cmp r2, #0xc8
	bhi _0202D510
	cmp r1, #0
	beq _0202D510
	cmp r1, #0xa
	bhi _0202D510
	sub r5, r2, #1
	sub r2, r1, #1
	mov r1, #0xc8
	mul r1, r2
	add r1, r5, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	lsr r6, r1, #0x1f
	lsl r5, r1, #0x1d
	sub r5, r5, r6
	mov r2, #0x1d
	ror r5, r2
	add r2, r6, r5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsl r3, r2
	lsl r2, r3, #0x18
	lsl r1, r1, #0x15
	lsr r5, r2, #0x18
	add r3, r0, #4
	lsr r2, r1, #0x18
	ldrb r1, [r3, r2]
	orr r1, r5
	strb r1, [r3, r2]
	ldr r3, [r4, #0]
	ldr r1, [r4, #8]
	lsl r5, r3, #0x18
	ldr r3, [r4, #4]
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	lsr r3, r3, #8
	ldr r2, [r4, #0xc]
	lsr r1, r1, #0x10
	orr r3, r5
	orr r1, r3
	orr r1, r2
	str r1, [r0, #0]
_0202D510:
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end sub_0202D4B0

	thumb_func_start sub_0202D514
sub_0202D514: ; 0x0202D514
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #0
	mov r2, #0xfa
	bl sub_020C4CF4
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202D514

	thumb_func_start sub_0202D530
sub_0202D530: ; 0x0202D530
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	cmp r3, r2
	bls _0202D53C
	mov r0, #1
	bx lr
_0202D53C:
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	cmp r3, r2
	bls _0202D548
	mov r0, #1
	bx lr
_0202D548:
	ldr r2, [r0, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bls _0202D554
	mov r0, #1
	bx lr
_0202D554:
	mov r0, #0
	bx lr
	thumb_func_end sub_0202D530

	thumb_func_start sub_0202D558
sub_0202D558: ; 0x0202D558
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	mov r7, #1
	cmp r6, #0xc8
	bhi _0202D56C
	cmp r4, #0xa
	bls _0202D572
_0202D56C:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202D572:
	ldr r0, [r5, #0]
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	lsr r1, r0, #8
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r3, #0
	add r1, sp, #0
	bl sub_0202D530
	cmp r0, #0
	beq _0202D5AA
	add r0, r5, #0
	bl sub_0202D514
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202D5AA:
	sub r1, r4, #1
	mov r0, #0xc8
	mul r0, r1
	sub r2, r6, #1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	add r0, r5, r0
	sub r2, r2, r3
	mov r1, #0x1d
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r7, #0
	lsl r2, r1
	lsl r1, r2, #0x18
	ldrb r0, [r0, #4]
	lsr r1, r1, #0x18
	tst r0, r1
	beq _0202D5E2
	add sp, #0x10
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202D5E2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202D558

	thumb_func_start sub_0202D5E8
sub_0202D5E8: ; 0x0202D5E8
	add r0, #0xfe
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D5E8

	thumb_func_start sub_0202D5F0
sub_0202D5F0: ; 0x0202D5F0
	add r0, #0xff
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D5F0

	thumb_func_start sub_0202D5F8
sub_0202D5F8: ; 0x0202D5F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x41
	add r4, r2, #0
	lsl r1, r1, #2
	ldr r2, _0202D620 ; =0x0000063C
	add r1, r5, r1
	add r6, r3, #0
	bl sub_020C4DB0
	ldr r0, _0202D624 ; =0x00000101
	strb r4, [r5, r0]
	sub r0, r0, #1
	strb r6, [r5, r0]
	mov r0, #1
	add r5, #0xfe
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_0202D620: .word 0x0000063C
_0202D624: .word 0x00000101
	thumb_func_end sub_0202D5F8

	thumb_func_start sub_0202D628
sub_0202D628: ; 0x0202D628
	ldr r2, _0202D638 ; =0x00000101
	ldrb r3, [r0, r2]
	sub r2, r2, #1
	strb r3, [r1]
	ldrb r0, [r0, r2]
	strb r0, [r1, #1]
	bx lr
	nop
_0202D638: .word 0x00000101
	thumb_func_end sub_0202D628

	thumb_func_start sub_0202D63C
sub_0202D63C: ; 0x0202D63C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x41
	lsl r1, r1, #2
	add r5, r0, r1
	mov r0, #0xe4
	add r4, r2, #0
	mul r4, r0
	ldr r0, _0202D6D8 ; =0x00002710
	add r7, r6, #0
	str r0, [r6, #0]
	add r0, r5, r4
	add r0, #0xc9
	ldrb r0, [r0]
	add r7, #0x30
	strh r0, [r6, #4]
	add r0, r5, r4
	add r0, #0xc8
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0202D692
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0x16
	mov r3, #0xb
	bl sub_0200B144
	add r1, r5, r4
	add r1, #0xc8
	ldrb r1, [r1]
	add r2, r6, #0
	str r0, [sp]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	add r1, #0x16
	add r2, #8
	bl sub_0200B240
	ldr r0, [sp]
	bl sub_0200B190
	b _0202D6A0
_0202D692:
	add r0, r5, r4
	add r1, r6, #0
	add r0, #0xa8
	add r1, #8
	mov r2, #0x10
	bl sub_020C4DB0
_0202D6A0:
	add r0, r5, r4
	add r1, r6, #0
	add r0, #0xca
	add r1, #0x18
	mov r2, #8
	bl sub_020C4DB0
	add r0, r5, r4
	add r1, r6, #0
	add r0, #0xd2
	add r1, #0x20
	mov r2, #8
	bl sub_020C4DB0
	add r0, r5, r4
	add r6, #0x28
	add r0, #0xda
	add r1, r6, #0
	mov r2, #8
	bl sub_020C4DB0
	add r0, r5, r4
	add r1, r7, #0
	mov r2, #0xa8
	bl sub_020C4DB0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202D6D8: .word 0x00002710
	thumb_func_end sub_0202D63C

	thumb_func_start sub_0202D6DC
sub_0202D6DC: ; 0x0202D6DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0x1d
	add r4, r2, #0
	lsl r1, r1, #6
	mov r2, #0xff
	add r1, r5, r1
	lsl r2, r2, #2
	add r6, r3, #0
	bl sub_020C4DB0
	ldr r0, _0202D704 ; =0x00000103
	strb r4, [r5, r0]
	sub r0, r0, #1
	strb r6, [r5, r0]
	mov r0, #1
	add r5, #0xff
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202D704: .word 0x00000103
	thumb_func_end sub_0202D6DC

	thumb_func_start sub_0202D708
sub_0202D708: ; 0x0202D708
	ldr r2, _0202D718 ; =0x00000103
	ldrb r3, [r0, r2]
	sub r2, r2, #1
	strb r3, [r1]
	ldrb r0, [r0, r2]
	strb r0, [r1, #1]
	bx lr
	nop
_0202D718: .word 0x00000103
	thumb_func_end sub_0202D708

	thumb_func_start sub_0202D71C
sub_0202D71C: ; 0x0202D71C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0xff
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0x1d
	lsl r0, r0, #6
	mov r2, #0xff
	add r0, r5, r0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020C4DB0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202D71C

	thumb_func_start sub_0202D740
sub_0202D740: ; 0x0202D740
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_0202D740

	thumb_func_start sub_0202D750
sub_0202D750: ; 0x0202D750
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0202D760 ; =0x00000954
	add r0, r0, r1
	pop {r3, pc}
	nop
_0202D760: .word 0x00000954
	thumb_func_end sub_0202D750

	thumb_func_start sub_0202D764
sub_0202D764: ; 0x0202D764
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0202D774 ; =0x00000ADC
	add r0, r0, r1
	pop {r3, pc}
	nop
_0202D774: .word 0x00000ADC
	thumb_func_end sub_0202D764

	thumb_func_start sub_0202D778
sub_0202D778: ; 0x0202D778
	mov r0, #0xe
	bx lr
	thumb_func_end sub_0202D778

	thumb_func_start sub_0202D77C
sub_0202D77C: ; 0x0202D77C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	bx lr
	thumb_func_end sub_0202D77C

	thumb_func_start sub_0202D79C
sub_0202D79C: ; 0x0202D79C
	ldr r3, _0202D7A4 ; =sub_020245BC
	mov r1, #0x18
	bx r3
	nop
_0202D7A4: .word sub_020245BC
	thumb_func_end sub_0202D79C

	thumb_func_start sub_0202D7A8
sub_0202D7A8: ; 0x0202D7A8
	mov r0, #0x55
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D7A8

	thumb_func_start sub_0202D7B0
sub_0202D7B0: ; 0x0202D7B0
	push {r4, lr}
	mov r2, #0x55
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	bl sub_0201D35C
	str r0, [r4, #0]
	bl sub_0201D35C
	str r0, [r4, #4]
	mov r1, #0
	add r3, r4, #0
	ldr r0, _0202D804 ; =0x0000FFFF
	str r1, [r4, #8]
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	mov r0, #0x15
	add r3, #0x10
	strb r0, [r4, #0x10]
	add r2, r1, #0
_0202D7DE:
	str r2, [r3, #4]
	strb r2, [r3, #8]
	strb r2, [r3, #9]
	strb r2, [r3, #0xa]
	strb r2, [r3, #0xb]
	add r1, r1, #1
	add r3, #8
	cmp r1, #0x15
	blt _0202D7DE
	ldr r0, _0202D808 ; =0x0000014E
	strb r2, [r4, r0]
	add r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #2
	strb r2, [r4, r1]
	add r0, r0, #3
	strb r2, [r4, r0]
	pop {r4, pc}
	nop
_0202D804: .word 0x0000FFFF
_0202D808: .word 0x0000014E
	thumb_func_end sub_0202D7B0

	thumb_func_start sub_0202D80C
sub_0202D80C: ; 0x0202D80C
	str r1, [r0, #0]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D80C

	thumb_func_start sub_0202D814
sub_0202D814: ; 0x0202D814
	push {r3, lr}
	cmp r1, #1
	beq _0202D820
	cmp r1, #2
	beq _0202D824
	b _0202D828
_0202D820:
	ldr r0, [r0, #0]
	pop {r3, pc}
_0202D824:
	ldr r0, [r0, #4]
	pop {r3, pc}
_0202D828:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0202D814

	thumb_func_start sub_0202D830
sub_0202D830: ; 0x0202D830
	add r0, #0xbc
	bx lr
	thumb_func_end sub_0202D830

	thumb_func_start sub_0202D834
sub_0202D834: ; 0x0202D834
	ldr r3, _0202D83C ; =sub_020245BC
	mov r1, #0x19
	bx r3
	nop
_0202D83C: .word sub_020245BC
	thumb_func_end sub_0202D834

	thumb_func_start sub_0202D840
sub_0202D840: ; 0x0202D840
	add r0, #0x10
	bx lr
	thumb_func_end sub_0202D840

	thumb_func_start sub_0202D844
sub_0202D844: ; 0x0202D844
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202D844

	thumb_func_start sub_0202D848
sub_0202D848: ; 0x0202D848
	strb r0, [r1]
	bx lr
	thumb_func_end sub_0202D848

	thumb_func_start sub_0202D84C
sub_0202D84C: ; 0x0202D84C
	add r1, r1, #4
	lsl r0, r0, #3
	add r0, r1, r0
	bx lr
	thumb_func_end sub_0202D84C

	thumb_func_start sub_0202D854
sub_0202D854: ; 0x0202D854
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_0202D834
	add r6, r0, #0
	mov r4, #0
	add r6, #0x10
	add r7, r4, #0
_0202D864:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_0202D84C
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0202D87C
	sub r1, r1, r5
	str r1, [r0, #0]
	bpl _0202D87C
	str r7, [r0, #0]
_0202D87C:
	add r4, r4, #1
	cmp r4, #0x15
	blt _0202D864
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202D854

	thumb_func_start sub_0202D884
sub_0202D884: ; 0x0202D884
	push {r3, lr}
	bl sub_0202D834
	ldr r1, _0202D894 ; =0x0000014E
	mov r2, #1
	strb r2, [r0, r1]
	pop {r3, pc}
	nop
_0202D894: .word 0x0000014E
	thumb_func_end sub_0202D884

	thumb_func_start sub_0202D898
sub_0202D898: ; 0x0202D898
	ldr r1, _0202D8A0 ; =0x0000014E
	ldrb r0, [r0, r1]
	bx lr
	nop
_0202D8A0: .word 0x0000014E
	thumb_func_end sub_0202D898

	thumb_func_start sub_0202D8A4
sub_0202D8A4: ; 0x0202D8A4
	add r2, r0, #0
	add r2, #0xc8
	ldr r3, [r2, #0]
	cmp r3, r1
	beq _0202D8B8
	add r2, r0, #0
	add r2, #0xcc
	str r3, [r2, #0]
	add r0, #0xc8
	str r1, [r0, #0]
_0202D8B8:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D8A4

	thumb_func_start sub_0202D8BC
sub_0202D8BC: ; 0x0202D8BC
	add r0, #0xcc
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D8BC

	thumb_func_start sub_0202D8C4
sub_0202D8C4: ; 0x0202D8C4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _0202D8D2
	bl sub_02022974
_0202D8D2:
	mov r0, #0x52
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202D8C4

	thumb_func_start sub_0202D8DC
sub_0202D8DC: ; 0x0202D8DC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _0202D8EC
	bl sub_02022974
_0202D8EC:
	mov r0, #0x52
	add r1, r5, r4
	lsl r0, r0, #2
	strb r6, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202D8DC

	thumb_func_start sub_0202D8F8
sub_0202D8F8: ; 0x0202D8F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _0202D906
	bl sub_02022974
_0202D906:
	mov r0, #0x14
	mul r0, r4
	add r0, r5, r0
	add r0, #0xe2
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202D8F8

	thumb_func_start sub_0202D914
sub_0202D914: ; 0x0202D914
	ldr r2, [r0, #0]
	mov r1, #0x14
	mov r0, #0
_0202D91A:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0202D91A
	bx lr
	thumb_func_end sub_0202D914

	thumb_func_start sub_0202D924
sub_0202D924: ; 0x0202D924
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _0202D932
	bl sub_02022974
_0202D932:
	mov r0, #0x14
	add r5, #0xd0
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202D924

	thumb_func_start sub_0202D93C
sub_0202D93C: ; 0x0202D93C
	cmp r1, #8
	bhi _0202D97C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202D94C: ; jump table
	.short _0202D97C - _0202D94C - 2 ; case 0
	.short _0202D95E - _0202D94C - 2 ; case 1
	.short _0202D962 - _0202D94C - 2 ; case 2
	.short _0202D966 - _0202D94C - 2 ; case 3
	.short _0202D96A - _0202D94C - 2 ; case 4
	.short _0202D96E - _0202D94C - 2 ; case 5
	.short _0202D972 - _0202D94C - 2 ; case 6
	.short _0202D976 - _0202D94C - 2 ; case 7
	.short _0202D97A - _0202D94C - 2 ; case 8
_0202D95E:
	ldr r0, [r0, #0]
	bx lr
_0202D962:
	ldr r0, [r0, #4]
	bx lr
_0202D966:
	ldr r0, [r0, #8]
	bx lr
_0202D96A:
	ldrh r0, [r0, #0xc]
	bx lr
_0202D96E:
	ldrh r0, [r0, #0xe]
	bx lr
_0202D972:
	ldrb r0, [r0, #0x10]
	bx lr
_0202D976:
	ldrb r0, [r0, #0x11]
	bx lr
_0202D97A:
	ldrb r0, [r0, #0x12]
_0202D97C:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D93C

	thumb_func_start sub_0202D980
sub_0202D980: ; 0x0202D980
	cmp r1, #8
	bhi _0202D9C0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202D990: ; jump table
	.short _0202D9C0 - _0202D990 - 2 ; case 0
	.short _0202D9A2 - _0202D990 - 2 ; case 1
	.short _0202D9A6 - _0202D990 - 2 ; case 2
	.short _0202D9AA - _0202D990 - 2 ; case 3
	.short _0202D9AE - _0202D990 - 2 ; case 4
	.short _0202D9B2 - _0202D990 - 2 ; case 5
	.short _0202D9B6 - _0202D990 - 2 ; case 6
	.short _0202D9BA - _0202D990 - 2 ; case 7
	.short _0202D9BE - _0202D990 - 2 ; case 8
_0202D9A2:
	str r2, [r0, #0]
	bx lr
_0202D9A6:
	str r2, [r0, #4]
	bx lr
_0202D9AA:
	str r2, [r0, #8]
	bx lr
_0202D9AE:
	strh r2, [r0, #0xc]
	bx lr
_0202D9B2:
	strh r2, [r0, #0xe]
	bx lr
_0202D9B6:
	strb r2, [r0, #0x10]
	bx lr
_0202D9BA:
	strb r2, [r0, #0x11]
	bx lr
_0202D9BE:
	strb r2, [r0, #0x12]
_0202D9C0:
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202D980

	thumb_func_start sub_0202D9C4
sub_0202D9C4: ; 0x0202D9C4
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0202D9C4

	thumb_func_start sub_0202D9CC
sub_0202D9CC: ; 0x0202D9CC
	ldr r1, _0202D9D4 ; =0x0000014F
	add r0, r0, r1
	bx lr
	nop
_0202D9D4: .word 0x0000014F
	thumb_func_end sub_0202D9CC

	thumb_func_start sub_0202D9D8
sub_0202D9D8: ; 0x0202D9D8
	ldr r1, _0202D9E8 ; =0x0000014F
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0202D9E4
	mov r0, #1
	bx lr
_0202D9E4:
	mov r0, #0
	bx lr
	; .align 2, 0
_0202D9E8: .word 0x0000014F
	thumb_func_end sub_0202D9D8

	thumb_func_start sub_0202D9EC
sub_0202D9EC: ; 0x0202D9EC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #2
	bls _0202D9FA
	bl sub_02022974
_0202D9FA:
	ldr r0, _0202DA00 ; =0x00000151
	strb r4, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202DA00: .word 0x00000151
	thumb_func_end sub_0202D9EC

	thumb_func_start sub_0202DA04
sub_0202DA04: ; 0x0202DA04
	ldr r1, _0202DA0C ; =0x00000151
	ldrb r0, [r0, r1]
	bx lr
	nop
_0202DA0C: .word 0x00000151
	thumb_func_end sub_0202DA04

	thumb_func_start sub_0202DA10
sub_0202DA10: ; 0x0202DA10
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0202D834
	ldrh r1, [r0, #0xc]
	strh r1, [r5]
	ldrh r0, [r0, #0xe]
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DA10

	thumb_func_start sub_0202DA24
sub_0202DA24: ; 0x0202DA24
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0202D834
	add r4, r0, #0
	cmp r5, #0x10
	blo _0202DA36
	bl sub_02022974
_0202DA36:
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	strh r5, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202DA24

	thumb_func_start sub_0202DA40
sub_0202DA40: ; 0x0202DA40
	ldr r3, _0202DA48 ; =sub_020245BC
	mov r1, #0x1a
	bx r3
	nop
_0202DA48: .word sub_020245BC
	thumb_func_end sub_0202DA40

	thumb_func_start sub_0202DA4C
sub_0202DA4C: ; 0x0202DA4C
	mov r0, #0xf8
	bx lr
	thumb_func_end sub_0202DA4C

	thumb_func_start sub_0202DA50
sub_0202DA50: ; 0x0202DA50
	ldr r3, _0202DA5C ; =sub_020C4BB8
	add r1, r0, #0
	mov r0, #0
	mov r2, #0xf8
	bx r3
	nop
_0202DA5C: .word sub_020C4BB8
	thumb_func_end sub_0202DA50

	thumb_func_start sub_0202DA60
sub_0202DA60: ; 0x0202DA60
	add r0, #0xec
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA60

	thumb_func_start sub_0202DA68
sub_0202DA68: ; 0x0202DA68
	add r0, #0xec
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA68

	thumb_func_start sub_0202DA70
sub_0202DA70: ; 0x0202DA70
	ldr r3, _0202DA78 ; =sub_020C4C14
	mov r2, #0xec
	bx r3
	nop
_0202DA78: .word sub_020C4C14
	thumb_func_end sub_0202DA70

	thumb_func_start sub_0202DA7C
sub_0202DA7C: ; 0x0202DA7C
	ldr r3, _0202DA88 ; =sub_020C4C14
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0xec
	bx r3
	; .align 2, 0
_0202DA88: .word sub_020C4C14
	thumb_func_end sub_0202DA7C

	thumb_func_start sub_0202DA8C
sub_0202DA8C: ; 0x0202DA8C
	add r0, #0xf0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA8C

	thumb_func_start sub_0202DA94
sub_0202DA94: ; 0x0202DA94
	add r0, #0xf0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA94

	thumb_func_start sub_0202DA9C
sub_0202DA9C: ; 0x0202DA9C
	add r0, #0xf4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA9C

	thumb_func_start sub_0202DAA4
sub_0202DAA4: ; 0x0202DAA4
	add r0, #0xf4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DAA4

	thumb_func_start sub_0202DAAC
sub_0202DAAC: ; 0x0202DAAC
	add r0, #0xee
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DAAC

	thumb_func_start sub_0202DAB4
sub_0202DAB4: ; 0x0202DAB4
	ldr r0, _0202DAB8 ; =0x00001328
	bx lr
	; .align 2, 0
_0202DAB8: .word 0x00001328
	thumb_func_end sub_0202DAB4

	thumb_func_start sub_0202DABC
sub_0202DABC: ; 0x0202DABC
	ldr r3, _0202DAC4 ; =sub_02025C84
	mov r0, #0x1f
	bx r3
	nop
_0202DAC4: .word sub_02025C84
	thumb_func_end sub_0202DABC

	thumb_func_start sub_0202DAC8
sub_0202DAC8: ; 0x0202DAC8
	cmp r0, #0
	beq _0202DAD4
	cmp r0, #0xe
	bhs _0202DAD4
	mov r0, #1
	bx lr
_0202DAD4:
	mov r0, #0
	bx lr
	thumb_func_end sub_0202DAC8

	thumb_func_start sub_0202DAD8
sub_0202DAD8: ; 0x0202DAD8
	push {r3, r4, r5, lr}
	cmp r1, #0
	blt _0202DAFC
	cmp r1, #8
	bge _0202DAFC
	mov r2, #1
	lsl r2, r2, #8
	add r4, r0, r2
	lsl r0, r1, #6
	add r0, r1, r0
	lsl r5, r0, #2
	ldrh r0, [r4, r5]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DAFC
	add r0, r4, r5
	pop {r3, r4, r5, pc}
_0202DAFC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DAD8

	thumb_func_start sub_0202DB00
sub_0202DB00: ; 0x0202DB00
	push {r3, r4, r5, lr}
	cmp r1, #0
	blt _0202DB26
	cmp r1, #3
	bge _0202DB26
	mov r2, #0x92
	lsl r2, r2, #4
	add r4, r0, r2
	mov r0, #0xd6
	lsl r0, r0, #2
	add r5, r1, #0
	mul r5, r0
	ldrh r0, [r4, r5]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DB26
	add r0, r4, r5
	pop {r3, r4, r5, pc}
_0202DB26:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202DB00

	thumb_func_start sub_0202DB2C
sub_0202DB2C: ; 0x0202DB2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	bl sub_0202DCE0
	cmp r0, #0
	bne _0202DB48
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202DB48:
	mov r7, #0x41
	lsl r7, r7, #2
	ldr r5, [sp]
	mov r4, #0
	sub r6, r7, #4
_0202DB52:
	ldrh r0, [r5, r6]
	bl sub_0202DAC8
	cmp r0, #0
	bne _0202DB94
	lsl r0, r4, #6
	mov r2, #1
	add r0, r4, r0
	lsl r4, r0, #2
	ldr r1, [sp]
	lsl r2, r2, #8
	add r1, r1, r2
	ldr r0, [sp, #4]
	add r1, r1, r4
	add r2, r2, #4
	bl sub_020C4DB0
	ldr r1, _0202DBA8 ; =0x00000102
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, r1
	ldrh r0, [r1, r4]
	bic r0, r2
	ldr r2, [sp, #8]
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #3
	and r2, r3
	orr r0, r2
	strh r0, [r1, r4]
	mov r0, #1
	str r0, [sp, #0xc]
	b _0202DB9C
_0202DB94:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #8
	blt _0202DB52
_0202DB9C:
	mov r0, #0x1f
	bl sub_02025C84
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202DBA8: .word 0x00000102
	thumb_func_end sub_0202DB2C

	thumb_func_start sub_0202DBAC
sub_0202DBAC: ; 0x0202DBAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #8]
	bl sub_0202DD08
	cmp r0, #0
	bne _0202DBC6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0202DBC6:
	ldr r1, _0202DC44 ; =0x00000152
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0202DBE4
	ldr r0, [sp]
	bl sub_0202DCE0
	cmp r0, #0
	bne _0202DBE4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0202DBE4:
	mov r7, #0xd6
	mov r6, #0x92
	ldr r5, [sp]
	mov r4, #0
	lsl r7, r7, #2
	lsl r6, r6, #4
_0202DBF0:
	ldrh r0, [r5, r6]
	bl sub_0202DAC8
	cmp r0, #0
	bne _0202DC30
	mov r2, #0x92
	ldr r1, [sp]
	lsl r2, r2, #4
	add r3, r1, r2
	mov r2, #0xd6
	lsl r2, r2, #2
	add r1, r4, #0
	mul r1, r2
	ldr r0, [sp, #4]
	add r1, r3, r1
	bl sub_020C4DB0
	ldr r1, _0202DC44 ; =0x00000152
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0202DC2A
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl sub_0202DB2C
_0202DC2A:
	mov r0, #1
	str r0, [sp, #8]
	b _0202DC38
_0202DC30:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #3
	blt _0202DBF0
_0202DC38:
	mov r0, #0x1f
	bl sub_02025C84
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202DC44: .word 0x00000152
	thumb_func_end sub_0202DBAC

	thumb_func_start sub_0202DC48
sub_0202DC48: ; 0x0202DC48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #8
	blt _0202DC56
	bl sub_02022974
_0202DC56:
	lsl r0, r5, #6
	add r0, r5, r0
	lsl r0, r0, #2
	mov r1, #1
	mov r3, #0
	add r2, r4, r0
	lsl r1, r1, #8
	strh r3, [r2, r1]
	add r1, r1, #2
	add r3, r4, r1
	ldrh r2, [r3, r0]
	mov r1, #3
	bic r2, r1
	strh r2, [r3, r0]
	mov r0, #0x1f
	bl sub_02025C84
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DC48

	thumb_func_start sub_0202DC7C
sub_0202DC7C: ; 0x0202DC7C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0202DC8A
	bl sub_02022974
_0202DC8A:
	mov r0, #0xd6
	lsl r0, r0, #2
	mul r0, r4
	add r2, r5, r0
	mov r0, #0x92
	mov r1, #0
	lsl r0, r0, #4
	strh r1, [r2, r0]
	mov r1, #0xa7
	lsl r1, r1, #4
	ldrh r1, [r2, r1]
	add r0, r5, #0
	bl sub_0202DE8C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202DDE8
	mov r0, #0x1f
	bl sub_02025C84
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DC7C

	thumb_func_start sub_0202DCB8
sub_0202DCB8: ; 0x0202DCB8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0202DCC6
	bl sub_02022974
_0202DCC6:
	mov r0, #0xd6
	lsl r0, r0, #2
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x92
	mov r2, #0
	lsl r0, r0, #4
	strh r2, [r1, r0]
	mov r0, #0x1f
	bl sub_02025C84
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DCB8

	thumb_func_start sub_0202DCE0
sub_0202DCE0: ; 0x0202DCE0
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x41
	lsl r7, r7, #2
	add r5, r0, #0
	mov r4, #0
	sub r6, r7, #4
_0202DCEC:
	ldrh r0, [r5, r6]
	bl sub_0202DAC8
	cmp r0, #0
	bne _0202DCFA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202DCFA:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #8
	blt _0202DCEC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202DCE0

	thumb_func_start sub_0202DD08
sub_0202DD08: ; 0x0202DD08
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xd6
	mov r6, #0x92
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #2
	lsl r6, r6, #4
_0202DD16:
	ldrh r0, [r5, r6]
	bl sub_0202DAC8
	cmp r0, #0
	bne _0202DD24
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202DD24:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #3
	blt _0202DD16
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202DD08

	thumb_func_start sub_0202DD30
sub_0202DD30: ; 0x0202DD30
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #8
	blt _0202DD3E
	bl sub_02022974
_0202DD3E:
	lsl r0, r4, #6
	add r0, r4, r0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #1
	lsl r0, r0, #8
	ldrh r0, [r1, r0]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DD58
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202DD58:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DD30

	thumb_func_start sub_0202DD5C
sub_0202DD5C: ; 0x0202DD5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _0202DD6A
	bl sub_02022974
_0202DD6A:
	mov r0, #0xd6
	lsl r0, r0, #2
	mul r0, r4
	add r1, r5, r0
	mov r0, #0x92
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DD84
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202DD84:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DD5C

	thumb_func_start sub_0202DD88
sub_0202DD88: ; 0x0202DD88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0202DD8E:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202DD5C
	cmp r0, #1
	bne _0202DD9E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202DD9E:
	add r4, r4, #1
	cmp r4, #3
	blt _0202DD8E
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DD88

	thumb_func_start sub_0202DDA8
sub_0202DDA8: ; 0x0202DDA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0202DDE4 ; =0x00000102
	add r7, r1, #0
	mov r6, #0
	add r4, r5, r0
_0202DDB4:
	mov r0, #1
	lsl r0, r0, #8
	ldrh r0, [r5, r0]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DDD0
	ldrh r0, [r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r7, r0
	bne _0202DDD0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202DDD0:
	mov r0, #0x41
	lsl r0, r0, #2
	add r6, r6, #1
	add r5, r5, r0
	add r4, r4, r0
	cmp r6, #8
	blt _0202DDB4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202DDE4: .word 0x00000102
	thumb_func_end sub_0202DDA8

	thumb_func_start sub_0202DDE8
sub_0202DDE8: ; 0x0202DDE8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _0202DE28 ; =0x00000102
	str r0, [sp]
	mov r6, #0
	add r4, r0, #0
	add r5, r0, r1
_0202DDF6:
	mov r0, #1
	lsl r0, r0, #8
	ldrh r0, [r4, r0]
	bl sub_0202DAC8
	cmp r0, #0
	beq _0202DE18
	ldrh r0, [r5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r7, r0
	bne _0202DE18
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0202DC48
	pop {r3, r4, r5, r6, r7, pc}
_0202DE18:
	mov r0, #0x41
	lsl r0, r0, #2
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, r0
	cmp r6, #8
	blt _0202DDF6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202DE28: .word 0x00000102
	thumb_func_end sub_0202DDE8

	thumb_func_start sub_0202DE2C
sub_0202DE2C: ; 0x0202DE2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	lsl r0, r0, #0xa
	cmp r4, r0
	blt _0202DE3E
	bl sub_02022974
_0202DE3E:
	mov r0, #1
	mov r1, #7
	add r2, r4, #0
	and r2, r1
	add r1, r0, #0
	lsl r1, r2
	asr r2, r4, #2
	lsr r2, r2, #0x1d
	add r2, r4, r2
	asr r2, r2, #3
	ldrb r2, [r5, r2]
	tst r1, r2
	bne _0202DE5A
	mov r0, #0
_0202DE5A:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DE2C

	thumb_func_start sub_0202DE5C
sub_0202DE5C: ; 0x0202DE5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	lsl r0, r0, #0xa
	cmp r4, r0
	blt _0202DE6E
	bl sub_02022974
_0202DE6E:
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r1, r0, #3
	mov r2, #7
	ldrb r0, [r5, r1]
	mov r3, #1
	and r2, r4
	lsl r3, r2
	orr r0, r3
	strb r0, [r5, r1]
	mov r0, #0x1f
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0202DE5C

	thumb_func_start sub_0202DE8C
sub_0202DE8C: ; 0x0202DE8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #1
	mov r0, #7
	and r0, r4
	add r2, r1, #0
	lsl r2, r0
	mvn r0, r2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r0, r1, #0xb
	cmp r4, r0
	blt _0202DEAC
	bl sub_02022974
_0202DEAC:
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r1, r0, #3
	ldrb r0, [r5, r1]
	and r0, r6
	strb r0, [r5, r1]
	mov r0, #0x1f
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202DE8C

	thumb_func_start sub_0202DEC4
sub_0202DEC4: ; 0x0202DEC4
	ldr r3, _0202DECC ; =sub_0202DE2C
	ldr r1, _0202DED0 ; =0x000007FF
	bx r3
	nop
_0202DECC: .word sub_0202DE2C
_0202DED0: .word 0x000007FF
	thumb_func_end sub_0202DEC4

	thumb_func_start sub_0202DED4
sub_0202DED4: ; 0x0202DED4
	ldr r3, _0202DEDC ; =sub_0202DE5C
	ldr r1, _0202DEE0 ; =0x000007FF
	bx r3
	nop
_0202DEDC: .word sub_0202DE5C
_0202DEE0: .word 0x000007FF
	thumb_func_end sub_0202DED4

	thumb_func_start sub_0202DEE4
sub_0202DEE4: ; 0x0202DEE4
	push {r3, lr}
	ldr r1, _0202DF00 ; =0x021C07A0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0202DEF6
	bl sub_0202442C
	ldr r1, _0202DF00 ; =0x021C07A0
	str r0, [r1, #0]
_0202DEF6:
	mov r0, #0x1f
	bl sub_02025C84
	pop {r3, pc}
	nop
_0202DF00: .word 0x021C07A0
	thumb_func_end sub_0202DEE4

	thumb_func_start sub_0202DF04
sub_0202DF04: ; 0x0202DF04
	ldr r0, _0202DF14 ; =0x021C07A0
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0202DF10
	mov r1, #0
	str r1, [r0, #0]
_0202DF10:
	bx lr
	nop
_0202DF14: .word 0x021C07A0
	thumb_func_end sub_0202DF04

	thumb_func_start sub_0202DF18
sub_0202DF18: ; 0x0202DF18
	push {r3, r4, r5, lr}
	ldr r4, _0202DF3C ; =0x021C07A0
	mov r5, #0
_0202DF1E:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0202DD30
	cmp r0, #1
	bne _0202DF2E
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_0202DF2E:
	add r5, r5, #1
	cmp r5, #8
	blt _0202DF1E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	nop
_0202DF3C: .word 0x021C07A0
	thumb_func_end sub_0202DF18

	thumb_func_start sub_0202DF40
sub_0202DF40: ; 0x0202DF40
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0202DF58 ; =0x021C07A0
	ldr r0, [r0, #0]
	bl sub_0202DAD8
	cmp r0, #0
	beq _0202DF54
	ldrh r0, [r0]
	pop {r3, pc}
_0202DF54:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0202DF58: .word 0x021C07A0
	thumb_func_end sub_0202DF40

	thumb_func_start sub_0202DF5C
sub_0202DF5C: ; 0x0202DF5C
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0202DF74 ; =0x021C07A0
	ldr r0, [r0, #0]
	bl sub_0202DAD8
	cmp r0, #0
	beq _0202DF70
	add r0, r0, #4
	pop {r3, pc}
_0202DF70:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0202DF74: .word 0x021C07A0
	thumb_func_end sub_0202DF5C

	thumb_func_start sub_0202DF78
sub_0202DF78: ; 0x0202DF78
	add r1, r0, #0
	ldr r0, _0202DF84 ; =0x021C07A0
	ldr r3, _0202DF88 ; =sub_0202DC48
	ldr r0, [r0, #0]
	bx r3
	nop
_0202DF84: .word 0x021C07A0
_0202DF88: .word sub_0202DC48
	thumb_func_end sub_0202DF78

	thumb_func_start sub_0202DF8C
sub_0202DF8C: ; 0x0202DF8C
	ldr r0, _0202DF90 ; =0x00002AB0
	bx lr
	; .align 2, 0
_0202DF90: .word 0x00002AB0
	thumb_func_end sub_0202DF8C

	thumb_func_start sub_0202DF94
sub_0202DF94: ; 0x0202DF94
	ldr r3, _0202DFA0 ; =sub_020C4B4C
	add r1, r0, #0
	mov r0, #0
	ldr r2, _0202DFA4 ; =0x00002AB0
	bx r3
	nop
_0202DFA0: .word sub_020C4B4C
_0202DFA4: .word 0x00002AB0
	thumb_func_end sub_0202DF94

	thumb_func_start sub_0202DFA8
sub_0202DFA8: ; 0x0202DFA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r0, #0
	bne _0202DFBA
	bl sub_02022974
_0202DFBA:
	ldr r1, _0202E138 ; =0x00002AA8
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0x1e
	blo _0202DFC8
	bl sub_02022974
_0202DFC8:
	ldr r1, _0202E13C ; =0x00002AAC
	ldr r0, [sp]
	ldr r2, [r0, r1]
	ldr r0, _0202E140 ; =0x0000270F
	cmp r2, r0
	blo _0202DFD6
	b _0202E134
_0202DFD6:
	ldr r0, [sp]
	sub r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x5b
	lsl r0, r0, #2
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r0, r0, r2
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl sub_0207A0F8
	str r0, [sp, #0x10]
	mov r0, #0xb
	mov r1, #0
	bl sub_02023790
	mov r2, #0x5a
	add r6, r0, #0
	ldr r1, [sp, #0x14]
	mov r0, #0
	lsl r2, r2, #2
	bl sub_020C4AF0
	ldr r0, [sp, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _0202E0E6
	ldr r5, [sp, #0x14]
_0202E012:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl sub_0207A0FC
	add r4, r0, #0
	bl sub_02073C88
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0202E0D6
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	strb r0, [r5, #2]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	mov r1, #0
	strb r0, [r5, #3]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_02074470
	str r0, [r5, #4]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	str r0, [r5, #8]
	add r0, r4, #0
	mov r1, #0x36
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x32]
	add r0, r4, #0
	mov r1, #0x37
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x34]
	add r0, r4, #0
	mov r1, #0x38
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x36]
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x38]
	cmp r6, #0
	beq _0202E0CE
	add r0, r4, #0
	mov r1, #0x77
	add r2, r6, #0
	bl sub_02074470
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xc
	mov r2, #0xb
	bl sub_02023DF0
	add r0, r4, #0
	mov r1, #0x91
	add r2, r6, #0
	bl sub_02074470
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x22
	mov r2, #8
	bl sub_02023DF0
	b _0202E0D4
_0202E0CE:
	ldr r0, _0202E144 ; =0x0000FFFF
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x22]
_0202E0D4:
	add r5, #0x3c
_0202E0D6:
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl sub_02073CD4
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	blt _0202E012
_0202E0E6:
	ldr r0, [sp, #8]
	mov r1, #0x5a
	ldr r2, [r0, #0]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	strh r2, [r0, r1]
	ldr r0, [sp, #8]
	add r2, r1, #2
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x14]
	add r1, r1, #3
	strb r3, [r0, r2]
	ldr r0, [sp, #8]
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x14]
	strb r2, [r0, r1]
	ldr r1, _0202E138 ; =0x00002AA8
	ldr r0, [sp]
	ldr r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	str r2, [r0, r1]
	ldr r0, [r0, r1]
	cmp r0, #0x1e
	blo _0202E11E
	ldr r0, [sp]
	mov r2, #0
	str r2, [r0, r1]
_0202E11E:
	ldr r1, _0202E13C ; =0x00002AAC
	ldr r0, [sp]
	ldr r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp]
	cmp r6, #0
	str r2, [r0, r1]
	beq _0202E134
	add r0, r6, #0
	bl sub_020237BC
_0202E134:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0202E138: .word 0x00002AA8
_0202E13C: .word 0x00002AAC
_0202E140: .word 0x0000270F
_0202E144: .word 0x0000FFFF
	thumb_func_end sub_0202DFA8

	thumb_func_start sub_0202E148
sub_0202E148: ; 0x0202E148
	push {r4, lr}
	add r4, r0, #0
	bne _0202E152
	bl sub_02022974
_0202E152:
	ldr r0, _0202E16C ; =0x00002AA8
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	blo _0202E15E
	bl sub_02022974
_0202E15E:
	ldr r0, _0202E170 ; =0x00002AAC
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	blo _0202E168
	mov r0, #0x1e
_0202E168:
	pop {r4, pc}
	nop
_0202E16C: .word 0x00002AA8
_0202E170: .word 0x00002AAC
	thumb_func_end sub_0202E148

	thumb_func_start sub_0202E174
sub_0202E174: ; 0x0202E174
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202E182
	bl sub_02022974
_0202E182:
	ldr r0, _0202E1A0 ; =0x00002AA8
	ldr r0, [r5, r0]
	cmp r0, #0x1e
	blo _0202E18E
	bl sub_02022974
_0202E18E:
	cmp r4, #0x1e
	blt _0202E196
	bl sub_02022974
_0202E196:
	ldr r0, _0202E1A4 ; =0x00002AAC
	ldr r0, [r5, r0]
	sub r0, r0, r4
	pop {r3, r4, r5, pc}
	nop
_0202E1A0: .word 0x00002AA8
_0202E1A4: .word 0x00002AAC
	thumb_func_end sub_0202E174

	thumb_func_start sub_0202E1A8
sub_0202E1A8: ; 0x0202E1A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0202E1B6
	bl sub_02022974
_0202E1B6:
	ldr r0, _0202E1F0 ; =0x00002AA8
	ldr r0, [r5, r0]
	cmp r0, #0x1e
	blo _0202E1C2
	bl sub_02022974
_0202E1C2:
	cmp r4, #0x1e
	blt _0202E1CA
	bl sub_02022974
_0202E1CA:
	ldr r0, _0202E1F0 ; =0x00002AA8
	ldr r0, [r5, r0]
	sub r0, r0, #1
	sub r2, r0, r4
	bpl _0202E1D6
	add r2, #0x1e
_0202E1D6:
	mov r1, #0x5b
	lsl r1, r1, #2
	mul r1, r2
	mov r0, #0
	add r2, r5, r1
_0202E1E0:
	ldrh r1, [r2]
	cmp r1, #0
	beq _0202E1EE
	add r0, r0, #1
	add r2, #0x3c
	cmp r0, #6
	blo _0202E1E0
_0202E1EE:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202E1F0: .word 0x00002AA8
	thumb_func_end sub_0202E1A8

	thumb_func_start sub_0202E1F4
sub_0202E1F4: ; 0x0202E1F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _0202E206
	bl sub_02022974
_0202E206:
	ldr r0, _0202E270 ; =0x00002AA8
	ldr r0, [r5, r0]
	cmp r0, #0x1e
	blo _0202E212
	bl sub_02022974
_0202E212:
	cmp r6, #0x1e
	blt _0202E21A
	bl sub_02022974
_0202E21A:
	ldr r0, _0202E270 ; =0x00002AA8
	ldr r0, [r5, r0]
	sub r0, r0, #1
	sub r1, r0, r6
	bpl _0202E226
	add r1, #0x1e
_0202E226:
	mov r0, #0x5b
	lsl r0, r0, #2
	mul r0, r1
	add r1, r5, r0
	mov r0, #0x3c
	mul r0, r7
	add r5, r1, r0
	ldrh r0, [r1, r0]
	add r1, r5, #0
	add r1, #0xc
	strh r0, [r4, #0x10]
	ldrb r0, [r5, #2]
	strb r0, [r4, #0x12]
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	ldrb r0, [r5, #3]
	strb r0, [r4, #0x13]
	ldr r0, [r4, #0]
	bl sub_02023D28
	add r1, r5, #0
	ldr r0, [r4, #4]
	add r1, #0x22
	bl sub_02023D28
	mov r1, #0
_0202E25E:
	ldrh r0, [r5, #0x32]
	add r1, r1, #1
	add r5, r5, #2
	strh r0, [r4, #0x14]
	add r4, r4, #2
	cmp r1, #4
	blt _0202E25E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202E270: .word 0x00002AA8
	thumb_func_end sub_0202E1F4

	thumb_func_start sub_0202E274
sub_0202E274: ; 0x0202E274
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r5, #0
	bne _0202E284
	bl sub_02022974
_0202E284:
	ldr r0, _0202E2C8 ; =0x00002AA8
	ldr r0, [r5, r0]
	cmp r0, #0x1e
	blo _0202E290
	bl sub_02022974
_0202E290:
	cmp r6, #0x1e
	blt _0202E298
	bl sub_02022974
_0202E298:
	ldr r0, _0202E2C8 ; =0x00002AA8
	ldr r0, [r5, r0]
	sub r0, r0, #1
	sub r2, r0, r6
	bpl _0202E2A4
	add r2, #0x1e
_0202E2A4:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r1, r2, #0
	mul r1, r0
	add r2, r5, r1
	sub r1, r0, #4
	ldrh r1, [r2, r1]
	str r1, [r4, #0]
	sub r1, r0, #2
	ldrb r1, [r2, r1]
	sub r0, r0, #1
	str r1, [r4, #4]
	ldrb r0, [r2, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
	nop
_0202E2C8: .word 0x00002AA8
	thumb_func_end sub_0202E274

	thumb_func_start sub_0202E2CC
sub_0202E2CC: ; 0x0202E2CC
	ldr r0, _0202E2D0 ; =0x00000BC8
	bx lr
	; .align 2, 0
_0202E2D0: .word 0x00000BC8
	thumb_func_end sub_0202E2CC

	thumb_func_start sub_0202E2D4
sub_0202E2D4: ; 0x0202E2D4
	push {r3, lr}
	ldr r2, _0202E2E8 ; =0x00000BC8
	add r1, r0, #0
	mov r0, #0
	bl sub_020C4BB8
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
_0202E2E8: .word 0x00000BC8
	thumb_func_end sub_0202E2D4

	thumb_func_start sub_0202E2EC
sub_0202E2EC: ; 0x0202E2EC
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	mov r0, #0
	add r1, #0xc
	mov r2, #0xc0
	bl sub_020C4BB8
	add r1, r4, #0
	mov r0, #0
	add r1, #0xcc
	mov r2, #0xc0
	bl sub_020C4BB8
	mov r1, #0x63
	lsl r1, r1, #2
	mov r0, #0
	add r1, r4, r1
	mov r2, #0xc0
	bl sub_020C4BB8
	add r0, r4, #0
	bl sub_0202E35C
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_0202E2EC

	thumb_func_start sub_0202E324
sub_0202E324: ; 0x0202E324
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, r1
	ble _0202E334
	sub r0, r0, r1
	str r0, [r4, #4]
	b _0202E354
_0202E334:
	add r0, r2, #0
	mov r1, #0xf
	bl sub_020E1F6C
	mov r0, #0xf
	sub r1, r0, r1
	str r1, [r4, #4]
	bne _0202E346
	str r0, [r4, #4]
_0202E346:
	mov r1, #0
	strb r1, [r4, #8]
	add r0, r1, #0
_0202E34C:
	strb r0, [r4, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _0202E34C
_0202E354:
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_0202E324

	thumb_func_start sub_0202E35C
sub_0202E35C: ; 0x0202E35C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl sub_0202E374
	add r0, r4, #0
	bl sub_0202E3AC
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_0202E35C

	thumb_func_start sub_0202E374
sub_0202E374: ; 0x0202E374
	ldr r3, _0202E37C ; =sub_02025C84
	strb r1, [r0, #8]
	mov r0, #0x1b
	bx r3
	; .align 2, 0
_0202E37C: .word sub_02025C84
	thumb_func_end sub_0202E374

	thumb_func_start sub_0202E380
sub_0202E380: ; 0x0202E380
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end sub_0202E380

	thumb_func_start sub_0202E384
sub_0202E384: ; 0x0202E384
	push {r3, lr}
	mov r3, #0
_0202E388:
	ldrb r2, [r0, r3]
	cmp r2, #0
	bne _0202E398
	strb r1, [r0, r3]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
_0202E398:
	add r3, r3, #1
	cmp r3, #4
	blt _0202E388
	bl sub_02022974
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202E384

	thumb_func_start sub_0202E3AC
sub_0202E3AC: ; 0x0202E3AC
	mov r2, #0
	add r1, r2, #0
_0202E3B0:
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _0202E3B0
	ldr r3, _0202E3C0 ; =sub_02025C84
	mov r0, #0x1b
	bx r3
	nop
_0202E3C0: .word sub_02025C84
	thumb_func_end sub_0202E3AC

	thumb_func_start sub_0202E3C4
sub_0202E3C4: ; 0x0202E3C4
	mov r3, #0
_0202E3C6:
	ldrb r2, [r0, r3]
	cmp r1, r2
	bne _0202E3D0
	mov r0, #1
	bx lr
_0202E3D0:
	add r3, r3, #1
	cmp r3, #4
	blt _0202E3C6
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E3C4

	thumb_func_start sub_0202E3DC
sub_0202E3DC: ; 0x0202E3DC
	mov r2, #0
	add r3, r2, #0
_0202E3E0:
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _0202E3E8
	add r3, r3, #1
_0202E3E8:
	add r2, r2, #1
	cmp r2, #4
	blt _0202E3E0
	add r0, r3, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E3DC

	thumb_func_start sub_0202E3F4
sub_0202E3F4: ; 0x0202E3F4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_020138A4
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x10
	ldr r0, [sp]
	lsl r3, r3, #0x18
	lsl r0, r0, #0x18
	lsr r3, r3, #8
	orr r0, r3
	ldr r2, [sp, #0xc]
	orr r0, r1
	orr r0, r2
	str r0, [r5, #4]
	strb r4, [r5]
	mov r0, #0
	strb r0, [r5, #1]
	add r5, #8
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x28
	bl sub_020C4C14
	mov r0, #0x1b
	bl sub_02025C84
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202E3F4

	thumb_func_start sub_0202E43C
sub_0202E43C: ; 0x0202E43C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0202E4DC
	mov r2, #0
	add r3, r0, #0
_0202E44A:
	ldrb r1, [r3]
	cmp r5, r1
	bne _0202E46C
	mov r1, #0x30
	mul r1, r2
	add r0, r0, r1
	ldrb r1, [r0, #1]
	cmp r1, #3
	blo _0202E468
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202E3F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202E468:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202E46C:
	add r2, r2, #1
	add r3, #0x30
	cmp r2, #4
	blt _0202E44A
	mov r1, #0
	add r3, r0, #0
_0202E478:
	ldrb r2, [r3]
	cmp r2, #0
	bne _0202E490
	mov r2, #0x30
	mul r2, r1
	add r0, r0, r2
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202E3F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202E490:
	add r1, r1, #1
	add r3, #0x30
	cmp r1, #4
	blt _0202E478
	mov r1, #0
	add r3, r0, #0
_0202E49C:
	ldrb r2, [r3, #1]
	cmp r2, #3
	blo _0202E4B4
	mov r2, #0x30
	mul r2, r1
	add r0, r0, r2
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202E3F4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202E4B4:
	add r1, r1, #1
	add r3, #0x30
	cmp r1, #4
	blt _0202E49C
	mov r0, #0x1b
	bl sub_02025C84
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202E43C

	thumb_func_start sub_0202E4C8
sub_0202E4C8: ; 0x0202E4C8
	add r0, #8
	bx lr
	thumb_func_end sub_0202E4C8

	thumb_func_start sub_0202E4CC
sub_0202E4CC: ; 0x0202E4CC
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_0202E4CC

	thumb_func_start sub_0202E4D0
sub_0202E4D0: ; 0x0202E4D0
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_0202E4D0

	thumb_func_start sub_0202E4D4
sub_0202E4D4: ; 0x0202E4D4
	add r0, #0x18
	bx lr
	thumb_func_end sub_0202E4D4

	thumb_func_start sub_0202E4D8
sub_0202E4D8: ; 0x0202E4D8
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E4D8

	thumb_func_start sub_0202E4DC
sub_0202E4DC: ; 0x0202E4DC
	push {r4, lr}
	mov r4, #0
	cmp r1, #5
	bhi _0202E514
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202E4F0: ; jump table
	.short _0202E514 - _0202E4F0 - 2 ; case 0
	.short _0202E4FC - _0202E4F0 - 2 ; case 1
	.short _0202E504 - _0202E4F0 - 2 ; case 2
	.short _0202E50A - _0202E4F0 - 2 ; case 3
	.short _0202E510 - _0202E4F0 - 2 ; case 4
	.short _0202E510 - _0202E4F0 - 2 ; case 5
_0202E4FC:
	mov r1, #0x63
	lsl r1, r1, #2
	add r4, r0, r1
	b _0202E514
_0202E504:
	add r4, r0, #0
	add r4, #0xc
	b _0202E514
_0202E50A:
	add r4, r0, #0
	add r4, #0xcc
	b _0202E514
_0202E510:
	bl sub_02022974
_0202E514:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0202E4DC

	thumb_func_start sub_0202E518
sub_0202E518: ; 0x0202E518
	push {r4, lr}
	mov r4, #0
	cmp r1, #5
	bhi _0202E550
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202E52C: ; jump table
	.short _0202E550 - _0202E52C - 2 ; case 0
	.short _0202E546 - _0202E52C - 2 ; case 1
	.short _0202E538 - _0202E52C - 2 ; case 2
	.short _0202E540 - _0202E52C - 2 ; case 3
	.short _0202E54C - _0202E52C - 2 ; case 4
	.short _0202E54C - _0202E52C - 2 ; case 5
_0202E538:
	mov r1, #0x93
	lsl r1, r1, #2
	add r4, r0, r1
	b _0202E550
_0202E540:
	ldr r1, _0202E554 ; =0x000006CC
	add r4, r0, r1
	b _0202E550
_0202E546:
	ldr r1, _0202E558 ; =0x0000090C
	add r4, r0, r1
	b _0202E550
_0202E54C:
	bl sub_02022974
_0202E550:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0202E554: .word 0x000006CC
_0202E558: .word 0x0000090C
	thumb_func_end sub_0202E518

	thumb_func_start sub_0202E55C
sub_0202E55C: ; 0x0202E55C
	ldrb r0, [r0]
	bx lr
	thumb_func_end sub_0202E55C

	thumb_func_start sub_0202E560
sub_0202E560: ; 0x0202E560
	ldrb r1, [r0, #1]
	cmp r1, #3
	bhs _0202E56A
	add r1, r1, #1
	strb r1, [r0, #1]
_0202E56A:
	ldr r3, _0202E570 ; =sub_02025C84
	mov r0, #0x1b
	bx r3
	; .align 2, 0
_0202E570: .word sub_02025C84
	thumb_func_end sub_0202E560

	thumb_func_start sub_0202E574
sub_0202E574: ; 0x0202E574
	add r0, #8
	bx lr
	thumb_func_end sub_0202E574

	thumb_func_start sub_0202E578
sub_0202E578: ; 0x0202E578
	push {r4, r5, r6, r7}
	mov r5, #0
	add r4, r5, #0
	ldr r6, [sp, #0x10]
	cmp r1, #0
	ble _0202E5B2
_0202E584:
	ldrb r7, [r0]
	cmp r2, r7
	bne _0202E5AA
	ldrb r7, [r0, #1]
	cmp r3, #0
	beq _0202E59C
	cmp r7, #0
	beq _0202E59C
	add r7, r4, #1
	strb r7, [r6, r5]
	add r5, r5, #1
	b _0202E5AA
_0202E59C:
	cmp r3, #0
	bne _0202E5AA
	cmp r7, #0
	bne _0202E5AA
	add r7, r4, #1
	strb r7, [r6, r5]
	add r5, r5, #1
_0202E5AA:
	add r4, r4, #1
	add r0, #0x30
	cmp r4, r1
	blt _0202E584
_0202E5B2:
	add r0, r5, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0202E578

	thumb_func_start sub_0202E5B8
sub_0202E5B8: ; 0x0202E5B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r5, #0
	add r0, r1, #0
	add r4, r5, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x20]
	cmp r0, #0
	ble _0202E60E
_0202E5D0:
	ldrb r2, [r6, #0x18]
	ldr r1, [sp, #4]
	ldrb r0, [r6, #0x19]
	cmp r1, r2
	bne _0202E604
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0202E5F0
	cmp r0, #0
	beq _0202E5F0
	add r0, r4, #1
	bl sub_0202E7D0
	strb r0, [r7, r5]
	add r5, r5, #1
	b _0202E604
_0202E5F0:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _0202E604
	cmp r0, #0
	bne _0202E604
	add r0, r4, #1
	bl sub_0202E7D0
	strb r0, [r7, r5]
	add r5, r5, #1
_0202E604:
	ldr r0, [sp]
	add r4, r4, #1
	add r6, #0x48
	cmp r4, r0
	blt _0202E5D0
_0202E60E:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0202E5B8

	thumb_func_start sub_0202E614
sub_0202E614: ; 0x0202E614
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x10]
	ldr r4, [sp, #0x14]
	cmp r1, #5
	bhi _0202E6A4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202E62A: ; jump table
	.short _0202E6A4 - _0202E62A - 2 ; case 0
	.short _0202E678 - _0202E62A - 2 ; case 1
	.short _0202E636 - _0202E62A - 2 ; case 2
	.short _0202E658 - _0202E62A - 2 ; case 3
	.short _0202E69C - _0202E62A - 2 ; case 4
	.short _0202E6A0 - _0202E62A - 2 ; case 5
_0202E636:
	cmp r3, #0
	str r4, [sp]
	beq _0202E648
	add r0, #0xc
	mov r1, #4
	add r3, r5, #0
	bl sub_0202E578
	pop {r3, r4, r5, pc}
_0202E648:
	mov r1, #0x93
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0x10
	add r3, r5, #0
	bl sub_0202E5B8
	pop {r3, r4, r5, pc}
_0202E658:
	cmp r3, #0
	str r4, [sp]
	beq _0202E66A
	add r0, #0xcc
	mov r1, #4
	add r3, r5, #0
	bl sub_0202E578
	pop {r3, r4, r5, pc}
_0202E66A:
	ldr r1, _0202E6A8 ; =0x000006CC
	add r3, r5, #0
	add r0, r0, r1
	mov r1, #8
	bl sub_0202E5B8
	pop {r3, r4, r5, pc}
_0202E678:
	cmp r3, #0
	str r4, [sp]
	beq _0202E68E
	mov r1, #0x63
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #4
	add r3, r5, #0
	bl sub_0202E578
	pop {r3, r4, r5, pc}
_0202E68E:
	ldr r1, _0202E6AC ; =0x0000090C
	add r3, r5, #0
	add r0, r0, r1
	mov r1, #8
	bl sub_0202E5B8
	pop {r3, r4, r5, pc}
_0202E69C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202E6A0:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202E6A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202E6A8: .word 0x000006CC
_0202E6AC: .word 0x0000090C
	thumb_func_end sub_0202E614

	thumb_func_start sub_0202E6B0
sub_0202E6B0: ; 0x0202E6B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	mov r0, #0
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #1
	bl sub_0202E614
	cmp r0, #0
	beq _0202E6E2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0202E6E2:
	mov r3, #1
	str r3, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0202E614
	cmp r0, #0
	beq _0202E73E
	add r0, sp, #8
	ldrb r0, [r0]
	mov r7, #0
	cmp r0, #0
	beq _0202E738
	add r5, sp, #8
_0202E704:
	ldrb r2, [r5]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0202E768
	ldrb r0, [r0, #1]
	cmp r0, #3
	blo _0202E71A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0202E71A:
	add r7, r7, #1
	add r5, r5, #1
	cmp r7, #4
	bge _0202E726
	mov r1, #1
	b _0202E728
_0202E726:
	mov r1, #0
_0202E728:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0202E732
	mov r0, #1
	b _0202E734
_0202E732:
	mov r0, #0
_0202E734:
	tst r0, r1
	bne _0202E704
_0202E738:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0202E73E:
	mov r5, #1
_0202E740:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0202E768
	ldrb r1, [r0]
	cmp r1, #0
	beq _0202E756
	ldrb r0, [r0, #1]
	cmp r0, #3
	blo _0202E75C
_0202E756:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0202E75C:
	add r5, r5, #1
	cmp r5, #4
	ble _0202E740
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0202E6B0

	thumb_func_start sub_0202E768
sub_0202E768: ; 0x0202E768
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	bl sub_0202E7C0
	cmp r0, #1
	beq _0202E77E
	bl sub_02022974
_0202E77E:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202E4DC
	mov r1, #0x80
	bic r4, r1
	sub r2, r4, #1
	mov r1, #0x30
	mul r1, r2
	add r0, r0, r1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202E768

	thumb_func_start sub_0202E794
sub_0202E794: ; 0x0202E794
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r1, #0
	bl sub_0202E7C0
	cmp r0, #0
	beq _0202E7AA
	bl sub_02022974
_0202E7AA:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202E518
	mov r1, #0x80
	bic r4, r1
	sub r2, r4, #1
	mov r1, #0x48
	mul r1, r2
	add r0, r0, r1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202E794

	thumb_func_start sub_0202E7C0
sub_0202E7C0: ; 0x0202E7C0
	mov r1, #0x80
	tst r0, r1
	bne _0202E7CA
	mov r0, #1
	bx lr
_0202E7CA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E7C0

	thumb_func_start sub_0202E7D0
sub_0202E7D0: ; 0x0202E7D0
	mov r1, #0x80
	orr r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E7D0

	thumb_func_start sub_0202E7D8
sub_0202E7D8: ; 0x0202E7D8
	ldr r1, _0202E7E0 ; =0x00000B4C
	add r0, r0, r1
	bx lr
	nop
_0202E7E0: .word 0x00000B4C
	thumb_func_end sub_0202E7D8

	thumb_func_start sub_0202E7E4
sub_0202E7E4: ; 0x0202E7E4
	ldr r1, _0202E7EC ; =0x00000B56
	add r0, r0, r1
	bx lr
	nop
_0202E7EC: .word 0x00000B56
	thumb_func_end sub_0202E7E4

	thumb_func_start sub_0202E7F0
sub_0202E7F0: ; 0x0202E7F0
	ldr r1, _0202E7F8 ; =0x00000B7A
	add r0, r0, r1
	bx lr
	nop
_0202E7F8: .word 0x00000B7A
	thumb_func_end sub_0202E7F0

	thumb_func_start sub_0202E7FC
sub_0202E7FC: ; 0x0202E7FC
	ldr r1, _0202E804 ; =0x00000B7C
	add r0, r0, r1
	bx lr
	nop
_0202E804: .word 0x00000B7C
	thumb_func_end sub_0202E7FC

	thumb_func_start sub_0202E808
sub_0202E808: ; 0x0202E808
	mov r1, #0x2e
	lsl r1, r1, #6
	add r0, r0, r1
	bx lr
	thumb_func_end sub_0202E808

	thumb_func_start sub_0202E810
sub_0202E810: ; 0x0202E810
	ldr r1, _0202E818 ; =0x00000B88
	add r0, r0, r1
	bx lr
	nop
_0202E818: .word 0x00000B88
	thumb_func_end sub_0202E810

	thumb_func_start sub_0202E81C
sub_0202E81C: ; 0x0202E81C
	ldr r1, _0202E824 ; =0x00000BA6
	add r0, r0, r1
	bx lr
	nop
_0202E824: .word 0x00000BA6
	thumb_func_end sub_0202E81C

	thumb_func_start sub_0202E828
sub_0202E828: ; 0x0202E828
	ldr r1, _0202E830 ; =0x00000BBC
	add r0, r0, r1
	bx lr
	nop
_0202E830: .word 0x00000BBC
	thumb_func_end sub_0202E828

	thumb_func_start sub_0202E834
sub_0202E834: ; 0x0202E834
	ldr r1, _0202E83C ; =0x00000BC4
	add r0, r0, r1
	bx lr
	nop
_0202E83C: .word 0x00000BC4
	thumb_func_end sub_0202E834

	thumb_func_start sub_0202E840
sub_0202E840: ; 0x0202E840
	lsl r1, r0, #1
	ldr r0, _0202E848 ; =0x020E5CD0
	ldrb r0, [r0, r1]
	bx lr
	; .align 2, 0
_0202E848: .word 0x020E5CD0
	thumb_func_end sub_0202E840

	thumb_func_start sub_0202E84C
sub_0202E84C: ; 0x0202E84C
	lsl r1, r0, #1
	ldr r0, _0202E854 ; =0x020E5CD1
	ldrb r0, [r0, r1]
	bx lr
	; .align 2, 0
_0202E854: .word 0x020E5CD1
	thumb_func_end sub_0202E84C

	thumb_func_start sub_0202E858
sub_0202E858: ; 0x0202E858
	push {r3, lr}
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	add r0, #8
	mov r1, #8
	bl sub_02002294
	mov r0, #0x1c
	bl sub_02025C84
	pop {r3, pc}
	thumb_func_end sub_0202E858

	thumb_func_start sub_0202E870
sub_0202E870: ; 0x0202E870
	push {r3, lr}
	add r0, #8
	bl sub_020021F0
	cmp r0, #0
	beq _0202E880
	mov r0, #1
	pop {r3, pc}
_0202E880:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0202E870

	thumb_func_start sub_0202E884
sub_0202E884: ; 0x0202E884
	mov r0, #0xea
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E884

	thumb_func_start sub_0202E88C
sub_0202E88C: ; 0x0202E88C
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0xea
	mov r1, #0
	lsl r2, r2, #4
	add r6, r0, #0
	bl sub_020C4CF4
	mov r7, #0
_0202E89C:
	mov r4, #0
	add r5, r6, #0
_0202E8A0:
	add r0, r5, #0
	bl sub_0202E858
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #6
	blt _0202E8A0
	add r7, r7, #1
	add r6, #0x90
	cmp r7, #0x1a
	blt _0202E89C
	mov r0, #0x1c
	bl sub_02025C84
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202E88C

	thumb_func_start sub_0202E8C0
sub_0202E8C0: ; 0x0202E8C0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1c
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_0202E8C0

	thumb_func_start sub_0202E8D4
sub_0202E8D4: ; 0x0202E8D4
	push {r4, r5, r6, lr}
	cmp r2, #6
	blo _0202E8E2
	blo _0202E91A
	bl sub_02022974
	pop {r4, r5, r6, pc}
_0202E8E2:
	mov r3, #0x90
	mul r3, r1
	add r3, r0, r3
	cmp r2, #5
	bge _0202E90C
	mov r0, #0x18
	mul r0, r2
	add r6, r3, r0
_0202E8F2:
	add r5, r6, #0
	add r5, #0x18
	add r4, r6, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	add r2, r2, #1
	add r6, #0x18
	stmia r4!, {r0, r1}
	cmp r2, #5
	blt _0202E8F2
_0202E90C:
	add r3, #0x78
	add r0, r3, #0
	bl sub_0202E858
	mov r0, #0x1c
	bl sub_02025C84
_0202E91A:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202E8D4

	thumb_func_start sub_0202E91C
sub_0202E91C: ; 0x0202E91C
	mov r0, #0x4e
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202E91C

	thumb_func_start sub_0202E924
sub_0202E924: ; 0x0202E924
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202CD88
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203068C
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0x34
	bl sub_02018184
	ldr r7, _0202E9F8 ; =0x020E5CD8
	str r0, [sp]
	mov r6, #0
	add r5, r0, #0
_0202E94A:
	cmp r6, #5
	beq _0202E958
	cmp r6, #0xa
	beq _0202E97C
	cmp r6, #0xb
	beq _0202E996
	b _0202E9C0
_0202E958:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0202CFB8
	str r0, [sp, #8]
	cmp r0, #0
	beq _0202E976
	add r0, r4, #0
	mov r1, #0x1d
	bl sub_0202CFB8
	ldr r1, [sp, #8]
	bl sub_020E2178
	str r0, [sp, #8]
_0202E976:
	ldr r0, [sp, #8]
	str r0, [r5, #0]
	b _0202E9E0
_0202E97C:
	add r0, r4, #0
	mov r1, #0x5c
	bl sub_0202CFB8
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x5d
	bl sub_0202CFB8
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [r5, #0]
	b _0202E9E0
_0202E996:
	add r0, r4, #0
	mov r1, #0x5a
	bl sub_0202CFB8
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x5b
	bl sub_0202CFB8
	ldr r1, [sp, #0x10]
	add r1, r1, r0
	beq _0202E9BC
	ldr r0, [sp]
	ldr r2, [r0, #0x28]
	mov r0, #0x64
	mul r0, r2
	bl sub_020E2178
	add r1, r0, #0
_0202E9BC:
	str r1, [r5, #0]
	b _0202E9E0
_0202E9C0:
	cmp r6, #0
	blt _0202E9D6
	cmp r6, #4
	bgt _0202E9D6
	ldr r0, [sp, #4]
	ldr r1, [r7, #0]
	mov r2, #0xff
	bl sub_02030698
	str r0, [r5, #0]
	b _0202E9E0
_0202E9D6:
	ldr r1, [r7, #0]
	add r0, r4, #0
	bl sub_0202CFB8
	str r0, [r5, #0]
_0202E9E0:
	add r6, r6, #1
	add r5, r5, #4
	add r7, r7, #4
	cmp r6, #0xd
	blt _0202E94A
	mov r0, #0x1c
	bl sub_02025C84
	ldr r0, [sp]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0202E9F8: .word 0x020E5CD8
	thumb_func_end sub_0202E924

	thumb_func_start sub_0202E9FC
sub_0202E9FC: ; 0x0202E9FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02025E38
	mov r1, #0x4e
	add r6, r0, #0
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_02018184
	mov r2, #0x4e
	mov r1, #0
	lsl r2, r2, #2
	str r0, [sp, #4]
	bl sub_020C4CF4
	add r0, r5, #0
	bl sub_0202B4A0
	mov r1, #1
	bl sub_0202B400
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02025F04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202E924
	ldr r4, [sp, #4]
	str r0, [sp]
	mov r6, #0
	add r5, r0, #0
_0202EA48:
	ldr r0, [sp, #8]
	add r1, r4, #0
	str r0, [r4, #0]
	add r0, r7, #0
	add r1, #8
	mov r2, #8
	bl sub_02023DF0
	ldr r0, [r5, #0]
	add r6, r6, #1
	str r0, [r4, #4]
	add r4, #0x18
	add r5, r5, #4
	cmp r6, #0xd
	blt _0202EA48
	ldr r0, [sp]
	bl sub_020181C4
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0x1c
	bl sub_02025C84
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202E9FC

	thumb_func_start sub_0202EA80
sub_0202EA80: ; 0x0202EA80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0202EA86:
	add r0, r5, #0
	bl sub_0202E858
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #6
	blt _0202EA86
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202EA80

	thumb_func_start sub_0202EA98
sub_0202EA98: ; 0x0202EA98
	push {r3, lr}
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	cmp r3, r2
	beq _0202EAA6
	mov r0, #0
	pop {r3, pc}
_0202EAA6:
	add r0, #8
	add r1, #8
	bl sub_0200220C
	cmp r0, #0
	bne _0202EAB6
	mov r0, #1
	pop {r3, pc}
_0202EAB6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202EA98

	thumb_func_start sub_0202EABC
sub_0202EABC: ; 0x0202EABC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0202EAE6
	add r5, r6, #0
_0202EACC:
	ldr r0, [r5, #0xc]
	add r1, r7, #0
	bl sub_0202EA98
	cmp r0, #0
	beq _0202EADC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202EADC:
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0202EACC
_0202EAE6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202EABC

	thumb_func_start sub_0202EAEC
sub_0202EAEC: ; 0x0202EAEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp]
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xe0
	add r4, r3, #0
	bl sub_020C4CF4
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _0202EB7C
	mov r2, #0x90
	add r0, r4, #0
	mul r0, r2
	add r1, r6, #0
	add r0, r5, r0
	add r1, #0x50
	str r0, [sp, #8]
	bl sub_020C4DB0
	add r1, sp, #0x10
	ldrb r3, [r1, #0x18]
	mov r0, #0
	cmp r3, #0
	ble _0202EB46
	mov r2, #0x18
	ldr r1, [sp, #0x24]
	mul r2, r4
_0202EB2C:
	ldr r5, [r6, #4]
	add r0, r0, #1
	add r4, r5, #0
	add r4, r4, #1
	str r4, [r6, #4]
	ldr r4, [r1, #0]
	lsl r5, r5, #2
	add r4, r4, r2
	add r5, r6, r5
	str r4, [r5, #0xc]
	add r1, r1, #4
	cmp r0, r3
	blt _0202EB2C
_0202EB46:
	add r4, r6, #0
	add r4, #0x50
	mov r7, #0
	add r5, r4, #0
_0202EB4E:
	add r0, r4, #0
	bl sub_0202E870
	cmp r0, #0
	beq _0202EB70
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202EABC
	cmp r0, #0
	bne _0202EB70
	ldr r1, [r6, #0]
	add r0, r1, #1
	str r0, [r6, #0]
	lsl r0, r1, #2
	add r0, r6, r0
	str r4, [r0, #0x38]
_0202EB70:
	add r7, r7, #1
	add r4, #0x18
	add r5, #0x18
	cmp r7, #6
	blt _0202EB4E
	b _0202EC10
_0202EB7C:
	add r0, r4, #0
	add r0, #0xd
	mov r2, #0x90
	add r1, r0, #0
	mul r1, r2
	add r0, r5, r1
	add r1, r6, #0
	add r1, #0x50
	str r0, [sp, #8]
	bl sub_020C4DB0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x18]
	mov r3, #0
	cmp r2, #0
	ble _0202EBCA
	mov r1, #0x18
	ldr r0, [sp, #0x24]
	mul r1, r4
_0202EBA2:
	ldr r4, [r0, #0]
	ldr r5, [r1, r4]
	cmp r5, #0
	beq _0202EBC2
	ldr r4, [sp]
	cmp r4, r5
	bne _0202EBC2
	ldr r5, [r6, #4]
	add r4, r5, #0
	add r4, r4, #1
	str r4, [r6, #4]
	ldr r4, [r0, #0]
	lsl r5, r5, #2
	add r4, r4, r1
	add r5, r6, r5
	str r4, [r5, #0xc]
_0202EBC2:
	add r3, r3, #1
	add r0, r0, #4
	cmp r3, r2
	blt _0202EBA2
_0202EBCA:
	add r4, r6, #0
	mov r0, #0
	add r4, #0x50
	str r0, [sp, #4]
	add r5, r6, #0
	add r7, r4, #0
_0202EBD6:
	add r0, r4, #0
	bl sub_0202E870
	cmp r0, #0
	beq _0202EC00
	ldr r1, [r5, #0x50]
	ldr r0, [sp]
	cmp r0, r1
	bne _0202EC00
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0202EABC
	cmp r0, #0
	bne _0202EC00
	ldr r1, [r6, #0]
	add r0, r1, #1
	str r0, [r6, #0]
	lsl r0, r1, #2
	add r0, r6, r0
	str r4, [r0, #0x38]
_0202EC00:
	ldr r0, [sp, #4]
	add r4, #0x18
	add r0, r0, #1
	add r5, #0x18
	add r7, #0x18
	str r0, [sp, #4]
	cmp r0, #6
	blt _0202EBD6
_0202EC10:
	ldr r1, [r6, #4]
	ldr r0, [r6, #0]
	mov r2, #0
	add r0, r1, r0
	str r0, [r6, #8]
	ldr r0, [r6, #0]
	cmp r0, #0
	ble _0202EC38
	add r1, r6, #0
_0202EC22:
	ldr r3, [r6, #4]
	ldr r0, [r1, #0x38]
	add r3, r2, r3
	lsl r3, r3, #2
	add r3, r6, r3
	str r0, [r3, #0xc]
	ldr r0, [r6, #0]
	add r2, r2, #1
	add r1, r1, #4
	cmp r2, r0
	blt _0202EC22
_0202EC38:
	mov r0, #0
	mov ip, r0
	ldr r0, [r6, #8]
	sub r5, r0, #1
	cmp r5, #0
	ble _0202EC7C
	add r3, r6, #0
_0202EC46:
	mov r0, ip
	cmp r5, r0
	ble _0202EC6A
	lsl r0, r5, #2
	add r4, r6, r0
_0202EC50:
	ldr r2, [r4, #0xc]
	ldr r7, [r3, #0xc]
	ldr r0, [r2, #4]
	ldr r1, [r7, #4]
	cmp r1, r0
	bhs _0202EC60
	str r2, [r3, #0xc]
	str r7, [r4, #0xc]
_0202EC60:
	sub r5, r5, #1
	mov r0, ip
	sub r4, r4, #4
	cmp r5, r0
	bgt _0202EC50
_0202EC6A:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	ldr r0, [r6, #8]
	add r3, r3, #4
	sub r5, r0, #1
	mov r0, ip
	cmp r0, r5
	blt _0202EC46
_0202EC7C:
	ldr r0, [sp, #8]
	bl sub_0202EA80
	mov r3, #0
	add r2, r6, #0
	b _0202ECA2
_0202EC88:
	ldr r5, [r2, #0xc]
	ldr r4, [sp, #8]
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [sp, #8]
	add r2, r2, #4
	add r0, #0x18
	str r0, [sp, #8]
	add r3, r3, #1
_0202ECA2:
	cmp r3, #6
	bge _0202ECAC
	ldr r0, [r6, #8]
	cmp r3, r0
	blt _0202EC88
_0202ECAC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0202EAEC

	thumb_func_start sub_0202ECB0
sub_0202ECB0: ; 0x0202ECB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	ldr r0, [sp, #0x2c]
	mov r1, #0xe0
	str r2, [sp, #0x10]
	add r4, r3, #0
	bl sub_02018184
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	add r1, r6, #0
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	bl sub_0202EAEC
	cmp r5, #0
	beq _0202ED02
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	add r1, r6, #0
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	bl sub_0202EAEC
_0202ED02:
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0202ECB0

	thumb_func_start sub_0202ED0C
sub_0202ED0C: ; 0x0202ED0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	ldr r1, [sp, #0x38]
	add r4, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	str r1, [sp, #0x38]
	bl sub_0202E8C0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0202B4A0
	mov r1, #1
	bl sub_0202B400
	mov r4, #0
	add r3, r4, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	bls _0202ED5C
_0202ED38:
	cmp r3, r6
	beq _0202ED52
	lsl r0, r3, #2
	ldr r2, [r7, r0]
	cmp r2, #0
	beq _0202ED52
	add r1, r4, #1
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsl r1, r0, #2
	add r0, sp, #0x10
	str r2, [r0, r1]
_0202ED52:
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, r5
	blo _0202ED38
_0202ED5C:
	cmp r4, #0
	beq _0202ED86
	mov r5, #0
	add r6, sp, #0x10
_0202ED64:
	ldr r0, [sp, #0x38]
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0202ECB0
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0xd
	blo _0202ED64
	mov r0, #0x1c
	bl sub_02025C84
_0202ED86:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202ED0C

	thumb_func_start sub_0202ED8C
sub_0202ED8C: ; 0x0202ED8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp]
	add r4, r0, #0
	add r5, r1, #0
	bl sub_02025E38
	str r0, [sp, #4]
	ldr r0, [sp]
	mov r1, #0x4c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x4c
	add r7, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_0202B4A0
	mov r1, #1
	bl sub_0202B400
	str r0, [sp, #0xc]
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_0202E924
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0202E840
	str r0, [r7, #0]
	add r0, r5, #0
	bl sub_0202E84C
	ldr r1, [r7, #0]
	mov r6, #0
	cmp r1, #0
	ble _0202EE02
	lsl r1, r0, #2
	ldr r0, [sp, #8]
	add r4, r7, #0
	add r5, r0, r1
_0202EDE4:
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	bl sub_02025F04
	str r0, [r4, #0xc]
	ldr r0, [r7, #0]
	add r6, r6, #1
	add r4, #0xc
	add r5, r5, #4
	cmp r6, r0
	blt _0202EDE4
_0202EE02:
	ldr r0, [sp, #8]
	bl sub_020181C4
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202ED8C

	thumb_func_start sub_0202EE10
sub_0202EE10: ; 0x0202EE10
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	str r1, [sp]
	add r0, r7, #0
	mov r1, #0x4c
	bl sub_02018144
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	mov r1, #0x90
	mul r1, r0
	mov r6, #0
	add r5, r5, r1
_0202EE34:
	add r0, r5, #0
	bl sub_0202E870
	cmp r0, #0
	beq _0202EE80
	ldr r2, [r4, #0]
	mov r1, #0xc
	mul r1, r2
	ldr r0, [r5, #0]
	add r1, r4, r1
	str r0, [r1, #4]
	ldr r2, [r4, #0]
	mov r1, #0xc
	mul r1, r2
	ldr r0, [r5, #4]
	add r1, r4, r1
	str r0, [r1, #8]
	mov r0, #8
	add r1, r7, #0
	bl sub_02023790
	ldr r2, [r4, #0]
	mov r1, #0xc
	mul r1, r2
	add r1, r4, r1
	str r0, [r1, #0xc]
	ldr r1, [r4, #0]
	mov r0, #0xc
	mul r0, r1
	add r0, r4, r0
	add r1, r5, #0
	ldr r0, [r0, #0xc]
	add r1, #8
	bl sub_02023D28
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0202EE80:
	add r6, r6, #1
	add r5, #0x18
	cmp r6, #6
	blt _0202EE34
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202EE10

	thumb_func_start sub_0202EE8C
sub_0202EE8C: ; 0x0202EE8C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0202EE94:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202EE9E
	bl sub_020237BC
_0202EE9E:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #6
	blt _0202EE94
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x4c
	bl sub_020C4CF4
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #0x1c
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202EE8C

	thumb_func_start sub_0202EEC0
sub_0202EEC0: ; 0x0202EEC0
	ldr r0, _0202EEC4 ; =0x00000688
	bx lr
	; .align 2, 0
_0202EEC4: .word 0x00000688
	thumb_func_end sub_0202EEC0

	thumb_func_start sub_0202EEC8
sub_0202EEC8: ; 0x0202EEC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, _0202EF00 ; =0x00000688
	mov r0, #0
	add r1, r5, #0
	bl sub_020C4BB8
	mov r4, #0
	mov r6, #0xac
	add r7, r4, #0
_0202EEDC:
	add r0, r5, #0
	bl sub_02073C2C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02074470
	cmp r0, #0
	beq _0202EEF4
	bl sub_02022974
_0202EEF4:
	add r4, r4, #1
	add r5, #0xec
	cmp r4, #6
	blt _0202EEDC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202EF00: .word 0x00000688
	thumb_func_end sub_0202EEC8

	thumb_func_start sub_0202EF04
sub_0202EF04: ; 0x0202EF04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, _0202EF3C ; =0x00000588
	mov r0, #0
	add r1, r5, #0
	bl sub_020C4BB8
	mov r4, #0
	mov r6, #0xac
	add r7, r4, #0
_0202EF18:
	add r0, r5, #0
	bl sub_02073C2C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02074470
	cmp r0, #0
	beq _0202EF30
	bl sub_02022974
_0202EF30:
	add r4, r4, #1
	add r5, #0xec
	cmp r4, #6
	blt _0202EF18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202EF3C: .word 0x00000588
	thumb_func_end sub_0202EF04

	thumb_func_start sub_0202EF40
sub_0202EF40: ; 0x0202EF40
	push {r4, r5, r6, r7}
	add r2, r0, #0
	ldr r3, _0202EF98 ; =0x00000588
	mov r0, #0
	add r5, r2, #0
_0202EF4A:
	ldr r4, [r5, r3]
	cmp r1, r4
	beq _0202EF94
	add r0, r0, #1
	add r5, r5, #4
	cmp r0, #0x14
	blt _0202EF4A
	ldr r1, _0202EF98 ; =0x00000588
	mov r0, #0
	add r4, r2, #0
_0202EF5E:
	ldr r3, [r4, r1]
	cmp r3, #0
	beq _0202EF94
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, #0x14
	blt _0202EF5E
	mov r3, #0
	ldr r4, _0202EF9C ; =0x7FFFFFFF
	add r5, r3, #0
_0202EF72:
	ldr r0, _0202EFA0 ; =0x000005D8
	ldr r1, [r2, r0]
	add r0, r0, #4
	ldr r0, [r2, r0]
	sub r6, r1, r4
	mov ip, r0
	mov r6, ip
	sbc r6, r3
	bge _0202EF8A
	add r4, r1, #0
	add r3, r0, #0
	add r7, r5, #0
_0202EF8A:
	add r5, r5, #1
	add r2, #8
	cmp r5, #0x14
	blt _0202EF72
	add r0, r7, #0
_0202EF94:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0202EF98: .word 0x00000588
_0202EF9C: .word 0x7FFFFFFF
_0202EFA0: .word 0x000005D8
	thumb_func_end sub_0202EF40

	thumb_func_start sub_0202EFA4
sub_0202EFA4: ; 0x0202EFA4
	add r3, r0, #0
	add r0, r1, #0
	mov r1, #0xec
	mul r1, r2
	add r1, r3, r1
	ldr r3, _0202EFB4 ; =sub_020774C8
	bx r3
	nop
_0202EFB4: .word sub_020774C8
	thumb_func_end sub_0202EFA4

	thumb_func_start sub_0202EFB8
sub_0202EFB8: ; 0x0202EFB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0202EF40
	add r6, r0, #0
	lsl r0, r6, #2
	add r1, r5, r0
	ldr r0, _0202EFF4 ; =0x00000588
	str r4, [r1, r0]
	bl sub_020138EC
	lsl r2, r6, #3
	add r3, r5, r2
	ldr r2, _0202EFF8 ; =0x000005D8
	str r0, [r3, r2]
	add r0, r2, #4
	str r1, [r3, r0]
	bl sub_020C4040
	ldr r2, _0202EFFC ; =0x00000678
	str r0, [r5, r2]
	add r0, r2, #4
	add r2, #8
	str r1, [r5, r0]
	add r0, r5, r2
	bl sub_020C3FA0
	pop {r4, r5, r6, pc}
	nop
_0202EFF4: .word 0x00000588
_0202EFF8: .word 0x000005D8
_0202EFFC: .word 0x00000678
	thumb_func_end sub_0202EFB8

	thumb_func_start sub_0202F000
sub_0202F000: ; 0x0202F000
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #6
	blt _0202F010
	bl sub_02022974
_0202F010:
	mov r0, #0xec
	mul r0, r5
	add r3, r6, r0
	mov r2, #0x1d
_0202F018:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0202F018
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202F000

	thumb_func_start sub_0202F028
sub_0202F028: ; 0x0202F028
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #0xac
_0202F032:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0202F042
	add r4, r4, #1
_0202F042:
	add r6, r6, #1
	add r5, #0xec
	cmp r6, #6
	blt _0202F032
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202F028

	thumb_func_start sub_0202F050
sub_0202F050: ; 0x0202F050
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020138EC
	ldr r1, _0202F080 ; =0x00000588
	mov r3, #0
	add r6, r5, #0
_0202F060:
	ldr r2, [r6, r1]
	cmp r4, r2
	bne _0202F072
	lsl r1, r3, #3
	add r2, r5, r1
	ldr r1, _0202F084 ; =0x000005D8
	ldr r1, [r2, r1]
	sub r0, r0, r1
	pop {r4, r5, r6, pc}
_0202F072:
	add r3, r3, #1
	add r6, r6, #4
	cmp r3, #0x14
	blt _0202F060
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0202F080: .word 0x00000588
_0202F084: .word 0x000005D8
	thumb_func_end sub_0202F050

	thumb_func_start sub_0202F088
sub_0202F088: ; 0x0202F088
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020C3FA0
	mov r0, #0x1a
	mov r3, #0
	add r5, sp, #0
	lsl r0, r0, #6
_0202F09C:
	add r1, r4, r3
	ldrb r2, [r5]
	ldrb r1, [r1, r0]
	cmp r2, r1
	beq _0202F0AC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202F0AC:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #6
	blt _0202F09C
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202F088

	thumb_func_start sub_0202F0BC
sub_0202F0BC: ; 0x0202F0BC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C4040
	ldr r2, _0202F0DC ; =0x00000678
	ldr r3, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	eor r0, r3
	eor r1, r2
	orr r0, r1
	bne _0202F0D8
	mov r0, #1
	pop {r4, pc}
_0202F0D8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0202F0DC: .word 0x00000678
	thumb_func_end sub_0202F0BC

	thumb_func_start sub_0202F0E0
sub_0202F0E0: ; 0x0202F0E0
	push {r3, r4}
	mov r4, #0
	mov r1, #0x1a
	add r3, r4, #0
	lsl r1, r1, #6
_0202F0EA:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	add r3, r3, #1
	orr r4, r2
	cmp r3, #6
	blt _0202F0EA
	cmp r4, #0
	bne _0202F100
	mov r0, #1
	pop {r3, r4}
	bx lr
_0202F100:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202F0E0

	thumb_func_start sub_0202F108
sub_0202F108: ; 0x0202F108
	mov r0, #0x28
	bx lr
	thumb_func_end sub_0202F108

	thumb_func_start sub_0202F10C
sub_0202F10C: ; 0x0202F10C
	push {r3, r4, r5, lr}
	mov r4, #0
	add r1, r4, #0
	add r2, r4, #0
_0202F114:
	add r3, r2, #0
	add r5, r0, #0
_0202F118:
	add r3, r3, #1
	strh r1, [r5]
	add r5, r5, #2
	cmp r3, #4
	blt _0202F118
	add r4, r4, #1
	add r0, #8
	cmp r4, #5
	blt _0202F114
	mov r0, #0x21
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202F10C

	thumb_func_start sub_0202F134
sub_0202F134: ; 0x0202F134
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x21
	add r4, r2, #0
	bl sub_020245BC
	lsl r1, r5, #3
	add r3, r0, r1
	lsl r2, r4, #1
	ldrh r1, [r3, r2]
	ldr r0, _0202F15C ; =0x0000270F
	cmp r1, r0
	bhs _0202F152
	add r0, r1, #1
	strh r0, [r3, r2]
_0202F152:
	mov r0, #0x21
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	nop
_0202F15C: .word 0x0000270F
	thumb_func_end sub_0202F134

	thumb_func_start sub_0202F160
sub_0202F160: ; 0x0202F160
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x21
	add r4, r2, #0
	bl sub_020245BC
	add r6, r0, #0
	mov r0, #0x21
	bl sub_02025C48
	lsl r0, r5, #3
	lsl r1, r4, #1
	add r0, r6, r0
	ldrh r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202F160

	thumb_func_start sub_0202F180
sub_0202F180: ; 0x0202F180
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0202F1D0
	add r0, r5, #0
	bl sub_02027560
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0202CD88
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r7, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	bl sub_0202D040
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202736C
	add r0, r5, #0
	bl sub_02056B24
	add r1, r4, #0
	bl sub_02056A48
_0202F1D0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202F180

	thumb_func_start sub_0202F1D4
sub_0202F1D4: ; 0x0202F1D4
	ldr r0, _0202F1D8 ; =0x00001D50
	bx lr
	; .align 2, 0
_0202F1D8: .word 0x00001D50
	thumb_func_end sub_0202F1D4

	thumb_func_start sub_0202F1DC
sub_0202F1DC: ; 0x0202F1DC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, _0202F1F4 ; =0x00001D50
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4B4C
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_0202F1F4: .word 0x00001D50
	thumb_func_end sub_0202F1DC

	thumb_func_start sub_0202F1F8
sub_0202F1F8: ; 0x0202F1F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0202F228 ; =0x021C07A4
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	beq _0202F212
	bl sub_020181C4
	ldr r0, _0202F228 ; =0x021C07A4
	mov r1, #0
	str r1, [r0, #0]
_0202F212:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_02024464
	ldr r1, _0202F228 ; =0x021C07A4
	str r0, [r1, #0]
	bl sub_0202F1DC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202F228: .word 0x021C07A4
	thumb_func_end sub_0202F1F8

	thumb_func_start sub_0202F22C
sub_0202F22C: ; 0x0202F22C
	push {r3, lr}
	ldr r0, _0202F24C ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202F23A
	bl sub_02022974
_0202F23A:
	ldr r0, _0202F24C ; =0x021C07A4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0202F24C ; =0x021C07A4
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_0202F24C: .word 0x021C07A4
	thumb_func_end sub_0202F22C

	thumb_func_start sub_0202F250
sub_0202F250: ; 0x0202F250
	ldr r0, _0202F260 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0202F25C
	mov r0, #1
	bx lr
_0202F25C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0202F260: .word 0x021C07A4
	thumb_func_end sub_0202F250

	thumb_func_start sub_0202F264
sub_0202F264: ; 0x0202F264
	push {r3, lr}
	ldr r0, _0202F278 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202F272
	bl sub_02022974
_0202F272:
	ldr r0, _0202F278 ; =0x021C07A4
	ldr r0, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0202F278: .word 0x021C07A4
	thumb_func_end sub_0202F264

	thumb_func_start sub_0202F27C
sub_0202F27C: ; 0x0202F27C
	push {r3, lr}
	ldr r0, _0202F294 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202F28A
	bl sub_02022974
_0202F28A:
	ldr r0, _0202F294 ; =0x021C07A4
	ldr r0, [r0, #0]
	add r0, r0, #4
	pop {r3, pc}
	nop
_0202F294: .word 0x021C07A4
	thumb_func_end sub_0202F27C

	thumb_func_start sub_0202F298
sub_0202F298: ; 0x0202F298
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0202F324 ; =0x021C07A4
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _0202F2B4
	bl sub_020181C4
	ldr r0, _0202F324 ; =0x021C07A4
	mov r1, #0
	str r1, [r0, #0]
_0202F2B4:
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl sub_02024464
	ldr r1, _0202F324 ; =0x021C07A4
	str r0, [r1, #0]
	ldr r1, [r4, #0]
	cmp r1, #1
	beq _0202F2D2
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202F2D2:
	ldr r1, _0202F328 ; =0x00001C64
	add r0, #0xe8
	ldrh r2, [r0, r1]
	ldr r3, _0202F32C ; =0x0000FFFF
	eor r3, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0202F860
	ldr r1, _0202F324 ; =0x021C07A4
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0202F75C
	cmp r0, #1
	bne _0202F2FA
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202F2FA:
	ldr r1, _0202F324 ; =0x021C07A4
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl sub_0202F794
	cmp r0, #0
	bne _0202F310
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0202F310:
	cmp r6, #0
	beq _0202F31C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202FAFC
_0202F31C:
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202F324: .word 0x021C07A4
_0202F328: .word 0x00001C64
_0202F32C: .word 0x0000FFFF
	thumb_func_end sub_0202F298

	thumb_func_start sub_0202F330
sub_0202F330: ; 0x0202F330
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	bl sub_02024464
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #1
	beq _0202F34E
	mov r1, #3
	str r1, [r5, #0]
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202F34E:
	ldr r1, _0202F3A4 ; =0x00001C64
	add r0, #0xe8
	ldrh r2, [r0, r1]
	ldr r3, _0202F3A8 ; =0x0000FFFF
	eor r3, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0202F860
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202F75C
	cmp r0, #1
	bne _0202F37A
	mov r0, #0
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202F37A:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202F794
	cmp r0, #0
	bne _0202F394
	mov r0, #2
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202F394:
	mov r0, #1
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_0202F3A4: .word 0x00001C64
_0202F3A8: .word 0x0000FFFF
	thumb_func_end sub_0202F330

	thumb_func_start sub_0202F3AC
sub_0202F3AC: ; 0x0202F3AC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r6, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	add r7, r2, #0
	cmp r1, #0
	beq _0202F3C2
	cmp r1, #1
	beq _0202F3FA
	b _0202F418
_0202F3C2:
	mov r0, #8
	bl sub_02017DE0
	mov r0, #0xb
	bl sub_02017E00
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0202447C
	add r6, r0, #0
	cmp r6, #2
	bne _0202F3F0
	add r0, r5, #0
	mov r1, #2
	bl sub_02024814
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F3F0:
	mov r0, #8
	bl sub_02017DF0
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F3FA:
	bl sub_02024828
	add r5, r0, #0
	sub r0, r5, #2
	cmp r0, #1
	bhi _0202F414
	mov r0, #0
	strh r0, [r4]
	bl sub_02017E2C
	mov r0, #8
	bl sub_02017DF0
_0202F414:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F418:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202F3AC

	thumb_func_start sub_0202F41C
sub_0202F41C: ; 0x0202F41C
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x18]
	mov ip, r1
	add r1, r2, #0
	ldrh r2, [r6]
	add r7, r0, #0
	cmp r2, #0
	beq _0202F432
	cmp r2, #1
	beq _0202F498
	b _0202F4A6
_0202F432:
	ldr r2, _0202F4AC ; =0x021C07A4
	ldr r4, [r2, #0]
	cmp r4, #0
	bne _0202F43E
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0202F43E:
	add r5, r4, #0
	add r4, #0xe8
	add r5, #0x84
	str r1, [sp]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, ip
	bl sub_0202F510
	add r0, r5, #0
	ldr r1, _0202F4B0 ; =0x0000E281
	add r0, #0x48
	strh r1, [r0]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x58
	bl sub_0202486C
	add r5, #0x60
	strh r0, [r5]
	ldr r0, _0202F4B0 ; =0x0000E281
	ldr r2, _0202F4B4 ; =0x00001C62
	add r1, r4, #0
	strh r0, [r4, r2]
	add r0, r7, #0
	add r2, r2, #2
	bl sub_0202486C
	ldr r1, _0202F4B8 ; =0x00001C64
	ldr r3, _0202F4BC ; =0x0000FFFF
	strh r0, [r4, r1]
	ldrh r2, [r4, r1]
	add r0, r4, #0
	eor r3, r2
	lsl r3, r3, #0x10
	add r2, r2, r3
	bl sub_0202F858
	ldr r0, [sp, #0x1c]
	mov r1, #0
	strh r1, [r0]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	b _0202F4A6
_0202F498:
	ldr r1, _0202F4AC ; =0x021C07A4
	add r2, r3, #0
	ldr r1, [r1, #0]
	ldr r3, [sp, #0x1c]
	bl sub_0202F3AC
	pop {r3, r4, r5, r6, r7, pc}
_0202F4A6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202F4AC: .word 0x021C07A4
_0202F4B0: .word 0x0000E281
_0202F4B4: .word 0x00001C62
_0202F4B8: .word 0x00001C64
_0202F4BC: .word 0x0000FFFF
	thumb_func_end sub_0202F41C

	thumb_func_start sub_0202F4C0
sub_0202F4C0: ; 0x0202F4C0
	cmp r0, #0x1a
	bgt _0202F4EE
	bge _0202F4FA
	add r3, r0, #0
	sub r3, #0xe
	cmp r3, #9
	bhi _0202F504
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0202F4DA: ; jump table
	.short _0202F4FA - _0202F4DA - 2 ; case 0
	.short _0202F504 - _0202F4DA - 2 ; case 1
	.short _0202F504 - _0202F4DA - 2 ; case 2
	.short _0202F4FA - _0202F4DA - 2 ; case 3
	.short _0202F504 - _0202F4DA - 2 ; case 4
	.short _0202F504 - _0202F4DA - 2 ; case 5
	.short _0202F4FA - _0202F4DA - 2 ; case 6
	.short _0202F504 - _0202F4DA - 2 ; case 7
	.short _0202F504 - _0202F4DA - 2 ; case 8
	.short _0202F4FA - _0202F4DA - 2 ; case 9
_0202F4EE:
	cmp r0, #0x1d
	bgt _0202F4F6
	beq _0202F4FA
	b _0202F504
_0202F4F6:
	cmp r0, #0x20
	bne _0202F504
_0202F4FA:
	mov r0, #4
	str r0, [r1, #0]
	mov r0, #3
	str r0, [r2, #0]
	bx lr
_0202F504:
	mov r0, #2
	str r0, [r1, #0]
	mov r0, #6
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202F4C0

	thumb_func_start sub_0202F510
sub_0202F510: ; 0x0202F510
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r3, [sp, #8]
	add r7, r1, #0
	str r2, [sp, #4]
	ldr r3, _0202F750 ; =0x020E5D10
	str r0, [sp]
	add r2, sp, #0x1c
	mov r1, #8
_0202F522:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0202F522
	ldr r1, _0202F754 ; =0x020E5D0C
	add r0, sp, #0x18
	ldrb r2, [r1]
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0x64
	bl sub_020C4CF4
	ldr r0, [sp, #8]
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl sub_0202F4C0
	ldr r0, [sp, #4]
	mov r2, #0
	ldr r3, [r0, #0]
	mov r0, #4
	tst r0, r3
	beq _0202F57C
	mov r1, #0x80
	add r0, r3, #0
	tst r0, r1
	beq _0202F574
	ldr r0, [sp, #4]
	add r1, #0xc4
	ldrh r0, [r0, r1]
	lsl r4, r0, #1
	b _0202F57E
_0202F574:
	ldr r0, [sp, #4]
	add r1, #0xc4
	ldrh r4, [r0, r1]
	b _0202F57E
_0202F57C:
	add r4, r2, #0
_0202F57E:
	ldr r5, [sp, #0x28]
	mov r0, #0
	mov ip, r0
	cmp r5, #0
	ble _0202F656
	add r0, sp, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	lsl r1, r4, #2
	add r0, r0, r1
	str r0, [sp, #0x10]
	mov r0, #1
	and r0, r4
	add r3, r7, #0
	str r0, [sp, #0xc]
_0202F59C:
	ldr r0, [sp, #4]
	mov r1, #8
	ldr r0, [r0, #0]
	add r6, r0, #0
	and r6, r1
	beq _0202F5DE
	mov r4, #0x80
	add r1, r0, #0
	tst r1, r4
	bne _0202F5DE
	mov r6, #0
	cmp r5, #0
	ble _0202F5FE
	ldr r1, [sp, #0x10]
	add r4, #0xb4
	ldr r1, [r1, r4]
	ldr r0, [sp, #4]
	lsl r1, r1, #0x1f
	lsr r4, r1, #0x1d
	add r1, sp, #0x1c
	add r4, r1, r4
	mov r1, ip
	ldrb r1, [r1, r4]
_0202F5CA:
	mov r4, #0x4d
	lsl r4, r4, #2
	ldr r4, [r0, r4]
	cmp r4, r1
	beq _0202F5FE
	add r6, r6, #1
	add r0, r0, #4
	cmp r6, r5
	blt _0202F5CA
	b _0202F5FE
_0202F5DE:
	cmp r6, #0
	beq _0202F5EE
	mov r1, #0x80
	tst r0, r1
	beq _0202F5EE
	ldr r0, [sp, #0x14]
	ldrb r6, [r0]
	b _0202F5FE
_0202F5EE:
	ldr r0, [sp, #0xc]
	mov r6, ip
	cmp r0, #0
	beq _0202F5FE
	mov r0, ip
	mov r1, #1
	add r6, r0, #0
	eor r6, r1
_0202F5FE:
	ldr r0, [sp, #0x24]
	mov r5, #0
	cmp r0, #0
	ble _0202F644
	ldr r1, _0202F758 ; =0x00001154
	ldr r0, [sp, #4]
	add r1, r0, r1
	mov r0, #0xa9
	lsl r0, r0, #2
	mul r0, r6
	add r4, r1, r0
_0202F614:
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	bne _0202F636
	ldrh r0, [r4, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0202F636
	ldrh r0, [r4, #6]
	strh r0, [r3]
	add r0, r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1b
	add r0, r7, r2
	strb r1, [r0, #0x18]
_0202F636:
	ldr r0, [sp, #0x24]
	add r5, r5, #1
	add r3, r3, #2
	add r2, r2, #1
	add r4, #0x70
	cmp r5, r0
	blt _0202F614
_0202F644:
	ldr r0, [sp, #0x14]
	ldr r5, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, r5
	blt _0202F59C
_0202F656:
	ldr r0, [sp, #8]
	cmp r0, #0xd
	bhi _0202F72C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202F668: ; jump table
	.short _0202F72C - _0202F668 - 2 ; case 0
	.short _0202F684 - _0202F668 - 2 ; case 1
	.short _0202F6A0 - _0202F668 - 2 ; case 2
	.short _0202F6BC - _0202F668 - 2 ; case 3
	.short _0202F6D8 - _0202F668 - 2 ; case 4
	.short _0202F6F4 - _0202F668 - 2 ; case 5
	.short _0202F710 - _0202F668 - 2 ; case 6
	.short _0202F72C - _0202F668 - 2 ; case 7
	.short _0202F684 - _0202F668 - 2 ; case 8
	.short _0202F6A0 - _0202F668 - 2 ; case 9
	.short _0202F6BC - _0202F668 - 2 ; case 10
	.short _0202F6D8 - _0202F668 - 2 ; case 11
	.short _0202F6F4 - _0202F668 - 2 ; case 12
	.short _0202F710 - _0202F668 - 2 ; case 13
_0202F684:
	ldr r0, [sp]
	mov r1, #0
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F692:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F692
	b _0202F742
_0202F6A0:
	ldr r0, [sp]
	mov r1, #1
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F6AE:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F6AE
	b _0202F742
_0202F6BC:
	ldr r0, [sp]
	mov r1, #2
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F6CA:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F6CA
	b _0202F742
_0202F6D8:
	ldr r0, [sp]
	mov r1, #3
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F6E6:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F6E6
	b _0202F742
_0202F6F4:
	ldr r0, [sp]
	mov r1, #4
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F702:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F702
	b _0202F742
_0202F710:
	ldr r0, [sp]
	mov r1, #5
	bl sub_02026150
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F71E:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F71E
	b _0202F742
_0202F72C:
	bl sub_020261A8
	add r3, r7, #0
	add r3, #0x28
	mov r2, #0x10
_0202F736:
	ldrh r1, [r0]
	add r0, r0, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0202F736
_0202F742:
	ldr r0, [sp, #0x40]
	strh r0, [r7, #0x24]
	ldr r0, [sp, #8]
	add r7, #0x26
	strb r0, [r7]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0202F750: .word 0x020E5D10
_0202F754: .word 0x020E5D0C
_0202F758: .word 0x00001154
	thumb_func_end sub_0202F510

	thumb_func_start sub_0202F75C
sub_0202F75C: ; 0x0202F75C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r1, #0
	add r4, #0xe8
	add r5, #0x84
	bl sub_020247C8
	cmp r0, #0
	bne _0202F772
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202F772:
	ldr r0, _0202F78C ; =0x00001C62
	ldrh r1, [r4, r0]
	ldr r0, _0202F790 ; =0x0000E281
	cmp r1, r0
	bne _0202F784
	add r5, #0x48
	ldrh r1, [r5]
	cmp r1, r0
	beq _0202F788
_0202F784:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0202F788:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202F78C: .word 0x00001C62
_0202F790: .word 0x0000E281
	thumb_func_end sub_0202F75C

	thumb_func_start sub_0202F794
sub_0202F794: ; 0x0202F794
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r1, #0
	ldr r1, _0202F844 ; =0x00001C62
	add r4, #0xe8
	ldrh r1, [r4, r1]
	ldr r2, _0202F848 ; =0x0000E281
	add r6, r0, #0
	add r5, #0x84
	cmp r1, r2
	bne _0202F7B4
	add r1, r5, #0
	add r1, #0x48
	ldrh r1, [r1]
	cmp r1, r2
	beq _0202F7B8
_0202F7B4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F7B8:
	add r1, r5, #0
	mov r2, #0x58
	bl sub_0202486C
	add r5, #0x60
	ldrh r1, [r5]
	cmp r0, r1
	beq _0202F7CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F7CC:
	ldr r2, _0202F84C ; =0x00001C64
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202486C
	ldr r1, _0202F84C ; =0x00001C64
	ldrh r1, [r4, r1]
	cmp r0, r1
	beq _0202F7E2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F7E2:
	mov r0, #0
	mov ip, r0
	ldr r0, _0202F850 ; =0x00001154
	add r0, r4, r0
	str r0, [sp]
	ldr r0, _0202F854 ; =0x000001D3
	add r6, r0, #0
	add r7, r0, #0
	add r6, #0x1c
_0202F7F4:
	ldr r4, [sp]
	mov r2, #0
_0202F7F8:
	ldrh r1, [r4, #6]
	cmp r1, r6
	bls _0202F802
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F802:
	ldrh r1, [r4, #8]
	cmp r1, r7
	bls _0202F80C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F80C:
	mov r3, #0
	add r5, r4, #0
_0202F810:
	ldrh r1, [r5, #0x1c]
	cmp r1, r0
	bls _0202F81A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202F81A:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #4
	blt _0202F810
	add r2, r2, #1
	add r4, #0x70
	cmp r2, #6
	blt _0202F7F8
	mov r1, #0xa9
	ldr r2, [sp]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [sp]
	mov r1, ip
	add r1, r1, #1
	mov ip, r1
	cmp r1, #4
	blt _0202F7F4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202F844: .word 0x00001C62
_0202F848: .word 0x0000E281
_0202F84C: .word 0x00001C64
_0202F850: .word 0x00001154
_0202F854: .word 0x000001D3
	thumb_func_end sub_0202F794

	thumb_func_start sub_0202F858
sub_0202F858: ; 0x0202F858
	ldr r3, _0202F85C ; =sub_0201D5D4
	bx r3
	; .align 2, 0
_0202F85C: .word sub_0201D5D4
	thumb_func_end sub_0202F858

	thumb_func_start sub_0202F860
sub_0202F860: ; 0x0202F860
	ldr r3, _0202F864 ; =sub_0201D600
	bx r3
	; .align 2, 0
_0202F864: .word sub_0201D600
	thumb_func_end sub_0202F860

	thumb_func_start sub_0202F868
sub_0202F868: ; 0x0202F868
	ldr r3, _0202F880 ; =0x021C07A4
	ldr r3, [r3, #0]
	cmp r3, #0
	beq _0202F87C
	lsl r0, r0, #0xa
	add r0, r3, r0
	add r1, r0, r1
	mov r0, #0x8e
	lsl r0, r0, #2
	strb r2, [r1, r0]
_0202F87C:
	bx lr
	nop
_0202F880: .word 0x021C07A4
	thumb_func_end sub_0202F868

	thumb_func_start sub_0202F884
sub_0202F884: ; 0x0202F884
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0202F8A8 ; =0x021C07A4
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202F896
	bl sub_02022974
_0202F896:
	ldr r0, _0202F8A8 ; =0x021C07A4
	ldr r1, [r0, #0]
	lsl r0, r5, #0xa
	add r0, r1, r0
	add r1, r0, r4
	mov r0, #0x8e
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202F8A8: .word 0x021C07A4
	thumb_func_end sub_0202F884

	thumb_func_start sub_0202F8AC
sub_0202F8AC: ; 0x0202F8AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, _0202FA98 ; =0x021C07A4
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0202F8BC
	b _0202FA92
_0202F8BC:
	ldr r0, [sp]
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r1, #0xe8
	str r0, [r1, #0]
	ldr r0, [sp]
	add r7, #0xe8
	ldr r0, [r0, #0x14]
	ldr r1, [sp]
	str r0, [r7, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r1, r0]
	add r1, r7, #0
	add r1, #0xe8
	str r2, [r1, #0]
	ldr r1, [sp]
	add r2, r0, #4
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xec
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #8
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xf0
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0xc
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xf4
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x10
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xf8
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x14
	ldr r2, [r1, r2]
	add r1, r7, #0
	add r1, #0xfc
	str r2, [r1, #0]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x18
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x50
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x1c
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x4c
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x20
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x48
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x24
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x44
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x28
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x40
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x3c
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x2c
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x40
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x28
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x44
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x24
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x4c
	ldr r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0x20
	str r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x60
	ldrh r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0xc
	strh r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x63
	ldrb r2, [r1, r2]
	add r1, r0, #0
	sub r1, #0xa
	strh r2, [r7, r1]
	add r2, r0, #0
	ldr r1, [sp]
	add r2, #0x64
	ldr r1, [r1, r2]
	sub r0, #8
	ldr r4, [sp]
	str r1, [r7, r0]
	add r0, r4, #0
	mov r3, #0
	add r5, r7, #0
	str r0, [sp, #8]
	str r7, [sp, #4]
_0202F9D2:
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #8]
	ldr r6, [sp, #4]
	str r0, [r5, #8]
	mov r0, #6
	add r2, #0x28
	add r6, #0x18
	mov ip, r0
_0202F9E2:
	ldmia r2!, {r0, r1}
	stmia r6!, {r0, r1}
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bne _0202F9E2
	ldr r0, [r2, #0]
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r6, #0]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0202FA04
	mov r0, #5
	sub r1, #0x68
	lsl r0, r0, #6
	b _0202FA06
_0202FA04:
	sub r1, #0x68
_0202FA06:
	str r0, [r5, r1]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	add r1, r0, #0
	sub r1, #0x6c
	str r2, [r5, r1]
	ldr r1, [sp]
	add r4, r4, #4
	add r2, r1, r3
	add r1, r0, #0
	add r1, #0x1c
	ldrb r2, [r2, r1]
	add r1, r7, r3
	sub r0, #0x54
	strb r2, [r1, r0]
	ldr r0, [sp, #8]
	add r3, r3, #1
	add r0, #0x34
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r5, r5, #4
	add r0, #0x34
	str r0, [sp, #4]
	cmp r3, #4
	blt _0202F9D2
	ldr r0, _0202FA9C ; =0x00001150
	ldr r4, [sp]
	add r0, r7, r0
	str r0, [sp, #0xc]
	ldr r0, _0202FAA0 ; =0x00001BE0
	mov r5, #0
	add r6, r7, r0
_0202FA48:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	bl sub_0202FCE8
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02025E80
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02006494
	mov r1, #0x53
	add r2, r7, r5
	lsl r1, r1, #2
	strb r0, [r2, r1]
	mov r0, #0xa9
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	add r5, r5, #1
	str r0, [sp, #0xc]
	add r4, r4, #4
	add r6, #0x20
	cmp r5, #4
	blt _0202FA48
	mov r1, #0x13
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, _0202FAA4 ; =0x00001C60
	add r1, r7, r1
	bl sub_02027A10
_0202FA92:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202FA98: .word 0x021C07A4
_0202FA9C: .word 0x00001150
_0202FAA0: .word 0x00001BE0
_0202FAA4: .word 0x00001C60
	thumb_func_end sub_0202F8AC

	thumb_func_start sub_0202FAA8
sub_0202FAA8: ; 0x0202FAA8
	ldr r2, _0202FABC ; =0x021C07A4
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0202FABA
	lsl r0, r0, #2
	add r2, r2, r0
	mov r0, #0x7f
	lsl r0, r0, #2
	str r1, [r2, r0]
_0202FABA:
	bx lr
	; .align 2, 0
_0202FABC: .word 0x021C07A4
	thumb_func_end sub_0202FAA8

	thumb_func_start sub_0202FAC0
sub_0202FAC0: ; 0x0202FAC0
	push {r3, r4}
	ldr r0, _0202FAF8 ; =0x021C07A4
	ldr r4, [r0, #0]
	cmp r4, #0
	bne _0202FAD0
	mov r0, #1
	pop {r3, r4}
	bx lr
_0202FAD0:
	mov r0, #0x45
	lsl r0, r0, #2
	add r1, r0, #0
	mov r3, #0
	add r4, #0xe8
	add r1, #0x2c
_0202FADC:
	ldr r2, [r4, r0]
	cmp r2, r1
	bls _0202FAE8
	mov r0, #0
	pop {r3, r4}
	bx lr
_0202FAE8:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #4
	blt _0202FADC
	mov r0, #1
	pop {r3, r4}
	bx lr
	nop
_0202FAF8: .word 0x021C07A4
	thumb_func_end sub_0202FAC0

	thumb_func_start sub_0202FAFC
sub_0202FAFC: ; 0x0202FAFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, _0202FCD4 ; =0x021C07A4
	str r1, [sp]
	ldr r1, [r0, #0]
	add r0, r1, #0
	str r0, [sp, #0x14]
	add r0, #0xe8
	add r1, #0xe8
	str r0, [sp, #0x14]
	ldr r0, [r1, #0]
	str r0, [r6, #0]
	ldr r0, [sp, #0x14]
	add r0, #0xe8
	ldr r1, [r0, #0]
	mov r0, #0x15
	lsl r0, r0, #4
	str r1, [r6, r0]
	ldr r1, [sp, #0x14]
	add r1, #0xec
	ldr r2, [r1, #0]
	add r1, r0, #4
	str r2, [r6, r1]
	ldr r1, [sp, #0x14]
	add r1, #0xf0
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #8
	str r2, [r6, r1]
	ldr r1, [sp, #0x14]
	add r1, #0xf4
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xc
	str r2, [r6, r1]
	ldr r1, [sp, #0x14]
	add r1, #0xf8
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x10
	str r2, [r6, r1]
	ldr r1, [sp, #0x14]
	add r1, #0xfc
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x14
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x50
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x18
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x4c
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x1c
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x48
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x20
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x44
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x24
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x2c
	ldr r2, [r1, r2]
	mov r1, #0x10
	orr r2, r1
	add r1, r0, #0
	add r1, #0x3c
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x28
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x40
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x24
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x44
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0x20
	ldr r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x4c
	str r2, [r6, r1]
	add r2, r0, #0
	ldr r1, [sp, #0x14]
	sub r2, #0xc
	ldrh r2, [r1, r2]
	add r1, r0, #0
	add r1, #0x60
	strh r2, [r6, r1]
	mov r1, #0
	str r1, [r6, #0x14]
	add r0, #0x28
	str r1, [r6, r0]
	ldr r0, [sp]
	bl sub_02027560
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	bl sub_02026338
	ldr r5, [sp, #0x14]
	ldr r1, _0202FCD8 ; =0x00001150
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r1, _0202FCDC ; =0x00001BE0
	add r0, r5, #0
	add r0, r0, r1
	mov r7, #0
	add r4, r6, #0
	str r6, [sp, #0xc]
	str r0, [sp, #4]
_0202FC10:
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0xc]
	str r0, [r4, #0x18]
	mov r0, #6
	add r3, #0x18
	add r2, #0x28
	mov ip, r0
_0202FC20:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bne _0202FC20
	ldr r0, [r3, #0]
	mov r1, #0x45
	lsl r1, r1, #2
	str r0, [r2, #0]
	add r0, r1, #0
	ldr r2, [r5, r1]
	add r0, #0x68
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	add r1, #0x8c
	str r0, [r4, r1]
	ldr r0, [sp, #8]
	ldr r1, [r4, #4]
	bl sub_0202FD30
	add r1, r4, #0
	add r1, #0xf8
	ldr r0, [sp, #4]
	ldr r1, [r1, #0]
	bl sub_02025E80
	ldr r0, [sp, #0x14]
	add r5, r5, #4
	add r1, r0, r7
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r2, [r1, r0]
	add r1, r6, r7
	add r0, #0x70
	strb r2, [r1, r0]
	ldr r0, [sp, #0x10]
	mov r1, #0xa9
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	add r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, r4, #4
	add r0, #0x20
	str r0, [sp, #4]
	cmp r7, #4
	blt _0202FC10
	ldr r0, [sp]
	bl sub_02025E44
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r1, [r6, r1]
	bl sub_02027A10
	mov r5, #0x13
	lsl r5, r5, #4
	ldr r1, [r6, r5]
	ldr r4, _0202FCE0 ; =0x00001C60
	ldr r2, [sp, #0x14]
	ldrh r0, [r1]
	ldrh r2, [r2, r4]
	ldr r3, _0202FCE4 ; =0xFFFF83FF
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1b
	lsl r2, r2, #0x1b
	and r0, r3
	lsr r2, r2, #0x11
	orr r0, r2
	strh r0, [r1]
	ldr r2, [r6, r5]
	ldrh r0, [r2]
	lsl r1, r0, #0x11
	lsr r1, r1, #0x1b
	cmp r1, #0x14
	blo _0202FCCE
	and r0, r3
	strh r0, [r2]
_0202FCCE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202FCD4: .word 0x021C07A4
_0202FCD8: .word 0x00001150
_0202FCDC: .word 0x00001BE0
_0202FCE0: .word 0x00001C60
_0202FCE4: .word 0xFFFF83FF
	thumb_func_end sub_0202FAFC

	thumb_func_start sub_0202FCE8
sub_0202FCE8: ; 0x0202FCE8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r2, #0xa9
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	add r0, r7, #0
	bl sub_0207A0F4
	strh r0, [r6]
	add r0, r7, #0
	bl sub_0207A0F8
	strh r0, [r6, #2]
	ldrh r0, [r6, #2]
	mov r4, #0
	cmp r0, #0
	ble _0202FD2C
	add r5, r6, #4
_0202FD14:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r5, #0
	bl sub_02078B40
	ldrh r0, [r6, #2]
	add r4, r4, #1
	add r5, #0x70
	cmp r4, r0
	blt _0202FD14
_0202FD2C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202FCE8

	thumb_func_start sub_0202FD30
sub_0202FD30: ; 0x0202FD30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	mov r0, #0xb
	bl sub_02073C74
	add r4, r0, #0
	ldrh r1, [r7]
	ldr r0, [sp]
	bl sub_0207A014
	ldrh r0, [r7, #2]
	mov r6, #0
	cmp r0, #0
	ble _0202FD7C
	add r5, r7, #4
_0202FD58:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02078E0C
	add r0, r4, #0
	mov r1, #0xa2
	add r2, sp, #4
	bl sub_02074B30
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0207A048
	ldrh r0, [r7, #2]
	add r6, r6, #1
	add r5, #0x70
	cmp r6, r0
	blt _0202FD58
_0202FD7C:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202FD30

	thumb_func_start sub_0202FD88
sub_0202FD88: ; 0x0202FD88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0202FDB4 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202FD98
	bl sub_02022974
_0202FD98:
	add r0, r4, #0
	mov r1, #0x64
	bl sub_02018144
	add r4, r0, #0
	ldr r0, _0202FDB4 ; =0x021C07A4
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0x64
	add r0, #0x84
	bl sub_020C4B68
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0202FDB4: .word 0x021C07A4
	thumb_func_end sub_0202FD88

	thumb_func_start sub_0202FDB8
sub_0202FDB8: ; 0x0202FDB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0202FDE4 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202FDC8
	bl sub_02022974
_0202FDC8:
	add r0, r4, #0
	mov r1, #0x80
	bl sub_02018144
	add r4, r0, #0
	ldr r0, _0202FDE4 ; =0x021C07A4
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0x80
	add r0, r0, #4
	bl sub_020C4B68
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0202FDE4: .word 0x021C07A4
	thumb_func_end sub_0202FDB8

	thumb_func_start sub_0202FDE8
sub_0202FDE8: ; 0x0202FDE8
	push {r3, lr}
	ldr r0, _0202FE00 ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202FDF6
	bl sub_02022974
_0202FDF6:
	ldr r0, _0202FE00 ; =0x021C07A4
	ldr r0, [r0, #0]
	add r0, r0, #4
	pop {r3, pc}
	nop
_0202FE00: .word 0x021C07A4
	thumb_func_end sub_0202FDE8

	thumb_func_start sub_0202FE04
sub_0202FE04: ; 0x0202FE04
	push {r3, lr}
	ldr r0, _0202FE1C ; =0x021C07A4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0202FE12
	bl sub_02022974
_0202FE12:
	ldr r0, _0202FE1C ; =0x021C07A4
	ldr r0, [r0, #0]
	add r0, #0x84
	pop {r3, pc}
	nop
_0202FE1C: .word 0x021C07A4
	thumb_func_end sub_0202FE04

	thumb_func_start sub_0202FE20
sub_0202FE20: ; 0x0202FE20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0202FE88 ; =0x021C07A4
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _0202FE36
	bl sub_02022974
_0202FE36:
	ldr r1, _0202FE88 ; =0x021C07A4
	add r0, r6, #0
	ldr r1, [r1, #0]
	mov r2, #0x64
	add r1, #0x84
	bl sub_020C4DB0
	ldr r1, _0202FE88 ; =0x021C07A4
	ldr r2, _0202FE8C ; =0x00001C68
	ldr r1, [r1, #0]
	add r0, r7, #0
	add r1, #0xe8
	bl sub_020C4DB0
	ldr r1, _0202FE88 ; =0x021C07A4
	add r0, r5, #0
	ldr r1, [r1, #0]
	mov r2, #0x80
	add r1, r1, #4
	bl sub_020C4DB0
	ldr r0, _0202FE88 ; =0x021C07A4
	ldr r1, _0202FE90 ; =0x00001D4C
	ldr r0, [r0, #0]
	ldr r2, _0202FE94 ; =0x0000FFFF
	ldrh r3, [r0, r1]
	add r0, #0xe8
	sub r1, #0xe8
	eor r2, r3
	lsl r2, r2, #0x10
	add r2, r3, r2
	bl sub_0202F860
	cmp r4, #0
	beq _0202FE84
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	bl sub_0202FAFC
_0202FE84:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202FE88: .word 0x021C07A4
_0202FE8C: .word 0x00001C68
_0202FE90: .word 0x00001D4C
_0202FE94: .word 0x0000FFFF
	thumb_func_end sub_0202FE20

	thumb_func_start sub_0202FE98
sub_0202FE98: ; 0x0202FE98
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #5
	bhi _0202FF18
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202FEAE: ; jump table
	.short _0202FEBA - _0202FEAE - 2 ; case 0
	.short _0202FED6 - _0202FEAE - 2 ; case 1
	.short _0202FEE6 - _0202FEAE - 2 ; case 2
	.short _0202FEF8 - _0202FEAE - 2 ; case 3
	.short _0202FF0A - _0202FEAE - 2 ; case 4
	.short _0202FF10 - _0202FEAE - 2 ; case 5
_0202FEBA:
	cmp r5, #0xc
	blt _0202FEC2
	bl sub_02022974
_0202FEC2:
	lsl r0, r5, #1
	ldrh r0, [r4, r0]
	ldr r1, _0202FF24 ; =0x000001ED
	cmp r0, r1
	bls _0202FED2
	mov r0, #0
	add r1, r0, #0
	pop {r3, r4, r5, pc}
_0202FED2:
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FED6:
	cmp r5, #0xc
	blt _0202FEDE
	bl sub_02022974
_0202FEDE:
	add r0, r4, r5
	ldrb r0, [r0, #0x18]
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FEE6:
	ldrh r1, [r4, #0x24]
	ldr r0, _0202FF28 ; =0x0000270F
	cmp r1, r0
	bls _0202FEF2
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FEF2:
	add r0, r1, #0
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FEF8:
	add r4, #0x26
	ldrb r0, [r4]
	cmp r0, #0x21
	blo _0202FF06
	mov r0, #0
	add r1, r0, #0
	pop {r3, r4, r5, pc}
_0202FF06:
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FF0A:
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_0202FF10:
	add r4, #0x27
	ldrb r0, [r4]
	mov r1, #0
	pop {r3, r4, r5, pc}
_0202FF18:
	bl sub_02022974
	mov r0, #0
	add r1, r0, #0
	pop {r3, r4, r5, pc}
	nop
_0202FF24: .word 0x000001ED
_0202FF28: .word 0x0000270F
	thumb_func_end sub_0202FE98

	thumb_func_start sub_0202FF2C
sub_0202FF2C: ; 0x0202FF2C
	push {r4, lr}
	mov r1, #0x64
	bl sub_02018144
	mov r1, #0
	mov r2, #0x64
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202FF2C

	thumb_func_start sub_0202FF44
sub_0202FF44: ; 0x0202FF44
	ldr r3, _0202FF48 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0202FF48: .word sub_020181C4
	thumb_func_end sub_0202FF44

	thumb_func_start sub_0202FF4C
sub_0202FF4C: ; 0x0202FF4C
	ldr r3, _0202FF54 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x58
	bx r3
	; .align 2, 0
_0202FF54: .word sub_020C4CF4
	thumb_func_end sub_0202FF4C

	thumb_func_start sub_0202FF58
sub_0202FF58: ; 0x0202FF58
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_0202FF58

	thumb_func_start sub_0202FF68
sub_0202FF68: ; 0x0202FF68
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_0202FF68

	thumb_func_start sub_0202FF70
sub_0202FF70: ; 0x0202FF70
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #0x10
	lsr r1, r1, #0x1b
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0202FF70

	thumb_func_start sub_0202FF84
sub_0202FF84: ; 0x0202FF84
	push {r3, r4}
	cmp r1, #9
	bhi _0203002A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202FF96: ; jump table
	.short _0202FFAA - _0202FF96 - 2 ; case 0
	.short _0202FFBE - _0202FF96 - 2 ; case 1
	.short _0202FFD2 - _0202FF96 - 2 ; case 2
	.short _0202FFDA - _0202FF96 - 2 ; case 3
	.short _0202FFE6 - _0202FF96 - 2 ; case 4
	.short _0202FFF2 - _0202FF96 - 2 ; case 5
	.short _0202FFFE - _0202FF96 - 2 ; case 6
	.short _0203000A - _0202FF96 - 2 ; case 7
	.short _02030016 - _0202FF96 - 2 ; case 8
	.short _02030022 - _0202FF96 - 2 ; case 9
_0202FFAA:
	ldrb r4, [r0]
	ldrb r2, [r3]
	mov r1, #1
	bic r4, r1
	mov r1, #1
	and r1, r2
	orr r1, r4
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_0202FFBE:
	ldrb r2, [r0]
	mov r1, #0xe
	bic r2, r1
	ldrb r1, [r3]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1c
	orr r1, r2
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_0202FFD2:
	ldrb r1, [r3]
	strb r1, [r0, #1]
	pop {r3, r4}
	bx lr
_0202FFDA:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #4]
	pop {r3, r4}
	bx lr
_0202FFE6:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x20]
	pop {r3, r4}
	bx lr
_0202FFF2:
	ldrb r1, [r3]
	add r0, r0, r2
	add r0, #0x28
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_0202FFFE:
	lsl r1, r2, #2
	ldr r3, [r3, #0]
	add r0, r0, r1
	str r3, [r0, #0x2c]
	pop {r3, r4}
	bx lr
_0203000A:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x3c]
	pop {r3, r4}
	bx lr
_02030016:
	ldrb r1, [r3]
	add r0, r0, r2
	add r0, #0x44
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_02030022:
	lsl r1, r2, #2
	ldr r3, [r3, #0]
	add r0, r0, r1
	str r3, [r0, #0x48]
_0203002A:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202FF84

	thumb_func_start sub_02030030
sub_02030030: ; 0x02030030
	cmp r1, #9
	bhi _020300A0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02030040: ; jump table
	.short _0203005C - _02030040 - 2 ; case 0
	.short _02030054 - _02030040 - 2 ; case 1
	.short _02030064 - _02030040 - 2 ; case 2
	.short _02030068 - _02030040 - 2 ; case 3
	.short _02030070 - _02030040 - 2 ; case 4
	.short _02030078 - _02030040 - 2 ; case 5
	.short _02030080 - _02030040 - 2 ; case 6
	.short _02030088 - _02030040 - 2 ; case 7
	.short _02030090 - _02030040 - 2 ; case 8
	.short _02030098 - _02030040 - 2 ; case 9
_02030054:
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1d
	bx lr
_0203005C:
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_02030064:
	ldrb r0, [r0, #1]
	bx lr
_02030068:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	bx lr
_02030070:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x20]
	bx lr
_02030078:
	add r0, r0, r2
	add r0, #0x28
	ldrb r0, [r0]
	bx lr
_02030080:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x2c]
	bx lr
_02030088:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x3c]
	bx lr
_02030090:
	add r0, r0, r2
	add r0, #0x44
	ldrb r0, [r0]
	bx lr
_02030098:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x48]
	bx lr
_020300A0:
	mov r0, #0
	bx lr
	thumb_func_end sub_02030030

	thumb_func_start sub_020300A4
sub_020300A4: ; 0x020300A4
	ldr r3, _020300AC ; =sub_020C4CF4
	mov r1, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_020300AC: .word sub_020C4CF4
	thumb_func_end sub_020300A4

	thumb_func_start sub_020300B0
sub_020300B0: ; 0x020300B0
	push {r3, r4}
	cmp r1, #0xa
	bne _020300DA
	ldrb r1, [r3]
	cmp r1, #1
	blo _020300CA
	mov r1, #1
	ldrb r3, [r0]
	lsl r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r3, r4}
	bx lr
_020300CA:
	mov r1, #1
	add r3, r1, #0
	ldrb r4, [r0]
	lsl r3, r2
	mov r1, #0xff
	eor r1, r3
	and r1, r4
	strb r1, [r0]
_020300DA:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020300B0

	thumb_func_start sub_020300E0
sub_020300E0: ; 0x020300E0
	cmp r1, #0xa
	bne _020300F0
	ldrb r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	bx lr
_020300F0:
	mov r0, #0
	bx lr
	thumb_func_end sub_020300E0

	thumb_func_start sub_020300F4
sub_020300F4: ; 0x020300F4
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _02030104 ; =0x00001618
	add r0, r0, r1
	pop {r3, pc}
	nop
_02030104: .word 0x00001618
	thumb_func_end sub_020300F4

	thumb_func_start sub_02030108
sub_02030108: ; 0x02030108
	ldr r3, _02030110 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x54
	bx r3
	; .align 2, 0
_02030110: .word sub_020C4CF4
	thumb_func_end sub_02030108

	thumb_func_start sub_02030114
sub_02030114: ; 0x02030114
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_02030114

	thumb_func_start sub_02030124
sub_02030124: ; 0x02030124
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_02030124

	thumb_func_start sub_0203012C
sub_0203012C: ; 0x0203012C
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #8
	lsr r1, r1, #0x1c
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_0203012C

	thumb_func_start sub_02030140
sub_02030140: ; 0x02030140
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #4
	bhi _02030192
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02030154: ; jump table
	.short _0203015E - _02030154 - 2 ; case 0
	.short _02030170 - _02030154 - 2 ; case 1
	.short _02030176 - _02030154 - 2 ; case 2
	.short _02030180 - _02030154 - 2 ; case 3
	.short _02030188 - _02030154 - 2 ; case 4
_0203015E:
	ldrb r4, [r0]
	ldrb r2, [r3]
	mov r1, #7
	bic r4, r1
	mov r1, #7
	and r1, r2
	orr r1, r4
	strb r1, [r0]
	pop {r4, pc}
_02030170:
	ldrb r1, [r3]
	strb r1, [r0, #1]
	pop {r4, pc}
_02030176:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #4]
	pop {r4, pc}
_02030180:
	ldrb r1, [r3]
	add r0, r0, r2
	strb r1, [r0, #2]
	pop {r4, pc}
_02030188:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x2c]
	pop {r4, pc}
_02030192:
	bl sub_02022974
	pop {r4, pc}
	thumb_func_end sub_02030140

	thumb_func_start sub_02030198
sub_02030198: ; 0x02030198
	push {r3, lr}
	cmp r1, #4
	bhi _020301D6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020301AA: ; jump table
	.short _020301B4 - _020301AA - 2 ; case 0
	.short _020301BC - _020301AA - 2 ; case 1
	.short _020301C0 - _020301AA - 2 ; case 2
	.short _020301C8 - _020301AA - 2 ; case 3
	.short _020301CE - _020301AA - 2 ; case 4
_020301B4:
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r3, pc}
_020301BC:
	ldrb r0, [r0, #1]
	pop {r3, pc}
_020301C0:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	pop {r3, pc}
_020301C8:
	add r0, r0, r2
	ldrb r0, [r0, #2]
	pop {r3, pc}
_020301CE:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x2c]
	pop {r3, pc}
_020301D6:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030198

	thumb_func_start sub_020301E0
sub_020301E0: ; 0x020301E0
	lsl r2, r0, #0x17
	lsr r2, r2, #0x18
	ldrb r3, [r1, r2]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r1, r3, #0
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_020301E0

	thumb_func_start sub_02030204
sub_02030204: ; 0x02030204
	push {r3, r4, r5, r6}
	lsr r5, r0, #0x1f
	lsl r4, r0, #0x1f
	lsl r3, r0, #0x17
	sub r4, r4, r5
	mov r0, #0x1f
	ror r4, r0
	add r0, r5, r4
	lsl r0, r0, #0x18
	lsr r3, r3, #0x18
	lsr r0, r0, #0x18
	bne _02030224
	add r4, r1, r3
	ldrb r6, [r1, r3]
	mov r5, #0xf0
	b _0203022A
_02030224:
	ldrb r6, [r1, r3]
	add r4, r1, r3
	mov r5, #0xf
_0203022A:
	and r5, r6
	strb r5, [r1, r3]
	lsl r0, r0, #2
	add r1, r2, #0
	lsl r1, r0
	lsl r0, r1, #0x18
	ldrb r3, [r4]
	lsr r0, r0, #0x18
	orr r0, r3
	strb r0, [r4]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030204

	thumb_func_start sub_02030244
sub_02030244: ; 0x02030244
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0203024C:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02030204
	add r4, r4, #1
	cmp r4, #0x12
	blt _0203024C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02030244

	thumb_func_start sub_02030260
sub_02030260: ; 0x02030260
	ldr r3, _02030268 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_02030268: .word sub_020C4CF4
	thumb_func_end sub_02030260

	thumb_func_start sub_0203026C
sub_0203026C: ; 0x0203026C
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0203027C ; =0x0000161C
	add r0, r0, r1
	pop {r3, pc}
	nop
_0203027C: .word 0x0000161C
	thumb_func_end sub_0203026C

	thumb_func_start sub_02030280
sub_02030280: ; 0x02030280
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #5
	bne _020302AC
	ldrb r1, [r3]
	cmp r1, #1
	blo _0203029A
	mov r1, #1
	ldrb r3, [r0]
	lsl r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r4, pc}
_0203029A:
	mov r1, #1
	add r3, r1, #0
	ldrb r4, [r0]
	lsl r3, r2
	mov r1, #0xff
	eor r1, r3
	and r1, r4
	strb r1, [r0]
	pop {r4, pc}
_020302AC:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030280

	thumb_func_start sub_020302B4
sub_020302B4: ; 0x020302B4
	push {r3, lr}
	cmp r1, #5
	bne _020302C6
	ldrb r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	pop {r3, pc}
_020302C6:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020302B4

	thumb_func_start sub_020302D0
sub_020302D0: ; 0x020302D0
	ldr r3, _020302D8 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x74
	bx r3
	; .align 2, 0
_020302D8: .word sub_020C4CF4
	thumb_func_end sub_020302D0

	thumb_func_start sub_020302DC
sub_020302DC: ; 0x020302DC
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_020302DC

	thumb_func_start sub_020302EC
sub_020302EC: ; 0x020302EC
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_020302EC

	thumb_func_start sub_020302F4
sub_020302F4: ; 0x020302F4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #8
	lsr r1, r1, #0x1c
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_020302F4

	thumb_func_start sub_02030308
sub_02030308: ; 0x02030308
	push {r4, lr}
	ldr r4, [sp, #8]
	cmp r1, #8
	bhi _02030392
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203031C: ; jump table
	.short _0203032E - _0203031C - 2 ; case 0
	.short _02030340 - _0203031C - 2 ; case 1
	.short _02030346 - _0203031C - 2 ; case 2
	.short _02030350 - _0203031C - 2 ; case 3
	.short _0203035E - _0203031C - 2 ; case 4
	.short _02030368 - _0203031C - 2 ; case 5
	.short _02030374 - _0203031C - 2 ; case 6
	.short _0203037E - _0203031C - 2 ; case 7
	.short _02030386 - _0203031C - 2 ; case 8
_0203032E:
	ldrb r3, [r0]
	ldrb r2, [r4]
	mov r1, #7
	bic r3, r1
	mov r1, #7
	and r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r4, pc}
_02030340:
	ldrb r1, [r4]
	strb r1, [r0, #1]
	pop {r4, pc}
_02030346:
	ldrh r3, [r4]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x22]
	pop {r4, pc}
_02030350:
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, r0, r3
	ldrb r4, [r4]
	add r0, #0x2a
	strb r4, [r0]
	pop {r4, pc}
_0203035E:
	lsl r1, r2, #2
	ldr r3, [r4, #0]
	add r0, r0, r1
	str r3, [r0, #0x3c]
	pop {r4, pc}
_02030368:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r3, [r4]
	add r0, #0x4c
	strh r3, [r0]
	pop {r4, pc}
_02030374:
	ldrh r3, [r4]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #6]
	pop {r4, pc}
_0203037E:
	ldrb r1, [r4]
	add r0, r0, r2
	strb r1, [r0, #3]
	pop {r4, pc}
_02030386:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r3, [r4]
	add r0, #0x54
	strh r3, [r0]
	pop {r4, pc}
_02030392:
	bl sub_02022974
	pop {r4, pc}
	thumb_func_end sub_02030308

	thumb_func_start sub_02030398
sub_02030398: ; 0x02030398
	push {r3, lr}
	cmp r1, #8
	bhi _02030406
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020303AA: ; jump table
	.short _020303BC - _020303AA - 2 ; case 0
	.short _020303C4 - _020303AA - 2 ; case 1
	.short _020303C8 - _020303AA - 2 ; case 2
	.short _020303D0 - _020303AA - 2 ; case 3
	.short _020303DC - _020303AA - 2 ; case 4
	.short _020303E4 - _020303AA - 2 ; case 5
	.short _020303EE - _020303AA - 2 ; case 6
	.short _020303F6 - _020303AA - 2 ; case 7
	.short _020303FC - _020303AA - 2 ; case 8
_020303BC:
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r3, pc}
_020303C4:
	ldrb r0, [r0, #1]
	pop {r3, pc}
_020303C8:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x22]
	pop {r3, pc}
_020303D0:
	lsl r1, r2, #2
	add r0, r0, r1
	add r0, r0, r3
	add r0, #0x2a
	ldrb r0, [r0]
	pop {r3, pc}
_020303DC:
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
_020303E4:
	lsl r1, r2, #1
	add r0, r0, r1
	add r0, #0x4c
	ldrh r0, [r0]
	pop {r3, pc}
_020303EE:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #6]
	pop {r3, pc}
_020303F6:
	add r0, r0, r2
	ldrb r0, [r0, #3]
	pop {r3, pc}
_020303FC:
	lsl r1, r2, #1
	add r0, r0, r1
	add r0, #0x54
	ldrh r0, [r0]
	pop {r3, pc}
_02030406:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030398

	thumb_func_start sub_02030410
sub_02030410: ; 0x02030410
	ldr r3, _02030418 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_02030418: .word sub_020C4CF4
	thumb_func_end sub_02030410

	thumb_func_start sub_0203041C
sub_0203041C: ; 0x0203041C
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _0203042C ; =0x00001620
	add r0, r0, r1
	pop {r3, pc}
	nop
_0203042C: .word 0x00001620
	thumb_func_end sub_0203041C

	thumb_func_start sub_02030430
sub_02030430: ; 0x02030430
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #9
	beq _0203043E
	cmp r1, #0xa
	beq _02030462
	b _02030468
_0203043E:
	ldrb r1, [r3]
	cmp r1, #1
	blo _02030450
	mov r1, #1
	ldrb r3, [r0]
	lsl r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r4, pc}
_02030450:
	mov r1, #1
	add r3, r1, #0
	ldrb r4, [r0]
	lsl r3, r2
	mov r1, #0xff
	eor r1, r3
	and r1, r4
	strb r1, [r0]
	pop {r4, pc}
_02030462:
	mov r1, #1
	strb r1, [r0, #1]
	pop {r4, pc}
_02030468:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030430

	thumb_func_start sub_02030470
sub_02030470: ; 0x02030470
	push {r3, lr}
	cmp r1, #9
	beq _0203047C
	cmp r1, #0xa
	beq _02030488
	b _0203048C
_0203047C:
	ldrb r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	pop {r3, pc}
_02030488:
	ldrb r0, [r0, #1]
	pop {r3, pc}
_0203048C:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02030470

	thumb_func_start sub_02030494
sub_02030494: ; 0x02030494
	ldr r3, _0203049C ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x48
	bx r3
	; .align 2, 0
_0203049C: .word sub_020C4CF4
	thumb_func_end sub_02030494

	thumb_func_start sub_020304A0
sub_020304A0: ; 0x020304A0
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	mov r1, #0x8e
	lsl r1, r1, #4
	add r0, r0, r1
	pop {r3, pc}
	thumb_func_end sub_020304A0

	thumb_func_start sub_020304B0
sub_020304B0: ; 0x020304B0
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end sub_020304B0

	thumb_func_start sub_020304B8
sub_020304B8: ; 0x020304B8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0]
	mov r2, #8
	lsr r1, r1, #0x1c
	bic r3, r2
	orr r1, r3
	strb r1, [r0]
	bx lr
	thumb_func_end sub_020304B8

	thumb_func_start sub_020304CC
sub_020304CC: ; 0x020304CC
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #7
	bhi _02030546
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020304E0: ; jump table
	.short _020304F0 - _020304E0 - 2 ; case 0
	.short _02030502 - _020304E0 - 2 ; case 1
	.short _02030514 - _020304E0 - 2 ; case 2
	.short _0203051A - _020304E0 - 2 ; case 3
	.short _02030520 - _020304E0 - 2 ; case 4
	.short _0203052A - _020304E0 - 2 ; case 5
	.short _02030534 - _020304E0 - 2 ; case 6
	.short _0203053C - _020304E0 - 2 ; case 7
_020304F0:
	ldrb r4, [r0]
	ldrb r2, [r3]
	mov r1, #7
	bic r4, r1
	mov r1, #7
	and r1, r2
	orr r1, r4
	strb r1, [r0]
	pop {r4, pc}
_02030502:
	ldrb r2, [r0]
	mov r1, #0x10
	bic r2, r1
	ldrb r1, [r3]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r1, r2
	strb r1, [r0]
	pop {r4, pc}
_02030514:
	ldrb r1, [r3]
	strb r1, [r0, #1]
	pop {r4, pc}
_0203051A:
	ldrb r1, [r3]
	strb r1, [r0, #2]
	pop {r4, pc}
_02030520:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #6]
	pop {r4, pc}
_0203052A:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0xe]
	pop {r4, pc}
_02030534:
	ldrb r1, [r3]
	add r0, r0, r2
	strb r1, [r0, #3]
	pop {r4, pc}
_0203053C:
	ldrh r3, [r3]
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #0x2a]
	pop {r4, pc}
_02030546:
	bl sub_02022974
	pop {r4, pc}
	thumb_func_end sub_020304CC

	thumb_func_start sub_0203054C
sub_0203054C: ; 0x0203054C
	push {r3, lr}
	cmp r1, #7
	bhi _020305A4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203055E: ; jump table
	.short _0203056E - _0203055E - 2 ; case 0
	.short _02030576 - _0203055E - 2 ; case 1
	.short _0203057E - _0203055E - 2 ; case 2
	.short _02030582 - _0203055E - 2 ; case 3
	.short _02030586 - _0203055E - 2 ; case 4
	.short _0203058E - _0203055E - 2 ; case 5
	.short _02030596 - _0203055E - 2 ; case 6
	.short _0203059C - _0203055E - 2 ; case 7
_0203056E:
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r3, pc}
_02030576:
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0203057E:
	ldrb r0, [r0, #1]
	pop {r3, pc}
_02030582:
	ldrb r0, [r0, #2]
	pop {r3, pc}
_02030586:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #6]
	pop {r3, pc}
_0203058E:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0xe]
	pop {r3, pc}
_02030596:
	add r0, r0, r2
	ldrb r0, [r0, #3]
	pop {r3, pc}
_0203059C:
	lsl r1, r2, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x2a]
	pop {r3, pc}
_020305A4:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0203054C

	thumb_func_start sub_020305AC
sub_020305AC: ; 0x020305AC
	ldr r3, _020305B4 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #4
	bx r3
	; .align 2, 0
_020305B4: .word sub_020C4CF4
	thumb_func_end sub_020305AC

	thumb_func_start sub_020305B8
sub_020305B8: ; 0x020305B8
	push {r3, lr}
	mov r1, #0x17
	bl sub_020245BC
	ldr r1, _020305C8 ; =0x00001624
	add r0, r0, r1
	pop {r3, pc}
	nop
_020305C8: .word 0x00001624
	thumb_func_end sub_020305B8

	thumb_func_start sub_020305CC
sub_020305CC: ; 0x020305CC
	push {r4, lr}
	ldr r3, [sp, #8]
	cmp r1, #8
	bne _020305F8
	ldrb r1, [r3]
	cmp r1, #1
	blo _020305E6
	mov r1, #1
	ldrb r3, [r0]
	lsl r1, r2
	orr r1, r3
	strb r1, [r0]
	pop {r4, pc}
_020305E6:
	mov r1, #1
	add r3, r1, #0
	ldrb r4, [r0]
	lsl r3, r2
	mov r1, #0xff
	eor r1, r3
	and r1, r4
	strb r1, [r0]
	pop {r4, pc}
_020305F8:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020305CC

	thumb_func_start sub_02030600
sub_02030600: ; 0x02030600
	push {r3, lr}
	cmp r1, #8
	bne _02030612
	ldrb r0, [r0]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	pop {r3, pc}
_02030612:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030600

	thumb_func_start sub_0203061C
sub_0203061C: ; 0x0203061C
	ldr r0, _02030620 ; =0x00001628
	bx lr
	; .align 2, 0
_02030620: .word 0x00001628
	thumb_func_end sub_0203061C

	thumb_func_start sub_02030624
sub_02030624: ; 0x02030624
	push {r4, lr}
	ldr r2, _0203066C ; =0x00001628
	mov r1, #0
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, _02030670 ; =0x00000954
	add r0, r4, r0
	bl sub_0202D06C
	ldr r0, _02030674 ; =0x00000ABC
	add r0, r4, r0
	bl sub_0202D080
	ldr r0, _02030678 ; =0x00000ADC
	add r0, r4, r0
	bl sub_0202D0AC
	ldr r0, _0203067C ; =0x00001618
	add r0, r4, r0
	bl sub_020300A4
	ldr r0, _02030680 ; =0x0000161C
	add r0, r4, r0
	bl sub_02030260
	ldr r0, _02030684 ; =0x00001620
	add r0, r4, r0
	bl sub_02030410
	ldr r0, _02030688 ; =0x00001624
	add r0, r4, r0
	bl sub_020305AC
	pop {r4, pc}
	nop
_0203066C: .word 0x00001628
_02030670: .word 0x00000954
_02030674: .word 0x00000ABC
_02030678: .word 0x00000ADC
_0203067C: .word 0x00001618
_02030680: .word 0x0000161C
_02030684: .word 0x00001620
_02030688: .word 0x00001624
	thumb_func_end sub_02030624

	thumb_func_start sub_0203068C
sub_0203068C: ; 0x0203068C
	ldr r3, _02030694 ; =sub_020245BC
	mov r1, #0x17
	bx r3
	nop
_02030694: .word sub_020245BC
	thumb_func_end sub_0203068C

	thumb_func_start sub_02030698
sub_02030698: ; 0x02030698
	push {r3, lr}
	cmp r1, #0x70
	bge _020306C2
	cmp r1, #0x64
	blt _020306BC
	cmp r2, #0x10
	blt _020306AA
	add r1, r1, #1
	sub r2, #0x10
_020306AA:
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	add r1, r0, #0
	asr r1, r2
	mov r0, #1
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_020306BC:
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	pop {r3, pc}
_020306C2:
	mov r3, #0
	mvn r3, r3
	cmp r2, r3
	bne _020306D2
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
_020306D2:
	lsl r2, r2, #6
	sub r1, #0x70
	add r2, r0, r2
	lsl r0, r1, #1
	add r0, r2, r0
	add r0, #0xe0
	ldrh r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030698

	thumb_func_start sub_020306E4
sub_020306E4: ; 0x020306E4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0203075C ; =0x0000270F
	add r7, r3, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r7, r0
	bls _020306F6
	add r7, r0, #0
_020306F6:
	cmp r5, #0x70
	bge _02030742
	cmp r5, #0x64
	blt _02030734
	cmp r4, #0xff
	bne _02030706
	bl sub_02022974
_02030706:
	cmp r4, #0x10
	blt _0203070E
	add r5, r5, #1
	sub r4, #0x10
_0203070E:
	cmp r7, #0
	bne _02030726
	mov r2, #1
	add r3, r2, #0
	lsl r1, r5, #1
	ldrh r0, [r6, r1]
	lsl r3, r4
	ldr r2, _02030760 ; =0x0000FFFF
	eor r2, r3
	and r0, r2
	strh r0, [r6, r1]
	b _02030758
_02030726:
	lsl r2, r5, #1
	mov r0, #1
	ldrh r1, [r6, r2]
	lsl r0, r4
	orr r0, r1
	strh r0, [r6, r2]
	b _02030758
_02030734:
	cmp r4, #0xff
	beq _0203073C
	bl sub_02022974
_0203073C:
	lsl r0, r5, #1
	strh r7, [r6, r0]
	b _02030758
_02030742:
	cmp r4, #0xff
	bne _0203074A
	bl sub_02022974
_0203074A:
	lsl r0, r4, #6
	sub r5, #0x70
	add r1, r6, r0
	lsl r0, r5, #1
	add r0, r1, r0
	add r0, #0xe0
	strh r7, [r0]
_02030758:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203075C: .word 0x0000270F
_02030760: .word 0x0000FFFF
	thumb_func_end sub_020306E4

	thumb_func_start sub_02030764
sub_02030764: ; 0x02030764
	push {r4, lr}
	mov r2, #2
	add r4, r0, #0
	add r0, #0xe0
	mov r1, #0
	lsl r2, r2, #0xa
	bl sub_020C4CF4
	mov r1, #0x64
	add r4, #0xc8
	mov r0, #0
_0203077A:
	add r1, r1, #1
	strh r0, [r4]
	add r4, r4, #2
	cmp r1, #0x6f
	ble _0203077A
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030764

	thumb_func_start sub_02030788
sub_02030788: ; 0x02030788
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	cmp r5, #0xff
	bne _02030796
	bl sub_02022974
_02030796:
	cmp r5, #0x1f
	bge _020307DC
	add r0, r6, #0
	str r0, [sp]
	add r0, #0xe0
	lsl r1, r5, #6
	str r0, [sp]
	add r7, r0, r1
_020307A6:
	add r0, r5, #1
	lsl r1, r0, #6
	ldr r0, [sp]
	mov r2, #0x40
	add r0, r0, r1
	add r1, r7, #0
	bl sub_020C4DB0
	mov r4, #0x64
_020307B8:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #1
	bl sub_02030698
	add r3, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020306E4
	add r4, r4, #2
	cmp r4, #0x6f
	blt _020307B8
	add r5, r5, #1
	add r7, #0x40
	cmp r5, #0x1f
	blt _020307A6
_020307DC:
	mov r0, #0x1f
	add r6, #0xe0
	lsl r0, r0, #6
	add r0, r6, r0
	mov r1, #0
	mov r2, #0x40
	bl sub_020C4CF4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02030788

	thumb_func_start sub_020307F0
sub_020307F0: ; 0x020307F0
	ldr r3, _02030800 ; =sub_020C4CF4
	add r0, #0xe0
	lsl r1, r1, #6
	add r0, r0, r1
	mov r1, #0
	mov r2, #0x40
	bx r3
	nop
_02030800: .word sub_020C4CF4
	thumb_func_end sub_020307F0

	thumb_func_start sub_02030804
sub_02030804: ; 0x02030804
	push {r3, r4, r5, r6, r7, lr}
	add r4, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02030698
	add r0, r0, r4
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020306E4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02030804

	thumb_func_start sub_02030824
sub_02030824: ; 0x02030824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02030698
	sub r3, r0, r4
	bpl _02030838
	mov r3, #0
_02030838:
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	lsr r3, r3, #0x10
	bl sub_020306E4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02030824

	thumb_func_start sub_02030848
sub_02030848: ; 0x02030848
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02030698
	cmp r0, r4
	bhs _02030868
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_020306E4
	pop {r3, r4, r5, r6, r7, pc}
_02030868:
	ldr r3, _0203087C ; =0x0000270F
	cmp r0, r3
	bls _02030878
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020306E4
_02030878:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203087C: .word 0x0000270F
	thumb_func_end sub_02030848

	thumb_func_start sub_02030880
sub_02030880: ; 0x02030880
	mov r0, #0xba
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030880

	thumb_func_start sub_02030888
sub_02030888: ; 0x02030888
	push {r4, lr}
	mov r2, #0xba
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030888

	thumb_func_start sub_020308A0
sub_020308A0: ; 0x020308A0
	ldr r3, _020308A4 ; =sub_0202448C
	bx r3
	; .align 2, 0
_020308A4: .word sub_0202448C
	thumb_func_end sub_020308A0

	thumb_func_start sub_020308A8
sub_020308A8: ; 0x020308A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020244A0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020246E0
	orr r0, r4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020308A8

	thumb_func_start sub_020308BC
sub_020308BC: ; 0x020308BC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_020247C8
	cmp r0, #0
	bne _020308D0
	mov r0, #0
	pop {r4, r5, r6, pc}
_020308D0:
	cmp r4, #0
	beq _020308DE
	cmp r4, #1
	beq _020308E6
	cmp r4, #2
	beq _020308F0
	b _020308FC
_020308DE:
	lsl r0, r6, #1
	add r0, r5, r0
	ldrh r0, [r0, #4]
	pop {r4, r5, r6, pc}
_020308E6:
	lsl r0, r6, #1
	add r1, r5, r0
	ldr r0, _02030904 ; =0x000003E2
	ldrh r0, [r1, r0]
	pop {r4, r5, r6, pc}
_020308F0:
	lsl r0, r6, #1
	add r1, r5, r0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	pop {r4, r5, r6, pc}
_020308FC:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02030904: .word 0x000003E2
	thumb_func_end sub_020308BC

	thumb_func_start sub_02030908
sub_02030908: ; 0x02030908
	push {r4, lr}
	ldr r4, _0203094C ; =0x0000270F
	cmp r3, r4
	bls _02030912
	add r3, r4, #0
_02030912:
	cmp r1, #0
	beq _02030920
	cmp r1, #1
	beq _02030928
	cmp r1, #2
	beq _02030932
	b _0203093E
_02030920:
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #4]
	b _02030946
_02030928:
	lsl r1, r2, #1
	add r1, r0, r1
	ldr r0, _02030950 ; =0x000003E2
	strh r3, [r1, r0]
	b _02030946
_02030932:
	lsl r1, r2, #1
	add r1, r0, r1
	mov r0, #0x1f
	lsl r0, r0, #6
	strh r3, [r1, r0]
	b _02030946
_0203093E:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02030946:
	add r0, r3, #0
	pop {r4, pc}
	nop
_0203094C: .word 0x0000270F
_02030950: .word 0x000003E2
	thumb_func_end sub_02030908

	thumb_func_start sub_02030954
sub_02030954: ; 0x02030954
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_020247C8
	cmp r0, #0
	bne _0203096A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203096A:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_020308BC
	add r1, sp, #8
	ldrh r3, [r1, #0x10]
	cmp r0, r3
	bhs _0203098A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02030908
	pop {r3, r4, r5, r6, r7, pc}
_0203098A:
	ldr r3, _0203099C ; =0x0000270F
	cmp r0, r3
	bls _0203099A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02030908
_0203099A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203099C: .word 0x0000270F
	thumb_func_end sub_02030954

	thumb_func_start sub_020309A0
sub_020309A0: ; 0x020309A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	str r0, [sp, #0xc]
	cmp r6, #0x22
	blt _020309BC
	cmp r6, #0x3c
	ble _020309C0
_020309BC:
	bl sub_02022974
_020309C0:
	ldr r1, [sp, #4]
	mov r0, #0
	sub r1, #0x24
	cmp r1, #0x18
	bhi _020309D8
	mov r3, #1
	add r2, r3, #0
	lsl r2, r1
	ldr r1, _02030A7C ; =0x01001001
	tst r1, r2
	beq _020309D8
	add r0, r3, #0
_020309D8:
	cmp r0, #0
	bne _020309E0
	bl sub_02022974
_020309E0:
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #2
	str r0, [r7, #0]
	ldr r0, [sp, #8]
	cmp r0, #0xff
	beq _020309F4
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020309F4:
	add r0, r5, #0
	bl sub_020247C8
	cmp r0, #0
	bne _02030A04
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02030A04:
	add r0, r5, #0
	bl sub_0203068C
	ldr r2, [sp, #8]
	str r0, [sp, #0x18]
	add r1, r6, #0
	bl sub_02030698
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_02030698
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x34]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_020308A0
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _02030A38
	mov r4, #0
	b _02030A46
_02030A38:
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020308BC
	add r4, r0, #0
_02030A46:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02030954
	ldr r0, [sp, #0x14]
	cmp r0, r4
	beq _02030A6A
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020308A8
	str r0, [r7, #0]
	mov r0, #1
	str r0, [sp, #0xc]
_02030A6A:
	cmp r6, #0
	beq _02030A74
	add r0, r6, #0
	bl sub_020181C4
_02030A74:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02030A7C: .word 0x01001001
	thumb_func_end sub_020309A0

	thumb_func_start sub_02030A80
sub_02030A80: ; 0x02030A80
	push {r4, lr}
	mov r1, #0x80
	bl sub_02018144
	mov r1, #0
	mov r2, #0x80
	add r4, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030A80

	thumb_func_start sub_02030A98
sub_02030A98: ; 0x02030A98
	ldr r3, _02030A9C ; =sub_020181C4
	bx r3
	; .align 2, 0
_02030A9C: .word sub_020181C4
	thumb_func_end sub_02030A98

	thumb_func_start sub_02030AA0
sub_02030AA0: ; 0x02030AA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02025E38
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202C878
	str r0, [sp]
	add r0, r6, #0
	bl sub_02025CCC
	add r0, r6, #0
	bl sub_02027848
	add r7, r0, #0
	add r0, sp, #0x10
	bl sub_020C3FBC
	add r0, r7, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r3, sp, #4
	bl sub_02027914
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r5, #0
	bl sub_020021B0
	add r0, r4, #0
	bl sub_02025F20
	str r0, [r5, #0x10]
	add r0, r4, #0
	bl sub_02025F30
	strb r0, [r5, #0x14]
	ldr r0, [sp, #0xc]
	mov r1, #0xfe
	strh r0, [r5, #0x1c]
	ldrb r0, [r5, #0x1b]
	bic r0, r1
	ldr r1, [sp, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x19
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x1b]
	mov r1, #1
	bic r0, r1
	ldr r1, [sp, #4]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #1
	and r1, r2
	orr r0, r1
	strb r0, [r5, #0x1b]
	ldr r0, [sp]
	bl sub_0202C8C0
	strb r0, [r5, #0x17]
	ldr r0, [sp]
	bl sub_0202C8C4
	strb r0, [r5, #0x18]
	ldr r0, _02030B90 ; =0x0000FFFF
	mov r1, #0
	add r2, r5, #0
_02030B42:
	add r1, r1, #1
	strh r0, [r2, #0x20]
	add r2, r2, #2
	cmp r1, #0x28
	blt _02030B42
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x20
	bl sub_02027938
	add r0, sp, #4
	ldrb r0, [r0, #0xe]
	strb r0, [r5, #0x15]
	add r0, r4, #0
	bl sub_02025F30
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02025F8C
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #0
	bl sub_0205CA14
	strb r0, [r5, #0x16]
	mov r0, #0xc
	strb r0, [r5, #0x19]
	mov r0, #2
	strb r0, [r5, #0x1a]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x7c
	bl sub_0202486C
	add r5, #0x7c
	strh r0, [r5]
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02030B90: .word 0x0000FFFF
	thumb_func_end sub_02030AA0

	thumb_func_start sub_02030B94
sub_02030B94: ; 0x02030B94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xf
	bl sub_02023790
	add r1, r5, #0
	mov r2, #0xf
	add r4, r0, #0
	bl sub_02023D8C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02030B94

	thumb_func_start sub_02030BAC
sub_02030BAC: ; 0x02030BAC
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	beq _02030BB8
	cmp r0, #1
	beq _02030BB8
	mov r0, #0
_02030BB8:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030BAC

	thumb_func_start sub_02030BBC
sub_02030BBC: ; 0x02030BBC
	ldrh r0, [r0, #0x1c]
	ldr r1, _02030BC8 ; =0x000001EF
	cmp r0, r1
	blo _02030BC6
	mov r0, #0
_02030BC6:
	bx lr
	; .align 2, 0
_02030BC8: .word 0x000001EF
	thumb_func_end sub_02030BBC

	thumb_func_start sub_02030BCC
sub_02030BCC: ; 0x02030BCC
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #0x1c]
	ldr r1, _02030BE8 ; =0x000001EF
	cmp r0, r1
	blo _02030BDC
	mov r0, #0
	pop {r3, pc}
_02030BDC:
	ldrb r1, [r2, #0x1b]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x19
	bl sub_020761E8
	pop {r3, pc}
	; .align 2, 0
_02030BE8: .word 0x000001EF
	thumb_func_end sub_02030BCC

	thumb_func_start sub_02030BEC
sub_02030BEC: ; 0x02030BEC
	ldrb r0, [r0, #0x1b]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bls _02030BF8
	mov r0, #1
_02030BF8:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030BEC

	thumb_func_start sub_02030BFC
sub_02030BFC: ; 0x02030BFC
	ldrb r0, [r0, #0x17]
	cmp r0, #0xea
	blo _02030C04
	mov r0, #0
_02030C04:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030BFC

	thumb_func_start sub_02030C08
sub_02030C08: ; 0x02030C08
	push {r4, lr}
	ldrb r1, [r0, #0x17]
	cmp r1, #0xea
	blo _02030C14
	mov r0, #0
	pop {r4, pc}
_02030C14:
	ldrb r4, [r0, #0x18]
	add r0, r1, #0
	bl sub_020996F4
	cmp r0, r4
	bhs _02030C22
	mov r4, #0
_02030C22:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030C08

	thumb_func_start sub_02030C28
sub_02030C28: ; 0x02030C28
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #0x1e]
	add r4, r1, #0
	mov r6, #0
	cmp r0, #0
	bne _02030CAA
	ldrh r0, [r5, #0x20]
	strh r0, [r4]
	ldrh r0, [r5, #0x22]
	strh r0, [r4, #2]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #4]
	ldrh r0, [r5, #0x26]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	cmp r0, #5
	blo _02030C52
	add r6, r6, #1
	b _02030C86
_02030C52:
	ldrh r0, [r4, #2]
	cmp r0, #0x13
	bls _02030C5C
	add r6, r6, #1
	b _02030C86
_02030C5C:
	ldrh r0, [r4, #4]
	ldr r1, _02030CC4 ; =0x0000FFFF
	cmp r0, r1
	beq _02030C70
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02014E4C
	cmp r0, #0
	beq _02030C84
_02030C70:
	ldrh r0, [r4, #6]
	ldr r1, _02030CC4 ; =0x0000FFFF
	cmp r0, r1
	beq _02030C86
	add r1, sp, #4
	add r2, sp, #0
	bl sub_02014E4C
	cmp r0, #0
	bne _02030C86
_02030C84:
	add r6, r6, #1
_02030C86:
	cmp r6, #0
	ble _02030CA4
	add r0, r4, #0
	mov r1, #4
	bl sub_02014A9C
	mov r0, #0
	strh r0, [r4, #2]
	ldr r0, _02030CC8 ; =0x000001B9
	mov r1, #0x63
	bl sub_02014DFC
	strh r0, [r4, #4]
	ldr r0, _02030CC4 ; =0x0000FFFF
	strh r0, [r4, #6]
_02030CA4:
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02030CAA:
	mov r0, #0x28
	add r1, r2, #0
	bl sub_02023790
	add r5, #0x20
	add r1, r5, #0
	mov r2, #0x28
	add r4, r0, #0
	bl sub_02023D8C
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02030CC4: .word 0x0000FFFF
_02030CC8: .word 0x000001B9
	thumb_func_end sub_02030C28

	thumb_func_start sub_02030CCC
sub_02030CCC: ; 0x02030CCC
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	blo _02030CD6
	cmp r0, #0xc
	bls _02030CD8
_02030CD6:
	mov r0, #1
_02030CD8:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030CCC

	thumb_func_start sub_02030CDC
sub_02030CDC: ; 0x02030CDC
	ldrb r0, [r0, #0x16]
	cmp r0, #0xf
	bls _02030CE4
	mov r0, #0
_02030CE4:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030CDC

	thumb_func_start sub_02030CE8
sub_02030CE8: ; 0x02030CE8
	mov r0, #0x40
	bx lr
	thumb_func_end sub_02030CE8

	thumb_func_start sub_02030CEC
sub_02030CEC: ; 0x02030CEC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020C4CF4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x33
	bl sub_020D5124
	mov r0, #1
	str r0, [r4, #0x34]
	mov r0, #0x23
	bl sub_02025C84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030CEC

	thumb_func_start sub_02030D10
sub_02030D10: ; 0x02030D10
	push {r3, lr}
	mov r1, #0x23
	bl sub_020245BC
	bl sub_02030CEC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030D10

	thumb_func_start sub_02030D20
sub_02030D20: ; 0x02030D20
	push {r3, lr}
	mov r1, #0x23
	bl sub_020245BC
	mov r1, #0
	ldrsb r0, [r0, r1]
	cmp r0, #0
	beq _02030D32
	mov r1, #1
_02030D32:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030D20

	thumb_func_start sub_02030D38
sub_02030D38: ; 0x02030D38
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x23
	bl sub_020245BC
	add r1, r4, #0
	bl sub_020D8B7C
	mov r0, #0x23
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_02030D38

	thumb_func_start sub_02030D50
sub_02030D50: ; 0x02030D50
	ldr r3, _02030D58 ; =sub_020245BC
	mov r1, #0x23
	bx r3
	nop
_02030D58: .word sub_020245BC
	thumb_func_end sub_02030D50

	thumb_func_start sub_02030D5C
sub_02030D5C: ; 0x02030D5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x23
	add r4, r2, #0
	bl sub_020245BC
	cmp r5, #3
	bhi _02030D8E
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02030D78: ; jump table
	.short _02030D80 - _02030D78 - 2 ; case 0
	.short _02030D84 - _02030D78 - 2 ; case 1
	.short _02030D88 - _02030D78 - 2 ; case 2
	.short _02030D8C - _02030D78 - 2 ; case 3
_02030D80:
	str r4, [r0, #0x34]
	b _02030D8E
_02030D84:
	strh r4, [r0, #0x38]
	b _02030D8E
_02030D88:
	strh r4, [r0, #0x3a]
	b _02030D8E
_02030D8C:
	str r4, [r0, #0x3c]
_02030D8E:
	mov r0, #0x23
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02030D5C

	thumb_func_start sub_02030D98
sub_02030D98: ; 0x02030D98
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x23
	bl sub_020245BC
	cmp r4, #3
	bhi _02030DCA
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02030DB2: ; jump table
	.short _02030DBA - _02030DB2 - 2 ; case 0
	.short _02030DBE - _02030DB2 - 2 ; case 1
	.short _02030DC2 - _02030DB2 - 2 ; case 2
	.short _02030DC6 - _02030DB2 - 2 ; case 3
_02030DBA:
	ldr r0, [r0, #0x34]
	pop {r4, pc}
_02030DBE:
	ldrh r0, [r0, #0x38]
	pop {r4, pc}
_02030DC2:
	ldrh r0, [r0, #0x3a]
	pop {r4, pc}
_02030DC6:
	ldr r0, [r0, #0x3c]
	pop {r4, pc}
_02030DCA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030D98

	thumb_func_start sub_02030DD0
sub_02030DD0: ; 0x02030DD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0202C878
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02025E38
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02030D50
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x64
	bl sub_020C4CF4
	mov r0, #0xc
	strb r0, [r4]
	mov r0, #2
	strb r0, [r4, #1]
	add r0, r6, #0
	bl sub_0202C8C0
	strb r0, [r4, #2]
	add r0, r6, #0
	bl sub_0202C8C4
	strb r0, [r4, #3]
	add r0, r7, #0
	bl sub_02025F20
	str r0, [r4, #4]
	add r0, r7, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	add r0, #8
	bl sub_020021B0
	mov r0, #0
	str r0, [r4, #0x18]
	add r0, r4, #0
	ldr r1, [sp]
	add r0, #0x24
	bl sub_020D8B7C
	add r0, r5, #0
	mov r1, #0
	bl sub_02030D98
	str r0, [r4, #0x5c]
	mov r0, #0x23
	bl sub_02025C84
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02030DD0

	thumb_func_start sub_02030E48
sub_02030E48: ; 0x02030E48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02030DD0
	bl sub_0201D2E8
	mov r1, #0xfa
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r0, r5, #0
	add r4, r1, #0
	add r0, #0x60
	strh r4, [r0]
	ldr r0, _02030E74 ; =0x0000FFFF
	add r5, #0x62
	strh r0, [r5]
	mov r0, #0x23
	bl sub_02025C84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02030E74: .word 0x0000FFFF
	thumb_func_end sub_02030E48

	thumb_func_start sub_02030E78
sub_02030E78: ; 0x02030E78
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r1, #0x23
	bl sub_020245BC
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02030DD0
	add r0, r5, #0
	ldrh r1, [r4, #0x38]
	add r0, #0x60
	add r5, #0x62
	strh r1, [r0]
	ldrh r0, [r4, #0x3a]
	strh r0, [r5]
	mov r0, #0x23
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02030E78

	thumb_func_start sub_02030EA4
sub_02030EA4: ; 0x02030EA4
	mov r0, #8
	bx lr
	thumb_func_end sub_02030EA4

	thumb_func_start sub_02030EA8
sub_02030EA8: ; 0x02030EA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_02030EA4
	add r2, r0, #0
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4B4C
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030EA8

	thumb_func_start sub_02030EC4
sub_02030EC4: ; 0x02030EC4
	ldr r3, _02030ECC ; =sub_020245BC
	mov r1, #0x24
	bx r3
	nop
_02030ECC: .word sub_020245BC
	thumb_func_end sub_02030EC4

	thumb_func_start sub_02030ED0
sub_02030ED0: ; 0x02030ED0
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_02030ED0

	thumb_func_start sub_02030ED4
sub_02030ED4: ; 0x02030ED4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02030ED4

	thumb_func_start sub_02030ED8
sub_02030ED8: ; 0x02030ED8
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_02030ED8

	thumb_func_start sub_02030EDC
sub_02030EDC: ; 0x02030EDC
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_02030EDC

	thumb_func_start sub_02030EE0
sub_02030EE0: ; 0x02030EE0
	ldr r1, _02030EEC ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02030EF0 ; =0x00001310
	str r0, [r2, r1]
	bx lr
	nop
_02030EEC: .word 0x021C07A8
_02030EF0: .word 0x00001310
	thumb_func_end sub_02030EE0

	thumb_func_start sub_02030EF4
sub_02030EF4: ; 0x02030EF4
	ldr r1, _02030F08 ; =0x021C07A8
	ldr r3, [r1, #4]
	ldr r1, _02030F0C ; =0x00001310
	ldr r2, [r3, r1]
	sub r2, #9
	cmp r2, #1
	bls _02030F06
	add r1, #0x20
	str r0, [r3, r1]
_02030F06:
	bx lr
	; .align 2, 0
_02030F08: .word 0x021C07A8
_02030F0C: .word 0x00001310
	thumb_func_end sub_02030EF4

	thumb_func_start sub_02030F10
sub_02030F10: ; 0x02030F10
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r1, _02030F38 ; =0x021C07A8
	ldr r0, _02030F3C ; =sub_02030F40
	ldr r1, [r1, #4]
	bl sub_020CEDC8
	cmp r0, #2
	beq _02030F34
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0
	pop {r3, pc}
_02030F34:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02030F38: .word 0x021C07A8
_02030F3C: .word sub_02030F40
	thumb_func_end sub_02030F10

	thumb_func_start sub_02030F40
sub_02030F40: ; 0x02030F40
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02030F54
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r3, pc}
_02030F54:
	bl sub_02030F64
	cmp r0, #0
	bne _02030F62
	mov r0, #9
	bl sub_02030EE0
_02030F62:
	pop {r3, pc}
	thumb_func_end sub_02030F40

	thumb_func_start sub_02030F64
sub_02030F64: ; 0x02030F64
	push {r4, lr}
	ldr r0, _02030FC0 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02030FC4 ; =0x00001310
	ldr r0, [r1, r0]
	sub r0, r0, #4
	cmp r0, #2
	bhi _02030F78
	mov r0, #1
	pop {r4, pc}
_02030F78:
	bl sub_020CE3F4
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #4
	bl sub_020C2C1C
	mov r0, #0x66
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, r0
	mov r1, #4
	bl sub_020C2C54
	ldr r0, _02030FC8 ; =sub_02030FD0
	bl sub_020CEF50
	cmp r0, #2
	beq _02030FAC
	bl sub_02030EF4
	mov r0, #0
	pop {r4, pc}
_02030FAC:
	ldr r2, _02030FC0 ; =0x021C07A8
	ldr r1, _02030FCC ; =0x0000132C
	ldr r0, [r2, #4]
	mov r3, #0
	strh r3, [r0, r1]
	ldr r2, [r2, #4]
	mov r0, #1
	add r1, r1, #2
	strh r0, [r2, r1]
	pop {r4, pc}
	; .align 2, 0
_02030FC0: .word 0x021C07A8
_02030FC4: .word 0x00001310
_02030FC8: .word sub_02030FD0
_02030FCC: .word 0x0000132C
	thumb_func_end sub_02030F64

	thumb_func_start sub_02030FD0
sub_02030FD0: ; 0x02030FD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x10]
	mov r1, #1
	lsl r1, r0
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _02030FF0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, r5, r6, pc}
_02030FF0:
	ldrh r0, [r5, #8]
	cmp r0, #7
	bgt _02031008
	bge _02031022
	cmp r0, #2
	bgt _020310C0
	cmp r0, #0
	blt _020310C0
	beq _020310B2
	cmp r0, #2
	beq _02031014
	pop {r4, r5, r6, pc}
_02031008:
	cmp r0, #9
	bgt _02031010
	beq _02031094
	pop {r4, r5, r6, pc}
_02031010:
	cmp r0, #0x1a
	pop {r4, r5, r6, pc}
_02031014:
	ldr r0, _020310C4 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _020310C8 ; =0x00001345
	ldrb r1, [r2, r0]
	add r1, r1, #1
	strb r1, [r2, r0]
	pop {r4, r5, r6, pc}
_02031022:
	ldr r0, _020310C4 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _020310CC ; =0x00001343
	ldrb r1, [r2, r0]
	cmp r1, #1
	beq _02031060
	sub r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #1
	beq _02031060
	bl sub_02031900
	ldr r1, _020310C4 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _020310D0 ; =0x00001334
	ldrb r1, [r2, r1]
	cmp r0, r1
	bge _02031060
	bl sub_0203895C
	ldrb r1, [r5, #0x14]
	cmp r1, r0
	bne _02031060
	add r1, r5, #0
	ldr r0, _020310D4 ; =0x02100A18
	add r1, #0x15
	mov r2, #3
	bl sub_020D5190
	cmp r0, #0
	beq _02031078
_02031060:
	ldrh r1, [r5, #0x10]
	mov r0, #0
	bl sub_020CF2E8
	cmp r0, #2
	beq _020310C0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, r5, r6, pc}
_02031078:
	ldr r1, _020310C4 ; =0x021C07A8
	ldr r0, _020310D8 ; =0x0000132E
	ldr r3, [r1, #4]
	ldrh r2, [r3, r0]
	orr r2, r4
	strh r2, [r3, r0]
	ldr r1, [r1, #4]
	sub r0, r0, #6
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _020310C0
	ldrh r0, [r5, #0x10]
	blx r1
	pop {r4, r5, r6, pc}
_02031094:
	ldr r2, _020310C4 ; =0x021C07A8
	ldr r1, _020310D8 ; =0x0000132E
	ldr r0, [r2, #4]
	mvn r3, r4
	ldrh r6, [r0, r1]
	and r3, r6
	strh r3, [r0, r1]
	ldr r0, [r2, #4]
	sub r1, #0xa
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _020310C0
	ldrh r0, [r5, #0x10]
	blx r1
	pop {r4, r5, r6, pc}
_020310B2:
	bl sub_020310DC
	cmp r0, #0
	bne _020310C0
	mov r0, #9
	bl sub_02030EE0
_020310C0:
	pop {r4, r5, r6, pc}
	nop
_020310C4: .word 0x021C07A8
_020310C8: .word 0x00001345
_020310CC: .word 0x00001343
_020310D0: .word 0x00001334
_020310D4: .word 0x02100A18
_020310D8: .word 0x0000132E
	thumb_func_end sub_02030FD0

	thumb_func_start sub_020310DC
sub_020310DC: ; 0x020310DC
	push {r4, lr}
	sub sp, #8
	ldr r0, _02031138 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _0203113C ; =0x00001310
	ldr r0, [r1, r0]
	sub r0, r0, #4
	cmp r0, #2
	bhi _020310F4
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_020310F4:
	mov r0, #4
	bl sub_02030EE0
	ldr r0, _02031138 ; =0x021C07A8
	ldr r2, _02031140 ; =0x00001304
	ldr r4, [r0, #4]
	ldr r3, _02031144 ; =0x00001020
	ldr r0, [r4, r2]
	add r2, r2, #4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, r2]
	add r1, r4, r3
	lsl r2, r2, #0x10
	sub r3, #0xe0
	ldr r0, _02031148 ; =sub_0203114C
	lsr r2, r2, #0x10
	add r3, r4, r3
	bl sub_020CF5E4
	cmp r0, #2
	beq _02031130
	bl sub_02030EF4
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02031130:
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	nop
_02031138: .word 0x021C07A8
_0203113C: .word 0x00001310
_02031140: .word 0x00001304
_02031144: .word 0x00001020
_02031148: .word sub_0203114C
	thumb_func_end sub_020310DC

	thumb_func_start sub_0203114C
sub_0203114C: ; 0x0203114C
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02031162
	add r0, r1, #0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r3, pc}
_02031162:
	ldrh r0, [r0, #4]
	sub r0, #0xa
	cmp r0, #3
	bhi _0203119C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02031176: ; jump table
	.short _0203117E - _02031176 - 2 ; case 0
	.short _0203119C - _02031176 - 2 ; case 1
	.short _0203119C - _02031176 - 2 ; case 2
	.short _0203119C - _02031176 - 2 ; case 3
_0203117E:
	ldr r0, _020311A0 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _020311A4 ; =0x00001314
	ldr r1, [r2, r0]
	cmp r1, #2
	bne _02031196
	sub r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #4
	beq _02031196
	cmp r0, #6
	beq _0203119C
_02031196:
	mov r0, #4
	bl sub_02030EE0
_0203119C:
	pop {r3, pc}
	nop
_020311A0: .word 0x021C07A8
_020311A4: .word 0x00001314
	thumb_func_end sub_0203114C

	thumb_func_start sub_020311A8
sub_020311A8: ; 0x020311A8
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _020311C8 ; =sub_020311CC
	bl sub_020CF77C
	cmp r0, #2
	beq _020311C2
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_020311C2:
	mov r0, #1
	pop {r3, pc}
	nop
_020311C8: .word sub_020311CC
	thumb_func_end sub_020311A8

	thumb_func_start sub_020311CC
sub_020311CC: ; 0x020311CC
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _020311DE
	bl sub_02030EF4
	bl sub_02031ECC
	pop {r3, pc}
_020311DE:
	bl sub_020311EC
	cmp r0, #0
	bne _020311EA
	bl sub_02031ECC
_020311EA:
	pop {r3, pc}
	thumb_func_end sub_020311CC

	thumb_func_start sub_020311EC
sub_020311EC: ; 0x020311EC
	push {r3, lr}
	ldr r0, _02031204 ; =sub_02031208
	bl sub_020CEF60
	cmp r0, #2
	beq _02031200
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_02031200:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02031204: .word sub_02031208
	thumb_func_end sub_020311EC

	thumb_func_start sub_02031208
sub_02031208: ; 0x02031208
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02031216
	bl sub_02030EF4
	pop {r3, pc}
_02031216:
	mov r0, #1
	bl sub_02030EE0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02031208

	thumb_func_start sub_02031220
sub_02031220: ; 0x02031220
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, _020312AC ; =0x021C07A8
	add r5, r0, #0
	add r4, r1, #0
	mov r3, #2
	ldr r0, [r2, #4]
	ldr r1, _020312B0 ; =0x00001308
	lsl r3, r3, #8
	str r3, [r0, r1]
	ldr r2, [r2, #4]
	mov r0, #0x40
	sub r1, r1, #4
	str r0, [r2, r1]
	mov r0, #2
	bl sub_02030EE0
	ldr r2, _020312AC ; =0x021C07A8
	ldr r1, _020312B4 ; =0x00001256
	ldr r3, [r2, #4]
	mov r0, #1
	strh r0, [r3, r1]
	add r0, r1, #0
	ldrh r6, [r4, #4]
	ldr r3, [r2, #4]
	add r0, #0x96
	strh r6, [r3, r0]
	add r0, r1, #0
	ldrh r6, [r4, #2]
	ldr r3, [r2, #4]
	add r0, #0x94
	strh r6, [r3, r0]
	add r0, r1, #0
	ldrh r4, [r4]
	ldr r3, [r2, #4]
	add r0, #0x92
	strh r4, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2, #4]
	add r0, #0xbe
	str r5, [r3, r0]
	add r3, r1, #0
	ldr r4, [r2, #4]
	mov r0, #0
	add r3, #0xaa
	str r0, [r4, r3]
	add r3, r1, #0
	ldr r4, [r2, #4]
	add r3, #0xb6
	strh r7, [r4, r3]
	add r3, r1, #0
	ldr r4, [r2, #4]
	add r3, #0x8e
	strh r0, [r4, r3]
	ldr r2, [r2, #4]
	add r1, #0xb8
	mov r0, #1
	strh r0, [r2, r1]
	bl sub_02031320
	cmp r0, #0
	bne _020312A6
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020312A6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020312AC: .word 0x021C07A8
_020312B0: .word 0x00001308
_020312B4: .word 0x00001256
	thumb_func_end sub_02031220

	thumb_func_start sub_020312B8
sub_020312B8: ; 0x020312B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02030EE0
	ldr r1, _0203131C ; =0x021C07A8
	mov r0, #0x13
	ldr r2, [r1, #4]
	lsl r0, r0, #8
	str r5, [r2, r0]
	add r2, r0, #0
	ldr r3, [r1, #4]
	add r2, #0xc
	strh r6, [r3, r2]
	add r3, r0, #0
	ldr r5, [r1, #4]
	mov r2, #0
	sub r3, #0x1c
	strh r2, [r5, r3]
	add r3, r0, #0
	ldr r5, [r1, #4]
	add r3, #0xe
	strh r2, [r5, r3]
	add r2, r0, #0
	ldrh r5, [r4, #4]
	ldr r3, [r1, #4]
	sub r2, #0x14
	strh r5, [r3, r2]
	add r2, r0, #0
	ldrh r5, [r4, #2]
	ldr r3, [r1, #4]
	sub r2, #0x16
	strh r5, [r3, r2]
	ldrh r2, [r4]
	ldr r1, [r1, #4]
	sub r0, #0x18
	strh r2, [r1, r0]
	bl sub_02031320
	cmp r0, #0
	bne _02031318
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0
	pop {r4, r5, r6, pc}
_02031318:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203131C: .word 0x021C07A8
	thumb_func_end sub_020312B8

	thumb_func_start sub_02031320
sub_02031320: ; 0x02031320
	push {r3, r4, r5, r6, r7, lr}
	bl sub_020CE7F4
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r5, r0
	bne _02031340
	mov r0, #3
	bl sub_02030EF4
	mov r0, #1
	bl sub_02038AE0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02031340:
	cmp r5, #0
	bne _02031354
	mov r0, #0x16
	bl sub_02030EF4
	mov r0, #1
	bl sub_02038AE0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02031354:
	ldr r1, _020313D4 ; =0x021C07A8
	ldr r0, _020313D8 ; =0x0000130C
	ldr r3, [r1, #4]
	ldrh r2, [r3, r0]
	cmp r2, #0
	bne _02031394
	add r7, r0, #0
	mov r3, #1
	add r2, r3, #0
	sub r7, #0x28
	sub r0, #0x28
_0203136A:
	ldr r4, [r1, #4]
	ldr r6, _020313DC ; =0x000012E4
	ldrh r6, [r4, r6]
	add r6, r6, #1
	strh r6, [r4, r7]
	ldr r4, [r1, #4]
	ldrh r6, [r4, r0]
	cmp r6, #0x10
	bls _02031380
	ldr r6, _020313DC ; =0x000012E4
	strh r3, [r4, r6]
_02031380:
	ldr r6, [r1, #4]
	ldr r4, _020313DC ; =0x000012E4
	ldrh r4, [r6, r4]
	add r6, r2, #0
	sub r4, r4, #1
	lsl r6, r4
	add r4, r5, #0
	tst r4, r6
	bne _02031398
	b _0203136A
_02031394:
	sub r0, #0x28
	strh r2, [r3, r0]
_02031398:
	bl sub_020CE934
	mov r1, #3
	bl sub_020E1F6C
	ldr r2, _020313D4 ; =0x021C07A8
	ldr r1, _020313E0 ; =0x000012E6
	ldr r3, [r2, #4]
	strh r0, [r3, r1]
	add r0, r1, #0
	ldr r3, [r2, #4]
	sub r0, #0xc6
	add r4, r3, r0
	sub r0, r1, #6
	str r4, [r3, r0]
	ldr r2, [r2, #4]
	sub r1, r1, #6
	ldr r0, _020313E4 ; =sub_020313E8
	add r1, r2, r1
	bl sub_020CEFA0
	cmp r0, #2
	beq _020313CE
	bl sub_02030EF4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020313CE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020313D4: .word 0x021C07A8
_020313D8: .word 0x0000130C
_020313DC: .word 0x000012E4
_020313E0: .word 0x000012E6
_020313E4: .word sub_020313E8
	thumb_func_end sub_02031320

	thumb_func_start sub_020313E8
sub_020313E8: ; 0x020313E8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020313FE
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020313FE:
	ldr r0, _020314B0 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _020314B4 ; =0x00001310
	ldr r1, [r2, r0]
	cmp r1, #2
	beq _02031420
	mov r1, #0
	sub r0, r0, #2
	strh r1, [r2, r0]
	bl sub_020314E4
	cmp r0, #0
	bne _020314AC
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_02031420:
	ldrh r1, [r4, #8]
	cmp r1, #3
	beq _020314AC
	cmp r1, #4
	beq _0203149E
	cmp r1, #5
	bne _0203149E
	sub r0, #0xf0
	add r0, r2, r0
	mov r1, #0xc0
	bl sub_020C2C1C
	ldr r0, _020314B0 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020314B8 ; =0x00001320
	ldr r2, [r1, r0]
	cmp r2, #0
	beq _02031454
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _02031454
	add r1, r4, #0
	add r1, #0x48
	ldrb r1, [r1, #4]
	ldr r0, [r4, #0x3c]
	blx r2
_02031454:
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _0203149E
	ldr r0, _020314B0 ; =0x021C07A8
	ldr r2, [r4, #0x3c]
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	cmp r2, r1
	bne _0203149E
	add r4, #0x43
	ldrb r2, [r4]
	mov r1, #3
	and r1, r2
	cmp r1, #1
	bne _0203149E
	mov r1, #0x13
	lsl r1, r1, #8
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _02031482
	sub r1, #0xe0
	add r0, r0, r1
	blx r2
_02031482:
	ldr r0, _020314B0 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020314BC ; =0x0000130E
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0203149E
	bl sub_020314E4
	cmp r0, #0
	bne _020314AC
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_0203149E:
	bl sub_02031320
	cmp r0, #0
	bne _020314AC
	mov r0, #9
	bl sub_02030EE0
_020314AC:
	pop {r4, pc}
	nop
_020314B0: .word 0x021C07A8
_020314B4: .word 0x00001310
_020314B8: .word 0x00001320
_020314BC: .word 0x0000130E
	thumb_func_end sub_020313E8

	thumb_func_start sub_020314C0
sub_020314C0: ; 0x020314C0
	push {r3, lr}
	ldr r0, _020314DC ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020314E0 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _020314D2
	mov r0, #0
	pop {r3, pc}
_020314D2:
	mov r0, #3
	bl sub_02030EE0
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020314DC: .word 0x021C07A8
_020314E0: .word 0x00001310
	thumb_func_end sub_020314C0

	thumb_func_start sub_020314E4
sub_020314E4: ; 0x020314E4
	push {r3, lr}
	ldr r0, _020314FC ; =sub_02031500
	bl sub_020CF1DC
	cmp r0, #2
	beq _020314F8
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_020314F8:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_020314FC: .word sub_02031500
	thumb_func_end sub_020314E4

	thumb_func_start sub_02031500
sub_02031500: ; 0x02031500
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0203150E
	bl sub_02030EF4
	pop {r3, pc}
_0203150E:
	mov r0, #1
	bl sub_02030EE0
	ldr r0, _02031530 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031534 ; =0x0000130E
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _0203152E
	bl sub_02031538
	cmp r0, #0
	bne _0203152E
	mov r0, #9
	bl sub_02030EE0
_0203152E:
	pop {r3, pc}
	; .align 2, 0
_02031530: .word 0x021C07A8
_02031534: .word 0x0000130E
	thumb_func_end sub_02031500

	thumb_func_start sub_02031538
sub_02031538: ; 0x02031538
	push {lr}
	sub sp, #0x24
	ldr r0, _02031594 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031598 ; =0x00001310
	ldr r0, [r1, r0]
	sub r0, r0, #4
	cmp r0, #2
	bhi _02031550
	add sp, #0x24
	mov r0, #1
	pop {pc}
_02031550:
	mov r0, #3
	bl sub_02030EE0
	add r1, sp, #4
	ldr r0, _0203159C ; =0x02100A18
	add r1, #1
	mov r2, #3
	bl sub_020C4DB0
	bl sub_0203895C
	add r1, sp, #4
	strb r0, [r1]
	mov r0, #0
	str r0, [sp]
	ldr r1, _02031594 ; =0x021C07A8
	ldr r0, _020315A0 ; =sub_020315A8
	ldr r2, [r1, #4]
	ldr r1, _020315A4 ; =0x00001220
	mov r3, #1
	add r1, r2, r1
	add r2, sp, #4
	bl sub_020CF21C
	cmp r0, #2
	beq _0203158E
	bl sub_02030EF4
	add sp, #0x24
	mov r0, #0
	pop {pc}
_0203158E:
	mov r0, #1
	add sp, #0x24
	pop {pc}
	; .align 2, 0
_02031594: .word 0x021C07A8
_02031598: .word 0x00001310
_0203159C: .word 0x02100A18
_020315A0: .word sub_020315A8
_020315A4: .word 0x00001220
	thumb_func_end sub_02031538

	thumb_func_start sub_020315A8
sub_020315A8: ; 0x020315A8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020315F4
	bl sub_02030EF4
	ldrh r0, [r4, #2]
	cmp r0, #0xc
	bne _020315C4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020315C4:
	cmp r0, #0xb
	bne _020315D0
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020315D0:
	cmp r0, #1
	bne _020315EC
	bl sub_02038938
	cmp r0, #0
	beq _020315E4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020315E4:
	mov r0, #8
	bl sub_02030EE0
	pop {r4, pc}
_020315EC:
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_020315F4:
	ldrh r0, [r4, #8]
	cmp r0, #8
	beq _0203165A
	cmp r0, #7
	bne _0203163A
	ldr r0, _0203165C ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031660 ; =0x00001335
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02031618
	mov r0, #0x14
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_02031618:
	mov r0, #4
	bl sub_02030EE0
	bl sub_02031668
	cmp r0, #0
	bne _0203162E
	mov r0, #3
	bl sub_02030EE0
	pop {r4, pc}
_0203162E:
	ldr r0, _0203165C ; =0x021C07A8
	ldrh r2, [r4, #0xa]
	ldr r1, [r0, #4]
	ldr r0, _02031664 ; =0x0000132C
	strh r2, [r1, r0]
	pop {r4, pc}
_0203163A:
	cmp r0, #6
	beq _0203165A
	cmp r0, #9
	bne _02031650
	mov r0, #0x14
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r4, pc}
_02031650:
	cmp r0, #0x1a
	beq _0203165A
	mov r0, #9
	bl sub_02030EE0
_0203165A:
	pop {r4, pc}
	; .align 2, 0
_0203165C: .word 0x021C07A8
_02031660: .word 0x00001335
_02031664: .word 0x0000132C
	thumb_func_end sub_020315A8

	thumb_func_start sub_02031668
sub_02031668: ; 0x02031668
	push {r4, lr}
	sub sp, #8
	ldr r0, _020316A8 ; =0x021C07A8
	ldr r2, _020316AC ; =0x00001304
	ldr r4, [r0, #4]
	ldr r3, _020316B0 ; =0x00001020
	ldr r0, [r4, r2]
	add r1, r4, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r2, #4
	ldr r2, [r4, r2]
	sub r3, #0xe0
	lsl r2, r2, #0x10
	ldr r0, _020316B4 ; =sub_020316B8
	lsr r2, r2, #0x10
	add r3, r4, r3
	bl sub_020CF5E4
	cmp r0, #2
	beq _020316A2
	bl sub_02030EF4
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_020316A2:
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_020316A8: .word 0x021C07A8
_020316AC: .word 0x00001304
_020316B0: .word 0x00001020
_020316B4: .word sub_020316B8
	thumb_func_end sub_02031668

	thumb_func_start sub_020316B8
sub_020316B8: ; 0x020316B8
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _020316DA
	cmp r1, #0xf
	beq _02031710
	cmp r1, #9
	beq _02031710
	cmp r1, #0xd
	beq _02031710
	add r0, r1, #0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	pop {r3, pc}
_020316DA:
	ldrh r0, [r0, #4]
	sub r0, #0xa
	cmp r0, #3
	bhi _02031710
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020316EE: ; jump table
	.short _020316F6 - _020316EE - 2 ; case 0
	.short _02031710 - _020316EE - 2 ; case 1
	.short _02031710 - _020316EE - 2 ; case 2
	.short _02031710 - _020316EE - 2 ; case 3
_020316F6:
	ldr r0, _02031714 ; =0x021C07A8
	ldr r2, [r0, #4]
	ldr r0, _02031718 ; =0x00001314
	ldr r1, [r2, r0]
	cmp r1, #3
	bne _0203170A
	sub r0, r0, #4
	ldr r0, [r2, r0]
	cmp r0, #6
	beq _02031710
_0203170A:
	mov r0, #4
	bl sub_02030EE0
_02031710:
	pop {r3, pc}
	nop
_02031714: .word 0x021C07A8
_02031718: .word 0x00001314
	thumb_func_end sub_020316B8

	thumb_func_start sub_0203171C
sub_0203171C: ; 0x0203171C
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _0203173C ; =sub_02031740
	bl sub_020CF77C
	cmp r0, #2
	beq _02031736
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_02031736:
	mov r0, #1
	pop {r3, pc}
	nop
_0203173C: .word sub_02031740
	thumb_func_end sub_0203171C

	thumb_func_start sub_02031740
sub_02031740: ; 0x02031740
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02031752
	bl sub_02030EF4
	bl sub_02031EF4
	pop {r3, pc}
_02031752:
	bl sub_02031764
	cmp r0, #0
	bne _02031760
	mov r0, #9
	bl sub_02030EE0
_02031760:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02031740

	thumb_func_start sub_02031764
sub_02031764: ; 0x02031764
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _02031788 ; =sub_0203178C
	mov r1, #0
	bl sub_020CF2E8
	cmp r0, #2
	beq _02031784
	bl sub_02030EF4
	bl sub_02031ECC
	mov r0, #0
	pop {r3, pc}
_02031784:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02031788: .word sub_0203178C
	thumb_func_end sub_02031764

	thumb_func_start sub_0203178C
sub_0203178C: ; 0x0203178C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0203179A
	bl sub_02030EF4
	pop {r3, pc}
_0203179A:
	mov r0, #1
	bl sub_02030EE0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203178C

	thumb_func_start sub_020317A4
sub_020317A4: ; 0x020317A4
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _020317C4 ; =sub_020317C8
	bl sub_020CED50
	cmp r0, #2
	beq _020317BE
	bl sub_02030EF4
	mov r0, #0
	pop {r3, pc}
_020317BE:
	mov r0, #1
	pop {r3, pc}
	nop
_020317C4: .word sub_020317C8
	thumb_func_end sub_020317A4

	thumb_func_start sub_020317C8
sub_020317C8: ; 0x020317C8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _020317E0
	mov r0, #9
	bl sub_02030EE0
	ldrh r0, [r4, #2]
	bl sub_02030EF4
	pop {r4, pc}
_020317E0:
	mov r0, #1
	bl sub_02030EE0
	pop {r4, pc}
	thumb_func_end sub_020317C8

	thumb_func_start sub_020317E8
sub_020317E8: ; 0x020317E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _02031830 ; =0x021C07A8
	add r6, r1, #0
	add r4, r2, #0
	ldr r1, [r0, #4]
	mov r0, #0x3d
	lsl r0, r0, #6
	ldr r2, _02031834 ; =0x00001304
	add r0, r1, r0
	ldr r1, [r1, r2]
	add r7, r3, #0
	bl sub_020C2C54
	ldr r0, _02031838 ; =0x0000FFFF
	add r1, r7, #0
	str r0, [sp]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _0203183C ; =sub_02031840
	add r2, r5, #0
	add r3, r6, #0
	bl sub_020CF64C
	cmp r0, #2
	bne _0203182A
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0203182A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02031830: .word 0x021C07A8
_02031834: .word 0x00001304
_02031838: .word 0x0000FFFF
_0203183C: .word sub_02031840
	thumb_func_end sub_020317E8

	thumb_func_start sub_02031840
sub_02031840: ; 0x02031840
	push {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02031854
	cmp r1, #0xf
	beq _02031854
	add r0, r1, #0
	bl sub_02030EF4
	pop {r3, pc}
_02031854:
	ldr r2, [r0, #0x20]
	cmp r2, #0
	beq _02031866
	cmp r1, #0
	bne _02031862
	mov r0, #1
	b _02031864
_02031862:
	mov r0, #0
_02031864:
	blx r2
_02031866:
	pop {r3, pc}
	thumb_func_end sub_02031840

	thumb_func_start sub_02031868
sub_02031868: ; 0x02031868
	push {r3, lr}
	add r2, r0, #0
	ldrh r0, [r2, #2]
	cmp r0, #0
	beq _02031878
	bl sub_02030EF4
	pop {r3, pc}
_02031878:
	ldr r0, _020318A8 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020318AC ; =0x00001318
	ldr r3, [r1, r0]
	cmp r3, #0
	beq _020318A4
	ldrh r0, [r2, #4]
	cmp r0, #0x19
	beq _020318A4
	cmp r0, #0x15
	bne _02031898
	ldrh r0, [r2, #0x12]
	ldr r1, [r2, #0xc]
	ldrh r2, [r2, #0x10]
	blx r3
	pop {r3, pc}
_02031898:
	cmp r0, #9
	bne _020318A4
	ldrh r0, [r2, #0x12]
	mov r1, #0
	add r2, r1, #0
	blx r3
_020318A4:
	pop {r3, pc}
	nop
_020318A8: .word 0x021C07A8
_020318AC: .word 0x00001318
	thumb_func_end sub_02031868

	thumb_func_start sub_020318B0
sub_020318B0: ; 0x020318B0
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _020318C0
	mov r0, #0xa
	bl sub_02030EE0
	pop {r3, pc}
_020318C0:
	mov r0, #0
	add r1, r0, #0
	bl sub_020A2654
	mov r0, #0
	bl sub_02030EE0
	pop {r3, pc}
	thumb_func_end sub_020318B0

	thumb_func_start sub_020318D0
sub_020318D0: ; 0x020318D0
	ldr r1, _020318D8 ; =0x021C07A8
	ldr r1, [r1, #4]
	str r0, [r1, #8]
	bx lr
	; .align 2, 0
_020318D8: .word 0x021C07A8
	thumb_func_end sub_020318D0

	thumb_func_start sub_020318DC
sub_020318DC: ; 0x020318DC
	ldr r2, _020318E8 ; =0x021C07A8
	ldr r3, [r2, #4]
	str r0, [r3, #0]
	ldr r0, [r2, #4]
	strh r1, [r0, #4]
	bx lr
	; .align 2, 0
_020318E8: .word 0x021C07A8
	thumb_func_end sub_020318DC

	thumb_func_start sub_020318EC
sub_020318EC: ; 0x020318EC
	ldr r0, _020318F8 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _020318FC ; =0x0000132E
	ldrh r0, [r1, r0]
	bx lr
	nop
_020318F8: .word 0x021C07A8
_020318FC: .word 0x0000132E
	thumb_func_end sub_020318EC

	thumb_func_start sub_02031900
sub_02031900: ; 0x02031900
	push {r3, r4}
	ldr r0, _0203192C ; =0x021C07A8
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _02031930 ; =0x0000132E
	add r3, r2, #0
	ldrh r4, [r1, r0]
	mov r1, #1
_02031910:
	add r0, r4, #0
	tst r0, r1
	beq _02031918
	add r2, r2, #1
_02031918:
	lsl r0, r4, #0xf
	add r3, r3, #1
	lsr r4, r0, #0x10
	cmp r3, #0x10
	blt _02031910
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_0203192C: .word 0x021C07A8
_02031930: .word 0x0000132E
	thumb_func_end sub_02031900

	thumb_func_start sub_02031934
sub_02031934: ; 0x02031934
	ldr r0, _02031940 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031944 ; =0x00001310
	ldr r0, [r1, r0]
	bx lr
	nop
_02031940: .word 0x021C07A8
_02031944: .word 0x00001310
	thumb_func_end sub_02031934

	thumb_func_start sub_02031948
sub_02031948: ; 0x02031948
	ldr r0, _02031954 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031958 ; =0x00001330
	ldr r0, [r1, r0]
	bx lr
	nop
_02031954: .word 0x021C07A8
_02031958: .word 0x00001330
	thumb_func_end sub_02031948

	thumb_func_start sub_0203195C
sub_0203195C: ; 0x0203195C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r0, sp, #0
	bl sub_020C3FA0
	ldr r0, _020319E4 ; =0x027FFC3C
	ldr r3, [r0, #0]
	add r0, sp, #0
	ldrh r2, [r0, #4]
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	add r0, r0, r3
	add r0, r1, r0
	add r1, r2, r0
	ldr r3, _020319E8 ; =0x021C07A8
	ldr r2, _020319EC ; =0x00001338
	ldr r0, [r3, #4]
	str r1, [r0, r2]
	ldr r0, [r3, #4]
	ldr r1, _020319F0 ; =0x00010DCD
	ldr r4, [r0, r2]
	add r5, r4, #0
	mul r5, r1
	ldr r1, _020319F4 ; =0x00003039
	mov r4, #0
	add r1, r5, r1
	str r1, [r0, r2]
	ldr r1, [r3, #4]
	add r0, r2, #4
	strh r4, [r1, r0]
	ldr r1, [r3, #4]
	mov r4, #0x65
	add r0, r2, #6
	strh r4, [r1, r0]
	mov r0, #3
	bl sub_02030EE0
	mov r0, #1
	bl sub_020319F8
	cmp r0, #0x18
	bne _020319C8
	mov r0, #0x18
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020319C8:
	cmp r0, #2
	beq _020319DC
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020319DC:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_020319E4: .word 0x027FFC3C
_020319E8: .word 0x021C07A8
_020319EC: .word 0x00001338
_020319F0: .word 0x00010DCD
_020319F4: .word 0x00003039
	thumb_func_end sub_0203195C

	thumb_func_start sub_020319F8
sub_020319F8: ; 0x020319F8
	push {r4, lr}
	add r4, r0, #0
	bl sub_020CE7F4
	mov r1, #2
	lsl r1, r1, #0xe
	cmp r0, r1
	bne _02031A1E
	mov r0, #3
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	mov r0, #3
	pop {r4, pc}
_02031A1E:
	cmp r0, #0
	bne _02031A38
	mov r0, #0x16
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	mov r0, #0x18
	pop {r4, pc}
_02031A38:
	mov r2, #1
	sub r1, r4, #1
	lsl r2, r1
	add r1, r2, #0
	tst r1, r0
	bne _02031A60
	mov r2, #1
_02031A46:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, #0x10
	bls _02031A54
	mov r0, #0x18
	pop {r4, pc}
_02031A54:
	sub r1, r4, #1
	add r3, r2, #0
	lsl r3, r1
	add r1, r3, #0
	tst r1, r0
	beq _02031A46
_02031A60:
	ldr r0, _02031A70 ; =sub_02031A74
	add r1, r4, #0
	bl sub_02031AF0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4, pc}
	nop
_02031A70: .word sub_02031A74
	thumb_func_end sub_020319F8

	thumb_func_start sub_02031A74
sub_02031A74: ; 0x02031A74
	push {r3, r4, r5, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _02031A90
	add r0, r1, #0
	bl sub_02030EF4
	mov r0, #9
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	pop {r3, r4, r5, pc}
_02031A90:
	ldr r2, _02031AE8 ; =0x021C07A8
	ldrh r1, [r0, #8]
	ldrh r5, [r0, #0xa]
	ldr r0, [r2, #4]
	ldr r3, _02031AEC ; =0x0000133E
	ldrh r4, [r0, r3]
	cmp r4, r5
	bls _02031AB0
	strh r5, [r0, r3]
	mov r4, #1
	sub r0, r1, #1
	lsl r4, r0
	ldr r2, [r2, #4]
	add r0, r3, #2
	strh r4, [r2, r0]
	b _02031AC4
_02031AB0:
	cmp r4, r5
	bne _02031AC4
	add r2, r3, #2
	ldrh r5, [r0, r2]
	mov r4, #1
	sub r2, r1, #1
	lsl r4, r2
	orr r4, r5
	add r2, r3, #2
	strh r4, [r0, r2]
_02031AC4:
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_020319F8
	cmp r0, #0x18
	bne _02031ADA
	mov r0, #7
	bl sub_02030EE0
	pop {r3, r4, r5, pc}
_02031ADA:
	cmp r0, #2
	beq _02031AE4
	mov r0, #9
	bl sub_02030EE0
_02031AE4:
	pop {r3, r4, r5, pc}
	nop
_02031AE8: .word 0x021C07A8
_02031AEC: .word 0x0000133E
	thumb_func_end sub_02031A74

	thumb_func_start sub_02031AF0
sub_02031AF0: ; 0x02031AF0
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0x1e
	str r1, [sp]
	mov r1, #3
	mov r2, #0x11
	bl sub_020D07C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02031AF0

	thumb_func_start sub_02031B04
sub_02031B04: ; 0x02031B04
	push {r3, lr}
	mov r0, #1
	bl sub_02030EE0
	ldr r0, _02031B28 ; =0x021C07A8
	ldr r1, [r0, #4]
	mov r0, #0x4d
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	bl sub_02031B30
	ldr r2, _02031B28 ; =0x021C07A8
	ldr r1, _02031B2C ; =0x0000133C
	ldr r3, [r2, #4]
	strh r0, [r3, r1]
	ldr r0, [r2, #4]
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02031B28: .word 0x021C07A8
_02031B2C: .word 0x0000133C
	thumb_func_end sub_02031B04

	thumb_func_start sub_02031B30
sub_02031B30: ; 0x02031B30
	push {r4, r5, r6, r7}
	add r4, r0, #0
	mov r0, #0
	add r3, r0, #0
	add r2, r0, #0
	mov r1, #1
_02031B3C:
	add r5, r1, #0
	lsl r5, r2
	tst r5, r4
	beq _02031B50
	add r0, r2, #1
	add r3, r3, #1
	lsl r0, r0, #0x10
	lsl r3, r3, #0x10
	asr r0, r0, #0x10
	lsr r3, r3, #0x10
_02031B50:
	add r2, r2, #1
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	cmp r2, #0x10
	blt _02031B3C
	cmp r3, #1
	bls _02031BAE
	ldr r5, _02031BB4 ; =0x021C07A8
	ldr r2, _02031BB8 ; =0x00001338
	ldr r0, [r5, #4]
	ldr r1, _02031BBC ; =0x00010DCD
	ldr r6, [r0, r2]
	add r7, r6, #0
	mul r7, r1
	ldr r1, _02031BC0 ; =0x00003039
	add r1, r7, r1
	str r1, [r0, r2]
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r0, [r0, r2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mul r0, r3
	lsl r0, r0, #8
	lsr r2, r0, #0x10
	mov r3, #0
_02031B84:
	add r0, r4, #0
	tst r0, r1
	beq _02031B9E
	cmp r2, #0
	bne _02031B98
	add r0, r3, #1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, r5, r6, r7}
	bx lr
_02031B98:
	sub r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_02031B9E:
	lsl r0, r4, #0xf
	lsr r4, r0, #0x10
	add r0, r3, #1
	lsl r0, r0, #0x10
	asr r3, r0, #0x10
	cmp r3, #0x10
	blt _02031B84
	mov r0, #0
_02031BAE:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02031BB4: .word 0x021C07A8
_02031BB8: .word 0x00001338
_02031BBC: .word 0x00010DCD
_02031BC0: .word 0x00003039
	thumb_func_end sub_02031B30

	thumb_func_start sub_02031BC4
sub_02031BC4: ; 0x02031BC4
	push {r4, r5, r6, lr}
	lsl r2, r0, #0x1b
	lsr r3, r2, #0x1b
	beq _02031BD2
	mov r2, #0x20
	sub r2, r2, r3
	add r0, r0, r2
_02031BD2:
	ldr r3, _02031C48 ; =0x021C07A8
	ldr r2, _02031C4C ; =0x00001308
	str r0, [r3, #4]
	mov r4, #0
	str r4, [r0, r2]
	ldr r5, [r3, #4]
	sub r0, r2, #4
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x10
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x24
	strh r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	mov r6, #1
	add r0, #0x26
	strh r6, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x28
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #8
	str r4, [r5, r0]
	ldr r0, [r3, #4]
	mov r6, #8
	str r4, [r0, #0]
	ldr r0, [r3, #4]
	strh r4, [r0, #4]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x14
	str r4, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x2c
	strb r6, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x2d
	strb r4, [r5, r0]
	ldr r0, [r3, #4]
	add r2, #0x3a
	strb r4, [r0, r2]
	add r0, r1, #0
	bl sub_02031C70
	cmp r0, #0
	bne _02031C42
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02031C42:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02031C48: .word 0x021C07A8
_02031C4C: .word 0x00001308
	thumb_func_end sub_02031BC4

	thumb_func_start sub_02031C50
sub_02031C50: ; 0x02031C50
	mov r0, #0x4e
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end sub_02031C50

	thumb_func_start sub_02031C58
sub_02031C58: ; 0x02031C58
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	bne _02031C6C
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0x19
	bl sub_02030EF4
_02031C6C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02031C58

	thumb_func_start sub_02031C70
sub_02031C70: ; 0x02031C70
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	bl sub_02030EE0
	cmp r4, #1
	bne _02031C8E
	ldr r0, _02031CB4 ; =0x021C07A8
	ldr r1, _02031CB8 ; =sub_02031CBC
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, #0x40
	bl sub_020CECC8
	b _02031C9E
_02031C8E:
	ldr r0, _02031CB4 ; =0x021C07A8
	ldr r1, _02031CB8 ; =sub_02031CBC
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, #0x40
	mov r3, #0
	bl sub_020CECD8
_02031C9E:
	cmp r0, #2
	beq _02031CB0
	bl sub_02030EF4
	mov r0, #0xa
	bl sub_02030EE0
	mov r0, #0
	pop {r4, pc}
_02031CB0:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02031CB4: .word 0x021C07A8
_02031CB8: .word sub_02031CBC
	thumb_func_end sub_02031C70

	thumb_func_start sub_02031CBC
sub_02031CBC: ; 0x02031CBC
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02031CD6
	bl sub_02030EF4
	mov r0, #0xa
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	pop {r3, pc}
_02031CD6:
	ldr r0, _02031CFC ; =sub_02031C58
	bl sub_020CE478
	cmp r0, #0
	beq _02031CF2
	bl sub_02030EF4
	mov r0, #0xa
	bl sub_02030EE0
	mov r0, #1
	bl sub_02038AE0
	pop {r3, pc}
_02031CF2:
	mov r0, #1
	bl sub_02030EE0
	pop {r3, pc}
	nop
_02031CFC: .word sub_02031C58
	thumb_func_end sub_02031CBC

	thumb_func_start sub_02031D00
sub_02031D00: ; 0x02031D00
	bx lr
	; .align 2, 0
	thumb_func_end sub_02031D00

	thumb_func_start sub_02031D04
sub_02031D04: ; 0x02031D04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0203895C
	bl sub_0203276C
	cmp r0, #0
	beq _02031D28
	ldr r0, _02031DC8 ; =sub_02031D00
	mov r2, #0x64
	ldr r1, _02031DCC ; =0x0000FFFF
	mov r3, #5
	str r2, [sp]
	bl sub_020D0764
_02031D28:
	ldr r1, _02031DD0 ; =0x021C07A8
	mov r0, #7
	ldr r2, [r1, #4]
	ldr r1, _02031DD4 ; =0x00001308
	lsl r0, r0, #6
	str r0, [r2, r1]
	ldr r0, _02031DD0 ; =0x021C07A8
	mov r3, #0xe0
	ldr r2, [r0, #4]
	sub r0, r1, #4
	str r3, [r2, r0]
	ldr r0, _02031DD0 ; =0x021C07A8
	add r1, #0xc
	ldr r0, [r0, #4]
	str r5, [r0, r1]
	mov r0, #3
	bl sub_02030EE0
	ldr r1, _02031DD0 ; =0x021C07A8
	cmp r5, #0
	ldr r0, [r1, #4]
	strh r6, [r0, #0xc]
	ldr r0, [r1, #4]
	strh r7, [r0, #0x32]
	add r0, sp, #8
	ldrh r2, [r0, #0x10]
	ldr r0, [r1, #4]
	strh r2, [r0, #0x18]
	beq _02031D68
	cmp r5, #4
	beq _02031D82
	b _02031D8E
_02031D68:
	ldr r0, [r1, #4]
	mov r2, #0xc0
	strh r2, [r0, #0x34]
	cmp r4, #5
	blo _02031D7A
	ldr r0, [r1, #4]
	mov r2, #0xc
	strh r2, [r0, #0x36]
	b _02031D8E
_02031D7A:
	ldr r0, [r1, #4]
	mov r2, #0x26
	strh r2, [r0, #0x36]
	b _02031D8E
_02031D82:
	ldr r0, [r1, #4]
	mov r2, #0x64
	strh r2, [r0, #0x34]
	ldr r0, [r1, #4]
	mov r2, #0xc
	strh r2, [r0, #0x36]
_02031D8E:
	ldr r1, _02031DD0 ; =0x021C07A8
	ldr r0, [r1, #4]
	strh r4, [r0, #0x10]
	ldr r2, [r1, #4]
	mov r0, #0
	strh r0, [r2, #0x16]
	ldr r2, [r1, #4]
	cmp r5, #2
	strh r0, [r2, #0x12]
	ldr r2, [sp, #0x1c]
	ldr r1, [r1, #4]
	strh r2, [r1, #0xe]
	bne _02031DAA
	mov r0, #1
_02031DAA:
	ldr r1, _02031DD0 ; =0x021C07A8
	cmp r5, #0
	ldr r1, [r1, #4]
	strh r0, [r1, #0x14]
	beq _02031DBC
	cmp r5, #2
	beq _02031DBC
	cmp r5, #4
	bne _02031DC2
_02031DBC:
	bl sub_02030F10
	pop {r3, r4, r5, r6, r7, pc}
_02031DC2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02031DC8: .word sub_02031D00
_02031DCC: .word 0x0000FFFF
_02031DD0: .word 0x021C07A8
_02031DD4: .word 0x00001308
	thumb_func_end sub_02031D04

	thumb_func_start sub_02031DD8
sub_02031DD8: ; 0x02031DD8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203895C
	bl sub_0203276C
	cmp r0, #0
	beq _02031DFA
	ldr r0, _02031E58 ; =sub_02031D00
	mov r2, #0x64
	ldr r1, _02031E5C ; =0x0000FFFF
	mov r3, #5
	str r2, [sp]
	bl sub_020D0764
_02031DFA:
	ldr r2, _02031E60 ; =0x021C07A8
	mov r3, #2
	ldr r0, [r2, #4]
	ldr r1, _02031E64 ; =0x00001308
	lsl r3, r3, #8
	str r3, [r0, r1]
	sub r0, r1, #4
	ldr r3, [r2, #4]
	mov r6, #0x40
	str r6, [r3, r0]
	ldr r0, [r2, #4]
	add r1, #0xc
	str r5, [r0, r1]
	mov r0, #3
	bl sub_02030EE0
	cmp r5, #1
	beq _02031E26
	cmp r5, #3
	beq _02031E26
	cmp r5, #5
	bne _02031E50
_02031E26:
	ldr r1, _02031E60 ; =0x021C07A8
	add r0, r4, #0
	ldr r2, [r1, #4]
	ldr r1, _02031E68 ; =0x00001220
	add r1, r2, r1
	mov r2, #0xc0
	bl sub_020C4DB0
	ldr r0, _02031E60 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031E68 ; =0x00001220
	add r0, r1, r0
	mov r1, #0xc0
	bl sub_020C2C54
	bl sub_020C2C78
	bl sub_02031538
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02031E50:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02031E58: .word sub_02031D00
_02031E5C: .word 0x0000FFFF
_02031E60: .word 0x021C07A8
_02031E64: .word 0x00001308
_02031E68: .word 0x00001220
	thumb_func_end sub_02031DD8

	thumb_func_start sub_02031E6C
sub_02031E6C: ; 0x02031E6C
	push {r3, lr}
	ldr r2, _02031E90 ; =0x021C07A8
	ldr r3, [r2, #4]
	ldr r2, _02031E94 ; =0x00001318
	str r0, [r3, r2]
	lsl r0, r1, #0x10
	ldr r1, _02031E98 ; =sub_02031868
	lsr r0, r0, #0x10
	mov r2, #0
	bl sub_020CE4BC
	cmp r0, #0
	beq _02031E8E
	mov r0, #9
	bl sub_02030EE0
_02031E8C:
	b _02031E8C
_02031E8E:
	pop {r3, pc}
	; .align 2, 0
_02031E90: .word 0x021C07A8
_02031E94: .word 0x00001318
_02031E98: .word sub_02031868
	thumb_func_end sub_02031E6C

	thumb_func_start sub_02031E9C
sub_02031E9C: ; 0x02031E9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02031F90
	cmp r0, #0
	bne _02031EBC
	bl sub_020318EC
	mov r1, #0xfe
	tst r0, r1
	bne _02031EBC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02031EBC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020317E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02031E9C

	thumb_func_start sub_02031ECC
sub_02031ECC: ; 0x02031ECC
	push {r3, lr}
	ldr r0, _02031EEC ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031EF0 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #2
	bne _02031EDC
_02031EDA:
	b _02031EDA
_02031EDC:
	bl sub_020317A4
	cmp r0, #0
	bne _02031EEA
	mov r0, #0xa
	bl sub_02030EE0
_02031EEA:
	pop {r3, pc}
	; .align 2, 0
_02031EEC: .word 0x021C07A8
_02031EF0: .word 0x00001310
	thumb_func_end sub_02031ECC

	thumb_func_start sub_02031EF4
sub_02031EF4: ; 0x02031EF4
	push {r3, lr}
	ldr r0, _02031F60 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031F64 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _02031F5E
	cmp r0, #6
	beq _02031F1A
	cmp r0, #5
	beq _02031F1A
	cmp r0, #4
	beq _02031F1A
	mov r0, #3
	bl sub_02030EE0
	bl sub_02031ECC
	pop {r3, pc}
_02031F1A:
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _02031F60 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031F68 ; =0x00001314
	ldr r0, [r1, r0]
	cmp r0, #5
	bhi _02031F5E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02031F38: ; jump table
	.short _02031F52 - _02031F38 - 2 ; case 0
	.short _02031F44 - _02031F38 - 2 ; case 1
	.short _02031F5E - _02031F38 - 2 ; case 2
	.short _02031F5E - _02031F38 - 2 ; case 3
	.short _02031F52 - _02031F38 - 2 ; case 4
	.short _02031F44 - _02031F38 - 2 ; case 5
_02031F44:
	bl sub_0203171C
	cmp r0, #0
	bne _02031F5E
	bl sub_02031ECC
	pop {r3, pc}
_02031F52:
	bl sub_020311A8
	cmp r0, #0
	bne _02031F5E
	bl sub_02031ECC
_02031F5E:
	pop {r3, pc}
	; .align 2, 0
_02031F60: .word 0x021C07A8
_02031F64: .word 0x00001310
_02031F68: .word 0x00001314
	thumb_func_end sub_02031EF4

	thumb_func_start sub_02031F6C
sub_02031F6C: ; 0x02031F6C
	push {r3, lr}
	mov r0, #3
	bl sub_02030EE0
	ldr r0, _02031F8C ; =sub_020318B0
	bl sub_020CED88
	cmp r0, #2
	beq _02031F88
	mov r0, #9
	bl sub_02030EE0
	mov r0, #0
	pop {r3, pc}
_02031F88:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02031F8C: .word sub_020318B0
	thumb_func_end sub_02031F6C

	thumb_func_start sub_02031F90
sub_02031F90: ; 0x02031F90
	ldr r0, _02031F9C ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031FA0 ; =0x0000132C
	ldrh r0, [r1, r0]
	bx lr
	nop
_02031F9C: .word 0x021C07A8
_02031FA0: .word 0x0000132C
	thumb_func_end sub_02031F90

	thumb_func_start sub_02031FA4
sub_02031FA4: ; 0x02031FA4
	ldr r1, _02031FB4 ; =0x021C07A8
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02031FB0
	ldr r1, _02031FB8 ; =0x00001334
	strb r0, [r2, r1]
_02031FB0:
	bx lr
	nop
_02031FB4: .word 0x021C07A8
_02031FB8: .word 0x00001334
	thumb_func_end sub_02031FA4

	thumb_func_start sub_02031FBC
sub_02031FBC: ; 0x02031FBC
	ldr r0, _02031FD0 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031FD4 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02031FCC
	mov r0, #1
	bx lr
_02031FCC:
	mov r0, #0
	bx lr
	; .align 2, 0
_02031FD0: .word 0x021C07A8
_02031FD4: .word 0x00001310
	thumb_func_end sub_02031FBC

	thumb_func_start sub_02031FD8
sub_02031FD8: ; 0x02031FD8
	ldr r0, _02031FEC ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _02031FF0 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #3
	bne _02031FE8
	mov r0, #1
	bx lr
_02031FE8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02031FEC: .word 0x021C07A8
_02031FF0: .word 0x00001310
	thumb_func_end sub_02031FD8

	thumb_func_start sub_02031FF4
sub_02031FF4: ; 0x02031FF4
	ldr r0, _02032008 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _0203200C ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #9
	bne _02032004
	mov r0, #1
	bx lr
_02032004:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032008: .word 0x021C07A8
_0203200C: .word 0x00001310
	thumb_func_end sub_02031FF4

	thumb_func_start sub_02032010
sub_02032010: ; 0x02032010
	ldr r0, _0203202C ; =0x021C07A8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _02032028
	ldr r0, _02032030 ; =0x00001310
	ldr r0, [r1, r0]
	cmp r0, #2
	bne _02032024
	mov r0, #1
	bx lr
_02032024:
	mov r0, #0
	bx lr
_02032028:
	mov r0, #0
	bx lr
	; .align 2, 0
_0203202C: .word 0x021C07A8
_02032030: .word 0x00001310
	thumb_func_end sub_02032010

	thumb_func_start sub_02032034
sub_02032034: ; 0x02032034
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _02032068 ; =0x021C07A8
	add r5, r1, #0
	ldr r1, [r0, #4]
	ldr r0, _0203206C ; =0x00001310
	add r4, r2, #0
	ldr r0, [r1, r0]
	cmp r0, #4
	bne _02032062
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #1
	lsl r2, r5, #0x10
	str r0, [sp, #4]
	mov r0, #0
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r4, #0
	bl sub_020D065C
_02032062:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02032068: .word 0x021C07A8
_0203206C: .word 0x00001310
	thumb_func_end sub_02032034

	thumb_func_start sub_02032070
sub_02032070: ; 0x02032070
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02032080
	ldr r0, _02032084 ; =0x021C07A8
	mov r2, #1
	ldr r1, [r0, #4]
	ldr r0, _02032088 ; =0x00001344
	strb r2, [r1, r0]
_02032080:
	bx lr
	nop
_02032084: .word 0x021C07A8
_02032088: .word 0x00001344
	thumb_func_end sub_02032070

	thumb_func_start sub_0203208C
sub_0203208C: ; 0x0203208C
	push {r4, lr}
	ldr r2, _020320B8 ; =0x021C07A8
	add r1, r0, #0
	ldr r3, [r2, #4]
	ldr r0, _020320BC ; =0x00001344
	mov r4, #0
	strb r4, [r3, r0]
	ldr r2, [r2, #4]
	sub r0, #0x34
	ldr r0, [r2, r0]
	cmp r0, #4
	bne _020320B2
	ldr r0, _020320C0 ; =sub_02032070
	bl sub_020D083C
	cmp r0, #2
	bne _020320B2
	mov r0, #1
	pop {r4, pc}
_020320B2:
	mov r0, #0
	pop {r4, pc}
	nop
_020320B8: .word 0x021C07A8
_020320BC: .word 0x00001344
_020320C0: .word sub_02032070
	thumb_func_end sub_0203208C

	thumb_func_start sub_020320C4
sub_020320C4: ; 0x020320C4
	ldr r0, _020320E0 ; =0x021C07A8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020320DC
	ldr r0, _020320E4 ; =0x00001345
	ldrb r0, [r1, r0]
	cmp r0, #6
	blo _020320D8
	mov r0, #1
	bx lr
_020320D8:
	mov r0, #0
	bx lr
_020320DC:
	mov r0, #0
	bx lr
	; .align 2, 0
_020320E0: .word 0x021C07A8
_020320E4: .word 0x00001345
	thumb_func_end sub_020320C4

	thumb_func_start sub_020320E8
sub_020320E8: ; 0x020320E8
	ldr r0, _020320F4 ; =0x021C07A8
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _020320F8 ; =0x00001345
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_020320F4: .word 0x021C07A8
_020320F8: .word 0x00001345
	thumb_func_end sub_020320E8

	thumb_func_start sub_020320FC
sub_020320FC: ; 0x020320FC
	ldr r1, _02032108 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _0203210C ; =0x00001320
	str r0, [r2, r1]
	bx lr
	nop
_02032108: .word 0x021C07A8
_0203210C: .word 0x00001320
	thumb_func_end sub_020320FC

	thumb_func_start sub_02032110
sub_02032110: ; 0x02032110
	ldr r1, _0203211C ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032120 ; =0x00001324
	str r0, [r2, r1]
	bx lr
	nop
_0203211C: .word 0x021C07A8
_02032120: .word 0x00001324
	thumb_func_end sub_02032110

	thumb_func_start sub_02032124
sub_02032124: ; 0x02032124
	ldr r1, _02032130 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032134 ; =0x00001328
	str r0, [r2, r1]
	bx lr
	nop
_02032130: .word 0x021C07A8
_02032134: .word 0x00001328
	thumb_func_end sub_02032124

	thumb_func_start sub_02032138
sub_02032138: ; 0x02032138
	ldr r1, _02032144 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032148 ; =0x00001342
	strb r0, [r2, r1]
	bx lr
	nop
_02032144: .word 0x021C07A8
_02032148: .word 0x00001342
	thumb_func_end sub_02032138

	thumb_func_start sub_0203214C
sub_0203214C: ; 0x0203214C
	ldr r0, _02032158 ; =0x021C07A8
	ldr r1, [r0, #4]
	ldr r0, _0203215C ; =0x00001342
	ldrb r0, [r1, r0]
	bx lr
	nop
_02032158: .word 0x021C07A8
_0203215C: .word 0x00001342
	thumb_func_end sub_0203214C

	thumb_func_start sub_02032160
sub_02032160: ; 0x02032160
	ldr r1, _0203216C ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032170 ; =0x00001343
	strb r0, [r2, r1]
	bx lr
	nop
_0203216C: .word 0x021C07A8
_02032170: .word 0x00001343
	thumb_func_end sub_02032160

	thumb_func_start sub_02032174
sub_02032174: ; 0x02032174
	ldr r1, _02032180 ; =0x021C07A8
	ldr r2, [r1, #4]
	ldr r1, _02032184 ; =0x00001335
	strb r0, [r2, r1]
	bx lr
	nop
_02032180: .word 0x021C07A8
_02032184: .word 0x00001335
	thumb_func_end sub_02032174

	thumb_func_start sub_02032188
sub_02032188: ; 0x02032188
	str r1, [r0, #0]
	strh r2, [r0, #0xa]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02032188

	thumb_func_start sub_02032198
sub_02032198: ; 0x02032198
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0203229C
	ldr r1, [sp]
	cmp r0, r1
	bgt _020321B0
	bl sub_020363BC
	pop {r3, r4, r5, r6, r7, pc}
_020321B0:
	mov r0, #8
	ldrsh r4, [r5, r0]
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	mov r6, #0
	add r0, r1, r0
	cmp r4, r0
	bge _020321E6
_020321C0:
	cmp r7, #0
	bne _020321C8
	bl sub_02022974
_020321C8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020322BC
	ldrb r2, [r7, r6]
	ldr r1, [r5, #0]
	add r4, r4, #1
	strb r2, [r1, r0]
	mov r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	add r6, r6, #1
	add r0, r1, r0
	cmp r4, r0
	blt _020321C0
_020321E6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020322BC
	strh r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02032198

	thumb_func_start sub_020321F4
sub_020321F4: ; 0x020321F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02032220
	mov r1, #4
	add r4, r0, #0
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	add r1, r1, r4
	bl sub_020322BC
	strh r0, [r5, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020321F4

	thumb_func_start sub_02032210
sub_02032210: ; 0x02032210
	push {r3, lr}
	add r1, sp, #0
	mov r2, #1
	bl sub_020321F4
	add r0, sp, #0
	ldrb r0, [r0]
	pop {r3, pc}
	thumb_func_end sub_02032210

	thumb_func_start sub_02032220
sub_02032220: ; 0x02032220
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	ldrsh r4, [r5, r0]
	add r7, r2, #0
	str r1, [sp]
	add r0, r4, r7
	mov r6, #0
	cmp r4, r0
	bge _02032266
_02032234:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020322BC
	mov r1, #6
	ldrsh r1, [r5, r1]
	cmp r1, r0
	bne _02032248
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032248:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020322BC
	ldr r1, [r5, #0]
	add r4, r4, #1
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	strb r1, [r0, r6]
	mov r0, #4
	ldrsh r0, [r5, r0]
	add r6, r6, #1
	add r0, r0, r7
	cmp r4, r0
	blt _02032234
_02032266:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02032220

	thumb_func_start sub_0203226C
sub_0203226C: ; 0x0203226C
	mov r1, #4
	mov r3, #6
	ldrsh r1, [r0, r1]
	ldrsh r2, [r0, r3]
	cmp r1, r2
	ble _02032284
	mov r2, #0xa
	ldrsh r2, [r0, r2]
	ldrsh r0, [r0, r3]
	add r0, r2, r0
	sub r0, r0, r1
	bx lr
_02032284:
	ldrsh r0, [r0, r3]
	sub r0, r0, r1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203226C

	thumb_func_start sub_0203228C
sub_0203228C: ; 0x0203228C
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203226C
	mov r1, #0xa
	ldrsh r1, [r4, r1]
	sub r0, r1, r0
	pop {r4, pc}
	thumb_func_end sub_0203228C

	thumb_func_start sub_0203229C
sub_0203229C: ; 0x0203229C
	mov r1, #4
	mov r2, #8
	ldrsh r3, [r0, r1]
	ldrsh r1, [r0, r2]
	cmp r3, r1
	ble _020322AE
	ldrsh r0, [r0, r2]
	sub r0, r3, r0
	bx lr
_020322AE:
	mov r1, #0xa
	ldrsh r1, [r0, r1]
	ldrsh r0, [r0, r2]
	sub r0, r0, r3
	sub r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203229C

	thumb_func_start sub_020322BC
sub_020322BC: ; 0x020322BC
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	mov r1, #0xa
	ldrsh r1, [r2, r1]
	bl sub_020E1F6C
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020322BC

	thumb_func_start sub_020322D0
sub_020322D0: ; 0x020322D0
	mov r1, #8
	ldrsh r1, [r0, r1]
	strh r1, [r0, #6]
	bx lr
	thumb_func_end sub_020322D0

	thumb_func_start sub_020322D8
sub_020322D8: ; 0x020322D8
	ldr r3, [r0, #0x1c]
	mov r2, #0
	ldr r1, [r0, #0x18]
	cmp r3, #0
	ble _020322F4
_020322E2:
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne _020322EC
	add r0, r1, #0
	bx lr
_020322EC:
	add r2, r2, #1
	add r1, #0x10
	cmp r2, r3
	blt _020322E2
_020322F4:
	mov r0, #0
	bx lr
	thumb_func_end sub_020322D8

	thumb_func_start sub_020322F8
sub_020322F8: ; 0x020322F8
	ldr r3, [r0, #0x1c]
	mov r2, #0
	ldr r1, [r0, #0x18]
	cmp r3, #0
	ble _02032314
_02032302:
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _0203230C
	mov r0, #0
	bx lr
_0203230C:
	add r2, r2, #1
	add r1, #0x10
	cmp r2, r3
	blt _02032302
_02032314:
	mov r0, #1
	bx lr
	thumb_func_end sub_020322F8

	thumb_func_start sub_02032318
sub_02032318: ; 0x02032318
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02032336
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _0203232C
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r1, #4]
	b _02032332
_0203232C:
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
_02032332:
	mov r0, #1
	bx lr
_02032336:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02032318

	thumb_func_start sub_0203233C
sub_0203233C: ; 0x0203233C
	ldr r2, [r0, #0]
	strb r1, [r2]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
	bne _02032352
	mov r0, #1
	bx lr
_02032352:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203233C

	thumb_func_start sub_02032358
sub_02032358: ; 0x02032358
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xe]
	add r4, r1, #0
	bl sub_02032868
	add r6, r0, #0
	ldr r0, _020323CC ; =0x0000FFFF
	cmp r6, r0
	ldr r0, [r4, #4]
	bne _0203237E
	cmp r0, #3
	bge _0203238E
	ldrb r1, [r5, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r5, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203237E:
	cmp r0, #1
	bge _0203238E
	ldrb r1, [r5, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r5, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203238E:
	ldrb r1, [r5, #0xe]
	add r0, r4, #0
	bl sub_0203233C
	ldr r0, _020323CC ; =0x0000FFFF
	cmp r6, r0
	bne _020323B8
	ldrh r1, [r5, #0xc]
	add r0, r4, #0
	asr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203233C
	ldrh r1, [r5, #0xc]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0203233C
	b _020323BA
_020323B8:
	strh r6, [r5, #0xc]
_020323BA:
	ldrb r1, [r5, #0xf]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r5, #0xf]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_020323CC: .word 0x0000FFFF
	thumb_func_end sub_02032358

	thumb_func_start sub_020323D0
sub_020323D0: ; 0x020323D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0xe]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02032868
	ldr r1, _02032494 ; =0x0000FFFF
	cmp r0, r1
	bne _020323EA
	mov r2, #3
	b _020323EC
_020323EA:
	mov r2, #1
_020323EC:
	ldrh r0, [r5, #0xc]
	ldr r1, [r4, #4]
	add r0, r0, r2
	cmp r1, r0
	bge _020323FE
	cmp r7, #0
	bne _020323FE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020323FE:
	ldrb r0, [r5, #0xf]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _02032418
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02032358
	cmp r0, #0
	beq _02032418
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032418:
	ldrh r3, [r5, #0xc]
	ldr r2, [r4, #4]
	cmp r2, r3
	ldrb r0, [r5, #0xf]
	bge _02032462
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02032432
	ldr r1, [r4, #0]
	add r0, r6, #0
	bl sub_020321F4
	b _02032448
_02032432:
	mov r3, #0
	cmp r2, #0
	ble _02032448
_02032438:
	ldr r0, [r5, #0]
	ldrb r1, [r0, r3]
	ldr r0, [r4, #0]
	strb r1, [r0, r3]
	ldr r0, [r4, #4]
	add r3, r3, #1
	cmp r3, r0
	blt _02032438
_02032448:
	ldr r1, [r5, #0]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r5, #0]
	ldrh r1, [r5, #0xc]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	strh r0, [r5, #0xc]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02032462:
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02032474
	ldr r1, [r4, #0]
	add r0, r6, #0
	add r2, r3, #0
	bl sub_020321F4
	b _0203247E
_02032474:
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	add r2, r3, #0
	bl sub_020C4DB0
_0203247E:
	ldrh r0, [r5, #0xc]
	ldr r1, [r4, #0]
	add r0, r1, r0
	str r0, [r4, #0]
	ldrh r0, [r5, #0xc]
	ldr r1, [r4, #4]
	sub r0, r1, r0
	str r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02032494: .word 0x0000FFFF
	thumb_func_end sub_020323D0

	thumb_func_start sub_02032498
sub_02032498: ; 0x02032498
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r7, r3, #0
	bl sub_020322D8
	add r4, r0, #0
	bne _020324B2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020324B2:
	ldr r0, _02032524 ; =0x0000FFFE
	cmp r7, r0
	blt _020324BC
	bl sub_02022974
_020324BC:
	ldr r0, [sp]
	bl sub_02032868
	add r6, r0, #0
	ldr r0, _02032528 ; =0x0000FFFF
	cmp r6, r0
	bne _020324CC
	add r6, r7, #0
_020324CC:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _020324FE
	ldr r0, [r5, #0x14]
	bl sub_0203228C
	add r1, r6, #3
	cmp r1, r0
	blt _020324E4
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020324E4:
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #4]
	ldr r3, _0203252C ; =0x00000109
	add r2, r6, #0
	bl sub_02032198
	ldr r0, [r5, #0x14]
	bl sub_020322D0
	ldrb r1, [r4, #0xf]
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #0xf]
_020324FE:
	ldr r0, [sp]
	strh r6, [r4, #0xc]
	strb r0, [r4, #0xe]
	ldr r0, [sp, #4]
	str r0, [r4, #0]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02032514
	str r4, [r5, #4]
	str r4, [r5, #0]
	b _0203251C
_02032514:
	str r4, [r0, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	str r4, [r5, #4]
_0203251C:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02032524: .word 0x0000FFFE
_02032528: .word 0x0000FFFF
_0203252C: .word 0x00000109
	thumb_func_end sub_02032498

	thumb_func_start sub_02032530
sub_02032530: ; 0x02032530
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _0203253A
	add r0, r1, #0
	bx lr
_0203253A:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02032544
	add r0, r1, #0
	bx lr
_02032544:
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0203254C
	mov r0, #0
_0203254C:
	bx lr
	; .align 2, 0
	thumb_func_end sub_02032530

	thumb_func_start sub_02032550
sub_02032550: ; 0x02032550
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02032560
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
_02032560:
	bl sub_02032318
	cmp r0, #0
	bne _02032570
	add r4, #8
	add r0, r4, #0
	bl sub_02032318
_02032570:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02032550

	thumb_func_start sub_02032574
sub_02032574: ; 0x02032574
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r7, #1
	str r2, [sp]
	cmp r0, #0
	ble _020325CA
_02032584:
	add r0, r5, #0
	bl sub_02032530
	add r6, r0, #0
	beq _020325CA
	add r0, r5, #0
	bl sub_02032550
	ldr r2, [r5, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_020323D0
	cmp r0, #0
	bne _020325A8
	str r6, [r5, #0x10]
	b _020325CA
_020325A8:
	mov r0, #0
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	bne _020325B8
	str r6, [r5, #0x10]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020325B8:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x10
	bl sub_020C4CF4
	ldr r0, [r4, #4]
	ldr r7, [sp]
	cmp r0, #0
	bgt _02032584
_020325CA:
	ldr r0, [r4, #4]
	mov r2, #0
	cmp r0, #0
	ble _020325E6
	mov r1, #0xee
_020325D4:
	ldr r0, [r4, #0]
	add r2, r2, #1
	strb r1, [r0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	cmp r2, r0
	blt _020325D4
_020325E6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02032574

	thumb_func_start sub_020325EC
sub_020325EC: ; 0x020325EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x20
	add r5, r0, #0
	bl sub_020C4CF4
	lsl r7, r4, #4
	mov r0, #0xf
	add r1, r7, #0
	bl sub_02018144
	mov r1, #0
	add r2, r7, #0
	str r0, [r5, #0x18]
	bl sub_020C4CF4
	str r4, [r5, #0x1c]
	str r6, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020325EC

	thumb_func_start sub_02032618
sub_02032618: ; 0x02032618
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02032618

	thumb_func_start sub_02032638
sub_02032638: ; 0x02032638
	ldr r3, _02032640 ; =sub_020181C4
	ldr r0, [r0, #0x18]
	bx r3
	nop
_02032640: .word sub_020181C4
	thumb_func_end sub_02032638

	thumb_func_start sub_02032644
sub_02032644: ; 0x02032644
	push {r3, r4}
	ldr r4, [r0, #0x1c]
	mov r2, #0
	ldr r3, [r0, #0x18]
	cmp r4, #0
	ble _02032664
_02032650:
	ldrb r0, [r3, #0xe]
	cmp r0, r1
	bne _0203265C
	mov r0, #1
	pop {r3, r4}
	bx lr
_0203265C:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, r4
	blt _02032650
_02032664:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02032644

	thumb_func_start sub_0203266C
sub_0203266C: ; 0x0203266C
	push {r4, lr}
	sub sp, #0x28
	ldr r3, _02032694 ; =0x020E5D18
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #0x25
_02032678:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02032678
	cmp r4, #0x25
	blo _0203268C
	bl sub_02022974
_0203268C:
	add r0, sp, #0
	ldrb r0, [r0, r4]
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02032694: .word 0x020E5D18
	thumb_func_end sub_0203266C

	thumb_func_start sub_02032698
sub_02032698: ; 0x02032698
	push {r4, lr}
	sub sp, #0x28
	ldr r3, _020326C0 ; =0x020E5D3D
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #0x25
_020326A4:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020326A4
	cmp r4, #0x25
	blo _020326B8
	bl sub_02022974
_020326B8:
	add r0, sp, #0
	ldrb r0, [r0, r4]
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_020326C0: .word 0x020E5D3D
	thumb_func_end sub_02032698

	thumb_func_start sub_020326C4
sub_020326C4: ; 0x020326C4
	cmp r0, #0x12
	bgt _020326DE
	bge _020326E2
	cmp r0, #0xd
	bgt _020326E6
	cmp r0, #7
	blt _020326E6
	beq _020326E2
	cmp r0, #9
	beq _020326E2
	cmp r0, #0xd
	beq _020326E2
	b _020326E6
_020326DE:
	cmp r0, #0x1a
	bne _020326E6
_020326E2:
	mov r0, #1
	bx lr
_020326E6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020326C4

	thumb_func_start sub_020326EC
sub_020326EC: ; 0x020326EC
	sub r0, #0x13
	cmp r0, #0x11
	bhi _02032726
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020326FE: ; jump table
	.short _02032722 - _020326FE - 2 ; case 0
	.short _02032722 - _020326FE - 2 ; case 1
	.short _02032722 - _020326FE - 2 ; case 2
	.short _02032722 - _020326FE - 2 ; case 3
	.short _02032722 - _020326FE - 2 ; case 4
	.short _02032722 - _020326FE - 2 ; case 5
	.short _02032722 - _020326FE - 2 ; case 6
	.short _02032726 - _020326FE - 2 ; case 7
	.short _02032726 - _020326FE - 2 ; case 8
	.short _02032726 - _020326FE - 2 ; case 9
	.short _02032722 - _020326FE - 2 ; case 10
	.short _02032726 - _020326FE - 2 ; case 11
	.short _02032726 - _020326FE - 2 ; case 12
	.short _02032726 - _020326FE - 2 ; case 13
	.short _02032722 - _020326FE - 2 ; case 14
	.short _02032722 - _020326FE - 2 ; case 15
	.short _02032722 - _020326FE - 2 ; case 16
	.short _02032722 - _020326FE - 2 ; case 17
_02032722:
	mov r0, #1
	bx lr
_02032726:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020326EC

	thumb_func_start sub_0203272C
sub_0203272C: ; 0x0203272C
	cmp r0, #0x1d
	beq _02032738
	cmp r0, #0x21
	beq _02032738
	cmp r0, #0x23
	bne _0203273C
_02032738:
	mov r0, #1
	bx lr
_0203273C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203272C

	thumb_func_start sub_02032740
sub_02032740: ; 0x02032740
	cmp r0, #0x17
	bgt _02032760
	add r1, r0, #0
	sub r1, #0x13
	bmi _02032768
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02032756: ; jump table
	.short _02032764 - _02032756 - 2 ; case 0
	.short _02032764 - _02032756 - 2 ; case 1
	.short _02032764 - _02032756 - 2 ; case 2
	.short _02032764 - _02032756 - 2 ; case 3
	.short _02032764 - _02032756 - 2 ; case 4
_02032760:
	cmp r0, #0x22
	bne _02032768
_02032764:
	mov r0, #1
	bx lr
_02032768:
	mov r0, #0
	bx lr
	thumb_func_end sub_02032740

	thumb_func_start sub_0203276C
sub_0203276C: ; 0x0203276C
	cmp r0, #8
	bhi _02032792
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203277C: ; jump table
	.short _02032792 - _0203277C - 2 ; case 0
	.short _0203278E - _0203277C - 2 ; case 1
	.short _0203278E - _0203277C - 2 ; case 2
	.short _0203278E - _0203277C - 2 ; case 3
	.short _0203278E - _0203277C - 2 ; case 4
	.short _0203278E - _0203277C - 2 ; case 5
	.short _02032792 - _0203277C - 2 ; case 6
	.short _02032792 - _0203277C - 2 ; case 7
	.short _0203278E - _0203277C - 2 ; case 8
_0203278E:
	mov r0, #1
	bx lr
_02032792:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203276C

	thumb_func_start sub_02032798
sub_02032798: ; 0x02032798
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020327DC ; =0x021C07B0
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	cmp r0, #0
	bne _020327B4
	mov r0, #0xf
	mov r1, #0x18
	bl sub_02018144
	ldr r1, _020327DC ; =0x021C07B0
	str r0, [r1, #0]
_020327B4:
	ldr r0, _020327DC ; =0x021C07B0
	mov r3, #0
	ldr r1, [r0, #0]
	add r2, r3, #0
	str r5, [r1, #0]
	ldr r1, [r0, #0]
	str r4, [r1, #4]
	ldr r1, [r0, #0]
	str r6, [r1, #8]
_020327C6:
	ldr r1, [r0, #0]
	add r1, r1, r3
	add r3, r3, #1
	strb r2, [r1, #0xc]
	cmp r3, #8
	blt _020327C6
	ldr r0, _020327DC ; =0x021C07B0
	ldr r0, [r0, #0]
	strb r2, [r0, #0x14]
	pop {r4, r5, r6, pc}
	nop
_020327DC: .word 0x021C07B0
	thumb_func_end sub_02032798

	thumb_func_start sub_020327E0
sub_020327E0: ; 0x020327E0
	push {r3, lr}
	ldr r0, _020327F8 ; =0x021C07B0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020327F4
	bl sub_020181C4
	ldr r0, _020327F8 ; =0x021C07B0
	mov r1, #0
	str r1, [r0, #0]
_020327F4:
	pop {r3, pc}
	nop
_020327F8: .word 0x021C07B0
	thumb_func_end sub_020327E0

	thumb_func_start sub_020327FC
sub_020327FC: ; 0x020327FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #0x16
	bge _02032814
	mov r0, #0xc
	mul r1, r0
	ldr r0, _02032860 ; =0x020E5D64
	ldr r4, [r0, r1]
	b _0203283C
_02032814:
	ldr r0, _02032864 ; =0x021C07B0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02032820
	bl sub_02022974
_02032820:
	ldr r0, _02032864 ; =0x021C07B0
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	add r0, #0x16
	cmp r4, r0
	ble _02032832
	bl sub_020363BC
	pop {r3, r4, r5, r6, r7, pc}
_02032832:
	ldr r1, [r1, #0]
	sub r4, #0x16
	mov r0, #0xc
	mul r0, r4
	ldr r4, [r1, r0]
_0203283C:
	cmp r4, #0
	beq _0203285E
	ldr r0, _02032864 ; =0x021C07B0
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02032854
	ldr r3, [r3, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
_02032854:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	blx r4
_0203285E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02032860: .word 0x020E5D64
_02032864: .word 0x021C07B0
	thumb_func_end sub_020327FC

	thumb_func_start sub_02032868
sub_02032868: ; 0x02032868
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0x16
	bge _0203287E
	mov r0, #0xc
	add r1, r5, #0
	mul r1, r0
	ldr r0, _020328C8 ; =0x020E5D68
	ldr r0, [r0, r1]
	b _020328BA
_0203287E:
	ldr r0, _020328CC ; =0x021C07B0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203288A
	bl sub_02022974
_0203288A:
	ldr r0, _020328CC ; =0x021C07B0
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0203289A
	bl sub_020363BC
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203289A:
	ldr r0, [r1, #4]
	add r0, #0x16
	cmp r5, r0
	ble _020328AE
	bl sub_02022974
	bl sub_020363BC
	mov r0, #0
	pop {r3, r4, r5, pc}
_020328AE:
	ldr r1, [r1, #0]
	sub r5, #0x16
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	ldr r0, [r0, #4]
_020328BA:
	cmp r0, #0
	beq _020328C2
	blx r0
	add r4, r0, #0
_020328C2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_020328C8: .word 0x020E5D68
_020328CC: .word 0x021C07B0
	thumb_func_end sub_02032868

	thumb_func_start sub_020328D0
sub_020328D0: ; 0x020328D0
	cmp r0, #0x16
	bge _020328E8
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02032904 ; =0x020E5D6C
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _020328E4
	mov r0, #1
	bx lr
_020328E4:
	mov r0, #0
	bx lr
_020328E8:
	ldr r1, _02032908 ; =0x021C07B0
	sub r0, #0x16
	ldr r1, [r1, #0]
	ldr r2, [r1, #0]
	mov r1, #0xc
	mul r1, r0
	add r0, r2, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02032900
	mov r0, #1
	bx lr
_02032900:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032904: .word 0x020E5D6C
_02032908: .word 0x021C07B0
	thumb_func_end sub_020328D0

	thumb_func_start sub_0203290C
sub_0203290C: ; 0x0203290C
	push {r3, r4, r5, lr}
	add r3, r0, #0
	cmp r3, #0x16
	bge _02032924
	mov r4, #0xc
	mul r4, r3
	ldr r3, _0203293C ; =0x020E5D6C
	add r0, r1, #0
	ldr r3, [r3, r4]
	mov r1, #0
	blx r3
	pop {r3, r4, r5, pc}
_02032924:
	ldr r0, _02032940 ; =0x021C07B0
	sub r3, #0x16
	ldr r4, [r0, #0]
	add r0, r1, #0
	ldr r1, [r4, #8]
	ldr r5, [r4, #0]
	mov r4, #0xc
	mul r4, r3
	add r3, r5, r4
	ldr r3, [r3, #8]
	blx r3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203293C: .word 0x020E5D6C
_02032940: .word 0x021C07B0
	thumb_func_end sub_0203290C

	thumb_func_start sub_02032944
sub_02032944: ; 0x02032944
	ldr r0, _02032948 ; =0x0000FFFF
	bx lr
	; .align 2, 0
_02032948: .word 0x0000FFFF
	thumb_func_end sub_02032944

	thumb_func_start sub_0203294C
sub_0203294C: ; 0x0203294C
	mov r0, #0
	bx lr
	thumb_func_end sub_0203294C

	thumb_func_start sub_02032950
sub_02032950: ; 0x02032950
	mov r0, #1
	bx lr
	thumb_func_end sub_02032950

	thumb_func_start sub_02032954
sub_02032954: ; 0x02032954
	mov r0, #2
	bx lr
	thumb_func_end sub_02032954

	thumb_func_start sub_02032958
sub_02032958: ; 0x02032958
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02032996
	ldr r4, _02032998 ; =0x021C07B0
	mov r1, #1
	ldr r0, [r4, #0]
	add r0, r0, r5
	strb r1, [r0, #0xc]
	mov r5, #0
_02032970:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02032986
	ldr r0, [r4, #0]
	add r0, r0, r5
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _02032996
_02032986:
	add r5, r5, #1
	cmp r5, #8
	blt _02032970
	mov r1, #0
	mov r0, #0xe
	add r2, r1, #0
	bl sub_02035AC4
_02032996:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02032998: .word 0x021C07B0
	thumb_func_end sub_02032958

	thumb_func_start sub_0203299C
sub_0203299C: ; 0x0203299C
	ldr r0, _020329BC ; =0x021C07B0
	mov r3, #0
	ldr r1, [r0, #0]
	str r3, [r1, #0]
	ldr r1, [r0, #0]
	str r3, [r1, #4]
	ldr r1, [r0, #0]
	str r3, [r1, #8]
	ldr r0, [r0, #0]
	mov r1, #1
	strb r1, [r0, #0x14]
	ldr r3, _020329C0 ; =sub_020360D0
	mov r0, #0xf
	add r1, r2, #0
	bx r3
	nop
_020329BC: .word 0x021C07B0
_020329C0: .word sub_020360D0
	thumb_func_end sub_0203299C

	thumb_func_start sub_020329C4
sub_020329C4: ; 0x020329C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _020329DA
	ldr r0, _020329DC ; =0x021C07B0
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r4
	strb r1, [r0, #0xc]
_020329DA:
	pop {r4, pc}
	; .align 2, 0
_020329DC: .word 0x021C07B0
	thumb_func_end sub_020329C4

	thumb_func_start sub_020329E0
sub_020329E0: ; 0x020329E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	bl sub_02025E38
	str r0, [sp, #8]
	ldr r0, _02032A6C ; =0x021C07B4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02032A66
	mov r1, #0xea
	mov r0, #0xf
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, _02032A6C ; =0x021C07B4
	mov r2, #0xea
	str r0, [r1, #0]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	mov r6, #0
	ldr r7, _02032A6C ; =0x021C07B4
	add r4, r6, #0
	add r5, r6, #0
_02032A16:
	ldr r1, [r7, #0]
	add r0, r1, #0
	add r0, #0x2c
	add r2, r0, r4
	mov r0, #0xd3
	add r1, r1, r5
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r6, #0
	bl sub_02032D98
	add r6, r6, #1
	add r4, #0x68
	add r5, r5, #4
	cmp r6, #8
	blt _02032A16
	ldr r2, _02032A6C ; =0x021C07B4
	mov r1, #0xe9
	ldr r3, [r2, #0]
	mov r0, #0
	lsl r1, r1, #2
	strb r0, [r3, r1]
	ldr r4, [r2, #0]
	add r3, r1, #1
	strb r0, [r4, r3]
	add r3, r1, #2
	ldr r4, [r2, #0]
	sub r1, #0x58
	strb r0, [r4, r3]
	ldr r3, [r2, #0]
	ldr r0, [sp]
	str r0, [r3, #8]
	ldr r3, [r2, #0]
	ldr r0, [sp, #4]
	str r0, [r3, #4]
	ldr r2, [r2, #0]
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	bl sub_02025E80
_02032A66:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02032A6C: .word 0x021C07B4
	thumb_func_end sub_020329E0

	thumb_func_start sub_02032A70
sub_02032A70: ; 0x02032A70
	push {r3, r4, r5, lr}
	ldr r1, _02032AA8 ; =0x021C07B4
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _02032AA4
	mov r4, #0
	mov r0, #0xd3
	add r5, r4, #0
	add r3, r4, #0
	lsl r0, r0, #2
_02032A84:
	ldr r2, [r1, #0]
	add r4, r4, #1
	add r2, r2, r5
	add r5, r5, #4
	str r3, [r2, r0]
	cmp r4, #8
	blt _02032A84
	ldr r0, _02032AA8 ; =0x021C07B4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02032A9E
	bl sub_020181C4
_02032A9E:
	ldr r0, _02032AA8 ; =0x021C07B4
	mov r1, #0
	str r1, [r0, #0]
_02032AA4:
	pop {r3, r4, r5, pc}
	nop
_02032AA8: .word 0x021C07B4
	thumb_func_end sub_02032A70

	thumb_func_start sub_02032AAC
sub_02032AAC: ; 0x02032AAC
	ldr r0, _02032ABC ; =0x021C07B4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02032AB8
	mov r0, #1
	bx lr
_02032AB8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032ABC: .word 0x021C07B4
	thumb_func_end sub_02032AAC

	thumb_func_start sub_02032AC0
sub_02032AC0: ; 0x02032AC0
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203608C
	add r4, r0, #0
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202B4A0
	str r0, [sp]
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202B370
	add r7, r0, #0
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_0202C878
	add r6, r0, #0
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _02032AFC
	ldr r0, [r1, #8]
	bl sub_02025E38
_02032AFC:
	ldr r1, _02032BBC ; =0x021C07B4
	ldr r2, [r1, #0]
	lsl r1, r4, #2
	add r2, r2, r1
	mov r1, #0xd3
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02025E80
	mov r0, #0x68
	add r5, r4, #0
	mul r5, r0
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r0, [r0, #0]
	add r0, #0x68
	add r0, r0, r5
	bl sub_020C3FA0
	ldr r0, [sp]
	mov r1, #1
	mov r2, #0
	bl sub_0202B42C
	ldr r1, _02032BBC ; =0x021C07B4
	mov r2, #0x10
	ldr r1, [r1, #0]
	add r1, #0x58
	add r1, r1, r5
	bl sub_020C4DB0
	add r0, r6, #0
	bl sub_0202C8C0
	ldr r1, _02032BBC ; =0x021C07B4
	ldr r1, [r1, #0]
	add r1, r1, r5
	add r1, #0x6f
	strb r0, [r1]
	add r0, r6, #0
	bl sub_0202C8C4
	ldr r2, _02032BBC ; =0x021C07B4
	ldr r1, [r2, #0]
	add r1, r1, r5
	add r1, #0x70
	strb r0, [r1]
	ldr r0, [r2, #0]
	ldr r0, [r0, #8]
	bl sub_02028810
	ldr r2, _02032BBC ; =0x021C07B4
	ldr r1, [r2, #0]
	add r1, r1, r5
	add r1, #0x71
	strb r0, [r1]
	ldr r2, [r2, #0]
	mov r0, #1
	add r2, #0x71
	ldrb r1, [r2, r5]
	sub r0, r0, r1
	strb r0, [r2, r5]
	add r0, r7, #0
	bl sub_0202AD28
	ldr r1, _02032BBC ; =0x021C07B4
	ldr r1, [r1, #0]
	add r1, #0x4c
	add r1, r1, r5
	bl sub_020A4788
	ldr r0, _02032BBC ; =0x021C07B4
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0x20
	add r0, #0xc
	add r0, r0, r5
	bl sub_020C4CF4
	ldr r0, _02032BBC ; =0x021C07B4
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _02032BAA
	add r1, #0xc
	add r1, r1, r5
	bl sub_02026034
_02032BAA:
	ldr r1, _02032BBC ; =0x021C07B4
	mov r0, #3
	ldr r1, [r1, #0]
	mov r2, #0x68
	add r1, #0xc
	add r1, r1, r5
	bl sub_020359DC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02032BBC: .word 0x021C07B4
	thumb_func_end sub_02032AC0

	thumb_func_start sub_02032BC0
sub_02032BC0: ; 0x02032BC0
	mov r0, #0x68
	bx lr
	thumb_func_end sub_02032BC0

	thumb_func_start sub_02032BC4
sub_02032BC4: ; 0x02032BC4
	ldr r0, _02032BD8 ; =0x021C07B4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02032BD4
	mov r0, #0xe9
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r2, r0]
_02032BD4:
	bx lr
	nop
_02032BD8: .word 0x021C07B4
	thumb_func_end sub_02032BC4

	thumb_func_start sub_02032BDC
sub_02032BDC: ; 0x02032BDC
	ldr r0, _02032BE8 ; =0x021C07B4
	ldr r1, [r0, #0]
	mov r0, #0xe9
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02032BE8: .word 0x021C07B4
	thumb_func_end sub_02032BDC

	thumb_func_start sub_02032BEC
sub_02032BEC: ; 0x02032BEC
	push {r3, r4, r5, lr}
	ldr r1, _02032C78 ; =0x021C07B4
	add r4, r2, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02032C74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02032C74
	ldr r1, _02032C78 ; =0x021C07B4
	mov r2, #0x68
	ldr r5, [r1, #0]
	add r1, r4, #0
	add r1, #0x62
	ldrb r1, [r1]
	add r5, #0xc
	add r0, r4, #0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	bl sub_020C4DB0
	add r4, #0x62
	ldr r1, _02032C78 ; =0x021C07B4
	ldrb r3, [r4]
	ldr r2, [r1, #0]
	ldr r0, _02032C7C ; =0x000003A6
	strb r3, [r2, r0]
	ldr r2, [r1, #0]
	ldrb r1, [r2, r0]
	sub r0, #0x5a
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r0, [r1, r0]
	bl sub_02025EA8
	cmp r0, #1
	beq _02032C74
	ldr r2, _02032C78 ; =0x021C07B4
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r3, [r2, #0]
	add r1, r0, #0
	add r1, #0xa
	add r4, r3, r0
	ldrb r3, [r3, r1]
	ldrb r1, [r4, r3]
	cmp r1, #2
	bhs _02032C74
	mov r1, #1
	strb r1, [r4, r3]
	ldr r1, [r2, #0]
	add r0, #0xa
	ldrb r4, [r1, r0]
	bl sub_0203608C
	cmp r4, r0
	bne _02032C74
	ldr r0, _02032C78 ; =0x021C07B4
	mov r2, #3
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
_02032C74:
	pop {r3, r4, r5, pc}
	nop
_02032C78: .word 0x021C07B4
_02032C7C: .word 0x000003A6
	thumb_func_end sub_02032BEC

	thumb_func_start sub_02032C80
sub_02032C80: ; 0x02032C80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02032CE0 ; =0x021C07B4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02032CDC
	mov r3, #0x68
	add r4, r5, #0
	add r0, r2, #0
	mul r4, r3
	add r1, #0xc
	add r1, r1, r4
	add r2, r3, #0
	bl sub_020C4DB0
	ldr r0, _02032CE0 ; =0x021C07B4
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r0, #0x68
	add r0, r0, r4
	bl sub_02033FDC
	ldr r0, _02032CE0 ; =0x021C07B4
	mov r2, #1
	ldr r0, [r0, #0]
	add r1, r0, r5
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bl sub_0203608C
	cmp r5, r0
	bne _02032CD2
	ldr r0, _02032CE0 ; =0x021C07B4
	mov r2, #3
	ldr r0, [r0, #0]
	add r1, r0, r5
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r3, r4, r5, pc}
_02032CD2:
	ldr r0, _02032CE0 ; =0x021C07B4
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02032CE4 ; =0x000003A5
	strb r2, [r1, r0]
_02032CDC:
	pop {r3, r4, r5, pc}
	nop
_02032CE0: .word 0x021C07B4
_02032CE4: .word 0x000003A5
	thumb_func_end sub_02032C80

	thumb_func_start sub_02032CE8
sub_02032CE8: ; 0x02032CE8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02032D7C ; =0x021C07B4
	ldr r1, [r0, #0]
	ldr r0, _02032D80 ; =0x000003A5
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02032CFA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032CFA:
	bl sub_0203608C
	cmp r0, #0
	beq _02032D06
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032D06:
	mov r0, #5
	bl sub_02036254
	cmp r0, #0
	bne _02032D78
	mov r4, #0
	add r5, r4, #0
	add r7, r4, #0
_02032D16:
	ldr r0, _02032D7C ; =0x021C07B4
	ldr r2, [r0, #0]
	mov r0, #0xe7
	add r1, r2, r4
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02032D56
	add r0, r2, r5
	add r0, #0x6e
	strb r4, [r0]
	ldr r0, _02032D7C ; =0x021C07B4
	ldr r6, [r0, #0]
	bl sub_02025E68
	add r2, r0, #0
	mov r0, #0xd3
	add r1, r6, r7
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r6, #0x2c
	add r1, r6, r5
	bl sub_020C4DB0
	ldr r1, _02032D7C ; =0x021C07B4
	mov r0, #4
	ldr r1, [r1, #0]
	mov r2, #0x68
	add r1, #0xc
	add r1, r1, r5
	bl sub_02035F00
_02032D56:
	add r4, r4, #1
	add r5, #0x68
	add r7, r7, #4
	cmp r4, #8
	blt _02032D16
	mov r1, #0
	mov r0, #5
	add r2, r1, #0
	bl sub_02035F00
	ldr r0, _02032D7C ; =0x021C07B4
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _02032D80 ; =0x000003A5
	strb r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02032D78:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02032D7C: .word 0x021C07B4
_02032D80: .word 0x000003A5
	thumb_func_end sub_02032CE8

	thumb_func_start sub_02032D84
sub_02032D84: ; 0x02032D84
	ldr r0, _02032D90 ; =0x021C07B4
	ldr r1, [r0, #0]
	ldr r0, _02032D94 ; =0x000003A5
	ldrb r0, [r1, r0]
	bx lr
	nop
_02032D90: .word 0x021C07B4
_02032D94: .word 0x000003A5
	thumb_func_end sub_02032D84

	thumb_func_start sub_02032D98
sub_02032D98: ; 0x02032D98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02032DC0 ; =0x021C07B4
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02025E8C
	ldr r0, _02032DC0 ; =0x021C07B4
	mov r2, #0
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	pop {r4, pc}
	nop
_02032DC0: .word 0x021C07B4
	thumb_func_end sub_02032D98

	thumb_func_start sub_02032DC4
sub_02032DC4: ; 0x02032DC4
	ldr r1, _02032DDC ; =0x021C07B4
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02032DD8
	mov r0, #1
	bx lr
_02032DD8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032DDC: .word 0x021C07B4
	thumb_func_end sub_02032DC4

	thumb_func_start sub_02032DE0
sub_02032DE0: ; 0x02032DE0
	ldr r1, _02032DFC ; =0x021C07B4
	mov r2, #1
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	beq _02032DF8
	cmp r0, #1
	beq _02032DF8
	mov r2, #0
_02032DF8:
	add r0, r2, #0
	bx lr
	; .align 2, 0
_02032DFC: .word 0x021C07B4
	thumb_func_end sub_02032DE0

	thumb_func_start sub_02032E00
sub_02032E00: ; 0x02032E00
	ldr r1, _02032E18 ; =0x021C07B4
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02032E14
	mov r0, #1
	bx lr
_02032E14:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032E18: .word 0x021C07B4
	thumb_func_end sub_02032E00

	thumb_func_start sub_02032E1C
sub_02032E1C: ; 0x02032E1C
	ldr r1, _02032E2C ; =0x021C07B4
	mov r2, #2
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02032E2C: .word 0x021C07B4
	thumb_func_end sub_02032E1C

	thumb_func_start sub_02032E30
sub_02032E30: ; 0x02032E30
	ldr r1, _02032E40 ; =0x021C07B4
	mov r2, #3
	ldr r1, [r1, #0]
	add r1, r1, r0
	mov r0, #0xe7
	lsl r0, r0, #2
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02032E40: .word 0x021C07B4
	thumb_func_end sub_02032E30

	thumb_func_start sub_02032E44
sub_02032E44: ; 0x02032E44
	ldr r1, _02032E60 ; =0x021C07B4
	mov r0, #0
	ldr r3, [r1, #0]
	mov r1, #0xe7
	lsl r1, r1, #2
_02032E4E:
	ldrb r2, [r3, r1]
	cmp r2, #1
	beq _02032E5E
	add r0, r0, #1
	add r3, r3, #1
	cmp r0, #8
	blt _02032E4E
	mov r0, #0xff
_02032E5E:
	bx lr
	; .align 2, 0
_02032E60: .word 0x021C07B4
	thumb_func_end sub_02032E44

	thumb_func_start sub_02032E64
sub_02032E64: ; 0x02032E64
	push {r3, r4}
	ldr r1, _02032E8C ; =0x021C07B4
	mov r0, #0
	ldr r4, [r1, #0]
	mov r1, #0xe7
	add r3, r0, #0
	lsl r1, r1, #2
_02032E72:
	ldrb r2, [r4, r1]
	cmp r2, #2
	beq _02032E7C
	cmp r2, #3
	bne _02032E7E
_02032E7C:
	add r0, r0, #1
_02032E7E:
	add r3, r3, #1
	add r4, r4, #1
	cmp r3, #8
	blt _02032E72
	pop {r3, r4}
	bx lr
	nop
_02032E8C: .word 0x021C07B4
	thumb_func_end sub_02032E64

	thumb_func_start sub_02032E90
sub_02032E90: ; 0x02032E90
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02032EE4 ; =0x021C07B4
	mov r5, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02032EE0
	bl sub_02035E18
	cmp r0, #0
	bne _02032EA8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02032EA8:
	mov r7, #0xe7
	ldr r6, _02032EE4 ; =0x021C07B4
	add r4, r5, #0
	lsl r7, r7, #2
_02032EB0:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _02032EDA
	cmp r4, #0
	bne _02032EC8
	bl sub_02036180
	cmp r0, #0
	bne _02032EDA
_02032EC8:
	ldr r0, [r6, #0]
	add r0, r0, r4
	ldrb r0, [r0, r7]
	cmp r0, #0
	beq _02032EDA
	add r0, r4, #0
	bl sub_02032D98
	mov r5, #1
_02032EDA:
	add r4, r4, #1
	cmp r4, #8
	blt _02032EB0
_02032EE0:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02032EE4: .word 0x021C07B4
	thumb_func_end sub_02032E90

	thumb_func_start sub_02032EE8
sub_02032EE8: ; 0x02032EE8
	ldr r1, _02032F18 ; =0x021C07B4
	ldr r3, [r1, #0]
	cmp r3, #0
	bne _02032EF4
	mov r0, #0
	bx lr
_02032EF4:
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #1
	beq _02032F08
	cmp r1, #2
	beq _02032F08
	cmp r1, #3
	bne _02032F14
_02032F08:
	lsl r0, r0, #2
	add r1, r3, r0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
_02032F14:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032F18: .word 0x021C07B4
	thumb_func_end sub_02032EE8

	thumb_func_start sub_02032F1C
sub_02032F1C: ; 0x02032F1C
	ldr r1, _02032F3C ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032F36
	mov r1, #0x68
	add r3, #0x4c
	mul r1, r0
	add r0, r3, r1
	bx lr
_02032F36:
	mov r0, #0
	bx lr
	nop
_02032F3C: .word 0x021C07B4
	thumb_func_end sub_02032F1C

	thumb_func_start sub_02032F40
sub_02032F40: ; 0x02032F40
	add r1, r0, #0
	ldr r0, _02032F4C ; =0x021C07B4
	ldr r3, _02032F50 ; =sub_02039390
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bx r3
	; .align 2, 0
_02032F4C: .word 0x021C07B4
_02032F50: .word sub_02039390
	thumb_func_end sub_02032F40

	thumb_func_start sub_02032F54
sub_02032F54: ; 0x02032F54
	ldr r1, _02032F74 ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032F6E
	mov r1, #0x68
	add r3, #0x58
	mul r1, r0
	add r0, r3, r1
	bx lr
_02032F6E:
	mov r0, #0
	bx lr
	nop
_02032F74: .word 0x021C07B4
	thumb_func_end sub_02032F54

	thumb_func_start sub_02032F78
sub_02032F78: ; 0x02032F78
	ldr r1, _02032F98 ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032F94
	mov r1, #0x68
	mul r1, r0
	add r0, r3, r1
	add r0, #0x6f
	ldrb r0, [r0]
	bx lr
_02032F94:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032F98: .word 0x021C07B4
	thumb_func_end sub_02032F78

	thumb_func_start sub_02032F9C
sub_02032F9C: ; 0x02032F9C
	ldr r1, _02032FBC ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032FB8
	mov r1, #0x68
	mul r1, r0
	add r0, r3, r1
	add r0, #0x70
	ldrb r0, [r0]
	bx lr
_02032FB8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032FBC: .word 0x021C07B4
	thumb_func_end sub_02032F9C

	thumb_func_start sub_02032FC0
sub_02032FC0: ; 0x02032FC0
	ldr r1, _02032FE0 ; =0x021C07B4
	ldr r3, [r1, #0]
	mov r1, #0xe7
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02032FDC
	mov r1, #0x68
	mul r1, r0
	add r0, r3, r1
	add r0, #0x71
	ldrb r0, [r0]
	bx lr
_02032FDC:
	mov r0, #0
	bx lr
	; .align 2, 0
_02032FE0: .word 0x021C07B4
	thumb_func_end sub_02032FC0

	thumb_func_start sub_02032FE4
sub_02032FE4: ; 0x02032FE4
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r4, #0
	add r6, r4, #0
_02032FEC:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02033040
	ldr r0, _0203304C ; =0x021C07B4
	ldr r0, [r0, #0]
	add r1, r0, r4
	mov r0, #0xe7
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02033040
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02033040
	ldr r0, _0203304C ; =0x021C07B4
	ldr r1, _02033050 ; =0x0000039D
	ldr r0, [r0, #0]
	add r2, r0, r4
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02033040
	add r1, r6, #0
	add r2, r0, r5
_02033028:
	add r3, r2, #0
	add r3, #0x74
	ldrb r0, [r2, #0xc]
	ldrb r3, [r3]
	cmp r0, r3
	beq _02033038
	mov r0, #0
	pop {r4, r5, r6, pc}
_02033038:
	add r1, r1, #1
	add r2, r2, #1
	cmp r1, #0x20
	blt _02033028
_02033040:
	add r4, r4, #1
	add r5, #0x68
	cmp r4, #7
	blt _02032FEC
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0203304C: .word 0x021C07B4
_02033050: .word 0x0000039D
	thumb_func_end sub_02032FE4

	thumb_func_start sub_02033054
sub_02033054: ; 0x02033054
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _0203310C ; =0x021C07B4
	add r6, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02033108
	cmp r7, #2
	beq _02033074
	bl sub_0203608C
	bl sub_020362F4
	mov r1, #1
	and r0, r1
	str r0, [sp]
_02033074:
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02033108
	add r5, r4, #0
_02033080:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _020330FC
	ldr r0, _0203310C ; =0x021C07B4
	mov r1, #0xe7
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	add r2, r0, r4
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _020330FC
	cmp r7, #0
	bne _020330C6
	add r0, r4, #0
	bl sub_020362F4
	mov r1, #1
	and r1, r0
	ldr r0, [sp]
	cmp r0, r1
	beq _020330FC
	ldr r0, _0203310C ; =0x021C07B4
	mov r1, #0xdb
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	add r0, r0, r5
	ldrh r1, [r0, r1]
	add r2, r1, r6
	mov r1, #0xdb
	lsl r1, r1, #2
	strh r2, [r0, r1]
	b _020330FC
_020330C6:
	cmp r7, #1
	bne _020330EC
	add r0, r4, #0
	bl sub_020362F4
	mov r1, #1
	and r1, r0
	ldr r0, [sp]
	cmp r0, r1
	beq _020330FC
	ldr r0, _0203310C ; =0x021C07B4
	ldr r1, _02033110 ; =0x0000036E
	ldr r0, [r0, #0]
	add r0, r0, r5
	ldrh r1, [r0, r1]
	add r2, r1, r6
	ldr r1, _02033110 ; =0x0000036E
	strh r2, [r0, r1]
	b _020330FC
_020330EC:
	mov r1, #0x37
	add r0, r0, r5
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
	add r2, r1, r6
	mov r1, #0x37
	lsl r1, r1, #4
	strh r2, [r0, r1]
_020330FC:
	add r5, r5, #6
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02033080
_02033108:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203310C: .word 0x021C07B4
_02033110: .word 0x0000036E
	thumb_func_end sub_02033054

	thumb_func_start sub_02033114
sub_02033114: ; 0x02033114
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_0202B370
	str r0, [sp, #4]
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _0203317C
	add r5, r4, #0
_0203312C:
	add r0, r4, #0
	bl sub_02032F1C
	add r1, r0, #0
	beq _02033170
	add r0, r7, #0
	add r2, sp, #8
	bl sub_0203909C
	cmp r0, #0
	beq _02033146
	cmp r0, #1
	bne _02033170
_02033146:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _02033150
	bl sub_02022974
_02033150:
	ldr r0, _020331AC ; =0x021C07B4
	mov r2, #0xdb
	ldr r0, [r0, #0]
	ldr r3, _020331B0 ; =0x0000036E
	add r6, r0, r5
	mov r0, #0x37
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	lsl r2, r2, #2
	str r0, [sp]
	ldrh r2, [r6, r2]
	ldrh r3, [r6, r3]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl sub_0202B174
_02033170:
	add r5, r5, #6
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _0203312C
_0203317C:
	mov r3, #0xdb
	mov r2, #0
	lsl r3, r3, #2
	ldr r6, _020331AC ; =0x021C07B4
	add r1, r2, #0
	add r0, r2, #0
	add r4, r3, #2
	add r5, r3, #4
_0203318C:
	ldr r7, [r6, #0]
	add r2, r2, #1
	add r7, r7, r1
	strh r0, [r7, r3]
	ldr r7, [r6, #0]
	add r7, r7, r1
	strh r0, [r7, r4]
	ldr r7, [r6, #0]
	add r7, r7, r1
	add r1, r1, #6
	strh r0, [r7, r5]
	cmp r2, #8
	blt _0203318C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020331AC: .word 0x021C07B4
_020331B0: .word 0x0000036E
	thumb_func_end sub_02033114

	thumb_func_start sub_020331B4
sub_020331B4: ; 0x020331B4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _020331C6
	mov r0, #0
	mov r1, #1
	bl sub_02033054
	b _020331D6
_020331C6:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _020331D6
	mov r0, #1
	add r1, r0, #0
	bl sub_02033054
_020331D6:
	add r0, r4, #0
	bl sub_02033114
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020331B4

	thumb_func_start sub_020331E0
sub_020331E0: ; 0x020331E0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_02033054
	add r0, r4, #0
	bl sub_02033114
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020331E0

	thumb_func_start sub_020331F4
sub_020331F4: ; 0x020331F4
	ldr r1, _020331FC ; =0x021C07B4
	ldr r1, [r1, #0]
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020331FC: .word 0x021C07B4
	thumb_func_end sub_020331F4

	thumb_func_start sub_02033200
sub_02033200: ; 0x02033200
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _020332B8 ; =0x021C07B8
	add r7, r1, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020332B6
	ldr r1, _020332BC ; =0x00000D98
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _020332B8 ; =0x021C07B8
	ldr r2, _020332BC ; =0x00000D98
	str r0, [r1, #8]
	mov r1, #0
	bl sub_020C4CF4
	bl sub_02031C50
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _020332B8 ; =0x021C07B8
	ldr r2, [r1, #8]
	ldr r1, _020332C0 ; =0x00000D64
	str r0, [r2, r1]
	bl sub_02031C50
	add r2, r0, #0
	ldr r0, _020332B8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020332C0 ; =0x00000D64
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020C4CF4
	bl sub_0202602C
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _020332B8 ; =0x021C07B8
	ldr r2, [r1, #8]
	ldr r1, _020332C4 ; =0x00000D7C
	str r0, [r2, r1]
	bl sub_0202602C
	add r2, r0, #0
	ldr r0, _020332B8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020332C4 ; =0x00000D7C
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_020C4CF4
	mov r0, #0xf
	mov r1, #0x90
	bl sub_02018144
	ldr r2, _020332B8 ; =0x021C07B8
	ldr r1, _020332C8 ; =0x00000D84
	ldr r3, [r2, #8]
	str r0, [r3, r1]
	ldr r6, [r2, #8]
	mov r0, #0x1f
	ldr r5, [r6, r1]
	add r3, r5, #0
	and r3, r0
	mov r0, #0x20
	sub r0, r0, r3
	add r3, r0, r5
	add r0, r1, #4
	str r3, [r6, r0]
	ldr r5, _020332CC ; =0x00000333
	ldr r3, [r2, #8]
	sub r0, r1, #4
	str r5, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2, #8]
	sub r0, #0xc
	str r4, [r3, r0]
	ldr r0, [r2, #8]
	sub r1, #0x1c
	add r0, r0, r1
	bl sub_02014A84
	add r0, r7, #0
	bl sub_020334DC
_020332B6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020332B8: .word 0x021C07B8
_020332BC: .word 0x00000D98
_020332C0: .word 0x00000D64
_020332C4: .word 0x00000D7C
_020332C8: .word 0x00000D84
_020332CC: .word 0x00000333
	thumb_func_end sub_02033200

	thumb_func_start sub_020332D0
sub_020332D0: ; 0x020332D0
	ldr r0, _020332E0 ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020332DC
	mov r0, #1
	bx lr
_020332DC:
	mov r0, #0
	bx lr
	; .align 2, 0
_020332E0: .word 0x021C07B8
	thumb_func_end sub_020332D0

	thumb_func_start sub_020332E4
sub_020332E4: ; 0x020332E4
	push {r4, r5}
	mov r5, #0
	cmp r2, #0
	ble _02033304
_020332EC:
	ldrb r4, [r0]
	ldrb r3, [r1]
	cmp r4, r3
	beq _020332FA
	mov r0, #0
	pop {r4, r5}
	bx lr
_020332FA:
	add r5, r5, #1
	add r0, r0, #1
	add r1, r1, #1
	cmp r5, r2
	blt _020332EC
_02033304:
	mov r0, #1
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020332E4

	thumb_func_start sub_0203330C
sub_0203330C: ; 0x0203330C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0203895C
	add r5, r0, #0
	bl sub_02038974
	add r4, r6, #0
	add r7, r0, #0
	add r4, #0x50
	cmp r5, #0xe
	beq _0203334E
	ldrb r0, [r4, #4]
	bl sub_020326C4
	cmp r0, #0
	beq _02033338
	add r0, r5, #0
	bl sub_020326C4
	cmp r0, #0
	bne _0203334E
_02033338:
	add r0, r4, #0
	add r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	beq _02033348
	ldrb r0, [r4, #4]
	cmp r0, #0xa
	beq _02033374
_02033348:
	ldrb r0, [r4, #4]
	cmp r0, r5
	bne _02033374
_0203334E:
	cmp r5, #0xe
	beq _02033358
	ldrb r0, [r4, #5]
	cmp r0, r7
	bne _02033374
_02033358:
	ldr r1, _02033378 ; =0x021C07B8
	add r0, r6, #0
	ldr r1, [r1, #8]
	mov r2, #0xc0
	add r1, #0x54
	bl sub_020C4DB0
	ldr r0, _02033378 ; =0x021C07B8
	ldr r1, _0203337C ; =0x00000D95
	ldr r3, [r0, #8]
	mov r0, #0x40
	ldrb r2, [r3, r1]
	orr r0, r2
	strb r0, [r3, r1]
_02033374:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02033378: .word 0x021C07B8
_0203337C: .word 0x00000D95
	thumb_func_end sub_0203330C

	thumb_func_start sub_02033380
sub_02033380: ; 0x02033380
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0203343C ; =0x021C07B8
	ldr r1, _02033440 ; =0x00000D95
	ldr r3, [r0, #8]
	ldrb r2, [r3, r1]
	add r7, r3, #0
	add r7, #0x54
	lsl r0, r2, #0x19
	lsr r0, r0, #0x1f
	beq _0203343A
	mov r0, #0x40
	mov r6, #0
	bic r2, r0
	strb r2, [r3, r1]
	add r4, r6, #0
	add r5, r6, #0
_020333A0:
	ldr r0, _0203343C ; =0x021C07B8
	ldr r1, _02033444 ; =0x00000D44
	ldr r0, [r0, #8]
	add r2, r0, r4
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _020333E8
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, r0, r5
	add r1, r7, #4
	mov r2, #6
	bl sub_020332E4
	cmp r0, #0
	beq _020333E8
	ldr r2, _0203343C ; =0x021C07B8
	mov r1, #0x4b
	ldr r3, [r2, #8]
	lsl r0, r6, #1
	add r3, r3, r0
	ldr r0, _02033444 ; =0x00000D44
	lsl r1, r1, #2
	strh r1, [r3, r0]
	ldr r2, [r2, #8]
	sub r1, #0x18
	add r3, r2, r1
	mov r2, #0xc0
	add r1, r6, #0
	mul r1, r2
	add r0, r7, #0
	add r1, r3, r1
	bl sub_020C4DB0
	pop {r3, r4, r5, r6, r7, pc}
_020333E8:
	add r6, r6, #1
	add r4, r4, #2
	add r5, #0xc0
	cmp r6, #0x10
	blt _020333A0
	ldr r0, _0203343C ; =0x021C07B8
	ldr r1, _02033444 ; =0x00000D44
	ldr r0, [r0, #8]
	mov r3, #0
	add r4, r0, #0
_020333FC:
	ldrh r2, [r4, r1]
	cmp r2, #0
	beq _0203340A
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #0x10
	blt _020333FC
_0203340A:
	cmp r3, #0x10
	bge _0203343A
	lsl r2, r3, #1
	mov r1, #0x4b
	add r2, r0, r2
	ldr r0, _02033444 ; =0x00000D44
	lsl r1, r1, #2
	strh r1, [r2, r0]
	ldr r2, _0203343C ; =0x021C07B8
	sub r1, #0x18
	ldr r2, [r2, #8]
	add r0, r7, #0
	add r4, r2, r1
	mov r2, #0xc0
	add r1, r3, #0
	mul r1, r2
	add r1, r4, r1
	bl sub_020C4DB0
	ldr r0, _0203343C ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02033448 ; =0x00000D74
	strb r2, [r1, r0]
_0203343A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203343C: .word 0x021C07B8
_02033440: .word 0x00000D95
_02033444: .word 0x00000D44
_02033448: .word 0x00000D74
	thumb_func_end sub_02033380

	thumb_func_start sub_0203344C
sub_0203344C: ; 0x0203344C
	push {r3, lr}
	cmp r1, #0
	beq _02033456
	bl sub_020C42A8
_02033456:
	ldr r0, _02033460 ; =0x021C07B8
	mov r1, #2
	str r1, [r0, #4]
	pop {r3, pc}
	nop
_02033460: .word 0x021C07B8
	thumb_func_end sub_0203344C

	thumb_func_start sub_02033464
sub_02033464: ; 0x02033464
	ldr r0, _02033470 ; =0x021C07B8
	mov r1, #0
	str r1, [r0, #4]
	ldr r3, _02033474 ; =sub_02017B8C
	mov r0, #4
	bx r3
	; .align 2, 0
_02033470: .word 0x021C07B8
_02033474: .word sub_02017B8C
	thumb_func_end sub_02033464

	thumb_func_start sub_02033478
sub_02033478: ; 0x02033478
	push {r3, lr}
	mov r0, #4
	bl sub_02017B7C
	ldr r0, _0203349C ; =0x021C07B8
	mov r1, #1
	str r1, [r0, #4]
	ldr r1, _020334A0 ; =sub_0203344C
	mov r0, #8
	mov r2, #0
	bl sub_020A2418
	cmp r0, #1
	beq _02033498
	bl sub_020C42A8
_02033498:
	pop {r3, pc}
	nop
_0203349C: .word 0x021C07B8
_020334A0: .word sub_0203344C
	thumb_func_end sub_02033478

	thumb_func_start sub_020334A4
sub_020334A4: ; 0x020334A4
	ldr r0, _020334B4 ; =0x021C07B8
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _020334B0
	mov r0, #1
	bx lr
_020334B0:
	mov r0, #0
	bx lr
	; .align 2, 0
_020334B4: .word 0x021C07B8
	thumb_func_end sub_020334A4

	thumb_func_start sub_020334B8
sub_020334B8: ; 0x020334B8
	ldr r0, _020334C8 ; =0x021C07B8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020334C4
	mov r0, #1
	bx lr
_020334C4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020334C8: .word 0x021C07B8
	thumb_func_end sub_020334B8

	thumb_func_start sub_020334CC
sub_020334CC: ; 0x020334CC
	ldr r3, _020334D4 ; =sub_020A2654
	ldr r0, _020334D8 ; =sub_02033464
	mov r1, #0
	bx r3
	; .align 2, 0
_020334D4: .word sub_020A2654
_020334D8: .word sub_02033464
	thumb_func_end sub_020334CC

	thumb_func_start sub_020334DC
sub_020334DC: ; 0x020334DC
	push {r4, lr}
	ldr r2, _02033514 ; =0x021C07B8
	add r1, r0, #0
	mov r0, #0xd7
	ldr r3, [r2, #8]
	mov r4, #0
	lsl r0, r0, #4
	str r4, [r3, r0]
	ldr r2, [r2, #8]
	sub r0, #0xc
	ldr r3, [r2, r0]
	mov r0, #0x1f
	add r2, r3, #0
	and r2, r0
	mov r0, #0x20
	sub r0, r0, r2
	add r0, r3, r0
	bl sub_02031BC4
	ldr r0, _02033514 ; =0x021C07B8
	ldr r1, [r0, #8]
	mov r0, #0x36
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bl sub_020318D0
	pop {r4, pc}
	nop
_02033514: .word 0x021C07B8
	thumb_func_end sub_020334DC

	thumb_func_start sub_02033518
sub_02033518: ; 0x02033518
	push {r3, r4, r5, lr}
	mov r4, #0
	ldr r2, _02033548 ; =0x021C07B8
	ldr r0, _0203354C ; =0x00000D44
	add r5, r4, #0
	add r1, r4, #0
_02033524:
	ldr r3, [r2, #8]
	add r4, r4, #1
	add r3, r3, r5
	add r5, r5, #2
	strh r1, [r3, r0]
	cmp r4, #0x10
	blt _02033524
	ldr r0, _02033548 ; =0x021C07B8
	ldr r2, [r0, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r2, r0
	mov r2, #3
	lsl r2, r2, #0xa
	bl sub_020C4CF4
	pop {r3, r4, r5, pc}
	nop
_02033548: .word 0x021C07B8
_0203354C: .word 0x00000D44
	thumb_func_end sub_02033518

	thumb_func_start sub_02033550
sub_02033550: ; 0x02033550
	push {r3, r4}
	ldr r1, _02033570 ; =0x021C07B8
	lsl r0, r0, #0x18
	ldr r2, [r1, #8]
	ldr r4, _02033574 ; =0x00000D95
	lsr r0, r0, #0x18
	ldrb r1, [r2, r4]
	mov r3, #8
	lsl r0, r0, #0x1f
	bic r1, r3
	lsr r0, r0, #0x1c
	orr r0, r1
	strb r0, [r2, r4]
	pop {r3, r4}
	bx lr
	nop
_02033570: .word 0x021C07B8
_02033574: .word 0x00000D95
	thumb_func_end sub_02033550

	thumb_func_start sub_02033578
sub_02033578: ; 0x02033578
	push {r4, r5}
	ldr r1, _020335D4 ; =0x021C07B8
	ldr r0, _020335D8 ; =0x00000D74
	ldr r3, [r1, #8]
	mov r2, #0
	strb r2, [r3, r0]
	add r3, r0, #0
	ldr r5, [r1, #8]
	add r3, #0x21
	ldrb r4, [r5, r3]
	mov r3, #1
	bic r4, r3
	add r3, r0, #0
	add r3, #0x21
	strb r4, [r5, r3]
	add r3, r0, #0
	ldr r5, [r1, #8]
	add r3, #0x21
	ldrb r4, [r5, r3]
	mov r3, #4
	bic r4, r3
	add r3, r0, #0
	add r3, #0x21
	strb r4, [r5, r3]
	add r3, r0, #0
	ldr r4, [r1, #8]
	add r3, #0x1e
	strb r2, [r4, r3]
	add r3, r0, #0
	ldr r5, [r1, #8]
	add r3, #0x21
	ldrb r4, [r5, r3]
	mov r3, #0x10
	bic r4, r3
	add r3, r0, #0
	add r3, #0x21
	strb r4, [r5, r3]
	add r3, r0, #0
	ldr r4, [r1, #8]
	add r3, #0x20
	strb r2, [r4, r3]
	ldr r1, [r1, #8]
	add r0, #0x1f
	strb r2, [r1, r0]
	pop {r4, r5}
	bx lr
	; .align 2, 0
_020335D4: .word 0x021C07B8
_020335D8: .word 0x00000D74
	thumb_func_end sub_02033578

	thumb_func_start sub_020335DC
sub_020335DC: ; 0x020335DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02033578
	add r0, r5, #0
	bl sub_02033550
	bl sub_020320E8
	ldr r0, _02033640 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033644 ; =0x00000D93
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0203360E
	ldr r0, _02033648 ; =sub_020351F8
	mov r1, #0xe
	bl sub_02031E6C
	ldr r0, _02033640 ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02033644 ; =0x00000D93
	strb r2, [r1, r0]
_0203360E:
	ldr r0, _02033640 ; =0x021C07B8
	ldr r3, _0203364C ; =0x00000D95
	ldr r1, [r0, #8]
	mov r2, #0x20
	ldrb r0, [r1, r3]
	bic r0, r2
	lsl r2, r4, #0x18
	lsr r2, r2, #0x18
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1a
	orr r0, r2
	strb r0, [r1, r3]
	bl sub_02031934
	cmp r0, #1
	bne _0203363A
	bl sub_0203195C
	cmp r0, #0
	beq _0203363A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203363A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02033640: .word 0x021C07B8
_02033644: .word 0x00000D93
_02033648: .word sub_020351F8
_0203364C: .word 0x00000D95
	thumb_func_end sub_020335DC

	thumb_func_start sub_02033650
sub_02033650: ; 0x02033650
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	bl sub_02033578
	cmp r4, #0
	beq _02033662
	bl sub_02033518
_02033662:
	ldr r0, _020336C0 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020336C4 ; =0x00000D93
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02033680
	ldr r0, _020336C8 ; =sub_0203509C
	mov r1, #0xe
	bl sub_02031E6C
	ldr r0, _020336C0 ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020336C4 ; =0x00000D93
	strb r2, [r1, r0]
_02033680:
	bl sub_02031934
	cmp r0, #1
	bne _020336B8
	ldr r2, _020336CC ; =0x020E5E6C
	add r0, sp, #0
	ldrb r3, [r2]
	add r1, sp, #0
	strb r3, [r0]
	ldrb r3, [r2, #1]
	strb r3, [r0, #1]
	ldrb r3, [r2, #2]
	strb r3, [r0, #2]
	ldrb r3, [r2, #3]
	strb r3, [r0, #3]
	ldrb r3, [r2, #4]
	ldrb r2, [r2, #5]
	strb r3, [r0, #4]
	strb r2, [r0, #5]
	ldr r0, _020336D0 ; =sub_0203330C
	mov r2, #0
	bl sub_020312B8
	cmp r0, #0
	beq _020336B8
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_020336B8:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_020336C0: .word 0x021C07B8
_020336C4: .word 0x00000D93
_020336C8: .word sub_0203509C
_020336CC: .word 0x020E5E6C
_020336D0: .word sub_0203330C
	thumb_func_end sub_02033650

	thumb_func_start sub_020336D4
sub_020336D4: ; 0x020336D4
	push {r3, lr}
	ldr r0, _02033760 ; =0x021C07B8
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _020336E2
	mov r0, #1
	pop {r3, pc}
_020336E2:
	ldr r0, _02033764 ; =0x00000D94
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020336F4
	cmp r0, #1
	beq _02033724
	cmp r0, #2
	beq _0203373C
	b _0203375A
_020336F4:
	bl sub_02032010
	cmp r0, #0
	beq _0203370C
	bl sub_020314C0
	ldr r0, _02033760 ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02033764 ; =0x00000D94
	strb r2, [r1, r0]
	b _0203375A
_0203370C:
	bl sub_02031FD8
	cmp r0, #0
	bne _0203375A
	bl sub_02031EF4
	ldr r0, _02033760 ; =0x021C07B8
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02033764 ; =0x00000D94
	strb r2, [r1, r0]
	b _0203375A
_02033724:
	bl sub_02031FD8
	cmp r0, #0
	bne _0203375A
	bl sub_02031EF4
	ldr r0, _02033760 ; =0x021C07B8
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02033764 ; =0x00000D94
	strb r2, [r1, r0]
	b _0203375A
_0203373C:
	bl sub_02031FBC
	cmp r0, #0
	beq _02033748
	mov r0, #1
	pop {r3, pc}
_02033748:
	bl sub_02031FF4
	cmp r0, #0
	beq _0203375A
	ldr r0, _02033760 ; =0x021C07B8
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02033764 ; =0x00000D94
	strb r2, [r1, r0]
_0203375A:
	mov r0, #0
	pop {r3, pc}
	nop
_02033760: .word 0x021C07B8
_02033764: .word 0x00000D94
	thumb_func_end sub_020336D4

	thumb_func_start sub_02033768
sub_02033768: ; 0x02033768
	push {r3, lr}
	ldr r0, _0203378C ; =0x021C07B8
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02033786
	ldr r0, _02033790 ; =0x00000D92
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _02033786
	mov r1, #1
	strb r1, [r2, r0]
	bl sub_02031EF4
	mov r0, #1
	pop {r3, pc}
_02033786:
	mov r0, #0
	pop {r3, pc}
	nop
_0203378C: .word 0x021C07B8
_02033790: .word 0x00000D92
	thumb_func_end sub_02033768

	thumb_func_start sub_02033794
sub_02033794: ; 0x02033794
	push {r3, lr}
	ldr r1, _020337B8 ; =0x021C07B8
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _020337B4
	cmp r0, #0
	ldr r0, _020337BC ; =0x00000D92
	beq _020337AA
	mov r1, #2
	strb r1, [r2, r0]
	pop {r3, pc}
_020337AA:
	mov r1, #0
	strb r1, [r2, r0]
	mov r0, #1
	bl sub_020334DC
_020337B4:
	pop {r3, pc}
	nop
_020337B8: .word 0x021C07B8
_020337BC: .word 0x00000D92
	thumb_func_end sub_02033794

	thumb_func_start sub_020337C0
sub_020337C0: ; 0x020337C0
	push {r3, lr}
	ldr r0, _020337F8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020337FC ; =0x00000D7C
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _020337F8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033800 ; =0x00000D64
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _020337F8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033804 ; =0x00000D84
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _020337F8 ; =0x021C07B8
	ldr r0, [r0, #8]
	bl sub_020181C4
	ldr r0, _020337F8 ; =0x021C07B8
	mov r1, #0
	str r1, [r0, #8]
	pop {r3, pc}
	nop
_020337F8: .word 0x021C07B8
_020337FC: .word 0x00000D7C
_02033800: .word 0x00000D64
_02033804: .word 0x00000D84
	thumb_func_end sub_020337C0

	thumb_func_start sub_02033808
sub_02033808: ; 0x02033808
	push {r4, lr}
	bl sub_02035E38
	cmp r0, #0
	bne _02033816
	mov r0, #0
	pop {r4, pc}
_02033816:
	ldr r1, _02033834 ; =0x021C07B8
	mov r0, #0
	ldr r4, [r1, #8]
	ldr r1, _02033838 ; =0x00000D44
	add r3, r0, #0
_02033820:
	ldrh r2, [r4, r1]
	cmp r2, #0
	beq _02033828
	add r0, r0, #1
_02033828:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #0x10
	blt _02033820
	pop {r4, pc}
	nop
_02033834: .word 0x021C07B8
_02033838: .word 0x00000D44
	thumb_func_end sub_02033808

	thumb_func_start sub_0203383C
sub_0203383C: ; 0x0203383C
	push {r3, r4, r5, lr}
	ldr r1, _02033868 ; =0x021C07B8
	mov r4, #0
	ldr r5, [r1, #8]
	ldr r1, _0203386C ; =0x00000D44
	add r3, r4, #0
_02033848:
	ldrh r2, [r5, r1]
	cmp r2, #0
	beq _02033858
	cmp r4, r0
	bne _02033856
	add r0, r3, #0
	pop {r3, r4, r5, pc}
_02033856:
	add r4, r4, #1
_02033858:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #0x10
	blt _02033848
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02033868: .word 0x021C07B8
_0203386C: .word 0x00000D44
	thumb_func_end sub_0203383C

	thumb_func_start sub_02033870
sub_02033870: ; 0x02033870
	ldr r0, _0203387C ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033880 ; =0x00000D74
	ldrb r0, [r1, r0]
	bx lr
	nop
_0203387C: .word 0x021C07B8
_02033880: .word 0x00000D74
	thumb_func_end sub_02033870

	thumb_func_start sub_02033884
sub_02033884: ; 0x02033884
	ldr r0, _02033890 ; =0x021C07B8
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02033894 ; =0x00000D74
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_02033890: .word 0x021C07B8
_02033894: .word 0x00000D74
	thumb_func_end sub_02033884

	thumb_func_start sub_02033898
sub_02033898: ; 0x02033898
	ldr r1, _020338C0 ; =0x021C07B8
	ldr r3, [r1, #8]
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _020338C4 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _020338BC
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r3, r2
	add r1, #0xaa
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _020338BE
	mov r0, #1
	bx lr
_020338BC:
	mov r0, #0
_020338BE:
	bx lr
	; .align 2, 0
_020338C0: .word 0x021C07B8
_020338C4: .word 0x00000D44
	thumb_func_end sub_02033898

	thumb_func_start sub_020338C8
sub_020338C8: ; 0x020338C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0xf
_020338CE:
	add r0, r4, #0
	bl sub_02033898
	cmp r0, r5
	ble _020338E0
	cmp r0, #8
	bge _020338E0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_020338E0:
	sub r4, r4, #1
	bpl _020338CE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020338C8

	thumb_func_start sub_020338EC
sub_020338EC: ; 0x020338EC
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02033808
	cmp r0, #0
	bne _020338FC
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020338FC:
	mov r5, #0x2d
	ldr r7, _02033944 ; =0x021C07B8
	mov r6, #0xf
	mov r4, #0x1e
	lsl r5, r5, #6
_02033906:
	ldr r0, [r7, #8]
	ldr r1, _02033948 ; =0x00000D44
	add r2, r0, r4
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02033934
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, r0, r5
	bl sub_02034014
	cmp r0, #0
	beq _02033934
	add r0, r6, #0
	bl sub_02033898
	cmp r0, #1
	ble _02033934
	cmp r0, #8
	bge _02033934
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02033934:
	sub r4, r4, #2
	sub r5, #0xc0
	sub r6, r6, #1
	bpl _02033906
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02033944: .word 0x021C07B8
_02033948: .word 0x00000D44
	thumb_func_end sub_020338EC

	thumb_func_start sub_0203394C
sub_0203394C: ; 0x0203394C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02033808
	cmp r0, #0
	bne _0203395C
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0203395C:
	mov r5, #0x2d
	ldr r7, _020339A4 ; =0x021C07B8
	mov r6, #0xf
	mov r4, #0x1e
	lsl r5, r5, #6
_02033966:
	ldr r0, [r7, #8]
	ldr r1, _020339A8 ; =0x00000D44
	add r2, r0, r4
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02033986
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, r0, r5
	bl sub_02034014
	cmp r0, #0
	beq _02033986
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02033986:
	sub r4, r4, #2
	sub r5, #0xc0
	sub r6, r6, #1
	bpl _02033966
	mov r0, #1
	bl sub_020338C8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020339A2
	mov r0, #0
	bl sub_020338C8
_020339A2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020339A4: .word 0x021C07B8
_020339A8: .word 0x00000D44
	thumb_func_end sub_0203394C

	thumb_func_start sub_020339AC
sub_020339AC: ; 0x020339AC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _020339E0 ; =0x021C07B8
	mov r5, #0
	ldr r6, [r1, #8]
	ldr r1, _020339E4 ; =0x00000D44
	add r3, r5, #0
_020339BA:
	ldrh r2, [r6, r1]
	cmp r2, #0
	beq _020339D4
	cmp r0, r5
	bne _020339D2
	add r0, r3, #0
	bl sub_02033FB0
	add r1, r4, #0
	bl sub_02025E80
	pop {r4, r5, r6, pc}
_020339D2:
	add r5, r5, #1
_020339D4:
	add r3, r3, #1
	add r6, r6, #2
	cmp r3, #0x10
	blt _020339BA
	pop {r4, r5, r6, pc}
	nop
_020339E0: .word 0x021C07B8
_020339E4: .word 0x00000D44
	thumb_func_end sub_020339AC

	thumb_func_start sub_020339E8
sub_020339E8: ; 0x020339E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02031934
	cmp r0, #2
	bne _020339FC
	bl sub_020314C0
	mov r0, #0
	pop {r3, r4, r5, pc}
_020339FC:
	bl sub_02031934
	cmp r0, #1
	bne _02033A52
	bl sub_0203895C
	ldr r2, _02033A58 ; =0x021C07B8
	mov r1, #0xc0
	add r4, r5, #0
	mul r4, r1
	ldr r3, [r2, #8]
	add r1, #0x8a
	add r2, r3, r4
	ldrh r2, [r2, r1]
	mov r1, #0xd9
	lsl r1, r1, #4
	strb r2, [r3, r1]
	bl sub_020326C4
	cmp r0, #0
	beq _02033A3C
	ldr r1, _02033A58 ; =0x021C07B8
	mov r0, #1
	ldr r2, [r1, #8]
	mov r1, #0x46
	lsl r1, r1, #2
	add r1, r2, r1
	add r1, r1, r4
	mov r2, #0
	bl sub_02031220
	b _02033A4E
_02033A3C:
	ldr r1, _02033A58 ; =0x021C07B8
	mov r0, #1
	ldr r2, [r1, #8]
	mov r1, #0x45
	lsl r1, r1, #2
	add r1, r2, r1
	add r1, r1, r4
	bl sub_02031DD8
_02033A4E:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02033A52:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02033A58: .word 0x021C07B8
	thumb_func_end sub_020339E8

	thumb_func_start sub_02033A5C
sub_02033A5C: ; 0x02033A5C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02033380
	mov r4, #0
	ldr r1, _02033A9C ; =0x021C07B8
	ldr r0, _02033AA0 ; =0x00000D44
	add r5, r4, #0
	mov r2, #1
_02033A6C:
	ldr r3, [r1, #8]
	add r3, r3, r5
	ldrh r6, [r3, r0]
	cmp r6, #0
	beq _02033A90
	beq _02033A90
	ldr r6, _02033AA0 ; =0x00000D44
	ldrh r6, [r3, r6]
	sub r7, r6, #1
	ldr r6, _02033AA0 ; =0x00000D44
	strh r7, [r3, r6]
	ldr r3, [r1, #8]
	add r7, r3, r5
	ldrh r6, [r7, r6]
	cmp r6, #0
	bne _02033A90
	ldr r6, _02033AA4 ; =0x00000D74
	strb r2, [r3, r6]
_02033A90:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #0x10
	blt _02033A6C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02033A9C: .word 0x021C07B8
_02033AA0: .word 0x00000D44
_02033AA4: .word 0x00000D74
	thumb_func_end sub_02033A5C

	thumb_func_start sub_02033AA8
sub_02033AA8: ; 0x02033AA8
	push {r3, r4, r5, lr}
	bl sub_0203895C
	add r5, r0, #0
	bl sub_02033F9C
	add r4, r0, #0
	cmp r5, #0xf
	beq _02033B30
	ldr r0, _02033B78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033B7C ; =0x00000D88
	ldr r5, [r1, r0]
	bl sub_0202602C
	cmp r0, #0x20
	ble _02033ACE
	bl sub_02022974
_02033ACE:
	bl sub_02025E68
	cmp r0, #0x20
	beq _02033ADA
	bl sub_02022974
_02033ADA:
	bl sub_02025E68
	add r1, r5, #0
	add r2, r0, #0
	add r0, r4, #0
	add r1, #0x10
	bl sub_020C4DB0
	bl sub_0202602C
	add r2, r0, #0
	ldr r0, _02033B78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033B80 ; =0x00000D7C
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r1, #0x30
	bl sub_020C4DB0
	add r0, r4, #0
	bl sub_02025F20
	str r0, [r5, #0]
	bl sub_0203895C
	strb r0, [r5, #4]
	bl sub_02038974
	strb r0, [r5, #5]
	ldr r0, _02033B78 ; =0x021C07B8
	mov r2, #8
	ldr r1, [r0, #8]
	ldr r0, _02033B84 ; =0x00000D68
	add r0, r1, r0
	add r1, r5, #0
	add r1, #8
	bl sub_020C4DB0
	bl sub_0203214C
	add r5, #0x54
	strb r0, [r5]
	b _02033B58
_02033B30:
	ldr r1, _02033B78 ; =0x021C07B8
	ldr r2, [r1, #8]
	ldr r1, _02033B7C ; =0x00000D88
	ldr r4, [r2, r1]
	bl sub_02025F20
	str r0, [r4, #0]
	bl sub_0203895C
	strb r0, [r4, #4]
	bl sub_02038974
	strb r0, [r4, #5]
	ldr r0, _02033B78 ; =0x021C07B8
	add r4, #8
	ldr r0, [r0, #8]
	add r1, r4, #0
	mov r2, #0x54
	bl sub_020C4DB0
_02033B58:
	ldr r0, _02033B78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033B7C ; =0x00000D88
	ldr r0, [r1, r0]
	mov r1, #0x5c
	bl sub_020C2C54
	ldr r0, _02033B78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033B7C ; =0x00000D88
	ldr r0, [r1, r0]
	mov r1, #0x5c
	bl sub_020318DC
	pop {r3, r4, r5, pc}
	nop
_02033B78: .word 0x021C07B8
_02033B7C: .word 0x00000D88
_02033B80: .word 0x00000D7C
_02033B84: .word 0x00000D68
	thumb_func_end sub_02033AA8

	thumb_func_start sub_02033B88
sub_02033B88: ; 0x02033B88
	push {r4, lr}
	ldr r0, _02033BD4 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033BD8 ; =0x00000D88
	ldr r4, [r1, r0]
	bl sub_02033DDC
	ldrb r1, [r4, #6]
	cmp r1, r0
	beq _02033BD2
	bl sub_02033DDC
	strb r0, [r4, #6]
	ldr r0, _02033BD4 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033BD8 ; =0x00000D88
	ldr r0, [r1, r0]
	mov r1, #0x5c
	bl sub_020C2C54
	ldr r0, _02033BD4 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033BD8 ; =0x00000D88
	ldr r0, [r1, r0]
	mov r1, #0x5c
	bl sub_020318DC
	ldr r3, _02033BD4 ; =0x021C07B8
	ldr r2, _02033BD8 ; =0x00000D88
	ldr r4, [r3, #8]
	ldrh r3, [r3]
	ldr r0, [r4, r2]
	sub r2, #8
	ldr r2, [r4, r2]
	mov r1, #0x5c
	bl sub_02032034
_02033BD2:
	pop {r4, pc}
	; .align 2, 0
_02033BD4: .word 0x021C07B8
_02033BD8: .word 0x00000D88
	thumb_func_end sub_02033B88

	thumb_func_start sub_02033BDC
sub_02033BDC: ; 0x02033BDC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02031934
	add r5, r0, #0
	bl sub_02032E90
	add r6, r0, #0
	bl sub_02033B88
	bl sub_02031F90
	cmp r0, #0
	bne _02033C1A
	bl sub_02033E48
	cmp r0, #0
	bne _02033C1A
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r3, _02033D7C ; =0x00000D95
	ldr r1, [r0, #8]
	ldrb r0, [r1, r3]
	lsl r2, r0, #0x1d
	lsr r2, r2, #0x1f
	beq _02033C1A
	mov r2, #1
	bic r0, r2
	mov r2, #1
	orr r0, r2
	strb r0, [r1, r3]
_02033C1A:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r3, _02033D80 ; =0x00000D8E
	ldr r2, [r0, #8]
	ldr r0, _02033D84 ; =0x0000FFFF
	ldrh r1, [r2, r3]
	cmp r1, r0
	bne _02033C2A
	strh r4, [r2, r3]
_02033C2A:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r3, _02033D7C ; =0x00000D95
	ldr r1, [r0, #8]
	ldrb r0, [r1, r3]
	lsl r2, r0, #0x1e
	lsr r2, r2, #0x1f
	beq _02033C60
	sub r2, r3, #7
	ldrh r2, [r1, r2]
	cmp r2, r4
	bls _02033C4A
	mov r2, #1
	bic r0, r2
	mov r2, #1
	orr r0, r2
	strb r0, [r1, r3]
_02033C4A:
	cmp r6, #0
	beq _02033C60
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r2, _02033D7C ; =0x00000D95
	ldr r0, [r0, #8]
	mov r1, #1
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #1
	orr r1, r3
	strb r1, [r0, r2]
_02033C60:
	bl sub_02031948
	cmp r0, #0x19
	bne _02033C6E
	mov r0, #0
	bl sub_020389FC
_02033C6E:
	cmp r5, #9
	bhi _02033D72
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02033C7E: ; jump table
	.short _02033C92 - _02033C7E - 2 ; case 0
	.short _02033CB2 - _02033C7E - 2 ; case 1
	.short _02033D72 - _02033C7E - 2 ; case 2
	.short _02033D72 - _02033C7E - 2 ; case 3
	.short _02033D72 - _02033C7E - 2 ; case 4
	.short _02033D72 - _02033C7E - 2 ; case 5
	.short _02033D72 - _02033C7E - 2 ; case 6
	.short _02033CF6 - _02033C7E - 2 ; case 7
	.short _02033CDC - _02033C7E - 2 ; case 8
	.short _02033CDC - _02033C7E - 2 ; case 9
_02033C92:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r2, [r0, #8]
	ldr r0, _02033D88 ; =0x00000D92
	ldrb r1, [r2, r0]
	cmp r1, #1
	bne _02033CA6
	bl sub_020337C0
	add sp, #8
	pop {r4, r5, r6, pc}
_02033CA6:
	cmp r1, #2
	bne _02033D72
	mov r1, #3
	strb r1, [r2, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
_02033CB2:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033D88 ; =0x00000D92
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02033CC6
	bl sub_02031F6C
	cmp r0, #0
	bne _02033D72
_02033CC6:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033D88 ; =0x00000D92
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02033D72
	bl sub_02031F6C
	add sp, #8
	cmp r0, #0
	pop {r4, r5, r6, pc}
_02033CDC:
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _02033D72
	ldr r1, _02033D7C ; =0x00000D95
	mov r0, #1
	ldrb r2, [r3, r1]
	add sp, #8
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r3, r1]
	pop {r4, r5, r6, pc}
_02033CF6:
	bl sub_02031B04
	ldr r3, _02033D78 ; =0x021C07B8
	ldr r2, _02033D8C ; =0x00000D91
	ldr r4, [r3, #8]
	ldrb r1, [r4, r2]
	cmp r1, #0
	bne _02033D12
	sub r1, r2, #5
	strh r0, [r4, r1]
	ldr r0, [r3, #8]
	mov r1, #5
	strb r1, [r0, r2]
	b _02033D16
_02033D12:
	sub r0, r1, #1
	strb r0, [r4, r2]
_02033D16:
	ldr r1, _02033D78 ; =0x021C07B8
	ldr r0, _02033D90 ; =0x00000D8C
	ldr r2, [r1, #8]
	ldrh r5, [r2, r0]
	add r0, #9
	ldrb r0, [r2, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02033D2E
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_02033D2E:
	bl sub_02033AA8
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r4, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02033F0C
	str r0, [sp]
	ldr r1, _02033D78 ; =0x021C07B8
	ldr r0, _02033D7C ; =0x00000D95
	ldr r2, [r1, #8]
	add r3, r4, #0
	ldrb r0, [r2, r0]
	add r2, r5, #0
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	str r0, [sp, #4]
	ldrh r1, [r1]
	mov r0, #0
	bl sub_02031D04
	ldr r0, _02033D78 ; =0x021C07B8
	ldr r1, [r0, #8]
	mov r0, #0xd9
	lsl r0, r0, #4
	strb r5, [r1, r0]
_02033D72:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02033D78: .word 0x021C07B8
_02033D7C: .word 0x00000D95
_02033D80: .word 0x00000D8E
_02033D84: .word 0x0000FFFF
_02033D88: .word 0x00000D92
_02033D8C: .word 0x00000D91
_02033D90: .word 0x00000D8C
	thumb_func_end sub_02033BDC

	thumb_func_start sub_02033D94
sub_02033D94: ; 0x02033D94
	push {r3, lr}
	ldr r1, _02033DA4 ; =0x021C07B8
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _02033DA2
	bl sub_02033BDC
_02033DA2:
	pop {r3, pc}
	; .align 2, 0
_02033DA4: .word 0x021C07B8
	thumb_func_end sub_02033D94

	thumb_func_start sub_02033DA8
sub_02033DA8: ; 0x02033DA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02033DD8 ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02033DB8
	mov r0, #0
	pop {r4, pc}
_02033DB8:
	bl sub_02031934
	cmp r0, #4
	beq _02033DC4
	mov r0, #0
	pop {r4, pc}
_02033DC4:
	bl sub_020318EC
	mov r2, #1
	add r1, r2, #0
	lsl r1, r4
	tst r0, r1
	bne _02033DD4
	mov r2, #0
_02033DD4:
	add r0, r2, #0
	pop {r4, pc}
	; .align 2, 0
_02033DD8: .word 0x021C07B8
	thumb_func_end sub_02033DA8

	thumb_func_start sub_02033DDC
sub_02033DDC: ; 0x02033DDC
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r4, #0
_02033DE2:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02033DA8
	cmp r0, #0
	beq _02033DF0
	add r4, r4, #1
_02033DF0:
	add r5, r5, #1
	cmp r5, #8
	blt _02033DE2
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02033DDC

	thumb_func_start sub_02033DFC
sub_02033DFC: ; 0x02033DFC
	ldr r0, _02033E14 ; =0x021C07B8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02033E10
	ldr r0, _02033E18 ; =0x00000D92
	ldrb r0, [r1, r0]
	cmp r0, #3
	bne _02033E10
	mov r0, #1
	bx lr
_02033E10:
	mov r0, #0
	bx lr
	; .align 2, 0
_02033E14: .word 0x021C07B8
_02033E18: .word 0x00000D92
	thumb_func_end sub_02033DFC

	thumb_func_start sub_02033E1C
sub_02033E1C: ; 0x02033E1C
	ldr r0, _02033E2C ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02033E28
	mov r0, #1
	bx lr
_02033E28:
	mov r0, #0
	bx lr
	; .align 2, 0
_02033E2C: .word 0x021C07B8
	thumb_func_end sub_02033E1C

	thumb_func_start sub_02033E30
sub_02033E30: ; 0x02033E30
	push {r3, lr}
	ldr r0, _02033E44 ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02033E40
	bl sub_02031FBC
	pop {r3, pc}
_02033E40:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02033E44: .word 0x021C07B8
	thumb_func_end sub_02033E30

	thumb_func_start sub_02033E48
sub_02033E48: ; 0x02033E48
	push {r3, lr}
	ldr r0, _02033E60 ; =0x021C07B8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02033E5C
	bl sub_020318EC
	ldr r1, _02033E64 ; =0x0000FFFE
	and r0, r1
	pop {r3, pc}
_02033E5C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02033E60: .word 0x021C07B8
_02033E64: .word 0x0000FFFE
	thumb_func_end sub_02033E48

	thumb_func_start sub_02033E68
sub_02033E68: ; 0x02033E68
	push {r3, lr}
	bl sub_02033E84
	cmp r0, #0
	beq _02033E7E
	bl sub_02031948
	cmp r0, #0x14
	bne _02033E7E
	mov r0, #1
	pop {r3, pc}
_02033E7E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02033E68

	thumb_func_start sub_02033E84
sub_02033E84: ; 0x02033E84
	ldr r0, _02033EA0 ; =0x021C07B8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02033E9A
	ldr r0, _02033EA4 ; =0x00000D95
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02033E9A
	mov r0, #1
	bx lr
_02033E9A:
	mov r0, #0
	bx lr
	nop
_02033EA0: .word 0x021C07B8
_02033EA4: .word 0x00000D95
	thumb_func_end sub_02033E84

	thumb_func_start sub_02033EA8
sub_02033EA8: ; 0x02033EA8
	push {r3, r4}
	ldr r1, _02033ECC ; =0x021C07B8
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02033EC6
	ldr r4, _02033ED0 ; =0x00000D95
	lsl r0, r0, #0x18
	ldrb r1, [r2, r4]
	lsr r0, r0, #0x18
	mov r3, #4
	lsl r0, r0, #0x1f
	bic r1, r3
	lsr r0, r0, #0x1d
	orr r0, r1
	strb r0, [r2, r4]
_02033EC6:
	pop {r3, r4}
	bx lr
	nop
_02033ECC: .word 0x021C07B8
_02033ED0: .word 0x00000D95
	thumb_func_end sub_02033EA8

	thumb_func_start sub_02033ED4
sub_02033ED4: ; 0x02033ED4
	push {r4, r5}
	ldr r5, _02033F00 ; =0x021C07B8
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _02033EFA
	ldr r4, _02033F04 ; =0x00000D95
	lsl r0, r0, #0x18
	ldrb r1, [r2, r4]
	lsr r0, r0, #0x18
	mov r3, #2
	lsl r0, r0, #0x1f
	bic r1, r3
	lsr r0, r0, #0x1e
	orr r0, r1
	strb r0, [r2, r4]
	ldr r2, _02033F08 ; =0x0000FFFF
	ldr r1, [r5, #8]
	sub r0, r4, #7
	strh r2, [r1, r0]
_02033EFA:
	pop {r4, r5}
	bx lr
	nop
_02033F00: .word 0x021C07B8
_02033F04: .word 0x00000D95
_02033F08: .word 0x0000FFFF
	thumb_func_end sub_02033ED4

	thumb_func_start sub_02033F0C
sub_02033F0C: ; 0x02033F0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020CE8A4
	add r4, r0, #0
	cmp r5, #0x25
	blo _02033F1E
	bl sub_02022974
_02033F1E:
	cmp r5, #0xa
	bne _02033F28
	lsl r0, r4, #0xe
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_02033F28:
	cmp r5, #9
	beq _02033F30
	cmp r5, #0xd
	bne _02033F36
_02033F30:
	lsl r0, r4, #0xe
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}
_02033F36:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02033F0C

	thumb_func_start sub_02033F3C
sub_02033F3C: ; 0x02033F3C
	ldr r1, _02033F64 ; =0x021C07B8
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _02033F5E
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _02033F68 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02033F5E
	mov r1, #0x45
	lsl r1, r1, #2
	add r2, r3, r1
	mov r1, #0xc0
	mul r1, r0
	add r0, r2, r1
	bx lr
_02033F5E:
	mov r0, #0
	bx lr
	nop
_02033F64: .word 0x021C07B8
_02033F68: .word 0x00000D44
	thumb_func_end sub_02033F3C

	thumb_func_start sub_02033F6C
sub_02033F6C: ; 0x02033F6C
	ldr r1, _02033F94 ; =0x021C07B8
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _02033F8E
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _02033F98 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _02033F8E
	mov r1, #0x59
	lsl r1, r1, #2
	add r2, r3, r1
	mov r1, #0xc0
	mul r1, r0
	add r0, r2, r1
	bx lr
_02033F8E:
	mov r0, #0
	bx lr
	nop
_02033F94: .word 0x021C07B8
_02033F98: .word 0x00000D44
	thumb_func_end sub_02033F6C

	thumb_func_start sub_02033F9C
sub_02033F9C: ; 0x02033F9C
	ldr r0, _02033FA8 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _02033FAC ; =0x00000D78
	ldr r0, [r1, r0]
	bx lr
	nop
_02033FA8: .word 0x021C07B8
_02033FAC: .word 0x00000D78
	thumb_func_end sub_02033F9C

	thumb_func_start sub_02033FB0
sub_02033FB0: ; 0x02033FB0
	ldr r1, _02033FD4 ; =0x021C07B8
	ldr r3, [r1, #8]
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _02033FD8 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	bne _02033FC4
	mov r0, #0
	bx lr
_02033FC4:
	mov r1, #0x59
	lsl r1, r1, #2
	add r2, r3, r1
	mov r1, #0xc0
	mul r1, r0
	add r0, r2, r1
	add r0, #0x10
	bx lr
	; .align 2, 0
_02033FD4: .word 0x021C07B8
_02033FD8: .word 0x00000D44
	thumb_func_end sub_02033FB0

	thumb_func_start sub_02033FDC
sub_02033FDC: ; 0x02033FDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0203400C ; =0x021C07B8
	add r4, r1, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02034008
	cmp r4, #8
	blt _02033FF2
	bl sub_02022974
_02033FF2:
	ldr r1, _0203400C ; =0x021C07B8
	add r0, r5, #0
	ldr r2, [r1, #8]
	ldr r1, _02034010 ; =0x00000D14
	add r3, r2, r1
	mov r2, #6
	add r1, r4, #0
	mul r1, r2
	add r1, r3, r1
	bl sub_020C4DB0
_02034008:
	pop {r3, r4, r5, pc}
	nop
_0203400C: .word 0x021C07B8
_02034010: .word 0x00000D14
	thumb_func_end sub_02033FDC

	thumb_func_start sub_02034014
sub_02034014: ; 0x02034014
	push {r4, r5}
	ldr r2, _02034064 ; =0x021C07B8
	mov r1, #0
	ldr r3, [r2, #8]
	ldr r2, _02034068 ; =0x00000D14
	add r2, r3, r2
	ldrb r3, [r0]
_02034022:
	ldrb r4, [r2]
	cmp r4, r3
	bne _02034056
	ldrb r5, [r2, #1]
	ldrb r4, [r0, #1]
	cmp r5, r4
	bne _02034056
	ldrb r5, [r2, #2]
	ldrb r4, [r0, #2]
	cmp r5, r4
	bne _02034056
	ldrb r5, [r2, #3]
	ldrb r4, [r0, #3]
	cmp r5, r4
	bne _02034056
	ldrb r5, [r2, #4]
	ldrb r4, [r0, #4]
	cmp r5, r4
	bne _02034056
	ldrb r5, [r2, #5]
	ldrb r4, [r0, #5]
	cmp r5, r4
	bne _02034056
	mov r0, #1
	pop {r4, r5}
	bx lr
_02034056:
	add r1, r1, #1
	add r2, r2, #6
	cmp r1, #8
	blt _02034022
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02034064: .word 0x021C07B8
_02034068: .word 0x00000D14
	thumb_func_end sub_02034014

	thumb_func_start sub_0203406C
sub_0203406C: ; 0x0203406C
	ldr r0, _02034084 ; =0x021C07B8
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203407E
	ldr r0, _02034088 ; =0x00000D95
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
_0203407E:
	mov r0, #0
	bx lr
	nop
_02034084: .word 0x021C07B8
_02034088: .word 0x00000D95
	thumb_func_end sub_0203406C

	thumb_func_start sub_0203408C
sub_0203408C: ; 0x0203408C
	ldr r0, _020340A0 ; =0x021C07B8
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0203409E
	ldr r1, _020340A4 ; =0x00000D95
	mov r0, #0x10
	ldrb r2, [r3, r1]
	orr r0, r2
	strb r0, [r3, r1]
_0203409E:
	bx lr
	; .align 2, 0
_020340A0: .word 0x021C07B8
_020340A4: .word 0x00000D95
	thumb_func_end sub_0203408C

	thumb_func_start sub_020340A8
sub_020340A8: ; 0x020340A8
	ldr r1, _020340B8 ; =0x021C07B8
	ldr r3, _020340BC ; =sub_020C4DB0
	ldr r2, [r1, #8]
	ldr r1, _020340C0 ; =0x00000D68
	add r1, r2, r1
	mov r2, #8
	bx r3
	nop
_020340B8: .word 0x021C07B8
_020340BC: .word sub_020C4DB0
_020340C0: .word 0x00000D68
	thumb_func_end sub_020340A8

	thumb_func_start sub_020340C4
sub_020340C4: ; 0x020340C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0202602C
	ldr r1, _020340E0 ; =0x021C07B8
	add r2, r0, #0
	ldr r3, [r1, #8]
	ldr r1, _020340E4 ; =0x00000D7C
	add r0, r4, #0
	ldr r1, [r3, r1]
	bl sub_020C4DB0
	pop {r4, pc}
	nop
_020340E0: .word 0x021C07B8
_020340E4: .word 0x00000D7C
	thumb_func_end sub_020340C4

	thumb_func_start sub_020340E8
sub_020340E8: ; 0x020340E8
	ldr r0, _020340F4 ; =0x021C07B8
	ldr r1, [r0, #8]
	ldr r0, _020340F8 ; =0x00000D7C
	ldr r0, [r1, r0]
	bx lr
	nop
_020340F4: .word 0x021C07B8
_020340F8: .word 0x00000D7C
	thumb_func_end sub_020340E8

	thumb_func_start sub_020340FC
sub_020340FC: ; 0x020340FC
	push {r4, lr}
	bl sub_02033AA8
	ldr r3, _02034118 ; =0x021C07B8
	ldr r2, _0203411C ; =0x00000D88
	ldr r4, [r3, #8]
	ldrh r3, [r3]
	ldr r0, [r4, r2]
	sub r2, #8
	ldr r2, [r4, r2]
	mov r1, #0x5c
	bl sub_02032034
	pop {r4, pc}
	; .align 2, 0
_02034118: .word 0x021C07B8
_0203411C: .word 0x00000D88
	thumb_func_end sub_020340FC

	thumb_func_start sub_02034120
sub_02034120: ; 0x02034120
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_02034128:
	add r0, r4, #0
	bl sub_02033F6C
	cmp r0, #0
	beq _0203413C
	ldrb r1, [r0, #4]
	cmp r1, r6
	bne _0203413C
	ldrb r0, [r0, #6]
	add r5, r5, r0
_0203413C:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02034128
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02034120

	thumb_func_start sub_02034148
sub_02034148: ; 0x02034148
	ldr r3, _0203414C ; =sub_020320C4
	bx r3
	; .align 2, 0
_0203414C: .word sub_020320C4
	thumb_func_end sub_02034148

	thumb_func_start sub_02034150
sub_02034150: ; 0x02034150
	push {r3, lr}
	ldr r1, _02034164 ; =0x021C07B8
	mov r2, #0x54
	ldr r1, [r1, #8]
	bl sub_020C4DB0
	bl sub_020340FC
	pop {r3, pc}
	nop
_02034164: .word 0x021C07B8
	thumb_func_end sub_02034150

	thumb_func_start sub_02034168
sub_02034168: ; 0x02034168
	ldr r1, _02034190 ; =0x021C07B8
	ldr r3, [r1, #8]
	cmp r3, #0
	beq _0203418C
	lsl r1, r0, #1
	add r2, r3, r1
	ldr r1, _02034194 ; =0x00000D44
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _0203418C
	mov r1, #0x59
	lsl r1, r1, #2
	add r2, r3, r1
	mov r1, #0xc0
	mul r1, r0
	add r0, r2, r1
	add r0, #8
	bx lr
_0203418C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02034190: .word 0x021C07B8
_02034194: .word 0x00000D44
	thumb_func_end sub_02034168

	thumb_func_start sub_02034198
sub_02034198: ; 0x02034198
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r4, #0
	ldr r1, _02034350 ; =0x021C07C4
	cmp r0, #0
	strb r4, [r1, #1]
	bne _020341A8
	b _020342F0
_020341A8:
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	ldr r0, _02034350 ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020341C2
	mov r0, #1
	pop {r4, r5, r6, pc}
_020341C2:
	mov r0, #0xf
	bl sub_020363E8
	mov r1, #0x6e
	mov r0, #0xf
	lsl r1, r1, #4
	bl sub_02018144
	ldr r2, _02034350 ; =0x021C07C4
	mov r1, #0x1f
	add r3, r0, #0
	and r3, r1
	mov r1, #0x20
	sub r1, r1, r3
	str r0, [r2, #4]
	add r0, r1, r0
	str r0, [r2, #8]
	mov r2, #0x1b
	add r1, r4, #0
	lsl r2, r2, #6
	bl sub_020C4CF4
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _0203420A
	ldr r0, _02034350 ; =0x021C07C4
	lsl r2, r5, #1
	ldr r1, [r0, #8]
	mov r0, #0x69
	add r2, #0x40
	lsl r0, r0, #4
	str r2, [r1, r0]
	b _02034216
_0203420A:
	ldr r0, _02034350 ; =0x021C07C4
	add r5, #0x40
	ldr r1, [r0, #8]
	mov r0, #0x69
	lsl r0, r0, #4
	str r5, [r1, r0]
_02034216:
	ldr r2, _02034350 ; =0x021C07C4
	mov r1, #0x69
	ldr r0, [r2, #8]
	lsl r1, r1, #4
	ldr r3, [r0, r1]
	add r5, r3, #0
	mul r5, r6
	sub r3, r1, #4
	str r5, [r0, r3]
	add r0, r1, #0
	ldr r3, [r2, #8]
	mov r5, #0
	add r0, #0x1d
	strb r5, [r3, r0]
	add r0, r1, #0
	ldr r3, [r2, #8]
	mov r5, #0x26
	add r0, #0x1e
	strb r5, [r3, r0]
	ldr r2, [r2, #8]
	mov r0, #0xf
	ldr r1, [r2, r1]
	lsl r1, r1, #1
	bl sub_02018144
	ldr r2, _02034350 ; =0x021C07C4
	mov r1, #0x49
	ldr r3, [r2, #8]
	lsl r1, r1, #4
	str r0, [r3, r1]
	mov r1, #0x69
	ldr r2, [r2, #8]
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	mov r0, #0xf
	bl sub_02018144
	ldr r2, _02034350 ; =0x021C07C4
	ldr r1, _02034354 ; =0x00000494
	ldr r3, [r2, #8]
	str r0, [r3, r1]
	ldr r2, [r2, #8]
	ldr r1, _02034358 ; =0x0000068C
	mov r0, #0xf
	ldr r1, [r2, r1]
	bl sub_02018144
	ldr r2, _02034350 ; =0x021C07C4
	ldr r1, _0203435C ; =0x0000048C
	ldr r3, [r2, #8]
	str r0, [r3, r1]
	ldr r2, [r2, #8]
	ldr r1, _02034358 ; =0x0000068C
	mov r0, #0xf
	ldr r1, [r2, r1]
	bl sub_02018144
	ldr r1, _02034350 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _02034360 ; =0x00000488
	str r0, [r2, r1]
	bl sub_0203895C
	cmp r0, #0xa
	bne _020342C4
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0x16
	ldr r3, [r0, #8]
	lsl r2, r2, #6
	add r0, r3, r2
	sub r2, #0xe8
	mov r1, #0x64
	add r2, r3, r2
	bl sub_020325EC
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0x5a
	mov r1, #0x32
	ldr r3, [r0, #8]
	lsl r2, r2, #4
	add r0, r3, r2
	sub r2, #0x90
	lsl r1, r1, #4
	add r2, r3, r2
	bl sub_020325EC
	b _020342FC
_020342C4:
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0x16
	ldr r3, [r0, #8]
	lsl r2, r2, #6
	add r0, r3, r2
	sub r2, #0xe8
	mov r1, #0x14
	add r2, r3, r2
	bl sub_020325EC
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0x5a
	add r1, r5, #0
	ldr r3, [r0, #8]
	lsl r2, r2, #4
	add r0, r3, r2
	sub r2, #0x90
	add r1, #0xf2
	add r2, r3, r2
	bl sub_020325EC
	b _020342FC
_020342F0:
	ldr r0, [r1, #8]
	mov r4, #1
	cmp r0, #0
	bne _020342FC
	bl sub_02022974
_020342FC:
	ldr r2, _02034350 ; =0x021C07C4
	ldr r1, _02034364 ; =0x00000694
	ldr r3, [r2, #8]
	mov r0, #0
	strh r0, [r3, r1]
	mov r5, #0xff
	add r1, #0x13
_0203430A:
	ldr r3, [r2, #8]
	add r3, r3, r0
	add r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, #4
	blt _0203430A
	cmp r4, #0
	bne _0203431E
	bl sub_0203463C
_0203431E:
	ldr r0, _02034350 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034368 ; =0x0000062C
	add r0, r1, r0
	bl sub_020361BC
	cmp r4, #0
	bne _02034340
	mov r1, #0
	ldr r0, _0203436C ; =sub_0203498C
	add r2, r1, #0
	bl sub_0200DA04
	ldr r1, _02034350 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _02034370 ; =0x0000057C
	str r0, [r2, r1]
_02034340:
	ldr r0, _02034350 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02034374 ; =0x000006B7
	strb r2, [r1, r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02034350: .word 0x021C07C4
_02034354: .word 0x00000494
_02034358: .word 0x0000068C
_0203435C: .word 0x0000048C
_02034360: .word 0x00000488
_02034364: .word 0x00000694
_02034368: .word 0x0000062C
_0203436C: .word sub_0203498C
_02034370: .word 0x0000057C
_02034374: .word 0x000006B7
	thumb_func_end sub_02034198

	thumb_func_start sub_02034378
sub_02034378: ; 0x02034378
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	mov r2, #0x66
	ldr r3, _020345F4 ; =0x021C07C4
	add r7, r0, #1
	ldr r0, [r3, #8]
	mov r1, #0
	lsl r2, r2, #4
	strb r1, [r0, r2]
	add r0, r2, #1
	ldr r4, [r3, #8]
	add r2, #0x2c
	strb r1, [r4, r0]
	ldr r3, [r3, #8]
	ldr r0, _020345F8 ; =0x0000048C
	ldr r2, [r3, r2]
	ldr r0, [r3, r0]
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0x60
	ldr r1, [r0, #8]
	ldr r0, _020345FC ; =0x0000051C
	add r0, r1, r0
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034600 ; =0x0000068C
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl sub_020E1F6C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	cmp r7, #0
	ble _020343FA
	add r6, r0, #0
	add r5, r0, #0
_020343D6:
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r2, _020345F8 ; =0x0000048C
	ldr r1, [r0, #8]
	ldr r0, _020345FC ; =0x0000051C
	add r0, r1, r0
	ldr r1, [r1, r2]
	add r0, r0, r5
	add r1, r1, r6
	add r2, r4, #0
	bl sub_02032188
	ldr r0, [sp, #4]
	add r6, r6, r4
	add r0, r0, #1
	add r5, #0xc
	str r0, [sp, #4]
	cmp r0, r7
	blt _020343D6
_020343FA:
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r2, _02034600 ; =0x0000068C
	ldr r3, [r0, #8]
	ldr r0, _02034604 ; =0x00000488
	ldr r2, [r3, r2]
	ldr r0, [r3, r0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0x60
	ldr r1, [r0, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [sp]
	cmp r7, #0
	ble _02034450
	add r6, r0, #0
	add r5, r0, #0
_0203442A:
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r2, _02034604 ; =0x00000488
	ldr r1, [r0, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r1, r0
	ldr r1, [r1, r2]
	add r0, r0, r5
	add r1, r1, r6
	add r2, r4, #0
	bl sub_02032188
	ldr r0, [sp]
	add r6, r6, r4
	add r0, r0, #1
	add r5, #0xc
	str r0, [sp]
	cmp r0, r7
	blt _0203442A
_02034450:
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #6
	ldr r1, [r0, #8]
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	lsl r2, r2, #6
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	mov r1, #0xc2
	ldr r2, [r0, #8]
	mov r0, #0x51
	lsl r0, r0, #4
	lsl r1, r1, #2
	add r0, r2, r0
	add r1, r2, r1
	mov r2, #6
	lsl r2, r2, #6
	bl sub_02032188
	ldr r0, _020345F4 ; =0x021C07C4
	mov r1, #0xee
	ldr r0, [r0, #8]
	add r2, r1, #0
	add r0, #0x80
	add r2, #0x92
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #5
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #0xee
	add r2, r1, #0
	add r2, #0x92
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #2
	ldr r0, [r0, #8]
	lsl r2, r2, #8
	add r0, r0, r2
	mov r1, #0
	sub r2, #0xf8
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02034608 ; =0x00000498
	lsl r2, r2, #8
	add r0, r1, r0
	add r1, r1, r2
	sub r2, #0xf8
	bl sub_02032188
	ldr r0, _020345F4 ; =0x021C07C4
	mov r1, #0xee
	ldr r0, [r0, #8]
	mov r2, #0x26
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	mov r1, #0xee
	ldr r0, [r0, #8]
	mov r2, #0x26
	add r0, #0x40
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0xff
	ldr r1, [r0, #8]
	strb r2, [r1]
	ldr r1, [r0, #8]
	add r1, #0x40
	strb r2, [r1]
	ldr r3, [r0, #8]
	mov r2, #0x69
	mov r0, #0x49
	lsl r2, r2, #4
	lsl r0, r0, #4
	ldr r2, [r3, r2]
	ldr r0, [r3, r0]
	mov r1, #0
	lsl r2, r2, #1
	bl sub_020C4CF4
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0x69
	ldr r3, [r0, #8]
	ldr r1, _0203460C ; =0x000004A4
	lsl r2, r2, #4
	add r0, r3, r1
	sub r1, #0x14
	ldr r2, [r3, r2]
	ldr r1, [r3, r1]
	lsl r2, r2, #1
	bl sub_02032188
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0
	ldr r3, [r0, #8]
	ldr r1, _02034610 ; =0x000006B4
	mov ip, r2
	strb r2, [r3, r1]
	ldr r3, [r0, #8]
	add r1, r1, #1
	strb r2, [r3, r1]
	add r1, r2, #0
	add r7, r2, #0
	add r6, r2, #0
_02034534:
	ldr r3, [r0, #8]
	add r4, r3, r2
	ldr r3, _02034614 ; =0x00000697
	strb r6, [r4, r3]
	ldr r3, [r0, #8]
	ldr r4, _02034618 ; =0x0000069F
	add r5, r3, r2
	mov r3, #1
	strb r3, [r5, r4]
	ldr r4, [r0, #8]
	mov r3, ip
	add r4, r4, r3
	ldr r3, _0203461C ; =0x00000644
	add r2, r2, #1
	strh r6, [r4, r3]
	ldr r3, [r0, #8]
	mov r4, #0xee
	add r5, r3, r1
	ldr r3, _02034620 ; =0x000005CA
	strb r4, [r5, r3]
	ldr r3, [r0, #8]
	ldr r4, _02034624 ; =0x0000FFFF
	add r5, r3, r1
	ldr r3, _02034628 ; =0x000005C8
	strh r4, [r5, r3]
	ldr r3, [r0, #8]
	add r4, r3, r1
	ldr r3, _0203462C ; =0x000005C4
	str r6, [r4, r3]
	ldr r3, [r0, #8]
	add r4, r3, r1
	mov r3, #0x17
	lsl r3, r3, #6
	str r6, [r4, r3]
	ldr r3, [r0, #8]
	add r1, #0xc
	add r4, r3, r7
	ldr r3, _02034630 ; =0x0000066C
	add r7, r7, #4
	str r6, [r4, r3]
	mov r3, ip
	add r3, r3, #2
	mov ip, r3
	cmp r2, #8
	blt _02034534
	ldr r1, _020345F4 ; =0x021C07C4
	ldr r0, _02034634 ; =0x00000668
	ldr r2, [r1, #8]
	add r3, r0, #0
	str r6, [r2, r0]
	ldr r4, [r1, #8]
	sub r3, #0x3e
	mov r2, #0xee
	strb r2, [r4, r3]
	add r3, r0, #0
	ldr r4, [r1, #8]
	ldr r2, _02034624 ; =0x0000FFFF
	sub r3, #0x40
	strh r2, [r4, r3]
	add r2, r0, #0
	ldr r3, [r1, #8]
	sub r2, #0x44
	str r6, [r3, r2]
	add r2, r0, #0
	ldr r3, [r1, #8]
	sub r2, #0x48
	str r6, [r3, r2]
	add r3, r0, #0
	ldr r4, [r1, #8]
	add r3, #0x4a
	mov r2, #1
	strb r2, [r4, r3]
	add r3, r0, #0
	ldr r4, [r1, #8]
	add r3, #0x4b
	strb r2, [r4, r3]
	strb r6, [r1]
	ldr r1, [r1, #8]
	sub r0, #0xe8
	add r0, r1, r0
	bl sub_02032618
	ldr r0, _020345F4 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_02032618
	ldr r0, _020345F4 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02034638 ; =0x000006B8
	strb r2, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020345F4: .word 0x021C07C4
_020345F8: .word 0x0000048C
_020345FC: .word 0x0000051C
_02034600: .word 0x0000068C
_02034604: .word 0x00000488
_02034608: .word 0x00000498
_0203460C: .word 0x000004A4
_02034610: .word 0x000006B4
_02034614: .word 0x00000697
_02034618: .word 0x0000069F
_0203461C: .word 0x00000644
_02034620: .word 0x000005CA
_02034624: .word 0x0000FFFF
_02034628: .word 0x000005C8
_0203462C: .word 0x000005C4
_02034630: .word 0x0000066C
_02034634: .word 0x00000668
_02034638: .word 0x000006B8
	thumb_func_end sub_02034378

	thumb_func_start sub_0203463C
sub_0203463C: ; 0x0203463C
	push {r4, lr}
	ldr r2, _02034664 ; =0x021C07C4
	ldr r1, _02034668 ; =0x000006AF
	ldr r0, [r2, #8]
	mov r4, #0
	strb r4, [r0, r1]
	ldr r3, [r2, #8]
	add r0, r1, #1
	strb r4, [r3, r0]
	ldr r0, [r2, #8]
	mov r3, #1
	sub r1, #0x4b
	str r3, [r0, r1]
	bl sub_02034378
	ldr r0, _0203466C ; =0x02100A1C
	mov r1, #4
	strb r1, [r0]
	strb r1, [r0, #1]
	pop {r4, pc}
	; .align 2, 0
_02034664: .word 0x021C07C4
_02034668: .word 0x000006AF
_0203466C: .word 0x02100A1C
	thumb_func_end sub_0203463C

	thumb_func_start sub_02034670
sub_02034670: ; 0x02034670
	ldr r3, _02034674 ; =sub_02034378
	bx r3
	; .align 2, 0
_02034674: .word sub_02034378
	thumb_func_end sub_02034670

	thumb_func_start sub_02034678
sub_02034678: ; 0x02034678
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0203471C ; =0x021C07C4
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r3, _02034720 ; =0x00000697
	mov r1, #0
	add r0, r0, r5
	strb r1, [r0, r3]
	ldr r2, [r4, #8]
	mov r0, #1
	add r6, r2, r5
	add r2, r3, #0
	add r2, #8
	strb r0, [r6, r2]
	ldr r2, [r4, #8]
	lsl r0, r5, #2
	add r0, r2, r0
	sub r3, #0x2b
	str r1, [r0, r3]
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r1, r0, #0
	add r0, r4, #0
	ldr r6, [r0, #8]
	ldr r0, _02034724 ; =0x0000068C
	add r1, r1, #1
	ldr r0, [r6, r0]
	bl sub_020E1F6C
	add r7, r5, #0
	mov r1, #0x4b
	str r0, [sp]
	mul r7, r0
	mov r0, #0xc
	add r4, r5, #0
	lsl r1, r1, #4
	mul r4, r0
	add r0, r6, r1
	sub r1, #0x28
	ldr r1, [r6, r1]
	ldr r2, [sp]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_02032188
	ldr r0, _0203471C ; =0x021C07C4
	ldr r1, _02034728 ; =0x0000051C
	ldr r2, [r0, #8]
	add r0, r2, r1
	sub r1, #0x90
	ldr r1, [r2, r1]
	ldr r2, [sp]
	add r0, r0, r4
	add r1, r1, r7
	bl sub_02032188
	ldr r3, _0203471C ; =0x021C07C4
	ldr r2, _0203472C ; =0x000005CA
	ldr r0, [r3, #8]
	mov r1, #0xee
	add r0, r0, r4
	strb r1, [r0, r2]
	ldr r0, [r3, #8]
	ldr r5, _02034730 ; =0x0000FFFF
	add r1, r0, r4
	sub r0, r2, #2
	strh r5, [r1, r0]
	ldr r1, [r3, #8]
	mov r0, #0
	add r5, r1, r4
	sub r1, r2, #6
	str r0, [r5, r1]
	ldr r1, [r3, #8]
	sub r2, #0xa
	add r1, r1, r4
	str r0, [r1, r2]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203471C: .word 0x021C07C4
_02034720: .word 0x00000697
_02034724: .word 0x0000068C
_02034728: .word 0x0000051C
_0203472C: .word 0x000005CA
_02034730: .word 0x0000FFFF
	thumb_func_end sub_02034678

	thumb_func_start sub_02034734
sub_02034734: ; 0x02034734
	push {r4, r5, r6, lr}
	ldr r4, _02034768 ; =0x021C07C4
	ldr r6, _0203476C ; =0x0000069F
	mov r5, #1
_0203473C:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _02034760
	ldr r0, [r4, #8]
	add r0, r0, r5
	ldrb r0, [r0, r6]
	cmp r0, #0
	bne _02034760
	bl sub_02036180
	cmp r0, #0
	bne _02034760
	add r0, r5, #0
	bl sub_02034678
_02034760:
	add r5, r5, #1
	cmp r5, #8
	blt _0203473C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02034768: .word 0x021C07C4
_0203476C: .word 0x0000069F
	thumb_func_end sub_02034734

	thumb_func_start sub_02034770
sub_02034770: ; 0x02034770
	ldr r3, _02034774 ; =sub_02034678
	bx r3
	; .align 2, 0
_02034774: .word sub_02034678
	thumb_func_end sub_02034770

	thumb_func_start sub_02034778
sub_02034778: ; 0x02034778
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	mov r4, #1
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	bne _020347A2
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020335DC
	add r4, r0, #0
	ldr r0, _020347B0 ; =sub_02034770
	bl sub_02032124
_020347A2:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02034198
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020347B0: .word sub_02034770
	thumb_func_end sub_02034778

	thumb_func_start sub_020347B4
sub_020347B4: ; 0x020347B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #1
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	bne _020347D4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02033650
	add r4, r0, #0
_020347D4:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02034198
	ldr r0, _020347E8 ; =0x02100A1C
	mov r1, #4
	strb r1, [r0, #1]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020347E8: .word 0x02100A1C
	thumb_func_end sub_020347B4

	thumb_func_start sub_020347EC
sub_020347EC: ; 0x020347EC
	push {r4, lr}
	mov r4, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02034802
	ldr r0, _0203483C ; =0x02100A1C
	ldrb r0, [r0]
	cmp r0, #4
	beq _0203480A
	pop {r4, pc}
_02034802:
	ldr r0, _0203483C ; =0x02100A1C
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne _02034838
_0203480A:
	ldr r0, _02034840 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034844 ; =0x000006AD
	ldrb r1, [r2, r0]
	cmp r1, #2
	bne _0203481C
	mov r1, #0
	strb r1, [r2, r0]
	mov r4, #1
_0203481C:
	ldr r0, _02034840 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034844 ; =0x000006AD
	ldrb r1, [r2, r0]
	cmp r1, #3
	bne _0203482C
	mov r4, #1
	strb r4, [r2, r0]
_0203482C:
	cmp r4, #0
	beq _02034834
	bl sub_02034670
_02034834:
	bl sub_02035F84
_02034838:
	pop {r4, pc}
	nop
_0203483C: .word 0x02100A1C
_02034840: .word 0x021C07C4
_02034844: .word 0x000006AD
	thumb_func_end sub_020347EC

	thumb_func_start sub_02034848
sub_02034848: ; 0x02034848
	ldr r1, _02034870 ; =0x021C07C4
	ldr r3, [r1, #8]
	ldr r1, _02034874 ; =0x000006AD
	ldrb r2, [r3, r1]
	cmp r2, #0
	bne _0203485E
	cmp r0, #1
	bne _0203485E
	mov r0, #3
	strb r0, [r3, r1]
	bx lr
_0203485E:
	cmp r2, #1
	bne _0203486C
	cmp r0, #0
	bne _0203486C
	ldr r0, _02034874 ; =0x000006AD
	mov r1, #2
	strb r1, [r3, r0]
_0203486C:
	bx lr
	nop
_02034870: .word 0x021C07C4
_02034874: .word 0x000006AD
	thumb_func_end sub_02034848

	thumb_func_start sub_02034878
sub_02034878: ; 0x02034878
	ldr r3, _02034880 ; =sub_02034848
	mov r0, #1
	bx r3
	nop
_02034880: .word sub_02034848
	thumb_func_end sub_02034878

	thumb_func_start sub_02034884
sub_02034884: ; 0x02034884
	ldr r3, _0203488C ; =sub_02034848
	mov r0, #0
	bx r3
	nop
_0203488C: .word sub_02034848
	thumb_func_end sub_02034884

	thumb_func_start sub_02034890
sub_02034890: ; 0x02034890
	ldr r0, _020348A8 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020348AC ; =0x000006AD
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _020348A0
	mov r0, #1
	bx lr
_020348A0:
	cmp r0, #3
	bne _020348A6
	mov r0, #0
_020348A6:
	bx lr
	; .align 2, 0
_020348A8: .word 0x021C07C4
_020348AC: .word 0x000006AD
	thumb_func_end sub_02034890

	thumb_func_start sub_020348B0
sub_020348B0: ; 0x020348B0
	push {r3, lr}
	bl sub_02034890
	cmp r0, #1
	bne _020348BE
	mov r0, #1
	pop {r3, pc}
_020348BE:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020348B0

	thumb_func_start sub_020348C4
sub_020348C4: ; 0x020348C4
	push {r4, lr}
	ldr r0, _02034970 ; =0x021C07C4
	mov r4, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020348EE
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _020348E4
	bl ov4_021D2184
	mov r4, #1
	b _020348EE
_020348E4:
	bl sub_02033768
	cmp r0, #0
	beq _020348EE
	mov r4, #1
_020348EE:
	cmp r4, #0
	beq _0203496E
	bl sub_02036438
	bl sub_02032A70
	ldr r0, _02034970 ; =0x021C07C4
	mov r1, #0
	strb r1, [r0, #1]
	ldr r1, [r0, #8]
	ldr r0, _02034974 ; =0x0000057C
	ldr r0, [r1, r0]
	bl sub_0200DA58
	ldr r1, _02034970 ; =0x021C07C4
	ldr r0, _02034974 ; =0x0000057C
	ldr r2, [r1, #8]
	mov r3, #0
	str r3, [r2, r0]
	ldr r1, [r1, #8]
	sub r0, #0xec
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034978 ; =0x00000494
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _0203497C ; =0x0000048C
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034980 ; =0x00000488
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_02032638
	ldr r0, _02034970 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	bl sub_02032638
	ldr r0, _02034970 ; =0x021C07C4
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, _02034970 ; =0x021C07C4
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
_0203496E:
	pop {r4, pc}
	; .align 2, 0
_02034970: .word 0x021C07C4
_02034974: .word 0x0000057C
_02034978: .word 0x00000494
_0203497C: .word 0x0000048C
_02034980: .word 0x00000488
	thumb_func_end sub_020348C4

	thumb_func_start sub_02034984
sub_02034984: ; 0x02034984
	ldr r3, _02034988 ; =sub_020339E8
	bx r3
	; .align 2, 0
_02034988: .word sub_020339E8
	thumb_func_end sub_02034984

	thumb_func_start sub_0203498C
sub_0203498C: ; 0x0203498C
	push {r3, lr}
	ldr r0, _020349C0 ; =0x021C07C4
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _020349BE
	bl sub_020353CC
	bl sub_0203608C
	cmp r0, #0
	bne _020349AC
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _020349B4
_020349AC:
	bl sub_02036180
	cmp r0, #0
	beq _020349B8
_020349B4:
	bl sub_02034DC8
_020349B8:
	ldr r0, _020349C0 ; =0x021C07C4
	mov r1, #0
	strb r1, [r0, #1]
_020349BE:
	pop {r3, pc}
	; .align 2, 0
_020349C0: .word 0x021C07C4
	thumb_func_end sub_0203498C

	thumb_func_start sub_020349C4
sub_020349C4: ; 0x020349C4
	push {r3, lr}
	bl sub_0203406C
	cmp r0, #0
	beq _020349E8
	bl sub_0203608C
	cmp r0, #0
	bne _020349E4
	bl sub_02033E48
	cmp r0, #0
	bne _020349E8
	bl sub_020348C4
	pop {r3, pc}
_020349E4:
	bl sub_020348C4
_020349E8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020349C4

	thumb_func_start sub_020349EC
sub_020349EC: ; 0x020349EC
	push {r4, lr}
	bl sub_02036C50
	ldr r3, _02034ACC ; =0x021C07C4
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _02034AB6
	ldr r2, _02034AD0 ; =0x000006BA
	ldrb r1, [r0, r2]
	cmp r1, #0
	bne _02034A98
	add r1, r2, #3
	ldrb r1, [r0, r1]
	add r4, r1, #1
	add r1, r2, #3
	strb r4, [r0, r1]
	mov r0, #0
	strb r0, [r3, #1]
	bl sub_020347EC
	ldr r0, _02034ACC ; =0x021C07C4
	ldr r1, _02034AD4 ; =0x021BF67C
	ldr r0, [r0, #8]
	ldr r2, _02034AD8 ; =0x0000065C
	ldr r3, [r1, #0x44]
	ldr r1, _02034ADC ; =0x00007FFF
	ldrh r4, [r0, r2]
	and r1, r3
	orr r1, r4
	strh r1, [r0, r2]
	bl sub_02035534
	bl sub_02034B50
	ldr r0, _02034ACC ; =0x021C07C4
	ldr r1, _02034AD8 ; =0x0000065C
	ldr r3, [r0, #8]
	mov r0, #2
	ldrh r2, [r3, r1]
	lsl r0, r0, #0xe
	and r0, r2
	strh r0, [r3, r1]
	bl sub_02034890
	cmp r0, #0
	bne _02034A4C
	bl sub_02035CA8
_02034A4C:
	bl sub_0203608C
	cmp r0, #0
	bne _02034A5E
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _02034A66
_02034A5E:
	bl sub_02036180
	cmp r0, #0
	beq _02034A76
_02034A66:
	bl sub_0203895C
	bl sub_0203272C
	cmp r0, #0
	bne _02034A76
	bl sub_02034F68
_02034A76:
	bl sub_0203608C
	cmp r0, #0
	beq _02034A8E
	bl sub_02034890
	cmp r0, #1
	beq _02034A8E
	bl sub_02036180
	cmp r0, #0
	beq _02034A92
_02034A8E:
	bl sub_02035CF8
_02034A92:
	ldr r0, _02034ACC ; =0x021C07C4
	mov r1, #1
	strb r1, [r0, #1]
_02034A98:
	ldr r0, _02034ACC ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02034AE0 ; =0x00000694
	ldrh r0, [r1, r0]
	bl sub_02033D94
	bl sub_0203608C
	cmp r0, #0
	bne _02034AB0
	bl sub_02034734
_02034AB0:
	bl sub_020349C4
	b _02034ABC
_02034AB6:
	mov r0, #0
	bl sub_02033D94
_02034ABC:
	mov r0, #0
	bl sub_02038A20
	bl sub_0203650C
	mov r0, #1
	pop {r4, pc}
	nop
_02034ACC: .word 0x021C07C4
_02034AD0: .word 0x000006BA
_02034AD4: .word 0x021BF67C
_02034AD8: .word 0x0000065C
_02034ADC: .word 0x00007FFF
_02034AE0: .word 0x00000694
	thumb_func_end sub_020349EC

	thumb_func_start sub_02034AE4
sub_02034AE4: ; 0x02034AE4
	push {r4, lr}
	ldr r0, _02034B00 ; =0x021C07C4
	mov r1, #0
	ldrb r4, [r0, #1]
	strb r1, [r0, #1]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02034AF8
	bl sub_0203463C
_02034AF8:
	ldr r0, _02034B00 ; =0x021C07C4
	strb r4, [r0, #1]
	pop {r4, pc}
	nop
_02034B00: .word 0x021C07C4
	thumb_func_end sub_02034AE4

	thumb_func_start sub_02034B04
sub_02034B04: ; 0x02034B04
	push {r4, lr}
	ldr r0, _02034B24 ; =0x021C07C4
	mov r1, #0
	ldrb r4, [r0, #1]
	strb r1, [r0, #1]
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02034B1E
	ldr r0, _02034B28 ; =0x000006AD
	mov r1, #1
	strb r1, [r2, r0]
	bl sub_0203463C
_02034B1E:
	ldr r0, _02034B24 ; =0x021C07C4
	strb r4, [r0, #1]
	pop {r4, pc}
	; .align 2, 0
_02034B24: .word 0x021C07C4
_02034B28: .word 0x000006AD
	thumb_func_end sub_02034B04

	thumb_func_start sub_02034B2C
sub_02034B2C: ; 0x02034B2C
	push {r4, lr}
	ldr r0, _02034B4C ; =0x021C07C4
	mov r1, #0
	ldrb r4, [r0, #1]
	strb r1, [r0, #1]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02034B44
	bl sub_0203463C
	bl sub_02033518
_02034B44:
	ldr r0, _02034B4C ; =0x021C07C4
	strb r4, [r0, #1]
	pop {r4, pc}
	nop
_02034B4C: .word 0x021C07C4
	thumb_func_end sub_02034B2C

	thumb_func_start sub_02034B50
sub_02034B50: ; 0x02034B50
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203895C
	bl sub_0203272C
	cmp r0, #0
	beq _02034C04
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r1, _02034CE4 ; =0x000006B7
	ldr r0, [r0, #8]
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _02034BC0
	sub r1, #0x53
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02034B92
	bl sub_02034F1C
	cmp r0, #0
	beq _02034BB0
	ldr r0, _02034CE8 ; =0x02100A1C
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne _02034BA8
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r0, [r0, #8]
	bl sub_020357F0
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0, #1]
	b _02034BA8
_02034B92:
	ldr r1, _02034CE8 ; =0x02100A1C
	ldrb r1, [r1, #1]
	cmp r1, #4
	bne _02034BA8
	bl sub_020357F0
	cmp r0, #0
	beq _02034BB0
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0, #1]
_02034BA8:
	bl sub_0203594C
	cmp r0, #0
	beq _02034BB2
_02034BB0:
	b _02034CDC
_02034BB2:
	ldr r0, _02034CE0 ; =0x021C07C4
	mov r1, #0x26
	ldr r0, [r0, #8]
	bl ov4_021D1590
	cmp r0, #0
	bne _02034BC2
_02034BC0:
	b _02034CDC
_02034BC2:
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	mov r4, #0
	cmp r6, #0
	ble _02034BFC
	ldr r7, _02034CE0 ; =0x021C07C4
	add r5, r4, #0
_02034BDA:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02034BF4
	ldr r0, [r7, #8]
	ldr r1, _02034CEC ; =0x0000066C
	add r0, r0, r5
	ldr r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _02034CEC ; =0x0000066C
	str r2, [r0, r1]
_02034BF4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02034BDA
_02034BFC:
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #4
	strb r1, [r0, #1]
	pop {r3, r4, r5, r6, r7, pc}
_02034C04:
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02034C82
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r2, _02034CE4 ; =0x000006B7
	ldr r0, [r0, #8]
	ldrb r1, [r0, r2]
	cmp r1, #0
	beq _02034CDC
	add r1, r2, #0
	sub r1, #0x53
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02034C42
	sub r2, #0x4f
	ldr r1, [r0, r2]
	cmp r1, #3
	bgt _02034CDC
	ldr r1, _02034CE8 ; =0x02100A1C
	ldrb r1, [r1, #1]
	cmp r1, #4
	bne _02034C58
	bl sub_020357F0
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0, #1]
	b _02034C58
_02034C42:
	ldr r1, _02034CE8 ; =0x02100A1C
	ldrb r1, [r1, #1]
	cmp r1, #4
	bne _02034C58
	bl sub_020357F0
	cmp r0, #0
	beq _02034CDC
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0, #1]
_02034C58:
	bl sub_0203594C
	cmp r0, #0
	bne _02034CDC
	ldr r0, _02034CE0 ; =0x021C07C4
	mov r1, #0x26
	ldr r0, [r0, #8]
	bl ov4_021D142C
	cmp r0, #0
	beq _02034CDC
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #4
	strb r1, [r0, #1]
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034CF0 ; =0x00000668
	ldr r1, [r2, r0]
	add r1, r1, #1
	str r1, [r2, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02034C82:
	bl sub_02031934
	cmp r0, #4
	bne _02034C96
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02034C9E
_02034C96:
	bl sub_02036180
	cmp r0, #0
	beq _02034CDC
_02034C9E:
	ldr r0, _02034CE8 ; =0x02100A1C
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne _02034CD8
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034CF0 ; =0x00000668
	ldr r1, [r2, r0]
	cmp r1, #3
	bgt _02034CD8
	add r0, #0x47
	ldrb r0, [r2, r0]
	lsl r0, r0, #6
	add r0, r2, r0
	bl sub_020357F0
	ldr r0, _02034CE0 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02034CF4 ; =0x000006AF
	ldrb r1, [r2, r0]
	mov r0, #1
	sub r0, r0, r1
	lsl r0, r0, #6
	add r0, r2, r0
	bl sub_020357F0
	ldr r0, _02034CE8 ; =0x02100A1C
	mov r1, #0
	strb r1, [r0, #1]
_02034CD8:
	bl sub_020353CC
_02034CDC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034CE0: .word 0x021C07C4
_02034CE4: .word 0x000006B7
_02034CE8: .word 0x02100A1C
_02034CEC: .word 0x0000066C
_02034CF0: .word 0x00000668
_02034CF4: .word 0x000006AF
	thumb_func_end sub_02034B50

	thumb_func_start sub_02034CF8
sub_02034CF8: ; 0x02034CF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r7, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	str r0, [sp, #0xc]
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r0, r0, #1
	str r0, [sp, #8]
	add r0, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _02034DB0
	ldr r0, [sp]
	ldr r6, [sp, #4]
	mov r1, #0xc0
	add r5, r0, #0
	add r4, r6, #0
	mul r5, r1
_02034D34:
	ldr r0, _02034DC4 ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r1, r0
	add r0, r0, r6
	bl sub_020322D0
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02034D62
	ldr r0, _02034DC4 ; =0x021C07C4
	ldr r0, [r0, #8]
	add r0, r5, r0
	add r1, r4, r0
	add r1, #0x80
	mov r0, #0xe
	strb r0, [r1]
	b _02034D74
_02034D62:
	ldr r0, _02034DC4 ; =0x021C07C4
	add r7, r7, #1
	ldr r0, [r0, #8]
	add r0, r5, r0
	add r1, r4, r0
	add r1, #0x80
	mov r0, #0xff
	strb r0, [r1]
	b _02034D9E
_02034D74:
	ldr r0, _02034DC4 ; =0x021C07C4
	ldr r2, [sp, #0xc]
	ldr r1, [r0, #8]
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, #0x80
	add r1, r1, r5
	add r0, r0, r6
	add r1, r1, r4
	bl sub_020321F4
	ldr r0, _02034DC4 ; =0x021C07C4
	ldr r0, [r0, #8]
	add r0, r5, r0
	add r0, r4, r0
	add r0, #0x80
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _02034D9E
	add r7, r7, #1
_02034D9E:
	ldr r0, [sp, #0xc]
	add r6, #0xc
	add r4, r4, r0
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	cmp r1, r0
	blt _02034D34
_02034DB0:
	ldr r0, [sp, #8]
	cmp r7, r0
	bne _02034DBC
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02034DBC:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034DC4: .word 0x021C07C4
	thumb_func_end sub_02034CF8

	thumb_func_start sub_02034DC8
sub_02034DC8: ; 0x02034DC8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02034F0C ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02034DDE
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02034DE0
_02034DDE:
	b _02034F08
_02034DE0:
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	cmp r1, #2
	beq _02034E08
	ldrb r0, [r0]
	cmp r0, #0
	bne _02034F08
_02034E08:
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	bl sub_02034890
	cmp r0, #1
	bne _02034E32
	ldr r0, _02034F0C ; =0x021C07C4
	ldrb r1, [r0]
	cmp r1, #0
	bne _02034E32
	ldr r1, [r0, #8]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	bl sub_02034CF8
	ldr r0, _02034F0C ; =0x021C07C4
	mov r1, #1
	strb r1, [r0]
_02034E32:
	bl sub_02031934
	cmp r0, #4
	bne _02034E6C
	bl sub_02036180
	cmp r0, #0
	bne _02034E6C
	ldr r0, _02034F0C ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r3, r1, #0
	mov r1, #0xc0
	add r2, r0, #0
	add r3, #0x80
	mul r2, r1
	add r0, r3, r2
	ldr r3, _02034F14 ; =sub_020353B0
	mov r2, #0xe
	bl sub_02031E9C
	cmp r0, #0
	bne _02034E6C
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	sub r1, r1, #1
	strb r1, [r0]
_02034E6C:
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	cmp r1, #1
	beq _02034E7A
	ldrb r0, [r0]
	cmp r0, #3
	bne _02034EF0
_02034E7A:
	ldr r7, _02034F0C ; =0x021C07C4
	mov r4, #0
	strb r4, [r7]
	cmp r6, #0
	ble _02034EC4
	add r5, r4, #0
_02034E86:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02034EA2
	ldr r0, [r7, #8]
	ldr r1, _02034F18 ; =0x0000066C
	add r0, r0, r5
	ldr r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _02034F18 ; =0x0000066C
	str r2, [r0, r1]
	b _02034EBC
_02034EA2:
	bl sub_02036180
	cmp r0, #0
	beq _02034EBC
	cmp r4, #0
	bne _02034EBC
	ldr r0, [r7, #8]
	ldr r1, _02034F18 ; =0x0000066C
	add r0, r0, r5
	ldr r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _02034F18 ; =0x0000066C
	str r2, [r0, r1]
_02034EBC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02034E86
_02034EC4:
	ldr r0, _02034F0C ; =0x021C07C4
	mov r1, #0x6b
	ldr r2, [r0, #8]
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	add r4, r2, #0
	mov r2, #0xc0
	add r3, r1, #0
	add r4, #0x80
	mul r3, r2
	mov r0, #0
	add r1, r4, r3
	bl sub_020350A4
	ldr r0, _02034F0C ; =0x021C07C4
	mov r1, #0x6b
	ldr r3, [r0, #8]
	lsl r1, r1, #4
	ldrb r2, [r3, r1]
	mov r0, #1
	sub r0, r0, r2
	strb r0, [r3, r1]
_02034EF0:
	bl sub_02031934
	cmp r0, #4
	bne _02034F00
	bl sub_02036180
	cmp r0, #0
	beq _02034F08
_02034F00:
	ldr r0, _02034F10 ; =0x02100A1C
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
_02034F08:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034F0C: .word 0x021C07C4
_02034F10: .word 0x02100A1C
_02034F14: .word sub_020353B0
_02034F18: .word 0x0000066C
	thumb_func_end sub_02034DC8

	thumb_func_start sub_02034F1C
sub_02034F1C: ; 0x02034F1C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	mov r4, #1
	cmp r6, #1
	ble _02034F5A
	ldr r7, _02034F60 ; =0x021C07C4
	mov r5, #4
_02034F36:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02034F52
	ldr r0, [r7, #8]
	add r1, r0, r5
	ldr r0, _02034F64 ; =0x0000066C
	ldr r0, [r1, r0]
	cmp r0, #3
	ble _02034F52
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02034F52:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02034F36
_02034F5A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02034F60: .word 0x021C07C4
_02034F64: .word 0x0000066C
	thumb_func_end sub_02034F1C

	thumb_func_start sub_02034F68
sub_02034F68: ; 0x02034F68
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r6, r0, #1
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02035024
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	beq _0203508A
	ldr r0, _0203508C ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035090 ; =0x00000664
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02034FC0
	bl sub_02034F1C
	cmp r0, #0
	beq _0203508A
	ldr r0, _02035094 ; =0x02100A1C
	ldrb r0, [r0]
	cmp r0, #4
	bne _02034FE0
	bl sub_02034890
	cmp r0, #1
	bne _02034FB8
	mov r0, #0
	bl sub_02034CF8
_02034FB8:
	ldr r0, _02035094 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0]
	b _02034FE0
_02034FC0:
	ldr r0, _02035094 ; =0x02100A1C
	ldrb r0, [r0]
	cmp r0, #4
	bne _02034FDA
	bl sub_02034890
	cmp r0, #1
	bne _02034FDA
	mov r0, #0
	bl sub_02034CF8
	cmp r0, #0
	beq _0203508A
_02034FDA:
	ldr r0, _02035094 ; =0x02100A1C
	mov r1, #2
	strb r1, [r0]
_02034FE0:
	ldr r0, _0203508C ; =0x021C07C4
	mov r1, #0xc0
	ldr r0, [r0, #8]
	add r0, #0x80
	bl ov4_021D14D4
	cmp r0, #0
	beq _0203508A
	ldr r0, _02035094 ; =0x02100A1C
	mov r1, #4
	mov r4, #0
	strb r1, [r0]
	cmp r6, #0
	ble _0203508A
	ldr r7, _0203508C ; =0x021C07C4
	add r5, r4, #0
_02035000:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0203501A
	ldr r0, [r7, #8]
	ldr r1, _02035098 ; =0x0000066C
	add r0, r0, r5
	ldr r1, [r0, r1]
	add r2, r1, #1
	ldr r1, _02035098 ; =0x0000066C
	str r2, [r0, r1]
_0203501A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02035000
	pop {r3, r4, r5, r6, r7, pc}
_02035024:
	bl sub_02031934
	cmp r0, #4
	beq _02035034
	bl sub_02036180
	cmp r0, #0
	beq _0203508A
_02035034:
	ldr r0, _02035094 ; =0x02100A1C
	ldrb r0, [r0]
	cmp r0, #4
	bne _0203508A
	bl sub_02034F1C
	cmp r0, #0
	beq _0203508A
	bl sub_02034890
	cmp r0, #0
	bne _02035080
	ldr r0, _0203508C ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x6b
	add r2, r1, #0
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	mov r0, #0xc0
	add r2, #0x80
	mul r0, r1
	add r0, r2, r0
	bl sub_020358C0
	ldr r0, _0203508C ; =0x021C07C4
	ldr r1, [r0, #8]
	mov r0, #0x6b
	add r2, r1, #0
	lsl r0, r0, #4
	ldrb r1, [r1, r0]
	mov r0, #1
	add r2, #0x80
	sub r1, r0, r1
	mov r0, #0xc0
	mul r0, r1
	add r0, r2, r0
	bl sub_020358C0
_02035080:
	ldr r0, _02035094 ; =0x02100A1C
	mov r1, #0
	strb r1, [r0]
	bl sub_02034DC8
_0203508A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203508C: .word 0x021C07C4
_02035090: .word 0x00000664
_02035094: .word 0x02100A1C
_02035098: .word 0x0000066C
	thumb_func_end sub_02034F68

	thumb_func_start sub_0203509C
sub_0203509C: ; 0x0203509C
	ldr r3, _020350A0 ; =sub_020350A4
	bx r3
	; .align 2, 0
_020350A0: .word sub_020350A4
	thumb_func_end sub_0203509C

	thumb_func_start sub_020350A4
sub_020350A4: ; 0x020350A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _020351DC ; =0x021C07C4
	add r5, r1, #0
	ldr r2, [r0, #8]
	ldr r0, _020351E0 ; =0x00000668
	ldr r1, [r2, r0]
	sub r1, r1, #1
	str r1, [r2, r0]
	cmp r5, #0
	beq _020350C8
	ldrb r0, [r5]
	cmp r0, #0xb
	bne _020350CE
	bl sub_02034890
	cmp r0, #1
	bne _020350CA
_020350C8:
	b _020351D6
_020350CA:
	add r5, r5, #1
	b _020350D6
_020350CE:
	bl sub_02034890
	cmp r0, #0
	beq _020351D6
_020350D6:
	ldr r0, _020351DC ; =0x021C07C4
	ldr r1, _020351E4 ; =0x000006B2
	ldr r0, [r0, #8]
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _020350EA
	ldrb r2, [r5]
	mov r1, #1
	tst r1, r2
	bne _020351D6
_020350EA:
	ldr r1, _020351E4 ; =0x000006B2
	mov r2, #0
	strb r2, [r0, r1]
	bl sub_02034890
	cmp r0, #1
	bne _020351AA
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r6, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r0, r0, #1
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _020351D6
	sub r0, r6, #1
	add r7, r4, #0
	str r0, [sp]
_02035122:
	ldrb r0, [r5]
	cmp r0, #0xff
	bne _0203513A
	ldr r0, _020351DC ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020351E8 ; =0x00000694
	lsl r2, r4
	ldrh r0, [r1, r0]
	mvn r2, r2
	and r2, r0
	b _02035148
_0203513A:
	ldr r0, _020351DC ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020351E8 ; =0x00000694
	lsl r2, r4
	ldrh r0, [r1, r0]
	orr r2, r0
_02035148:
	ldr r0, _020351E8 ; =0x00000694
	strh r2, [r1, r0]
	ldrb r2, [r5]
	cmp r2, #0xff
	bne _02035156
	add r5, r5, r6
	b _0203519C
_02035156:
	cmp r2, #0xe
	bne _0203515E
	add r5, r5, r6
	b _0203519C
_0203515E:
	ldr r0, _020351DC ; =0x021C07C4
	ldr r3, [r0, #8]
	ldr r0, _020351EC ; =0x0000069F
	add r1, r3, r4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02035176
	mov r0, #1
	tst r0, r2
	beq _02035176
	add r5, r5, r6
	b _0203519C
_02035176:
	ldr r0, _020351F0 ; =0x0000051C
	add r5, r5, #1
	add r0, r3, r0
	mov r3, #0x55
	lsl r3, r3, #4
	ldr r2, [sp]
	add r0, r0, r7
	add r1, r5, #0
	add r3, r4, r3
	bl sub_02032198
	ldr r0, [sp]
	mov r1, #0
	add r5, r5, r0
	ldr r0, _020351DC ; =0x021C07C4
	ldr r0, [r0, #8]
	add r2, r0, r4
	ldr r0, _020351EC ; =0x0000069F
	strb r1, [r2, r0]
_0203519C:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r7, #0xc
	cmp r4, r0
	blt _02035122
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020351AA:
	ldr r1, _020351DC ; =0x021C07C4
	ldrb r3, [r5, #1]
	ldr r2, [r1, #8]
	ldr r0, _020351E8 ; =0x00000694
	strh r3, [r2, r0]
	ldr r3, [r1, #8]
	ldrh r2, [r3, r0]
	lsl r2, r2, #8
	strh r2, [r3, r0]
	ldr r4, [r1, #8]
	ldrb r2, [r5, #2]
	ldrh r3, [r4, r0]
	add r2, r3, r2
	strh r2, [r4, r0]
	ldr r0, [r1, #8]
	ldr r3, _020351F4 ; =0x000004A4
	ldrb r2, [r5, #3]
	add r0, r0, r3
	add r1, r5, #4
	add r3, #0xc0
	bl sub_02032198
_020351D6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020351DC: .word 0x021C07C4
_020351E0: .word 0x00000668
_020351E4: .word 0x000006B2
_020351E8: .word 0x00000694
_020351EC: .word 0x0000069F
_020351F0: .word 0x0000051C
_020351F4: .word 0x000004A4
	thumb_func_end sub_020350A4

	thumb_func_start sub_020351F8
sub_020351F8: ; 0x020351F8
	ldr r3, _020351FC ; =sub_02035200
	bx r3
	; .align 2, 0
_020351FC: .word sub_02035200
	thumb_func_end sub_020351F8

	thumb_func_start sub_02035200
sub_02035200: ; 0x02035200
	push {r4, r5, r6, lr}
	ldr r3, _020352B0 ; =0x021C07C4
	add r5, r0, #0
	ldr r0, [r3, #8]
	ldr r2, _020352B4 ; =0x0000066C
	add r4, r1, #0
	add r1, r0, r2
	lsl r0, r5, #2
	ldr r6, [r1, r0]
	sub r6, r6, #1
	str r6, [r1, r0]
	cmp r4, #0
	beq _020352AE
	ldr r0, [r3, #8]
	add r2, #0x33
	add r0, r0, r2
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _0203522E
	ldrb r2, [r4]
	mov r1, #1
	tst r1, r2
	bne _020352AE
_0203522E:
	mov r1, #0
	strb r1, [r0, r5]
	bl sub_02034890
	cmp r0, #1
	bne _02035286
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r6, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	ldrb r1, [r4]
	mov r0, #2
	tst r0, r1
	bne _02035276
	ldr r0, _020352B0 ; =0x021C07C4
	mov r3, #0x4b
	ldr r0, [r0, #8]
	lsl r3, r3, #4
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #0
	add r2, r6, #0
	add r3, #0xf9
	bl sub_02032198
_02035276:
	ldr r0, _020352B0 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020352B8 ; =0x00000697
	add r1, r1, r0
	ldrb r0, [r1, r5]
	add r0, r0, #1
	strb r0, [r1, r5]
	pop {r4, r5, r6, pc}
_02035286:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020356A0
	ldrb r1, [r4]
	mov r0, #2
	tst r0, r1
	bne _020352AE
	ldr r0, _020352B0 ; =0x021C07C4
	ldr r3, _020352BC ; =0x0000051C
	ldr r0, [r0, #8]
	mov r2, #0xb
	add r1, r0, r3
	mov r0, #0xc
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #1
	add r3, #0x96
	bl sub_02032198
_020352AE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020352B0: .word 0x021C07C4
_020352B4: .word 0x0000066C
_020352B8: .word 0x00000697
_020352BC: .word 0x0000051C
	thumb_func_end sub_02035200

	thumb_func_start sub_020352C0
sub_020352C0: ; 0x020352C0
	push {r4, r5, r6, lr}
	ldr r3, _02035380 ; =0x021C07C4
	add r5, r0, #0
	ldr r0, [r3, #8]
	ldr r2, _02035384 ; =0x0000066C
	add r4, r1, #0
	add r1, r0, r2
	lsl r0, r5, #2
	ldr r6, [r1, r0]
	sub r6, r6, #1
	str r6, [r1, r0]
	cmp r4, #0
	beq _0203537C
	ldr r0, [r3, #8]
	add r2, #0x33
	add r0, r0, r2
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _020352EE
	ldrb r2, [r4]
	mov r1, #1
	tst r1, r2
	bne _0203537C
_020352EE:
	mov r1, #0
	strb r1, [r0, r5]
	bl sub_02034890
	cmp r0, #1
	bne _0203537C
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r6, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	ldrb r0, [r4]
	ldr r2, _02035388 ; =0x00000694
	cmp r0, #0xff
	bne _0203532C
	ldr r0, _02035380 ; =0x021C07C4
	mov r3, #1
	ldr r1, [r0, #8]
	lsl r3, r5
	ldrh r0, [r1, r2]
	mvn r3, r3
	and r0, r3
	b _02035338
_0203532C:
	ldr r0, _02035380 ; =0x021C07C4
	mov r3, #1
	ldr r1, [r0, #8]
	lsl r3, r5
	ldrh r0, [r1, r2]
	orr r0, r3
_02035338:
	strh r0, [r1, r2]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0203537C
	cmp r0, #2
	beq _0203537C
	cmp r0, #0xe
	beq _0203537C
	ldr r1, _02035380 ; =0x021C07C4
	ldr r2, _0203538C ; =0x0000069F
	ldr r1, [r1, #8]
	add r3, r1, r5
	ldrb r2, [r3, r2]
	cmp r2, #0
	beq _0203535C
	mov r2, #1
	tst r0, r2
	bne _0203537C
_0203535C:
	ldr r3, _02035390 ; =0x0000051C
	mov r0, #0xc
	add r1, r1, r3
	mul r0, r5
	add r0, r1, r0
	add r1, r4, #1
	sub r2, r6, #1
	add r3, #0xcf
	bl sub_02032198
	ldr r0, _02035380 ; =0x021C07C4
	mov r2, #0
	ldr r0, [r0, #8]
	add r1, r0, r5
	ldr r0, _0203538C ; =0x0000069F
	strb r2, [r1, r0]
_0203537C:
	pop {r4, r5, r6, pc}
	nop
_02035380: .word 0x021C07C4
_02035384: .word 0x0000066C
_02035388: .word 0x00000694
_0203538C: .word 0x0000069F
_02035390: .word 0x0000051C
	thumb_func_end sub_020352C0

	thumb_func_start sub_02035394
sub_02035394: ; 0x02035394
	push {r3, lr}
	cmp r0, #0
	beq _020353A4
	ldr r0, _020353AC ; =0x02100A1C
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	pop {r3, pc}
_020353A4:
	bl sub_02022974
	pop {r3, pc}
	nop
_020353AC: .word 0x02100A1C
	thumb_func_end sub_02035394

	thumb_func_start sub_020353B0
sub_020353B0: ; 0x020353B0
	push {r3, lr}
	cmp r0, #0
	beq _020353C0
	ldr r0, _020353C8 ; =0x02100A1C
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	pop {r3, pc}
_020353C0:
	bl sub_02022974
	pop {r3, pc}
	nop
_020353C8: .word 0x02100A1C
	thumb_func_end sub_020353B0

	thumb_func_start sub_020353CC
sub_020353CC: ; 0x020353CC
	push {r4, lr}
	ldr r0, _02035520 ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020353E2
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _020353E4
_020353E2:
	b _0203551C
_020353E4:
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r4, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	bl sub_02036180
	cmp r0, #0
	beq _02035456
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	cmp r1, #2
	beq _02035414
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _02035456
_02035414:
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	mov r0, #1
	bl sub_02035394
	ldr r0, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r2, [r0, #8]
	mov r0, #0
	ldrb r1, [r2, r1]
	lsl r1, r1, #6
	add r1, r2, r1
	lsl r2, r4, #0x10
	lsr r2, r2, #0x10
	bl sub_02035200
	ldr r2, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r4, [r2, #8]
	mov r0, #1
	ldrb r3, [r4, r1]
	sub r0, r0, r3
	strb r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r2, #8]
	sub r0, #0x47
	ldr r0, [r2, r0]
	sub r1, #0x47
	add r0, r0, #1
	str r0, [r2, r1]
	pop {r4, pc}
_02035456:
	bl sub_02031934
	cmp r0, #4
	bne _0203551C
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02035470
	bl sub_0203608C
	pop {r4, pc}
_02035470:
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	cmp r1, #2
	beq _0203547E
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0203551C
_0203547E:
	bl sub_0203608C
	cmp r0, #0
	beq _020354D2
	ldr r0, _02035524 ; =0x02100A1C
	ldr r3, _0203552C ; =sub_02035394
	ldrb r1, [r0, #1]
	mov r2, #0xe
	add r1, r1, #1
	strb r1, [r0, #1]
	ldr r0, _02035520 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035528 ; =0x000006AF
	ldrb r0, [r1, r0]
	lsl r0, r0, #6
	add r0, r1, r0
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl sub_02031E9C
	cmp r0, #0
	bne _020354B4
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	sub r1, r1, #1
	strb r1, [r0, #1]
	pop {r4, pc}
_020354B4:
	ldr r2, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r4, [r2, #8]
	mov r0, #1
	ldrb r3, [r4, r1]
	sub r0, r0, r3
	strb r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r2, #8]
	sub r0, #0x47
	ldr r0, [r2, r0]
	sub r1, #0x47
	add r0, r0, #1
	str r0, [r2, r1]
	pop {r4, pc}
_020354D2:
	bl sub_020318EC
	ldr r1, _02035530 ; =0x0000FFFE
	tst r0, r1
	beq _0203551C
	ldr r0, _02035524 ; =0x02100A1C
	ldrb r1, [r0, #1]
	add r1, r1, #1
	strb r1, [r0, #1]
	mov r0, #1
	bl sub_02035394
	ldr r0, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r2, [r0, #8]
	mov r0, #0
	ldrb r1, [r2, r1]
	lsl r1, r1, #6
	add r1, r2, r1
	lsl r2, r4, #0x10
	lsr r2, r2, #0x10
	bl sub_02035200
	ldr r2, _02035520 ; =0x021C07C4
	ldr r1, _02035528 ; =0x000006AF
	ldr r4, [r2, #8]
	mov r0, #1
	ldrb r3, [r4, r1]
	sub r0, r0, r3
	strb r0, [r4, r1]
	add r0, r1, #0
	ldr r2, [r2, #8]
	sub r0, #0x47
	ldr r0, [r2, r0]
	sub r1, #0x47
	add r0, r0, #1
	str r0, [r2, r1]
_0203551C:
	pop {r4, pc}
	nop
_02035520: .word 0x021C07C4
_02035524: .word 0x02100A1C
_02035528: .word 0x000006AF
_0203552C: .word sub_02035394
_02035530: .word 0x0000FFFE
	thumb_func_end sub_020353CC

	thumb_func_start sub_02035534
sub_02035534: ; 0x02035534
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02035658 ; =0x021C07C4
	mov r2, #0x66
	ldr r5, [r7, #8]
	lsl r2, r2, #4
	ldrb r0, [r5, r2]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	beq _02035552
	sub r1, r2, #4
	ldrh r1, [r5, r1]
	mov r3, #0xf0
	tst r3, r1
	bne _02035554
_02035552:
	b _02035656
_02035554:
	cmp r0, #2
	bne _02035592
	mov r0, #0x20
	tst r0, r1
	beq _02035566
	mov r0, #0x10
	orr r0, r6
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02035566:
	mov r0, #0x10
	tst r0, r1
	beq _02035574
	mov r0, #0x20
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02035574:
	mov r0, #0x40
	tst r0, r1
	beq _02035582
	mov r0, #0x80
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02035582:
	mov r0, #0x80
	tst r0, r1
	beq _02035640
	mov r0, #0x40
	orr r0, r4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _02035640
_02035592:
	add r0, r2, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _020355B4
	add r4, r0, #0
	add r0, r2, #1
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	add r0, r2, #1
	strb r1, [r5, r0]
	ldr r1, [r7, #8]
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _02035640
	add r0, r2, #2
	strh r6, [r1, r0]
	b _02035640
_020355B4:
	add r0, r2, #0
	sub r0, #0x34
	add r6, r5, r0
	sub r2, #0x34
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r5, r2]
	ldr r3, [r6, #4]
	bl sub_020E1F1C
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	add r0, r0, r3
	adc r1, r2
	ldr r2, _0203565C ; =0x0000062C
	str r0, [r5, r2]
	mov r2, #0
	str r1, [r6, #4]
	lsr r0, r1, #0x1e
	lsl r1, r2, #2
	orr r1, r0
	cmp r1, #3
	bhi _02035608
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020355F2: ; jump table
	.short _020355FA - _020355F2 - 2 ; case 0
	.short _020355FE - _020355F2 - 2 ; case 1
	.short _02035602 - _020355F2 - 2 ; case 2
	.short _02035606 - _020355F2 - 2 ; case 3
_020355FA:
	mov r4, #0x20
	b _02035608
_020355FE:
	mov r4, #0x10
	b _02035608
_02035602:
	mov r4, #0x40
	b _02035608
_02035606:
	mov r4, #0x80
_02035608:
	ldr r0, _02035658 ; =0x021C07C4
	ldr r5, [r0, #8]
	ldr r0, _0203565C ; =0x0000062C
	add r6, r5, r0
	ldr r0, [r6, #8]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0]
	ldr r3, [r6, #4]
	bl sub_020E1F1C
	ldr r3, [r6, #0x10]
	ldr r2, [r6, #0x14]
	add r0, r3, r0
	adc r2, r1
	ldr r1, _0203565C ; =0x0000062C
	mov r3, #0
	str r0, [r5, r1]
	str r2, [r6, #4]
	lsr r0, r2, #0x1c
	lsl r2, r3, #4
	orr r2, r0
	add r0, r1, #0
	add r0, #0x35
	strb r2, [r5, r0]
	ldr r0, _02035658 ; =0x021C07C4
	add r1, #0x36
	ldr r0, [r0, #8]
	strh r4, [r0, r1]
_02035640:
	ldr r2, _02035658 ; =0x021C07C4
	ldr r1, _02035660 ; =0x0000065C
	ldr r5, [r2, #8]
	mov r0, #0xf0
	ldrh r3, [r5, r1]
	bic r3, r0
	strh r3, [r5, r1]
	ldr r2, [r2, #8]
	ldrh r0, [r2, r1]
	add r0, r0, r4
	strh r0, [r2, r1]
_02035656:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02035658: .word 0x021C07C4
_0203565C: .word 0x0000062C
_02035660: .word 0x0000065C
	thumb_func_end sub_02035534

	thumb_func_start sub_02035664
sub_02035664: ; 0x02035664
	ldr r0, _02035674 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0x66
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	nop
_02035674: .word 0x021C07C4
	thumb_func_end sub_02035664

	thumb_func_start sub_02035678
sub_02035678: ; 0x02035678
	ldr r0, _02035688 ; =0x021C07C4
	mov r2, #2
	ldr r1, [r0, #8]
	mov r0, #0x66
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	nop
_02035688: .word 0x021C07C4
	thumb_func_end sub_02035678

	thumb_func_start sub_0203568C
sub_0203568C: ; 0x0203568C
	ldr r0, _0203569C ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	mov r0, #0x66
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	nop
_0203569C: .word 0x021C07C4
	thumb_func_end sub_0203568C

	thumb_func_start sub_020356A0
sub_020356A0: ; 0x020356A0
	push {r4, r5, r6, r7}
	ldr r4, _02035720 ; =0x021C07C4
	lsl r6, r1, #1
	ldr r2, [r4, #8]
	mov r5, #0
	add r3, r2, r6
	ldr r2, _02035724 ; =0x00000644
	strh r5, [r3, r2]
	ldrb r5, [r0]
	mov r3, #0x10
	add r7, r5, #0
	and r7, r3
	cmp r7, #0x10
	bne _02035718
	mov r7, #0xc
	and r5, r7
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	bne _020356D4
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x40
	orr r2, r3
	strh r2, [r4, r6]
	b _02035706
_020356D4:
	cmp r5, #4
	bne _020356E6
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x80
	orr r2, r3
	strh r2, [r4, r6]
	b _02035706
_020356E6:
	cmp r5, #8
	bne _020356F8
	ldr r3, [r4, #8]
	add r4, r3, r2
	ldrh r3, [r4, r6]
	mov r2, #0x20
	orr r2, r3
	strh r2, [r4, r6]
	b _02035706
_020356F8:
	cmp r5, #0xc
	bne _02035706
	ldr r4, [r4, #8]
	add r4, r4, r2
	ldrh r2, [r4, r6]
	orr r2, r3
	strh r2, [r4, r6]
_02035706:
	ldrb r0, [r0]
	asr r2, r0, #5
	mov r0, #7
	and r2, r0
	ldr r0, _02035720 ; =0x021C07C4
	ldr r0, [r0, #8]
	add r1, r0, r1
	ldr r0, _02035728 ; =0x00000654
	strb r2, [r1, r0]
_02035718:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02035720: .word 0x021C07C4
_02035724: .word 0x00000644
_02035728: .word 0x00000654
	thumb_func_end sub_020356A0

	thumb_func_start sub_0203572C
sub_0203572C: ; 0x0203572C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203572C

	thumb_func_start sub_02035730
sub_02035730: ; 0x02035730
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020357DC ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020357E0 ; =0x0000065E
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02035744
	mov r0, #0
	pop {r4, pc}
_02035744:
	bl sub_02035EE0
	cmp r0, #0
	bne _02035750
	mov r0, #0
	pop {r4, pc}
_02035750:
	ldr r0, _020357DC ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _020357E4 ; =0x000006B1
	ldrb r1, [r2, r0]
	cmp r1, #0
	beq _02035760
	sub r1, r1, #1
	strb r1, [r2, r0]
_02035760:
	ldr r1, _020357DC ; =0x021C07C4
	ldr r0, _020357E8 ; =0x0000065C
	ldr r2, [r1, #8]
	mov r3, #0x40
	ldrh r2, [r2, r0]
	tst r3, r2
	beq _02035780
	ldrb r3, [r4]
	mov r2, #0x10
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _020357C6
_02035780:
	mov r3, #0x80
	tst r3, r2
	beq _02035798
	ldrb r3, [r4]
	mov r2, #0x14
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _020357C6
_02035798:
	mov r3, #0x20
	tst r3, r2
	beq _020357B0
	ldrb r3, [r4]
	mov r2, #0x18
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
	b _020357C6
_020357B0:
	mov r3, #0x10
	tst r2, r3
	beq _020357C6
	ldrb r3, [r4]
	mov r2, #0x1c
	add r0, #0x55
	orr r2, r3
	strb r2, [r4]
	ldr r1, [r1, #8]
	mov r2, #8
	strb r2, [r1, r0]
_020357C6:
	ldr r0, _020357DC ; =0x021C07C4
	ldrb r2, [r4]
	ldr r1, [r0, #8]
	ldr r0, _020357EC ; =0x0000065F
	ldrb r0, [r1, r0]
	lsl r0, r0, #5
	orr r0, r2
	strb r0, [r4]
	mov r0, #0
	pop {r4, pc}
	nop
_020357DC: .word 0x021C07C4
_020357E0: .word 0x0000065E
_020357E4: .word 0x000006B1
_020357E8: .word 0x0000065C
_020357EC: .word 0x0000065F
	thumb_func_end sub_02035730

	thumb_func_start sub_020357F0
sub_020357F0: ; 0x020357F0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02036128
	add r5, r0, #0
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	ldr r0, _020358B4 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020358B8 ; =0x000006B4
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02035820
	mov r0, #0
	b _02035822
_02035820:
	mov r0, #1
_02035822:
	strb r0, [r4]
	bl sub_02034890
	cmp r0, #0
	bne _02035832
	add r0, r4, #0
	bl sub_02035730
_02035832:
	ldr r1, _020358B4 ; =0x021C07C4
	ldr r0, _020358B8 ; =0x000006B4
	ldr r2, [r1, #8]
	mov r3, #0
	strb r3, [r2, r0]
	mov r0, #0x16
	ldr r1, [r1, #8]
	lsl r0, r0, #6
	add r0, r1, r0
	bl sub_020322F8
	cmp r0, #0
	beq _02035860
	ldrb r1, [r4]
	mov r0, #2
	orr r0, r1
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #2
	bne _020358AC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02035860:
	sub r0, r5, #1
	str r0, [sp, #4]
	add r0, r4, #1
	str r0, [sp]
	ldr r0, _020358B4 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, sp, #0
	bl sub_02032574
	cmp r0, #0
	bne _02035888
	ldr r0, _020358B4 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020358B8 ; =0x000006B4
	strb r2, [r1, r0]
_02035888:
	bl sub_02034890
	cmp r0, #1
	bne _020358AC
	ldr r2, _020358B4 ; =0x021C07C4
	ldr r1, _020358BC ; =0x00000696
	ldr r3, [r2, #8]
	ldrb r0, [r3, r1]
	add r0, r0, #1
	strb r0, [r3, r1]
	ldr r2, [r2, #8]
	ldrb r0, [r4]
	ldrb r1, [r2, r1]
	lsl r2, r1, #4
	mov r1, #0xf0
	and r1, r2
	orr r0, r1
	strb r0, [r4]
_020358AC:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_020358B4: .word 0x021C07C4
_020358B8: .word 0x000006B4
_020358BC: .word 0x00000696
	thumb_func_end sub_020357F0

	thumb_func_start sub_020358C0
sub_020358C0: ; 0x020358C0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xb
	strb r0, [r4]
	ldr r0, _02035930 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035934 ; =0x000006B5
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _020358DA
	mov r0, #0
	b _020358DC
_020358DA:
	mov r0, #1
_020358DC:
	strb r0, [r4, #1]
	bl sub_020318EC
	asr r1, r0, #8
	strb r1, [r4, #2]
	strb r0, [r4, #3]
	mov r0, #0xbb
	str r0, [sp, #4]
	add r0, r4, #5
	str r0, [sp]
	ldr r0, _02035930 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, sp, #0
	bl sub_02032574
	cmp r0, #0
	beq _0203591C
	ldr r0, _02035930 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02035934 ; =0x000006B5
	strb r2, [r1, r0]
	ldr r1, [sp, #4]
	mov r0, #0xbb
	sub r0, r0, r1
	add sp, #8
	strb r0, [r4, #4]
	pop {r4, pc}
_0203591C:
	ldr r0, _02035930 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02035934 ; =0x000006B5
	strb r2, [r1, r0]
	mov r0, #0xbb
	strb r0, [r4, #4]
	add sp, #8
	pop {r4, pc}
	nop
_02035930: .word 0x021C07C4
_02035934: .word 0x000006B5
	thumb_func_end sub_020358C0

	thumb_func_start sub_02035938
sub_02035938: ; 0x02035938
	ldr r1, _02035944 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _02035948 ; =0x000006BC
	strb r0, [r2, r1]
	bx lr
	nop
_02035944: .word 0x021C07C4
_02035948: .word 0x000006BC
	thumb_func_end sub_02035938

	thumb_func_start sub_0203594C
sub_0203594C: ; 0x0203594C
	push {r3, lr}
	ldr r0, _02035974 ; =0x021C07C4
	ldr r2, [r0, #8]
	ldr r0, _02035978 ; =0x000006BC
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _0203595E
	mov r0, #0
	pop {r3, pc}
_0203595E:
	add r0, r0, #1
	ldrb r0, [r2, r0]
	bl sub_020E1F6C
	cmp r1, #0
	bne _0203596E
	mov r0, #1
	pop {r3, pc}
_0203596E:
	mov r0, #0
	pop {r3, pc}
	nop
_02035974: .word 0x021C07C4
_02035978: .word 0x000006BC
	thumb_func_end sub_0203594C

	thumb_func_start sub_0203597C
sub_0203597C: ; 0x0203597C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _020359A0
	bl sub_02036180
	cmp r0, #0
	bne _020359A0
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020359A0:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _020359D8 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	cmp r0, #0
	beq _020359C6
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_020359C6:
	bl sub_0203895C
	cmp r0, #0xa
	bne _020359D2
	bl sub_020363BC
_020359D2:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020359D8: .word 0x021C07C4
	thumb_func_end sub_0203597C

	thumb_func_start sub_020359DC
sub_020359DC: ; 0x020359DC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02035A00
	bl sub_02036180
	cmp r0, #0
	bne _02035A00
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035A00:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02035A38 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	cmp r0, #0
	beq _02035A24
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02035A24:
	bl sub_0203895C
	cmp r0, #0xa
	bne _02035A30
	bl sub_020363BC
_02035A30:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02035A38: .word 0x021C07C4
	thumb_func_end sub_020359DC

	thumb_func_start sub_02035A3C
sub_02035A3C: ; 0x02035A3C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203608C
	cmp r0, #0
	beq _02035A58
	bl sub_02022974
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035A58:
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _02035A70
	bl sub_02036180
	cmp r0, #0
	bne _02035A70
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035A70:
	bl sub_02034890
	cmp r0, #1
	bne _02035A86
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0203597C
	add sp, #8
	pop {r4, r5, r6, pc}
_02035A86:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02035AC0 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	cmp r0, #0
	beq _02035AAC
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02035AAC:
	bl sub_0203895C
	cmp r0, #0xa
	bne _02035AB8
	bl sub_020363BC
_02035AB8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02035AC0: .word 0x021C07C4
	thumb_func_end sub_02035A3C

	thumb_func_start sub_02035AC4
sub_02035AC4: ; 0x02035AC4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203608C
	cmp r0, #0
	beq _02035AE0
	bl sub_020363BC
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035AE0:
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _02035AF8
	bl sub_02036180
	cmp r0, #0
	bne _02035AF8
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02035AF8:
	bl sub_02034890
	cmp r0, #1
	bne _02035B0E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020359DC
	add sp, #8
	pop {r4, r5, r6, pc}
_02035B0E:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02035B44 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	cmp r0, #0
	beq _02035B32
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02035B32:
	bl sub_0203895C
	cmp r0, #0xa
	bne _02035B3E
	bl sub_020363BC
_02035B3E:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02035B44: .word 0x021C07C4
	thumb_func_end sub_02035AC4

	thumb_func_start sub_02035B48
sub_02035B48: ; 0x02035B48
	ldr r3, _02035B50 ; =sub_02035AC4
	mov r2, #0
	bx r3
	nop
_02035B50: .word sub_02035AC4
	thumb_func_end sub_02035B48

	thumb_func_start sub_02035B54
sub_02035B54: ; 0x02035B54
	ldr r0, _02035B60 ; =0x021C07C4
	ldr r3, _02035B64 ; =sub_0203228C
	ldr r1, [r0, #8]
	ldr r0, _02035B68 ; =0x00000498
	add r0, r1, r0
	bx r3
	; .align 2, 0
_02035B60: .word 0x021C07C4
_02035B64: .word sub_0203228C
_02035B68: .word 0x00000498
	thumb_func_end sub_02035B54

	thumb_func_start sub_02035B6C
sub_02035B6C: ; 0x02035B6C
	push {r4, lr}
	ldr r4, [sp, #8]
	bl sub_020327FC
	mov r0, #0xee
	strb r0, [r4, #0xa]
	ldr r0, _02035B84 ; =0x0000FFFF
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_02035B84: .word 0x0000FFFF
	thumb_func_end sub_02035B6C

	thumb_func_start sub_02035B88
sub_02035B88: ; 0x02035B88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r4, r3, #0
	bl sub_0203226C
	cmp r0, #0
	beq _02035C98
_02035B9C:
	ldrb r7, [r4, #0xa]
	cmp r7, #0xee
	bne _02035BAE
	add r0, r5, #0
	bl sub_02032210
	add r7, r0, #0
	cmp r7, #0xee
	beq _02035C8E
_02035BAE:
	mov r0, #4
	ldrsh r0, [r5, r0]
	strb r7, [r4, #0xa]
	ldrh r6, [r4, #8]
	str r0, [sp, #0x10]
	ldr r0, _02035C9C ; =0x0000FFFF
	cmp r6, r0
	bne _02035C02
	add r0, r7, #0
	bl sub_02032868
	add r6, r0, #0
	ldr r0, _02035CA0 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035CA4 ; =0x000006B9
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02035C98
	ldr r0, _02035C9C ; =0x0000FFFF
	cmp r6, r0
	bne _02035C00
	add r0, r5, #0
	bl sub_0203226C
	cmp r0, #1
	bge _02035BEA
	ldr r0, [sp, #0x10]
	add sp, #0x14
	strh r0, [r5, #4]
	pop {r4, r5, r6, r7, pc}
_02035BEA:
	add r0, r5, #0
	bl sub_02032210
	lsl r6, r0, #8
	add r0, r5, #0
	bl sub_02032210
	add r6, r6, r0
	mov r0, #4
	ldrsh r0, [r5, r0]
	str r0, [sp, #0x10]
_02035C00:
	strh r6, [r4, #8]
_02035C02:
	add r0, r7, #0
	bl sub_020328D0
	cmp r0, #0
	beq _02035C5E
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02035C1E
	ldrh r2, [r4, #8]
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_0203290C
	str r0, [r4, #4]
_02035C1E:
	ldr r2, [r4, #0]
	ldr r1, [sp, #8]
	add r0, r5, #0
	sub r2, r6, r2
	bl sub_020321F4
	ldr r2, [r4, #4]
	str r0, [sp, #0xc]
	cmp r2, #0
	beq _02035C3E
	ldr r1, [r4, #0]
	ldr r0, [sp, #8]
	add r1, r2, r1
	ldr r2, [sp, #0xc]
	bl sub_020C4DB0
_02035C3E:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [r4, #0]
	cmp r0, r6
	blt _02035C8E
	str r4, [sp]
	ldr r0, [sp, #4]
	ldr r3, [r4, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02035B6C
	cmp r7, #0x11
	beq _02035C98
	b _02035C8E
_02035C5E:
	add r0, r5, #0
	bl sub_0203226C
	cmp r0, r6
	blt _02035C86
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	bl sub_020321F4
	ldr r0, [sp, #4]
	ldr r3, [sp, #8]
	add r1, r7, #0
	add r2, r6, #0
	str r4, [sp]
	bl sub_02035B6C
	cmp r7, #0x11
	beq _02035C98
	b _02035C8E
_02035C86:
	ldr r0, [sp, #0x10]
	add sp, #0x14
	strh r0, [r5, #4]
	pop {r4, r5, r6, r7, pc}
_02035C8E:
	add r0, r5, #0
	bl sub_0203226C
	cmp r0, #0
	bne _02035B9C
_02035C98:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02035C9C: .word 0x0000FFFF
_02035CA0: .word 0x021C07C4
_02035CA4: .word 0x000006B9
	thumb_func_end sub_02035B88

	thumb_func_start sub_02035CA8
sub_02035CA8: ; 0x02035CA8
	push {r4, lr}
	ldr r0, _02035CEC ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02035CEA
	ldr r0, _02035CF0 ; =0x000006BB
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02035CEA
	ldr r0, _02035CF4 ; =0x000004A4
	add r0, r1, r0
	bl sub_020322D0
	ldr r0, _02035CEC ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035CF4 ; =0x000004A4
	add r0, r1, r0
	bl sub_0203226C
	cmp r0, #0
	ble _02035CEA
	ldr r0, _02035CEC ; =0x021C07C4
	mov r3, #0x62
	ldr r4, [r0, #8]
	ldr r2, _02035CF4 ; =0x000004A4
	lsl r3, r3, #4
	add r0, r4, r2
	sub r2, #0x10
	ldr r2, [r4, r2]
	mov r1, #0
	add r3, r4, r3
	bl sub_02035B88
_02035CEA:
	pop {r4, pc}
	; .align 2, 0
_02035CEC: .word 0x021C07C4
_02035CF0: .word 0x000006BB
_02035CF4: .word 0x000004A4
	thumb_func_end sub_02035CA8

	thumb_func_start sub_02035CF8
sub_02035CF8: ; 0x02035CF8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02035D68 ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02035D64
	ldr r0, _02035D6C ; =0x000006BB
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02035D64
	bl sub_0203895C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r0, r0, #1
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02035D64
	ldr r7, _02035D68 ; =0x021C07C4
	add r5, r4, #0
_02035D24:
	ldr r1, [r7, #8]
	ldr r0, _02035D70 ; =0x0000051C
	add r0, r1, r0
	add r0, r0, r5
	bl sub_020322D0
	ldr r1, [r7, #8]
	ldr r0, _02035D70 ; =0x0000051C
	add r0, r1, r0
	add r0, r0, r5
	bl sub_0203226C
	cmp r0, #0
	ble _02035D5A
	mov r3, #0x17
	ldr r6, [r7, #8]
	ldr r0, _02035D70 ; =0x0000051C
	ldr r2, _02035D74 ; =0x00000494
	lsl r3, r3, #6
	add r0, r6, r0
	add r3, r6, r3
	ldr r2, [r6, r2]
	add r0, r0, r5
	add r1, r4, #0
	add r3, r3, r5
	bl sub_02035B88
_02035D5A:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _02035D24
_02035D64:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02035D68: .word 0x021C07C4
_02035D6C: .word 0x000006BB
_02035D70: .word 0x0000051C
_02035D74: .word 0x00000494
	thumb_func_end sub_02035CF8

	thumb_func_start sub_02035D78
sub_02035D78: ; 0x02035D78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02035E0C ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02035D88
	mov r0, #0
	pop {r4, pc}
_02035D88:
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02035DB6
	ldr r0, _02035E0C ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035E10 ; =0x000006B7
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02035DB2
	bl ov4_021D99D4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02035E08
_02035DB2:
	mov r0, #0
	pop {r4, pc}
_02035DB6:
	bl sub_02035E38
	cmp r0, #0
	bne _02035DC2
	mov r0, #0
	pop {r4, pc}
_02035DC2:
	bl sub_02031934
	cmp r0, #4
	beq _02035DCE
	mov r0, #0
	pop {r4, pc}
_02035DCE:
	bl sub_0203608C
	cmp r4, r0
	bne _02035DDA
	mov r0, #1
	pop {r4, pc}
_02035DDA:
	bl sub_0203608C
	cmp r0, #0
	bne _02035DF4
	bl sub_020318EC
	mov r1, #1
	add r2, r1, #0
	lsl r2, r4
	tst r0, r2
	beq _02035E06
	add r0, r1, #0
	pop {r4, pc}
_02035DF4:
	ldr r0, _02035E0C ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02035E14 ; =0x00000694
	ldrh r2, [r1, r0]
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02035E08
_02035E06:
	mov r0, #0
_02035E08:
	pop {r4, pc}
	nop
_02035E0C: .word 0x021C07C4
_02035E10: .word 0x000006B7
_02035E14: .word 0x00000694
	thumb_func_end sub_02035D78

	thumb_func_start sub_02035E18
sub_02035E18: ; 0x02035E18
	push {r3, r4, r5, lr}
	mov r4, #0
	add r5, r4, #0
_02035E1E:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _02035E2C
	add r4, r4, #1
_02035E2C:
	add r5, r5, #1
	cmp r5, #8
	blt _02035E1E
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02035E18

	thumb_func_start sub_02035E38
sub_02035E38: ; 0x02035E38
	push {r3, lr}
	ldr r0, _02035E58 ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02035E52
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02035E52
	mov r0, #1
	pop {r3, pc}
_02035E52:
	bl sub_02033E1C
	pop {r3, pc}
	; .align 2, 0
_02035E58: .word 0x021C07C4
	thumb_func_end sub_02035E38

	thumb_func_start sub_02035E5C
sub_02035E5C: ; 0x02035E5C
	ldr r1, _02035E68 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _02035E6C ; =0x0000065F
	strb r0, [r2, r1]
	bx lr
	nop
_02035E68: .word 0x021C07C4
_02035E6C: .word 0x0000065F
	thumb_func_end sub_02035E5C

	thumb_func_start sub_02035E70
sub_02035E70: ; 0x02035E70
	ldr r1, _02035E7C ; =0x021C07C4
	ldr r1, [r1, #8]
	add r1, r1, r0
	ldr r0, _02035E80 ; =0x00000654
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_02035E7C: .word 0x021C07C4
_02035E80: .word 0x00000654
	thumb_func_end sub_02035E70

	thumb_func_start sub_02035E84
sub_02035E84: ; 0x02035E84
	ldr r1, _02035EA0 ; =0x021C07C4
	ldr r2, [r1, #8]
	cmp r2, #0
	bne _02035E90
	mov r0, #0
	bx lr
_02035E90:
	ldr r1, _02035EA4 ; =0x00000644
	add r3, r2, r1
	lsl r2, r0, #1
	ldrh r0, [r3, r2]
	mov r1, #0
	strh r1, [r3, r2]
	bx lr
	nop
_02035EA0: .word 0x021C07C4
_02035EA4: .word 0x00000644
	thumb_func_end sub_02035E84

	thumb_func_start sub_02035EA8
sub_02035EA8: ; 0x02035EA8
	ldr r0, _02035EC0 ; =0x021C07C4
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _02035EBC
	ldr r1, _02035EC4 ; =0x0000065C
	mov r0, #2
	ldrh r2, [r3, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	strh r0, [r3, r1]
_02035EBC:
	bx lr
	nop
_02035EC0: .word 0x021C07C4
_02035EC4: .word 0x0000065C
	thumb_func_end sub_02035EA8

	thumb_func_start sub_02035EC8
sub_02035EC8: ; 0x02035EC8
	ldr r0, _02035ED8 ; =0x021C07C4
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02035ED6
	ldr r0, _02035EDC ; =0x0000065C
	mov r1, #0
	strh r1, [r2, r0]
_02035ED6:
	bx lr
	; .align 2, 0
_02035ED8: .word 0x021C07C4
_02035EDC: .word 0x0000065C
	thumb_func_end sub_02035EC8

	thumb_func_start sub_02035EE0
sub_02035EE0: ; 0x02035EE0
	ldr r0, _02035EF8 ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02035EF4
	ldr r0, _02035EFC ; =0x0000065C
	ldrh r1, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	bx lr
_02035EF4:
	mov r0, #1
	bx lr
	; .align 2, 0
_02035EF8: .word 0x021C07C4
_02035EFC: .word 0x0000065C
	thumb_func_end sub_02035EE0

	thumb_func_start sub_02035F00
sub_02035F00: ; 0x02035F00
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02034890
	cmp r0, #1
	bne _02035F32
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02035F54 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	add sp, #8
	pop {r4, r5, r6, pc}
_02035F32:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02035F54 ; =0x021C07C4
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02032498
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02035F54: .word 0x021C07C4
	thumb_func_end sub_02035F00

	thumb_func_start sub_02035F58
sub_02035F58: ; 0x02035F58
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02035F80 ; =0x021C07C4
	add r4, r1, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r3, r2, #0
	add r0, r1, r0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02032498
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02035F80: .word 0x021C07C4
	thumb_func_end sub_02035F58

	thumb_func_start sub_02035F84
sub_02035F84: ; 0x02035F84
	push {r3, lr}
	ldr r0, _02035FFC ; =0x021C07C4
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02035FF8
	ldr r1, _02036000 ; =0x000006AB
	ldrb r0, [r2, r1]
	cmp r0, #1
	beq _02035F9C
	cmp r0, #3
	beq _02035FD4
	pop {r3, pc}
_02035F9C:
	bl sub_02034890
	cmp r0, #1
	bne _02035FB4
	ldr r1, _02035FFC ; =0x021C07C4
	mov r0, #0xb
	ldr r2, [r1, #8]
	ldr r1, _02036004 ; =0x000006AC
	add r1, r2, r1
	bl sub_020360D0
	b _02035FC4
_02035FB4:
	ldr r1, _02035FFC ; =0x021C07C4
	mov r0, #0xb
	ldr r2, [r1, #8]
	ldr r1, _02036004 ; =0x000006AC
	add r1, r2, r1
	mov r2, #1
	bl sub_02035AC4
_02035FC4:
	cmp r0, #0
	beq _02035FF8
	ldr r0, _02035FFC ; =0x021C07C4
	mov r2, #2
	ldr r1, [r0, #8]
	ldr r0, _02036000 ; =0x000006AB
	strb r2, [r1, r0]
	pop {r3, pc}
_02035FD4:
	add r1, r1, #1
	mov r0, #0xc
	add r1, r2, r1
	bl sub_020360D0
	cmp r0, #0
	beq _02035FF8
	ldr r0, _02035FFC ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02036004 ; =0x000006AC
	ldrb r0, [r1, r0]
	bl sub_02034848
	ldr r0, _02035FFC ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02036000 ; =0x000006AB
	strb r2, [r1, r0]
_02035FF8:
	pop {r3, pc}
	nop
_02035FFC: .word 0x021C07C4
_02036000: .word 0x000006AB
_02036004: .word 0x000006AC
	thumb_func_end sub_02035F84

	thumb_func_start sub_02036008
sub_02036008: ; 0x02036008
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02036026
	ldr r1, _02036028 ; =0x021C07C4
	ldr r0, _0203602C ; =0x000006AB
	ldr r2, [r1, #8]
	mov r3, #1
	strb r3, [r2, r0]
	ldrb r2, [r4]
	ldr r1, [r1, #8]
	add r0, r0, #1
	strb r2, [r1, r0]
_02036026:
	pop {r4, pc}
	; .align 2, 0
_02036028: .word 0x021C07C4
_0203602C: .word 0x000006AB
	thumb_func_end sub_02036008

	thumb_func_start sub_02036030
sub_02036030: ; 0x02036030
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	cmp r0, #0
	beq _0203604E
	ldr r1, _02036050 ; =0x021C07C4
	ldrb r3, [r4]
	ldr r2, [r1, #8]
	ldr r0, _02036054 ; =0x000006AC
	strb r3, [r2, r0]
	ldr r1, [r1, #8]
	mov r2, #3
	sub r0, r0, #1
	strb r2, [r1, r0]
_0203604E:
	pop {r4, pc}
	; .align 2, 0
_02036050: .word 0x021C07C4
_02036054: .word 0x000006AC
	thumb_func_end sub_02036030

	thumb_func_start sub_02036058
sub_02036058: ; 0x02036058
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02036080
	ldr r0, _02036084 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _02036088 ; =0x000006AB
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02036080
	ldrb r0, [r4]
	bl sub_02034848
	ldr r0, _02036084 ; =0x021C07C4
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _02036088 ; =0x000006AB
	strb r2, [r1, r0]
_02036080:
	pop {r4, pc}
	nop
_02036084: .word 0x021C07C4
_02036088: .word 0x000006AB
	thumb_func_end sub_02036058

	thumb_func_start sub_0203608C
sub_0203608C: ; 0x0203608C
	push {r3, lr}
	ldr r0, _020360CC ; =0x021C07C4
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020360C6
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _020360B4
	bl ov4_021D1E30
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _020360C6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_020360B4:
	bl sub_02036180
	cmp r0, #0
	beq _020360C0
	mov r0, #0
	pop {r3, pc}
_020360C0:
	bl sub_02031F90
	pop {r3, pc}
_020360C6:
	mov r0, #0
	pop {r3, pc}
	nop
_020360CC: .word 0x021C07C4
	thumb_func_end sub_0203608C

	thumb_func_start sub_020360D0
sub_020360D0: ; 0x020360D0
	ldr r3, _020360D8 ; =sub_020359DC
	mov r2, #0
	bx r3
	nop
_020360D8: .word sub_020359DC
	thumb_func_end sub_020360D0

	thumb_func_start sub_020360DC
sub_020360DC: ; 0x020360DC
	ldr r3, _020360E4 ; =sub_020359DC
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_020360E4: .word sub_020359DC
	thumb_func_end sub_020360DC

	thumb_func_start sub_020360E8
sub_020360E8: ; 0x020360E8
	ldr r3, _020360EC ; =sub_02033E48
	bx r3
	; .align 2, 0
_020360EC: .word sub_02033E48
	thumb_func_end sub_020360E8

	thumb_func_start sub_020360F0
sub_020360F0: ; 0x020360F0
	push {r3, lr}
	bl sub_02036180
	cmp r0, #0
	beq _020360FE
	mov r0, #0
	pop {r3, pc}
_020360FE:
	ldr r0, _02036120 ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203611A
	ldr r0, _02036124 ; =0x000006B9
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0203611A
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #1
	pop {r3, pc}
_0203611A:
	bl sub_02033E84
	pop {r3, pc}
	; .align 2, 0
_02036120: .word 0x021C07C4
_02036124: .word 0x000006B9
	thumb_func_end sub_020360F0

	thumb_func_start sub_02036128
sub_02036128: ; 0x02036128
	push {r3, lr}
	bl sub_0203266C
	cmp r0, #5
	blo _02036136
	mov r0, #0xc
	pop {r3, pc}
_02036136:
	bl sub_02034890
	cmp r0, #0
	bne _02036142
	mov r0, #0xc
	pop {r3, pc}
_02036142:
	mov r0, #0x26
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02036128

	thumb_func_start sub_02036148
sub_02036148: ; 0x02036148
	push {r3, lr}
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203266C
	add r0, r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02036148

	thumb_func_start sub_02036158
sub_02036158: ; 0x02036158
	push {r3, lr}
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02032698
	add r0, r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02036158

	thumb_func_start sub_02036168
sub_02036168: ; 0x02036168
	ldr r1, _02036178 ; =0x021C07C4
	ldr r2, [r1, #8]
	cmp r2, #0
	beq _02036174
	ldr r1, _0203617C ; =0x000006B6
	strb r0, [r2, r1]
_02036174:
	bx lr
	nop
_02036178: .word 0x021C07C4
_0203617C: .word 0x000006B6
	thumb_func_end sub_02036168

	thumb_func_start sub_02036180
sub_02036180: ; 0x02036180
	ldr r0, _02036194 ; =0x021C07C4
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _0203618E
	ldr r0, _02036198 ; =0x000006B6
	ldrb r0, [r1, r0]
	bx lr
_0203618E:
	mov r0, #0
	bx lr
	nop
_02036194: .word 0x021C07C4
_02036198: .word 0x000006B6
	thumb_func_end sub_02036180

	thumb_func_start sub_0203619C
sub_0203619C: ; 0x0203619C
	push {r3, lr}
	bl sub_0203406C
	cmp r0, #0
	bne _020361B6
	bl sub_0203608C
	cmp r0, #0
	bne _020361B6
	mov r0, #2
	add r1, sp, #0
	bl sub_02035B48
_020361B6:
	bl sub_0203408C
	pop {r3, pc}
	thumb_func_end sub_0203619C

	thumb_func_start sub_020361BC
sub_020361BC: ; 0x020361BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, sp, #4
	bl sub_0201384C
	ldr r0, _02036240 ; =0x021BF67C
	ldr r6, [sp, #0x10]
	mov r5, #0
	lsr r7, r6, #0x1c
	lsl r5, r5, #4
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0x2c]
	lsl r6, r6, #4
	add r3, r1, r0
	ldr r0, [sp, #0x18]
	orr r5, r7
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	add r6, r0, r6
	ldr r0, _02036244 ; =0x00000000
	ldr r2, [sp, #8]
	adc r0, r5
	lsr r5, r6, #0x1b
	lsl r0, r0, #5
	orr r0, r5
	ldr r5, [sp]
	lsl r6, r6, #5
	add r6, r5, r6
	ldr r5, _02036244 ; =0x00000000
	adc r5, r0
	lsr r0, r6, #0x1b
	lsl r5, r5, #5
	orr r5, r0
	lsl r0, r6, #5
	add r6, r1, r0
	ldr r1, _02036244 ; =0x00000000
	adc r1, r5
	lsr r0, r6, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	lsl r0, r6, #6
	add r5, r2, r0
	ldr r2, _02036244 ; =0x00000000
	adc r2, r1
	lsr r0, r5, #0x1a
	lsl r1, r2, #6
	orr r1, r0
	lsl r0, r5, #6
	add r2, r3, r0
	ldr r0, _02036244 ; =0x00000000
	str r2, [r4, #0]
	adc r0, r1
	str r0, [r4, #4]
	ldr r1, _02036248 ; =0x6C078965
	ldr r0, _0203624C ; =0x5D588B65
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, _02036250 ; =0x00269EC3
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02036240: .word 0x021BF67C
_02036244: .word 0x00000000
_02036248: .word 0x6C078965
_0203624C: .word 0x5D588B65
_02036250: .word 0x00269EC3
	thumb_func_end sub_020361BC

	thumb_func_start sub_02036254
sub_02036254: ; 0x02036254
	add r1, r0, #0
	ldr r0, _02036264 ; =0x021C07C4
	ldr r3, _02036268 ; =sub_02032644
	ldr r2, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r2, r0
	bx r3
	; .align 2, 0
_02036264: .word 0x021C07C4
_02036268: .word sub_02032644
	thumb_func_end sub_02036254

	thumb_func_start sub_0203626C
sub_0203626C: ; 0x0203626C
	add r1, r0, #0
	ldr r0, _0203627C ; =0x021C07C4
	ldr r3, _02036280 ; =sub_02032644
	ldr r2, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r2, r0
	bx r3
	; .align 2, 0
_0203627C: .word 0x021C07C4
_02036280: .word sub_02032644
	thumb_func_end sub_0203626C

	thumb_func_start sub_02036284
sub_02036284: ; 0x02036284
	ldr r0, _02036294 ; =0x021C07C4
	ldr r3, _02036298 ; =sub_020322F8
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	bx r3
	nop
_02036294: .word 0x021C07C4
_02036298: .word sub_020322F8
	thumb_func_end sub_02036284

	thumb_func_start sub_0203629C
sub_0203629C: ; 0x0203629C
	ldr r0, _020362AC ; =0x021C07C4
	ldr r3, _020362B0 ; =sub_020322F8
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	bx r3
	nop
_020362AC: .word 0x021C07C4
_020362B0: .word sub_020322F8
	thumb_func_end sub_0203629C

	thumb_func_start sub_020362B4
sub_020362B4: ; 0x020362B4
	ldr r1, _020362C0 ; =0x021C07C4
	ldr r2, [r1, #8]
	ldr r1, _020362C4 ; =0x000006B7
	strb r0, [r2, r1]
	bx lr
	nop
_020362C0: .word 0x021C07C4
_020362C4: .word 0x000006B7
	thumb_func_end sub_020362B4

	thumb_func_start sub_020362C8
sub_020362C8: ; 0x020362C8
	ldr r0, _020362D4 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020362D8 ; =0x000006B7
	ldrb r0, [r1, r0]
	bx lr
	nop
_020362D4: .word 0x021C07C4
_020362D8: .word 0x000006B7
	thumb_func_end sub_020362C8

	thumb_func_start sub_020362DC
sub_020362DC: ; 0x020362DC
	ldr r2, _020362EC ; =0x021C07C4
	ldr r2, [r2, #8]
	cmp r2, #0
	beq _020362EA
	add r2, r2, r1
	ldr r1, _020362F0 ; =0x000006A7
	strb r0, [r2, r1]
_020362EA:
	bx lr
	; .align 2, 0
_020362EC: .word 0x021C07C4
_020362F0: .word 0x000006A7
	thumb_func_end sub_020362DC

	thumb_func_start sub_020362F4
sub_020362F4: ; 0x020362F4
	ldr r1, _0203630C ; =0x021C07C4
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _02036308
	add r2, r1, r0
	ldr r1, _02036310 ; =0x000006A7
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	beq _02036308
	add r0, r1, #0
_02036308:
	bx lr
	nop
_0203630C: .word 0x021C07C4
_02036310: .word 0x000006A7
	thumb_func_end sub_020362F4

	thumb_func_start sub_02036314
sub_02036314: ; 0x02036314
	push {r3, lr}
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _02036328
	bl ov4_021D254C
	pop {r3, pc}
_02036328:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_02036314

	thumb_func_start sub_0203632C
sub_0203632C: ; 0x0203632C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _0203636A
	ldr r2, _0203636C ; =0x021C07C4
	ldr r1, _02036370 ; =0x00000664
	ldr r3, [r2, #8]
	ldr r0, [r3, r1]
	cmp r0, r4
	beq _0203636A
	str r4, [r3, r1]
	cmp r4, #0
	beq _0203636A
	ldr r3, [r2, #8]
	mov r0, #0
	add r1, r1, #4
	str r0, [r3, r1]
	ldr r1, _02036374 ; =0x0000066C
	add r5, r0, #0
	add r4, r0, #0
_0203635C:
	ldr r3, [r2, #8]
	add r0, r0, #1
	add r3, r3, r5
	add r5, r5, #4
	str r4, [r3, r1]
	cmp r0, #8
	blt _0203635C
_0203636A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203636C: .word 0x021C07C4
_02036370: .word 0x00000664
_02036374: .word 0x0000066C
	thumb_func_end sub_0203632C

	thumb_func_start sub_02036378
sub_02036378: ; 0x02036378
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203632C
	bl sub_0203895C
	bl sub_020326EC
	cmp r0, #0
	beq _0203639E
	cmp r4, #0
	beq _02036398
	mov r0, #0
	bl ov4_021D2598
	pop {r4, pc}
_02036398:
	mov r0, #1
	bl ov4_021D2598
_0203639E:
	pop {r4, pc}
	thumb_func_end sub_02036378

	thumb_func_start sub_020363A0
sub_020363A0: ; 0x020363A0
	ldr r0, _020363B4 ; =0x021C07C4
	ldr r1, [r0, #8]
	ldr r0, _020363B8 ; =0x000006B1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020363B0
	mov r0, #1
	bx lr
_020363B0:
	mov r0, #0
	bx lr
	; .align 2, 0
_020363B4: .word 0x021C07C4
_020363B8: .word 0x000006B1
	thumb_func_end sub_020363A0

	thumb_func_start sub_020363BC
sub_020363BC: ; 0x020363BC
	ldr r0, _020363C8 ; =0x021C07C4
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _020363CC ; =0x000006B9
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_020363C8: .word 0x021C07C4
_020363CC: .word 0x000006B9
	thumb_func_end sub_020363BC

	thumb_func_start sub_020363D0
sub_020363D0: ; 0x020363D0
	ldr r0, _020363E0 ; =0x021C07C4
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _020363DE
	ldr r0, _020363E4 ; =0x000006BA
	mov r1, #1
	strb r1, [r2, r0]
_020363DE:
	bx lr
	; .align 2, 0
_020363E0: .word 0x021C07C4
_020363E4: .word 0x000006BA
	thumb_func_end sub_020363D0

	thumb_func_start sub_020363E8
sub_020363E8: ; 0x020363E8
	push {r4, lr}
	ldr r1, _02036430 ; =0x021C07D0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02036404
	ldr r1, _02036434 ; =0x00000263
	bl sub_02018144
	ldr r1, _02036430 ; =0x021C07D0
	ldr r2, _02036434 ; =0x00000263
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
_02036404:
	ldr r1, _02036430 ; =0x021C07D0
	mov r3, #0
	mov r0, #0xff
_0203640A:
	ldr r2, [r1, #0]
	add r2, r2, r3
	add r3, r3, #1
	strb r0, [r2, #0x10]
	cmp r3, #8
	blt _0203640A
	ldr r3, _02036430 ; =0x021C07D0
	mov r1, #0x26
	ldr r2, [r3, #0]
	lsl r1, r1, #4
	strb r0, [r2, r1]
	ldr r4, [r3, #0]
	add r2, r1, #1
	strb r0, [r4, r2]
	ldr r2, [r3, #0]
	mov r4, #0
	add r0, r1, #2
	strb r4, [r2, r0]
	pop {r4, pc}
	; .align 2, 0
_02036430: .word 0x021C07D0
_02036434: .word 0x00000263
	thumb_func_end sub_020363E8

	thumb_func_start sub_02036438
sub_02036438: ; 0x02036438
	push {r3, lr}
	ldr r0, _0203644C ; =0x021C07D0
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0203644C ; =0x021C07D0
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	nop
_0203644C: .word 0x021C07D0
	thumb_func_end sub_02036438

	thumb_func_start sub_02036450
sub_02036450: ; 0x02036450
	ldr r0, _02036460 ; =0x021C07D0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203645C
	mov r0, #1
	bx lr
_0203645C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02036460: .word 0x021C07D0
	thumb_func_end sub_02036450

	thumb_func_start sub_02036464
sub_02036464: ; 0x02036464
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldrb r1, [r2]
	add r5, r0, #0
	add r0, sp, #0
	strb r1, [r0]
	bl sub_0203608C
	cmp r0, #0
	bne _020364BE
	add r0, sp, #0
	strb r5, [r0, #1]
	ldrb r1, [r0]
	strb r1, [r0, #2]
	add r1, sp, #0
	mov r0, #0x12
	add r1, #1
	bl sub_02035B48
	ldr r6, _020364C4 ; =0x021C07D0
	add r4, sp, #0
	ldr r0, [r6, #0]
	ldrb r1, [r4]
	add r0, r0, r5
	mov r5, #0
	strb r1, [r0, #0x10]
_02036498:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _020364B0
	ldr r0, [r6, #0]
	ldrb r1, [r4]
	add r0, r0, r5
	ldrb r0, [r0, #0x10]
	cmp r1, r0
	bne _020364BE
_020364B0:
	add r5, r5, #1
	cmp r5, #8
	blt _02036498
	mov r0, #0x11
	add r1, sp, #0
	bl sub_02035B48
_020364BE:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_020364C4: .word 0x021C07D0
	thumb_func_end sub_02036464

	thumb_func_start sub_020364C8
sub_020364C8: ; 0x020364C8
	ldr r0, _020364D8 ; =0x021C07D0
	ldrb r3, [r2, #1]
	ldr r1, [r0, #0]
	ldrb r0, [r2]
	add r0, r1, r0
	strb r3, [r0, #0x10]
	bx lr
	nop
_020364D8: .word 0x021C07D0
	thumb_func_end sub_020364C8

	thumb_func_start sub_020364DC
sub_020364DC: ; 0x020364DC
	ldr r0, _020364EC ; =0x021C07D0
	ldrb r2, [r2]
	ldr r1, [r0, #0]
	mov r0, #0x26
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	nop
_020364EC: .word 0x021C07D0
	thumb_func_end sub_020364DC

	thumb_func_start sub_020364F0
sub_020364F0: ; 0x020364F0
	ldr r2, _02036504 ; =0x021C07D0
	ldr r1, _02036508 ; =0x00000261
	ldr r3, [r2, #0]
	strb r0, [r3, r1]
	ldr r2, [r2, #0]
	mov r3, #1
	add r0, r1, #1
	strb r3, [r2, r0]
	bx lr
	nop
_02036504: .word 0x021C07D0
_02036508: .word 0x00000261
	thumb_func_end sub_020364F0

	thumb_func_start sub_0203650C
sub_0203650C: ; 0x0203650C
	push {r3, lr}
	ldr r0, _02036538 ; =0x021C07D0
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02036536
	ldr r1, _0203653C ; =0x00000262
	ldrb r0, [r2, r1]
	cmp r0, #0
	beq _02036536
	sub r1, r1, #1
	mov r0, #0x10
	add r1, r2, r1
	bl sub_020360D0
	cmp r0, #0
	beq _02036536
	ldr r0, _02036538 ; =0x021C07D0
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0203653C ; =0x00000262
	strb r2, [r1, r0]
_02036536:
	pop {r3, pc}
	; .align 2, 0
_02036538: .word 0x021C07D0
_0203653C: .word 0x00000262
	thumb_func_end sub_0203650C

	thumb_func_start sub_02036540
sub_02036540: ; 0x02036540
	ldr r1, _02036560 ; =0x021C07D0
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0203654C
	mov r0, #1
	bx lr
_0203654C:
	mov r1, #0x26
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	cmp r1, r0
	bne _0203655A
	mov r0, #1
	bx lr
_0203655A:
	mov r0, #0
	bx lr
	nop
_02036560: .word 0x021C07D0
	thumb_func_end sub_02036540

	thumb_func_start sub_02036564
sub_02036564: ; 0x02036564
	ldr r1, _02036570 ; =0x021C07D0
	ldr r1, [r1, #0]
	add r0, r1, r0
	ldrb r0, [r0, #0x10]
	bx lr
	nop
_02036570: .word 0x021C07D0
	thumb_func_end sub_02036564

	thumb_func_start sub_02036574
sub_02036574: ; 0x02036574
	push {r3, r4}
	lsl r4, r0, #1
	ldr r0, _0203658C ; =0x021C07D0
	ldrb r3, [r2]
	ldr r1, [r0, #0]
	strb r3, [r1, r4]
	ldr r0, [r0, #0]
	ldrb r1, [r2, #1]
	add r0, r0, r4
	strb r1, [r0, #1]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0203658C: .word 0x021C07D0
	thumb_func_end sub_02036574

	thumb_func_start sub_02036590
sub_02036590: ; 0x02036590
	mov r0, #2
	bx lr
	thumb_func_end sub_02036590

	thumb_func_start sub_02036594
sub_02036594: ; 0x02036594
	push {r3, lr}
	add r2, sp, #0
	strb r0, [r2]
	strb r1, [r2, #1]
	mov r0, #0x13
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02036594

	thumb_func_start sub_020365A8
sub_020365A8: ; 0x020365A8
	ldr r2, _020365CC ; =0x021C07D0
	ldr r3, [r2, #0]
	cmp r3, #0
	bne _020365B6
	mov r0, #0
	mvn r0, r0
	bx lr
_020365B6:
	lsl r2, r0, #1
	ldrb r0, [r3, r2]
	cmp r1, r0
	bne _020365C4
	add r0, r3, r2
	ldrb r0, [r0, #1]
	bx lr
_020365C4:
	mov r0, #0
	mvn r0, r0
	bx lr
	nop
_020365CC: .word 0x021C07D0
	thumb_func_end sub_020365A8

	thumb_func_start sub_020365D0
sub_020365D0: ; 0x020365D0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _020365F0 ; =0x021C07D0
	add r5, r4, #0
	add r7, r4, #0
_020365DA:
	ldr r0, [r6, #0]
	add r1, r7, #0
	add r0, r0, r5
	mov r2, #2
	bl sub_020C4CF4
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #8
	blt _020365DA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020365F0: .word 0x021C07D0
	thumb_func_end sub_020365D0

	thumb_func_start sub_020365F4
sub_020365F4: ; 0x020365F4
	push {r3, r4}
	mov r4, #0
	mov r0, #0x96
	ldr r1, _02036610 ; =0x021C07D0
	add r3, r4, #0
	lsl r0, r0, #2
_02036600:
	ldr r2, [r1, #0]
	add r2, r2, r4
	add r4, r4, #1
	strb r3, [r2, r0]
	cmp r4, #8
	blt _02036600
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02036610: .word 0x021C07D0
	thumb_func_end sub_020365F4

	thumb_func_start sub_02036614
sub_02036614: ; 0x02036614
	push {r4, lr}
	ldr r2, _02036648 ; =0x021C07D0
	ldr r3, [r2, #0]
	cmp r3, #0
	beq _02036642
	add r4, r0, #0
	mov r2, #0x48
	mul r4, r2
	add r3, #0x18
	add r0, r1, #0
	add r1, r3, r4
	mov r2, #0x46
	bl sub_020C4DB0
	ldr r1, _02036648 ; =0x021C07D0
	mov r0, #0x14
	ldr r1, [r1, #0]
	add r1, #0x18
	add r1, r1, r4
	bl sub_020360D0
	mov r0, #1
	pop {r4, pc}
_02036642:
	mov r0, #0
	pop {r4, pc}
	nop
_02036648: .word 0x021C07D0
	thumb_func_end sub_02036614

	thumb_func_start sub_0203664C
sub_0203664C: ; 0x0203664C
	ldr r1, _0203666C ; =0x021C07D0
	ldr r3, [r1, #0]
	mov r1, #0x96
	add r2, r3, r0
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	cmp r1, #0
	beq _02036666
	mov r1, #0x48
	add r3, #0x18
	mul r1, r0
	add r0, r3, r1
	bx lr
_02036666:
	mov r0, #0
	bx lr
	nop
_0203666C: .word 0x021C07D0
	thumb_func_end sub_0203664C

	thumb_func_start sub_02036670
sub_02036670: ; 0x02036670
	push {r3, r4, r5, lr}
	ldr r3, _02036698 ; =0x021C07D0
	add r1, r0, #0
	ldr r0, [r3, #0]
	mov r5, #1
	add r4, r0, r1
	mov r0, #0x96
	lsl r0, r0, #2
	strb r5, [r4, r0]
	ldr r3, [r3, #0]
	add r0, r2, #0
	mov r2, #0x48
	add r3, #0x18
	mul r2, r1
	add r1, r3, r2
	mov r2, #0x46
	bl sub_020C4DB0
	pop {r3, r4, r5, pc}
	nop
_02036698: .word 0x021C07D0
	thumb_func_end sub_02036670

	thumb_func_start sub_0203669C
sub_0203669C: ; 0x0203669C
	mov r0, #0x46
	bx lr
	thumb_func_end sub_0203669C

	thumb_func_start sub_020366A0
sub_020366A0: ; 0x020366A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02036730 ; =0x021C07D4
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203672C
	cmp r5, #0
	bne _020366B6
	bl sub_02022974
_020366B6:
	bl sub_02033478
	mov r0, #0xf
	mov r1, #0x64
	bl sub_02018144
	ldr r1, _02036730 ; =0x021C07D4
	mov r2, #0x64
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _02036730 ; =0x021C07D4
	mov r2, #0x32
	ldr r1, [r0, #0]
	str r2, [r1, #0x40]
	ldr r1, [r0, #0]
	mov r2, #1
	add r1, #0x4e
	strb r2, [r1]
	ldr r0, [r0, #0]
	str r5, [r0, #0x28]
	add r0, r5, #0
	bl sub_02025E38
	ldr r1, _02036730 ; =0x021C07D4
	ldr r2, [r1, #0]
	str r0, [r2, #0x2c]
	ldr r0, [r1, #0]
	mov r2, #2
	add r0, #0x46
	strb r2, [r0]
	ldr r0, [r1, #0]
	mov r2, #0
	add r0, #0x48
	strb r2, [r0]
	ldr r0, [r1, #0]
	add r0, #0x53
	strb r2, [r0]
	ldr r0, [r1, #0]
	add r0, #0x4a
	strb r4, [r0]
	ldr r0, [r1, #0]
	add r0, #0xc
	bl sub_020361BC
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02032798
	cmp r4, #9
	beq _0203672C
	cmp r4, #0x11
	beq _0203672C
	cmp r4, #0xf
	beq _0203672C
	bl sub_02039734
_0203672C:
	pop {r3, r4, r5, pc}
	nop
_02036730: .word 0x021C07D4
	thumb_func_end sub_020366A0

	thumb_func_start sub_02036734
sub_02036734: ; 0x02036734
	push {r3, lr}
	ldr r0, _0203677C ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203677A
	bl sub_020327E0
	ldr r0, _0203677C ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02036750
	bl sub_020181C4
_02036750:
	bl sub_020389B8
	cmp r0, #0
	beq _0203675E
	mov r0, #0x31
	bl sub_0201807C
_0203675E:
	bl sub_02039794
	bl sub_020334CC
	ldr r0, _0203677C ; =0x021C07D4
	ldr r0, [r0, #0]
	bl sub_020181C4
	mov r0, #0xf
	bl sub_0201807C
	ldr r0, _0203677C ; =0x021C07D4
	mov r1, #0
	str r1, [r0, #0]
_0203677A:
	pop {r3, pc}
	; .align 2, 0
_0203677C: .word 0x021C07D4
	thumb_func_end sub_02036734

	thumb_func_start sub_02036780
sub_02036780: ; 0x02036780
	ldr r0, _02036790 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203678C
	mov r0, #1
	bx lr
_0203678C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02036790: .word 0x021C07D4
	thumb_func_end sub_02036780

	thumb_func_start sub_02036794
sub_02036794: ; 0x02036794
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020367C8 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020367C4
	mov r1, #0xf
	mov r0, #3
	lsl r2, r1, #0xc
	bl sub_02017FD4
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020366A0
	ldr r0, _020367C8 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, _020367CC ; =sub_02036CA4
	mov r1, #0x32
	bl sub_02036C94
_020367C4:
	pop {r4, pc}
	nop
_020367C8: .word 0x021C07D4
_020367CC: .word sub_02036CA4
	thumb_func_end sub_02036794

	thumb_func_start sub_020367D0
sub_020367D0: ; 0x020367D0
	push {r3, lr}
	ldr r0, _020367E8 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020367E6
	bl sub_020363D0
	ldr r0, _020367EC ; =sub_02037344
	mov r1, #0
	bl sub_02036C94
_020367E6:
	pop {r3, pc}
	; .align 2, 0
_020367E8: .word 0x021C07D4
_020367EC: .word sub_02037344
	thumb_func_end sub_020367D0

	thumb_func_start sub_020367F0
sub_020367F0: ; 0x020367F0
	push {r3, lr}
	bl sub_02034AE4
	bl sub_0203608C
	ldr r1, _0203680C ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x44
	strh r0, [r1]
	ldr r0, _02036810 ; =sub_0203712C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_0203680C: .word 0x021C07D4
_02036810: .word sub_0203712C
	thumb_func_end sub_020367F0

	thumb_func_start sub_02036814
sub_02036814: ; 0x02036814
	ldr r1, _02036820 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x5a
	strb r0, [r1]
	bx lr
	nop
_02036820: .word 0x021C07D4
	thumb_func_end sub_02036814

	thumb_func_start sub_02036824
sub_02036824: ; 0x02036824
	ldr r3, _0203682C ; =sub_02036C94
	ldr r0, _02036830 ; =sub_02036FA4
	mov r1, #0
	bx r3
	; .align 2, 0
_0203682C: .word sub_02036C94
_02036830: .word sub_02036FA4
	thumb_func_end sub_02036824

	thumb_func_start sub_02036834
sub_02036834: ; 0x02036834
	push {r4}
	sub sp, #0xc
	ldr r4, _0203687C ; =0x020E5E7C
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r0, _02036880 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	cmp r0, #0
	bne _02036858
	add sp, #0xc
	mov r0, #0
	pop {r4}
	bx lr
_02036858:
	ldr r0, [sp]
	cmp r0, #0
	beq _02036874
_0203685E:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _0203686C
	add sp, #0xc
	mov r0, #1
	pop {r4}
	bx lr
_0203686C:
	add r2, r2, #4
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _0203685E
_02036874:
	mov r0, #0
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_0203687C: .word 0x020E5E7C
_02036880: .word 0x021C07D4
	thumb_func_end sub_02036834

	thumb_func_start sub_02036884
sub_02036884: ; 0x02036884
	ldr r3, _0203688C ; =sub_02036C94
	ldr r0, _02036890 ; =sub_020370EC
	mov r1, #0
	bx r3
	; .align 2, 0
_0203688C: .word sub_02036C94
_02036890: .word sub_020370EC
	thumb_func_end sub_02036884

	thumb_func_start sub_02036894
sub_02036894: ; 0x02036894
	ldr r0, _020368A0 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x57
	strb r1, [r0]
	bx lr
	; .align 2, 0
_020368A0: .word 0x021C07D4
	thumb_func_end sub_02036894

	thumb_func_start sub_020368A4
sub_020368A4: ; 0x020368A4
	push {r3, lr}
	bl sub_02033478
	ldr r0, _020368B4 ; =sub_02037108
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020368B4: .word sub_02037108
	thumb_func_end sub_020368A4

	thumb_func_start sub_020368B8
sub_020368B8: ; 0x020368B8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02035E38
	cmp r0, #0
	bne _020368F0
	ldr r2, _020368F4 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020366A0
	ldr r0, _020368F8 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r1, #0x4b
	strb r5, [r1]
	ldr r0, [r0, #0]
	mov r1, #0
	str r4, [r0, #0x30]
	ldr r0, _020368FC ; =sub_02037144
	bl sub_02036C94
_020368F0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020368F4: .word 0x00007080
_020368F8: .word 0x021C07D4
_020368FC: .word sub_02037144
	thumb_func_end sub_020368B8

	thumb_func_start sub_02036900
sub_02036900: ; 0x02036900
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02036938
	ldr r2, _0203693C ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020366A0
	ldr r0, _02036940 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r1, #0x4b
	strb r5, [r1]
	ldr r0, [r0, #0]
	mov r1, #0
	str r4, [r0, #0x30]
	ldr r0, _02036944 ; =sub_020371C0
	bl sub_02036C94
_02036938:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203693C: .word 0x00007080
_02036940: .word 0x021C07D4
_02036944: .word sub_020371C0
	thumb_func_end sub_02036900

	thumb_func_start sub_02036948
sub_02036948: ; 0x02036948
	ldr r1, _02036958 ; =0x021C07D4
	ldr r3, _0203695C ; =sub_02036C94
	ldr r1, [r1, #0]
	add r1, #0x49
	strb r0, [r1]
	ldr r0, _02036960 ; =sub_02037210
	mov r1, #0
	bx r3
	; .align 2, 0
_02036958: .word 0x021C07D4
_0203695C: .word sub_02036C94
_02036960: .word sub_02037210
	thumb_func_end sub_02036948

	thumb_func_start sub_02036964
sub_02036964: ; 0x02036964
	push {r3, lr}
	bl sub_02034B2C
	ldr r0, _02036974 ; =sub_020372DC
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02036974: .word sub_020372DC
	thumb_func_end sub_02036964

	thumb_func_start sub_02036978
sub_02036978: ; 0x02036978
	push {r3, lr}
	ldr r0, _0203698C ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203698A
	ldr r0, _02036990 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_0203698A:
	pop {r3, pc}
	; .align 2, 0
_0203698C: .word 0x021C07D4
_02036990: .word sub_020373B8
	thumb_func_end sub_02036978

	thumb_func_start sub_02036994
sub_02036994: ; 0x02036994
	ldr r3, _02036998 ; =sub_0203208C
	bx r3
	; .align 2, 0
_02036998: .word sub_0203208C
	thumb_func_end sub_02036994

	thumb_func_start sub_0203699C
sub_0203699C: ; 0x0203699C
	push {r4}
	sub sp, #0xc
	ldr r4, _020369E4 ; =0x020E5E88
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r0, _020369E8 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	cmp r0, #0
	bne _020369C0
	add sp, #0xc
	mov r0, #0
	pop {r4}
	bx lr
_020369C0:
	ldr r0, [sp]
	cmp r0, #0
	beq _020369DC
_020369C6:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _020369D4
	add sp, #0xc
	mov r0, #1
	pop {r4}
	bx lr
_020369D4:
	add r2, r2, #4
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020369C6
_020369DC:
	mov r0, #0
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
_020369E4: .word 0x020E5E88
_020369E8: .word 0x021C07D4
	thumb_func_end sub_0203699C

	thumb_func_start sub_020369EC
sub_020369EC: ; 0x020369EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02036A2C ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02036A2A
	ldr r2, _02036A30 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	cmp r0, #0
	bne _02036A0A
	bl sub_02038A0C
_02036A0A:
	add r0, r4, #0
	mov r1, #9
	bl sub_020366A0
	ldr r0, _02036A2C ; =0x021C07D4
	mov r2, #9
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, _02036A34 ; =sub_020373F0
	bl sub_02036C94
_02036A2A:
	pop {r4, pc}
	; .align 2, 0
_02036A2C: .word 0x021C07D4
_02036A30: .word 0x00007080
_02036A34: .word sub_020373F0
	thumb_func_end sub_020369EC

	thumb_func_start sub_02036A38
sub_02036A38: ; 0x02036A38
	push {r3, lr}
	ldr r1, _02036A60 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r2, #0x49
	strb r0, [r2]
	ldr r0, [r1, #0]
	mov r2, #3
	add r0, #0x44
	strh r2, [r0]
	mov r0, #1
	bl sub_02032138
	bl sub_02039734
	ldr r0, _02036A64 ; =sub_020375A4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	nop
_02036A60: .word 0x021C07D4
_02036A64: .word sub_020375A4
	thumb_func_end sub_02036A38

	thumb_func_start sub_02036A68
sub_02036A68: ; 0x02036A68
	ldr r0, _02036A94 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02036A76
	mov r0, #0
	mvn r0, r0
	bx lr
_02036A76:
	ldr r1, [r0, #0x24]
	ldr r0, _02036A98 ; =sub_02037724
	cmp r1, r0
	bne _02036A82
	mov r0, #1
	bx lr
_02036A82:
	ldr r0, _02036A9C ; =sub_0203773C
	cmp r1, r0
	bne _02036A8C
	mov r0, #1
	b _02036A8E
_02036A8C:
	mov r0, #0
_02036A8E:
	neg r0, r0
	bx lr
	nop
_02036A94: .word 0x021C07D4
_02036A98: .word sub_02037724
_02036A9C: .word sub_0203773C
	thumb_func_end sub_02036A68

	thumb_func_start sub_02036AA0
sub_02036AA0: ; 0x02036AA0
	ldr r0, _02036ABC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02036AAC
	mov r0, #0
	bx lr
_02036AAC:
	ldr r1, [r0, #0x24]
	ldr r0, _02036AC0 ; =sub_02037790
	cmp r1, r0
	bne _02036AB8
	mov r0, #1
	bx lr
_02036AB8:
	mov r0, #0
	bx lr
	; .align 2, 0
_02036ABC: .word 0x021C07D4
_02036AC0: .word sub_02037790
	thumb_func_end sub_02036AA0

	thumb_func_start sub_02036AC4
sub_02036AC4: ; 0x02036AC4
	push {r3, lr}
	mov r0, #0
	bl sub_02032138
	ldr r0, _02036B38 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #1
	bne _02036AEC
	add r0, r1, #0
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #1
	bne _02036AEC
	add r1, #0x4a
	ldrb r0, [r1]
	cmp r0, #9
	bne _02036AF4
_02036AEC:
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
_02036AF4:
	bl sub_02039794
	ldr r0, _02036B38 ; =0x021C07D4
	mov r2, #9
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r1, [r0, #0]
	mov r2, #0
	add r1, #0x53
	strb r2, [r1]
	ldr r0, [r0, #0]
	add r0, #0x46
	ldrb r0, [r0]
	bl sub_02031FA4
	bl sub_0203608C
	cmp r0, #0
	bne _02036B2C
	mov r0, #1
	bl sub_02032160
	ldr r0, _02036B3C ; =sub_02037354
	mov r1, #0xf
	bl sub_02036C94
	pop {r3, pc}
_02036B2C:
	ldr r0, _02036B40 ; =sub_0203739C
	mov r1, #5
	bl sub_02036C94
	pop {r3, pc}
	nop
_02036B38: .word 0x021C07D4
_02036B3C: .word sub_02037354
_02036B40: .word sub_0203739C
	thumb_func_end sub_02036AC4

	thumb_func_start sub_02036B44
sub_02036B44: ; 0x02036B44
	ldr r0, _02036B60 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02036B50
	mov r0, #1
	bx lr
_02036B50:
	ldr r1, [r0, #0x24]
	ldr r0, _02036B64 ; =sub_02037474
	cmp r1, r0
	beq _02036B5C
	mov r0, #1
	bx lr
_02036B5C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02036B60: .word 0x021C07D4
_02036B64: .word sub_02037474
	thumb_func_end sub_02036B44

	thumb_func_start sub_02036B68
sub_02036B68: ; 0x02036B68
	push {r3, lr}
	ldr r0, _02036B7C ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02036B7A
	ldr r0, _02036B80 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_02036B7A:
	pop {r3, pc}
	; .align 2, 0
_02036B7C: .word 0x021C07D4
_02036B80: .word sub_020373B8
	thumb_func_end sub_02036B68

	thumb_func_start sub_02036B84
sub_02036B84: ; 0x02036B84
	push {r3, lr}
	ldr r0, _02036B9C ; =0x021C07D4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02036B98
	mov r0, #1
	add r1, #0x53
	strb r0, [r1]
	bl sub_02032138
_02036B98:
	pop {r3, pc}
	nop
_02036B9C: .word 0x021C07D4
	thumb_func_end sub_02036B84

	thumb_func_start sub_02036BA0
sub_02036BA0: ; 0x02036BA0
	push {r3, lr}
	ldr r0, _02036BC0 ; =0x021C07D4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02036BBC
	mov r0, #1
	add r1, #0x53
	strb r0, [r1]
	bl sub_02032138
	ldr r0, _02036BC4 ; =sub_020377E4
	mov r1, #0
	bl sub_02036C94
_02036BBC:
	pop {r3, pc}
	nop
_02036BC0: .word 0x021C07D4
_02036BC4: .word sub_020377E4
	thumb_func_end sub_02036BA0

	thumb_func_start sub_02036BC8
sub_02036BC8: ; 0x02036BC8
	ldr r0, _02036BD4 ; =0x021C07D4
	mov r1, #0x12
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02036BD4: .word 0x021C07D4
	thumb_func_end sub_02036BC8

	thumb_func_start sub_02036BD8
sub_02036BD8: ; 0x02036BD8
	ldr r0, _02036BE4 ; =0x021C07D4
	mov r1, #9
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02036BE4: .word 0x021C07D4
	thumb_func_end sub_02036BD8

	thumb_func_start sub_02036BE8
sub_02036BE8: ; 0x02036BE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02036C10
	ldr r2, _02036C14 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020366A0
	ldr r0, _02036C18 ; =sub_02037E20
	mov r1, #0
	bl sub_02036C94
_02036C10:
	pop {r3, r4, r5, pc}
	nop
_02036C14: .word 0x00007080
_02036C18: .word sub_02037E20
	thumb_func_end sub_02036BE8

	thumb_func_start sub_02036C1C
sub_02036C1C: ; 0x02036C1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02036C44
	ldr r2, _02036C48 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020366A0
	ldr r0, _02036C4C ; =sub_02037E68
	mov r1, #0
	bl sub_02036C94
_02036C44:
	pop {r3, r4, r5, pc}
	nop
_02036C48: .word 0x00007080
_02036C4C: .word sub_02037E68
	thumb_func_end sub_02036C1C

	thumb_func_start sub_02036C50
sub_02036C50: ; 0x02036C50
	push {r3, lr}
	ldr r0, _02036C90 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02036C62
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02036C62
	blx r0
_02036C62:
	bl sub_020389B8
	cmp r0, #0
	beq _02036C78
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
	pop {r3, pc}
_02036C78:
	bl sub_02033E1C
	cmp r0, #0
	beq _02036C8C
	bl sub_020CE814
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02036C8C:
	pop {r3, pc}
	nop
_02036C90: .word 0x021C07D4
	thumb_func_end sub_02036C50

	thumb_func_start sub_02036C94
sub_02036C94: ; 0x02036C94
	ldr r2, _02036CA0 ; =0x021C07D4
	ldr r3, [r2, #0]
	str r0, [r3, #0x24]
	ldr r0, [r2, #0]
	str r1, [r0, #0x40]
	bx lr
	; .align 2, 0
_02036CA0: .word 0x021C07D4
	thumb_func_end sub_02036C94

	thumb_func_start sub_02036CA4
sub_02036CA4: ; 0x02036CA4
	push {r3, r4, r5, lr}
	ldr r0, _02036D70 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02036CB6
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, r4, r5, pc}
_02036CB6:
	bl sub_020334A4
	cmp r0, #0
	beq _02036D6C
	ldr r0, _02036D70 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02036D70 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	bl sub_02036168
	bl sub_02035EA8
	ldr r0, _02036D70 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x55
	ldrb r0, [r0]
	cmp r0, #0
	beq _02036D3E
	add r1, #0x4e
	ldrb r1, [r1]
	mov r0, #1
	mov r2, #0x7d
	lsl r2, r2, #2
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02036D6C
	ldr r0, _02036D70 ; =0x021C07D4
	ldr r5, [r0, #0]
	add r4, r5, #0
	add r4, #0xc
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #0xc]
	ldr r3, [r4, #4]
	bl sub_020E1F1C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #0xc]
	str r3, [r4, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x14
	mov r3, #0
	bl sub_020E1F1C
	mov r0, #0
	add r5, #0x4e
	strb r0, [r5]
	ldr r0, _02036D74 ; =sub_02037040
	add r1, #0x14
	bl sub_02036C94
	pop {r3, r4, r5, pc}
_02036D3E:
	mov r0, #1
	mov r2, #0x7d
	add r1, r0, #0
	lsl r2, r2, #2
	bl sub_020347B4
	cmp r0, #0
	beq _02036D6C
	ldr r0, _02036D70 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x57
	ldrb r0, [r0]
	cmp r0, #0
	beq _02036D64
	ldr r0, _02036D78 ; =sub_02037330
	mov r1, #0
	bl sub_02036C94
	pop {r3, r4, r5, pc}
_02036D64:
	ldr r0, _02036D7C ; =sub_02036E5C
	mov r1, #0x40
	bl sub_02036C94
_02036D6C:
	pop {r3, r4, r5, pc}
	nop
_02036D70: .word 0x021C07D4
_02036D74: .word sub_02037040
_02036D78: .word sub_02037330
_02036D7C: .word sub_02036E5C
	thumb_func_end sub_02036CA4

	thumb_func_start sub_02036D80
sub_02036D80: ; 0x02036D80
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02036DFA
	mov r0, #1
	bl sub_02036168
	bl sub_02035EA8
	ldr r0, _02036DFC ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x55
	ldrb r0, [r0]
	cmp r0, #0
	beq _02036DAA
	ldr r0, _02036E00 ; =sub_02036FD4
	mov r1, #0
	bl sub_02036C94
	pop {r3, r4, r5, pc}
_02036DAA:
	mov r2, #0x7d
	mov r0, #0
	mov r1, #1
	lsl r2, r2, #2
	bl sub_020347B4
	cmp r0, #0
	beq _02036DFA
	ldr r0, _02036DFC ; =0x021C07D4
	ldr r5, [r0, #0]
	add r4, r5, #0
	add r4, #0xc
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #0xc]
	ldr r3, [r4, #4]
	bl sub_020E1F1C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #0xc]
	mov r1, #0
	lsr r0, r3, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	add r0, r5, #0
	str r3, [r4, #4]
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	beq _02036DF4
	lsl r1, r0, #6
	mov r0, #0
	add r5, #0x44
	strh r0, [r5]
_02036DF4:
	ldr r0, _02036E04 ; =sub_02036E5C
	bl sub_02036C94
_02036DFA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02036DFC: .word 0x021C07D4
_02036E00: .word sub_02036FD4
_02036E04: .word sub_02036E5C
	thumb_func_end sub_02036D80

	thumb_func_start sub_02036E08
sub_02036E08: ; 0x02036E08
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02036E52
	mov r0, #0
	mov r2, #0x7d
	add r1, r0, #0
	lsl r2, r2, #2
	bl sub_020347B4
	cmp r0, #0
	beq _02036E52
	ldr r0, _02036E54 ; =0x021C07D4
	ldr r4, [r0, #0]
	add r5, r4, #0
	add r5, #0xc
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	mov r1, #0
	lsr r2, r3, #0x1b
	lsl r1, r1, #5
	orr r1, r2
	ldr r0, _02036E58 ; =sub_02036E5C
	add r1, #0x10
	str r3, [r5, #4]
	bl sub_02036C94
_02036E52:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02036E54: .word 0x021C07D4
_02036E58: .word sub_02036E5C
	thumb_func_end sub_02036E08

	thumb_func_start sub_02036E5C
sub_02036E5C: ; 0x02036E5C
	push {r3, lr}
	bl sub_02033A5C
	ldr r0, _02036ED0 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _02036ECC
	add r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0
	bne _02036ECC
	bl sub_020338EC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02036E96
	ldr r1, _02036ED0 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x49
	strb r0, [r1]
	ldr r0, _02036ED4 ; =sub_02036EDC
	mov r1, #0x20
	bl sub_02036C94
	pop {r3, pc}
_02036E96:
	ldr r0, _02036ED0 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02036EA6
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02036EA6:
	bl sub_0203394C
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02036EC4
	ldr r1, _02036ED0 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x49
	strb r0, [r1]
	ldr r0, _02036ED4 ; =sub_02036EDC
	mov r1, #0x20
	bl sub_02036C94
	pop {r3, pc}
_02036EC4:
	ldr r0, _02036ED8 ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
_02036ECC:
	pop {r3, pc}
	nop
_02036ED0: .word 0x021C07D4
_02036ED4: .word sub_02036EDC
_02036ED8: .word sub_02036FA4
	thumb_func_end sub_02036E5C

	thumb_func_start sub_02036EDC
sub_02036EDC: ; 0x02036EDC
	push {r3, lr}
	bl sub_02033A5C
	ldr r0, _02036F38 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02033898
	cmp r0, #0
	beq _02036F0C
	ldr r0, _02036F38 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02034984
	cmp r0, #0
	beq _02036F0C
	ldr r0, _02036F3C ; =sub_02036F44
	mov r1, #0x64
	bl sub_02036C94
	pop {r3, pc}
_02036F0C:
	bl sub_020360F0
	cmp r0, #0
	beq _02036F1E
	ldr r0, _02036F40 ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02036F1E:
	ldr r0, _02036F38 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02036F2E
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02036F2E:
	ldr r0, _02036F40 ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02036F38: .word 0x021C07D4
_02036F3C: .word sub_02036F44
_02036F40: .word sub_02036FA4
	thumb_func_end sub_02036EDC

	thumb_func_start sub_02036F44
sub_02036F44: ; 0x02036F44
	push {r3, lr}
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02036F6A
	bl sub_02034AE4
	mov r0, #0
	bl sub_02036168
	bl sub_02035EA8
	ldr r0, _02036F98 ; =sub_020370B8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02036F6A:
	bl sub_020360F0
	cmp r0, #0
	beq _02036F7C
	ldr r0, _02036F9C ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02036F7C:
	ldr r0, _02036FA0 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02036F8C
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02036F8C:
	ldr r0, _02036F9C ; =sub_02036FA4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	nop
_02036F98: .word sub_020370B8
_02036F9C: .word sub_02036FA4
_02036FA0: .word 0x021C07D4
	thumb_func_end sub_02036F44

	thumb_func_start sub_02036FA4
sub_02036FA4: ; 0x02036FA4
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _02036FB6
	ldr r0, _02036FB8 ; =sub_02036FD4
	mov r1, #0
	bl sub_02036C94
_02036FB6:
	pop {r3, pc}
	; .align 2, 0
_02036FB8: .word sub_02036FD4
	thumb_func_end sub_02036FA4

	thumb_func_start sub_02036FBC
sub_02036FBC: ; 0x02036FBC
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _02036FCE
	ldr r0, _02036FD0 ; =sub_02036E08
	mov r1, #0
	bl sub_02036C94
_02036FCE:
	pop {r3, pc}
	; .align 2, 0
_02036FD0: .word sub_02036E08
	thumb_func_end sub_02036FBC

	thumb_func_start sub_02036FD4
sub_02036FD4: ; 0x02036FD4
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02037036
	mov r0, #1
	bl sub_02036168
	ldr r1, _02037038 ; =0x021C07D4
	mov r2, #0x7d
	ldr r1, [r1, #0]
	mov r0, #0
	add r1, #0x4e
	ldrb r1, [r1]
	lsl r2, r2, #2
	mov r3, #1
	bl sub_02034778
	cmp r0, #0
	beq _02037036
	ldr r0, _02037038 ; =0x021C07D4
	ldr r5, [r0, #0]
	add r4, r5, #0
	add r4, #0xc
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, #0xc]
	ldr r3, [r4, #4]
	bl sub_020E1F1C
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r5, #0xc]
	str r3, [r4, #4]
	add r0, r3, #0
	mov r1, #0
	mov r2, #0x14
	mov r3, #0
	bl sub_020E1F1C
	mov r0, #0
	add r5, #0x4e
	strb r0, [r5]
	ldr r0, _0203703C ; =sub_02037040
	add r1, #0x14
	bl sub_02036C94
_02037036:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02037038: .word 0x021C07D4
_0203703C: .word sub_02037040
	thumb_func_end sub_02036FD4

	thumb_func_start sub_02037040
sub_02037040: ; 0x02037040
	push {r3, lr}
	bl sub_020360E8
	cmp r0, #0
	beq _0203705E
	ldr r0, _02037088 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x4e
	strb r1, [r0]
	ldr r0, _0203708C ; =sub_02037094
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_0203705E:
	ldr r0, _02037088 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0203706E
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_0203706E:
	add r1, #0x55
	ldrb r0, [r1]
	cmp r0, #0
	bne _02037086
	bl sub_020336D4
	cmp r0, #0
	beq _02037086
	ldr r0, _02037090 ; =sub_02036FBC
	mov r1, #2
	bl sub_02036C94
_02037086:
	pop {r3, pc}
	; .align 2, 0
_02037088: .word 0x021C07D4
_0203708C: .word sub_02037094
_02037090: .word sub_02036FBC
	thumb_func_end sub_02037040

	thumb_func_start sub_02037094
sub_02037094: ; 0x02037094
	push {r3, lr}
	mov r0, #0
	bl sub_02036168
	mov r0, #1
	bl sub_02033EA8
	bl sub_02035EA8
	ldr r0, _020370B0 ; =sub_020370B4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020370B0: .word sub_020370B4
	thumb_func_end sub_02037094

	thumb_func_start sub_020370B4
sub_020370B4: ; 0x020370B4
	bx lr
	; .align 2, 0
	thumb_func_end sub_020370B4

	thumb_func_start sub_020370B8
sub_020370B8: ; 0x020370B8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020370B8

	thumb_func_start sub_020370BC
sub_020370BC: ; 0x020370BC
	push {r3, lr}
	bl sub_020389B8
	cmp r0, #0
	bne _020370DE
	bl sub_02033E30
	cmp r0, #0
	beq _020370E6
	mov r0, #1
	bl sub_02036168
	bl sub_02035EA8
	mov r0, #1
	bl sub_02033794
_020370DE:
	ldr r0, _020370E8 ; =sub_02037330
	mov r1, #0
	bl sub_02036C94
_020370E6:
	pop {r3, pc}
	; .align 2, 0
_020370E8: .word sub_02037330
	thumb_func_end sub_020370BC

	thumb_func_start sub_020370EC
sub_020370EC: ; 0x020370EC
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _02037102
	bl sub_02034AE4
	ldr r0, _02037104 ; =sub_020370BC
	mov r1, #0
	bl sub_02036C94
_02037102:
	pop {r3, pc}
	; .align 2, 0
_02037104: .word sub_020370BC
	thumb_func_end sub_020370EC

	thumb_func_start sub_02037108
sub_02037108: ; 0x02037108
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037124
	mov r0, #0
	bl sub_02033794
	bl sub_02034AE4
	ldr r0, _02037128 ; =sub_02036D80
	mov r1, #0
	bl sub_02036C94
_02037124:
	pop {r3, pc}
	nop
_02037128: .word sub_02036D80
	thumb_func_end sub_02037108

	thumb_func_start sub_0203712C
sub_0203712C: ; 0x0203712C
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _0203713E
	ldr r0, _02037140 ; =sub_02036D80
	mov r1, #0
	bl sub_02036C94
_0203713E:
	pop {r3, pc}
	; .align 2, 0
_02037140: .word sub_02036D80
	thumb_func_end sub_0203712C

	thumb_func_start sub_02037144
sub_02037144: ; 0x02037144
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037182
	ldr r0, _02037184 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037184 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x30]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02037182
	bl sub_02034878
	ldr r0, _02037188 ; =sub_0203718C
	mov r1, #0
	bl sub_02036C94
_02037182:
	pop {r3, pc}
	; .align 2, 0
_02037184: .word 0x021C07D4
_02037188: .word sub_0203718C
	thumb_func_end sub_02037144

	thumb_func_start sub_0203718C
sub_0203718C: ; 0x0203718C
	push {r3, lr}
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _020371A2
	ldr r0, _020371A4 ; =sub_020371A8
	mov r1, #0
	bl sub_02036C94
_020371A2:
	pop {r3, pc}
	; .align 2, 0
_020371A4: .word sub_020371A8
	thumb_func_end sub_0203718C

	thumb_func_start sub_020371A8
sub_020371A8: ; 0x020371A8
	push {r3, lr}
	bl sub_02035E38
	cmp r0, #0
	bne _020371BA
	ldr r0, _020371BC ; =sub_02037334
	mov r1, #0
	bl sub_02036C94
_020371BA:
	pop {r3, pc}
	; .align 2, 0
_020371BC: .word sub_02037334
	thumb_func_end sub_020371A8

	thumb_func_start sub_020371C0
sub_020371C0: ; 0x020371C0
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _020371FC
	ldr r0, _02037200 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037200 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x30]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	bl sub_020347B4
	cmp r0, #0
	beq _020371FC
	bl sub_02034878
	ldr r0, _02037204 ; =sub_02037208
	mov r1, #0
	bl sub_02036C94
_020371FC:
	pop {r3, pc}
	nop
_02037200: .word 0x021C07D4
_02037204: .word sub_02037208
	thumb_func_end sub_020371C0

	thumb_func_start sub_02037208
sub_02037208: ; 0x02037208
	ldr r3, _0203720C ; =sub_02033A5C
	bx r3
	; .align 2, 0
_0203720C: .word sub_02033A5C
	thumb_func_end sub_02037208

	thumb_func_start sub_02037210
sub_02037210: ; 0x02037210
	push {r3, lr}
	bl sub_02033A5C
	ldr r0, _02037230 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02034984
	cmp r0, #0
	beq _0203722E
	ldr r0, _02037234 ; =sub_02037238
	mov r1, #0xa
	bl sub_02036C94
_0203722E:
	pop {r3, pc}
	; .align 2, 0
_02037230: .word 0x021C07D4
_02037234: .word sub_02037238
	thumb_func_end sub_02037210

	thumb_func_start sub_02037238
sub_02037238: ; 0x02037238
	push {r3, lr}
	bl sub_020360F0
	cmp r0, #0
	beq _0203724A
	ldr r0, _02037268 ; =sub_02037270
	mov r1, #0
	bl sub_02036C94
_0203724A:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02037266
	bl sub_0203608C
	cmp r0, #0
	beq _02037266
	ldr r0, _0203726C ; =sub_020372C4
	mov r1, #0
	bl sub_02036C94
_02037266:
	pop {r3, pc}
	; .align 2, 0
_02037268: .word sub_02037270
_0203726C: .word sub_020372C4
	thumb_func_end sub_02037238

	thumb_func_start sub_02037270
sub_02037270: ; 0x02037270
	push {r3, lr}
	bl sub_020336D4
	ldr r0, _02037280 ; =sub_02037284
	mov r1, #2
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02037280: .word sub_02037284
	thumb_func_end sub_02037270

	thumb_func_start sub_02037284
sub_02037284: ; 0x02037284
	push {r3, lr}
	ldr r0, _020372BC ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037296
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037296:
	bl sub_02033E30
	cmp r0, #0
	beq _020372B8
	mov r1, #1
	mov r0, #0
	lsl r2, r1, #9
	bl sub_020347B4
	cmp r0, #0
	beq _020372B8
	bl sub_02034878
	ldr r0, _020372C0 ; =sub_02037210
	mov r1, #0xa
	bl sub_02036C94
_020372B8:
	pop {r3, pc}
	nop
_020372BC: .word 0x021C07D4
_020372C0: .word sub_02037210
	thumb_func_end sub_02037284

	thumb_func_start sub_020372C4
sub_020372C4: ; 0x020372C4
	push {r3, lr}
	bl sub_02035E38
	cmp r0, #0
	bne _020372D6
	ldr r0, _020372D8 ; =sub_02037334
	mov r1, #0
	bl sub_02036C94
_020372D6:
	pop {r3, pc}
	; .align 2, 0
_020372D8: .word sub_02037334
	thumb_func_end sub_020372C4

	thumb_func_start sub_020372DC
sub_020372DC: ; 0x020372DC
	push {r3, lr}
	bl sub_020336D4
	ldr r0, _020372EC ; =sub_020372F0
	mov r1, #2
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020372EC: .word sub_020372F0
	thumb_func_end sub_020372DC

	thumb_func_start sub_020372F0
sub_020372F0: ; 0x020372F0
	push {r3, lr}
	ldr r0, _02037328 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037302
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037302:
	bl sub_02033E30
	cmp r0, #0
	beq _02037324
	mov r1, #1
	mov r0, #0
	lsl r2, r1, #9
	bl sub_020347B4
	cmp r0, #0
	beq _02037324
	bl sub_02034878
	ldr r0, _0203732C ; =sub_02037208
	mov r1, #0xa
	bl sub_02036C94
_02037324:
	pop {r3, pc}
	nop
_02037328: .word 0x021C07D4
_0203732C: .word sub_02037208
	thumb_func_end sub_020372F0

	thumb_func_start sub_02037330
sub_02037330: ; 0x02037330
	bx lr
	; .align 2, 0
	thumb_func_end sub_02037330

	thumb_func_start sub_02037334
sub_02037334: ; 0x02037334
	push {r3, lr}
	bl sub_02035E38
	cmp r0, #0
	bne _02037342
	bl sub_02036734
_02037342:
	pop {r3, pc}
	thumb_func_end sub_02037334

	thumb_func_start sub_02037344
sub_02037344: ; 0x02037344
	ldr r3, _0203734C ; =sub_02036C94
	ldr r0, _02037350 ; =sub_020373B8
	mov r1, #5
	bx r3
	; .align 2, 0
_0203734C: .word sub_02036C94
_02037350: .word sub_020373B8
	thumb_func_end sub_02037344

	thumb_func_start sub_02037354
sub_02037354: ; 0x02037354
	push {r3, lr}
	bl sub_02035E18
	cmp r0, #1
	bgt _02037370
	mov r0, #0
	bl sub_02032160
	bl sub_02034B04
	ldr r0, _02037394 ; =sub_02037474
	mov r1, #0
	bl sub_02036C94
_02037370:
	ldr r0, _02037398 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037380
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037380:
	mov r0, #0
	bl sub_02032160
	bl sub_02034B04
	ldr r0, _02037394 ; =sub_02037474
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02037394: .word sub_02037474
_02037398: .word 0x021C07D4
	thumb_func_end sub_02037354

	thumb_func_start sub_0203739C
sub_0203739C: ; 0x0203739C
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _020373B2
	bl sub_02034AE4
	ldr r0, _020373B4 ; =sub_02037474
	mov r1, #0
	bl sub_02036C94
_020373B2:
	pop {r3, pc}
	; .align 2, 0
_020373B4: .word sub_02037474
	thumb_func_end sub_0203739C

	thumb_func_start sub_020373B8
sub_020373B8: ; 0x020373B8
	push {r3, lr}
	ldr r0, _020373E8 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _020373C8
	sub r0, r0, #1
	str r0, [r1, #0x40]
_020373C8:
	bl sub_020336D4
	cmp r0, #0
	beq _020373E6
	ldr r0, _020373E8 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bne _020373E6
	bl sub_020348C4
	ldr r0, _020373EC ; =sub_02037334
	mov r1, #0
	bl sub_02036C94
_020373E6:
	pop {r3, pc}
	; .align 2, 0
_020373E8: .word 0x021C07D4
_020373EC: .word sub_02037334
	thumb_func_end sub_020373B8

	thumb_func_start sub_020373F0
sub_020373F0: ; 0x020373F0
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037438
	ldr r0, _0203743C ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _0203743C ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x46
	ldrb r0, [r0]
	bl sub_02031FA4
	ldr r0, _0203743C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	bl sub_020347B4
	cmp r0, #0
	beq _02037438
	bl sub_02034878
	ldr r0, _02037440 ; =sub_02037444
	mov r1, #0x40
	bl sub_02036C94
_02037438:
	pop {r3, pc}
	nop
_0203743C: .word 0x021C07D4
_02037440: .word sub_02037444
	thumb_func_end sub_020373F0

	thumb_func_start sub_02037444
sub_02037444: ; 0x02037444
	push {r3, lr}
	bl sub_02033A5C
	ldr r0, _0203746C ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0203745A
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_0203745A:
	bl sub_020336D4
	cmp r0, #0
	beq _0203746A
	ldr r0, _02037470 ; =sub_0203748C
	mov r1, #0
	bl sub_02036C94
_0203746A:
	pop {r3, pc}
	; .align 2, 0
_0203746C: .word 0x021C07D4
_02037470: .word sub_0203748C
	thumb_func_end sub_02037444

	thumb_func_start sub_02037474
sub_02037474: ; 0x02037474
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _02037486
	ldr r0, _02037488 ; =sub_0203748C
	mov r1, #0
	bl sub_02036C94
_02037486:
	pop {r3, pc}
	; .align 2, 0
_02037488: .word sub_0203748C
	thumb_func_end sub_02037474

	thumb_func_start sub_0203748C
sub_0203748C: ; 0x0203748C
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _020374E4
	ldr r1, _020374E8 ; =0x021C07D4
	mov r2, #2
	ldr r1, [r1, #0]
	mov r0, #0
	add r1, #0x4e
	ldrb r1, [r1]
	lsl r2, r2, #8
	mov r3, #1
	bl sub_02034778
	cmp r0, #0
	beq _020374E4
	ldr r0, _020374E8 ; =0x021C07D4
	ldr r4, [r0, #0]
	add r5, r4, #0
	add r5, #0xc
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	str r3, [r5, #4]
	bl sub_02034878
	ldr r0, _020374E8 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4e
	strb r1, [r0]
	ldr r0, _020374EC ; =sub_020374F4
	ldr r1, _020374F0 ; =0x00002710
	bl sub_02036C94
_020374E4:
	pop {r3, r4, r5, pc}
	nop
_020374E8: .word 0x021C07D4
_020374EC: .word sub_020374F4
_020374F0: .word 0x00002710
	thumb_func_end sub_0203748C

	thumb_func_start sub_020374F4
sub_020374F4: ; 0x020374F4
	push {r3, lr}
	bl sub_02034148
	cmp r0, #0
	bne _0203752E
	bl sub_020360E8
	cmp r0, #0
	beq _0203751E
	ldr r0, _02037540 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x4e
	strb r1, [r0]
	bl sub_02039734
	ldr r0, _02037544 ; =sub_02037790
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_0203751E:
	ldr r0, _02037540 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _0203752E
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_0203752E:
	bl sub_020336D4
	cmp r0, #0
	beq _0203753E
	ldr r0, _02037548 ; =sub_0203754C
	mov r1, #0
	bl sub_02036C94
_0203753E:
	pop {r3, pc}
	; .align 2, 0
_02037540: .word 0x021C07D4
_02037544: .word sub_02037790
_02037548: .word sub_0203754C
	thumb_func_end sub_020374F4

	thumb_func_start sub_0203754C
sub_0203754C: ; 0x0203754C
	push {r3, r4, r5, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02037598
	mov r0, #0
	mov r2, #2
	add r1, r0, #0
	lsl r2, r2, #8
	bl sub_020347B4
	cmp r0, #0
	beq _02037598
	bl sub_02034878
	ldr r0, _0203759C ; =0x021C07D4
	ldr r4, [r0, #0]
	add r5, r4, #0
	add r5, #0xc
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, #4]
	bl sub_020E1F1C
	ldr r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	mov r1, #0
	ldr r0, _020375A0 ; =sub_02037444
	lsr r2, r3, #0x1b
	lsl r1, r1, #5
	orr r1, r2
	str r3, [r5, #4]
	bl sub_02036C94
_02037598:
	pop {r3, r4, r5, pc}
	nop
_0203759C: .word 0x021C07D4
_020375A0: .word sub_02037444
	thumb_func_end sub_0203754C

	thumb_func_start sub_020375A4
sub_020375A4: ; 0x020375A4
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _020375B6
	ldr r0, _020375B8 ; =sub_020375BC
	mov r1, #0
	bl sub_02036C94
_020375B6:
	pop {r3, pc}
	; .align 2, 0
_020375B8: .word sub_020375BC
	thumb_func_end sub_020375A4

	thumb_func_start sub_020375BC
sub_020375BC: ; 0x020375BC
	push {r3, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _020375E2
	mov r0, #0
	mov r2, #2
	add r1, r0, #0
	lsl r2, r2, #8
	bl sub_020347B4
	cmp r0, #0
	beq _020375E2
	bl sub_02034878
	ldr r0, _020375E4 ; =sub_020375E8
	mov r1, #0x64
	bl sub_02036C94
_020375E2:
	pop {r3, pc}
	; .align 2, 0
_020375E4: .word sub_020375E8
	thumb_func_end sub_020375BC

	thumb_func_start sub_020375E8
sub_020375E8: ; 0x020375E8
	push {r3, lr}
	ldr r0, _02037640 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02033898
	cmp r0, #0
	beq _02037614
	ldr r0, _02037640 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02034984
	cmp r0, #0
	beq _02037614
	ldr r0, _02037644 ; =sub_0203764C
	mov r1, #0x64
	bl sub_02036C94
	pop {r3, pc}
_02037614:
	bl sub_020360F0
	cmp r0, #0
	beq _02037626
	ldr r0, _02037648 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037626:
	ldr r0, _02037640 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037636
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037636:
	ldr r0, _02037648 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02037640: .word 0x021C07D4
_02037644: .word sub_0203764C
_02037648: .word sub_02037740
	thumb_func_end sub_020375E8

	thumb_func_start sub_0203764C
sub_0203764C: ; 0x0203764C
	push {r3, lr}
	bl sub_020360F0
	cmp r0, #0
	beq _02037660
	ldr r0, _0203769C ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037660:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02037680
	ldr r0, _020376A0 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x48
	strb r1, [r0]
	ldr r0, _020376A4 ; =sub_020376A8
	mov r1, #0x78
	bl sub_02036C94
	pop {r3, pc}
_02037680:
	ldr r0, _020376A0 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037690
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037690:
	ldr r0, _0203769C ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	nop
_0203769C: .word sub_02037740
_020376A0: .word 0x021C07D4
_020376A4: .word sub_020376A8
	thumb_func_end sub_0203764C

	thumb_func_start sub_020376A8
sub_020376A8: ; 0x020376A8
	push {r3, lr}
	bl sub_020360F0
	cmp r0, #0
	beq _020376BC
	ldr r0, _02037710 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020376BC:
	ldr r0, _02037714 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x48
	ldrb r0, [r0]
	cmp r0, #2
	bne _020376D4
	ldr r0, _02037718 ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020376D4:
	cmp r0, #1
	bne _020376E6
	bl sub_02032AC0
	ldr r0, _0203771C ; =sub_02037724
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020376E6:
	ldr r0, [r1, #0x40]
	cmp r0, #0x6e
	ble _020376F4
	ldr r1, _02037720 ; =0x02100A20
	mov r0, #6
	bl sub_020360D0
_020376F4:
	ldr r0, _02037714 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	beq _02037704
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_02037704:
	ldr r0, _02037710 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	nop
_02037710: .word sub_02037740
_02037714: .word 0x021C07D4
_02037718: .word sub_0203773C
_0203771C: .word sub_02037724
_02037720: .word 0x02100A20
	thumb_func_end sub_020376A8

	thumb_func_start sub_02037724
sub_02037724: ; 0x02037724
	push {r3, lr}
	bl sub_020360F0
	cmp r0, #0
	beq _02037736
	ldr r0, _02037738 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
_02037736:
	pop {r3, pc}
	; .align 2, 0
_02037738: .word sub_02037740
	thumb_func_end sub_02037724

	thumb_func_start sub_0203773C
sub_0203773C: ; 0x0203773C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203773C

	thumb_func_start sub_02037740
sub_02037740: ; 0x02037740
	push {r3, lr}
	ldr r0, _02037784 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x48
	strb r1, [r0]
	bl sub_020336D4
	cmp r0, #0
	beq _02037780
	ldr r0, _02037784 ; =0x021C07D4
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	beq _02037778
	add r0, r1, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r1, #0x44
	sub r0, r0, #1
	strh r0, [r1]
	ldr r0, _02037788 ; =sub_020375BC
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037778:
	ldr r0, _0203778C ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
_02037780:
	pop {r3, pc}
	nop
_02037784: .word 0x021C07D4
_02037788: .word sub_020375BC
_0203778C: .word sub_0203773C
	thumb_func_end sub_02037740

	thumb_func_start sub_02037790
sub_02037790: ; 0x02037790
	push {r3, lr}
	bl sub_020360E8
	cmp r0, #0
	bne _020377B4
	bl sub_02038938
	cmp r0, #0
	bne _020377C0
	bl sub_020336D4
	cmp r0, #0
	beq _020377C0
	ldr r0, _020377DC ; =sub_0203754C
	mov r1, #0
	bl sub_02036C94
	b _020377C0
_020377B4:
	bl sub_0203608C
	cmp r0, #0
	bne _020377C0
	bl sub_02032CE8
_020377C0:
	bl sub_020360F0
	cmp r0, #0
	beq _020377D8
	bl sub_02038938
	cmp r0, #0
	bne _020377D8
	ldr r0, _020377E0 ; =sub_02037740
	mov r1, #0
	bl sub_02036C94
_020377D8:
	pop {r3, pc}
	nop
_020377DC: .word sub_0203754C
_020377E0: .word sub_02037740
	thumb_func_end sub_02037790

	thumb_func_start sub_020377E4
sub_020377E4: ; 0x020377E4
	push {r3, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02037812
	ldr r1, _02037814 ; =0x021C07D4
	mov r0, #0
	ldr r1, [r1, #0]
	mov r2, #2
	add r1, #0x4e
	ldrb r1, [r1]
	lsl r2, r2, #8
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02037812
	bl sub_02034878
	ldr r0, _02037818 ; =sub_02037330
	mov r1, #0
	bl sub_02036C94
_02037812:
	pop {r3, pc}
	; .align 2, 0
_02037814: .word 0x021C07D4
_02037818: .word sub_02037330
	thumb_func_end sub_020377E4

	thumb_func_start sub_0203781C
sub_0203781C: ; 0x0203781C
	push {r3, lr}
	ldr r0, _02037850 ; =0x021C07D4
	mov r1, #0xd
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bl sub_0203608C
	cmp r0, #0
	add r0, sp, #0
	bne _02037842
	mov r1, #0
	strb r1, [r0, #1]
	add r1, sp, #0
	mov r0, #0xa
	add r1, #1
	bl sub_020360D0
	pop {r3, pc}
_02037842:
	mov r1, #0
	strb r1, [r0]
	mov r0, #0xa
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	; .align 2, 0
_02037850: .word 0x021C07D4
	thumb_func_end sub_0203781C

	thumb_func_start sub_02037854
sub_02037854: ; 0x02037854
	ldr r1, _0203786C ; =0x021C07D4
	ldr r3, _02037870 ; =sub_02036C94
	ldr r2, [r1, #0]
	add r2, #0x49
	strb r0, [r2]
	ldr r0, [r1, #0]
	mov r2, #3
	add r0, #0x44
	strh r2, [r0]
	ldr r0, _02037874 ; =sub_020378F8
	mov r1, #0
	bx r3
	; .align 2, 0
_0203786C: .word 0x021C07D4
_02037870: .word sub_02036C94
_02037874: .word sub_020378F8
	thumb_func_end sub_02037854

	thumb_func_start sub_02037878
sub_02037878: ; 0x02037878
	ldr r0, _02037884 ; =0x021C07D4
	mov r1, #7
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02037884: .word 0x021C07D4
	thumb_func_end sub_02037878

	thumb_func_start sub_02037888
sub_02037888: ; 0x02037888
	push {r3, lr}
	ldr r1, _020378B0 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r2, #0x49
	strb r0, [r2]
	ldr r0, [r1, #0]
	mov r2, #7
	add r0, #0x4a
	strb r2, [r0]
	ldr r0, [r1, #0]
	mov r2, #3
	add r0, #0x44
	strh r2, [r0]
	bl sub_02039734
	ldr r0, _020378B4 ; =sub_020375A4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020378B0: .word 0x021C07D4
_020378B4: .word sub_020375A4
	thumb_func_end sub_02037888

	thumb_func_start sub_020378B8
sub_020378B8: ; 0x020378B8
	ldr r0, _020378C4 ; =0x021C07D4
	mov r1, #0x1a
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_020378C4: .word 0x021C07D4
	thumb_func_end sub_020378B8

	thumb_func_start sub_020378C8
sub_020378C8: ; 0x020378C8
	push {r3, lr}
	ldr r1, _020378F0 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r2, #0x49
	strb r0, [r2]
	ldr r0, [r1, #0]
	mov r2, #0x1a
	add r0, #0x4a
	strb r2, [r0]
	ldr r0, [r1, #0]
	mov r2, #3
	add r0, #0x44
	strh r2, [r0]
	bl sub_02039734
	ldr r0, _020378F4 ; =sub_020375A4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020378F0: .word 0x021C07D4
_020378F4: .word sub_020375A4
	thumb_func_end sub_020378C8

	thumb_func_start sub_020378F8
sub_020378F8: ; 0x020378F8
	push {r3, lr}
	bl sub_020336D4
	cmp r0, #0
	beq _0203790A
	ldr r0, _0203790C ; =sub_02037910
	mov r1, #0
	bl sub_02036C94
_0203790A:
	pop {r3, pc}
	; .align 2, 0
_0203790C: .word sub_02037910
	thumb_func_end sub_020378F8

	thumb_func_start sub_02037910
sub_02037910: ; 0x02037910
	push {r3, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02037940
	ldr r0, _02037944 ; =0x021C07D4
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0xd
	add r0, #0x4a
	strb r1, [r0]
	mov r0, #0
	add r1, r0, #0
	lsl r2, r2, #8
	bl sub_020347B4
	cmp r0, #0
	beq _02037940
	bl sub_02034884
	ldr r0, _02037948 ; =sub_0203794C
	mov r1, #0x64
	bl sub_02036C94
_02037940:
	pop {r3, pc}
	nop
_02037944: .word 0x021C07D4
_02037948: .word sub_0203794C
	thumb_func_end sub_02037910

	thumb_func_start sub_0203794C
sub_0203794C: ; 0x0203794C
	push {r3, lr}
	ldr r0, _020379C0 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02033898
	cmp r0, #0
	beq _02037978
	ldr r0, _020379C0 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x49
	ldrb r0, [r0]
	bl sub_02034984
	cmp r0, #0
	beq _02037978
	ldr r0, _020379C4 ; =sub_020379D0
	mov r1, #0x64
	bl sub_02036C94
	pop {r3, pc}
_02037978:
	bl sub_020360F0
	cmp r0, #0
	bne _0203798A
	ldr r0, _020379C0 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	bne _020379B8
_0203798A:
	ldr r1, _020379C0 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r0, r2, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r2, #0x44
	sub r0, r0, #1
	strh r0, [r2]
	ldr r0, [r1, #0]
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _020379AE
	ldr r0, _020379C8 ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020379AE:
	ldr r0, _020379CC ; =sub_020378F8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020379B8:
	beq _020379BE
	sub r0, r0, #1
	str r0, [r1, #0x40]
_020379BE:
	pop {r3, pc}
	; .align 2, 0
_020379C0: .word 0x021C07D4
_020379C4: .word sub_020379D0
_020379C8: .word sub_0203773C
_020379CC: .word sub_020378F8
	thumb_func_end sub_0203794C

	thumb_func_start sub_020379D0
sub_020379D0: ; 0x020379D0
	push {r3, lr}
	ldr r0, _02037A68 ; =0x021C07D4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0x5a
	ble _020379E2
	sub r0, r0, #1
	str r0, [r1, #0x40]
	pop {r3, pc}
_020379E2:
	bl sub_020360F0
	cmp r0, #0
	beq _02037A18
	ldr r1, _02037A68 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r0, r2, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r2, #0x44
	sub r0, r0, #1
	strh r0, [r2]
	ldr r0, [r1, #0]
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02037A0E
	ldr r0, _02037A6C ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037A0E:
	ldr r0, _02037A70 ; =sub_020378F8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037A18:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02037A2E
	ldr r0, _02037A74 ; =sub_02037724
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037A2E:
	ldr r1, _02037A68 ; =0x021C07D4
	ldr r2, [r1, #0]
	ldr r0, [r2, #0x40]
	cmp r0, #0
	beq _02037A3E
	sub r0, r0, #1
	str r0, [r2, #0x40]
	pop {r3, pc}
_02037A3E:
	add r0, r2, #0
	add r0, #0x44
	ldrh r0, [r0]
	add r2, #0x44
	sub r0, r0, #1
	strh r0, [r2]
	ldr r0, [r1, #0]
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _02037A5E
	ldr r0, _02037A6C ; =sub_0203773C
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037A5E:
	ldr r0, _02037A70 ; =sub_020378F8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02037A68: .word 0x021C07D4
_02037A6C: .word sub_0203773C
_02037A70: .word sub_020378F8
_02037A74: .word sub_02037724
	thumb_func_end sub_020379D0

	thumb_func_start sub_02037A78
sub_02037A78: ; 0x02037A78
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0203608C
	cmp r0, #0
	bne _02037AC6
	ldr r6, _02037AC8 ; =0x02100A20
	mov r3, #1
	mov r2, #0
_02037A8C:
	ldrb r1, [r6]
	ldrb r0, [r4, r2]
	cmp r1, r0
	beq _02037A98
	mov r3, #0
	b _02037AA0
_02037A98:
	add r2, r2, #1
	add r6, r6, #1
	cmp r2, #6
	blo _02037A8C
_02037AA0:
	cmp r3, #0
	beq _02037ABC
	ldr r0, _02037ACC ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x53
	ldrb r0, [r0]
	cmp r0, #0
	bne _02037ABC
	ldr r1, _02037AD0 ; =0x02100A30
	mov r0, #7
	strb r5, [r1]
	bl sub_02035B48
	pop {r4, r5, r6, pc}
_02037ABC:
	ldr r1, _02037AD4 ; =0x02100A28
	mov r0, #7
	strb r5, [r1]
	bl sub_02035B48
_02037AC6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02037AC8: .word 0x02100A20
_02037ACC: .word 0x021C07D4
_02037AD0: .word 0x02100A30
_02037AD4: .word 0x02100A28
	thumb_func_end sub_02037A78

	thumb_func_start sub_02037AD8
sub_02037AD8: ; 0x02037AD8
	push {r3, r4, r5, lr}
	mov r4, #1
	ldr r5, _02037B48 ; =0x02100A31
	add r3, r4, #0
_02037AE0:
	ldrb r1, [r5]
	ldrb r0, [r2, r3]
	cmp r1, r0
	beq _02037AEC
	mov r4, #0
	b _02037AF4
_02037AEC:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #6
	blo _02037AE0
_02037AF4:
	cmp r4, #0
	beq _02037B0E
	ldrb r4, [r2]
	bl sub_0203608C
	cmp r4, r0
	bne _02037B44
	ldr r0, _02037B4C ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x48
	strb r1, [r0]
	pop {r3, r4, r5, pc}
_02037B0E:
	mov r4, #1
	ldr r3, _02037B50 ; =0x02100A29
	add r5, r4, #0
_02037B14:
	ldrb r1, [r3]
	ldrb r0, [r2, r5]
	cmp r1, r0
	beq _02037B20
	mov r4, #0
	b _02037B28
_02037B20:
	add r5, r5, #1
	add r3, r3, #1
	cmp r5, #6
	blo _02037B14
_02037B28:
	cmp r4, #0
	beq _02037B44
	ldrb r4, [r2]
	bl sub_0203608C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r4, r0
	bne _02037B44
	ldr r0, _02037B4C ; =0x021C07D4
	mov r1, #2
	ldr r0, [r0, #0]
	add r0, #0x48
	strb r1, [r0]
_02037B44:
	pop {r3, r4, r5, pc}
	nop
_02037B48: .word 0x02100A31
_02037B4C: .word 0x021C07D4
_02037B50: .word 0x02100A29
	thumb_func_end sub_02037AD8

	thumb_func_start sub_02037B54
sub_02037B54: ; 0x02037B54
	mov r0, #6
	bx lr
	thumb_func_end sub_02037B54

	thumb_func_start sub_02037B58
sub_02037B58: ; 0x02037B58
	push {r3, lr}
	ldr r1, _02037B6C ; =0x021C07D4
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02037B6A
	add r1, #0x46
	strb r0, [r1]
	bl sub_02031FA4
_02037B6A:
	pop {r3, pc}
	; .align 2, 0
_02037B6C: .word 0x021C07D4
	thumb_func_end sub_02037B58

	thumb_func_start sub_02037B70
sub_02037B70: ; 0x02037B70
	ldr r3, _02037B74 ; =sub_02033A5C
	bx r3
	; .align 2, 0
_02037B74: .word sub_02033A5C
	thumb_func_end sub_02037B70

	thumb_func_start sub_02037B78
sub_02037B78: ; 0x02037B78
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037BB4
	ldr r0, _02037BB8 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037BB8 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	mov r2, #0x20
	bl sub_020347B4
	cmp r0, #0
	beq _02037BB4
	bl sub_02034878
	ldr r0, _02037BBC ; =sub_02037B70
	mov r1, #0
	bl sub_02036C94
_02037BB4:
	pop {r3, pc}
	nop
_02037BB8: .word 0x021C07D4
_02037BBC: .word sub_02037B70
	thumb_func_end sub_02037B78

	thumb_func_start sub_02037BC0
sub_02037BC0: ; 0x02037BC0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02037BF0
	mov r2, #7
	mov r0, #3
	mov r1, #0xf
	lsl r2, r2, #0xc
	bl sub_02017FD4
	add r0, r4, #0
	mov r1, #0xe
	bl sub_020366A0
	ldr r0, _02037BF4 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, _02037BF8 ; =sub_02037B78
	bl sub_02036C94
_02037BF0:
	pop {r4, pc}
	nop
_02037BF4: .word 0x021C07D4
_02037BF8: .word sub_02037B78
	thumb_func_end sub_02037BC0

	thumb_func_start sub_02037BFC
sub_02037BFC: ; 0x02037BFC
	push {r3, lr}
	ldr r0, _02037C10 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02037C0E
	ldr r0, _02037C14 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_02037C0E:
	pop {r3, pc}
	; .align 2, 0
_02037C10: .word 0x021C07D4
_02037C14: .word sub_020373B8
	thumb_func_end sub_02037BFC

	thumb_func_start sub_02037C18
sub_02037C18: ; 0x02037C18
	sub sp, #8
	ldr r1, _02037C54 ; =0x020E5E74
	add r0, sp, #0
	ldr r2, [r1, #0]
	ldr r1, [r1, #4]
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, _02037C58 ; =0x021C07D4
	ldr r1, [r1, #0]
	ldr r3, [r1, #0x24]
	cmp r1, #0
	bne _02037C36
	mov r0, #0
	add sp, #8
	bx lr
_02037C36:
	cmp r2, #0
	beq _02037C4E
_02037C3A:
	ldr r1, [r0, #0]
	cmp r3, r1
	bne _02037C46
	mov r0, #1
	add sp, #8
	bx lr
_02037C46:
	add r0, r0, #4
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _02037C3A
_02037C4E:
	mov r0, #0
	add sp, #8
	bx lr
	; .align 2, 0
_02037C54: .word 0x020E5E74
_02037C58: .word 0x021C07D4
	thumb_func_end sub_02037C18

	thumb_func_start sub_02037C5C
sub_02037C5C: ; 0x02037C5C
	ldr r2, _02037CD4 ; =0x00400131
	cmp r0, r2
	bhi _02037C6C
	bhs _02037CAA
	ldr r2, _02037CD8 ; =0x00000333
	cmp r0, r2
	beq _02037C7E
	bx lr
_02037C6C:
	ldr r1, _02037CDC ; =0x00400286
	cmp r0, r1
	bhi _02037C76
	beq _02037CBE
	bx lr
_02037C76:
	add r1, #0x92
	cmp r0, r1
	beq _02037C96
	bx lr
_02037C7E:
	cmp r1, #0xf
	bne _02037CD0
	ldr r0, _02037CE0 ; =0x021C07D4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x54
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x54
	orr r0, r1
	strb r0, [r2]
	bx lr
_02037C96:
	ldr r0, _02037CE0 ; =0x021C07D4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x54
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x54
	orr r0, r1
	strb r0, [r2]
	bx lr
_02037CAA:
	ldr r0, _02037CE0 ; =0x021C07D4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x54
	ldrb r1, [r0]
	mov r0, #2
	add r2, #0x54
	orr r0, r1
	strb r0, [r2]
	bx lr
_02037CBE:
	ldr r0, _02037CE0 ; =0x021C07D4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x54
	ldrb r1, [r0]
	mov r0, #4
	add r2, #0x54
	orr r0, r1
	strb r0, [r2]
_02037CD0:
	bx lr
	nop
_02037CD4: .word 0x00400131
_02037CD8: .word 0x00000333
_02037CDC: .word 0x00400286
_02037CE0: .word 0x021C07D4
	thumb_func_end sub_02037C5C

	thumb_func_start sub_02037CE4
sub_02037CE4: ; 0x02037CE4
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	mov r2, #0x20
	bl sub_020347B4
	cmp r0, #0
	beq _02037D00
	bl sub_02034878
	ldr r0, _02037D04 ; =sub_02037B70
	mov r1, #0
	bl sub_02036C94
_02037D00:
	pop {r3, pc}
	nop
_02037D04: .word sub_02037B70
	thumb_func_end sub_02037CE4

	thumb_func_start sub_02037D08
sub_02037D08: ; 0x02037D08
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037D38
	ldr r0, _02037D3C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037D3C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	ldr r0, _02037D40 ; =sub_02037C5C
	bl sub_020320FC
	ldr r0, _02037D44 ; =sub_02037CE4
	mov r1, #0
	bl sub_02036C94
_02037D38:
	pop {r3, pc}
	nop
_02037D3C: .word 0x021C07D4
_02037D40: .word sub_02037C5C
_02037D44: .word sub_02037CE4
	thumb_func_end sub_02037D08

	thumb_func_start sub_02037D48
sub_02037D48: ; 0x02037D48
	push {r4, lr}
	add r4, r0, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02037D78
	mov r2, #7
	mov r0, #3
	mov r1, #0xf
	lsl r2, r2, #0xc
	bl sub_02017FD4
	add r0, r4, #0
	mov r1, #0x11
	bl sub_020366A0
	ldr r0, _02037D7C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, _02037D80 ; =sub_02037D08
	bl sub_02036C94
_02037D78:
	pop {r4, pc}
	nop
_02037D7C: .word 0x021C07D4
_02037D80: .word sub_02037D08
	thumb_func_end sub_02037D48

	thumb_func_start sub_02037D84
sub_02037D84: ; 0x02037D84
	push {r3, lr}
	ldr r0, _02037D98 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02037D96
	ldr r0, _02037D9C ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_02037D96:
	pop {r3, pc}
	; .align 2, 0
_02037D98: .word 0x021C07D4
_02037D9C: .word sub_020373B8
	thumb_func_end sub_02037D84

	thumb_func_start sub_02037DA0
sub_02037DA0: ; 0x02037DA0
	ldr r0, _02037DAC ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x54
	ldrb r0, [r0]
	bx lr
	nop
_02037DAC: .word 0x021C07D4
	thumb_func_end sub_02037DA0

	thumb_func_start sub_02037DB0
sub_02037DB0: ; 0x02037DB0
	push {r3, lr}
	bl sub_020363D0
	ldr r0, _02037E10 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02037DC2
	mov r0, #1
	pop {r3, pc}
_02037DC2:
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _02037DD2
	cmp r0, #0x19
	beq _02037DD2
	cmp r0, #0x24
	bne _02037DDA
_02037DD2:
	bl ov4_021D2184
	mov r0, #1
	pop {r3, pc}
_02037DDA:
	bl sub_020389B8
	cmp r0, #0
	beq _02037E02
	ldr r0, _02037E10 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _02037DF8
	ldr r0, _02037E14 ; =sub_02038D80
	mov r1, #0
	bl sub_02036C94
	b _02037E0A
_02037DF8:
	ldr r0, _02037E18 ; =sub_02038314
	mov r1, #0
	bl sub_02036C94
	b _02037E0A
_02037E02:
	ldr r0, _02037E1C ; =sub_020370EC
	mov r1, #0
	bl sub_02036C94
_02037E0A:
	mov r0, #0
	pop {r3, pc}
	nop
_02037E10: .word 0x021C07D4
_02037E14: .word sub_02038D80
_02037E18: .word sub_02038314
_02037E1C: .word sub_020370EC
	thumb_func_end sub_02037DB0

	thumb_func_start sub_02037E20
sub_02037E20: ; 0x02037E20
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037E5E
	ldr r0, _02037E60 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037E60 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02037E5E
	bl sub_02034878
	ldr r0, _02037E64 ; =sub_0203718C
	mov r1, #0
	bl sub_02036C94
_02037E5E:
	pop {r3, pc}
	; .align 2, 0
_02037E60: .word 0x021C07D4
_02037E64: .word sub_0203718C
	thumb_func_end sub_02037E20

	thumb_func_start sub_02037E68
sub_02037E68: ; 0x02037E68
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02037EA4
	ldr r0, _02037EA8 ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x2c]
	bl sub_02033200
	ldr r0, _02037EA8 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_020329E0
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	bl sub_020347B4
	cmp r0, #0
	beq _02037EA4
	bl sub_02034878
	ldr r0, _02037EAC ; =sub_02037208
	mov r1, #0
	bl sub_02036C94
_02037EA4:
	pop {r3, pc}
	nop
_02037EA8: .word 0x021C07D4
_02037EAC: .word sub_02037208
	thumb_func_end sub_02037E68

	thumb_func_start sub_02037EB0
sub_02037EB0: ; 0x02037EB0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02037EB0

	thumb_func_start sub_02037EB4
sub_02037EB4: ; 0x02037EB4
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0
	bge _02037EC8
	ldr r0, _02037ECC ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02037EC8:
	pop {r3, pc}
	nop
_02037ECC: .word sub_02037EB0
	thumb_func_end sub_02037EB4

	thumb_func_start sub_02037ED0
sub_02037ED0: ; 0x02037ED0
	bx lr
	; .align 2, 0
	thumb_func_end sub_02037ED0

	thumb_func_start sub_02037ED4
sub_02037ED4: ; 0x02037ED4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02037ED4

	thumb_func_start sub_02037ED8
sub_02037ED8: ; 0x02037ED8
	push {r3, lr}
	mov r0, #1
	bl sub_020362B4
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0xa
	blt _02037EF8
	cmp r0, #0x14
	bge _02037EF8
	ldr r0, _02037F80 ; =sub_02037ED4
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037EF8:
	cmp r0, #0
	bge _02037F06
	ldr r0, _02037F84 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F06:
	cmp r0, #0x17
	bne _02037F14
	ldr r0, _02037F88 ; =sub_02037EB4
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F14:
	cmp r0, #0x18
	bne _02037F38
	ldr r0, _02037F8C ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02037F2E
	ldr r0, _02037F84 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F2E:
	ldr r0, _02037F90 ; =sub_02037ED0
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F38:
	cmp r0, #0x15
	bne _02037F5A
	ldr r0, _02037F8C ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02037F52
	ldr r0, _02037F84 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	b _02037F5A
_02037F52:
	ldr r0, _02037F90 ; =sub_02037ED0
	mov r1, #0
	bl sub_02036C94
_02037F5A:
	ldr r0, _02037F8C ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02037F7E
	bl sub_02035E18
	ldr r1, _02037F8C ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x47
	ldrb r1, [r1]
	cmp r1, r0
	beq _02037F7E
	ldr r0, _02037F84 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02037F7E:
	pop {r3, pc}
	; .align 2, 0
_02037F80: .word sub_02037ED4
_02037F84: .word sub_02037EB0
_02037F88: .word sub_02037EB4
_02037F8C: .word 0x021C07D4
_02037F90: .word sub_02037ED0
	thumb_func_end sub_02037ED8

	thumb_func_start sub_02037F94
sub_02037F94: ; 0x02037F94
	push {r3, r4}
	ldr r3, _02037FB8 ; =0x021C07D4
	ldr r4, [r3, #0]
	cmp r4, #0
	beq _02037FB4
	add r3, r0, #0
	sub r3, #0x19
	cmp r3, #1
	bls _02037FA8
	neg r0, r0
_02037FA8:
	str r0, [r4, #0x34]
	ldr r0, _02037FB8 ; =0x021C07D4
	ldr r3, [r0, #0]
	str r1, [r3, #0x38]
	ldr r0, [r0, #0]
	str r2, [r0, #0x3c]
_02037FB4:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02037FB8: .word 0x021C07D4
	thumb_func_end sub_02037F94

	thumb_func_start sub_02037FBC
sub_02037FBC: ; 0x02037FBC
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0xa
	blt _02037FD6
	cmp r0, #0x14
	bge _02037FD6
	ldr r0, _0203801C ; =sub_02037ED4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037FD6:
	cmp r0, #0
	bge _02037FE4
	ldr r0, _02038020 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037FE4:
	cmp r0, #0x14
	bne _02037FF2
	ldr r0, _02038024 ; =sub_02037ED8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02037FF2:
	cmp r0, #0x15
	bne _02038000
	ldr r0, _02038028 ; =sub_02037ED0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038000:
	cmp r0, #0x16
	bne _0203800E
	ldr r0, _0203801C ; =sub_02037ED4
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_0203800E:
	cmp r0, #0x18
	bne _0203801A
	ldr r0, _02038028 ; =sub_02037ED0
	mov r1, #0
	bl sub_02036C94
_0203801A:
	pop {r3, pc}
	; .align 2, 0
_0203801C: .word sub_02037ED4
_02038020: .word sub_02037EB0
_02038024: .word sub_02037ED8
_02038028: .word sub_02037ED0
	thumb_func_end sub_02037FBC

	thumb_func_start sub_0203802C
sub_0203802C: ; 0x0203802C
	push {r3, lr}
	mov r0, #1
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038042
	ldr r0, _02038094 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038042:
	ldr r0, _02038098 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4a
	ldrb r0, [r0]
	bl sub_0203266C
	add r2, r0, #0
	ldr r0, _02038098 ; =0x021C07D4
	ldr r1, [r0, #0]
	mov r0, #0x4d
	ldrsb r0, [r1, r0]
	add r1, r2, #1
	mov r2, #0
	bl ov4_021D2248
	add r0, r0, #3
	cmp r0, #3
	bhi _02038090
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02038072: ; jump table
	.short _02038088 - _02038072 - 2 ; case 0
	.short _02038090 - _02038072 - 2 ; case 1
	.short _02038090 - _02038072 - 2 ; case 2
	.short _0203807A - _02038072 - 2 ; case 3
_0203807A:
	bl sub_02034AE4
	ldr r0, _0203809C ; =sub_02037FBC
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038088:
	ldr r0, _02038094 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02038090:
	pop {r3, pc}
	nop
_02038094: .word sub_02037EB0
_02038098: .word 0x021C07D4
_0203809C: .word sub_02037FBC
	thumb_func_end sub_0203802C

	thumb_func_start sub_020380A0
sub_020380A0: ; 0x020380A0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020380D0 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	ldr r0, _020380D4 ; =sub_02037FBC
	cmp r1, r0
	beq _020380B4
	mov r0, #0
	pop {r4, pc}
_020380B4:
	ldr r0, _020380D8 ; =sub_020351F8
	ldr r1, _020380DC ; =sub_0203509C
	bl ov4_021D1104
	ldr r0, _020380D0 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4d
	strb r4, [r0]
	ldr r0, _020380E0 ; =sub_0203802C
	bl sub_02036C94
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_020380D0: .word 0x021C07D4
_020380D4: .word sub_02037FBC
_020380D8: .word sub_020351F8
_020380DC: .word sub_0203509C
_020380E0: .word sub_0203802C
	thumb_func_end sub_020380A0

	thumb_func_start sub_020380E4
sub_020380E4: ; 0x020380E4
	ldr r0, _02038140 ; =0x021C07D4
	ldr r1, _02038144 ; =sub_02037FBC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, r1
	bne _020380F4
	mov r0, #0
	bx lr
_020380F4:
	ldr r1, _02038148 ; =sub_02037ED8
	cmp r0, r1
	bne _020380FE
	mov r0, #1
	bx lr
_020380FE:
	ldr r1, _0203814C ; =sub_02037EB4
	cmp r0, r1
	bne _02038108
	mov r0, #3
	bx lr
_02038108:
	ldr r1, _02038150 ; =sub_02037ED0
	cmp r0, r1
	bne _02038112
	mov r0, #4
	bx lr
_02038112:
	ldr r1, _02038154 ; =sub_02037ED4
	cmp r0, r1
	bne _0203811C
	mov r0, #5
	bx lr
_0203811C:
	ldr r1, _02038158 ; =sub_02038DEC
	cmp r0, r1
	bne _02038126
	mov r0, #0
	bx lr
_02038126:
	ldr r1, _0203815C ; =sub_02038DCC
	cmp r0, r1
	bne _02038130
	mov r0, #1
	bx lr
_02038130:
	ldr r1, _02038160 ; =sub_02038E84
	cmp r0, r1
	bne _0203813A
	mov r0, #3
	bx lr
_0203813A:
	mov r0, #2
	bx lr
	nop
_02038140: .word 0x021C07D4
_02038144: .word sub_02037FBC
_02038148: .word sub_02037ED8
_0203814C: .word sub_02037EB4
_02038150: .word sub_02037ED0
_02038154: .word sub_02037ED4
_02038158: .word sub_02038DEC
_0203815C: .word sub_02038DCC
_02038160: .word sub_02038E84
	thumb_func_end sub_020380E4

	thumb_func_start sub_02038164
sub_02038164: ; 0x02038164
	push {r3, lr}
	ldr r0, _020381DC ; =sub_020351F8
	ldr r1, _020381E0 ; =sub_0203509C
	bl ov4_021D1104
	mov r0, #0
	mvn r0, r0
	mov r1, #4
	mov r2, #1
	bl ov4_021D2248
	add r0, r0, #4
	cmp r0, #4
	bhi _020381BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203818C: ; jump table
	.short _020381B8 - _0203818C - 2 ; case 0
	.short _020381AE - _0203818C - 2 ; case 1
	.short _020381BA - _0203818C - 2 ; case 2
	.short _020381BA - _0203818C - 2 ; case 3
	.short _02038196 - _0203818C - 2 ; case 4
_02038196:
	ldr r0, _020381E4 ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x58
	strb r1, [r0]
	bl sub_02034AE4
	ldr r0, _020381E8 ; =sub_02037FBC
	mov r1, #0
	bl sub_02036C94
	b _020381BA
_020381AE:
	ldr r0, _020381EC ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	b _020381BA
_020381B8:
	pop {r3, pc}
_020381BA:
	bl ov4_021D1B5C
	cmp r0, #0
	bge _020381CC
	ldr r0, _020381EC ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_020381CC:
	cmp r0, #0x1a
	bne _020381D8
	ldr r0, _020381EC ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_020381D8:
	pop {r3, pc}
	nop
_020381DC: .word sub_020351F8
_020381E0: .word sub_0203509C
_020381E4: .word 0x021C07D4
_020381E8: .word sub_02037FBC
_020381EC: .word sub_02037EB0
	thumb_func_end sub_02038164

	thumb_func_start sub_020381F0
sub_020381F0: ; 0x020381F0
	push {r3, lr}
	mov r0, #0
	bl sub_020362B4
	ldr r0, _02038234 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4c
	ldrb r0, [r0]
	bl ov4_021D20B0
	cmp r0, #0
	beq _0203821E
	bl ov4_021D2134
	cmp r0, #0
	beq _0203821E
	bl sub_02032A70
	ldr r0, _02038238 ; =sub_02038164
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_0203821E:
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038230
	ldr r0, _0203823C ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02038230:
	pop {r3, pc}
	nop
_02038234: .word 0x021C07D4
_02038238: .word sub_02038164
_0203823C: .word sub_02037EB0
	thumb_func_end sub_020381F0

	thumb_func_start sub_02038240
sub_02038240: ; 0x02038240
	push {r3, lr}
	bl sub_0203608C
	cmp r0, #0
	bne _0203825C
	ldr r0, _0203827C ; =0x021C07D4
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x4c
	strb r1, [r0]
	ldr r0, _02038280 ; =sub_020381F0
	bl sub_02036C94
	b _0203826E
_0203825C:
	ldr r0, _0203827C ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x4c
	strb r1, [r0]
	ldr r0, _02038280 ; =sub_020381F0
	mov r1, #0
	bl sub_02036C94
_0203826E:
	ldr r0, _0203827C ; =0x021C07D4
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x58
	strb r1, [r0]
	pop {r3, pc}
	nop
_0203827C: .word 0x021C07D4
_02038280: .word sub_020381F0
	thumb_func_end sub_02038240

	thumb_func_start sub_02038284
sub_02038284: ; 0x02038284
	ldr r0, _02038290 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x58
	ldrb r0, [r0]
	bx lr
	nop
_02038290: .word 0x021C07D4
	thumb_func_end sub_02038284

	thumb_func_start sub_02038294
sub_02038294: ; 0x02038294
	ldr r0, _020382B4 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	ldr r0, _020382B8 ; =sub_02038164
	cmp r1, r0
	bne _020382A4
	mov r0, #1
	bx lr
_020382A4:
	ldr r0, _020382BC ; =sub_02038C68
	cmp r1, r0
	bne _020382AE
	mov r0, #1
	bx lr
_020382AE:
	mov r0, #0
	bx lr
	nop
_020382B4: .word 0x021C07D4
_020382B8: .word sub_02038164
_020382BC: .word sub_02038C68
	thumb_func_end sub_02038294

	thumb_func_start sub_020382C0
sub_020382C0: ; 0x020382C0
	ldr r0, _020382E8 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	ldr r0, _020382EC ; =sub_02037FBC
	cmp r1, r0
	bne _020382D0
	mov r0, #1
	bx lr
_020382D0:
	ldr r0, _020382F0 ; =sub_02038164
	cmp r1, r0
	bne _020382DA
	mov r0, #1
	bx lr
_020382DA:
	ldr r0, _020382F4 ; =sub_02038C68
	cmp r1, r0
	bne _020382E4
	mov r0, #1
	bx lr
_020382E4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020382E8: .word 0x021C07D4
_020382EC: .word sub_02037FBC
_020382F0: .word sub_02038164
_020382F4: .word sub_02038C68
	thumb_func_end sub_020382C0

	thumb_func_start sub_020382F8
sub_020382F8: ; 0x020382F8
	push {r3, lr}
	ldr r0, _02038310 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02038306
	bl sub_02022974
_02038306:
	ldr r0, _02038310 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x34
	pop {r3, pc}
	nop
_02038310: .word 0x021C07D4
	thumb_func_end sub_020382F8

	thumb_func_start sub_02038314
sub_02038314: ; 0x02038314
	push {r3, lr}
	mov r0, #0
	bl sub_020362B4
	mov r0, #0
	bl ov4_021D20B0
	cmp r0, #0
	beq _02038332
	bl ov4_021D2134
	ldr r0, _02038348 ; =sub_020373B8
	mov r1, #0
	bl sub_02036C94
_02038332:
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038344
	ldr r0, _0203834C ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02038344:
	pop {r3, pc}
	nop
_02038348: .word sub_020373B8
_0203834C: .word sub_02037EB0
	thumb_func_end sub_02038314

	thumb_func_start sub_02038350
sub_02038350: ; 0x02038350
	push {r3, lr}
	ldr r0, _02038370 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203836C
	mov r0, #1
	bl sub_02017DF0
	bl sub_02032A70
	ldr r0, _02038374 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
_0203836C:
	pop {r3, pc}
	nop
_02038370: .word 0x021C07D4
_02038374: .word sub_020373B8
	thumb_func_end sub_02038350

	thumb_func_start sub_02038378
sub_02038378: ; 0x02038378
	push {r3, lr}
	ldr r0, _02038390 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203838E
	mov r1, #0
	add r0, #0x4c
	strb r1, [r0]
	ldr r0, _02038394 ; =sub_020381F0
	bl sub_02036C94
_0203838E:
	pop {r3, pc}
	; .align 2, 0
_02038390: .word 0x021C07D4
_02038394: .word sub_020381F0
	thumb_func_end sub_02038378

	thumb_func_start sub_02038398
sub_02038398: ; 0x02038398
	push {r3, lr}
	ldr r0, _020383CC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020383CA
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	bl sub_0203608C
	cmp r0, #0
	bne _020383B8
	mov r1, #0
	ldr r0, _020383CC ; =0x021C07D4
	b _020383BC
_020383B8:
	ldr r0, _020383CC ; =0x021C07D4
	mov r1, #1
_020383BC:
	ldr r0, [r0, #0]
	add r0, #0x4c
	strb r1, [r0]
	ldr r0, _020383D0 ; =sub_020381F0
	mov r1, #0
	bl sub_02036C94
_020383CA:
	pop {r3, pc}
	; .align 2, 0
_020383CC: .word 0x021C07D4
_020383D0: .word sub_020381F0
	thumb_func_end sub_02038398

	thumb_func_start sub_020383D4
sub_020383D4: ; 0x020383D4
	push {r3, lr}
	bl sub_0203608C
	add r1, sp, #0
	strb r0, [r1]
	mov r0, #0x15
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	thumb_func_end sub_020383D4

	thumb_func_start sub_020383E8
sub_020383E8: ; 0x020383E8
	ldr r0, _02038428 ; =0x021C07D4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02038422
	ldr r1, [r2, #0x24]
	ldr r0, _0203842C ; =sub_02037EB0
	cmp r1, r0
	bne _020383FC
	mov r0, #1
	bx lr
_020383FC:
	ldr r0, _02038430 ; =sub_02037EB4
	cmp r1, r0
	bne _02038410
	add r0, r2, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02038410
	mov r0, #1
	bx lr
_02038410:
	ldr r0, _02038434 ; =sub_02038E84
	cmp r1, r0
	bne _02038422
	add r2, #0x4f
	ldrb r0, [r2]
	cmp r0, #0
	beq _02038422
	mov r0, #1
	bx lr
_02038422:
	mov r0, #0
	bx lr
	nop
_02038428: .word 0x021C07D4
_0203842C: .word sub_02037EB0
_02038430: .word sub_02037EB4
_02038434: .word sub_02038E84
	thumb_func_end sub_020383E8

	thumb_func_start sub_02038438
sub_02038438: ; 0x02038438
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038488 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02038486
	mov r1, #0xf
	add r2, r1, #0
	mov r0, #3
	add r2, #0xf1
	bl sub_02017FD4
	mov r0, #0xf
	mov r1, #0x64
	bl sub_02018144
	ldr r1, _02038488 ; =0x021C07D4
	mov r2, #0x64
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _02038488 ; =0x021C07D4
	mov r2, #0x18
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r2, [r0, #0]
	mov r1, #1
	add r2, #0x51
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r4, [r0, #0x28]
	mov r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02017DE0
_02038486:
	pop {r4, pc}
	; .align 2, 0
_02038488: .word 0x021C07D4
	thumb_func_end sub_02038438

	thumb_func_start sub_0203848C
sub_0203848C: ; 0x0203848C
	push {r3, lr}
	ldr r0, _020384BC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020384B8
	mov r0, #1
	bl sub_02017DF0
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _020384BC ; =0x021C07D4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _020384BC ; =0x021C07D4
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #0xf
	bl sub_0201807C
_020384B8:
	pop {r3, pc}
	nop
_020384BC: .word 0x021C07D4
	thumb_func_end sub_0203848C

	thumb_func_start sub_020384C0
sub_020384C0: ; 0x020384C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038510 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203850E
	mov r1, #0xf
	add r2, r1, #0
	mov r0, #3
	add r2, #0xf1
	bl sub_02017FD4
	mov r0, #0xf
	mov r1, #0x64
	bl sub_02018144
	ldr r1, _02038510 ; =0x021C07D4
	mov r2, #0x64
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _02038510 ; =0x021C07D4
	mov r2, #0x19
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r2, [r0, #0]
	mov r1, #1
	add r2, #0x51
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r4, [r0, #0x28]
	mov r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02017DE0
_0203850E:
	pop {r4, pc}
	; .align 2, 0
_02038510: .word 0x021C07D4
	thumb_func_end sub_020384C0

	thumb_func_start sub_02038514
sub_02038514: ; 0x02038514
	push {r3, lr}
	ldr r0, _02038544 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02038540
	mov r0, #1
	bl sub_02017DF0
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _02038544 ; =0x021C07D4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02038544 ; =0x021C07D4
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #0xf
	bl sub_0201807C
_02038540:
	pop {r3, pc}
	nop
_02038544: .word 0x021C07D4
	thumb_func_end sub_02038514

	thumb_func_start sub_02038548
sub_02038548: ; 0x02038548
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038598 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02038596
	mov r1, #0xf
	add r2, r1, #0
	mov r0, #3
	add r2, #0xf1
	bl sub_02017FD4
	mov r0, #0xf
	mov r1, #0x64
	bl sub_02018144
	ldr r1, _02038598 ; =0x021C07D4
	mov r2, #0x64
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _02038598 ; =0x021C07D4
	mov r2, #0x24
	ldr r1, [r0, #0]
	add r1, #0x4a
	strb r2, [r1]
	ldr r2, [r0, #0]
	mov r1, #1
	add r2, #0x51
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r4, [r0, #0x28]
	mov r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_02017DE0
_02038596:
	pop {r4, pc}
	; .align 2, 0
_02038598: .word 0x021C07D4
	thumb_func_end sub_02038548

	thumb_func_start sub_0203859C
sub_0203859C: ; 0x0203859C
	push {r3, lr}
	ldr r0, _020385CC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020385C8
	mov r0, #1
	bl sub_02017DF0
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _020385CC ; =0x021C07D4
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _020385CC ; =0x021C07D4
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #0xf
	bl sub_0201807C
_020385C8:
	pop {r3, pc}
	nop
_020385CC: .word 0x021C07D4
	thumb_func_end sub_0203859C

	thumb_func_start sub_020385D0
sub_020385D0: ; 0x020385D0
	push {r3, lr}
	sub sp, #8
	ldr r0, _02038628 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020385E2
	add sp, #8
	mov r0, #0
	pop {r3, pc}
_020385E2:
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _020385EE
	cmp r0, #0x24
	bne _02038604
_020385EE:
	add r0, sp, #4
	add r1, sp, #0
	bl ov4_021D75F4
	cmp r0, #0
	beq _02038620
	bl ov4_021D76E8
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_02038604:
	cmp r0, #0x19
	bne _02038620
	add r0, sp, #4
	add r1, sp, #0
	bl ov4_021D75F4
	cmp r0, #0
	beq _02038620
	ldr r0, [sp]
	cmp r0, #7
	bne _02038620
	add sp, #8
	mov r0, #1
	pop {r3, pc}
_02038620:
	mov r0, #0
	add sp, #8
	pop {r3, pc}
	nop
_02038628: .word 0x021C07D4
	thumb_func_end sub_020385D0

	thumb_func_start sub_0203862C
sub_0203862C: ; 0x0203862C
	push {r3, lr}
	bl ov4_021D0FEC
	ldr r1, _020386A0 ; =0x021C07D4
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x40]
	sub r2, r2, #1
	str r2, [r3, #0x40]
	cmp r0, #0x1b
	bne _02038680
	ldr r1, [r1, #0]
	add r0, r1, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0x21
	bne _02038676
	ldr r0, [r1, #0x5c]
	bl ov66_02232714
	cmp r0, #1
	bne _0203866C
	ldr r1, _020386A0 ; =0x021C07D4
	mov r2, #1
	ldr r0, [r1, #0]
	add r0, #0x60
	strb r2, [r0]
	ldr r1, [r1, #0]
	ldr r0, _020386A4 ; =sub_02038C1C
	ldr r1, [r1, #0x40]
	bl sub_02036C94
	pop {r3, pc}
_0203866C:
	ldr r0, _020386A8 ; =sub_02038DC8
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038676:
	ldr r0, _020386AC ; =sub_02038164
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038680:
	cmp r0, #0
	beq _0203868C
	ldr r0, _020386B0 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_0203868C:
	ldr r0, _020386A0 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bgt _0203869E
	ldr r0, _020386B0 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_0203869E:
	pop {r3, pc}
	; .align 2, 0
_020386A0: .word 0x021C07D4
_020386A4: .word sub_02038C1C
_020386A8: .word sub_02038DC8
_020386AC: .word sub_02038164
_020386B0: .word sub_02037EB0
	thumb_func_end sub_0203862C

	thumb_func_start sub_020386B4
sub_020386B4: ; 0x020386B4
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _0203870E
	mov r2, #0xd5
	mov r0, #3
	mov r1, #0x31
	lsl r2, r2, #0xa
	bl sub_02017FD4
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _0203870E
	ldr r0, _02038710 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4a
	ldrb r0, [r0]
	bl sub_0203266C
	add r3, r0, #0
	ldr r0, _02038710 ; =0x021C07D4
	mov r2, #0xb1
	ldr r0, [r0, #0]
	mov r1, #0x31
	ldr r0, [r0, #0x28]
	lsl r2, r2, #0xa
	add r3, r3, #1
	bl ov4_021D0D80
	ldr r0, _02038714 ; =sub_020389FC
	bl ov4_021D2170
	bl sub_02034878
	mov r1, #0xe1
	ldr r0, _02038718 ; =sub_0203862C
	lsl r1, r1, #4
	bl sub_02036C94
_0203870E:
	pop {r3, pc}
	; .align 2, 0
_02038710: .word 0x021C07D4
_02038714: .word sub_020389FC
_02038718: .word sub_0203862C
	thumb_func_end sub_020386B4

	thumb_func_start sub_0203871C
sub_0203871C: ; 0x0203871C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02025E38
	bl sub_02035E38
	cmp r0, #0
	beq _02038732
	mov r0, #0
	pop {r3, r4, r5, pc}
_02038732:
	mov r0, #1
	bl sub_02017DE0
	ldr r2, _02038780 ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r5, #0
	mov r1, #0x17
	bl sub_020366A0
	mov r0, #0xf
	add r1, r4, #0
	bl sub_02018144
	ldr r1, _02038784 ; =0x021C07D4
	ldr r2, [r1, #0]
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	bl sub_020C4CF4
	ldr r0, _02038784 ; =0x021C07D4
	mov r1, #0
	ldr r2, [r0, #0]
	add r2, #0x4b
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r5, [r0, #0x28]
	ldr r0, _02038788 ; =sub_020386B4
	bl sub_02036C94
	ldr r0, _02038784 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02038780: .word 0x00007080
_02038784: .word 0x021C07D4
_02038788: .word sub_020386B4
	thumb_func_end sub_0203871C

	thumb_func_start sub_0203878C
sub_0203878C: ; 0x0203878C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02025E38
	bl sub_02035E38
	cmp r0, #0
	bne _020387D8
	mov r0, #1
	bl sub_02017DE0
	ldr r2, _020387DC ; =0x00007080
	mov r0, #3
	mov r1, #0xf
	bl sub_02017FD4
	add r0, r5, #0
	mov r1, #0x21
	bl sub_020366A0
	ldr r0, _020387E0 ; =0x021C07D4
	mov r1, #0
	ldr r2, [r0, #0]
	str r1, [r2, #0]
	ldr r2, [r0, #0]
	str r4, [r2, #0x5c]
	ldr r2, [r0, #0]
	add r2, #0x60
	strb r1, [r2]
	ldr r2, [r0, #0]
	add r2, #0x4b
	strb r1, [r2]
	ldr r0, [r0, #0]
	str r5, [r0, #0x28]
	ldr r0, _020387E4 ; =sub_02038BA8
	bl sub_02036C94
_020387D8:
	pop {r3, r4, r5, pc}
	nop
_020387DC: .word 0x00007080
_020387E0: .word 0x021C07D4
_020387E4: .word sub_02038BA8
	thumb_func_end sub_0203878C

	thumb_func_start sub_020387E8
sub_020387E8: ; 0x020387E8
	push {r3, lr}
	ldr r0, _020387FC ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020387FA
	ldr r0, _02038800 ; =sub_02038D80
	mov r1, #0
	bl sub_02036C94
_020387FA:
	pop {r3, pc}
	; .align 2, 0
_020387FC: .word 0x021C07D4
_02038800: .word sub_02038D80
	thumb_func_end sub_020387E8

	thumb_func_start sub_02038804
sub_02038804: ; 0x02038804
	ldr r0, _02038818 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02038810
	mov r0, #0
	bx lr
_02038810:
	add r0, #0x60
	ldrb r0, [r0]
	bx lr
	nop
_02038818: .word 0x021C07D4
	thumb_func_end sub_02038804

	thumb_func_start sub_0203881C
sub_0203881C: ; 0x0203881C
	ldr r0, _02038834 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02038830
	ldr r1, [r0, #0x24]
	ldr r0, _02038838 ; =sub_02038DC8
	cmp r1, r0
	bne _02038830
	mov r0, #1
	bx lr
_02038830:
	mov r0, #0
	bx lr
	; .align 2, 0
_02038834: .word 0x021C07D4
_02038838: .word sub_02038DC8
	thumb_func_end sub_0203881C

	thumb_func_start sub_0203883C
sub_0203883C: ; 0x0203883C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038884 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0203884C
	bl sub_02022974
_0203884C:
	bl sub_020382C0
	cmp r0, #1
	beq _02038858
	bl sub_02022974
_02038858:
	add r0, r4, #0
	bl ov66_02233184
	cmp r0, #0
	bne _02038874
	add r0, r4, #0
	mov r1, #4
	bl ov66_02232F38
	ldr r0, _02038888 ; =sub_02038DEC
	mov r1, #0
	bl sub_02036C94
	pop {r4, pc}
_02038874:
	add r0, r4, #0
	bl ov66_02233260
	ldr r0, _02038888 ; =sub_02038DEC
	mov r1, #0
	bl sub_02036C94
	pop {r4, pc}
	; .align 2, 0
_02038884: .word 0x021C07D4
_02038888: .word sub_02038DEC
	thumb_func_end sub_0203883C

	thumb_func_start sub_0203888C
sub_0203888C: ; 0x0203888C
	push {r3, lr}
	bl ov66_02233374
	cmp r0, #1
	bne _0203889A
	bl ov66_02233064
_0203889A:
	bl ov66_0223361C
	ldr r0, _020388A8 ; =sub_02038E38
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_020388A8: .word sub_02038E38
	thumb_func_end sub_0203888C

	thumb_func_start sub_020388AC
sub_020388AC: ; 0x020388AC
	ldr r0, _020388D8 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020388D4
	ldr r1, [r0, #0x24]
	ldr r0, _020388DC ; =sub_02038DCC
	cmp r1, r0
	bne _020388C0
	mov r0, #2
	bx lr
_020388C0:
	ldr r0, _020388E0 ; =sub_02038DEC
	cmp r1, r0
	bne _020388CA
	mov r0, #1
	bx lr
_020388CA:
	ldr r0, _020388E4 ; =sub_02038E38
	cmp r1, r0
	bne _020388D4
	mov r0, #3
	bx lr
_020388D4:
	mov r0, #0
	bx lr
	; .align 2, 0
_020388D8: .word 0x021C07D4
_020388DC: .word sub_02038DCC
_020388E0: .word sub_02038DEC
_020388E4: .word sub_02038E38
	thumb_func_end sub_020388AC

	thumb_func_start sub_020388E8
sub_020388E8: ; 0x020388E8
	ldr r0, _020388F0 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020388F0: .word 0x021C07D4
	thumb_func_end sub_020388E8

	thumb_func_start sub_020388F4
sub_020388F4: ; 0x020388F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02038934 ; =0x021C07D4
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02038924
	add r2, #0x4f
	strb r4, [r2]
	ldr r2, [r0, #0]
	add r2, #0x50
	strb r1, [r2]
	cmp r4, #0
	beq _0203891C
	bl sub_02035E18
	ldr r1, _02038934 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x47
	strb r0, [r1]
	b _02038924
_0203891C:
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, #0x47
	strb r1, [r0]
_02038924:
	add r0, r4, #0
	bl sub_02033EA8
	add r0, r4, #0
	bl sub_02033ED4
	pop {r4, pc}
	nop
_02038934: .word 0x021C07D4
	thumb_func_end sub_020388F4

	thumb_func_start sub_02038938
sub_02038938: ; 0x02038938
	ldr r0, _02038958 ; =0x021C07D4
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02038954
	add r0, r1, #0
	add r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	beq _0203894E
	mov r0, #1
	bx lr
_0203894E:
	add r1, #0x50
	ldrb r0, [r1]
	bx lr
_02038954:
	mov r0, #0
	bx lr
	; .align 2, 0
_02038958: .word 0x021C07D4
	thumb_func_end sub_02038938

	thumb_func_start sub_0203895C
sub_0203895C: ; 0x0203895C
	ldr r0, _02038970 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203896A
	add r0, #0x4a
	ldrb r0, [r0]
	bx lr
_0203896A:
	mov r0, #1
	bx lr
	nop
_02038970: .word 0x021C07D4
	thumb_func_end sub_0203895C

	thumb_func_start sub_02038974
sub_02038974: ; 0x02038974
	ldr r0, _02038988 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02038982
	add r0, #0x4b
	ldrb r0, [r0]
	bx lr
_02038982:
	mov r0, #0
	bx lr
	nop
_02038988: .word 0x021C07D4
	thumb_func_end sub_02038974

	thumb_func_start sub_0203898C
sub_0203898C: ; 0x0203898C
	ldr r1, _02038998 ; =0x021C07D4
	ldr r3, _0203899C ; =sub_020C4DB0
	ldr r1, [r1, #0]
	mov r2, #6
	add r1, r1, #4
	bx r3
	; .align 2, 0
_02038998: .word 0x021C07D4
_0203899C: .word sub_020C4DB0
	thumb_func_end sub_0203898C

	thumb_func_start sub_020389A0
sub_020389A0: ; 0x020389A0
	add r1, r0, #0
	ldr r0, _020389B0 ; =0x021C07D4
	ldr r3, _020389B4 ; =sub_020C4DB0
	ldr r0, [r0, #0]
	mov r2, #6
	add r0, r0, #4
	bx r3
	nop
_020389B0: .word 0x021C07D4
_020389B4: .word sub_020C4DB0
	thumb_func_end sub_020389A0

	thumb_func_start sub_020389B8
sub_020389B8: ; 0x020389B8
	push {r3, lr}
	bl sub_0203895C
	bl sub_020326EC
	pop {r3, pc}
	thumb_func_end sub_020389B8

	thumb_func_start sub_020389C4
sub_020389C4: ; 0x020389C4
	ldr r1, _020389D4 ; =0x021C07D4
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _020389D0
	add r1, #0x52
	strb r0, [r1]
_020389D0:
	bx lr
	nop
_020389D4: .word 0x021C07D4
	thumb_func_end sub_020389C4

	thumb_func_start sub_020389D8
sub_020389D8: ; 0x020389D8
	push {r3, lr}
	bl sub_02017E54
	cmp r0, #0
	beq _020389E6
	mov r0, #0
	pop {r3, pc}
_020389E6:
	ldr r0, _020389F8 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020389F4
	add r0, #0x52
	ldrb r0, [r0]
	pop {r3, pc}
_020389F4:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_020389F8: .word 0x021C07D4
	thumb_func_end sub_020389D8

	thumb_func_start sub_020389FC
sub_020389FC: ; 0x020389FC
	push {r3, lr}
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	bl sub_02039834
_02038A08:
	b _02038A08
	; .align 2, 0
	thumb_func_end sub_020389FC

	thumb_func_start sub_02038A0C
sub_02038A0C: ; 0x02038A0C
	push {r3, lr}
	mov r0, #0
	mov r1, #4
	add r2, r0, #0
	bl sub_02039834
_02038A18:
	b _02038A18
	; .align 2, 0
	thumb_func_end sub_02038A0C

	thumb_func_start sub_02038A1C
sub_02038A1C: ; 0x02038A1C
	bx lr
	; .align 2, 0
	thumb_func_end sub_02038A1C

	thumb_func_start sub_02038A20
sub_02038A20: ; 0x02038A20
	push {r3, lr}
	bl sub_02038938
	cmp r0, #0
	beq _02038AAC
	bl sub_020360F0
	cmp r0, #0
	bne _02038A56
	bl sub_020383E8
	cmp r0, #0
	bne _02038A56
	bl sub_020385D0
	cmp r0, #0
	bne _02038A56
	ldr r0, _02038AB0 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	bne _02038A56
	bl sub_0203881C
	cmp r0, #0
	beq _02038AAC
_02038A56:
	bl sub_02017E54
	cmp r0, #0
	bne _02038AAC
	bl sub_020389D8
	cmp r0, #0
	bne _02038AAC
	bl sub_0200569C
	ldr r0, _02038AB0 ; =0x021C07D4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	bl sub_02024850
	ldr r1, _02038AB4 ; =0x021BF6DC
	mov r0, #1
	strb r0, [r1, #4]
	ldr r1, _02038AB0 ; =0x021C07D4
	ldr r2, [r1, #0]
	add r1, r2, #0
	add r1, #0x59
	ldrb r1, [r1]
	cmp r1, #3
	bne _02038A90
	mov r0, #3
	bl sub_020389C4
	pop {r3, pc}
_02038A90:
	add r2, #0x4a
	ldrb r1, [r2]
	cmp r1, #0x19
	beq _02038AA0
	cmp r1, #0xf
	beq _02038AA0
	cmp r1, #0x24
	bne _02038AA8
_02038AA0:
	mov r0, #2
	bl sub_020389C4
	pop {r3, pc}
_02038AA8:
	bl sub_020389C4
_02038AAC:
	pop {r3, pc}
	nop
_02038AB0: .word 0x021C07D4
_02038AB4: .word 0x021BF6DC
	thumb_func_end sub_02038A20

	thumb_func_start sub_02038AB8
sub_02038AB8: ; 0x02038AB8
	push {r3, lr}
	bl sub_02033DFC
	cmp r0, #0
	bne _02038ACA
	bl sub_02036780
	cmp r0, #0
	bne _02038ACE
_02038ACA:
	mov r0, #1
	pop {r3, pc}
_02038ACE:
	bl sub_020332D0
	cmp r0, #0
	bne _02038ADA
	mov r0, #1
	pop {r3, pc}
_02038ADA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02038AB8

	thumb_func_start sub_02038AE0
sub_02038AE0: ; 0x02038AE0
	push {r3, lr}
	ldr r1, _02038AFC ; =0x021C07D4
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _02038AF6
	add r1, #0x59
	strb r0, [r1]
	bl sub_020363D0
	mov r0, #1
	pop {r3, pc}
_02038AF6:
	mov r0, #0
	pop {r3, pc}
	nop
_02038AFC: .word 0x021C07D4
	thumb_func_end sub_02038AE0

	thumb_func_start sub_02038B00
sub_02038B00: ; 0x02038B00
	ldr r0, _02038B14 ; =0x021C07D4
	mov r1, #0x1d
	ldr r0, [r0, #0]
	ldr r3, _02038B18 ; =ov4_021D1104
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038B1C ; =sub_020352C0
	add r1, r0, #0
	bx r3
	nop
_02038B14: .word 0x021C07D4
_02038B18: .word ov4_021D1104
_02038B1C: .word sub_020352C0
	thumb_func_end sub_02038B00

	thumb_func_start sub_02038B20
sub_02038B20: ; 0x02038B20
	ldr r0, _02038B34 ; =0x021C07D4
	mov r1, #0x23
	ldr r0, [r0, #0]
	ldr r3, _02038B38 ; =ov4_021D1104
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038B3C ; =sub_020352C0
	add r1, r0, #0
	bx r3
	nop
_02038B34: .word 0x021C07D4
_02038B38: .word ov4_021D1104
_02038B3C: .word sub_020352C0
	thumb_func_end sub_02038B20

	thumb_func_start sub_02038B40
sub_02038B40: ; 0x02038B40
	ldr r0, _02038B54 ; =0x021C07D4
	mov r1, #0x21
	ldr r0, [r0, #0]
	ldr r3, _02038B58 ; =ov4_021D1104
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038B5C ; =sub_020352C0
	add r1, r0, #0
	bx r3
	nop
_02038B54: .word 0x021C07D4
_02038B58: .word ov4_021D1104
_02038B5C: .word sub_020352C0
	thumb_func_end sub_02038B40

	thumb_func_start sub_02038B60
sub_02038B60: ; 0x02038B60
	ldr r0, _02038B74 ; =0x021C07D4
	ldr r3, _02038B78 ; =ov4_021D1104
	ldr r0, [r0, #0]
	mov r1, #0x17
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038B7C ; =sub_020351F8
	ldr r1, _02038B80 ; =sub_0203509C
	bx r3
	nop
_02038B74: .word 0x021C07D4
_02038B78: .word ov4_021D1104
_02038B7C: .word sub_020351F8
_02038B80: .word sub_0203509C
	thumb_func_end sub_02038B60

	thumb_func_start sub_02038B84
sub_02038B84: ; 0x02038B84
	ldr r0, _02038B98 ; =0x021C07D4
	ldr r3, _02038B9C ; =ov4_021D1104
	ldr r0, [r0, #0]
	mov r1, #0x13
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, _02038BA0 ; =sub_020351F8
	ldr r1, _02038BA4 ; =sub_0203509C
	bx r3
	nop
_02038B98: .word 0x021C07D4
_02038B9C: .word ov4_021D1104
_02038BA0: .word sub_020351F8
_02038BA4: .word sub_0203509C
	thumb_func_end sub_02038B84

	thumb_func_start sub_02038BA8
sub_02038BA8: ; 0x02038BA8
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _02038C0C
	mov r0, #3
	mov r1, #0x31
	lsl r2, r0, #0x11
	bl sub_02017FD4
	mov r0, #1
	add r1, r0, #0
	lsl r2, r0, #9
	add r3, r0, #0
	bl sub_02034778
	cmp r0, #0
	beq _02038C0C
	ldr r0, _02038C10 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4a
	ldrb r0, [r0]
	bl sub_0203266C
	add r3, r0, #0
	ldr r0, _02038C10 ; =0x021C07D4
	mov r2, #0x16
	ldr r0, [r0, #0]
	mov r1, #0x31
	ldr r0, [r0, #0x28]
	lsl r2, r2, #0xe
	add r3, r3, #1
	bl ov4_021D0D80
	ldr r0, _02038C14 ; =sub_020389FC
	bl ov4_021D2170
	bl sub_02034878
	mov r0, #0
	bl ov4_021D2584
	mov r0, #0
	bl sub_0203632C
	mov r1, #0xe1
	ldr r0, _02038C18 ; =sub_0203862C
	lsl r1, r1, #4
	bl sub_02036C94
_02038C0C:
	pop {r3, pc}
	nop
_02038C10: .word 0x021C07D4
_02038C14: .word sub_020389FC
_02038C18: .word sub_0203862C
	thumb_func_end sub_02038BA8

	thumb_func_start sub_02038C1C
sub_02038C1C: ; 0x02038C1C
	push {r3, lr}
	ldr r0, _02038C5C ; =0x021C07D4
	ldr r2, [r0, #0]
	ldr r1, [r2, #0x40]
	sub r1, r1, #1
	str r1, [r2, #0x40]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bgt _02038C3A
	ldr r0, _02038C60 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038C3A:
	mov r0, #1
	bl sub_020362B4
	bl sub_02038D44
	cmp r0, #0
	beq _02038C58
	bl ov66_02232804
	cmp r0, #0
	beq _02038C58
	ldr r0, _02038C64 ; =sub_02038C68
	mov r1, #0
	bl sub_02036C94
_02038C58:
	pop {r3, pc}
	nop
_02038C5C: .word 0x021C07D4
_02038C60: .word sub_02037EB0
_02038C64: .word sub_02038C68
	thumb_func_end sub_02038C1C

	thumb_func_start sub_02038C68
sub_02038C68: ; 0x02038C68
	push {r3, lr}
	bl sub_02038D44
	cmp r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02038C68

	thumb_func_start sub_02038C74
sub_02038C74: ; 0x02038C74
	push {r4, lr}
	mov r4, #1
	cmp r0, #0xa
	blt _02038C8C
	cmp r0, #0x14
	bge _02038C8C
	ldr r0, _02038CFC ; =sub_02037ED4
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
	b _02038CD0
_02038C8C:
	cmp r0, #0
	bge _02038C9C
	ldr r0, _02038D00 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
	b _02038CD0
_02038C9C:
	cmp r0, #0x17
	bne _02038CAC
	ldr r0, _02038D04 ; =sub_02038E84
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
	b _02038CD0
_02038CAC:
	cmp r0, #0x18
	bne _02038CD0
	ldr r0, _02038D08 ; =0x021C07D4
	mov r4, #0
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02038CC8
	ldr r0, _02038D00 ; =sub_02037EB0
	add r1, r4, #0
	bl sub_02036C94
	b _02038CD0
_02038CC8:
	ldr r0, _02038D0C ; =sub_02037ED0
	add r1, r4, #0
	bl sub_02036C94
_02038CD0:
	ldr r0, _02038D08 ; =0x021C07D4
	ldr r0, [r0, #0]
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _02038CF6
	bl sub_02035E18
	ldr r1, _02038D08 ; =0x021C07D4
	ldr r1, [r1, #0]
	add r1, #0x47
	ldrb r1, [r1]
	cmp r1, r0
	beq _02038CF6
	ldr r0, _02038D00 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
_02038CF6:
	add r0, r4, #0
	pop {r4, pc}
	nop
_02038CFC: .word sub_02037ED4
_02038D00: .word sub_02037EB0
_02038D04: .word sub_02038E84
_02038D08: .word 0x021C07D4
_02038D0C: .word sub_02037ED0
	thumb_func_end sub_02038C74

	thumb_func_start sub_02038D10
sub_02038D10: ; 0x02038D10
	push {r4, lr}
	mov r4, #1
	bl ov66_022325D8
	cmp r0, #4
	bhi _02038D3C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02038D28: ; jump table
	.short _02038D3C - _02038D28 - 2 ; case 0
	.short _02038D3C - _02038D28 - 2 ; case 1
	.short _02038D3C - _02038D28 - 2 ; case 2
	.short _02038D3C - _02038D28 - 2 ; case 3
	.short _02038D32 - _02038D28 - 2 ; case 4
_02038D32:
	ldr r0, _02038D40 ; =sub_02038DC8
	mov r1, #0
	bl sub_02036C94
	mov r4, #0
_02038D3C:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_02038D40: .word sub_02038DC8
	thumb_func_end sub_02038D10

	thumb_func_start sub_02038D44
sub_02038D44: ; 0x02038D44
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	bl sub_02038C74
	cmp r0, #0
	beq _02038D58
	bl sub_02038D10
_02038D58:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02038D44

	thumb_func_start sub_02038D5C
sub_02038D5C: ; 0x02038D5C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0x14
	blt _02038D6E
	str r0, [r4, #0]
	b _02038D7A
_02038D6E:
	mov r1, #0
	str r1, [r4, #0]
	bl sub_02038C74
	cmp r0, #0
	beq _02038D7E
_02038D7A:
	bl sub_02038D10
_02038D7E:
	pop {r4, pc}
	thumb_func_end sub_02038D5C

	thumb_func_start sub_02038D80
sub_02038D80: ; 0x02038D80
	push {r3, lr}
	bl ov66_0223282C
	ldr r0, _02038D90 ; =sub_02038D94
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
	; .align 2, 0
_02038D90: .word sub_02038D94
	thumb_func_end sub_02038D80

	thumb_func_start sub_02038D94
sub_02038D94: ; 0x02038D94
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	bl sub_02038D10
	bl ov66_02232854
	cmp r0, #0
	beq _02038DC0
	mov r0, #1
	bl sub_02017DF0
	bl sub_02032A70
	ldr r0, _02038DC4 ; =sub_020373B8
	mov r1, #5
	bl sub_02036C94
	mov r0, #0
	bl sub_020362B4
_02038DC0:
	pop {r3, pc}
	nop
_02038DC4: .word sub_020373B8
	thumb_func_end sub_02038D94

	thumb_func_start sub_02038DC8
sub_02038DC8: ; 0x02038DC8
	bx lr
	; .align 2, 0
	thumb_func_end sub_02038DC8

	thumb_func_start sub_02038DCC
sub_02038DCC: ; 0x02038DCC
	push {r3, lr}
	bl sub_02038D44
	bl ov66_02233164
	cmp r0, #1
	bne _02038DE6
	bl ov66_0223361C
	ldr r0, _02038DE8 ; =sub_02038E38
	mov r1, #0
	bl sub_02036C94
_02038DE6:
	pop {r3, pc}
	; .align 2, 0
_02038DE8: .word sub_02038E38
	thumb_func_end sub_02038DCC

	thumb_func_start sub_02038DEC
sub_02038DEC: ; 0x02038DEC
	push {r3, lr}
	bl ov66_02233164
	cmp r0, #1
	bne _02038E04
	bl ov66_0223361C
	ldr r0, _02038E2C ; =sub_02038E38
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038E04:
	add r0, sp, #0
	bl sub_02038D5C
	ldr r0, [sp]
	cmp r0, #0
	beq _02038E2A
	cmp r0, #0x14
	bne _02038E1E
	ldr r0, _02038E30 ; =sub_02038DCC
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038E1E:
	bl ov66_0223361C
	ldr r0, _02038E34 ; =sub_02038C68
	mov r1, #0
	bl sub_02036C94
_02038E2A:
	pop {r3, pc}
	; .align 2, 0
_02038E2C: .word sub_02038E38
_02038E30: .word sub_02038DCC
_02038E34: .word sub_02038C68
	thumb_func_end sub_02038DEC

	thumb_func_start sub_02038E38
sub_02038E38: ; 0x02038E38
	push {r3, lr}
	mov r0, #1
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038E4E
	ldr r0, _02038E7C ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
	pop {r3, pc}
_02038E4E:
	bl sub_02038D10
	cmp r0, #0
	beq _02038E7A
	mov r0, #0
	bl ov4_021D20B0
	cmp r0, #0
	beq _02038E7A
	bl ov4_021D2134
	cmp r0, #0
	beq _02038E7A
	bl sub_02034AE4
	mov r0, #0
	bl sub_0203632C
	ldr r0, _02038E80 ; =sub_02038C68
	mov r1, #0
	bl sub_02036C94
_02038E7A:
	pop {r3, pc}
	; .align 2, 0
_02038E7C: .word sub_02037EB0
_02038E80: .word sub_02038C68
	thumb_func_end sub_02038E38

	thumb_func_start sub_02038E84
sub_02038E84: ; 0x02038E84
	push {r3, lr}
	mov r0, #0
	bl ov4_021D12D4
	cmp r0, #0
	bge _02038E98
	ldr r0, _02038EA0 ; =sub_02037EB0
	mov r1, #0
	bl sub_02036C94
_02038E98:
	bl sub_02038D10
	pop {r3, pc}
	nop
_02038EA0: .word sub_02037EB0
	thumb_func_end sub_02038E84

	thumb_func_start sub_02038EA4
sub_02038EA4: ; 0x02038EA4
	ldr r0, _02038EB0 ; =0x021C07D4
	mov r1, #0x22
	ldr r0, [r0, #0]
	add r0, #0x4a
	strb r1, [r0]
	bx lr
	; .align 2, 0
_02038EB0: .word 0x021C07D4
	thumb_func_end sub_02038EA4

	thumb_func_start sub_02038EB4
sub_02038EB4: ; 0x02038EB4
	push {r3, lr}
	ldr r0, _02038ED0 ; =0x021C07D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02038ECA
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _02038ECA
	mov r0, #0
	pop {r3, pc}
_02038ECA:
	bl sub_02035E38
	pop {r3, pc}
	; .align 2, 0
_02038ED0: .word 0x021C07D4
	thumb_func_end sub_02038EB4

	thumb_func_start sub_02038ED4
sub_02038ED4: ; 0x02038ED4
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02038ED4

	thumb_func_start sub_02038EDC
sub_02038EDC: ; 0x02038EDC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #6
	bhi _02038F88
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02038EF6: ; jump table
	.short _02038F04 - _02038EF6 - 2 ; case 0
	.short _02038F10 - _02038EF6 - 2 ; case 1
	.short _02038F28 - _02038EF6 - 2 ; case 2
	.short _02038F4E - _02038EF6 - 2 ; case 3
	.short _02038F5E - _02038EF6 - 2 ; case 4
	.short _02038F7E - _02038EF6 - 2 ; case 5
	.short _02038F84 - _02038EF6 - 2 ; case 6
_02038F04:
	mov r0, #0x6f
	bl sub_020364F0
	mov r0, #1
	str r0, [r4, #0]
	b _02038F88
_02038F10:
	mov r0, #0x6f
	bl sub_02036540
	cmp r0, #0
	beq _02038F88
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02024814
	mov r0, #2
	str r0, [r4, #0]
	b _02038F88
_02038F28:
	bl sub_02024828
	add r5, r0, #0
	cmp r5, #2
	bne _02038F36
	bl sub_02022974
_02038F36:
	cmp r5, #3
	bne _02038F3E
	bl sub_02022974
_02038F3E:
	cmp r5, #1
	bne _02038F88
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #0x70
	bl sub_020364F0
	b _02038F88
_02038F4E:
	mov r0, #0x70
	bl sub_02036540
	cmp r0, #0
	beq _02038F88
	mov r0, #4
	str r0, [r4, #0]
	b _02038F88
_02038F5E:
	bl sub_02024828
	add r5, r0, #0
	cmp r5, #3
	bne _02038F6C
	bl sub_02022974
_02038F6C:
	cmp r5, #1
	bne _02038F74
	bl sub_02022974
_02038F74:
	cmp r5, #2
	bne _02038F88
	mov r0, #5
	str r0, [r4, #0]
	b _02038F88
_02038F7E:
	mov r0, #6
	str r0, [r4, #0]
	b _02038F88
_02038F84:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02038F88:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02038EDC

	thumb_func_start sub_02038F8C
sub_02038F8C: ; 0x02038F8C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_02035E18
	add r7, r0, #0
	mov r0, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _02038FDA
	mov r5, #0
	cmp r7, #0
	ble _02038FDA
_02038FA6:
	bl sub_0203608C
	cmp r5, r0
	beq _02038FD4
	add r0, r5, #0
	bl sub_02032F78
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02032F9C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02032EE8
	bl sub_02025FD8
	add r3, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02038FDC
_02038FD4:
	add r5, r5, #1
	cmp r5, r7
	blt _02038FA6
_02038FDA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02038F8C

	thumb_func_start sub_02038FDC
sub_02038FDC: ; 0x02038FDC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0202C8C8
	cmp r0, #0
	bne _02038FF8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl sub_0202C918
_02038FF8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02038FDC

	thumb_func_start sub_02038FFC
sub_02038FFC: ; 0x02038FFC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02099550
	bl sub_020995B4
	mov r1, #0x72
	add r0, r4, #0
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	bl sub_020A3EF0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02099560
	bl sub_020995C4
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02038FFC

	thumb_func_start sub_02039034
sub_02039034: ; 0x02039034
	push {r4, lr}
	bl sub_0202AD28
	add r4, r0, #0
	bl sub_020A44C8
	cmp r0, #0
	bne _02039052
	ldr r1, _02039054 ; =0x4144414A
	add r0, r4, #0
	bl sub_020A44BC
	add r0, r4, #0
	bl sub_020A4620
_02039052:
	pop {r4, pc}
	; .align 2, 0
_02039054: .word 0x4144414A
	thumb_func_end sub_02039034

	thumb_func_start sub_02039058
sub_02039058: ; 0x02039058
	push {r3, r4, lr}
	sub sp, #0xc
	bl sub_0202AD28
	add r4, r0, #0
	add r1, sp, #0
	bl sub_020A4788
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020A4698
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02039058

	thumb_func_start sub_02039074
sub_02039074: ; 0x02039074
	push {r4, lr}
	bl sub_0202B370
	bl sub_0202AD28
	add r4, r0, #0
	bl sub_020A450C
	cmp r0, #0
	beq _02039096
	add r0, r4, #0
	bl sub_020A453C
	cmp r0, #0
	beq _02039096
	mov r0, #1
	pop {r4, pc}
_02039096:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02039074

	thumb_func_start sub_0203909C
sub_0203909C: ; 0x0203909C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp]
	bl sub_0202B370
	bl sub_0202AD28
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0202B370
	mov r1, #0
	bl sub_0202AED8
	add r4, r0, #0
	mov r1, #0
	ldr r0, [sp]
	mvn r1, r1
	str r1, [r0, #0]
	add r0, r5, #0
	bl sub_020A4498
	cmp r0, #0
	bne _020390D6
	add sp, #8
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_020390D6:
	mov r7, #0
_020390D8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020A4828
	cmp r0, #0
	beq _020390EE
	ldr r0, [sp]
	add sp, #8
	str r7, [r0, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020390EE:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020A4698
	cmp r0, #0
	ble _0203911C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_020A4698
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020A4698
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _0203911C
	ldr r0, [sp]
	add sp, #8
	str r7, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0203911C:
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	bge _02039132
	add r0, r4, #0
	bl sub_020A4498
	cmp r0, #0
	bne _02039132
	ldr r0, [sp]
	str r7, [r0, #0]
_02039132:
	add r7, r7, #1
	add r4, #0xc
	cmp r7, #0x20
	blt _020390D8
	mov r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0203909C

	thumb_func_start sub_02039140
sub_02039140: ; 0x02039140
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r6, r3, #0
	bl sub_0202B370
	bl sub_0202AD28
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0202B370
	mov r1, #0
	bl sub_0202AED8
	add r5, r0, #0
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0
	bl sub_020A4118
	cmp r0, #0
	bne _02039178
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02039178:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, sp, #0xc
	bl sub_020A474C
	add r0, r7, #0
	add r1, sp, #0xc
	bl sub_020A4698
	cmp r0, #0
	bgt _02039194
	add sp, #0x18
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_02039194:
	mov r0, #0
	mvn r0, r0
	str r0, [r6, #0]
	mov r4, #0
_0203919C:
	add r0, r7, #0
	add r1, sp, #0xc
	bl sub_020A4698
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_020A4698
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _020391BC
	add sp, #0x18
	str r4, [r6, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020391BC:
	ldr r0, [r6, #0]
	cmp r0, #0
	bge _020391CE
	add r0, r5, #0
	bl sub_020A4498
	cmp r0, #0
	bne _020391CE
	str r4, [r6, #0]
_020391CE:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0x20
	blt _0203919C
	mov r0, #2
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02039140

	thumb_func_start sub_020391DC
sub_020391DC: ; 0x020391DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #0
	add r5, r0, #0
	str r2, [sp, #4]
	str r1, [sp, #0xc]
	bl sub_0202B370
	mov r1, #0
	bl sub_0202AED8
	str r0, [sp, #8]
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02039290
_02039200:
	bl sub_0203608C
	cmp r4, r0
	beq _02039284
	add r0, r4, #0
	bl sub_02032F1C
	add r7, r0, #0
	beq _02039284
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_0203909C
	str r0, [r6, #0]
	cmp r0, #3
	bne _02039226
	bl sub_02022974
_02039226:
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _02039244
	mov r0, #2
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02039298
	add r0, r5, #0
	bl sub_02033114
	b _02039284
_02039244:
	cmp r0, #1
	bne _0203927C
	bl sub_020389B8
	cmp r0, #0
	bne _02039284
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02039298
	ldr r2, [sp, #0x10]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r1, r1, r3
	mov r2, #0xc
	bl sub_020C4DB0
	add r0, r5, #0
	bl sub_02033114
	b _02039284
_0203927C:
	cmp r0, #2
	bne _02039284
	mov r0, #1
	str r0, [sp, #0xc]
_02039284:
	add r6, r6, #4
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02039200
_02039290:
	ldr r0, [sp, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020391DC

	thumb_func_start sub_02039298
sub_02039298: ; 0x02039298
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	str r0, [sp]
	add r7, r1, #0
	str r3, [sp, #4]
	bl sub_0202B370
	add r1, r5, #0
	add r4, r0, #0
	bl sub_0202AED8
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02032EE8
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #2
	beq _020392CE
	add r0, r7, #0
	bl sub_02032F1C
	ldr r1, [sp, #8]
	mov r2, #0xc
	bl sub_020C4DB0
_020392CE:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _02039314
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl sub_02025F04
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202AF0C
	ldr r0, [sp, #0xc]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_02025F30
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_0202AE2C
	add r0, r6, #0
	bl sub_02025F20
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_0202AE2C
	b _0203934A
_02039314:
	cmp r0, #1
	bne _0203934A
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_0202AD2C
	cmp r0, #2
	bne _0203934A
	add r0, r6, #0
	bl sub_02025F30
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_0202AE2C
	add r0, r6, #0
	bl sub_02025F20
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_0202AE2C
_0203934A:
	ldr r1, [sp, #4]
	mov r0, #0x78
	bl sub_02023790
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_02032F54
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	bl sub_02023D28
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0202AF50
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_02025F8C
	add r3, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #7
	bl sub_0202AE2C
	ldr r0, [sp]
	bl sub_02033114
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02039298

	thumb_func_start sub_02039390
sub_02039390: ; 0x02039390
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02032F1C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0202B370
	add r5, r0, #0
	mov r4, #0
_020393A6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202AED8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020A4828
	cmp r0, #0
	beq _020393BE
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_020393BE:
	add r4, r4, #1
	cmp r4, #0x20
	blt _020393A6
	mov r0, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02039390

	thumb_func_start sub_020393C8
sub_020393C8: ; 0x020393C8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	mov r2, #7
	add r6, r3, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	lsl r2, r2, #6
	add r3, r4, #0
	bl sub_020394D0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	bl sub_02039530
	add r0, r4, #0
	mov r1, #0x20
	bl sub_02018184
	add r4, r0, #0
	ldr r0, _02039424 ; =sub_02039428
	add r1, r4, #0
	mov r2, #5
	bl sub_0200DA3C
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	strh r6, [r4, #0xe]
	mov r1, #0
	str r1, [r4, #0]
	mov r0, #3
	str r0, [r4, #4]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x10]
	str r1, [r4, #8]
	strb r0, [r4, #0x10]
	strb r1, [r4, #0x12]
	mov r0, #7
	strb r1, [r4, #0x11]
	lsl r0, r0, #0x18
	str r0, [r4, #0x1c]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02039424: .word sub_02039428
	thumb_func_end sub_020393C8

	thumb_func_start sub_02039428
sub_02039428: ; 0x02039428
	ldr r3, _02039430 ; =sub_02039614
	add r0, r1, #0
	bx r3
	nop
_02039430: .word sub_02039614
	thumb_func_end sub_02039428

	thumb_func_start sub_02039434
sub_02039434: ; 0x02039434
	cmp r1, #4
	bge _0203943E
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
_0203943E:
	bx lr
	thumb_func_end sub_02039434

	thumb_func_start sub_02039440
sub_02039440: ; 0x02039440
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0200DA58
	mov r0, #7
	ldr r2, _0203946C ; =0x40000200
	lsl r0, r0, #0x18
	str r2, [r0, #0]
	mov r1, #0
	strh r1, [r0, #4]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _02039462
	ldr r0, _02039470 ; =0x07000400
	str r2, [r0, #0]
	strh r1, [r0, #4]
_02039462:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	nop
_0203946C: .word 0x40000200
_02039470: .word 0x07000400
	thumb_func_end sub_02039440

	thumb_func_start sub_02039474
sub_02039474: ; 0x02039474
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r2, #7
	ldrb r1, [r5, #0x10]
	mov r0, #2
	lsl r2, r2, #6
	add r3, r6, #0
	bl sub_020394D0
	ldrb r1, [r5, #0x10]
	mov r0, #2
	add r2, r6, #0
	bl sub_02039530
	cmp r4, #0
	beq _0203949C
	mov r0, #1
	b _0203949E
_0203949C:
	mov r0, #2
_0203949E:
	strb r0, [r5, #0x11]
	mov r0, #1
	strb r0, [r5, #0x12]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02039474

	thumb_func_start sub_020394A8
sub_020394A8: ; 0x020394A8
	push {r3, lr}
	mov r1, #0x96
	lsl r1, r1, #2
	bl sub_02018184
	str r0, [sp]
	ldr r0, _020394CC ; =0x02100A4C
	add r1, sp, #0
	bl sub_02017A94
	mov r1, #0x96
	ldr r0, [sp]
	lsl r1, r1, #2
	bl sub_020C2C54
	ldr r0, [sp]
	pop {r3, pc}
	nop
_020394CC: .word 0x02100A4C
	thumb_func_end sub_020394A8

	thumb_func_start sub_020394D0
sub_020394D0: ; 0x020394D0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x96
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #2
	add r4, r2, #0
	bl sub_02018184
	str r0, [sp, #4]
	cmp r0, #0
	beq _02039526
	ldr r0, _0203952C ; =0x02100A4C
	add r1, sp, #4
	bl sub_02017A94
	mov r1, #0x96
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	bl sub_020C2C54
	ldr r0, [sp, #4]
	add r1, sp, #0
	bl sub_020A71B0
	cmp r5, #1
	bne _02039514
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl sub_020C0160
	b _02039520
_02039514:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl sub_020C01B8
_02039520:
	ldr r0, [sp, #4]
	bl sub_020181C4
_02039526:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0203952C: .word 0x02100A4C
	thumb_func_end sub_020394D0

	thumb_func_start sub_02039530
sub_02039530: ; 0x02039530
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x96
	add r5, r0, #0
	add r0, r2, #0
	lsl r1, r1, #2
	bl sub_02018184
	str r0, [sp, #4]
	cmp r0, #0
	beq _020395F4
	cmp r4, #0
	add r1, sp, #4
	beq _02039556
	ldr r0, _020395F8 ; =0x02100A5C
	bl sub_02017A94
	b _0203955C
_02039556:
	ldr r0, _020395FC ; =0x02100A70
	bl sub_02017A94
_0203955C:
	mov r1, #0x96
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	bl sub_020C2C54
	ldr r0, [sp, #4]
	add r1, sp, #0
	bl sub_020A7164
	cmp r5, #1
	bne _02039584
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _02039600 ; =0x00300010
	add r4, r1, #0
	and r4, r0
	bl sub_020BEFEC
	b _02039592
_02039584:
	ldr r0, _02039604 ; =0x04001000
	ldr r1, [r0, #0]
	ldr r0, _02039600 ; =0x00300010
	add r4, r1, #0
	and r4, r0
	bl sub_020BF01C
_02039592:
	cmp r4, #0x10
	beq _0203959E
	ldr r1, _02039608 ; =0x00200010
	cmp r4, r1
	beq _020395B2
	b _020395CC
_0203959E:
	cmp r0, #0x40
	beq _020395A6
	cmp r0, #0x20
	bne _020395AC
_020395A6:
	mov r1, #0x3e
	lsl r1, r1, #8
	b _020395D0
_020395AC:
	mov r1, #0x7e
	lsl r1, r1, #8
	b _020395D0
_020395B2:
	cmp r0, #0x30
	beq _020395BA
	cmp r0, #0x50
	bne _020395BE
_020395BA:
	ldr r1, _0203960C ; =0x00013E00
	b _020395D0
_020395BE:
	cmp r0, #0x10
	bne _020395C8
	mov r1, #0xfe
	lsl r1, r1, #8
	b _020395D0
_020395C8:
	ldr r1, _02039610 ; =0x0001FE00
	b _020395D0
_020395CC:
	mov r1, #0xfe
	lsl r1, r1, #8
_020395D0:
	cmp r5, #1
	bne _020395E2
	ldr r0, [sp]
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r2, r2, #8
	bl sub_020C02BC
	b _020395EE
_020395E2:
	ldr r0, [sp]
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r2, r2, #8
	bl sub_020C0314
_020395EE:
	ldr r0, [sp, #4]
	bl sub_020181C4
_020395F4:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020395F8: .word 0x02100A5C
_020395FC: .word 0x02100A70
_02039600: .word 0x00300010
_02039604: .word 0x04001000
_02039608: .word 0x00200010
_0203960C: .word 0x00013E00
_02039610: .word 0x0001FE00
	thumb_func_end sub_02039530

	thumb_func_start sub_02039614
sub_02039614: ; 0x02039614
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x11]
	cmp r0, #1
	beq _02039624
	cmp r0, #2
	beq _0203963A
	b _02039650
_02039624:
	ldr r0, _02039708 ; =0x04000304
	ldrh r1, [r0]
	lsr r0, r0, #0xb
	and r0, r1
	asr r0, r0, #0xf
	cmp r0, #1
	bne _02039636
	mov r6, #1
	b _02039652
_02039636:
	mov r6, #2
	b _02039652
_0203963A:
	ldr r0, _02039708 ; =0x04000304
	ldrh r1, [r0]
	lsr r0, r0, #0xb
	and r0, r1
	asr r0, r0, #0xf
	cmp r0, #1
	bne _0203964C
	mov r6, #2
	b _02039652
_0203964C:
	mov r6, #1
	b _02039652
_02039650:
	mov r6, #1
_02039652:
	ldr r4, [r5, #4]
	cmp r6, #1
	bne _0203966A
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r0, _0203970C ; =0x00300010
	add r7, r1, #0
	and r7, r0
	bl sub_020BEFEC
	b _02039678
_0203966A:
	ldr r0, _02039710 ; =0x04001000
	ldr r1, [r0, #0]
	ldr r0, _0203970C ; =0x00300010
	add r7, r1, #0
	and r7, r0
	bl sub_020BF01C
_02039678:
	cmp r7, #0x10
	beq _02039684
	ldr r1, _02039714 ; =0x00200010
	cmp r7, r1
	beq _020396A0
	b _020396C4
_02039684:
	cmp r0, #0x40
	beq _0203968C
	cmp r0, #0x20
	bne _02039696
_0203968C:
	mov r0, #0x1f
	lsl r1, r4, #2
	lsl r0, r0, #4
	add r1, r1, r0
	b _020396CC
_02039696:
	mov r0, #0x3f
	lsl r1, r4, #2
	lsl r0, r0, #4
	add r1, r1, r0
	b _020396CC
_020396A0:
	cmp r0, #0x30
	beq _020396A8
	cmp r0, #0x50
	bne _020396B0
_020396A8:
	mov r0, #0x9f
	lsl r0, r0, #2
	add r1, r4, r0
	b _020396CC
_020396B0:
	cmp r0, #0x10
	bne _020396BC
	mov r0, #0x7f
	lsl r0, r0, #2
	add r1, r4, r0
	b _020396CC
_020396BC:
	mov r0, #0xff
	lsl r0, r0, #2
	add r1, r4, r0
	b _020396CC
_020396C4:
	mov r0, #0xfe
	lsl r1, r4, #1
	lsl r0, r0, #2
	add r1, r1, r0
_020396CC:
	cmp r6, #1
	bne _020396D6
	mov r2, #7
	lsl r2, r2, #0x18
	b _020396D8
_020396D6:
	ldr r2, _02039718 ; =0x07000400
_020396D8:
	ldrh r3, [r5, #0xe]
	ldrh r0, [r5, #0xc]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	mov r3, #1
	lsl r0, r0, #0x17
	lsl r3, r3, #0x1e
	lsr r0, r0, #7
	orr r3, r4
	orr r0, r3
	str r0, [r2, #0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	orr r0, r1
	strh r0, [r2, #4]
	ldr r1, [r5, #0x1c]
	cmp r2, r1
	beq _02039706
	ldr r0, _0203971C ; =0x40000200
	str r0, [r1, #0]
	mov r0, #0
	strh r0, [r1, #4]
	str r2, [r5, #0x1c]
_02039706:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02039708: .word 0x04000304
_0203970C: .word 0x00300010
_02039710: .word 0x04001000
_02039714: .word 0x00200010
_02039718: .word 0x07000400
_0203971C: .word 0x40000200
	thumb_func_end sub_02039614

	thumb_func_start sub_02039720
sub_02039720: ; 0x02039720
	push {r3, lr}
	ldr r0, _02039730 ; =0x021C07D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0203972E
	bl sub_02039614
_0203972E:
	pop {r3, pc}
	; .align 2, 0
_02039730: .word 0x021C07D8
	thumb_func_end sub_02039720

	thumb_func_start sub_02039734
sub_02039734: ; 0x02039734
	push {r4, lr}
	mov r4, #0
	bl sub_020389B8
	cmp r0, #0
	beq _02039742
	mov r4, #1
_02039742:
	mov r0, #0xf0
	mov r1, #0
	add r2, r4, #0
	mov r3, #1
	bl sub_02039750
	pop {r4, pc}
	thumb_func_end sub_02039734

	thumb_func_start sub_02039750
sub_02039750: ; 0x02039750
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_020334B8
	cmp r0, #0
	beq _02039788
	ldr r0, _0203978C ; =0x021C07D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02039770
	bl sub_02039794
_02039770:
	ldr r0, _02039790 ; =0x02100A38
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0x5b
	add r2, r6, #0
	add r3, r7, #0
	str r4, [sp, #8]
	bl sub_020393C8
	ldr r1, _0203978C ; =0x021C07D8
	str r0, [r1, #0]
_02039788:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0203978C: .word 0x021C07D8
_02039790: .word 0x02100A38
	thumb_func_end sub_02039750

	thumb_func_start sub_02039794
sub_02039794: ; 0x02039794
	push {r3, lr}
	ldr r0, _020397AC ; =0x021C07D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020397A8
	bl sub_02039440
	ldr r0, _020397AC ; =0x021C07D8
	mov r1, #0
	str r1, [r0, #0]
_020397A8:
	pop {r3, pc}
	nop
_020397AC: .word 0x021C07D8
	thumb_func_end sub_02039794

	thumb_func_start sub_020397B0
sub_020397B0: ; 0x020397B0
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _020397C4 ; =0x021C07D8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020397C0
	bl sub_02039434
_020397C0:
	pop {r3, pc}
	nop
_020397C4: .word 0x021C07D8
	thumb_func_end sub_020397B0

	thumb_func_start sub_020397C8
sub_020397C8: ; 0x020397C8
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _020397E0 ; =0x021C07D8
	add r2, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020397DC
	add r1, r3, #0
	bl sub_02039474
_020397DC:
	pop {r3, pc}
	nop
_020397E0: .word 0x021C07D8
	thumb_func_end sub_020397C8

	thumb_func_start sub_020397E4
sub_020397E4: ; 0x020397E4
	push {r3, lr}
	bl sub_02035E38
	cmp r0, #0
	beq _02039804
	bl sub_02035E18
	cmp r0, #1
	bgt _020397FE
	bl sub_020389B8
	cmp r0, #0
	beq _02039810
_020397FE:
	bl sub_02039734
	pop {r3, pc}
_02039804:
	bl sub_020389B8
	cmp r0, #0
	beq _02039810
	bl sub_02039734
_02039810:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020397E4

	thumb_func_start sub_02039814
sub_02039814: ; 0x02039814
	ldr r3, _02039828 ; =0x027E0000
	ldr r1, _0203982C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _02039830 ; =sub_020C458C
	mov r0, #3
	bx r3
	nop
_02039828: .word 0x027E0000
_0203982C: .word 0x00003FF8
_02039830: .word sub_020C458C
	thumb_func_end sub_02039814

	thumb_func_start sub_02039834
sub_02039834: ; 0x02039834
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	str r2, [sp, #0xc]
	cmp r1, #6
	bhi _0203985A
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203984C: ; jump table
	.short _0203985A - _0203984C - 2 ; case 0
	.short _0203985E - _0203984C - 2 ; case 1
	.short _02039862 - _0203984C - 2 ; case 2
	.short _02039866 - _0203984C - 2 ; case 3
	.short _0203986A - _0203984C - 2 ; case 4
	.short _0203986E - _0203984C - 2 ; case 5
	.short _02039872 - _0203984C - 2 ; case 6
_0203985A:
	mov r5, #1
	b _02039874
_0203985E:
	mov r5, #2
	b _02039874
_02039862:
	mov r5, #3
	b _02039874
_02039866:
	mov r5, #4
	b _02039874
_0203986A:
	mov r5, #5
	b _02039874
_0203986E:
	mov r5, #6
	b _02039874
_02039872:
	mov r5, #7
_02039874:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #1
	bl sub_020C164C
	ldr r1, _02039A24 ; =sub_02039814
	mov r0, #1
	bl sub_020C144C
	mov r0, #1
	bl sub_020C161C
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02039A28 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02039A2C ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _02039A30 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _02039A34 ; =0x04000050
	mov r1, #0
	strh r1, [r3]
	ldr r0, _02039A38 ; =0x04001050
	sub r3, #0x50
	strh r1, [r0]
	ldr r2, [r3, #0]
	ldr r1, _02039A3C ; =0xFFFF1FFF
	sub r0, #0x50
	and r2, r1
	str r2, [r3, #0]
	ldr r2, [r0, #0]
	and r1, r2
	str r1, [r0, #0]
	ldr r0, _02039A40 ; =0x020E5EFC
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	add r6, r0, #0
	ldr r0, _02039A44 ; =0x020E5ED0
	bl sub_02018368
	mov r1, #0
	ldr r2, _02039A48 ; =0x020E5EE0
	add r0, r6, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r6, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r2, _02039A4C ; =0x000001F7
	add r0, r6, #0
	mov r3, #2
	str r4, [sp, #4]
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r1, _02039A50 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _02039A50 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd6
	add r3, r4, #0
	bl sub_0200B144
	str r0, [sp, #0x10]
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r7, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	str r0, [sp, #0x14]
	bl sub_0201D710
	add r0, r4, #0
	bl sub_0200B358
	add r4, r0, #0
	ldr r2, _02039A54 ; =0x020E5EC8
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x18
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _02039A4C ; =0x000001F7
	add r0, sp, #0x18
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r1, r5, #0
	bl sub_0200B1B8
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0x18
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	bl sub_0201FFD0
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	add r0, sp, #0x18
	bl sub_0201A8FC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02039A24: .word sub_02039814
_02039A28: .word 0xFFFFE0FF
_02039A2C: .word 0x04001000
_02039A30: .word 0x021BF6DC
_02039A34: .word 0x04000050
_02039A38: .word 0x04001050
_02039A3C: .word 0xFFFF1FFF
_02039A40: .word 0x020E5EFC
_02039A44: .word 0x020E5ED0
_02039A48: .word 0x020E5EE0
_02039A4C: .word 0x000001F7
_02039A50: .word 0x00006C21
_02039A54: .word 0x020E5EC8
	thumb_func_end sub_02039834

	thumb_func_start sub_02039A58
sub_02039A58: ; 0x02039A58
	ldr r0, _02039A5C ; =0x020E5F24
	bx lr
	; .align 2, 0
_02039A5C: .word 0x020E5F24
	thumb_func_end sub_02039A58

	thumb_func_start sub_02039A60
sub_02039A60: ; 0x02039A60
	mov r0, #3
	bx lr
	thumb_func_end sub_02039A60

	thumb_func_start sub_02039A64
sub_02039A64: ; 0x02039A64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02039C40 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02039C44 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, _02039C48 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r3, _02039C4C ; =0x04000050
	mov r0, #0
	strh r0, [r3]
	ldr r2, _02039C50 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2]
	ldr r1, [r3, #0]
	ldr r0, _02039C54 ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0]
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, _02039C58 ; =0x020E5F7C
	bl sub_0201FE94
	add r0, r4, #0
	bl sub_02018340
	str r0, [sp, #0x10]
	ldr r0, _02039C5C ; =0x020E5F50
	bl sub_02018368
	mov r1, #0
	ldr r0, [sp, #0x10]
	ldr r2, _02039C60 ; =0x020E5F60
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	str r1, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, _02039C64 ; =0x000001F7
	mov r3, #2
	str r4, [sp, #4]
	bl sub_0200DAA4
	mov r0, #0
	mov r1, #0x20
	add r2, r4, #0
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r1, _02039C68 ; =0x00006C21
	mov r0, #0
	bl sub_0201975C
	ldr r1, _02039C68 ; =0x00006C21
	mov r0, #4
	bl sub_0201975C
	ldr r2, _02039C6C ; =0x000002B7
	mov r0, #1
	mov r1, #0x1a
	add r3, r4, #0
	bl sub_0200B144
	str r0, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	add r1, r4, #0
	bl sub_02023790
	add r4, r0, #0
	bl sub_0201D710
	ldr r0, [sp, #0x10]
	ldr r2, _02039C70 ; =0x020E5F48
	add r1, sp, #0x14
	bl sub_0201A8D4
	mov r0, #0xd0
	str r0, [sp]
	mov r0, #0x90
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x14
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
	ldr r2, _02039C64 ; =0x000001F7
	add r0, sp, #0x14
	mov r1, #0
	mov r3, #2
	bl sub_0200DC48
	ldr r0, [sp, #0xc]
	mov r1, #0x10
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r0, sp, #0x14
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	bl sub_0201FFD0
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0
	mov r1, #0x3f
	mov r2, #3
	bl sub_0200AB4C
	ldr r4, _02039C74 ; =0x04000130
	ldr r6, _02039C78 ; =0x027FFFA8
	mov r7, #1
_02039BBC:
	ldrh r1, [r4]
	ldrh r0, [r6]
	orr r1, r0
	ldr r0, _02039C7C ; =0x00002FFF
	eor r1, r0
	and r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	bl sub_0200106C
	add r0, r5, #0
	tst r0, r7
	bne _02039BE0
	mov r0, #1
	add r1, r0, #0
	bl sub_020C12B4
	b _02039BBC
_02039BE0:
	add r0, sp, #0x14
	bl sub_0201A8FC
	ldr r0, [sp, #0xc]
	bl sub_0200B190
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_02019044
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02039C40: .word 0xFFFFE0FF
_02039C44: .word 0x04001000
_02039C48: .word 0x021BF6DC
_02039C4C: .word 0x04000050
_02039C50: .word 0x04001050
_02039C54: .word 0xFFFF1FFF
_02039C58: .word 0x020E5F7C
_02039C5C: .word 0x020E5F50
_02039C60: .word 0x020E5F60
_02039C64: .word 0x000001F7
_02039C68: .word 0x00006C21
_02039C6C: .word 0x000002B7
_02039C70: .word 0x020E5F48
_02039C74: .word 0x04000130
_02039C78: .word 0x027FFFA8
_02039C7C: .word 0x00002FFF
	thumb_func_end sub_02039A64

	thumb_func_start sub_02039C80
sub_02039C80: ; 0x02039C80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r2, [sp]
	mov r2, #0
	strb r2, [r4, #1]
	mov r0, #0xe1
	ldr r7, _02039D60 ; =0x0000070A
	ldr r6, _02039D64 ; =0x00000A8E
	mov ip, r1
	strb r2, [r4]
	add r3, r4, #0
	add r5, r2, #0
	lsl r0, r0, #2
_02039C9C:
	add r1, r4, r2
	strh r5, [r3, #2]
	strb r5, [r1, r7]
	strh r5, [r3, r6]
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, r0
	blt _02039C9C
	ldr r0, _02039D68 ; =0x00001196
	mov r2, #0
_02039CB0:
	add r1, r4, r5
	add r5, r5, #1
	strb r2, [r1, r0]
	cmp r5, #0x10
	blt _02039CB0
	mov r0, #0x29
	mov r1, ip
	mov r2, #0xb
	bl sub_02006ADC
	add r6, r0, #0
	ldrb r0, [r6]
	add r5, r6, #5
	strb r0, [r4, #1]
	ldrb r0, [r6, #1]
	strb r0, [r4]
	ldrb r0, [r6, #2]
	str r0, [sp, #8]
	ldrb r0, [r6, #3]
	str r0, [sp, #4]
	ldrb r7, [r6, #4]
	cmp r7, #0x10
	bls _02039CE2
	bl sub_02022974
_02039CE2:
	ldr r1, _02039D68 ; =0x00001196
	add r0, r5, #0
	add r1, r4, r1
	add r2, r7, #0
	bl sub_020C4DB0
	ldr r0, [sp, #8]
	add r5, r5, r7
	cmp r0, #0
	beq _02039D12
	ldrb r3, [r4, #1]
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #2
	mul r2, r3
	lsl r2, r2, #1
	bl sub_020C4DB0
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	mul r0, r1
	lsl r0, r0, #1
	add r5, r5, r0
	b _02039D26
_02039D12:
	ldrb r3, [r4, #1]
	ldrb r2, [r4]
	ldr r0, [sp]
	add r1, r4, #2
	lsl r0, r0, #0x10
	mul r2, r3
	lsr r0, r0, #0x10
	lsl r2, r2, #1
	bl sub_020C4AF0
_02039D26:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02039D44
	ldrb r3, [r4, #1]
	ldrb r2, [r4]
	ldr r1, _02039D60 ; =0x0000070A
	add r0, r5, #0
	add r1, r4, r1
	mul r2, r3
	bl sub_020C4DB0
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	mul r0, r1
	add r5, r5, r0
_02039D44:
	ldrb r3, [r4, #1]
	ldrb r2, [r4]
	ldr r1, _02039D64 ; =0x00000A8E
	add r0, r5, #0
	mul r2, r3
	add r1, r4, r1
	lsl r2, r2, #1
	bl sub_020C4DB0
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02039D60: .word 0x0000070A
_02039D64: .word 0x00000A8E
_02039D68: .word 0x00001196
	thumb_func_end sub_02039C80

	thumb_func_start sub_02039D6C
sub_02039D6C: ; 0x02039D6C
	ldr r3, _02039D74 ; =sub_02039D78
	mov r0, #0xb
	bx r3
	nop
_02039D74: .word sub_02039D78
	thumb_func_end sub_02039D6C

	thumb_func_start sub_02039D78
sub_02039D78: ; 0x02039D78
	push {r3, lr}
	ldr r1, _02039D8C ; =0x000011AA
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	pop {r3, pc}
	nop
_02039D8C: .word 0x000011AA
	thumb_func_end sub_02039D78

	thumb_func_start sub_02039D90
sub_02039D90: ; 0x02039D90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02039D9C
	bl sub_02022974
_02039D9C:
	cmp r5, #0
	bne _02039DA4
	bl sub_02022974
_02039DA4:
	cmp r5, r4
	bne _02039DAC
	bl sub_02022974
_02039DAC:
	ldr r1, _02039DBC ; =0x000008D5
_02039DAE:
	ldrh r0, [r5]
	add r5, r5, #2
	strh r0, [r4]
	add r4, r4, #2
	sub r1, r1, #1
	bne _02039DAE
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02039DBC: .word 0x000008D5
	thumb_func_end sub_02039D90

	thumb_func_start sub_02039DC0
sub_02039DC0: ; 0x02039DC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203A060
	add r6, r0, #0
	add r0, r4, #4
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02039C80
	strb r6, [r4, #2]
	ldrb r0, [r4, #4]
	strb r0, [r4, #1]
	ldrb r0, [r4, #5]
	strb r0, [r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02039DC0

	thumb_func_start sub_02039DE4
sub_02039DE4: ; 0x02039DE4
	ldr r3, _02039DE8 ; =sub_020181C4
	bx r3
	; .align 2, 0
_02039DE8: .word sub_020181C4
	thumb_func_end sub_02039DE4

	thumb_func_start sub_02039DEC
sub_02039DEC: ; 0x02039DEC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	mul r0, r1
	cmp r5, r0
	blt _02039E00
	bl sub_02022974
_02039E00:
	lsl r0, r5, #1
	add r1, r4, r0
	ldr r0, _02039E0C ; =0x00000A92
	ldrh r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_02039E0C: .word 0x00000A92
	thumb_func_end sub_02039DEC

	thumb_func_start sub_02039E10
sub_02039E10: ; 0x02039E10
	push {r4, lr}
	add r4, r0, #0
	bne _02039E1A
	bl sub_02022974
_02039E1A:
	ldrb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02039E10

	thumb_func_start sub_02039E20
sub_02039E20: ; 0x02039E20
	push {r4, lr}
	add r4, r0, #0
	bne _02039E2A
	bl sub_02022974
_02039E2A:
	ldrb r0, [r4, #1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02039E20

	thumb_func_start sub_02039E30
sub_02039E30: ; 0x02039E30
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrb r0, [r7, #1]
	add r5, r1, #0
	add r4, r2, #0
	ldrb r6, [r7]
	str r0, [sp]
	cmp r5, #0
	blt _02039E46
	cmp r5, r6
	blt _02039E4A
_02039E46:
	bl sub_02022974
_02039E4A:
	cmp r4, #0
	blt _02039E54
	ldr r0, [sp]
	cmp r4, r0
	blt _02039E58
_02039E54:
	bl sub_02022974
_02039E58:
	add r0, r4, #0
	mul r0, r6
	add r0, r5, r0
	lsl r0, r0, #1
	add r0, r7, r0
	ldrh r0, [r0, #6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02039E30

	thumb_func_start sub_02039E68
sub_02039E68: ; 0x02039E68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	mul r0, r1
	cmp r4, #0
	blt _02039E7C
	cmp r4, r0
	blt _02039E80
_02039E7C:
	bl sub_02022974
_02039E80:
	lsl r0, r4, #1
	add r0, r5, r0
	ldrh r0, [r0, #6]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02039E68

	thumb_func_start sub_02039E88
sub_02039E88: ; 0x02039E88
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_02039E88

	thumb_func_start sub_02039E8C
sub_02039E8C: ; 0x02039E8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	cmp r4, r0
	blt _02039E9E
	bl sub_02022974
_02039E9E:
	ldr r0, [sp, #0x10]
	mul r0, r6
	add r4, r4, r0
	mov r0, #0xe1
	lsl r0, r0, #2
	cmp r4, r0
	blt _02039EB0
	bl sub_02022974
_02039EB0:
	ldr r0, _02039EB8 ; =0x0000070E
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02039EB8: .word 0x0000070E
	thumb_func_end sub_02039E8C

	thumb_func_start sub_02039EBC
sub_02039EBC: ; 0x02039EBC
	push {r3, r4, r5, lr}
	ldr r1, _02039EEC ; =0x00000708
	add r4, r0, #0
	bl sub_02018144
	add r5, r0, #0
	mov r0, #0x29
	mov r1, #0
	add r2, r4, #0
	bl sub_02006ADC
	add r4, r0, #0
	ldrb r1, [r4, #4]
	add r0, r4, #5
	ldr r2, _02039EEC ; =0x00000708
	add r0, r0, r1
	add r1, r5, #0
	bl sub_020C4DB0
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02039EEC: .word 0x00000708
	thumb_func_end sub_02039EBC

	thumb_func_start sub_02039EF0
sub_02039EF0: ; 0x02039EF0
	push {r4, lr}
	add r4, r0, #0
	bne _02039EFA
	bl sub_02022974
_02039EFA:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02039EF0

	thumb_func_start sub_02039F04
sub_02039F04: ; 0x02039F04
	mov r3, #0x1e
	mul r3, r2
	add r1, r1, r3
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	bx lr
	thumb_func_end sub_02039F04

	thumb_func_start sub_02039F10
sub_02039F10: ; 0x02039F10
	push {r3, r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1c8
	add r3, r0, #0
	add r5, r1, #0
	lsl r1, r3, #0x10
	add r4, r2, #0
	add r0, sp, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl sub_02039C80
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r5, r0
	blt _02039F42
	bl sub_02022974
_02039F42:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r4, r0
	blt _02039F4E
	bl sub_02022974
_02039F4E:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	mul r0, r4
	add r0, r5, r0
	lsl r1, r0, #1
	add r0, sp, #0
	add r0, #2
	ldrh r0, [r0, r1]
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1c8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02039F10

	thumb_func_start sub_02039F74
sub_02039F74: ; 0x02039F74
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _02039F80
	bl sub_02022974
_02039F80:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02039DEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02039F74

	thumb_func_start sub_02039F8C
sub_02039F8C: ; 0x02039F8C
	push {r4, r5, r6, r7}
	ldr r1, _02039FD8 ; =0x00000A92
	ldrb r7, [r0]
	add r2, r0, r1
	ldr r1, _02039FDC ; =0x0000070E
	add r1, r0, r1
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _02039FD2
	mov r0, #0x15
	add r6, r7, #0
	mul r6, r0
	add r5, r6, #0
	add r5, #0x17
	mov r4, #0xb0
	lsl r0, r5, #1
	add r6, #0x18
	strh r4, [r2, r0]
	lsl r0, r6, #1
	strh r4, [r2, r0]
	mov r0, #0x16
	add r3, r7, #0
	mul r3, r0
	add r0, r3, #0
	add r0, #0x17
	lsl r7, r0, #1
	add r3, #0x18
	strh r4, [r2, r7]
	lsl r7, r3, #1
	strh r4, [r2, r7]
	mov r2, #2
	strb r2, [r1, r5]
	strb r2, [r1, r6]
	strb r2, [r1, r0]
	strb r2, [r1, r3]
_02039FD2:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_02039FD8: .word 0x00000A92
_02039FDC: .word 0x0000070E
	thumb_func_end sub_02039F8C

	thumb_func_start sub_02039FE0
sub_02039FE0: ; 0x02039FE0
	push {r3, r4}
	ldr r1, _0203A020 ; =0x00000A92
	add r2, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0203A01A
	mov r0, #0xf
	mul r0, r1
	add r0, #0x1c
	mov r3, #0x77
	lsl r0, r0, #1
	strh r3, [r2, r0]
	lsl r0, r1, #4
	add r3, r0, #0
	add r3, #0x1b
	mov r4, #0x78
	lsl r3, r3, #1
	strh r4, [r2, r3]
	add r3, r0, #0
	add r3, #0x1c
	add r0, r1, r0
	add r0, #0x1b
	mov r4, #0x79
	lsl r3, r3, #1
	strh r4, [r2, r3]
	mov r3, #0x7a
	lsl r0, r0, #1
	strh r3, [r2, r0]
_0203A01A:
	pop {r3, r4}
	bx lr
	nop
_0203A020: .word 0x00000A92
	thumb_func_end sub_02039FE0

	thumb_func_start sub_0203A024
sub_0203A024: ; 0x0203A024
	push {r3, lr}
	ldr r1, _0203A034 ; =0x00000251
	cmp r0, r1
	blo _0203A032
	bl sub_02022974
	mov r0, #3
_0203A032:
	pop {r3, pc}
	; .align 2, 0
_0203A034: .word 0x00000251
	thumb_func_end sub_0203A024

	thumb_func_start sub_0203A038
sub_0203A038: ; 0x0203A038
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A048 ; =0x020E601C
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A048: .word 0x020E601C
	thumb_func_end sub_0203A038

	thumb_func_start sub_0203A04C
sub_0203A04C: ; 0x0203A04C
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A05C ; =0x020E601D
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A05C: .word 0x020E601D
	thumb_func_end sub_0203A04C

	thumb_func_start sub_0203A060
sub_0203A060: ; 0x0203A060
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A080 ; =0x020E601E
	ldrh r0, [r0, r1]
	cmp r0, #0x16
	bne _0203A07C
	ldr r1, _0203A084 ; =0x020E4C40
	ldrb r1, [r1]
	cmp r1, #0xb
	bne _0203A07C
	mov r0, #0x17
_0203A07C:
	pop {r3, pc}
	nop
_0203A080: .word 0x020E601E
_0203A084: .word 0x020E4C40
	thumb_func_end sub_0203A060

	thumb_func_start sub_0203A088
sub_0203A088: ; 0x0203A088
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A098 ; =0x020E6024
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A098: .word 0x020E6024
	thumb_func_end sub_0203A088

	thumb_func_start sub_0203A09C
sub_0203A09C: ; 0x0203A09C
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A0AC ; =0x020E6020
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A0AC: .word 0x020E6020
	thumb_func_end sub_0203A09C

	thumb_func_start sub_0203A0B0
sub_0203A0B0: ; 0x0203A0B0
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A0C0 ; =0x020E6022
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A0C0: .word 0x020E6022
	thumb_func_end sub_0203A0B0

	thumb_func_start sub_0203A0C4
sub_0203A0C4: ; 0x0203A0C4
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A0D4 ; =0x020E6026
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A0D4: .word 0x020E6026
	thumb_func_end sub_0203A0C4

	thumb_func_start sub_0203A0D8
sub_0203A0D8: ; 0x0203A0D8
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A0E8 ; =0x020E6028
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A0E8: .word 0x020E6028
	thumb_func_end sub_0203A0D8

	thumb_func_start sub_0203A0EC
sub_0203A0EC: ; 0x0203A0EC
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A108 ; =0x020E602A
	ldrh r1, [r0, r1]
	ldr r0, _0203A10C ; =0x0000FFFF
	cmp r1, r0
	beq _0203A104
	mov r0, #1
	pop {r3, pc}
_0203A104:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0203A108: .word 0x020E602A
_0203A10C: .word 0x0000FFFF
	thumb_func_end sub_0203A0EC

	thumb_func_start sub_0203A110
sub_0203A110: ; 0x0203A110
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A120 ; =0x020E602A
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A120: .word 0x020E602A
	thumb_func_end sub_0203A110

	thumb_func_start sub_0203A124
sub_0203A124: ; 0x0203A124
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A134 ; =0x020E602C
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A134: .word 0x020E602C
	thumb_func_end sub_0203A124

	thumb_func_start sub_0203A138
sub_0203A138: ; 0x0203A138
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A150 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_0203A150: .word 0x020E601C
	thumb_func_end sub_0203A138

	thumb_func_start sub_0203A154
sub_0203A154: ; 0x0203A154
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A170 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x12]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_0203A170: .word 0x020E601C
	thumb_func_end sub_0203A154

	thumb_func_start sub_0203A174
sub_0203A174: ; 0x0203A174
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A184 ; =0x020E6030
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A184: .word 0x020E6030
	thumb_func_end sub_0203A174

	thumb_func_start sub_0203A188
sub_0203A188: ; 0x0203A188
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A198 ; =0x020E6031
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A198: .word 0x020E6031
	thumb_func_end sub_0203A188

	thumb_func_start sub_0203A19C
sub_0203A19C: ; 0x0203A19C
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A1B4 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1b
	pop {r3, pc}
	nop
_0203A1B4: .word 0x020E601C
	thumb_func_end sub_0203A19C

	thumb_func_start sub_0203A1B8
sub_0203A1B8: ; 0x0203A1B8
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A1D0 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1f
	pop {r3, pc}
	nop
_0203A1D0: .word 0x020E601C
	thumb_func_end sub_0203A1B8

	thumb_func_start sub_0203A1D4
sub_0203A1D4: ; 0x0203A1D4
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A1EC ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	pop {r3, pc}
	nop
_0203A1EC: .word 0x020E601C
	thumb_func_end sub_0203A1D4

	thumb_func_start sub_0203A1F0
sub_0203A1F0: ; 0x0203A1F0
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A208 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	pop {r3, pc}
	nop
_0203A208: .word 0x020E601C
	thumb_func_end sub_0203A1F0

	thumb_func_start sub_0203A20C
sub_0203A20C: ; 0x0203A20C
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A224 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	pop {r3, pc}
	nop
_0203A224: .word 0x020E601C
	thumb_func_end sub_0203A20C

	thumb_func_start sub_0203A228
sub_0203A228: ; 0x0203A228
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A1D4
	cmp r0, #0
	bne _0203A238
	mov r0, #0
	pop {r4, pc}
_0203A238:
	add r0, r4, #0
	bl sub_0203A20C
	cmp r0, #1
	beq _0203A246
	mov r0, #1
	pop {r4, pc}
_0203A246:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A228

	thumb_func_start sub_0203A24C
sub_0203A24C: ; 0x0203A24C
	push {r3, lr}
	bl sub_0203A060
	cmp r0, #0
	bne _0203A25A
	mov r0, #1
	pop {r3, pc}
_0203A25A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A24C

	thumb_func_start sub_0203A260
sub_0203A260: ; 0x0203A260
	push {r3, lr}
	bl sub_0203A20C
	cmp r0, #5
	bne _0203A26E
	mov r0, #1
	pop {r3, pc}
_0203A26E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A260

	thumb_func_start sub_0203A274
sub_0203A274: ; 0x0203A274
	push {r3, lr}
	bl sub_0203A20C
	cmp r0, #3
	bne _0203A282
	mov r0, #1
	pop {r3, pc}
_0203A282:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A274

	thumb_func_start sub_0203A288
sub_0203A288: ; 0x0203A288
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A20C
	cmp r0, #4
	beq _0203A29E
	add r0, r4, #0
	bl sub_0203A20C
	cmp r0, #5
	bne _0203A2A2
_0203A29E:
	mov r0, #1
	pop {r4, pc}
_0203A2A2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A288

	thumb_func_start sub_0203A2A8
sub_0203A2A8: ; 0x0203A2A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A20C
	cmp r0, #1
	beq _0203A2BE
	add r0, r4, #0
	bl sub_0203A20C
	cmp r0, #2
	bne _0203A2C2
_0203A2BE:
	mov r0, #1
	pop {r4, pc}
_0203A2C2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A2A8

	thumb_func_start sub_0203A2C8
sub_0203A2C8: ; 0x0203A2C8
	push {r3, lr}
	bl sub_0203A260
	cmp r0, #0
	beq _0203A2D6
	mov r0, #1
	pop {r3, pc}
_0203A2D6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A2C8

	thumb_func_start sub_0203A2DC
sub_0203A2DC: ; 0x0203A2DC
	ldr r1, _0203A2EC ; =0x000001D2
	cmp r0, r1
	bne _0203A2E6
	mov r0, #1
	bx lr
_0203A2E6:
	mov r0, #0
	bx lr
	nop
_0203A2EC: .word 0x000001D2
	thumb_func_end sub_0203A2DC

	thumb_func_start sub_0203A2F0
sub_0203A2F0: ; 0x0203A2F0
	cmp r0, #0xdb
	bne _0203A2F8
	mov r0, #1
	bx lr
_0203A2F8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203A2F0

	thumb_func_start sub_0203A2FC
sub_0203A2FC: ; 0x0203A2FC
	ldr r1, _0203A30C ; =0x0000011F
	cmp r0, r1
	bne _0203A306
	mov r0, #1
	bx lr
_0203A306:
	mov r0, #0
	bx lr
	nop
_0203A30C: .word 0x0000011F
	thumb_func_end sub_0203A2FC

	thumb_func_start sub_0203A310
sub_0203A310: ; 0x0203A310
	cmp r0, #0xfd
	bne _0203A318
	mov r0, #1
	bx lr
_0203A318:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203A310

	thumb_func_start sub_0203A31C
sub_0203A31C: ; 0x0203A31C
	cmp r0, #0xdc
	beq _0203A32A
	mov r1, #0x92
	lsl r1, r1, #2
	sub r0, r0, r1
	cmp r0, #1
	bhi _0203A32E
_0203A32A:
	mov r0, #1
	bx lr
_0203A32E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A31C

	thumb_func_start sub_0203A334
sub_0203A334: ; 0x0203A334
	ldr r3, _0203A350 ; =0x020E5FA4
	mov r2, #0
_0203A338:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0203A342
	mov r0, #1
	bx lr
_0203A342:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x12
	blo _0203A338
	mov r0, #0
	bx lr
	nop
_0203A350: .word 0x020E5FA4
	thumb_func_end sub_0203A334

	thumb_func_start sub_0203A354
sub_0203A354: ; 0x0203A354
	ldr r3, _0203A374 ; =0x020E5FC8
	mov r2, #0
_0203A358:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0203A368
	add r0, r2, #1
	lsl r1, r0, #1
	ldr r0, _0203A374 ; =0x020E5FC8
	ldrh r0, [r0, r1]
	bx lr
_0203A368:
	add r2, r2, #2
	add r3, r3, #4
	cmp r2, #0x2a
	blo _0203A358
	mov r0, #0
	bx lr
	; .align 2, 0
_0203A374: .word 0x020E5FC8
	thumb_func_end sub_0203A354

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

	thumb_func_start sub_0203A6DC
sub_0203A6DC: ; 0x0203A6DC
	mov r0, #0xa0
	bx lr
	thumb_func_end sub_0203A6DC

	thumb_func_start sub_0203A6E0
sub_0203A6E0: ; 0x0203A6E0
	mov r0, #5
	lsl r0, r0, #0xa
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A6E0

	thumb_func_start sub_0203A6E8
sub_0203A6E8: ; 0x0203A6E8
	ldr r3, _0203A6F4 ; =sub_020C4B4C
	mov r2, #5
	add r1, r0, #0
	mov r0, #0
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_0203A6F4: .word sub_020C4B4C
	thumb_func_end sub_0203A6E8

	thumb_func_start sub_0203A6F8
sub_0203A6F8: ; 0x0203A6F8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xa0
	bl sub_020D5124
	add r0, r4, #0
	add r0, #0x6c
	bl sub_020556C4
	add r0, r4, #0
	add r0, #0x8c
	bl sub_0205EC34
	bl sub_0203A7EC
	add r4, #0x68
	strh r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A6F8

	thumb_func_start sub_0203A720
sub_0203A720: ; 0x0203A720
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A720

	thumb_func_start sub_0203A724
sub_0203A724: ; 0x0203A724
	add r0, #0x14
	bx lr
	thumb_func_end sub_0203A724

	thumb_func_start sub_0203A728
sub_0203A728: ; 0x0203A728
	add r0, #0x28
	bx lr
	thumb_func_end sub_0203A728

	thumb_func_start sub_0203A72C
sub_0203A72C: ; 0x0203A72C
	add r0, #0x50
	bx lr
	thumb_func_end sub_0203A72C

	thumb_func_start sub_0203A730
sub_0203A730: ; 0x0203A730
	add r0, #0x3c
	bx lr
	thumb_func_end sub_0203A730

	thumb_func_start sub_0203A734
sub_0203A734: ; 0x0203A734
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x3c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_0203A734

	thumb_func_start sub_0203A748
sub_0203A748: ; 0x0203A748
	add r0, #0x64
	bx lr
	thumb_func_end sub_0203A748

	thumb_func_start sub_0203A74C
sub_0203A74C: ; 0x0203A74C
	add r0, #0x66
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A74C

	thumb_func_start sub_0203A754
sub_0203A754: ; 0x0203A754
	add r0, #0x66
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A754

	thumb_func_start sub_0203A75C
sub_0203A75C: ; 0x0203A75C
	add r0, #0x68
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A75C

	thumb_func_start sub_0203A764
sub_0203A764: ; 0x0203A764
	add r0, #0x68
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A764

	thumb_func_start sub_0203A76C
sub_0203A76C: ; 0x0203A76C
	add r0, #0x6c
	bx lr
	thumb_func_end sub_0203A76C

	thumb_func_start sub_0203A770
sub_0203A770: ; 0x0203A770
	add r0, #0x6a
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A770

	thumb_func_start sub_0203A778
sub_0203A778: ; 0x0203A778
	add r0, #0x6a
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A778

	thumb_func_start sub_0203A780
sub_0203A780: ; 0x0203A780
	add r0, #0x8c
	bx lr
	thumb_func_end sub_0203A780

	thumb_func_start sub_0203A784
sub_0203A784: ; 0x0203A784
	add r0, #0x98
	bx lr
	thumb_func_end sub_0203A784

	thumb_func_start sub_0203A788
sub_0203A788: ; 0x0203A788
	add r0, #0x96
	bx lr
	thumb_func_end sub_0203A788

	thumb_func_start sub_0203A78C
sub_0203A78C: ; 0x0203A78C
	add r0, #0x94
	bx lr
	thumb_func_end sub_0203A78C

	thumb_func_start sub_0203A790
sub_0203A790: ; 0x0203A790
	ldr r3, _0203A798 ; =sub_020245BC
	mov r1, #6
	bx r3
	nop
_0203A798: .word sub_020245BC
	thumb_func_end sub_0203A790

	thumb_func_start sub_0203A79C
sub_0203A79C: ; 0x0203A79C
	ldr r3, _0203A7A4 ; =sub_020245BC
	mov r1, #0xb
	bx r3
	nop
_0203A7A4: .word sub_020245BC
	thumb_func_end sub_0203A79C

	thumb_func_start sub_0203A7A8
sub_0203A7A8: ; 0x0203A7A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A79C
	add r2, r0, #0
	ldr r1, [r4, #0x38]
	add r0, r4, #0
	mov r3, #0x40
	bl sub_02061CA8
	pop {r4, pc}
	thumb_func_end sub_0203A7A8

	thumb_func_start sub_0203A7C0
sub_0203A7C0: ; 0x0203A7C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0203A79C
	add r1, r0, #0
	ldr r0, [r4, #0x38]
	mov r2, #0x40
	bl sub_02061D04
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A7C0

	thumb_func_start sub_0203A7D8
sub_0203A7D8: ; 0x0203A7D8
	push {r3, lr}
	cmp r0, #0
	ble _0203A7E2
	cmp r0, #0x14
	bls _0203A7E8
_0203A7E2:
	bl sub_02022974
	mov r0, #1
_0203A7E8:
	sub r0, r0, #1
	pop {r3, pc}
	thumb_func_end sub_0203A7D8

	thumb_func_start sub_0203A7EC
sub_0203A7EC: ; 0x0203A7EC
	mov r0, #1
	bx lr
	thumb_func_end sub_0203A7EC

	thumb_func_start sub_0203A7F0
sub_0203A7F0: ; 0x0203A7F0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203A7D8
	lsl r1, r0, #4
	ldr r0, _0203A818 ; =0x020E97BA
	ldrh r0, [r0, r1]
	str r0, [r4, #0]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	ldr r0, _0203A81C ; =0x020E97BC
	ldrh r0, [r0, r1]
	str r0, [r4, #8]
	ldr r0, _0203A820 ; =0x020E97BE
	ldrh r0, [r0, r1]
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
_0203A818: .word 0x020E97BA
_0203A81C: .word 0x020E97BC
_0203A820: .word 0x020E97BE
	thumb_func_end sub_0203A7F0

	thumb_func_start sub_0203A824
sub_0203A824: ; 0x0203A824
	push {r4, lr}
	add r4, r1, #0
	bl sub_0203A7D8
	lsl r1, r0, #4
	ldr r0, _0203A84C ; =0x020E97B4
	ldrh r0, [r0, r1]
	str r0, [r4, #0]
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	ldr r0, _0203A850 ; =0x020E97B6
	ldrh r0, [r0, r1]
	str r0, [r4, #8]
	ldr r0, _0203A854 ; =0x020E97B8
	ldrh r0, [r0, r1]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
_0203A84C: .word 0x020E97B4
_0203A850: .word 0x020E97B6
_0203A854: .word 0x020E97B8
	thumb_func_end sub_0203A824

	thumb_func_start sub_0203A858
sub_0203A858: ; 0x0203A858
	ldr r3, _0203A878 ; =0x020E97B4
	mov r2, #0
_0203A85C:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0203A86C
	ldrb r1, [r3, #0xc]
	cmp r1, #0
	beq _0203A86C
	add r0, r2, #1
	bx lr
_0203A86C:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, #0x14
	blo _0203A85C
	mov r0, #0
	bx lr
	; .align 2, 0
_0203A878: .word 0x020E97B4
	thumb_func_end sub_0203A858

	thumb_func_start sub_0203A87C
sub_0203A87C: ; 0x0203A87C
	ldr r3, _0203A89C ; =0x020E97B4
	mov r2, #0
_0203A880:
	ldrh r1, [r3, #6]
	cmp r0, r1
	bne _0203A890
	ldrb r1, [r3, #0xc]
	cmp r1, #0
	beq _0203A890
	add r0, r2, #1
	bx lr
_0203A890:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, #0x14
	blo _0203A880
	mov r0, #0
	bx lr
	; .align 2, 0
_0203A89C: .word 0x020E97B4
	thumb_func_end sub_0203A87C

	thumb_func_start sub_0203A8A0
sub_0203A8A0: ; 0x0203A8A0
	push {r3, r4, r5, r6}
	asr r3, r1, #4
	lsr r3, r3, #0x1b
	add r3, r1, r3
	asr r1, r2, #4
	lsr r1, r1, #0x1b
	add r1, r2, r1
	mov r4, #0
	asr r2, r1, #5
	ldr r5, _0203A8E4 ; =0x020E97B4
	asr r3, r3, #5
	add r1, r4, #0
_0203A8B8:
	ldrh r6, [r5, #6]
	cmp r0, r6
	bne _0203A8D6
	ldrh r6, [r5, #8]
	add r4, r1, #1
	lsr r6, r6, #5
	cmp r3, r6
	bne _0203A8D6
	ldrh r6, [r5, #0xa]
	lsr r6, r6, #5
	cmp r2, r6
	bne _0203A8D6
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
_0203A8D6:
	add r1, r1, #1
	add r5, #0x10
	cmp r1, #0x14
	blo _0203A8B8
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_0203A8E4: .word 0x020E97B4
	thumb_func_end sub_0203A8A0

	thumb_func_start sub_0203A8E8
sub_0203A8E8: ; 0x0203A8E8
	push {r4, lr}
	ldr r3, _0203A918 ; =0x020E97B4
	mov r4, #0
_0203A8EE:
	ldrh r2, [r3, #6]
	cmp r1, r2
	bne _0203A90E
	ldrb r2, [r3, #0xd]
	cmp r2, #0
	beq _0203A90E
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r2, _0203A91C ; =0x020E97C2
	lsl r3, r4, #4
	ldrh r2, [r2, r3]
	mov r1, #1
	bl sub_0206AF3C
	pop {r4, pc}
_0203A90E:
	add r4, r4, #1
	add r3, #0x10
	cmp r4, #0x14
	blo _0203A8EE
	pop {r4, pc}
	; .align 2, 0
_0203A918: .word 0x020E97B4
_0203A91C: .word 0x020E97C2
	thumb_func_end sub_0203A8E8

	thumb_func_start sub_0203A920
sub_0203A920: ; 0x0203A920
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl sub_0203A7D8
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	ldr r2, _0203A940 ; =0x020E97C2
	lsl r3, r4, #4
	ldrh r2, [r2, r3]
	mov r1, #2
	bl sub_0206AF3C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203A940: .word 0x020E97C2
	thumb_func_end sub_0203A920

	thumb_func_start sub_0203A944
sub_0203A944: ; 0x0203A944
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	bl sub_0203A174
	add r4, r0, #0
	cmp r4, #0x20
	blt _0203A9BC
	ldr r0, [r7, #0xc]
	bl sub_02025CD8
	add r6, r0, #0
	add r0, r6, #4
	bl sub_02013900
	sub r5, r0, #1
	bmi _0203A96C
	ldr r0, _0203A9C0 ; =0x0000016E
	cmp r5, r0
	blt _0203A970
_0203A96C:
	bl sub_02022974
_0203A970:
	ldr r0, [r6, #8]
	cmp r0, #2
	bls _0203A9A4
	ldr r6, [r6, #4]
	mov r0, #3
	tst r0, r6
	bne _0203A98A
	add r0, r6, #0
	mov r1, #0x64
	bl sub_020E2178
	cmp r1, #0
	bne _0203A998
_0203A98A:
	mov r1, #0x19
	add r0, r6, #0
	lsl r1, r1, #4
	bl sub_020E2178
	cmp r1, #0
	bne _0203A99C
_0203A998:
	mov r0, #1
	b _0203A99E
_0203A99C:
	mov r0, #0
_0203A99E:
	cmp r0, #0
	bne _0203A9A4
	add r5, r5, #1
_0203A9A4:
	add r0, r7, #0
	bl sub_02055C40
	cmp r0, #0
	beq _0203A9B0
	mov r5, #1
_0203A9B0:
	lsl r0, r5, #2
	sub r4, #0x20
	add r0, r5, r0
	add r1, r4, r0
	ldr r0, _0203A9C4 ; =0x020E98F4
	ldrb r0, [r0, r1]
_0203A9BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203A9C0: .word 0x0000016E
_0203A9C4: .word 0x020E98F4
	thumb_func_end sub_0203A944

	thumb_func_start sub_0203A9C8
sub_0203A9C8: ; 0x0203A9C8
	push {r3, lr}
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	cmp r0, #0
	beq _0203A9DA
	mov r0, #1
	pop {r3, pc}
_0203A9DA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A9C8

	thumb_func_start sub_0203A9E0
sub_0203A9E0: ; 0x0203A9E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203ABB4
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	bne _0203AA06
	add r0, r5, #0
	bl sub_0203AC24
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203AA46
_0203AA06:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _0203AA22
	add r0, r5, #0
	bl sub_0203AC28
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203AA46
_0203AA22:
	add r0, r5, #0
	bl sub_0206C0D0
	cmp r0, #1
	bne _0203AA3A
	add r0, r5, #0
	bl sub_0203AC2C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203AA46
_0203AA3A:
	add r0, r5, #0
	bl sub_0203ABD0
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
_0203AA46:
	mov r0, #0x71
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _0203AA66
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F5E4
_0203AA66:
	ldr r1, _0203AA74 ; =sub_0203AC44
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	nop
_0203AA74: .word sub_0203AC44
	thumb_func_end sub_0203A9E0

	thumb_func_start sub_0203AA78
sub_0203AA78: ; 0x0203AA78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203ABB4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203AC34
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r2, #1
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _0203AAAC
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F5E4
_0203AAAC:
	ldr r1, _0203AAB8 ; =sub_0203AC44
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203AAB8: .word sub_0203AC44
	thumb_func_end sub_0203AA78

	thumb_func_start sub_0203AABC
sub_0203AABC: ; 0x0203AABC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0203ABB4
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203AC3C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r5, #0x3c]
	bl sub_0205F588
	cmp r0, #1
	bne _0203AAF0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205F5E4
_0203AAF0:
	ldr r1, _0203AAFC ; =sub_0203AC44
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050904
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203AAFC: .word sub_0203AC44
	thumb_func_end sub_0203AABC

	thumb_func_start sub_0203AB00
sub_0203AB00: ; 0x0203AB00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0203ABAC ; =0x000005FD
	bl sub_02005748
	bl sub_0203ABB4
	add r4, r0, #0
	mov r0, #0x71
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	bne _0203AB34
	add r0, r5, #0
	bl sub_0203AC24
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203ABA0
_0203AB34:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	bne _0203AB50
	add r0, r5, #0
	bl sub_0203AC28
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203ABA0
_0203AB50:
	add r0, r5, #0
	bl sub_0206C0D0
	cmp r0, #1
	bne _0203AB68
	add r0, r5, #0
	bl sub_0203AC2C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203ABA0
_0203AB68:
	ldr r0, [r5, #0x70]
	cmp r0, #3
	bne _0203AB7C
	add r0, r5, #0
	bl sub_0203AC3C
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	b _0203ABA0
_0203AB7C:
	cmp r0, #2
	bne _0203AB94
	add r0, r5, #0
	bl sub_0203AC34
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r2, #1
	add r0, r1, #4
	str r2, [r4, r0]
	b _0203ABA0
_0203AB94:
	add r0, r5, #0
	bl sub_0203ABD0
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r4, r1]
_0203ABA0:
	ldr r0, [r5, #0x10]
	ldr r1, _0203ABB0 ; =sub_0203AC44
	add r2, r4, #0
	bl sub_02050924
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0203ABAC: .word 0x000005FD
_0203ABB0: .word sub_0203AC44
	thumb_func_end sub_0203AB00

	thumb_func_start sub_0203ABB4
sub_0203ABB4: ; 0x0203ABB4
	push {r3, lr}
	mov r1, #2
	mov r0, #0xb
	lsl r1, r1, #8
	bl sub_02018144
	mov r2, #0
	strh r2, [r0, #0x2a]
	mov r1, #0x7e
	strh r2, [r0, #0x28]
	lsl r1, r1, #2
	str r2, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203ABB4

	thumb_func_start sub_0203ABD0
sub_0203ABD0: ; 0x0203ABD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	bl sub_02027560
	bl sub_02027520
	cmp r0, #0
	bne _0203ABE8
	mov r0, #1
	orr r4, r0
_0203ABE8:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206B054
	cmp r0, #0
	bne _0203ABFA
	mov r0, #2
	orr r4, r0
_0203ABFA:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	bl sub_0206A938
	cmp r0, #0
	bne _0203AC0C
	mov r0, #4
	orr r4, r0
_0203AC0C:
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A310
	cmp r0, #1
	bne _0203AC1C
	mov r0, #6
	orr r4, r0
_0203AC1C:
	mov r0, #6
	lsl r0, r0, #6
	orr r0, r4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203ABD0

	thumb_func_start sub_0203AC24
sub_0203AC24: ; 0x0203AC24
	mov r0, #0x90
	bx lr
	thumb_func_end sub_0203AC24

	thumb_func_start sub_0203AC28
sub_0203AC28: ; 0x0203AC28
	mov r0, #0x94
	bx lr
	thumb_func_end sub_0203AC28

	thumb_func_start sub_0203AC2C
sub_0203AC2C: ; 0x0203AC2C
	ldr r0, _0203AC30 ; =0x00000195
	bx lr
	; .align 2, 0
_0203AC30: .word 0x00000195
	thumb_func_end sub_0203AC2C

	thumb_func_start sub_0203AC34
sub_0203AC34: ; 0x0203AC34
	mov r0, #0x11
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203AC34

	thumb_func_start sub_0203AC3C
sub_0203AC3C: ; 0x0203AC3C
	ldr r0, _0203AC40 ; =0x00000191
	bx lr
	; .align 2, 0
_0203AC40: .word 0x00000191
	thumb_func_end sub_0203AC3C

	thumb_func_start sub_0203AC44
sub_0203AC44: ; 0x0203AC44
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldrh r1, [r4, #0x2a]
	cmp r1, #0xf
	bhi _0203ACC2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0203AC68: ; jump table
	.short _0203AC88 - _0203AC68 - 2 ; case 0
	.short _0203ACB8 - _0203AC68 - 2 ; case 1
	.short _0203ACC8 - _0203AC68 - 2 ; case 2
	.short _0203ACD0 - _0203AC68 - 2 ; case 3
	.short _0203ACD8 - _0203AC68 - 2 ; case 4
	.short _0203ACE0 - _0203AC68 - 2 ; case 5
	.short _0203ACE8 - _0203AC68 - 2 ; case 6
	.short _0203ACF0 - _0203AC68 - 2 ; case 7
	.short _0203AD20 - _0203AC68 - 2 ; case 8
	.short _0203AD36 - _0203AC68 - 2 ; case 9
	.short _0203AD56 - _0203AC68 - 2 ; case 10
	.short _0203AD72 - _0203AC68 - 2 ; case 11
	.short _0203ACF8 - _0203AC68 - 2 ; case 12
	.short _0203ADA0 - _0203AC68 - 2 ; case 13
	.short _0203ADD8 - _0203AC68 - 2 ; case 14
	.short _0203AD92 - _0203AC68 - 2 ; case 15
_0203AC88:
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	mov r1, #0x73
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_0206842C
	mov r1, #0x7a
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r4, r1
	bl sub_02070728
	add r0, r6, #0
	bl sub_0203ADFC
	add r0, r6, #0
	bl sub_0203B094
	mov r0, #1
	strh r0, [r4, #0x2a]
	b _0203ADE4
_0203ACB8:
	add r0, r6, #0
	bl sub_0203B244
	cmp r0, #0
	beq _0203ACC4
_0203ACC2:
	b _0203ADE4
_0203ACC4:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203ACC8:
	add r0, r6, #0
	bl sub_0203B610
	b _0203ADE4
_0203ACD0:
	add r0, r6, #0
	bl sub_0203B64C
	b _0203ADE4
_0203ACD8:
	add r0, r6, #0
	bl sub_0203BF6C
	b _0203ADE4
_0203ACE0:
	add r0, r6, #0
	bl sub_0203BFC0
	b _0203ADE4
_0203ACE8:
	add r0, r6, #0
	bl sub_0203C7B8
	b _0203ADE4
_0203ACF0:
	add r0, r6, #0
	bl sub_0203C8CC
	b _0203ADE4
_0203ACF8:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0203ADE4
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	add r0, r6, #0
	bl sub_0203ADFC
	add r0, r6, #0
	bl sub_0203B094
	mov r0, #1
	bl ov5_021D1744
	mov r0, #0xe
	strh r0, [r4, #0x2a]
	b _0203ADE4
_0203AD20:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0203ADE4
	mov r0, #1
	bl ov5_021D1744
	mov r0, #9
	strh r0, [r4, #0x2a]
	b _0203ADE4
_0203AD36:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0203ADE4
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0203B2EC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203AD56:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0203ADE4
	ldr r0, [r5, #0x38]
	bl sub_02062C48
	mov r0, #1
	bl ov5_021D1744
	mov r0, #0xb
	strh r0, [r4, #0x2a]
	b _0203ADE4
_0203AD72:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0203ADE4
	mov r2, #0x72
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	add r2, #0x30
	ldr r2, [r4, r2]
	add r0, r6, #0
	bl sub_02050924
	add r0, r4, #0
	bl sub_020181C4
	b _0203ADE4
_0203AD92:
	bl sub_020181C4
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203ADA0:
	add r1, r5, #0
	bl sub_0203B2EC
	add r0, r4, #0
	bl sub_0203B078
	add r0, r4, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	bl sub_0201A8FC
	add r0, r6, #0
	bl sub_0203B200
	ldr r0, [r5, #8]
	mov r1, #3
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [r5, #0x38]
	bl sub_02062C78
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203ADD8:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0203ADE4
	mov r0, #1
	strh r0, [r4, #0x2a]
_0203ADE4:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0203ADF6
	add r0, r4, #0
	bl sub_0203B520
	ldr r0, [r4, #0x38]
	bl sub_020219F8
_0203ADF6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0203AC44

	thumb_func_start sub_0203ADFC
sub_0203ADFC: ; 0x0203ADFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl sub_02050A60
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x30
	bl sub_0203AFCC
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #3
	lsl r1, r0, #1
	add r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _0203AFB8 ; =0x00000145
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	mov r3, #0x14
	ldr r0, [r0, #8]
	bl sub_0201A7E8
	mov r0, #1
	str r0, [sp]
	mov r3, #0xb
	ldr r0, [sp, #0x1c]
	str r3, [sp, #4]
	ldr r0, [r0, #8]
	ldr r2, _0203AFBC ; =0x000003D9
	mov r1, #3
	bl sub_0200DAA4
	ldr r2, _0203AFBC ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	ldr r2, _0203AFC0 ; =0x0000016F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	mov r1, #0xb
	bl sub_02013A04
	str r0, [r4, #0x24]
	mov r5, #0
	ldr r0, [sp, #0x14]
	strh r5, [r4, #0x28]
	cmp r0, #0
	bls _0203AF1C
_0203AE86:
	add r0, r4, r5
	add r0, #0x30
	ldrb r3, [r0]
	cmp r3, #3
	bne _0203AEF4
	mov r0, #0xb
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #8
	mov r1, #0xb
	bl sub_02023790
	add r1, r4, r5
	add r1, #0x30
	ldrb r1, [r1]
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	lsl r2, r1, #3
	ldr r1, _0203AFC4 ; =0x020EA05C
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200B498
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200C388
	add r2, r4, r5
	add r2, #0x30
	ldrb r2, [r2]
	ldr r0, [r4, #0x24]
	add r1, r7, #0
	bl sub_02013A6C
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B3F0
	b _0203AF02
_0203AEF4:
	ldr r2, _0203AFC4 ; =0x020EA05C
	lsl r6, r3, #3
	ldr r0, [r4, #0x24]
	ldr r1, [sp, #0x18]
	ldr r2, [r2, r6]
	bl sub_02013A4C
_0203AF02:
	ldr r0, [sp, #0x1c]
	add r0, #0x90
	ldr r1, [r0, #0]
	add r0, r4, r5
	add r0, #0x30
	ldrb r0, [r0]
	cmp r1, r0
	bne _0203AF14
	strh r5, [r4, #0x28]
_0203AF14:
	ldr r0, [sp, #0x14]
	add r5, r5, #1
	cmp r5, r0
	blo _0203AE86
_0203AF1C:
	ldrh r0, [r4, #0x28]
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [sp, #0x1c]
	add r0, #0x90
	str r1, [r0, #0]
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	ldr r0, [r4, #0x24]
	mov r1, #1
	str r0, [sp, #0x24]
	str r4, [sp, #0x28]
	add r0, sp, #0x24
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	ldr r1, [sp, #0x14]
	strb r1, [r0, #0xa]
	ldrb r2, [r0, #0xb]
	mov r1, #0xf
	bic r2, r1
	mov r1, #8
	orr r1, r2
	strb r1, [r0, #0xb]
	ldrb r2, [r0, #0xb]
	mov r1, #0x30
	bic r2, r1
	mov r1, #0x10
	orr r1, r2
	strb r1, [r0, #0xb]
	ldr r1, [sp, #0x14]
	ldrb r2, [r0, #0xb]
	cmp r1, #4
	blo _0203AF6E
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0xb]
	b _0203AF74
_0203AF6E:
	mov r1, #0xc0
	bic r2, r1
	strb r2, [r0, #0xb]
_0203AF74:
	mov r0, #0xb
	str r0, [sp]
	ldr r0, _0203AFC8 ; =0x00000402
	mov r1, #0x1c
	str r0, [sp, #4]
	ldrh r3, [r4, #0x28]
	add r0, sp, #0x24
	mov r2, #4
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_02001AF4
	str r0, [r4, #0x20]
	add r0, r4, #0
	bl sub_0201A9A4
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	add r3, r0, #0
	add r0, r4, #0
	add r4, #0x30
	lsl r3, r3, #0x18
	ldr r2, [sp, #0x14]
	add r1, r4, #0
	lsr r3, r3, #0x18
	bl sub_0203B318
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203AFB8: .word 0x00000145
_0203AFBC: .word 0x000003D9
_0203AFC0: .word 0x0000016F
_0203AFC4: .word 0x020EA05C
_0203AFC8: .word 0x00000402
	thumb_func_end sub_0203ADFC

	thumb_func_start sub_0203AFCC
sub_0203AFCC: ; 0x0203AFCC
	push {r3, r4}
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	sub r3, #0xc0
	mov r2, #0
	tst r3, r4
	bne _0203AFE2
	mov r3, #8
	strb r3, [r1]
	add r2, r2, #1
_0203AFE2:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #0x80
	tst r3, r4
	bne _0203AFF4
	mov r3, #7
	strb r3, [r1, r2]
	add r2, r2, #1
_0203AFF4:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #1
	tst r3, r4
	bne _0203B006
	mov r3, #0
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B006:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #2
	tst r3, r4
	bne _0203B018
	mov r3, #1
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B018:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #4
	tst r3, r4
	bne _0203B02A
	mov r3, #2
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B02A:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #8
	tst r3, r4
	bne _0203B03C
	mov r3, #3
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B03C:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #0x10
	tst r3, r4
	bne _0203B04E
	mov r3, #4
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B04E:
	mov r3, #7
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #0x20
	tst r3, r4
	bne _0203B060
	mov r3, #5
	strb r3, [r1, r2]
	add r2, r2, #1
_0203B060:
	mov r3, #7
	lsl r3, r3, #6
	ldr r3, [r0, r3]
	mov r0, #0x40
	tst r0, r3
	bne _0203B072
	mov r0, #6
	strb r0, [r1, r2]
	add r2, r2, #1
_0203B072:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0203AFCC

	thumb_func_start sub_0203B078
sub_0203B078: ; 0x0203B078
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203B4E8
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, [r4, #0x24]
	bl sub_02013A3C
	mov r0, #0
	str r0, [r4, #0x20]
	pop {r4, pc}
	thumb_func_end sub_0203B078

	thumb_func_start sub_0203B094
sub_0203B094: ; 0x0203B094
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE5C
	cmp r0, #1
	bne _0203B0BA
	mov r6, #0
	b _0203B0CC
_0203B0BA:
	ldr r0, [r4, #0xc]
	bl sub_020507E4
	bl sub_0206AE8C
	cmp r0, #1
	beq _0203B0CA
	b _0203B1EE
_0203B0CA:
	mov r6, #1
_0203B0CC:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0203B1F4 ; =0x00000237
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	add r1, #0x10
	mov r2, #3
	bl sub_0201A7E8
	mov r0, #1
	str r0, [sp]
	mov r3, #0xb
	str r3, [sp, #4]
	ldr r0, [r4, #8]
	ldr r2, _0203B1F8 ; =0x000003D9
	mov r1, #3
	bl sub_0200DAA4
	add r0, r5, #0
	ldr r2, _0203B1F8 ; =0x000003D9
	add r0, #0x10
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _0203B1FC ; =0x0000016F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0x1c]
	cmp r6, #0
	bne _0203B130
	mov r1, #9
	bl sub_0200B1EC
	b _0203B136
_0203B130:
	mov r1, #0xa
	bl sub_0200B1EC
_0203B136:
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x10
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0xb
	bl sub_0200B358
	add r7, r0, #0
	mov r0, #0x20
	mov r1, #0xb
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov r1, #0xb
	bl sub_0200B1EC
	str r0, [sp, #0x14]
	cmp r6, #0
	bne _0203B194
	ldr r0, [r4, #0xc]
	bl sub_0203A790
	bl sub_0203A784
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r2]
	add r0, r7, #0
	mov r3, #2
	bl sub_0200B60C
	b _0203B1AC
_0203B194:
	add r0, r4, #0
	bl sub_020563BC
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	mov r3, #2
	bl sub_0200B60C
_0203B1AC:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	bl sub_0200C388
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	add r0, #0x10
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B3F0
	ldr r0, [sp, #0x1c]
	bl sub_0200B190
	add r5, #0x10
	add r0, r5, #0
	bl sub_0201A9A4
_0203B1EE:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203B1F4: .word 0x00000237
_0203B1F8: .word 0x000003D9
_0203B1FC: .word 0x0000016F
	thumb_func_end sub_0203B094
