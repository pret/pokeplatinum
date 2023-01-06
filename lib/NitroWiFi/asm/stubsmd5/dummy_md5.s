	.include "macros/function.inc"
	.include "include/dummy_md5.inc"

	

	.text


	arm_func_start ov4_02215844
ov4_02215844: ; 0x02215844
	ldr ip, _0221584C ; =DGT_Hash1Reset
	bx ip
	; .align 2, 0
_0221584C: .word DGT_Hash1Reset
	arm_func_end ov4_02215844

	arm_func_start ov4_02215850
ov4_02215850: ; 0x02215850
	ldr ip, _02215858 ; =DGT_Hash1SetSource
	bx ip
	; .align 2, 0
_02215858: .word DGT_Hash1SetSource
	arm_func_end ov4_02215850

	arm_func_start ov4_0221585C
ov4_0221585C: ; 0x0221585C
	ldr ip, _02215864 ; =DGT_Hash1GetDigest_R
	bx ip
	; .align 2, 0
_02215864: .word DGT_Hash1GetDigest_R
	arm_func_end ov4_0221585C