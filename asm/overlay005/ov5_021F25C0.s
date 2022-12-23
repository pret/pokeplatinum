	.include "macros/function.inc"
	.include "overlay005/ov5_021F25C0.inc"

	

	.text


	thumb_func_start ov5_021F25C0
ov5_021F25C0: ; 0x021F25C0
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F25EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F25C0

	thumb_func_start ov5_021F25DC
ov5_021F25DC: ; 0x021F25DC
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F2610
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F25DC

	thumb_func_start ov5_021F25EC
ov5_021F25EC: ; 0x021F25EC
	push {r3, r4, lr}
	sub sp, #4
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r3, #0x51
	bl ov5_021DFB00
	add r0, r4, #0
	add r0, #0x18
	add r1, r4, #4
	bl sub_02073B70
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F25EC

	thumb_func_start ov5_021F2610
ov5_021F2610: ; 0x021F2610
	ldr r3, _021F2618 ; =sub_0207395C
	add r0, r0, #4
	bx r3
	nop
_021F2618: .word sub_0207395C
	thumb_func_end ov5_021F2610

	thumb_func_start ov5_021F261C
ov5_021F261C: ; 0x021F261C
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r6, r2, #0
	add r2, sp, #0x14
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	str r3, [sp, #0x20]
	bl ov5_021DF578
	mov r1, #0xf
	str r0, [sp, #0x24]
	bl ov5_021DF55C
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	str r5, [sp, #0x2c]
	cmp r0, #0
	bne _021F2666
	add r0, r5, #0
	bl sub_02062C00
	mov r1, #2
	lsl r2, r4, #0x10
	lsl r1, r1, #0xe
	add r2, r2, r1
	str r2, [sp, #0x14]
	lsl r2, r6, #0x10
	add r1, r2, r1
	str r1, [sp, #0x1c]
	add r1, sp, #0x14
	bl sub_020644A4
	b _021F2682
_021F2666:
	ldr r3, _021F26A0 ; =0x02200484
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, sp, #0x14
	str r0, [r2, #0]
	add r0, r5, #0
	bl sub_02063050
	add r0, r5, #0
	add r1, sp, #8
	bl sub_020630AC
_021F2682:
	add r0, r5, #0
	mov r1, #2
	bl sub_02062758
	add r1, sp, #0x20
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, _021F26A4 ; =0x02200490
	ldr r3, [sp, #0x40]
	add r2, sp, #0x14
	bl ov5_021DF72C
	add sp, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F26A0: .word 0x02200484
_021F26A4: .word 0x02200490
	thumb_func_end ov5_021F261C

	thumb_func_start ov5_021F26A8
ov5_021F26A8: ; 0x021F26A8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_020715BC
	add r7, r0, #0
	add r2, r5, #0
	add r3, r7, #0
	ldr r4, [r7, #0xc]
	add r2, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r4, #0
	bl sub_02062910
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl sub_02062918
	str r0, [r5, #0x10]
	ldr r0, [r7, #0]
	str r0, [r5, #8]
	add r0, r6, #0
	bl sub_020715B4
	str r0, [r5, #0x18]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [r5, #0x1c]
	lsr r0, r0, #2
	str r0, [r5, #0x20]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021F26A8

	thumb_func_start ov5_021F26F0
ov5_021F26F0: ; 0x021F26F0
	push {lr}
	sub sp, #0xc
	ldr r0, [r1, #0x30]
	add r1, sp, #0
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	bl sub_020630AC
	add sp, #0xc
	pop {pc}
	thumb_func_end ov5_021F26F0

	thumb_func_start ov5_021F2708
ov5_021F2708: ; 0x021F2708
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r4, [r5, #0x30]
	ldr r1, [r5, #0xc]
	add r6, r0, #0
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F272A
	add r0, r6, #0
	bl ov5_021DF74C
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021F272A:
	mov r0, #0
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_0206298C
	mov r1, #0
	mvn r1, r1
	str r0, [r5, #4]
	cmp r0, r1
	bne _021F2746
	mov r0, #1
	add sp, #0x18
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_021F2746:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _021F27B0
	str r0, [r5, #8]
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	add r2, r1, r0
	mov r1, #1
	lsl r1, r1, #0xe
	str r2, [r5, #0x1c]
	cmp r2, r1
	blt _021F2768
	str r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	neg r0, r0
	str r0, [r5, #0x20]
	b _021F2776
_021F2768:
	lsr r0, r1, #2
	cmp r2, r0
	bgt _021F2776
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	neg r0, r0
	str r0, [r5, #0x20]
_021F2776:
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_020630AC
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063050
	mov r0, #1
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	ldr r2, [sp, #4]
	add r1, sp, #0
	add r0, r2, r0
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_020715D4
_021F27B0:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021F2708

	thumb_func_start ov5_021F27B4
ov5_021F27B4: ; 0x021F27B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3, #0]
	cmp r0, #1
	beq _021F282A
	mov r0, #0
	ldr r1, [r3, #8]
	mvn r0, r0
	cmp r1, r0
	beq _021F282A
	ldr r0, [r3, #0x14]
	ldr r5, _021F2830 ; =0x02200478
	add r0, r0, #1
	str r0, [r3, #0x14]
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	mov r2, #0
	str r0, [r4, #0]
	ldr r4, [r3, #0x2c]
	ldr r0, [r3, #8]
	add r4, #0x18
	cmp r0, #3
	bhi _021F2808
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F27F6: ; jump table
	.short _021F27FE - _021F27F6 - 2 ; case 0
	.short _021F2808 - _021F27F6 - 2 ; case 1
	.short _021F2802 - _021F27F6 - 2 ; case 2
	.short _021F2806 - _021F27F6 - 2 ; case 3
_021F27FE:
	mov r2, #0xb4
	b _021F2808
_021F2802:
	ldr r2, _021F2834 ; =0x0000010E
	b _021F2808
_021F2806:
	mov r2, #0x5a
_021F2808:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_0201E2E0
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_020715E4
	add r0, r4, #0
	add r1, sp, #0xc
	add r2, sp, #0
	add r3, sp, #0x18
	bl sub_02073BA4
_021F282A:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021F2830: .word 0x02200478
_021F2834: .word 0x0000010E
	thumb_func_end ov5_021F27B4

	thumb_func_start ov5_021F2838
ov5_021F2838: ; 0x021F2838
	push {r4, lr}
	add r4, r1, #0
	bl sub_02071598
	mov r1, #1
	str r4, [r0, #0x18]
	lsl r1, r1, #0xc
	str r1, [r0, #0x1c]
	lsr r1, r1, #2
	str r1, [r0, #0x20]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F2838

	.rodata


	.global Unk_ov5_02200478
Unk_ov5_02200478: ; 0x02200478
	.incbin "incbin/overlay5_rodata.bin", 0x7B64, 0x7B70 - 0x7B64

	.global Unk_ov5_02200484
Unk_ov5_02200484: ; 0x02200484
	.incbin "incbin/overlay5_rodata.bin", 0x7B70, 0x7B7C - 0x7B70

	.global Unk_ov5_02200490
Unk_ov5_02200490: ; 0x02200490
	.incbin "incbin/overlay5_rodata.bin", 0x7B7C, 0x14

