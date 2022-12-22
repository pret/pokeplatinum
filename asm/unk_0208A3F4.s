	.include "macros/function.inc"
	.include "include/unk_0208A3F4.inc"

	

	.text


	thumb_func_start sub_0208A3F4
sub_0208A3F4: ; 0x0208A3F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x65
	bl sub_0200C6E4
	mov r7, #0x2f
	lsl r7, r7, #4
	add r2, sp, #0x2c
	ldr r3, _0208A484 ; =0x020F2F90
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _0208A488 ; =0x020F2F64
	stmia r2!, {r0, r1}
	add r3, sp, #0x18
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [r3, #0]
	ldr r0, [r4, r7]
	mov r3, #0x20
	bl sub_0200C73C
	ldr r3, _0208A48C ; =0x020F2F78
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	ldr r0, [r4, r0]
	bl sub_0200C704
	add r1, r7, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x80
	bl sub_0200C7C0
	cmp r0, #0
	bne _0208A468
	bl sub_02022974
_0208A468:
	mov r1, #0x2f
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0
	bl sub_0200CB30
	cmp r0, #0
	bne _0208A480
	bl sub_02022974
_0208A480:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0208A484: .word 0x020F2F90
_0208A488: .word 0x020F2F64
_0208A48C: .word 0x020F2F78
	thumb_func_end sub_0208A3F4

	thumb_func_start sub_0208A490
sub_0208A490: ; 0x0208A490
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x2f
	lsl r1, r1, #4
	add r7, r0, #0
	add r0, r1, #4
	ldr r5, [r7, r0]
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r7, r0]
	ldr r6, [r7, r1]
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r7, r0]
	mov r3, #1
	str r0, [sp, #0x1c]
	sub r0, r1, #4
	ldr r4, [r7, r0]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xc
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #1
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0x9f
	mov r2, #0xd
	mov r3, #0x65
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x65
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x11
	mov r3, #5
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0x9f
	mov r2, #0x10
	mov r3, #0x65
	bl sub_02003050
	str r4, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xfa
	str r1, [sp, #0x10]
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #2
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0208A6C4 ; =0x000003E9
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0208A6C4 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #4
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0208A6C4 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #6
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0208A6C4 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #7
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0208A6C8 ; =0x000003EA
	add r2, r6, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r3, r5, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0208A6C8 ; =0x000003EA
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #8
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0208A6C8 ; =0x000003EA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xa
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0208A6C8 ; =0x000003EA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xb
	bl sub_0200CE54
	mov r0, #0xf6
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_02027B50
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x65
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r1, #4
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0x26
	mov r3, #0x65
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x65
	bl sub_02003050
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208A6C4: .word 0x000003E9
_0208A6C8: .word 0x000003EA
	thumb_func_end sub_0208A490

	thumb_func_start sub_0208A6CC
sub_0208A6CC: ; 0x0208A6CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _0208A6F2
	mov r7, #0x2d
	add r5, r6, #0
	lsl r7, r7, #4
_0208A6E2:
	ldr r0, [r5, #0xc]
	bl sub_0200D0F4
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, r0
	blt _0208A6E2
_0208A6F2:
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r5, #0
	cmp r0, #0
	ble _0208A718
	mov r7, #0xfb
	add r4, r6, #0
	lsl r7, r7, #2
_0208A704:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	ldr r0, [r6, r7]
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, r0
	blt _0208A704
_0208A718:
	mov r7, #0x9d
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_0208A720:
	ldr r0, [r4, r7]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, #2
	blt _0208A720
	mov r7, #0x22
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #4
_0208A736:
	ldr r0, [r4, r7]
	bl sub_0200D0F4
	add r5, r5, #1
	add r4, #0x1c
	cmp r5, #3
	blt _0208A736
	add r0, r6, #0
	bl sub_0208AFE8
	mov r0, #0xe7
	lsl r0, r0, #2
	add r0, r6, r0
	bl sub_0201A8FC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208A6CC

	thumb_func_start sub_0208A758
sub_0208A758: ; 0x0208A758
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r1, [sp]
	add r2, r0, #4
	ldr r1, [r1, r0]
	str r1, [sp, #8]
	ldr r1, [sp]
	ldr r1, [r1, r2]
	add r2, sp, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r1, #0xa
	str r1, [sp, #0x18]
	ldr r1, [sp, #0xc]
	mov r2, #1
	str r1, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x1c]
	add r1, r0, #0
	add r1, #0xf8
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	sub r1, r2, #2
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	ldr r1, [sp]
	str r2, [sp, #0x20]
	add r0, #0xf0
	ldr r4, [r1, r0]
	mov r1, #0x3f
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	sub r6, r0, #1
	bmi _0208A7DC
	mov r0, #0x1c
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	mov r7, #0xa
	add r5, r0, r1
_0208A7C0:
	add r0, r4, #0
	add r1, r7, #0
	bl _u32_div_f
	add r0, r1, #1
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #0xa
	bl _u32_div_f
	add r4, r0, #0
	sub r5, #0x1c
	sub r6, r6, #1
	bpl _0208A7C0
_0208A7DC:
	mov r1, #0xfb
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0x2d
	ldr r1, [sp]
	lsl r2, r2, #4
	ldr r1, [r1, r2]
	mov r6, #0
	add r1, r1, r0
	cmp r1, #0
	ble _0208A89C
	ldr r4, [sp]
	mov r7, #0x4c
	add r5, r4, #0
_0208A7FA:
	cmp r0, #0
	beq _0208A84C
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	add r0, r0, #1
	cmp r6, r0
	bne _0208A84C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	bl sub_0200CE6C
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	lsl r1, r7, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D4C4
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x16
	bl sub_0200D364
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D330
	ldr r0, [sp, #0xc]
	add r4, #0x1c
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _0208A882
_0208A84C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	bl sub_0200CE6C
	lsl r1, r7, #0x10
	str r0, [r5, #0xc]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	ldr r1, [r5, #8]
	bl sub_0208AD98
	add r1, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0200D364
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, [r5, #0xc]
	bl sub_0200D330
	add r5, #0x1c
_0208A882:
	ldr r1, [sp]
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0x2d
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	add r6, r6, #1
	add r1, r1, r0
	add r7, #8
	cmp r6, r1
	blt _0208A7FA
_0208A89C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0208A758

	thumb_func_start sub_0208A8A0
sub_0208A8A0: ; 0x0208A8A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	mov r1, #0x2f
	lsl r1, r1, #4
	add r5, r0, #0
	add r0, r1, #4
	ldr r6, [r5, r1]
	ldr r4, [r5, r0]
	mov r2, #0
	add r0, sp, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	add r1, #0xf9
	mov r0, #1
	str r0, [sp, #0x10]
	sub r0, r0, #2
	str r2, [sp, #8]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r2, [sp, #0xc]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0x3f
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl sub_0208AAE4
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r2, #0x91
	lsl r2, r2, #2
	mov r1, #0
	strh r1, [r5, r2]
	add r0, r2, #2
	strh r1, [r5, r0]
	mov r0, #1
	sub r2, #0x14
	str r0, [r5, r2]
	add r0, r5, #0
	bl sub_0208AB2C
	mov r1, #0x8f
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0xc
	ldr r1, [r5, r1]
	bl sub_0200D364
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D810
	mov r2, #0x26
	lsl r2, r2, #4
	mov r1, #0
	strh r1, [r5, r2]
	add r0, r2, #2
	strh r1, [r5, r0]
	mov r0, #1
	sub r2, #0x14
	str r0, [r5, r2]
	add r0, r5, #0
	bl sub_0208AB2C
	mov r1, #0x96
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0xc
	ldr r1, [r5, r1]
	bl sub_0200D364
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_0200D810
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0208AAB4
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_0208AAB4
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0208A8A0

	thumb_func_start sub_0208A9BC
sub_0208A9BC: ; 0x0208A9BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	mov r2, #0x2f
	lsl r2, r2, #4
	add r5, r0, #0
	add r0, r2, #4
	ldr r6, [r5, r2]
	ldr r4, [r5, r0]
	mov r0, #0
	add r1, sp, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	add r2, #0xfa
	mov r1, #0xa
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0x10]
	sub r1, r1, #2
	str r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0x9d
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0
	bl sub_0200CE6C
	mov r2, #0x29
	lsl r2, r2, #4
	add r1, r2, #0
	str r0, [r5, r2]
	add r1, #0xde
	ldrb r3, [r5, r1]
	add r1, r2, #0
	add r1, #0xdf
	ldrb r1, [r5, r1]
	add r0, r2, #0
	sub r0, #0x1c
	add r3, r3, r1
	lsr r1, r3, #0x1f
	add r1, r3, r1
	add r3, r2, #0
	add r3, #0xdc
	add r2, #0xdd
	lsl r1, r1, #0xf
	ldrb r3, [r5, r3]
	ldrb r2, [r5, r2]
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	add r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r2, #0x29
	lsl r2, r2, #4
	add r1, r2, #0
	add r1, #0xe2
	ldrb r3, [r5, r1]
	add r1, r2, #0
	add r1, #0xe3
	ldrb r1, [r5, r1]
	ldr r0, [r5, r2]
	add r3, r3, r1
	lsr r1, r3, #0x1f
	add r1, r3, r1
	add r3, r2, #0
	add r3, #0xe0
	add r2, #0xe1
	lsl r1, r1, #0xf
	ldrb r3, [r5, r3]
	ldrb r2, [r5, r2]
	asr r1, r1, #0x10
	add r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	bl sub_0200D4C4
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x29
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D330
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0208A9BC

	thumb_func_start sub_0208AAB4
sub_0208AAB4: ; 0x0208AAB4
	push {r3, lr}
	cmp r2, #1
	bne _0208AACE
	mov r2, #0x1c
	mul r2, r1
	add r1, r0, r2
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_0200D3F4
	pop {r3, pc}
_0208AACE:
	mov r2, #0x1c
	mul r2, r1
	add r1, r0, r2
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_0200D3F4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208AAB4

	thumb_func_start sub_0208AAE4
sub_0208AAE4: ; 0x0208AAE4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r1, r0
	blt _0208AB26
	mov r0, #0x1c
	mul r0, r1
	add r0, r4, r0
	mov r2, #0x85
	ldr r0, [r0, #0xc]
	lsl r2, r2, #2
	str r1, [r4, r2]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	mov r0, #0x22
	lsl r0, r0, #4
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	add r2, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	bl sub_0200D4C4
_0208AB26:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208AAE4

	thumb_func_start sub_0208AB2C
sub_0208AB2C: ; 0x0208AB2C
	push {r4, lr}
	add r1, #0x10
	mov r2, #0x8f
	add r3, r0, #0
	lsl r2, r2, #2
	lsl r1, r1, #2
	ldr r0, [r3, r2]
	add r3, r3, r1
	add r1, r2, #0
	add r1, #0xca
	ldrb r4, [r3, r1]
	add r1, r2, #0
	add r1, #0xcb
	ldrb r1, [r3, r1]
	add r4, r4, r1
	lsr r1, r4, #0x1f
	add r1, r4, r1
	add r4, r2, #0
	add r4, #0xc8
	add r2, #0xc9
	lsl r1, r1, #0xf
	ldrb r4, [r3, r4]
	ldrb r2, [r3, r2]
	asr r1, r1, #0x10
	add r3, r4, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	thumb_func_end sub_0208AB2C

	thumb_func_start sub_0208AB6C
sub_0208AB6C: ; 0x0208AB6C
	push {r4, lr}
	add r3, r0, #0
	mov r0, #0x1c
	mul r0, r2
	add r1, #0x10
	mov r2, #0x22
	lsl r1, r1, #2
	add r0, r3, r0
	lsl r2, r2, #4
	add r3, r3, r1
	add r1, r2, #0
	add r1, #0xe6
	ldrb r4, [r3, r1]
	add r1, r2, #0
	add r1, #0xe7
	ldrb r1, [r3, r1]
	ldr r0, [r0, r2]
	add r4, r4, r1
	lsr r1, r4, #0x1f
	add r1, r4, r1
	add r4, r2, #0
	add r4, #0xe4
	add r2, #0xe5
	lsl r1, r1, #0xf
	ldrb r4, [r3, r4]
	ldrb r2, [r3, r2]
	asr r1, r1, #0x10
	add r3, r4, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	lsl r2, r2, #0xf
	asr r2, r2, #0x10
	bl sub_0200D4C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208AB6C

	thumb_func_start sub_0208ABB4
sub_0208ABB4: ; 0x0208ABB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D330
	add r4, r5, #0
	mov r7, #0x22
	mov r6, #1
	add r4, #0x1c
	lsl r7, r7, #4
_0208ABE0:
	ldr r0, [r4, r7]
	bl sub_0200D37C
	cmp r0, #3
	bne _0208AC34
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200D3B8
	cmp r0, #0
	bne _0208AC76
	mov r0, #0x22
	mov r1, #0x85
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl sub_0200D364
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0208AC1E
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0208AAB4
	b _0208AC28
_0208AC1E:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0208AAB4
_0208AC28:
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl sub_0208AAB4
	b _0208AC76
_0208AC34:
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	beq _0208AC48
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200D364
_0208AC48:
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200D37C
	cmp r0, #3
	beq _0208AC76
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0208AC6C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl sub_0208AAB4
	b _0208AC76
_0208AC6C:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0208AAB4
_0208AC76:
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, #3
	blt _0208ABE0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208ABB4

	thumb_func_start sub_0208AC80
sub_0208AC80: ; 0x0208AC80
	push {r3, lr}
	cmp r0, #0
	beq _0208AC8A
	bl sub_020128C4
_0208AC8A:
	pop {r3, pc}
	thumb_func_end sub_0208AC80

	thumb_func_start sub_0208AC8C
sub_0208AC8C: ; 0x0208AC8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, r5, #0
_0208AC96:
	ldr r0, _0208AD94 ; =0x0000036E
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	sub r0, #0x28
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0xdb
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	add r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	lsl r0, r0, #0xf
	asr r0, r0, #0x10
	sub r0, r0, #7
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0208ACD8
	cmp r0, #1
	beq _0208ACE2
	b _0208AD60
_0208ACD8:
	mov r0, #0xa
	mov r1, #0
	lsl r0, r0, #6
	strb r1, [r4, r0]
	b _0208AD82
_0208ACE2:
	mov r0, #0xa
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0xa
	lsl r0, r0, #6
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0208AD12
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D364
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0208AC80
	b _0208AD82
_0208AD12:
	cmp r0, #2
	bne _0208AD32
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_0200D364
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	sub r2, r6, #1
	bl sub_0208AC80
	b _0208AD82
_0208AD32:
	cmp r0, #0xa
	bne _0208AD82
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0208AC80
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x9a
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0208AD82
_0208AD60:
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0208AC80
	mov r0, #0x9a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0208AD82:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	add r4, #0x1c
	str r0, [sp]
	cmp r0, #2
	blt _0208AC96
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208AD94: .word 0x0000036E
	thumb_func_end sub_0208AC8C

	thumb_func_start sub_0208AD98
sub_0208AD98: ; 0x0208AD98
	mov r2, #0
	cmp r1, #0
	bne _0208ADA0
	mov r2, #0xb
_0208ADA0:
	add r0, r2, r0
	bx lr
	thumb_func_end sub_0208AD98

	thumb_func_start sub_0208ADA4
sub_0208ADA4: ; 0x0208ADA4
	push {r4, r5, r6, r7}
	mov r1, #0x2d
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r3, #0
	cmp r1, #0
	ble _0208ADDE
	mov r6, #0x2e
	lsl r6, r6, #4
	add r4, r0, #0
	add r1, r3, #0
	mov r2, #1
	sub r7, r6, #4
_0208ADBE:
	ldr r5, [r0, r7]
	cmp r3, r5
	blt _0208ADCE
	ldr r5, [r0, r6]
	cmp r3, r5
	bge _0208ADCE
	str r2, [r4, #8]
	b _0208ADD0
_0208ADCE:
	str r1, [r4, #8]
_0208ADD0:
	mov r5, #0x2d
	lsl r5, r5, #4
	ldr r5, [r0, r5]
	add r3, r3, #1
	add r4, #0x1c
	cmp r3, r5
	blt _0208ADBE
_0208ADDE:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208ADA4

	thumb_func_start sub_0208ADE4
sub_0208ADE4: ; 0x0208ADE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	mov r1, #0xb5
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	mov r4, #0
	lsl r2, r0, #1
	ldr r0, [sp]
	str r4, [sp, #8]
	add r2, r0, r2
	add r0, r1, #0
	sub r0, #0x34
	ldrsh r5, [r2, r0]
	ldr r0, [sp]
	sub r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	bgt _0208AE0E
	b _0208AF3E
_0208AE0E:
	ldr r7, [sp]
	add r6, r7, #0
_0208AE12:
	mov r0, #0xb7
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r4, r0
	blt _0208AE3E
	add r2, r1, #0
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r4, r1
	bge _0208AE3E
	cmp r4, r0
	bne _0208AE36
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AE50
_0208AE36:
	add r5, #0x20
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AE50
_0208AE3E:
	cmp r4, #0
	bne _0208AE4A
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AE50
_0208AE4A:
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
_0208AE50:
	add r1, sp, #0xc
	ldr r0, [r7, #0xc]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0208AE72
	add r3, sp, #0xc
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r7, #0xc]
	add r1, r5, #0
	bl sub_0200D4C4
	b _0208AE8E
_0208AE72:
	add r1, sp, #0xc
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r1, r5, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r7, #0x14]
	mov r0, #0
	strh r0, [r7, #0x16]
	mov r0, #2
	strb r0, [r7, #0x18]
	mov r0, #0
	strb r0, [r7, #0x19]
_0208AE8E:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	cmp r4, r0
	bne _0208AF2C
	mov r0, #0xfb
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	beq _0208AF2C
	mov r0, #0x73
	lsl r0, r0, #2
	add r1, sp, #0xc
	ldr r0, [r6, r0]
	add r1, #2
	add r2, sp, #0xc
	bl sub_0200D550
	ldr r1, [sp]
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r2, r1, #0
	mov r1, #0xb7
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, r0
	bne _0208AED2
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AEE8
_0208AED2:
	cmp r4, r1
	ble _0208AEE2
	cmp r4, r0
	bge _0208AEE2
	add r5, #0x14
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
	b _0208AEE8
_0208AEE2:
	add r5, #8
	lsl r0, r5, #0x10
	asr r5, r0, #0x10
_0208AEE8:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0208AF02
	mov r0, #0x73
	lsl r0, r0, #2
	add r3, sp, #0xc
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r6, r0]
	add r1, r5, #0
	bl sub_0200D4C4
	b _0208AF24
_0208AF02:
	add r1, sp, #0xc
	mov r0, #2
	ldrsh r0, [r1, r0]
	sub r1, r5, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #0x75
	lsl r0, r0, #2
	strh r1, [r6, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r6, r0]
	mov r0, #0x76
	mov r1, #2
	lsl r0, r0, #2
	strb r1, [r6, r0]
_0208AF24:
	ldr r0, [sp, #8]
	add r6, #0x1c
	add r0, r0, #1
	str r0, [sp, #8]
_0208AF2C:
	mov r0, #0x2d
	ldr r1, [sp]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r4, r4, #1
	add r7, #0x1c
	cmp r4, r0
	bge _0208AF3E
	b _0208AE12
_0208AF3E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208ADE4

	thumb_func_start sub_0208AF44
sub_0208AF44: ; 0x0208AF44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _0208AFC8
	add r5, r6, #0
_0208AF58:
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	blt _0208AF74
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r4, r0
	bge _0208AF74
	mov r0, #0x10
	str r0, [sp]
	add r7, r0, #0
	b _0208AF7A
_0208AF74:
	mov r0, #4
	str r0, [sp]
	mov r7, #8
_0208AF7A:
	add r2, sp, #4
	ldr r0, [r5, #0xc]
	add r1, sp, #4
	add r2, #2
	bl sub_0200D550
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r4, r4, #1
	sub r1, r0, r7
	ldr r0, [r5, #0x10]
	strb r1, [r0]
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	sub r1, r1, r0
	ldr r0, [r5, #0x10]
	strb r1, [r0, #2]
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	add r1, r0, r7
	ldr r0, [r5, #0x10]
	strb r1, [r0, #1]
	add r1, sp, #4
	mov r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	add r1, r1, r0
	ldr r0, [r5, #0x10]
	add r5, #0x1c
	strb r1, [r0, #3]
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	cmp r4, r0
	blt _0208AF58
_0208AFC8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208AF44

	thumb_func_start sub_0208AFCC
sub_0208AFCC: ; 0x0208AFCC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	mov r1, #0x65
	bl sub_02012744
	mov r1, #0xde
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	mov r1, #0x65
	bl sub_02002BB8
	pop {r4, pc}
	thumb_func_end sub_0208AFCC

	thumb_func_start sub_0208AFE8
sub_0208AFE8: ; 0x0208AFE8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #2
	bl sub_02002C60
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02012870
	mov r0, #0xe1
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201EE28
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02012870
	mov r0, #0x39
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201EE28
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020127BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208AFE8

	thumb_func_start sub_0208B028
sub_0208B028: ; 0x0208B028
	push {r4, lr}
	sub sp, #0x18
	add r3, r0, #0
	mov r0, #0xe
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	ldr r4, _0208B060 ; =0x000003EB
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r2, r4, #0
	str r4, [sp, #0x14]
	sub r0, #0xef
	sub r2, #0xfb
	sub r4, #0xf7
	ldr r0, [r3, r0]
	ldr r2, [r3, r2]
	ldr r3, [r3, r4]
	mov r1, #2
	bl sub_0200CD7C
	add sp, #0x18
	pop {r4, pc}
	nop
_0208B060: .word 0x000003EB
	thumb_func_end sub_0208B028

	thumb_func_start sub_0208B064
sub_0208B064: ; 0x0208B064
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_0208B028
	mov r1, #0
	add r0, r4, #0
	mov r2, #0x4e
	mov r3, #0xa5
	str r1, [sp]
	bl sub_0208B090
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xac
	mov r3, #0xa5
	bl sub_0208B090
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0208B064

	thumb_func_start sub_0208B090
sub_0208B090: ; 0x0208B090
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd4
	mov r3, #0x65
	bl sub_0200B144
	add r1, r4, #2
	str r0, [sp, #0x14]
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x1c
	mov r2, #0xa
	mov r3, #2
	bl sub_0201A870
	ldr r1, [sp, #0x18]
	mov r0, #2
	mov r2, #0
	mov r3, #0x50
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208B1BC ; =0x000F0D02
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, sp, #0x1c
	mov r1, #2
	bl sub_0201D78C
	add r0, sp, #0x1c
	mov r1, #1
	mov r2, #0x65
	bl sub_02012898
	mov r3, #0xe1
	lsl r3, r3, #2
	mov r1, #0xc
	add r6, r4, #0
	mul r6, r1
	mov r1, #1
	add r3, r5, r3
	add r2, r1, #0
	add r3, r3, r6
	bl sub_0201ED94
	add r0, r4, #0
	add r0, #0x1a
	lsl r0, r0, #2
	add r3, r5, r0
	ldr r0, _0208B1C0 ; =0x00000306
	add r2, r0, #1
	ldrb r1, [r3, r0]
	ldrb r2, [r3, r2]
	add r2, r1, r2
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	asr r7, r1, #0x10
	sub r1, r0, #2
	ldrb r2, [r3, r1]
	sub r1, r0, #1
	ldrb r1, [r3, r1]
	add r2, r2, r1
	lsr r1, r2, #0x1f
	add r1, r2, r1
	lsl r1, r1, #0xf
	asr r1, r1, #0x10
	str r1, [sp, #0x10]
	add r1, r0, #0
	add r1, #0x72
	ldr r1, [r5, r1]
	sub r0, #0x12
	str r1, [sp, #0x2c]
	add r1, sp, #0x1c
	str r1, [sp, #0x30]
	ldr r0, [r5, r0]
	bl sub_0200D9B0
	mov r1, #0xbd
	lsl r1, r1, #2
	str r0, [sp, #0x34]
	ldr r0, [r5, r1]
	add r1, #0xf7
	bl sub_0200D04C
	str r0, [sp, #0x38]
	mov r1, #0
	mov r0, #0xe2
	str r1, [sp, #0x3c]
	add r2, r5, r6
	lsl r0, r0, #2
	ldr r2, [r2, r0]
	sub r0, #0xc
	add r5, r5, r0
	sub r7, #0x28
	str r2, [sp, #0x40]
	lsl r2, r7, #0x10
	asr r2, r2, #0x10
	str r2, [sp, #0x44]
	ldr r2, [sp, #0x10]
	lsl r4, r4, #2
	sub r2, r2, #7
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	str r1, [sp, #0x4c]
	str r1, [sp, #0x50]
	mov r1, #1
	str r1, [sp, #0x54]
	mov r1, #0x65
	str r2, [sp, #0x48]
	str r1, [sp, #0x58]
	add r0, sp, #0x2c
	bl sub_020127E8
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x70]
	bl sub_02012AC0
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	bl sub_0200B190
	add r0, sp, #0x1c
	bl sub_0201A8FC
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0208B1BC: .word 0x000F0D02
_0208B1C0: .word 0x00000306
	thumb_func_end sub_0208B090

	thumb_func_start sub_0208B1C4
sub_0208B1C4: ; 0x0208B1C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0201A7A0
	ldr r0, [sp, #0x28]
	lsl r2, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	lsl r3, r6, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	lsr r2, r2, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r7, #0
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0xb
	bl sub_0200E060
	add r0, r5, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	ldr r1, [sp, #0x38]
	add r0, r5, #0
	bl sub_0208B230
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0208B1C4

	thumb_func_start sub_0208B230
sub_0208B230: ; 0x0208B230
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	mov r1, #0xf
	add r4, r0, #0
	bl sub_0201ADA4
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd4
	mov r3, #0x65
	bl sub_0200B144
	add r1, r5, #0
	add r6, r0, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A954
	add r0, r5, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end sub_0208B230

	.rodata


	.global Unk_020F2F64
Unk_020F2F64: ; 0x020F2F64
	.incbin "incbin/arm9_rodata.bin", 0xE324, 0xE338 - 0xE324

	.global Unk_020F2F78
Unk_020F2F78: ; 0x020F2F78
	.incbin "incbin/arm9_rodata.bin", 0xE338, 0xE350 - 0xE338

	.global Unk_020F2F90
Unk_020F2F90: ; 0x020F2F90
	.incbin "incbin/arm9_rodata.bin", 0xE350, 0x20

