	.include "macros/function.inc"
	.include "include/unk_020BFF50.inc"

	

	.text


	arm_func_start sub_020BFF50
sub_020BFF50: ; 0x020BFF50
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x50
	ldr ip, [sp, #0x58]
	ldr lr, [sp, #0x5c]
	str ip, [sp]
	ldr r4, [sp, #0x68]
	ldr ip, [sp, #0x60]
	str lr, [sp, #4]
	cmp r4, #0
	addeq r4, sp, #0x10
	str ip, [sp, #8]
	str r4, [sp, #0xc]
	bl sub_020BCDC8
	ldr r0, [sp, #0x64]
	cmp r0, #0
	addeq sp, sp, #0x50
	ldmeqia sp!, {r4, pc}
	ldr r1, _020BFFB0 ; =0x04000440
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0]
	bl sub_020BF93C
	add sp, sp, #0x50
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BFFB0: .word 0x04000440
	arm_func_end sub_020BFF50

	arm_func_start sub_020BFFB4
sub_020BFFB4: ; 0x020BFFB4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	ldr r4, [sp, #0x40]
	mov r5, r3
	cmp r4, #0
	addeq r4, sp, #0
	mov r3, r4
	bl sub_020BC36C
	cmp r5, #0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _020BFFFC ; =0x04000440
	mov r2, #2
	mov r0, r4
	str r2, [r1, #0]
	bl sub_020BF958
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020BFFFC: .word 0x04000440
	arm_func_end sub_020BFFB4

	arm_func_start sub_020C0000
sub_020C0000: ; 0x020C0000
	ldr r3, _020C0038 ; =0x04000468
	mov r2, #0x1000
	str r2, [r3, #0]
	mov r2, #0
	str r2, [r3, #0]
	str r2, [r3, #0]
	str r2, [r3, #0]
	str r1, [r3, #0]
	str r0, [r3, #0]
	str r2, [r3, #0]
	rsb r0, r0, #0
	str r0, [r3, #0]
	str r1, [r3, #0]
	bx lr
	; .align 2, 0
_020C0038: .word 0x04000468
	arm_func_end sub_020C0000

	arm_func_start sub_020C003C
sub_020C003C: ; 0x020C003C
	ldr ip, _020C0074 ; =0x04000468
	mov r3, #0
	str r1, [ip]
	str r3, [ip]
	rsb r2, r0, #0
	str r2, [ip]
	str r3, [ip]
	mov r2, #0x1000
	str r2, [ip]
	str r3, [ip]
	str r0, [ip]
	str r3, [ip]
	str r1, [ip]
	bx lr
	; .align 2, 0
_020C0074: .word 0x04000468
	arm_func_end sub_020C003C

	arm_func_start sub_020C0078
sub_020C0078: ; 0x020C0078
	ldr r3, _020C00B0 ; =0x04000468
	mov r2, #0
	str r1, [r3, #0]
	str r0, [r3, #0]
	str r2, [r3, #0]
	rsb r0, r0, #0
	str r0, [r3, #0]
	str r1, [r3, #0]
	str r2, [r3, #0]
	str r2, [r3, #0]
	str r2, [r3, #0]
	mov r0, #0x1000
	str r0, [r3, #0]
	bx lr
	; .align 2, 0
_020C00B0: .word 0x04000468
	arm_func_end sub_020C0078