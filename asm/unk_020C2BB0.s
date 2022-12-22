	.include "macros/function.inc"

	

	.text


	arm_func_start DC_InvalidateAll
DC_InvalidateAll: ; 0x020C2BB0
	mov r0, #0
	mcr p15, 0, r0, c7, c6, 0
	bx lr
	arm_func_end DC_InvalidateAll

	arm_func_start DC_StoreAll
DC_StoreAll: ; 0x020C2BBC
	mov r1, #0
_020C2BC0:
	mov r0, #0
_020C2BC4:
	orr r2, r1, r0
	mcr p15, 0, r2, c7, c10, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _020C2BC4
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _020C2BC0
	bx lr
	arm_func_end DC_StoreAll

	arm_func_start DC_FlushAll
DC_FlushAll: ; 0x020C2BE8
	mov ip, #0
	mov r1, #0
_020C2BF0:
	mov r0, #0
_020C2BF4:
	orr r2, r1, r0
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r2, c7, c14, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _020C2BF4
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _020C2BF0
	bx lr
	arm_func_end DC_FlushAll

	arm_func_start DC_InvalidateRange
DC_InvalidateRange: ; 0x020C2C1C
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C24:
	mcr p15, 0, r0, c7, c6, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C24
	bx lr
	arm_func_end DC_InvalidateRange

	arm_func_start DC_StoreRange
DC_StoreRange: ; 0x020C2C38
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C40:
	mcr p15, 0, r0, c7, c10, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C40
	bx lr
	arm_func_end DC_StoreRange

	arm_func_start DC_FlushRange
DC_FlushRange: ; 0x020C2C54
	mov ip, #0
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C60:
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r0, c7, c14, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C60
	bx lr
	arm_func_end DC_FlushRange

	arm_func_start DC_WaitWriteBufferEmpty
DC_WaitWriteBufferEmpty: ; 0x020C2C78
	mov r0, #0
	mcr p15, 0, r0, c7, c10, 4
	bx lr
	arm_func_end DC_WaitWriteBufferEmpty

	arm_func_start IC_InvalidateAll
IC_InvalidateAll: ; 0x020C2C84
	mov r0, #0
	mcr p15, 0, r0, c7, c5, 0
	bx lr
	arm_func_end IC_InvalidateAll

	arm_func_start IC_InvalidateRange
IC_InvalidateRange: ; 0x020C2C90
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C98:
	mcr p15, 0, r0, c7, c5, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C98
	bx lr
	arm_func_end IC_InvalidateRange