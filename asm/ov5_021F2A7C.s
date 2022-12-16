	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F2A7C
ov5_021F2A7C: ; 0x021F2A7C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F2AA8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2A7C

	thumb_func_start ov5_021F2A98
ov5_021F2A98: ; 0x021F2A98
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F2AD0
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F2A98

	thumb_func_start ov5_021F2AA8
ov5_021F2AA8: ; 0x021F2AA8
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0xf
	bl ov5_021DFB00
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r4, #0x18
	add r1, r4, #0
	mov r3, #0xa0
	bl ov5_021DFB24
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov5_021F2AA8

	thumb_func_start ov5_021F2AD0
ov5_021F2AD0: ; 0x021F2AD0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl sub_0207395C
	add r4, #0x18
	add r0, r4, #0
	bl sub_02073AA8
	pop {r4, pc}
	thumb_func_end ov5_021F2AD0

	thumb_func_start ov5_021F2AE4
ov5_021F2AE4: ; 0x021F2AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov5_021DF578
	mov r1, #0x11
	str r0, [sp, #8]
	bl ov5_021DF55C
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x10
	bl sub_02064450
	mov r0, #1
	ldr r2, [sp, #0x18]
	lsl r1, r4, #3
	lsl r0, r0, #0xc
	add r0, r1, r0
	add r0, r2, r0
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
	ldr r1, _021F2B44 ; =0x022004C4
	add r2, sp, #0x10
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F2B44: .word 0x022004C4
	thumb_func_end ov5_021F2AE4

	thumb_func_start ov5_021F2B48
ov5_021F2B48: ; 0x021F2B48
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
	thumb_func_end ov5_021F2B48

	thumb_func_start ov5_021F2B80
ov5_021F2B80: ; 0x021F2B80
	ldr r3, _021F2B88 ; =sub_02073AA8
	add r0, r1, #0
	bx r3
	nop
_021F2B88: .word sub_02073AA8
	thumb_func_end ov5_021F2B80

	thumb_func_start ov5_021F2B8C
ov5_021F2B8C: ; 0x021F2B8C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02073B40
	cmp r0, #1
	bne _021F2BA4
	add r0, r5, #0
	bl ov5_021DF74C
	pop {r3, r4, r5, pc}
_021F2BA4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02073AC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2B8C

	thumb_func_start ov5_021F2BB4
ov5_021F2BB4: ; 0x021F2BB4
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
	thumb_func_end ov5_021F2BB4

	.rodata


	.global Unk_ov5_022004C4
Unk_ov5_022004C4: ; 0x022004C4
	.incbin "incbin/overlay5_rodata.bin", 0x7BB0, 0x14

