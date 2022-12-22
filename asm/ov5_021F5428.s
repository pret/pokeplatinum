	.include "macros/function.inc"
	.include "include/ov5_021F5428.inc"

	

	.text


	thumb_func_start ov5_021F5428
ov5_021F5428: ; 0x021F5428
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x78
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #8]
	bl ov5_021F5454
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5428

	thumb_func_start ov5_021F5444
ov5_021F5444: ; 0x021F5444
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F547C
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F5444

	thumb_func_start ov5_021F5454
ov5_021F5454: ; 0x021F5454
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xc
	mov r3, #0x18
	bl ov5_021DFB00
	add r0, r4, #0
	add r4, #0xc
	add r0, #0x20
	add r1, r4, #0
	bl sub_02073B70
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F5454

	thumb_func_start ov5_021F547C
ov5_021F547C: ; 0x021F547C
	ldr r3, _021F5484 ; =sub_0207395C
	add r0, #0xc
	bx r3
	nop
_021F5484: .word sub_0207395C
	thumb_func_end ov5_021F547C

	thumb_func_start ov5_021F5488
ov5_021F5488: ; 0x021F5488
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov5_021DF578
	add r4, r0, #0
	mov r1, #7
	str r4, [sp, #0x14]
	bl ov5_021DF55C
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl sub_02063050
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021F54C0 ; =0x02200AD8
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021F54C0: .word 0x02200AD8
	thumb_func_end ov5_021F5488

	thumb_func_start ov5_021F54C4
ov5_021F54C4: ; 0x021F54C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020715BC
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [r4, #0x3c]
	bl sub_02062910
	str r0, [r4, #8]
	ldr r0, [r4, #0x3c]
	bl sub_02062918
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	mov r0, #0x3c
	str r0, [r4, #0x30]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F54C4

	thumb_func_start ov5_021F5510
ov5_021F5510: ; 0x021F5510
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F5510

	thumb_func_start ov5_021F5514
ov5_021F5514: ; 0x021F5514
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r2, [r1, #0x30]
	add r4, r0, #0
	cmp r2, #0
	beq _021F5526
	sub r0, r2, #1
	str r0, [r1, #0x30]
	b _021F552E
_021F5526:
	bl ov5_021DF74C
	add sp, #0xc
	pop {r3, r4, pc}
_021F552E:
	ldr r0, [r1, #0x3c]
	add r1, sp, #0
	bl sub_02063050
	mov r0, #0xa
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020715D4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021F5514

	thumb_func_start ov5_021F554C
ov5_021F554C: ; 0x021F554C
	push {r4, r5, r6, lr}
	sub sp, #0x60
	ldr r5, _021F55C4 ; =0x02200ACC
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x48
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	ldr r6, _021F55C8 ; =0x02200AEC
	str r0, [r3, #0]
	add r5, sp, #0x24
	mov r3, #4
_021F5566:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021F5566
	ldr r0, [r6, #0]
	add r1, sp, #0x54
	str r0, [r5, #0]
	add r0, r2, #0
	bl sub_020715E4
	mov r0, #0x19
	ldr r1, [sp, #0x58]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x58]
	mov r0, #5
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x5c]
	bl NNS_G3dGlbGetInvV
	mov r2, #0
	add r5, r0, #0
	add r0, sp, #0x24
	mov r1, #0x5a
	add r3, r2, #0
	bl sub_0201E2E0
	add r0, r5, #0
	add r1, sp, #0
	bl MI_Copy36B
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl MTX_Concat33
	ldr r0, [r4, #0x38]
	add r1, sp, #0x54
	add r0, #0x20
	add r2, sp, #0x48
	add r3, sp, #0x24
	bl sub_02073C1C
	add sp, #0x60
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F55C4: .word 0x02200ACC
_021F55C8: .word 0x02200AEC
	thumb_func_end ov5_021F554C

	.rodata


	.global Unk_ov5_02200ACC
Unk_ov5_02200ACC: ; 0x02200ACC
	.incbin "incbin/overlay5_rodata.bin", 0x81B8, 0x81C4 - 0x81B8

	.global Unk_ov5_02200AD8
Unk_ov5_02200AD8: ; 0x02200AD8
	.incbin "incbin/overlay5_rodata.bin", 0x81C4, 0x81D8 - 0x81C4

	.global Unk_ov5_02200AEC
Unk_ov5_02200AEC: ; 0x02200AEC
	.incbin "incbin/overlay5_rodata.bin", 0x81D8, 0x24

