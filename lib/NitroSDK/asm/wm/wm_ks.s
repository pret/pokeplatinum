	.include "macros/function.inc"
	.include "include/wm_ks.inc"

	

	.text


	arm_func_start WM_StartKeySharing
WM_StartKeySharing: ; 0x020D0544
	stmfd sp!, {r3, lr}
	mov ip, #1
	rsb r2, ip, #0x10000
	mov r3, #2
	str ip, [sp]
	bl WM_StartDataSharing
	ldmia sp!, {r3, pc}
	arm_func_end WM_StartKeySharing

	arm_func_start WM_EndKeySharing
WM_EndKeySharing: ; 0x020D0560
	ldr ip, _020D0568 ; =WM_EndDataSharing
	bx ip
	; .align 2, 0
_020D0568: .word WM_EndDataSharing
	arm_func_end WM_EndKeySharing