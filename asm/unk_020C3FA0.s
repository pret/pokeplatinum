	.include "macros/function.inc"
	.include "include/unk_020C3FA0.inc"

	

	.text


	arm_func_start sub_020C3FA0
sub_020C3FA0: ; 0x020C3FA0
	ldr ip, _020C3FB4 ; =sub_020C4DB0
	mov r1, r0
	ldr r0, _020C3FB8 ; =0x027FFCF4
	mov r2, #6
	bx ip
	; .align 2, 0
_020C3FB4: .word sub_020C4DB0
_020C3FB8: .word 0x027FFCF4
	arm_func_end sub_020C3FA0

	arm_func_start sub_020C3FBC
sub_020C3FBC: ; 0x020C3FBC
	stmfd sp!, {r4, lr}
	ldr ip, _020C403C ; =0x027FFC80
	mov r4, r0
	ldrh r2, [ip, #0x64]
	add r0, ip, #6
	add r1, r4, #4
	mov r2, r2, lsl #0x1d
	mov r2, r2, lsr #0x1d
	strb r2, [r4]
	ldrb r3, [ip, #2]
	mov r2, #0x14
	mov r3, r3, lsl #0x1c
	mov r3, r3, lsr #0x1c
	strb r3, [r4, #1]
	ldrb r3, [ip, #3]
	strb r3, [r4, #2]
	ldrb r3, [ip, #4]
	strb r3, [r4, #3]
	ldrb r3, [ip, #0x1a]
	strh r3, [r4, #0x1a]
	ldrb r3, [ip, #0x50]
	strh r3, [r4, #0x52]
	bl sub_020C4B18
	ldr r0, _020C403C ; =0x027FFC80
	add r1, r4, #0x1c
	add r0, r0, #0x1c
	mov r2, #0x34
	bl sub_020C4B18
	mov r0, #0
	strh r0, [r4, #0x18]
	strh r0, [r4, #0x50]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C403C: .word 0x027FFC80
	arm_func_end sub_020C3FBC

	arm_func_start sub_020C4040
sub_020C4040: ; 0x020C4040
	ldr r1, _020C4050 ; =0x027FFC80
	ldr r0, [r1, #0x68]
	ldr r1, [r1, #0x6c]
	bx lr
	; .align 2, 0
_020C4050: .word 0x027FFC80
	arm_func_end sub_020C4040