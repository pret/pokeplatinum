	.include "macros/function.inc"
	.include "include/unk_020E28BC.inc"

	

	.text


	arm_func_start sub_020E28BC
sub_020E28BC: ; 0x020E28BC
	str lr, [sp, #-4]!
	mov r1, r0
	mov r0, #3
	swi 0x123456
	ldr pc, [sp], #4
	arm_func_end sub_020E28BC

	arm_func_start sub_020E28D0
sub_020E28D0: ; 0x020E28D0
	str lr, [sp, #-4]!
	mov r1, #0
	mov r0, #7
	swi 0x123456
	ldr pc, [sp], #4
	arm_func_end sub_020E28D0

	arm_func_start sub_020E28E4
sub_020E28E4: ; 0x020E28E4
	mov r1, #0
	mov r0, #0x18
	swi 0x123456
	mov pc, lr
	arm_func_end sub_020E28E4

	arm_func_start sub_020E28F4
sub_020E28F4: ; 0x020E28F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r5, [r6, #0]
	mov r7, r1
	cmp r5, #0
	mov r4, #0
	bls _020E293C
_020E2910:
	bl sub_020E28D0
	and r1, r0, #0xff
	cmp r1, #0xd
	strb r0, [r7, r4]
	cmpne r1, #0xa
	addeq r0, r4, #1
	streq r0, [r6]
	beq _020E293C
	add r4, r4, #1
	cmp r4, r5
	blo _020E2910
_020E293C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020E28F4

	arm_func_start sub_020E2944
sub_020E2944: ; 0x020E2944
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r2, #0]
	mov r6, r1
	cmp r5, #0
	mov r4, #0
	bls _020E2970
_020E295C:
	add r0, r6, r4
	bl sub_020E28BC
	add r4, r4, #1
	cmp r4, r5
	blo _020E295C
_020E2970:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020E2944

	arm_func_start sub_020E2978
sub_020E2978: ; 0x020E2978
	mov r0, #0
	bx lr
	arm_func_end sub_020E2978