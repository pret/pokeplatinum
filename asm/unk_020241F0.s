	.include "macros/function.inc"
	.include "include/unk_020241F0.inc"

	

	.text


	thumb_func_start sub_020241F0
sub_020241F0: ; 0x020241F0
	mov r0, #5
	lsl r0, r0, #0x18
	bx lr
	; .align 2, 0
	thumb_func_end sub_020241F0

	thumb_func_start sub_020241F8
sub_020241F8: ; 0x020241F8
	mov r0, #2
	lsl r0, r0, #8
	bx lr
	; .align 2, 0
	thumb_func_end sub_020241F8

	thumb_func_start sub_02024200
sub_02024200: ; 0x02024200
	ldr r0, _02024204 ; =0x05000400
	bx lr
	; .align 2, 0
_02024204: .word 0x05000400
	thumb_func_end sub_02024200

	thumb_func_start sub_02024208
sub_02024208: ; 0x02024208
	mov r0, #2
	lsl r0, r0, #8
	bx lr
	; .align 2, 0
	thumb_func_end sub_02024208

	thumb_func_start sub_02024210
sub_02024210: ; 0x02024210
	ldr r0, _02024214 ; =0x05000200
	bx lr
	; .align 2, 0
_02024214: .word 0x05000200
	thumb_func_end sub_02024210

	thumb_func_start sub_02024218
sub_02024218: ; 0x02024218
	ldr r0, _0202421C ; =0x05000600
	bx lr
	; .align 2, 0
_0202421C: .word 0x05000600
	thumb_func_end sub_02024218