	.include "macros/function.inc"
	.include "include/unk_020A7038.inc"

	

	.text


	arm_func_start sub_020A7038
sub_020A7038: ; 0x020A7038
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A7070 ; =0x4D43424B
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A7084
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7070: .word 0x4D43424B
	arm_func_end sub_020A7038

	arm_func_start sub_020A7074
sub_020A7074: ; 0x020A7074
	ldr ip, _020A7080 ; =sub_020A72C4
	add r0, r0, #8
	bx ip
	; .align 2, 0
_020A7080: .word sub_020A72C4
	arm_func_end sub_020A7074

	arm_func_start sub_020A7084
sub_020A7084: ; 0x020A7084
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #4]
	mov lr, #0
	add r1, r1, r0
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, r0
	str r1, [r0, #8]
	ldrh r1, [r0]
	ldr r4, [r0, #4]
	cmp r1, #0
	bls _020A70E0
_020A70B4:
	add r3, r4, lr, lsl #3
	ldr ip, [r0, #8]
	ldr r2, [r3, #4]
	add r1, lr, #1
	add r2, ip, r2
	str r2, [r3, #4]
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov lr, r1, lsr #0x10
	cmp r2, r1, lsr #16
	bhi _020A70B4
_020A70E0:
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	add r1, r1, r0
	str r1, [r0, #0x10]
	mov r0, r1
	bl sub_020A7074
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A7084

	arm_func_start sub_020A7100
sub_020A7100: ; 0x020A7100
	ldrh r2, [r0]
	cmp r1, r2
	ldrlo r0, [r0, #4]
	addlo r0, r0, r1, lsl #3
	movhs r0, #0
	bx lr
	arm_func_end sub_020A7100