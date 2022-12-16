	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021F575C
ov5_021F575C: ; 0x021F575C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x40
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #4]
	bl ov5_021F5788
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F575C

	thumb_func_start ov5_021F5778
ov5_021F5778: ; 0x021F5778
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F57B4
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F5778

	thumb_func_start ov5_021F5788
ov5_021F5788: ; 0x021F5788
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #8
	mov r3, #0x5c
	bl ov5_021DFB00
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #4]
	add r4, #0x1c
	add r1, r4, #0
	mov r3, #0xa4
	bl ov5_021DFB24
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5788

	thumb_func_start ov5_021F57B4
ov5_021F57B4: ; 0x021F57B4
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	bl sub_0207395C
	add r4, #0x1c
	add r0, r4, #0
	bl sub_02073AA8
	pop {r4, pc}
	thumb_func_end ov5_021F57B4

	thumb_func_start ov5_021F57C8
ov5_021F57C8: ; 0x021F57C8
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r0, [r0, #0x40]
	add r5, r1, #0
	mov r1, #9
	add r4, r2, #0
	str r0, [sp, #8]
	bl ov5_021DF55C
	str r0, [sp, #0xc]
	mov r0, #2
	mov r3, #0
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x10]
	lsl r1, r4, #0x10
	add r0, r1, r0
	str r0, [sp, #0x18]
	str r3, [sp, #0x14]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021F5808 ; =0x02200B54
	add r2, sp, #0x10
	bl ov5_021DF72C
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021F5808: .word 0x02200B54
	thumb_func_end ov5_021F57C8

	thumb_func_start ov5_021F580C
ov5_021F580C: ; 0x021F580C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	bl sub_020715BC
	ldr r3, [r0, #4]
	ldr r1, [r0, #0]
	add r2, r3, #0
	str r1, [r4, #0x78]
	str r3, [r4, #0x7c]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x78]
	add r1, r4, #0
	add r2, #8
	add r3, #0x1c
	bl ov5_021DFB40
	ldr r1, [r4, #0x7c]
	add r0, r4, #0
	add r0, #0x24
	add r1, #8
	add r2, r4, #0
	bl sub_02073B90
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov5_021F580C

	thumb_func_start ov5_021F5844
ov5_021F5844: ; 0x021F5844
	ldr r3, _021F584C ; =sub_02073AA8
	add r0, r1, #0
	bx r3
	nop
_021F584C: .word sub_02073AA8
	thumb_func_end ov5_021F5844

	thumb_func_start ov5_021F5850
ov5_021F5850: ; 0x021F5850
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02073B40
	cmp r0, #1
	bne _021F5868
	add r0, r5, #0
	bl ov5_021DF74C
	pop {r3, r4, r5, pc}
_021F5868:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02073AC0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5850

	thumb_func_start ov5_021F5878
ov5_021F5878: ; 0x021F5878
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
	thumb_func_end ov5_021F5878

	.rodata


	.global Unk_ov5_02200B54
Unk_ov5_02200B54: ; 0x02200B54
	.incbin "incbin/overlay5_rodata.bin", 0x8240, 0x14

