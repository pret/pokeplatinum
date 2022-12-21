	.include "macros/function.inc"
	.include "include/unk_020573FC.inc"

	

	.text


	thumb_func_start sub_020573FC
sub_020573FC: ; 0x020573FC
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057408 ; =0x020EC598
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057408: .word 0x020EC598
	thumb_func_end sub_020573FC

	thumb_func_start sub_0205740C
sub_0205740C: ; 0x0205740C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057418 ; =0x020EC599
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057418: .word 0x020EC599
	thumb_func_end sub_0205740C

	thumb_func_start sub_0205741C
sub_0205741C: ; 0x0205741C
	mov r1, #0x1c
	ldr r2, _02057428 ; =0x020EC598
	mul r1, r0
	add r0, r2, r1
	add r0, r0, #2
	bx lr
	; .align 2, 0
_02057428: .word 0x020EC598
	thumb_func_end sub_0205741C

	thumb_func_start sub_0205742C
sub_0205742C: ; 0x0205742C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057438 ; =0x020EC5A3
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057438: .word 0x020EC5A3
	thumb_func_end sub_0205742C

	thumb_func_start sub_0205743C
sub_0205743C: ; 0x0205743C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057448 ; =0x020EC5A4
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057448: .word 0x020EC5A4
	thumb_func_end sub_0205743C

	thumb_func_start sub_0205744C
sub_0205744C: ; 0x0205744C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057458 ; =0x020EC5A5
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057458: .word 0x020EC5A5
	thumb_func_end sub_0205744C

	thumb_func_start sub_0205745C
sub_0205745C: ; 0x0205745C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057468 ; =0x020EC5A8
	ldr r0, [r0, r1]
	bx lr
	nop
_02057468: .word 0x020EC5A8
	thumb_func_end sub_0205745C

	thumb_func_start sub_0205746C
sub_0205746C: ; 0x0205746C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057478 ; =0x020EC5AC
	ldr r0, [r0, r1]
	bx lr
	nop
_02057478: .word 0x020EC5AC
	thumb_func_end sub_0205746C

	thumb_func_start sub_0205747C
sub_0205747C: ; 0x0205747C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057488 ; =0x020EC5B0
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057488: .word 0x020EC5B0
	thumb_func_end sub_0205747C

	thumb_func_start sub_0205748C
sub_0205748C: ; 0x0205748C
	mov r1, #0x1c
	mul r1, r0
	ldr r0, _02057498 ; =0x020EC5B1
	ldrb r0, [r0, r1]
	bx lr
	nop
_02057498: .word 0x020EC5B1
	thumb_func_end sub_0205748C

	.rodata


	.global Unk_020EC598
Unk_020EC598: ; 0x020EC598
	.incbin "incbin/arm9_rodata.bin", 0x7958, 0xF34

