	.include "macros/function.inc"

	
	.extern Unk_021CCBA0

	.text


	arm_func_start GX_InitGXState
GX_InitGXState: ; 0x020BDEEC
	ldr r0, _020BDF44 ; =0x021CCBA0
	mov r2, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	ldr r1, _020BDF48 ; =0x04000240
	strh r2, [r0, #0x18]
	str r2, [r1, #0]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	strb r2, [r1, #6]
	strh r2, [r1, #8]
	bx lr
	; .align 2, 0
_020BDF44: .word Unk_021CCBA0
_020BDF48: .word 0x04000240
	arm_func_end GX_InitGXState

	.bss


	.global Unk_021CCBA0
Unk_021CCBA0: ; 0x021CCBA0
	.space 0x1A

