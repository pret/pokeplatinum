	.include "macros/function.inc"
	.include "include/unk_0201E0A4.inc"

	

	.text


	thumb_func_start sub_0201E0A4
sub_0201E0A4: ; 0x0201E0A4
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0
	beq _0201E0B4
_0201E0AC:
	add r2, r2, #1
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _0201E0AC
_0201E0B4:
	add r0, r2, #0
	bx lr
	thumb_func_end sub_0201E0A4

	thumb_func_start sub_0201E0B8
sub_0201E0B8: ; 0x0201E0B8
	push {r4, r5}
	mov r4, #1
	mov r3, #0
	lsl r4, r4, #8
_0201E0C0:
	ldrsb r5, [r0, r3]
	strb r5, [r1, r3]
	ldrsb r5, [r0, r3]
	cmp r2, r5
	beq _0201E0CE
	cmp r5, #0
	bne _0201E0EE
_0201E0CE:
	mov r4, #0
	strb r4, [r1, r3]
	cmp r2, #0xd
	bne _0201E0E6
	add r1, r3, #1
	ldrsb r1, [r0, r1]
	cmp r1, #0xa
	bne _0201E0E6
	add r1, r3, #2
	add r0, r0, r1
	pop {r4, r5}
	bx lr
_0201E0E6:
	add r1, r3, #1
	add r0, r0, r1
	pop {r4, r5}
	bx lr
_0201E0EE:
	add r3, r3, #1
	cmp r3, r4
	blt _0201E0C0
	mov r0, #0
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201E0B8

	thumb_func_start sub_0201E0FC
sub_0201E0FC: ; 0x0201E0FC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl sub_0201E0A4
	mov r5, #1
	mov r6, #0
	sub r3, r0, #1
	bmi _0201E13A
	sub r1, r6, #1
	mov r0, #0xa
_0201E110:
	ldrsb r2, [r4, r3]
	cmp r2, #0x30
	blt _0201E122
	cmp r2, #0x39
	bgt _0201E122
	sub r2, #0x30
	mul r2, r5
	add r6, r6, r2
	b _0201E134
_0201E122:
	cmp r3, #0
	bne _0201E12E
	cmp r2, #0x2d
	bne _0201E134
	mul r6, r1
	b _0201E134
_0201E12E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0201E134:
	mul r5, r0
	sub r3, r3, #1
	bpl _0201E110
_0201E13A:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201E0FC

	thumb_func_start sub_0201E140
sub_0201E140: ; 0x0201E140
	push {r3, r4, r5, lr}
	mov r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
_0201E14A:
	lsl r0, r2, #2
	str r1, [r5, r0]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _0201E14A
	add r0, r4, #0
	bl sub_0201E0A4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r2, _0201E178 ; =0x00000000
	beq _0201E174
_0201E166:
	ldrsb r0, [r4, r2]
	strb r0, [r5, r2]
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r1
	blo _0201E166
_0201E174:
	pop {r3, r4, r5, pc}
	nop
_0201E178: .word 0x00000000
	thumb_func_end sub_0201E140

	thumb_func_start sub_0201E17C
sub_0201E17C: ; 0x0201E17C
	ldr r1, _0201E18C ; =0x00000121
	cmp r0, r1
	bhs _0201E186
	mov r0, #1
	bx lr
_0201E186:
	mov r0, #0
	bx lr
	nop
_0201E18C: .word 0x00000121
	thumb_func_end sub_0201E17C