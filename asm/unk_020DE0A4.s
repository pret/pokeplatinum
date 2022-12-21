	.include "macros/function.inc"
	.include "include/unk_020DE0A4.inc"

	

	.text


	arm_func_start sub_020DE0A4
sub_020DE0A4: ; 0x020DE0A4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r1, [sp, #0xc]
	ldr r0, _020DE150 ; =0x7FF00000
	mov r4, r2
	bic r3, r1, #0x80000000
	mov r2, #0
	str r2, [r4, #0]
	cmp r3, r0
	ldr r0, [sp, #8]
	bge _020DE0D8
	orrs r0, r3, r0
	bne _020DE0EC
_020DE0D8:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE0EC:
	cmp r3, #0x100000
	bge _020DE118
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, _020DE154 ; =0x43500000
	bl sub_020E0234
	mvn r2, #0x35
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [r4, #0]
	bic r3, r1, #0x80000000
_020DE118:
	ldr r2, _020DE158 ; =0x800FFFFF
	ldr r0, _020DE15C ; =0xFFFFFC02
	and r1, r1, r2
	orr r1, r1, #0xfe00000
	orr r1, r1, #0x30000000
	ldr r2, [r4, #0]
	add r0, r0, r3, asr #20
	add r2, r2, r0
	ldr r0, [sp, #8]
	str r2, [r4, #0]
	str r1, [sp, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DE150: .word 0x7FF00000
_020DE154: .word 0x43500000
_020DE158: .word 0x800FFFFF
_020DE15C: .word 0xFFFFFC02
	arm_func_end sub_020DE0A4