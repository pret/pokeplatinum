	.include "macros/function.inc"
	.include "include/unk_020BF93C.inc"

	

	.text


	arm_func_start G3_LoadMtx44
G3_LoadMtx44: ; 0x020BF93C
	ldr r1, _020BF950 ; =0x04000400
	mov r2, #0x16
	ldr ip, _020BF954 ; =GX_SendFifo64B
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF950: .word 0x04000400
_020BF954: .word GX_SendFifo64B
	arm_func_end G3_LoadMtx44

	arm_func_start G3_LoadMtx43
G3_LoadMtx43: ; 0x020BF958
	ldr r1, _020BF96C ; =0x04000400
	mov r2, #0x17
	ldr ip, _020BF970 ; =GX_SendFifo48B
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF96C: .word 0x04000400
_020BF970: .word GX_SendFifo48B
	arm_func_end G3_LoadMtx43

	arm_func_start G3_MultMtx43
G3_MultMtx43: ; 0x020BF974
	ldr r1, _020BF988 ; =0x04000400
	mov r2, #0x19
	ldr ip, _020BF98C ; =GX_SendFifo48B
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF988: .word 0x04000400
_020BF98C: .word GX_SendFifo48B
	arm_func_end G3_MultMtx43

	arm_func_start G3_MultMtx33
G3_MultMtx33: ; 0x020BF990
	ldr r1, _020BF9A4 ; =0x04000400
	mov r2, #0x1a
	ldr ip, _020BF9A8 ; =MI_Copy36B
	str r2, [r1, #0]
	bx ip
	; .align 2, 0
_020BF9A4: .word 0x04000400
_020BF9A8: .word MI_Copy36B
	arm_func_end G3_MultMtx33