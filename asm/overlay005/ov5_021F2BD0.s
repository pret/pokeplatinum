	.include "macros/function.inc"
	.include "overlay005/ov5_021F2BD0.inc"

	

	.text


	thumb_func_start ov5_021F2BD0
ov5_021F2BD0: ; 0x021F2BD0
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F2BFC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2BD0

	thumb_func_start ov5_021F2BEC
ov5_021F2BEC: ; 0x021F2BEC
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F2C24
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F2BEC

	thumb_func_start ov5_021F2BFC
ov5_021F2BFC: ; 0x021F2BFC
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x10
	bl ov5_021DFB00
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r4, #0x18
	add r1, r4, #0
	mov r3, #0xa1
	bl ov5_021DFB24
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov5_021F2BFC

	thumb_func_start ov5_021F2C24
ov5_021F2C24: ; 0x021F2C24
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0207395C
	add r4, #0x18
	add r0, r4, #0
	bl sub_02073AA8
	pop {r4, pc}
	thumb_func_end ov5_021F2C24

	thumb_func_start ov5_021F2C38
ov5_021F2C38: ; 0x021F2C38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov5_021DF578
	mov r1, #0x12
	str r0, [sp, #8]
	bl ov5_021DF55C
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_02064450
	ldr r1, [sp, #0x18]
	lsl r0, r4, #3
	add r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02063010
	lsl r1, r0, #0xf
	mov r0, #2
	lsl r0, r0, #0xe
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021F2C94 ; =0x022004D8
	add r2, sp, #0x10
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021F2C94: .word 0x022004D8
	thumb_func_end ov5_021F2C38

	thumb_func_start ov5_021F2C98
ov5_021F2C98: ; 0x021F2C98
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_020715BC
	ldr r3, [r0, #4]
	ldr r1, [r0, #0]
	mov r0, #0
	str r1, [r4, #0x78]
	str r3, [r4, #0x7c]
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [r4, #0x78]
	add r1, r4, #0
	add r3, #0x18
	bl ov5_021DFB40
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0x24
	add r1, r1, #4
	add r2, r4, #0
	bl sub_02073B90
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2C98

	thumb_func_start ov5_021F2CD0
ov5_021F2CD0: ; 0x021F2CD0
	ldr r3, _021F2CD8 ; =sub_02073AA8
	add r0, r1, #0
	bx r3
	nop
_021F2CD8: .word sub_02073AA8
	thumb_func_end ov5_021F2CD0

	thumb_func_start ov5_021F2CDC
ov5_021F2CDC: ; 0x021F2CDC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02073B40
	cmp r0, #1
	bne _021F2CF4
	add r0, r5, #0
	bl ov5_021DF74C
	pop {r3, r4, r5, pc}
_021F2CF4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02073AC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2CDC

	thumb_func_start ov5_021F2D04
ov5_021F2D04: ; 0x021F2D04
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	add r4, #0x24
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02073BB4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2D04

	.rodata


	.global Unk_ov5_022004D8
Unk_ov5_022004D8: ; 0x022004D8
	.incbin "incbin/overlay5_rodata.bin", 0x7BC4, 0x14

