	.include "macros/function.inc"
	.include "include/unk_02022974.inc"

	

	.text


	thumb_func_start sub_02022974
sub_02022974: ; 0x02022974
	push {r3, lr}
	bl sub_02036780
	cmp r0, #0
	beq _0202298A
	bl OS_GetProcMode
	cmp r0, #0x12
	beq _0202298A
	bl sub_0209B49C
_0202298A:
	pop {r3, pc}
	thumb_func_end sub_02022974