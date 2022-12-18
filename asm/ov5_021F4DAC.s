	.include "macros/function.inc"
	.include "include/ov5_021F4DAC.inc"

	

	.text


	thumb_func_start ov5_021F4DAC
ov5_021F4DAC: ; 0x021F4DAC
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F4DD8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4DAC

	thumb_func_start ov5_021F4DC8
ov5_021F4DC8: ; 0x021F4DC8
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F4DFC
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F4DC8

	thumb_func_start ov5_021F4DD8
ov5_021F4DD8: ; 0x021F4DD8
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x11
	bl ov5_021DFB00
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #4
	bl sub_02073B70
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F4DD8

	thumb_func_start ov5_021F4DFC
ov5_021F4DFC: ; 0x021F4DFC
	ldr r3, _021F4E04 ; =sub_0207395C
	add r0, r0, #4
	bx r3
	nop
_021F4E04: .word sub_0207395C
	thumb_func_end ov5_021F4DFC