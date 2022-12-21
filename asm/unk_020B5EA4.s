	.include "macros/function.inc"
	.include "include/unk_020B5EA4.inc"

	

	.text


	arm_func_start sub_020B5EA4
sub_020B5EA4: ; 0x020B5EA4
	ldr r3, _020B5EEC ; =0x02100ECC
	mov ip, #0
	ldr r3, [r3, #0]
	str r3, [r0, #0xc]
	ldrb r2, [r2, #0x17]
	strb r2, [r0, #0x19]
	str r1, [r0, #8]
	ldrb r1, [r0, #0x19]
	cmp r1, #0
	bxls lr
_020B5ECC:
	orr r2, ip, #0x100
	add r1, r0, ip, lsl #1
	strh r2, [r1, #0x1a]
	ldrb r1, [r0, #0x19]
	add ip, ip, #1
	cmp ip, r1
	blo _020B5ECC
	bx lr
	; .align 2, 0
_020B5EEC: .word 0x02100ECC
	arm_func_end sub_020B5EA4

	arm_func_start sub_020B5EF0
sub_020B5EF0: ; 0x020B5EF0
	stmfd sp!, {r3, lr}
	ldr lr, [r1, #8]
	ldr r3, [r1, #0]
	ldrh r1, [lr, #6]
	mov ip, r3, asr #0xc
	mov r3, #1
	mla r2, ip, r1, r2
	mov r1, r2, lsr #5
	add r1, lr, r1, lsl #2
	ldr r1, [r1, #0xc]
	and r2, r2, #0x1f
	and r1, r1, r3, lsl r2
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020B5EF0