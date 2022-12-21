	.include "macros/function.inc"
	.include "include/unk_020A7118.inc"

	

	.text


	arm_func_start sub_020A7118
sub_020A7118: ; 0x020A7118
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A7150 ; =0x43484152
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A7154
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7150: .word 0x43484152
	arm_func_end sub_020A7118

	arm_func_start sub_020A7154
sub_020A7154: ; 0x020A7154
	ldr r1, [r0, #0x14]
	add r1, r1, r0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_020A7154

	arm_func_start sub_020A7164
sub_020A7164: ; 0x020A7164
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A719C ; =0x43484152
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A71A0
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A719C: .word 0x43484152
	arm_func_end sub_020A7164

	arm_func_start sub_020A71A0
sub_020A71A0: ; 0x020A71A0
	ldr r1, [r0, #0x14]
	add r1, r1, r0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end sub_020A71A0