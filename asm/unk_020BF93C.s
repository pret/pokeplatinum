	.include "macros/function.inc"
	.include "include/unk_020BF93C.inc"

	

	.text


	arm_func_start sub_020BF93C
sub_020BF93C: ; 0x020BF93C
	ldr r1, _020BF950 ; =0x04000400
	mov r2, #0x16
	ldr ip, _020BF954 ; =sub_020C1298
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF950: .word 0x04000400
_020BF954: .word sub_020C1298
	arm_func_end sub_020BF93C

	arm_func_start sub_020BF958
sub_020BF958: ; 0x020BF958
	ldr r1, _020BF96C ; =0x04000400
	mov r2, #0x17
	ldr ip, _020BF970 ; =sub_020C1274
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF96C: .word 0x04000400
_020BF970: .word sub_020C1274
	arm_func_end sub_020BF958

	arm_func_start sub_020BF974
sub_020BF974: ; 0x020BF974
	ldr r1, _020BF988 ; =0x04000400
	mov r2, #0x19
	ldr ip, _020BF98C ; =sub_020C1274
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF988: .word 0x04000400
_020BF98C: .word sub_020C1274
	arm_func_end sub_020BF974

	arm_func_start sub_020BF990
sub_020BF990: ; 0x020BF990
	ldr r1, _020BF9A4 ; =0x04000400
	mov r2, #0x1a
	ldr ip, _020BF9A8 ; =sub_020C4C88
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF9A4: .word 0x04000400
_020BF9A8: .word sub_020C4C88
	arm_func_end sub_020BF990