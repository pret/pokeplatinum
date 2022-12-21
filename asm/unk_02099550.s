	.include "macros/function.inc"
	.include "include/unk_02099550.inc"

	

	.text


	thumb_func_start sub_02099550
sub_02099550: ; 0x02099550
	ldr r3, _02099558 ; =sub_02006590
	ldr r0, _0209955C ; =0x00000004
	mov r1, #2
	bx r3
	; .align 2, 0
_02099558: .word sub_02006590
_0209955C: .word 0x00000004
	thumb_func_end sub_02099550

	thumb_func_start sub_02099560
sub_02099560: ; 0x02099560
	ldr r3, _02099568 ; =sub_02006514
	ldr r0, _0209956C ; =0x00000004
	bx r3
	nop
_02099568: .word sub_02006514
_0209956C: .word 0x00000004
	thumb_func_end sub_02099560

	thumb_func_start sub_02099570
sub_02099570: ; 0x02099570
	ldr r3, _02099578 ; =sub_02006590
	ldr r0, _0209957C ; =0x00000012
	mov r1, #2
	bx r3
	; .align 2, 0
_02099578: .word sub_02006590
_0209957C: .word 0x00000012
	thumb_func_end sub_02099570

	thumb_func_start sub_02099580
sub_02099580: ; 0x02099580
	ldr r3, _02099588 ; =sub_02006514
	ldr r0, _0209958C ; =0x00000012
	bx r3
	nop
_02099588: .word sub_02006514
_0209958C: .word 0x00000012
	thumb_func_end sub_02099580

	thumb_func_start sub_02099590
sub_02099590: ; 0x02099590
	push {r4, lr}
	add r4, r1, #0
	bl sub_02099550
	bl sub_02099570
	add r0, r4, #0
	bl ov18_0221F800
	bl sub_02099580
	bl sub_02099560
	mov r0, #0
	bl sub_020C3EE4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02099590

	thumb_func_start sub_020995B4
sub_020995B4: ; 0x020995B4
	ldr r3, _020995BC ; =sub_02006590
	ldr r0, _020995C0 ; =0x0000003C
	mov r1, #2
	bx r3
	; .align 2, 0
_020995BC: .word sub_02006590
_020995C0: .word 0x0000003C
	thumb_func_end sub_020995B4

	thumb_func_start sub_020995C4
sub_020995C4: ; 0x020995C4
	ldr r3, _020995CC ; =sub_02006514
	ldr r0, _020995D0 ; =0x0000003C
	bx r3
	nop
_020995CC: .word sub_02006514
_020995D0: .word 0x0000003C
	thumb_func_end sub_020995C4

	thumb_func_start sub_020995D4
sub_020995D4: ; 0x020995D4
	push {r4, lr}
	mov r2, #0x41
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x31
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	mov r1, #0x31
	bl sub_02099590
	mov r0, #0x31
	bl sub_0201807C
	mov r0, #0
	bl sub_020C3EE4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020995D4

	.rodata


	.global Unk_020F6DF0
Unk_020F6DF0: ; 0x020F6DF0
	.incbin "incbin/arm9_rodata.bin", 0x121B0, 0x10

