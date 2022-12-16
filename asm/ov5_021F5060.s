	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F5060
ov5_021F5060: ; 0x021F5060
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F508C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5060

	thumb_func_start ov5_021F507C
ov5_021F507C: ; 0x021F507C
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F50B0
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F507C

	thumb_func_start ov5_021F508C
ov5_021F508C: ; 0x021F508C
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x15
	bl ov5_021DFB00
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #4
	bl sub_02073B70
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F508C

	thumb_func_start ov5_021F50B0
ov5_021F50B0: ; 0x021F50B0
	ldr r3, _021F50B8 ; =sub_0207395C
	add r0, r0, #4
	bx r3
	nop
_021F50B8: .word sub_0207395C
	thumb_func_end ov5_021F50B0