	.include "macros/function.inc"
	.include "include/unk_0202A910.inc"

	

	.text


	thumb_func_start sub_0202A910
sub_0202A910: ; 0x0202A910
	mov r0, #8
	bx lr
	thumb_func_end sub_0202A910

	thumb_func_start sub_0202A914
sub_0202A914: ; 0x0202A914
	ldrb r0, [r0]
	cmp r0, #0x1e
	beq _0202A91E
	mov r0, #1
	bx lr
_0202A91E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A914

	thumb_func_start sub_0202A924
sub_0202A924: ; 0x0202A924
	mov r1, #0x1e
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A924

	thumb_func_start sub_0202A93C
sub_0202A93C: ; 0x0202A93C
	push {r4, lr}
	mov r1, #8
	bl sub_02018184
	add r4, r0, #0
	bl sub_0202A924
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202A93C

	thumb_func_start sub_0202A950
sub_0202A950: ; 0x0202A950
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r2, [r0, #5]
	strb r2, [r1, #5]
	ldrb r2, [r0, #6]
	strb r2, [r1, #6]
	ldrb r0, [r0, #7]
	strb r0, [r1, #7]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A950

	thumb_func_start sub_0202A974
sub_0202A974: ; 0x0202A974
	cmp r1, #6
	bhi _0202A9AA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202A984: ; jump table
	.short _0202A992 - _0202A984 - 2 ; case 0
	.short _0202A996 - _0202A984 - 2 ; case 1
	.short _0202A99A - _0202A984 - 2 ; case 2
	.short _0202A99E - _0202A984 - 2 ; case 3
	.short _0202A9A2 - _0202A984 - 2 ; case 4
	.short _0202A9A6 - _0202A984 - 2 ; case 5
	.short _0202A9AA - _0202A984 - 2 ; case 6
_0202A992:
	ldrb r0, [r0]
	bx lr
_0202A996:
	ldrb r0, [r0, #1]
	bx lr
_0202A99A:
	ldrb r0, [r0, #2]
	bx lr
_0202A99E:
	ldrb r0, [r0, #3]
	bx lr
_0202A9A2:
	ldrb r0, [r0, #4]
	bx lr
_0202A9A6:
	ldrb r0, [r0, #5]
	bx lr
_0202A9AA:
	ldrb r0, [r0, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202A974

	thumb_func_start sub_0202A9B0
sub_0202A9B0: ; 0x0202A9B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r4, #0
	mov r6, #2
	mov r7, #5
_0202A9BC:
	bl sub_0201D2E8
	add r1, r7, #0
	bl sub_020E1F6C
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	add r1, r5, r0
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0202A9D6
	strb r6, [r1, #1]
	add r4, r4, #1
_0202A9D6:
	cmp r4, #3
	blt _0202A9BC
	mov r0, #0x1b
	strb r0, [r5]
	ldr r0, [sp]
	strb r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202A9B0

	thumb_func_start sub_0202A9E4
sub_0202A9E4: ; 0x0202A9E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov ip, r2
	mov r2, #0
	add r6, r2, #0
	mov r5, #0x1b
	cmp r3, #0
	beq _0202AA00
	mov r1, ip
	bl sub_0202A9B0
	add sp, #8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0202AA00:
	add r4, r2, #0
	add r7, sp, #0
_0202AA04:
	ldrb r3, [r1, r4]
	cmp r3, #0
	beq _0202AA14
	cmp r3, #0x32
	blo _0202AA10
	mov r6, #1
_0202AA10:
	strb r4, [r7, r2]
	add r2, r2, #1
_0202AA14:
	add r4, r4, #1
	cmp r4, #5
	blt _0202AA04
	cmp r2, #5
	bhi _0202AA7C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0202AA2A: ; jump table
	.short _0202AA36 - _0202AA2A - 2 ; case 0
	.short _0202AA42 - _0202AA2A - 2 ; case 1
	.short _0202AA50 - _0202AA2A - 2 ; case 2
	.short _0202AA76 - _0202AA2A - 2 ; case 3
	.short _0202AA7A - _0202AA2A - 2 ; case 4
	.short _0202AA7A - _0202AA2A - 2 ; case 5
_0202AA36:
	mov r1, ip
	bl sub_0202A9B0
	add sp, #8
	mov r0, #0x1b
	pop {r3, r4, r5, r6, r7, pc}
_0202AA42:
	add r2, sp, #0
	ldrb r3, [r2]
	mov r2, #6
	mul r2, r3
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	b _0202AA7C
_0202AA50:
	add r2, sp, #0
	ldrb r3, [r2, #1]
	ldrb r2, [r2]
	ldrb r4, [r1, r3]
	ldrb r5, [r1, r2]
	cmp r5, r4
	blo _0202AA6A
	lsl r4, r2, #2
	add r2, r2, r4
	add r2, r3, r2
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	b _0202AA7C
_0202AA6A:
	lsl r4, r3, #2
	add r3, r3, r4
	add r2, r2, r3
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	b _0202AA7C
_0202AA76:
	mov r5, #0x19
	b _0202AA7C
_0202AA7A:
	mov r5, #0x1a
_0202AA7C:
	cmp r6, #0
	beq _0202AA82
	mov r5, #0x1c
_0202AA82:
	mov r4, #0
_0202AA84:
	ldrb r3, [r1, r4]
	add r2, r0, r4
	add r4, r4, #1
	strb r3, [r2, #1]
	cmp r4, #5
	blt _0202AA84
	strb r5, [r0]
	mov r1, ip
	strb r1, [r0, #6]
	add r0, r5, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202A9E4

	thumb_func_start sub_0202AA9C
sub_0202AA9C: ; 0x0202AA9C
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r2, [r0, #5]
	strb r2, [r1, #5]
	ldrb r0, [r0, #6]
	strb r0, [r1, #6]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202AA9C

	thumb_func_start sub_0202AABC
sub_0202AABC: ; 0x0202AABC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4]
	mov r1, #5
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #5
	bhi _0202AAFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0202AADC: ; jump table
	.short _0202AAE8 - _0202AADC - 2 ; case 0
	.short _0202AAEC - _0202AADC - 2 ; case 1
	.short _0202AAF0 - _0202AADC - 2 ; case 2
	.short _0202AAF4 - _0202AADC - 2 ; case 3
	.short _0202AAF8 - _0202AADC - 2 ; case 4
	.short _0202AAFC - _0202AADC - 2 ; case 5
_0202AAE8:
	ldrb r0, [r4, #1]
	b _0202AB1E
_0202AAEC:
	ldrb r0, [r4, #2]
	b _0202AB1E
_0202AAF0:
	ldrb r0, [r4, #3]
	b _0202AB1E
_0202AAF4:
	ldrb r0, [r4, #4]
	b _0202AB1E
_0202AAF8:
	ldrb r0, [r4, #5]
	b _0202AB1E
_0202AAFC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	cmp r0, r1
	bhs _0202AB06
	add r0, r1, #0
_0202AB06:
	ldrb r1, [r4, #3]
	cmp r0, r1
	bhs _0202AB0E
	add r0, r1, #0
_0202AB0E:
	ldrb r1, [r4, #4]
	cmp r0, r1
	bhs _0202AB16
	add r0, r1, #0
_0202AB16:
	ldrb r1, [r4, #5]
	cmp r0, r1
	bhs _0202AB1E
	add r0, r1, #0
_0202AB1E:
	cmp r0, #0x63
	bls _0202AB24
	mov r0, #0x63
_0202AB24:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202AABC

	thumb_func_start sub_0202AB28
sub_0202AB28: ; 0x0202AB28
	ldr r3, _0202AB30 ; =sub_020245BC
	mov r1, #0x10
	bx r3
	nop
_0202AB30: .word sub_020245BC
	thumb_func_end sub_0202AB28

	thumb_func_start sub_0202AB34
sub_0202AB34: ; 0x0202AB34
	mov r0, #0x32
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202AB34

	thumb_func_start sub_0202AB3C
sub_0202AB3C: ; 0x0202AB3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0202AB42:
	add r0, r5, #0
	bl sub_0202A924
	add r4, r4, #1
	add r5, #8
	cmp r4, #0x64
	blt _0202AB42
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202AB3C

	thumb_func_start sub_0202AB54
sub_0202AB54: ; 0x0202AB54
	mov r2, #0
_0202AB56:
	lsl r1, r2, #3
	ldrb r1, [r0, r1]
	cmp r1, #0x1e
	bne _0202AB62
	add r0, r2, #0
	bx lr
_0202AB62:
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	cmp r2, #0x64
	blo _0202AB56
	ldr r0, _0202AB70 ; =0x0000FFFF
	bx lr
	; .align 2, 0
_0202AB70: .word 0x0000FFFF
	thumb_func_end sub_0202AB54

	thumb_func_start sub_0202AB74
sub_0202AB74: ; 0x0202AB74
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0202AB54
	ldr r1, _0202AB94 ; =0x0000FFFF
	add r4, r0, #0
	cmp r4, r1
	beq _0202AB92
	lsl r1, r4, #3
	add r0, r6, #0
	add r1, r5, r1
	bl sub_0202A950
	add r0, r4, #0
_0202AB92:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0202AB94: .word 0x0000FFFF
	thumb_func_end sub_0202AB74

	thumb_func_start sub_0202AB98
sub_0202AB98: ; 0x0202AB98
	push {r3, lr}
	cmp r1, #0x64
	blo _0202ABA2
	mov r0, #0
	pop {r3, pc}
_0202ABA2:
	lsl r1, r1, #3
	add r0, r0, r1
	bl sub_0202A924
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202AB98

	thumb_func_start sub_0202ABB0
sub_0202ABB0: ; 0x0202ABB0
	cmp r1, #0x64
	bhs _0202ABCA
_0202ABB4:
	lsl r2, r1, #3
	ldrb r2, [r0, r2]
	cmp r2, #0x1e
	beq _0202ABC0
	add r0, r1, #0
	bx lr
_0202ABC0:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0x64
	blo _0202ABB4
_0202ABCA:
	ldr r0, _0202ABD0 ; =0x0000FFFF
	bx lr
	nop
_0202ABD0: .word 0x0000FFFF
	thumb_func_end sub_0202ABB0

	thumb_func_start sub_0202ABD4
sub_0202ABD4: ; 0x0202ABD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	mov r7, #0x64
	str r0, [sp, #4]
_0202ABE0:
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	ldrb r0, [r5, r0]
	cmp r0, #0x1e
	bne _0202AC3C
	ldr r6, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0202ABB0
	add r4, r0, #0
	ldr r0, _0202AC50 ; =0x0000FFFF
	cmp r4, r0
	beq _0202AC4A
	ldr r0, [sp, #4]
	sub r0, r4, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	cmp r4, r7
	bhs _0202AC34
	cmp r4, r7
	bhs _0202AC34
_0202AC0E:
	lsl r0, r4, #3
	lsl r1, r6, #3
	str r0, [sp, #8]
	add r0, r5, r0
	add r1, r5, r1
	bl sub_0202A950
	ldr r0, [sp, #8]
	add r0, r5, r0
	bl sub_0202A924
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	blo _0202AC0E
_0202AC34:
	ldr r0, [sp]
	sub r0, r7, r0
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_0202AC3C:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, r7
	blo _0202ABE0
_0202AC4A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0202AC50: .word 0x0000FFFF
	thumb_func_end sub_0202ABD4

	thumb_func_start sub_0202AC54
sub_0202AC54: ; 0x0202AC54
	push {r3, lr}
	cmp r1, #0x64
	blo _0202AC62
	add r0, r2, #0
	bl sub_0202A924
	pop {r3, pc}
_0202AC62:
	lsl r1, r1, #3
	add r0, r0, r1
	add r1, r2, #0
	bl sub_0202A950
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0202AC54

	thumb_func_start sub_0202AC70
sub_0202AC70: ; 0x0202AC70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_0202A93C
	add r6, r0, #0
	cmp r4, #0x64
	blo _0202AC8A
	bl sub_0202A924
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202AC8A:
	lsl r0, r4, #3
	add r0, r5, r0
	add r1, r6, #0
	bl sub_0202A950
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202AC70

	thumb_func_start sub_0202AC98
sub_0202AC98: ; 0x0202AC98
	push {r4, r5, r6, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_0202ACA0:
	lsl r0, r5, #3
	add r0, r6, r0
	bl sub_0202A914
	cmp r0, #0
	beq _0202ACB2
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0202ACB2:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _0202ACA0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202AC98

	thumb_func_start sub_0202ACC0
sub_0202ACC0: ; 0x0202ACC0
	mov r3, #0
	add r2, r3, #0
_0202ACC4:
	lsl r1, r2, #3
	ldrb r1, [r0, r1]
	cmp r1, #0x1e
	bne _0202ACD2
	add r1, r3, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
_0202ACD2:
	add r1, r2, #1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	cmp r2, #0x64
	blo _0202ACC4
	add r0, r3, #0
	bx lr
	thumb_func_end sub_0202ACC0