	.include "macros/function.inc"
	.include "include/unk_0207C908.inc"

	

	.text


	thumb_func_start sub_0207C908
sub_0207C908: ; 0x0207C908
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x17
	blo _0207C914
	bl GF_AssertFail
_0207C914:
	ldr r0, _0207C91C ; =0x020F0AF0
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0207C91C: .word 0x020F0AF0
	thumb_func_end sub_0207C908

	thumb_func_start sub_0207C920
sub_0207C920: ; 0x0207C920
	mov r0, #0x4a
	bx lr
	thumb_func_end sub_0207C920

	thumb_func_start sub_0207C924
sub_0207C924: ; 0x0207C924
	mov r0, #0xf2
	bx lr
	thumb_func_end sub_0207C924

	thumb_func_start sub_0207C928
sub_0207C928: ; 0x0207C928
	mov r0, #0xf3
	bx lr
	thumb_func_end sub_0207C928

	thumb_func_start sub_0207C92C
sub_0207C92C: ; 0x0207C92C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x17
	blo _0207C938
	bl GF_AssertFail
_0207C938:
	ldr r0, _0207C940 ; =0x020F0B4C
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0207C940: .word 0x020F0B4C
	thumb_func_end sub_0207C92C

	thumb_func_start sub_0207C944
sub_0207C944: ; 0x0207C944
	mov r0, #0x1b
	bx lr
	thumb_func_end sub_0207C944

	thumb_func_start sub_0207C948
sub_0207C948: ; 0x0207C948
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0207C944
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_0207C908
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200CBDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207C948

	thumb_func_start sub_0207C97C
sub_0207C97C: ; 0x0207C97C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0207C944
	str r0, [sp, #0x10]
	bl sub_0207C920
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #0xc]
	bl sub_0200CC9C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207C97C

	thumb_func_start sub_0207C9B0
sub_0207C9B0: ; 0x0207C9B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x18]
	bl sub_0207C944
	add r4, r0, #0
	bl sub_0207C920
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r2, r7, #0
	bl sub_0200CD7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207C9B0

	thumb_func_start sub_0207C9EC
sub_0207C9EC: ; 0x0207C9EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0207C944
	str r0, [sp, #8]
	bl sub_0207C924
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	str r6, [sp, #4]
	bl sub_0200CE0C
	bl sub_0207C944
	add r6, r0, #0
	bl sub_0207C928
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	str r7, [sp, #4]
	bl sub_0200CE3C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207C9EC

	thumb_func_start sub_0207CA34
sub_0207CA34: ; 0x0207CA34
	ldr r3, _0207CA38 ; =sub_0200D070
	bx r3
	; .align 2, 0
_0207CA38: .word sub_0200D070
	thumb_func_end sub_0207CA34

	thumb_func_start sub_0207CA3C
sub_0207CA3C: ; 0x0207CA3C
	ldr r3, _0207CA40 ; =sub_0200D080
	bx r3
	; .align 2, 0
_0207CA40: .word sub_0200D080
	thumb_func_end sub_0207CA3C

	thumb_func_start sub_0207CA44
sub_0207CA44: ; 0x0207CA44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0200D090
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0207CA44

	thumb_func_start sub_0207CA58
sub_0207CA58: ; 0x0207CA58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r3, #0
	add r4, r0, #0
	add r7, r1, #0
	add r5, sp, #0
	mov r3, #6
_0207CA66:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0207CA66
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r0, r2, #0
	bl sub_0207C92C
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	bl sub_0200CE6C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0207CA58

	thumb_func_start sub_0207CA88
sub_0207CA88: ; 0x0207CA88
	ldr r3, _0207CA8C ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_0207CA8C: .word sub_0200D0F4
	thumb_func_end sub_0207CA88

	thumb_func_start sub_0207CA90
sub_0207CA90: ; 0x0207CA90
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #3
	blo _0207CA9C
	bl GF_AssertFail
_0207CA9C:
	ldr r0, _0207CAA4 ; =0x020F0AE4
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0207CAA4: .word 0x020F0AE4
	thumb_func_end sub_0207CA90

	thumb_func_start sub_0207CAA8
sub_0207CAA8: ; 0x0207CAA8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #3
	blo _0207CAB4
	bl GF_AssertFail
_0207CAB4:
	ldr r0, _0207CABC ; =0x020F0AE0
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0207CABC: .word 0x020F0AE0
	thumb_func_end sub_0207CAA8

	thumb_func_start sub_0207CAC0
sub_0207CAC0: ; 0x0207CAC0
	mov r0, #0x1b
	bx lr
	thumb_func_end sub_0207CAC0

	thumb_func_start sub_0207CAC4
sub_0207CAC4: ; 0x0207CAC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0207CAC0
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_0207CA90
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200CBDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207CAC4

	thumb_func_start sub_0207CAF8
sub_0207CAF8: ; 0x0207CAF8
	ldr r3, _0207CAFC ; =sub_0200D070
	bx r3
	; .align 2, 0
_0207CAFC: .word sub_0200D070
	thumb_func_end sub_0207CAF8

	thumb_func_start sub_0207CB00
sub_0207CB00: ; 0x0207CB00
	ldr r3, _0207CB04 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_0207CB04: .word sub_0200D0F4
	thumb_func_end sub_0207CB00

	.rodata


	.global Unk_020F0AE0
Unk_020F0AE0: ; 0x020F0AE0
	.incbin "incbin/arm9_rodata.bin", 0xBEA0, 0xBEA4 - 0xBEA0

	.global Unk_020F0AE4
Unk_020F0AE4: ; 0x020F0AE4
	.incbin "incbin/arm9_rodata.bin", 0xBEA4, 0xBEB0 - 0xBEA4

	.global Unk_020F0AF0
Unk_020F0AF0: ; 0x020F0AF0
	.incbin "incbin/arm9_rodata.bin", 0xBEB0, 0xBF0C - 0xBEB0

	.global Unk_020F0B4C
Unk_020F0B4C: ; 0x020F0B4C
	.incbin "incbin/arm9_rodata.bin", 0xBF0C, 0x17

