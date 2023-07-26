	.include "macros/function.inc"
	.include "include/pool_alloc.inc"

	

	.text


	arm_func_start __sys_alloc
__sys_alloc: ; 0x020DF918
	ldr ip, _020DF92C ; =OS_AllocFromHeap
	mov r2, r0
	mov r0, #0
	sub r1, r0, #1
	bx ip
	; .align 2, 0
_020DF92C: .word OS_AllocFromHeap
	arm_func_end __sys_alloc

	arm_func_start __sys_free
__sys_free: ; 0x020DF930
	ldr ip, _020DF944 ; =OS_FreeToHeap
	mov r2, r0
	mov r0, #0
	sub r1, r0, #1
	bx ip
	; .align 2, 0
_020DF944: .word OS_FreeToHeap
	arm_func_end __sys_free