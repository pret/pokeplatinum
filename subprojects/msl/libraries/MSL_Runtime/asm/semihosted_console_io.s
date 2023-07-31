	.include "macros/function.inc"
	.include "include/semihosted_console_io.inc"

	

	.text


	arm_func_start sys_writec
sys_writec: ; 0x020E28BC
	str lr, [sp, #-4]!
	mov r1, r0
	mov r0, #3
	swi 0x123456
	ldr pc, [sp], #4
	arm_func_end sys_writec

	arm_func_start sys_readc
sys_readc: ; 0x020E28D0
	str lr, [sp, #-4]!
	mov r1, #0
	mov r0, #7
	swi 0x123456
	ldr pc, [sp], #4
	arm_func_end sys_readc

	arm_func_start sys_exit
sys_exit: ; 0x020E28E4
	mov r1, #0
	mov r0, #0x18
	swi 0x123456
	mov pc, lr
	arm_func_end sys_exit

	arm_func_start __read_console
__read_console: ; 0x020E28F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r5, [r6, #0]
	mov r7, r1
	cmp r5, #0
	mov r4, #0
	bls _020E293C
_020E2910:
	bl sys_readc
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
	arm_func_end __read_console

	arm_func_start __write_console
__write_console: ; 0x020E2944
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r2, #0]
	mov r6, r1
	cmp r5, #0
	mov r4, #0
	bls _020E2970
_020E295C:
	add r0, r6, r4
	bl sys_writec
	add r4, r4, #1
	cmp r4, r5
	blo _020E295C
_020E2970:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end __write_console

	arm_func_start __close_console
__close_console: ; 0x020E2978
	mov r0, #0
	bx lr
	arm_func_end __close_console