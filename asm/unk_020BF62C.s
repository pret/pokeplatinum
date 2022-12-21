	.include "macros/function.inc"
	.include "include/unk_020BF62C.inc"

	

	.text


	arm_func_start sub_020BF62C
sub_020BF62C: ; 0x020BF62C
	mov r3, r0
	ldr r0, [r3, #0]
	mov r2, #0x16
	str r2, [r0, #0]
	mov r0, r1
	ldr ip, _020BF64C ; =sub_020C4CC8
	ldr r1, [r3, #4]
	bx ip
	; .align 2, 0
_020BF64C: .word sub_020C4CC8
	arm_func_end sub_020BF62C

	arm_func_start sub_020BF650
sub_020BF650: ; 0x020BF650
	ldr r1, [r0, #0]
	mov r2, #0x11
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF650

	arm_func_start sub_020BF670
sub_020BF670: ; 0x020BF670
	ldr r2, [r0, #0]
	mov r3, #0x12
	str r3, [r2, #0]
	ldr r2, [r0, #4]
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF670

	arm_func_start sub_020BF69C
sub_020BF69C: ; 0x020BF69C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020BF62C
	ldr r0, [r4, #4]
	add r0, r0, #0x40
	str r0, [r4, #0]
	add r0, r0, #4
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BF69C

	arm_func_start sub_020BF6C0
sub_020BF6C0: ; 0x020BF6C0
	ldr r2, [r0, #0]
	mov r3, #0x20
	str r3, [r2, #0]
	ldr r2, [r0, #4]
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF6C0

	arm_func_start sub_020BF6EC
sub_020BF6EC: ; 0x020BF6EC
	stmfd sp!, {r4, lr}
	mov r4, #0x21
	ldr lr, [r0]
	rsb ip, r4, #0x420
	str r4, [lr]
	mov lr, r3, asr #3
	and r3, ip, r1, asr #3
	mov r2, r2, asr #3
	mov r1, r2, lsl #0x16
	orr r2, r3, r1, lsr #12
	mov ip, lr, lsl #0x16
	ldr r1, [r0, #4]
	orr r2, r2, ip, lsr #2
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020BF6EC

	arm_func_start sub_020BF73C
sub_020BF73C: ; 0x020BF73C
	stmfd sp!, {r3, lr}
	ldr ip, [r0]
	mov r2, r2, lsl #0x10
	mov lr, #0x23
	str lr, [ip]
	mov r2, r2, lsr #0x10
	mov ip, r2, lsl #0x10
	mov r2, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	ldr r3, [r0, #4]
	orr r1, ip, r1, lsr #16
	str r1, [r3, #0]
	ldr r1, [r0, #4]
	mov r2, r2, lsr #0x10
	str r2, [r1, #4]
	ldr r1, [r0, #4]
	add r1, r1, #8
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BF73C

	arm_func_start sub_020BF790
sub_020BF790: ; 0x020BF790
	orr r1, r1, r2, lsl #4
	ldr r2, [r0, #0]
	mov ip, #0x29
	str ip, [r2]
	orr r1, r1, r3, lsl #6
	ldr r2, [sp, #8]
	ldr r3, [sp]
	orr r1, r2, r1
	orr r2, r1, r3, lsl #24
	ldr ip, [sp, #4]
	ldr r1, [r0, #4]
	orr r2, r2, ip, lsl #16
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF790

	arm_func_start sub_020BF7DC
sub_020BF7DC: ; 0x020BF7DC
	stmfd sp!, {r3, lr}
	ldr ip, [r0]
	mov lr, #0x30
	cmp r3, #0
	movne r3, #1
	str lr, [ip]
	orr r2, r1, r2, lsl #16
	moveq r3, #0
	ldr r1, [r0, #4]
	orr r2, r2, r3, lsl #15
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BF7DC

	arm_func_start sub_020BF820
sub_020BF820: ; 0x020BF820
	stmfd sp!, {r3, lr}
	ldr ip, [r0]
	mov lr, #0x31
	cmp r3, #0
	movne r3, #1
	str lr, [ip]
	orr r2, r1, r2, lsl #16
	moveq r3, #0
	ldr r1, [r0, #4]
	orr r2, r2, r3, lsl #15
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	arm_func_end sub_020BF820

	arm_func_start sub_020BF864
sub_020BF864: ; 0x020BF864
	stmfd sp!, {r3, r4, r5, lr}
	ldrsh lr, [sp, #0x10]
	ldr ip, _020BF8BC ; =0x000003FF
	mov r3, r3, asr #3
	and ip, ip, r2, asr #3
	mov r2, r3, lsl #0x16
	mov lr, lr, asr #3
	ldr r4, [r0, #0]
	mov r5, #0x32
	str r5, [r4, #0]
	mov r3, lr, lsl #0x16
	orr r2, ip, r2, lsr #12
	orr r3, r2, r3, lsr #2
	ldr r2, [r0, #4]
	orr r1, r3, r1, lsl #30
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020BF8BC: .word 0x000003FF
	arm_func_end sub_020BF864

	arm_func_start sub_020BF8C0
sub_020BF8C0: ; 0x020BF8C0
	ldr r3, [r0, #0]
	mov ip, #0x33
	str ip, [r3]
	ldr r3, [r0, #4]
	orr r1, r2, r1, lsl #30
	str r1, [r3, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF8C0

	arm_func_start sub_020BF8F0
sub_020BF8F0: ; 0x020BF8F0
	ldr r2, [r0, #0]
	mov r3, #0x40
	str r3, [r2, #0]
	ldr r2, [r0, #4]
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	add r1, r1, #4
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF8F0

	arm_func_start sub_020BF91C
sub_020BF91C: ; 0x020BF91C
	ldr r1, [r0, #0]
	mov r2, #0x41
	str r2, [r1, #0]
	ldr r1, [r0, #4]
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020BF91C