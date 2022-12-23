	.include "macros/function.inc"
	.include "overlay005/ov5_021F23D0.inc"

	

	.text


	thumb_func_start ov5_021F23D0
ov5_021F23D0: ; 0x021F23D0
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F23FC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F23D0

	thumb_func_start ov5_021F23EC
ov5_021F23EC: ; 0x021F23EC
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F2424
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F23EC

	thumb_func_start ov5_021F23FC
ov5_021F23FC: ; 0x021F23FC
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x4e
	bl ov5_021DFB00
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r4, #0x18
	add r1, r4, #0
	mov r3, #0xa5
	bl ov5_021DFB24
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov5_021F23FC

	thumb_func_start ov5_021F2424
ov5_021F2424: ; 0x021F2424
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0207395C
	add r4, #0x18
	add r0, r4, #0
	bl sub_02073AA8
	pop {r4, pc}
	thumb_func_end ov5_021F2424

	thumb_func_start ov5_021F2438
ov5_021F2438: ; 0x021F2438
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov5_021DF578
	mov r1, #0xd
	add r4, r0, #0
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	add r1, sp, #8
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	mov r1, #2
	str r4, [sp, #0x14]
	str r5, [sp, #0x1c]
	bl sub_02062758
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F2478 ; =0x02200464
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021F2478: .word 0x02200464
	thumb_func_end ov5_021F2438

	thumb_func_start ov5_021F247C
ov5_021F247C: ; 0x021F247C
	push {r3, lr}
	bl sub_02071598
	mov r1, #1
	str r1, [r0, #0xc]
	pop {r3, pc}
	thumb_func_end ov5_021F247C

	thumb_func_start ov5_021F2488
ov5_021F2488: ; 0x021F2488
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	ldr r3, [r4, #0x14]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #4
	ldr r0, [r4, #0x10]
	add r1, #0x1c
	add r3, #0x18
	bl ov5_021DFB40
	ldr r1, [r4, #0x14]
	add r0, r4, #0
	add r2, r4, #0
	add r0, #0x40
	add r1, r1, #4
	add r2, #0x1c
	bl sub_02073B90
	ldr r0, [r4, #0x18]
	bl sub_02062910
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	bl sub_02062918
	str r0, [r4, #8]
	ldr r4, [r4, #0x18]
	add r1, sp, #0x10
	add r0, r4, #0
	bl sub_02063050
	add r0, r4, #0
	add r1, sp, #4
	bl sub_02063078
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_020715D4
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2488

	thumb_func_start ov5_021F2510
ov5_021F2510: ; 0x021F2510
	ldr r3, _021F2518 ; =sub_02073AA8
	add r1, #0x1c
	add r0, r1, #0
	bx r3
	; .align 2, 0
_021F2518: .word sub_02073AA8
	thumb_func_end ov5_021F2510

	thumb_func_start ov5_021F251C
ov5_021F251C: ; 0x021F251C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	ldr r4, [r5, #0x18]
	cmp r0, #0
	bne _021F2544
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F2568
	add r0, r6, #0
	bl ov5_021DF74C
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021F2544:
	add r0, r5, #0
	add r0, #0x1c
	bl sub_02073B40
	cmp r0, #1
	bne _021F255A
	add r0, r6, #0
	bl ov5_021DF74C
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021F255A:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x1c
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02073AC0
_021F2568:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021F259E
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02063050
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063078
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_020715D4
_021F259E:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F251C

	thumb_func_start ov5_021F25A4
ov5_021F25A4: ; 0x021F25A4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl sub_020715E4
	add r4, #0x40
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02073BB4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F25A4

	.rodata


	.global Unk_ov5_02200464
Unk_ov5_02200464: ; 0x02200464
	.incbin "incbin/overlay5_rodata.bin", 0x7B50, 0x14

