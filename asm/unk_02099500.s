	.include "macros/function.inc"
	.include "include/unk_02099500.inc"

	

	.text


	thumb_func_start sub_02099500
sub_02099500: ; 0x02099500
	mov r0, #3
	bx lr
	thumb_func_end sub_02099500

	thumb_func_start sub_02099504
sub_02099504: ; 0x02099504
	mov r0, #0x18
	bx lr
	thumb_func_end sub_02099504

	thumb_func_start sub_02099508
sub_02099508: ; 0x02099508
	mov r0, #0x59
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099508

	thumb_func_start sub_02099510
sub_02099510: ; 0x02099510
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099510

	thumb_func_start sub_02099514
sub_02099514: ; 0x02099514
	ldr r3, _02099520 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _02099524 ; =0x020F68A4
	mov r1, #0x71
	bx r3
	nop
_02099520: .word sub_02032798
_02099524: .word 0x020F68A4
	thumb_func_end sub_02099514

	thumb_func_start sub_02099528
sub_02099528: ; 0x02099528
	ldr r0, _0209952C ; =0x0000066C
	bx lr
	; .align 2, 0
_0209952C: .word 0x0000066C
	thumb_func_end sub_02099528

	thumb_func_start sub_02099530
sub_02099530: ; 0x02099530
	mov r0, #0x2f
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099530

	thumb_func_start sub_02099538
sub_02099538: ; 0x02099538
	mov r0, #0x3f
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02099538

	thumb_func_start sub_02099540
sub_02099540: ; 0x02099540
	mov r0, #0xa
	bx lr
	thumb_func_end sub_02099540

	thumb_func_start sub_02099544
sub_02099544: ; 0x02099544
	mov r0, #0x32
	bx lr
	thumb_func_end sub_02099544

	thumb_func_start sub_02099548
sub_02099548: ; 0x02099548
	mov r0, #4
	bx lr
	thumb_func_end sub_02099548

	thumb_func_start sub_0209954C
sub_0209954C: ; 0x0209954C
	mov r0, #4
	bx lr
	thumb_func_end sub_0209954C

	.rodata


	.global Unk_020F68A4
Unk_020F68A4: ; 0x020F68A4
	.incbin "incbin/arm9_rodata.bin", 0x11C64, 0x54C

