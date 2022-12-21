	.include "macros/function.inc"
	.include "include/unk_020C5CF0.inc"

	

	.text


	arm_func_start sub_020C5CF0
sub_020C5CF0: ; 0x020C5CF0
	mov r1, #0
	ldr r2, _020C5D1C ; =0x021CEB20
	mov r0, r1
_020C5CFC:
	str r0, [r2, #0]
	str r0, [r2, #4]
	add r1, r1, #1
	strb r0, [r2, #8]
	cmp r1, #8
	add r2, r2, #0xc
	blt _020C5CFC
	bx lr
	; .align 2, 0
_020C5D1C: .word 0x021CEB20
	arm_func_end sub_020C5CF0

	arm_func_start sub_020C5D20
sub_020C5D20: ; 0x020C5D20
	ldr r2, _020C5D3C ; =0x021CEB20
	mov r1, #0xc
	mla r1, r0, r1, r2
	ldrb r0, [r1, #8]
	add r0, r0, #1
	strb r0, [r1, #8]
	bx lr
	; .align 2, 0
_020C5D3C: .word 0x021CEB20
	arm_func_end sub_020C5D20

	arm_func_start sub_020C5D40
sub_020C5D40: ; 0x020C5D40
	mov r3, #0xc
	mul r3, r0, r3
	ldr r0, _020C5D6C ; =0x021CEB20
	str r1, [r0, r3]
	add r1, r0, r3
	str r2, [r1, #4]
	ldrb r0, [r1, #8]
	add r0, r0, #1
	strb r0, [r1, #8]
	and r0, r0, #0xff
	bx lr
	; .align 2, 0
_020C5D6C: .word 0x021CEB20
	arm_func_end sub_020C5D40

	arm_func_start sub_020C5D70
sub_020C5D70: ; 0x020C5D70
	stmfd sp!, {r3, lr}
	ldr r3, _020C5DB0 ; =0x021CEB20
	and r2, r0, #0xff
	mov r1, #0xc
	mla r3, r2, r1, r3
	mov r1, r0, asr #8
	ldrb r0, [r3, #8]
	and r1, r1, #0xff
	cmp r1, r0
	ldmneia sp!, {r3, pc}
	ldr r1, [r3, #0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r3, #4]
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C5DB0: .word 0x021CEB20
	arm_func_end sub_020C5D70

	.bss


	.global Unk_021CEB20
Unk_021CEB20: ; 0x021CEB20
	.space 0x60

