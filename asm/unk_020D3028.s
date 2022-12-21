	.include "macros/function.inc"
	.include "include/unk_020D3028.inc"

	

	.text


	arm_func_start sub_020D3028
sub_020D3028: ; 0x020D3028
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x58
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	mov r4, r2
	bl sub_020C8C08
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl sub_020C8C48
	add r1, sp, #0
	mov r0, r6
	bl sub_020C8D10
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020D3028

	arm_func_start sub_020D3068
sub_020D3068: ; 0x020D3068
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	mov r4, r2
	bl sub_020C917C
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl sub_020C91CC
	add r0, sp, #0
	mov r1, r6
	bl sub_020C9320
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020D3068