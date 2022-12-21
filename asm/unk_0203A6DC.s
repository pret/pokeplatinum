	.include "macros/function.inc"
	.include "include/unk_0203A6DC.inc"

	

	.text


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